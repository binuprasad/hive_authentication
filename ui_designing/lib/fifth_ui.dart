import 'package:flutter/material.dart';
import 'package:ui_designing/sixth_ui.dart';

class FifthUi extends StatelessWidget {
  const FifthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       
        title: const Text('Order #1688068'),
        
      ),
      body: ListView(
        children: [
          liststyle(
              txttitle: 'May 31,05:42 PM',
              txttrailing: 'Delivered',
              icn: const Icon(Icons.fiber_manual_record),
              clrtitle: Colors.black87,
              clrtrailing: Colors.grey),
          divider(),
          liststyle(
              txttitle: '1ITEM',
              txttrailing: 'RECEIPT',
              icn: const Icon(Icons.receipt),
              clrtitle: Colors.grey,
              clrtrailing: Colors.blue),
          Row(
            children: [
              Card(
                child: Container(
                    width: 50,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset(
                      'assets/zoom_0-1637056866.webp',
                      fit: BoxFit.fill,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Explore|Men|Navy Blue',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('1piece\nSize:XL'),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.looks_one,
                            color: Colors.blue,
                          ),
                          label: const Text(
                            '₹799',
                            style: TextStyle(),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 200),
                        child:
                            Text('₹799', style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          divider(),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 5.0, left: 10.0, top: 5.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Item Total'), Text('₹799')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Delivery'),
                Text(
                  'FREE',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Grand Total',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  '₹799',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            ),
          ),
          divider(),
          liststyle(
              txttitle: 'CUSTOMER DETAILS',
              txttrailing: 'SHARE',
              icn: const Icon(
                Icons.share,
              ),
              clrtitle: Colors.grey,
              clrtrailing: Colors.blue),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Deepa\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                      children: <TextSpan>[
                        TextSpan(
                            text: '+91-782900484',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15.0))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.call_rounded,
                        color: Colors.blue,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.whatsapp_rounded,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const ListTile(
            title: Text(
              'Address',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle:
                Text('D 1101 Charatred Beverly\nHills,Sumbramanyapura P.O'),
          ),
          Row(
            children: [
              SizedBox(
                  width: 150,
                  child: richtext(txt1: 'City\n', txt2: 'Banglore')),
              richtext(txt1: 'Pincode\n', txt2: '560061')
            ],
          ),
          richtext(txt1: 'Payment\n', txt2: 'Online'),
          divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'ADDITONAL INFORMATION',
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
          richtext(txt1: 'State\n', txt2: 'Karnataka'),
          richtext(txt1: 'Email\n', txt2: 'greeniceaqua@gmail.com'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.blue,),),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SixthUi()));
                },
                child: const Text(
                  'Share receipt',
                  style: TextStyle(fontSize: 20.0),
                )),
          )
        ],
      ),
    );
  }

  Widget liststyle({
    required String txttitle,
    required String txttrailing,
    required Icon icn,
    required Color clrtitle,
    required Color clrtrailing,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 0, left: 0),
      child: ListTile(
        title: Text(
          txttitle,
          style: TextStyle(fontSize: 15.0, color: clrtitle),
        ),
        trailing: TextButton.icon(
            onPressed: () {},
            icon: icn,
            label: Text(
              txttrailing,
              style: TextStyle(color: clrtrailing),
            )),
      ),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Divider(
        thickness: 1,
      ),
    );
  }

  Widget richtext({required String txt1, required String txt2}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: RichText(
        text: TextSpan(
            text: txt1,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            children: <TextSpan>[
              TextSpan(
                  text: txt2,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 15.0))
            ]),
      ),
    );
  }
}
