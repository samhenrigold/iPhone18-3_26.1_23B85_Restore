@interface FCNewsTabiSmarterFetchConfiguration
- (FCNewsTabiSmarterFetchConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiSmarterFetchConfiguration

- (FCNewsTabiSmarterFetchConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiSmarterFetchOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiSmarterFetchOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiSmarterFetchOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiSmarterFetchOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v17.receiver = self;
      v17.super_class = FCNewsTabiSmarterFetchConfiguration;
      v13 = [(FCNewsTabiSmarterFetchConfiguration *)&v17 init];
      p_isa = &v13->super.isa;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleOutputConfiguration, v7);
        objc_storeStrong(p_isa + 2, v11);
      }

      self = p_isa;
      selfCopy = self;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke_39;
      v18[3] = &unk_1E7C36F98;
      v19 = dictionaryCopy;
      selfCopy = __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke_39(v18);
      v12 = v19;
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke;
    v20[3] = &unk_1E7C36F98;
    v21 = dictionaryCopy;
    selfCopy = __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke(v20);
    v8 = v21;
  }

  return selfCopy;
}

uint64_t __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiSmarterFetchOutputConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v7, 0xCu);
  }

  return 0;
}

uint64_t __58__FCNewsTabiSmarterFetchConfiguration_initWithDictionary___block_invoke_39(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiSmarterFetchOutputConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v7, 0xCu);
  }

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiSmarterFetchConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@", indentedDescription];

  nonBundleOutputConfiguration = [(FCNewsTabiSmarterFetchConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@", indentedDescription2];

  [v3 appendString:@"\n>"];

  return v3;
}

@end