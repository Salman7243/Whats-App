


import 'package:contacts_service/contacts_service.dart';

import '../../Domain/entities/contact_entity.dart';


abstract class LocalDataSource{
  Future<List<ContactEntity>> getDeviceNumbers();
}

class LocalDataSourceImpl implements LocalDataSource{
  @override
  Future<List<ContactEntity>> getDeviceNumbers()async {
   List<ContactEntity> contacts=[];
   final getContactsData= await ContactsService.getContacts();

   getContactsData.forEach((myContact) {
     myContact.phones?.forEach((phoneData) {
       var phoneDatavalue;
       var displayName = myContact.displayName;
       contacts.add(ContactEntity(
         phoneNumber: phoneDatavalue,
          status: '', uid: '', label: '',
       ));
     });
   });
   return contacts;
  }

}