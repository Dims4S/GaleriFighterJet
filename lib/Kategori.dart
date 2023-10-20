import 'package:flutter/material.dart';
import 'package:film/BottomBar.dart';


class Kategori extends StatelessWidget {
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
                            
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Jet Fighter',
                  style: TextStyle(
                    fontSize: 20,
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
                    },
                    leading: Image.asset(
                      films[index].imagePath,
                      width: 100,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                    title: Text(films[index].title),
                    subtitle: Text('Rating: ${films[index].rating}'),
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
}

class Film {
  final String imagePath;
  final String title;
  final String rating;

  Film(this.imagePath, this.title, this.rating);
}