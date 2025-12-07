@interface CERecommendationPage
- (CERecommendationPage)initWithCoder:(id)coder;
- (CERecommendationPage)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationPage

- (CERecommendationPage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CERecommendationPage;
  v5 = [(CERecommendationPage *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pageTitle"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      title = v5->_title;
      v5->_title = v8;
    }

    else
    {
      title = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(title, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:v5];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pageSubtitle"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v12 = v10;
      subTitle = v5->_subTitle;
      v5->_subTitle = v12;
    }

    else
    {
      subTitle = _CELogSystem(v11);
      if (os_log_type_enabled(subTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:v5];
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = [[CEImageIcon alloc] initWithDictionary:v14];
      p_super = &v5->_icon->super.super;
      v5->_icon = v16;
    }

    else
    {
      p_super = _CELogSystem(v15);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subTitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
}

- (CERecommendationPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CERecommendationPage;
  v5 = [(CERecommendationPage *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERecommendationPage allocWithZone:?]];
  [(CERecommendationPage *)v4 setTitle:self->_title];
  [(CERecommendationPage *)v4 setSubTitle:self->_subTitle];
  [(CERecommendationPage *)v4 setIcon:self->_icon];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse title from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse subtitle from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse icon from dictionary", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end