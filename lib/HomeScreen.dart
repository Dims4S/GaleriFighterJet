import 'package:film/BottomBar.dart';
import 'package:film/FilmDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:film/Kategori.dart';

class HomeScreen extends StatelessWidget {
  
  final List<Category> categories = [
    Category('Russia', Colors.blue),
    Category('USA', Colors.blue),
    Category('China', Colors.blue),
  ];
  final List<Film> films = [
    Film('images/f35.jpeg', 'Lockheed Martin F-35 Lightning II', 'USA'),
    Film('images/j20.jpeg', 'Chengdu J-20 Mighty Dragon', 'China'),
    Film('images/f22.jpeg', 'Lockheed Martin F-22 Raptor', 'USA'),
    Film('images/kf21.jpeg', 'KAI KF-21 Boramae', 'Korea'),
    Film('images/s57.jpeg', 'Sukhoi Su-57', 'Russia'),
    Film('images/fc31.jpeg', 'Shenyang FC-31 Gyrfalcon', 'China'),
    Film('images/f15.jpeg', 'Boeing F-15EX Eagle II', 'USA'),
    Film('images/rafale.jpeg', 'Dassault Rafale', 'France'),
    Film('images/typhoon.jpeg', 'Eurofighter Typhoon', 'Europe Nation'),
    Film('images/s35.jpeg', 'Sukhoi Su-35S', 'Russia'),
    //
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/sky.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 24,
                            child: Icon(
                              Icons.airplanemode_active,
                              color: Colors.blue,
                              size: 36,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Galeri Fighter Jet',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),                 
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Jet Fighter Region',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories.map((category) {
                    return buildCategoryCard(category);
                  }).toList(),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Best Fighter Jet 2023',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: films.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget buildCategoryCard(Category category) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Chip(
        label: Text(
          category.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: category.color,
        elevation: 4,
        padding: EdgeInsets.all(8),
      ),
    );
  }
}

class Film {
  final String imagePath;
  final String title;
  final String rating;

  Film(this.imagePath, this.title, this.rating);
}

class Category {
  final String title;
  final Color color;

  Category(this.title, this.color);
}
