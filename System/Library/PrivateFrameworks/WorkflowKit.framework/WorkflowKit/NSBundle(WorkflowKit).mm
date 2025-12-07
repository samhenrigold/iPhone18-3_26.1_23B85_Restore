@interface NSBundle(WorkflowKit)
- (uint64_t)wf_isFocusConfigurationExtensionBundle;
- (uint64_t)wf_isWidgetConfigurationExtensionBundle;
@end

@implementation NSBundle(WorkflowKit)

- (uint64_t)wf_isFocusConfigurationExtensionBundle
{
  bundleIdentifier = [self bundleIdentifier];
  if (objc_msgSend_isEqualToString_(bundleIdentifier))
  {
    isEqualToString = 1;
  }

  else
  {
    bundleIdentifier2 = [self bundleIdentifier];
    isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier2);
  }

  return isEqualToString;
}

- (uint64_t)wf_isWidgetConfigurationExtensionBundle
{
  bundleIdentifier = [self bundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier);

  return isEqualToString;
}

@end