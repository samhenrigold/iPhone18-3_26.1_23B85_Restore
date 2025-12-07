@interface NSProxy(MCMRedaction)
- (__CFString)redactedDescription;
@end

@implementation NSProxy(MCMRedaction)

- (__CFString)redactedDescription
{
  v1 = [self description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    redactedDescription = [v1 redactedDescription];
  }

  else
  {
    redactedDescription = @"<~~~>";
  }

  return redactedDescription;
}

@end