import '../accueil/accueil_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TsQsRsWidget extends StatefulWidget {
  const TsQsRsWidget({Key key}) : super(key: key);

  @override
  _TsQsRsWidgetState createState() => _TsQsRsWidgetState();
}

class _TsQsRsWidgetState extends State<TsQsRsWidget> {
  String choiceChipsValue;
  String radioButtonValue;
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
          'Réponses',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.home_filled,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 0),
                  reverseDuration: Duration(milliseconds: 0),
                  child: AccueilWidget(),
                ),
              );
            },
          )
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.tertiaryColor,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/isgzqb4umxaznzoktdb8.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'La question propose 1 ?\n',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
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
                              selectedTextStyle:
                                  FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.primaryColor,
                              ),
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.tertiaryColor,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/images_(1).jfif',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'La question propose 2 ?\n',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue1 ??= true,
                                    onChanged: (newValue) => setState(() =>
                                        checkboxListTileValue1 = newValue),
                                    title: Text(
                                      'Choix 1',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                    tileColor: FlutterFlowTheme.tertiaryColor,
                                    activeColor: FlutterFlowTheme.primaryColor,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue2 ??= false,
                                    onChanged: (newValue) => setState(() =>
                                        checkboxListTileValue2 = newValue),
                                    title: Text(
                                      'Choix 1',
                                      style: FlutterFlowTheme.subtitle2,
                                    ),
                                    tileColor: FlutterFlowTheme.tertiaryColor,
                                    activeColor: FlutterFlowTheme.primaryColor,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue3 ??= false,
                                    onChanged: (newValue) => setState(() =>
                                        checkboxListTileValue3 = newValue),
                                    title: Text(
                                      'Choix 1',
                                      style: FlutterFlowTheme.subtitle2,
                                    ),
                                    tileColor: FlutterFlowTheme.tertiaryColor,
                                    activeColor: FlutterFlowTheme.primaryColor,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue4 ??= false,
                                    onChanged: (newValue) => setState(() =>
                                        checkboxListTileValue4 = newValue),
                                    title: Text(
                                      'Choix 1',
                                      style: FlutterFlowTheme.subtitle2,
                                    ),
                                    tileColor: FlutterFlowTheme.tertiaryColor,
                                    activeColor: FlutterFlowTheme.primaryColor,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.tertiaryColor,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/images.jfif',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'La question propose 3 ?\n',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FlutterFlowChoiceChips(
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
                                  backgroundColor:
                                      FlutterFlowTheme.primaryColor,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                  ),
                                  iconColor: Colors.white,
                                  iconSize: 18,
                                  elevation: 4,
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Colors.white,
                                  textStyle:
                                      FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                  iconColor: FlutterFlowTheme.primaryColor,
                                  iconSize: 18,
                                  elevation: 4,
                                ),
                                chipSpacing: 10,
                              ),
                            )
                          ],
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
  }
}
