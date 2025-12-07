@interface WBSPasswordBreachConfiguration
+ (WBSPasswordBreachConfiguration)standardConfiguration;
- (WBSPasswordBreachConfiguration)initWithDictionary:(id)dictionary protocolClasses:(id)classes allowValuesForTesting:(BOOL)testing;
@end

@implementation WBSPasswordBreachConfiguration

- (WBSPasswordBreachConfiguration)initWithDictionary:(id)dictionary protocolClasses:(id)classes allowValuesForTesting:(BOOL)testing
{
  testingCopy = testing;
  dictionaryCopy = dictionary;
  classesCopy = classes;
  v37.receiver = self;
  v37.super_class = WBSPasswordBreachConfiguration;
  v10 = [(WBSPasswordBreachConfiguration *)&v37 init];
  if (!v10)
  {
    v33 = 0;
    goto LABEL_34;
  }

  v11 = os_variant_allows_internal_security_policies();
  v10->_isInternalBuild = v11;
  if ((v11 & 1) == 0 && testingCopy)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfiguration initWithDictionary:v13 protocolClasses:? allowValuesForTesting:?];
    }

    testingCopy = 0;
  }

  v14 = [[WBSPasswordBreachConfigurationDictionaryUnpacker alloc] initWithDictionary:dictionaryCopy];
  v15 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 stringForKey:@"HighFrequencyBucketHashSalt" minimumLength:8];
  highFrequencyBucketHashSalt = v10->_highFrequencyBucketHashSalt;
  v10->_highFrequencyBucketHashSalt = v15;

  v17 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 stringForKey:@"LowFrequencyBucketHashSalt" minimumLength:8];
  lowFrequencyBucketHashSalt = v10->_lowFrequencyBucketHashSalt;
  v10->_lowFrequencyBucketHashSalt = v17;

  if (testingCopy)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2048;
  }

  if (testingCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = 15;
  }

  v10->_highFrequencyBucketHashWorkFactor = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"HighFrequencyBucketHashWorkFactor" minimumValue:v19 maximumValue:-1];
  v10->_lowFrequencyBucketHashWorkFactor = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"HighFrequencyBucketHashWorkFactor" minimumValue:v19 maximumValue:-1];
  v10->_lowFrequencyBucketIdentifierBitCount = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"LowFrequencyBucketIdentifierBitCount" minimumValue:v20 maximumValue:26];
  v10->_highFrequencyBucketScryptBlockSizeR = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"HighFrequencyBucketScryptBlockSizeR" minimumValue:1 maximumValue:100];
  v10->_highFrequencyBucketScryptParallelismFactorP = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"HighFrequencyBucketScryptParallelismFactorP" minimumValue:1 maximumValue:100];
  v10->_lowFrequencyBucketScryptBlockSizeR = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"LowFrequencyBucketScryptBlockSizeR" minimumValue:1 maximumValue:100];
  v10->_lowFrequencyBucketScryptParallelismFactorP = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"LowFrequencyBucketScryptParallelismFactorP" minimumValue:1 maximumValue:100];
  v21 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 URLForKey:@"HighFrequencyBucketURL"];
  highFrequencyBucketURL = v10->_highFrequencyBucketURL;
  v10->_highFrequencyBucketURL = v21;

  v23 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 URLForKey:@"LowFrequencyBucketURL"];
  lowFrequencyBucketURL = v10->_lowFrequencyBucketURL;
  v10->_lowFrequencyBucketURL = v23;

  if (testingCopy)
  {
    v25 = 0;
  }

  else
  {
    v25 = 86400;
  }

  if (testingCopy)
  {
    v26 = 1;
  }

  else
  {
    v26 = 5;
  }

  if (testingCopy)
  {
    v27 = 1;
  }

  else
  {
    v27 = 3;
  }

  if (testingCopy)
  {
    v28 = 1;
  }

  else
  {
    v28 = 10;
  }

  v10->_minimumDelayBetweenSessions = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"MinimumDelayBetweenSessions" minimumValue:v25 maximumValue:2592000];
  v10->_passwordCheckBatchSize = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"PasswordCheckBatchSize" minimumValue:v26 maximumValue:50];
  v10->_numberOfBatchesPerSession = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"NumberOfBatchesPerSession" minimumValue:v27 maximumValue:10];
  v10->_fakePasswordLengthBytes = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"FakePasswordLengthBytes" minimumValue:v28 maximumValue:30];
  v10->_lowFrequencyBucketFetchTimeout = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 unsignedIntegerForKey:@"LowFrequencyBucketFetchTimeout" minimumValue:v26 maximumValue:120];
  v29 = [WBSPasswordBreachCryptographicOperations isValidScryptHashWorkFactor:v10->_lowFrequencyBucketHashWorkFactor blockSizeR:v10->_lowFrequencyBucketScryptBlockSizeR parallelismFactorP:v10->_lowFrequencyBucketScryptParallelismFactorP];
  if (v29 && (v29 = [WBSPasswordBreachCryptographicOperations isValidScryptHashWorkFactor:v10->_highFrequencyBucketHashWorkFactor blockSizeR:v10->_highFrequencyBucketScryptBlockSizeR parallelismFactorP:v10->_highFrequencyBucketScryptParallelismFactorP], (v29 & 1) != 0))
  {
    if (testingCopy)
    {
      v10->_shouldRefillBagWhenEmpty = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 optionalBoolForKey:@"ShouldRefillBagWhenEmptyInternalOnly" defaultValue:1];
      v31 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 optionalBoolForKey:@"VerboseSensitiveLoggingInternalOnly" defaultValue:0];
    }

    else
    {
      v31 = 0;
      v10->_shouldRefillBagWhenEmpty = 1;
    }

    v10->_verboseSensitiveLoggingEnabled = v31;
    if (![(WBSPasswordBreachConfigurationDictionaryUnpacker *)v14 errorOccurred])
    {
      safari_ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
      urlSessionConfiguration = v10->_urlSessionConfiguration;
      v10->_urlSessionConfiguration = safari_ephemeralSessionConfiguration;

      if (classesCopy)
      {
        [(NSURLSessionConfiguration *)v10->_urlSessionConfiguration setProtocolClasses:classesCopy];
      }

      v33 = v10;
      goto LABEL_32;
    }
  }

  else
  {
    v32 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v29, v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfiguration initWithDictionary:v32 protocolClasses:? allowValuesForTesting:?];
    }
  }

  v33 = 0;
LABEL_32:

LABEL_34:
  return v33;
}

+ (WBSPasswordBreachConfiguration)standardConfiguration
{
  if (standardConfiguration_onceToken != -1)
  {
    +[WBSPasswordBreachConfiguration standardConfiguration];
  }

  v3 = standardConfiguration_configuration;

  return v3;
}

void __55__WBSPasswordBreachConfiguration_standardConfiguration__block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"LowFrequencyBucketIdentifierBitCount";
  v3[1] = @"HighFrequencyBucketURL";
  v4[0] = &unk_1F308E360;
  v4[1] = @"https://pbs-service-idem-dev.usnkq03.app.apple.com/pbs/api/v1/bucket/";
  v3[2] = @"LowFrequencyBucketURL";
  v3[3] = @"PasswordCheckBatchSize";
  v4[2] = @"https://pbs-service-idem-dev.usnkq03.app.apple.com/pbs/api/v1/bucket/";
  v4[3] = &unk_1F308E378;
  v3[4] = @"NumberOfBatchesPerSession";
  v3[5] = @"FakePasswordLengthBytes";
  v4[4] = &unk_1F308E390;
  v4[5] = &unk_1F308E3A8;
  v3[6] = @"LowFrequencyBucketFetchTimeout";
  v4[6] = &unk_1F308E3A8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = [[WBSPasswordBreachConfiguration alloc] initWithDictionary:v0];
  v2 = standardConfiguration_configuration;
  standardConfiguration_configuration = v1;
}

@end