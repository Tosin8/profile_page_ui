import 'package:flutter/material.dart';
import 'package:profile_page_ui/stat_widget.dart';

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
  List<String> imagePost = [
    'assets/images/architecture.jpg',
    'assets/images/business.jpg',
    'assets/images/business_network.jpg',
    'assets/images/car_model.jpg',
    'assets/images/island.jpg',
    'assets/images/plane_wing.jpg',
    'assets/images/skyscraper.jpg',
    'assets/images/skyscraper_city.jpg',
  ];
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
                    fontWeight: FontWeight.w500,
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
                    fontWeight: FontWeight.w500,
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
                  statWidget('Posts', '30'),
                  statWidget('Following', '2.5k'),
                  statWidget('Following', '76'),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.black,
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 8.0),
                          child: Text('Message',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)))),
                ],
              ),
              const SizedBox(height: 18),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  height: 18.0,
                  thickness: 0.6,
                  color: Colors.black87,
                ),
              ),
              Expanded(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                      image: AssetImage(imagePost[index]))),
                            ),
                          );
                        },
                      )))
            ],
          ),
        ));
  }
}
