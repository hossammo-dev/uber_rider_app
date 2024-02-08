import 'package:firebase_auth/firebase_auth.dart';

import '../models/direction_details_info.dart';
import '../models/user_model.dart';




final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
List dList = []; //online-active drivers Information List
DirectionDetailsInfo? tripDirectionDetailsInfo;
String? chosenDriverId="";
String cloudMessagingServerToken = "key=AAAAVg_LBAw:APA91bE7CD0zHSh1MxwXTkeaWRC9Ksjzt2xMbHMhomDnK26wk8utwSbCp3VO60yMIjTDBzr1VF_KCrQvr9tP-CAKCv1gPckVbT0KP2gqiPLeR1mf6lAGR4u6keG1vSVqbcVnYKx34MYK";
String userDropOffAddress = "";
String driverCarDetails="";
String driverName="";
String driverPhone="";
double countRatingStars=0.0;
String titleStarsRating="";