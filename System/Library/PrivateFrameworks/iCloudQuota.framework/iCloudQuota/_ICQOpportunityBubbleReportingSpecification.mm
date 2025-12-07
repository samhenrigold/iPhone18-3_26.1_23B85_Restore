@interface _ICQOpportunityBubbleReportingSpecification
- (_ICQOpportunityBubbleReportingSpecification)initWithServerDictionary:(id)dictionary;
- (id)_getDismissReportingRuleFromServerDict:(id)dict;
- (void)_setDisplayRuleFromServerDict:(id)dict;
@end

@implementation _ICQOpportunityBubbleReportingSpecification

- (_ICQOpportunityBubbleReportingSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _ICQOpportunityBubbleReportingSpecification;
  v5 = [(_ICQOpportunityBubbleReportingSpecification *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_ICQOpportunityBubbleReportingSpecification *)v5 _setDisplayRuleFromServerDict:dictionaryCopy];
    v7 = [(_ICQOpportunityBubbleReportingSpecification *)v6 _getDismissReportingRuleFromServerDict:dictionaryCopy];
    dimissServerParam = v6->_dimissServerParam;
    v6->_dimissServerParam = v7;
  }

  return v6;
}

- (void)_setDisplayRuleFromServerDict:(id)dict
{
  v7 = objc_msgSend_objectForKeyedSubscript_(dict, a2, @"rulesForDisplay");
  v4 = [v7 objectForKey:@"delegateDecision"];

  if (v4)
  {
    self->_displayRuleType = 1;
  }

  else
  {
    self->_displayRuleType = 2;
    v5 = objc_msgSend_objectForKeyedSubscript_(v7);
    v6 = [v5 isEqualToString:@"true"];

    if (v6)
    {
      self->_displayRuleServerAlwaysShow = 1;
    }

    else
    {
      self->_displayRuleServerAlwaysShow = 0;
    }
  }
}

- (id)_getDismissReportingRuleFromServerDict:(id)dict
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKeyedSubscript_(dict, a2, @"onDismiss");
  v5 = objc_msgSend_objectForKeyedSubscript_(v4);
  v6 = [v5 isEqualToString:@"UNIFIED_MESSAGING"];

  if (v6)
  {
    self->_dismissRuleType = 1;
LABEL_4:
    v7 = v4;
    goto LABEL_10;
  }

  self->_dismissRuleType = 2;
  objc_storeStrong(&self->_dimissServerParam, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v11 = 136315394;
      Name = class_getName(v9);
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v11, 0x16u);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

@end