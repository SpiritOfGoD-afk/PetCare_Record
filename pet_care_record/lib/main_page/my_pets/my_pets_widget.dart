import '/components/card_component/card_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_pets_model.dart';
export 'my_pets_model.dart';

class MyPetsWidget extends StatefulWidget {
  const MyPetsWidget({super.key});

  static String routeName = 'My_Pets';
  static String routePath = '/myPets';

  @override
  State<MyPetsWidget> createState() => _MyPetsWidgetState();
}

class _MyPetsWidgetState extends State<MyPetsWidget>
    with TickerProviderStateMixin {
  late MyPetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyPetsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/rb_136741.png',
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            'My Pets',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.more_vert,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 32.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: false,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          labelColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).primaryText,
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 50.0,
                          elevation: 0.0,
                          buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          tabs: const [
                            Tab(
                              text: 'All',
                            ),
                            Tab(
                              text: '🐕Dogs',
                            ),
                            Tab(
                              text: '🐈Cats',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(38.0),
                                      child: Wrap(
                                        spacing: 38.0,
                                        runSpacing: 38.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          wrapWithModel(
                                            model: _model.cardComponentModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Meita',
                                              distance: 3.5,
                                              animalType: 'macoon',
                                              image:
                                                  'https://images.unsplash.com/photo-1568152950566-c1bf43f4ab28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8Y2F0JTIwc2lhbXxlbnwwfHx8fDE3MzIxNTkzNjd8MA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.cardComponentModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Kiko',
                                              distance: 8.0,
                                              animalType: 'Persia',
                                              image:
                                                  'https://images.unsplash.com/photo-1723028075357-a2ce23ce6505?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxtYWluZSUyMGNvb24lMjBjYXR8ZW58MHx8fHwxNzMyMTU5NjExfDA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.cardComponentModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Ria',
                                              distance: 0.8,
                                              animalType: 'Husky',
                                              image:
                                                  'https://images.unsplash.com/photo-1698095902455-5050af32e334?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxodXNreSUyMGRvZ3xlbnwwfHx8fDE3MzIxNTk3MDd8MA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(38.0),
                                      child: Wrap(
                                        spacing: 38.0,
                                        runSpacing: 38.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          wrapWithModel(
                                            model: _model.cardComponentModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Ria',
                                              distance: 0.8,
                                              animalType: 'Husky',
                                              image:
                                                  'https://images.unsplash.com/photo-1698095902455-5050af32e334?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxodXNreSUyMGRvZ3xlbnwwfHx8fDE3MzIxNTk3MDd8MA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(38.0),
                                      child: Wrap(
                                        spacing: 38.0,
                                        runSpacing: 38.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          wrapWithModel(
                                            model: _model.cardComponentModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Meita',
                                              distance: 3.5,
                                              animalType: 'macoon',
                                              image:
                                                  'https://images.unsplash.com/photo-1568152950566-c1bf43f4ab28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8Y2F0JTIwc2lhbXxlbnwwfHx8fDE3MzIxNTkzNjd8MA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.cardComponentModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const CardComponentWidget(
                                              name: 'Kiko',
                                              distance: 8.0,
                                              animalType: 'Persia',
                                              image:
                                                  'https://images.unsplash.com/photo-1723028075357-a2ce23ce6505?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxtYWluZSUyMGNvb24lMjBjYXR8ZW58MHx8fHwxNzMyMTU5NjExfDA&ixlib=rb-4.0.3&q=80&w=400',
                                              favorite: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
