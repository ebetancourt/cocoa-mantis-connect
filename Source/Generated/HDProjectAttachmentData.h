/*
	HDProjectAttachmentData.h
	The interface definition of properties and methods for the HDProjectAttachmentData object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface HDProjectAttachmentData : SoapObject
{
	int __id;
	NSString* _filename;
	NSString* _title;
	NSString* _description;
	int _size;
	NSString* _content_type;
	NSDate* _date_submitted;
	id _download_url;
	int _user_id;
	
}
		
	@property int _id;
	@property (retain, nonatomic) NSString* filename;
	@property (retain, nonatomic) NSString* title;
	@property (retain, nonatomic) NSString* description;
	@property int size;
	@property (retain, nonatomic) NSString* content_type;
	@property (retain, nonatomic) NSDate* date_submitted;
	@property (retain, nonatomic) id download_url;
	@property int user_id;

	+ (HDProjectAttachmentData*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end