@interface CERecommendationRule
- (BOOL)ignoreClientRank;
- (CERecommendationRule)initWithCoder:(id)coder;
- (CERecommendationRule)initWithDictionary:(id)dictionary;
- (CERecommendationStringTemplate)templates;
- (CERuleCriteria)criteria;
- (NSArray)context;
- (NSNumber)lastCompletedTimeStamp;
- (NSNumber)rankingHint;
- (NSString)bundleID;
- (NSString)messageHint;
- (NSString)recommendationID;
- (NSString)titleHint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleID:(id)d;
- (void)setContext:(id)context;
- (void)setCriteria:(id)criteria;
- (void)setIgnoreClientRank:(BOOL)rank;
- (void)setLastCompletedTimeStamp:(id)stamp;
- (void)setMessageHint:(id)hint;
- (void)setRankingHint:(id)hint;
- (void)setRecommendationID:(id)d;
- (void)setTemplates:(id)templates;
- (void)setTitleHint:(id)hint;
@end

@implementation CERecommendationRule

- (CERecommendationRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v62.receiver = self;
  v62.super_class = CERecommendationRule;
  v5 = [(CERecommendationRule *)&v62 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"recommendationID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
      recommendationID = v6->_recommendationID;
      v6->_recommendationID = v9;
    }

    else
    {
      recommendationID = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(recommendationID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    if (v12)
    {
      v13 = v11;
      bundleID = v6->_bundleID;
      v6->_bundleID = v13;
    }

    else
    {
      bundleID = _CELogSystem(v12);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"titleHint"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    if (v16)
    {
      v17 = v15;
      titleHint = v6->_titleHint;
      v6->_titleHint = v17;
    }

    else
    {
      titleHint = _CELogSystem(v16);
      if (os_log_type_enabled(titleHint, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"messageHint"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();
    if (v20)
    {
      v21 = v19;
      messageHint = v6->_messageHint;
      v6->_messageHint = v21;
    }

    else
    {
      messageHint = _CELogSystem(v20);
      if (os_log_type_enabled(messageHint, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"rankingHint"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if (v24)
    {
      v25 = v23;
      p_super = &v6->_rankingHint->super.super;
      v6->_rankingHint = v25;
    }

    else
    {
      p_super = _CELogSystem(v24);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"lastCompletedTimestamp"];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();
    v59 = v27;
    if (v28)
    {
      v29 = v27;
      v30 = &v6->_lastCompletedTimeStamp->super.super;
      v6->_lastCompletedTimeStamp = v29;
    }

    else
    {
      v30 = _CELogSystem(v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClientRank"];
    bOOLValue = [v31 BOOLValue];

    v6->_ignoreClientRank = bOOLValue;
    v33 = [CERuleCriteria alloc];
    v34 = [dictionaryCopy objectForKeyedSubscript:@"criteria"];
    v35 = [(CERuleCriteria *)v33 initWithDictionary:v34];

    objc_opt_class();
    v36 = objc_opt_isKindOfClass();
    v58 = v35;
    if (v36)
    {
      v37 = v35;
      v38 = &v6->_criteria->super;
      v6->_criteria = v37;
    }

    else
    {
      v38 = _CELogSystem(v36);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"templates"];
    v39 = [[CERecommendationStringTemplate alloc] initWithDictionary:v57];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();
    if (v40)
    {
      v41 = v39;
      v42 = &v6->_templates->super;
      v6->_templates = v41;
    }

    else
    {
      v42 = _CELogSystem(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();
    v56 = v39;
    if (v44)
    {
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __43__CERecommendationRule_initWithDictionary___block_invoke;
      v60[3] = &unk_278DE02C0;
      v46 = v45;
      v61 = v46;
      [v43 enumerateObjectsUsingBlock:v60];
      v47 = dictionaryCopy;
      v48 = v23;
      v49 = v19;
      v50 = v15;
      v51 = v11;
      v52 = v7;
      context = v6->_context;
      v6->_context = v46;
      v54 = v46;

      v7 = v52;
      v11 = v51;
      v15 = v50;
      v19 = v49;
      v23 = v48;
      dictionaryCopy = v47;
    }

    else
    {
      v54 = _CELogSystem(v44);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:v6];
      }
    }
  }

  return v6;
}

void __43__CERecommendationRule_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recommendationID = [(CERecommendationRule *)self recommendationID];
  [coderCopy encodeObject:recommendationID forKey:@"recommendationID"];

  bundleID = [(CERecommendationRule *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  titleHint = [(CERecommendationRule *)self titleHint];
  [coderCopy encodeObject:titleHint forKey:@"titleHint"];

  messageHint = [(CERecommendationRule *)self messageHint];
  [coderCopy encodeObject:messageHint forKey:@"messageHint"];

  rankingHint = [(CERecommendationRule *)self rankingHint];
  [coderCopy encodeObject:rankingHint forKey:@"rankingHint"];

  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  [coderCopy encodeObject:lastCompletedTimeStamp forKey:@"lastCompletedTimeStamp"];

  [coderCopy encodeBool:-[CERecommendationRule ignoreClientRank](self forKey:{"ignoreClientRank"), @"ignoreClientRank"}];
  criteria = [(CERecommendationRule *)self criteria];
  [coderCopy encodeObject:criteria forKey:@"criteria"];

  templates = [(CERecommendationRule *)self templates];
  [coderCopy encodeObject:templates forKey:@"templates"];

  context = [(CERecommendationRule *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (CERecommendationRule)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CERecommendationRule;
  v5 = [(CERecommendationRule *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationID"];
    recommendationID = v6->_recommendationID;
    v6->_recommendationID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v6->_bundleID;
    v6->_bundleID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleHint"];
    titleHint = v6->_titleHint;
    v6->_titleHint = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageHint"];
    messageHint = v6->_messageHint;
    v6->_messageHint = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankingHint"];
    rankingHint = v6->_rankingHint;
    v6->_rankingHint = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastCompletedTimeStamp"];
    lastCompletedTimeStamp = v6->_lastCompletedTimeStamp;
    v6->_lastCompletedTimeStamp = v17;

    v6->_ignoreClientRank = [coderCopy decodeBoolForKey:@"ignoreClientRank"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v6->_criteria;
    v6->_criteria = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templates"];
    templates = v6->_templates;
    v6->_templates = v21;

    v23 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v25 = [v23 setWithArray:v24];

    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"context"];
    context = v6->_context;
    v6->_context = v26;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CERecommendationRule allocWithZone:](CERecommendationRule init];
  v5->_lock._os_unfair_lock_opaque = 0;
  recommendationID = [(CERecommendationRule *)self recommendationID];
  [(CERecommendationRule *)v5 setRecommendationID:recommendationID];

  bundleID = [(CERecommendationRule *)self bundleID];
  [(CERecommendationRule *)v5 setBundleID:bundleID];

  titleHint = [(CERecommendationRule *)self titleHint];
  [(CERecommendationRule *)v5 setTitleHint:titleHint];

  messageHint = [(CERecommendationRule *)self messageHint];
  [(CERecommendationRule *)v5 setMessageHint:messageHint];

  rankingHint = [(CERecommendationRule *)self rankingHint];
  [(CERecommendationRule *)v5 setRankingHint:rankingHint];

  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  [(CERecommendationRule *)v5 setLastCompletedTimeStamp:lastCompletedTimeStamp];

  [(CERecommendationRule *)v5 setIgnoreClientRank:[(CERecommendationRule *)self ignoreClientRank]];
  criteria = [(CERecommendationRule *)self criteria];
  v13 = [criteria copyWithZone:zone];
  [(CERecommendationRule *)v5 setCriteria:v13];

  templates = [(CERecommendationRule *)self templates];
  v15 = [templates copyWithZone:zone];
  [(CERecommendationRule *)v5 setTemplates:v15];

  context = [(CERecommendationRule *)self context];
  v17 = [context copyWithZone:zone];
  [(CERecommendationRule *)v5 setContext:v17];

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  recommendationID = [(CERecommendationRule *)self recommendationID];
  bundleID = [(CERecommendationRule *)self bundleID];
  titleHint = [(CERecommendationRule *)self titleHint];
  messageHint = [(CERecommendationRule *)self messageHint];
  rankingHint = [(CERecommendationRule *)self rankingHint];
  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  ignoreClientRank = [(CERecommendationRule *)self ignoreClientRank];
  criteria = [(CERecommendationRule *)self criteria];
  templates = [(CERecommendationRule *)self templates];
  context = [(CERecommendationRule *)self context];
  v13 = [v15 stringWithFormat:@"Recommendation Rule with id: %@, bundleID: %@, titleHint: %@, messageHint: %@, rankingHint: %@, lastCompletedTimestamp: %@, ignoreClientRank: %d, criteria: %@, templates: %@, context: %@", recommendationID, bundleID, titleHint, messageHint, rankingHint, lastCompletedTimeStamp, ignoreClientRank, criteria, templates, context];

  return v13;
}

- (NSString)titleHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_titleHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)messageHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_messageHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)rankingHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_rankingHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)recommendationID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recommendationID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)bundleID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_bundleID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)ignoreClientRank
{
  os_unfair_lock_lock(&self->_lock);
  ignoreClientRank = self->_ignoreClientRank;
  os_unfair_lock_unlock(&self->_lock);
  return ignoreClientRank;
}

- (NSNumber)lastCompletedTimeStamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastCompletedTimeStamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CERuleCriteria)criteria
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_criteria;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CERecommendationStringTemplate)templates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_templates;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTitleHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  titleHint = self->_titleHint;
  self->_titleHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMessageHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  messageHint = self->_messageHint;
  self->_messageHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRankingHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  rankingHint = self->_rankingHint;
  self->_rankingHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRecommendationID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  recommendationID = self->_recommendationID;
  self->_recommendationID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  bundleID = self->_bundleID;
  self->_bundleID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIgnoreClientRank:(BOOL)rank
{
  os_unfair_lock_lock(&self->_lock);
  self->_ignoreClientRank = rank;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLastCompletedTimeStamp:(id)stamp
{
  stampCopy = stamp;
  os_unfair_lock_lock(&self->_lock);
  lastCompletedTimeStamp = self->_lastCompletedTimeStamp;
  self->_lastCompletedTimeStamp = stampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCriteria:(id)criteria
{
  criteriaCopy = criteria;
  os_unfair_lock_lock(&self->_lock);
  criteria = self->_criteria;
  self->_criteria = criteriaCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTemplates:(id)templates
{
  templatesCopy = templates;
  os_unfair_lock_lock(&self->_lock);
  templates = self->_templates;
  self->_templates = templatesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse recommendationID from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse bundleID from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse titleHint from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse messageHint from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse rankingHint from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse lastCompletedTimestamp from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse criteria from dictionary.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse templates dictionary from Recommendation Rule.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.9(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse context array from Recommendation Rule.", v5, v6, v7, v8);
}

@end