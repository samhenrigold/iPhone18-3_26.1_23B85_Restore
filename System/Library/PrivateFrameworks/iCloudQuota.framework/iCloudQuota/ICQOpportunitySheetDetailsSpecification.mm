@interface ICQOpportunitySheetDetailsSpecification
- (id)messageForKey:(id)key;
- (void)makeMessageFromServerDict:(id)dict;
@end

@implementation ICQOpportunitySheetDetailsSpecification

- (void)makeMessageFromServerDict:(id)dict
{
  v33 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = objc_msgSend_objectForKeyedSubscript_(dictCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v21 = v5;
    v22 = dictCopy;
    v6 = v5;
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_msgSend_objectForKeyedSubscript_(v12, selfCopy);
          v14 = objc_msgSend_objectForKeyedSubscript_(v12);
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v23 setObject:v15 forKeyedSubscript:v13];
          }

          else
          {
            v17 = _ICQGetLogSystem();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v7;
              _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Malformed key/format properties in message property of opportunitySheet: %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v18 = [v23 copy];
    messagesInfo = selfCopy->_messagesInfo;
    selfCopy->_messagesInfo = v18;

    v5 = v21;
    dictCopy = v22;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = @"message";
      v31 = 2112;
      v32 = dictCopy;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", buf, 0x16u);
    }
  }
}

- (id)messageForKey:(id)key
{
  keyCopy = key;
  messagesInfo = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
  v6 = objc_msgSend_objectForKeyedSubscript_(messagesInfo);

  if (!v6)
  {
    messagesInfo2 = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
    v6 = objc_msgSend_objectForKeyedSubscript_(messagesInfo2);
  }

  return v6;
}

@end