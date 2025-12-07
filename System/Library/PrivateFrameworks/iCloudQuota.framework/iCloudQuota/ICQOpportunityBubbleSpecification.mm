@interface ICQOpportunityBubbleSpecification
- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)bubble andOpportunitySheet:(id)sheet;
- (id)serverUIURL;
@end

@implementation ICQOpportunityBubbleSpecification

- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)bubble andOpportunitySheet:(id)sheet
{
  v30 = *MEMORY[0x277D85DE8];
  bubbleCopy = bubble;
  sheetCopy = sheet;
  v25.receiver = self;
  v25.super_class = ICQOpportunityBubbleSpecification;
  v8 = [(ICQOpportunityBubbleSpecification *)&v25 init];
  if (!v8)
  {
LABEL_10:
    v19 = v8;
    goto LABEL_16;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(bubbleCopy);
  appId = v8->_appId;
  v8->_appId = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(bubbleCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(ICQOpportunityFlowSpecification *)[ICQOpportunityBubbleDetailsSpecification alloc] initWithServerDictionary:v11];
      bubbleDetails = v8->_bubbleDetails;
      v8->_bubbleDetails = v12;
    }

    if (sheetCopy)
    {
      v14 = objc_msgSend_objectForKeyedSubscript_(sheetCopy);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(ICQOpportunityFlowSpecification *)[ICQOpportunitySheetDetailsSpecification alloc] initWithServerDictionary:v14];
        sheetDetails = v8->_sheetDetails;
        v8->_sheetDetails = v15;
      }
    }

    v17 = [[_ICQOpportunityBubbleReportingSpecification alloc] initWithServerDictionary:bubbleCopy];
    reportingDetails = v8->_reportingDetails;
    v8->_reportingDetails = v17;

    goto LABEL_10;
  }

  if (v8->_appId)
  {
    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      Name = class_getName(v21);
      v23 = v8->_appId;
      *buf = 136315394;
      v27 = Name;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (id)serverUIURL
{
  v16 = *MEMORY[0x277D85DE8];
  bubbleDetails = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];

  if (bubbleDetails)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    bubbleDetails2 = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];
    actions = [bubbleDetails2 actions];

    bubbleDetails = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (bubbleDetails)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != bubbleDetails; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(actions);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          serverUIURL = [v8 serverUIURL];

          if (serverUIURL)
          {
            bubbleDetails = [v8 serverUIURL];
            goto LABEL_12;
          }
        }

        bubbleDetails = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (bubbleDetails)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return bubbleDetails;
}

@end