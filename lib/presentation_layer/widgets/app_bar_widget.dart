import 'package:flutter/material.dart';
import 'package:hwl_flutter_code_test/utils/utils.dart';

class AppBarWidget {
  AppBar customAppBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      bottom: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 10),
        child: Container(
          height: 0.4,
          color: Colors.black45,
        ),
      ),
      centerTitle: true,
      title: Text(
        "My Item List",
        style: Utils.f16Bold.copyWith(color: Colors.black),
      ),
      backgroundColor: Colors.white,
    );
  }
}
