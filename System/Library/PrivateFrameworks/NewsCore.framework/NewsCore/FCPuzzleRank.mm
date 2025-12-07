@interface FCPuzzleRank
- (FCPuzzleRank)initWithDictionary:(id)dictionary index:(int64_t)index;
@end

@implementation FCPuzzleRank

- (FCPuzzleRank)initWithDictionary:(id)dictionary index:(int64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = FCPuzzleRank;
  v7 = [(FCPuzzleRank *)&v17 init];
  if (v7)
  {
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"name", &stru_1F2DC7DC0);
    v9 = FCAppConfigurationStringValue(dictionaryCopy, @"identifier", &stru_1F2DC7DC0);
    v10 = FCAppConfigurationStringValue(dictionaryCopy, @"icon", 0);
    v11 = FCAppConfigurationBoolValue(dictionaryCopy, @"defaultRank", 0);
    v12 = FCAppConfigurationBoolValue(dictionaryCopy, @"isProdigyLevel", 0);
    if (v8)
    {
      if (v9)
      {
        v13 = v12;
        objc_storeStrong(&v7->_name, v8);
        objc_storeStrong(&v7->_identifier, v9);
        objc_storeStrong(&v7->_icon, v10);
        v7->_defaultRank = v11;
        v7->_isProdigyLevel = v13;
        v7->_index = index;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "name"];
        *buf = 136315906;
        v19 = "[FCPuzzleRank initWithDictionary:index:]";
        v20 = 2080;
        v21 = "FCPuzzleRank.m";
        v22 = 1024;
        v23 = 26;
        v24 = 2114;
        v25 = v15;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      if (v9)
      {
        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "identifier"];
      *buf = 136315906;
      v19 = "[FCPuzzleRank initWithDictionary:index:]";
      v20 = 2080;
      v21 = "FCPuzzleRank.m";
      v22 = 1024;
      v23 = 27;
      v24 = 2114;
      v25 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

@end