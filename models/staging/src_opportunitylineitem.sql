WITH src_opportunitylineitem AS (
    SELECT
        *
    FROM
        {{ source('sales','raw_opportunitylineitem')}}
)
SELECT
    isdeleted,
    OpportunityId,
    CurrencyIsoCode as opportunitylineitem_CURRENCYISOCODE,
    Quantity,
    TotalPrice,
    Cloud_Amount_Product_ACV__c,
    Product_Family__c,
    SBQQ__QuoteLine__c,
    Line_Description__c,
    Parent_Product_Name__c,
    Product_NetTotal__c,
    Subscription_Term__c
FROM
    src_opportunitylineitem