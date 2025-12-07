@interface CPProcessAssertion
+ (id)processAssertionNameForBundleIdentifier:(id)identifier;
+ (id)processAssertionWithBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CPProcessAssertion)initWithBundleIdentifier:(id)identifier;
- (id)name;
- (unint64_t)hash;
- (void)acquireWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation CPProcessAssertion

- (CPProcessAssertion)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CPProcessAssertion;
  v6 = [(CPProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_processAssertion)
  {
    v3 = CPDefaultLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [(CPProcessAssertion *)self bundleIdentifier];
      *buf = 136315394;
      v7 = "[CPProcessAssertion dealloc]";
      v8 = 2112;
      v9 = bundleIdentifier;
      _os_log_impl(&dword_1AEB26000, v3, OS_LOG_TYPE_INFO, "%s Invalidating process assertion for %@", buf, 0x16u);
    }

    [(BKSProcessAssertion *)self->_processAssertion invalidate];
  }

  v5.receiver = self;
  v5.super_class = CPProcessAssertion;
  [(CPProcessAssertion *)&v5 dealloc];
}

- (void)acquireWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E698D038];
  handlerCopy = handler;
  v6 = [v4 alloc];
  bundleIdentifier = [(CPProcessAssertion *)self bundleIdentifier];
  name = [(CPProcessAssertion *)self name];
  v8 = [v6 initWithBundleIdentifier:bundleIdentifier flags:11 reason:10008 name:name withHandler:handlerCopy];

  [(CPProcessAssertion *)self setProcessAssertion:v8];
}

+ (id)processAssertionWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E698D038];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  v7 = [self processAssertionNameForBundleIdentifier:identifierCopy];
  v8 = [v6 initWithBundleIdentifier:identifierCopy flags:11 reason:10008 name:v7];

  return v8;
}

+ (id)processAssertionNameForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  identifierCopy = [v3 stringWithFormat:@"%@-%@", objc_opt_class(), identifierCopy];

  return identifierCopy;
}

- (id)name
{
  v3 = objc_opt_class();
  bundleIdentifier = [(CPProcessAssertion *)self bundleIdentifier];
  v5 = [v3 processAssertionNameForBundleIdentifier:bundleIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [(CPProcessAssertion *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CPProcessAssertion *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

@end