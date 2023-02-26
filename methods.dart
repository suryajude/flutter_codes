import 'package:flutter/material.dart';

listTiles(List<String> menu, List<String> routes) {
  return ListView.separated(
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text(
            "${menu[index]}",
            textAlign: TextAlign.start,
          ),
          trailing: Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          onTap: () {
            Navigator.pushNamed(context, '${routes[index]}');
          },
        );
      }),
      separatorBuilder: ((context, index) {
        return SizedBox(
          height: 12.0,
        );
      }),
      itemCount: menu.length);
}
