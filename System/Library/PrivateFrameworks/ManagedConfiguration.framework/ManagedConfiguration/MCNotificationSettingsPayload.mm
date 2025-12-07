@interface MCNotificationSettingsPayload
+ (id)typeStrings;
- (MCNotificationSettingsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)validatedNotificationSettings:(id)settings outError:(id *)error;
@end

@implementation MCNotificationSettingsPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.notificationsettings";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCNotificationSettingsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v33.receiver = self;
  v33.super_class = MCNotificationSettingsPayload;
  v10 = [(MCPayload *)&v33 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    isStub = [profileCopy isStub];
    v12 = objc_opt_class();
    if (isStub)
    {
      v32 = 0;
      v13 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:v12 withKey:@"NotificationSettings" isRequired:0 outError:&v32];
      v14 = v32;
      notificationSettings = v10->_notificationSettings;
      v10->_notificationSettings = v13;
    }

    else
    {
      v31 = 0;
      notificationSettings = [dictionaryCopy MCValidateAndRemoveArrayOfClass:v12 withKey:@"NotificationSettings" isRequired:1 outError:&v31];
      v16 = v31;
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v30 = 0;
        v17 = [(MCNotificationSettingsPayload *)v10 validatedNotificationSettings:notificationSettings outError:&v30];
        v14 = v30;
        [(MCNotificationSettingsPayload *)v10 setNotificationSettings:v17];
      }
    }

    if (v14)
    {
      v18 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
      v19 = v18;
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = v23;
        mCVerboseDescription = [v19 MCVerboseDescription];
        *buf = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    if ([dictionaryCopy count])
    {
      v26 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v35 = friendlyName;
        v36 = 2114;
        v37 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  return v10;
}

- (id)validatedNotificationSettings:(id)settings outError:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v8 = settingsCopy;
  v9 = [v8 countByEnumeratingWithState:&v88 objects:v94 count:16];
  if (!v9)
  {

LABEL_68:
    v59 = array;
    v11 = 0;
    if (error)
    {
LABEL_69:
      v60 = v11;
      *error = v11;
    }

    goto LABEL_70;
  }

  v10 = v9;
  v73 = array;
  v74 = array2;
  errorCopy = error;
  v11 = 0;
  v76 = *v89;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v89 != v76)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v88 + 1) + 8 * i) mutableCopy];
      v87 = v11;
      v14 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"BundleIdentifier" isRequired:1 outError:&v87];
      v15 = v87;

      if (v15)
      {

        v59 = 0;
        v11 = v15;
        goto LABEL_73;
      }

      v16 = objc_opt_class();
      v86 = 0;
      v17 = [v13 MCValidateAndRemoveObjectOfClass:v16 withKey:@"NotificationsEnabled" isRequired:0 outError:&v86];
      v18 = v86;
      if (v18)
      {
        v11 = v18;

        v59 = 0;
LABEL_73:
        error = errorCopy;
        array = v73;
        array2 = v74;
        if (errorCopy)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v19 = objc_opt_class();
      v85 = 0;
      v20 = [v13 MCValidateAndRemoveObjectOfClass:v19 withKey:@"ShowInNotificationCenter" isRequired:0 outError:&v85];
      v21 = v85;
      if (v21)
      {
        v11 = v21;
        v22 = 0;
      }

      else
      {
        v23 = objc_opt_class();
        v84 = 0;
        v24 = [v13 MCValidateAndRemoveObjectOfClass:v23 withKey:@"ShowInLockScreen" isRequired:0 outError:&v84];
        v25 = v84;
        if (v25)
        {
          v11 = v25;
          v26 = v24;
          v22 = 0;
        }

        else
        {
          v27 = objc_opt_class();
          v83 = 0;
          v75 = [v13 MCValidateAndRemoveObjectOfClass:v27 withKey:@"AlertType" isRequired:0 outError:&v83];
          v28 = v83;
          if (v28)
          {
            v11 = v28;
            v26 = v24;
            v22 = 0;
          }

          else
          {
            v29 = objc_opt_class();
            v82 = 0;
            v71 = [v13 MCValidateAndRemoveObjectOfClass:v29 withKey:@"BadgesEnabled" isRequired:0 outError:&v82];
            v30 = v82;
            if (v30)
            {
              v11 = v30;
              v26 = v24;
              v22 = 0;
            }

            else
            {
              v31 = objc_opt_class();
              v81 = 0;
              v70 = [v13 MCValidateAndRemoveObjectOfClass:v31 withKey:@"SoundsEnabled" isRequired:0 outError:&v81];
              v32 = v81;
              if (v32)
              {
                v11 = v32;
                v26 = v24;
                v22 = 0;
              }

              else
              {
                v33 = objc_opt_class();
                v80 = 0;
                v69 = [v13 MCValidateAndRemoveObjectOfClass:v33 withKey:@"ShowInCarPlay" isRequired:0 outError:&v80];
                v34 = v80;
                if (v34)
                {
                  v11 = v34;
                  v26 = v24;
                  v22 = 0;
                }

                else
                {
                  v35 = objc_opt_class();
                  v79 = 0;
                  v68 = [v13 MCValidateAndRemoveObjectOfClass:v35 withKey:@"CriticalAlertEnabled" isRequired:0 outError:&v79];
                  v36 = v79;
                  if (v36)
                  {
                    v11 = v36;
                    v26 = v24;
                    v22 = 0;
                  }

                  else
                  {
                    v37 = objc_opt_class();
                    v78 = 0;
                    v67 = [v13 MCValidateAndRemoveObjectOfClass:v37 withKey:@"GroupingType" isRequired:0 outError:&v78];
                    v38 = v78;
                    if (v38)
                    {
                      v11 = v38;
                      v26 = v24;
                      v22 = 0;
                    }

                    else
                    {
                      v39 = objc_opt_class();
                      v77 = 0;
                      v66 = [v13 MCValidateAndRemoveObjectOfClass:v39 withKey:@"PreviewType" isRequired:0 outError:&v77];
                      v40 = v77;
                      if (v40)
                      {
                        v11 = v40;
                        v26 = v24;
                        v22 = 0;
                      }

                      else
                      {
                        v63 = [v74 containsObject:v14];
                        if (v63)
                        {
                          v26 = v24;
                          v48 = MEMORY[0x1E696ABC0];
                          v64 = MCErrorArray(@"ERROR_PAYLOAD_MULTIPLE_NOTIFICATION_SETTINGS_FOR_SAME_APP", v41, v42, v43, v44, v45, v46, v47, 0);
                          v11 = [v48 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2000 descriptionArray:? errorType:?];
                        }

                        else
                        {
                          v65 = objc_alloc(MEMORY[0x1E695DF90]);
                          v92[0] = @"BundleIdentifier";
                          v92[1] = @"NotificationsEnabled";
                          if (v17)
                          {
                            v49 = v17;
                          }

                          else
                          {
                            v49 = MEMORY[0x1E695E118];
                          }

                          v93[0] = v14;
                          v93[1] = v49;
                          if (v20)
                          {
                            v50 = v20;
                          }

                          else
                          {
                            v50 = MEMORY[0x1E695E118];
                          }

                          v92[2] = @"ShowInNotificationCenter";
                          v92[3] = @"ShowInLockScreen";
                          if (v24)
                          {
                            v51 = v24;
                          }

                          else
                          {
                            v51 = MEMORY[0x1E695E118];
                          }

                          v93[2] = v50;
                          v93[3] = v51;
                          v52 = &unk_1F1AA5758;
                          if (v75)
                          {
                            v52 = v75;
                          }

                          v92[4] = @"AlertType";
                          v53 = v71;
                          if (!v71)
                          {
                            v53 = MEMORY[0x1E695E118];
                          }

                          v93[4] = v52;
                          v93[5] = v53;
                          v54 = v70;
                          if (!v70)
                          {
                            v54 = MEMORY[0x1E695E118];
                          }

                          v92[5] = @"BadgesEnabled";
                          v92[6] = @"SoundsEnabled";
                          v92[7] = @"ShowInCarPlay";
                          v55 = v69;
                          if (!v69)
                          {
                            v55 = MEMORY[0x1E695E118];
                          }

                          v93[6] = v54;
                          v93[7] = v55;
                          v56 = MEMORY[0x1E695E110];
                          if (v68)
                          {
                            v56 = v68;
                          }

                          v92[8] = @"CriticalAlertEnabled";
                          v92[9] = @"GroupingType";
                          v57 = &unk_1F1AA5770;
                          if (v67)
                          {
                            v57 = v67;
                          }

                          v93[8] = v56;
                          v93[9] = v57;
                          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:10];
                          v64 = [v65 initWithDictionary:v58];

                          if (v66)
                          {
                            [v64 setObject:v66 forKeyedSubscript:@"PreviewType"];
                          }

                          v26 = v24;
                          [v74 addObject:v14];
                          [v73 addObject:v64];
                          v11 = 0;
                        }

                        v22 = v63 ^ 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!v22)
      {
        goto LABEL_64;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v88 objects:v94 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_64:

  error = errorCopy;
  array = v73;
  array2 = v74;
  if (!v11)
  {
    goto LABEL_68;
  }

  v59 = 0;
  if (errorCopy)
  {
    goto LABEL_69;
  }

LABEL_70:
  v61 = v59;

  return v59;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCNotificationSettingsPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  notificationSettings = [(MCNotificationSettingsPayload *)self notificationSettings];
  [stubDictionary setObject:notificationSettings forKeyedSubscript:@"NotificationSettings"];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v2 = objc_opt_new();
  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

@end