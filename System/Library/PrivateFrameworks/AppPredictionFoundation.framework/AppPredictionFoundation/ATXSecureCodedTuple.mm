@interface ATXSecureCodedTuple
+ (id)allowedClassNames;
- (ATXSecureCodedTuple)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSecureCodedTuple

+ (id)allowedClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"INSendMessageIntent", @"ATXProactiveSuggestionUIFeedbackSession", @"ATXUIFeedbackSessionContext", @"ATXPartialIntentHandlingContext", @"ATXUnifiedInferredActivityTransition", @"ATXUserNotificationLoggingEvent", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(_PASTuple2 *)self first];
  [coderCopy encodeObject:first forKey:@"first"];

  first2 = [(_PASTuple2 *)self first];

  if (first2)
  {
    first3 = [(_PASTuple2 *)self first];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);

    [coderCopy encodeObject:v8 forKey:@"firstCls"];
  }

  second = [(_PASTuple2 *)self second];
  [coderCopy encodeObject:second forKey:@"second"];

  second2 = [(_PASTuple2 *)self second];

  if (second2)
  {
    second3 = [(_PASTuple2 *)self second];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);

    [coderCopy encodeObject:v13 forKey:@"secondCls"];
  }
}

- (ATXSecureCodedTuple)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"firstCls" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (!error)
  {
    if (v8 && ([objc_opt_class() allowedClassNames], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v8), v11, v12))
    {
      v13 = NSClassFromString(v8);
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x277D42620];
        v16 = __atxlog_handle_default(v13);
        v14 = [v15 robustDecodeObjectOfClass:v14 forKey:@"first" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v16];

        if (!v14 || ([coderCopy error], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
        {
          selfCopy = 0;
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = MEMORY[0x277D42620];
    v19 = objc_opt_class();
    v20 = __atxlog_handle_default(v19);
    v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"secondCls" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v20];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
LABEL_21:

      goto LABEL_22;
    }

    if (v21 && ([objc_opt_class() allowedClassNames], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "containsObject:", v21), v23, v24))
    {
      v25 = NSClassFromString(v21);
      v26 = v25;
      if (v25)
      {
        v27 = MEMORY[0x277D42620];
        v28 = __atxlog_handle_default(v25);
        v26 = [v27 robustDecodeObjectOfClass:v26 forKey:@"second" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v28];

        if (!v26 || ([coderCopy error], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
          selfCopy = 0;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    self = [(_PASTuple2 *)self initWithFirst:v14 second:v26];
    selfCopy = self;
    goto LABEL_20;
  }

  selfCopy = 0;
LABEL_23:

  return selfCopy;
}

@end