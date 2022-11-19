import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue[900],
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.assistant_direction),
                  label: "Shop travel"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ],
          ),
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(Icons.arrow_back_ios, color: Colors.grey),
            actions: const [
              Icon(
                Icons.search_rounded,
                size: 35,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu, size: 35, color: Colors.grey),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.heart_broken,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Traveler",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.maps_home_work_outlined,
                            color: Colors.blue[900],
                          ),
                          const SizedBox(width: 5),
                          const Text("Hotels"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.delete, color: Colors.blue[900]),
                          const SizedBox(width: 5),
                          const Text("Cruises"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white.withOpacity(0.8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20),
                        child: Container(
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.directions_car_sharp,
                                    color: Colors.blue[900],
                                  ),
                                  const SizedBox(width: 5),
                                  const Text("Car"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.flight_sharp,
                                      color: Colors.blue[900]),
                                  const SizedBox(width: 5),
                                  const Text("Flights"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Become a member!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Sign in or create an account",
                          style:
                              TextStyle(fontSize: 15, color: Colors.blue[400])),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://idsb.tmgrup.com.tr/ly/uploads/images/2020/11/25/thumbs/871x871/74707.jpg"),
                                )),
                            ),
                            const Positioned(
                                left: 180,
                                bottom: 80,
                                child: Text(
                                  "Travel the world",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
