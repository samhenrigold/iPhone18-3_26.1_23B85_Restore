@interface NSPPrivacyProxyTokenAgent
- (BOOL)reportError:(int)error withOptions:(id)options;
- (void)tokenLowWaterMarkReached;
@end

@implementation NSPPrivacyProxyTokenAgent

- (void)tokenLowWaterMarkReached
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(NSPPrivacyProxyTokenAgent *)self tokenLowWaterMarkReachedForAgent:selfCopy];
}

- (BOOL)reportError:(int)error withOptions:(id)options
{
  v4 = *&error;
  optionsCopy = options;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained reportErrorForAgent:self error:v4 withOptions:optionsCopy];

  return 1;
}

@end