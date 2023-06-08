import 'package:engage/themes.dart';
import 'package:flutter/material.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: sw*2,
          height: sh*2,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: sw,
                    height: sh,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kBlue,kPink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg.jpg'),fit: BoxFit.cover
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text('Engage AI',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                              (sw>577)?Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Contact Us',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                  SizedBox(width: 50,),
                                  Text('About Us',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                ],
                              ):PopupMenuButton<String>(
                                icon: Icon(Icons.menu),
                                onSelected: (val){},
                                itemBuilder: (BuildContext context) {
                                  return {'Contact Us', 'About Us'}.map((String choice) {
                                    return PopupMenuItem<String>(
                                      value: choice,
                                      child: Text(choice),
                                    );
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: sh/4-100),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('An AI Content\ngeneration Platform.',
                                  style:Theme.of(context).textTheme.displaySmall!.copyWith(
                                    color: kBlack,fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text('Know More',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: kBlack,
                                ),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: sw,
                    height: sh,
                    color: kWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: sw,
                          height: (sh/3)*1.5,
                          color: kBlack,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Row(
                                  children: [
                                    Text('Engage AI',
                                     style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                        color: kWhite,fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Container(
                  // width: sw/1.5,
                  // height: sh/2,
                  margin: const EdgeInsets.all(20),
                  constraints: const BoxConstraints(
                    maxWidth: 1200,
                    maxHeight: 450
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kBlack.withOpacity(0.2),
                        blurRadius: 106,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Join to know more about Engage AI',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: kBlack,fontWeight: FontWeight.w600,
                      ),textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 50),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.mail_outline_rounded),
                            enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: kBlack, width: 2.0),
                            ),
                              focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: kViolet, width: 2.0),
                            ),

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 185,
                        height: 50,
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kViolet,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50,),side: BorderSide(width: 1,color: kBlack)),
                          ), child: Text('Submit',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: kBlack,
                          ),
                        ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
