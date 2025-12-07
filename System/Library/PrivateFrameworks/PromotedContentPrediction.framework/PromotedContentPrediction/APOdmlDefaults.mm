@interface APOdmlDefaults
+ (BOOL)BOOLForKey:(id)key;
+ (double)doubleForKey:(id)key;
+ (id)_defaultValueForKey:(id)key valueClass:(Class)class;
+ (id)arrayForKey:(id)key;
+ (id)sharedInstance;
+ (id)stringForKey:(id)key;
+ (int64_t)integerForKey:(id)key;
+ (void)_setDefaultValue:(id)value forKey:(id)key;
+ (void)setBool:(BOOL)bool forKey:(id)key;
+ (void)setDouble:(double)double forKey:(id)key;
+ (void)setInteger:(int64_t)integer forKey:(id)key;
- (APOdmlDefaults)init;
@end

@implementation APOdmlDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ECC640;
  block[3] = &unk_279AC5E98;
  block[4] = self;
  if (qword_280CCF550 != -1)
  {
    dispatch_once(&qword_280CCF550, block);
  }

  v2 = qword_280CCF568;

  return v2;
}

- (APOdmlDefaults)init
{
  v8.receiver = self;
  v8.super_class = APOdmlDefaults;
  v2 = [(APOdmlDefaults *)&v8 init];
  if (v2)
  {
    v3 = CPCopySharedResourcesPreferencesDomainForDomain();
    v2->_defaultsBundleID = v3;
    if (!v3)
    {
      APOdmlSimulateCrash(5, @"Unable to initialize the defaults domain bundle identifier.", 0);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    factoryDefaults = v2->_factoryDefaults;
    v2->_factoryDefaults = v4;

    if (MGGetBoolAnswer())
    {
      [(NSMutableDictionary *)v2->_factoryDefaults setObject:&stru_2873677E0 forKeyedSubscript:@"ODMLpTTROverride"];
      [(NSMutableDictionary *)v2->_factoryDefaults setObject:&stru_2873677E0 forKeyedSubscript:@"ODMLAppVectorVersionOverride"];
      [(NSMutableDictionary *)v2->_factoryDefaults setObject:&stru_2873677E0 forKeyedSubscript:@"ODMLAppVectorVectorOverride"];
      v6 = MEMORY[0x277CBEC28];
      [(NSMutableDictionary *)v2->_factoryDefaults setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"ODMLEnableOverrides"];
      [(NSMutableDictionary *)v2->_factoryDefaults setObject:v6 forKeyedSubscript:@"VerboseLogging"];
    }
  }

  return v2;
}

+ (id)_defaultValueForKey:(id)key valueClass:(Class)class
{
  keyCopy = key;
  v5 = +[APOdmlDefaults sharedInstance];
  v6 = CFPreferencesCopyAppValue(keyCopy, v5[2]);

  if (!v6)
  {
    v7 = +[APOdmlDefaults sharedInstance];
    v6 = [v7[1] objectForKeyedSubscript:keyCopy];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

+ (void)_setDefaultValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v7 = +[APOdmlDefaults sharedInstance];
  CFPreferencesSetAppValue(keyCopy, valueCopy, v7[2]);

  v8 = +[APOdmlDefaults sharedInstance];
  CFPreferencesAppSynchronize(v8[2]);
}

+ (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [self _setDefaultValue:v8 forKey:keyCopy];
}

+ (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  integerValue = [v5 integerValue];
  return integerValue;
}

+ (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [self _setDefaultValue:v8 forKey:keyCopy];
}

+ (double)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

+ (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [self _setDefaultValue:v8 forKey:keyCopy];
}

+ (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  return v5;
}

+ (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  return v5;
}

@end