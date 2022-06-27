# send_email_flutter_emailjs
create account on emailjs
link your account 
(imp) allow emailjs to access your account while linking
create a template
you need 3 keys 
  service key 
  template key
  user id : you will find this in account as a public key
use http package 
add below line in android manifest
<manifest xmlns:android="..."
    package=".....">
  //enter here 
  ....
    <queries>
    <intent>
      <action android:name="android.intent.action.SENDTO" />
      <data android:scheme="mailto" />
    </intent>
  </queries>
  ...
   <application
   
                
 go to settings in account and 
                uncheck "use private key"
                check "allow emailjs api for non browser"
                
  
