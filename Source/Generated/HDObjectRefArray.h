/*
	HDObjectRefArray.h
	The interface definition of properties and methods for the HDObjectRefArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDObjectRefArray : SoapObject
{
	
}
		

	+ (HDObjectRefArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
