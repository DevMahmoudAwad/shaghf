import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupTextformfieldWidget extends StatelessWidget {
  const SignupTextformfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 510,
      decoration: BoxDecoration(
          color: Color(0xfffde9bd), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 9, right: 10, top: 15, bottom: 10),
            child: Text(
              "Phone Number",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter Phone Number",
                  prefixIcon: Icon(Icons.phone)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 9, right: 10, top: 15, bottom: 10),
            child: Text(
              "User Name",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter User Name",
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 9, right: 10, top: 15, bottom: 10),
            child: Text("Password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter Your Password",
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 9, right: 10, top: 15, bottom: 10),
            child: Text("Confirm Password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "SIGN UP",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            margin: EdgeInsets.only(top: 22, left: 9, right: 10),
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 31, 31),
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already  have an account? "),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Color(0xffF04C29)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
