@interface CERuleConfiguration
- (CERecommendationInfo)recommendationInfo;
- (CERuleConfiguration)initWithCoder:(id)coder;
- (CERuleConfiguration)initWithDictionary:(id)dictionary;
- (NSArray)ruleset;
- (NSDictionary)thresholds;
- (NSNumber)maxRecommendationsToShow;
- (NSURL)actionURL;
- (NSURL)completedURL;
- (NSURL)dismissURL;
- (NSURL)displayURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)thresholdForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setActionURL:(id)l;
- (void)setCompletedURL:(id)l;
- (void)setDismissURL:(id)l;
- (void)setDisplayURL:(id)l;
- (void)setMaxRecommendationsToShow:(id)show;
- (void)setRecommendationInfo:(id)info;
@end

@implementation CERuleConfiguration

- (CERuleConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = CERuleConfiguration;
  v5 = [(CERuleConfiguration *)&v48 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"displayUrl"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v44 = v7;
    if (isKindOfClass)
    {
      v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      p_super = &v6->_displayURL->super;
      v6->_displayURL = v9;
    }

    else
    {
      p_super = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"dismissUrl"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    v43 = v11;
    if (v12)
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:{v11, v11, v44}];
      v14 = &v6->_dismissURL->super;
      v6->_dismissURL = v13;
    }

    else
    {
      v14 = _CELogSystem(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"actionUrl"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    if (v16)
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v15];
      v18 = &v6->_actionURL->super;
      v6->_actionURL = v17;
    }

    else
    {
      v18 = _CELogSystem(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CERuleConfiguration *)v6 initWithDictionary:v18];
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"completedUrl"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();
    if (v20)
    {
      v21 = [MEMORY[0x277CBEBC0] URLWithString:v19];
      v22 = &v6->_completedURL->super;
      v6->_completedURL = v21;
    }

    else
    {
      v22 = _CELogSystem(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"maxTipsShown"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if (v24)
    {
      v25 = v23;
      v26 = &v6->_maxRecommendationsToShow->super.super;
      v6->_maxRecommendationsToShow = v25;
    }

    else
    {
      v26 = _CELogSystem(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"thresholds"];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();
    if (v28)
    {
      v29 = v27;
      v30 = &v6->_thresholds->super;
      v6->_thresholds = v29;
    }

    else
    {
      v30 = _CELogSystem(v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"recommendationsInfo"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    if (v32)
    {
      v33 = [[CERecommendationInfo alloc] initWithDictionary:v31];
      v34 = &v6->_recommendationInfo->super;
      v6->_recommendationInfo = v33;
    }

    else
    {
      v34 = _CELogSystem(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:v6];
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"ruleset"];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();
    if (v36)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __42__CERuleConfiguration_initWithDictionary___block_invoke;
      v45[3] = &unk_278DE0560;
      v38 = v6;
      v46 = v38;
      v47 = v37;
      v39 = v37;
      [v35 enumerateObjectsUsingBlock:v45];
      v40 = [v39 copy];
      ruleset = v38->_ruleset;
      v38->_ruleset = v40;
    }

    else
    {
      v39 = _CELogSystem(v36);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [(CERuleConfiguration *)v6 initWithDictionary:v35];
      }
    }
  }

  return v6;
}

void __42__CERuleConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    v6 = [[CERuleset alloc] initWithDictionary:v5];

    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v6 = _CELogSystem(isKindOfClass);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      __42__CERuleConfiguration_initWithDictionary___block_invoke_cold_1(a1, v3);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayURL = [(CERuleConfiguration *)self displayURL];
  [coderCopy encodeObject:displayURL forKey:@"displayURL"];

  dismissURL = [(CERuleConfiguration *)self dismissURL];
  [coderCopy encodeObject:dismissURL forKey:@"dismissURL"];

  completedURL = [(CERuleConfiguration *)self completedURL];
  [coderCopy encodeObject:completedURL forKey:@"completedURL"];

  actionURL = [(CERuleConfiguration *)self actionURL];
  [coderCopy encodeObject:actionURL forKey:@"actionURL"];

  maxRecommendationsToShow = [(CERuleConfiguration *)self maxRecommendationsToShow];
  [coderCopy encodeObject:maxRecommendationsToShow forKey:@"maxRecommendationsToShow"];

  thresholds = [(CERuleConfiguration *)self thresholds];
  [coderCopy encodeObject:thresholds forKey:@"thresholds"];

  ruleset = [(CERuleConfiguration *)self ruleset];
  [coderCopy encodeObject:ruleset forKey:@"ruleset"];

  recommendationInfo = [(CERuleConfiguration *)self recommendationInfo];
  [coderCopy encodeObject:recommendationInfo forKey:@"recommendationsInfo"];
}

- (CERuleConfiguration)initWithCoder:(id)coder
{
  v32[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CERuleConfiguration;
  v5 = [(CERuleConfiguration *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayURL"];
    displayURL = v6->_displayURL;
    v6->_displayURL = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissURL"];
    dismissURL = v6->_dismissURL;
    v6->_dismissURL = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completedURL"];
    completedURL = v6->_completedURL;
    v6->_completedURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v6->_actionURL;
    v6->_actionURL = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxRecommendationsToShow"];
    maxRecommendationsToShow = v6->_maxRecommendationsToShow;
    v6->_maxRecommendationsToShow = v15;

    v17 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v19 = [v17 setWithArray:v18];

    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"thresholds"];
    thresholds = v6->_thresholds;
    v6->_thresholds = v20;

    v22 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v24 = [v22 setWithArray:v23];

    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"ruleset"];
    ruleset = v6->_ruleset;
    v6->_ruleset = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationsInfo"];
    recommendationInfo = v6->_recommendationInfo;
    v6->_recommendationInfo = v27;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CERuleConfiguration allocWithZone:](CERuleConfiguration init];
  v5->_lock._os_unfair_lock_opaque = 0;
  displayURL = [(CERuleConfiguration *)self displayURL];
  [(CERuleConfiguration *)v5 setDisplayURL:displayURL];

  dismissURL = [(CERuleConfiguration *)self dismissURL];
  [(CERuleConfiguration *)v5 setDismissURL:dismissURL];

  completedURL = [(CERuleConfiguration *)self completedURL];
  [(CERuleConfiguration *)v5 setCompletedURL:completedURL];

  actionURL = [(CERuleConfiguration *)self actionURL];
  [(CERuleConfiguration *)v5 setActionURL:actionURL];

  maxRecommendationsToShow = [(CERuleConfiguration *)self maxRecommendationsToShow];
  [(CERuleConfiguration *)v5 setMaxRecommendationsToShow:maxRecommendationsToShow];

  recommendationInfo = [(CERuleConfiguration *)self recommendationInfo];
  [(CERuleConfiguration *)v5 setRecommendationInfo:recommendationInfo];

  os_unfair_lock_lock(&v5->_lock);
  thresholds = [(CERuleConfiguration *)self thresholds];
  thresholds = v5->_thresholds;
  v5->_thresholds = thresholds;

  ruleset = [(CERuleConfiguration *)self ruleset];
  v15 = [ruleset copyWithZone:zone];
  ruleset = v5->_ruleset;
  v5->_ruleset = v15;

  os_unfair_lock_unlock(&v5->_lock);
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  displayURL = [(CERuleConfiguration *)self displayURL];
  dismissURL = [(CERuleConfiguration *)self dismissURL];
  completedURL = [(CERuleConfiguration *)self completedURL];
  actionURL = [(CERuleConfiguration *)self actionURL];
  maxRecommendationsToShow = [(CERuleConfiguration *)self maxRecommendationsToShow];
  thresholds = [(CERuleConfiguration *)self thresholds];
  ruleset = [(CERuleConfiguration *)self ruleset];
  recommendationInfo = [(CERuleConfiguration *)self recommendationInfo];
  v12 = [v3 stringWithFormat:@"Rule configuration with displayURL: %@, dismissURL: %@, completedURL: %@, actionURL: %@, maxRecommendations: %@, thresholds: %@, ruleset: %@, recommendationInfo: %@", displayURL, dismissURL, completedURL, actionURL, maxRecommendationsToShow, thresholds, ruleset, recommendationInfo];

  return v12;
}

- (NSURL)displayURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)dismissURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dismissURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)completedURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_completedURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)actionURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_actionURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)maxRecommendationsToShow
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_maxRecommendationsToShow;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)thresholds
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_thresholds;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)ruleset
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_ruleset copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)thresholdForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_thresholds valueForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (CERecommendationInfo)recommendationInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recommendationInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDisplayURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  displayURL = self->_displayURL;
  self->_displayURL = lCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDismissURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  dismissURL = self->_dismissURL;
  self->_dismissURL = lCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCompletedURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  completedURL = self->_completedURL;
  self->_completedURL = lCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActionURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  actionURL = self->_actionURL;
  self->_actionURL = lCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaxRecommendationsToShow:(id)show
{
  showCopy = show;
  os_unfair_lock_lock(&self->_lock);
  maxRecommendationsToShow = self->_maxRecommendationsToShow;
  self->_maxRecommendationsToShow = showCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRecommendationInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  recommendationInfo = self->_recommendationInfo;
  self->_recommendationInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1(v3);
  _os_log_error_impl(&dword_2439E1000, a2, OS_LOG_TYPE_ERROR, "%@ Unable to parse actionURL from dictionary", v5, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __42__CERuleConfiguration_initWithDictionary___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end