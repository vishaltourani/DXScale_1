public class ContactsSelector {

  //Method get Contacts By Id
  public static List<Contact> selectById(Id contactId){
    
    if(String.isNotBlank(contactId)) {
      return selectById(new Set<Id>{ contactId });
    }
    
    return new List<Contact>();    
  }
    
  //Method get Contacts By Ids
  public static List<Contact> selectById(Set<Id> setOfContactIds){

    if(setOfContactIds != null && !setOfContactIds.isEmpty()) {
	  return [SELECT Id, Name, FirstName, LastName, Email, Phone
              FROM Contact WHERE Id IN :setOfContactIds];
    }
          
    return new List<Contact>();    
  }
  
  //Method get of Contacts By Account Id
  public static List<Contact> selectByAccountId(Id accountId){
    
    if(String.isNotBlank(accountId)) {
      return selectByAccountId(new Set<Id>{ accountId });
    }
    
    return new List<Contact>();    
  }
    
  //Method get Contacts By Account Ids
  public static List<Contact> selectByAccountId(Set<Id> setOfAccountIds){

    if(setOfAccountIds != null && !setOfAccountIds.isEmpty()) {
	  return [SELECT Id, Name, FirstName, LastName, Email, Phone, AccountId
              FROM Contact WHERE AccountId IN :setOfAccountIds];
    }
          
    return new List<Contact>();    
  }  
}