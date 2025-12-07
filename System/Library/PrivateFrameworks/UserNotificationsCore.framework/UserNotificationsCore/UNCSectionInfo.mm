@interface UNCSectionInfo
+ (id)defaultSectionInfoForSection:(id)section;
+ (id)defaultSectionInfoForType:(int64_t)type;
- (BOOL)_isDeliveredQuietly;
- (BOOL)allowsNotifications;
- (BOOL)hasEnabledSettings;
- (BOOL)hasUserConfiguredDirectMessagesSetting;
- (BOOL)hasUserConfiguredTimeSensitiveSetting;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier;
- (BOOL)isDeliveredQuietly;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsCustomSettingsLink;
- (BOOL)showsInLockScreen;
- (BOOL)showsInNotificationCenter;
- (BOOL)showsMessagePreview;
- (BOOL)showsOnExternalDevices;
- (NSData)iconData;
- (NSDate)authorizationExpirationDate;
- (NSDate)lastUserGrantedAuthorizationDate;
- (NSDictionary)stateCapture;
- (UNCMuteAssertion)muteAssertion;
- (UNCSectionInfo)initWithCoder:(id)coder;
- (UNCSectionInfo)initWithDefaultsForSectionType:(int64_t)type;
- (UNCSectionInfo)parentSection;
- (UNCSectionInfoSettings)readableSettings;
- (UNCSectionInfoSettings)writableSettings;
- (id)_subsectionForID:(id)d;
- (id)_suppressedSettingsList:(unint64_t)list;
- (id)copyFromManagedSettings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications;
- (id)effectiveSectionInfoWithFactoryInfo:(id)info defaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications;
- (int64_t)announceSetting;
- (int64_t)authorizationStatus;
- (int64_t)bulletinGroupingSetting;
- (int64_t)carPlaySetting;
- (int64_t)contentPreviewSetting;
- (int64_t)criticalAlertSetting;
- (int64_t)directMessagesSetting;
- (int64_t)lockScreenSetting;
- (int64_t)notificationCenterSetting;
- (int64_t)remoteNotificationsSetting;
- (int64_t)scheduledDeliverySetting;
- (int64_t)spokenNotificationSetting;
- (int64_t)timeSensitiveSetting;
- (unint64_t)alertType;
- (unint64_t)hash;
- (unint64_t)pushSettings;
- (void)_addSubsection:(id)subsection;
- (void)_associateDataProviderSectionInfo:(id)info;
- (void)_configureWithDefaultsForSectionType:(int64_t)type;
- (void)_deliverQuietly:(BOOL)quietly;
- (void)_dissociateDataProviderSectionInfo:(id)info;
- (void)_replaceSubsection:(id)subsection;
- (void)deliverQuietly:(BOOL)quietly changeAuthorizationStatus:(BOOL)status;
- (void)encodeWithCoder:(id)coder;
- (void)makeAuthorizationPermanent;
- (void)muteSectionUntilDate:(id)date;
- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date;
- (void)queryAndUseManagedSettings;
- (void)queryAndUseManagedSettingsForSectionID:(id)d;
- (void)setAlertType:(unint64_t)type;
- (void)setAllowsNotifications:(BOOL)notifications;
- (void)setAnnounceSetting:(int64_t)setting;
- (void)setAuthorizationExpirationDate:(id)date;
- (void)setAuthorizationStatus:(int64_t)status;
- (void)setBulletinGroupingSetting:(int64_t)setting;
- (void)setCarPlaySetting:(int64_t)setting;
- (void)setContentPreviewSetting:(int64_t)setting;
- (void)setCriticalAlertSetting:(int64_t)setting;
- (void)setDirectMessagesSetting:(int64_t)setting;
- (void)setLastUserGrantedAuthorizationDate:(id)date;
- (void)setLockScreenSetting:(int64_t)setting;
- (void)setManagedSectionInfoSettings:(id)settings;
- (void)setMuteAssertion:(id)assertion;
- (void)setNotificationCenterSetting:(int64_t)setting;
- (void)setParentSection:(id)section;
- (void)setPushSettings:(unint64_t)settings;
- (void)setRemoteNotificationsSetting:(int64_t)setting;
- (void)setScheduledDeliverySetting:(int64_t)setting;
- (void)setShowsCustomSettingsLink:(BOOL)link;
- (void)setShowsInLockScreen:(BOOL)screen;
- (void)setShowsInNotificationCenter:(BOOL)center;
- (void)setShowsMessagePreview:(BOOL)preview;
- (void)setShowsOnExternalDevices:(BOOL)devices;
- (void)setSpokenNotificationSetting:(int64_t)setting;
- (void)setTimeSensitiveSetting:(int64_t)setting;
- (void)setUserConfiguredDirectMessagesSetting:(BOOL)setting;
- (void)setUserConfiguredTimeSensitiveSetting:(BOOL)setting;
- (void)unmuteSection;
- (void)unmuteThreadIdentifier:(id)identifier;
- (void)updateWithDefaultSectionInfo:(id)info;
@end

@implementation UNCSectionInfo

+ (id)defaultSectionInfoForType:(int64_t)type
{
  v3 = [[UNCSectionInfo alloc] initWithDefaultsForSectionType:type];

  return v3;
}

- (UNCSectionInfo)initWithDefaultsForSectionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = UNCSectionInfo;
  v4 = [(UNCSectionInfo *)&v8 init];
  if (v4)
  {
    v5 = [[UNCSectionInfoSettings alloc] initWithDefaultsForSectionType:type];
    sectionInfoSettings = v4->_sectionInfoSettings;
    v4->_sectionInfoSettings = v5;

    [(UNCSectionInfo *)v4 _configureWithDefaultsForSectionType:type];
  }

  return v4;
}

- (void)_configureWithDefaultsForSectionType:(int64_t)type
{
  [(UNCSectionInfo *)self setSectionType:?];
  [(UNCSectionInfo *)self setSuppressedSettings:0];
  if ((type | 2) == 2)
  {
    [(UNCSectionInfo *)self setBulletinCount:5];
    if (type == 2)
    {

      [(UNCSectionInfo *)self setSuppressedSettings:8];
    }
  }
}

- (void)_addSubsection:(id)subsection
{
  if (subsection)
  {
    subsectionCopy = subsection;
    [subsectionCopy setParentSection:self];
    v5 = MEMORY[0x1E695DF70];
    subsections = [(UNCSectionInfo *)self subsections];
    v7 = [v5 arrayWithArray:subsections];

    [v7 addObject:subsectionCopy];
    [(UNCSectionInfo *)self setSubsections:v7];
  }
}

- (void)_replaceSubsection:(id)subsection
{
  v23 = *MEMORY[0x1E69E9840];
  subsectionCopy = subsection;
  selfCopy = self;
  subsections = [(UNCSectionInfo *)self subsections];
  subsectionID = [subsectionCopy subsectionID];
  if ([subsections count] && subsectionID)
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = subsections;
    v8 = subsections;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          subsectionID2 = [v13 subsectionID];
          v15 = [subsectionID2 isEqualToString:subsectionID];

          if (v15)
          {
            [v13 setParentSection:0];
            [subsectionCopy setParentSection:selfCopy];
            v13 = subsectionCopy;
          }

          [array addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [(UNCSectionInfo *)selfCopy setSubsections:array];
    subsections = v16;
  }
}

- (id)_subsectionForID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subsections = [(UNCSectionInfo *)self subsections];
  v6 = [subsections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subsections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        subsectionID = [v9 subsectionID];
        v11 = [subsectionID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subsections countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_associateDataProviderSectionInfo:(id)info
{
  infoCopy = info;
  sectionID = [infoCopy sectionID];
  dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
  if (sectionID && ([dataProviderIDs containsObject:sectionID] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:dataProviderIDs];
    [v6 addObject:sectionID];
    [(UNCSectionInfo *)self setDataProviderIDs:v6];
  }

  sectionID2 = [(UNCSectionInfo *)self sectionID];
  [infoCopy setFactorySectionID:sectionID2];
}

- (void)_dissociateDataProviderSectionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v12 = infoCopy;
    factorySectionID = [infoCopy factorySectionID];
    sectionID = [(UNCSectionInfo *)self sectionID];
    v7 = [factorySectionID isEqualToString:sectionID];

    infoCopy = v12;
    if (v7)
    {
      v8 = MEMORY[0x1E695DF70];
      dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
      v10 = [v8 arrayWithArray:dataProviderIDs];

      sectionID2 = [v12 sectionID];
      [v10 removeObject:sectionID2];

      [(UNCSectionInfo *)self setDataProviderIDs:v10];
      [v12 setFactorySectionID:0];

      infoCopy = v12;
    }
  }
}

- (void)setParentSection:(id)section
{
  sectionCopy = section;
  v4 = objc_storeWeak(&self->_parentSection, sectionCopy);
  managedSectionInfoSettings = [sectionCopy managedSectionInfoSettings];

  [(UNCSectionInfo *)self setManagedSectionInfoSettings:managedSectionInfoSettings];
}

- (BOOL)hasEnabledSettings
{
  if ([(UNCSectionInfo *)self allowsNotifications])
  {
    pushSettings = [(UNCSectionInfo *)self pushSettings];
    if ((pushSettings & 0x18) != 0 || (pushSettings & 0x20) != 0 && [(UNCSectionInfo *)self alertType]|| [(UNCSectionInfo *)self lockScreenSetting]== 2 || [(UNCSectionInfo *)self notificationCenterSetting]== 2 || [(UNCSectionInfo *)self carPlaySetting]== 2 || [(UNCSectionInfo *)self remoteNotificationsSetting]== 2 || [(UNCSectionInfo *)self criticalAlertSetting]== 2)
    {
      return 1;
    }

    scheduledDeliverySetting = [(UNCSectionInfo *)self scheduledDeliverySetting];
  }

  else
  {
    scheduledDeliverySetting = [(UNCSectionInfo *)self criticalAlertSetting];
  }

  return scheduledDeliverySetting == 2;
}

- (BOOL)_isDeliveredQuietly
{
  if (![(UNCSectionInfo *)self allowsNotifications])
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self notificationCenterSetting]!= 2)
  {
    return 0;
  }

  pushSettings = [(UNCSectionInfo *)self pushSettings];
  if ((pushSettings & 0x18) != 0 || (pushSettings & 0x20) != 0 && [(UNCSectionInfo *)self alertType])
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self lockScreenSetting]== 2)
  {
    return 0;
  }

  mEMORY[0x1E69DA8F0] = [MEMORY[0x1E69DA8F0] sharedToneManager];
  v7 = [mEMORY[0x1E69DA8F0] unc_isToneEnabledForSectionInfo:self];

  if (v7)
  {
    return 0;
  }

  mEMORY[0x1E69DA8F8] = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
  v9 = [mEMORY[0x1E69DA8F8] unc_isVibrationEnabledForSectionInfo:self];

  if (v9)
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self carPlaySetting]== 2)
  {
    v10 = objc_alloc_init(getCRPairedVehicleManagerClass());
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__UNCSectionInfo__isDeliveredQuietly__block_invoke;
    v13[3] = &unk_1E85D6DC0;
    v13[4] = &v14;
    [v10 syncFetchAllVehiclesWithCompletion:v13];
    v11 = [v15[5] count];
    _Block_object_dispose(&v14, 8);

    if (v11)
    {
      return 0;
    }
  }

  if ([(UNCSectionInfo *)self announceSetting]!= 2 && [(UNCSectionInfo *)self announceSetting]!= 3)
  {
    return 1;
  }

  v12 = +[UNCBulletinDefaults standardDefaults];
  v4 = ([v12 isAnnounceSupportedForHeadphones] & 1) == 0 && (!objc_msgSend(v12, "isAnnounceSupportedForCarPlay") || !objc_msgSend(v12, "hasPairedVehiclesForCarPlay"));

  return v4;
}

- (BOOL)isDeliveredQuietly
{
  v19 = *MEMORY[0x1E69E9840];
  subsections = [(UNCSectionInfo *)self subsections];
  v4 = [subsections count];

  if (v4)
  {
    allowsNotifications = [(UNCSectionInfo *)self allowsNotifications];
    if (allowsNotifications)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      subsections2 = [(UNCSectionInfo *)self subsections];
      v7 = [subsections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_18:

LABEL_19:
        LOBYTE(allowsNotifications) = 0;
        return allowsNotifications;
      }

      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(subsections2);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 allowsNotifications] && objc_msgSend(v12, "notificationCenterSetting") == 2)
          {
            if (![v12 _isDeliveredQuietly])
            {
              goto LABEL_18;
            }

            v9 = 1;
          }
        }

        v8 = [subsections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    allowsNotifications = [(UNCSectionInfo *)self _isDeliveredQuietly];
    if (allowsNotifications)
    {
LABEL_17:
      LOBYTE(allowsNotifications) = 1;
    }
  }

  return allowsNotifications;
}

- (void)_deliverQuietly:(BOOL)quietly
{
  quietlyCopy = quietly;
  pushSettings = [(UNCSectionInfo *)self pushSettings];
  if (quietlyCopy)
  {
    [(UNCSectionInfo *)self setPushSettings:pushSettings & 0xFFFFFFFFFFFFFFC7];
    [(UNCSectionInfo *)self setAlertType:0];
    if ([(UNCSectionInfo *)self lockScreenSetting])
    {
      [(UNCSectionInfo *)self setLockScreenSetting:1];
    }

    if ([(UNCSectionInfo *)self carPlaySetting])
    {
      [(UNCSectionInfo *)self setCarPlaySetting:1];
    }

    if ([(UNCSectionInfo *)self remoteNotificationsSetting])
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:1];
    }

    if ([(UNCSectionInfo *)self announceSetting])
    {
      v6 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    [(UNCSectionInfo *)self setPushSettings:(8 * (pushSettings & 7)) | pushSettings];
    [(UNCSectionInfo *)self setAlertType:1];
    if ([(UNCSectionInfo *)self lockScreenSetting])
    {
      [(UNCSectionInfo *)self setLockScreenSetting:2];
    }

    if ([(UNCSectionInfo *)self carPlaySetting])
    {
      [(UNCSectionInfo *)self setCarPlaySetting:2];
    }

    if ([(UNCSectionInfo *)self remoteNotificationsSetting])
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:2];
    }

    if ([(UNCSectionInfo *)self announceSetting])
    {
      if ([(UNCSectionInfo *)self timeSensitiveSetting]== 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

LABEL_20:

      [(UNCSectionInfo *)self setAnnounceSetting:v6];
    }
  }
}

- (void)deliverQuietly:(BOOL)quietly changeAuthorizationStatus:(BOOL)status
{
  statusCopy = status;
  quietlyCopy = quietly;
  v23 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DA8E0];
  sectionID = [(UNCSectionInfo *)self sectionID];
  v9 = [v7 unc_toneLibraryAlertTypeForSectionID:sectionID];

  if (v9)
  {
    [MEMORY[0x1E69DA8E0] _setCurrentOverridePolicy:quietlyCopy forType:v9];
  }

  subsections = [(UNCSectionInfo *)self subsections];
  v11 = [subsections count];

  if (v11)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    subsections2 = [(UNCSectionInfo *)self subsections];
    v13 = [subsections2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(subsections2);
          }

          [*(*(&v18 + 1) + 8 * v16++) _deliverQuietly:quietlyCopy];
        }

        while (v14 != v16);
        v14 = [subsections2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    if (statusCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(UNCSectionInfo *)self _deliverQuietly:quietlyCopy];
    if (statusCopy)
    {
LABEL_12:
      [(UNCSectionInfo *)self makeAuthorizationPermanent];
    }
  }

  if (quietlyCopy)
  {
    muteAssertion = [(UNCSectionInfo *)self muteAssertion];

    if (muteAssertion)
    {
      [(UNCSectionInfo *)self setMuteAssertion:0];
    }
  }
}

- (void)makeAuthorizationPermanent
{
  if ([(UNCSectionInfo *)self authorizationStatus]== 4 || [(UNCSectionInfo *)self authorizationStatus]== 3)
  {

    [(UNCSectionInfo *)self setAuthorizationStatus:2];
  }
}

- (void)muteSectionUntilDate:(id)date
{
  dateCopy = date;
  if (![(UNCSectionInfo *)self _isDeliveredQuietly])
  {
    sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
    [sectionInfoSettings muteSectionUntilDate:dateCopy];
  }
}

- (void)unmuteSection
{
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings unmuteSection];
}

- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if (![(UNCSectionInfo *)self _isDeliveredQuietly])
  {
    sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
    [sectionInfoSettings muteThreadIdentifier:identifierCopy untilDate:dateCopy];
  }
}

- (void)unmuteThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings unmuteThreadIdentifier:identifierCopy];
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  v6 = [sectionInfoSettings isBulletinMutedForThreadIdentifier:identifierCopy];

  return v6;
}

- (id)_suppressedSettingsList:(unint64_t)list
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (list == -1)
  {
    v6 = @"All";
LABEL_36:
    [v5 addObject:v6];
    goto LABEL_37;
  }

  if (list)
  {
    [v4 addObject:@"ShowsInNotificationCenter"];
    if ((list & 2) == 0)
    {
LABEL_4:
      if ((list & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((list & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"ShowsInLockScreen"];
  if ((list & 4) == 0)
  {
LABEL_5:
    if ((list & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 addObject:@"ShowsOnExternalDevices"];
  if ((list & 8) == 0)
  {
LABEL_6:
    if ((list & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"NotificationCenterLimit"];
  if ((list & 0x10) == 0)
  {
LABEL_7:
    if ((list & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"PushSettings"];
  if ((list & 0x20) == 0)
  {
LABEL_8:
    if ((list & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"AlertType"];
  if ((list & 0x40) == 0)
  {
LABEL_9:
    if ((list & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"ShowsMessagePreview"];
  if ((list & 0x80) == 0)
  {
LABEL_10:
    if ((list & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"ShowsInCarPlay"];
  if ((list & 0x100) == 0)
  {
LABEL_11:
    if ((list & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"CriticalAlert"];
  if ((list & 0x200) == 0)
  {
LABEL_12:
    if ((list & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"BulletinGrouping"];
  if ((list & 0x400) == 0)
  {
LABEL_13:
    if ((list & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"SpokenNotifications"];
  [v5 addObject:@"SpokenNotifications"];
  if ((list & 0x800) == 0)
  {
LABEL_14:
    if ((list & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"TimeSensitive"];
  if ((list & 0x1000) == 0)
  {
LABEL_15:
    if ((list & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"ScheduledDelivery"];
  if ((list & 0x2000) == 0)
  {
LABEL_16:
    if ((list & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    [v5 addObject:@"Sound"];
    if ((list & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_33:
  [v5 addObject:@"Badge"];
  if ((list & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((list & 0x8000) != 0)
  {
LABEL_35:
    v6 = @"DirectMessages";
    goto LABEL_36;
  }

LABEL_37:

  return v5;
}

- (NSDictionary)stateCapture
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  stateCapture = [(UNCSectionInfoSettings *)self->_sectionInfoSettings stateCapture];
  [v3 setValue:stateCapture forKey:@"SectionInfoSettings"];

  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (managedSectionInfoSettings)
  {
    stateCapture2 = [(UNCSectionInfoSettings *)managedSectionInfoSettings stateCapture];
    [v3 setValue:stateCapture2 forKey:@"ManagedSettings"];
  }

  else
  {
    [v3 setValue:@"Unmanaged" forKey:@"ManagedSettings"];
  }

  appName = [(UNCSectionInfo *)self appName];

  if (appName)
  {
    appName2 = [(UNCSectionInfo *)self appName];
    [v3 setValue:appName2 forKey:@"AppName"];
  }

  displayName = [(UNCSectionInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(UNCSectionInfo *)self displayName];
    [v3 setValue:displayName2 forKey:@"DisplayName"];
  }

  subsectionID = [(UNCSectionInfo *)self subsectionID];

  if (subsectionID)
  {
    subsectionID2 = [(UNCSectionInfo *)self subsectionID];
    [v3 setValue:subsectionID2 forKey:@"SubSectionID"];
  }

  factorySectionID = [(UNCSectionInfo *)self factorySectionID];

  if (factorySectionID)
  {
    factorySectionID2 = [(UNCSectionInfo *)self factorySectionID];
    [v3 setValue:factorySectionID2 forKey:@"FactorySectionID"];
  }

  if ([(UNCSectionInfo *)self version])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCSectionInfo version](self, "version")}];
    [v3 setValue:v15 forKey:@"Version"];
  }

  v16 = UNCStringFromBool(self->_suppressFromSettings);
  [v3 setValue:v16 forKey:@"HiddenFromSettings"];

  v17 = UNCStringFromBool([(UNCSectionInfo *)self hideWeeApp]);
  [v3 setValue:v17 forKey:@"HiddenWeeApp"];

  suppressedSettings = [(UNCSectionInfo *)self suppressedSettings];
  if (suppressedSettings)
  {
    v19 = [(UNCSectionInfo *)self _suppressedSettingsList:suppressedSettings];
    [v3 setValue:v19 forKey:@"SuppressedSettings"];
  }

  subsections = [(UNCSectionInfo *)self subsections];
  if ([subsections count])
  {
    parentSection3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = subsections;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          stateCapture3 = [v27 stateCapture];
          subsectionID3 = [v27 subsectionID];
          [parentSection3 setValue:stateCapture3 forKey:subsectionID3];
        }

        v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v24);
    }

    [v3 setValue:parentSection3 forKey:@"SubSections"];
    goto LABEL_25;
  }

  parentSection = [(UNCSectionInfo *)self parentSection];
  if (parentSection)
  {
    v32 = parentSection;
    parentSection2 = [(UNCSectionInfo *)self parentSection];
    sectionID = [parentSection2 sectionID];
    sectionID2 = [(UNCSectionInfo *)self sectionID];
    v36 = [sectionID isEqualToString:sectionID2];

    if ((v36 & 1) == 0)
    {
      parentSection3 = [(UNCSectionInfo *)self parentSection];
      sectionID3 = [parentSection3 sectionID];
      [v3 setValue:sectionID3 forKey:@"ParentSectionID"];

LABEL_25:
    }
  }

  return v3;
}

- (NSData)iconData
{
  icon = [(UNCSectionInfo *)self icon];
  v3 = [icon _bestVariantForFormat:1];
  imageData = [v3 imageData];

  return imageData;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" Section %@", self->_sectionID];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_sectionInfoSettings];

  if (self->_isRestricted)
  {
    v5 = [v4 stringByAppendingFormat:@" (restricted)"];

    v4 = v5;
  }

  if (self->_managedSectionInfoSettings)
  {
    [v4 stringByAppendingFormat:@" %@ (managed)", self->_managedSectionInfoSettings];
  }

  else
  {
    [v4 stringByAppendingString:@" (unmanaged)"];
  }
  v6 = ;

  appName = [(UNCSectionInfo *)self appName];

  if (appName)
  {
    appName2 = [(UNCSectionInfo *)self appName];
    v9 = [v6 stringByAppendingFormat:@" '%@'", appName2];

    v6 = v9;
  }

  displayName = [(UNCSectionInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(UNCSectionInfo *)self displayName];
    v12 = [v6 stringByAppendingFormat:@" '%@'", displayName2];

    v6 = v12;
  }

  subsectionID = [(UNCSectionInfo *)self subsectionID];

  if (subsectionID)
  {
    subsectionID2 = [(UNCSectionInfo *)self subsectionID];
    v15 = [v6 stringByAppendingFormat:@" (%@)", subsectionID2];

    v6 = v15;
  }

  factorySectionID = [(UNCSectionInfo *)self factorySectionID];

  if (factorySectionID)
  {
    factorySectionID2 = [(UNCSectionInfo *)self factorySectionID];
    v18 = [v6 stringByAppendingFormat:@" (factory: %@)", factorySectionID2];

    v6 = v18;
  }

  if ([(UNCSectionInfo *)self version])
  {
    v19 = [v6 stringByAppendingFormat:@" [v%ld]", -[UNCSectionInfo version](self, "version")];

    v6 = v19;
  }

  if (self->_suppressFromSettings)
  {
    v20 = [v6 stringByAppendingString:{@", hidden from settings"}];

    v6 = v20;
  }

  if ([(UNCSectionInfo *)self hideWeeApp])
  {
    v21 = [v6 stringByAppendingString:{@", hidden wee app"}];

    v6 = v21;
  }

  suppressedSettings = [(UNCSectionInfo *)self suppressedSettings];
  if (suppressedSettings)
  {
    v23 = [v6 stringByAppendingFormat:@", suppressed settings = %lX", suppressedSettings];

    v6 = v23;
  }

  subsections = [(UNCSectionInfo *)self subsections];
  if ([subsections count])
  {
    v25 = [v6 stringByAppendingFormat:@", subsections = %@", subsections];
LABEL_24:

    v6 = v25;
    goto LABEL_25;
  }

  parentSection = [(UNCSectionInfo *)self parentSection];
  if (parentSection)
  {
    v30 = parentSection;
    parentSection2 = [(UNCSectionInfo *)self parentSection];
    sectionID = [parentSection2 sectionID];
    sectionID2 = [(UNCSectionInfo *)self sectionID];
    v34 = [sectionID isEqualToString:sectionID2];

    if ((v34 & 1) == 0)
    {
      parentSection3 = [(UNCSectionInfo *)self parentSection];
      sectionID3 = [parentSection3 sectionID];
      v25 = [v6 stringByAppendingFormat:@", parent section = %@", sectionID3];

      v6 = parentSection3;
      goto LABEL_24;
    }
  }

LABEL_25:
  v37.receiver = self;
  v37.super_class = UNCSectionInfo;
  v26 = [(UNCSectionInfo *)&v37 description];
  v27 = [v26 stringByAppendingString:v6];

  return v27;
}

- (unint64_t)hash
{
  sectionID = [(UNCSectionInfo *)self sectionID];
  v3 = [sectionID hash];
  subsectionID = [(UNCSectionInfo *)self subsectionID];
  v4 = [subsectionID hash] ^ v3;
  v5 = v4 ^ [(UNCSectionInfo *)self sectionType];
  isAppClip = [(UNCSectionInfo *)self isAppClip];
  v7 = v5 ^ isAppClip ^ [(UNCSectionInfo *)self isModificationAllowed];
  isRestricted = [(UNCSectionInfo *)self isRestricted];
  v9 = isRestricted ^ [(UNCSectionInfo *)self sectionCategory];
  v10 = v7 ^ v9 ^ [(UNCSectionInfo *)self suppressFromSettings];
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  v11 = [sectionInfoSettings hash];
  managedSectionInfoSettings = [(UNCSectionInfo *)self managedSectionInfoSettings];
  v12 = v11 ^ [managedSectionInfoSettings hash];
  v13 = v12 ^ [(UNCSectionInfo *)self suppressedSettings];
  subsections = [(UNCSectionInfo *)self subsections];
  v14 = v13 ^ [subsections hash];
  parentSection = [(UNCSectionInfo *)self parentSection];
  sectionID2 = [parentSection sectionID];
  v15 = v10 ^ v14 ^ [sectionID2 hash];
  subsectionPriority = [(UNCSectionInfo *)self subsectionPriority];
  v17 = subsectionPriority ^ [(UNCSectionInfo *)self version];
  appName = [(UNCSectionInfo *)self appName];
  v19 = v17 ^ [appName hash];
  displayName = [(UNCSectionInfo *)self displayName];
  v21 = v19 ^ [displayName hash];
  icon = [(UNCSectionInfo *)self icon];
  v23 = v21 ^ [icon hash];
  factorySectionID = [(UNCSectionInfo *)self factorySectionID];
  v25 = v23 ^ [factorySectionID hash];
  dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
  v35 = v15 ^ v25 ^ [dataProviderIDs hash];
  customSettingsBundle = [(UNCSectionInfo *)self customSettingsBundle];
  v28 = [customSettingsBundle hash];
  customSettingsDetailControllerClass = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  v30 = v28 ^ [customSettingsDetailControllerClass hash];
  pathToWeeAppPluginBundle = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  v32 = v30 ^ [pathToWeeAppPluginBundle hash];
  v33 = v32 ^ [(UNCSectionInfo *)self hideWeeApp];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      sectionID = [(UNCSectionInfo *)self sectionID];
      sectionID2 = [(UNCSectionInfo *)v5 sectionID];
      if (BSEqualStrings())
      {
        subsectionID = [(UNCSectionInfo *)self subsectionID];
        subsectionID2 = [(UNCSectionInfo *)v5 subsectionID];
        if (BSEqualStrings() && (v10 = [(UNCSectionInfo *)self sectionType], v10 == [(UNCSectionInfo *)v5 sectionType]) && (v11 = [(UNCSectionInfo *)self isAppClip], v11 == [(UNCSectionInfo *)v5 isAppClip]) && (v12 = [(UNCSectionInfo *)self isModificationAllowed], v12 == [(UNCSectionInfo *)v5 isModificationAllowed]) && (v13 = [(UNCSectionInfo *)self isRestricted], v13 == [(UNCSectionInfo *)v5 isRestricted]) && (v14 = [(UNCSectionInfo *)self sectionCategory], v14 == [(UNCSectionInfo *)v5 sectionCategory]) && (v15 = [(UNCSectionInfo *)self suppressFromSettings], v15 == [(UNCSectionInfo *)v5 suppressFromSettings]))
        {
          sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
          sectionInfoSettings2 = [(UNCSectionInfo *)v5 sectionInfoSettings];
          if (BSEqualObjects())
          {
            managedSectionInfoSettings = [(UNCSectionInfo *)self managedSectionInfoSettings];
            managedSectionInfoSettings2 = [(UNCSectionInfo *)v5 managedSectionInfoSettings];
            if (BSEqualObjects())
            {
              v57 = managedSectionInfoSettings;
              suppressedSettings = [(UNCSectionInfo *)self suppressedSettings];
              if (suppressedSettings == [(UNCSectionInfo *)v5 suppressedSettings])
              {
                subsections = [(UNCSectionInfo *)self subsections];
                subsections2 = [(UNCSectionInfo *)v5 subsections];
                v56 = subsections;
                if (BSEqualObjects())
                {
                  parentSection = [(UNCSectionInfo *)self parentSection];
                  sectionID3 = [parentSection sectionID];
                  parentSection2 = [(UNCSectionInfo *)v5 parentSection];
                  [parentSection2 sectionID];
                  v51 = v53 = sectionID3;
                  if (BSEqualStrings() && (v24 = [(UNCSectionInfo *)self subsectionPriority], v24 == [(UNCSectionInfo *)v5 subsectionPriority]) && (v25 = [(UNCSectionInfo *)self version], v25 == [(UNCSectionInfo *)v5 version]))
                  {
                    appName = [(UNCSectionInfo *)self appName];
                    [(UNCSectionInfo *)v5 appName];
                    v50 = v49 = appName;
                    if (BSEqualStrings())
                    {
                      displayName = [(UNCSectionInfo *)self displayName];
                      displayName2 = [(UNCSectionInfo *)v5 displayName];
                      v48 = displayName;
                      if (BSEqualStrings())
                      {
                        icon = [(UNCSectionInfo *)self icon];
                        icon2 = [(UNCSectionInfo *)v5 icon];
                        v46 = icon;
                        if (BSEqualObjects())
                        {
                          factorySectionID = [(UNCSectionInfo *)self factorySectionID];
                          factorySectionID2 = [(UNCSectionInfo *)v5 factorySectionID];
                          v44 = factorySectionID;
                          if (BSEqualStrings())
                          {
                            dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
                            dataProviderIDs2 = [(UNCSectionInfo *)v5 dataProviderIDs];
                            v42 = dataProviderIDs;
                            if (BSEqualObjects())
                            {
                              customSettingsBundle = [(UNCSectionInfo *)self customSettingsBundle];
                              customSettingsBundle2 = [(UNCSectionInfo *)v5 customSettingsBundle];
                              v40 = customSettingsBundle;
                              if (BSEqualStrings())
                              {
                                customSettingsDetailControllerClass = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
                                customSettingsDetailControllerClass2 = [(UNCSectionInfo *)v5 customSettingsDetailControllerClass];
                                v38 = customSettingsDetailControllerClass;
                                if (BSEqualStrings())
                                {
                                  pathToWeeAppPluginBundle = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
                                  [(UNCSectionInfo *)v5 pathToWeeAppPluginBundle];
                                  v34 = v36 = pathToWeeAppPluginBundle;
                                  if (BSEqualStrings())
                                  {
                                    v35 = [(UNCSectionInfo *)self hideWeeApp:v36];
                                    v16 = v35 ^ [(UNCSectionInfo *)v5 hideWeeApp]^ 1;
                                  }

                                  else
                                  {
                                    LOBYTE(v16) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v16) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v16) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v16) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v16) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v16) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v16) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v16) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v16) = 0;
                  }
                }

                else
                {
                  LOBYTE(v16) = 0;
                }
              }

              else
              {
                LOBYTE(v16) = 0;
              }

              managedSectionInfoSettings = v57;
            }

            else
            {
              LOBYTE(v16) = 0;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  parentSection = [(UNCSectionInfo *)self parentSection];
  [v5 setParentSection:parentSection];

  sectionID = [(UNCSectionInfo *)self sectionID];
  [v5 setSectionID:sectionID];

  subsectionID = [(UNCSectionInfo *)self subsectionID];
  [v5 setSubsectionID:subsectionID];

  [v5 setSectionType:{-[UNCSectionInfo sectionType](self, "sectionType")}];
  [v5 setIsAppClip:{-[UNCSectionInfo isAppClip](self, "isAppClip")}];
  [v5 setIsModificationAllowed:{-[UNCSectionInfo isModificationAllowed](self, "isModificationAllowed")}];
  [v5 setIsRestricted:{-[UNCSectionInfo isRestricted](self, "isRestricted")}];
  [v5 setSectionCategory:{-[UNCSectionInfo sectionCategory](self, "sectionCategory")}];
  [v5 setSuppressFromSettings:{-[UNCSectionInfo suppressFromSettings](self, "suppressFromSettings")}];
  v9 = [(UNCSectionInfoSettings *)self->_sectionInfoSettings copyWithZone:zone];
  [v5 setSectionInfoSettings:v9];

  v10 = [(UNCSectionInfoSettings *)self->_managedSectionInfoSettings copyWithZone:zone];
  [v5 setManagedSectionInfoSettings:v10];

  pathToWeeAppPluginBundle = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  [v5 setPathToWeeAppPluginBundle:pathToWeeAppPluginBundle];

  appName = [(UNCSectionInfo *)self appName];
  [v5 setAppName:appName];

  displayName = [(UNCSectionInfo *)self displayName];
  [v5 setDisplayName:displayName];

  icon = [(UNCSectionInfo *)self icon];
  [v5 setIcon:icon];

  customSettingsBundle = [(UNCSectionInfo *)self customSettingsBundle];
  [v5 setCustomSettingsBundle:customSettingsBundle];

  customSettingsDetailControllerClass = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  [v5 setCustomSettingsDetailControllerClass:customSettingsDetailControllerClass];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  subsections = [(UNCSectionInfo *)self subsections];
  v18 = [subsections countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(subsections);
        }

        v22 = [*(*(&v26 + 1) + 8 * v21) copyWithZone:zone];
        [v5 _addSubsection:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [subsections countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  [v5 setSubsectionPriority:{-[UNCSectionInfo subsectionPriority](self, "subsectionPriority")}];
  [v5 setSuppressedSettings:{-[UNCSectionInfo suppressedSettings](self, "suppressedSettings")}];
  [v5 setHideWeeApp:{-[UNCSectionInfo hideWeeApp](self, "hideWeeApp")}];
  factorySectionID = [(UNCSectionInfo *)self factorySectionID];
  [v5 setFactorySectionID:factorySectionID];

  dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
  [v5 setDataProviderIDs:dataProviderIDs];

  [v5 setVersion:{-[UNCSectionInfo version](self, "version")}];
  [v5 setIsRestricted:{-[UNCSectionInfo isRestricted](self, "isRestricted")}];
  return v5;
}

- (UNCSectionInfo)initWithCoder:(id)coder
{
  v43[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = UNCSectionInfo;
  v5 = [(UNCSectionInfo *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(UNCSectionInfo *)v5 setSectionID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subsectionID"];
    [(UNCSectionInfo *)v5 setSubsectionID:v7];

    -[UNCSectionInfo setSectionType:](v5, "setSectionType:", [coderCopy decodeIntegerForKey:@"sectionType"]);
    -[UNCSectionInfo setIsAppClip:](v5, "setIsAppClip:", [coderCopy decodeBoolForKey:@"isAppClip"]);
    -[UNCSectionInfo setIsModificationAllowed:](v5, "setIsModificationAllowed:", [coderCopy decodeBoolForKey:@"isModificationAllowed"]);
    -[UNCSectionInfo setIsRestricted:](v5, "setIsRestricted:", [coderCopy decodeBoolForKey:@"isRestricted"]);
    -[UNCSectionInfo setSectionCategory:](v5, "setSectionCategory:", [coderCopy decodeIntegerForKey:@"sectionCategory"]);
    -[UNCSectionInfo setSuppressFromSettings:](v5, "setSuppressFromSettings:", [coderCopy decodeBoolForKey:@"suppressFromSettings"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathToWeeAppPluginBundle"];
    [(UNCSectionInfo *)v5 setPathToWeeAppPluginBundle:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    [(UNCSectionInfo *)v5 setAppName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(UNCSectionInfo *)v5 setDisplayName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(UNCSectionInfo *)v5 setIcon:v11];

    v12 = MEMORY[0x1E695DFD8];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"subsections"];

    [(UNCSectionInfo *)v5 setSubsections:v15];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        v20 = 0;
        do
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v36 + 1) + 8 * v20++) setParentSection:{v5, v36}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v18);
    }

    -[UNCSectionInfo setSubsectionPriority:](v5, "setSubsectionPriority:", [coderCopy decodeIntegerForKey:@"subsectionPriority"]);
    -[UNCSectionInfo setSuppressedSettings:](v5, "setSuppressedSettings:", [coderCopy decodeInt64ForKey:@"suppressedSettings"]);
    -[UNCSectionInfo setHideWeeApp:](v5, "setHideWeeApp:", [coderCopy decodeBoolForKey:@"hideWeeApp"]);
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factorySectionID"];
    [(UNCSectionInfo *)v5 setFactorySectionID:v21];

    v22 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"dataProviderIDs"];
    [(UNCSectionInfo *)v5 setDataProviderIDs:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsBundle"];
    [(UNCSectionInfo *)v5 setCustomSettingsBundle:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsDetailControllerClass"];
    [(UNCSectionInfo *)v5 setCustomSettingsDetailControllerClass:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[UNCSectionInfo setVersion:](v5, "setVersion:", [v28 unsignedIntegerValue]);
    if ([coderCopy containsValueForKey:@"sectionInfoSettings"])
    {
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionInfoSettings"];
      sectionInfoSettings = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v29;
    }

    else
    {
      v31 = [[UNCSectionInfoSettings alloc] initWithDefaultsForSectionType:[(UNCSectionInfo *)v5 sectionType]];
      v32 = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v31;

      if ([coderCopy containsValueForKey:@"allowsNotifications"])
      {
        v33 = [coderCopy decodeBoolForKey:@"allowsNotifications"];
      }

      else
      {
        v33 = 1;
      }

      [(UNCSectionInfoSettings *)v5->_sectionInfoSettings setAllowsNotifications:v33, v36];
      -[UNCSectionInfoSettings setShowsInNotificationCenter:](v5->_sectionInfoSettings, "setShowsInNotificationCenter:", [coderCopy decodeBoolForKey:@"showsInNotificationCenter"]);
      -[UNCSectionInfoSettings setShowsInLockScreen:](v5->_sectionInfoSettings, "setShowsInLockScreen:", [coderCopy decodeBoolForKey:@"showsInLockScreen"]);
      -[UNCSectionInfoSettings setShowsCustomSettingsLink:](v5->_sectionInfoSettings, "setShowsCustomSettingsLink:", [coderCopy decodeBoolForKey:@"showsCustomSettingsLink"]);
      -[UNCSectionInfoSettings setAlertType:](v5->_sectionInfoSettings, "setAlertType:", [coderCopy decodeIntegerForKey:@"alertType"]);
      -[UNCSectionInfoSettings setPushSettings:](v5->_sectionInfoSettings, "setPushSettings:", [coderCopy decodeInt64ForKey:@"pushSettings"]);
      if ([coderCopy containsValueForKey:@"showsOnExternalDevices"])
      {
        -[UNCSectionInfoSettings setShowsOnExternalDevices:](v5->_sectionInfoSettings, "setShowsOnExternalDevices:", [coderCopy decodeBoolForKey:@"showsOnExternalDevices"]);
      }

      if ([coderCopy containsValueForKey:@"showsMessagePreview"])
      {
        -[UNCSectionInfoSettings setShowsMessagePreview:](v5->_sectionInfoSettings, "setShowsMessagePreview:", [coderCopy decodeBoolForKey:@"showsMessagePreview"]);
      }
    }

    if ([coderCopy containsValueForKey:{@"bulletinGroupingSetting", v36}])
    {
      -[UNCSectionInfo setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [coderCopy decodeIntegerForKey:@"bulletinGroupingSetting"]);
    }

    if ([coderCopy containsValueForKey:@"managedSectionInfoSettings"])
    {
      v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedSectionInfoSettings"];
      [(UNCSectionInfo *)v5 setManagedSectionInfoSettings:v34];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionID = [(UNCSectionInfo *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  subsectionID = [(UNCSectionInfo *)self subsectionID];
  [coderCopy encodeObject:subsectionID forKey:@"subsectionID"];

  [coderCopy encodeInteger:-[UNCSectionInfo sectionType](self forKey:{"sectionType"), @"sectionType"}];
  [coderCopy encodeBool:-[UNCSectionInfo isAppClip](self forKey:{"isAppClip"), @"isAppClip"}];
  [coderCopy encodeBool:-[UNCSectionInfo isModificationAllowed](self forKey:{"isModificationAllowed"), @"isModificationAllowed"}];
  [coderCopy encodeBool:-[UNCSectionInfo isRestricted](self forKey:{"isRestricted"), @"isRestricted"}];
  [coderCopy encodeInteger:-[UNCSectionInfo sectionCategory](self forKey:{"sectionCategory"), @"sectionCategory"}];
  [coderCopy encodeBool:-[UNCSectionInfo suppressFromSettings](self forKey:{"suppressFromSettings"), @"suppressFromSettings"}];
  [coderCopy encodeObject:self->_sectionInfoSettings forKey:@"sectionInfoSettings"];
  [coderCopy encodeObject:self->_managedSectionInfoSettings forKey:@"managedSectionInfoSettings"];
  pathToWeeAppPluginBundle = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  [coderCopy encodeObject:pathToWeeAppPluginBundle forKey:@"pathToWeeAppPluginBundle"];

  appName = [(UNCSectionInfo *)self appName];
  [coderCopy encodeObject:appName forKey:@"appName"];

  displayName = [(UNCSectionInfo *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  icon = [(UNCSectionInfo *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  subsections = [(UNCSectionInfo *)self subsections];
  [coderCopy encodeObject:subsections forKey:@"subsections"];

  [coderCopy encodeInteger:-[UNCSectionInfo subsectionPriority](self forKey:{"subsectionPriority"), @"subsectionPriority"}];
  [coderCopy encodeInteger:-[UNCSectionInfo suppressedSettings](self forKey:{"suppressedSettings"), @"suppressedSettings"}];
  [coderCopy encodeBool:-[UNCSectionInfo hideWeeApp](self forKey:{"hideWeeApp"), @"hideWeeApp"}];
  factorySectionID = [(UNCSectionInfo *)self factorySectionID];
  [coderCopy encodeObject:factorySectionID forKey:@"factorySectionID"];

  dataProviderIDs = [(UNCSectionInfo *)self dataProviderIDs];
  [coderCopy encodeObject:dataProviderIDs forKey:@"dataProviderIDs"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCSectionInfo version](self, "version")}];
  [coderCopy encodeObject:v14 forKey:@"version"];

  customSettingsBundle = [(UNCSectionInfo *)self customSettingsBundle];
  [coderCopy encodeObject:customSettingsBundle forKey:@"customSettingsBundle"];

  customSettingsDetailControllerClass = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  [coderCopy encodeObject:customSettingsDetailControllerClass forKey:@"customSettingsDetailControllerClass"];
}

- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  playCopy = play;
  selfCopy = self;
  v74 = *MEMORY[0x1E69E9840];
  parentSection = [(UNCSectionInfo *)self parentSection];
  if (!parentSection)
  {
    subsections = [(UNCSectionInfo *)selfCopy subsections];
    v16 = [subsections count];

    if (!v16)
    {
      goto LABEL_45;
    }

    copyFromManagedSettings = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v50 = selfCopy;
    subsections2 = [(UNCSectionInfo *)selfCopy subsections];
    v20 = [subsections2 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v69;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v69 != v22)
          {
            objc_enumerationMutation(subsections2);
          }

          v24 = [*(*(&v68 + 1) + 8 * i) effectiveSectionInfoWithDefaultContentPreviewSetting:setting globalAnnounceSetting:announceSetting globalScheduledDeliverySetting:deliverySetting hasPairedVehiclesForCarPlay:playCopy hasDestinationForRemoteNotifications:notificationsCopy];
          [v18 addObject:v24];
        }

        v21 = [subsections2 countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v21);
    }

    suppressedSettings = [copyFromManagedSettings suppressedSettings];
    v26 = suppressedSettings;
    if ((suppressedSettings & 2) != 0)
    {
      lockScreenSetting = 0;
      if ((suppressedSettings & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      lockScreenSetting = [copyFromManagedSettings lockScreenSetting];
      if ((v26 & 4) != 0)
      {
LABEL_35:
        showsOnExternalDevices = 0;
        if ((v26 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_62;
      }
    }

    showsOnExternalDevices = [copyFromManagedSettings showsOnExternalDevices];
    if ((v26 & 1) == 0)
    {
LABEL_36:
      notificationCenterSetting = [copyFromManagedSettings notificationCenterSetting];
      if ((v26 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

LABEL_62:
    notificationCenterSetting = 0;
    if ((v26 & 0x40) == 0)
    {
LABEL_37:
      contentPreviewSetting = [copyFromManagedSettings contentPreviewSetting];
      if ((v26 & 0x2000) != 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_63:
    contentPreviewSetting = 0;
    if ((v26 & 0x2000) != 0)
    {
LABEL_38:
      v27 = 0;
      if ((v26 & 0x4000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_65;
    }

LABEL_64:
    v27 = [copyFromManagedSettings pushSettings] & 9;
    if ((v26 & 0x4000) != 0)
    {
LABEL_39:
      v28 = 0;
      if ((v26 & 0x20) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_66;
    }

LABEL_65:
    v28 = [copyFromManagedSettings pushSettings] & 0x12;
    if ((v26 & 0x20) != 0)
    {
LABEL_40:
      alertType = 0;
      v29 = v28 | v27;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_67;
    }

LABEL_66:
    v29 = v27 | v28 | [copyFromManagedSettings pushSettings] & 0x24;
    alertType = [copyFromManagedSettings alertType];
    if ((v26 & 0x80) == 0)
    {
LABEL_41:
      carPlaySetting = [copyFromManagedSettings carPlaySetting];
      if ((v26 & 0x10000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_68;
    }

LABEL_67:
    carPlaySetting = 0;
    if ((v26 & 0x10000) == 0)
    {
LABEL_42:
      remoteNotificationsSetting = [copyFromManagedSettings remoteNotificationsSetting];
      if ((v26 & 0x100) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_69;
    }

LABEL_68:
    remoteNotificationsSetting = 0;
    if ((v26 & 0x100) == 0)
    {
LABEL_43:
      criticalAlertSetting = [copyFromManagedSettings criticalAlertSetting];
      if ((v26 & 0x400) == 0)
      {
LABEL_44:
        announceSetting = [copyFromManagedSettings announceSetting];
        goto LABEL_71;
      }

LABEL_70:
      announceSetting = 0;
LABEL_71:
      v48 = notificationsCopy;
      if ((v26 & 0x800) != 0)
      {
        timeSensitiveSetting = 0;
      }

      else
      {
        timeSensitiveSetting = [copyFromManagedSettings timeSensitiveSetting];
      }

      notificationsCopy = copyFromManagedSettings;
      if ((v26 & 0x1000) != 0)
      {
        scheduledDeliverySetting = 0;
        if ((v26 & 0x8000) == 0)
        {
LABEL_76:
          v30 = copyFromManagedSettings;
          directMessagesSetting = [copyFromManagedSettings directMessagesSetting];
LABEL_79:
          settingCopy = setting;
          [v30 setSubsections:0];
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v32 = v18;
          v33 = [v32 countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (!v33)
          {
            goto LABEL_127;
          }

          v34 = v33;
          v35 = *v65;
          while (1)
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v65 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v64 + 1) + 8 * j);
              [notificationsCopy _addSubsection:v37];
              if ([v37 sectionType] == 2)
              {
                if ((v26 & 0x2000) != 0)
                {
                  v29 |= [v37 pushSettings] & 9;
                  if ((v26 & 0x4000) != 0)
                  {
                    goto LABEL_90;
                  }

LABEL_87:
                  if ((v26 & 0x20) != 0)
                  {
LABEL_91:
                    v29 |= [v37 pushSettings] & 0x24;
                    if ([v37 alertType] > alertType)
                    {
                      alertType = [v37 alertType];
                    }
                  }
                }

                else
                {
                  if ((v26 & 0x4000) == 0)
                  {
                    goto LABEL_87;
                  }

LABEL_90:
                  v29 |= [v37 pushSettings] & 0x12;
                  if ((v26 & 0x20) != 0)
                  {
                    goto LABEL_91;
                  }
                }

                if ((v26 & 2) != 0 && lockScreenSetting != 2)
                {
                  lockScreenSetting = [v37 lockScreenSetting];
                }

                if ((v26 & 4) != 0)
                {
                  showsOnExternalDevices |= [v37 showsOnExternalDevices];
                }

                if ((v26 & 1) != 0 && notificationCenterSetting != 2)
                {
                  notificationCenterSetting = [v37 notificationCenterSetting];
                }

                if ((v26 & 0x40) != 0 && contentPreviewSetting != 1)
                {
                  contentPreviewSetting = [v37 contentPreviewSetting];
                }

                if ((v26 & 0x80) != 0 && carPlaySetting != 2)
                {
                  carPlaySetting = [v37 carPlaySetting];
                }

                if ((v26 & 0x10000) != 0 && remoteNotificationsSetting != 2)
                {
                  remoteNotificationsSetting = [v37 remoteNotificationsSetting];
                }

                if ((v26 & 0x400) != 0 && (announceSetting - 4) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  announceSetting = [v37 announceSetting];
                }

                if ((v26 & 0x100) != 0 && criticalAlertSetting != 2)
                {
                  criticalAlertSetting = [v37 criticalAlertSetting];
                }

                if ((v26 & 0x800) != 0 && timeSensitiveSetting != 2)
                {
                  timeSensitiveSetting = [v37 timeSensitiveSetting];
                }

                if ((v26 & 0x1000) != 0 && scheduledDeliverySetting != 2)
                {
                  scheduledDeliverySetting = [v37 scheduledDeliverySetting];
                }

                if ((v26 & 0x8000) != 0 && directMessagesSetting != 2)
                {
                  directMessagesSetting = [v37 directMessagesSetting];
                }

                continue;
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v64 objects:v72 count:16];
            if (!v34)
            {
LABEL_127:

              [notificationsCopy setLockScreenSetting:lockScreenSetting];
              [notificationsCopy setShowsOnExternalDevices:showsOnExternalDevices & 1];
              [notificationsCopy setNotificationCenterSetting:notificationCenterSetting];
              [notificationsCopy setPushSettings:v29];
              [notificationsCopy setAlertType:alertType];
              [notificationsCopy setContentPreviewSetting:contentPreviewSetting];
              [notificationsCopy setAnnounceSetting:announceSetting];
              [notificationsCopy setCarPlaySetting:carPlaySetting];
              [notificationsCopy setRemoteNotificationsSetting:remoteNotificationsSetting];
              [notificationsCopy setCriticalAlertSetting:criticalAlertSetting];
              [notificationsCopy setTimeSensitiveSetting:timeSensitiveSetting];
              copyFromManagedSettings2 = notificationsCopy;
              [notificationsCopy setScheduledDeliverySetting:scheduledDeliverySetting];
              [notificationsCopy setDirectMessagesSetting:directMessagesSetting];

              selfCopy = v50;
              parentSection = 0;
              setting = settingCopy;
              LOBYTE(notificationsCopy) = v48;
              goto LABEL_128;
            }
          }
        }
      }

      else
      {
        scheduledDeliverySetting = [copyFromManagedSettings scheduledDeliverySetting];
        if ((v26 & 0x8000) == 0)
        {
          goto LABEL_76;
        }
      }

      directMessagesSetting = 0;
      v30 = copyFromManagedSettings;
      goto LABEL_79;
    }

LABEL_69:
    criticalAlertSetting = 0;
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

  if ([(UNCSectionInfo *)selfCopy sectionType]!= 2)
  {
LABEL_45:
    copyFromManagedSettings2 = 0;
    goto LABEL_128;
  }

  copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
  if (([parentSection allowsNotifications] & 1) == 0)
  {
    -[UNCSectionInfo setAuthorizationStatus:](copyFromManagedSettings2, "setAuthorizationStatus:", [parentSection authorizationStatus]);
  }

  if ([parentSection suppressedSettings] & 0x2000) == 0 && (objc_msgSend(parentSection, "pushSettings") & 1) != 0 && (objc_msgSend(parentSection, "pushSettings") & 8) == 0 && (-[UNCSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings"))
  {
    [(UNCSectionInfo *)copyFromManagedSettings2 setPushSettings:[(UNCSectionInfo *)copyFromManagedSettings2 pushSettings]& 0xFFFFFFFFFFFFFFF7];
  }

  suppressedSettings2 = [(UNCSectionInfo *)copyFromManagedSettings2 suppressedSettings];
  v14 = suppressedSettings2;
  if (suppressedSettings2)
  {
    -[UNCSectionInfo setNotificationCenterSetting:](copyFromManagedSettings2, "setNotificationCenterSetting:", [parentSection notificationCenterSetting]);
    if ((v14 & 2) == 0)
    {
LABEL_12:
      if ((v14 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }
  }

  else if ((suppressedSettings2 & 2) == 0)
  {
    goto LABEL_12;
  }

  -[UNCSectionInfo setLockScreenSetting:](copyFromManagedSettings2, "setLockScreenSetting:", [parentSection lockScreenSetting]);
  if ((v14 & 4) == 0)
  {
LABEL_13:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  -[UNCSectionInfo setShowsOnExternalDevices:](copyFromManagedSettings2, "setShowsOnExternalDevices:", [parentSection showsOnExternalDevices]);
  if ((v14 & 0x2000) == 0)
  {
LABEL_14:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  -[UNCSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 9 | -[UNCSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFF6);
  if ((v14 & 0x4000) == 0)
  {
LABEL_15:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  -[UNCSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 0x12 | -[UNCSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFEDLL);
  if ((v14 & 0x20) == 0)
  {
LABEL_16:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  -[UNCSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 0x24 | -[UNCSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFDBLL);
  -[UNCSectionInfo setAlertType:](copyFromManagedSettings2, "setAlertType:", [parentSection alertType]);
  if ((v14 & 0x40) == 0)
  {
LABEL_17:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  -[UNCSectionInfo setContentPreviewSetting:](copyFromManagedSettings2, "setContentPreviewSetting:", [parentSection contentPreviewSetting]);
  if ((v14 & 0x400) == 0)
  {
LABEL_18:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  -[UNCSectionInfo setAnnounceSetting:](copyFromManagedSettings2, "setAnnounceSetting:", [parentSection announceSetting]);
  if ((v14 & 0x80) == 0)
  {
LABEL_19:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  -[UNCSectionInfo setCarPlaySetting:](copyFromManagedSettings2, "setCarPlaySetting:", [parentSection carPlaySetting]);
  if ((v14 & 0x10000) == 0)
  {
LABEL_20:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  -[UNCSectionInfo setRemoteNotificationsSetting:](copyFromManagedSettings2, "setRemoteNotificationsSetting:", [parentSection remoteNotificationsSetting]);
  if ((v14 & 0x100) == 0)
  {
LABEL_21:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  -[UNCSectionInfo setCriticalAlertSetting:](copyFromManagedSettings2, "setCriticalAlertSetting:", [parentSection criticalAlertSetting]);
  if ((v14 & 0x800) == 0)
  {
LABEL_22:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

LABEL_58:
    -[UNCSectionInfo setScheduledDeliverySetting:](copyFromManagedSettings2, "setScheduledDeliverySetting:", [parentSection scheduledDeliverySetting]);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_59;
  }

LABEL_57:
  -[UNCSectionInfo setTimeSensitiveSetting:](copyFromManagedSettings2, "setTimeSensitiveSetting:", [parentSection timeSensitiveSetting]);
  if ((v14 & 0x1000) != 0)
  {
    goto LABEL_58;
  }

LABEL_23:
  if ((v14 & 0x8000) != 0)
  {
LABEL_59:
    -[UNCSectionInfo setDirectMessagesSetting:](copyFromManagedSettings2, "setDirectMessagesSetting:", [parentSection directMessagesSetting]);
  }

LABEL_128:
  if ([(UNCSectionInfo *)selfCopy isRestricted])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setAuthorizationStatus:1];
  }

  if (![(UNCSectionInfo *)selfCopy allowsNotifications])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

LABEL_138:
    if (![parentSection allowsNotifications] || (objc_msgSend(parentSection, "pushSettings") & 1) == 0 || (objc_msgSend(parentSection, "suppressedSettings") & 0x2000) != 0 || (-[UNCSectionInfo suppressedSettings](selfCopy, "suppressedSettings") & 0x2000) != 0)
    {
      v38 = -57;
    }

    else
    {
      v38 = -49;
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setPushSettings:[(UNCSectionInfo *)selfCopy pushSettings]& v38];
    [(UNCSectionInfo *)copyFromManagedSettings2 setAlertType:0];
    [(UNCSectionInfo *)copyFromManagedSettings2 setNotificationCenterSetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy notificationCenterSetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setLockScreenSetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy lockScreenSetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setShowsOnExternalDevices:0];
    [(UNCSectionInfo *)copyFromManagedSettings2 setShowsCustomSettingsLink:0];
    [(UNCSectionInfo *)copyFromManagedSettings2 setContentPreviewSetting:0];
    [(UNCSectionInfo *)copyFromManagedSettings2 setAnnounceSetting:1];
    [(UNCSectionInfo *)copyFromManagedSettings2 setCarPlaySetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy carPlaySetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setRemoteNotificationsSetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy remoteNotificationsSetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setDirectMessagesSetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy directMessagesSetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setScheduledDeliverySetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy scheduledDeliverySetting]]];
    [(UNCSectionInfo *)copyFromManagedSettings2 setTimeSensitiveSetting:[(UNCSectionInfo *)selfCopy disabledSettingForSetting:[(UNCSectionInfo *)selfCopy timeSensitiveSetting]]];
LABEL_145:
    if (announceSetting != -1)
    {
      if (announceSetting >= 2)
      {
        goto LABEL_158;
      }

      if (copyFromManagedSettings2)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

    if (copyFromManagedSettings2)
    {
LABEL_156:
      v39 = copyFromManagedSettings2;
      v40 = 0;
      goto LABEL_157;
    }

LABEL_155:
    copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_156;
  }

  if (copyFromManagedSettings2)
  {
    if ([(UNCSectionInfo *)copyFromManagedSettings2 allowsNotifications])
    {
      goto LABEL_145;
    }

    goto LABEL_138;
  }

  if (announceSetting == -1)
  {
    goto LABEL_155;
  }

  if (announceSetting >= 2)
  {
    if ((deliverySetting + 1) < 3)
    {
      goto LABEL_160;
    }

LABEL_163:
    copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_164;
  }

LABEL_153:
  copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
LABEL_154:
  v39 = copyFromManagedSettings2;
  v40 = 1;
LABEL_157:
  [(UNCSectionInfo *)v39 setAnnounceSetting:v40];
LABEL_158:
  if ((deliverySetting + 1) < 3)
  {
    if (copyFromManagedSettings2)
    {
LABEL_161:
      [(UNCSectionInfo *)copyFromManagedSettings2 setScheduledDeliverySetting:1];
      goto LABEL_164;
    }

LABEL_160:
    copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_161;
  }

  if (!copyFromManagedSettings2)
  {
    goto LABEL_163;
  }

LABEL_164:
  if (!playCopy)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setCarPlaySetting:0];
  }

  if (!notificationsCopy)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setRemoteNotificationsSetting:0];
  }

  if (copyFromManagedSettings2)
  {
    v41 = copyFromManagedSettings2;
  }

  else
  {
    v41 = selfCopy;
  }

  v42 = v41;
  if (![(UNCSectionInfo *)v42 contentPreviewSetting])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setContentPreviewSetting:setting];
  }

  if ([(UNCSectionInfo *)v42 authorizationStatus]== 4)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(UNCSectionInfo *)selfCopy copyFromManagedSettings];
    }

    sectionInfoSettings = [(UNCSectionInfo *)selfCopy sectionInfoSettings];
    if ([sectionInfoSettings isAuthorizedTemporarily])
    {
      v44 = 2;
    }

    else
    {
      v44 = 0;
    }

    [(UNCSectionInfo *)copyFromManagedSettings2 setAuthorizationStatus:v44];
  }

  if (copyFromManagedSettings2)
  {
    v45 = copyFromManagedSettings2;
  }

  else
  {
    v45 = selfCopy;
  }

  v46 = v45;

  return v45;
}

- (id)effectiveSectionInfoWithFactoryInfo:(id)info defaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  playCopy = play;
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_9;
  }

  factorySectionID = [(UNCSectionInfo *)self factorySectionID];
  sectionID = [infoCopy sectionID];
  if (([factorySectionID isEqualToString:sectionID] & 1) == 0)
  {

    goto LABEL_9;
  }

  [infoCopy dataProviderIDs];
  deliverySettingCopy = deliverySetting;
  v17 = v26 = announceSetting;
  [(UNCSectionInfo *)self sectionID];
  v19 = v18 = notificationsCopy;
  v20 = [v17 containsObject:v19];

  if ((v20 & 1) == 0)
  {
LABEL_9:
    selfCopy = self;
    goto LABEL_10;
  }

  v21 = [(UNCSectionInfo *)self copy];
  if ([v21 suppressFromSettings] && (objc_msgSend(infoCopy, "suppressFromSettings") & 1) == 0)
  {
    [v21 setNotificationCenterSetting:{objc_msgSend(infoCopy, "notificationCenterSetting")}];
    [v21 setLockScreenSetting:{objc_msgSend(infoCopy, "lockScreenSetting")}];
    if ([v21 showsOnExternalDevices])
    {
      showsOnExternalDevices = [infoCopy showsOnExternalDevices];
    }

    else
    {
      showsOnExternalDevices = 0;
    }

    [v21 setShowsOnExternalDevices:showsOnExternalDevices];
    [v21 setContentPreviewSetting:{objc_msgSend(infoCopy, "contentPreviewSetting")}];
    [v21 setPushSettings:{objc_msgSend(infoCopy, "pushSettings")}];
    [v21 setAlertType:{objc_msgSend(infoCopy, "alertType")}];
    [v21 setAuthorizationStatus:{objc_msgSend(infoCopy, "authorizationStatus")}];
    [v21 setCarPlaySetting:{objc_msgSend(infoCopy, "carPlaySetting")}];
    [v21 setRemoteNotificationsSetting:{objc_msgSend(infoCopy, "remoteNotificationsSetting")}];
    [v21 setAnnounceSetting:{objc_msgSend(infoCopy, "announceSetting")}];
    [v21 setCriticalAlertSetting:{objc_msgSend(infoCopy, "criticalAlertSetting")}];
    [v21 setTimeSensitiveSetting:{objc_msgSend(infoCopy, "timeSensitiveSetting")}];
    [v21 setScheduledDeliverySetting:{objc_msgSend(infoCopy, "scheduledDeliverySetting")}];
    [v21 setDirectMessagesSetting:{objc_msgSend(infoCopy, "directMessagesSetting")}];
  }

  selfCopy = [v21 effectiveSectionInfoWithDefaultContentPreviewSetting:setting globalAnnounceSetting:v26 globalScheduledDeliverySetting:deliverySettingCopy hasPairedVehiclesForCarPlay:playCopy hasDestinationForRemoteNotifications:v18];

LABEL_10:

  return selfCopy;
}

- (UNCSectionInfo)parentSection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSection);

  return WeakRetained;
}

+ (id)defaultSectionInfoForSection:(id)section
{
  sectionCopy = section;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([sectionCopy defaultSectionInfo], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [UNCSectionInfo defaultSectionInfoForType:0];
  }

  sectionIdentifier = [sectionCopy sectionIdentifier];
  [v4 setSectionID:sectionIdentifier];
  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:sectionIdentifier allowPlaceholder:1 error:&v12];
  v7 = v12;
  if (v6)
  {
    localizedName = [v6 localizedName];
    [v4 setAppName:localizedName];

    applicationState = [v6 applicationState];
    [v4 setIsRestricted:{objc_msgSend(applicationState, "isRestricted")}];
  }

  else
  {
    v10 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [(UNCSectionInfo(DataProviders) *)sectionIdentifier defaultSectionInfoForSection:v10, v7];
    }
  }

  return v4;
}

- (void)updateWithDefaultSectionInfo:(id)info
{
  v61 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  alertType = [(UNCSectionInfo *)self alertType];
  pushSettings = [(UNCSectionInfo *)self pushSettings];
  pushSettings2 = [infoCopy pushSettings];
  v8 = pushSettings2;
  if ((pushSettings & 4) == 0 && (pushSettings2 & 4) != 0)
  {
    alertType = [infoCopy alertType];
    pushSettings |= 0x24uLL;
  }

  if (pushSettings & 1 | ((v8 & 1) == 0))
  {
    v9 = pushSettings;
  }

  else
  {
    v9 = pushSettings | 9;
  }

  v10 = (v9 >> 1) & 1;
  if ((v8 & 2) == 0)
  {
    LODWORD(v10) = 1;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 | 0x12;
  }

  suppressedSettings = [(UNCSectionInfo *)self suppressedSettings];
  suppressedSettings2 = [infoCopy suppressedSettings];
  v14 = suppressedSettings2;
  if ((suppressedSettings & 0x2000) == 0 || (suppressedSettings2 & 0x2000) != 0)
  {
LABEL_26:
    if ((suppressedSettings & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    v11 |= 9uLL;
    goto LABEL_26;
  }

  subsections = [(UNCSectionInfo *)self subsections];
  v16 = [subsections count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  subsections2 = [(UNCSectionInfo *)self subsections];
  v18 = [subsections2 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v57;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(subsections2);
        }

        if (([*(*(&v56 + 1) + 8 * i) pushSettings] & 8) != 0)
        {
          v11 |= 9uLL;
          goto LABEL_81;
        }
      }

      v19 = [subsections2 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_81:

  if ((suppressedSettings & 0x20) != 0)
  {
LABEL_27:
    if ((v14 & 0x20) == 0)
    {
      alertType = [infoCopy alertType];
      v11 |= 0x24uLL;
    }
  }

LABEL_29:
  [(UNCSectionInfo *)self setAlertType:alertType];
  [(UNCSectionInfo *)self setPushSettings:v11];
  lockScreenSetting = [(UNCSectionInfo *)self lockScreenSetting];
  lockScreenSetting2 = [infoCopy lockScreenSetting];
  if (lockScreenSetting)
  {
    v25 = ((v14 & 2) == 0) & (suppressedSettings >> 1);
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
    v24 = lockScreenSetting2;
    if (lockScreenSetting2)
    {
      [(UNCSectionInfo *)self setLockScreenSetting:lockScreenSetting2];
    }
  }

  notificationCenterSetting = [(UNCSectionInfo *)self notificationCenterSetting];
  notificationCenterSetting2 = [infoCopy notificationCenterSetting];
  if (notificationCenterSetting)
  {
    v29 = suppressedSettings & ((v14 & 1) == 0);
  }

  else
  {
    v29 = 1;
  }

  if (v29 == 1)
  {
    v28 = notificationCenterSetting2;
    if (notificationCenterSetting2)
    {
      [(UNCSectionInfo *)self setNotificationCenterSetting:notificationCenterSetting2];
    }
  }

  carPlaySetting = [(UNCSectionInfo *)self carPlaySetting];
  carPlaySetting2 = [infoCopy carPlaySetting];
  if (carPlaySetting)
  {
    v33 = ((v14 & 0x80) == 0) & (suppressedSettings >> 7);
  }

  else
  {
    v33 = 1;
  }

  if (v33 == 1)
  {
    v32 = carPlaySetting2;
    if (carPlaySetting2)
    {
      [(UNCSectionInfo *)self setCarPlaySetting:carPlaySetting2];
    }
  }

  remoteNotificationsSetting = [(UNCSectionInfo *)self remoteNotificationsSetting];
  remoteNotificationsSetting2 = [infoCopy remoteNotificationsSetting];
  if (remoteNotificationsSetting)
  {
    v37 = ((*&v14 & 0x10000) == 0) & HIWORD(suppressedSettings);
  }

  else
  {
    v37 = 1;
  }

  if (v37 == 1)
  {
    v36 = remoteNotificationsSetting2;
    if (remoteNotificationsSetting2)
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:remoteNotificationsSetting2];
    }
  }

  announceSetting = [(UNCSectionInfo *)self announceSetting];
  announceSetting2 = [infoCopy announceSetting];
  if (!announceSetting)
  {
    v40 = announceSetting2;
    if (announceSetting2)
    {
      [(UNCSectionInfo *)self setAnnounceSetting:announceSetting2];
    }
  }

  criticalAlertSetting = [(UNCSectionInfo *)self criticalAlertSetting];
  criticalAlertSetting2 = [infoCopy criticalAlertSetting];
  if (!criticalAlertSetting)
  {
    v43 = criticalAlertSetting2;
    if (criticalAlertSetting2)
    {
      [(UNCSectionInfo *)self setCriticalAlertSetting:criticalAlertSetting2];
    }
  }

  timeSensitiveSetting = [(UNCSectionInfo *)self timeSensitiveSetting];
  timeSensitiveSetting2 = [infoCopy timeSensitiveSetting];
  if (!timeSensitiveSetting)
  {
    v46 = timeSensitiveSetting2;
    if (timeSensitiveSetting2)
    {
      [(UNCSectionInfo *)self setTimeSensitiveSetting:timeSensitiveSetting2];
    }
  }

  directMessagesSetting = [(UNCSectionInfo *)self directMessagesSetting];
  directMessagesSetting2 = [infoCopy directMessagesSetting];
  if (!directMessagesSetting)
  {
    v49 = directMessagesSetting2;
    if (directMessagesSetting2)
    {
      [(UNCSectionInfo *)self setDirectMessagesSetting:directMessagesSetting2];
    }
  }

  if (![(UNCSectionInfo *)self showsCustomSettingsLink])
  {
    -[UNCSectionInfo setShowsCustomSettingsLink:](self, "setShowsCustomSettingsLink:", [infoCopy showsCustomSettingsLink]);
  }

  parentSection = [(UNCSectionInfo *)self parentSection];
  if (!parentSection || (suppressedSettings & 0x23) != 0)
  {
  }

  else
  {

    if ((v14 & 0x23) != 0)
    {
      if ([(UNCSectionInfo *)self allowsNotifications])
      {
        if ([(UNCSectionInfo *)self lockScreenSetting]!= 2 && [(UNCSectionInfo *)self notificationCenterSetting]!= 2 && ![(UNCSectionInfo *)self alertType])
        {
          [(UNCSectionInfo *)self setAllowsNotifications:0];
        }
      }

      else if (([(UNCSectionInfo *)self suppressedSettings]& 0x2000) == 0 && ([(UNCSectionInfo *)self pushSettings]& 1) != 0)
      {
        [(UNCSectionInfo *)self setPushSettings:[(UNCSectionInfo *)self pushSettings]& 0xFFFFFFFFFFFFFFF7];
      }
    }
  }

  -[UNCSectionInfo setSuppressFromSettings:](self, "setSuppressFromSettings:", [infoCopy suppressFromSettings]);
  -[UNCSectionInfo setSuppressedSettings:](self, "setSuppressedSettings:", [infoCopy suppressedSettings]);
  -[UNCSectionInfo setSectionType:](self, "setSectionType:", [infoCopy sectionType]);
  -[UNCSectionInfo setIsAppClip:](self, "setIsAppClip:", [infoCopy isAppClip]);
  -[UNCSectionInfo setSectionCategory:](self, "setSectionCategory:", [infoCopy sectionCategory]);
  -[UNCSectionInfo setSubsectionPriority:](self, "setSubsectionPriority:", [infoCopy subsectionPriority]);
  -[UNCSectionInfo setVersion:](self, "setVersion:", [infoCopy version]);
  appName = [infoCopy appName];
  [(UNCSectionInfo *)self setAppName:appName];

  displayName = [infoCopy displayName];
  [(UNCSectionInfo *)self setDisplayName:displayName];

  icon = [infoCopy icon];
  [(UNCSectionInfo *)self setIcon:icon];

  -[UNCSectionInfo setIsRestricted:](self, "setIsRestricted:", [infoCopy isRestricted]);
  customSettingsBundle = [infoCopy customSettingsBundle];
  [(UNCSectionInfo *)self setCustomSettingsBundle:customSettingsBundle];

  customSettingsDetailControllerClass = [infoCopy customSettingsDetailControllerClass];
  [(UNCSectionInfo *)self setCustomSettingsDetailControllerClass:customSettingsDetailControllerClass];
}

- (void)queryAndUseManagedSettings
{
  sectionID = [(UNCSectionInfo *)self sectionID];
  [(UNCSectionInfo *)self queryAndUseManagedSettingsForSectionID:sectionID];
}

- (void)queryAndUseManagedSettingsForSectionID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [UNCSectionInfoSettings sectionInfoSettingsForManagedBundleID:dCopy];
  v6 = MEMORY[0x1E69833A0];
  if (v5)
  {
    v7 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Managed settings found for section %{public}@", &v11, 0xCu);
    }
  }

  [(UNCSectionInfo *)self setManagedSectionInfoSettings:v5];
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [mEMORY[0x1E69ADFB8] isNotificationsModificationAllowedForBundleID:dCopy];

  if ((v9 & 1) == 0)
  {
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Modification not allowed for section %{public}@", &v11, 0xCu);
    }
  }

  [(UNCSectionInfo *)self setIsModificationAllowed:v9 ^ 1u];
}

- (void)setManagedSectionInfoSettings:(id)settings
{
  v17 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v5 = [settingsCopy copy];
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  self->_managedSectionInfoSettings = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_subsections;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setManagedSectionInfoSettings:{settingsCopy, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (UNCSectionInfoSettings)readableSettings
{
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (!managedSectionInfoSettings)
  {
    managedSectionInfoSettings = self->_sectionInfoSettings;
  }

  return managedSectionInfoSettings;
}

- (UNCSectionInfoSettings)writableSettings
{
  if (self->_managedSectionInfoSettings)
  {
    return 0;
  }

  else
  {
    return self->_sectionInfoSettings;
  }
}

- (id)copyFromManagedSettings
{
  v2 = [(UNCSectionInfo *)self copy];
  if ([v2 usesManagedSettings])
  {
    managedSectionInfoSettings = [v2 managedSectionInfoSettings];
    [v2 setSectionInfoSettings:managedSectionInfoSettings];

    [v2 setManagedSectionInfoSettings:0];
  }

  return v2;
}

- (BOOL)allowsNotifications
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  allowsNotifications = [readableSettings allowsNotifications];

  return allowsNotifications;
}

- (void)setAllowsNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setAllowsNotifications:notificationsCopy];
}

- (NSDate)authorizationExpirationDate
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  authorizationExpirationDate = [readableSettings authorizationExpirationDate];

  return authorizationExpirationDate;
}

- (void)setAuthorizationExpirationDate:(id)date
{
  dateCopy = date;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setAuthorizationExpirationDate:dateCopy];
}

- (int64_t)authorizationStatus
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  authorizationStatus = [readableSettings authorizationStatus];

  return authorizationStatus;
}

- (void)setAuthorizationStatus:(int64_t)status
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setAuthorizationStatus:status];
}

- (NSDate)lastUserGrantedAuthorizationDate
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  lastUserGrantedAuthorizationDate = [readableSettings lastUserGrantedAuthorizationDate];

  return lastUserGrantedAuthorizationDate;
}

- (void)setLastUserGrantedAuthorizationDate:(id)date
{
  dateCopy = date;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setLastUserGrantedAuthorizationDate:dateCopy];
}

- (UNCMuteAssertion)muteAssertion
{
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  muteAssertion = [sectionInfoSettings muteAssertion];

  return muteAssertion;
}

- (void)setMuteAssertion:(id)assertion
{
  assertionCopy = assertion;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings setMuteAssertion:assertionCopy];
}

- (int64_t)notificationCenterSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  notificationCenterSetting = [readableSettings notificationCenterSetting];

  return notificationCenterSetting;
}

- (void)setNotificationCenterSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setNotificationCenterSetting:setting];
}

- (BOOL)showsInNotificationCenter
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  showsInNotificationCenter = [readableSettings showsInNotificationCenter];

  return showsInNotificationCenter;
}

- (void)setShowsInNotificationCenter:(BOOL)center
{
  centerCopy = center;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setShowsInNotificationCenter:centerCopy];
}

- (int64_t)lockScreenSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  lockScreenSetting = [readableSettings lockScreenSetting];

  return lockScreenSetting;
}

- (void)setLockScreenSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setLockScreenSetting:setting];
}

- (BOOL)showsInLockScreen
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  showsInLockScreen = [readableSettings showsInLockScreen];

  return showsInLockScreen;
}

- (void)setShowsInLockScreen:(BOOL)screen
{
  screenCopy = screen;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setShowsInLockScreen:screenCopy];
}

- (unint64_t)alertType
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  alertType = [readableSettings alertType];

  return alertType;
}

- (void)setAlertType:(unint64_t)type
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setAlertType:type];
}

- (unint64_t)pushSettings
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  pushSettings = [readableSettings pushSettings];

  return pushSettings;
}

- (void)setPushSettings:(unint64_t)settings
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setPushSettings:settings];
}

- (int64_t)carPlaySetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  carPlaySetting = [readableSettings carPlaySetting];

  return carPlaySetting;
}

- (void)setCarPlaySetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setCarPlaySetting:setting];
}

- (int64_t)remoteNotificationsSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  remoteNotificationsSetting = [readableSettings remoteNotificationsSetting];

  return remoteNotificationsSetting;
}

- (void)setRemoteNotificationsSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setRemoteNotificationsSetting:setting];
}

- (int64_t)spokenNotificationSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  spokenNotificationSetting = [readableSettings spokenNotificationSetting];

  return spokenNotificationSetting;
}

- (void)setSpokenNotificationSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setSpokenNotificationSetting:setting];
}

- (int64_t)criticalAlertSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  criticalAlertSetting = [readableSettings criticalAlertSetting];

  return criticalAlertSetting;
}

- (void)setCriticalAlertSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setCriticalAlertSetting:setting];
}

- (int64_t)timeSensitiveSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  timeSensitiveSetting = [readableSettings timeSensitiveSetting];

  return timeSensitiveSetting;
}

- (void)setTimeSensitiveSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setTimeSensitiveSetting:setting];
}

- (BOOL)hasUserConfiguredTimeSensitiveSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  hasUserConfiguredTimeSensitiveSetting = [readableSettings hasUserConfiguredTimeSensitiveSetting];

  return hasUserConfiguredTimeSensitiveSetting;
}

- (void)setUserConfiguredTimeSensitiveSetting:(BOOL)setting
{
  settingCopy = setting;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setUserConfiguredTimeSensitiveSetting:settingCopy];
}

- (int64_t)bulletinGroupingSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  bulletinGroupingSetting = [readableSettings bulletinGroupingSetting];

  return bulletinGroupingSetting;
}

- (void)setBulletinGroupingSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setBulletinGroupingSetting:setting];
}

- (int64_t)announceSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  announceSetting = [readableSettings announceSetting];

  return announceSetting;
}

- (void)setAnnounceSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setAnnounceSetting:setting];
}

- (int64_t)scheduledDeliverySetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  scheduledDeliverySetting = [readableSettings scheduledDeliverySetting];

  return scheduledDeliverySetting;
}

- (void)setScheduledDeliverySetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setScheduledDeliverySetting:setting];
}

- (int64_t)directMessagesSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  directMessagesSetting = [readableSettings directMessagesSetting];

  return directMessagesSetting;
}

- (void)setDirectMessagesSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setDirectMessagesSetting:setting];
}

- (BOOL)hasUserConfiguredDirectMessagesSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  hasUserConfiguredDirectMessagesSetting = [readableSettings hasUserConfiguredDirectMessagesSetting];

  return hasUserConfiguredDirectMessagesSetting;
}

- (void)setUserConfiguredDirectMessagesSetting:(BOOL)setting
{
  settingCopy = setting;
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setUserConfiguredDirectMessagesSetting:settingCopy];
}

- (BOOL)showsOnExternalDevices
{
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  showsOnExternalDevices = [sectionInfoSettings showsOnExternalDevices];

  return showsOnExternalDevices;
}

- (void)setShowsOnExternalDevices:(BOOL)devices
{
  devicesCopy = devices;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings setShowsOnExternalDevices:devicesCopy];
}

- (int64_t)contentPreviewSetting
{
  readableSettings = [(UNCSectionInfo *)self readableSettings];
  contentPreviewSetting = [readableSettings contentPreviewSetting];

  return contentPreviewSetting;
}

- (void)setContentPreviewSetting:(int64_t)setting
{
  writableSettings = [(UNCSectionInfo *)self writableSettings];
  [writableSettings setContentPreviewSetting:setting];
}

- (BOOL)showsMessagePreview
{
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  showsMessagePreview = [sectionInfoSettings showsMessagePreview];

  return showsMessagePreview;
}

- (void)setShowsMessagePreview:(BOOL)preview
{
  previewCopy = preview;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings setShowsMessagePreview:previewCopy];
}

- (BOOL)showsCustomSettingsLink
{
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  showsCustomSettingsLink = [sectionInfoSettings showsCustomSettingsLink];

  return showsCustomSettingsLink;
}

- (void)setShowsCustomSettingsLink:(BOOL)link
{
  linkCopy = link;
  sectionInfoSettings = [(UNCSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings setShowsCustomSettingsLink:linkCopy];
}

@end