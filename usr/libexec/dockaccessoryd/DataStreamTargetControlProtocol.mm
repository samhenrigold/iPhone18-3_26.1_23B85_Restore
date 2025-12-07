@interface DataStreamTargetControlProtocol
+ (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier dataStreamProtocolDelegate:(id)delegate;
@end

@implementation DataStreamTargetControlProtocol

+ (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier dataStreamProtocolDelegate:(id)delegate
{
  v4 = *&identifier;
  v8 = @"identifier";
  delegateCopy = delegate;
  v6 = [NSNumber numberWithUnsignedInt:v4];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [delegateCopy sendEventForProtocol:@"targetControl" topic:@"whoami" payload:v7 completion:&stru_100273768];
}

@end