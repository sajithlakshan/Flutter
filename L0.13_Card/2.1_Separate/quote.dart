class SAJI {
  String text1 = '';
  String author2 = '';

  //  normal constructor, as we've already seen

  //  SAJI(String author, String text){
  //    this.text = text;
  //    this.author = author;
  //  }

  //  constructor with named parameters

  //  SAJI({ String author, String text }){
  //    this.text = text;
  //    this.author = author;
  //  }

  // constructor with named parameters
  // & automatically assigns named arguments to class properties

  SAJI({required String text1, required String author}) {
    this.text1 = text1;
    this.author2 = author;
  }
}
