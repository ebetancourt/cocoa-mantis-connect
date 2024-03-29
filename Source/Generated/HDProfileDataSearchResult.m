/*
	HDProfileDataSearchResult.h
	The implementation of properties and methods for the HDProfileDataSearchResult object.
	Generated by SudzC.com
*/
#import "HDProfileDataSearchResult.h"

#import "HDProfileDataArray.h"
@implementation HDProfileDataSearchResult
	@synthesize results = _results;
	@synthesize total_results = _total_results;

	- (id) init
	{
		if(self = [super init])
		{
			self.results = nil; // [[HDProfileDataArray alloc] init];

		}
		return self;
	}

	+ (HDProfileDataSearchResult*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (HDProfileDataSearchResult*)[[[HDProfileDataSearchResult alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.results = [[HDProfileDataArray newWithNode: [Soap getNode: node withName: @"results"]] object];
			self.total_results = [[Soap getNodeValue: node withName: @"total_results"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ProfileDataSearchResult"];
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
		if (self.results != nil) [s appendString: [self.results serialize: @"results"]];
		[s appendFormat: @"<total_results>%@</total_results>", [NSString stringWithFormat: @"%i", self.total_results]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[HDProfileDataSearchResult class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.results != nil) { [self.results release]; }
		[super dealloc];
	}

@end
