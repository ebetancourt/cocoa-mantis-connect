/*
	HDProfileDataArray.h
	The interface definition of properties and methods for the HDProfileDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDProfileDataArray : SoapObject
{
	
}
		

	+ (HDProfileDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
