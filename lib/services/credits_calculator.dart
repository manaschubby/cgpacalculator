import 'package:flutter/material.dart';

import 'moor_database_service.dart';

// // [1] : Particular Semester Credits Count
// // This function is used to count credtis exhausted in a particular semester using the required stream
// String countSemCredits(AsyncSnapshot<List<Course>> snapshot) {
//   String semesterCredits;
//   //Credits in a semester [String] that is returned by the function
//   int creditsCount = 0;
//   // The loopVariable used to count the credits in particular semester courses list of the user
//   //Loop to count the total credits from the snapshot of the watchAllCoursesBySemesterCode Stream
//   snapshot.data!.sort((a, b) =>
//       (a.courseCode + a.courseID + a.gradeAchieved.toString())
//           .compareTo((b.courseCode + b.courseID + b.gradeAchieved.toString())));

//   for (var i = 0; i < snapshot.data!.length; i++) {
//     if (i >= 1) {
//       if ((snapshot.data![i].courseCode + snapshot.data![i].courseID) ==
//           (snapshot.data![i - 1].courseCode + snapshot.data![i - 1].courseID)) {
//         creditsCount += snapshot.data![i - 1].courseCredits;
//         creditsCount -= snapshot.data![i].courseCredits;
//       } else {
//         creditsCount += snapshot.data![i].courseCredits;
//       }
//     } else {
//       creditsCount += snapshot.data![i].courseCredits;
//     }
//   }

//   //Asserting the Credits count
//   if (creditsCount.isNaN) {
//     semesterCredits = '0';
//   } else {
//     semesterCredits = creditsCount.toString();
//   }

//   return semesterCredits;
// }

// // [2] : Total Credits Count
// // This function is used to count total credits exhausted
// // It also takes care of the initial credits if any manual entry until particular semester is added by the user
// // Since it contains a future response a future builder should be used at the access location

// String countAllCredits(AsyncSnapshot<List<Course>> snapshot) {
//   String totalCredits; //Total Credits [String] that is returned by the function

//   // int initialCredits = manualCredits == 'None' ? 0 : int.parse(manualCredits);
//   //Accessing the initial credits added by the user manually stored in Shared Preferences
//   // int creditsCount =
//   //     initialCredits;
//   int creditsCount = 0;
//   // The loopVariable used to count the credits in completed courses list of the user initialised by the initial credits
//   //Loop to count the total credits from the snapshot of the watchAllCourses Stream
//   snapshot.data!.sort((a, b) =>
//       (a.courseCode + a.courseID + a.gradeAchieved.toString())
//           .compareTo((b.courseCode + b.courseID + b.gradeAchieved.toString())));

//   for (var i = 0; i < snapshot.data!.length; i++) {
//     if (i >= 1) {
//       if ((snapshot.data![i].courseCode + snapshot.data![i].courseID) ==
//           (snapshot.data![i - 1].courseCode + snapshot.data![i - 1].courseID)) {
//         creditsCount += snapshot.data![i - 1].courseCredits;
//         creditsCount -= snapshot.data![i].courseCredits;
//       } else {
//         creditsCount += snapshot.data![i].courseCredits;
//       }
//     } else {
//       creditsCount += snapshot.data![i].courseCredits;
//     }
//   }
//   //Asserting the total Credits
//   if (creditsCount.isNaN) {
//     totalCredits = '0';
//   } else {
//     totalCredits = creditsCount.toString();
//   }

//   return totalCredits;
// }

// [1] : Particular Semester Credits Count
// This function is used to count credtis exhausted in a particular semester using the required stream
String countSemCredits(AsyncSnapshot<List<Course>> snapshot) {
  String semesterCredits;
  //Credits in a semester [String] that is returned by the function
  int creditsCount = 0;
  // The loopVariable used to count the credits in particular semester courses list of the user
  //Loop to count the total credits from the snapshot of the watchAllCoursesBySemesterCode Stream

  for (var i = 0; i < snapshot.data!.length; i++) {
    creditsCount += snapshot.data![i].courseCredits;
  }

  //Asserting the Credits count
  if (creditsCount.isNaN) {
    semesterCredits = '0';
  } else {
    semesterCredits = creditsCount.toString();
  }

  return semesterCredits;
}

// [2] : Total Credits Count
// This function is used to count total credits exhausted
// It also takes care of the initial credits if any manual entry until particular semester is added by the user
// Since it contains a future response a future builder should be used at the access location

String countAllCredits(AsyncSnapshot<List<Course>> snapshot) {
  String totalCredits; //Total Credits [String] that is returned by the function

  // int initialCredits = manualCredits == 'None' ? 0 : int.parse(manualCredits);
  //Accessing the initial credits added by the user manually stored in Shared Preferences
  // int creditsCount =
  //     initialCredits;
  int creditsCount = 0;
  // The loopVariable used to count the credits in completed courses list of the user initialised by the initial credits
  //Loop to count the total credits from the snapshot of the watchAllCourses Stream

  for (var i = 0; i < snapshot.data!.length; i++) {
    creditsCount += snapshot.data![i].courseCredits;
  }
  //Asserting the total Credits
  if (creditsCount.isNaN) {
    totalCredits = '0';
  } else {
    totalCredits = creditsCount.toString();
  }

  return totalCredits;
}
