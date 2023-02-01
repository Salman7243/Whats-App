

import 'package:whatsapp/Domain/repositories/firebase_repository.dart';

class SignInWithPhoneNumberUseCase{
  final FirebaseRepository repository;

  SignInWithPhoneNumberUseCase({required this.repository});

  Future<void> call(String smsPinCode)async{
    return await repository.signInWithPhoneNumber(smsPinCode);
  }
}