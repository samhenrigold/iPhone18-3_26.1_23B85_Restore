@interface CERecommendationInfo
- (CERecommendationInfo)initWithCoder:(id)coder;
- (CERecommendationInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationInfo

- (CERecommendationInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = CERecommendationInfo;
  v5 = [(CERecommendationInfo *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      recommendationSpecifierTitle = v5->_recommendationSpecifierTitle;
      v5->_recommendationSpecifierTitle = v8;
    }

    else
    {
      recommendationSpecifierTitle = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(recommendationSpecifierTitle, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v12 = v10;
      recommendationSpecifierSubtitle = v5->_recommendationSpecifierSubtitle;
      v5->_recommendationSpecifierSubtitle = v12;
    }

    else
    {
      recommendationSpecifierSubtitle = _CELogSystem(v11);
      if (os_log_type_enabled(recommendationSpecifierSubtitle, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"recommendationsUrl"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] URLWithString:v14];
      if (v16)
      {
        objc_storeStrong(&v5->_serverRecommendationsURL, v16);
      }
    }

    else
    {
      v16 = _CELogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"recommendationRulesUrl"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = [MEMORY[0x277CBEBC0] URLWithString:v17];
      if (v19)
      {
        objc_storeStrong(&v5->_serverRulesURL, v19);
      }
    }

    else
    {
      v19 = _CELogSystem(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"completedRecommendationsUrl"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    if (v21)
    {
      v22 = [MEMORY[0x277CBEBC0] URLWithString:v20];
      if (v22)
      {
        objc_storeStrong(&v5->_completedRecommendationsURL, v22);
      }
    }

    else
    {
      v22 = _CELogSystem(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"subtitleTemplates"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if (v24)
    {
      v25 = v23;
      p_super = &v5->_subtitleTemplates->super;
      v5->_subtitleTemplates = v25;
    }

    else
    {
      p_super = _CELogSystem(v24);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CERecommendationInfo);
  [(CERecommendationInfo *)v4 setRecommendationSpecifierTitle:self->_recommendationSpecifierTitle];
  [(CERecommendationInfo *)v4 setRecommendationSpecifierSubtitle:self->_recommendationSpecifierSubtitle];
  [(CERecommendationInfo *)v4 setServerRecommendationsURL:self->_serverRecommendationsURL];
  [(CERecommendationInfo *)v4 setServerRulesURL:self->_serverRulesURL];
  [(CERecommendationInfo *)v4 setCompletedRecommendationsURL:self->_completedRecommendationsURL];
  [(CERecommendationInfo *)v4 setSubtitleTemplates:self->_subtitleTemplates];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  recommendationSpecifierTitle = self->_recommendationSpecifierTitle;
  coderCopy = coder;
  [coderCopy encodeObject:recommendationSpecifierTitle forKey:@"title"];
  [coderCopy encodeObject:self->_recommendationSpecifierSubtitle forKey:@"message"];
  [coderCopy encodeObject:self->_serverRecommendationsURL forKey:@"recommendationsUrl"];
  [coderCopy encodeObject:self->_serverRulesURL forKey:@"recommendationRulesUrl"];
  [coderCopy encodeObject:self->_completedRecommendationsURL forKey:@"completedRecommendationsUrl"];
  [coderCopy encodeObject:self->_subtitleTemplates forKey:@"subtitleTemplates"];
}

- (CERecommendationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CERecommendationInfo;
  v5 = [(CERecommendationInfo *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    recommendationSpecifierTitle = v5->_recommendationSpecifierTitle;
    v5->_recommendationSpecifierTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    recommendationSpecifierSubtitle = v5->_recommendationSpecifierSubtitle;
    v5->_recommendationSpecifierSubtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationsUrl"];
    serverRecommendationsURL = v5->_serverRecommendationsURL;
    v5->_serverRecommendationsURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationRulesUrl"];
    serverRulesURL = v5->_serverRulesURL;
    v5->_serverRulesURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completedRecommendationsUrl"];
    completedRecommendationsURL = v5->_completedRecommendationsURL;
    v5->_completedRecommendationsURL = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy decodeDictionaryWithKeysOfClass:v16 objectsOfClass:objc_opt_class() forKey:@"subtitleTemplates"];
    subtitleTemplates = v5->_subtitleTemplates;
    v5->_subtitleTemplates = v17;
  }

  return v5;
}

@end