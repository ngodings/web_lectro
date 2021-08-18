import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.search,
                color: Colors.black54,
                size: 20.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                  height: 20.0,
                  width: 20.0,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.black54,
                        size: 20.0,
                      ),
                      Align(
                          alignment: Alignment(0.7, -0.5),
                          child: Container(
                            height: 5.0,
                            width: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ))
                    ],
                  ))
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://images.unsplash.com/photo-1535127022272-dbe7ee35cf33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
              height: 30.0,
              width: 30.0,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
