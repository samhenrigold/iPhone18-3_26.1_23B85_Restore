@interface UNSNotificationRecord
- (BOOL)hasAlertContent;
- (BOOL)hasBadge;
- (BOOL)hasCommunicationContext;
- (BOOL)hasPendingTrigger;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSimilar:(id)similar;
- (BOOL)willNotifyUser;
- (UNSNotificationRecord)initWithCoder:(id)coder;
- (UNSNotificationRecord)initWithDictionaryRepresentation:(id)representation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dictionaryRepresentationWithTruncation:(BOOL)truncation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNSNotificationRecord

- (BOOL)hasCommunicationContext
{
  communicationContextIdentifier = [(UNSNotificationRecord *)self communicationContextIdentifier];
  if (communicationContextIdentifier)
  {
    v4 = 1;
  }

  else
  {
    communicationContextAssociatedObjectUri = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
    if (communicationContextAssociatedObjectUri)
    {
      v4 = 1;
    }

    else
    {
      communicationContextBundleIdentifier = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
      if (communicationContextBundleIdentifier)
      {
        v4 = 1;
      }

      else
      {
        communicationContextDisplayName = [(UNSNotificationRecord *)self communicationContextDisplayName];
        if (communicationContextDisplayName)
        {
          v4 = 1;
        }

        else
        {
          communicationContextRecipients = [(UNSNotificationRecord *)self communicationContextRecipients];
          if ([communicationContextRecipients count])
          {
            v4 = 1;
          }

          else
          {
            communicationContextSender = [(UNSNotificationRecord *)self communicationContextSender];
            if (communicationContextSender)
            {
              v4 = 1;
            }

            else
            {
              communicationContextContentURL = [(UNSNotificationRecord *)self communicationContextContentURL];
              if (communicationContextContentURL)
              {
                v4 = 1;
              }

              else
              {
                communicationContextImageName = [(UNSNotificationRecord *)self communicationContextImageName];
                v4 = communicationContextImageName || [(UNSNotificationRecord *)self communicationContextSystemImage]|| [(UNSNotificationRecord *)self communicationContextMentionsCurrentUser]|| [(UNSNotificationRecord *)self communicationContextNotifyRecipientAnyway]|| [(UNSNotificationRecord *)self communicationContextReplyToCurrentUser]|| [(UNSNotificationRecord *)self communicationContextRecipientCount]|| [(UNSNotificationRecord *)self communicationContextCapabilities]|| [(UNSNotificationRecord *)self communicationContextBusinessCorrespondence];
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (UNSNotificationRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v152.receiver = self;
  v152.super_class = UNSNotificationRecord;
  v5 = [(UNSNotificationRecord *)&v152 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"NotificationType"];
    [(UNSNotificationRecord *)v5 setContentType:v6];

    v7 = [representationCopy objectForKey:@"CommunicationContextIdentifier"];
    [(UNSNotificationRecord *)v5 setCommunicationContextIdentifier:v7];

    v8 = [representationCopy objectForKey:@"CommunicationContextBundleIdentifier"];
    [(UNSNotificationRecord *)v5 setCommunicationContextBundleIdentifier:v8];

    v9 = [representationCopy objectForKey:@"CommunicationContextAssociatedObjectUri"];
    [(UNSNotificationRecord *)v5 setCommunicationContextAssociatedObjectUri:v9];

    v10 = [representationCopy objectForKey:@"CommunicationContextDisplayName"];
    [(UNSNotificationRecord *)v5 setCommunicationContextDisplayName:v10];

    v11 = [representationCopy unc_nonNilArrayForKey:@"CommunicationContextRecipients"];
    v12 = [v11 bs_map:UNCDictionaryToContactRecord];
    [(UNSNotificationRecord *)v5 setCommunicationContextRecipients:v12];

    v13 = [representationCopy objectForKey:@"CommunicationContextSender"];

    if (v13)
    {
      v14 = UNCDictionaryToContactRecord;
      v15 = [representationCopy objectForKey:@"CommunicationContextSender"];
      v16 = v14[2](v14, v15);
      [(UNSNotificationRecord *)v5 setCommunicationContextSender:v16];
    }

    v17 = [representationCopy objectForKey:@"CommunicationContextContentURL"];
    [(UNSNotificationRecord *)v5 setCommunicationContextContentURL:v17];

    v18 = [representationCopy objectForKey:@"CommunicationContextImageName"];
    [(UNSNotificationRecord *)v5 setCommunicationContextImageName:v18];

    v19 = [representationCopy objectForKey:@"CommunicationContextSystemImage"];
    -[UNSNotificationRecord setCommunicationContextSystemImage:](v5, "setCommunicationContextSystemImage:", [v19 BOOLValue]);

    v20 = [representationCopy objectForKey:@"CommunicationContextMentionsCurrentUser"];
    -[UNSNotificationRecord setCommunicationContextMentionsCurrentUser:](v5, "setCommunicationContextMentionsCurrentUser:", [v20 BOOLValue]);

    v21 = [representationCopy objectForKey:@"CommunicationContextNotifyRecipientAnyway"];
    -[UNSNotificationRecord setCommunicationContextNotifyRecipientAnyway:](v5, "setCommunicationContextNotifyRecipientAnyway:", [v21 BOOLValue]);

    v22 = [representationCopy objectForKey:@"CommunicationContextReplyToCurrentUser"];
    -[UNSNotificationRecord setCommunicationContextReplyToCurrentUser:](v5, "setCommunicationContextReplyToCurrentUser:", [v22 BOOLValue]);

    v23 = [representationCopy objectForKey:@"CommunicationContextRecipientCount"];
    -[UNSNotificationRecord setCommunicationContextRecipientCount:](v5, "setCommunicationContextRecipientCount:", [v23 unsignedIntegerValue]);

    v24 = [representationCopy objectForKey:@"CommunicationContextCapabilities"];
    -[UNSNotificationRecord setCommunicationContextCapabilities:](v5, "setCommunicationContextCapabilities:", [v24 unsignedIntegerValue]);

    v25 = [representationCopy objectForKey:@"CommunicationContextBusinessCorrespondence"];
    -[UNSNotificationRecord setCommunicationContextBusinessCorrespondence:](v5, "setCommunicationContextBusinessCorrespondence:", [v25 BOOLValue]);

    v26 = [representationCopy objectForKey:@"AccessoryImageName"];
    [(UNSNotificationRecord *)v5 setAccessoryImageName:v26];

    v27 = [representationCopy unc_nonNilArrayForKey:@"AppNotificationAttachments"];
    v28 = [v27 bs_map:UNSDictionaryToAttachmentRecord];
    [(UNSNotificationRecord *)v5 setAttachments:v28];

    v29 = [representationCopy objectForKey:@"AppNotificationBadgeNumber"];
    [(UNSNotificationRecord *)v5 setBadge:v29];

    v30 = [representationCopy objectForKey:@"AppNotificationMessage"];
    [(UNSNotificationRecord *)v5 setBody:v30];

    v31 = [representationCopy objectForKey:@"AppNotificationMessageLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setBodyLocalizationArguments:v31];

    v32 = [representationCopy objectForKey:@"AppNotificationMessageLocazationKey"];
    [(UNSNotificationRecord *)v5 setBodyLocalizationKey:v32];

    v33 = MEMORY[0x1E696AAB0];
    v34 = [representationCopy objectForKey:@"AppNotificationAttributedMessage"];
    v35 = [v33 _un_attributedStringWithRTFDData:v34];
    [(UNSNotificationRecord *)v5 setAttributedBody:v35];

    v36 = [representationCopy objectForKey:@"AppNotificationSummaryArgument"];
    [(UNSNotificationRecord *)v5 setSummaryArgument:v36];

    v37 = [representationCopy objectForKey:@"AppNotificationSummaryArgumentCount"];
    -[UNSNotificationRecord setSummaryArgumentCount:](v5, "setSummaryArgumentCount:", [v37 unsignedIntegerValue]);

    v38 = [representationCopy objectForKey:@"TargetContentIdentifier"];
    [(UNSNotificationRecord *)v5 setTargetContentIdentifier:v38];

    v39 = [representationCopy unc_safeCastNonNilStringForKey:@"SBSPushStoreNotificationCategoryKey"];
    [(UNSNotificationRecord *)v5 setCategoryIdentifier:v39];

    v40 = [representationCopy objectForKey:@"ContentDate"];
    [(UNSNotificationRecord *)v5 setContentDate:v40];

    v41 = [representationCopy unc_safeCastNonNilStringForKey:@"SBSPushStoreNotificationThreadKey"];
    [(UNSNotificationRecord *)v5 setThreadIdentifier:v41];

    v42 = [representationCopy objectForKey:@"AppNotificationContentAvailable"];
    [(UNSNotificationRecord *)v5 setContentAvailable:v42];

    v43 = [representationCopy objectForKey:@"AppNotificationMutableContent"];
    [(UNSNotificationRecord *)v5 setMutableContent:v43];

    v44 = [representationCopy objectForKey:@"AppNotificationCreationDate"];
    [(UNSNotificationRecord *)v5 setDate:v44];

    v45 = [representationCopy objectForKey:@"ExpirationDate"];
    [(UNSNotificationRecord *)v5 setExpirationDate:v45];

    v46 = [representationCopy objectForKey:@"InterruptionLevel"];
    if (v46)
    {
      v47 = [representationCopy objectForKey:@"InterruptionLevel"];
      unsignedIntValue = [v47 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = *MEMORY[0x1E6983418];
    }

    [(UNSNotificationRecord *)v5 setInterruptionLevel:unsignedIntValue];
    v49 = [representationCopy objectForKey:@"HasDefaultActionKey"];
    -[UNSNotificationRecord setHasDefaultAction:](v5, "setHasDefaultAction:", [v49 BOOLValue]);

    v50 = [representationCopy objectForKey:@"AppNotificationActionText"];
    [(UNSNotificationRecord *)v5 setDefaultActionTitle:v50];

    [(UNSNotificationRecord *)v5 setDefaultActionTitleLocalizationKey:0];
    v51 = [representationCopy objectForKey:@"DefaultActionURL"];

    if (v51)
    {
      v52 = MEMORY[0x1E695DFF8];
      v53 = [representationCopy objectForKey:@"DefaultActionURL"];
      v54 = [v52 URLWithString:v53];
      [(UNSNotificationRecord *)v5 setDefaultActionURL:v54];
    }

    v55 = [representationCopy objectForKey:@"DefaultActionBundleIdentifier"];
    [(UNSNotificationRecord *)v5 setDefaultActionBundleIdentifier:v55];

    v56 = [representationCopy objectForKey:@"CriticalAlertSound"];
    -[UNSNotificationRecord setHasCriticalAlertSound:](v5, "setHasCriticalAlertSound:", [v56 BOOLValue]);

    v57 = [representationCopy objectForKey:@"Header"];
    [(UNSNotificationRecord *)v5 setHeader:v57];

    v58 = [representationCopy objectForKey:@"HeaderLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setHeaderLocalizationArguments:v58];

    v59 = [representationCopy objectForKey:@"HeaderLocalizationKey"];
    [(UNSNotificationRecord *)v5 setHeaderLocalizationKey:v59];

    v60 = [representationCopy objectForKey:@"Footer"];
    [(UNSNotificationRecord *)v5 setFooter:v60];

    v61 = [representationCopy objectForKey:@"FooterLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setFooterLocalizationArguments:v61];

    v62 = [representationCopy objectForKey:@"FooterLocalizationKey"];
    [(UNSNotificationRecord *)v5 setFooterLocalizationKey:v62];

    v63 = [representationCopy objectForKey:@"IconApplicationIdentifier"];
    [(UNSNotificationRecord *)v5 setIconApplicationIdentifier:v63];

    v64 = [representationCopy objectForKey:@"IconName"];
    [(UNSNotificationRecord *)v5 setIconName:v64];

    v65 = [representationCopy objectForKey:@"IconPath"];
    [(UNSNotificationRecord *)v5 setIconPath:v65];

    v66 = [representationCopy objectForKey:@"IconSystemImageName"];
    [(UNSNotificationRecord *)v5 setIconSystemImageName:v66];

    v67 = [representationCopy objectForKey:@"IconUTI"];
    [(UNSNotificationRecord *)v5 setIconUTI:v67];

    v68 = [representationCopy objectForKey:@"IconDateComponents"];
    [(UNSNotificationRecord *)v5 setIconDateComponents:v68];

    v69 = [representationCopy objectForKey:@"IconShouldSuppressMask"];
    -[UNSNotificationRecord setIconShouldSuppressMask:](v5, "setIconShouldSuppressMask:", [v69 BOOLValue]);

    v70 = [representationCopy objectForKey:@"AppNotificationIdentifier"];
    [(UNSNotificationRecord *)v5 setIdentifier:v70];

    v71 = [representationCopy unc_safeCastNonNilStringForKey:@"AppNotificationLaunchImage"];
    [(UNSNotificationRecord *)v5 setLaunchImageName:v71];

    v72 = [representationCopy objectForKey:@"RequestDate"];
    [(UNSNotificationRecord *)v5 setRequestDate:v72];

    v73 = [representationCopy objectForKey:@"BadgeApplicationIcon"];
    -[UNSNotificationRecord setShouldBadgeApplicationIcon:](v5, "setShouldBadgeApplicationIcon:", [v73 BOOLValue]);

    v74 = [representationCopy objectForKey:@"ShouldHideDate"];
    -[UNSNotificationRecord setShouldHideDate:](v5, "setShouldHideDate:", [v74 BOOLValue]);

    v75 = [representationCopy objectForKey:@"ShouldHideTime"];
    -[UNSNotificationRecord setShouldHideTime:](v5, "setShouldHideTime:", [v75 BOOLValue]);

    v76 = [representationCopy objectForKey:@"ShouldIgnoreAccessibilityDisabledVibrationSetting"];
    -[UNSNotificationRecord setShouldIgnoreAccessibilityDisabledVibrationSetting:](v5, "setShouldIgnoreAccessibilityDisabledVibrationSetting:", [v76 BOOLValue]);

    v77 = [representationCopy objectForKey:@"ShouldIgnoreDoNotDisturb"];
    -[UNSNotificationRecord setShouldIgnoreDoNotDisturb:](v5, "setShouldIgnoreDoNotDisturb:", [v77 BOOLValue]);

    v78 = [representationCopy objectForKey:@"ShouldIgnoreDowntime"];
    -[UNSNotificationRecord setShouldIgnoreDowntime:](v5, "setShouldIgnoreDowntime:", [v78 BOOLValue]);

    v79 = [representationCopy objectForKey:@"SoundShouldIgnoreRingerSwitch"];
    -[UNSNotificationRecord setShouldIgnoreRingerSwitch:](v5, "setShouldIgnoreRingerSwitch:", [v79 BOOLValue]);

    v80 = [representationCopy objectForKey:@"ShouldSuppressScreenLightUp"];
    -[UNSNotificationRecord setShouldSuppressScreenLightUp:](v5, "setShouldSuppressScreenLightUp:", [v80 BOOLValue]);

    v81 = [representationCopy objectForKey:@"SoundShouldRepeat"];
    -[UNSNotificationRecord setShouldSoundRepeat:](v5, "setShouldSoundRepeat:", [v81 BOOLValue]);

    v82 = [representationCopy objectForKey:@"SoundMaximumDuration"];
    [v82 doubleValue];
    [(UNSNotificationRecord *)v5 setSoundMaximumDuration:?];

    v83 = [representationCopy objectForKey:@"ShouldPlaySound"];
    -[UNSNotificationRecord setShouldPlaySound:](v5, "setShouldPlaySound:", [v83 BOOLValue]);

    v84 = [representationCopy objectForKey:@"ShouldPresentAlert"];
    -[UNSNotificationRecord setShouldPresentAlert:](v5, "setShouldPresentAlert:", [v84 BOOLValue]);

    v85 = [representationCopy objectForKey:@"PresentationOptions"];
    -[UNSNotificationRecord setPresentationOptions:](v5, "setPresentationOptions:", [v85 unsignedIntegerValue]);

    v86 = [representationCopy objectForKey:@"ShouldAuthenticateDefaultAction"];
    -[UNSNotificationRecord setShouldAuthenticateDefaultAction:](v5, "setShouldAuthenticateDefaultAction:", [v86 BOOLValue]);

    v87 = [representationCopy objectForKey:@"ShouldBackgroundDefaultAction"];
    -[UNSNotificationRecord setShouldBackgroundDefaultAction:](v5, "setShouldBackgroundDefaultAction:", [v87 BOOLValue]);

    v88 = [representationCopy objectForKey:@"ShouldPreventNotificationDismissalAfterDefaultAction"];
    -[UNSNotificationRecord setShouldPreventNotificationDismissalAfterDefaultAction:](v5, "setShouldPreventNotificationDismissalAfterDefaultAction:", [v88 BOOLValue]);

    v89 = [representationCopy objectForKey:@"UNNotificationShouldShowSubordinateIcon"];
    -[UNSNotificationRecord setShouldShowSubordinateIcon:](v5, "setShouldShowSubordinateIcon:", [v89 BOOLValue]);

    v90 = [representationCopy objectForKey:@"ShouldSuppressSyncDismissalWhenRemoved"];
    -[UNSNotificationRecord setShouldSuppressSyncDismissalWhenRemoved:](v5, "setShouldSuppressSyncDismissalWhenRemoved:", [v90 BOOLValue]);

    v91 = [representationCopy objectForKey:@"ShouldUseRequestIdentifierForDismissalSync"];
    -[UNSNotificationRecord setShouldUseRequestIdentifierForDismissalSync:](v5, "setShouldUseRequestIdentifierForDismissalSync:", [v91 BOOLValue]);

    v92 = [representationCopy objectForKey:@"ShouldPreemptPresentedNotification"];
    -[UNSNotificationRecord setShouldPreemptPresentedNotification:](v5, "setShouldPreemptPresentedNotification:", [v92 BOOLValue]);

    v93 = [representationCopy objectForKey:@"ShouldDisplayActionsInline"];
    -[UNSNotificationRecord setShouldDisplayActionsInline:](v5, "setShouldDisplayActionsInline:", [v93 BOOLValue]);

    v94 = [representationCopy objectForKey:@"AudioCategory"];
    [(UNSNotificationRecord *)v5 setAudioCategory:v94];

    v95 = [representationCopy objectForKey:@"AudioVolume"];
    [(UNSNotificationRecord *)v5 setAudioVolume:v95];

    v96 = [representationCopy objectForKey:@"AppNotificationSubtitle"];
    [(UNSNotificationRecord *)v5 setSubtitle:v96];

    v97 = [representationCopy objectForKey:@"AppNotificationSubtitleLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setSubtitleLocalizationArguments:v97];

    v98 = [representationCopy objectForKey:@"AppNotificationSubtitleLocalizationKey"];
    [(UNSNotificationRecord *)v5 setSubtitleLocalizationKey:v98];

    v99 = [representationCopy objectForKey:@"AppNotificationTitle"];
    [(UNSNotificationRecord *)v5 setTitle:v99];

    v100 = [representationCopy objectForKey:@"AppNotificationTitleLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setTitleLocalizationArguments:v100];

    v101 = [representationCopy objectForKey:@"AppNotificationTitleLocalizationKey"];
    [(UNSNotificationRecord *)v5 setTitleLocalizationKey:v101];

    v102 = [representationCopy objectForKey:@"ToneAlertTopic"];
    [(UNSNotificationRecord *)v5 setToneAlertTopic:v102];

    v103 = [representationCopy objectForKey:@"ToneAlertType"];
    -[UNSNotificationRecord setToneAlertType:](v5, "setToneAlertType:", [v103 integerValue]);

    v104 = [representationCopy objectForKey:@"ToneFileName"];
    [(UNSNotificationRecord *)v5 setToneFileName:v104];

    v105 = [representationCopy objectForKey:@"ToneFileURL"];

    if (v105)
    {
      v106 = MEMORY[0x1E695DFF8];
      v107 = [representationCopy objectForKey:@"ToneFileURL"];
      v108 = [v106 URLWithString:v107];
      [(UNSNotificationRecord *)v5 setToneFileURL:v108];
    }

    v109 = [representationCopy objectForKey:@"ToneIdentifier"];
    [(UNSNotificationRecord *)v5 setToneIdentifier:v109];

    v110 = [representationCopy objectForKey:@"ToneMediaLibraryItemIdentifier"];
    -[UNSNotificationRecord setToneMediaLibraryItemIdentifier:](v5, "setToneMediaLibraryItemIdentifier:", [v110 unsignedLongLongValue]);

    v111 = [representationCopy unc_nonNilSetForKey:@"Topics"];
    [(UNSNotificationRecord *)v5 setTopicIdentifiers:v111];

    v112 = [representationCopy objectForKey:@"RealertCount"];
    -[UNSNotificationRecord setRealertCount:](v5, "setRealertCount:", [v112 unsignedIntegerValue]);

    v113 = [representationCopy objectForKey:@"UNNotificationDefaultDestinations"];
    -[UNSNotificationRecord setAllowsDefaultDestinations:](v5, "setAllowsDefaultDestinations:", [v113 BOOLValue]);

    v114 = [representationCopy objectForKey:@"UNNotificationLockScreenDestination"];
    -[UNSNotificationRecord setAllowsLockScreenDestination:](v5, "setAllowsLockScreenDestination:", [v114 BOOLValue]);

    v115 = [representationCopy objectForKey:@"UNNotificationNotificationCenterDestination"];
    -[UNSNotificationRecord setAllowsNotificationCenterDestination:](v5, "setAllowsNotificationCenterDestination:", [v115 BOOLValue]);

    v116 = [representationCopy objectForKey:@"UNNotificationAlertDestination"];
    -[UNSNotificationRecord setAllowsAlertDestination:](v5, "setAllowsAlertDestination:", [v116 BOOLValue]);

    v117 = [representationCopy objectForKey:@"UNNotificationCarPlayDestination"];
    -[UNSNotificationRecord setAllowsCarPlayDestination:](v5, "setAllowsCarPlayDestination:", [v117 BOOLValue]);

    v118 = [representationCopy objectForKey:@"TriggerDate"];
    [(UNSNotificationRecord *)v5 setTriggerDate:v118];

    v119 = [representationCopy objectForKey:@"TriggerDateComponents"];
    [(UNSNotificationRecord *)v5 setTriggerDateComponents:v119];

    v120 = [representationCopy objectForKey:@"TriggerRegion"];

    if (v120)
    {
      v121 = MEMORY[0x1E695FC28];
      v122 = [representationCopy objectForKey:@"TriggerRegion"];
      v123 = [v121 bs_secureDecodedFromData:v122];
      [(UNSNotificationRecord *)v5 setTriggerRegion:v123];
    }

    v124 = [representationCopy objectForKey:@"TriggerRepeatCalendar"];
    [(UNSNotificationRecord *)v5 setTriggerRepeatCalendarIdentifier:v124];

    v125 = [representationCopy objectForKey:@"TriggerRepeatInterval"];
    -[UNSNotificationRecord setTriggerRepeatInterval:](v5, "setTriggerRepeatInterval:", [v125 unsignedIntegerValue]);

    v126 = [representationCopy objectForKey:@"TriggerRepeats"];
    -[UNSNotificationRecord setTriggerRepeats:](v5, "setTriggerRepeats:", [v126 BOOLValue]);

    v127 = [representationCopy objectForKey:@"TriggerTimeInterval"];
    [v127 doubleValue];
    [(UNSNotificationRecord *)v5 setTriggerTimeInterval:?];

    v128 = [representationCopy objectForKey:@"TriggerTimeZone"];

    if (v128)
    {
      v129 = MEMORY[0x1E695DFE8];
      v130 = [representationCopy objectForKey:@"TriggerTimeZone"];
      v131 = [v129 timeZoneWithName:v130];
      [(UNSNotificationRecord *)v5 setTriggerTimeZone:v131];
    }

    v132 = [representationCopy objectForKey:@"UNNotificationTriggerType"];
    [(UNSNotificationRecord *)v5 setTriggerType:v132];

    v133 = [representationCopy objectForKey:@"UNNotificationUserInfo"];
    [(UNSNotificationRecord *)v5 setUserInfo:v133];

    v134 = [representationCopy objectForKey:@"VibrationIdentifier"];
    [(UNSNotificationRecord *)v5 setVibrationIdentifier:v134];

    v135 = [representationCopy objectForKey:@"VibrationPatternFileURL"];

    if (v135)
    {
      v136 = MEMORY[0x1E695DFF8];
      v137 = [representationCopy objectForKey:@"VibrationPatternFileURL"];
      v138 = [v136 URLWithString:v137];
      [(UNSNotificationRecord *)v5 setVibrationPatternFileURL:v138];
    }

    v139 = [representationCopy objectForKey:@"UNNotificationRelevanceScore"];
    [v139 doubleValue];
    [(UNSNotificationRecord *)v5 setRelevanceScore:?];

    v140 = [representationCopy objectForKey:@"FilterCriteria"];
    [(UNSNotificationRecord *)v5 setFilterCriteria:v140];

    v141 = [representationCopy objectForKey:@"ScreenCaptureProhibited"];
    -[UNSNotificationRecord setScreenCaptureProhibited:](v5, "setScreenCaptureProhibited:", [v141 BOOLValue]);

    v142 = [representationCopy objectForKey:@"SpeechLanguage"];
    [(UNSNotificationRecord *)v5 setSpeechLanguage:v142];

    v143 = [representationCopy bs_safeNumberForKey:@"RevisionNumber"];
    -[UNSNotificationRecord setRevisionNumber:](v5, "setRevisionNumber:", [v143 integerValue]);

    v144 = [representationCopy bs_safeNumberForKey:@"PipelineState"];
    -[UNSNotificationRecord setPipelineState:](v5, "setPipelineState:", [v144 integerValue]);

    -[UNSNotificationRecord setIsHighlight:](v5, "setIsHighlight:", [representationCopy bs_BOOLForKey:@"IsHighlight"]);
    v145 = [representationCopy bs_safeObjectForKey:@"Summary" ofType:objc_opt_class()];
    [(UNSNotificationRecord *)v5 setSummary:v145];

    v146 = [representationCopy objectForKey:@"PriorityStatus"];
    if (v146)
    {
      v147 = [representationCopy bs_safeNumberForKey:@"PriorityStatus"];
      -[UNSNotificationRecord setPriorityStatus:](v5, "setPriorityStatus:", [v147 unsignedIntValue]);
    }

    else
    {
      [(UNSNotificationRecord *)v5 setPriorityStatus:0];
    }

    v148 = [representationCopy objectForKey:@"SummaryStatus"];
    if (v148)
    {
      v149 = [representationCopy bs_safeNumberForKey:@"SummaryStatus"];
      -[UNSNotificationRecord setSummaryStatus:](v5, "setSummaryStatus:", [v149 unsignedIntValue]);
    }

    else
    {
      [(UNSNotificationRecord *)v5 setSummaryStatus:0];
    }

    v150 = [representationCopy bs_safeObjectForKey:@"EventBehavior" ofType:objc_opt_class()];
    [(UNSNotificationRecord *)v5 setEventBehavior:v150];
  }

  return v5;
}

- (id)dictionaryRepresentationWithTruncation:(BOOL)truncation
{
  if (truncation)
  {
    v4 = 256;
  }

  else
  {
    v4 = -1;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contentType = [(UNSNotificationRecord *)self contentType];
  [dictionary unc_safeSetObject:contentType forKey:@"NotificationType"];

  communicationContextIdentifier = [(UNSNotificationRecord *)self communicationContextIdentifier];
  [dictionary unc_safeSetObject:communicationContextIdentifier forKey:@"CommunicationContextIdentifier"];

  communicationContextBundleIdentifier = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
  [dictionary unc_safeSetObject:communicationContextBundleIdentifier forKey:@"CommunicationContextBundleIdentifier"];

  communicationContextAssociatedObjectUri = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
  [dictionary unc_safeSetObject:communicationContextAssociatedObjectUri forKey:@"CommunicationContextAssociatedObjectUri"];

  communicationContextDisplayName = [(UNSNotificationRecord *)self communicationContextDisplayName];
  [dictionary unc_safeSetObject:communicationContextDisplayName forKey:@"CommunicationContextDisplayName"];

  v11 = UNCContactRecordToDictionary;
  communicationContextSender = [(UNSNotificationRecord *)self communicationContextSender];
  v13 = v11[2](v11, communicationContextSender);
  [dictionary unc_safeSetObject:v13 forKey:@"CommunicationContextSender"];

  communicationContextRecipients = [(UNSNotificationRecord *)self communicationContextRecipients];
  v15 = [communicationContextRecipients bs_map:UNCContactRecordToDictionary];
  [dictionary unc_safeSetNonEmptyArray:v15 forKey:@"CommunicationContextRecipients"];

  communicationContextContentURL = [(UNSNotificationRecord *)self communicationContextContentURL];
  [dictionary unc_safeSetObject:communicationContextContentURL forKey:@"CommunicationContextContentURL"];

  communicationContextImageName = [(UNSNotificationRecord *)self communicationContextImageName];
  [dictionary unc_safeSetObject:communicationContextImageName forKey:@"CommunicationContextImageName"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextSystemImage](self, "communicationContextSystemImage")}];
  [dictionary unc_safeSetObject:v18 forKey:@"CommunicationContextSystemImage"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextMentionsCurrentUser](self, "communicationContextMentionsCurrentUser")}];
  [dictionary unc_safeSetObject:v19 forKey:@"CommunicationContextMentionsCurrentUser"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextNotifyRecipientAnyway](self, "communicationContextNotifyRecipientAnyway")}];
  [dictionary unc_safeSetObject:v20 forKey:@"CommunicationContextNotifyRecipientAnyway"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextReplyToCurrentUser](self, "communicationContextReplyToCurrentUser")}];
  [dictionary unc_safeSetObject:v21 forKey:@"CommunicationContextReplyToCurrentUser"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord communicationContextRecipientCount](self, "communicationContextRecipientCount")}];
  [dictionary unc_safeSetObject:v22 forKey:@"CommunicationContextRecipientCount"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord communicationContextCapabilities](self, "communicationContextCapabilities")}];
  [dictionary unc_safeSetObject:v23 forKey:@"CommunicationContextCapabilities"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextBusinessCorrespondence](self, "communicationContextBusinessCorrespondence")}];
  [dictionary unc_safeSetObject:v24 forKey:@"CommunicationContextBusinessCorrespondence"];

  accessoryImageName = [(UNSNotificationRecord *)self accessoryImageName];
  [dictionary unc_safeSetObject:accessoryImageName forKey:@"AccessoryImageName"];

  attachments = [(UNSNotificationRecord *)self attachments];
  v27 = [attachments bs_map:UNCAttachmentRecordToDictionary];
  [dictionary unc_safeSetNonEmptyArray:v27 forKey:@"AppNotificationAttachments"];

  badge = [(UNSNotificationRecord *)self badge];
  [dictionary unc_safeSetObject:badge forKey:@"AppNotificationBadgeNumber"];

  body = [(UNSNotificationRecord *)self body];
  [dictionary unc_safeSetNonEmptyString:body withLimit:v4 forKey:@"AppNotificationMessage"];

  bodyLocalizationArguments = [(UNSNotificationRecord *)self bodyLocalizationArguments];
  [dictionary unc_safeSetObject:bodyLocalizationArguments forKey:@"AppNotificationMessageLocalizationArguments"];

  bodyLocalizationKey = [(UNSNotificationRecord *)self bodyLocalizationKey];
  [dictionary unc_safeSetObject:bodyLocalizationKey forKey:@"AppNotificationMessageLocazationKey"];

  attributedBody = [(UNSNotificationRecord *)self attributedBody];
  v33 = [attributedBody _un_truncatedAttributedStringToMaxLength:v4];
  _un_RTFDData = [v33 _un_RTFDData];
  [dictionary unc_safeSetObject:_un_RTFDData forKey:@"AppNotificationAttributedMessage"];

  summaryArgument = [(UNSNotificationRecord *)self summaryArgument];
  [dictionary unc_safeSetObject:summaryArgument forKey:@"AppNotificationSummaryArgument"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord summaryArgumentCount](self, "summaryArgumentCount")}];
  [dictionary unc_safeSetObject:v36 forKey:@"AppNotificationSummaryArgumentCount"];

  targetContentIdentifier = [(UNSNotificationRecord *)self targetContentIdentifier];
  [dictionary unc_safeSetObject:targetContentIdentifier forKey:@"TargetContentIdentifier"];

  categoryIdentifier = [(UNSNotificationRecord *)self categoryIdentifier];
  [dictionary unc_safeSetNonEmptyString:categoryIdentifier forKey:@"SBSPushStoreNotificationCategoryKey"];

  threadIdentifier = [(UNSNotificationRecord *)self threadIdentifier];
  [dictionary unc_safeSetNonEmptyString:threadIdentifier forKey:@"SBSPushStoreNotificationThreadKey"];

  contentDate = [(UNSNotificationRecord *)self contentDate];
  [dictionary unc_safeSetObject:contentDate forKey:@"ContentDate"];

  contentAvailable = [(UNSNotificationRecord *)self contentAvailable];
  [dictionary unc_safeSetObject:contentAvailable forKey:@"AppNotificationContentAvailable"];

  mutableContent = [(UNSNotificationRecord *)self mutableContent];
  [dictionary unc_safeSetObject:mutableContent forKey:@"AppNotificationMutableContent"];

  date = [(UNSNotificationRecord *)self date];
  [dictionary unc_safeSetObject:date forKey:@"AppNotificationCreationDate"];

  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord interruptionLevel](self, "interruptionLevel")}];
  [dictionary unc_safeSetObject:v44 forKey:@"InterruptionLevel"];

  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction")}];
  [dictionary unc_safeSetObject:v45 forKey:@"HasDefaultActionKey"];

  defaultActionTitle = [(UNSNotificationRecord *)self defaultActionTitle];
  [dictionary unc_safeSetObject:defaultActionTitle forKey:@"AppNotificationActionText"];

  defaultActionTitleLocalizationKey = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
  [dictionary unc_safeSetObject:defaultActionTitleLocalizationKey forKey:@"AppNotificationActionTextLocalizationKeyKey"];

  defaultActionURL = [(UNSNotificationRecord *)self defaultActionURL];
  absoluteString = [defaultActionURL absoluteString];
  [dictionary unc_safeSetObject:absoluteString forKey:@"DefaultActionURL"];

  defaultActionBundleIdentifier = [(UNSNotificationRecord *)self defaultActionBundleIdentifier];
  [dictionary unc_safeSetObject:defaultActionBundleIdentifier forKey:@"DefaultActionBundleIdentifier"];

  expirationDate = [(UNSNotificationRecord *)self expirationDate];
  [dictionary unc_safeSetObject:expirationDate forKey:@"ExpirationDate"];

  header = [(UNSNotificationRecord *)self header];
  [dictionary unc_safeSetObject:header forKey:@"Header"];

  headerLocalizationArguments = [(UNSNotificationRecord *)self headerLocalizationArguments];
  [dictionary unc_safeSetObject:headerLocalizationArguments forKey:@"HeaderLocalizationArguments"];

  headerLocalizationKey = [(UNSNotificationRecord *)self headerLocalizationKey];
  [dictionary unc_safeSetObject:headerLocalizationKey forKey:@"HeaderLocalizationKey"];

  footer = [(UNSNotificationRecord *)self footer];
  [dictionary unc_safeSetObject:footer forKey:@"Footer"];

  footerLocalizationArguments = [(UNSNotificationRecord *)self footerLocalizationArguments];
  [dictionary unc_safeSetObject:footerLocalizationArguments forKey:@"FooterLocalizationArguments"];

  footerLocalizationKey = [(UNSNotificationRecord *)self footerLocalizationKey];
  [dictionary unc_safeSetObject:footerLocalizationKey forKey:@"FooterLocalizationKey"];

  identifier = [(UNSNotificationRecord *)self identifier];
  [dictionary unc_safeSetObject:identifier forKey:@"AppNotificationIdentifier"];

  iconApplicationIdentifier = [(UNSNotificationRecord *)self iconApplicationIdentifier];
  [dictionary unc_safeSetObject:iconApplicationIdentifier forKey:@"IconApplicationIdentifier"];

  iconName = [(UNSNotificationRecord *)self iconName];
  [dictionary unc_safeSetObject:iconName forKey:@"IconName"];

  iconPath = [(UNSNotificationRecord *)self iconPath];
  [dictionary unc_safeSetObject:iconPath forKey:@"IconPath"];

  iconSystemImageName = [(UNSNotificationRecord *)self iconSystemImageName];
  [dictionary unc_safeSetObject:iconSystemImageName forKey:@"IconSystemImageName"];

  iconUTI = [(UNSNotificationRecord *)self iconUTI];
  [dictionary unc_safeSetObject:iconUTI forKey:@"IconUTI"];

  iconDateComponents = [(UNSNotificationRecord *)self iconDateComponents];
  [dictionary unc_safeSetNonEmptyDictionary:iconDateComponents forKey:@"IconDateComponents"];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord iconShouldSuppressMask](self, "iconShouldSuppressMask")}];
  [dictionary unc_safeSetObject:v65 forKey:@"IconShouldSuppressMask"];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord hasCriticalAlertSound](self, "hasCriticalAlertSound")}];
  [dictionary unc_safeSetObject:v66 forKey:@"CriticalAlertSound"];

  launchImageName = [(UNSNotificationRecord *)self launchImageName];
  [dictionary unc_safeSetNonEmptyString:launchImageName forKey:@"AppNotificationLaunchImage"];

  requestDate = [(UNSNotificationRecord *)self requestDate];
  [dictionary unc_safeSetObject:requestDate forKey:@"RequestDate"];

  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:11];
  [dictionary unc_safeSetObject:v69 forKey:@"SchemaVersion"];

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldBadgeApplicationIcon](self, "shouldBadgeApplicationIcon")}];
  [dictionary unc_safeSetObject:v70 forKey:@"BadgeApplicationIcon"];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldHideDate](self, "shouldHideDate")}];
  [dictionary unc_safeSetObject:v71 forKey:@"ShouldHideDate"];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldHideTime](self, "shouldHideTime")}];
  [dictionary unc_safeSetObject:v72 forKey:@"ShouldHideTime"];

  v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
  [dictionary unc_safeSetObject:v73 forKey:@"ShouldIgnoreAccessibilityDisabledVibrationSetting"];

  v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreDoNotDisturb](self, "shouldIgnoreDoNotDisturb")}];
  [dictionary unc_safeSetObject:v74 forKey:@"ShouldIgnoreDoNotDisturb"];

  v75 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreDowntime](self, "shouldIgnoreDowntime")}];
  [dictionary unc_safeSetObject:v75 forKey:@"ShouldIgnoreDowntime"];

  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch")}];
  [dictionary unc_safeSetObject:v76 forKey:@"SoundShouldIgnoreRingerSwitch"];

  v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSuppressScreenLightUp](self, "shouldSuppressScreenLightUp")}];
  [dictionary unc_safeSetObject:v77 forKey:@"ShouldSuppressScreenLightUp"];

  v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  [dictionary unc_safeSetObject:v78 forKey:@"ShouldPlaySound"];

  v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  [dictionary unc_safeSetObject:v79 forKey:@"ShouldPresentAlert"];

  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord presentationOptions](self, "presentationOptions")}];
  [dictionary unc_safeSetObject:v80 forKey:@"PresentationOptions"];

  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldAuthenticateDefaultAction](self, "shouldAuthenticateDefaultAction")}];
  [dictionary unc_safeSetObject:v81 forKey:@"ShouldAuthenticateDefaultAction"];

  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldBackgroundDefaultAction](self, "shouldBackgroundDefaultAction")}];
  [dictionary unc_safeSetObject:v82 forKey:@"ShouldBackgroundDefaultAction"];

  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPreventNotificationDismissalAfterDefaultAction](self, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  [dictionary unc_safeSetObject:v83 forKey:@"ShouldPreventNotificationDismissalAfterDefaultAction"];

  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPreemptPresentedNotification](self, "shouldPreemptPresentedNotification")}];
  [dictionary unc_safeSetObject:v84 forKey:@"ShouldPreemptPresentedNotification"];

  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  [dictionary unc_safeSetObject:v85 forKey:@"ShouldDisplayActionsInline"];

  v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldShowSubordinateIcon](self, "shouldShowSubordinateIcon")}];
  [dictionary unc_safeSetObject:v86 forKey:@"UNNotificationShouldShowSubordinateIcon"];

  v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSoundRepeat](self, "shouldSoundRepeat")}];
  [dictionary unc_safeSetObject:v87 forKey:@"SoundShouldRepeat"];

  v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  [dictionary unc_safeSetObject:v88 forKey:@"ShouldSuppressSyncDismissalWhenRemoved"];

  v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldUseRequestIdentifierForDismissalSync](self, "shouldUseRequestIdentifierForDismissalSync")}];
  [dictionary unc_safeSetObject:v89 forKey:@"ShouldUseRequestIdentifierForDismissalSync"];

  audioCategory = [(UNSNotificationRecord *)self audioCategory];
  [dictionary unc_safeSetObject:audioCategory forKey:@"AudioCategory"];

  audioVolume = [(UNSNotificationRecord *)self audioVolume];
  [dictionary unc_safeSetObject:audioVolume forKey:@"AudioVolume"];

  v92 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self soundMaximumDuration];
  v93 = [v92 numberWithDouble:?];
  [dictionary unc_safeSetObject:v93 forKey:@"SoundMaximumDuration"];

  subtitle = [(UNSNotificationRecord *)self subtitle];
  [dictionary unc_safeSetObject:subtitle forKey:@"AppNotificationSubtitle"];

  subtitleLocalizationArguments = [(UNSNotificationRecord *)self subtitleLocalizationArguments];
  [dictionary unc_safeSetObject:subtitleLocalizationArguments forKey:@"AppNotificationSubtitleLocalizationArguments"];

  subtitleLocalizationKey = [(UNSNotificationRecord *)self subtitleLocalizationKey];
  [dictionary unc_safeSetObject:subtitleLocalizationKey forKey:@"AppNotificationSubtitleLocalizationKey"];

  title = [(UNSNotificationRecord *)self title];
  [dictionary unc_safeSetObject:title forKey:@"AppNotificationTitle"];

  titleLocalizationArguments = [(UNSNotificationRecord *)self titleLocalizationArguments];
  [dictionary unc_safeSetObject:titleLocalizationArguments forKey:@"AppNotificationTitleLocalizationArguments"];

  titleLocalizationKey = [(UNSNotificationRecord *)self titleLocalizationKey];
  [dictionary unc_safeSetObject:titleLocalizationKey forKey:@"AppNotificationTitleLocalizationKey"];

  toneAlertTopic = [(UNSNotificationRecord *)self toneAlertTopic];
  [dictionary unc_safeSetObject:toneAlertTopic forKey:@"ToneAlertTopic"];

  v101 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord toneAlertType](self, "toneAlertType")}];
  [dictionary unc_safeSetObject:v101 forKey:@"ToneAlertType"];

  toneFileName = [(UNSNotificationRecord *)self toneFileName];
  [dictionary unc_safeSetObject:toneFileName forKey:@"ToneFileName"];

  toneFileURL = [(UNSNotificationRecord *)self toneFileURL];
  absoluteString2 = [toneFileURL absoluteString];
  [dictionary unc_safeSetObject:absoluteString2 forKey:@"ToneFileURL"];

  toneIdentifier = [(UNSNotificationRecord *)self toneIdentifier];
  [dictionary unc_safeSetObject:toneIdentifier forKey:@"ToneIdentifier"];

  v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UNSNotificationRecord toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  [dictionary unc_safeSetObject:v106 forKey:@"ToneMediaLibraryItemIdentifier"];

  topicIdentifiers = [(UNSNotificationRecord *)self topicIdentifiers];
  [dictionary unc_safeSetNonEmptySet:topicIdentifiers forKey:@"Topics"];

  v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord realertCount](self, "realertCount")}];
  [dictionary unc_safeSetObject:v108 forKey:@"RealertCount"];

  v109 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsDefaultDestinations](self, "allowsDefaultDestinations")}];
  [dictionary unc_safeSetObject:v109 forKey:@"UNNotificationDefaultDestinations"];

  v110 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsLockScreenDestination](self, "allowsLockScreenDestination")}];
  [dictionary unc_safeSetObject:v110 forKey:@"UNNotificationLockScreenDestination"];

  v111 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsNotificationCenterDestination](self, "allowsNotificationCenterDestination")}];
  [dictionary unc_safeSetObject:v111 forKey:@"UNNotificationNotificationCenterDestination"];

  v112 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsAlertDestination](self, "allowsAlertDestination")}];
  [dictionary unc_safeSetObject:v112 forKey:@"UNNotificationAlertDestination"];

  v113 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsCarPlayDestination](self, "allowsCarPlayDestination")}];
  [dictionary unc_safeSetObject:v113 forKey:@"UNNotificationCarPlayDestination"];

  triggerDate = [(UNSNotificationRecord *)self triggerDate];
  [dictionary unc_safeSetObject:triggerDate forKey:@"TriggerDate"];

  triggerDateComponents = [(UNSNotificationRecord *)self triggerDateComponents];
  [dictionary unc_safeSetObject:triggerDateComponents forKey:@"TriggerDateComponents"];

  triggerRegion = [(UNSNotificationRecord *)self triggerRegion];

  if (triggerRegion)
  {
    v117 = MEMORY[0x1E696ACC8];
    triggerRegion2 = [(UNSNotificationRecord *)self triggerRegion];
    v119 = [v117 archivedDataWithRootObject:triggerRegion2 requiringSecureCoding:1 error:0];
    [dictionary unc_safeSetObject:v119 forKey:@"TriggerRegion"];
  }

  triggerRepeatCalendarIdentifier = [(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier];
  [dictionary unc_safeSetObject:triggerRepeatCalendarIdentifier forKey:@"TriggerRepeatCalendar"];

  v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord triggerRepeatInterval](self, "triggerRepeatInterval")}];
  [dictionary unc_safeSetObject:v121 forKey:@"TriggerRepeatInterval"];

  v122 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord triggerRepeats](self, "triggerRepeats")}];
  [dictionary unc_safeSetObject:v122 forKey:@"TriggerRepeats"];

  v123 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self triggerTimeInterval];
  v124 = [v123 numberWithDouble:?];
  [dictionary unc_safeSetObject:v124 forKey:@"TriggerTimeInterval"];

  triggerTimeZone = [(UNSNotificationRecord *)self triggerTimeZone];
  name = [triggerTimeZone name];
  [dictionary unc_safeSetObject:name forKey:@"TriggerTimeZone"];

  triggerType = [(UNSNotificationRecord *)self triggerType];
  [dictionary unc_safeSetObject:triggerType forKey:@"UNNotificationTriggerType"];

  userInfo = [(UNSNotificationRecord *)self userInfo];
  [dictionary unc_safeSetObject:userInfo forKey:@"UNNotificationUserInfo"];

  vibrationIdentifier = [(UNSNotificationRecord *)self vibrationIdentifier];
  [dictionary unc_safeSetObject:vibrationIdentifier forKey:@"VibrationIdentifier"];

  vibrationPatternFileURL = [(UNSNotificationRecord *)self vibrationPatternFileURL];
  absoluteString3 = [vibrationPatternFileURL absoluteString];
  [dictionary unc_safeSetObject:absoluteString3 forKey:@"VibrationPatternFileURL"];

  v132 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self relevanceScore];
  v133 = [v132 numberWithDouble:?];
  [dictionary unc_safeSetObject:v133 forKey:@"UNNotificationRelevanceScore"];

  filterCriteria = [(UNSNotificationRecord *)self filterCriteria];
  [dictionary unc_safeSetObject:filterCriteria forKey:@"FilterCriteria"];

  v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord screenCaptureProhibited](self, "screenCaptureProhibited")}];
  [dictionary unc_safeSetObject:v135 forKey:@"ScreenCaptureProhibited"];

  speechLanguage = [(UNSNotificationRecord *)self speechLanguage];
  [dictionary unc_safeSetObject:speechLanguage forKey:@"SpeechLanguage"];

  v137 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord revisionNumber](self, "revisionNumber")}];
  [dictionary bs_setSafeObject:v137 forKey:@"RevisionNumber"];

  v138 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord pipelineState](self, "pipelineState")}];
  [dictionary bs_setSafeObject:v138 forKey:@"PipelineState"];

  v139 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord isHighlight](self, "isHighlight")}];
  [dictionary bs_setSafeObject:v139 forKey:@"IsHighlight"];

  summary = [(UNSNotificationRecord *)self summary];
  [dictionary bs_setSafeObject:summary forKey:@"Summary"];

  v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord priorityStatus](self, "priorityStatus")}];
  [dictionary bs_setSafeObject:v141 forKey:@"PriorityStatus"];

  v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord summaryStatus](self, "summaryStatus")}];
  [dictionary bs_setSafeObject:v142 forKey:@"SummaryStatus"];

  eventBehavior = [(UNSNotificationRecord *)self eventBehavior];
  [dictionary bs_setSafeObject:eventBehavior forKey:@"EventBehavior"];

  return dictionary;
}

- (BOOL)isSimilar:(id)similar
{
  similarCopy = similar;
  v5 = similarCopy;
  if (self == similarCopy)
  {
    v221 = 1;
  }

  else if (similarCopy
         && (v6 = objc_opt_class(), v6 == objc_opt_class())
         && ([(UNSNotificationRecord *)self contentType], v7 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 contentType], v8 = objc_claimAutoreleasedReturnValue(), v9 = UNEqualObjects(), v8, v7, v9)
         && ([(UNSNotificationRecord *)self communicationContextIdentifier], v10 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = UNEqualObjects(), v11, v10, v12)
         && ([(UNSNotificationRecord *)self communicationContextBundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextBundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = UNEqualObjects(), v14, v13, v15)
         && ([(UNSNotificationRecord *)self communicationContextAssociatedObjectUri], v16 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextAssociatedObjectUri], v17 = objc_claimAutoreleasedReturnValue(), v18 = UNEqualObjects(), v17, v16, v18)
         && ([(UNSNotificationRecord *)self communicationContextDisplayName], v19 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextDisplayName], v20 = objc_claimAutoreleasedReturnValue(), v21 = UNEqualObjects(), v20, v19, v21)
         && ([(UNSNotificationRecord *)self communicationContextSender], v22 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextSender], v23 = objc_claimAutoreleasedReturnValue(), v24 = UNEqualObjects(), v23, v22, v24)
         && ([(UNSNotificationRecord *)self communicationContextRecipients], v25 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextRecipients], v26 = objc_claimAutoreleasedReturnValue(), v27 = UNSimilarArrays(), v26, v25, v27)
         && ([(UNSNotificationRecord *)self communicationContextContentURL], v28 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextContentURL], v29 = objc_claimAutoreleasedReturnValue(), v30 = UNEqualObjects(), v29, v28, v30)
         && ([(UNSNotificationRecord *)self communicationContextImageName], v31 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 communicationContextImageName], v32 = objc_claimAutoreleasedReturnValue(), v33 = UNEqualObjects(), v32, v31, v33)
         && (v34 = [(UNSNotificationRecord *)self communicationContextSystemImage], v34 == [(UNSNotificationRecord *)v5 communicationContextSystemImage])
         && (v35 = [(UNSNotificationRecord *)self communicationContextMentionsCurrentUser], v35 == [(UNSNotificationRecord *)v5 communicationContextMentionsCurrentUser])
         && (v36 = [(UNSNotificationRecord *)self communicationContextNotifyRecipientAnyway], v36 == [(UNSNotificationRecord *)v5 communicationContextNotifyRecipientAnyway])
         && (v37 = [(UNSNotificationRecord *)self communicationContextReplyToCurrentUser], v37 == [(UNSNotificationRecord *)v5 communicationContextReplyToCurrentUser])
         && (v38 = [(UNSNotificationRecord *)self communicationContextRecipientCount], v38 == [(UNSNotificationRecord *)v5 communicationContextRecipientCount])
         && (v39 = [(UNSNotificationRecord *)self communicationContextCapabilities], v39 == [(UNSNotificationRecord *)v5 communicationContextCapabilities])
         && (v40 = [(UNSNotificationRecord *)self communicationContextBusinessCorrespondence], v40 == [(UNSNotificationRecord *)v5 communicationContextBusinessCorrespondence])
         && ([(UNSNotificationRecord *)self accessoryImageName], v41 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 accessoryImageName], v42 = objc_claimAutoreleasedReturnValue(), v43 = UNEqualObjects(), v42, v41, v43)
         && ([(UNSNotificationRecord *)self attachments], v44 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 attachments], v45 = objc_claimAutoreleasedReturnValue(), v46 = UNEqualObjects(), v45, v44, v46)
         && (-[UNSNotificationRecord badge](self, "badge"), v47 = objc_claimAutoreleasedReturnValue(), [v47 integerValue], -[UNSNotificationRecord badge](v5, "badge"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "integerValue"), v49 = UNEqualIntegers(), v48, v47, v49)
         && ([(UNSNotificationRecord *)self bodyLocalizationKey], v50 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 bodyLocalizationKey], v51 = objc_claimAutoreleasedReturnValue(), v52 = UNSimilarStrings(), v51, v50, v52)
         && ([(UNSNotificationRecord *)self bodyLocalizationArguments], v53 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 bodyLocalizationArguments], v54 = objc_claimAutoreleasedReturnValue(), v55 = UNEqualObjects(), v54, v53, v55)
         && ([(UNSNotificationRecord *)self categoryIdentifier], v56 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 categoryIdentifier], v57 = objc_claimAutoreleasedReturnValue(), v58 = UNEqualObjects(), v57, v56, v58)
         && ([(UNSNotificationRecord *)self threadIdentifier], v59 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 threadIdentifier], v60 = objc_claimAutoreleasedReturnValue(), v61 = UNEqualObjects(), v60, v59, v61)
         && ([(UNSNotificationRecord *)self targetContentIdentifier], v62 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 targetContentIdentifier], v63 = objc_claimAutoreleasedReturnValue(), v64 = UNEqualObjects(), v63, v62, v64)
         && ([(UNSNotificationRecord *)self contentAvailable], v65 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 contentAvailable], v66 = objc_claimAutoreleasedReturnValue(), v67 = UNEqualObjects(), v66, v65, v67)
         && ([(UNSNotificationRecord *)self contentDate], v68 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 contentDate], v69 = objc_claimAutoreleasedReturnValue(), v70 = UNEqualObjects(), v69, v68, v70)
         && (v71 = [(UNSNotificationRecord *)self interruptionLevel], v71 == [(UNSNotificationRecord *)v5 interruptionLevel])
         && ([(UNSNotificationRecord *)self mutableContent], v72 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 mutableContent], v73 = objc_claimAutoreleasedReturnValue(), v74 = UNEqualObjects(), v73, v72, v74)
         && ([(UNSNotificationRecord *)self defaultActionURL], v75 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 defaultActionURL], v76 = objc_claimAutoreleasedReturnValue(), v77 = UNEqualObjects(), v76, v75, v77)
         && ([(UNSNotificationRecord *)self defaultActionBundleIdentifier], v78 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 defaultActionBundleIdentifier], v79 = objc_claimAutoreleasedReturnValue(), v80 = UNEqualObjects(), v79, v78, v80)
         && ([(UNSNotificationRecord *)self expirationDate], v81 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 expirationDate], v82 = objc_claimAutoreleasedReturnValue(), v83 = UNEqualObjects(), v82, v81, v83)
         && (v84 = [(UNSNotificationRecord *)self hasCriticalAlertSound], v84 == [(UNSNotificationRecord *)v5 hasCriticalAlertSound])
         && ([(UNSNotificationRecord *)self headerLocalizationKey], v85 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 headerLocalizationKey], v86 = objc_claimAutoreleasedReturnValue(), v87 = UNSimilarStrings(), v86, v85, v87)
         && ([(UNSNotificationRecord *)self headerLocalizationArguments], v88 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 headerLocalizationArguments], v89 = objc_claimAutoreleasedReturnValue(), v90 = UNEqualObjects(), v89, v88, v90)
         && ([(UNSNotificationRecord *)self footerLocalizationKey], v91 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 footerLocalizationKey], v92 = objc_claimAutoreleasedReturnValue(), v93 = UNSimilarStrings(), v92, v91, v93)
         && ([(UNSNotificationRecord *)self footerLocalizationArguments], v94 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 footerLocalizationArguments], v95 = objc_claimAutoreleasedReturnValue(), v96 = UNEqualObjects(), v95, v94, v96)
         && ([(UNSNotificationRecord *)self iconApplicationIdentifier], v97 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconApplicationIdentifier], v98 = objc_claimAutoreleasedReturnValue(), v99 = UNEqualObjects(), v98, v97, v99)
         && ([(UNSNotificationRecord *)self iconName], v100 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconName], v101 = objc_claimAutoreleasedReturnValue(), v102 = UNEqualObjects(), v101, v100, v102)
         && ([(UNSNotificationRecord *)self iconPath], v103 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconPath], v104 = objc_claimAutoreleasedReturnValue(), v105 = UNEqualObjects(), v104, v103, v105)
         && ([(UNSNotificationRecord *)self iconSystemImageName], v106 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconSystemImageName], v107 = objc_claimAutoreleasedReturnValue(), v108 = UNEqualObjects(), v107, v106, v108)
         && ([(UNSNotificationRecord *)self iconUTI], v109 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconUTI], v110 = objc_claimAutoreleasedReturnValue(), v111 = UNEqualObjects(), v110, v109, v111)
         && ([(UNSNotificationRecord *)self iconDateComponents], v112 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 iconDateComponents], v113 = objc_claimAutoreleasedReturnValue(), v114 = UNEqualObjects(), v113, v112, v114)
         && ([(UNSNotificationRecord *)self launchImageName], v115 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 launchImageName], v116 = objc_claimAutoreleasedReturnValue(), v117 = UNEqualObjects(), v116, v115, v117)
         && (v118 = [(UNSNotificationRecord *)self shouldHideDate], v118 == [(UNSNotificationRecord *)v5 shouldHideDate])
         && (v119 = [(UNSNotificationRecord *)self shouldHideTime], v119 == [(UNSNotificationRecord *)v5 shouldHideTime])
         && (v120 = [(UNSNotificationRecord *)self shouldIgnoreAccessibilityDisabledVibrationSetting], v120 == [(UNSNotificationRecord *)v5 shouldIgnoreAccessibilityDisabledVibrationSetting])
         && (v121 = [(UNSNotificationRecord *)self shouldIgnoreDoNotDisturb], v121 == [(UNSNotificationRecord *)v5 shouldIgnoreDoNotDisturb])
         && (v122 = [(UNSNotificationRecord *)self shouldIgnoreDowntime], v122 == [(UNSNotificationRecord *)v5 shouldIgnoreDowntime])
         && ([(UNSNotificationRecord *)self shouldIgnoreRingerSwitch], [(UNSNotificationRecord *)v5 shouldIgnoreRingerSwitch], UNEqualBools())
         && (v123 = [(UNSNotificationRecord *)self shouldAuthenticateDefaultAction], v123 == [(UNSNotificationRecord *)v5 shouldAuthenticateDefaultAction])
         && (v124 = [(UNSNotificationRecord *)self shouldBackgroundDefaultAction], v124 == [(UNSNotificationRecord *)v5 shouldBackgroundDefaultAction])
         && (v125 = [(UNSNotificationRecord *)self shouldPreventNotificationDismissalAfterDefaultAction], v125 == [(UNSNotificationRecord *)v5 shouldPreventNotificationDismissalAfterDefaultAction])
         && ([(UNSNotificationRecord *)self shouldSoundRepeat], [(UNSNotificationRecord *)v5 shouldSoundRepeat], UNEqualBools())
         && (v126 = [(UNSNotificationRecord *)self shouldSuppressScreenLightUp], v126 == [(UNSNotificationRecord *)v5 shouldSuppressScreenLightUp])
         && (v127 = [(UNSNotificationRecord *)self shouldSuppressSyncDismissalWhenRemoved], v127 == [(UNSNotificationRecord *)v5 shouldSuppressSyncDismissalWhenRemoved])
         && (v128 = [(UNSNotificationRecord *)self shouldUseRequestIdentifierForDismissalSync], v128 == [(UNSNotificationRecord *)v5 shouldUseRequestIdentifierForDismissalSync])
         && (v129 = [(UNSNotificationRecord *)self shouldPreemptPresentedNotification], v129 == [(UNSNotificationRecord *)v5 shouldPreemptPresentedNotification])
         && (v130 = [(UNSNotificationRecord *)self shouldDisplayActionsInline], v130 == [(UNSNotificationRecord *)v5 shouldDisplayActionsInline])
         && (v131 = [(UNSNotificationRecord *)self shouldShowSubordinateIcon], v131 == [(UNSNotificationRecord *)v5 shouldShowSubordinateIcon])
         && ([(UNSNotificationRecord *)self audioCategory], v132 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 audioCategory], v133 = objc_claimAutoreleasedReturnValue(), v134 = UNEqualObjects(), v133, v132, v134)
         && ([(UNSNotificationRecord *)self audioVolume], v135 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 audioVolume], v136 = objc_claimAutoreleasedReturnValue(), v137 = UNEqualObjects(), v136, v135, v137)
         && ([(UNSNotificationRecord *)self soundMaximumDuration], [(UNSNotificationRecord *)v5 soundMaximumDuration], UNEqualDoubles())
         && ([(UNSNotificationRecord *)self subtitleLocalizationKey], v138 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 subtitleLocalizationKey], v139 = objc_claimAutoreleasedReturnValue(), v140 = UNSimilarStrings(), v139, v138, v140)
         && ([(UNSNotificationRecord *)self subtitleLocalizationArguments], v141 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 subtitleLocalizationArguments], v142 = objc_claimAutoreleasedReturnValue(), v143 = UNEqualObjects(), v142, v141, v143)
         && ([(UNSNotificationRecord *)self titleLocalizationKey], v144 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 titleLocalizationKey], v145 = objc_claimAutoreleasedReturnValue(), v146 = UNSimilarStrings(), v145, v144, v146)
         && ([(UNSNotificationRecord *)self titleLocalizationArguments], v147 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 titleLocalizationArguments], v148 = objc_claimAutoreleasedReturnValue(), v149 = UNEqualObjects(), v148, v147, v149)
         && ([(UNSNotificationRecord *)self toneAlertTopic], v150 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 toneAlertTopic], v151 = objc_claimAutoreleasedReturnValue(), v152 = UNEqualObjects(), v151, v150, v152)
         && ([(UNSNotificationRecord *)self toneAlertType], [(UNSNotificationRecord *)v5 toneAlertType], UNEqualDoubles())
         && ([(UNSNotificationRecord *)self toneFileName], v153 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 toneFileName], v154 = objc_claimAutoreleasedReturnValue(), v155 = UNEqualObjects(), v154, v153, v155)
         && ([(UNSNotificationRecord *)self toneFileURL], v156 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 toneFileURL], v157 = objc_claimAutoreleasedReturnValue(), v158 = UNEqualObjects(), v157, v156, v158)
         && ([(UNSNotificationRecord *)self toneIdentifier], v159 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 toneIdentifier], v160 = objc_claimAutoreleasedReturnValue(), v161 = UNEqualObjects(), v160, v159, v161)
         && (v162 = [(UNSNotificationRecord *)self toneMediaLibraryItemIdentifier], v162 == [(UNSNotificationRecord *)v5 toneMediaLibraryItemIdentifier])
         && ([(UNSNotificationRecord *)self topicIdentifiers], v163 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 topicIdentifiers], v164 = objc_claimAutoreleasedReturnValue(), v165 = UNSimilarSets(), v164, v163, v165)
         && (v166 = [(UNSNotificationRecord *)self realertCount], v166 == [(UNSNotificationRecord *)v5 realertCount])
         && (v167 = [(UNSNotificationRecord *)self allowsDefaultDestinations], v167 == [(UNSNotificationRecord *)v5 allowsDefaultDestinations])
         && (v168 = [(UNSNotificationRecord *)self allowsLockScreenDestination], v168 == [(UNSNotificationRecord *)v5 allowsLockScreenDestination])
         && (v169 = [(UNSNotificationRecord *)self allowsNotificationCenterDestination], v169 == [(UNSNotificationRecord *)v5 allowsNotificationCenterDestination])
         && (v170 = [(UNSNotificationRecord *)self allowsAlertDestination], v170 == [(UNSNotificationRecord *)v5 allowsAlertDestination])
         && (v171 = [(UNSNotificationRecord *)self allowsCarPlayDestination], v171 == [(UNSNotificationRecord *)v5 allowsCarPlayDestination])
         && ([(UNSNotificationRecord *)self triggerDate], v172 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerDate], v173 = objc_claimAutoreleasedReturnValue(), v174 = UNEqualObjects(), v173, v172, v174)
         && ([(UNSNotificationRecord *)self triggerDateComponents], v175 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerDateComponents], v176 = objc_claimAutoreleasedReturnValue(), v177 = UNEqualObjects(), v176, v175, v177)
         && ([(UNSNotificationRecord *)self triggerRegion], v178 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerRegion], v179 = objc_claimAutoreleasedReturnValue(), v180 = UNEqualObjects(), v179, v178, v180)
         && ([(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier], v181 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerRepeatCalendarIdentifier], v182 = objc_claimAutoreleasedReturnValue(), v183 = UNEqualObjects(), v182, v181, v183)
         && (v184 = [(UNSNotificationRecord *)self triggerRepeatInterval], v184 == [(UNSNotificationRecord *)v5 triggerRepeatInterval])
         && (v185 = [(UNSNotificationRecord *)self triggerRepeats], v185 == [(UNSNotificationRecord *)v5 triggerRepeats])
         && ([(UNSNotificationRecord *)self triggerTimeInterval], [(UNSNotificationRecord *)v5 triggerTimeInterval], UNEqualDoubles())
         && ([(UNSNotificationRecord *)self triggerTimeZone], v186 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerTimeZone], v187 = objc_claimAutoreleasedReturnValue(), v188 = UNEqualObjects(), v187, v186, v188)
         && ([(UNSNotificationRecord *)self triggerType], v189 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 triggerType], v190 = objc_claimAutoreleasedReturnValue(), v191 = UNEqualObjects(), v190, v189, v191)
         && ([(UNSNotificationRecord *)self userInfo], v192 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 userInfo], v193 = objc_claimAutoreleasedReturnValue(), v194 = UNEqualObjects(), v193, v192, v194)
         && ([(UNSNotificationRecord *)self vibrationIdentifier], v195 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 vibrationIdentifier], v196 = objc_claimAutoreleasedReturnValue(), v197 = UNEqualObjects(), v196, v195, v197)
         && ([(UNSNotificationRecord *)self vibrationPatternFileURL], v198 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 vibrationPatternFileURL], v199 = objc_claimAutoreleasedReturnValue(), v200 = UNEqualObjects(), v199, v198, v200)
         && ([(UNSNotificationRecord *)self relevanceScore], v202 = v201, [(UNSNotificationRecord *)v5 relevanceScore], v202 == v203)
         && ([(UNSNotificationRecord *)self filterCriteria], v204 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 filterCriteria], v205 = objc_claimAutoreleasedReturnValue(), v206 = UNEqualObjects(), v205, v204, v206)
         && (v207 = [(UNSNotificationRecord *)self screenCaptureProhibited], v207 == [(UNSNotificationRecord *)v5 screenCaptureProhibited])
         && ([(UNSNotificationRecord *)self speechLanguage], v208 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 speechLanguage], v209 = objc_claimAutoreleasedReturnValue(), v210 = UNEqualObjects(), v209, v208, v210)
         && (v211 = [(UNSNotificationRecord *)self revisionNumber], v211 == [(UNSNotificationRecord *)v5 revisionNumber])
         && (v212 = [(UNSNotificationRecord *)self pipelineState], v212 == [(UNSNotificationRecord *)v5 pipelineState])
         && (v213 = [(UNSNotificationRecord *)self isHighlight], v213 == [(UNSNotificationRecord *)v5 isHighlight])
         && ([(UNSNotificationRecord *)self summary], v214 = objc_claimAutoreleasedReturnValue(), [(UNSNotificationRecord *)v5 summary], v215 = objc_claimAutoreleasedReturnValue(), v216 = UNEqualObjects(), v215, v214, v216)
         && (v217 = [(UNSNotificationRecord *)self priorityStatus], v217 == [(UNSNotificationRecord *)v5 priorityStatus])
         && (v218 = [(UNSNotificationRecord *)self summaryStatus], v218 == [(UNSNotificationRecord *)v5 summaryStatus]))
  {
    eventBehavior = [(UNSNotificationRecord *)self eventBehavior];
    eventBehavior2 = [(UNSNotificationRecord *)v5 eventBehavior];
    v221 = UNEqualObjects();
  }

  else
  {
    v221 = 0;
  }

  return v221;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy
    && (v5 = objc_opt_class(), v5 == objc_opt_class())
    && [(UNSNotificationRecord *)self isSimilar:equalCopy]
    && (v6 = -[UNSNotificationRecord shouldBadgeApplicationIcon](self, "shouldBadgeApplicationIcon"), v6 == [equalCopy shouldBadgeApplicationIcon])
    && (v7 = -[UNSNotificationRecord shouldPlaySound](self, "shouldPlaySound"), v7 == [equalCopy shouldPlaySound])
    && (v8 = -[UNSNotificationRecord shouldPresentAlert](self, "shouldPresentAlert"), v8 == [equalCopy shouldPresentAlert])
    && (v9 = -[UNSNotificationRecord presentationOptions](self, "presentationOptions"), v9 == [equalCopy presentationOptions])
    && (-[UNSNotificationRecord date](self, "date"), v10 = objc_claimAutoreleasedReturnValue(), [equalCopy date], v11 = objc_claimAutoreleasedReturnValue(), v12 = UNEqualObjects(), v11, v10, v12)
    && (v13 = -[UNSNotificationRecord interruptionLevel](self, "interruptionLevel"), v13 == [equalCopy interruptionLevel])
    && (-[UNSNotificationRecord identifier](self, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), [equalCopy identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = UNEqualObjects(), v15, v14, v16)
    && (-[UNSNotificationRecord requestDate](self, "requestDate"), v17 = objc_claimAutoreleasedReturnValue(), [equalCopy requestDate], v18 = objc_claimAutoreleasedReturnValue(), v19 = UNEqualObjects(), v18, v17, v19)
    && (-[UNSNotificationRecord header](self, "header"), v20 = objc_claimAutoreleasedReturnValue(), [equalCopy header], v21 = objc_claimAutoreleasedReturnValue(), v22 = UNEqualObjects(), v21, v20, v22)
    && (-[UNSNotificationRecord footer](self, "footer"), v23 = objc_claimAutoreleasedReturnValue(), [equalCopy footer], v24 = objc_claimAutoreleasedReturnValue(), v25 = UNEqualObjects(), v24, v23, v25)
    && (-[UNSNotificationRecord body](self, "body"), v26 = objc_claimAutoreleasedReturnValue(), [equalCopy body], v27 = objc_claimAutoreleasedReturnValue(), v28 = UNEqualObjects(), v27, v26, v28)
    && (-[UNSNotificationRecord attributedBody](self, "attributedBody"), v29 = objc_claimAutoreleasedReturnValue(), [equalCopy attributedBody], v30 = objc_claimAutoreleasedReturnValue(), v31 = UNEqualObjects(), v30, v29, v31)
    && (-[UNSNotificationRecord subtitle](self, "subtitle"), v32 = objc_claimAutoreleasedReturnValue(), [equalCopy subtitle], v33 = objc_claimAutoreleasedReturnValue(), v34 = UNEqualObjects(), v33, v32, v34)
    && (-[UNSNotificationRecord title](self, "title"), v35 = objc_claimAutoreleasedReturnValue(), [equalCopy title], v36 = objc_claimAutoreleasedReturnValue(), v37 = UNEqualObjects(), v36, v35, v37)
    && (-[UNSNotificationRecord defaultActionTitle](self, "defaultActionTitle"), v38 = objc_claimAutoreleasedReturnValue(), [equalCopy defaultActionTitle], v39 = objc_claimAutoreleasedReturnValue(), v40 = UNEqualObjects(), v39, v38, v40)
    && (-[UNSNotificationRecord summaryArgument](self, "summaryArgument"), v41 = objc_claimAutoreleasedReturnValue(), [equalCopy summaryArgument], v42 = objc_claimAutoreleasedReturnValue(), v43 = UNEqualObjects(), v42, v41, v43)
    && (v44 = -[UNSNotificationRecord summaryArgumentCount](self, "summaryArgumentCount"), v44 == [equalCopy summaryArgumentCount])
    && (-[UNSNotificationRecord relevanceScore](self, "relevanceScore"), v46 = v45, [equalCopy relevanceScore], v46 == v47)
    && (v48 = -[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction"), v48 == [equalCopy hasDefaultAction]))
  {
    defaultActionTitleLocalizationKey = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
    defaultActionTitleLocalizationKey2 = [equalCopy defaultActionTitleLocalizationKey];
    v49 = UNEqualObjects();
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  contentType = [(UNSNotificationRecord *)self contentType];
  v5 = [builder appendObject:contentType];

  communicationContextIdentifier = [(UNSNotificationRecord *)self communicationContextIdentifier];
  v7 = [builder appendObject:communicationContextIdentifier];

  communicationContextBundleIdentifier = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
  v9 = [builder appendObject:communicationContextBundleIdentifier];

  communicationContextAssociatedObjectUri = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
  v11 = [builder appendObject:communicationContextAssociatedObjectUri];

  communicationContextDisplayName = [(UNSNotificationRecord *)self communicationContextDisplayName];
  v13 = [builder appendObject:communicationContextDisplayName];

  communicationContextSender = [(UNSNotificationRecord *)self communicationContextSender];
  v15 = [builder appendObject:communicationContextSender];

  communicationContextRecipients = [(UNSNotificationRecord *)self communicationContextRecipients];
  v17 = [builder appendObject:communicationContextRecipients];

  communicationContextContentURL = [(UNSNotificationRecord *)self communicationContextContentURL];
  v19 = [builder appendObject:communicationContextContentURL];

  communicationContextImageName = [(UNSNotificationRecord *)self communicationContextImageName];
  v21 = [builder appendObject:communicationContextImageName];

  v22 = [builder appendBool:{-[UNSNotificationRecord communicationContextSystemImage](self, "communicationContextSystemImage")}];
  v23 = [builder appendBool:{-[UNSNotificationRecord communicationContextMentionsCurrentUser](self, "communicationContextMentionsCurrentUser")}];
  v24 = [builder appendBool:{-[UNSNotificationRecord communicationContextNotifyRecipientAnyway](self, "communicationContextNotifyRecipientAnyway")}];
  v25 = [builder appendBool:{-[UNSNotificationRecord communicationContextReplyToCurrentUser](self, "communicationContextReplyToCurrentUser")}];
  v26 = [builder appendUnsignedInteger:{-[UNSNotificationRecord communicationContextRecipientCount](self, "communicationContextRecipientCount")}];
  v27 = [builder appendUnsignedInteger:{-[UNSNotificationRecord communicationContextCapabilities](self, "communicationContextCapabilities")}];
  v28 = [builder appendBool:{-[UNSNotificationRecord communicationContextBusinessCorrespondence](self, "communicationContextBusinessCorrespondence")}];
  accessoryImageName = [(UNSNotificationRecord *)self accessoryImageName];
  v30 = [builder appendObject:accessoryImageName];

  attachments = [(UNSNotificationRecord *)self attachments];
  v32 = [builder appendObject:attachments];

  badge = [(UNSNotificationRecord *)self badge];
  v34 = [builder appendObject:badge];

  bodyLocalizationKey = [(UNSNotificationRecord *)self bodyLocalizationKey];
  v36 = [builder appendObject:bodyLocalizationKey];

  body = [(UNSNotificationRecord *)self body];
  v38 = [builder appendObject:body];

  bodyLocalizationArguments = [(UNSNotificationRecord *)self bodyLocalizationArguments];
  v40 = [builder appendObject:bodyLocalizationArguments];

  attributedBody = [(UNSNotificationRecord *)self attributedBody];
  v42 = [builder appendObject:attributedBody];

  summaryArgument = [(UNSNotificationRecord *)self summaryArgument];
  v44 = [builder appendObject:summaryArgument];

  v45 = [builder appendUnsignedInteger:{-[UNSNotificationRecord summaryArgumentCount](self, "summaryArgumentCount")}];
  targetContentIdentifier = [(UNSNotificationRecord *)self targetContentIdentifier];
  v47 = [builder appendObject:targetContentIdentifier];

  categoryIdentifier = [(UNSNotificationRecord *)self categoryIdentifier];
  v49 = [builder appendObject:categoryIdentifier];

  threadIdentifier = [(UNSNotificationRecord *)self threadIdentifier];
  v51 = [builder appendObject:threadIdentifier];

  contentAvailable = [(UNSNotificationRecord *)self contentAvailable];
  v53 = [builder appendObject:contentAvailable];

  contentDate = [(UNSNotificationRecord *)self contentDate];
  v55 = [builder appendObject:contentDate];

  mutableContent = [(UNSNotificationRecord *)self mutableContent];
  v57 = [builder appendObject:mutableContent];

  date = [(UNSNotificationRecord *)self date];
  v59 = [builder appendObject:date];

  v60 = [builder appendUnsignedInteger:{-[UNSNotificationRecord interruptionLevel](self, "interruptionLevel")}];
  v61 = [builder appendBool:{-[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction")}];
  defaultActionTitle = [(UNSNotificationRecord *)self defaultActionTitle];
  v63 = [builder appendObject:defaultActionTitle];

  defaultActionTitleLocalizationKey = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
  v65 = [builder appendObject:defaultActionTitleLocalizationKey];

  defaultActionURL = [(UNSNotificationRecord *)self defaultActionURL];
  v67 = [builder appendObject:defaultActionURL];

  defaultActionBundleIdentifier = [(UNSNotificationRecord *)self defaultActionBundleIdentifier];
  v69 = [builder appendObject:defaultActionBundleIdentifier];

  expirationDate = [(UNSNotificationRecord *)self expirationDate];
  v71 = [builder appendObject:expirationDate];

  v72 = [builder appendBool:{-[UNSNotificationRecord hasCriticalAlertSound](self, "hasCriticalAlertSound")}];
  header = [(UNSNotificationRecord *)self header];
  v74 = [builder appendObject:header];

  headerLocalizationKey = [(UNSNotificationRecord *)self headerLocalizationKey];
  v76 = [builder appendObject:headerLocalizationKey];

  headerLocalizationArguments = [(UNSNotificationRecord *)self headerLocalizationArguments];
  v78 = [builder appendObject:headerLocalizationArguments];

  footer = [(UNSNotificationRecord *)self footer];
  v80 = [builder appendObject:footer];

  footerLocalizationKey = [(UNSNotificationRecord *)self footerLocalizationKey];
  v82 = [builder appendObject:footerLocalizationKey];

  footerLocalizationArguments = [(UNSNotificationRecord *)self footerLocalizationArguments];
  v84 = [builder appendObject:footerLocalizationArguments];

  iconApplicationIdentifier = [(UNSNotificationRecord *)self iconApplicationIdentifier];
  v86 = [builder appendObject:iconApplicationIdentifier];

  iconName = [(UNSNotificationRecord *)self iconName];
  v88 = [builder appendObject:iconName];

  iconPath = [(UNSNotificationRecord *)self iconPath];
  v90 = [builder appendObject:iconPath];

  iconSystemImageName = [(UNSNotificationRecord *)self iconSystemImageName];
  v92 = [builder appendObject:iconSystemImageName];

  iconUTI = [(UNSNotificationRecord *)self iconUTI];
  v94 = [builder appendObject:iconUTI];

  iconDateComponents = [(UNSNotificationRecord *)self iconDateComponents];
  v96 = [builder appendObject:iconDateComponents];

  identifier = [(UNSNotificationRecord *)self identifier];
  v98 = [builder appendObject:identifier];

  launchImageName = [(UNSNotificationRecord *)self launchImageName];
  v100 = [builder appendObject:launchImageName];

  requestDate = [(UNSNotificationRecord *)self requestDate];
  v102 = [builder appendObject:requestDate];

  v103 = [builder appendBool:{-[UNSNotificationRecord shouldBadgeApplicationIcon](self, "shouldBadgeApplicationIcon")}];
  v104 = [builder appendBool:{-[UNSNotificationRecord shouldHideDate](self, "shouldHideDate")}];
  v105 = [builder appendBool:{-[UNSNotificationRecord shouldHideTime](self, "shouldHideTime")}];
  v106 = [builder appendBool:{-[UNSNotificationRecord shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
  v107 = [builder appendBool:{-[UNSNotificationRecord shouldIgnoreDoNotDisturb](self, "shouldIgnoreDoNotDisturb")}];
  v108 = [builder appendBool:{-[UNSNotificationRecord shouldIgnoreDowntime](self, "shouldIgnoreDowntime")}];
  v109 = [builder appendBool:{-[UNSNotificationRecord shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch")}];
  v110 = [builder appendBool:{-[UNSNotificationRecord shouldSuppressScreenLightUp](self, "shouldSuppressScreenLightUp")}];
  v111 = [builder appendBool:{-[UNSNotificationRecord shouldPreemptPresentedNotification](self, "shouldPreemptPresentedNotification")}];
  v112 = [builder appendBool:{-[UNSNotificationRecord shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  v113 = [builder appendBool:{-[UNSNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  v114 = [builder appendBool:{-[UNSNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  v115 = [builder appendUnsignedInteger:{-[UNSNotificationRecord presentationOptions](self, "presentationOptions")}];
  v116 = [builder appendBool:{-[UNSNotificationRecord shouldAuthenticateDefaultAction](self, "shouldAuthenticateDefaultAction")}];
  v117 = [builder appendBool:{-[UNSNotificationRecord shouldBackgroundDefaultAction](self, "shouldBackgroundDefaultAction")}];
  v118 = [builder appendBool:{-[UNSNotificationRecord shouldPreventNotificationDismissalAfterDefaultAction](self, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  v119 = [builder appendBool:{-[UNSNotificationRecord shouldShowSubordinateIcon](self, "shouldShowSubordinateIcon")}];
  v120 = [builder appendBool:{-[UNSNotificationRecord shouldSoundRepeat](self, "shouldSoundRepeat")}];
  v121 = [builder appendBool:{-[UNSNotificationRecord shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  v122 = [builder appendBool:{-[UNSNotificationRecord shouldUseRequestIdentifierForDismissalSync](self, "shouldUseRequestIdentifierForDismissalSync")}];
  audioCategory = [(UNSNotificationRecord *)self audioCategory];
  v124 = [builder appendObject:audioCategory];

  audioVolume = [(UNSNotificationRecord *)self audioVolume];
  v126 = [builder appendObject:audioVolume];

  [(UNSNotificationRecord *)self soundMaximumDuration];
  v127 = [builder appendDouble:?];
  subtitle = [(UNSNotificationRecord *)self subtitle];
  v129 = [builder appendObject:subtitle];

  subtitleLocalizationKey = [(UNSNotificationRecord *)self subtitleLocalizationKey];
  v131 = [builder appendObject:subtitleLocalizationKey];

  subtitleLocalizationArguments = [(UNSNotificationRecord *)self subtitleLocalizationArguments];
  v133 = [builder appendObject:subtitleLocalizationArguments];

  title = [(UNSNotificationRecord *)self title];
  v135 = [builder appendObject:title];

  titleLocalizationKey = [(UNSNotificationRecord *)self titleLocalizationKey];
  v137 = [builder appendObject:titleLocalizationKey];

  titleLocalizationArguments = [(UNSNotificationRecord *)self titleLocalizationArguments];
  v139 = [builder appendObject:titleLocalizationArguments];

  toneAlertTopic = [(UNSNotificationRecord *)self toneAlertTopic];
  v141 = [builder appendObject:toneAlertTopic];

  v142 = [builder appendInteger:{-[UNSNotificationRecord toneAlertType](self, "toneAlertType")}];
  toneFileName = [(UNSNotificationRecord *)self toneFileName];
  v144 = [builder appendObject:toneFileName];

  toneFileURL = [(UNSNotificationRecord *)self toneFileURL];
  v146 = [builder appendObject:toneFileURL];

  toneIdentifier = [(UNSNotificationRecord *)self toneIdentifier];
  v148 = [builder appendObject:toneIdentifier];

  v149 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UNSNotificationRecord toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  v150 = [builder appendObject:v149];

  topicIdentifiers = [(UNSNotificationRecord *)self topicIdentifiers];
  v152 = [builder appendObject:topicIdentifiers];

  v153 = [builder appendUnsignedInteger:{-[UNSNotificationRecord realertCount](self, "realertCount")}];
  v154 = [builder appendBool:{-[UNSNotificationRecord allowsDefaultDestinations](self, "allowsDefaultDestinations")}];
  v155 = [builder appendBool:{-[UNSNotificationRecord allowsLockScreenDestination](self, "allowsLockScreenDestination")}];
  v156 = [builder appendBool:{-[UNSNotificationRecord allowsNotificationCenterDestination](self, "allowsNotificationCenterDestination")}];
  v157 = [builder appendBool:{-[UNSNotificationRecord allowsAlertDestination](self, "allowsAlertDestination")}];
  v158 = [builder appendBool:{-[UNSNotificationRecord allowsCarPlayDestination](self, "allowsCarPlayDestination")}];
  triggerDate = [(UNSNotificationRecord *)self triggerDate];
  v160 = [builder appendObject:triggerDate];

  triggerDateComponents = [(UNSNotificationRecord *)self triggerDateComponents];
  v162 = [builder appendObject:triggerDateComponents];

  triggerRegion = [(UNSNotificationRecord *)self triggerRegion];
  v164 = [builder appendObject:triggerRegion];

  triggerRepeatCalendarIdentifier = [(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier];
  v166 = [builder appendObject:triggerRepeatCalendarIdentifier];

  v167 = [builder appendUnsignedInteger:{-[UNSNotificationRecord triggerRepeatInterval](self, "triggerRepeatInterval")}];
  v168 = [builder appendBool:{-[UNSNotificationRecord triggerRepeats](self, "triggerRepeats")}];
  [(UNSNotificationRecord *)self triggerTimeInterval];
  v169 = [builder appendDouble:?];
  triggerTimeZone = [(UNSNotificationRecord *)self triggerTimeZone];
  v171 = [builder appendObject:triggerTimeZone];

  triggerType = [(UNSNotificationRecord *)self triggerType];
  v173 = [builder appendObject:triggerType];

  userInfo = [(UNSNotificationRecord *)self userInfo];
  v175 = [builder appendObject:userInfo];

  vibrationIdentifier = [(UNSNotificationRecord *)self vibrationIdentifier];
  v177 = [builder appendObject:vibrationIdentifier];

  vibrationPatternFileURL = [(UNSNotificationRecord *)self vibrationPatternFileURL];
  v179 = [builder appendObject:vibrationPatternFileURL];

  [(UNSNotificationRecord *)self relevanceScore];
  v180 = [builder appendDouble:?];
  filterCriteria = [(UNSNotificationRecord *)self filterCriteria];
  v182 = [builder appendObject:filterCriteria];

  v183 = [builder appendBool:{-[UNSNotificationRecord screenCaptureProhibited](self, "screenCaptureProhibited")}];
  speechLanguage = [(UNSNotificationRecord *)self speechLanguage];
  v185 = [builder appendObject:speechLanguage];

  v186 = [builder appendInteger:{-[UNSNotificationRecord revisionNumber](self, "revisionNumber")}];
  v187 = [builder appendInteger:{-[UNSNotificationRecord pipelineState](self, "pipelineState")}];
  v188 = [builder appendBool:{-[UNSNotificationRecord isHighlight](self, "isHighlight")}];
  summary = [(UNSNotificationRecord *)self summary];
  v190 = [builder appendObject:summary];

  v191 = [builder appendUnsignedInteger:{-[UNSNotificationRecord priorityStatus](self, "priorityStatus")}];
  v192 = [builder appendUnsignedInteger:{-[UNSNotificationRecord summaryStatus](self, "summaryStatus")}];
  eventBehavior = [(UNSNotificationRecord *)self eventBehavior];
  v194 = [builder appendObject:eventBehavior];

  v195 = [builder hash];
  return v195;
}

- (BOOL)willNotifyUser
{
  if ([(UNSNotificationRecord *)self hasAlertContent])
  {
    return 1;
  }

  return [(UNSNotificationRecord *)self hasSound];
}

- (BOOL)hasAlertContent
{
  body = [(UNSNotificationRecord *)self body];
  if ([body length])
  {
    v4 = 1;
  }

  else
  {
    bodyLocalizationKey = [(UNSNotificationRecord *)self bodyLocalizationKey];
    if ([bodyLocalizationKey length])
    {
      v4 = 1;
    }

    else
    {
      subtitle = [(UNSNotificationRecord *)self subtitle];
      if ([subtitle length])
      {
        v4 = 1;
      }

      else
      {
        subtitleLocalizationKey = [(UNSNotificationRecord *)self subtitleLocalizationKey];
        if ([subtitleLocalizationKey length])
        {
          v4 = 1;
        }

        else
        {
          title = [(UNSNotificationRecord *)self title];
          if ([title length])
          {
            v4 = 1;
          }

          else
          {
            titleLocalizationKey = [(UNSNotificationRecord *)self titleLocalizationKey];
            v4 = [titleLocalizationKey length] != 0;
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)hasBadge
{
  badge = [(UNSNotificationRecord *)self badge];
  v3 = badge != 0;

  return v3;
}

- (BOOL)hasPendingTrigger
{
  triggerType = [(UNSNotificationRecord *)self triggerType];
  if ([triggerType isEqualToString:@"Calendar"] & 1) != 0 || (objc_msgSend(triggerType, "isEqualToString:", @"Location") & 1) != 0 || (objc_msgSend(triggerType, "isEqualToString:", @"TimeInterval"))
  {
    v4 = 1;
  }

  else if ([triggerType isEqualToString:@"Local"])
  {
    triggerRepeatInterval = [(UNSNotificationRecord *)self triggerRepeatInterval];
    triggerDate = [(UNSNotificationRecord *)self triggerDate];
    v8 = triggerDate;
    v4 = 1;
    if (!triggerRepeatInterval)
    {
      if (!triggerDate || ([triggerDate timeIntervalSinceNow], v9 <= 0.0))
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UNSNotificationRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UNSNotificationRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E85D6E70;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __63__UNSNotificationRecord_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) contentType];
  [v2 appendString:v4 withName:@"ContentType" skipIfEmpty:1];

  v5 = [*v3 hasCommunicationContext];
  v6 = [*v1 appendBool:v5 withName:@"HasCommunicationContext"];
  if (v5)
  {
    v7 = *v1;
    v8 = [*v3 communicationContextIdentifier];
    [v7 appendString:v8 withName:@"CommunicationContextIdentifier"];

    v9 = *v1;
    v10 = [*v3 communicationContextBundleIdentifier];
    [v9 appendString:v10 withName:@"CommunicationContextBundleIdentifier"];

    v11 = *v1;
    v12 = [*v3 communicationContextAssociatedObjectUri];
    [v11 appendString:v12 withName:@"CommunicationContextAssociatedObjectUri"];

    v13 = *v1;
    v14 = [*v3 communicationContextDisplayName];
    [v13 appendString:v14 withName:@"CommunicationContextDisplayName"];

    v15 = *v1;
    v16 = [*v3 communicationContextSender];
    v17 = [v15 appendObject:v16 withName:@"CommunicationContextSender"];

    v18 = *v1;
    v19 = [*v3 communicationContextRecipients];
    v20 = [v18 appendObject:v19 withName:@"CommunicationContextRecipients"];

    v21 = *v1;
    v22 = [*v3 communicationContextContentURL];
    v23 = [v21 appendObject:v22 withName:@"CommunicationContextContentURL"];

    v24 = *v1;
    v25 = [*v3 communicationContextImageName];
    v26 = [v24 appendObject:v25 withName:@"CommunicationContextImageName"];

    v27 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextSystemImage"), @"CommunicationContextSystemImage"}];
    v28 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextMentionsCurrentUser"), @"CommunicationContextMentionsCurrentUser"}];
    v29 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextNotifyRecipientAnyway"), @"CommunicationContextNotifyRecipientAnyway"}];
    v30 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextReplyToCurrentUser"), @"CommunicationContextReplyToCurrentUser"}];
    v31 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"communicationContextRecipientCount"), @"CommunicationContextRecipientCount"}];
    v32 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"communicationContextCapabilities"), @"CommunicationContextCapabilities"}];
    v33 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextBusinessCorrespondence"), @"CommunicationContextBusinessCorrespondence"}];
  }

  v34 = *v1;
  v35 = [*v3 accessoryImageName];
  [v34 appendString:v35 withName:@"AccessoryImageName" skipIfEmpty:1];

  v36 = *v1;
  v37 = [*v3 date];
  v38 = [v36 appendObject:v37 withName:@"Date" skipIfNil:1];

  v39 = *v1;
  v40 = [*v3 identifier];
  [v39 appendString:v40 withName:@"Identifier" skipIfEmpty:1];

  v41 = *v1;
  v42 = [*v3 threadIdentifier];
  [v41 appendString:v42 withName:@"ThreadIdentifier" skipIfEmpty:1];

  v43 = *v1;
  v44 = [*v3 categoryIdentifier];
  [v43 appendString:v44 withName:@"CategoryIdentifier" skipIfEmpty:1];

  v45 = *v1;
  v46 = [*v3 attachments];
  [v45 appendArraySection:v46 withName:@"Attachments" skipIfEmpty:1];

  v47 = *v1;
  v48 = [*v3 badge];
  v49 = [v47 appendObject:v48 withName:@"Badge" skipIfNil:1];

  v50 = *v1;
  v51 = [*v3 body];
  [v50 appendString:v51 withName:@"Body" skipIfEmpty:1];

  v52 = *v1;
  v53 = [*v3 bodyLocalizationKey];
  [v52 appendString:v53 withName:@"BodyLocalizationKey" skipIfEmpty:1];

  v54 = *v1;
  v55 = [*v3 bodyLocalizationArguments];
  [v54 appendArraySection:v55 withName:@"BodyLocalizationArguments" skipIfEmpty:1];

  v56 = *v1;
  v57 = [*v3 attributedBody];
  v58 = [v56 appendObject:v57 withName:@"AttributedBody" skipIfNil:1];

  v59 = *v1;
  v60 = [*v3 summaryArgument];
  [v59 appendString:v60 withName:@"SummaryArgument"];

  v61 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"summaryArgumentCount"), @"SummaryArgumentCount"}];
  v62 = *v1;
  v63 = [*v3 targetContentIdentifier];
  [v62 appendString:v63 withName:@"TargetContentIdentifier"];

  v64 = [*v1 appendBool:objc_msgSend(*v3 withName:"hasCriticalAlertSound") ifEqualTo:{@"CriticalAlertSound", 1}];
  v65 = *v1;
  v66 = [*v3 header];
  [v65 appendString:v66 withName:@"Header" skipIfEmpty:1];

  v67 = *v1;
  v68 = [*v3 headerLocalizationKey];
  [v67 appendString:v68 withName:@"HeaderLocalizationKey" skipIfEmpty:1];

  v69 = *v1;
  v70 = [*v3 headerLocalizationArguments];
  [v69 appendArraySection:v70 withName:@"HeaderLocalizationArguments" skipIfEmpty:1];

  v71 = *v1;
  v72 = [*v3 footer];
  [v71 appendString:v72 withName:@"Footer" skipIfEmpty:1];

  v73 = *v1;
  v74 = [*v3 footerLocalizationKey];
  [v73 appendString:v74 withName:@"FooterLocalizationKey" skipIfEmpty:1];

  v75 = *v1;
  v76 = [*v3 footerLocalizationArguments];
  [v75 appendArraySection:v76 withName:@"FooterLocalizationArguments" skipIfEmpty:1];

  v77 = *v1;
  v78 = [*v3 iconApplicationIdentifier];
  [v77 appendString:v78 withName:@"IconApplicationIdentifier" skipIfEmpty:1];

  v79 = *v1;
  v80 = [*v3 iconName];
  [v79 appendString:v80 withName:@"IconName" skipIfEmpty:1];

  v81 = *v1;
  v82 = [*v3 iconPath];
  [v81 appendString:v82 withName:@"IconPath" skipIfEmpty:1];

  v83 = *v1;
  v84 = [*v3 iconSystemImageName];
  [v83 appendString:v84 withName:@"IconSystemImageName" skipIfEmpty:1];

  v85 = *v1;
  v86 = [*v3 iconUTI];
  [v85 appendString:v86 withName:@"IconUTI" skipIfEmpty:1];

  v87 = *v1;
  v88 = [*v3 iconDateComponents];
  [v87 appendDictionarySection:v88 withName:@"IconDateComponents" skipIfEmpty:1];

  v89 = *v1;
  v90 = [*v3 contentAvailable];
  v91 = [v89 appendObject:v90 withName:@"ContentAvailable" skipIfNil:1];

  v92 = *v1;
  v93 = [*v3 mutableContent];
  v94 = [v92 appendObject:v93 withName:@"MutableContent" skipIfNil:1];

  v95 = *v1;
  v96 = [*v3 contentDate];
  v97 = [v95 appendObject:v96 withName:@"ContentDate" skipIfNil:1];

  v98 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"interruptionLevel"), @"InterruptionLevel"}];
  v99 = [*v1 appendBool:objc_msgSend(*v3 withName:"hasDefaultAction") ifEqualTo:{@"hasDefaultAction", 0}];
  v100 = *v1;
  v101 = [*v3 defaultActionTitle];
  [v100 appendString:v101 withName:@"DefaultActionTitle" skipIfEmpty:1];

  v102 = *v1;
  v103 = [*v3 defaultActionTitleLocalizationKey];
  [v102 appendString:v103 withName:@"DefaultActionTitleLocalizationKey" skipIfEmpty:1];

  v104 = *v1;
  v105 = [*v3 defaultActionURL];
  v106 = [v104 appendObject:v105 withName:@"DefaultActionURL" skipIfNil:1];

  v107 = *v1;
  v108 = [*v3 defaultActionBundleIdentifier];
  [v107 appendString:v108 withName:@"DefaultActionBundleIdentifier" skipIfEmpty:1];

  v109 = *v1;
  v110 = [*v3 expirationDate];
  v111 = [v109 appendObject:v110 withName:@"ExpirationDate" skipIfNil:1];

  v112 = *v1;
  v113 = [*v3 launchImageName];
  [v112 appendString:v113 withName:@"LaunchImageName" skipIfEmpty:1];

  v114 = *v1;
  v115 = [*v3 requestDate];
  v116 = [v114 appendObject:v115 withName:@"RequestDate" skipIfNil:1];

  v117 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldBadgeApplicationIcon") ifEqualTo:{@"ShouldBadgeApplicationIcon", 0}];
  v118 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldIgnoreRingerSwitch") ifEqualTo:{@"ShouldIgnoreRingerSwitch", 1}];
  v119 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldPlaySound") ifEqualTo:{@"ShouldPlaySound", 0}];
  v120 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldPresentAlert") ifEqualTo:{@"ShouldPresentAlert", 0}];
  v121 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"presentationOptions"), @"PresentationOptions"}];
  v122 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldShowSubordinateIcon") ifEqualTo:{@"ShouldShowSubordinateIcon", 1}];
  v123 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldSoundRepeat") ifEqualTo:{@"ShouldSoundRepeat", 1}];
  v124 = *v1;
  v125 = [*v3 audioCategory];
  [v124 appendString:v125 withName:@"SoundAudioCategory" skipIfEmpty:1];

  v126 = *v1;
  v127 = [*v3 audioVolume];
  v128 = [v126 appendObject:v127 withName:@"SoundAudioVolume" skipIfNil:1];

  [*v3 soundMaximumDuration];
  if (v129 != 0.0)
  {
    v130 = *v1;
    [*v3 soundMaximumDuration];
    v131 = [v130 appendDouble:@"SoundMaximumDuration" withName:1 decimalPrecision:?];
  }

  v132 = *v1;
  v133 = [*v3 subtitle];
  [v132 appendString:v133 withName:@"Subtitle" skipIfEmpty:1];

  v134 = *v1;
  v135 = [*v3 title];
  [v134 appendString:v135 withName:@"Title" skipIfEmpty:1];

  v136 = *v1;
  v137 = [*v3 titleLocalizationKey];
  [v136 appendString:v137 withName:@"TitleLocalizationKey" skipIfEmpty:1];

  v138 = *v1;
  v139 = [*v3 titleLocalizationArguments];
  [v138 appendArraySection:v139 withName:@"TitleLocalizationArguments" skipIfEmpty:1];

  v140 = *v1;
  v141 = [*v3 toneAlertTopic];
  [v140 appendString:v141 withName:@"ToneAlertTopic" skipIfEmpty:1];

  v142 = *v1;
  [*v3 toneAlertType];
  v143 = NSStringFromTLAlertType();
  [v142 appendString:v143 withName:@"ToneAlertType" skipIfEmpty:1];

  v144 = *v1;
  v145 = [*v3 toneFileName];
  [v144 appendString:v145 withName:@"ToneFileName" skipIfEmpty:1];

  v146 = *v1;
  v147 = [*v3 toneFileURL];
  v148 = [v146 appendObject:v147 withName:@"ToneFileURL" skipIfNil:1];

  v149 = *v1;
  v150 = [*v3 toneIdentifier];
  [v149 appendString:v150 withName:@"ToneIdentifier" skipIfEmpty:1];

  if ([*v3 toneMediaLibraryItemIdentifier])
  {
    v151 = [*v1 appendUInt64:objc_msgSend(*v3 withName:{"toneMediaLibraryItemIdentifier"), @"ToneMediaLibraryItemIdentifier"}];
  }

  v152 = *v1;
  v153 = [*v3 topicIdentifiers];
  v154 = [v153 allObjects];
  [v152 appendArraySection:v154 withName:@"TopicIdentifiers" skipIfEmpty:1];

  if ([*v3 realertCount])
  {
    v155 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"realertCount"), @"RealertCount"}];
  }

  v156 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsDefaultDestinations") ifEqualTo:{@"DefaultDestinations", 1}];
  v157 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsLockScreenDestination") ifEqualTo:{@"LockScreenDestination", 1}];
  v158 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsNotificationCenterDestination") ifEqualTo:{@"NotificationCenterDestination", 1}];
  v159 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsAlertDestination") ifEqualTo:{@"AlertDestination", 1}];
  v160 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsCarPlayDestination") ifEqualTo:{@"CarPlayDestination", 1}];
  v161 = *v1;
  v162 = [*v3 triggerDate];
  v163 = [v161 appendObject:v162 withName:@"TriggerDate" skipIfNil:1];

  v164 = *v1;
  v165 = [*v3 triggerDateComponents];
  v166 = [v164 appendObject:v165 withName:@"TriggerDateComponents" skipIfNil:1];

  v167 = *v1;
  v168 = [*v3 triggerRegion];
  v169 = [v167 appendObject:v168 withName:@"TriggerRegion" skipIfNil:1];

  v170 = *v1;
  v171 = [*v3 triggerRepeatCalendarIdentifier];
  [v170 appendString:v171 withName:@"TriggerRepeatCalendar" skipIfEmpty:1];

  if ([*v3 triggerRepeatInterval])
  {
    v172 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"triggerRepeatInterval"), @"TriggerRepeatInterval"}];
  }

  v173 = [*v1 appendBool:objc_msgSend(*v3 withName:"triggerRepeats") ifEqualTo:{@"TriggerRepeats", 1}];
  [*v3 triggerTimeInterval];
  if (v174 != 0.0)
  {
    v175 = *v1;
    [*v3 triggerTimeInterval];
    v176 = [v175 appendDouble:@"TriggerTimeInterval" withName:1 decimalPrecision:?];
  }

  v177 = *v1;
  v178 = [*v3 triggerTimeZone];
  v179 = [v178 name];
  [v177 appendString:v179 withName:@"TriggerTimeZone" skipIfEmpty:1];

  v180 = *v1;
  v181 = [*v3 triggerType];
  [v180 appendString:v181 withName:@"TriggerType" skipIfEmpty:1];

  v182 = *v1;
  v183 = [*v3 userInfo];
  [v182 appendDictionarySection:v183 withName:@"UserInfo" skipIfEmpty:1];

  v184 = *v1;
  v185 = [*v3 vibrationIdentifier];
  [v184 appendString:v185 withName:@"VibrationIdentifier" skipIfEmpty:1];

  v186 = *v1;
  v187 = [*v3 vibrationPatternFileURL];
  v188 = [v186 appendObject:v187 withName:@"VibrationPatternFileURL" skipIfNil:1];

  v189 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldIgnoreAccessibilityDisabledVibrationSetting") ifEqualTo:{@"ShouldIgnoreAccessibilityDisabledVibrationSetting", 1}];
  v190 = *v1;
  [*v3 relevanceScore];
  v191 = [v190 appendDouble:@"RelevanceScore" withName:2 decimalPrecision:?];
  v192 = *v1;
  v193 = [*v3 filterCriteria];
  [v192 appendString:v193 withName:@"FilterCriteria"];

  v194 = [*v1 appendBool:objc_msgSend(*v3 withName:"screenCaptureProhibited") ifEqualTo:{@"ScreenCaptureProhibited", 1}];
  v195 = *v1;
  v196 = [*v3 speechLanguage];
  [v195 appendString:v196 withName:@"SpeechLanguage"];

  v197 = [*v1 appendInteger:objc_msgSend(*v3 withName:{"revisionNumber"), @"RevisionNumber"}];
  v198 = [*v1 appendInteger:objc_msgSend(*v3 withName:{"pipelineState"), @"PipelineState"}];
  v199 = [*v1 appendBool:objc_msgSend(*v3 withName:"isHighlight") ifEqualTo:{@"IsHighlight", 1}];
  v200 = *v1;
  v201 = [*v3 summary];
  v202 = [v200 appendObject:v201 withName:@"Summary"];

  v203 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"priorityStatus"), @"PriorityStatus"}];
  v204 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"summaryStatus"), @"SummaryStatus"}];
  v205 = *v1;
  v207 = [*v3 eventBehavior];
  v206 = [v205 appendObject:v207 withName:@"EventBehavior"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UNSNotificationRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  date = [(UNSNotificationRecord *)self date];
  v5 = [v3 appendObject:date withName:@"Date" skipIfNil:1];

  contentType = [(UNSNotificationRecord *)self contentType];
  v7 = [v3 appendObject:contentType withName:@"ContentType" skipIfNil:1];

  identifier = [(UNSNotificationRecord *)self identifier];
  [v3 appendString:identifier withName:@"Identifier" skipIfEmpty:1];

  threadIdentifier = [(UNSNotificationRecord *)self threadIdentifier];
  [v3 appendString:threadIdentifier withName:@"ThreadIdentifier" skipIfEmpty:1];

  categoryIdentifier = [(UNSNotificationRecord *)self categoryIdentifier];
  [v3 appendString:categoryIdentifier withName:@"CategoryIdentifier" skipIfEmpty:1];

  targetContentIdentifier = [(UNSNotificationRecord *)self targetContentIdentifier];
  [v3 appendString:targetContentIdentifier withName:@"TargetContentIdentifier" skipIfEmpty:1];

  filterCriteria = [(UNSNotificationRecord *)self filterCriteria];
  [v3 appendString:filterCriteria withName:@"FilterCriteria" skipIfEmpty:1];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNSNotificationRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNSNotificationRecord)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:15];
  v7 = [v4 setWithArray:{v6, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNSNotificationRecord alloc] initWithDictionaryRepresentation:v8];
  return v9;
}

@end