trigger Trigg4 on customerinfo__c (before update,before insert) {
    for(customerinfo__c obj:Trigger.New)
    {
       /* if(obj.Type_of_Account__c == 'Salary')
        {
           Integer IntrandomNumber = Integer.valueof((Math.random() * 1000));
         obj.Balance__c = obj.Balance__c + 50;
         obj.Comments__c = 'You have won a voucher v'+ IntrandomNumber;          
        }*/
        
      /*  if(obj.Type_of_Account__c == 'Savings'|| obj.Type_of_Account__c == 'savings')
        {
            obj.Type_of_Account__c = 'Saving';
        }*/
        List <customerinfo__c> ob  = [select Comments__c from customerinfo__c where Comments__c = :obj.Comments__c];
        if(obj.Balance__c<1000)
        {
            obj.Comments__c = 'Insufficent balance please maintain minimum amount';
        }
    }

}