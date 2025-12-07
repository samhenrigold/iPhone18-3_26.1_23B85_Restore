@interface NMSGreenTeaStreamingDefaults
+ (id)sharedInstance;
- (BOOL)_BOOLForKey:(id)key;
- (NMSGreenTeaStreamingDefaults)init;
- (void)_setBool:(BOOL)bool forKey:(id)key;
@end

@implementation NMSGreenTeaStreamingDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NMSGreenTeaStreamingDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __46__NMSGreenTeaStreamingDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (NMSGreenTeaStreamingDefaults)init
{
  v6.receiver = self;
  v6.super_class = NMSGreenTeaStreamingDefaults;
  v2 = [(NMSGreenTeaStreamingDefaults *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoMusicSync"];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v3;
  }

  return v2;
}

- (BOOL)_BOOLForKey:(id)key
{
  selfCopy = self;
  sharedDefaults = self->_sharedDefaults;
  keyCopy = key;
  [(NSUserDefaults *)sharedDefaults synchronize];
  LOBYTE(selfCopy) = [(NSUserDefaults *)selfCopy->_sharedDefaults BOOLForKey:keyCopy];

  return selfCopy;
}

- (void)_setBool:(BOOL)bool forKey:(id)key
{
  [(NSUserDefaults *)self->_sharedDefaults setBool:bool forKey:key];
  sharedDefaults = self->_sharedDefaults;

  [(NSUserDefaults *)sharedDefaults synchronize];
}

@end