import 'package:flutter/material.dart';
import 'package:hwl_flutter_code_test/utils/utils.dart';

class TrailingWidget extends StatelessWidget {
  final String time, date;
  const TrailingWidget({
    super.key,
    required this.time,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Time: $time',
          style: Utils.f14Normal.copyWith(color: Colors.grey.shade900),
        ),
        Text(
          'Date : $date',
          style: Utils.f14Normal.copyWith(color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
