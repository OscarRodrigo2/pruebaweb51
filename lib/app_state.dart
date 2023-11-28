import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _charty = [10, 15, 18, 25, 14, 32, 35, 38];
  List<int> get charty => _charty;
  set charty(List<int> _value) {
    _charty = _value;
  }

  void addToCharty(int _value) {
    _charty.add(_value);
  }

  void removeFromCharty(int _value) {
    _charty.remove(_value);
  }

  void removeAtIndexFromCharty(int _index) {
    _charty.removeAt(_index);
  }

  void updateChartyAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _charty[_index] = updateFn(_charty[_index]);
  }

  void insertAtIndexInCharty(int _index, int _value) {
    _charty.insert(_index, _value);
  }

  List<int> _chartx = [0, 1, 2, 3, 4, 5, 6, 7];
  List<int> get chartx => _chartx;
  set chartx(List<int> _value) {
    _chartx = _value;
  }

  void addToChartx(int _value) {
    _chartx.add(_value);
  }

  void removeFromChartx(int _value) {
    _chartx.remove(_value);
  }

  void removeAtIndexFromChartx(int _index) {
    _chartx.removeAt(_index);
  }

  void updateChartxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartx[_index] = updateFn(_chartx[_index]);
  }

  void insertAtIndexInChartx(int _index, int _value) {
    _chartx.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
