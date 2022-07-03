class CleoUser {
  String name;
  String phoneNumber;
  String email;
  String password;
  String address;

  CleoUser(
      this.name, this.phoneNumber, this.email, this.password, this.address);

  Map<String, dynamic> toJson() => {
        'name': name,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password,
        'address': address
      };
}
