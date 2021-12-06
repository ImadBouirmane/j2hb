import '../backend/backend.dart';
import '../es_qs_type_final/es_qs_type_final_widget.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EsQsTypeInitialWidget extends StatefulWidget {
  const EsQsTypeInitialWidget({Key key}) : super(key: key);

  @override
  _EsQsTypeInitialWidgetState createState() => _EsQsTypeInitialWidgetState();
}

class _EsQsTypeInitialWidgetState extends State<EsQsTypeInitialWidget> {
  String radioButtonValue;
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
        List<QuestionsRecord> esQsTypeInitialQuestionsRecordList =
            snapshot.data;
        final esQsTypeInitialQuestionsRecord =
            esQsTypeInitialQuestionsRecordList.isNotEmpty
                ? esQsTypeInitialQuestionsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              'Question 1',
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
                          path: esQsTypeInitialQuestionsRecord.image,
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
                            width: double.infinity,
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
                            esQsTypeInitialQuestionsRecord.audio,
                            metas: Metas(
                              id: 'df3hg_-6cm1pg9o',
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
                              'Where does it come from?\n',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.secondaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowRadioButton(
                              options: [
                                'Choix 1',
                                'Choix 2',
                                'Choix 3',
                                'Choix 4'
                              ],
                              onChanged: (value) {
                                setState(() => radioButtonValue = value);
                              },
                              optionHeight: 30,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: Colors.black,
                              ),
                              selectedTextStyle: FlutterFlowTheme.subtitle1,
                              textPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 70, 0),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: FlutterFlowTheme.primaryColor,
                              inactiveRadioButtonColor: Color(0x8A000000),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: EsQsTypeFinalWidget(),
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
                                fontWeight: FontWeight.w500,
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
