@interface ASDTIOPAudioVTOccurredProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTOccurredProperty)initWithConfig:(id)config;
- (void)phraseDetectEvent;
@end

@implementation ASDTIOPAudioVTOccurredProperty

+ (id)configDictForService:(id)service
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v8[0] = *MEMORY[0x277CEFC58];
  v8[1] = v3;
  v9[0] = @"ASDTIOPAudioVTOccurredProperty";
  v9[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (ASDTIOPAudioVTOccurredProperty)initWithConfig:(id)config
{
  v16[3] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:configCopy];
  v6 = *MEMORY[0x277CEFC00];
  v15[0] = *MEMORY[0x277CEFC28];
  v15[1] = v6;
  v16[0] = &unk_285359AC0;
  v16[1] = MEMORY[0x277CBEC28];
  v15[2] = *MEMORY[0x277CEFC10];
  v16[2] = *MEMORY[0x277CEFC60];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v5 asdtAddMissingEntriesFromDictionary:v7];

  v14.receiver = self;
  v14.super_class = ASDTIOPAudioVTOccurredProperty;
  v8 = [(ASDTIOPAudioVTProperty *)&v14 initWithConfig:v5 propertyDataType:1886155636 qualifierDataType:0];
  if (v8)
  {
    objc_initWeak(&location, v8);
    vtDevice = [(ASDTIOPAudioVTProperty *)v8 vtDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__ASDTIOPAudioVTOccurredProperty_initWithConfig___block_invoke;
    v11[3] = &unk_278CE9C40;
    objc_copyWeak(&v12, &location);
    [vtDevice setPhraseDetectEventBlock:v11];

    [(ASDTCustomProperty *)v8 storePropertyValue:MEMORY[0x277CBEC10]];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __49__ASDTIOPAudioVTOccurredProperty_initWithConfig___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained phraseDetectEvent];
}

- (void)phraseDetectEvent
{
  v6 = *MEMORY[0x277D85DE8];
  name = [self name];
  v4 = 138412290;
  v5 = name;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to store phrase detection event data.", &v4, 0xCu);
}

@end