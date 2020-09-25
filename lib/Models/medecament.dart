import 'package:flutter/material.dart';

class Medecament {
  String id;
  String medecament;
  String laboratoire;
  double presentation;
  double ci;
  double cmin;
  double cmax;

  Medecament(
    this.id,
    this.laboratoire,
    this.medecament,
    this.presentation,
    this.ci,
    this.cmax,
    this.cmin,
  );
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'laboratoire': laboratoire,
      'medecament': medecament,
      'presentation': presentation,
      'ci': ci,
      'cmax': cmax,
      'cmin': cmin,
    };
    return map;
  }

  Medecament.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    medecament = map['id'];
    laboratoire = map['id'];
    presentation = map['id'];
    ci = map['id'];
    cmax = map['id'];
    cmin = map['id'];
  }
}
