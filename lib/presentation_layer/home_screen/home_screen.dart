import 'package:flutter/material.dart';
import 'package:hwl_flutter_code_test/presentation_layer/business_logic/home_provider.dart';
import 'package:hwl_flutter_code_test/presentation_layer/widgets/app_bar_widget.dart';
import 'package:hwl_flutter_code_test/presentation_layer/widgets/sub_title_widget.dart';
import 'package:hwl_flutter_code_test/presentation_layer/widgets/trailing_widget.dart';
import 'package:hwl_flutter_code_test/utils/utils.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBarWidget().customAppBar(context),
        body: Consumer<HomeProvider>(builder: (context, provider, child) {
          if (provider.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else if (provider.isLoading == false &&
              provider.isNetworkSuccess == true) {
            Utils.toast(msg: "Successful network call", status: true);
            return CoreBodyWidget(provider: provider);
          } else if (provider.isLoading == false &&
              provider.isNetworkSuccess == false) {
            // ignore: prefer_is_empty
            if (provider.itemList == null || provider.itemList?.length == 0) {
              Utils.toast(
                  msg:
                      "Network call is failed\ndata hasn't saved yet\nError==>${provider.errorMessage}",
                  status: false);
              return Container();
            } else {
              Utils.toast(
                  msg:
                      "Network call is failed\ndata is from local\nError==>${provider.errorMessage}",
                  status: false);
              return CoreBodyWidget(provider: provider);
            }
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}

class CoreBodyWidget extends StatelessWidget {
  final HomeProvider provider;
  const CoreBodyWidget({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: provider.itemList?.length,
        itemBuilder: (context, index) {
          var item = provider.itemList?[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: ListTile(
              dense: false,
              tileColor: Colors.blueGrey.withOpacity(0.12),
              title: Text(
                item?.product ?? "",
                style: Utils.f16Bold.copyWith(color: Colors.black87),
              ),
              subtitle: SubTitleWidget(
                sellPrice: item?.sellPrice ?? "",
                buyPrice: item?.buyPrice ?? "",
              ),
              trailing: TrailingWidget(
                time: item?.mTime ?? "",
                date: item?.mDate ?? "",
              ),
            ),
          );
        });
  }
}
