@interface RMStoreUtility
+ (BOOL)isValidURL:(id)l;
+ (id)_passcodeSettingsForUserEnrollmentWithDeclaration:(id)declaration;
+ (id)filterForUserEnrollmentWithDeclaration:(id)declaration;
@end

@implementation RMStoreUtility

+ (id)filterForUserEnrollmentWithDeclaration:(id)declaration
{
  declarationCopy = declaration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [RMStoreUtility _passcodeSettingsForUserEnrollmentWithDeclaration:declarationCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_passcodeSettingsForUserEnrollmentWithDeclaration:(id)declaration
{
  v3 = MEMORY[0x277D46030];
  declarationCopy = declaration;
  v5 = objc_opt_new();
  uUIDString = [v5 UUIDString];
  payloadMaximumInactivityInMinutes = [declarationCopy payloadMaximumInactivityInMinutes];

  v8 = &unk_287474D50;
  if (!payloadMaximumInactivityInMinutes)
  {
    v8 = 0;
  }

  v9 = [v3 buildWithIdentifier:uUIDString requirePasscode:&unk_287474D08 requireAlphanumericPasscode:0 requireComplexPasscode:&unk_287474D08 minimumLength:&unk_287474D20 minimumComplexCharacters:&unk_287474D38 maximumFailedAttempts:0 failedAttemptsResetInMinutes:0 maximumGracePeriodInMinutes:0 maximumInactivityInMinutes:v8 maximumPasscodeAgeInDays:0 passcodeReuseLimit:0 changeAtNextAuth:0 customRegex:0];

  return v9;
}

+ (BOOL)isValidURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme caseInsensitiveCompare:@"https"];

  v10 = 1;
  if (v5)
  {
    if (![MEMORY[0x277D45F48] permissiveURLSchemes] || (objc_msgSend(lCopy, "scheme"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "caseInsensitiveCompare:", @"http"), v6, v7) && (objc_msgSend(lCopy, "scheme"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "caseInsensitiveCompare:", @"file"), v8, v9))
    {
      v10 = 0;
    }
  }

  return v10;
}

@end