WITH raw_contract AS (
    SELECT
        *
    FROM
        {{ source('sales','raw_contract')}}
)
SELECT
    isdeleted,
    AccountId as contract_ACCOUNTID,
    StartDate,
    EndDate,
    ContractTerm,
    OwnerId as Contract_OwnerId,
    Status,
    StatusCode,
    ContractNumber,
    SBQQ__Opportunity__c,
    SBQQ__Quote__c,
    SBQQ__RenewalOpportunity__c,
    SBQQ__RenewalTerm__c,
    SBQQ__RenewalUpliftRate__c,
    Renewal_Account__c,
    Total_Renewal_Initial_Amount__c,
    Renewal_Start_Date__c,
    Annual_Renewal_Initial_Amount__c Contract_Annual_Renewal_Initial_Amount__c,
    Courtesy_Extension_Date__c
FROM
    raw_contract