@interface SGQuickResponsesReplyModel
+ (id)semanticClassesForArray:(id)array;
- (SGQuickResponsesReplyModel)initWithDictionary:(id)dictionary index:(unint64_t)index;
@end

@implementation SGQuickResponsesReplyModel

- (SGQuickResponsesReplyModel)initWithDictionary:(id)dictionary index:(unint64_t)index
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {

    v26.receiver = self;
    v26.super_class = SGQuickResponsesReplyModel;
    self = [(SGQuickResponsesReplyModel *)&v26 init];
    if (!self)
    {
      goto LABEL_28;
    }

    v8 = [v7 arrayAssertedForKey:@"RESPONSE_CLASSES"];
    if (v8)
    {
      v9 = v8;
      self->_semanticClassIndex = index;
      v10 = [SGQuickResponsesReplyModel semanticClassesForArray:v8];
      if (!v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[SGQuickResponsesReplyModel semanticClassesForArray:array]";
          goto LABEL_24;
        }

LABEL_25:

        goto LABEL_26;
      }

      semanticClasses = self->_semanticClasses;
      self->_semanticClasses = v10;

      v12 = [v7 arrayAssertedForKey:@"REPLY_TEXT_SELECTED_PSEUDOCOUNTS"];
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary arrayAssertedForKey:REPLY_TEXT_SELECTED_PSEUDOCOUNTS]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      selectedPseudocounts = self->_selectedPseudocounts;
      self->_selectedPseudocounts = v12;

      v14 = [v7 numberAssertedForKey:@"MODEL_SCORE_WEIGHT"];
      if (!v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary numberAssertedForKey:MODEL_SCORE_WEIGHT]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v15 = v14;
      [v14 doubleValue];
      self->_scoreWeight = v16;

      v17 = [v7 numberAssertedForKey:@"MODEL_CATEGORY"];
      if (!v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary numberAssertedForKey:MODEL_CATEGORY]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v18 = v17;
      self->_category = [v17 unsignedIntegerValue];

      v19 = [v7 objectForKeyedSubscript:@"DYNAMIC_LABEL"];
      self->_dynamicLabel = [v19 BOOLValue];

      if (self->_scoreWeight < 0.0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "_scoreWeight >= 0";
LABEL_24:
          _os_log_fault_impl(&dword_24799E000, v20, OS_LOG_TYPE_FAULT, v21, buf, 2u);
          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_28:
      self = self;
      selfCopy = self;
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v22 = MEMORY[0x277D86220];
      v23 = "[dictionary arrayAssertedForKey:RESPONSE_CLASSES]";
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v22 = MEMORY[0x277D86220];
    v23 = "dictionary";
LABEL_15:
    _os_log_fault_impl(&dword_24799E000, v22, OS_LOG_TYPE_FAULT, v23, buf, 2u);
  }

LABEL_26:
  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

+ (id)semanticClassesForArray:(id)array
{
  v50 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    v9 = 0x277CBE000uLL;
    while (2)
    {
      v10 = 0;
      v31 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[semanticClass isKindOfClass:NSArray.class]", buf, 2u);
          }

LABEL_33:

          v26 = 0;
          goto LABEL_34;
        }

        v12 = objc_opt_new();
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v14)
        {
          v15 = *v39;
          v32 = v4;
          v33 = v13;
          v28 = *v39;
          v29 = v8;
          while (2)
          {
            v16 = 0;
            v30 = v14;
            do
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v38 + 1) + 8 * v16);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [objc_alloc(*(v9 + 2656)) initWithObjects:{v17, 0}];
              }

              else
              {
                v18 = v17;
              }

              v19 = v18;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[replyGroup isKindOfClass:NSArray.class]", buf, 2u);
                }

                v4 = v32;
LABEL_32:

                goto LABEL_33;
              }

              v20 = v12;
              v21 = v5;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v19 = v19;
              v22 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v35;
                while (2)
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v35 != v24)
                    {
                      objc_enumerationMutation(v19);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[string isKindOfClass:NSString.class]", buf, 2u);
                      }

                      v5 = v21;
                      v12 = v20;
                      v4 = v32;
                      v13 = v33;
                      goto LABEL_32;
                    }
                  }

                  v23 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v12 = v20;
              [v20 addObject:v19];

              ++v16;
              v8 = v29;
              v5 = v21;
              v9 = 0x277CBE000;
              v13 = v33;
              v15 = v28;
            }

            while (v16 != v30);
            v14 = [v33 countByEnumeratingWithState:&v38 objects:v48 count:16];
            v4 = v32;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        [v4 addObject:v12];
        ++v10;
      }

      while (v10 != v31);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v26 = v4;
LABEL_34:

  return v26;
}

@end