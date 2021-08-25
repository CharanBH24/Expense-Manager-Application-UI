import 'dart:ffi';

import 'package:flutter/material.dart';

class Transaction{
  String transactionName;
  String description;
  Float amount;
  String typeOfTransaction;

  Transaction({this.transactionName,this.description,this.amount,this.typeOfTransaction});
}