@interface STWebBrowserRateLimitedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STWebBrowserRateLimitedCoreAnalyticsEvent)initWithBundleIdentifier:(id)identifier;
@end

@implementation STWebBrowserRateLimitedCoreAnalyticsEvent

- (STWebBrowserRateLimitedCoreAnalyticsEvent)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = STWebBrowserRateLimitedCoreAnalyticsEvent;
  v5 = [(STWebBrowserRateLimitedCoreAnalyticsEvent *)&v8 init];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = identifierCopy;

  return v5;
}

- (NSDictionary)payload
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"bundleIdentifier";
  bundleIdentifier = [(STWebBrowserRateLimitedCoreAnalyticsEvent *)self bundleIdentifier];
  v6[0] = bundleIdentifier;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end