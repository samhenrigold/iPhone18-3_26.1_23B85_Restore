@interface CDPStateHandlerResult
+ (id)resultWithCloudDataProtectionEnabled:(BOOL)enabled shouldCompleteSignIn:(BOOL)in error:(id)error;
+ (id)resultWithCloudDataProtectionEnabled:(BOOL)enabled shouldCompleteSignIn:(BOOL)in peeriCloudKeychainState:(unint64_t)state error:(id)error;
+ (id)resultWithError:(id)error;
+ (id)successResult;
@end

@implementation CDPStateHandlerResult

+ (id)resultWithCloudDataProtectionEnabled:(BOOL)enabled shouldCompleteSignIn:(BOOL)in error:(id)error
{
  inCopy = in;
  enabledCopy = enabled;
  errorCopy = error;
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setCloudDataProtectionEnabled:enabledCopy];
  [v8 setShouldCompleteSignIn:inCopy];
  [v8 setPeeriCloudKeychainState:0];
  [v8 setError:errorCopy];

  return v8;
}

+ (id)resultWithCloudDataProtectionEnabled:(BOOL)enabled shouldCompleteSignIn:(BOOL)in peeriCloudKeychainState:(unint64_t)state error:(id)error
{
  inCopy = in;
  enabledCopy = enabled;
  errorCopy = error;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setCloudDataProtectionEnabled:enabledCopy];
  [v10 setShouldCompleteSignIn:inCopy];
  [v10 setPeeriCloudKeychainState:state];
  [v10 setError:errorCopy];

  return v10;
}

+ (id)resultWithError:(id)error
{
  errorCopy = error;
  v4 = [objc_opt_class() resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:0 error:errorCopy];

  return v4;
}

+ (id)successResult
{
  v2 = objc_opt_class();

  return [v2 resultWithCloudDataProtectionEnabled:1 shouldCompleteSignIn:1 error:0];
}

@end