with src_contract as (SELECT
    *
FROM
    {{ ref('src_contract') }}
)
SELECT
    contract_ACCOUNTID,
    StartDate,
    EndDate,
    ContractTerm,
    Contract_OwnerId,
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
    Contract_Annual_Renewal_Initial_Amount__c,
    Courtesy_Extension_Date__c
FROM
    src_contract
WHERE
    isDeleted='false'