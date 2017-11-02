import XCTest
@testable import mathStuff

class MathStuffTests: XCTestCase {
    
    func testNumberOfTwos() {
        var result = numberOfTwos(maxNumber: 10)
        XCTAssertEqual(result, 1)
        
        result = numberOfTwos(maxNumber: 30)
        XCTAssertEqual(result, 12)
        
        result = numberOfTwos(maxNumber: 100)
        XCTAssertEqual(result, 19)
    }
    
    func testReturnsEmptyStringIfArgumentNil() {
        XCTAssertEqual(humanize(nil),"")
    }
    
    func testReturnsEmptyStringForEmptyString(){
        XCTAssertEqual(humanize(""),"")
    }
    
    func testReturnsCapitalizedStringIfNoUnderscores(){
        XCTAssertEqual(humanize("foo"),"Foo")
    }
    
    func testConvertsUnderscoresToSpaces(){
        XCTAssertEqual(humanize("foo_bar_baz"),"Foo bar baz")
    }
    
    func testConvertsUnderscoresToSpacesAgain(){
        XCTAssertEqual(humanize("zoo_bar_baz"),"Zoo bar baz")
    }
    
}
