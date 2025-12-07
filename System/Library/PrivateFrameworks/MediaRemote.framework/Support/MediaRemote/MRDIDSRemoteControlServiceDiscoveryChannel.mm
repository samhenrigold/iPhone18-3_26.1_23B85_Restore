@interface MRDIDSRemoteControlServiceDiscoveryChannel
- (id)debugDescription;
@end

@implementation MRDIDSRemoteControlServiceDiscoveryChannel

- (id)debugDescription
{
  v2 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v3 = MRCreateIndentedDebugDescriptionFromObject();
  [v2 appendFormat:@"  client = %@\n", v3];

  v4 = MRCreateIndentedDebugDescriptionFromObject();
  [v2 appendFormat:@"  transport = %@\n", v4];

  [v2 appendString:@"}>"];

  return v2;
}

@end