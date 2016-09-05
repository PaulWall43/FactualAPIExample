# FactualAPIExample

This is meant as a extremely quick demo for people new to the Factual API and maybe even to iOS.

#Steps
Here are the steps that I took to get this working:
1. Download the sdk provided by factual for interacting with their API https://github.com/Factual/factual-ios-sdk

2. Drag and drop the downloaded framework into your Xcode project

3. For Objective-C projects just import the framework as needed. (Ex: <FactualSDK/FactualQuery.h> for the factual query object)

4. For Swift projects create a bridging header so your swift code can interact with the Objective-C framework.

5. In the bridging header import what you need from the framework in your swift files.

6. Refer to the examples in https://github.com/Factual/factual-ios-sdk for how to actually query the database
Here's one example in swift:
let apiObject : FactualAPI = FactualAPI(APIKey: key, secret: secret)
apiObject.queryTable("places-us", optionalQueryParams: nil, withDelegate: self)

7. In order to get information from the query make sure to implement the delegate methods from the
FactualAPIDelegate protocol (such as requestComplete())

8. Make sure to set the "Allow Arbitrary Loads" under "App Transport Security Settings" to YES, in order to allow
requests over HTTP instead of HTTPS.
