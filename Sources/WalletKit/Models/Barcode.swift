//
//  PassBarcode.swift
//  Async
//
//  Created by Jimmy Arts on 12/09/2019.
//

import Foundation

public struct Barcode: Codable {
    /// Text displayed near the barcode. For example, a human-readable version of the barcode data in case the barcode doesn’t scan.
    public var altText: String?
    /// Barcode format.
    public var format: Format
    /// Message or payload to be displayed as a barcode.
    public var message: String
    /// Text encoding that is used to convert the message from the string representation to a data representation to render the barcode. The value is typically iso-8859-1, but you may use another encoding that is supported by your barcode scanning infrastructure.
    public var messageEncoding: CharacterEncoding?
    
    /// Defautl initialiazer
    public init (altText: String? = nil, format: Format, message: String, messageEncoding: CharacterEncoding? = nil) {
        self.altText = altText
        self.format = format
        self.message = message
        self.messageEncoding = messageEncoding
    }
}

public extension Barcode {
    enum Format: String, Codable {
        case qr = "PKBarcodeFormatQR"
        case pdf = "PKBarcodeFormatPDF417"
        case aztec = "PKBarcodeFormatAztec"
        case code128 = "PKBarcodeFormatCode128"
    }
}
