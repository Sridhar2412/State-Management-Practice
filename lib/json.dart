// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    List<User> users;

    Welcome({
        required this.users,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class User {
    String name;

    User({
        required this.name,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
