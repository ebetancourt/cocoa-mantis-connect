/*
	HDCustomFieldLinkForProjectData.h
	The interface definition of properties and methods for the HDCustomFieldLinkForProjectData object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class HDObjectRef;

@interface HDCustomFieldLinkForProjectData : SoapObject
{
	HDObjectRef* _field;
	char _sequence;
	
}
		
	@property (retain, nonatomic) HDObjectRef* field;
	@property char sequence;

	+ (HDCustomFieldLinkForProjectData*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end