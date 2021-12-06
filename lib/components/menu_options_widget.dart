import '../components/exam_result_menu_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuOptionsWidget extends StatefulWidget {
  const MenuOptionsWidget({Key key}) : super(key: key);

  @override
  _MenuOptionsWidgetState createState() => _MenuOptionsWidgetState();
}

class _MenuOptionsWidgetState extends State<MenuOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30,
      borderWidth: 1,
      buttonSize: 60,
      icon: Icon(
        Icons.more_vert_rounded,
        color: FlutterFlowTheme.tertiaryColor,
        size: 30,
      ),
      onPressed: () async {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                height: 150,
                child: ExamResultMenuWidget(),
              ),
            );
          },
        );
      },
    );
  }
}
