import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:htt/controllers/category_controller.dart';
import 'package:htt/controllers/product_controller.dart';
import 'package:htt/controllers/user_controller.dart';
import 'package:htt/views/screens/category_screen.dart';
import 'package:htt/views/screens/product_screen.dart';
import 'package:htt/views/screens/user_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final productController = ProductController();
  final categoryController = CategoryController();
  final userController = UserController();
  final controller = ProductController();
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(100, 300),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: const Text("HTTP"),
              bottom: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(text: "Products"),
                  Tab(text: "Categories"),
                  Tab(text: "Users"),
                ],
              ),
            ),
            body: TabBarView(
              controller: tabController,
              children: [
                ProductScreen(),
                CategoryScreen(),
                UserScreen(),
              ],
            ),
          ),
        );
      },
    );
  }
}
