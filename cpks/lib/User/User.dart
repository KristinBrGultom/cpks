class User{
    User{{required this.email, required this.password, required this.username}};

    final String email;
    final String password;
    final String username;

    User.fromJson(Map<String, Object?> json)
       : this(
           email: json['name']! as String,
           password: json['password']! as String,
           username: json['username']! as String,
       );
    Map<String, Object?> toJson(){
        return {
            "email": email,
            "password": password,
            "username": username,
        };
    }
}