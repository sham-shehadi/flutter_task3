import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settingspage(),
    );
  }
}
class Settingspage extends StatefulWidget {
  const Settingspage ({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  String select='Female';
  bool pushnotifications=false;
  bool darkmood=false;
  bool newsletter=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffF6F6FC),
      drawer: Drawer(
        child:Column(
          children: [
            UserAccountsDrawerHeader(
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
            Color(0xFFA7EBF2),
          Color(0xFF26658C)
          ]),
          ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,child: Icon(Icons.person,color: Colors.grey,size: 50,),
              )
              ,  accountName: Text('Alexa Morgan',
              style: TextStyle(fontWeight: .w400,fontSize: 20,
                  color:  Color(0xFF011C40)),),
                accountEmail:  Text('alexa.morgan@exampel,com')),
            ListTile(leading: Icon(Icons.home),title: Text('Home'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){
              Navigator.pop(context);
              },),
            Divider(),
            ListTile(leading: Icon(Icons.person),title: Text('Profile'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){},),
            Divider(),
            ListTile(leading: Icon(Icons.security),title: Text('Security'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){},),
            Divider(),
            ListTile(leading: Icon(Icons.notifications_none),title: Text('Notifications'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){},),
            Divider(),
            ListTile(leading: Icon(Icons.lock_open_outlined),title: Text('Privacy'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){
              },),
            Divider(),
            ListTile(leading: Icon(Icons.help_outline),title: Text('Help'),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){},),
                SizedBox(height: 180,),
            Divider(),
            ListTile(leading: Icon(Icons.logout,color: Colors.redAccent,),
              title: Text('Logout',style: TextStyle(color: Colors.redAccent,fontWeight: .bold),),
              trailing: Icon(Icons.arrow_forward,size: 15,),onTap: (){},),

          ],
        )
      ),
    appBar: AppBar(title:Text('Settings'),centerTitle: true,
      foregroundColor: Colors.white,backgroundColor: Color(0xFF011C40),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF011C40),
                  Color(0xFF26658C)
                ]),

              ),child: Center(
              child:  CircleAvatar(radius: 40,
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 60,color: Colors.grey,),),
            )

            ),
            SizedBox(height: 15,),
            Text('Alex Morgan',style: TextStyle(fontSize: 20,fontWeight: .bold),),
            SizedBox(height: 5,),
            Text('Urban explorer and design enthusiast. Always\n'
                'looking for the next big adventure and a good cup\n'
                'of coffee.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),),SizedBox(height: 15,),
            GridView.count(crossAxisCount: 2,
              shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
              children: [
                Card(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.emoji_events_rounded,color: Color(0xFFF3C3B2),),
                    Text('LEVEL'),
                    Text('42',style:TextStyle(fontWeight: .bold,fontSize: 20),),

                  ],
                ),),
                Card(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people,color: Color(0xFF657166),),
                    Text('FRIENDS'),
                    Text('142',style:TextStyle(fontWeight: .bold,fontSize: 20),),

                  ],
                ),),
                Card(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_fire_department,color: Color(0xFF99CDD8),),
                    Text('STREAK'),
                    Text('Days:15',style:TextStyle(fontWeight: .bold,fontSize: 19),),

                  ],
                ),),
                Card(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.workspace_premium,color: Colors.deepPurpleAccent,),
                    Text('BABGES'),
                    Text('42',style:TextStyle(fontWeight: .bold,fontSize: 20),),

                  ],
                ),),
              ],),
            SizedBox(height: 20,),Card(
              child: Column(
                mainAxisAlignment: .start,
                children: [
                  ListTile(
                    title: Text('Contact Details',
                      style: TextStyle(fontSize: 20,fontWeight: .w400),),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'alex.morgan@exmpel.com',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phon Number',
                      hintText: '+1(555) 133-456',
                      prefixIcon: Icon(Icons.phone_android_outlined),
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 20,),
            Card(
              child: Column(
                mainAxisAlignment: .start,
                children: [
                  ListTile(
                    title: Text('Gender Identity'),
                  ),Row(
                    children: [
                      RadioGroup<String>(
                      groupValue: select
                      ,onChanged: (value) {
                        setState(() {
                          select=value!;
                        });
                      }, child: Row(
                        children: [
                          Radio<String>(value: 'Female',activeColor: Color(0xFF54ACBF),),Text('Female'),
                          Radio<String>(value: 'Male',activeColor: Color(0xFF54ACBF)),Text('Male'),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: Column(
                mainAxisAlignment: .start,
                children: [
                  ListTile(
                    title: Text('Preferences',style: TextStyle(
                      fontWeight: .w400,fontSize: 20
                    ),),
                  ),SwitchListTile(value: pushnotifications,
                      onChanged:(value) {
                        setState(() {
                          pushnotifications=value;
                        });
                      }, title: Text('push Notification'),
                    subtitle: Text('Receive alerts your device'), 
                  activeColor: Color(0xFF54ACBF),),
                  Divider(color: Color(0xFF023859),),
                  SwitchListTile(value: darkmood,
                    onChanged:(value) {
                      setState(() {
                        darkmood=value;
                      });
                    }, title: Text('Dark Mood'),
                    subtitle: Text('Swtsh to dark theme'),
                    activeColor: Color(0xFF54ACBF),),
                  Divider(color: Color(0xFF023859),),
                  CheckboxListTile(value: newsletter, onChanged: (value) {
                    setState(() {
                      newsletter=value!;
                    });
                  },title: Text('Newsletter Subscription'),
                    subtitle: Text('Weekly updates and news'),activeColor:Color(0xFF54ACBF) ,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 320,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Changes saved successfully'),
                    ),
                  );
                },
                icon: Icon(Icons.save),
                label: Text('Save Changes'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF023859),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          SizedBox(height: 50,)




          ],
        ),
      ),
    );
  }
}

