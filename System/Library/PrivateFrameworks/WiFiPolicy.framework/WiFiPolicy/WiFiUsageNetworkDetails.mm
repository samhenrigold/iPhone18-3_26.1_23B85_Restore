@interface WiFiUsageNetworkDetails
- (BOOL)isCurrentBssOnChannel:(id)channel;
- (WiFiUsageNetworkDetails)initWithNetworkName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventDictionary:(BOOL)dictionary;
- (id)redactedDescription;
- (void)addDownloadSpeed:(double)speed;
@end

@implementation WiFiUsageNetworkDetails

- (WiFiUsageNetworkDetails)initWithNetworkName:(id)name
{
  v8.receiver = self;
  v8.super_class = WiFiUsageNetworkDetails;
  nameCopy = name;
  v4 = [(WiFiUsageNetworkDetails *)&v8 init];
  v5 = [nameCopy copy];

  networkName = v4->_networkName;
  v4->_networkName = v5;

  return v4;
}

- (id)redactedDescription
{
  v2 = MEMORY[0x277CCACA8];
  redactedDescription = [(WiFiUsageBssDetails *)self->_connectedBss redactedDescription];
  v4 = [v2 stringWithFormat:@"NetworkName:REDACTED BSSDetails:%@", redactedDescription];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(objc_opt_class());
  networkName = [(WiFiUsageNetworkDetails *)self networkName];
  v6 = [v4 initWithNetworkName:networkName];

  [v6 setIsKnown:self->_isKnown];
  [v6 setIsOpen:self->_isOpen];
  [v6 setIsOpen:self->_isOpen];
  [v6 setCaptiveStatus:self->_captiveStatus];
  [v6 setIsPublic:self->_isPublic];
  [v6 setIsLowQuality:self->_isLowQuality];
  [v6 setIsHome:self->_isHome];
  [v6 setIsWork:self->_isWork];
  [v6 setIsInternal:self->_isInternal];
  [v6 setIsManaged:self->_isManaged];
  [v6 setIsCarrierBased:self->_isCarrierBased];
  [v6 setIsCarPlay:self->_isCarPlay];
  [v6 setIsAppBased:self->_isAppBased];
  [v6 setIsWalletBased:self->_isWalletBased];
  [v6 setIsPersonalHotspot:self->_isPersonalHotspot];
  [v6 setIsMoving:self->_isMoving];
  [v6 setIsMesh:self->_isMesh];
  [v6 setIsWidelyDeployed:self->_isWidelyDeployed];
  [v6 setIsAutoJoined:self->_isAutoJoined];
  [v6 setIsAdhoc:self->_isAdhoc];
  [v6 setIsHidden:self->_isHidden];
  [v6 setIsPasspoint:self->_isPasspoint];
  [v6 setIsMetered:self->_isMetered];
  [v6 setIsBlueAtlas:self->_isBlueAtlas];
  [v6 setHasWapi:self->_hasWapi];
  [v6 setHasWeakSecurity:self->_hasWeakSecurity];
  [v6 setHasWpa3:self->_hasWpa3];
  [v6 setHasWep:self->_hasWep];
  [v6 setHasEnterpriseSecurity:self->_hasEnterpriseSecurity];
  [v6 setHasLegacyEnterpriseSecurity:self->_hasLegacyEnterpriseSecurity];
  [v6 setHasNoMap:self->_hasNoMap];
  [v6 setHasAmbiguousSsid:self->_hasAmbiguousSsid];
  [v6 setHasCustomNetworkSettings:self->_hasCustomNetworkSettings];
  [v6 setRequiresUsername:self->_requiresUsername];
  [v6 setRequiresPassword:self->_requiresPassword];
  [v6 setRequiresIdentity:self->_requiresIdentity];
  [v6 setRequiresOtp:self->_requiresOtp];
  [v6 setCanExposeImsi:self->_canExposeImsi];
  [v6 setAddedFromUI:self->_addedFromUI];
  [v6 setAddedFromApp:self->_addedFromApp];
  [v6 setAddedViaSync:self->_addedViaSync];
  [v6 setAddedViaATJ:self->_addedViaATJ];
  [v6 setAddedViaRecommendation:self->_addedViaRecommendation];
  [v6 setAddedViaSharing:self->_addedViaSharing];
  [v6 setAddedViaGuessing:self->_addedViaGuessing];
  [v6 setUsageRank:self->_usageRank];
  [v6 setAutoJoinDisabled:self->_autoJoinDisabled];
  [v6 setAutoLoginDisabled:self->_autoLoginDisabled];
  [v6 setLowDataModeEnabled:self->_lowDataModeEnabled];
  [v6 setControlCenterDisabled:self->_controlCenterDisabled];
  [v6 setPrivateRelayEnabled:self->_privateRelayEnabled];
  [v6 setPrivateRelayBlockedReason:self->_privateRelayBlockedReason];
  [v6 setAdvertisedCountryCode:self->_advertisedCountryCode];
  [v6 setAppliedCountryCode:self->_appliedCountryCode];
  [v6 setLocaleSource:self->_localeSource];
  [v6 setBssEnvironment:self->_bssEnvironment];
  [v6 setLastJoinDate:self->_lastJoinDate];
  [v6 setConnectedBss:self->_connectedBss];
  [v6 setColocatedNetworkCount:self->_colocatedNetworkCount];
  [v6 setSwitchedToCount:self->_switchedToCount];
  [v6 setSwitchedAwayCount:self->_switchedAwayCount];
  [v6 setNetworkScore:self->_networkScore];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_downloadSpeedResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) doubleValue];
        [v6 addDownloadSpeed:?];
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v6 setPrivateMacType:self->_privateMacType];
  [v6 setPrivateMacFeatureToggled:self->_privateMacFeatureToggled];
  [v6 setPrivateMacUnderClassification:self->_privateMacUnderClassification];
  [v6 setPrivateMacDisabledByProfile:self->_privateMacDisabledByProfile];
  [v6 setPrivateMacNetworkTypeHome:self->_privateMacNetworkTypeHome];
  [v6 setUsageDayTimeInLastDay:self->_usageDayTimeInLastDay];
  [v6 setUsageDayTimeInLastWeek:self->_usageDayTimeInLastWeek];
  [v6 setUsageDayTimeInLastMonth:self->_usageDayTimeInLastMonth];
  [v6 setUsageNightTimeInLastDay:self->_usageNightTimeInLastDay];
  [v6 setUsageNightTimeInLastWeek:self->_usageNightTimeInLastWeek];
  [v6 setUsageNightTimeInLastMonth:self->_usageNightTimeInLastMonth];
  [v6 setUsageStationaryDayTimeInLastDay:self->_usageStationaryDayTimeInLastDay];
  [v6 setUsageStationaryDayTimeInLastWeek:self->_usageStationaryDayTimeInLastWeek];
  [v6 setUsageStationaryDayTimeInLastMonth:self->_usageStationaryDayTimeInLastMonth];
  [v6 setUsageStationaryNightTimeInLastDay:self->_usageStationaryNightTimeInLastDay];
  [v6 setUsageStationaryNightTimeInLastWeek:self->_usageStationaryNightTimeInLastWeek];
  [v6 setUsageStationaryNightTimeInLastMonth:self->_usageStationaryNightTimeInLastMonth];
  [v6 setUsageChargingDayTimeInLastDay:self->_usageChargingDayTimeInLastDay];
  [v6 setUsageChargingDayTimeInLastWeek:self->_usageChargingDayTimeInLastWeek];
  [v6 setUsageChargingDayTimeInLastMonth:self->_usageChargingDayTimeInLastMonth];
  [v6 setUsageChargingNightTimeInLastDay:self->_usageChargingNightTimeInLastDay];
  [v6 setUsageChargingNightTimeInLastWeek:self->_usageChargingNightTimeInLastWeek];
  [v6 setUsageChargingNightTimeInLastMonth:self->_usageChargingNightTimeInLastMonth];
  [v6 setIsAtPrimaryHMHome:self->_isAtPrimaryHMHome];
  [v6 setIsAtNonPrimaryHMHome:self->_isAtNonPrimaryHMHome];
  [v6 setJoinSuccessCountInLastDay:self->_joinSuccessCountInLastDay];
  [v6 setJoinSuccessCountInLastWeek:self->_joinSuccessCountInLastWeek];
  [v6 setJoinSuccessCountInLastMonth:self->_joinSuccessCountInLastMonth];
  [v6 setJoinFailCountInLastDay:self->_joinFailCountInLastDay];
  [v6 setJoinFailCountInLastWeek:self->_joinFailCountInLastWeek];
  [v6 setJoinFailCountInLastMonth:self->_joinFailCountInLastMonth];
  [v6 setColocatedScopeCount:self->_colocatedScopeCount];
  [v6 setDisable6eMode:self->_disable6eMode];
  [v6 setIsStandalone6E:self->_isStandalone6E];
  [v6 setCarrierPayloadIdentifier:self->_carrierPayloadIdentifier];
  [v6 setIsCarrierPayloadIdentifierTelemetryApproved:self->_isCarrierPayloadIdentifierTelemetryApproved];
  return v6;
}

- (void)addDownloadSpeed:(double)speed
{
  downloadSpeedResults = self->_downloadSpeedResults;
  if (!downloadSpeedResults)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_downloadSpeedResults;
    self->_downloadSpeedResults = array;

    downloadSpeedResults = self->_downloadSpeedResults;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:speed];
  [(NSMutableArray *)downloadSpeedResults addObject:v8];
}

- (BOOL)isCurrentBssOnChannel:(id)channel
{
  channelCopy = channel;
  connectedBss = [(WiFiUsageNetworkDetails *)self connectedBss];
  v6 = [connectedBss isOnChannel:channelCopy];

  return v6;
}

- (id)eventDictionary:(BOOL)dictionary
{
  dictionaryCopy = dictionary;
  v99[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (!dictionaryCopy)
  {
    v6 = [WiFiUsagePrivacyFilter localTimestamp:self->_lastJoinDate];
    [dictionary setObject:v6 forKeyedSubscript:@"NetworkJoinDate"];

LABEL_9:
    [dictionary setObject:self->_networkName forKeyedSubscript:@"NetworkName"];
    goto LABEL_10;
  }

  if ((self->_isPublic || self->_isCarrierBased) && +[WiFiUsagePrivacyFilter canPerformActionWithSampleRate:](WiFiUsagePrivacyFilter, "canPerformActionWithSampleRate:", 1) || +[WiFiUsagePrivacyFilter isInternalInstall]&& [WiFiUsagePrivacyFilter canPerformActionWithSampleRate:3])
  {
    goto LABEL_9;
  }

LABEL_10:
  if (+[WiFiUsagePrivacyFilter isInternalInstall])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHome];
    [dictionary setObject:v7 forKeyedSubscript:@"NetworkIsHome"];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWork];
    [dictionary setObject:v8 forKeyedSubscript:@"NetworkIsWork"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isKnown];
  [dictionary setObject:v9 forKeyedSubscript:@"NetworkIsKnown"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOpen];
  [dictionary setObject:v10 forKeyedSubscript:@"NetworkIsOpen"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_captiveStatus == 2];
  [dictionary setObject:v11 forKeyedSubscript:@"NetworkIsCaptive"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPublic];
  [dictionary setObject:v12 forKeyedSubscript:@"NetworkIsPublic"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLowQuality];
  [dictionary setObject:v13 forKeyedSubscript:@"NetworkIsLowQuality"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternal];
  [dictionary setObject:v14 forKeyedSubscript:@"NetworkIsInternal"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isManaged];
  [dictionary setObject:v15 forKeyedSubscript:@"NetworkIsManaged"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCarrierBased];
  [dictionary setObject:v16 forKeyedSubscript:@"NetworkIsCarrierBased"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCarPlay];
  [dictionary setObject:v17 forKeyedSubscript:@"NetworkIsCarPlay"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAppBased];
  [dictionary setObject:v18 forKeyedSubscript:@"NetworkIsAppBased"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWalletBased];
  [dictionary setObject:v19 forKeyedSubscript:@"NetworkIsWalletBased"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPersonalHotspot];
  [dictionary setObject:v20 forKeyedSubscript:@"NetworkIsPersonalHotspot"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMoving];
  [dictionary setObject:v21 forKeyedSubscript:@"NetworkIsMoving"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMesh];
  [dictionary setObject:v22 forKeyedSubscript:@"NetworkIsMesh"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWidelyDeployed];
  [dictionary setObject:v23 forKeyedSubscript:@"NetworkIsWidelyDeployed"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAutoJoined];
  [dictionary setObject:v24 forKeyedSubscript:@"NetworkIsAutoJoined"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAdhoc];
  [dictionary setObject:v25 forKeyedSubscript:@"NetworkIsAdhoc"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHidden];
  [dictionary setObject:v26 forKeyedSubscript:@"NetworkIsHidden"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPasspoint];
  [dictionary setObject:v27 forKeyedSubscript:@"NetworkIsPasspoint"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMetered];
  [dictionary setObject:v28 forKeyedSubscript:@"NetworkIsMetered"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBlueAtlas];
  [dictionary setObject:v29 forKeyedSubscript:@"NetworkIsBlueAtlas"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasWapi];
  [dictionary setObject:v30 forKeyedSubscript:@"NetworkHasWapi"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasWeakSecurity];
  [dictionary setObject:v31 forKeyedSubscript:@"NetworkHasWeakSecurity"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasWpa3];
  [dictionary setObject:v32 forKeyedSubscript:@"NetworkHasWpa3"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasWep];
  [dictionary setObject:v33 forKeyedSubscript:@"NetworkHasWep"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasEnterpriseSecurity];
  [dictionary setObject:v34 forKeyedSubscript:@"NetworkHasEnterpriseSecurity"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasLegacyEnterpriseSecurity];
  [dictionary setObject:v35 forKeyedSubscript:@"NetworkHasLegacyEnterprise"];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasNoMap];
  [dictionary setObject:v36 forKeyedSubscript:@"NetworkHasNoMap"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAmbiguousSsid];
  [dictionary setObject:v37 forKeyedSubscript:@"NetworkHasAmbiguousName"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasCustomNetworkSettings];
  [dictionary setObject:v38 forKeyedSubscript:@"NetworkHasCustomSettings"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresUsername];
  [dictionary setObject:v39 forKeyedSubscript:@"NetworkRequiresUsername"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresPassword];
  [dictionary setObject:v40 forKeyedSubscript:@"NetworkRequiresPassword"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresIdentity];
  [dictionary setObject:v41 forKeyedSubscript:@"NetworkRequiresIdentity"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresOtp];
  [dictionary setObject:v42 forKeyedSubscript:@"NetworkRequiresOtp"];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_canExposeImsi];
  [dictionary setObject:v43 forKeyedSubscript:@"NetworkCanExposeImsi"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedFromUI];
  [dictionary setObject:v44 forKeyedSubscript:@"NetworkAddedFromUi"];

  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedFromApp];
  [dictionary setObject:v45 forKeyedSubscript:@"NetworkAddedFromApp"];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedViaSync];
  [dictionary setObject:v46 forKeyedSubscript:@"NetworkAddedViaSync"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedViaATJ];
  [dictionary setObject:v47 forKeyedSubscript:@"NetworkAddedViaAtj"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedViaRecommendation];
  [dictionary setObject:v48 forKeyedSubscript:@"NetworkAddedViaRecommendation"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedViaSharing];
  [dictionary setObject:v49 forKeyedSubscript:@"NetworkAddedViaSharing"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedViaGuessing];
  [dictionary setObject:v50 forKeyedSubscript:@"NetworkAddedViaGuessing"];

  v51 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageRank];
  [dictionary setObject:v51 forKeyedSubscript:@"NetworkUsageRank"];

  v52 = [MEMORY[0x277CCABB0] numberWithBool:self->_autoJoinDisabled];
  [dictionary setObject:v52 forKeyedSubscript:@"NetworkAutoJoinDisabled"];

  v53 = [MEMORY[0x277CCABB0] numberWithBool:self->_autoLoginDisabled];
  [dictionary setObject:v53 forKeyedSubscript:@"NetworkAutoLoginDisabled"];

  v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_lowDataModeEnabled];
  [dictionary setObject:v54 forKeyedSubscript:@"NetworkLowDataModeEnabled"];

  v55 = [MEMORY[0x277CCABB0] numberWithBool:self->_controlCenterDisabled];
  [dictionary setObject:v55 forKeyedSubscript:@"NetworkControlCenterDisabled"];

  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateRelayEnabled];
  [dictionary setObject:v56 forKeyedSubscript:@"NetworkPrivateRelayEnabled"];

  [dictionary setObject:self->_privateRelayBlockedReason forKeyedSubscript:@"NetworkPrivateRelayBlockedReason"];
  v99[0] = self->_advertisedCountryCode;
  v57 = [MEMORY[0x277CCACA8] stringWithCString:v99 encoding:4];
  [dictionary setObject:v57 forKeyedSubscript:@"NetworkCountryCodeAdvertised"];

  v99[0] = self->_appliedCountryCode;
  v58 = [MEMORY[0x277CCACA8] stringWithCString:v99 encoding:4];
  [dictionary setObject:v58 forKeyedSubscript:@"NetworkCountryCodeApplied"];

  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localeSource];
  [dictionary setObject:v59 forKeyedSubscript:@"NetworkCountryCodeSource"];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_colocatedNetworkCount];
  [dictionary setObject:v60 forKeyedSubscript:@"NetworkColocatedCount"];

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_switchedAwayCount];
  [dictionary setObject:v61 forKeyedSubscript:@"NetworkSwitchedAwayCount"];

  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_switchedToCount];
  [dictionary setObject:v62 forKeyedSubscript:@"NetworkSwitchedToCount"];

  v63 = [MEMORY[0x277CCABB0] numberWithInteger:self->_networkScore];
  [dictionary setObject:v63 forKeyedSubscript:@"NetworkScore"];

  if ([(NSMutableArray *)self->_downloadSpeedResults count])
  {
    v64 = [(NSMutableArray *)self->_downloadSpeedResults objectAtIndexedSubscript:0];
    [dictionary setObject:v64 forKeyedSubscript:@"NetworkDownloadSpeed"];
  }

  [dictionary setObject:self->_privateMacType forKeyedSubscript:@"NetworkPrivateMacType"];
  v65 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateMacFeatureToggled];
  [dictionary setObject:v65 forKeyedSubscript:@"NetworkPrivateMacFeatureToggled"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateMacUnderClassification];
  [dictionary setObject:v66 forKeyedSubscript:@"NetworkPrivateMacUnderClassification"];

  v67 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateMacDisabledByProfile];
  [dictionary setObject:v67 forKeyedSubscript:@"NetworkPrivateMacDisabledByProfile"];

  v68 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateMacNetworkTypeHome];
  [dictionary setObject:v68 forKeyedSubscript:@"NetworkPrivateMacNetworkTypeHome"];

  v69 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageDayTimeInLastDay];
  [dictionary setObject:v69 forKeyedSubscript:@"NetworkUsageDayTimeInLastDay"];

  v70 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageDayTimeInLastWeek];
  [dictionary setObject:v70 forKeyedSubscript:@"NetworkUsageDayTimeInLastWeek"];

  v71 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageDayTimeInLastMonth];
  [dictionary setObject:v71 forKeyedSubscript:@"NetworkUsageDayTimeInLastMonth"];

  v72 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageNightTimeInLastDay];
  [dictionary setObject:v72 forKeyedSubscript:@"NetworkUsageNightTimeInLastDay"];

  v73 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageNightTimeInLastWeek];
  [dictionary setObject:v73 forKeyedSubscript:@"NetworkUsageNightTimeInLastWeek"];

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageNightTimeInLastMonth];
  [dictionary setObject:v74 forKeyedSubscript:@"NetworkUsageNightTimeInLastMonth"];

  v75 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryDayTimeInLastDay];
  [dictionary setObject:v75 forKeyedSubscript:@"NetworkUsageStationaryDayTimeInLastDay"];

  v76 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryDayTimeInLastWeek];
  [dictionary setObject:v76 forKeyedSubscript:@"NetworkUsageStationaryDayTimeInLastWeek"];

  v77 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryDayTimeInLastMonth];
  [dictionary setObject:v77 forKeyedSubscript:@"NetworkUsageStationaryDayTimeInLastMonth"];

  v78 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryNightTimeInLastDay];
  [dictionary setObject:v78 forKeyedSubscript:@"NetworkUsageStationaryNightTimeInLastDay"];

  v79 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryNightTimeInLastWeek];
  [dictionary setObject:v79 forKeyedSubscript:@"NetworkUsageStationaryNightTimeInLastWeek"];

  v80 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageStationaryNightTimeInLastMonth];
  [dictionary setObject:v80 forKeyedSubscript:@"NetworkUsageStationaryNightTimeInLastMonth"];

  v81 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingDayTimeInLastDay];
  [dictionary setObject:v81 forKeyedSubscript:@"NetworkUsageChargingDayTimeInLastDay"];

  v82 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingDayTimeInLastWeek];
  [dictionary setObject:v82 forKeyedSubscript:@"NetworkUsageChargingDayTimeInLastWeek"];

  v83 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingDayTimeInLastMonth];
  [dictionary setObject:v83 forKeyedSubscript:@"NetworkUsageChargingDayTimeInLastMonth"];

  v84 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingNightTimeInLastDay];
  [dictionary setObject:v84 forKeyedSubscript:@"NetworkUsageChargingNightTimeInLastDay"];

  v85 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingNightTimeInLastWeek];
  [dictionary setObject:v85 forKeyedSubscript:@"NetworkUsageChargingNightTimeInLastWeek"];

  v86 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageChargingNightTimeInLastMonth];
  [dictionary setObject:v86 forKeyedSubscript:@"NetworkUsageChargingNightTimeInLastMonth"];

  v87 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAtPrimaryHMHome];
  [dictionary setObject:v87 forKeyedSubscript:@"NetworkAtPrimaryHMHome"];

  v88 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAtNonPrimaryHMHome];
  [dictionary setObject:v88 forKeyedSubscript:@"NetworkAtNonPrimaryHMHome"];

  v89 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinSuccessCountInLastDay];
  [dictionary setObject:v89 forKeyedSubscript:@"NetworkJoinSuccessCountInLastDay"];

  v90 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinSuccessCountInLastWeek];
  [dictionary setObject:v90 forKeyedSubscript:@"NetworkJoinSuccessCountInLastWeek"];

  v91 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinSuccessCountInLastMonth];
  [dictionary setObject:v91 forKeyedSubscript:@"NetworkJoinSuccessCountInLastMonth"];

  v92 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinFailCountInLastDay];
  [dictionary setObject:v92 forKeyedSubscript:@"NetworkJoinFailCountInLastDay"];

  v93 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinFailCountInLastWeek];
  [dictionary setObject:v93 forKeyedSubscript:@"NetworkJoinFailCountInLastWeek"];

  v94 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinFailCountInLastMonth];
  [dictionary setObject:v94 forKeyedSubscript:@"NetworkJoinFailCountInLastMonth"];

  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_colocatedScopeCount];
  [dictionary setObject:v95 forKeyedSubscript:@"NetworkColocatedScopeCount"];

  [dictionary setObject:self->_bssEnvironment forKeyedSubscript:@"NetworkBssEnvironment"];
  [dictionary setObject:self->_bssEnvironment forKeyedSubscript:@"NetworkBssEnvironmentString"];
  [dictionary setObject:self->_disable6eMode forKeyedSubscript:@"NetworkDisable6EMode"];
  if (self->_carrierPayloadIdentifier)
  {
    v96 = self->_isCarrierPayloadIdentifierTelemetryApproved ? MEMORY[0x277CBEC38] : MEMORY[0x277CBEC28];
    [dictionary setObject:v96 forKeyedSubscript:@"NetworkCarrierPayloadIdentifierIsAllowed"];
    if (self->_isCarrierPayloadIdentifierTelemetryApproved)
    {
      [dictionary setObject:self->_carrierPayloadIdentifier forKeyedSubscript:@"NetworkCarrierPayloadIdentifier"];
    }
  }

  v97 = [(WiFiUsageBssDetails *)self->_connectedBss eventDictionary:dictionaryCopy];
  [dictionary addEntriesFromDictionary:v97];

  return dictionary;
}

@end