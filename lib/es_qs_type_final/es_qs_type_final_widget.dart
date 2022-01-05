import '../components/validation_widget.dart';
import '../em_result/em_result_widget.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EsQsTypeFinalWidget extends StatefulWidget {
  const EsQsTypeFinalWidget({Key key}) : super(key: key);

  @override
  _EsQsTypeFinalWidgetState createState() => _EsQsTypeFinalWidgetState();
}

class _EsQsTypeFinalWidgetState extends State<EsQsTypeFinalWidget> {
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  bool checkboxListTileValue4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Question 2',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-17.11, 4.01),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://picsum.photos/seed/424/600',
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio.network(
                        '',
                        metas: Metas(
                          id: 'df3hg_-cg6rx6sd',
                        ),
                      ),
                      titleTextStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF9D9D9D),
                        fontSize: 12,
                      ),
                      fillColor: FlutterFlowTheme.tertiaryColor,
                      playbackButtonColor: FlutterFlowTheme.primaryColor,
                      activeTrackColor: Color(0xFF57636C),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'What is Lorem Ipsum?\n',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CheckboxListTile(
                        value: checkboxListTileValue1 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue1 = newValue),
                        title: Text(
                          'Choix 1',
                          style: FlutterFlowTheme.subtitle2,
                        ),
                        tileColor: FlutterFlowTheme.tertiaryColor,
                        activeColor: FlutterFlowTheme.primaryColor,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: checkboxListTileValue2 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue2 = newValue),
                        title: Text(
                          'Choix 2',
                          style: FlutterFlowTheme.subtitle2,
                        ),
                        tileColor: FlutterFlowTheme.tertiaryColor,
                        activeColor: FlutterFlowTheme.primaryColor,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: checkboxListTileValue3 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue3 = newValue),
                        title: Text(
                          'Choix 3',
                          style: FlutterFlowTheme.subtitle2,
                        ),
                        tileColor: FlutterFlowTheme.tertiaryColor,
                        activeColor: FlutterFlowTheme.primaryColor,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: checkboxListTileValue4 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue4 = newValue),
                        title: Text(
                          'Choix 4',
                          style: FlutterFlowTheme.subtitle2,
                        ),
                        tileColor: FlutterFlowTheme.tertiaryColor,
                        activeColor: FlutterFlowTheme.primaryColor,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: ValidationWidget(),
                                  ),
                                );
                              },
                            );
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 100),
                                reverseDuration: Duration(milliseconds: 100),
                                child: EmResultWidget(),
                              ),
                            );
                          },
                          text: 'Finir',
                          options: FFButtonOptions(
                            width: 130,
                            height: 50,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Open Sans',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            elevation: 5,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
