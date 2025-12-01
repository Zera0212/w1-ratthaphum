import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://thumbs.dreamstime.com/b/internet-meme-no-rage-face-d-illustration-isolated-46314000.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "ratthaphum phoemchat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "ratthaphum.phoemchat@e-tech.ac.th",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),SizedBox(height: 20),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์โทรศัพท์"),
                          Text(
                            "081-791-8452",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]
                      ),
                    ],
                  ), SizedBox(height: 20),


                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.pink),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("วันเกิด"),
                          Text(
                            "30 กันยายน 2549",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Column(

                        children: [Text("ที่อยู่"),
                          Text(
                            "ชลบุรี",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ), SizedBox(height: 20),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text(
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก(อี.เทค)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]
                      ),
                    ],
                  ), SizedBox(height: 20),


                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/second'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "ไปยังหน้า 2",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 }

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://cdn.zipeventapp.com/blog/2021/01/2021-01-08_05-33-46_b4d80404f6ef023f2ce4e92701ac75b2-best-of-side-eyeing-chloe-meme-595x381.jpg",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("10", style: TextStyle(color: Colors.black)),
                        Text("กำลังติดตาม", style: TextStyle(color: Colors
                            .black)),
                      ]),
                      SizedBox(width: 10),
                      Container(width: 1.5,height: 40,color:  Colors.grey.shade300),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("200", style: TextStyle(color: Colors.black)),
                        Text("ผู้ติดตาม", style: TextStyle(color: Colors
                            .black)),
                      ]),
                      SizedBox(width: 10),
                      Container(width: 1.5,height: 40,color:  Colors.grey.shade300),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("210", style: TextStyle(color: Colors.black)),
                        Text("ถูกใจและบันทึก", style: TextStyle(color: Colors
                            .black)),
                      ]),
                    ],
                  ),
                  SizedBox(width: 25, height: 25),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ratthaphum",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Icon(Icons.tiktok, color: Colors.black, size: 20),
                  Text(
                    "ratthaphum",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),

                ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/second'),
                  label: Text(
                    "ติดตาม",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 50),
                    backgroundColor: Color(0xFFFFD600),
                    shape: RoundedRectangleBorder(

                    ),
                  ),
                ),SizedBox(width: 20,),

                Column(
                  children: [
                    SizedBox(height: 10, width: 10),
                    Icon(Icons.share, color: Colors.black),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Image.network(
                    "https://c.pxhere.com/photos/92/a3/pony_dun_portrait_horse_head_pasture_curious-697852.jpg!d",
                    width:  180,
                    height: 400,
                  ),
                  SizedBox(width: 10),
                  Image.network(
                    "https://i.pinimg.com/736x/53/a8/ba/53a8ba889735e8463269b26f9b0b1920.jpg",
                    width: 180,
                    height: 400,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
