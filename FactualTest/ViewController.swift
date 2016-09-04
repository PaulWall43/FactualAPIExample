//
//  ViewController.swift
//  FactualTest
//
//  Created by Paul Wallace on 9/4/16.
//  Copyright © 2016 BuLeaf. All rights reserved.
//

import UIKit



class ViewController: UIViewController, FactualAPIDelegate {

    let secret = "[insert your secret here]"
    let key = "[insert your key here]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let categories : [Int] = [312, 347]
        let queryObject : FactualQuery = FactualQuery()
        let rowFilter : FactualRowFilter = FactualRowFilter.fieldName("category_ids", inArray: categories)
        let apiObject : FactualAPI = FactualAPI(APIKey: "Xd9tbnhThCcqUqvLoFlFxEgwlHanel7qvBwBpdLd", secret: "0dnD4zBBb5fuGRc4xrQAznM5Vm7wxOguMgwmSEvd")
        apiObject.queryTable("places-us", optionalQueryParams: nil, withDelegate: self)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func requestDidReceiveData(request: FactualAPIRequest!) {

        print (request)
    }
    
    func requestComplete(request: FactualAPIRequest!, receivedQueryResult queryResult: FactualQueryResult!) {
        for row in queryResult.rows{
            print(row)
        }
    }

}

