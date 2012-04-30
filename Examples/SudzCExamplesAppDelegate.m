
#import "SudzCExamplesAppDelegate.h"
#import "HDMantisConnectExample.h"


@implementation SudzCExamplesAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {

HDMantisConnectExample* example1 = [[[HDMantisConnectExample alloc] init] autorelease];
		[example1 run];


	[window makeKeyAndVisible];
}

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end
			