@interface FCImageOnTopPremiumHeadlineTemplate
- (FCImageOnTopPremiumHeadlineTemplate)initWithJSONDictionary:(id)dictionary versionNumber:(int64_t)number URLGenerator:(id)generator allowNil:(BOOL)nil;
@end

@implementation FCImageOnTopPremiumHeadlineTemplate

- (FCImageOnTopPremiumHeadlineTemplate)initWithJSONDictionary:(id)dictionary versionNumber:(int64_t)number URLGenerator:(id)generator allowNil:(BOOL)nil
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = FCImageOnTopPremiumHeadlineTemplate;
  v11 = [(FCHeadlineTemplate *)&v20 initWithJSONDictionary:dictionaryCopy versionNumber:number URLGenerator:generator];
  v12 = v11;
  if (v11)
  {
    if (dictionaryCopy)
    {
      if (number == 2)
      {
        v17 = [dictionaryCopy objectForKeyedSubscript:@"templateType"];
        v18 = [v17 isEqualToString:@"Image On Top"];

        if ((v18 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "type == FCHeadlineTemplateTypeImageOnTopPremium"];
          *buf = 136315906;
          v22 = "[FCImageOnTopPremiumHeadlineTemplate initWithJSONDictionary:versionNumber:URLGenerator:allowNil:]";
          v23 = 2080;
          v24 = "FCHeadlineTemplate.m";
          v25 = 1024;
          v26 = 320;
          v27 = 2114;
          v28 = v15;
          v16 = MEMORY[0x1E69E9C10];
          goto LABEL_14;
        }
      }

      else if (number == 1)
      {
        v13 = [dictionaryCopy objectForKeyedSubscript:@"templateType"];
        v14 = [v13 isEqualToString:@"Image On Top"];

        if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "type == FCHeadlineTemplateTypeImageOnTopPremium"];
          *buf = 136315906;
          v22 = "[FCImageOnTopPremiumHeadlineTemplate initWithJSONDictionary:versionNumber:URLGenerator:allowNil:]";
          v23 = 2080;
          v24 = "FCHeadlineTemplate.m";
          v25 = 1024;
          v26 = 314;
          v27 = 2114;
          v28 = v15;
          v16 = MEMORY[0x1E69E9C10];
LABEL_14:
          _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    else if (!nil)
    {

      v12 = 0;
    }
  }

  return v12;
}

@end