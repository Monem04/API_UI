import 'package:api_ui/models/product.dart';
import 'package:api_ui/ui/screens/add_new_product_screen.dart';
import 'package:api_ui/ui/screens/product_list_screen.dart';
import 'package:api_ui/ui/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class CRUDapp extends StatelessWidget {
  const CRUDapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        late Widget widget;
        if (settings.name == '/') {
          widget = const ProductListScreen();
        } else if (settings.name == AddNewProductScreen.name) {
          widget = const AddNewProductScreen();
        } else if (settings.name == UpdateProductScreen.name) {
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(product: product);
        }
        // else {
        //   widget = const Scaffold(
        //     body: Center(child: Text('Route not found')),
        //   );
        // }

        return MaterialPageRoute(
            builder: (context) {
          return widget;
        });
      },
    );
  }
}
