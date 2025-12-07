@interface WFShortcutsSecuritySettings
+ (BOOL)allowsDeletingLargeAmountsOfData;
+ (BOOL)allowsDeletingWithoutConfirmation;
+ (BOOL)allowsSharingLargeAmountsOfData;
+ (BOOL)areScriptingActionsEnabled;
+ (id)scripingActionDisabledErrorWithActionName:(id)name;
@end

@implementation WFShortcutsSecuritySettings

+ (BOOL)allowsDeletingLargeAmountsOfData
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFAllowDeletingLargeAmountsOfDataKey"];

  return v3;
}

+ (BOOL)allowsDeletingWithoutConfirmation
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFAllowDeletingWithoutConfirmationKey"];

  return v3;
}

+ (BOOL)allowsSharingLargeAmountsOfData
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFAllowSharingLargeAmountsOfDataKey"];

  return v3;
}

+ (id)scripingActionDisabledErrorWithActionName:(id)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"“%@” Can’t Be Run");
    nameCopy = [v4 localizedStringWithFormat:v5, nameCopy];
  }

  else
  {
    nameCopy = WFLocalizedString(@"Action Cannot Be Run");
  }

  if ([nameCopy length])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"This shortcut cannot be run because “%@” is a scripting action and your Shortcuts security settings don’t allow you to run scripting actions.");
    nameCopy2 = [v7 localizedStringWithFormat:v8, nameCopy];
  }

  else
  {
    nameCopy2 = WFLocalizedString(@"This shortcut cannot be run because this action is a scripting action and your Shortcuts security settings don’t allow you to run scripting actions.");
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A588];
  v15[0] = *MEMORY[0x1E696A578];
  v15[1] = v11;
  v16[0] = nameCopy;
  v16[1] = nameCopy2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v10 errorWithDomain:@"WFActionErrorDomain" code:12 userInfo:v12];

  return v13;
}

+ (BOOL)areScriptingActionsEnabled
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFScriptingActionEnabledKey"];

  return v3;
}

@end