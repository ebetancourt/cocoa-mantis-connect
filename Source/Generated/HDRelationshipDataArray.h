/*
	HDRelationshipDataArray.h
	The interface definition of properties and methods for the HDRelationshipDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDRelationshipDataArray : SoapObject
{
	
}
		

	+ (HDRelationshipDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
