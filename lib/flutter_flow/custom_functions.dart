import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int addBalance(
  int? balance,
  int? deposit,
) {
  return balance! + deposit!;
}

double convertAmountToDouble(double? amount) {
  return amount!.toDouble();
}

double intrest(
  double? amount,
  int? rating,
) {
  rating!.toDouble();
  return amount! + (amount * rating * .01);
}

DateTime repaymentDate(DateTime? currentTime) {
  // retrun timestamp for 2 weeks in the future
  //get current date from dart locale
  final df = DateFormat.yMMMMEEEEd();
  final formattedDate =
      currentTime!.add(Duration(days: 14)).add(Duration(hours: 5, minutes: 30));
  final formattedTime = formattedDate;

  return formattedTime;
}

String repaymentStart(DateTime? currentTime) {
  // retrun timestamp for 2 weeks in the future
  //get current date from dart locale
  final df = DateFormat.yMMMMEEEEd();
  final formattedDate =
      currentTime!.add(Duration(days: 14)).add(Duration(hours: 5, minutes: 30));
  final formattedTime = '${df.format(formattedDate)}h';

  return formattedTime;
}
