@interface _BKSCombinedTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)coder;
- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)policies;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSCombinedTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [formatterCopy appendObject:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NSArray *)self->_policies isEqualToArray:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [builder appendObject:?];

  v6 = [builder hash];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:objc_opt_class() format:self];
  }

  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy encodeObject:? forKey:?];
}

- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:objc_opt_class() format:self];
  }

  v5 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v7 = [v5 setWithArray:?];
  v8 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  v9 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v10 = [(_BKSCombinedTouchDeliveryPolicy *)self initWithPolicies:?];
  return v10;
}

- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)policies
{
  policiesCopy = policies;
  v9.receiver = self;
  v9.super_class = _BKSCombinedTouchDeliveryPolicy;
  v6 = [(_BKSCombinedTouchDeliveryPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policies, policies);
  }

  return v7;
}

@end