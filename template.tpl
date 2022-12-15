___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA Enhanced Ecommerce to GA4 Ecommerce Converter",
  "description": "This Variable creates either GA4 Events or GA4 Ecommerce Object based on the Enhanced Ecommerce Object. You can also map Product Scoped Dimensions \u0026 Metrics, and create a Checkout setup.",
  "categories": [
    "ANALYTICS",
    "UTILITY",
    "TAG_MANAGEMENT"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "description",
    "displayName": "This Variable creates either GA4 Events or GA4 Ecommerce Objects based on the Enhanced Ecommerce Object."
  },
  {
    "type": "RADIO",
    "name": "dataType",
    "displayName": "GA4 Data Type",
    "radioItems": [
      {
        "value": "event",
        "displayValue": "GA4 Ecommerce Events"
      },
      {
        "value": "ecom",
        "displayValue": "GA4 Ecommerce Object"
      }
    ],
    "simpleValueType": true,
    "help": "Select either GA4 Events or GA4 Ecommerce Object"
  },
  {
    "type": "GROUP",
    "name": "eecInputGroup",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "RADIO",
        "name": "eecInputSelector",
        "radioItems": [
          {
            "value": "ecomDataLayer",
            "displayValue": "Enhanced Ecommerce DataLayer",
            "help": "Choose Enhanced Ecommerce Object from \u003cb\u003eDataLayer\u003c/b\u003e"
          },
          {
            "value": "GTMVariable",
            "displayValue": "GTM Variable",
            "help": "Choose Enhanced Ecommerce Object from \u003cb\u003eGoogle Tag Manager Variable\u003c/b\u003e."
          }
        ],
        "simpleValueType": true
      },
      {
        "type": "SELECT",
        "name": "eecGTMVariable",
        "displayName": "GTM Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "eecInputSelector",
            "paramValue": "GTMVariable",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "displayName": "Enhanced Ecommerce Object",
    "help": "Choose if GA4 Ecommerce data should be created from \u003cb\u003eEnhanced Ecommerce Object from DataLayer\u003c/b\u003e, or from a \u003cb\u003eGTM Variable\u003c/b\u003e. Use the last option if you for example have rewritten your Ecommerce data using a Custom Javascript Variable."
  },
  {
    "type": "LABEL",
    "name": "labelEventBoxes",
    "displayName": "Tick the boxes below to create GA4 Events.",
    "enablingConditions": [
      {
        "paramName": "dataType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "labelEcomBoxes",
    "displayName": "Tick the boxes below to create GA4 Ecommerce Items.",
    "enablingConditions": [
      {
        "paramName": "dataType",
        "paramValue": "ecom",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "productObject",
    "displayName": "Product Objects",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "productImpressions",
        "checkboxText": "Product/Item List Views/Impressions",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "productClick",
        "checkboxText": "Product/Item List Clicks",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "productDetail",
        "checkboxText": "Product/Item Detail Views",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "addToCart",
        "checkboxText": "Add to Cart",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "removeFromCart",
        "checkboxText": "Remove from Cart",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "purchase",
        "checkboxText": "Purchase",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "refund",
        "checkboxText": "Refund",
        "simpleValueType": true
      }
    ],
    "groupStyle": "ZIPPY_OPEN_ON_PARAM"
  },
  {
    "type": "GROUP",
    "name": "promoObject",
    "displayName": "Promotion Objects",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "promoView",
        "checkboxText": "Promotion Views/Impressions",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "promoClick",
        "checkboxText": "Promotion Clicks",
        "simpleValueType": true
      }
    ],
    "groupStyle": "ZIPPY_OPEN_ON_PARAM"
  },
  {
    "type": "GROUP",
    "name": "checkoutObject",
    "displayName": "Checkout Objects",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "checkoutActivateEcom",
        "checkboxText": "Checkout",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "dataType",
            "paramValue": "ecom",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "checkoutActivateEvent",
        "checkboxText": "Checkout",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "dataType",
            "paramValue": "event",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "checkOutEventLabel",
        "displayName": "Create GA4 Checkout Events based on the EEC Checkout or Checkout Option object, and Checkout Step Number.",
        "enablingConditions": [
          {
            "paramName": "checkoutActivateEvent",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "PARAM_TABLE",
        "name": "checkoutEventTable",
        "displayName": "Checkout Settings",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "checkoutType",
              "displayName": "Checkout Object Type",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "checkout",
                  "displayValue": "Checkout"
                },
                {
                  "value": "checkout_option",
                  "displayValue": "Checkout Option"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "checkoutStepNumber",
              "displayName": "Checkout Step Number",
              "selectItems": [
                {
                  "value": 1,
                  "displayValue": "1"
                },
                {
                  "value": 2,
                  "displayValue": "2"
                },
                {
                  "value": 3,
                  "displayValue": "3"
                },
                {
                  "value": 4,
                  "displayValue": "4"
                },
                {
                  "value": 5,
                  "displayValue": "5"
                },
                {
                  "value": 6,
                  "displayValue": "6"
                },
                {
                  "value": 7,
                  "displayValue": "7"
                },
                {
                  "value": 8,
                  "displayValue": "8"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "checkoutEvent",
              "displayName": "Checkout Event",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ],
              "help": "Type in relevant GA4 Ecommerce Event, ex. begin_checkout. See also https://support.google.com/analytics/answer/9268036",
              "valueHint": "Ex. begin_checkout"
            },
            "isUnique": false
          }
        ],
        "enablingConditions": [
          {
            "paramName": "checkoutActivateEvent",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "newRowButtonText": "Add Checkout Event"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "mapProductCDCM",
    "displayName": "Map Product Scoped Dimensions \u0026 Metrics to Item Parameters",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "cdMapTable",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Product Scoped Custom Dimension",
            "name": "cdIndex",
            "type": "TEXT",
            "valueHint": "Ex. dimension1",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Item Parameter Name",
            "name": "cdParameter",
            "type": "TEXT",
            "isUnique": true,
            "valueHint": "Ex. item_rating",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "help": "Input Product Scoped Custom Dimension \u0026 Output Item Parameter. If you have Dimensions in your existing implementation that you don\u0027t want to send to GA4, simply just don\u0027t add them.",
        "newRowButtonText": "Add Product Scoped Custom Dimension"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "cmMapTable",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Product Scoped Custom Metric",
            "name": "cmIndex",
            "type": "TEXT",
            "valueHint": "Ex. metric1",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Item Parameter Name",
            "name": "cmParameter",
            "type": "TEXT",
            "isUnique": true,
            "valueHint": "Ex. discount",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "help": "Input Product Scoped Custom Metric \u0026 Output Item Parameter. If you have Metrics in your existing implementation that you don\u0027t want to send to GA4, simply just don\u0027t add them.",
        "newRowButtonText": "Add Product Scoped Custom Metric"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "dataType",
        "paramValue": "ecom",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Require the necessary APIs
const dataLayer = require('copyFromDataLayer');
const JSON = require('JSON');
const makeInteger = require('makeInteger');
const makeTableMap = require('makeTableMap');
// Input settings
let ecommerce = data.eecGTMVariable ? data.eecGTMVariable : dataLayer('ecommerce', 1); // Data Layer Version 1
if(ecommerce) {
if (JSON.stringify(ecommerce).indexOf('ecommerce')>0) {ecommerce = ecommerce.ecommerce;}
const dataType = data.dataType;
const cdMapTable = data.cdMapTable ? makeTableMap(data.cdMapTable, 'cdIndex', 'cdParameter') : undefined;
const cmMapTable = data.cmMapTable ? makeTableMap(data.cmMapTable, 'cmIndex', 'cmParameter') : undefined;
const checkoutEventTable = data.checkoutEventTable;
// GA4 Event Definition
let view_item_list, view_item, select_item, add_to_cart, remove_from_cart, checkout, checkout_option, purchase, refund, select_promotion, view_promotion;
// PRODUCT
if (ecommerce.impressions && data.productImpressions) {
  if (dataType === 'event') {view_item_list= 'view_item_list';} else if (dataType ==='ecom'){view_item_list = 'impressions';}
}
if (ecommerce.click && data.productClick) {
  if (dataType === 'event') {select_item = 'select_item';} else if (dataType ==='ecom'){select_item = 'click';}
}

if (ecommerce.detail && data.productDetail) {
  if (dataType === 'event') {view_item = 'view_item';} else if (dataType ==='ecom'){view_item = 'detail';}
}
if (ecommerce.add && data.addToCart) {
  if (dataType === 'event') {add_to_cart = 'add_to_cart';} else if (dataType ==='ecom'){add_to_cart = 'add';}
}
if (ecommerce.remove && data.removeFromCart) {
  if (dataType === 'event') {remove_from_cart = 'remove_from_cart';} else if (dataType ==='ecom'){remove_from_cart = 'remove';}
}
if (ecommerce.purchase && data.purchase) {
  purchase = 'purchase';
}
if (ecommerce.refund && data.refund) {
  refund = 'refund';
}
// PROMOTION
if (ecommerce.promoClick && data.promoClick) {
  if (dataType === 'event') {select_promotion = 'select_promotion';} else if (dataType ==='ecom'){select_promotion = 'promoClick';}
}
if (ecommerce.promoView && data.promoView) {
  if (dataType === 'event') {view_promotion = 'view_promotion';} else if (dataType ==='ecom'){view_promotion = 'promoView';}
}
// CHECKOUT
// Checkout Ecommerce
if (data.checkoutActivateEcom && ecommerce.checkout && dataType ==='ecom') {
  checkout = 'checkout';
}
// Checkout Event
if (data.checkoutActivateEvent && dataType ==='event' && checkoutEventTable && ecommerce.checkout) {
checkoutEventTable.forEach((checkoutArray) => {
    if (makeInteger(checkoutArray.checkoutStepNumber) === makeInteger(ecommerce.checkout.actionField.step) && checkoutArray.checkoutType === 'checkout') {
    checkout = checkoutArray.checkoutEvent;}
});
} else if (data.checkoutActivateEvent && dataType ==='event' && checkoutEventTable && ecommerce.checkout_option) {
checkoutEventTable.forEach((checkoutArray) => {
    if (makeInteger(checkoutArray.checkoutStepNumber) === makeInteger(ecommerce.checkout_option.actionField.step) && checkoutArray.checkoutType === 'checkout_option') {
    checkout_option = checkoutArray.checkoutEvent;}
});
}
// Object.keys polyfill
const getKeys = function(obj){
   const keys = [];
   for(let key in obj){
      keys.push(key);
   }
   return keys;
};
// GA4 EVENTS
// Map Enhanced Ecommerce Actions to GA4 Ecommerce Events
if (dataType === 'event') {
  let eecEventMapping = {
      'impressions': view_item_list,
	  'click': select_item,
	  'detail': view_item,
	  'add': add_to_cart,
      'checkout': checkout,
      'checkout_option': checkout_option,
	  'remove': remove_from_cart,
	  'purchase': purchase,
	  'refund': refund,
      'promoClick': select_promotion,
	  'promoView': view_promotion
  };

  // Remove undefined matches
  eecEventMapping = (JSON.parse(JSON.stringify(eecEventMapping)));
  // Grab Current EEC Actions
  let eecEventAction = getKeys(ecommerce).filter(function (e) {
	  if (getKeys(eecEventMapping).indexOf(e) > -1)
		  return e;
  });
  if (ecommerce && eecEventAction) {
      // Set the app_web event action  
	  return eecEventMapping[eecEventAction];
  }
}
// GA4 ECOMMERCE
if (dataType === 'ecom') {
  let eecEcomMapping = [
  	view_item, // Product Details
    view_item_list, // Product Impression
	select_item, // Product Clicks
  	add_to_cart, // Add to Cart
  	remove_from_cart, // Remove from Cart
    checkout, // Checkout
  	purchase, // Purchase
  	refund, // Refund
    select_promotion, // Promotion Click
    view_promotion // Promotion Impression
  ];
  // Remove undefined matches
  eecEcomMapping = (JSON.parse(JSON.stringify(eecEcomMapping)));
 // Grab Current EEC Actions
  const eecEcomAction = getKeys(ecommerce).filter(function (e) {
	if (eecEcomMapping.toString().indexOf(e) > -1)
		return e;
  });

// GA4 ECOMMERCE
if (eecEcomAction) {	
	if (ecommerce[eecEcomAction]) {    
      // GA4 Promotions
      if (ecommerce[eecEcomAction].promotions) {
      if (ecommerce[eecEcomAction].promotions.length>0) {
        const promotions= [];
        const eecEcomPromo = ecommerce[eecEcomAction].promotions;
        for(let i =0; i < eecEcomPromo.length; i++){
          const promo = eecEcomPromo[i];
            promotions.push({
              'promotion_id': promo.id,
              'promotion_name': promo.name,
              'creative_name': promo.creative,
              'creative_slot': promo.position
            });
       }
      return promotions || undefined;
      }
      }
      // GA4 Products
		const eecEcomProducts = view_item_list ? ecommerce[eecEcomAction] : ecommerce[eecEcomAction].products;      
        if (eecEcomProducts.length>0) {
        const items = [];
		for(let a =0; a < eecEcomProducts.length; a++){
			const item = eecEcomProducts[a];
			items.push({
				'item_id': item.id,
				'item_name': item.name,
				'item_variant': item.variant ? item.variant : undefined,
				'item_brand': item.brand ? item.brand : undefined,
				'item_category': (item.category && item.category.split('/')[0]) ? item.category.split('/')[0] : undefined,
				'item_category2': (item.category && item.category.split('/')[1]) ? item.category.split('/')[1] : undefined,
				'item_category3': (item.category && item.category.split('/')[2]) ? item.category.split('/')[2] : undefined,
				'item_category4': (item.category && item.category.split('/')[3]) ? item.category.split('/')[3] : undefined,
				'item_category5': (item.category && item.category.split('/')[4]) ? item.category.split('/')[4] : undefined,
				'quantity': item.quantity ? item.quantity : 1,
				'price': item.price ? item.price : undefined,
				'item_list_name': item.list ? item.list : undefined,
                'index': item.position ? makeInteger(item.position) : undefined,
				'coupon': item.coupon ? item.coupon : undefined
			});
            
            // MAP CUSTOM DIMENSIONS & METRICS
                // Custom Dimensions
              if (cdMapTable) {
                for (let cd in item) {
                  if (item.hasOwnProperty(cd)) {
                    if (cd.match("^dimension[0-9]+") && cdMapTable[cd]) {
                      items[a][cdMapTable[cd]] = item[cd];
                    }
                  }
               }
              }
               // Custom Metrics
            if (cmMapTable) {
              for (let cm in item) {
                if (item.hasOwnProperty(cm)) {
                  if (cm.match("^metric[0-9]+") && cmMapTable[cm]) {
                     items[a][cmMapTable[cm]] = item[cm];
                  }
                }
            }
          }
                
          }
           // Get Product List
		if ((ecommerce[eecEcomAction].actionField) && (eecEcomAction == 'add'||eecEcomAction == 'click'||eecEcomAction == 'detail')) {items[0].item_list_name = ecommerce[eecEcomAction].actionField.list || undefined;}
		
      return items || undefined;
	}
    }
}
}
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
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
                "string": "ecommerce.*"
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
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 10/19/2020, 2:11:38 PM


