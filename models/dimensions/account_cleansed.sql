with src_account as (SELECT
    *
FROM
    {{ ref('src_account') }}
)
SELECT
    Account_id,
    Account_Name,
    Billing_State,
    Billing_Country,
    Account_OwnerId,
    Named_Account_Status,
    CSM_Segmentation__c,
    Is_Partner__c,
    Axway_Vertical,
    Account_Size,
    Owner__c,
    account_SUPPORT_ACCESS_CODE__C,
    Top_Parent_Account__c,
    Account_Region,
    Latest_Contact_Rating_NPS__c,
    Workday_Customer_ID__c,
    Healthscore__c
FROM
    src_account
WHERE
    isDeleted='false'