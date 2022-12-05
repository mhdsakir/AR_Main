import 'package:airtual_showroom_proj/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class Statics extends StatelessWidget {
  const Statics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:  const AppBarTitle(title: 'Statics'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}