import 'package:flutter/material.dart';
class CustomAddress extends StatelessWidget {
    String? text;

  CustomAddress({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(7),
                bottomStart: Radius.circular(30),
                topEnd:Radius.circular(60) ,
                topStart: Radius.circular(30),

              )
          ),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined,color: Colors.white,),
              SizedBox(width: 5,),
              Text('$text',style:TextStyle(color: Colors.white) ,)
            ],
          ),
        ),
        Spacer(flex: 2,),
        Expanded(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 19,
            ),
          ),
        )
      ],
    );
  }
}

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String)?onSubmit,
  void Function(String)? onChanged,
  VoidCallback? suffixpressed,

  VoidCallback? onTap,

  required String lable,
  required IconData prefix,
  IconData? suffix,
  bool isClicable = true,
  bool isPassword = false,
})=>TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted:onSubmit,
  onChanged: onChanged,
  obscureText: isPassword,
  enabled: isClicable,
  onTap:onTap ,
  validator: (data) {
    if (data!.isEmpty) {
      return 'field is required';
    }
  },
  decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    ),
    labelText: lable,
    suffix:IconButton(onPressed:suffixpressed ,icon:Icon(suffix) ,) ,
    prefixIcon:Icon(prefix) ,
     border : const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15))
    ),

  ),
);