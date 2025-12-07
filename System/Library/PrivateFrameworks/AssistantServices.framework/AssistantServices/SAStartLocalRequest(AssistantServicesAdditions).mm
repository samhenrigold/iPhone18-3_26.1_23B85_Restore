@interface SAStartLocalRequest(AssistantServicesAdditions)
- (uint64_t)af_activationEvent;
@end

@implementation SAStartLocalRequest(AssistantServicesAdditions)

- (uint64_t)af_activationEvent
{
  inputOrigin = [self inputOrigin];
  isEqualToString = objc_msgSend_isEqualToString_(inputOrigin);

  if (isEqualToString)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

@end