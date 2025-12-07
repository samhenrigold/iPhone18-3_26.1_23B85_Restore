@interface DOMHTMLInputElement(UIWebInteraction)
- (uint64_t)isAssistedDateType;
- (uint64_t)isLikelyToBeginPageLoad;
- (uint64_t)nodeCanBecomeFirstResponder;
@end

@implementation DOMHTMLInputElement(UIWebInteraction)

- (uint64_t)isAssistedDateType
{
  type = [self type];
  if (objc_msgSend_isEqualToString_(type) & 1) != 0 || (objc_msgSend_isEqualToString_(type) & 1) != 0 || (objc_msgSend_isEqualToString_(type))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(type);
  }

  return isEqualToString;
}

- (uint64_t)isLikelyToBeginPageLoad
{
  type = [self type];
  isEqual = objc_msgSend_isEqual_(type);

  return isEqual;
}

- (uint64_t)nodeCanBecomeFirstResponder
{
  if ([self readOnly])
  {
    return 0;
  }

  if ([self isTextControl])
  {
    return 1;
  }

  return [self isAssistedDateType];
}

@end