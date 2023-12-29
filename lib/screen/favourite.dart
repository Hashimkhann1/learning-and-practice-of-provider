import 'package:flutter/material.dart';
import 'package:managestate/provider/fav_item_provider.dart';
import 'package:managestate/screen/favurite_icon_screem.dart';
import 'package:provider/provider.dart';

class FavouriteScreec extends StatefulWidget {
  const FavouriteScreec({super.key});

  @override
  State<FavouriteScreec> createState() => _FavouriteScreecState();
}

class _FavouriteScreecState extends State<FavouriteScreec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
        actions: [
          IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteItemSscreen())), icon: const Icon(Icons.favorite,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
                itemBuilder: (context , index ) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<FavItemProvier>(builder: (_ , value , child){
                  return ListTile(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    title: Text("item ${index}"),
                    trailing: Icon(value.favItemsList.contains(index) ?Icons.favorite : Icons.favorite_outline),
                    onTap: () {
                      if(value.favItemsList.contains(index)){
                        value.removeFavToList(index);
                      }else{
                        value.addFavToList(index);
                      }
                      print(value.favItemsList);
                    },
                  );
                })
              );
            }),
          )
        ],
      ),
    );
  }
}
