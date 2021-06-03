class UserModel{
  String name;
  String email;
  String phone;
  String UId;
  String image;

  UserModel({
    this.name,
    this.email,
    this.phone,
    this.UId,
    this.image,
});

  UserModel.fromJason(json){

    email=json['email'];
    name=json['name'];
    phone=json['phone'];
    UId=json['UId'];
    image=json['image'];

    print('json $json');


  }
  Map<String,dynamic> toMap(){

    return {
      'name':name,
      'email':email,
      'phone':phone,
      'uId':UId,
      'image':image,
    };
  }
}