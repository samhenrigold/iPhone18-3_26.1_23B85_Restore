@interface _BKSCancelTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)coder;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)id initialTouchTimestamp:(double)timestamp;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSCancelTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __69___BKSCancelTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_contextId == v5->_contextId && self->_initialTouchTimestamp == v5->_initialTouchTimestamp;
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v3 = [builder appendInteger:?];
  v4 = [builder appendDouble:?];
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
  [coderCopy encodeDouble:? forKey:?];

  v6 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  [coderCopy encodeXPCObject:? forKey:?];
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)coder
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
  [coderCopy decodeDoubleForKey:?];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:?];
  v8 = [coderCopy decodeXPCObjectOfType:? forKey:?];

  v9 = [_BKSCancelTouchesTouchDeliveryPolicy initWithContextId:"initWithContextId:initialTouchTimestamp:" initialTouchTimestamp:?];
  [(_BKSCancelTouchesTouchDeliveryPolicy *)v9 setAssertionEndpoint:?];

  return v9;
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)id initialTouchTimestamp:(double)timestamp
{
  v7.receiver = self;
  v7.super_class = _BKSCancelTouchesTouchDeliveryPolicy;
  result = [(_BKSCancelTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_contextId = id;
    result->_initialTouchTimestamp = timestamp;
  }

  return result;
}

@end