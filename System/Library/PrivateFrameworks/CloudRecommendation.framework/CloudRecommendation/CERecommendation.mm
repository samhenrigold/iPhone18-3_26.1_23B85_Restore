@interface CERecommendation
- (CERecommendation)initWithCoder:(id)coder;
- (CERecommendation)initWithDictionary:(id)dictionary;
- (CERecommendation)initWithIdentifier:(id)identifier title:(id)title message:(id)message bundleID:(id)d storageRecoverable:(id)recoverable category:(id)category actions:(id)actions;
- (CERecommendation)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle message:(id)message bundleID:(id)d storageRecoverable:(id)recoverable category:(id)category actions:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)parseActions:(id)actions;
@end

@implementation CERecommendation

- (CERecommendation)initWithIdentifier:(id)identifier title:(id)title message:(id)message bundleID:(id)d storageRecoverable:(id)recoverable category:(id)category actions:(id)actions
{
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  dCopy = d;
  recoverableCopy = recoverable;
  categoryCopy = category;
  actionsCopy = actions;
  v28.receiver = self;
  v28.super_class = CERecommendation;
  v18 = [(CERecommendation *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_title, title);
    subTitle = v19->_subTitle;
    v19->_subTitle = &stru_2856B3060;

    objc_storeStrong(&v19->_message, message);
    objc_storeStrong(&v19->_bundleID, d);
    objc_storeStrong(&v19->_storageRecoverable, recoverable);
    objc_storeStrong(&v19->_category, category);
    objc_storeStrong(&v19->_actions, actions);
    v19->_completed = 0;
    status = v19->_status;
    v19->_status = 0;
  }

  return v19;
}

- (CERecommendation)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle message:(id)message bundleID:(id)d storageRecoverable:(id)recoverable category:(id)category actions:(id)self0
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  dCopy = d;
  recoverableCopy = recoverable;
  categoryCopy = category;
  actionsCopy = actions;
  v29.receiver = self;
  v29.super_class = CERecommendation;
  v18 = [(CERecommendation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_subTitle, subtitle);
    objc_storeStrong(&v19->_message, message);
    objc_storeStrong(&v19->_bundleID, d);
    objc_storeStrong(&v19->_storageRecoverable, recoverable);
    objc_storeStrong(&v19->_category, category);
    objc_storeStrong(&v19->_actions, actions);
    v19->_completed = 0;
    status = v19->_status;
    v19->_status = 0;
  }

  return v19;
}

- (CERecommendation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v59.receiver = self;
  v59.super_class = CERecommendation;
  v5 = [(CERecommendation *)&v59 init];
  v6 = v5;
  if (v5)
  {
    v5->_completed = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
      identifier = v6->_identifier;
      v6->_identifier = v9;
    }

    else
    {
      identifier = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    if (v12)
    {
      v13 = v11;
      title = v6->_title;
      v6->_title = v13;
    }

    else
    {
      title = _CELogSystem(v12);
      if (os_log_type_enabled(title, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    if (v16)
    {
      v17 = v15;
      subTitle = v6->_subTitle;
      v6->_subTitle = v17;
    }

    else
    {
      subTitle = _CELogSystem(v16);
      if (os_log_type_enabled(subTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();
    v58 = v19;
    if (v20)
    {
      v21 = v19;
      message = v6->_message;
      v6->_message = v21;
    }

    else
    {
      message = _CELogSystem(v20);
      if (os_log_type_enabled(message, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    v57 = v23;
    if (v24)
    {
      v25 = v23;
      bundleID = v6->_bundleID;
      v6->_bundleID = v25;
    }

    else
    {
      bundleID = _CELogSystem(v24);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"storageRecoverable"];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();
    v56 = v27;
    if (v28)
    {
      v29 = v27;
      p_super = &v6->_storageRecoverable->super.super;
      v6->_storageRecoverable = v29;
    }

    else
    {
      p_super = _CELogSystem(v28);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    v55 = v31;
    if (v32)
    {
      v33 = v31;
      category = v6->_category;
      v6->_category = v33;
    }

    else
    {
      category = _CELogSystem(v32);
      if (os_log_type_enabled(category, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"actions"];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();
    if (v36)
    {
      [(CERecommendation *)v6 parseActions:v35];
    }

    else
    {
      v37 = _CELogSystem(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();
    if (v39)
    {
      v40 = v38;
      status = v6->_status;
      v6->_status = v40;
    }

    else
    {
      status = _CELogSystem(v39);
      if (os_log_type_enabled(status, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:v6];
      }
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();
    if ((v43 & 1) == 0)
    {
      v51 = _CELogSystem(v43);
      if (os_log_type_enabled(&v51->super.super, OS_LOG_TYPE_ERROR))
      {
        [CERecommendation initWithDictionary:v6];
      }

      goto LABEL_50;
    }

    v53 = v15;
    v54 = v7;
    v44 = v11;
    v45 = [v42 objectForKeyedSubscript:@"type"];
    v46 = [v45 isEqualToString:@"IMAGE"];

    v47 = [v42 objectForKeyedSubscript:@"type"];
    v48 = [v47 isEqualToString:@"SF_SYMBOL"];

    v49 = [v42 objectForKeyedSubscript:@"type"];
    v50 = [v49 isEqualToString:@"GRAPHIC_ICON"];

    if (v46)
    {
      v51 = [[CEImageIcon alloc] initWithDictionary:v42];
      v11 = v44;
      if (v51)
      {
        objc_storeStrong(&v6->_icon, v51);
      }

      v7 = v54;
    }

    else
    {
      v11 = v44;
      if (!v48)
      {
        v15 = v53;
        v7 = v54;
        if (!v50)
        {
          goto LABEL_51;
        }

        v51 = [[CEGraphicIcon alloc] initWithDictionary:v42];
        if (v51)
        {
          objc_storeStrong(&v6->_icon, v51);
        }

LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      v51 = [[CESymbolIcon alloc] initWithDictionary:v42];
      v7 = v54;
      if (v51)
      {
        objc_storeStrong(&v6->_icon, v51);
      }
    }

    v15 = v53;
    goto LABEL_50;
  }

LABEL_52:

  return v6;
}

- (void)parseActions:(id)actions
{
  v4 = MEMORY[0x277CBEB18];
  actionsCopy = actions;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__CERecommendation_parseActions___block_invoke;
  v10[3] = &unk_278DE02C0;
  v11 = v6;
  v7 = v6;
  [actionsCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  actions = self->_actions;
  self->_actions = v8;
}

void __33__CERecommendation_parseActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    v6 = [v5 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 isEqualToString:@"Deeplink"];
      v8 = [v6 isEqualToString:@"LiftUIUrl"];
      v9 = [v6 isEqualToString:@"RemoteUIUrl"];
      v10 = [v6 isEqualToString:@"WebUrl"];
      v11 = [v6 isEqualToString:@"EnableDataclass"];
      v12 = [v6 isEqualToString:@"AppInstall"];
      if ((v7 & 1) != 0 || (v8 & 1) != 0 || (v9 & 1) != 0 || v10)
      {
        v13 = CEURLRecommendationAction;
      }

      else if (v11)
      {
        v13 = CEDataclassRecommendationAction;
      }

      else
      {
        if (!v12)
        {
          v15 = _CELogSystem(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __33__CERecommendation_parseActions___block_invoke_cold_2(v15);
          }

          goto LABEL_17;
        }

        v13 = CEAppInstallRecommendationAction;
      }

      v14 = [[v13 alloc] initWithDictionary:v5];
      if (v14)
      {
        [*(a1 + 32) addObject:v14];
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v5 = _CELogSystem(isKindOfClass);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __33__CERecommendation_parseActions___block_invoke_cold_1(v3);
  }

LABEL_18:
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subTitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_storageRecoverable forKey:@"storageRecoverable"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeBool:self->_completed forKey:@"completed"];
  [coderCopy encodeObject:self->_status forKey:@"status"];
}

- (CERecommendation)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CERecommendation;
  v5 = [(CERecommendation *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageRecoverable"];
    storageRecoverable = v5->_storageRecoverable;
    v5->_storageRecoverable = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v18;

    v20 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v22 = [v20 setWithArray:v21];

    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v25;

    v5->_completed = [coderCopy decodeBoolForKey:@"completed"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v27;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERecommendation allocWithZone:?]title:"initWithIdentifier:title:message:bundleID:storageRecoverable:category:actions:" message:self->_identifier bundleID:self->_title storageRecoverable:self->_message category:self->_bundleID actions:self->_storageRecoverable, self->_category, self->_actions];
  [(CERecommendation *)v4 setSubTitle:self->_subTitle];
  [(CERecommendation *)v4 setIcon:self->_icon];
  [(CERecommendation *)v4 setCompleted:self->_completed];
  [(CERecommendation *)v4 setStatus:self->_status];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse identifier for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse title for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse subtitle for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse message for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse bundleID for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse storageRecoverable for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse category for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse actions for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.9(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Status string not present for recommendation.", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.10(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v3, v4, "%@ Unable to parse icon for recommendation.", v5, v6, v7, v8);
}

void __33__CERecommendation_parseActions___block_invoke_cold_1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v3, v4, "Expected action object to be a dictionary, instead found a %@", v5, v6, v7, v8);
}

@end