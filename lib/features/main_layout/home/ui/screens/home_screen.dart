import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    var h = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: EdgeInsets.all(w * 0.04),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_sharp,
                  size: w * 0.07,
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(w * 0.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(w * 0.5)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(w * 0.5)),
                enabled: true,
                hintText: "Search on Recipe..",
                hintStyle: TextStyle(
                    fontSize: w * 0.045, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: h * 0.017,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(w * 0.06),
                    child: Image.asset(
                      "assets/images/test.jpg",
                      height: h * 0.3,
                      width: w * 1,
                      fit: BoxFit.fill,
                      colorBlendMode: BlendMode.hardLight,
                      color: Colors.black54,
                    ),
                  ),
                  Positioned(
                    top: h * 0.2 / 2,
                    left: w * 1 / 6,
                    child: Text(
                      "Protein Banana Shake",
                      style: TextStyle(
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: h * 0.017,
                    left: w * 0.06,
                    child: Container(
                      width: w * 0.18,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(w * 0.1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: h * 0.017,
                    right: w * 0.06,
                    child: Container(
                      width: w * 0.24,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(w * 0.1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.timelapse,
                            color: Colors.white,
                          ),
                          Text(
                            "30 min",
                            style: TextStyle(
                                fontSize: w * 0.042,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
