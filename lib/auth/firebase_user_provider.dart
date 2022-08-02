import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UNIAppFirebaseUser {
  UNIAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UNIAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UNIAppFirebaseUser> uNIAppFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UNIAppFirebaseUser>((user) => currentUser = UNIAppFirebaseUser(user));
