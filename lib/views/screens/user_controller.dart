import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:htt/controllers/user_controller.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});
  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userController.list,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          return !snapshot.hasData || snapshot.data!.isEmpty
              ? const Center(
                  child: Text("Not found"),
                )
              : GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    // childAspectRatio: 5 / 7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (ctx, index) {
                    final product = snapshot.data![index];
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 50.w,
                            child: Image.network(
                              product.avatar,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product.name),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
        });
  }
}
