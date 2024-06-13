import 'package:flutter/material.dart';

class BarSearch extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  BarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _controller.clear();
            },
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 238, 238, 238),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
