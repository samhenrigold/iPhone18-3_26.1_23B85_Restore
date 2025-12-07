@interface FCTranslationMap
- (FCTranslationMap)initWithPBTranslationMap:(id)map resourceID:(id)d;
- (id)favoriteTranslationForTagID:(id)d;
- (id)topicTranslationForTagID:(id)d;
@end

@implementation FCTranslationMap

- (FCTranslationMap)initWithPBTranslationMap:(id)map resourceID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = FCTranslationMap;
  v8 = [(FCTranslationMap *)&v27 init];
  if (v8)
  {
    v9 = [dCopy copy];
    resourceID = v8->_resourceID;
    v8->_resourceID = v9;

    v11 = MEMORY[0x1E695DF20];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke;
    v25[3] = &unk_1E7C36EC8;
    v12 = mapCopy;
    v26 = v12;
    v13 = [v11 fc_dictionary:v25];
    topicTranslationMap = v8->_topicTranslationMap;
    v8->_topicTranslationMap = v13;

    v15 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v8->_topicTranslationMap;
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Parsed topic translation map %@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E695DF20];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_7;
    v23[3] = &unk_1E7C36EC8;
    v24 = v12;
    v18 = [v17 fc_dictionary:v23];
    favoriteTranslationMap = v8->_favoriteTranslationMap;
    v8->_favoriteTranslationMap = v18;

    v20 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v8->_favoriteTranslationMap;
      *buf = 138412290;
      v29 = v21;
      _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Parsed favorites translation map %@", buf, 0xCu);
    }
  }

  return v8;
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topicLanguageBuckets];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_2;
  v6[3] = &unk_1E7C42948;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCTopicTranslation alloc] initWithLanguageBucket:v3];
  v5 = [v3 values];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_3;
  v8[3] = &unk_1E7C41078;
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Given the same foreign key in 2 buckets: %@", *(a1 + 40)];
    *buf = 136315906;
    v7 = "[FCTranslationMap initWithPBTranslationMap:resourceID:]_block_invoke_3";
    v8 = 2080;
    v9 = "FCTranslationMap.m";
    v10 = 1024;
    v11 = 42;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:v3];
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) favoritesLanguageBuckets];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_2_8;
  v6[3] = &unk_1E7C42948;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_2_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 values];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_3_9;
  v6[3] = &unk_1E7C36FE8;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __56__FCTranslationMap_initWithPBTranslationMap_resourceID___block_invoke_3_9(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Given the same foreign key in 2 buckets: %@", *(a1 + 40)];
    *buf = 136315906;
    v9 = "[FCTranslationMap initWithPBTranslationMap:resourceID:]_block_invoke_3";
    v10 = 2080;
    v11 = "FCTranslationMap.m";
    v12 = 1024;
    v13 = 53;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [*(a1 + 40) key];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
}

- (id)topicTranslationForTagID:(id)d
{
  if (d)
  {
    dCopy = d;
    topicTranslationMap = [(FCTranslationMap *)self topicTranslationMap];
    v6 = [topicTranslationMap objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)favoriteTranslationForTagID:(id)d
{
  if (d)
  {
    dCopy = d;
    favoriteTranslationMap = [(FCTranslationMap *)self favoriteTranslationMap];
    v6 = [favoriteTranslationMap objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end