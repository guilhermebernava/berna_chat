class UserModel {
  String? name;
  String? token;
  String? imageUrl;

  UserModel();

  factory UserModel.login({
    String? image,
    required String token,
    required String name,
  }) {
    final model = UserModel();
    model.imageUrl = image;
    model.token = token;
    model.name = name;

    return model;
  }

  void logout() {
    token = null;
    name = null;
    imageUrl = null;
  }
}
