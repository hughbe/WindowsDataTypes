//
//  HRESULT.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.18 HRESULT
/// An HRESULT is a 32-bit value that is used to describe an error or warning and contains the following fields:
///  A 1-bit code that indicates severity, where 0 represents success and 1 represents failure.
///  A 4-bit reserved value.
///  An 11-bit code, also known as a facility code, that indicates responsibility for the error or warning.
///  A 16-bit code that describes the error or warning.
/// For details on HRESULT values, see [MS-ERREF].
/// This type is declared as follows:
/// typedef LONG HRESULT;
public typealias HRESULT = Int32
