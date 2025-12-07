@interface FCNewsTabiTagSuggestionsConfiguration
- (FCNewsTabiTagSuggestionsConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiTagSuggestionsConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiTagSuggestionsConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@;", indentedDescription];

  nonBundleOutputConfiguration = [(FCNewsTabiTagSuggestionsConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@;", indentedDescription2];

  recipeEventAggregationConfiguration = [(FCNewsTabiTagSuggestionsConfiguration *)self recipeEventAggregationConfiguration];
  indentedDescription3 = [recipeEventAggregationConfiguration indentedDescription];
  [v3 appendFormat:@"\n\trecipeEventAggregationConfiguration: %@;", indentedDescription3];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiTagSuggestionsConfiguration)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiTagSuggestionsOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiTagSuggestionsOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiTagSuggestionsOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiTagSuggestionsOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v13 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"recipeEventAggregationConfiguration", 0);
      v14 = [[FCNewsTabiRecipeEventAggregationConfiguration alloc] initWithDictionary:v13];
      if (!v14)
      {
        v15 = FCTabiConfigurationLog;
        if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
        {
          v20 = v15;
          v21 = [dictionaryCopy description];
          *buf = 138543362;
          v28 = v21;
          _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration in FCNewsTabiTagSuggestionsConfiguration due to failure to decode configuration from configuration %{public}@", buf, 0xCu);
        }
      }

      v22.receiver = self;
      v22.super_class = FCNewsTabiTagSuggestionsConfiguration;
      v16 = [(FCNewsTabiTagSuggestionsConfiguration *)&v22 init];
      p_isa = &v16->super.isa;
      if (v16)
      {
        objc_storeStrong(&v16->_bundleOutputConfiguration, v7);
        objc_storeStrong(p_isa + 2, v11);
        objc_storeStrong(p_isa + 3, v14);
      }

      self = p_isa;

      selfCopy = self;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58;
      v23[3] = &unk_1E7C36F98;
      v24 = dictionaryCopy;
      selfCopy = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58(v23);
      v12 = v24;
    }
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke;
    v25[3] = &unk_1E7C36F98;
    v26 = dictionaryCopy;
    selfCopy = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke(v25);
    v8 = v26;
  }

  return selfCopy;
}

uint64_t __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagSuggestionsConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v7, 0xCu);
  }

  return 0;
}

uint64_t __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagSuggestionsConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v7, 0xCu);
  }

  return 0;
}

@end