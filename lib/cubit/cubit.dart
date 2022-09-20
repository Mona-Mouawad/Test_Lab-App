import 'package:bloc/bloc.dart';
import 'package:csv/csv.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/cubit/states.dart';
import 'package:flutter/services.dart' show rootBundle;


class currentcubit extends Cubit<currentstates> {

  currentcubit() : super(initstate());

 static currentcubit get(context) =>BlocProvider.of(context);
   List<List<dynamic>> Search_data = [];
  List<String> item = [];
   loadCSV() async {
    final _rawData = await rootBundle.loadString("csv/New Price List.csv");
     List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);

      data = _listData;
      print(data);
   }


  Search(String char)
  {
    emit(loadingSearch());
    item = [];
    Search_data=[];
    data.forEach((element) {
      if(element[0].toUpperCase().contains(char.toUpperCase()))
      {
        item.add(element[0]);
        Search_data.add(element);
        emit(SuccsedSearch());
      }
     emit(SuccsedSearch());
    });
    emit(SuccsedSearch());
    print(item);
    print(item.length);
  }

  // Edit({
  //   required String name,
  //   required String simple,
  //   required String dic,
  //   required String price,
  // })
  // {
  //   emit(SuccsedEdit());
  //   data.forEach((element) {
  //     if(element[0]==name)
  //     {
  //
  //    // data.add([]);
  //       element[0]=name;
  //       element[1]=simple;
  //       element[2]=dic;
  //       element[3]=price;
  //       emit(SuccsedEdit());
  //       data.remove(element);
  //     }
  //    // emit(SuccsedEdit());
  //   });}
 List<List<dynamic>> data =[];


}