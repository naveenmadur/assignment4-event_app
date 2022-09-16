class FilterClass {
  String filterText;
  bool isSelected;
  FilterClass({required this.filterText, this.isSelected = false});

  void toogleSelected(int index){
    isSelected = !isSelected;
    // for(int i=0; i<filterTextList.length; i++){
    //   if(i == index){
    //    filterTextList[index].isSelected = !filterTextList[index].isSelected ;
    //   }
    //   else{
    //     filterTextList[i].isSelected = false;
    //   }
    // }
  }
}

final List<FilterClass> filterTextList = [
  FilterClass(filterText: '\u{2705} All'),
  FilterClass(filterText: '\u{1F3B5} Music'),
  FilterClass(filterText: '\u{1F3A8} Art'),
  FilterClass(filterText: '\u{1F4BC} Workshop'),
  FilterClass(filterText: '\u{1F4BC} Workshop'),
];



