trigger Trigsample on Dex__c (before insert) {
for(Dex__c a:Trigger.New )
    a.Salary__c=5678;
}