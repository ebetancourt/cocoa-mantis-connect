/*
	HDCustomFieldLinkForProjectDataArray.h
	The interface definition of properties and methods for the HDCustomFieldLinkForProjectDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDCustomFieldLinkForProjectDataArray : SoapObject
{
	
}
		

	+ (HDCustomFieldLinkForProjectDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
