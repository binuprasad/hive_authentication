

import 'package:flutter/material.dart';
import 'package:ui_designing/fifth_ui.dart';

class FourthUi extends StatelessWidget {
  const FourthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: const Text('Dukkan Premium'),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.height,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            ListTile(
                              leading: Padding(
                                padding: EdgeInsets.only(bottom: 10,left: 10),
                                child: CircleAvatar(
                                  radius:50,
                                  // backgroundImage:
                                  //     AssetImage('assets/shoping.jpg'),
                                  child: Icon(Icons.shopping_bag),
                                ),
                              ),
                              title: Text(
                                'dukaan',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 40.0),
                              ),
                              subtitle: Text(
                                'PREMIUM',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Get Dukkan Premium for just',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '₹4,999/year',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('All the advanced fetures for scallind your',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                              'business',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Features',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                  featurestile(
                      titletxt: ' custom domain name',
                      icn: const Icon(Icons.language),
                      subtitletxt:
                          'Get your own custom domain and build \n your brand on the internet'),
                  featurestile(
                      titletxt: 'Verified seller badge',
                      icn: const Icon(Icons.verified),
                      subtitletxt:
                          'Get a green verified badge under your \n store name and build trust.'),
                  featurestile(
                      titletxt: 'Dukkan for PC',
                      icn: const Icon(Icons.laptop),
                      subtitletxt:
                          'Acess all the exclusive premium \n features on Dukkan for PC. '),
                  featurestile(
                      titletxt: 'Priority support ',
                      icn: const Icon(Icons.headphones),
                      subtitletxt:
                          'Get your questions resolved with our \n priority customer support.'),
                  const Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 165, 164, 164),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What is Dukkan Premium?',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Card(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    child: Image.asset(
                      'assets/Screenshot from 2022-06-21 21-41-52.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20.0),
                  child: Text(
                    'Freequently asked questions',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20.0),
                    child: Text(
                      'What types of business can use Dukkan\nPremium ?                                                                _',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                  ),
                  subtitle: Text(
                    'Dukaan caters to a wide variety of sellers.Be  it a \n\nsmall grocery store or a big legacy brand - anyone \n\nwho want to sell their products/services online - \n\nDukkan is the perfect platform for you.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        color: Colors.grey),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          qstntile(txt: 'What is your refund policy'),
          divider(),
          qstntile(
              txt: 'Will there be an automatic charge after the\npaid trail?'),
          divider(),
          qstntile(txt: 'What payment methods do you offer?'),
          divider(),
          qstntile(txt: 'What happens when my free trail ends?'),
          divider(),
          qstntile(txt: 'What are the terms for the customdomain?'),
          divider(),
          const Divider(
            thickness: 4,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Need help? Get in touch',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1.0)),
                  height: 100,
                  width: 150,
                  child: Center(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.chat_bubble_outline),
                        label: const Text('Chat')),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1.0)),
                  height: 100,
                  width: 150,
                  child: Center(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.call),
                        label: const Text('Phone Call')),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Select Domain',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FifthUi()));
                      },
                      child: const Text(
                        'Get Premium',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget featurestile(
      {required String titletxt,
      required Icon icn,
      required String subtitletxt}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: icn,
          ),
        ),
        title: Text(
          titletxt,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitletxt,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget qstntile({required String txt}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        title: Text(
          txt,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.add,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }
}
