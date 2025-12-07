@interface HKHRHypertensionNotificationsSettings
- (BOOL)_featureOnboardedWithFeatureStatus:(id)status;
- (BOOL)_isWatchSettingsVisibleWithFeatureStatus:(id)status;
- (BOOL)_notificationsEnabledWithFeatureStatus:(id)status;
- (HKHRHypertensionNotificationsSettings)initWithFeatureStatus:(id)status;
- (id)_footerDefaultSupportingLink:(BOOL)link;
- (id)_footerPostPregnancyModeEnabled:(BOOL)enabled;
- (id)_footerPregnancyModeEnabled:(BOOL)enabled;
- (id)_footerRegionNotSupported:(BOOL)supported;
- (id)_footerRemoteDisabled:(BOOL)disabled;
- (id)_footerSeedExpired:(BOOL)expired;
- (id)_footerWithRequirementsEvaluation:(id)evaluation supportsLink:(BOOL)link;
- (id)_footerWristDetectionNotEnabled;
- (id)bridgeSettings;
- (id)watchSettings;
@end

@implementation HKHRHypertensionNotificationsSettings

- (HKHRHypertensionNotificationsSettings)initWithFeatureStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = HKHRHypertensionNotificationsSettings;
  v6 = [(HKHRHypertensionNotificationsSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureStatus, status);
  }

  return v7;
}

- (id)bridgeSettings
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBF98]];
  bOOLValue = [v4 BOOLValue];

  v6 = MEMORY[0x277CCBE70];
  if (!bOOLValue)
  {
    v6 = &HKFeatureAvailabilityContextNotOnboardedSettingsVisibility;
  }

  v7 = *v6;
  v8 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:v7];
  areAllRequirementsSatisfied = [v8 areAllRequirementsSatisfied];
  v10 = [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:self->_featureStatus];
  v11 = [(HKHRHypertensionNotificationsSettings *)self _showOnboardingWithFeatureStatus:self->_featureStatus];
  v12 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  areAllRequirementsSatisfied2 = [v12 areAllRequirementsSatisfied];
  v14 = [(HKHRHypertensionNotificationsSettings *)self _footerWithRequirementsEvaluation:v3 supportsLink:1];
  _HKInitializeLogging();
  v15 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [v8 unsatisfiedRequirementIdentifiersDescription];
    v16 = v24 = v7;
    [v12 unsatisfiedRequirementIdentifiersDescription];
    v23 = v3;
    v17 = v11;
    v18 = v10;
    v20 = v19 = areAllRequirementsSatisfied;
    *buf = 136447746;
    v26 = "[HKHRHypertensionNotificationsSettings bridgeSettings]";
    v27 = 1024;
    v28 = v19;
    v29 = 1024;
    v30 = v18;
    v31 = 1024;
    v32 = v17;
    v33 = 1024;
    v34 = areAllRequirementsSatisfied2;
    v35 = 2112;
    v36 = v16;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_228942000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}s]: settingsVisible: %i enabled: %i showOnboarding: %i userInteractionEnabled: %i visibilityUnsatisfiedRequirements: %@ interactionUnsatisfiedRequirements: %@", buf, 0x38u);

    areAllRequirementsSatisfied = v19;
    v10 = v18;
    v11 = v17;
    v3 = v23;

    v7 = v24;
  }

  v21 = [[HKHRHypertensionNotificationsBridgeSettings alloc] initWithSettingsVisible:areAllRequirementsSatisfied settingsEnabled:v10 showOnboarding:v11 userInteractionEnabled:areAllRequirementsSatisfied2 footer:v14];

  return v21;
}

- (id)watchSettings
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HKHRHypertensionNotificationsSettings *)self _isWatchSettingsVisibleWithFeatureStatus:self->_featureStatus];
  v4 = [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:self->_featureStatus];
  v5 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  areAllRequirementsSatisfied = [v5 areAllRequirementsSatisfied];
  v7 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v8 = [(HKHRHypertensionNotificationsSettings *)self _footerWithRequirementsEvaluation:v7 supportsLink:0];

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    unsatisfiedRequirementIdentifiersDescription = [v5 unsatisfiedRequirementIdentifiersDescription];
    v13 = 136447234;
    v14 = "[HKHRHypertensionNotificationsSettings watchSettings]";
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 1024;
    v20 = areAllRequirementsSatisfied;
    v21 = 2112;
    v22 = unsatisfiedRequirementIdentifiersDescription;
    _os_log_impl(&dword_228942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s]: settingsVisible: %i enabled: %i userInteractionEnabled: %i interactionUnsatisfiedRequirements: %@", &v13, 0x28u);
  }

  v11 = [[HKHRHypertensionNotificationsWatchSettings alloc] initWithSettingsVisible:v3 settingsEnabled:v4 userInteractionEnabled:areAllRequirementsSatisfied footer:v8];

  return v11;
}

- (BOOL)_isWatchSettingsVisibleWithFeatureStatus:(id)status
{
  v19 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = [(HKHRHypertensionNotificationsSettings *)self _featureOnboardedWithFeatureStatus:statusCopy];
  v6 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBE70]];

  areAllRequirementsSatisfied = [v6 areAllRequirementsSatisfied];
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    unsatisfiedRequirementIdentifiersDescription = [v6 unsatisfiedRequirementIdentifiersDescription];
    v11 = 136446978;
    v12 = "[HKHRHypertensionNotificationsSettings _isWatchSettingsVisibleWithFeatureStatus:]";
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = areAllRequirementsSatisfied;
    v17 = 2112;
    v18 = unsatisfiedRequirementIdentifiersDescription;
    _os_log_impl(&dword_228942000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}s]: onboarded: %i settingsVisible: %i visibilityUnsatisfiedRequirements: %@", &v11, 0x22u);
  }

  return v5 & areAllRequirementsSatisfied;
}

- (BOOL)_notificationsEnabledWithFeatureStatus:(id)status
{
  onboardingRecord = [status onboardingRecord];
  featureSettings = [onboardingRecord featureSettings];

  v6 = [featureSettings numberForKey:*MEMORY[0x277CCC120]];
  bOOLValue = [v6 BOOLValue];
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:bOOLValue, v10];
    }
  }

  return bOOLValue;
}

- (BOOL)_featureOnboardedWithFeatureStatus:(id)status
{
  v3 = [status objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBF98]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)_footerWithRequirementsEvaluation:(id)evaluation supportsLink:(BOOL)link
{
  linkCopy = link;
  evaluationCopy = evaluation;
  v7 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF28]];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_16;
  }

  v9 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF70]];
  bOOLValue2 = [v9 BOOLValue];

  if (!bOOLValue2)
  {
    goto LABEL_16;
  }

  v11 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBFE8]];
  bOOLValue3 = [v11 BOOLValue];

  if ((bOOLValue3 & 1) == 0)
  {
    _footerWristDetectionNotEnabled = [(HKHRHypertensionNotificationsSettings *)self _footerWristDetectionNotEnabled];
    goto LABEL_21;
  }

  v13 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF48]];
  bOOLValue4 = [v13 BOOLValue];

  if (!bOOLValue4 || ([evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBFC8]], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, !v16) || (objc_msgSend(evaluationCopy, "objectForKeyedSubscript:", *MEMORY[0x277CCBF80]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, !v18) || (objc_msgSend(evaluationCopy, "objectForKeyedSubscript:", *MEMORY[0x277CCBEF0]), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, !v20))
  {
LABEL_16:
    v33 = 0;
    goto LABEL_17;
  }

  v21 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF08]];
  if ([v21 BOOLValue])
  {
    v22 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF00]];
    bOOLValue5 = [v22 BOOLValue];

    if (bOOLValue5)
    {
      v24 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF30]];
      bOOLValue6 = [v24 BOOLValue];

      if (bOOLValue6)
      {
        v26 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBFD0]];
        bOOLValue7 = [v26 BOOLValue];

        if (bOOLValue7)
        {
          v28 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF68]];
          bOOLValue8 = [v28 BOOLValue];

          if (bOOLValue8)
          {
            v30 = [evaluationCopy objectForKeyedSubscript:*MEMORY[0x277CCBF78]];
            bOOLValue9 = [v30 BOOLValue];

            if (bOOLValue9)
            {
              [(HKHRHypertensionNotificationsSettings *)self _footerDefaultSupportingLink:linkCopy];
            }

            else
            {
              [(HKHRHypertensionNotificationsSettings *)self _footerPostPregnancyModeEnabled:linkCopy];
            }
            _footerWristDetectionNotEnabled = ;
          }

          else
          {
            _footerWristDetectionNotEnabled = [(HKHRHypertensionNotificationsSettings *)self _footerPregnancyModeEnabled:linkCopy];
          }
        }

        else
        {
          _footerWristDetectionNotEnabled = [(HKHRHypertensionNotificationsSettings *)self _footerSeedExpired:linkCopy];
        }
      }

      else
      {
        _footerWristDetectionNotEnabled = [(HKHRHypertensionNotificationsSettings *)self _footerRemoteDisabled:linkCopy];
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  _footerWristDetectionNotEnabled = [(HKHRHypertensionNotificationsSettings *)self _footerRegionNotSupported:linkCopy];
LABEL_21:
  v33 = _footerWristDetectionNotEnabled;
LABEL_17:

  return v33;
}

- (id)_footerDefaultSupportingLink:(BOOL)link
{
  if (link)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_NANO_FOOTER";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerWristDetectionNotEnabled
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_WRIST_DETECTION_%@" value:&stru_283BD8508 table:@"HeartRateSettings-HypertensionNotifications"];

  v4 = HKHRHeartHealthBundle();
  v5 = [v4 localizedStringForKey:@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_PASSCODE_SETTINGS_FOOTER_LINK" value:&stru_283BD8508 table:@"HeartRateSettings-HypertensionNotifications"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v3, v5];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v6 link:v5 url:@"bridge:root=PASSCODE_ID#WRIST_DETECTION_CELL_ID"];

  return v7;
}

- (id)_footerRegionNotSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REGION_NOT_SUPPORTED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REGION_NOT_SUPPORTED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_REGION_GATED_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerRemoteDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REMOTE_DISABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REMOTE_DISABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = +[_HKHeartSettingsUtilities remoteDisabledLinkURL];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerSeedExpired:(BOOL)expired
{
  if (expired)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_SEED_EXPIRED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_SEED_EXPIRED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerPregnancyModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_PREGNANCY_MODE_ENABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_PREGNANCY_MODE_ENABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerPostPregnancyModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_POST_PREGNANCY_MODE_ENABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_POST_PREGNANCY_MODE_ENABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (void)_notificationsEnabledWithFeatureStatus:(NSObject *)a3 .cold.1(uint64_t a1, char a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2 & 1];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_228942000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Hypertension notifications enabled in settings: %{public}@", &v6, 0x16u);
}

@end