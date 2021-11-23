import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamPageWidget extends StatefulWidget {
  ExamPageWidget({Key key}) : super(key: key);

  @override
  _ExamPageWidgetState createState() => _ExamPageWidgetState();
}

class _ExamPageWidgetState extends State<ExamPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
