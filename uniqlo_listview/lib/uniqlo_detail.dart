import 'package:flutter/material.dart';
import 'package:uniqlo_listview/Model/uniqlo.dart';

class UniqloDetail extends StatelessWidget {
  final Uniqlo uniqlo;

  const UniqloDetail({super.key, required this.uniqlo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, foregroundColor: Colors.white, title: const Text('Uniqlo Detail')),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  uniqlo.imageUrl,
                  height: 320,
                  fit: BoxFit.contain,
                ),
              ),
              
              const SizedBox(height: 30.0),
              Text(
                uniqlo.imgLabel,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino',
                ),
              ),

              const SizedBox(height: 20.0),
              Text(
                uniqlo.description,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Palatino',
                ),
              ),

              const SizedBox(height: 60.0),
              Text(
                uniqlo.price,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Palatino',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
