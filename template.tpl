___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Jumpdot Consent Mode",
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Jumpdot",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAABKElEQVR42u2ZTQ6EIAxGKfEUuvVMekbPpFvP4WzGScZRYQyg0NetxPC9fuWvUnej8YjF5BniGlAVKnw7f/kXQO7CvUFYBeJPtVlF4nc1WmXif7Raozyswux/uQAHKM3+xwU4AAAA0B1V6B/OQ5ts8k0/4QAAAAAAAAAAAK6H1N34iMuQz/khxL6PAwAAAAAAAAAAAAAA3hHsReiukxwOAAAAAAAAAAAAANkDaPrploNSlUqcagf4NkxTNlaDA3BleR7aQ4Fn34oogRBZjlVGNodaj7mG2KdPNvYCap+csRS7R/TW2JWaT7ltJu0NnsG466zwmOYodwEAAOA2AKJYv+CAlYTG7LMGbACItuzvOUA0iT8qAdEi3pjjB5F14FKqcBeAUkA43fwCooJFN1BqBU0AAAAASUVORK5CYII="
  },
  "description": "Sets Google Consent Mode v2 defaults, replays the visitor's stored Jumpdot decision on every page and keeps the seven consent signals in sync with the Jumpdot CMP banner. Fire it on Consent Initialization - All Pages.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "clientId",
    "displayName": "Jumpdot Client ID",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "help": "The client identifier of your site in the Jumpdot console (Settings > Installation). Lowercase letters, digits and hyphens only, e.g. <strong>acme-cl</strong>. The template passes it to the Jumpdot SDK so the banner loads your policies, texts and cookie inventory.",
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "errorMessage": "Enter the Client ID shown in the Jumpdot console."
      },
      {
        "type": "REGEX",
        "args": [
          "^[a-z0-9][a-z0-9-]{0,40}$"
        ],
        "errorMessage": "Only lowercase letters, digits and hyphens (1 to 41 characters, must start with a letter or digit)."
      }
    ]
  },
  {
    "type": "PARAM_TABLE",
    "name": "defaultSettings",
    "displayName": "Default consent state",
    "help": "One row per group of regions. Leave <strong>Region</strong> blank for the row that applies everywhere else. Regions are ISO 3166-2 codes separated by commas, e.g. <strong>CL, AR, PE</strong> or <strong>US-CA</strong>. Google applies the most specific matching row. These values apply only until the visitor's stored decision (or a new decision in the banner) is replayed.",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "region",
          "displayName": "Region (blank = all other regions)",
          "simpleValueType": true,
          "help": "Comma-separated ISO 3166-2 codes (country, or country-subdivision such as US-CA). Blank means every region not covered by another row."
        },
        "isUnique": true
      },
      {
        "param": {
          "type": "SELECT",
          "name": "ad_storage",
          "displayName": "ad_storage",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "ad_user_data",
          "displayName": "ad_user_data",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "ad_personalization",
          "displayName": "ad_personalization",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "analytics_storage",
          "displayName": "analytics_storage",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "functionality_storage",
          "displayName": "functionality_storage",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "personalization_storage",
          "displayName": "personalization_storage",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "denied"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "security_storage",
          "displayName": "security_storage",
          "macrosInSelect": true,
          "selectItems": [
            {
              "value": "granted",
              "displayValue": "granted"
            },
            {
              "value": "denied",
              "displayValue": "denied"
            }
          ],
          "simpleValueType": true,
          "defaultValue": "granted"
        },
        "isUnique": false
      }
    ],
    "defaultValue": [
      {
        "type": 3,
        "mapKey": [
          {
            "type": 1,
            "string": "region"
          },
          {
            "type": 1,
            "string": "ad_storage"
          },
          {
            "type": 1,
            "string": "ad_user_data"
          },
          {
            "type": 1,
            "string": "ad_personalization"
          },
          {
            "type": 1,
            "string": "analytics_storage"
          },
          {
            "type": 1,
            "string": "functionality_storage"
          },
          {
            "type": 1,
            "string": "personalization_storage"
          },
          {
            "type": 1,
            "string": "security_storage"
          }
        ],
        "mapValue": [
          {
            "type": 1,
            "string": ""
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "denied"
          },
          {
            "type": 1,
            "string": "granted"
          }
        ]
      }
    ],
    "newRowButtonText": "Add region",
    "newRowTitle": "New region",
    "editRowTitle": "Edit region",
    "valueValidators": [
      {
        "type": "TABLE_ROW_COUNT",
        "args": [
          1
        ],
        "errorMessage": "Add at least one row (leave Region blank for the row that applies everywhere)."
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "waitForUpdate",
    "displayName": "Wait for update",
    "simpleValueType": true,
    "valueUnit": "milliseconds",
    "defaultValue": 500,
    "help": "How long Google tags wait for the stored decision before they fire with the defaults above (<strong>wait_for_update</strong>). 500 ms is enough for a returning visitor; leave it unless Google support asks you to change it.",
    "valueValidators": [
      {
        "type": "POSITIVE_NUMBER",
        "errorMessage": "Enter a positive number of milliseconds."
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "adsDataRedaction",
    "checkboxText": "Redact ads data when ad_storage is denied (ads_data_redaction)",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "When checked and ad_storage is denied, Google advertising tags drop ad-click identifiers from their requests and route them through cookieless domains."
  },
  {
    "type": "CHECKBOX",
    "name": "urlPassthrough",
    "checkboxText": "Pass ad-click information through URLs (url_passthrough)",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "When checked, internal links carry the ad-click identifiers (gclid, dclid, gclsrc, _gl, wbraid) in the URL while consent has not been granted, so conversions can still be modelled."
  },
  {
    "type": "GROUP",
    "name": "advanced",
    "displayName": "Advanced",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "cmpScriptUrl",
        "displayName": "Jumpdot SDK URL",
        "simpleValueType": true,
        "defaultValue": "https://jumpdot.cl/cmp.js",
        "help": "URL of the Jumpdot SDK the template loads when it is not already on the page. Only change it if Jumpdot support gives you a different one (it must live under https://jumpdot.cl/).",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^https://jumpdot\\.cl/.+"
            ],
            "errorMessage": "The SDK URL must start with https://jumpdot.cl/"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "pushDataLayerEvent",
        "checkboxText": "Push a dataLayer event on every consent update (jumpdot_consent_update)",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "When checked, every time the visitor's decision changes the template pushes <strong>{ event: \"jumpdot_consent_update\", jumpdot_consent: { ad_storage, ad_user_data, ad_personalization, analytics_storage, functionality_storage, personalization_storage, security_storage } }</strong> to the dataLayer, so you can use a Custom Event trigger for non-Google tags."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Jumpdot Consent Mode - Google Tag Manager tag template.
// Documentation: https://jumpdot.cl/docs/gtm-template
//
// What the tag does, in order:
//   1. sets Jumpdot's Google developer id, ads_data_redaction and url_passthrough;
//   2. pushes one Consent Mode default per row of the "Default consent state" table;
//   3. replays the decision the visitor already made (fixed-name mirror "jumpdot_gcm",
//      cookie or localStorage) as a consent update, so returning visitors never wait.
//      A mirror written for a different client id is ignored as if there were none;
//   4. reports success to GTM;
//   5. once per page: tells the Jumpdot SDK that this tag owns Consent Mode
//      (window.JumpdotCMPConfig.consentModeEmit = false, plus
//      JumpdotCMP.setConsentModeEmit(false) when the SDK is already running), loads the SDK
//      if it is not on the page yet and subscribes to JumpdotCMP.onConsent so every new
//      decision becomes an update.

const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const createQueue = require('createQueue');
const getCookieValues = require('getCookieValues');
const getTimestampMillis = require('getTimestampMillis');
const getType = require('getType');
const gtagSet = require('gtagSet');
const injectScript = require('injectScript');
const JSON = require('JSON');
const localStorage = require('localStorage');
const log = require('logToConsole');
const makeInteger = require('makeInteger');
const makeString = require('makeString');
const setDefaultConsentState = require('setDefaultConsentState');
const setInWindow = require('setInWindow');
const templateStorage = require('templateStorage');
const updateConsentState = require('updateConsentState');

// Developer id issued by Google to Jumpdot for the CMP Partner Program. It identifies
// traffic that goes through this CMP; the write_data_layer permission below allows
// exactly this key. Change both together if Google ever reissues it.
const DEVELOPER_ID = 'dMjkwMW';

const SIGNALS = [
  'ad_storage',
  'ad_user_data',
  'ad_personalization',
  'analytics_storage',
  'functionality_storage',
  'personalization_storage',
  'security_storage'
];
const MIRROR_KEY = 'jumpdot_gcm';
const DEFAULT_SCRIPT_URL = 'https://jumpdot.cl/cmp.js';
const WIRED_FLAG = 'jumpdot_cmp_wired';
const DATA_LAYER_EVENT = 'jumpdot_consent_update';
const LOG_PREFIX = 'Jumpdot Consent Mode:';

const splitRegions = (input) => {
  if (!input) return [];
  return makeString(input)
    .split(',')
    .map(entry => entry.trim())
    .filter(entry => entry.length > 0);
};

// Only the literal string "granted" grants; anything else (missing, "denied", garbage) denies.
const grantedOrDenied = (value) => (value === 'granted' ? 'granted' : 'denied');

const buildDefault = (row, waitForUpdate) => {
  const command = {};
  const regions = splitRegions(row.region);
  if (regions.length > 0) command.region = regions;
  SIGNALS.forEach(key => {
    command[key] = grantedOrDenied(row[key]);
  });
  command.wait_for_update = waitForUpdate;
  return command;
};

const toConsentUpdate = (source) => {
  const update = {};
  SIGNALS.forEach(key => {
    update[key] = grantedOrDenied(source ? source[key] : undefined);
  });
  return update;
};

// Reads the fixed-name mirror the Jumpdot SDK writes next to its own consent record.
// Cookie first (URL-encoded JSON), then localStorage (raw JSON, used when the site runs
// the SDK in cookieless mode). Returns null when there is no valid, unexpired record,
// or when the record belongs to another client id (a foreign mirror is never replayed;
// the SDK removes it once it loads).
const readStoredConsent = (clientId) => {
  let raw = getCookieValues(MIRROR_KEY, true)[0];
  if (!raw) raw = localStorage.getItem(MIRROR_KEY);
  if (!raw) return null;
  const parsed = JSON.parse(raw);
  if (getType(parsed) !== 'object' || parsed.v !== 1) return null;
  if (parsed.e && makeInteger(parsed.e) <= getTimestampMillis()) return null;
  if (parsed.c !== clientId) {
    log(LOG_PREFIX, 'stored consent belongs to client "' + parsed.c + '", tag is "' + clientId +
      '". Ignored: no update is replayed from it.');
    return null;
  }
  return parsed;
};

const pushToDataLayer = (update) => {
  if (!data.pushDataLayerEvent) return;
  const dataLayerPush = createQueue('dataLayer');
  dataLayerPush({
    event: DATA_LAYER_EVENT,
    jumpdot_consent: update
  });
};

// Listener registered with JumpdotCMP.onConsent(cb). The SDK calls it immediately when a
// state is already known and again on every change (accept, reject, save, withdraw, GPC,
// policy-version reset).
const onConsentState = (state) => {
  const consentMode = state && getType(state.consentMode) === 'object' ? state.consentMode : null;
  if (!consentMode) return;
  const update = toConsentUpdate(consentMode);
  updateConsentState(update);
  pushToDataLayer(update);
};

const registerListener = () => {
  callInWindow('JumpdotCMP.onConsent', onConsentState);
};

const configureSdk = (clientId) => {
  const existing = copyFromWindow('JumpdotCMPConfig');
  if (getType(existing) === 'object') {
    if (existing.clientId && existing.clientId !== clientId) {
      log(LOG_PREFIX, 'window.JumpdotCMPConfig.clientId is "' + existing.clientId +
        '" but the tag says "' + clientId + '". The tag wins.');
    }
    existing.clientId = clientId;
    existing.consentModeEmit = false;
    setInWindow('JumpdotCMPConfig', existing, true);
    return;
  }
  setInWindow('JumpdotCMPConfig', { clientId: clientId, consentModeEmit: false }, false);
};

const wireSdk = (clientId) => {
  configureSdk(clientId);

  // SDK (or the pre-load stand-in from the Jumpdot snippet) already on the page. The SDK
  // read JumpdotCMPConfig at boot, so the flag set above arrives too late for it: tell it
  // at runtime that this tag owns Consent Mode, then subscribe.
  if (getType(copyFromWindow('JumpdotCMP.onConsent')) === 'function') {
    if (getType(copyFromWindow('JumpdotCMP.setConsentModeEmit')) === 'function') {
      callInWindow('JumpdotCMP.setConsentModeEmit', false);
    } else {
      log(LOG_PREFIX, 'JumpdotCMP.setConsentModeEmit is not available yet; the SDK will read consentModeEmit from JumpdotCMPConfig when it boots.');
    }
    registerListener();
    return;
  }

  const url = data.cmpScriptUrl ? makeString(data.cmpScriptUrl).trim() : '';
  const scriptUrl = url || DEFAULT_SCRIPT_URL;
  const onFailure = () => {
    log(LOG_PREFIX, 'could not load ' + scriptUrl +
      '. The consent defaults are in place, but no banner will show and no update will arrive until the SDK loads.');
    data.gtmOnFailure();
  };
  injectScript(scriptUrl, registerListener, onFailure, 'jumpdot-cmp');
};

const main = () => {
  const clientId = makeString(data.clientId || '').trim();

  // 1. Global gtag settings. The developer id must go before the consent default.
  if (DEVELOPER_ID) gtagSet('developer_id.' + DEVELOPER_ID, true);
  gtagSet('ads_data_redaction', !!data.adsDataRedaction);
  gtagSet('url_passthrough', !!data.urlPassthrough);

  // 2. Defaults, one command per table row. With no rows at all, fall back to the
  //    safest default (everything denied except security_storage).
  let waitForUpdate = makeInteger(data.waitForUpdate);
  if (!(waitForUpdate > 0)) waitForUpdate = 500;
  const rows = getType(data.defaultSettings) === 'array' ? data.defaultSettings : [];
  if (rows.length === 0) {
    setDefaultConsentState(buildDefault({ security_storage: 'granted' }, waitForUpdate));
  } else {
    rows.forEach(row => {
      setDefaultConsentState(buildDefault(row || {}, waitForUpdate));
    });
  }

  // 3. Replay the stored decision, if any, before Google tags run. A mirror from another
  //    client id counts as no stored decision.
  const stored = readStoredConsent(clientId);
  if (stored) updateConsentState(toConsentUpdate(stored));

  // 4. Nothing else blocks the container.
  data.gtmOnSuccess();

  // 5. Configure and load the SDK once per page, even if the tag fires more than once.
  if (templateStorage.getItem(WIRED_FLAG)) return;
  templateStorage.setItem(WIRED_FLAG, true);
  wireSdk(clientId);
};

main();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "developer_id.dMjkwMW"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://jumpdot.cl/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "jumpdot_gcm"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "jumpdot_gcm"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "JumpdotCMPConfig"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "JumpdotCMP.setConsentModeEmit"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "JumpdotCMP.onConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_template_storage",
        "versionId": "1"
      },
      "param": []
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Defaults pushed from the table with wait_for_update
  code: |-
    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'denied',
      functionality_storage: 'denied',
      personalization_storage: 'denied',
      security_storage: 'granted',
      wait_for_update: 500
    });
    assertApi('gtmOnSuccess').wasCalled();
- name: Region row becomes a region array, blank region is omitted
  code: |-
    mockData.defaultSettings = [
      {
        region: 'CL, AR ,PE',
        ad_storage: 'granted',
        ad_user_data: 'granted',
        ad_personalization: 'denied',
        analytics_storage: 'granted',
        functionality_storage: 'granted',
        personalization_storage: 'denied',
        security_storage: 'granted'
      },
      {
        region: '',
        ad_storage: 'denied',
        ad_user_data: 'denied',
        ad_personalization: 'denied',
        analytics_storage: 'denied',
        functionality_storage: 'denied',
        personalization_storage: 'denied',
        security_storage: 'granted'
      }
    ];
    mockData.waitForUpdate = '2000';

    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalledWith({
      region: ['CL', 'AR', 'PE'],
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'denied',
      security_storage: 'granted',
      wait_for_update: 2000
    });
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'denied',
      functionality_storage: 'denied',
      personalization_storage: 'denied',
      security_storage: 'granted',
      wait_for_update: 2000
    });
    assertApi('gtmOnSuccess').wasCalled();
- name: Stored consent in the cookie is replayed as an update
  code: |-
    cookieValue = JSON.stringify({
      v: 1,
      c: 'acme',
      g: 1700000000000,
      e: 9999999999999,
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'whatever',
      security_storage: 'granted'
    });

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'denied',
      security_storage: 'granted'
    });
    assertApi('gtmOnSuccess').wasCalled();
- name: Stored consent in localStorage is used when there is no cookie
  code: |-
    cookieValue = undefined;
    localValue = JSON.stringify({
      v: 1,
      c: 'acme',
      g: 1700000000000,
      e: 9999999999999,
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'granted',
      security_storage: 'granted'
    });

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'granted',
      security_storage: 'granted'
    });
- name: No stored consent means no update before the SDK loads
  code: |-
    cookieValue = undefined;
    localValue = undefined;
    // The injected SDK never reports a state in this scenario.
    mock('injectScript', (url, onSuccess, onFailure, token) => {});

    runCode(mockData);

    assertApi('updateConsentState').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Expired or malformed stored consent is ignored
  code: |-
    cookieValue = JSON.stringify({ v: 1, c: 'acme', e: 1, ad_storage: 'granted' });
    mock('injectScript', (url, onSuccess, onFailure, token) => {});
    runCode(mockData);
    assertApi('updateConsentState').wasNotCalled();

    cookieValue = 'not json at all';
    runCode(mockData);
    assertApi('updateConsentState').wasNotCalled();

    cookieValue = JSON.stringify({ v: 2, ad_storage: 'granted' });
    runCode(mockData);
    assertApi('updateConsentState').wasNotCalled();
- name: Mirror from another client id is ignored
  code: |-
    let logged = false;
    mock('logToConsole', (prefix, message) => {
      if (message && message.indexOf('other-site') !== -1) logged = true;
    });
    mock('injectScript', (url, onSuccess, onFailure, token) => {});
    cookieValue = JSON.stringify({
      v: 1,
      c: 'other-site',
      g: 1700000000000,
      e: 9999999999999,
      ad_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'granted',
      security_storage: 'granted'
    });

    runCode(mockData);

    assertApi('updateConsentState').wasNotCalled();
    assertApi('setDefaultConsentState').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(logged).isTrue();

    // A mirror without any client id is foreign too.
    cookieValue = JSON.stringify({ v: 1, e: 9999999999999, ad_storage: 'granted' });
    runCode(mockData);
    assertApi('updateConsentState').wasNotCalled();
- name: ads_data_redaction and url_passthrough are set through gtagSet
  code: |-
    runCode(mockData);

    assertApi('gtagSet').wasCalledWith('ads_data_redaction', true);
    assertApi('gtagSet').wasCalledWith('url_passthrough', true);

    mockData.adsDataRedaction = false;
    mockData.urlPassthrough = false;
    runCode(mockData);

    assertApi('gtagSet').wasCalledWith('ads_data_redaction', false);
    assertApi('gtagSet').wasCalledWith('url_passthrough', false);
- name: SDK is injected from the configured URL and the listener is registered
  code: |-
    let injectedUrl;
    let registered = false;
    mock('injectScript', (url, onSuccess, onFailure, token) => {
      injectedUrl = url;
      onSuccess();
    });
    mock('callInWindow', (path, cb) => {
      if (path === 'JumpdotCMP.onConsent') registered = true;
    });

    runCode(mockData);

    assertThat(injectedUrl).isEqualTo('https://jumpdot.cl/cmp.js');
    assertThat(registered).isTrue();
    assertApi('setInWindow').wasCalledWith('JumpdotCMPConfig', { clientId: 'acme', consentModeEmit: false }, false);
    assertApi('gtmOnSuccess').wasCalled();
- name: SDK already on the page is reused, not injected again
  code: |-
    let registered = false;
    mock('copyFromWindow', key => {
      if (key === 'JumpdotCMP.onConsent') return () => {};
      if (key === 'JumpdotCMP.setConsentModeEmit') return () => {};
      if (key === 'JumpdotCMPConfig') return { clientId: 'acme', brand: { name: 'Acme' } };
      return undefined;
    });
    mock('callInWindow', (path, cb) => {
      if (path === 'JumpdotCMP.onConsent') registered = true;
    });

    runCode(mockData);

    assertApi('injectScript').wasNotCalled();
    assertThat(registered).isTrue();
    assertApi('setInWindow').wasCalledWith('JumpdotCMPConfig', { clientId: 'acme', brand: { name: 'Acme' }, consentModeEmit: false }, true);
- name: SDK already present -> setConsentModeEmit(false) called before the listener, no injectScript
  code: |-
    const calls = [];
    mock('copyFromWindow', key => {
      if (key === 'JumpdotCMP.onConsent') return () => {};
      if (key === 'JumpdotCMP.setConsentModeEmit') return () => {};
      return undefined;
    });
    mock('callInWindow', (path, arg) => {
      calls.push({ path: path, arg: arg });
    });

    runCode(mockData);

    assertApi('injectScript').wasNotCalled();
    assertThat(calls.length).isEqualTo(2);
    assertThat(calls[0].path).isEqualTo('JumpdotCMP.setConsentModeEmit');
    assertThat(calls[0].arg).isFalse();
    assertThat(calls[1].path).isEqualTo('JumpdotCMP.onConsent');
    assertApi('gtmOnSuccess').wasCalled();
- name: Stand-in without setConsentModeEmit still gets the listener and no injectScript
  code: |-
    const calls = [];
    mock('copyFromWindow', key => {
      if (key === 'JumpdotCMP.onConsent') return () => {};
      return undefined;
    });
    mock('callInWindow', (path, arg) => {
      calls.push(path);
    });

    runCode(mockData);

    assertApi('injectScript').wasNotCalled();
    assertThat(calls.length).isEqualTo(1);
    assertThat(calls[0]).isEqualTo('JumpdotCMP.onConsent');
    assertApi('setInWindow').wasCalledWith('JumpdotCMPConfig', { clientId: 'acme', consentModeEmit: false }, false);
- name: A state reported by the SDK becomes an update and a dataLayer event
  code: |-
    let pushed;
    mock('createQueue', name => {
      return obj => { pushed = obj; };
    });
    mock('callInWindow', (path, cb) => {
      if (path === 'JumpdotCMP.onConsent') {
        cb({
          decisions: { necessary: true, analytics: true, marketing: false, personalization: false },
          consentMode: {
            ad_storage: 'denied',
            ad_user_data: 'denied',
            ad_personalization: 'denied',
            analytics_storage: 'granted',
            functionality_storage: 'granted',
            personalization_storage: 'denied',
            security_storage: 'granted'
          },
          givenAt: '2026-01-01T00:00:00.000Z',
          expiresAt: '2027-01-01T00:00:00.000Z',
          policyVersion: '3',
          method: 'accept_some',
          proven: true
        });
      }
    });

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
      analytics_storage: 'granted',
      functionality_storage: 'granted',
      personalization_storage: 'denied',
      security_storage: 'granted'
    });
    assertThat(pushed.event).isEqualTo('jumpdot_consent_update');
    assertThat(pushed.jumpdot_consent.analytics_storage).isEqualTo('granted');
    assertThat(pushed.jumpdot_consent.ad_storage).isEqualTo('denied');
- name: dataLayer event can be switched off
  code: |-
    let pushed = false;
    mockData.pushDataLayerEvent = false;
    mock('createQueue', name => {
      return obj => { pushed = true; };
    });
    mock('callInWindow', (path, cb) => {
      cb({ consentMode: { ad_storage: 'granted', security_storage: 'granted' } });
    });

    runCode(mockData);

    assertApi('updateConsentState').wasCalled();
    assertThat(pushed).isFalse();
- name: SDK is wired only once per page
  code: |-
    let injections = 0;
    let cacheToken;
    mock('injectScript', (url, onSuccess, onFailure, token) => {
      injections = injections + 1;
      cacheToken = token;
      onSuccess();
    });

    runCode(mockData);
    runCode(mockData);

    assertThat(injections).isEqualTo(1);
    assertThat(cacheToken).isEqualTo('jumpdot-cmp');
    assertThat(store.jumpdot_cmp_wired).isTrue();
    assertApi('setDefaultConsentState').wasCalled();
- name: Failed SDK load reports failure after success was already reported
  code: |-
    mock('injectScript', (url, onSuccess, onFailure, token) => {
      onFailure();
    });

    runCode(mockData);

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasCalled();
setup: |-
  const mockData = {
    clientId: 'acme',
    defaultSettings: [
      {
        region: '',
        ad_storage: 'denied',
        ad_user_data: 'denied',
        ad_personalization: 'denied',
        analytics_storage: 'denied',
        functionality_storage: 'denied',
        personalization_storage: 'denied',
        security_storage: 'granted'
      }
    ],
    waitForUpdate: '500',
    adsDataRedaction: true,
    urlPassthrough: true,
    cmpScriptUrl: 'https://jumpdot.cl/cmp.js',
    pushDataLayerEvent: true
  };

  let cookieValue;
  let localValue;
  let store = {};

  mock('getCookieValues', (name, decode) => (cookieValue ? [cookieValue] : []));
  mockObject('localStorage', {
    getItem: key => (localValue === undefined ? null : localValue),
    setItem: (key, value) => {},
    removeItem: key => {}
  });
  mockObject('templateStorage', {
    getItem: key => store[key],
    setItem: (key, value) => { store[key] = value; },
    removeItem: key => { store[key] = undefined; },
    clear: () => { store = {}; }
  });
  mock('copyFromWindow', key => undefined);
  mock('setInWindow', (key, value, override) => true);
  mock('callInWindow', (path, cb) => {});
  mock('createQueue', name => (obj => {}));
  mock('injectScript', (url, onSuccess, onFailure, token) => {
    if (onSuccess) onSuccess();
  });
  mock('logToConsole', () => {});


___NOTES___

Jumpdot Consent Mode, version 1 (initial release).

When this template is installed the site must NOT also carry the
<script async src="https://jumpdot.cl/cmp.js"> line: the template injects the SDK and
tells it that the tag owns Consent Mode. The window.JumpdotCMPConfig block may stay.
A jumpdot_gcm mirror written for another client id is never replayed.

DEVELOPER_ID (dMjkwMW) is the developer id Google issued to Jumpdot for the CMP Partner
Program; the write_data_layer permission allows exactly that key.

Documentation: https://jumpdot.cl/docs/gtm-template
Support: https://jumpdot.cl/docs/support
