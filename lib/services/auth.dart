import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount == null) {
      print("Google Sign-In aborted");
      return null; // The user canceled the sign-in
    }

    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    final UserCredential userCredential = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    if (user == null) {
      print("Google sign-in failed: user is null");
      return null;
    }

    // The getIdToken method is not necessary for asserting token validity
    // You can simply use the returned User object.
    final User? currentUser = _auth.currentUser;
    if (currentUser != null && currentUser.uid == user.uid) {
      print("Sign-in successful: $user");
      return user;
    } else {
      print("Google sign-in failed: current user does not match");
      return null;
    }
  } catch (e) {
    print("Error in Google sign-in: $e");
    return null;
  }
}
