@interface ASDTIOPAudioVTEnableProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTEnableProperty)initWithConfig:(id)config;
- (BOOL)retrieveUInt32Value:(unsigned int *)value;
- (BOOL)storeUInt32Value:(unsigned int)value;
@end

@implementation ASDTIOPAudioVTEnableProperty

+ (id)configDictForService:(id)service
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v8[0] = *MEMORY[0x277CEFC58];
  v8[1] = v3;
  v9[0] = @"ASDTIOPAudioVTEnableProperty";
  v9[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (ASDTIOPAudioVTEnableProperty)initWithConfig:(id)config
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:config];
  v9 = *MEMORY[0x277CEFC28];
  v10[0] = &unk_285359BE0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 asdtAddMissingEntriesFromDictionary:v5];

  v8.receiver = self;
  v8.super_class = ASDTIOPAudioVTEnableProperty;
  v6 = [(ASDTIOPAudioVTUInt32Property *)&v8 initWithConfig:v4];

  return v6;
}

- (BOOL)storeUInt32Value:(unsigned int)value
{
  v3 = *&value;
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  LOBYTE(v3) = [vtDevice setEnabled:v3];

  return v3;
}

- (BOOL)retrieveUInt32Value:(unsigned int *)value
{
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  LOBYTE(value) = [vtDevice getIsEnabled:value];

  return value;
}

@end