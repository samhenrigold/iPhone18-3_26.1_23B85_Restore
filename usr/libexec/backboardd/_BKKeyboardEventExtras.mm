@interface _BKKeyboardEventExtras
- (BOOL)isEqual:(id)equal;
- (id)copy;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _BKKeyboardEventExtras

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_authenticationSpecification withName:@"authSpec" skipIfNil:1];
  v5 = NSStringFromBKSHIDEventSource();
  [formatterCopy appendString:v5 withName:@"eventSource"];

  v6 = [formatterCopy appendBool:self->_modifiersOnly withName:@"modifiersOnly"];
  v7 = [formatterCopy appendUnsignedInteger:self->_GSModifierState withName:@"GSModifierState" format:1];
}

- (id)copy
{
  v3 = objc_alloc_init(_BKKeyboardEventExtras);
  objc_storeStrong(&v3->_authenticationSpecification, self->_authenticationSpecification);
  v3->_eventSource = self->_eventSource;
  v3->_modifiersOnly = self->_modifiersOnly;
  v3->_GSModifierState = self->_GSModifierState;
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && BSEqualObjects() && self->_eventSource == equalCopy->_eventSource && self->_modifiersOnly == equalCopy->_modifiersOnly && self->_GSModifierState == equalCopy->_GSModifierState;
  }

  return v5;
}

@end