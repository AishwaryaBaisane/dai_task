import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {
  const ButtonApp({super.key});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                'Actions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                'Common Buttons',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 220,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Elevated'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('+ Icon '),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffe4dfe5)),
                          onPressed: () {},
                          child: const Text(
                            'Elevated',
                            style: TextStyle(color: Colors.black26),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FilledButton(
                          onPressed: () {},
                          child: const Text('Filled'),
                        ),
                        FilledButton(
                          onPressed: () {},
                          child: const Text('+ Icon'),
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Color(0xffe4dfe5),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Filled',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE8DEF8),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Filled Tonal',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE8DEF8),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '+ Icon',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffe4dfe5),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Filled Tonal',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                            onPressed: () {}, child: Text('Outlined')),
                        OutlinedButton(onPressed: () {}, child: Text('+ Icon')),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Color(0xffe4dfe5)),
                            onPressed: () {},
                            child: Text('Outlined'))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Floating action buttons',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        )),
                    SizedBox(
                        height: 60,
                        width: 90,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        )),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Segmented buttons',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.settings),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffe4dfe5),
                          shape: CircleBorder(
                              side: BorderSide(color: Colors.black26))),
                      onPressed: () {},
                      child: Icon(Icons.settings),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffe4dfe5),
                          shape: CircleBorder(
                              side: BorderSide(color: Colors.black26))),
                      onPressed: () {},
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.black26))),
                        onPressed: () {},
                        child: Icon(
                          Icons.settings,
                          color: Colors.black26,
                        ))
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
