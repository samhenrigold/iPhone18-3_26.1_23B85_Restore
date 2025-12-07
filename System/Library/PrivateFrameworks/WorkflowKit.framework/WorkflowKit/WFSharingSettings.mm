@interface WFSharingSettings
+ (BOOL)isPrivateSharingEnabled;
+ (BOOL)shortcutFileSharingEnabled;
+ (id)privateSharingDisabledAlertWithShortcutName:(id)name;
+ (id)privateSharingDisabledErrorWithShortcutName:(id)name;
+ (id)sharingDisabledAlertWithShortcutName:(id)name;
+ (id)sharingDisabledAlertWithWorkflowName:(id)name;
+ (id)shortcutFileSharingDisabledAlert;
+ (id)shortcutFileSharingDisabledError;
@end

@implementation WFSharingSettings

+ (id)privateSharingDisabledAlertWithShortcutName:(id)name
{
  v3 = MEMORY[0x1E6996C70];
  v4 = [self privateSharingDisabledErrorWithShortcutName:name];
  v5 = [v3 alertWithError:v4];

  return v5;
}

+ (id)privateSharingDisabledErrorWithShortcutName:(id)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"“%@” Can’t Be Imported");
    nameCopy = [v4 localizedStringWithFormat:v5, nameCopy];
  }

  else
  {
    nameCopy = WFLocalizedString(@"Shortcut Cannot Be Imported");
  }

  if ([nameCopy length])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"The shortcut “%@” was received from someone you know, but it cannot be opened because Private Sharing is disabled in your Shortcuts settings.");
    nameCopy2 = [v7 localizedStringWithFormat:v8, nameCopy];
  }

  else
  {
    nameCopy2 = WFLocalizedString(@"This shortcut was received from someone you may know, but it cannot be opened because Private Sharing is disabled in your Shortcuts settings.");
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A588];
  v15[0] = *MEMORY[0x1E696A578];
  v15[1] = v11;
  v16[0] = nameCopy2;
  v16[1] = nameCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v10 errorWithDomain:@"WFShortcutSharingErrorDomain" code:2 userInfo:v12];

  return v13;
}

+ (BOOL)isPrivateSharingEnabled
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFShortcutsPrivateSharingEnabled"];

  return v3;
}

+ (id)shortcutFileSharingDisabledError
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8[0] = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Importing unsigned shortcut files is not supported. Please use another sharing option.");
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E696A588];
  v4 = WFLocalizedString(@"Shortcut Cannot Be Opened");
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 errorWithDomain:@"WFShortcutSharingErrorDomain" code:0 userInfo:v5];

  return v6;
}

+ (id)shortcutFileSharingDisabledAlert
{
  v2 = MEMORY[0x1E6996C70];
  shortcutFileSharingDisabledError = [self shortcutFileSharingDisabledError];
  v4 = [v2 alertWithError:shortcutFileSharingDisabledError];

  return v4;
}

+ (id)sharingDisabledAlertWithShortcutName:(id)name
{
  v14[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"“%@” Can’t Be Opened");
    nameCopy = [v4 localizedStringWithFormat:v5, nameCopy];
  }

  else
  {
    nameCopy = WFLocalizedString(@"Shortcut Cannot Be Opened");
  }

  v7 = WFLocalizedString(@"This shortcut cannot be opened because your Shortcuts security settings don’t allow untrusted shortcuts.");
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A588];
  v13[0] = *MEMORY[0x1E696A578];
  v13[1] = v9;
  v14[0] = v7;
  v14[1] = nameCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 errorWithDomain:@"WFShortcutSharingErrorDomain" code:2 userInfo:v10];

  return v11;
}

+ (id)sharingDisabledAlertWithWorkflowName:(id)name
{
  v3 = MEMORY[0x1E6996C70];
  v4 = [self sharingDisabledAlertWithShortcutName:name];
  v5 = [v3 alertWithError:v4];

  return v5;
}

+ (BOOL)shortcutFileSharingEnabled
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults BOOLForKey:@"WFShortcutsFileSharingEnabled"];

  return v3;
}

@end