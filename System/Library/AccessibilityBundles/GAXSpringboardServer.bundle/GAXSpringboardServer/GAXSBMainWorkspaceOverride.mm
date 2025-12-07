@interface GAXSBMainWorkspaceOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_canExecuteTransitionRequest:(id)request forExecution:(BOOL)execution;
- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)presentPowerDownTransientOverlay;
- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion;
@end

@implementation GAXSBMainWorkspaceOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"systemService: handleOpenApplicationRequest: withCompletion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_handleUserActionRequest: options: activationSettings: origin: withResult:" withFullSignature:{"v", "@", "@", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_canExecuteTransitionRequest:forExecution:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"presentPowerDownTransientOverlay" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"source" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"transientOverlayContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransientOverlayTransitionContext" hasInstanceMethod:@"transientOverlay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransientOverlay" hasInstanceMethod:@"viewController" withFullSignature:{"@", 0}];
}

- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion
{
  serviceCopy = service;
  requestCopy = request;
  completionCopy = completion;
  v11 = +[GAXSpringboard sharedInstance];
  isActive = [v11 isActive];
  if (!isActive)
  {
    goto LABEL_6;
  }

  v13 = GAXAllowedRemoteUIProcesses(isActive);
  bundleIdentifier = [requestCopy bundleIdentifier];
  v15 = [v13 containsObject:bundleIdentifier];

  if (v15)
  {
    goto LABEL_6;
  }

  frontmostAppIdentifier = [v11 frontmostAppIdentifier];
  bundleIdentifier2 = [requestCopy bundleIdentifier];
  if ([frontmostAppIdentifier isEqualToString:bundleIdentifier2])
  {

LABEL_6:
    v25.receiver = self;
    v25.super_class = GAXSBMainWorkspaceOverride;
    [(GAXSBMainWorkspaceOverride *)&v25 systemService:serviceCopy handleOpenApplicationRequest:requestCopy withCompletion:completionCopy];
    goto LABEL_7;
  }

  bundleIdentifier3 = [requestCopy bundleIdentifier];
  v19 = [v11 isBundleIDAllowedApp:bundleIdentifier3];

  if (v19)
  {
    goto LABEL_6;
  }

  v20 = GAXLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier4 = [requestCopy bundleIdentifier];
    *buf = 138543362;
    v29 = bundleIdentifier4;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open app request: %{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v22 = FBSOpenApplicationErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Guided Access active";
    v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v24 = [NSError errorWithDomain:v22 code:1 userInfo:v23];

    completionCopy[2](completionCopy, v24);
  }

LABEL_7:
}

- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  requestCopy = request;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  v16 = +[GAXSpringboard sharedInstance];
  buf[0] = 0;
  objc_opt_class();
  frontmostAppIdentifier = [optionsCopy objectForKey:FBSOpenApplicationOptionKeyPayloadURL];
  v18 = __UIAccessibilityCastAsClass();

  if (![v16 isActive])
  {
    goto LABEL_10;
  }

  v19 = GAXURLSchemeIsPhoneRelated(v18);
  v20 = v19;
  if (v19)
  {
    frontmostAppIdentifier = [v16 frontmostAppIdentifier];
    if (GAXAppIsMobilePhoneOrFacetime(frontmostAppIdentifier))
    {
      goto LABEL_6;
    }
  }

  frontmostAppIdentifier2 = [v16 frontmostAppIdentifier];
  if ([frontmostAppIdentifier2 isEqualToString:requestCopy])
  {

    if ((v20 & 1) == 0)
    {
LABEL_10:
      v30.receiver = self;
      v30.super_class = GAXSBMainWorkspaceOverride;
      v23 = settingsCopy;
      [(GAXSBMainWorkspaceOverride *)&v30 _handleUserActionRequest:requestCopy options:optionsCopy activationSettings:settingsCopy origin:originCopy withResult:resultCopy];
      goto LABEL_11;
    }

LABEL_6:

    goto LABEL_10;
  }

  v28 = frontmostAppIdentifier;
  v22 = [v16 isBundleIDAllowedApp:requestCopy];

  if (v20)
  {
  }

  if (v22)
  {
    goto LABEL_10;
  }

  v24 = GAXLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v18;
    v35 = 2114;
    v36 = requestCopy;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open URL request: %{public}@ app: %{public}@", buf, 0x16u);
  }

  v23 = settingsCopy;
  if (resultCopy)
  {
    v25 = FBSOpenApplicationErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Guided Access active";
    v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [NSError errorWithDomain:v25 code:1 userInfo:v26];

    resultCopy[2](resultCopy, v27);
  }

LABEL_11:
}

- (BOOL)_canExecuteTransitionRequest:(id)request forExecution:(BOOL)execution
{
  executionCopy = execution;
  requestCopy = request;
  v7 = +[GAXSpringboard sharedInstance];
  v15.receiver = self;
  v15.super_class = GAXSBMainWorkspaceOverride;
  v8 = [(GAXSBMainWorkspaceOverride *)&v15 _canExecuteTransitionRequest:requestCopy forExecution:executionCopy];
  v9 = [requestCopy safeIntegerForKey:@"source"];
  v10 = [requestCopy safeValueForKeyPath:@"transientOverlayContext.transientOverlay.viewController"];

  if (qword_3B318 != -1)
  {
    sub_16CE8();
  }

  v11 = qword_3B310;
  v12 = [NSNumber numberWithInteger:v9];
  LODWORD(v11) = [v11 containsObject:v12];

  AXSafeClassFromString();
  if ((v8 & (v11 | objc_opt_isKindOfClass())) == 1 && [v7 isActive])
  {
    v13 = GAXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Guided Access active, disallowing transition request, source: %ld", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
LABEL_11:

    goto LABEL_12;
  }

  if ([v7 isActive])
  {
    v13 = GAXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Guided Access active, but allowing transition request, source: %ld", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (void)presentPowerDownTransientOverlay
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Guided Access active. Disallowing slide-to-power-down";
LABEL_7:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    if (![v3 wantsSingleAppModeOrAppSelfLockMode])
    {
      v6.receiver = self;
      v6.super_class = GAXSBMainWorkspaceOverride;
      [(GAXSBMainWorkspaceOverride *)&v6 presentPowerDownTransientOverlay];
      goto LABEL_10;
    }

    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Device wants Single App Mode / App self-lock mode. Disallowing slide-to-power-down";
      goto LABEL_7;
    }
  }

LABEL_10:
}

@end