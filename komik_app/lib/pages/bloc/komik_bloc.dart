import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:komik_app/data/datasource/remote_datasource.dart';
import 'package:komik_app/data/model/komik_model.dart';

part 'komik_event.dart';
part 'komik_state.dart';

class KomikBloc extends Bloc<KomikEvent, KomikState> {
  final RemoteDataSource remoteDataSource;

  KomikBloc({required this.remoteDataSource}) : super(KomikInitial()) {
    on<LoadKomik>((event, emit) async {
      emit(KomikLoading());

      try {
        final result = await remoteDataSource.getKomiks();
        // stelah berhasil mengambil data maka jalankan emmit (mungkin seperti echo)
        emit(KomikLoaded(result.data));
      } catch (error) {
        emit(KomikError(error.toString()));
      }
    });
  }
}
