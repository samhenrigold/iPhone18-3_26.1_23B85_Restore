@interface FLApprovedItemsFilter
+ (id)sharedFilter;
- (BOOL)overrideGroupRestrictionsForItem:(id)item;
- (unint64_t)approvalStatusForItem:(id)item;
@end

@implementation FLApprovedItemsFilter

+ (id)sharedFilter
{
  if (sharedFilter_onceToken != -1)
  {
    +[FLApprovedItemsFilter sharedFilter];
  }

  v3 = sharedFilter_filter;

  return v3;
}

uint64_t __37__FLApprovedItemsFilter_sharedFilter__block_invoke()
{
  v0 = objc_alloc_init(FLApprovedItemsFilter);
  v1 = sharedFilter_filter;
  sharedFilter_filter = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.purplebuddy.revisitSkippedSteps", @"DrySpellFollowUpItem", @"WifiFollowUpItem", @"RestoreFailureFollowUpItem", @"com.apple.faceid.CamInterlockError", @"com.apple.SoftwareUpdateServices.followup", @"com.apple.SoftwareUpdateServices.followup.AutoUpdate", @"com.apple.SoftwareUpdateServices.followup.updateAvailable", @"com.apple.SoftwareUpdateServices.followup.badgeOnly", @"com.apple.SoftwareUpdateServices.followup.RollbackDetected", @"com.apple.SoftwareUpdateServices.followup.InsufficientDiskSpace", @"com.apple.softwareupdateservicesui.followup.postupdate", @"com.apple.Bridge.AppleID-FollowUp", @"com.apple.Bridge.iTunesAccount-FollowUp", @"com.apple.enhanced-logging-state", @"com.apple.NewDeviceOutreach", @"com.apple.managedconfiguration.ios-purgatory", @"com.apple.SensorKit.followup.enableSensorKit", @"com.apple.identityservicesd.HomeNumberSuccess", @"com.apple.identityservicesd.HomeNumberNearExpiration", @"com.apple.identityservicesd.HomeNumberExpiration", @"com.apple.sharingd.phone-auto-unlock-upsell", @"com.apple.backupd.prebuddy", @"com.apple.disembarkui", @"com.apple.devicemanagementclient.followup.reauth", @"com.apple.SOS.settingsReset", @"com.apple.transparency.ValidateSelfFailed", @"com.apple.transparency.AuditFailure", @"com.apple.transparency.TreeRollDetected", @"com.apple.transparency.OptOut", @"com.apple.Health.MedicalID.followup", @"com.apple.timed.timefix", @"com.apple.mdmclient.depenroll", @"com.apple.siri.assets.corefollowup", @"com.apple.safetyalerts.enhancedDelivery.onboardPrompt", @"com.apple.app-distribution.approval-flow", @"com.apple.SystemEnvironments.updateAvailable", @"com.apple.mdmclient.purgatory", @"com.apple.icloud.gm", @"com.apple.swtransparency.rollback", @"com.apple.swtransparency.treeFork", @"com.apple.modelcatalog.out-of-space-cfu", @"com.apple.icloud.gm.adm", @"com.apple.homed.hh2-upgrade", @"com.apple.ThreatNotificationUI.FollowUpItem.general", @"com.apple.FileVault.RecoveryKeyReminder", @"com.apple.devicemanagementclient.nag.migration", @"com.apple.securesettings.followup.alwaysAllowVoiceActivation", @"com.apple.securesettings.followup.allowCustomSoundRecognition", @"com.apple.assistant.domain.followup.voicetrigger", @"com.apple.corespeech.voiceEnrollment", @"com.apple.findmy", 0}];
  v3 = *(sharedFilter_filter + 8);
  *(sharedFilter_filter + 8) = v2;

  *(sharedFilter_filter + 16) = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.appleaccount.followup", @"com.apple.NewDeviceOutreach", @"com.apple.authkit", @"com.apple.corecdp", @"com.apple.icloud.quota", @"com.apple.AppleMediaServices", @"com.apple.followup.tests", @"com.apple.ndoagent", @"com.apple.CoreTelephony", @"com.apple.mobilerepair", @"com.apple.HomeKit", @"com.icloud.family", @"com.apple.backupd", 0}];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)approvalStatusForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = +[FLEnvironment currentEnvironment];
  shouldHideAllFollowUps = [v5 shouldHideAllFollowUps];

  if ((shouldHideAllFollowUps & 1) == 0)
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    clientIdentifier = [itemCopy clientIdentifier];
    v10 = clientIdentifier;
    if (uniqueIdentifier && clientIdentifier)
    {
      if (-[NSSet containsObject:](self->_approvedClientIdentifiers, "containsObject:", clientIdentifier) || -[NSSet containsObject:](self->_approvedItemIdentifiers, "containsObject:", uniqueIdentifier) || (approvedItemIdentifiers = self->_approvedItemIdentifiers, [itemCopy typeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(approvedItemIdentifiers) = -[NSSet containsObject:](approvedItemIdentifiers, "containsObject:", v12), v12, approvedItemIdentifiers))
      {
        v14 = [FLGroupViewModelImpl alloc];
        groupIdentifier = [itemCopy groupIdentifier];
        v16 = [(FLGroupViewModelImpl *)v14 initWithIdentifier:groupIdentifier];

        restrictionEnabled = [v16 restrictionEnabled];
        if (restrictionEnabled && (restrictionEnabled = [(FLApprovedItemsFilter *)self overrideGroupRestrictionsForItem:itemCopy], (restrictionEnabled & 1) == 0))
        {
          v18 = _FLLogSystem(restrictionEnabled);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 138412290;
            v21 = itemCopy;
            _os_log_impl(&dword_22E696000, v18, OS_LOG_TYPE_DEFAULT, "Item rejected due to group restriction: %@", &v20, 0xCu);
          }

          v7 = 2;
        }

        else
        {
          v18 = _FLLogSystem(restrictionEnabled);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 138412290;
            v21 = itemCopy;
            _os_log_impl(&dword_22E696000, v18, OS_LOG_TYPE_DEFAULT, "Item approved: %@", &v20, 0xCu);
          }

          v7 = 1;
        }

        goto LABEL_20;
      }

      v16 = _FLLogSystem(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(FLApprovedItemsFilter *)itemCopy approvalStatusForItem:v16];
      }
    }

    else
    {
      v16 = _FLLogSystem(clientIdentifier);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(FLApprovedItemsFilter *)itemCopy approvalStatusForItem:v16];
      }
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 2;
LABEL_21:

  return v7;
}

- (BOOL)overrideGroupRestrictionsForItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"com.apple.AAFollowUpIdentifier.RenewCredentials";
  v3 = MEMORY[0x277CBEA60];
  itemCopy = item;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  LOBYTE(v3) = [v5 containsObject:uniqueIdentifier];
  return v3;
}

- (void)approvalStatusForItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22E696000, a2, OS_LOG_TYPE_ERROR, "Unknown item detected, please file a radar to [Follow Up | Requests] to be approved: %@", &v2, 0xCu);
}

- (void)approvalStatusForItem:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22E696000, a2, OS_LOG_TYPE_ERROR, "Rejecting item as invalid: %@", &v2, 0xCu);
}

@end