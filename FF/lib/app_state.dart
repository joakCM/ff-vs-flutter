import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  List<PlaceStruct> _places = [
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Paris\",\"rating\":\"4.7\",\"image\":\"https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1640&q=80\",\"location\":\"48.8566,2.3522\"}')),
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Tokyo\",\"rating\":\"4.6\",\"image\":\"https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1794&q=80\",\"location\":\"35.6895,139.6917\"}')),
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"New York City\",\"rating\":\"4.9\",\"image\":\"https://images.unsplash.com/photo-1513107358949-b21c1c3906eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80\",\"location\":\"40.7128,-74.006\"}')),
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Sydney\",\"rating\":\"4.5\",\"image\":\"https://images.unsplash.com/photo-1598948485421-33a1655d3c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1674&q=80\",\"location\":\"-33.8688,151.2093\"}')),
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Miami Beach\",\"rating\":\"4.5\",\"image\":\"https://images.unsplash.com/photo-1571041804726-53e8bf082096?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80\",\"location\":\"25.7907,-80.13\",\"is_favorite\":\"false\"}')),
    PlaceStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Grand Canyon\",\"rating\":\"4.8\",\"image\":\"https://images.unsplash.com/photo-1615551043360-33de8b5f410c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80\",\"location\":\"36.107,-112.113\",\"is_favorite\":\"false\"}'))
  ];
  List<PlaceStruct> get places => _places;
  set places(List<PlaceStruct> _value) {
    _places = _value;
  }

  void addToPlaces(PlaceStruct _value) {
    _places.add(_value);
  }

  void removeFromPlaces(PlaceStruct _value) {
    _places.remove(_value);
  }

  void removeAtIndexFromPlaces(int _index) {
    _places.removeAt(_index);
  }

  void updatePlacesAtIndex(
    int _index,
    PlaceStruct Function(PlaceStruct) updateFn,
  ) {
    _places[_index] = updateFn(_places[_index]);
  }

  void insertAtIndexInPlaces(int _index, PlaceStruct _value) {
    _places.insert(_index, _value);
  }

  String _searchTerm = '';
  String get searchTerm => _searchTerm;
  set searchTerm(String _value) {
    _searchTerm = _value;
  }
}
