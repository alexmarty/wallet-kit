//
//  PassStructure.swift
//  Async
//
//  Created by Jimmy Arts on 12/09/2019.
//

import Foundation

public struct Payload: Codable {
    /// Additional fields to be displayed on the front of the pass.
    public var auxiliaryFields: [Field]?
    /// Fields to be on the back of the pass.
    public var backFields: [Field]?
    /// Fields to be displayed in the header on the front of the pass.
    /// Use header fields sparingly; unlike all other fields, they remain visible when a stack of passes are displayed.
    public var headerFields: [Field]?
    /// Fields to be displayed prominently on the front of the pass.
    public var primaryFields: [Field]?
    /// Fields to be displayed on the front of the pass.
    public var secondaryFields: [Field]?
    /// Required for boarding passes; otherwise not allowed. Type of transit.
    public var transitType: TransitType?
    
    /// Defautl initialiazer
    public init(auxiliaryFields: [Field]? = nil, backFields: [Field]? = nil, headerFields: [Field]? = nil, primaryFields: [Field]? = nil, secondaryFields: [Field]? = nil, transitType: TransitType?) {
        self.auxiliaryFields = auxiliaryFields
        self.backFields = backFields
        self.headerFields = headerFields
        self.primaryFields = primaryFields
        self.secondaryFields = secondaryFields
        self.transitType = transitType
    }
}
