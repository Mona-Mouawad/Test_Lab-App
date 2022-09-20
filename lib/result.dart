import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/cubit/cubit.dart';

import 'cubit/states.dart';

class Result_Screen extends StatelessWidget {
  List<dynamic>? result;

  Result_Screen(this.result);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<currentcubit, currentstates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = currentcubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple[300],
              elevation: 5,
              title: //  Text( 'Result'),
                  Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.1),
                    backgroundImage: AssetImage('images/M.jpeg'),
                    radius: 20,
                  ),
                  Spacer(),
                  Text(
                    'محمود فتحى داود',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              // actions: [
              //   IconButton(onPressed: (){cubit.Edit(name: result![0], simple: result![1], dic: result![2], price: "000000000");},
              //       icon:Icon( Icons.edit) ),
              //   SizedBox(width: 20,)
              // ],
            ),
            body: Stack(alignment: AlignmentDirectional.center, children: [
              Image(
                fit: BoxFit.none,
                image: AssetImage('images/image_6.jpg'),
                height: double.infinity,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Test Name:',
                              style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.white.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    result![0].toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Sample:',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.white.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    result![1].toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Duration:',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.white.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    result![2].toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Price:',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.white.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    result![3].toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            bottomSheet:  Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text(
                    'By: Mona Mouawad',
                    style: TextStyle(fontSize: 10),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'mona.mouawad21@gmail.com',
                    style: TextStyle(fontSize: 10),
                  ),

                ],
              ),
            ) ,
          );
        });
  }
}
