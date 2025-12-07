@interface EQKitEnvironmentInstance
+ (id)dataForEnvironment:(id)environment;
+ (id)defaultEnvironment;
+ (id)environmentFromData:(id)data;
- (BOOL)fontsLoaded;
- (EQKitEnvironmentInstance)initWithConfig:(id)config;
- (void)beginLayout;
- (void)dealloc;
- (void)endLayout;
@end

@implementation EQKitEnvironmentInstance

+ (id)environmentFromData:(id)data
{
  v8 = 0;
  v9 = 0;
  v4 = objc_opt_class();
  v5 = EQKitUtilDynamicCast(v4, [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:&v8 error:&v9]);
  v6 = [EQKitEnvironmentInstance alloc];
  return [(EQKitEnvironmentInstance *)v6 initWithConfig:v5, v8, v9];
}

+ (id)defaultEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__EQKitEnvironmentInstance_defaultEnvironment__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[EQKitEnvironmentInstance defaultEnvironment]::onceToken != -1)
  {
    dispatch_once(&+[EQKitEnvironmentInstance defaultEnvironment]::onceToken, block);
  }

  return +[EQKitEnvironmentInstance defaultEnvironment]::sInstance;
}

void __46__EQKitEnvironmentInstance_defaultEnvironment__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"EQKitDefaultEnvironment", @"plist"}];
  v5 = 0;
  v6 = 0;
  v2 = objc_opt_class();
  v3 = EQKitUtilDynamicCast(v2, [MEMORY[0x277CCAC58] propertyListWithData:v1 options:0 format:&v6 error:&v5]);
  v4 = [EQKitEnvironmentInstance alloc];
  +[EQKitEnvironmentInstance defaultEnvironment]::sInstance = [(EQKitEnvironmentInstance *)v4 initWithConfig:v3, v5, v6];
}

+ (id)dataForEnvironment:(id)environment
{
  v6 = 0;
  newDictionaryForArchiving = [environment newDictionaryForArchiving];
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:newDictionaryForArchiving format:100 options:0 error:&v6];

  return v4;
}

- (EQKitEnvironmentInstance)initWithConfig:(id)config
{
  v12.receiver = self;
  v12.super_class = EQKitEnvironmentInstance;
  v4 = [(EQKitEnvironmentInstance *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"EQKitOperatorDictionary", @"plist"}];
    v4->mConfig = [config copy];
    v4->mOperatorDictionary = EQKit::Config::Operator::Dictionary::dictionaryFromURL(v5, v6);
    v7 = objc_opt_class();
    EQKitUtilDynamicCast(v7, [(NSDictionary *)v4->mConfig objectForKey:@"fonts"]);
    v8 = objc_opt_class();
    v9 = EQKitUtilDynamicCast(v8, [(NSDictionary *)v4->mConfig objectForKey:@"version"]);
    EQKit::Environment::Version::Version(v11, v9);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mOperatorDictionary = self->mOperatorDictionary;
  if (mOperatorDictionary)
  {
    EQKit::Config::Operator::Dictionary::~Dictionary(mOperatorDictionary);
    MEMORY[0x26D6A9A30]();
  }

  mFontManager = self->mFontManager;
  if (mFontManager)
  {
    (*(mFontManager->var0 + 1))(mFontManager);
  }

  mKerningManager = self->mKerningManager;
  if (mKerningManager)
  {
    EQKit::Kerning::Manager::~Manager(mKerningManager);
    MEMORY[0x26D6A9A30]();
  }

  mLayoutConfig = self->mLayoutConfig;
  if (mLayoutConfig)
  {
    MEMORY[0x26D6A9A30](mLayoutConfig, 0x1000C4000313F17);
  }

  v7.receiver = self;
  v7.super_class = EQKitEnvironmentInstance;
  [(EQKitEnvironmentInstance *)&v7 dealloc];
}

- (void)beginLayout
{
  EQKit::Font::Manager::beginLayout(self->mFontManager);
  mKerningManager = self->mKerningManager;

  EQKit::Kerning::Manager::beginLayout(mKerningManager);
}

- (void)endLayout
{
  EQKit::Kerning::Manager::endLayout(self->mKerningManager);
  mFontManager = self->mFontManager;

  EQKit::Font::Manager::endLayout(mFontManager);
}

- (BOOL)fontsLoaded
{
  v2 = *(*EQKit::Font::Manager::defaultCollection(self->mFontManager) + 192);

  return v2();
}

@end