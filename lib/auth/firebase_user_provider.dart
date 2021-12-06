import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class J2hbFirebaseUser {
  J2hbFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

J2hbFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<J2hbFirebaseUser> j2hbFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<J2hbFirebaseUser>((user) => currentUser = J2hbFirebaseUser(user));
