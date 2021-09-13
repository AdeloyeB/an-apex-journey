/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-13-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class OpportunityTriggerHandler {

    public static void beforeInsert(Opportunity[] newOpportunities){

        Set<ID> accountIds = new Set<ID>();


        for (Opportunity opp : newOpportunities) {
            accountIds.add(opp.AccountId);
        }

        Account[] parentAccounts = [SELECT Id, Name, Phone,(SELECT Id, FirstName, LastName FROM Contacts), Parent.Name, Parent.Phone
                                    FROM Account
                                    WHERE Id IN :accountIds];

       System.debug(parentAccounts);

      //lOTS OF WAYS TO USE RQUERIES TO STORE INFORMATION. HERE IS AN EXAMPLE OF USING IT FOR AN INDIIVDUAL FIELD
       String childContact = parentAccounts[0].Contacts[0].FirstName;
       
    }

    //BEFORE UPDATE
    public static void beforeUpdate(Map<ID, Opportunity> newOpportunityMap, Map<ID, Opportunity> oldOpportunityMap){

    }

    //AFTER INSERT
    public static void afterInsert(List<Opportunity> newOpportunities){


    }

    //AFTER UPDATE
    public static void afterUpdate (Map<ID, Opportunity> newOpportunityMap, Map<ID, Opportunity> oldOpporunityMap){

    }

}
