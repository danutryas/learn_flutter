import 'package:flutter/material.dart';

class MyCardsWidget extends StatelessWidget {
  const MyCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: <Widget>[
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          cardBuilder("Danu Tryas", "Front End Engineer",
              "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
        ],
      ),
    );
  }

  Card cardBuilder(String name, String role, String imageUrl) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: <Widget>[
            // circle,
            SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.grey,
                shape: const StadiumBorder(),
                elevation: 1,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageUrl)),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Color.fromRGBO(28, 18, 67, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  role,
                  style: const TextStyle(
                      color: Color.fromRGBO(162, 158, 182, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.666666667),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
