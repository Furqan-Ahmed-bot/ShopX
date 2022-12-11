
// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopx/Controllers/product.dart';
import 'package:shopx/Controllers/productTile.dart';
import 'package:shopx/Controllers/productcontroller.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: Text('ShopX' , style: TextStyle(fontFamily: 'avenir' , fontSize: 32, fontWeight: FontWeight.w900),)
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.view_list_rounded)),
                IconButton(onPressed: (){}, icon: Icon(Icons.grid_view)),

              ],
            ),),
          Expanded(child: Obx (() => StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: productController.productList.length,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,

           itemBuilder: (context, index){return ProductTile(productController.productList[index]);}, 
           staggeredTileBuilder: (index)=>StaggeredTile.fit(1) )
          )),
            
            
            
        ],
      ),
    );
  }
} 