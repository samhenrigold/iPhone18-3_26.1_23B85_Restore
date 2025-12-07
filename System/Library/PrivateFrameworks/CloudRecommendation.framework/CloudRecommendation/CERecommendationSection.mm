@interface CERecommendationSection
- (CERecommendationSection)initWithCoder:(id)coder;
- (CERecommendationSection)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationSection

- (CERecommendationSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CERecommendationSection;
  v5 = [(CERecommendationSection *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sectionID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      sectionID = v5->_sectionID;
      v5->_sectionID = v8;
    }

    else
    {
      sectionID = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(sectionID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationSection initWithDictionary:v5];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sectionHeader"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v12 = v10;
      sectionHeader = v5->_sectionHeader;
      v5->_sectionHeader = v12;
    }

    else
    {
      sectionHeader = _CELogSystem(v11);
      if (os_log_type_enabled(sectionHeader, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationSection initWithDictionary:v5];
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sectionFooter"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = v14;
      sectionFooter = v5->_sectionFooter;
      v5->_sectionFooter = v16;
    }

    else
    {
      sectionFooter = _CELogSystem(v15);
      if (os_log_type_enabled(sectionFooter, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationSection initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sectionID = self->_sectionID;
  coderCopy = coder;
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];
  [coderCopy encodeObject:self->_sectionHeader forKey:@"sectionHeader"];
  [coderCopy encodeObject:self->_sectionFooter forKey:@"sectionFooter"];
}

- (CERecommendationSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CERecommendationSection;
  v5 = [(CERecommendationSection *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    sectionID = v5->_sectionID;
    v5->_sectionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERecommendationSection allocWithZone:?]];
  [(CERecommendationSection *)v4 setSectionID:self->_sectionID];
  [(CERecommendationSection *)v4 setSectionHeader:self->_sectionHeader];
  [(CERecommendationSection *)v4 setSectionFooter:self->_sectionFooter];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse sectionID from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse sectionHeader from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse sectionFooter from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end