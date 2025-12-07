@interface FCPersonalizationURLDomainMapping
- (FCPersonalizationURLDomainMapping)initWithPBURLMappingDomain:(id)domain;
- (id)tagsForPath:(id)path;
@end

@implementation FCPersonalizationURLDomainMapping

- (FCPersonalizationURLDomainMapping)initWithPBURLMappingDomain:(id)domain
{
  v24 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = FCPersonalizationURLDomainMapping;
  v5 = [(FCPersonalizationURLDomainMapping *)&v15 init];
  if (v5)
  {
    [domainCopy averageSafariVisitsPerDay];
    v5->_averageSafariVisitsPerDay = v6;
    domain = [domainCopy domain];

    if (!domain && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "domain.domain"];
      *buf = 136315906;
      v17 = "[FCPersonalizationURLDomainMapping initWithPBURLMappingDomain:]";
      v18 = 2080;
      v19 = "FCPersonalizationURLMapping.m";
      v20 = 1024;
      v21 = 152;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v8 = MEMORY[0x1E695DF20];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke;
    v13[3] = &unk_1E7C36EC8;
    v14 = domainCopy;
    v9 = [v8 fc_dictionary:v13];
    paths = v5->_paths;
    v5->_paths = v9;
  }

  return v5;
}

void __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
  v5 = [*(a1 + 32) paths];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_2;
  v8[3] = &unk_1E7C41C58;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 path];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "path.path"];
    *buf = 136315906;
    v16 = "[FCPersonalizationURLDomainMapping initWithPBURLMappingDomain:]_block_invoke_2";
    v17 = 2080;
    v18 = "FCPersonalizationURLMapping.m";
    v19 = 1024;
    v20 = 162;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_60;
  v12[3] = &unk_1E7C41C30;
  v5 = v3;
  v13 = v5;
  v14 = *(a1 + 32);
  v6 = __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_60(v12);
  if (v6)
  {
    v7 = MEMORY[0x1E695DF20];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_2_61;
    v10[3] = &unk_1E7C36EC8;
    v11 = v5;
    v8 = [v7 fc_dictionary:v10];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];
  }
}

id __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_60(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  v3 = [v2 length];

  v4 = [*(a1 + 32) path];
  v5 = v4;
  if (v3 >= 2)
  {
    v6 = [v4 stringByTrimmingCharactersInSet:*(a1 + 40)];
    v7 = [@"/" stringByAppendingString:v6];

    v5 = v7;
  }

  return v5;
}

void __64__FCPersonalizationURLDomainMapping_initWithPBURLMappingDomain___block_invoke_2_61(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 channelTags];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v8];
  [v4 setObject:v9 forKeyedSubscript:@"channels"];

  v10 = [*(a1 + 32) topicTags];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v12];
  [v4 setObject:v13 forKeyedSubscript:@"topics"];

  v14 = [*(a1 + 32) sectionTags];
  v17 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7;
  }

  v16 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v15];
  [v4 setObject:v16 forKeyedSubscript:@"sections"];
}

- (id)tagsForPath:(id)path
{
  pathCopy = path;
  paths = [(FCPersonalizationURLDomainMapping *)self paths];
  v6 = [paths objectForKeyedSubscript:pathCopy];

  return v6;
}

@end