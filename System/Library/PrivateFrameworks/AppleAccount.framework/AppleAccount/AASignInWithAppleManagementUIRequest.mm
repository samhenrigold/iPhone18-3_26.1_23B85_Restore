@interface AASignInWithAppleManagementUIRequest
- (BOOL)_isPasswordAppInstalled;
- (id)urlRequest;
- (id)urlString;
- (void)_isPasswordAppInstalled;
@end

@implementation AASignInWithAppleManagementUIRequest

- (id)urlString
{
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x1E698DDF8]2 = [MEMORY[0x1E698DDF8] sharedBag];
    siwaManagementURL = [mEMORY[0x1E698DDF8]2 siwaManagementURL];
    absoluteString = [siwaManagementURL absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (id)urlRequest
{
  _isPasswordAppInstalled = [(AASignInWithAppleManagementUIRequest *)self _isPasswordAppInstalled];
  v8.receiver = self;
  v8.super_class = AASignInWithAppleManagementUIRequest;
  urlRequest = [(AAAppleIDSettingsRequest *)&v8 urlRequest];
  v5 = [urlRequest mutableCopy];

  v6 = kAATrueString;
  if (!_isPasswordAppInstalled)
  {
    v6 = kAAFalseString;
  }

  [v5 addValue:*v6 forHTTPHeaderField:@"X-Apple-I-PAI"];

  return v5;
}

- (BOOL)_isPasswordAppInstalled
{
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Passwords" allowPlaceholder:1 error:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    applicationState = [v2 applicationState];
    if (([applicationState isInstalled]& 1) != 0)
    {
      isPlaceholder = 1;
    }

    else
    {
      applicationState2 = [v2 applicationState];
      isPlaceholder = [applicationState2 isPlaceholder];
    }
  }

  else
  {
    applicationState = _AALogSystem(v3);
    if (os_log_type_enabled(applicationState, OS_LOG_TYPE_DEBUG))
    {
      [(AASignInWithAppleManagementUIRequest *)v4 _isPasswordAppInstalled];
    }

    isPlaceholder = 0;
  }

  return isPlaceholder;
}

- (void)_isPasswordAppInstalled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"com.apple.Passwords";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Error creating appRecord for %@. %@", &v2, 0x16u);
}

@end