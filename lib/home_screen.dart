// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo_app_riverpod/item_provider.dart';

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final item = ref.watch(itemProvider);
//     return Scaffold(
//       body:
//           item.isEmpty
//               ? Center(child: Text('No Data Found'))
//               : ListView.builder(
//                 itemCount: item.length,
//                 itemBuilder: (context, index) {
//                   final itemDetail = item[index];
//                   return ListTile(title: Text(itemDetail.name));
//                 },
//               ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(itemProvider.notifier).addItem('New Item');
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
