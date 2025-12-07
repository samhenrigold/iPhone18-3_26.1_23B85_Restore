@interface FCNewsTabiRecipeScoringInputConfiguration
- (FCNewsTabiRecipeScoringInputConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation FCNewsTabiRecipeScoringInputConfiguration

- (FCNewsTabiRecipeScoringInputConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"inputNames", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v12.receiver = self;
    v12.super_class = FCNewsTabiRecipeScoringInputConfiguration;
    v8 = [(FCNewsTabiRecipeScoringInputConfiguration *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_inputNames, v6);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__FCNewsTabiRecipeScoringInputConfiguration_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7C36F98;
    v14 = dictionaryCopy;
    selfCopy = __64__FCNewsTabiRecipeScoringInputConfiguration_initWithDictionary___block_invoke(v13);
    v7 = v14;
  }

  return selfCopy;
}

uint64_t __64__FCNewsTabiRecipeScoringInputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 description];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeScoringInputConfiguration due to failure to decode inputNames from configuration %{public}@", &v7, 0xCu);
  }

  return 0;
}

@end