@interface CERecommendationAction
- (CERecommendationAction)initWithCoder:(id)coder;
- (CERecommendationAction)initWithDictionary:(id)dictionary;
- (CERecommendationAction)initWithIdentifier:(id)identifier actionTitle:(id)title actionType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationAction

- (CERecommendationAction)initWithIdentifier:(id)identifier actionTitle:(id)title actionType:(id)type
{
  identifierCopy = identifier;
  titleCopy = title;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = CERecommendationAction;
  v12 = [(CERecommendationAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionIdentifier, identifier);
    objc_storeStrong(&v13->_actionTitle, title);
    objc_storeStrong(&v13->_actionType, type);
  }

  return v13;
}

- (CERecommendationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CERecommendationAction;
  v5 = [(CERecommendationAction *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      actionIdentifier = v5->_actionIdentifier;
      v5->_actionIdentifier = v8;
    }

    else
    {
      actionIdentifier = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(actionIdentifier, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:v5];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v12 = v10;
      actionTitle = v5->_actionTitle;
      v5->_actionTitle = v12;
    }

    else
    {
      actionTitle = _CELogSystem(v11);
      if (os_log_type_enabled(actionTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:v5];
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = v14;
      actionType = v5->_actionType;
      v5->_actionType = v16;
    }

    else
    {
      actionType = _CELogSystem(v15);
      if (os_log_type_enabled(actionType, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actionIdentifier = self->_actionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeObject:self->_actionTitle forKey:@"actionTitle"];
  [coderCopy encodeObject:self->_actionType forKey:@"actionType"];
}

- (CERecommendationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CERecommendationAction;
  v5 = [(CERecommendationAction *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
    actionTitle = v5->_actionTitle;
    v5->_actionTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERecommendationAction allocWithZone:?]];
  [(CERecommendationAction *)v4 setActionIdentifier:self->_actionIdentifier];
  [(CERecommendationAction *)v4 setActionTitle:self->_actionTitle];
  [(CERecommendationAction *)v4 setActionType:self->_actionType];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse actionIdentifier from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse actionTitle from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse actionType from dictionary", v5, v6, v7, v8);
}

@end