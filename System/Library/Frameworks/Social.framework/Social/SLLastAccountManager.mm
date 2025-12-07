@interface SLLastAccountManager
+ (id)_lastAccountOfTypeIdentifier:(id)identifier inStore:(id)store updatePrefs:(BOOL)prefs prefKey:(id)key prefAppID:(id)d;
+ (void)_setLastAccount:(id)account prefKey:(id)key prefAppID:(id)d;
@end

@implementation SLLastAccountManager

+ (void)_setLastAccount:(id)account prefKey:(id)key prefAppID:(id)d
{
  applicationID = d;
  keyCopy = key;
  identifier = [account identifier];
  CFPreferencesSetAppValue(keyCopy, identifier, applicationID);

  CFPreferencesAppSynchronize(applicationID);
}

+ (id)_lastAccountOfTypeIdentifier:(id)identifier inStore:(id)store updatePrefs:(BOOL)prefs prefKey:(id)key prefAppID:(id)d
{
  prefsCopy = prefs;
  identifierCopy = identifier;
  storeCopy = store;
  keyCopy = key;
  dCopy = d;
  v21 = CFPreferencesCopyAppValue(keyCopy, dCopy);
  if (!v21 || (_SLLog(v7, 7, @"SLLastAccountManager fetching account with identifier %@", v16, v17, v18, v19, v20, v21), [storeCopy accountWithIdentifier:v21], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = [storeCopy accountTypeWithAccountTypeIdentifier:identifierCopy];
    v24 = [storeCopy accountsWithAccountType:v23];

    if ([v24 count])
    {
      v22 = [v24 objectAtIndex:0];
      if (prefsCopy)
      {
        [SLLastAccountManager _setLastAccount:v22 prefKey:keyCopy prefAppID:dCopy];
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

@end