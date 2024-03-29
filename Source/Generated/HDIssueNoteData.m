/*
	HDIssueNoteData.h
	The implementation of properties and methods for the HDIssueNoteData object.
	Generated by SudzC.com
*/
#import "HDIssueNoteData.h"

#import "HDAccountData.h"
#import "HDObjectRef.h"
@implementation HDIssueNoteData
	@synthesize _id = __id;
	@synthesize reporter = _reporter;
	@synthesize text = _text;
	@synthesize view_state = _view_state;
	@synthesize date_submitted = _date_submitted;
	@synthesize last_modified = _last_modified;
	@synthesize time_tracking = _time_tracking;
	@synthesize note_type = _note_type;
	@synthesize note_attr = _note_attr;

	- (id) init
	{
		if(self = [super init])
		{
			self.reporter = nil; // [[HDAccountData alloc] init];
			self.text = nil;
			self.view_state = nil; // [[HDObjectRef alloc] init];
			self.date_submitted = nil;
			self.last_modified = nil;
			self.note_attr = nil;

		}
		return self;
	}

	+ (HDIssueNoteData*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (HDIssueNoteData*)[[[HDIssueNoteData alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self._id = [[Soap getNodeValue: node withName: @"id"] intValue];
			self.reporter = [[HDAccountData newWithNode: [Soap getNode: node withName: @"reporter"]] object];
			self.text = [Soap getNodeValue: node withName: @"text"];
			self.view_state = [[HDObjectRef newWithNode: [Soap getNode: node withName: @"view_state"]] object];
			self.date_submitted = [Soap dateFromString: [Soap getNodeValue: node withName: @"date_submitted"]];
			self.last_modified = [Soap dateFromString: [Soap getNodeValue: node withName: @"last_modified"]];
			self.time_tracking = [[Soap getNodeValue: node withName: @"time_tracking"] intValue];
			self.note_type = [[Soap getNodeValue: node withName: @"note_type"] intValue];
			self.note_attr = [Soap getNodeValue: node withName: @"note_attr"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"IssueNoteData"];
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
		if (self.reporter != nil) [s appendString: [self.reporter serialize: @"reporter"]];
		if (self.text != nil) [s appendFormat: @"<text>%@</text>", [[self.text stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.view_state != nil) [s appendString: [self.view_state serialize: @"view_state"]];
		if (self.date_submitted != nil) [s appendFormat: @"<date_submitted>%@</date_submitted>", [Soap getDateString: self.date_submitted]];
		if (self.last_modified != nil) [s appendFormat: @"<last_modified>%@</last_modified>", [Soap getDateString: self.last_modified]];
		[s appendFormat: @"<time_tracking>%@</time_tracking>", [NSString stringWithFormat: @"%i", self.time_tracking]];
		[s appendFormat: @"<note_type>%@</note_type>", [NSString stringWithFormat: @"%i", self.note_type]];
		if (self.note_attr != nil) [s appendFormat: @"<note_attr>%@</note_attr>", [[self.note_attr stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[HDIssueNoteData class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.reporter != nil) { [self.reporter release]; }
		if(self.text != nil) { [self.text release]; }
		if(self.view_state != nil) { [self.view_state release]; }
		if(self.date_submitted != nil) { [self.date_submitted release]; }
		if(self.last_modified != nil) { [self.last_modified release]; }
		if(self.note_attr != nil) { [self.note_attr release]; }
		[super dealloc];
	}

@end
