import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2A6F97),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    """ meals": [
                  {
                      "id": 1087566,
                      "imageType": "jpg",
                      "title": "Labneh with roast beetroot, preserved lemon & green romesco sauce",
                      "readyInMinutes": 110,
                      "servings": 4,
                      "sourceUrl": "https://www.bbcgoodfood.com/recipes/labneh-roast-beetroots-preserved-lemon-green-romesco-sauce"
                  },
                      {
                        "id": 406122,
                        "imageType": "jpg",
                        "title": "Garbanzo-Vegetable Green Curry",
                        "readyInMinutes": 20,
                        "servings": 6,
                        "sourceUrl": "http://www.tasteofhome.com/Recipes/garbanzo-vegetable-green-curry"
                      },
                      {
                        "id": 657682,
                        "imageType": "jpg",
                        "title": "Quinoa Stuffed Mushrooms",
                        "readyInMinutes": 45,
                        "servings": 2,
                        "sourceUrl": "https://spoonacular.com/quinoa-stuffed-mushrooms-657682"
                      }
                      ],
                      "nutrients": {
                  "calories": 2314.46,
                  "protein": 58.54,
                  "fat": 114.95,
                  "carbohydrates": 294.55
                  } """, style: TextStyle(fontSize: 17, color: Colors.black,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




