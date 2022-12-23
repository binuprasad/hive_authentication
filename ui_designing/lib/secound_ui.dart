import 'package:flutter/material.dart';
import 'package:ui_designing/third_ui.dart';

class SecondUi extends StatefulWidget {
  const SecondUi({Key? key}) : super(key: key);

  @override
  State<SecondUi> createState() => _SecondUiState();
}

class _SecondUiState extends State<SecondUi> {
  bool newb = false;
  
  int _currentselectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage Store'),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ThirdUi()));
        }, icon: const Icon(Icons.info_outline,color: Colors.blue,))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 2,
          crossAxisCount: 2,
        
          children: <Widget>[
            cardFunctn(
                icn: const Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white,
                ),
                txt: 'Marketing \nDesigns',
                clr: const Color.fromARGB(255, 255, 51, 0)),
            cardFunctn(
                icn: const Icon(
                  Icons.attach_money_outlined,
                  color: Colors.white,
                ),
                txt: 'Online \nPayment',
                clr: Colors.greenAccent),
            cardFunctn(
                icn: const Icon(
                  Icons.settings_accessibility_outlined,
                  color: Colors.white,
                ),
                txt: 'Discount \nCoupens',
                clr: Colors.orange),
            cardFunctn(
                icn: const Icon(
                  Icons.group_add_outlined,
                  color: Colors.white,
                ),
                txt: 'My \nCustomer',
                clr: const Color.fromARGB(255, 30, 110, 86)),
            cardFunctn(
                icn: const Icon(
                  Icons.qr_code_2_outlined,
                  color: Colors.white,
                ),
                txt: 'Store QR \nCode',
                clr: Colors.grey),
            cardFunctn(
                icn: const Icon(
                  Icons.money_outlined,
                  color: Colors.white,
                ),
                txt: 'Extra \nCharges',
                clr: Colors.purple),
            cardFunctn(
                icn: const Icon(
                  Icons.document_scanner_outlined,
                  color: Colors.white,
                ),
                txt: 'Order \nForm',
                clr: Colors.purpleAccent,
                newb: true,
                )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentselectedIndex,
          
          
          onTap: (newIndex) {
            setState(() {
              _currentselectedIndex = newIndex;
            });
            
          },
          
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event_available,
                  color: Colors.blue,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dataset,
                  color: Colors.grey,
                ),
                label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dynamic_feed,
                  color: Colors.grey,
                ),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'Account'),
          ]),
    );
  }

  Widget cardFunctn(
      {required Icon icn, required String txt, required Color clr,bool? newb}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: clr,),
                    alignment: Alignment.center,
                    
                    height: 50,
                    width: 50,
                    child: icn),
                    if(newb == true)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green,),
                    height: 20,
                    width: 40,
                    
                    child: const Center(
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                top: 10,
              ),
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
