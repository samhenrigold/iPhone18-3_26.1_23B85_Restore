@interface CERuleset
- (BOOL)ignoreClientSectionRank;
- (CERuleset)initWithCoder:(id)coder;
- (CERuleset)initWithDictionary:(id)dictionary;
- (NSArray)context;
- (NSArray)recommendationRules;
- (NSNumber)maxRecommendations;
- (NSString)sectionID;
- (NSString)userType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setIgnoreClientSectionRank:(BOOL)rank;
- (void)setMaxRecommendations:(id)recommendations;
- (void)setSectionID:(id)d;
- (void)setUserType:(id)type;
- (void)sortRecommendationRulesUsingComparator:(id)comparator;
@end

@implementation CERuleset

- (CERuleset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = CERuleset;
  v5 = [(CERuleset *)&v38 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"sectionID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
      sectionID = v6->_sectionID;
      v6->_sectionID = v9;
    }

    else
    {
      sectionID = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(sectionID, OS_LOG_TYPE_DEBUG))
      {
        [CERuleset initWithDictionary:v6];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"maxRecommendations"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    if (v12)
    {
      v13 = v11;
      p_super = &v6->_maxRecommendations->super.super;
      v6->_maxRecommendations = v13;
    }

    else
    {
      p_super = _CELogSystem(v12);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERuleset initWithDictionary:v6];
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClientSectionRank"];
    bOOLValue = [v15 BOOLValue];

    v6->_ignoreClientSectionRank = bOOLValue;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __32__CERuleset_initWithDictionary___block_invoke;
      v36[3] = &unk_278DE02C0;
      v20 = v19;
      v37 = v20;
      [v17 enumerateObjectsUsingBlock:v36];
      context = v6->_context;
      v6->_context = v20;
      v22 = v20;
    }

    else
    {
      v22 = _CELogSystem(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [CERuleset initWithDictionary:v6];
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"recommendations"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __32__CERuleset_initWithDictionary___block_invoke_20;
      v34[3] = &unk_278DE02C0;
      v26 = v25;
      v35 = v26;
      [v23 enumerateObjectsUsingBlock:v34];
      recommendationRules = v6->_recommendationRules;
      v6->_recommendationRules = v26;
      v28 = v26;
    }

    else
    {
      v28 = _CELogSystem(v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [CERuleset initWithDictionary:v6];
      }
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"userType"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    if (v30)
    {
      v31 = v29;
      userType = v6->_userType;
      v6->_userType = v31;
    }

    else
    {
      userType = _CELogSystem(v30);
      if (os_log_type_enabled(userType, OS_LOG_TYPE_DEBUG))
      {
        [CERuleset initWithDictionary:v6];
      }
    }
  }

  return v6;
}

void __32__CERuleset_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __32__CERuleset_initWithDictionary___block_invoke_20(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[CERecommendationRule alloc] initWithDictionary:v4];
    [*(a1 + 32) addObject:v3];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionID = [(CERuleset *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  maxRecommendations = [(CERuleset *)self maxRecommendations];
  [coderCopy encodeObject:maxRecommendations forKey:@"maxRecommendations"];

  [coderCopy encodeBool:-[CERuleset ignoreClientSectionRank](self forKey:{"ignoreClientSectionRank"), @"ignoreClientSectionRank"}];
  context = [(CERuleset *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  recommendationRules = [(CERuleset *)self recommendationRules];
  [coderCopy encodeObject:recommendationRules forKey:@"recommendationRules"];

  userType = [(CERuleset *)self userType];
  [coderCopy encodeObject:userType forKey:@"userType"];
}

- (CERuleset)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CERuleset;
  v5 = [(CERuleset *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    sectionID = v6->_sectionID;
    v6->_sectionID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxRecommendations"];
    maxRecommendations = v6->_maxRecommendations;
    v6->_maxRecommendations = v9;

    v6->_ignoreClientSectionRank = [coderCopy decodeBoolForKey:@"ignoreClientSectionRank"];
    v11 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"context"];
    context = v6->_context;
    v6->_context = v14;

    v16 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"recommendationRules"];
    recommendationRules = v6->_recommendationRules;
    v6->_recommendationRules = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userType"];
    userType = v6->_userType;
    v6->_userType = v21;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CERuleset allocWithZone:](CERuleset init];
  v5->_lock._os_unfair_lock_opaque = 0;
  sectionID = [(CERuleset *)self sectionID];
  [(CERuleset *)v5 setSectionID:sectionID];

  maxRecommendations = [(CERuleset *)self maxRecommendations];
  [(CERuleset *)v5 setMaxRecommendations:maxRecommendations];

  [(CERuleset *)v5 setIgnoreClientSectionRank:[(CERuleset *)self ignoreClientSectionRank]];
  userType = [(CERuleset *)self userType];
  [(CERuleset *)v5 setUserType:userType];

  os_unfair_lock_lock(&v5->_lock);
  context = [(CERuleset *)self context];
  context = v5->_context;
  v5->_context = context;

  recommendationRules = [(CERuleset *)self recommendationRules];
  v12 = [recommendationRules copyWithZone:zone];
  recommendationRules = v5->_recommendationRules;
  v5->_recommendationRules = v12;

  os_unfair_lock_unlock(&v5->_lock);
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sectionID = [(CERuleset *)self sectionID];
  maxRecommendations = [(CERuleset *)self maxRecommendations];
  ignoreClientSectionRank = [(CERuleset *)self ignoreClientSectionRank];
  context = [(CERuleset *)self context];
  recommendationRules = [(CERuleset *)self recommendationRules];
  userType = [(CERuleset *)self userType];
  v10 = [v3 stringWithFormat:@"Ruleset with sectionID: %@, maxRecommendations: %@, ignoreClientSectionRank: %d, context: %@, rules: %@, userType: %@", sectionID, maxRecommendations, ignoreClientSectionRank, context, recommendationRules, userType];

  return v10;
}

- (NSString)sectionID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sectionID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)maxRecommendations
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_maxRecommendations;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)ignoreClientSectionRank
{
  os_unfair_lock_lock(&self->_lock);
  ignoreClientSectionRank = self->_ignoreClientSectionRank;
  os_unfair_lock_unlock(&self->_lock);
  return ignoreClientSectionRank;
}

- (NSArray)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_context copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)userType
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)recommendationRules
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_recommendationRules copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSectionID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  sectionID = self->_sectionID;
  self->_sectionID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaxRecommendations:(id)recommendations
{
  recommendationsCopy = recommendations;
  os_unfair_lock_lock(&self->_lock);
  maxRecommendations = self->_maxRecommendations;
  self->_maxRecommendations = recommendationsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIgnoreClientSectionRank:(BOOL)rank
{
  os_unfair_lock_lock(&self->_lock);
  self->_ignoreClientSectionRank = rank;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUserType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  userType = self->_userType;
  self->_userType = typeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sortRecommendationRulesUsingComparator:(id)comparator
{
  comparatorCopy = comparator;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSArray *)self->_recommendationRules sortedArrayUsingComparator:comparatorCopy];

  recommendationRules = self->_recommendationRules;
  self->_recommendationRules = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse sectionID from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse maxRecommendations from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse context from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse rules from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse userType from dictionary", v5, v6, v7, v8);
}

@end