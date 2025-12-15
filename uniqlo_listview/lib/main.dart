import 'package:flutter/material.dart';
import 'package:recipes/Model/recipe.dart';
import 'package:recipes/recipe_detail.dart';
 
void main() {
  runApp(const UniqloApp());
}
 
class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'Uniqlo Calculator'),
    );
  }
}
 
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(child: Container(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print('You Tapped on ${Uniqlo.samples[index].imgLabel}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                          return UniqloDetail(uniqlo: Uniqlo.samples[index]);
                          },
                        ),
                      );
                    },
                    child: buildRecipeCard(Uniqlo.samples[index]),
                  );
                },
                itemCount: Uniqlo.samples.length
              ),
            )),
        );
  }
 
 
  Widget buildRecipeCard(Uniqlo uniqlo) {
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget> [
            Image(image: AssetImage(uniqlo.imageUrl)),
            const SizedBox(height: 14.0,),
            Text(uniqlo.imgLabel,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 