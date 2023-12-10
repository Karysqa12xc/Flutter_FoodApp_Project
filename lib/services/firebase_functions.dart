import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/models/restaurant.dart';

Future<void> addRestaurantList(List<Restaurant> items) async {
  try {
    CollectionReference itemsCollection =
        FirebaseFirestore.instance.collection('items');

    List<Map<String, dynamic>> itemsData =
        items.map((item) => item.toJson()).toList();

    await itemsCollection.add({
      'items': itemsData,
    });

    print("Danh sách các mục đã được thêm vào Firebase.");
  } catch (e) {
    print("Lỗi khi thêm danh sách các mục: $e");
  }
}

Future<void> updateRestaurant(List<Restaurant> items, String documentId) async {
  try {
    DocumentReference itemsDocument =
        FirebaseFirestore.instance.collection('items').doc(documentId);

    // Lấy danh sách hiện tại từ Firestore
    DocumentSnapshot documentSnapshot = await itemsDocument.get();
    List<Map<String, dynamic>> existingItemsData = [];
    final data = documentSnapshot.data();
    if (data != null && data is Map && data.containsKey('items')) {
      final itemsDynamic = data['items'];
      if (itemsDynamic != null && itemsDynamic is List) {
        existingItemsData = List<Map<String, dynamic>>.from(
          (itemsDynamic).cast<Map<String, dynamic>>(),
        );
      }
    }
    // Thêm dữ liệu mới vào danh sách hiện tại
    List<Map<String, dynamic>> updatedItemsData = [
      ...existingItemsData,
      ...items.map((item) => item.toJson()).toList()
    ];

    await itemsDocument.update({
      'items': updatedItemsData,
    });

    print("Danh sách các mục đã được thêm vào Firebase.");
  } catch (e) {
    print("Lỗi khi thêm danh sách các mục: $e");
  }
}

Future<void> addFoodList(List<ItemFood> foods) async {
  try {
    CollectionReference foodsCollection =
        FirebaseFirestore.instance.collection("foods");
    List<Map<String, dynamic>> foodsData =
        foods.map((food) => food.toJson()).toList();
    await foodsCollection.add({
      'foods': foodsData,
    });
    print("Danh sách các mục đã được thêm vào Firebase.");
  } catch (e) {
    print("Lỗi khi thêm danh sách các mục: $e");
  }
}

// Future<List<String>> getIdsFromList() async {
//   List<String> ids = [];

//   try {
//     CollectionReference collection =
//         FirebaseFirestore.instance.collection("items");

//     QuerySnapshot querySnapshot = await collection.get();

//     if (querySnapshot.docs.isNotEmpty) {
//       for (QueryDocumentSnapshot doc in querySnapshot.docs) {
//         // Lấy giá trị của trường 'id' từ mảng 'items' trong mỗi tài liệu
//         List<dynamic> itemsArray = doc['items'];

//         // Lặp qua mỗi phần tử trong mảng và lấy giá trị 'id'
//         for (dynamic item in itemsArray) {
//           String id = item['id'];
//           ids.add(id);
//         }
//         for (var id in ids) {
//           print(id);
//         }
//       }
//     } else {
//       print('Không có dữ liệu trong collection');
//     }
//   } catch (e) {
//     print("Lỗi khi lấy giá trị của trường 'id': $e");
//   }

//   return ids;
// }
