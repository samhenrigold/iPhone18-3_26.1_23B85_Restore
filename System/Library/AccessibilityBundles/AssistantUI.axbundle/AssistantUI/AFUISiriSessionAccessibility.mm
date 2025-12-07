@interface AFUISiriSessionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAddViewsCommandAllowed:(id)allowed;
- (BOOL)_axIsAppInClarity:(id)clarity;
- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion;
- (void)cancelRequest;
@end

@implementation AFUISiriSessionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"cancelRequest" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"_connection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"_stateHandler" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"assistantConnection:receivedCommand:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
}

- (void)cancelRequest
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = [(AFUISiriSessionAccessibility *)self _accessibilityBoolValueForKey:@"VoiceOverCancelRequestInProgress"];
  v4 = [(AFUISiriSessionAccessibility *)self safeValueForKey:@"_connection"];
  if (AXIsInternalInstall())
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x29EDBA070] numberWithBool:v3];
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_29BB96000, v5, OS_LOG_TYPE_DEFAULT, "Transferring voice cancel request in progress %@ to connection %@", buf, 0x16u);
    }
  }

  [v4 _accessibilitySetBoolValue:v3 forKey:@"VoiceOverCancelRequestInProgress"];
  v7.receiver = self;
  v7.super_class = AFUISiriSessionAccessibility;
  [(AFUISiriSessionAccessibility *)&v7 cancelRequest];
  [v4 _accessibilitySetBoolValue:0 forKey:@"VoiceOverCancelRequestInProgress"];
}

- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion
{
  v22 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  commandCopy = command;
  completionCopy = completion;
  v11 = objc_opt_new();
  isClarityBoardEnabled = [v11 isClarityBoardEnabled];

  if (isClarityBoardEnabled && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![(AFUISiriSessionAccessibility *)self _axIsAddViewsCommandAllowed:commandCopy])
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = commandCopy;
      _os_log_impl(&dword_29BB96000, v13, OS_LOG_TYPE_DEFAULT, "Command %@ is unallowed in custom accessibility mode", buf, 0xCu);
    }

    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __79__AFUISiriSessionAccessibility_assistantConnection_receivedCommand_completion___block_invoke;
    v18 = &unk_29F2A28B0;
    selfCopy = self;
    AXPerformSafeBlock();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AFUISiriSessionAccessibility;
    [(AFUISiriSessionAccessibility *)&v14 assistantConnection:connectionCopy receivedCommand:commandCopy completion:completionCopy];
  }
}

void __79__AFUISiriSessionAccessibility_assistantConnection_receivedCommand_completion___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"_stateHandler"];
  v3 = __UIAccessibilityCastAsClass();

  [v3 performTransitionForEvent:7];
}

- (BOOL)_axIsAddViewsCommandAllowed:(id)allowed
{
  v39 = *MEMORY[0x29EDCA608];
  allowedCopy = allowed;
  v5 = MEMORY[0x29EDB8DC0];
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"UnallowedSiriCommands" ofType:@"plist"];
  v8 = [v5 dictionaryWithContentsOfFile:v7];

  v9 = [v8 objectForKey:@"SAUIAddViewsUnallowedSiriCommands"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  views = [allowedCopy views];
  v11 = [views countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    selfCopy = self;
    v30 = v8;
    v13 = 0x29EDC6000uLL;
    v14 = @"StartCall";
    v33 = *v35;
    v31 = allowedCopy;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(views);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v16 = __UIAccessibilityCastAsClass();
          dialogIdentifier = [v16 dialogIdentifier];
        }

        else
        {
          dialogIdentifier = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = i;
          v18 = v12;
          v19 = views;
          v20 = v14;
          v21 = v9;
          v22 = v13;
          objc_opt_class();
          v23 = __UIAccessibilityCastAsClass();
          sash = [v23 sash];
          applicationBundleIdentifier = [sash applicationBundleIdentifier];

          v13 = v22;
          v9 = v21;
          v14 = v20;
          views = v19;
          v12 = v18;
          i = v32;
        }

        else
        {
          applicationBundleIdentifier = 0;
        }

        if ([dialogIdentifier containsString:{v14, selfCopy}])
        {
          v27 = @"com.apple.mobilephone";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"ReadMail"] & 1) != 0 || (objc_msgSend(dialogIdentifier, "containsString:", @"SendMail"))
        {
          v27 = @"com.apple.mobilemail";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"FindEvents"] & 1) != 0 || (objc_msgSend(dialogIdentifier, "containsString:", @"CreateEvent"))
        {
          v27 = @"com.apple.mobilecal";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"WEBINDEX"])
        {
          v27 = @"com.apple.mobilesafari";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"STOCKS"])
        {
          v27 = @"com.apple.stocks";
          goto LABEL_33;
        }

        if ([v9 containsObject:dialogIdentifier])
        {
          v26 = 0;
          goto LABEL_34;
        }

        if (applicationBundleIdentifier && ([(__CFString *)applicationBundleIdentifier isEqualToString:@"com.apple.weather"]& 1) == 0)
        {
          v27 = applicationBundleIdentifier;
LABEL_33:
          v26 = [(AFUISiriSessionAccessibility *)selfCopy _axIsAppInClarity:v27];
LABEL_34:
          allowedCopy = v31;

          v8 = v30;
          goto LABEL_35;
        }
      }

      v12 = [views countByEnumeratingWithState:&v34 objects:v38 count:16];
      v26 = 1;
      v8 = v30;
      allowedCopy = v31;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_35:

  return v26;
}

- (BOOL)_axIsAppInClarity:(id)clarity
{
  clarityCopy = clarity;
  mEMORY[0x29EDC0B48] = [MEMORY[0x29EDC0B48] sharedInstance];
  applicationBundleIdentifiers = [mEMORY[0x29EDC0B48] applicationBundleIdentifiers];
  if ([applicationBundleIdentifiers containsObject:clarityCopy])
  {
    v6 = 1;
  }

  else
  {
    v6 = [clarityCopy isEqualToString:@"com.apple.siri"];
  }

  return v6;
}

@end