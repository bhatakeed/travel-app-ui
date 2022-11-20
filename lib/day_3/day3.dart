import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Day3 extends StatelessWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          CupertinoIcons.decrease_indent,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(5, 1),
                            blurRadius: 20,
                          ),
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(-5, 1),
                            blurRadius: 20,
                          ),
                        ]),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Search"),
                      ],
                    )),
                const Icon(
                  Icons.add_shopping_cart,
                  size: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Explore",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  cardWidget(
                      Price: "250.00",
                      img:
                          "https://rukminim1.flixcart.com/image/612/612/l3khsi80/office-study-chair/r/d/n/1-foam-45-72-crown-chair-with-wheels-modern-leisure-desk-task-original-imagenzenqdhum9y.jpeg?q=70"),
                  cardWidget(
                      Price: "150.00",
                      img:
                          "https://www.ulcdn.net/images/products/297356/original/Genoa_Floral_Wing_Chair_LP.jpg?1591871194"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Best Selling",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(30),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://rukminim1.flixcart.com/image/612/612/l0vbukw0/rocking-chair/m/g/j/1250-1-seater-670-mango-wood-15-rocking-58-brown-smarts-original-imagckgwabkv56t4.jpeg?q=70"),
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Minimal Chair",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text("Lorem ipsum",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey)),
                          Text(
                            "\$125.00",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 30),
                          child: const Icon(
                            Icons.arrow_circle_right_sharp,
                            color: Colors.black,
                            size: 25,
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  final String img;
  final String Price;

  const cardWidget({
    super.key,
    required this.img,
    required this.Price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: NetworkImage(img),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.favorite,color: Colors.white,size: 15,),
                    ),
                  )
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "item name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "Description",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$Price",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    const Icon(
                      Icons.add_circle_outlined,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
