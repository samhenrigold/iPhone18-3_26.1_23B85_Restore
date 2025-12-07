@interface GAXFBSOpenApplicationService
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason;
- (void)_openApplication:(id)application withOptions:(id)options clientHandle:(id)handle completion:(id)completion;
@end

@implementation GAXFBSOpenApplicationService

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"canOpenApplication: reason:" withFullSignature:{"B", "@", "^q", 0}];
  [validationsCopy validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"_openApplication: withOptions: clientHandle: completion:" withFullSignature:{"v", "@", "@", "@", "@?", 0}];
}

- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason
{
  applicationCopy = application;
  v7 = +[GAXSpringboard sharedInstance];
  isActive = [v7 isActive];
  if (!isActive)
  {
    goto LABEL_6;
  }

  v9 = GAXAllowedRemoteUIProcesses(isActive);
  if ([v9 containsObject:applicationCopy])
  {
    goto LABEL_5;
  }

  frontmostAppIdentifier = [v7 frontmostAppIdentifier];
  if ([frontmostAppIdentifier isEqualToString:applicationCopy])
  {

LABEL_5:
LABEL_6:
    v15.receiver = self;
    v15.super_class = GAXFBSOpenApplicationService;
    v11 = [(GAXFBSOpenApplicationService *)&v15 canOpenApplication:applicationCopy reason:reason];
    goto LABEL_7;
  }

  v13 = [v7 isBundleIDAllowedApp:applicationCopy];

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = GAXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = applicationCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for canActivate of app: %{public}@", buf, 0xCu);
  }

  v11 = 0;
  if (reason)
  {
    *reason = 1;
  }

LABEL_7:

  return v11;
}

- (void)_openApplication:(id)application withOptions:(id)options clientHandle:(id)handle completion:(id)completion
{
  applicationCopy = application;
  optionsCopy = options;
  handleCopy = handle;
  completionCopy = completion;
  v14 = +[GAXSpringboard sharedInstance];
  isActive = [v14 isActive];
  if (!isActive)
  {
    goto LABEL_6;
  }

  v16 = GAXAllowedRemoteUIProcesses(isActive);
  if ([v16 containsObject:applicationCopy])
  {
    goto LABEL_5;
  }

  frontmostAppIdentifier = [v14 frontmostAppIdentifier];
  if ([frontmostAppIdentifier isEqualToString:applicationCopy])
  {

LABEL_5:
LABEL_6:
    v24.receiver = self;
    v24.super_class = GAXFBSOpenApplicationService;
    [(GAXFBSOpenApplicationService *)&v24 _openApplication:applicationCopy withOptions:optionsCopy clientHandle:handleCopy completion:completionCopy];
    goto LABEL_7;
  }

  v18 = [v14 isBundleIDAllowedApp:applicationCopy];

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = GAXLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = applicationCopy;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Guided Access blocking activation of app: %{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v20 = FBSOpenApplicationErrorDomain;
    v32 = NSLocalizedFailureReasonErrorKey;
    v33 = @"Guided Access is active";
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [NSError errorWithDomain:v20 code:1 userInfo:v21];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_13F58;
    v28 = &unk_2D5F0;
    v31 = completionCopy;
    v29 = handleCopy;
    v30 = v22;
    v23 = v22;
    AXPerformSafeBlock();
  }

LABEL_7:
}

@end