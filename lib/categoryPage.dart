import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int choice = 0;
  List<String> category = [
    "Elektronik",
    "Fashion",
    "temanSaya",
  ];

  Map<String, List<String>> data = {
    "Elektronik": ["laptop", "handphone", "setrika"],
    "Fashion": ["batik", "gamis", "kemeja"],
    "temanSaya": ["jesus", "joseph", "aqrad"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemBuilder: (context, index) {
                var pick = index == choice;
                return SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: pick ? Colors.deepOrange : null),
                      onPressed: () {
                        setState(() {
                          choice = index;
                        });
                      },
                      child: Text(
                        category[index],
                        style: const TextStyle(color: Colors.black54),
                      )),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text(data[category[choice]]![index])),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: data[category[choice]]!.length,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
