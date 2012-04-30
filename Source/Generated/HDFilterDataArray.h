/*
	HDFilterDataArray.h
	The interface definition of properties and methods for the HDFilterDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDFilterDataArray : SoapObject
{
	
}
		

	+ (HDFilterDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end