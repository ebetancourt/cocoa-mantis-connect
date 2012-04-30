/*
	HDCustomFieldValueForIssueData.h
	The implementation of properties and methods for the HDCustomFieldValueForIssueData object.
	Generated by SudzC.com
*/
#import "HDCustomFieldValueForIssueData.h"

#import "HDObjectRef.h"
@implementation HDCustomFieldValueForIssueData
	@synthesize field = _field;
	@synthesize value = _value;

	- (id) init
	{
		if(self = [super init])
		{
			self.field = nil; // [[HDObjectRef alloc] init];
			self.value = nil;

		}
		return self;
	}

	+ (HDCustomFieldValueForIssueData*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (HDCustomFieldValueForIssueData*)[[[HDCustomFieldValueForIssueData alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.field = [[HDObjectRef newWithNode: [Soap getNode: node withName: @"field"]] object];
			self.value = [Soap getNodeValue: node withName: @"value"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"CustomFieldValueForIssueData"];
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
		if (self.field != nil) [s appendString: [self.field serialize: @"field"]];
		if (self.value != nil) [s appendFormat: @"<value>%@</value>", [[self.value stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[HDCustomFieldValueForIssueData class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.field != nil) { [self.field release]; }
		if(self.value != nil) { [self.value release]; }
		[super dealloc];
	}

@end