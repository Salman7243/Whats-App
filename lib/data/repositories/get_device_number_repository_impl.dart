

import 'package:whatsapp/Domain/entities/contact_entity.dart';
import 'package:whatsapp/data/local_datasource/local_datasource.dart';
import 'package:whatsapp/domain/repositories/get_device_number_repository.dart';

class GetDeviceNumberRepositoryImpl implements GetDeviceNumberRepository{
  final LocalDataSource localDataSource;

  GetDeviceNumberRepositoryImpl({required this.localDataSource});
  @override
  Future<List<ContactEntity>> getDeviceNumbers() {
    return localDataSource.getDeviceNumbers();
  }

}