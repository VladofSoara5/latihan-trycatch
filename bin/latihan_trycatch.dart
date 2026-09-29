import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

void main() async{
  // fungsi tanpa pengembalian nilai
  // Future<void> tarikdata() async {
  //     var response = await http.get(
  //       Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //     );

  //     var data = jsonDecode(response.body);
  //     print(
  //       'nama saya ${data[1]['name']}, username saya ${data[1]['username']}, kota saya ${data[1]['address']['city']}'
  //       );
  //     // String city = data[1]['address']['city'];
  //     // print(data[1]['name']);
  //     // print(data[1]['email']);
  //     // print(city);
      
  // }
  // await tarikdata();

//   Future<List<Map<dynamic, dynamic>>> tarikdata() async {
//     try {
//       var response = await http.get(
//         Uri.parse('https://dummyjson.com/products'),
//       );

//       var data = jsonDecode(response.body) as Map<dynamic, dynamic>;

//       var productList = data['products'] as List;

//       return productList.map((e) => e as Map<dynamic, dynamic>).toList();
      
      
//     } catch (e) {
//       print(e);
//       return[];
//     }
      
//   }
//   List<Map<dynamic, dynamic>> hasil = await tarikdata();
//   //for, for in, foreach
// //for
//   for (var i = 0; i < hasil.length ; i++) {
//     print('======================================================');
//     print(
//       '${hasil[i]['title']}        ${hasil[i]['price']}        ${hasil[i]['stock']}'
//     );
//   }
  
//for in
  // for (var element in hasil) {
  //   print('======================================================');
  //   print(
  //     '${element['name']}        ${element['username']}        ${element['address']['city']}'
  //   );
  // }

//foreach
  // hasil.forEach((element) {
  //   print('======================================================');
  //   print(
  //     '${element['name']}        ${element['username']}        ${element['address']['city']}'
  //   );
  // },
  // );

  Future<Map<dynamic, dynamic>> tarikdata() async {
    try {
      var response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      var data = jsonDecode(response.body); 

    } catch (e) {
      print(e);
      return{};
    }
  }
  var hasil = await tarikdata();
  // print(hasil['products']);

  for (var i = 0; i < hasil['products'].length; i++) {
    print('======================================================');
    print('${hasil['products'][i]['title']}');
  }


//   List<Map<dynamic, dynamic>> hasil = await tarikdata();
//   //for, for in, foreach
// //for
//   for (var i = 0; i < hasil.length ; i++) {
//     print('======================================================');
//     print(
//       '${hasil[i]['title']}        ${hasil[i]['price']}        ${hasil[i]['stock']}'
//     );
//   }




}