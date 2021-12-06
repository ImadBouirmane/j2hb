import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ts_qs_type1/ts_qs_type1_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TsQsLtWidget extends StatefulWidget {
  const TsQsLtWidget({Key key}) : super(key: key);

  @override
  _TsQsLtWidgetState createState() => _TsQsLtWidgetState();
}

class _TsQsLtWidgetState extends State<TsQsLtWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 270,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Questions',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: StreamBuilder<List<SeriesRecord>>(
        stream: querySeriesRecord(
          limit: 40,
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
          List<SeriesRecord> gridViewSeriesRecordList = snapshot.data;
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: gridViewSeriesRecordList.length,
            itemBuilder: (context, gridViewIndex) {
              final gridViewSeriesRecord =
                  gridViewSeriesRecordList[gridViewIndex];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.tertiaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: TsQsType1Widget(),
                          ),
                        );
                      },
                      text: 'N',
                      options: FFButtonOptions(
                        width: 100,
                        height: 100,
                        color: FlutterFlowTheme.tertiaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                        elevation: 5,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 10,
                      ),
                    ).animated([animationsMap['buttonOnPageLoadAnimation']]),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
