@interface PSThirdPartySettingsDetail
+ (id)preferencesURLForBundleID:(id)d forSettingType:(int64_t)type;
@end

@implementation PSThirdPartySettingsDetail

+ (id)preferencesURLForBundleID:(id)d forSettingType:(int64_t)type
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = _PSLoggingFacility(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = dCopy;
    v49 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "########### Find (%@) type (%d)", buf, 0x12u);
  }

  v8 = MEMORY[0x1E69D5500];
  v9 = kTCCContactsID;
  switch(type)
  {
    case 0:
      v10 = _PSLoggingFacility(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "########### PSSettingTypeTopLevel", buf, 2u);
      }

      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      v12 = [defaultWorkspace applicationIsInstalled:dCopy];

      if (v12)
      {
        v14 = MEMORY[0x1E695DFF8];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"app-prefs:%@", dCopy];
        goto LABEL_19;
      }

      v19 = 0;
      goto LABEL_46;
    case 1:
      v18 = +[PSNotificationSettingsController sharedInstance];
      v19 = [v18 sectionInfoForIdentifier:dCopy];

      if (v19)
      {
        v14 = MEMORY[0x1E695DFF8];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", dCopy];
        v17 = LABEL_19:;
        v19 = [v14 URLWithString:v17];
        goto LABEL_45;
      }

      goto LABEL_46;
    case 2:
      if (([(__CFString *)dCopy isEqualToString:@"com.apple.weather"]& 1) != 0)
      {
        v15 = @"com.apple.locationd.bundle-/System/Library/PrivateFrameworks/Weather.framework";
LABEL_53:

        goto LABEL_56;
      }

      if ([(__CFString *)dCopy isEqualToString:@"com.apple.AssistantServices"])
      {
        v15 = @"com.apple.locationd.bundle-/System/Library/PrivateFrameworks/AssistantServices.framework";
        goto LABEL_53;
      }

      v15 = dCopy;
LABEL_56:
      dCopy = CLCopyAppsUsingLocation();
      [(__CFString *)dCopy allKeys];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = v44 = 0u;
      v33 = [(__CFString *)v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (!v33)
      {
LABEL_64:

        v17 = @"LOCATION";
        v26 = dCopy;
        dCopy = v15;
        v15 = 0;
        goto LABEL_36;
      }

      v34 = v33;
      v35 = *v42;
      v17 = @"LOCATION";
LABEL_58:
      v36 = 0;
      while (1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v20);
        }

        if ([*(*(&v41 + 1) + 8 * v36) isEqualToString:v15])
        {
          break;
        }

        if (v34 == ++v36)
        {
          v34 = [(__CFString *)v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (!v34)
          {
            goto LABEL_64;
          }

          goto LABEL_58;
        }
      }

LABEL_35:
      v26 = v20;
LABEL_36:

      v20 = v26;
      v27 = dCopy;
      dCopy = v15;
LABEL_38:
      v28 = dCopy;

      dCopy = v27;
LABEL_40:

      if ([(__CFString *)v17 length]&& [(__CFString *)v28 length])
      {
        v29 = MEMORY[0x1E695DFF8];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=Privacy&path=%@#%@", v17, v28];
        v19 = [v29 URLWithString:v30];
      }

      else
      {
        v19 = 0;
      }

      dCopy = v28;
LABEL_45:

LABEL_46:
      v31 = _PSLoggingFacility(v13);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v19;
        _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "########### URL (%@)", buf, 0xCu);
      }

      return v19;
    case 3:
      goto LABEL_25;
    case 4:
      v8 = MEMORY[0x1E69D5518];
      v9 = kTCCCalendarsID;
      goto LABEL_25;
    case 5:
      v8 = MEMORY[0x1E69D55D8];
      v9 = kTCCRemindersID;
      goto LABEL_25;
    case 6:
      v8 = MEMORY[0x1E69D55C8];
      v9 = kTCCPhotosID;
      goto LABEL_25;
    case 7:
      v8 = MEMORY[0x1E69D5508];
      v9 = kTCCBluetoothSharingID;
      goto LABEL_25;
    case 8:
      v8 = MEMORY[0x1E69D5588];
      v9 = kTCCMicrophoneID;
      goto LABEL_25;
    case 9:
      v8 = MEMORY[0x1E69D55F0];
      v9 = kTCCSpeechRecognitionID;
      goto LABEL_25;
    case 10:
      v8 = MEMORY[0x1E69D5570];
      v9 = kTCCLiverpoolID;
      goto LABEL_25;
    case 11:
      v8 = MEMORY[0x1E69D55A8];
      v9 = kTCCMotionID;
      goto LABEL_25;
    case 12:
      v8 = MEMORY[0x1E69D5520];
      v9 = kTCCCameraID;
      goto LABEL_25;
    case 13:
      v8 = MEMORY[0x1E69D5580];
      v9 = kTCCMediaLibraryID;
      goto LABEL_25;
    case 14:
      v8 = MEMORY[0x1E69D5618];
      v9 = kTCCWebKitIntelligentTrackingPreventionID;
LABEL_25:
      v17 = *v9;
      v16 = *v8;
      goto LABEL_26;
    default:
      v16 = &stru_1EFE45030;
      v17 = &stru_1EFE45030;
LABEL_26:
      if ([(__CFString *)v16 length])
      {
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v20 = TCCAccessCopyInformation();
        v15 = [(__CFString *)v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (!v15)
        {
          goto LABEL_35;
        }

        v21 = *v38;
        v22 = MEMORY[0x1E69D54E0];
        while (1)
        {
          for (i = 0; i != v15; i = (i + 1))
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v20);
            }

            v24 = CFBundleGetIdentifier([*(*(&v37 + 1) + 8 * i) objectForKey:*v22]);
            v25 = [v24 isEqualToString:dCopy];

            if (v25)
            {
              v27 = v20;
              goto LABEL_38;
            }
          }

          v15 = [(__CFString *)v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (!v15)
          {
            goto LABEL_35;
          }
        }
      }

      v28 = 0;
      goto LABEL_40;
  }
}

@end