public class ProcessbuilderInvocation{
@InvocableMethod   
    public static void updateChildRecords(List<Id> oppIds){
        List<OpportunityLineItem> oppLineItemsToBeUpdated=
        [Select id,is_Deactivated__c from OpportunityLineItem where UnitPrice>10000 and OpportunityId In : oppIds];
        for(OpportunityLineItem oppItem : oppLineItemsToBeUpdated){
            oppItem.is_Deactivated__c = true;
        }
        try{
            Update oppLineItemsToBeUpdated;
        }Catch(Exception exp){
            system.debug('--Exception raised due to'+exp.getMessage());
        }
    }
}