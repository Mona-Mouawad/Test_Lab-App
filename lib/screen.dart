import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/cubit/cubit.dart';
import 'package:testmo/result.dart';

import 'cubit/states.dart';


class app extends StatefulWidget {
  const app({ Key? key }) : super(key: key);


  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {

@override

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<currentcubit,currentstates>(
      listener: (context,state){},
      builder:(context,state){
        var cubit = currentcubit.get(context);
        return Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.center,
            fit:StackFit.expand ,
            children: [
              Image(
                fit: BoxFit.fill,
                image: AssetImage('images/image_7.jpg'),

              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),                  
                        ),clipBehavior: Clip.antiAlias,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: TextFormField(
                            decoration:
                            InputDecoration(
                              labelText: 'Test Name',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(15),
                              ), ),
                            keyboardType: TextInputType.text,
                            validator: (String? value)
                            {
                              if(value!.isEmpty)
                              {return'name must not empty';}
                            },
                            onChanged: (v)
                            {cubit.Search(v);},
                          ),
                        ),
                      ),
                    ) ,
                    SizedBox(height: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        child: ListView.separated(
                            itemBuilder:(context,index)=> InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> Result_Screen(cubit.Search_data[index])
                              ));
                            },
                              child: Card(
                                elevation: 5,
                                shadowColor: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(cubit.item[index],
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),//cubit.item[index].toString()) ,
                            separatorBuilder:(context,index)=>SizedBox(height:.1,),
                            itemCount: cubit.Search_data.length),
                      ),
                    ),
                ],
              ),
            ],
          ),
          appBar: AppBar(
            title: Center(child: Text('Test APP')),
          //  leading: Icon(Icons.menu),
            backgroundColor: Colors.deepPurple[300],
            elevation: 5,
          ),
        );
      } ,

    );
  }
}