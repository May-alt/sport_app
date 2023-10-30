class UserModels {
  String? Uid;
  String? Username;
  String? Useremail;

  UserModels(
      {required this.Username, required this.Useremail, required this.Uid});

  UserModels.fromJson(dynamic json) {
    Uid = json['Uid'];
    Username = json['Username'];
    Useremail = json['Useremail'];
  }

  Map<String, dynamic> ToMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Uid'] = this.Uid;
    data['Username'] = this.Username;
    data['Useremail'] = this.Useremail;
    return data;
  }
}
