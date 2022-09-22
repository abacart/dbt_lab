WITH account AS (
 SELECT * FROM {{ ref('account_cleansed') }}
),
contract AS (
 SELECT * FROM {{ ref('contract_cleansed') }}
),
opportunity AS (
 SELECT * FROM {{ ref('opportunity_cleansed') }}
),
opportunitylineitem AS (
 SELECT * FROM {{ ref('opportunitylineitem_cleansed') }}
)
SELECT
    *
FROM opportunity o

LEFT JOIN account a
ON a.account_id = o.accountid

LEFT JOIN opportunitylineitem p
ON p.opportunityid = o.id

LEFT JOIN contract c
ON c.SBQQ__Opportunity__c = o.id