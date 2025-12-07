@interface ICQOpportunityFlowSpecification
- (ICQOpportunityFlowSpecification)initWithServerDictionary:(id)dictionary;
- (void)makeActionsFromServerDict:(id)dict;
- (void)makeMessageFromServerDict:(id)dict;
@end

@implementation ICQOpportunityFlowSpecification

- (ICQOpportunityFlowSpecification)initWithServerDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = ICQOpportunityFlowSpecification;
  v5 = [(ICQOpportunityFlowSpecification *)&v19 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
  title = v5->_title;
  v5->_title = v6;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v5->_title)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v14 = v5->_title;
      *buf = 136315394;
      v21 = Name;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v8)
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = class_getName(v16);
        *buf = 136315394;
        v21 = v17;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    goto LABEL_13;
  }

  v9 = [[_ICQOpportunityBubbleImageDetails alloc] initWithServerDictionary:v8];
  imageDetails = v5->_imageDetails;
  v5->_imageDetails = v9;

  [(ICQOpportunityFlowSpecification *)v5 makeMessageFromServerDict:dictionaryCopy];
  [(ICQOpportunityFlowSpecification *)v5 makeActionsFromServerDict:dictionaryCopy];

LABEL_5:
  v11 = v5;
LABEL_15:

  return v11;
}

- (void)makeMessageFromServerDict:(id)dict
{
  v11 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = objc_msgSend_objectForKeyedSubscript_(dictCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, v5);
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = @"message";
      v9 = 2112;
      v10 = dictCopy;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", &v7, 0x16u);
    }
  }
}

- (void)makeActionsFromServerDict:(id)dict
{
  v43 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = objc_msgSend_objectForKeyedSubscript_(dictCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v27 = v5;
    v28 = dictCopy;
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v6;
    v32 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v32)
    {
      v31 = *v35;
      v29 = v8;
      v30 = v7;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v25 = _ICQGetLogSystem();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v10;
              _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Malformed actions property in opportunityBubble: %@", buf, 0xCu);
            }

            actions = v8;
            v5 = v27;
            v24 = v30;
            goto LABEL_28;
          }

          v11 = v10;
          v12 = objc_msgSend_objectForKeyedSubscript_(v11);
          if (v12)
          {
            v33 = objc_msgSend_objectForKeyedSubscript_(v11);
            v13 = _ICQActionForServerActionString(v33);
            v14 = objc_msgSend_objectForKeyedSubscript_(v11);
            v15 = _ICQActionParametersForServerActionParameters(v13, v14, 0);
            v16 = objc_msgSend_objectForKeyedSubscript_(v11);
            if (v16)
            {
              if (v15)
              {
                v17 = [v15 mutableCopy];
              }

              else
              {
                v17 = objc_opt_new();
              }

              v19 = v17;
              [v17 setObject:v16 forKey:@"ServerLinkId"];
              v20 = objc_msgSend_objectForKeyedSubscript_(v11);
              if (v20)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v19 setObject:v20 forKeyedSubscript:@"btnDefault"];
                }
              }

              v21 = [v19 copy];

              v15 = v21;
              v8 = v29;
              v7 = v30;
            }

            v18 = [ICQLink linkWithText:v12 options:0 action:v13 parameters:v15];
            [v7 addObject:v18];
          }

          else
          {
            v18 = _ICQGetLogSystem();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v11;
              _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "Missing title from server action dictionary %@", buf, 0xCu);
            }
          }
        }

        v32 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v22 = [v7 copy];
    actions = selfCopy->_actions;
    selfCopy->_actions = v22;
    v24 = v7;
    v5 = v27;
LABEL_28:

    dictCopy = v28;
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = @"actions";
      v41 = 2112;
      v42 = dictCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", buf, 0x16u);
    }
  }
}

@end