import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/persistence_layer/hive_constants/hive_constants.dart';
import 'package:hwl_flutter_code_test/presentation_layer/home_screen/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  await Hive.openBox<ItemModel>(HiveConstants.boxNameItemModel);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
