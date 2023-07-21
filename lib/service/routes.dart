import 'package:flutter/material.dart';

navigate(BuildContext context, dynamic route) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
back(BuildContext context) => Navigator.pop(context);
