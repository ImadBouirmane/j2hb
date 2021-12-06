import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ts_qs_type3/ts_qs_type3_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TsQsType2Widget extends StatefulWidget {
  const TsQsType2Widget({Key key}) : super(key: key);

  @override
  _TsQsType2WidgetState createState() => _TsQsType2WidgetState();
}

class _TsQsType2WidgetState extends State<TsQsType2Widget> {
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  bool checkboxListTileValue4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<QuestionsRecord>>(
      stream: queryQuestionsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: SpinKitDualRing(
                color: Color(0xFFA32020),
                size: 30,
              ),
            ),
          );
        }
        List<QuestionsRecord> tsQsType2QuestionsRecordList = snapshot.data;
        final tsQsType2QuestionsRecord = tsQsType2QuestionsRecordList.isNotEmpty
            ? tsQsType2QuestionsRecordList.first
            : null;
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
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: FlutterFlowMediaDisplay(
                          path: tsQsType2QuestionsRecord.image,
                          imageBuilder: (path) => ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              path,
                              width: double.infinity,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                          videoPlayerBuilder: (path) => FlutterFlowVideoPlayer(
                            path: path,
                            width: 300,
                            autoPlay: false,
                            looping: true,
                            showControls: true,
                            allowFullScreen: true,
                            allowPlaybackSpeedMenu: false,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: FlutterFlowAudioPlayer(
                          audio: Audio.network(
                            tsQsType2QuestionsRecord.audio,
                            metas: Metas(
                              id: 'df3hg_-4w8x1qt7',
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
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CheckboxListTile(
                            value: checkboxListTileValue1 ??= false,
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue1 = newValue),
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
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue2 = newValue),
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
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue3 = newValue),
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
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue4 = newValue),
                            title: Text(
                              'Choix 4',
                              style: FlutterFlowTheme.subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.tertiaryColor,
                            activeColor: FlutterFlowTheme.primaryColor,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                          )
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
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: TsQsType3Widget(),
                                  ),
                                );
                              },
                              text: 'Suivant',
                              icon: Icon(
                                Icons.chevron_right,
                                size: 15,
                              ),
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
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
