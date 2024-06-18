import 'package:flutter/material.dart';
import 'package:hwl_flutter_code_test/utils/utils.dart';

class SubTitleWidget extends StatelessWidget {
  final String sellPrice, buyPrice;
  const SubTitleWidget({
    super.key,
    required this.sellPrice,
    required this.buyPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sell Price: $sellPrice',
          style: Utils.f16MeBold.copyWith(color: Colors.orange),
        ),
        Text(
          'Buy Price: $buyPrice',
          style: Utils.f16MeBold.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
