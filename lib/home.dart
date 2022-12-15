import 'package:fav_providr/provider/fav_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fav_providr/favourite.dart';

class Fav extends StatelessWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> l=["time","year","people","way","day","man","thing","woman","life"];
    final p=Provider.of<Favprovider>(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("English Words"),),
      body: ListView.builder(itemCount: l.length, itemBuilder: (BuildContext context, int index){
        return Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(l[index],
                  style: TextStyle(fontSize: 30),),
                IconButton(onPressed: (){
                  //to pass l[index] to  selectedfav(word) in favprovider class
                  p.selectedfav(l[index]);
                }, icon: p.isFav(l[index])?
                    Icon(Icons.favorite,color: Colors.red,):
                Icon(Icons.favorite_border) ),
                // Icon(Icons.favorite_border,size: 30,)
              ],
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite()));
      },label: Text("Favourites"),
      ),
    );
  }
}
