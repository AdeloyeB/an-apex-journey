/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-11-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountTriggerHandler.beforeInsert(Trigger.new);
        }

        if(Trigger.isUpdate){
            AccountTriggerHandler.beforeUpdate(Trigger.newMap, Trigger.oldMap);
        }
    }

    if(Trigger.isAfter){
        if(Trigger.isInsert){
            AccountTriggerHandler.afterInsert(Trigger.new);
        }
        
        if(Trigger.isUpdate){
            AccountTriggerHandler.afterUpdate(Trigger.newMap, Trigger.oldMap);
        }
    }

}