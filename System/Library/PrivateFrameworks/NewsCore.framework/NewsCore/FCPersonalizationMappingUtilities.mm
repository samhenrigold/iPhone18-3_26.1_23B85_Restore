@interface FCPersonalizationMappingUtilities
+ (id)scoredTagsDictionaryFromScoredTags:(id)tags;
@end

@implementation FCPersonalizationMappingUtilities

+ (id)scoredTagsDictionaryFromScoredTags:(id)tags
{
  v15 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  if (!tagsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "scoredTagIDs"];
    *buf = 136315906;
    v8 = "+[FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:]";
    v9 = 2080;
    v10 = "FCPersonalizationMappingUtilities.m";
    v11 = 1024;
    v12 = 17;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [MEMORY[0x1E695DF20] fc_dictionaryFromArray:tagsCopy keyBlock:&__block_literal_global_130 valueBlock:&__block_literal_global_7_1];

  return v4;
}

uint64_t __72__FCPersonalizationMappingUtilities_scoredTagsDictionaryFromScoredTags___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 score];

  return [v2 numberWithFloat:?];
}

@end