// CategoryPage.dart

import 'package:film/FilmDetailPage.dart';
import 'package:film/HomeScreen.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final List<Film> films; // Daftar film untuk kategori tertentu
  final String categoryTitle; // Judul kategori

  CategoryPage({required this.films, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // Navigasi ke halaman detail film ketika item dipilih
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilmDetailPage(films[index]),
                ),
              );
            },
            leading: Image.asset(
              films[index].imagePath,
              width: 100,
              height: 90,
              fit: BoxFit.cover,
            ),
            title: Text(films[index].title),
            subtitle: Text('Region: ${films[index].rating}'),
          );
        },
      ),
    );
  }
}
