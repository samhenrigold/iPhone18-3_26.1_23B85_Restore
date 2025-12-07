@interface ATXNotificationRankingFeature
- (ATXNotificationRankingFeature)initWithCoder:(id)coder;
- (ATXNotificationRankingFeature)initWithWeight:(id)weight value:(id)value;
- (double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationRankingFeature

- (ATXNotificationRankingFeature)initWithWeight:(id)weight value:(id)value
{
  weightCopy = weight;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = ATXNotificationRankingFeature;
  v9 = [(ATXNotificationRankingFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weight, weight);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (double)score
{
  [(NSNumber *)self->_weight doubleValue];
  v4 = v3;
  [(NSNumber *)self->_value doubleValue];
  return v4 * v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationRankingFeature alloc];
  v5 = [(NSNumber *)self->_weight copy];
  v6 = [(NSNumber *)self->_value copy];
  v7 = [(ATXNotificationRankingFeature *)v4 initWithWeight:v5 value:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  weight = self->_weight;
  coderCopy = coder;
  [coderCopy encodeObject:weight forKey:@"weight"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (ATXNotificationRankingFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  v6 = v5;
  if (v5 && ([coderCopy error], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v8 = v18;
    if (v18)
    {
      error = [coderCopy error];

      if (!error)
      {
        self = [(ATXNotificationRankingFeature *)self initWithWeight:v6 value:v8];
        selfCopy = self;
        goto LABEL_6;
      }
    }

    v20 = __atxlog_handle_notification_categorization(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeature *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v8 = __atxlog_handle_notification_categorization(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeature *)v8 initWithCoder:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXNotificationRankingFeature initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: Failed to decode value", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithCoder:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXNotificationRankingFeature initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: Failed to decode weight", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end