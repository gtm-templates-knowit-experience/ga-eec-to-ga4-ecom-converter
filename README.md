# GA Enhanced Ecommerce to GA4 Ecommerce Converter
This GTM Variable creates either **GA4 Events** or **GA4 Ecommerce Objects** based on the **Enhanced Ecommerce Object**. You can also map/rename **Product Scoped Dimensions_ & _Metrics**, and map **Enhanced Ecommerce Checkout to GA4 Events** like _add_payment_info_ and _add_shipping_info_.

## Creating GA4 Ecommerce/Retail Events
Select **GA4 Ecommerce Events** from the _GA4 Data Type_ settings.

You can create GA4 Events from _Product Objects, Promotion Objects and Checkout Objects_.

Just tick the box next to the _action_ (ex. Purchase) that you want to create an GA4 Event from.

### GA4 Checkout Events
GA4 Events for the checkout is created based on _Enhanced Ecommerce Checkout Steps_.
- Check the **Checkout** box.
- Add a row.
  - Select **Checkout Object Type** from the dropdown. It can be either _Checkout_ or _Checkout Option_.
  - Select **Checkout Step Number** from the dropdown.
  - Then in the **Checkout Event** column, type in the GA4 Event corresponding to the previous settings. Ex. _begin_checkout_.

### Events: Retail/Ecommerce
More information about Events for Retail/Ecommerce can be found here:
- https://support.google.com/analytics/answer/9268036

Depending on your Enhanced Ecommerce implementation, you may have to create several GA4 Event Variables with this template. Ex. if you in your implementation have combined both **Product Detail View** and **Product Impressions** in the same ecommerce object, then you have to create a separate Variable for **Product Impression**.

## Creating GA4 Ecommerce Objects
Select **GA4 Ecommerce Object** from the _GA4 Data Type_ settings.

Just tick the box next to the _action_ (ex. Purchase) that you want to create an GA4 Ecommerce Object from.

Depending on your Enhanced Ecommerce implementation, you may have to create several GA4 Ecommerce Object Variables with this template. Ex. if you in your implementation have combined both **Product Detail View** and **Product Impressions** in the same ecommerce object, then you have to create a separate Variable for **Product Impression**.

### Rename/map Product Scoped Dimensions & Metrics
If you have implemented _Product Scoped Dimensions or Metrics_, use this solution to rename them to a more meaningful GA4 parameter.

- In the **Input* field**, enter the dimension or metric. 
  - Ex. _metric1_
- In the **Output field**, enter the new parameter name.
  - Ex. _discount_

Only _dimensions_ or _metrics_ that are mapped will be sent to GA4 Ecommerce. This means that if you have implemented a Product Scoped Custom Dimension, and you don't want data from that dimension sent to GA4, simply don't add the dimension to the table.

## GA4 GTM Tag Settings & Triggers
### GA4 GTM Tag Settings
- You need to create at least 2 GA4 Variables with the template
  - 1 Variable for creating GA4 Ecommerce Events
  - 1 Variable for creating GA4 Ecommerce Items

If your **Enhanced Ecommerce implementation** have combined Enhanced Ecommerce Actions into 1 Ecommerce Object, ex. **Product Detail View** and **Product Impressions**, then you will have to create separate variables for Product Impressions.

## GTM Triggers
Your should be able to reuse your existing Triggers in most cases, depending on your Enhanced Ecommerce implementation/trigger setup. But for your checkout setup, here you must probably create different Triggers for your GA4 Ecommerce Tags.

Use **Preview Mode** in Google Tag Manager to verify that Variables, Tags and Triggers works as intended.

![GA4 GTM Tag Settings](https://github.com/gtm-templates-knowit-experience/ga-eec-to-ga4-ecom-converter/blob/main/images/ga4-gtm-tag-setting.jpg)

## Images of the Variable Template
![GA4 Event Settings](https://github.com/gtm-templates-knowit-experience/ga-eec-to-ga4-ecom-converter/blob/main/images/ga-eec-to-ga4-ecom-ecommerce-event-setting.jpg)

![GA4 Ecommerce Object Settings](https://github.com/gtm-templates-knowit-experience/ga-eec-to-ga4-ecom-converter/blob/main/images/ga-eec-to-ga4-ecom-ecommerce-object-setting.jpg)
