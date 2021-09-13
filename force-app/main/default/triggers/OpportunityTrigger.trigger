/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-13-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {


    if(Trigger.isBefore){
        if(Trigger.isInsert){
            OpportunityTriggerHandler.beforeInsert(Trigger.new);
        }

        if(Trigger.isUpdate){
            OpportunityTriggerHandler.beforeUpdate(Trigger.newMap, Trigger.oldMap);
        }
    }

    if(Trigger.isAfter){
        if(Trigger.isInsert){
            OpportunityTriggerHandler.afterInsert(Trigger.new);
        }
        
        if(Trigger.isUpdate){
            OpportunityTriggerHandler.afterUpdate(Trigger.newMap, Trigger.oldMap);
        }
    }

}