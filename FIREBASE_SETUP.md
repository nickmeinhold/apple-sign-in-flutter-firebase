# create a new project 
Go to the [firebase console](https://console.firebase.google.com/) 

<img width="814" alt="Screen Shot 2020-06-09 at 1 41 28 pm" src="https://user-images.githubusercontent.com/1059276/84107855-20adcf00-aa62-11ea-84c3-1d32faa28eb4.png">

Enter a name for the project 

<img width="785" alt="Screen Shot 2020-06-09 at 1 41 56 pm" src="https://user-images.githubusercontent.com/1059276/84107937-5a7ed580-aa62-11ea-8759-ecce540ad45c.png">

Add (or don't add) Google Analytics 

<img width="873" alt="Screen Shot 2020-06-09 at 1 42 08 pm" src="https://user-images.githubusercontent.com/1059276/84107976-74201d00-aa62-11ea-921c-f3c27cad926a.png">

Wait while the project is being created then select Authentication 

<img width="1221" alt="Screen Shot 2020-06-09 at 1 42 50 pm" src="https://user-images.githubusercontent.com/1059276/84108028-987bf980-aa62-11ea-894f-c0bfbcf154c3.png">

Select Sign In Method 

<img width="630" alt="Screen Shot 2020-06-09 at 1 45 21 pm" src="https://user-images.githubusercontent.com/1059276/84108043-a598e880-aa62-11ea-9147-f76f0bfff93c.png">

Select Apple 

<img width="1123" alt="Screen Shot 2020-06-09 at 1 46 15 pm" src="https://user-images.githubusercontent.com/1059276/84108071-b2b5d780-aa62-11ea-98a0-37da57149676.png">

Add a Service Id... 

<img width="952" alt="Screen Shot 2020-06-09 at 1 47 13 pm" src="https://user-images.githubusercontent.com/1059276/84108089-bd706c80-aa62-11ea-870c-e22ee1ba6b08.png">

or... 

<img width="956" alt="Screen Shot 2020-06-09 at 1 48 30 pm" src="https://user-images.githubusercontent.com/1059276/84108131-cfeaa600-aa62-11ea-9507-b637ec14a575.png">

# Create an iOS app

Either follow [Add Firebase to your Flutter app > iOS](https://firebase.google.com/docs/flutter/setup?platform=ios) or do the following: 

Hit the new iOS app button 

<img width="567" alt="Screen Shot 2020-06-09 at 3 41 09 pm" src="https://user-images.githubusercontent.com/1059276/84113221-8c496980-aa6d-11ea-9660-4716c138f3f2.png">

Enter your bundle id 
- one place to find this is in `ios/Runner.xcodeproj/project.pbxproj`, under `PRODUCT_BUNDLE_IDENTIFIER` 
- choose a nickname 
- you can leave the App Store ID blank 
- hit Register app

<img width="614" alt="Screen Shot 2020-06-09 at 3 41 55 pm" src="https://user-images.githubusercontent.com/1059276/84113239-910e1d80-aa6d-11ea-9e6e-809d422da3ac.png">

Download the file 

<img width="736" alt="Screen Shot 2020-06-09 at 4 02 28 pm" src="https://user-images.githubusercontent.com/1059276/84113566-2dd0bb00-aa6e-11ea-9589-2c08017efa67.png">

hit Next to skip through the rest 

You can add `GoogleService-Info.plist` to the project at `ios/Runner`, but it's better to open XCode and move the file into the `Runner/Runner` section so the change gets picks up and added to the `project.pbxproj` file.

Remember to add the file to `.gitignore` 
