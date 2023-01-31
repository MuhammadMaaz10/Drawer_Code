import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

import '../../../Widgets/blackButton.dart';

// class Profile_pic extends StatelessWidget {
//
//   late File _image;
//   final picker = ImagePicker();
//   Future getImage() async{
//     final pickedImage = await picker.getImage(source: ImageSource.gallery);
//     if(pickedImage != null){
//       _image = File(pickedImage.path);
//     }else{
//       print('no image selected');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.kBackground,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 50),
//           child: Center(
//             child: Column(
//
//               children: [
//                 Container(
//                   height: 208,
//                   width: 208,
//                   decoration: BoxDecoration(
//                     color: AppColors.kRed,
//                     borderRadius: BorderRadius.circular(100)
//                   ),
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage(''),
//                     radius: 100,
//                     backgroundColor: AppColors.kDark,
//
//                     child: Column(
//                       children: [
//                         SizedBox(height: 70,),
//                         Icon(Icons.camera_alt,size: 50,color: AppColors.Black,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 145,top: 40),
//                           child: Container(
//                             height: 25,
//                           width: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: AppColors.kRed
//                           ),
//                             child: Icon(Icons.add),
//                           ),
//                         )
//                       ],
//                     ),
//
//                   ),
//                 ),
//                 Center(
//                   child: _image == null ? Text('no image selected') : Image.file(_image),
//                 ),
//                 SizedBox(height: 48),
//                 Text('Note: Please upload JPG/PNG\n '
//                     '            of less than 2 MB',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400
//                   ),),
//                 SizedBox(height: 260),
//                 black_Button(
//                   ht: 46,
//                   onTap: (){
//                     getImage();
//                   },
//                   wd: 342,
//                   rds: 10,
//                   bText: 'Save changes',
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class Profile_pic extends StatefulWidget {
  const Profile_pic({Key? key}) : super(key: key);

  @override
  State<Profile_pic> createState() => _Profile_picState();
}

class _Profile_picState extends State<Profile_pic> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('no image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Stack(
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: _image == null
                          ? Icon(
                              Icons.add_a_photo,
                              size: 35,
                              color: Colors.white,
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.file(
                                File(_image!.path),
                                fit: BoxFit.cover,
                              )),
                    ),
                    Positioned(
                      left: 134,
                      top: 125,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.kRed,
                        ),
                        child: InkWell(
                          onTap: () {
                            getImage();
                          },
                          child: Icon(Icons.add, color: AppColors.kBackground),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                Text(
                  'Note: Please upload JPG/PNG\n '
                  '            of less than 2 MB',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: Get.height * .3),
                black_Button(
                  ht: 46,
                  onTap: () {},
                  wd: 342,
                  rds: 10,
                  bText: 'Save changes',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
