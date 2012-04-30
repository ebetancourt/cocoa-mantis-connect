/*
	HDTagDataSearchResult.h
	The interface definition of properties and methods for the HDTagDataSearchResult object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class HDTagDataArray;

@interface HDTagDataSearchResult : SoapObject
{
	HDTagDataArray* _results;
	int _total_results;
	
}
		
	@property (retain, nonatomic) HDTagDataArray* results;
	@property int total_results;

	+ (HDTagDataSearchResult*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end