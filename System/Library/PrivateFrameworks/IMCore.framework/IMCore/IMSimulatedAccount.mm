@interface IMSimulatedAccount
- (void)setLoginHandle:(id)handle;
@end

@implementation IMSimulatedAccount

- (void)setLoginHandle:(id)handle
{
  handleCopy = handle;
  if (self->_loginHandle != handleCopy)
  {
    v7 = handleCopy;
    objc_storeStrong(&self->_loginHandle, handle);
    v6 = [(IMHandle *)v7 ID];
    [(IMAccount *)self setLogin:v6];

    handleCopy = v7;
  }
}

@end