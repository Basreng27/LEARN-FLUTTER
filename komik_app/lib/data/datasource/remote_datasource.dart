import 'package:dio/dio.dart';
import 'package:komik_app/data/model/komik_model.dart';

class RemoteDataSource {
  final dio = Dio(BaseOptions(
      baseUrl:
          'http://10.0.2.2:8000/api')); // Mengubah baseUrl ke 10.0.2.2 untuk emulator Android

  Future<DataKomik> getKomiks() async {
    try {
      final response = await dio.get('/komik');

      return DataKomik.fromJson(response.data);
    } on DioException {
      rethrow; // Atau Anda bisa melakukan penanganan error yang lebih spesifik di sini
    } catch (e) {
      rethrow; // Menangani error tidak terduga
    }
  }
}
