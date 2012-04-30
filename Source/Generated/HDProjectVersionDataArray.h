/*
	HDProjectVersionDataArray.h
	The interface definition of properties and methods for the HDProjectVersionDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDProjectVersionDataArray : SoapObject
{
	
}
		

	+ (HDProjectVersionDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
