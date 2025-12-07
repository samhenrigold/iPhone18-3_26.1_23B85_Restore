@interface TSTTableSortTag
- (TSTTableSortTag)initWithNumberOfSortRules:(unint64_t)rules;
@end

@implementation TSTTableSortTag

- (TSTTableSortTag)initWithNumberOfSortRules:(unint64_t)rules
{
  v15.receiver = self;
  v15.super_class = TSTTableSortTag;
  v7 = [(TSTTableSortTag *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
    reorganizeValues = v7->_reorganizeValues;
    v7->_reorganizeValues = v8;

    for (; rules; --rules)
    {
      v10 = v7->_reorganizeValues;
      v11 = objc_opt_new();
      objc_msgSend_addObject_(v10, v12, v11, v13);
    }
  }

  return v7;
}

@end