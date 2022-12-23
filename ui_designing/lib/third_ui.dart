

import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:ui_designing/fourth_ui.dart';

class ThirdUi extends StatelessWidget {
  const ThirdUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ListTile(
            title: const Text(
              'Payments',
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FourthUi()));
              },
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'A free limit up to which you will recieve\nthe online payments directly in your bank',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                  // LinearPercentIndicator(
                    
                  //   lineHeight: 6,
                  //   percent: 0.3,
                  //   backgroundColor: Colors.grey,
                  //   progressColor: Colors.blue,
                  //   barRadius: const Radius.circular(5),
                  // ),
                      
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20,top: 5),
                        child: Text(
                          '36,668 left out of ₹50,000',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Increase limit')))
                    ],
                  ),
                ),
              ),
            ),
            lsttile(
                txt1: 'Default Method',
                txt2: 'Online Payments',
                icn: const Icon(Icons.chevron_right_sharp)),
            lsttile(
                txt1: 'Payment Profile',
                txt2: 'Bank Account',
                icn: const Icon(Icons.chevron_right_sharp)),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            lsttile(
                txt1: 'Payment Overview',
                txt2: 'Life Time',
                icn: const Icon(Icons.expand_more)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      borderRadius: 5.0,
                      color:Colors.orange,
                      height: 100,
                      width: 177,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('AMMOUNT ON HOLD',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.0),),
                            Text('₹0',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ],
                        ),
                      )

                    ),
                   CustomCard(
                    borderRadius: 5.0,
                    height: 100,
                    width: 177,
                    color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('AMMOUNT RECEIVED',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('₹13,332',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ],

                        ),
                      )
                    )
                  ],
                ),
                const Text('Transactions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:const [
                
                      
              ChoiceChip(label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('On hold'),
              ), selected: false)  ,
              ChoiceChip(label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Payouts(15)'),
              ), selected: true,selectedColor: Colors.blue,),
              ChoiceChip(label: Text('Refunds'), selected: false) 

                ],),
                order(img: 'assets/men.webp', ordertxt: 'Order#1688068', datetxt: ' Jul 12,02:06 PM', pricetxt: '₹799'),
                deposittext(depositetxt: '₹799 deposited to:68860200000003470'),
                divider(),
                order(img: 'assets/mug.jpg', ordertxt: 'Order#1477575', datetxt: 'Apr 26, 07:47 AM', pricetxt: '₹397.4'),
               deposittext(depositetxt: '₹397.4 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/images.jpeg', ordertxt: 'Order#1477575', datetxt: 'Apr 26, 07:47 AM', pricetxt: '₹686.42'),
               deposittext(depositetxt: '₹397.4 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/men.webp', ordertxt: 'Order#1477575', datetxt: 'Apr 26, 05:47 AM', pricetxt: '₹1123.5'),
               deposittext(depositetxt: '₹1123.5 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/men.webp', ordertxt: 'Order#1477575', datetxt: 'Mar 26, 04:47 AM', pricetxt: '₹1722.75'),
               deposittext(depositetxt: '₹1722.75 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/images.jpeg', ordertxt: 'Order#1477575', datetxt: 'Dec 01, 09:00 PM', pricetxt: '₹1397.4'),
               deposittext(depositetxt: '₹1397.4 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/mugorchard.webp', ordertxt: 'Order#1477575', datetxt: 'July 30, 12:49 AM', pricetxt: '₹884.4'),
               deposittext(depositetxt: '₹884.4 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/images.jpeg', ordertxt: 'Order#1477575', datetxt: 'Sep 05, 08:01 AM', pricetxt: '₹599.5'),
               deposittext(depositetxt: '₹599.5 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/compoblahst1.webp', ordertxt: 'Order#1477575', datetxt: 'Jan 10, 05:47 PM', pricetxt: '₹524.45'),
               deposittext(depositetxt: '₹524.45 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/images.jpeg', ordertxt: 'Order#1477575', datetxt: 'May 30, 10:47 AM', pricetxt: '₹2297'),
               deposittext(depositetxt: '₹2297 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/mugorchard.webp', ordertxt: 'Order#1477575', datetxt: 'Aug 26, 11:04 AM', pricetxt: '₹599'),
               deposittext(depositetxt: '₹599 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/compoblahst1.webp', ordertxt: 'Order#1477575', datetxt: 'May 21, 06:47 AM', pricetxt: '₹1446'),
               deposittext(depositetxt: '₹1446 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/compoblahst2.webp', ordertxt: 'Order#1477575', datetxt: 'Nov 2, 08:47 AM', pricetxt: '₹497.4'),
               deposittext(depositetxt: '₹497.4 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/compopack3.jpg', ordertxt: 'Order#1477575', datetxt: 'Oct 26, 07:47 AM', pricetxt: '₹793.46'),
               deposittext(depositetxt: '₹793.46 deposited to:46760200000003440'),
               divider(),
               order(img: 'assets/compoblahst2.webp', ordertxt: 'Order#1477575', datetxt: 'Feb 26, 07:47 AM', pricetxt: '₹3397.7'),
               deposittext(depositetxt: '₹3397.7 deposited to:46760200000003440'),
               

               
          ],
        ),
      ),
    );
  }

  Widget lsttile(
      {required String txt1, required String txt2, required Icon icn}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt1),
          Text(
            txt2,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      trailing: icn,
    );
  }
  Widget order({required String img,required String ordertxt,required String datetxt,required String pricetxt}){
    return ListTile(
                leading: Container(
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(50)),
                  child: Image.asset(img,fit: BoxFit.fill,)),
                title:  Text(ordertxt),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(datetxt),
                    const Icon(Icons.fiber_manual_record ,color: Colors.green,size: 15,)
                  ],
                ) ,
                trailing: Column(
                  children: [
                    Text(pricetxt,style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    const Text('Successfull',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)


                  ],
                ),
              );
  }
              Widget deposittext({required String depositetxt}){
             return Padding(padding: const EdgeInsets.only(top: 6,bottom: 6,left: 10),
              child: Text(depositetxt),
              );
              }
              Widget divider(){
                return  const Divider(thickness: 1,color: Colors.grey,);
              }
             

  
}
