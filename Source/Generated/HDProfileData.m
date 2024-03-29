/*
	HDProfileData.h
	The implementation of properties and methods for the HDProfileData object.
	Generated by SudzC.com
*/
#import "HDProfileData.h"

#import "HDAccountData.h"
@implementation HDProfileData
	@synthesize _id = __id;
	@synthesize user_id = _user_id;
	@synthesize platform = _platform;
	@synthesize os = _os;
	@synthesize os_build = _os_build;
	@synthesize description = _description;

	- (id) init
	{
		if(self = [super init])
		{
			self.user_id = nil; // [[HDAccountData alloc] init];
			self.platform = nil;
			self.os = nil;
			self.os_build = nil;
			self.description = nil;

		}
		return self;
	}

	+ (HDProfileData*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (HDProfileData*)[[[HDProfileData alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self._id = [[Soap getNodeValue: node withName: @"id"] intValue];
			self.user_id = [[HDAccountData newWithNode: [Soap getNode: node withName: @"user_id"]] object];
			self.platform = [Soap getNodeValue: node withName: @"platform"];
			self.os = [Soap getNodeValue: node withName: @"os"];
			self.os_build = [Soap getNodeValue: node withName: @"os_build"];
			self.description = [Soap getNodeValue: node withName: @"description"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ProfileData"];
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
		[s appendFormat: @"<id>%@</id>", [NSString stringWithFormat: @"%i", self._id]];
		if (self.user_id != nil) [s appendString: [self.user_id serialize: @"user_id"]];
		if (self.platform != nil) [s appendFormat: @"<platform>%@</platform>", [[self.platform stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.os != nil) [s appendFormat: @"<os>%@</os>", [[self.os stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.os_build != nil) [s appendFormat: @"<os_build>%@</os_build>", [[self.os_build stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[HDProfileData class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.user_id != nil) { [self.user_id release]; }
		if(self.platform != nil) { [self.platform release]; }
		if(self.os != nil) { [self.os release]; }
		if(self.os_build != nil) { [self.os_build release]; }
		if(self.description != nil) { [self.description release]; }
		[super dealloc];
	}

@end
