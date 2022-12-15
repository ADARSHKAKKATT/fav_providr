import 'package:fav_providr/provider/fav_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<Favprovider>(context);
    final words1 = p.words;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Favourite"),
      ),
      body: ListView.builder(
          itemCount: words1.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      words1[index],
                      style: TextStyle(fontSize: 30),
                    ),
                    IconButton(
                        onPressed: () {
                          //to pass l[index] to  selectedfav(word) in favprovider class
                          p.selectedfav(words1[index]);
                        },
                        icon: p.isFav(words1[index])
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_border))
                    // Icon(Icons.favorite_border,size: 30,)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
