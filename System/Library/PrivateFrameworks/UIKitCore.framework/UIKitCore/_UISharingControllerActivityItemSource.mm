@interface _UISharingControllerActivityItemSource
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation _UISharingControllerActivityItemSource

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, *MEMORY[0x1E69CDA88]))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end