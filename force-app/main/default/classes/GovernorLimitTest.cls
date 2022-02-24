@isTest
public class GovernorLimitTest {
    @isTest
    static void testme()
    {
        
        System.debug('Governor before starttest :'+ Limits.getDmlStatements());//0
        
        test.startTest();
        for(Integer a =0; a<14000;a++)
        {
            insert new Account(Name = 'Srini'+a);
        }
        System.debug('Governor while :'+ Limits.getDmlStatements());
        test.stopTest();
        System.debug('Governor after :'+ Limits.getDmlStatements());//0
    }
    
}