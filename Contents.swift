//: Playground - noun: a place where people can play

import UIKit

// first example of switch
//var statusCode: Int = 404
//var errorString: String
//switch statusCode {
//case 400:
//    errorString = "Bad request"
//    
//case 401:
//    errorString = "Unauthorized"
//
//case 403:
//    errorString = "Forbidden"
//
//case 404:
//    errorString = "Not found"
//
//default:
//    errorString = "None"
//}

//second example
//var statusCode: Int = 404
//var errorString: String = "The request failed:"
//switch statusCode {
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request"
//    // fallthrough tells switch to go to the next case and will execute that code whether or not it matches
//    fallthrough
//default:
//    errorString += " Please review the request and try again."
//}

//// third example (ranges) and fourth example (value binding) and fifth example (reverting to the default case)
//var statusCode: Int = 404
//var errorString: String = "The request failed with the error:"
//switch statusCode {
//case 100, 101:
////    errorString += " Information, 1xx."
//    errorString += " Information, \(statusCode)."
//
//case 204:
//    errorString += " Successful but no content, 204"
//
//case 300...307:
////    errorString += " Redirection, 3xx"
//    errorString += " Redirection, \(statusCode)"
//
//case 400...417:
////    errorString += " Client error, 4xx"
//    errorString += " Client error, \(statusCode)"
//
//case 500...505:
////    errorString += " Server error, 5xx"
//    errorString += " Server error, \(statusCode)"
//
//// from third example
////default:
////    errorString = "Unknown.  Please review the request and try again."
//
//// from fourth example
//// create a temporary constant binding it to value of statusCode
////case let unknownCode:
////    errorString = "\(unknownCode) is not a known error code."
//
//// from fifth example
//default:
//    errorString = "\(statusCode) is not a known error code."
//}


// sixth example (where clauses)
//var statusCode: Int = 204
//var errorString: String = "The request failed with the error:"
//switch statusCode {
//case 100, 101:
//    //    errorString += " Information, 1xx."
//    errorString += " Information, \(statusCode)."
//    
//case 204:
//    errorString += " Successful but no content, 204"
//    
//case 300...307:
//    //    errorString += " Redirection, 3xx"
//    errorString += " Redirection, \(statusCode)"
//    
//case 400...417:
//    //    errorString += " Client error, 4xx"
//    errorString += " Client error, \(statusCode)"
//    
//case 500...505:
//    //    errorString += " Server error, 5xx"
//    errorString += " Server error, \(statusCode)"
//
//case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
//    errorString = "\(unknownCode) is not a known error code"
//default:
//    errorString = "Unexpected error encountered."
//}

// seventh example - tuples and pattern matching
var statusCode: Int = 418
var errorString: String = "The request failed with the error:"
switch statusCode {
case 100, 101:
    //    errorString += " Information, 1xx."
    errorString += " Information, \(statusCode)."
    
case 204:
    errorString += " Successful but no content, 204"
    
case 300...307:
    //    errorString += " Redirection, 3xx"
    errorString += " Redirection, \(statusCode)"
    
case 400...417:
    //    errorString += " Client error, 4xx"
    errorString += " Client error, \(statusCode)"
    
case 500...505:
    //    errorString += " Server error, 5xx"
    errorString += " Server error, \(statusCode)"
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code"
default:
    errorString = "Unexpected error encountered."
}

// this is a tuple! (grouping of 2 or more related values grouped as a single, compound value.  this results a ordered list of elements)
//let error = (statusCode, errorString)
//accessing the elements of a tuple
//error.0
//error.1

// naming tuple elements
let error = (code: statusCode, error: errorString)
error.code
error.error

// pattern matching in tuples
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes{
case (404, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}


// switch vs if/else
// a switch must be exhaustive so have to include default case
//let age = 25
//switch age {
//case 18...35:
//    print("Cool demographic")
//default:
//    break
//}

// if-case
//let age = 25
//if case 18...35 = age, age >= 21 {
//    print("In cool demographic and of drinking age in US")
//}

// bronze challenge
let point = (x:1, y:4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print ("Case not covered.")
}

// Silver Challenge add to if-case
let age = 25
if case 18...35 = age, age >= 21, age <= 30 {
    print("In cool demographic (18-29) and of drinking age in US")
}