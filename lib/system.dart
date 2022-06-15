import 'package:firebase_auth/firebase_auth.dart';

class System {
  //String id;
  final String tutar;
  final String aciklama;

  System({
    //this.id = '',
    required this.tutar,
    required this.aciklama,
  });
  final user = FirebaseAuth.instance.currentUser!;
  Map<String, dynamic> toJson() => {
        // 'id': id,
        'tutar': tutar,
        'açıklama': aciklama,
      };
  static System fromJson(Map<String, dynamic> json) => System(
        //id: json['id'],
        tutar: json['tutar'],
        aciklama: json['aciklama'],
      );
}
