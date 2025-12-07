@interface HRERecommendableObjectTypeRule
+ (id)ruleWithRequiredType:(id)type;
- (BOOL)passesWithHomeObjects:(id)objects;
- (BOOL)passesWithObject:(id)object;
- (HRERecommendableObjectTypeRule)initWithRequiredType:(id)type;
@end

@implementation HRERecommendableObjectTypeRule

- (HRERecommendableObjectTypeRule)initWithRequiredType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HRERecommendableObjectTypeRule;
  _init = [(HRERule *)&v9 _init];
  if (_init)
  {
    v6 = [typeCopy copy];
    requiredType = _init->_requiredType;
    _init->_requiredType = v6;
  }

  return _init;
}

+ (id)ruleWithRequiredType:(id)type
{
  typeCopy = type;
  v4 = [[HRERecommendableObjectTypeRule alloc] initWithRequiredType:typeCopy];

  return v4;
}

- (BOOL)passesWithHomeObjects:(id)objects
{
  v12[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CBEB98];
  requiredType = [(HRERecommendableObjectTypeRule *)self requiredType];
  v12[0] = requiredType;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 setWithArray:v8];
  v10 = [v5 _types:v9 notMatchedByObjects:objectsCopy];

  LOBYTE(objectsCopy) = [v10 count] == 0;
  return objectsCopy;
}

- (BOOL)passesWithObject:(id)object
{
  v16[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CBEB98];
  requiredType = [(HRERecommendableObjectTypeRule *)self requiredType];
  v16[0] = requiredType;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v6 setWithArray:v8];
  v10 = MEMORY[0x277CBEB98];
  v15 = objectCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 setWithArray:v11];

  v13 = [v5 _types:v9 notMatchedByObjects:v12];
  LOBYTE(objectCopy) = [v13 count] == 0;

  return objectCopy;
}

@end