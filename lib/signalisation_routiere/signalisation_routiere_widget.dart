import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignalisationRoutiereWidget extends StatefulWidget {
  const SignalisationRoutiereWidget({Key key}) : super(key: key);

  @override
  _SignalisationRoutiereWidgetState createState() =>
      _SignalisationRoutiereWidgetState();
}

class _SignalisationRoutiereWidgetState
    extends State<SignalisationRoutiereWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'La signalisation routière',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.tertiaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/256/600',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'La signalisation routière est omniprésente sur le réseau routier français, et comprend notamment le marquage au sol et les différents panneaux.',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'La signalisation horizontale',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Le marquage au sol comprend l’ensemble des informations présentes directement sur la chaussée, et qui délivrent des informations utiles comme :',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '- Les lignes médianes, qui peuvent  \n   être continues ou discontinues, et qui \n   permettent de séparer les différentes \n   voies de circulation\n- Les lignes de rives, qui créent une \n   démarcation entre l’accotement et la \n   chaussée\n- Les flèches, qui permettent d’ \n   indiquer les directions associées à \n   chaque voie de circulation\n- Les lignes transversales, qui \n   indiquent où céder le passage \n   (STOP, Cédez-le-passage, feux tricolores), \n   où traverser (passages piétons), etc …',
                              style: FlutterFlowTheme.bodyText1,
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/dd806f52f50d71e60496edd0808f0e704d73f39f_feux-marquage-sol.png',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'La signalisation verticale',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'La signalisation verticale comprend les différents panneaux, mais aussi :',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Text(
                          '- Les bornes de localisation, complétées par une lettre spécifiant la nature de la voie empruntée\n- Les balises, qui peuvent indiquer un obstacle (1), un virage (3), un renforcement du marquage continu (7), une intersection (10), etc …',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/9493820d7e2d731e32a1b5cb7ddbb84ca7010265_balises-route.jpg',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Les panneaux de signalisation',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Les panneaux sont présents partout sur le réseau routier. Il est important de savoir les interpréter rapidement pour comprendre leur message et adapter son comportement.',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/5207d297f19294d22b74e04590510dacfbdc6764_signalisation-verticale-panneaux.png',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Les différentes formes des panneaux',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Ils peuvent être de différentes formes, notamment :',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '- Triangulaires (danger)\n- Ronds (prescription)\n- Carrés (indication)\n- Flèches (direction)',
                              style: FlutterFlowTheme.bodyText1,
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Les différentes couleurs des panneaux',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Ils peuvent également être de différentes couleurs :',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '- Rouge (interdiction ou danger)\n- Bleu (obligation ou indication)\n- Jaune (temporaire)\n- Vert ou marron (différents types de \n   localisations)',
                              style: FlutterFlowTheme.bodyText1,
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
        ),
      ),
    );
  }
}
