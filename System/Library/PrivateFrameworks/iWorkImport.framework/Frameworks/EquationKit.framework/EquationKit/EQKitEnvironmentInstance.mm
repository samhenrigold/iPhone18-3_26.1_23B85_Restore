@interface EQKitEnvironmentInstance
+ (id)dataForDefaultEnvironment;
+ (id)dataForEnvironment:(id)environment;
+ (id)defaultEnvironment;
+ (id)environmentFromData:(id)data;
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
  v5 = sub_275C950F4(v4, [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:&v8 error:&v9]);
  v6 = [EQKitEnvironmentInstance alloc];
  return [(EQKitEnvironmentInstance *)v6 initWithConfig:v5, v8, v9];
}

+ (id)dataForDefaultEnvironment
{
  if (qword_280A38B08 != -1)
  {
    sub_275D01FDC();
  }

  return qword_280A38B00;
}

+ (id)defaultEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275CC95DC;
  block[3] = &unk_27A6779A0;
  block[4] = self;
  if (qword_280A38B18 != -1)
  {
    dispatch_once(&qword_280A38B18, block);
  }

  return qword_280A38B10;
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
  v15.receiver = self;
  v15.super_class = EQKitEnvironmentInstance;
  v4 = [(EQKitEnvironmentInstance *)&v15 init];
  if (v4)
  {
    tsu_resourcesBundle = [MEMORY[0x277CCA8D8] tsu_resourcesBundle];
    if (!tsu_resourcesBundle)
    {
      v6 = MEMORY[0x277D81150];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[EQKitEnvironmentInstance initWithConfig:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm") description:{103, 0, "invalid nil value for '%{public}s'", "bundle"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v8 = [tsu_resourcesBundle pathForResource:@"EQKitOperatorDictionary" ofType:@"plist"];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v4->mConfig = [config copy];
    v4->mOperatorDictionary = sub_275CC79CC(v9);
    v10 = objc_opt_class();
    sub_275C950F4(v10, [(NSDictionary *)v4->mConfig objectForKey:@"fonts"]);
    v11 = objc_opt_class();
    v12 = sub_275C950F4(v11, [(NSDictionary *)v4->mConfig objectForKey:@"version"]);
    sub_275CBAA78(&v14, v12);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mOperatorDictionary = self->mOperatorDictionary;
  if (mOperatorDictionary)
  {
    v4 = sub_275CC79C8(mOperatorDictionary);
    MEMORY[0x277C8CFC0](v4, 0x1020C40EAA897C4);
  }

  mFontManager = self->mFontManager;
  if (mFontManager)
  {
    (*(mFontManager->var0 + 1))(mFontManager);
  }

  mKerningManager = self->mKerningManager;
  if (mKerningManager)
  {
    v7 = sub_275C9B0FC(mKerningManager);
    MEMORY[0x277C8CFC0](v7, 0x1020C408D4A57B4);
  }

  mLayoutConfig = self->mLayoutConfig;
  if (mLayoutConfig)
  {
    MEMORY[0x277C8CFC0](mLayoutConfig, 0x1000C4000313F17);
  }

  mBlahtexConfig = self->mBlahtexConfig;
  if (mBlahtexConfig)
  {
    sub_275CAF5D8(mBlahtexConfig + 40);
    v10 = sub_275CAF5D8(mBlahtexConfig);
    MEMORY[0x277C8CFC0](v10, 0x10A0C40864A76ABLL);
  }

  v11.receiver = self;
  v11.super_class = EQKitEnvironmentInstance;
  [(EQKitEnvironmentInstance *)&v11 dealloc];
}

- (void)beginLayout
{
  sub_275C9B078(self->mFontManager);
  mKerningManager = self->mKerningManager;

  sub_275C9B328(mKerningManager);
}

- (void)endLayout
{
  sub_275C9B338(self->mKerningManager);
  mFontManager = self->mFontManager;

  sub_275C9B088(mFontManager);
}

@end