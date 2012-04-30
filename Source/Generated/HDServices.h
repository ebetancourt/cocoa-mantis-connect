/*
	HDServices.h
	Creates a list of the services available with the HD prefix.
	Generated by SudzC.com
*/
#import "HDMantisConnect.h"

@interface HDServices : NSObject {
	BOOL logging;
	NSString* server;
	NSString* defaultServer;
HDMantisConnect* mantisConnect;

}

-(id)initWithServer:(NSString*)serverName;
-(void)updateService:(SoapService*)service;
-(void)updateServices;
+(HDServices*)service;
+(HDServices*)serviceWithServer:(NSString*)serverName;

@property (nonatomic) BOOL logging;
@property (nonatomic, retain) NSString* server;
@property (nonatomic, retain) NSString* defaultServer;

@property (nonatomic, retain, readonly) HDMantisConnect* mantisConnect;

@end
			