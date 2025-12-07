@interface PLContinuityAgent
+ (id)entryEventPointDefinitions;
+ (int64_t)unlockPeerTypeStringToEnum:(id)enum;
+ (void)load;
- (PLContinuityAgent)init;
@end

@implementation PLContinuityAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLContinuityAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"AutoUnlock";
  entryEventPointDefinitionAutoUnlock = [self entryEventPointDefinitionAutoUnlock];
  v6[0] = entryEventPointDefinitionAutoUnlock;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (PLContinuityAgent)init
{
  v3.receiver = self;
  v3.super_class = PLContinuityAgent;
  return [(PLAgent *)&v3 init];
}

+ (int64_t)unlockPeerTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"Phone"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"Mac"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end