@interface FBKSSharedConstants
+ (NSString)overrideGeoCountryCode;
+ (NSUserDefaults)sharedUserDefaults;
+ (id)appleSeedURL;
+ (id)appleSeedURLFromDefaults:(id)defaults withEnvironment:(signed __int16)environment;
+ (id)productVersion;
+ (id)swTrain;
+ (id)swVers;
+ (signed)environment;
+ (void)_deriveSystemVersion;
+ (void)initialize;
+ (void)overrideEnvironment:(signed __int16)environment host:(id)host;
@end

@implementation FBKSSharedConstants

+ (void)initialize
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"group.com.apple.feedback"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"production" forKey:@"environment"];
  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 registerDefaults:dictionary];
}

+ (id)appleSeedURLFromDefaults:(id)defaults withEnvironment:(signed __int16)environment
{
  environmentCopy = environment;
  defaultsCopy = defaults;
  v7 = defaultsCopy;
  if ((environmentCopy - 1) > 3)
  {
    v9 = @"https://fba.apple.com/";
  }

  else
  {
    if (FBKSHasInternalUI(defaultsCopy, v6) && [_overrideHostString length])
    {
      v8 = _overrideHostString;
      v9 = v8;
    }

    else
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [standardUserDefaults stringForKey:@"developmentHost"];
    }

    v11 = FBKSLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FBKSSharedConstants appleSeedURLFromDefaults:v9 withEnvironment:v11];
    }
  }

  v12 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  v13 = v12;
  if (!v12 || ([v12 host], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = [MEMORY[0x1E695DFF8] URLWithString:@"https://fba.apple.com/"];

    v13 = v15;
  }

  return v13;
}

+ (id)appleSeedURL
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [self appleSeedURLFromDefaults:standardUserDefaults withEnvironment:{objc_msgSend(self, "environment")}];

  return v4;
}

+ (signed)environment
{
  v2 = _cachedEnvironment;
  if (_cachedEnvironment < 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults stringForKey:@"environment"];

    _cachedEnvironment = FBKSEnvironmentFromString(v4);
    return _cachedEnvironment;
  }

  return v2;
}

+ (void)overrideEnvironment:(signed __int16)environment host:(id)host
{
  environmentCopy = environment;
  v17 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  _cachedEnvironment = environmentCopy;
  objc_storeStrong(&_overrideHostString, host);
  v8 = FBKSLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "+[FBKSSharedConstants overrideEnvironment:host:]";
    v11 = 1024;
    v12 = environmentCopy;
    v13 = 1024;
    v14 = _cachedEnvironment;
    v15 = 2114;
    v16 = _overrideHostString;
    _os_log_impl(&dword_1B00C4000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %hd -> [%hd] [%{public}@]", &v9, 0x22u);
  }
}

+ (NSString)overrideGeoCountryCode
{
  if (overrideGeoCountryCode_onceToken != -1)
  {
    +[FBKSSharedConstants overrideGeoCountryCode];
  }

  v3 = overrideGeoCountryCode_overrideValue;

  return v3;
}

void __45__FBKSSharedConstants_overrideGeoCountryCode__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (FBKSIsInternalInstall_onceToken != -1)
  {
    FBKSIsInternalInstall_cold_1();
  }

  if (FBKSIsInternalInstall__isInternal == 1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 stringForKey:@"geoOverride"];
    v4 = [v3 uppercaseString];
    v5 = overrideGeoCountryCode_overrideValue;
    overrideGeoCountryCode_overrideValue = v4;

    if (overrideGeoCountryCode_overrideValue)
    {
      v7 = FBKSLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543362;
        v9 = overrideGeoCountryCode_overrideValue;
        _os_log_impl(&dword_1B00C4000, v7, OS_LOG_TYPE_DEFAULT, "Using geo override: %{public}@", &v8, 0xCu);
      }
    }
  }
}

+ (NSUserDefaults)sharedUserDefaults
{
  if (sharedUserDefaults_onceToken != -1)
  {
    +[FBKSSharedConstants sharedUserDefaults];
  }

  v3 = sharedUserDefaults_userDefaults;

  return v3;
}

uint64_t __41__FBKSSharedConstants_sharedUserDefaults__block_invoke()
{
  sharedUserDefaults_userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.feedback"];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_deriveSystemVersion
{
  v2 = _swVers;
  _swVers = &stru_1F25DB460;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"BuildOverride"];

  v5 = _CFCopySystemVersionDictionary();
  v6 = v5;
  if (v4)
  {
    v5 = [v4 length];
    if (v5)
    {
      objc_storeStrong(&_swVers, v4);
LABEL_6:
      CFRelease(v6);
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v7 = CFDictionaryGetValue(v6, *MEMORY[0x1E695E1E8]);
    v8 = _swVers;
    _swVers = v7;

    v9 = CFDictionaryGetValue(v6, *MEMORY[0x1E695E208]);
    v10 = _productVersion;
    _productVersion = v9;

    goto LABEL_6;
  }

  v11 = FBKSLog(v5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[(FBKSSharedConstants *)v11];
  }

LABEL_10:
  if (_swVers)
  {
    v12 = [MEMORY[0x1E696AE88] scannerWithString:?];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v12 setCharactersToBeSkipped:whitespaceAndNewlineCharacterSet];

    v20 = 0;
    if ([v12 scanInteger:&v20])
    {
      uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
      v19 = 0;
      v15 = [v12 scanCharactersFromSet:uppercaseLetterCharacterSet intoString:&v19];
      v16 = v19;
      if (v15)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld%@", v20, v16];
        v18 = _swTrain;
        _swTrain = v17;
      }
    }
  }
}

+ (id)swVers
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"BuildOverride"];

  if (!v4 || (v5 = [v4 length], v6 = v4, !v5))
  {
    v6 = _swVers;
    if (!_swVers)
    {
      [self _deriveSystemVersion];
      v6 = _swVers;
    }
  }

  v7 = v6;

  return v7;
}

+ (id)swTrain
{
  v2 = _swTrain;
  if (!_swTrain)
  {
    [self _deriveSystemVersion];
    v2 = _swTrain;
  }

  v3 = v2;

  return v3;
}

+ (id)productVersion
{
  v2 = _productVersion;
  if (!_productVersion)
  {
    [self _deriveSystemVersion];
    v2 = _productVersion;
  }

  v3 = v2;

  return v3;
}

+ (void)appleSeedURLFromDefaults:(uint64_t)a1 withEnvironment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_DEBUG, "Using non-production server: %{public}@", &v2, 0xCu);
}

@end