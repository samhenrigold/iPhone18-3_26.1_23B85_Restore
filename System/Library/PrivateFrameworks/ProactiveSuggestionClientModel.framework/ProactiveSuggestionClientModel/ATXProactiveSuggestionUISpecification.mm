@interface ATXProactiveSuggestionUISpecification
- (ATXProactiveSuggestionUISpecification)initWithCoder:(id)coder;
- (ATXProactiveSuggestionUISpecification)initWithProto:(id)proto;
- (ATXProactiveSuggestionUISpecification)initWithProtoData:(id)data;
- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason preferredLayoutConfigs:(id)configs allowedOnLockscreen:(BOOL)lockscreen allowedOnHomeScreen:(BOOL)screen allowedOnSpotlight:(BOOL)spotlight shouldClearOnEngagement:(BOOL)self0 predictionReasons:(unint64_t)self1 contextStartDate:(id)self2 contextEndDate:(id)self3;
- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)title subtitle:(id)subtitle preferredLayoutConfigs:(id)configs allowedOnLockscreen:(BOOL)lockscreen allowedOnHomeScreen:(BOOL)screen allowedOnSpotlight:(BOOL)spotlight;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionUISpecification

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = self->_title;
  subtitle = self->_subtitle;
  v6 = [(NSString *)self->_reason hash];
  v7 = @"No";
  if (self->_shouldClearOnEngagement)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  if (self->_allowedOnLockscreen)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  if (self->_allowedOnHomeScreen)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  if (self->_allowedOnSpotlight)
  {
    v7 = @"Yes";
  }

  v11 = [v3 initWithFormat:@"Title: %@   Subtitle: %@   Reason.hash: %lu   Layouts: %@   Should clear on engagement: %@   Allowed on Lockscreen: %@   Allowed on HomeScreen: %@   Allowed on Spotlight: %@   Executable prediction reason: %llu   ", title, subtitle, v6, self->_preferredLayoutConfigs, v8, v9, v10, v7, self->_predictionReasons];

  return v11;
}

- (id)proto
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionUISpecification *)v3 setTitle:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setSubtitle:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setReason:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnLockscreen:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnHomeScreen:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnSpotlight:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setShouldClearOnEngagement:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setPredictionReasons:?];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_preferredLayoutConfigs, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_preferredLayoutConfigs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        proto = [*(*(&v19 + 1) + 8 * v9) proto];
        if (proto)
        {
          [v4 addObject:proto];
        }

        else
        {
          v11 = __atxlog_handle_blending(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(ATXProactiveSuggestionUISpecification *)&v17 proto];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [(ATXPBProactiveSuggestionUISpecification *)v3 setPreferredLayoutConfigs:v4];
  contextStartDate = self->_contextStartDate;
  if (contextStartDate)
  {
    [(NSDate *)contextStartDate timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionUISpecification *)v3 setContextStartDate:v13];
  }

  contextEndDate = self->_contextEndDate;
  if (contextEndDate)
  {
    [(NSDate *)contextEndDate timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionUISpecification *)v3 setContextEndDate:v15];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_reason hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_preferredLayoutConfigs hash];
  v7 = self->_allowedOnLockscreen - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_allowedOnHomeScreen - v7 + 32 * v7;
  v9 = self->_allowedOnSpotlight - v8 + 32 * v8;
  v10 = self->_shouldClearOnEngagement - v9 + 32 * v9;
  v11 = self->_predictionReasons - v10 + 32 * v10;
  v12 = &self->_contextStartDate[4 * v11] - v11;
  return self->_contextEndDate - v12 + 32 * v12;
}

- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)title subtitle:(id)subtitle preferredLayoutConfigs:(id)configs allowedOnLockscreen:(BOOL)lockscreen allowedOnHomeScreen:(BOOL)screen allowedOnSpotlight:(BOOL)spotlight
{
  BYTE1(v9) = 1;
  LOBYTE(v9) = spotlight;
  return [(ATXProactiveSuggestionUISpecification *)self initWithTitle:title subtitle:subtitle predictionReason:0 preferredLayoutConfigs:configs allowedOnLockscreen:lockscreen allowedOnHomeScreen:screen allowedOnSpotlight:v9 shouldClearOnEngagement:?];
}

- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason preferredLayoutConfigs:(id)configs allowedOnLockscreen:(BOOL)lockscreen allowedOnHomeScreen:(BOOL)screen allowedOnSpotlight:(BOOL)spotlight shouldClearOnEngagement:(BOOL)self0 predictionReasons:(unint64_t)self1 contextStartDate:(id)self2 contextEndDate:(id)self3
{
  titleCopy = title;
  subtitleCopy = subtitle;
  reasonCopy = reason;
  configsCopy = configs;
  dateCopy = date;
  endDateCopy = endDate;
  v35.receiver = self;
  v35.super_class = ATXProactiveSuggestionUISpecification;
  v24 = [(ATXProactiveSuggestionUISpecification *)&v35 init];
  if (v24)
  {
    v25 = [titleCopy copy];
    title = v24->_title;
    v24->_title = v25;

    v27 = [subtitleCopy copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v27;

    v29 = [reasonCopy copy];
    reason = v24->_reason;
    v24->_reason = v29;

    v31 = [configsCopy copy];
    preferredLayoutConfigs = v24->_preferredLayoutConfigs;
    v24->_preferredLayoutConfigs = v31;

    v24->_allowedOnLockscreen = lockscreen;
    v24->_allowedOnHomeScreen = screen;
    v24->_allowedOnSpotlight = spotlight;
    v24->_shouldClearOnEngagement = engagement;
    v24->_predictionReasons = reasons;
    objc_storeStrong(&v24->_contextStartDate, date);
    objc_storeStrong(&v24->_contextEndDate, endDate);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestionUISpecification allocWithZone:zone];
  v5 = [(NSString *)self->_title copy];
  v6 = [(NSString *)self->_subtitle copy];
  v7 = [(NSString *)self->_reason copy];
  v8 = [(NSArray *)self->_preferredLayoutConfigs copy];
  LOWORD(v11) = *&self->_allowedOnSpotlight;
  v9 = [(ATXProactiveSuggestionUISpecification *)v4 initWithTitle:v5 subtitle:v6 predictionReason:v7 preferredLayoutConfigs:v8 allowedOnLockscreen:self->_allowedOnLockscreen allowedOnHomeScreen:self->_allowedOnHomeScreen allowedOnSpotlight:v11 shouldClearOnEngagement:self->_predictionReasons predictionReasons:self->_contextStartDate contextStartDate:self->_contextEndDate contextEndDate:?];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_title;
      v7 = v6;
      if (v6 == v5->_title)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v10 = self->_subtitle;
      v11 = v10;
      if (v10 == v5->_subtitle)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v13 = self->_reason;
      v14 = v13;
      if (v13 == v5->_reason)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v16 = self->_preferredLayoutConfigs;
      v17 = v16;
      if (v16 == v5->_preferredLayoutConfigs)
      {
      }

      else
      {
        v18 = [(NSArray *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (self->_allowedOnLockscreen != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnLockscreen]|| self->_allowedOnHomeScreen != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnHomeScreen]|| self->_allowedOnSpotlight != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnSpotlight]|| self->_shouldClearOnEngagement != [(ATXProactiveSuggestionUISpecification *)v5 shouldClearOnEngagement]|| [(ATXProactiveSuggestionUISpecification *)v5 predictionReasons]!= self->_predictionReasons)
      {
        goto LABEL_28;
      }

      v19 = self->_contextStartDate;
      v20 = v19;
      if (v19 == v5->_contextStartDate)
      {
      }

      else
      {
        v21 = [(NSDate *)v19 isEqual:?];

        if ((v21 & 1) == 0)
        {
LABEL_28:
          v9 = 0;
LABEL_29:

          goto LABEL_30;
        }
      }

      v23 = self->_contextEndDate;
      v24 = v23;
      if (v23 == v5->_contextEndDate)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSDate *)v23 isEqual:?];
      }

      goto LABEL_29;
    }

    v9 = 0;
  }

LABEL_30:

  return v9;
}

- (id)encodeAsProto
{
  proto = [(ATXProactiveSuggestionUISpecification *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestionUISpecification)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionUISpecification alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionUISpecification *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionUISpecification)initWithProto:(id)proto
{
  v34 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      preferredLayoutConfigs = [(ATXPBProactiveSuggestionUISpecification *)v6 preferredLayoutConfigs];
      v9 = [v7 initWithCapacity:{objc_msgSend(preferredLayoutConfigs, "count")}];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      preferredLayoutConfigs2 = [(ATXPBProactiveSuggestionUISpecification *)v6 preferredLayoutConfigs];
      v11 = [preferredLayoutConfigs2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(preferredLayoutConfigs2);
            }

            v15 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithProto:*(*(&v29 + 1) + 8 * i)];
            [v9 addObject:v15];
          }

          v12 = [preferredLayoutConfigs2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v12);
      }

      title = [(ATXPBProactiveSuggestionUISpecification *)v6 title];
      subtitle = [(ATXPBProactiveSuggestionUISpecification *)v6 subtitle];
      reason = [(ATXPBProactiveSuggestionUISpecification *)v6 reason];
      allowedOnLockscreen = [(ATXPBProactiveSuggestionUISpecification *)v6 allowedOnLockscreen];
      allowedOnHomeScreen = [(ATXPBProactiveSuggestionUISpecification *)v6 allowedOnHomeScreen];
      allowedOnSpotlight = [(ATXPBProactiveSuggestionUISpecification *)v6 allowedOnSpotlight];
      shouldClearOnEngagement = [(ATXPBProactiveSuggestionUISpecification *)v6 shouldClearOnEngagement];
      predictionReasons = [(ATXPBProactiveSuggestionUISpecification *)v6 predictionReasons];
      if ([(ATXPBProactiveSuggestionUISpecification *)v6 hasContextStartDate])
      {
        v20 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBProactiveSuggestionUISpecification contextStartDate](v6)];
      }

      else
      {
        v20 = 0;
      }

      if ([(ATXPBProactiveSuggestionUISpecification *)v6 hasContextEndDate])
      {
        v22 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBProactiveSuggestionUISpecification contextEndDate](v6)];
      }

      else
      {
        v22 = 0;
      }

      BYTE1(v24) = shouldClearOnEngagement;
      LOBYTE(v24) = allowedOnSpotlight;
      self = [(ATXProactiveSuggestionUISpecification *)self initWithTitle:title subtitle:subtitle predictionReason:reason preferredLayoutConfigs:v9 allowedOnLockscreen:allowedOnLockscreen allowedOnHomeScreen:allowedOnHomeScreen allowedOnSpotlight:v24 shouldClearOnEngagement:predictionReasons predictionReasons:v20 contextStartDate:v22 contextEndDate:?];

      selfCopy = self;
    }

    else
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestionUISpecification initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!l)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestionUISpecification *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionUISpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionUISpecification *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = @"title";
  v16 = @"subtitle";
  reason = @"nil";
  v23 = vbslq_s8(vceqzq_s64(*&self->_title), vdupq_n_s64(@"nil"), *&self->_title);
  if (self->_reason)
  {
    reason = self->_reason;
  }

  v24 = reason;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{self->_allowedOnLockscreen, v15, v16, @"reason", @"allowedOnLockscreen"}];
  v25 = v4;
  v17 = @"allowedOnHomeScreen";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowedOnHomeScreen];
  v26 = v5;
  v18 = @"allowedOnSpotlight";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowedOnSpotlight];
  v27 = v6;
  v19 = @"shouldClearOnEngagement";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldClearOnEngagement];
  v28 = v7;
  v20 = @"predictionReasons";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_predictionReasons];
  v29 = v8;
  v21 = @"contextStartDate";
  v9 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_contextStartDate timeIntervalSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  v30 = v10;
  v22 = @"contextEndDate";
  v11 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_contextEndDate timeIntervalSinceReferenceDate];
  v12 = [v11 numberWithDouble:?];
  v31 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v15 count:10];

  return v13;
}

- (void)initWithProto:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_1();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v4, v5, "Unable to construct class %@ from ProtoBuf object Protobuf object was of class: %@", v6, v7, v8, v9);
}

@end