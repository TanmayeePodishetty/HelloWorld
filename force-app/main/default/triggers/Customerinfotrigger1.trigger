trigger Customerinfotrigger1 on customerinfo__c (after update) {
   try{
    for(customerinfo__c a:Trigger.old){
        if(a.Senior_Citizen__c=='yes')
              a.Rate_of_Interest__c=5.0;
        System.debug('Not coming');
    }
    }
    catch(Exception e){
        System.debug(e.getLineNumber()+e.getStackTraceString());
    }
   /* for(customerinfo__c a:Trigger.new){
        if(a.Senior_Citizen__c=='yes')
              a.Rate_of_Interest__c=5.0;
    }*/
}