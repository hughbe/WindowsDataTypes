//
//  WORD.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.61 WORD
/// A WORD is a 16-bit unsigned integer (range: 0 through 65535 decimal). Because a WORD is unsigned, its first bit (Most Significant Bit (MSB))
/// is not reserved for signing.
/// This type is declared as follows:
/// typedef unsigned short WORD, *PWORD, *LPWORD;
public typealias WORD = UInt16
