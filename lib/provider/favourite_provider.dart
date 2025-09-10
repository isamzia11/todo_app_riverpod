import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/model/item.dart';
import 'package:todo_app_riverpod/provider/favourite_states.dart';

final favouriteProvider =
    StateNotifierProvider<FavouriteNotifier, FavouriteStates>((ref) {
      return FavouriteNotifier();
    });

class FavouriteNotifier extends StateNotifier<FavouriteStates> {
  FavouriteNotifier()
    : super(FavouriteStates(allItems: [], filteredItems: [], search: ''));

  void addItem() {
    List<Item> item = [
      Item(id: 1, name: 'Macbook', favourite: true),
      Item(id: 2, name: 'iPhone', favourite: false),
      Item(id: 3, name: 'G-force 360', favourite: false),
      Item(id: 4, name: 'Samsung Ultra', favourite: true),
      Item(id: 5, name: 'Google Pixel 9', favourite: false),
      Item(id: 6, name: 'iPad  pro 13', favourite: true),
    ];

    state = state.copyWith(
      allItems: item.toList(),
      filteredItems: item.toList(),
    );
  }
}
