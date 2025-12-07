@interface FCFeedTransformationPersonalizedLimit
+ (id)transformationWithPersonalizer:(id)personalizer dateRange:(id)range;
+ (id)transformationWithPersonalizer:(id)personalizer timeInterval:(double)interval;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationPersonalizedLimit

+ (id)transformationWithPersonalizer:(id)personalizer dateRange:(id)range
{
  v20 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  personalizerCopy = personalizer;
  if (([rangeCopy isFinite] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"personalization limit requires a finite date range"];
    v12 = 136315906;
    v13 = "+[FCFeedTransformationPersonalizedLimit transformationWithPersonalizer:dateRange:]";
    v14 = 2080;
    v15 = "FCFeedTransformationPersonalize.m";
    v16 = 1024;
    v17 = 140;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v7 = objc_opt_new();
  [v7 setFeedPersonalizer:personalizerCopy];

  [rangeCopy absoluteTimeInterval];
  v9 = v8;

  [v7 setTimeInterval:v9];

  return v7;
}

+ (id)transformationWithPersonalizer:(id)personalizer timeInterval:(double)interval
{
  personalizerCopy = personalizer;
  v6 = objc_opt_new();
  [v6 setFeedPersonalizer:personalizerCopy];

  [v6 setTimeInterval:interval];

  return v6;
}

- (id)transformFeedItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = NewsCoreUserDefaults();
  if ([v5 BOOLForKey:@"personalization_disabled"])
  {

LABEL_12:
    v16 = itemsCopy;
    goto LABEL_13;
  }

  feedPersonalizer = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];

  if (!feedPersonalizer)
  {
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        sourceChannelID = [*(*(&v18 + 1) + 8 * i) sourceChannelID];
        [v7 addObject:sourceChannelID];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  feedPersonalizer2 = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];
  [(FCFeedTransformationPersonalizedLimit *)self timeInterval];
  v16 = [feedPersonalizer2 limitItemsByFlowRate:v8 timeInterval:objc_msgSend(v7 publisherCount:{"count"), v15}];

LABEL_13:

  return v16;
}

@end