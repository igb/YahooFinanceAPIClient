//
//  YahooFinanceClient.swift
//  YahooFinanceClient
//
//  Created by Ian Brown on 5/9/15.
//  Copyright (c) 2015 Ian Brown. All rights reserved.
//

import Foundation

class YahooFinanceClient {

    func getLatestPrice(ticker:String) -> Float {
    return (callApi(ticker) as NSString).floatValue;
 }


 func callApi(query:String) -> String {
    let url = "http://download.finance.yahoo.com/d/quotes.csv?s=" + query + "&f=l1";
    let responseBody: String = String(contentsOfURL: NSURL(string: url)!, encoding: NSUTF8StringEncoding, error: nil)!;
    return responseBody;

 }
}