import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/cubit/cubit.dart';

import 'cubit/states.dart';

class Result_Screen extends StatelessWidget{

  List<dynamic>? result;
  Result_Screen(this.result);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<currentcubit,currentstates>(
        listener: (context,state){},
    builder:(context,state){
    var cubit = currentcubit.get(context);
    return Scaffold(
     appBar: AppBar(
       title:Text( 'Result'),
     ),
    body:Stack(
      alignment: AlignmentDirectional.center,
      children: [
      Image(
      fit: BoxFit.none,
      image: AssetImage('images/image_6.jpg'), height: double.infinity,

    ),
      Column(
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
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                  color: Colors.white.withOpacity(.2),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    
                    child: Text(
                      result![0].toString(),
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Sample:',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                  color: Colors.white.withOpacity(.2),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      result![1].toString(),
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Duration:',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(width: 20,),
              Expanded(
                child: Container(
                    color: Colors.white.withOpacity(.2),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      result![2].toString(),
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
            ),
          ],
        ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Price:',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                    color: Colors.white.withOpacity(.2),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        result![3].toString(),
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black54,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
              ),
            ],
          ),
      ],),
      ]
    ),
    );
    }
    );
  }
  
  
}