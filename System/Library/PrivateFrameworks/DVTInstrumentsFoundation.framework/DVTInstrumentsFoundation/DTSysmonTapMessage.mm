@interface DTSysmonTapMessage
- (id)sessionMetadata;
- (unsigned)tapVersion;
- (void)setSessionMetadata:(id)metadata;
- (void)setTapVersion:(unsigned int)version;
@end

@implementation DTSysmonTapMessage

- (unsigned)tapVersion
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"tv"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setTapVersion:(unsigned int)version
{
  v3 = *&version;
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [plist setObject:v4 forKey:@"tv"];
}

- (id)sessionMetadata
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"sm"];

  return v3;
}

- (void)setSessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  plist = [(DTTapMessage *)self plist];
  v5 = [metadataCopy copy];

  [plist setObject:v5 forKey:@"sm"];
}

@end