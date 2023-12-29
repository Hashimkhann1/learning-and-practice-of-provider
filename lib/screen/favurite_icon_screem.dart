import 'package:flutter/material.dart';
import 'package:managestate/provider/fav_item_provider.dart';
import 'package:provider/provider.dart';

class FavouriteItemSscreen extends StatefulWidget {
  const FavouriteItemSscreen({super.key});

  @override
  State<FavouriteItemSscreen> createState() => _FavouriteItemSscreenState();
}

class _FavouriteItemSscreenState extends State<FavouriteItemSscreen> {
  @override
  Widget build(BuildContext context) {
    print('checking build >>>>>>>>>>>>');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Item List"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Consumer<FavItemProvier>(builder: (_ , value , child) {
                return ListView.builder(
                    itemCount: value.favItemsList.length,
                    itemBuilder: (context , index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          title: Text('Item ${value.favItemsList[index]}'),
                          trailing: Icon(Icons.favorite),
                          onTap: () {
                            value.removeFavToList(value.favItemsList[index]);
                            print(value.favItemsList);
                          },
                        ),
                      );
                    });
              })
          )
        ],
      ),
    );
  }
}
