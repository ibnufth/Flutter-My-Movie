class ItemModel {
  int _page;
  int _total_result;
  int _total_pages;
  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['result'].length);
    _page = parsedJson['page'];
    _total_result = parsedJson['total_result'];
    _total_pages = parsedJson['total_pages'];
    List<_Result> tem = [];
    for (int i = 0; i< parsedJson['results'].length; i++){
      
    }

  }
}

class _ Result{
  
}
