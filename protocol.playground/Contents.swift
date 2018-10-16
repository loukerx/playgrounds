import UIKit


protocol A {
    var contentType: Int { get }
    var type: String? { get }
    
}

extension A where Self: TestClass {
    var type: String? {
//        return "\(contentType)"
        return "\((self as TestClass).contentType)"
    }
}

protocol B {
    var contentType: Int { get }
}


class TestClass: B {
    var contentType: Int
    init(contentType: Int) {
        self.contentType = contentType
    }
}
