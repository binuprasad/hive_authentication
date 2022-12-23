import 'package:flutter/material.dart';

class SixthUi extends StatelessWidget {
  const SixthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Catalogue'),
          actions: const [
            Icon(Icons.search),
          ],
          bottom: const TabBar(labelColor: Colors.white, tabs: [
            Tab(text: 'Products'),
            Tab(
              text: 'Categories',
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              cardtile(txt1: 'Couch Potato|Women', txt2: '₹799', img: 'assets/images.jpeg'),
              cardtile(txt1: 'Couch Potato|Men|Bl..', txt2: '₹799', img: 'assets/men.webp'),
              cardtile(txt1: 'Mug|Explore', txt2:'₹399' , img: 'assets/mug.jpg'),
              cardtile(txt1: 'Combo Blahst 1|Pack...', txt2: '₹699', img: 'assets/compoblahst1.webp'),
              cardtile(txt1: 'Mug|Orchard', txt2: '₹449', img: 'assets/mugorchard.webp'),
              cardtile(txt1: 'Combo Blahst2|Expla...', txt2: '₹599', img: 'assets/combo_533x.webp'),
              cardtile(txt1: 'I See Combo Pack', txt2: '₹1,299', img: 'assets/compopack3.jpg'),
              cardtile(txt1: 'Kids Combo Blahst', txt2: '₹1,199', img: 'assets/compoblahst2.webp')

              
            ],
          ),
        ),
      ),
    );
  }
  Widget cardtile({required String txt1 ,required String txt2,required String img}){
    return Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                          width: 70,
                          height: 100,
                          decoration: BoxDecoration(
                            
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            img,

                            fit: BoxFit.fill,
                          )),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            txt1,
                            style: const TextStyle(fontSize: 15),
                          ),
                          const Text('1 piece'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              txt2,
                              style: const TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text(
                            'In stock',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.more_vert,
                          ),
                          Icon(
                            Icons.toggle_on,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style: TextStyle(color: Colors.black, fontSize: 17),
                            ))
                      ],
                    )
                  ],
                ),
              );
  }
}
