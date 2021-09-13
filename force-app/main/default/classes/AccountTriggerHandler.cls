/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-11-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountTriggerHandler {


        //BEFORE INSERT
        public static void beforeInsert(List<Account> newAccounts){
                        for (Account newAccount: newAccounts) {

                if(newAccount.CustomerPriority__c == null){
                    newAccount.CustomerPriority__c = 'Low';
                }
                else{
                    newAccount.CustomerPriority__c = 'High';
                }
                
            }


        }

        //BEFORE UPDATE
        public static void beforeUpdate(Map<ID, Account> newAccountMap, Map<ID, Account> oldAccountMap){

        }

        //AFTER INSERT
        public static void afterInsert(List<Account> newAccounts){


        }

        //AFTER UPDATE
        public static void afterUpdate (Map<ID, Account> newAccountMap, Map<ID, Account> oldAccountMap){

        }

    
}
  