import '../backend/backend.dart';
import '../components/validation_widget.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ts_result/ts_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TsQsType3Widget extends StatefulWidget {
  const TsQsType3Widget({Key key}) : super(key: key);

  @override
  _TsQsType3WidgetState createState() => _TsQsType3WidgetState();
}

class _TsQsType3WidgetState extends State<TsQsType3Widget> {
  String choiceChipsValue;
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
        List<QuestionsRecord> tsQsType3QuestionsRecordList = snapshot.data;
        final tsQsType3QuestionsRecord = tsQsType3QuestionsRecordList.isNotEmpty
            ? tsQsType3QuestionsRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              'Question 3',
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
                          path: tsQsType3QuestionsRecord.image,
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
                            tsQsType3QuestionsRecord.audio,
                            metas: Metas(
                              id: 'df3hg_-z1u3sp2u',
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
                          FlutterFlowChoiceChips(
                            initialOption: choiceChipsValue ??= 'Option 1',
                            options: [
                              ChipData('Option 1'),
                              ChipData('Option 2'),
                              ChipData('Option 3'),
                              ChipData('Option 4')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChipsValue = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: Colors.white,
                              ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              iconColor: FlutterFlowTheme.primaryColor,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 10,
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
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
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
                                    reverseDuration:
                                        Duration(milliseconds: 100),
                                    child: TsResultWidget(),
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
