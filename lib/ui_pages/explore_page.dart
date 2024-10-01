import 'package:flutter/material.dart';
import 'news_bottom_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => NewsBottomPage()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 30,
            )),
        title: Text(
          "Explore",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey.shade100,
                height: 50,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      hintText: "let's see what happend today",
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 20,
                          ))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Read More News and See What Happen On Another World",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        height: 100,
                        width: 200,
                        child: TextButton(
                            onPressed: () {}, child: Text("Exclusive"))),
                    Container(
                        height: 100,
                        width: 150,
                        child: TextButton(onPressed: () {}, child: Text("Live")))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/ishan.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Center(child: Text("Nature")),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                  "Astronomical",
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "The New Earth Planet Already Discovered ! It's Near The Nepture",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.cloud),
                          Text("Cnbc News"),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.black,
                          ),
                          Text("March 2023"),
                          Icon(
                            Icons.favorite_border,
                            size: 10,
                            color: Colors.black,
                          ),
                          Text("4.2M"),
                          Icon(Icons.message),
                          Text("502K"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
