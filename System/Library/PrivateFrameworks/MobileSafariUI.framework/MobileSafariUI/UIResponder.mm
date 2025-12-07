@interface UIResponder
- (void)safari_becomeFirstResponderIfNeeded;
@end

@implementation UIResponder

- (void)safari_becomeFirstResponderIfNeeded
{
  if (result)
  {
    v1 = result;
    result = [result sf_inResponderChain];
    if ((result & 1) == 0)
    {

      return [v1 becomeFirstResponder];
    }
  }

  return result;
}

@end