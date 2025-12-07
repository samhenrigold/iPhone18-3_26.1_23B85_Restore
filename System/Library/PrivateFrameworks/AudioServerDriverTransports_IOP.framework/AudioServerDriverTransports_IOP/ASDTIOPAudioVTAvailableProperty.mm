@interface ASDTIOPAudioVTAvailableProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTAvailableProperty)initWithConfig:(id)config;
@end

@implementation ASDTIOPAudioVTAvailableProperty

+ (id)configDictForService:(id)service
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v8[0] = *MEMORY[0x277CEFC58];
  v8[1] = v3;
  v9[0] = @"ASDTIOPAudioVTAvailableProperty";
  v9[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (ASDTIOPAudioVTAvailableProperty)initWithConfig:(id)config
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:config];
  v5 = *MEMORY[0x277CEFC00];
  v10[0] = *MEMORY[0x277CEFC28];
  v10[1] = v5;
  v11[0] = &unk_285359AF0;
  v11[1] = MEMORY[0x277CBEC28];
  v10[2] = *MEMORY[0x277CEFC10];
  v11[2] = *MEMORY[0x277CEFC60];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 asdtAddMissingEntriesFromDictionary:v6];

  v9.receiver = self;
  v9.super_class = ASDTIOPAudioVTAvailableProperty;
  v7 = [(ASDTIOPAudioVTUInt32Property *)&v9 initWithConfig:v4];

  return v7;
}

@end