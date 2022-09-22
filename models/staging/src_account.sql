WITH raw_account AS (
    SELECT
        *
    FROM
        {{ source('sales','raw_account')}}
)
SELECT
    isdeleted,
    Id as Account_id,
    Name as Account_Name,
    BillingState as Billing_State,
    BillingCountry as Billing_Country,
    OwnerId as Account_OwnerId,
    Named_Account_Status__c as Named_Account_Status,
    CSM_Segmentation__c,
    Is_Partner__c,
    Axway_Vertical__c as Axway_Vertical,
    Size__c as Account_Size,
    Owner__c,
    Support_Access_Code__c account_SUPPORT_ACCESS_CODE__C,
    Top_Parent_Account__c,
    Region__c as Account_Region,
    Latest_Contact_Rating_NPS__c,
    Workday_Customer_ID__c,
    Healthscore__c
FROM
    raw_account