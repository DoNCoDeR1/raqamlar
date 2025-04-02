part of 'draw_bloc.dart';


@freezed
class DrawEvent with _$DrawEvent {
  const factory DrawEvent.init() = _Init;
  const factory DrawEvent.clearCanvas() = _ClearCanvas;
  const factory DrawEvent.nextNumber() = _NextNumber;
  const factory DrawEvent.prevNumber() = _PrevNumber;
  const factory DrawEvent.submit() = _Submit;
  const factory DrawEvent.addPoint(Offset? point) = _AddPoint;
}