public  virtual class Parent {
    
    public Parent(){
        
        System.debug('Unparamiterized parent');
    }
    public Parent(String a){
        this();
        System.debug('Parameterized parent');
    }
    public void display(){
        System.debug('Parent ');
    }

}