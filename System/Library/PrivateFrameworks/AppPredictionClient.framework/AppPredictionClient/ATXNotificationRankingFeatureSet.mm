@interface ATXNotificationRankingFeatureSet
- (ATXNotificationRankingFeatureSet)initWithCoder:(id)coder;
- (ATXNotificationRankingFeatureSet)initWithFeatures:(id)features metadata:(id)metadata;
- (double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationRankingFeatureSet

- (ATXNotificationRankingFeatureSet)initWithFeatures:(id)features metadata:(id)metadata
{
  featuresCopy = features;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = ATXNotificationRankingFeatureSet;
  v8 = [(ATXNotificationRankingFeatureSet *)&v14 init];
  if (v8)
  {
    v9 = [featuresCopy copy];
    features = v8->_features;
    v8->_features = v9;

    v11 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (double)score
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSDictionary *)self->_features allValues];
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * i) score];
        v6 = v6 + v8;
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationRankingFeatureSet alloc];
  features = self->_features;
  metadata = self->_metadata;

  return [(ATXNotificationRankingFeatureSet *)v4 initWithFeatures:features metadata:metadata];
}

- (void)encodeWithCoder:(id)coder
{
  features = self->_features;
  coderCopy = coder;
  [coderCopy encodeObject:features forKey:@"features"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

- (ATXNotificationRankingFeatureSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"features"];
  v7 = v6;
  if (v6 && ([coderCopy error], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v19 = objc_opt_class();
    v20 = [coderCopy decodeDictionaryWithKeysOfClass:v19 objectsOfClass:objc_opt_class() forKey:@"metadata"];
    v9 = v20;
    if (v20)
    {
      error = [coderCopy error];

      if (!error)
      {
        self = [(ATXNotificationRankingFeatureSet *)self initWithFeatures:v7 metadata:v9];
        selfCopy = self;
        goto LABEL_6;
      }
    }

    v22 = __atxlog_handle_notification_categorization(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeatureSet *)v22 initWithCoder:v23, v24, v25, v26, v27, v28, v29];
    }
  }

  else
  {
    v9 = __atxlog_handle_notification_categorization(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeatureSet *)v9 initWithCoder:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXNotificationRankingFeatureSet initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: Failed to decode metadata", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithCoder:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXNotificationRankingFeatureSet initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: Failed to decode features", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end