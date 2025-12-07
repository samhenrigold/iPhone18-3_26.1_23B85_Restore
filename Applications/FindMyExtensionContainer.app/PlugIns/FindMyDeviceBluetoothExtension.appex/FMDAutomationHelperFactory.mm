@interface FMDAutomationHelperFactory
+ (id)sharedFactory;
- (Class)automationHelperClassWithName:(id)name;
@end

@implementation FMDAutomationHelperFactory

+ (id)sharedFactory
{
  if (qword_100028BE0 != -1)
  {
    sub_10000D028();
  }

  v3 = qword_100028BD8;

  return v3;
}

- (Class)automationHelperClassWithName:(id)name
{
  nameCopy = name;
  v5 = sub_100003BEC(nameCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading automation class %@", &v16, 0xCu);
  }

  if (![(FMDAutomationHelperFactory *)self hasAttemptedLoad])
  {
    v6 = [NSBundle bundleWithPath:@"/AppleInternal/Library/Bundles/FindMyDevice"];
    v7 = [v6 pathForResource:@"FMDAutomationClasses" ofType:@"bundle"];
    v8 = [NSBundle bundleWithPath:v7];
    [(FMDAutomationHelperFactory *)self setAutomationHelperBundle:v8];

    [(FMDAutomationHelperFactory *)self setHasAttemptedLoad:1];
  }

  if ([(FMDAutomationHelperFactory *)self hasAttemptedLoad]&& ([(FMDAutomationHelperFactory *)self automationHelperBundle], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v14 = 0;
  }

  else
  {
    automationHelperBundle = [(FMDAutomationHelperFactory *)self automationHelperBundle];
    v11 = [automationHelperBundle classNamed:nameCopy];

    if (!v11)
    {
      v13 = sub_100003BEC(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000D03C(nameCopy, v13);
      }
    }

    v14 = v11;
  }

  return v14;
}

@end