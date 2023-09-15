import 'package:edekascreenwithcubit/bloc/edeka_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/Session 3 and Session 4/build_category.dart';

class EdekaScreenWithCubit extends StatefulWidget {
  const EdekaScreenWithCubit({Key? key}) : super(key: key);

  @override
  State<EdekaScreenWithCubit> createState() => _EdekaScreenWithCubitState();
}

class _EdekaScreenWithCubitState extends State<EdekaScreenWithCubit> {
  List<Map<String, String>> categoryList = [
    {
      "imagePath": "assets/images/lemon.png",
      "categoryName": "Lemon",
      "description": "Bergamo Italy",
      "price": "\$1.10",
      "offeredPrice": "\$2",
    },
    {
      "imagePath": "assets/images/banana.png",
      "categoryName": "Banana",
      "description": "Cattier Italiano",
      "price": "\$2.05",
      "offeredPrice": "\$3",
    },
    {
      "imagePath": "assets/images/grapes.png",
      "categoryName": "Grape",
      "description": "Cattier Italiano",
      "price": "\$3.15",
      "offeredPrice": "\$4",
    },
    {
      "imagePath": "assets/images/orange.png",
      "categoryName": "Orange",
      "description": "Cattier Italiano",
      "price": "\$2",
      "offeredPrice": "\$3.10",
    },
    {
      "imagePath": "assets/images/lemon.png",
      "categoryName": "Lemon",
      "description": "Bergamo Italy",
      "price": "\$1.10",
      "offeredPrice": "\$2",
    },
    {
      "imagePath": "assets/images/banana.png",
      "categoryName": "Banana",
      "description": "Cattier Italiano",
      "price": "\$2.05",
      "offeredPrice": "\$3",
    },
    {
      "imagePath": "assets/images/lemon.png",
      "categoryName": "Lemon",
      "description": "Bergamo Italy",
      "price": "\$1.10",
      "offeredPrice": "\$2",
    },
    {
      "imagePath": "assets/images/banana.png",
      "categoryName": "Banana",
      "description": "Cattier Italiano",
      "price": "\$2.05",
      "offeredPrice": "\$3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfbfb),
      body: BlocConsumer<EdekaScreenCubit, EdekaScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = EdekaScreenCubit.get(context);
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.drag_handle),
                          const SizedBox(
                            width: 90,
                          ),
                          const Text(
                            "EDEKA",
                            style: TextStyle(
                                color: Color(0xff1278d8),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xfff8f5f3),
                            child: IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xfff8f5f3),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xfff4f6f9),
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                hintText: 'Search product here',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xfff8f5f3),
                            child: IconButton(
                              icon: const Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      SizedBox(
                        width: 400,
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              child: buildCategory(
                                imagePath: "assets/images/bakery.png",
                                categoryName: "Bakery",
                              ),
                            ),
                            const SizedBox(width: 15),
                            buildCategory(
                              imagePath: "assets/images/fruits.png",
                              categoryName: "Fruits",
                            ),
                            const SizedBox(width: 15),
                            buildCategory(
                              imagePath: "assets/images/vegetables.png",
                              categoryName: "Vegetables",
                            ),
                            const SizedBox(width: 15),
                            buildCategory(
                              imagePath: "assets/images/milk.png",
                              categoryName: "Milk",
                            ),
                            const SizedBox(width: 15),
                            buildCategory(
                              imagePath: "assets/images/milk.png",
                              categoryName: "Milk",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        height: 540,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 1),
                          itemCount: categoryList.length,
                          itemBuilder: (context, i) {
                            final item = categoryList[i];
                            final itemPrice = double.tryParse(
                                    item["price"]?.substring(1) ?? "0.0") ??
                                0.0;
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: const Color(0xfff3f5f8),
                                    width: 2, //
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            cubit.isFavourite
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: cubit.isFavourite
                                                ? Colors.red
                                                : Colors.black,
                                          ),
                                          onPressed: () {
                                            cubit.changeFavourite();
                                          },
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      item["imagePath"]!,
                                      width: 90,
                                      height: 44,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            item["categoryName"]!,
                                            style: const TextStyle(
                                                color: Color(0xff27272e),
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["description"]!,
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            item["price"]!,
                                            style: const TextStyle(
                                                color: Color(0xff4cb86a)),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: item["offeredPrice"],
                                              style: const TextStyle(
                                                color: Color(0xff6d6d6d),
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                  style: TextStyle(
                                                    color: Color(0xff4cb86a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 54,
                                          ),
                                          Container(
                                            width: 40,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: const Color(0xff4cb86a),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                              child: IconButton(
                                                icon: const Icon(Icons.add),
                                                color: Colors.white,
                                                onPressed: () {
                                                  cubit.addToTotal(itemPrice);
                                                },
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
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Total: ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          '\$${cubit.totalAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Cart tapped!'),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xff0380f6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
