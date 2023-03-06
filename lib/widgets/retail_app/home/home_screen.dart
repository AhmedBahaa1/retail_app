import 'package:flutter/material.dart';
import 'package:retail_app/shared/style/icon_broken.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 280,
              // height: 10,
              child: TextFormField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What are you craving?',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 14),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
