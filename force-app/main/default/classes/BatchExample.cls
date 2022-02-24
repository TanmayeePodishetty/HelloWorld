global class BatchExample implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start (Database.BatchableContext bc){
        // collect the batches of records or objects to be passed to execute
        String q = 'Select Id,Name from Account';
        return Database.getQueryLocator(q);
    }
    
    global void execute(Database.BatchableContext bc,list<Account> aclist){
        for(Account ac:aclist){
            ac.Name = ac.Name+'Append By Batch job';
        }
        try {
            update aclist;
        }
        catch (Exception e){
            System.debug(e.getMessage());
        }
    }
    global void finish(Database.BatchableContext bc)
    {
        System.debug('batch is finished');
    }
}