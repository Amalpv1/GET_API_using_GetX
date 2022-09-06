import 'package:apigetxtest/model/datamodel.dart';
import 'package:http/http.dart' as http;


class Dataservices
{
  var url = 'https://fakestoreapi.com/products';

  Future<List<Datamodel>?> getservices()async{

var response =await http.get(Uri.parse(url));
if(response.statusCode==200){
return datamodelFromJson(response.body);
}else{
  return null;
}

  }
}