@interface _BKSShareTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)id hostContextId:(unsigned int)contextId;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSShareTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __68___BKSShareTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_childContextId == v5->_childContextId && self->_hostContextId == v5->_hostContextId;
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v3 = [builder appendInteger:?];
  v4 = [builder appendInteger:?];
  v5 = [builder hash];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:objc_opt_class() format:self];
  }

  v4 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy encodeInt32:? forKey:?];

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy encodeInt32:? forKey:?];

  v6 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy encodeXPCObject:? forKey:?];
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:objc_opt_class() format:self];
  }

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy decodeInt32ForKey:?];

  v6 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy decodeInt32ForKey:?];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  v8 = [coderCopy decodeXPCObjectOfType:? forKey:?];

  v9 = [_BKSShareTouchesTouchDeliveryPolicy initWithChildContextId:"initWithChildContextId:hostContextId:" hostContextId:?];
  [(_BKSShareTouchesTouchDeliveryPolicy *)v9 setAssertionEndpoint:?];

  return v9;
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)id hostContextId:(unsigned int)contextId
{
  v7.receiver = self;
  v7.super_class = _BKSShareTouchesTouchDeliveryPolicy;
  result = [(_BKSShareTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_childContextId = id;
    result->_hostContextId = contextId;
  }

  return result;
}

@end