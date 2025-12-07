@interface MCAppWhitelistPayloadBase
+ (id)knownOptionsKeys;
+ (id)knownUserEnabledOptionKeys;
- (MCAppWhitelistPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCAppWhitelistPayloadBase

+ (id)knownOptionsKeys
{
  if (knownOptionsKeys_onceToken != -1)
  {
    +[MCAppWhitelistPayloadBase knownOptionsKeys];
  }

  v3 = knownOptionsKeys_keys;

  return v3;
}

void __45__MCAppWhitelistPayloadBase_knownOptionsKeys__block_invoke()
{
  v4[13] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"DisableTouch";
  v4[1] = @"DisableDeviceRotation";
  v4[2] = @"DisableVolumeButtons";
  v4[3] = @"DisableRingerSwitch";
  v4[4] = @"DisableSleepWakeButton";
  v4[5] = @"DisableAutoLock";
  v4[6] = @"EnableVoiceOver";
  v4[7] = @"EnableZoom";
  v4[8] = @"EnableInvertColors";
  v4[9] = @"EnableAssistiveTouch";
  v4[10] = @"EnableSpeakSelection";
  v4[11] = @"EnableMonoAudio";
  v4[12] = @"EnableVoiceControl";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:13];
  v2 = [v0 setWithArray:v1];
  v3 = knownOptionsKeys_keys;
  knownOptionsKeys_keys = v2;
}

+ (id)knownUserEnabledOptionKeys
{
  if (knownUserEnabledOptionKeys_onceToken != -1)
  {
    +[MCAppWhitelistPayloadBase knownUserEnabledOptionKeys];
  }

  v3 = knownUserEnabledOptionKeys_keys;

  return v3;
}

void __55__MCAppWhitelistPayloadBase_knownUserEnabledOptionKeys__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"Zoom";
  v4[1] = @"InvertColors";
  v4[2] = @"AssistiveTouch";
  v4[3] = @"VoiceOver";
  v4[4] = @"VoiceControl";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = knownUserEnabledOptionKeys_keys;
  knownUserEnabledOptionKeys_keys = v2;
}

- (MCAppWhitelistPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = MCAppWhitelistPayloadBase;
  v10 = [(MCPayload *)&v16 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10 && [profileCopy isStub])
  {
    v11 = [dictionaryCopy objectForKey:@"Apps"];
    whitelistedAppsAndOptions = v10->_whitelistedAppsAndOptions;
    v10->_whitelistedAppsAndOptions = v11;

    v13 = [dictionaryCopy objectForKey:@"AllowAccessWithoutPasscode"];
    v10->_allowAccessWithoutPasscode = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKey:@"ForceAllowSupervisorAccess"];
    v10->_forceAllowSupervisorAccess = [v14 BOOLValue];

    [dictionaryCopy removeObjectForKey:@"Apps"];
    [dictionaryCopy removeObjectForKey:@"AllowAccessWithoutPasscode"];
    [dictionaryCopy removeObjectForKey:@"ForceAllowSupervisorAccess"];
  }

  return v10;
}

- (id)restrictions
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (![(MCAppWhitelistPayloadBase *)self allowAccessWithoutPasscode])
  {
    v31[0] = @"value";
    v31[1] = @"preference";
    v32[0] = MEMORY[0x1E695E110];
    v32[1] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v4 setObject:v5 forKeyedSubscript:@"allowAccessWithoutPasscodeInAppLock"];
  }

  if ([(MCAppWhitelistPayloadBase *)self forceAllowSupervisorAccess])
  {
    v29[0] = @"value";
    v29[1] = @"preference";
    v30[0] = MEMORY[0x1E695E118];
    v30[1] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v4 setObject:v6 forKeyedSubscript:@"forceGrantSupervisorAccessInAppLock"];
  }

  [v3 setObject:v4 forKeyedSubscript:@"restrictedBool"];
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];

  if (whitelistedAppsAndOptions)
  {
    v8 = MEMORY[0x1E695DF70];
    whitelistedAppsAndOptions2 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(whitelistedAppsAndOptions2, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    whitelistedAppsAndOptions3 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v12 = [whitelistedAppsAndOptions3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(whitelistedAppsAndOptions3);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) objectForKey:@"Identifier"];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [whitelistedAppsAndOptions3 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }

    v26 = @"appLockBundleIDs";
    v24 = @"values";
    v25 = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v3 setObject:v18 forKeyedSubscript:@"intersection"];
  }

  return v3;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCAppWhitelistPayloadBase;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  v4 = stubDictionary;
  whitelistedAppsAndOptions = self->_whitelistedAppsAndOptions;
  if (whitelistedAppsAndOptions)
  {
    [stubDictionary setObject:whitelistedAppsAndOptions forKey:@"Apps"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCAppWhitelistPayloadBase allowAccessWithoutPasscode](self, "allowAccessWithoutPasscode")}];
  [v4 setObject:v6 forKey:@"AllowAccessWithoutPasscode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCAppWhitelistPayloadBase forceAllowSupervisorAccess](self, "forceAllowSupervisorAccess")}];
  [v4 setObject:v7 forKey:@"ForceAllowSupervisorAccess"];

  return v4;
}

- (id)verboseDescription
{
  v7.receiver = self;
  v7.super_class = MCAppWhitelistPayloadBase;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  [v4 appendFormat:@"App whitelist:\n"];
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  [v4 appendFormat:@"  Apps: %@\n", whitelistedAppsAndOptions];

  [v4 appendFormat:@"  Allow access without passcode: %d\n", -[MCAppWhitelistPayloadBase allowAccessWithoutPasscode](self, "allowAccessWithoutPasscode")];
  [v4 appendFormat:@"  Allow supervisor access: %d\n", -[MCAppWhitelistPayloadBase forceAllowSupervisorAccess](self, "forceAllowSupervisorAccess")];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v37[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MCKeyValue alloc];
  v5 = MCLocalizedStringForBool([(MCAppWhitelistPayloadBase *)self allowAccessWithoutPasscode]);
  v6 = MCLocalizedString(@"ALLOW_ACCESS_WITHOUT_PASSCODE");
  v7 = [(MCKeyValue *)v4 initWithLocalizedString:v5 localizedKey:v6];

  v8 = [MCKeyValue alloc];
  v9 = MCLocalizedStringForBool([(MCAppWhitelistPayloadBase *)self forceAllowSupervisorAccess]);
  v10 = MCLocalizedString(@"ALLOW_SUPERVISOR_ACCESS");
  v11 = [(MCKeyValue *)v8 initWithLocalizedString:v9 localizedKey:v10];

  v37[0] = v7;
  v37[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v13 = [MCKeyValueSection sectionWithKeyValues:v12];

  v14 = v3;
  [v3 addObject:v13];
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];

  if (whitelistedAppsAndOptions)
  {
    v28 = v13;
    v29 = v11;
    v30 = v7;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = objc_opt_new();
          v22 = [v20 objectForKey:@"Identifier"];
          v23 = [MCKeyValue alloc];
          v24 = MCLocalizedString(@"APP");
          v25 = [(MCKeyValue *)v23 initWithLocalizedString:v22 localizedKey:v24];

          [v21 addObject:v25];
          v26 = [MCKeyValueSection sectionWithKeyValues:v21];
          [v14 addObject:v26];
        }

        v17 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v11 = v29;
    v7 = v30;
    v13 = v28;
  }

  return v14;
}

@end