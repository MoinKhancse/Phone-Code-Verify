import 'package:flutter/material.dart';
import 'package:phoneverify/Widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';

class Registation extends StatefulWidget {
  const Registation({Key? key}) : super(key: key);

  @override
  State<Registation> createState() => _RegistationState();
}

class _RegistationState extends State<Registation> {
  final TextEditingController phoneController=TextEditingController();
  Country selectedCountry=Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc:0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    phoneController.selection=TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade50,
                ),
                child: Image.asset(
                  "assets/image2.png",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Add your phone number. We'll send you a verification code",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: Colors.purple,
                controller: phoneController,
                style: TextStyle(fontSize: 18),
                onChanged: (value){
                  setState(() {
                    phoneController.text= value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey.shade50,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12),
                ),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(bottomSheetHeight: 600),
                            onSelect:(value){
                          setState(() {
                            selectedCountry=value;
                          });
                        } );
                      },
                      child:Text("${selectedCountry.flagEmoji}+${selectedCountry.phoneCode}",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  suffixIcon: phoneController.text.length > 9?
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 20,),
                      ):null,
              ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(text:"Loging", onPresed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
