//
//  OBJECT_TYPE_LIST.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.9 OBJECT_TYPE_LIST
/// The OBJECT_TYPE_LIST structure identifies an object type element in a hierarchy of object types. The
/// Access Check Algorithm Pseudocode functions (section 2.5.3.2) use an array of OBJECT_TYPE_LIST
/// structures to define a hierarchy of an object and its sub-objects, such as property sets and properties.
/// typedef struct _OBJECT_TYPE_LIST {
///  WORD Level;
///  ACCESS_MASK Remaining;
///  GUID* ObjectType;
/// } OBJECT_TYPE_LIST,
/// *POBJECT_TYPE_LIST;
public struct OBJECT_TYPE_LIST {
    /// Level: Specifies the level of the object type in the hierarchy of an object and its sub-objects. Level
    /// zero indicates the object itself. Level one indicates a sub-object of the object, such as a property
    /// set. Level two indicates a sub-object of the level one sub-object, such as a property. There can be
    /// a maximum of five levels numbered zero through four.
    public var level: ACCESS
    
    /// Remaining: Remaining access bits for this element, used by the access check algorithm, as specified
    /// in section 2.5.3.2.
    public var remaining: ACCESS_MASK
    
    /// ObjectType: A pointer to the GUID for the object or sub-object.
    public var objectType: UnsafeMutablePointer<GUID>
    
    public enum ACCESS: UInt16 {
        /// ACCESS_OBJECT_GUID 0x0 Indicates the object itself at level zero.
        case objectGuid = 0x0
        
        /// ACCESS_PROPERTY_SET_GUID 0x1 Indicates a property set at level one.
        case propertySetGuid = 0x1
        
        /// ACCESS_PROPERTY_GUID 0x2 Indicates a property at level two.
        case propertyGuid = 0x2
        
        /// ACCESS_MAX_LEVEL 0x4 Maximum level.
        case maxLevel = 0x4
    }
}
