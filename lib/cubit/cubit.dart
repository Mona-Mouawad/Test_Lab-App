import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/cubit/states.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;

class currentcubit extends Cubit<currentstates> {

  currentcubit() : super(initstate());

 static currentcubit get(context) =>BlocProvider.of(context);

  List<List<dynamic>> _data = [];
  List<List<dynamic>> Search_data = [];
  List<String> item = [];

  loadCSV() async {
    final _rawData = await rootBundle.loadString("csv/New Price List.csv");
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);

     _data = _listData;
     print(_data);
   //print(_data[0]);
  }

  Search(String char)
  {
    item = [];
    Search_data=[];
    _data.forEach((element) {
      if(element[0].contains(char))
      {
        item.add(element[0]);
        Search_data.add(element);
        emit(SuccsedSearch());
      }
      emit(SuccsedSearch());
    });

    print(item);
    print(item.length);
    print(Search_data.length);
  }


}