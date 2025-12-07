@interface _BKSHIDEventDeferringRuleIdentity
- (BOOL)isEqual:(id)equal;
- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)coder;
- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)seed pid:(int)pid;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSHIDEventDeferringRuleIdentity

- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  v5 = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeIntForKey:?];
    v5->_seed = [coderCopy decodeInt32ForKey:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_seed == equalCopy->_seed && self->_pid == equalCopy->_pid;
  }

  return v6;
}

- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)seed pid:(int)pid
{
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  result = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (result)
  {
    result->_seed = seed;
    result->_pid = pid;
  }

  return result;
}

@end