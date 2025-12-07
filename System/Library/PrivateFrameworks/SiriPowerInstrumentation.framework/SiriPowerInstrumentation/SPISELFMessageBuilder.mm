@interface SPISELFMessageBuilder
- (SPISELFMessageBuilder)init;
- (id)buildMessage;
- (void)addContext:(id)context;
- (void)addProcess:(unsigned __int8)process;
- (void)addProcessUsage:(SPIResourceUsage *)usage;
- (void)addRequestLinkInfoForComponent:(int)component identifier:(id)identifier;
@end

@implementation SPISELFMessageBuilder

- (SPISELFMessageBuilder)init
{
  v7.receiver = self;
  v7.super_class = SPISELFMessageBuilder;
  v3 = [(SPISELFMessageBuilder *)&v7 init];
  if (v3 == self)
  {
    v4 = objc_alloc_init(POWSchemaProvisionalPOWUsage);
    [(SPISELFMessageBuilder *)v3 setUsageMsg:v4];

    v5 = objc_alloc_init(POWSchemaProvisionalPOWClientEvent);
    [(SPISELFMessageBuilder *)v3 setPowClientEventMsg:v5];
  }

  return v3;
}

- (void)addProcess:(unsigned __int8)process
{
  processCopy = process;
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [usageMsg setProcess:{+[SPISELFProcessAdapter translateProcess:](SPISELFProcessAdapter, "translateProcess:", processCopy)}];
}

- (void)addProcessUsage:(SPIResourceUsage *)usage
{
  v6 = objc_alloc_init(POWSchemaProvisionalPOWProcessUsage);
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuCycles:usage->cpuCycles];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuInstructions:usage->cpuInstructions];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setMemoryFootprint:usage->memPhysFootprint];
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [usageMsg setProcessUsage:v6];
}

- (void)addContext:(id)context
{
  contextCopy = context;
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [contextCopy setContextForUsage:usageMsg];
}

- (void)addRequestLinkInfoForComponent:(int)component identifier:(id)identifier
{
  v4 = *&component;
  v6 = MEMORY[0x277D5A9E0];
  identifierCopy = identifier;
  v10 = objc_alloc_init(v6);
  [v10 setComponent:v4];
  v8 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:identifierCopy];

  [v10 setUuid:v8];
  powClientEventMsg = [(SPISELFMessageBuilder *)self powClientEventMsg];
  [powClientEventMsg setLink:v10];
}

- (id)buildMessage
{
  powClientEventMsg = [(SPISELFMessageBuilder *)self powClientEventMsg];
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [powClientEventMsg setUsage:usageMsg];

  return [(SPISELFMessageBuilder *)self powClientEventMsg];
}

@end