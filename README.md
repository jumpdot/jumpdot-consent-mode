# Jumpdot Consent Mode — Google Tag Manager template

Tag template for the [Google Tag Manager Community Template Gallery](https://tagmanager.google.com/gallery) that wires the **Jumpdot CMP** (consent management platform for sites subject to Chile's Law 21.719 and the EU GDPR) to **Google Consent Mode v2**.

Documentation: <https://jumpdot.cl/docs/gtm-template> · Support: <https://jumpdot.cl/docs/support>

## What the template does

Fired on **Consent Initialization – All Pages**, the tag:

1. Sets Jumpdot's Google developer id (`developer_id.dMjkwMW`) and the global gtag settings `ads_data_redaction` and `url_passthrough`.
2. Pushes one **Consent Mode default** per row of the *Default consent state* table (`setDefaultConsentState`), with `wait_for_update`.
3. **Replays the visitor's stored decision** as a consent update before any Google tag runs, reading the fixed-name mirror the Jumpdot SDK keeps (`jumpdot_gcm` cookie, or the `jumpdot_gcm` localStorage key on cookieless installs). Returning visitors never wait for the banner. A mirror whose client id (`c`) differs from the tag's **Jumpdot Client ID** is treated as if there were no stored decision: nothing is replayed from it, and the SDK removes it once it loads (a foreign or stale mirror never leaks into your container).
4. Reports success to GTM so the container keeps going.
5. Once per page: tells the Jumpdot SDK that this tag owns Consent Mode (`window.JumpdotCMPConfig.consentModeEmit = false`, and `JumpdotCMP.setConsentModeEmit(false)` when the SDK is already running), loads the SDK from `https://jumpdot.cl/cmp.js` if it is not already on the page, and subscribes to `JumpdotCMP.onConsent`. Every decision in the banner (accept, reject, save, withdraw, Global Privacy Control, policy-version reset) becomes an `updateConsentState` call and, optionally, a `jumpdot_consent_update` dataLayer event.

The seven signals handled are `ad_storage`, `ad_user_data`, `ad_personalization`, `analytics_storage`, `functionality_storage`, `personalization_storage` and `security_storage`. Only the literal value `granted` grants; anything else is treated as `denied`.

## Install

1. In your GTM web container open **Templates › Tag Templates › Search Gallery** and search for **Jumpdot Consent Mode** (by Jumpdot). Click **Add to workspace** and accept the permissions.
2. **Tags › New**, choose the *Jumpdot Consent Mode* tag type.
3. Fill in **Jumpdot Client ID** with the id shown in your Jumpdot console (*Settings › Installation*).
4. Leave the **Default consent state** table empty unless you need region-specific defaults: with no rows the tag denies everything except `security_storage` for all regions, which is the recommended starting point.
5. Trigger: **Consent Initialization – All Pages**. Do not use *All Pages* or *Initialization*; only the Consent Initialization trigger runs before every other tag.
6. Make sure no other tag or inline `gtag('consent', 'default', …)` sets Consent Mode defaults.
7. **Remove the Jumpdot script line from your pages.** With the template installed the page must not also carry `<script async src="https://jumpdot.cl/cmp.js"></script>`: the template injects the SDK itself and tells it that the tag owns Consent Mode. The `window.JumpdotCMPConfig = { … }` block from the Jumpdot installation snippet may stay (the template reuses it and forces `clientId` and `consentModeEmit: false`). If the script line is still there when the tag fires, the template does not load the SDK twice and calls `JumpdotCMP.setConsentModeEmit(false)` so the SDK stops pushing its own consent commands, but you lose the guarantee that the defaults run before the SDK.
8. Preview, verify (below) and publish.

Google tags (GA4, Google Ads, Floodlight) need no change: they read Consent Mode automatically. For other vendors use the `jumpdot_consent_update` event or GTM's built-in consent settings on each tag (*Advanced settings › Consent settings*).

## Field reference

| Field | Default | Meaning |
| --- | --- | --- |
| **Jumpdot Client ID** (`clientId`) | — | Required. Your site's id in the Jumpdot console. Lowercase letters, digits and hyphens (`^[a-z0-9][a-z0-9-]{0,40}$`). |
| **Default consent state** (`defaultSettings`) | empty (= everything `denied` except `security_storage`, all regions) | One row per group of regions. `Region` is a comma-separated list of ISO 3166-2 codes; leave it blank for the row that applies everywhere else. The seven columns take `granted` or `denied`. |
| **Wait for update** (`waitForUpdate`) | `500` ms | `wait_for_update` on every default: how long Google tags wait for the replayed decision. |
| **Redact ads data** (`adsDataRedaction`) | on | `ads_data_redaction`: when `ad_storage` is denied, Google ads tags drop ad-click identifiers and use cookieless domains. |
| **Pass ad-click information through URLs** (`urlPassthrough`) | on | `url_passthrough`: internal links carry `gclid`, `dclid`, `gclsrc`, `_gl`, `wbraid` while consent is not granted. |
| Advanced › **Jumpdot SDK URL** (`cmpScriptUrl`) | `https://jumpdot.cl/cmp.js` | Only change it if Jumpdot support tells you to. Must stay under `https://jumpdot.cl/`. |
| Advanced › **Push a dataLayer event** (`pushDataLayerEvent`) | on | On every update pushes `{ event: "jumpdot_consent_update", jumpdot_consent: { …7 signals… } }` so you can trigger non-Google tags with a Custom Event trigger. |

## Region examples

Google applies the most specific matching row (subdivision beats country, country beats blank).

| Goal | Rows |
| --- | --- |
| Deny everything by default, everywhere (recommended) | Row 1: region blank, all `denied` except `security_storage` |
| Deny in Chile and the EU/EEA, grant analytics elsewhere | Row 1: region `CL, AT, BE, BG, HR, CY, CZ, DK, EE, FI, FR, DE, GR, HU, IE, IT, LV, LT, LU, MT, NL, PL, PT, RO, SK, SI, ES, SE, NO, IS, LI` → all `denied` except `security_storage`. Row 2: region blank → `analytics_storage: granted`, the rest `denied` except `security_storage` |
| Stricter rule for one US state | Row 1: region `US-CA` → all `denied`. Row 2: region blank → your general defaults |

Regions are case-sensitive as Google expects them (uppercase). Spaces around the commas are ignored.

## Verify with Tag Assistant

1. Open **Preview** in GTM and load your site. In Tag Assistant pick the **Consent** tab of the *Consent Initialization* event: the seven signals should show the defaults from your table (`Default` column).
2. Interact with the Jumpdot banner. A new `jumpdot_consent_update` event appears in the left column (if the dataLayer option is on) and the **Consent** tab shows the updated values in the `On-page update` column.
3. Reload the page. On the *Consent Initialization* event the `On-page update` column is already filled from the stored decision, before any Google tag fires.
4. Open the browser console with `?jumpdot_debug=1` appended to the URL: the Jumpdot SDK prints its load-order report (`JumpdotCMP.debugReport()`), which flags any Google tag request that started before the consent default.

The **Jumpdot Consent Mode** tag itself shows as *Succeeded* as soon as the defaults and the replay are done; the SDK keeps loading in the background.

## Google developer id

Google issued Jumpdot the developer id `dMjkwMW` for the CMP Partner Program. The tag sets `developer_id.dMjkwMW` via `gtagSet` before the consent defaults, so Google can recognise traffic that goes through this CMP. Nothing to configure on your side.

## Permissions the template asks for

| Permission | Why |
| --- | --- |
| Accesses consent settings (7 types, read/write) | `setDefaultConsentState` / `updateConsentState` |
| Writes data layer: `ads_data_redaction`, `url_passthrough`, `developer_id.dMjkwMW` | `gtagSet` |
| Injects scripts from `https://jumpdot.cl/` | Loads the Jumpdot SDK |
| Reads cookie `jumpdot_gcm` · Reads local storage key `jumpdot_gcm` | Replays the stored decision (only when its client id matches the tag's) |
| Accesses globals `JumpdotCMPConfig` (read/write), `JumpdotCMP.onConsent` (read/execute), `JumpdotCMP.setConsentModeEmit` (read/execute), `dataLayer` (read/write) | Configures the SDK, hands it Consent Mode ownership, subscribes to decisions, pushes the optional `jumpdot_consent_update` event through `createQueue('dataLayer')` |
| Accesses template storage | Wires the SDK only once per page |
| Logs to console (debug only) | Diagnostics in Preview mode |

## Reporting issues

Open an issue in this repository or write to the address on <https://jumpdot.cl/docs/support>. Please include your GTM container id, the page URL and a Tag Assistant screenshot of the *Consent* tab.

## License

Apache License 2.0 — see [LICENSE](LICENSE). Copyright 2026 Jumpdot SpA.
