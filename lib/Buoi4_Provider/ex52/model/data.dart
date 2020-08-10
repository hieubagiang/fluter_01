class Account {
  String option ;
  String location;

  Account({this.option, this.location});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['option'] = this.option;
    data['location'] = this.location;
    return data;
  }
}