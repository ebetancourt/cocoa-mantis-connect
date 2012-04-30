/*
	HDFilterData.h
	The interface definition of properties and methods for the HDFilterData object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class HDAccountData;

@interface HDFilterData : SoapObject
{
	int __id;
	HDAccountData* _owner;
	int _project_id;
	BOOL _is_public;
	NSString* _name;
	NSString* _filter_string;
	NSString* _url;
	
}
		
	@property int _id;
	@property (retain, nonatomic) HDAccountData* owner;
	@property int project_id;
	@property BOOL is_public;
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) NSString* filter_string;
	@property (retain, nonatomic) NSString* url;

	+ (HDFilterData*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
