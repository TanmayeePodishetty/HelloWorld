trigger Customerinfotrigger on customerinfo__c (after insert) {
    for(customerinfo__c obj:Trigger.old){
        if(obj.Balance__c<10000){
            obj.Balance__c = obj.Balance__c-100;
            obj.Rate_of_Interest__c = obj.Rate_of_Interest__c-0.01;
            obj.Comments__c = 'as per bank policy you didnt mainted minimum balance,so deducting 100 rs fromn ur account'+ date.today();
            
           
        }
        
    }

}