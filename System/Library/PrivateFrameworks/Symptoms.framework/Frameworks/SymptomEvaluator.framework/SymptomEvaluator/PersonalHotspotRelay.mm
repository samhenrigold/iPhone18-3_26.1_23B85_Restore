@interface PersonalHotspotRelay
+ (id)sharedInstance;
- (void)updateWithState:(int)state softAPClientCount:(unsigned int)count wifiNanClientCount:(unsigned int)clientCount;
@end

@implementation PersonalHotspotRelay

- (void)updateWithState:(int)state softAPClientCount:(unsigned int)count wifiNanClientCount:(unsigned int)clientCount
{
  v5 = *&clientCount;
  v6 = *&count;
  v7 = *&state;
  v14 = *MEMORY[0x277D85DE8];
  if ([(PersonalHotspotRelay *)self state]!= state)
  {
    [(PersonalHotspotRelay *)self setState:v7];
  }

  if ([(PersonalHotspotRelay *)self softAPClientCount]!= v6)
  {
    [(PersonalHotspotRelay *)self setSoftAPClientCount:v6];
  }

  if ([(PersonalHotspotRelay *)self wifiNanClientCount]!= v5)
  {
    [(PersonalHotspotRelay *)self setWifiNanClientCount:v5];
  }

  [(PersonalHotspotRelay *)self setIsReady:1];
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11[0] = 67109376;
    v11[1] = [(PersonalHotspotRelay *)self wifiNanClientCount];
    v12 = 1024;
    softAPClientCount = [(PersonalHotspotRelay *)self softAPClientCount];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "NAN Client Count: %u, SoftAP Client Count: %u", v11, 0xEu);
  }
}

+ (id)sharedInstance
{
  v2 = sharedInstance_sharedInstance_38;
  if (!sharedInstance_sharedInstance_38)
  {
    if (sharedInstance_onceToken_2 != -1)
    {
      +[PersonalHotspotRelay sharedInstance];
    }

    v2 = sharedInstance_sharedInstance_38;
  }

  return v2;
}

uint64_t __38__PersonalHotspotRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PersonalHotspotRelay);
  v1 = sharedInstance_sharedInstance_38;
  sharedInstance_sharedInstance_38 = v0;

  v2 = sharedInstance_sharedInstance_38;

  return [v2 setIsReady:0];
}

@end