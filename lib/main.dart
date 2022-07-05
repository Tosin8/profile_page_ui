import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: 'Profile_Page',
      debugShowCheckedModeBanner: false,
      home: Profile_Ui()));
}

// ignore: camel_case_types
class Profile_Ui extends StatefulWidget {
  const Profile_Ui({Key? key}) : super(key: key);

  @override
  State<Profile_Ui> createState() => _Profile_UiState();
}

// ignore: camel_case_types
class _Profile_UiState extends State<Profile_Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Drawer(),
        title: const Text(
          'Profile Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage('assets/images/model.jpg'),
            ),
            const SizedBox(height: 12.0),
            const Center(
              child: Text(
                'Elton Marcs',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            const Center(
              child: Text(
                '@elton_marcs8',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Brand Influencer',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(children: const [
                  Text('Posts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      )),
                  Text(
                    '30',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ])),
                Expanded(
                    child: Column(children: const [
                  Text('Followers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      )),
                  Text(
                    '2.5k',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ])),
                Expanded(
                    child: Column(children: const [
                  Text('Following',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      )),
                  Text(
                    '76',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ])),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Follow')),
                const SizedBox(width: 8.0),
                OutlinedButton(onPressed: () {}, child: const Text('Message'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
