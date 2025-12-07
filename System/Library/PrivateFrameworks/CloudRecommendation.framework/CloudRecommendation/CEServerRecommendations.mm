@interface CEServerRecommendations
- (CEServerRecommendations)initWithCoder:(id)coder;
- (CEServerRecommendations)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEServerRecommendations

- (CEServerRecommendations)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = CEServerRecommendations;
  v5 = [(CEServerRecommendations *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recommendations"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __46__CEServerRecommendations_initWithDictionary___block_invoke;
      v30[3] = &unk_278DE02C0;
      v31 = v8;
      v9 = v8;
      [v6 enumerateObjectsUsingBlock:v30];
      v10 = [v9 copy];
      recommendations = v5->_recommendations;
      v5->_recommendations = v10;
    }

    else
    {
      v9 = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(CEServerRecommendations *)v5 initWithDictionary:v6];
      }
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    if (v13)
    {
      v14 = [v12 objectForKeyedSubscript:@"sectionDetails"];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if (v15)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __46__CEServerRecommendations_initWithDictionary___block_invoke_23;
        v28 = &unk_278DE02C0;
        v29 = v16;
        v17 = v16;
        [v14 enumerateObjectsUsingBlock:&v25];
        v18 = [v17 copy:v25];
        sections = v5->_sections;
        v5->_sections = v18;
      }

      else
      {
        v17 = _CELogSystem(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(CEServerRecommendations *)v5 initWithDictionary:v14];
        }
      }

      v20 = [v12 objectForKeyedSubscript:@"sectionHeader"];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();
      if (v21)
      {
        v22 = [[CERecommendationPage alloc] initWithDictionary:v20];
        p_super = &v5->_page->super;
        v5->_page = v22;
      }

      else
      {
        p_super = _CELogSystem(v21);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          [CEServerRecommendations initWithDictionary:v5];
        }
      }
    }

    else
    {
      v14 = _CELogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(CEServerRecommendations *)v5 initWithDictionary:v12];
      }
    }
  }

  return v5;
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    v6 = [[CERecommendation alloc] initWithDictionary:v5];

    [*(a1 + 32) addObject:v6];
  }

  else
  {
    v7 = _CELogSystem(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__CEServerRecommendations_initWithDictionary___block_invoke_cold_1(v3);
    }
  }
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    v6 = [[CERecommendationSection alloc] initWithDictionary:v5];

    [*(a1 + 32) addObject:v6];
  }

  else
  {
    v7 = _CELogSystem(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__CEServerRecommendations_initWithDictionary___block_invoke_23_cold_1(v3);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  recommendations = self->_recommendations;
  coderCopy = coder;
  [coderCopy encodeObject:recommendations forKey:@"recommendations"];
  [coderCopy encodeObject:self->_sections forKey:@"sections"];
  [coderCopy encodeObject:self->_page forKey:@"page"];
}

- (CEServerRecommendations)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CEServerRecommendations;
  v5 = [(CEServerRecommendations *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recommendations"];
    recommendations = v5->_recommendations;
    v5->_recommendations = v9;

    v11 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"page"];
    page = v5->_page;
    v5->_page = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CEServerRecommendations allocWithZone:?]];
  [(CEServerRecommendations *)v4 setRecommendations:self->_recommendations];
  [(CEServerRecommendations *)v4 setSections:self->_sections];
  [(CEServerRecommendations *)v4 setPage:self->_page];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v2, v3, "Expected recommendation object to be a dictionary, instead found a %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_23_cold_1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v2, v3, "Expected section object to be a dictionary, instead found a %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end