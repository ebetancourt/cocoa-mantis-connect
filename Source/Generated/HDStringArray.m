/*
	HDStringArray.h
	The implementation of properties and methods for the HDStringArray object.
	Generated by SudzC.com
*/
#import "HDStringArray.h"

@implementation HDStringArray

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (HDStringArray*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (HDStringArray*)[[[HDStringArray alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"StringArray"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[HDStringArray class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end