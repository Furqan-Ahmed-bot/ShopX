import 'package:get/get.dart';
import 'package:shopx/Controllers/product.dart';
import 'package:shopx/Controllers/remoteservices.dart';
import 'product.dart';

class ProductController extends GetxController{
  var productList = <Welcome>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products =  await RemoteServices.fetchProducts();
    if(products != null) {
      productList.value = products;
    }
  }
}


