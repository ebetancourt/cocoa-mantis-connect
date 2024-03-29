/*
	HDObjectRef.h
	The interface definition of properties and methods for the HDObjectRef object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDObjectRef : SoapObject
{
	int __id;
	NSString* _name;
	
}
		
	@property int _id;
	@property (retain, nonatomic) NSString* name;

	+ (HDObjectRef*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
