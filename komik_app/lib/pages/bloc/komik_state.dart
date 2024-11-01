part of 'komik_bloc.dart';

@immutable
sealed class KomikState {}

final class KomikInitial extends KomikState {}

final class KomikLoading extends KomikState {}

final class KomikLoaded extends KomikState {
  final List<Komik> komiks;

  KomikLoaded(this.komiks);
}

final class KomikError extends KomikState {
  final String error;

  KomikError(this.error);
}
