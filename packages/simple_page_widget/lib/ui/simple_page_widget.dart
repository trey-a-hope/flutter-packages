library simple_page_widget;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_page_widget/ui/custom_icon_box_widget.dart';

class SimplePageWidget extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final IconButton? leftIconButton;
  final IconButton? rightIconButton;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const SimplePageWidget({
    Key? key,
    required this.child,
    required this.title,
    this.floatingActionButton,
    this.drawer,
    this.leftIconButton,
    this.rightIconButton,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  //App Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        leftIconButton == null
                            ? Container(
                                width: 50,
                              )
                            : CustomIconBoxWidget(
                                iconButton: leftIconButton!,
                              ),
                        Expanded(
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.headline1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        rightIconButton == null
                            ? Container(
                                width: 50,
                              )
                            : CustomIconBoxWidget(
                                iconButton: rightIconButton!,
                              ),
                      ],
                    ),
                  ),
                  const Divider(),
                ],
              ),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
