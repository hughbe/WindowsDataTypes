//
//  EVENT_HEADER_PROPERTY.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

public enum EVENT_HEADER_PROPERTY: UInt16 {
    /// EVENT_HEADER_PROPERTY_XML Indicates that you need a manifest to parse the event data.
    case xml = 0x0001
    
    /// EVENT_HEADER_PROPERTY_FORWARDED_XML Indicates that the event data contains within itself a fully
    /// rendered XML description of the data, so you do not need a manifest to parse the event data.
    case forwardedXml = 0x0002
    
    /// EVENT_HEADER_PROPERTY_LEGACY_EVENTLOG Indicates that you need a WMI MOF class to parse the
    /// event data.
    case legacyEventLog = 0x0004
}
