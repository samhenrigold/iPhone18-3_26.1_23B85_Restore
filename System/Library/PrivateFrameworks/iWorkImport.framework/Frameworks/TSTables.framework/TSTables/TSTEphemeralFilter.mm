@interface TSTEphemeralFilter
+ (id)filterWithIndex:(unint64_t)index baseColumnIndex:(TSUModelColumnIndex)columnIndex rules:(id)rules;
- (TSTEphemeralFilter)filterWithRule:(id)rule atIndex:(unint64_t)index;
- (TSTEphemeralFilter)initWithIndex:(unint64_t)index baseColumnIndex:(TSUModelColumnIndex)columnIndex rules:(id)rules;
- (id)description;
- (id)filterByAddingRule:(id)rule;
- (id)filterByClearingRules;
- (id)filterByRemovingRuleAtIndex:(unint64_t)index;
@end

@implementation TSTEphemeralFilter

+ (id)filterWithIndex:(unint64_t)index baseColumnIndex:(TSUModelColumnIndex)columnIndex rules:(id)rules
{
  rulesCopy = rules;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithIndex_baseColumnIndex_rules_(v8, v9, index, columnIndex._column, rulesCopy);

  return v10;
}

- (TSTEphemeralFilter)initWithIndex:(unint64_t)index baseColumnIndex:(TSUModelColumnIndex)columnIndex rules:(id)rules
{
  rulesCopy = rules;
  v16.receiver = self;
  v16.super_class = TSTEphemeralFilter;
  v9 = [(TSTEphemeralFilter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_filterIndex = index;
    v9->_baseColumnIndex = columnIndex;
    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v13 = objc_msgSend_initWithArray_copyItems_(v11, v12, rulesCopy, 1);
    rules = v10->_rules;
    v10->_rules = v13;
  }

  return v10;
}

- (TSTEphemeralFilter)filterWithRule:(id)rule atIndex:(unint64_t)index
{
  ruleCopy = rule;
  v9 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v7, self->_rules, v8);
  objc_msgSend_setObject_atIndexedSubscript_(v9, v10, ruleCopy, index);
  v11 = objc_opt_class();
  v13 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v11, v12, self->_filterIndex, self->_baseColumnIndex._column, v9);

  return v13;
}

- (id)filterByAddingRule:(id)rule
{
  v5 = objc_msgSend_arrayByAddingObject_(self->_rules, a2, rule, v3);
  v6 = objc_opt_class();
  v8 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v6, v7, self->_filterIndex, self->_baseColumnIndex._column, v5);

  return v8;
}

- (id)filterByRemovingRuleAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, self->_rules, v3);
  objc_msgSend_removeObjectAtIndex_(v6, v7, index, v8);
  v9 = objc_opt_class();
  v11 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v9, v10, self->_filterIndex, self->_baseColumnIndex._column, v6);

  return v11;
}

- (id)filterByClearingRules
{
  v3 = objc_opt_class();
  filterIndex = self->_filterIndex;
  column = self->_baseColumnIndex._column;
  v7 = MEMORY[0x277CBEBF8];

  return objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v3, v4, filterIndex, column, v7);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p index %lu baseCol %u rules %@", v7, v5, self, self->_filterIndex, self->_baseColumnIndex._column, self->_rules);

  return v8;
}

@end