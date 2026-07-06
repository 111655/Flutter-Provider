import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int responsiveColumns(double width) {
    if (width > 1100) {
      return 5;
    } else if (width > 800) {
      return 4;
    } else if (width > 600) {
      return 3;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "My Shopping App",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.all(14),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 8,
                top: 6,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    provider.cartItems.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              itemCount: provider.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: responsiveColumns(constraints.maxWidth),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,

                childAspectRatio: constraints.maxWidth > 1200
                    ? 0.82
                    : constraints.maxWidth > 900
                    ? 0.78
                    : constraints.maxWidth > 600
                    ? 0.72
                    : 0.68,
              ),
              itemBuilder: (context, index) {
                final product = provider.products[index];

                 return Card(
                   elevation: 5,
                   clipBehavior: Clip.antiAlias,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(16),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Expanded(
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(12),
                           child: Image.network(
                             product.image,
                             width: double.infinity,
                             fit: BoxFit.cover,
                           ),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                             Text(
                               product.title,
                               style: const TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 22,
                               ),
                             ),

                             const SizedBox(height: 5),

                             Text(
                               "₹${product.price.toStringAsFixed(0)}",
                               style: const TextStyle(
                                 color: Colors.green,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                             const SizedBox(height: 3),

                             SizedBox(
                               width: double.infinity,
                               child: ElevatedButton.icon(
                                 onPressed: () {},
                                 icon: const Icon(Icons.shopping_cart),
                                 label: const Text("Add to Cart"),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 );
              },
            ),
          );
        },
      ),
    );
  }
}