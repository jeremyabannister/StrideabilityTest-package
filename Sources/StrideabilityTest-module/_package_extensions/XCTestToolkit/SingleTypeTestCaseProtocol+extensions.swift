//
//  SingleTypeTestCaseProtocol+extensions.swift
//  
//
//  Created by Jeremy Bannister on 5/20/22.
//

///
public extension SingleTypeTestCaseProtocol
    where Subject: Strideable {
    
    ///
    func runStrideabilityTests() -> StrideabilityTestExecutor<Subject> {
        StrideabilityTestExecutor()
    }
}

///
public struct StrideabilityTestExecutor<Subject: Strideable> {
    
    ///
    @discardableResult
    public func test(
        _ value1: Subject,
        _ value2: Subject,
        _ distance: Subject.Stride
    ) throws -> Self {
        
        ///
        try StrideabilityTest(
            value1,
            value2,
            distance
        )
            .run()
        
        ///
        return self
    }
}
