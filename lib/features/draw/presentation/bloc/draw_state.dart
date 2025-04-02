part of 'draw_bloc.dart';

@freezed
class DrawState with _$DrawState {
  const factory DrawState({
    @Default(Status.initial) Status status,
    Failure? error,
    NumberEntity? number,
    String? percent,
    @Default([]) List<Offset?> points,
    GlobalKey? globalKey,
    File? imageFile,
  }) = _DrawState;
}
