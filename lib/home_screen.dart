import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Feed"),
                  ),
                  const Spacer(),
                  const Icon(Icons.add),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.mail_outline),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildChip(name: "#Trending"),
                              _buildChip(name: "#Food"),
                              _buildChip(name: "#Activity"),
                              _buildChip(name: "#Hotel"),
                              _buildChip(name: "#Games"),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
           
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip({String? name}) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: ChoiceChip(
        label: Text(name!),
        selected: isSelected,
        onSelected: (newBoolvalue) {
          setState(() {
            isSelected = newBoolvalue;
          });
        },
      ),
    );
  }
}
