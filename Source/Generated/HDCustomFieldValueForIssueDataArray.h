/*
	HDCustomFieldValueForIssueDataArray.h
	The interface definition of properties and methods for the HDCustomFieldValueForIssueDataArray object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDCustomFieldValueForIssueDataArray : SoapObject
{
	
}
		

	+ (HDCustomFieldValueForIssueDataArray*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
