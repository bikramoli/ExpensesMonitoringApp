import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transaction {
  final id;
  final title;
  final amount;
  final date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
