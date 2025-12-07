@interface UNMutableNotificationContent(EmergencyAlerts)
- (id)ea_bundleForBundleIdentifier:()EmergencyAlerts;
- (id)ea_externalToneFileURLForTone:()EmergencyAlerts inBundle:;
- (id)ea_externalVibrationPatternFileURLForVibration:()EmergencyAlerts inBundle:;
- (id)ea_getUpdatedBodyString:()EmergencyAlerts withMessageDictionary:;
- (id)ea_timestampSubtitleForDate:()EmergencyAlerts locale:;
- (id)ea_timestampSubtitleForNow;
- (void)ea_setAlertCategory:()EmergencyAlerts;
- (void)ea_setPropertiesForCellBroadcastMessage:()EmergencyAlerts withActivePhoneCall:;
- (void)ea_updateAlertCategory:()EmergencyAlerts;
- (void)ea_updateUserInfo:()EmergencyAlerts withMessageDictionary:;
@end

@implementation UNMutableNotificationContent(EmergencyAlerts)

- (id)ea_timestampSubtitleForNow
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [self ea_timestampSubtitleForDate:date locale:0];

  return v3;
}

- (id)ea_timestampSubtitleForDate:()EmergencyAlerts locale:
{
  v5 = MEMORY[0x277CCA968];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"yMdjm" options:0 locale:v6];

  [v8 setDateFormat:v9];
  v10 = [v8 stringFromDate:v7];

  return v10;
}

- (id)ea_externalToneFileURLForTone:()EmergencyAlerts inBundle:
{
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 length])
  {
    lastPathComponent = [v5 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    lastPathComponent2 = [v5 lastPathComponent];
    pathExtension = [lastPathComponent2 pathExtension];

    v11 = [v6 URLForResource:stringByDeletingPathExtension withExtension:pathExtension];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)ea_externalVibrationPatternFileURLForVibration:()EmergencyAlerts inBundle:
{
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 length])
  {
    lastPathComponent = [v5 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    lastPathComponent2 = [v5 lastPathComponent];
    pathExtension = [lastPathComponent2 pathExtension];

    v11 = [v6 URLForResource:stringByDeletingPathExtension withExtension:pathExtension];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)ea_bundleForBundleIdentifier:()EmergencyAlerts
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v3];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [(UNMutableNotificationContent(EmergencyAlerts) *)v3 ea_bundleForBundleIdentifier:v5];
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (void)ea_updateAlertCategory:()EmergencyAlerts
{
  v10 = *MEMORY[0x277D85DE8];
  categoryIdentifier = [self categoryIdentifier];
  if ([categoryIdentifier isEqualToString:@"alert-configurable"] & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"alert-configurable-spinner"))
  {
    v3 = EACategoryIdentifierConfigurableAlertDetailed;
LABEL_4:
    [self setCategoryIdentifier:*v3];
    goto LABEL_5;
  }

  if ([categoryIdentifier isEqualToString:@"alert"] & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"alert-spinner"))
  {
    v3 = EACategoryIdentifierAlertDetailed;
    goto LABEL_4;
  }

  if ([categoryIdentifier isEqualToString:@"igneous"])
  {
LABEL_5:
    v4 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      categoryIdentifier2 = [self categoryIdentifier];
      v8 = 138412290;
      v9 = categoryIdentifier2;
      _os_log_impl(&dword_249FC1000, v5, OS_LOG_TYPE_DEFAULT, "Alert Category updated: %@", &v8, 0xCu);
    }

    goto LABEL_7;
  }

  v7 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
  {
    [(UNMutableNotificationContent(EmergencyAlerts) *)v7 ea_updateAlertCategory:self];
  }

LABEL_7:
}

- (void)ea_setAlertCategory:()EmergencyAlerts
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277CC4100]];
  v6 = [v5 objectForKey:@"UserConfigurable"];
  bOOLValue = [v6 BOOLValue];

  v8 = [v5 objectForKey:@"SwitchName"];
  v9 = v8;
  if (v8)
  {
    if ([v8 isEqualToString:@"Advanced Earthquake Alert"])
    {
      v10 = EALogDefault;
      if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_249FC1000, v10, OS_LOG_TYPE_DEFAULT, "Overriding user configurable category to NO", &v20, 2u);
      }

      [self setCategoryIdentifier:@"igneous"];
      goto LABEL_20;
    }
  }

  else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
  {
    [UNMutableNotificationContent(EmergencyAlerts) ea_setAlertCategory:];
  }

  v11 = [v4 objectForKey:@"kCTSMSAppleSafetyAlertData"];

  if (v11)
  {
    v12 = EACategoryIdentifierConfigurableAlertDetailed;
    if (!bOOLValue)
    {
      v12 = EACategoryIdentifierAlertDetailed;
    }

    [self setCategoryIdentifier:*v12];
    v13 = [v4 objectForKey:*MEMORY[0x277CC4120]];
    ea_sendSafetyAlertTapIndication(v13, 1);
  }

  else
  {
    v14 = [v4 objectForKey:@"kCTSMSAppleSafetyAlertSupport"];

    if (v14)
    {
      v15 = EACategoryIdentifierConfigurableAlertSpinner;
      v16 = EACategoryIdentifierAlertSpinner;
    }

    else
    {
      v15 = EACategoryIdentifierConfigurableAlert;
      v16 = EACategoryIdentifierAlert;
    }

    if (!bOOLValue)
    {
      v15 = v16;
    }

    [self setCategoryIdentifier:*v15];
  }

  v17 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    categoryIdentifier = [self categoryIdentifier];
    v20 = 138412290;
    v21 = categoryIdentifier;
    _os_log_impl(&dword_249FC1000, v18, OS_LOG_TYPE_DEFAULT, "Alert Category: %@", &v20, 0xCu);
  }

LABEL_20:
}

- (id)ea_getUpdatedBodyString:()EmergencyAlerts withMessageDictionary:
{
  v5 = a3;
  v6 = [a4 objectForKey:@"kCTSMSAppleSafetyAlertData"];
  v7 = v6;
  if (!v6)
  {
    v14 = v5;
    goto LABEL_18;
  }

  v8 = [v6 objectForKeyedSubscript:@"CmamText"];
  v9 = [v7 objectForKeyedSubscript:@"CmamLongText"];
  if (!(v8 | v9))
  {
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [UNMutableNotificationContent(EmergencyAlerts) ea_getUpdatedBodyString:withMessageDictionary:];
    }

    v14 = v5;
    goto LABEL_17;
  }

  v10 = [v7 objectForKeyedSubscript:@"ReplaceAlertBodyWithCmamLongText"];
  if ([v10 BOOLValue] && objc_msgSend(v5, "rangeOfString:", v8) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "rangeOfString:", v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 length];
    if (v11 > [v8 length])
    {
      v12 = [v5 stringByReplacingOccurrencesOfString:v8 withString:v9];

      v13 = EALogDefault;
      if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_249FC1000, v13, OS_LOG_TYPE_DEFAULT, "Alert body updated with CMAM long text", v16, 2u);
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [UNMutableNotificationContent(EmergencyAlerts) ea_getUpdatedBodyString:withMessageDictionary:];
    }
  }

  v12 = v5;
LABEL_16:
  v14 = v12;

LABEL_17:
LABEL_18:

  return v14;
}

- (void)ea_updateUserInfo:()EmergencyAlerts withMessageDictionary:
{
  v6 = a3;
  v7 = [a4 objectForKey:@"kCTSMSAppleSafetyAlertData"];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [v7 objectForKey:@"Instruction"];
      if (!v9 && os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
      {
        [UNMutableNotificationContent(EmergencyAlerts) ea_updateUserInfo:withMessageDictionary:];
      }

      v10 = [v8 objectForKey:@"ExpiryTimestamp"];
      if (v10)
      {
        v11 = [v8 objectForKey:@"EffectiveTimestamp"];
        if (v11)
        {
          [v6 setObject:v9 forKeyedSubscript:@"Instruction"];
          [v6 setObject:v10 forKeyedSubscript:@"ExpiryTimestamp"];
          [v6 setObject:v11 forKeyedSubscript:@"EffectiveTimestamp"];
          v12 = EALogDefault;
          if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_249FC1000, v12, OS_LOG_TYPE_DEFAULT, "User Info updated with Apple safety alert", v14, 2u);
          }
        }

        else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
        {
          [UNMutableNotificationContent(EmergencyAlerts) ea_updateUserInfo:withMessageDictionary:];
        }
      }

      else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
      {
        [UNMutableNotificationContent(EmergencyAlerts) ea_updateUserInfo:withMessageDictionary:];
      }
    }

    else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [UNMutableNotificationContent(EmergencyAlerts) ea_updateUserInfo:withMessageDictionary:];
    }
  }

  else
  {
    v13 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249FC1000, v13, OS_LOG_TYPE_DEFAULT, "No Apple safety alert data", buf, 2u);
    }
  }

  [self setUserInfo:v6];
}

- (void)ea_setPropertiesForCellBroadcastMessage:()EmergencyAlerts withActivePhoneCall:
{
  v108[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249FC1000, v6, OS_LOG_TYPE_DEFAULT, "Setting properties for cellbroadcast message", buf, 2u);
  }

  v7 = [v5 objectForKey:*MEMORY[0x277CC4138]];
  v8 = [v5 objectForKey:*MEMORY[0x277CC4140]];
  v9 = [v5 objectForKey:*MEMORY[0x277CC4120]];
  v10 = [self ea_getUpdatedBodyString:v9 withMessageDictionary:v5];

  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v89 = v7;
  if (!v11)
  {
    v108[0] = v8;
    v108[1] = @":\n";
    v108[2] = v7;
    v108[3] = @"\n\n";
    v108[4] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:5];
    v13 = [v12 componentsJoinedByString:&stru_285D24188];

    v10 = v13;
  }

  v14 = [v5 objectForKey:*MEMORY[0x277CC4118]];
  bOOLValue = [v14 BOOLValue];

  v15 = [v5 objectForKey:*MEMORY[0x277CC4108]];
  v98 = [v5 objectForKey:*MEMORY[0x277CC40F0]];
  v16 = [v5 objectForKey:*MEMORY[0x277CC4100]];
  v17 = [v16 objectForKey:@"SoundIsMutableInDND"];
  bOOLValue2 = [v17 BOOLValue];

  v18 = [v16 objectForKey:@"SoundAlertDeviceInMute"];
  bOOLValue3 = [v18 BOOLValue];

  v19 = [v16 objectForKey:@"ShowTimestamp"];
  bOOLValue4 = [v19 BOOLValue];

  v90 = [v16 objectForKey:@"SoundAlertPeriod"];
  v97 = v16;
  v21 = [v16 objectForKey:@"NotificationTitle"];
  v22 = [v5 objectForKey:*MEMORY[0x277CC40F8]];
  v23 = [v22 objectForKey:@"PlaySoundUntilAcknowledged"];
  bOOLValue5 = [v23 BOOLValue];

  v24 = [v5 objectForKey:*MEMORY[0x277CC4130]];
  v86 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = [v22 objectForKey:@"Sound"];
  }

  v99 = v25;
  v88 = v8;
  v83 = [v22 objectForKey:@"OverrideAccessibilityVibrationSetting"];

  v96 = [v22 objectForKey:@"Vibration"];
  v26 = [v22 objectForKey:@"SystemSound"];
  v85 = v26;
  if (v26)
  {
    v27 = [v26 caseInsensitiveCompare:@"TEXT"] == 0;
  }

  else
  {
    v27 = 1;
  }

  v87 = v22;
  v28 = [v22 objectForKey:@"AllowCallAudioInterruption"];
  bOOLValue6 = [v28 BOOLValue];

  if (![v21 length])
  {
    ea_defaultTitle = [self ea_defaultTitle];

    v21 = ea_defaultTitle;
  }

  v81 = bOOLValue6;
  v95 = v5;
  v93 = v21;
  if (bOOLValue4)
  {
    ea_timestampSubtitleForNow = [self ea_timestampSubtitleForNow];
  }

  else
  {
    ea_timestampSubtitleForNow = &stru_285D24188;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v33 = v10;
  v34 = v33;
  if ([v33 length])
  {
    for (i = 0; i < [v33 length]; ++i)
    {
      if (![whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(v33, "characterAtIndex:", i)}])
      {
        break;
      }
    }

    v36 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v103 = i;
      _os_log_impl(&dword_249FC1000, v36, OS_LOG_TYPE_DEFAULT, "Trimming leading whitespace to index %lu", buf, 0xCu);
    }

    v34 = [v33 substringFromIndex:i];
  }

  if ([v34 length])
  {
    v37 = [v34 length] - 1;
    do
    {
      v38 = v37;
      if (!v37)
      {
        break;
      }

      v39 = [whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(v34, "characterAtIndex:", v37)}];
      v37 = v38 - 1;
    }

    while ((v39 & 1) != 0);
    v40 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v103 = v38;
      _os_log_impl(&dword_249FC1000, v40, OS_LOG_TYPE_DEFAULT, "Trimming trailing whitespace from index %lu", buf, 0xCu);
    }

    v41 = [v34 substringToIndex:v38 + 1];

    v34 = v41;
  }

  if (([v34 isEqualToString:v33] & 1) == 0)
  {
    v42 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v103 = v34;
      _os_log_impl(&dword_249FC1000, v42, OS_LOG_TYPE_DEFAULT, "Post trimming message: %@", buf, 0xCu);
    }
  }

  [self setTitle:v93];
  [self setSubtitle:ea_timestampSubtitleForNow];
  [self setBody:v34];
  [self setShouldIgnoreDoNotDisturb:bOOLValue2 ^ 1u];
  [self setShouldSuppressDefaultAction:1];
  [self setShouldPreemptPresentedNotification:1];
  if (v98)
  {
    v43 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v103 = v98;
      _os_log_impl(&dword_249FC1000, v43, OS_LOG_TYPE_DEFAULT, "Setting speech language to: %@", buf, 0xCu);
    }

    [self setSpeechLanguage:v98];
  }

  v84 = ea_timestampSubtitleForNow;
  v94 = v15;
  v44 = [self ea_bundleForBundleIdentifier:v15];
  v45 = [self ea_externalToneFileURLForTone:v99 inBundle:v44];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v92 = v45;
  if (!v27)
  {
    v52 = [MEMORY[0x277CE1F70] soundWithAlertType:2];
    v53 = v96;
    goto LABEL_46;
  }

  v46 = [MEMORY[0x277CE1F70] soundWithAlertType:18];
  v47 = v46;
  v48 = v81;
  if (((v81 | a4 ^ 1) & 1) == 0)
  {
    [v46 setAlertTopic:*MEMORY[0x277D71FC0]];
  }

  v49 = [v97 objectForKey:@"AlwaysDeliverPref"];

  if (v49)
  {
    v50 = [v97 objectForKey:@"AlwaysDeliverPref"];
    bOOLValue7 = [v50 BOOLValue];
  }

  else
  {
    bOOLValue7 = bOOLValue | bOOLValue5 | bOOLValue3;
  }

  [v47 setShouldIgnoreRingerSwitch:bOOLValue7 & 1];
  v55 = EALogDefault;
  v53 = v96;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v56 = @"NO";
    if (bOOLValue7)
    {
      v56 = @"YES";
    }

    *buf = 138412290;
    *v103 = v56;
    _os_log_impl(&dword_249FC1000, v55, OS_LOG_TYPE_DEFAULT, "Always Deliver: %@", buf, 0xCu);
  }

  if (bOOLValue5)
  {
    [v47 setShouldRepeat:1];
    v57 = v99;
    v45 = v92;
  }

  else
  {
    v45 = v92;
    if (v90)
    {
      [v47 setShouldRepeat:1];
      [v90 doubleValue];
      v59 = v58 / 1000.0;
    }

    else
    {
      [v47 setShouldRepeat:0];
      v59 = 14.0;
    }

    v57 = v99;
    [v47 setMaximumDuration:v59];
    v48 = v81;
  }

  if ((a4 & v48) != 1)
  {
    v52 = v47;
    if (v45)
    {
      [v47 setToneFileURL:v45];
      goto LABEL_62;
    }

    if (([v57 isEqualToString:@"Text"] & 1) == 0)
    {
      [v47 setToneIdentifier:*MEMORY[0x277D72068]];
    }

LABEL_46:
    v54 = v83;
    goto LABEL_63;
  }

  v52 = v47;
  [v47 setToneIdentifier:*MEMORY[0x277D72068]];
LABEL_62:
  v54 = v83;
LABEL_63:
  [v52 setShouldIgnoreAccessibilityDisabledVibrationSetting:v54 != 0];
  v60 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v61 = v60;
    shouldIgnoreAccessibilityDisabledVibrationSetting = [v52 shouldIgnoreAccessibilityDisabledVibrationSetting];
    *buf = 67109120;
    *v103 = shouldIgnoreAccessibilityDisabledVibrationSetting;
    _os_log_impl(&dword_249FC1000, v61, OS_LOG_TYPE_DEFAULT, "Setting alert override-accessibility-vibration: %{BOOL}d", buf, 8u);
  }

  v63 = [self ea_externalVibrationPatternFileURLForVibration:v53 inBundle:v44];
  v82 = v44;
  if (v63)
  {
    [v52 setVibrationPatternFileURL:v63];
  }

  else if (([v53 isEqualToString:@"Default"] & 1) == 0)
  {
    [v52 setVibrationIdentifier:*MEMORY[0x277D72070]];
  }

  v64 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v65 = v64;
    shouldIgnoreRingerSwitch = [v52 shouldIgnoreRingerSwitch];
    selfCopy = self;
    shouldRepeat = [v52 shouldRepeat];
    v69 = MEMORY[0x277CCABB0];
    [v52 maximumDuration];
    v70 = [v69 numberWithDouble:?];
    *buf = 67109890;
    *v103 = shouldIgnoreRingerSwitch;
    v45 = v92;
    *&v103[4] = 1024;
    *&v103[6] = shouldRepeat;
    self = selfCopy;
    v104 = 2114;
    v105 = v70;
    v106 = 1024;
    v107 = a4;
    _os_log_impl(&dword_249FC1000, v65, OS_LOG_TYPE_DEFAULT, "Setting alert sound: prevent-muting: %{BOOL}d, repeat: %{BOOL}d, max-duration: %{public}@, active-call: %{BOOL}d", buf, 0x1Eu);

    v53 = v96;
  }

  selfCopy2 = self;
  [self setSound:v52];
  [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"FromPhone"];
  v72 = [v97 objectForKey:@"SoundIsMutableInRelayMode"];
  if (v72)
  {
    [dictionary setObject:v72 forKey:@"SoundIsMutableInRelayMode"];
  }

  if (v94)
  {
    [dictionary setObject:v94 forKey:@"carrierBundleIdentifier"];
  }

  path = [v45 path];
  v74 = v45;
  v75 = path;
  if (v74)
  {
    [dictionary setObject:path forKey:@"externalToneFileURL"];
  }

  if (v99)
  {
    [dictionary setObject:v99 forKey:@"externalToneFileName"];
  }

  path2 = [v63 path];
  if (path2)
  {
    [dictionary setObject:path2 forKey:@"externalVibrationPatternFileURL"];
  }

  if (v53)
  {
    [dictionary setObject:v53 forKey:@"externalVibrationPatternFileName"];
  }

  [selfCopy2 ea_updateUserInfo:dictionary withMessageDictionary:v95];
  [selfCopy2 ea_setAlertCategory:v95];
  v77 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v103 = dictionary;
    _os_log_impl(&dword_249FC1000, v77, OS_LOG_TYPE_DEFAULT, "UserInfo dict: %@", buf, 0xCu);
  }
}

- (void)ea_bundleForBundleIdentifier:()EmergencyAlerts .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_249FC1000, a2, OS_LOG_TYPE_ERROR, "Cannot find bundle for %{public}@", &v2, 0xCu);
}

- (void)ea_updateAlertCategory:()EmergencyAlerts .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 categoryIdentifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_249FC1000, v3, OS_LOG_TYPE_ERROR, "Alert category: %@", &v5, 0xCu);
}

@end