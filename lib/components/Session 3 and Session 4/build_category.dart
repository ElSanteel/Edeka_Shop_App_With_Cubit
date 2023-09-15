import 'package:flutter/material.dart';

GestureDetector buildCategory(
    {required String imagePath, required String categoryName}) {
  return GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xfff3f5f8),
          width: 2, // <--- border width here
        ),
      ),
      width: 100,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            categoryName,
            style: const TextStyle(color: Color(0xff8c939c)),
          ),
        ],
      ),
    ),
  );
}
