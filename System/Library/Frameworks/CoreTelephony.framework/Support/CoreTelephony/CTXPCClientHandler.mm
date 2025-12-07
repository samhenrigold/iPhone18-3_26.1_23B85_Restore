@interface CTXPCClientHandler
- (CTXPCClientHandlerDelegate)delegate;
- (CTXPCDataProviderInterface)dataProviderDelegate;
- (NSXPCConnection)connection;
- (id).cxx_construct;
- (optional<BOOL>)restrictedPublicCarrierInfoKeys;
- (optional<PhoneServicesType>)serviceFromCFName:(id)name;
- (shared_ptr<const)registry;
- (void)SIMUnlockProcedureDidComplete;
- (void)acknowledgeIncomingMessages:(id)messages withMessageIDList:(id)list completion:(id)completion;
- (void)activateTurboMode:(id)mode;
- (void)addDedicatedBearer:(id)bearer completion:(id)completion;
- (void)addParticipants:(id)participants toGroupChat:(id)chat withParticipantsToAdd:(id)add withOperationID:(id)d withSecurity:(id)security completion:(id)completion;
- (void)authenticate:(id)authenticate request:(id)request completion:(id)completion;
- (void)billingCycleEndDatesForLastPeriods:(unint64_t)periods completion:(id)completion;
- (void)cancelSIMToolkitUSSDSessionForContext:(id)context completion:(id)completion;
- (void)changeIcon:(id)icon forGroupChat:(id)chat withNewIcon:(id)newIcon withOperationID:(id)d withSecurity:(id)security completion:(id)completion;
- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin completion:(id)completion;
- (void)changeSubject:(id)subject forGroupChat:(id)chat withNewSubject:(id)newSubject withOperationID:(id)d withSecurity:(id)security completion:(id)completion;
- (void)checkBasebandConfigUpdateInfo:(id)info;
- (void)checkCellularDiagnosticsStatus:(id)status;
- (void)checkEmbeddedSimHealthWithCompletion:(id)completion;
- (void)checkRadioBootHealth:(id)health;
- (void)checkRadioBootHealthDetails:(id)details;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)month completion:(id)completion;
- (void)clearUserEnteredMonthlyBudget:(id)budget completion:(id)completion;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)context:(id)context addPhoneServicesDevice:(id)device withCompletion:(id)completion;
- (void)context:(id)context canSetCapability:(id)capability completion:(id)completion;
- (void)context:(id)context getCapability:(id)capability completion:(id)completion;
- (void)context:(id)context getPseudoIdentityFor:(id)for completion:(id)completion;
- (void)context:(id)context getSystemCapabilities:(id)capabilities;
- (void)context:(id)context isMandatoryDisabledVoLTE:(id)e;
- (void)context:(id)context isProtectedIdentitySupported:(id)supported completion:(id)completion;
- (void)context:(id)context mandatoryDisableVoLTE:(BOOL)e withCompletion:(id)completion;
- (void)context:(id)context recheckPhoneServicesAccountStatus:(id)status completion:(id)completion;
- (void)context:(id)context removePhoneServicesDevice:(id)device withCompletion:(id)completion;
- (void)context:(id)context setCapability:(id)capability enabled:(BOOL)enabled info:(id)info completion:(id)completion;
- (void)context:(id)context supportedIdentityProtectionFor:(id)for completion:(id)completion;
- (void)copyCellId:(id)id completion:(id)completion;
- (void)copyCellInfo:(id)info completion:(id)completion;
- (void)copyFirmwareUpdateInfo:(id)info;
- (void)copyGid1:(id)gid1 completion:(id)completion;
- (void)copyGid2:(id)gid2 completion:(id)completion;
- (void)copyLabel:(id)label completion:(id)completion;
- (void)copyLastKnownMobileSubscriberCountryCode:(id)code completion:(id)completion;
- (void)copyLocationAreaCode:(id)code completion:(id)completion;
- (void)copyMccOrPlmnsListForIso3CountryCode:(id)code completion:(id)completion;
- (void)copyMobileEquipmentInfo:(id)info;
- (void)copyMobileSubscriberCountryCode:(id)code completion:(id)completion;
- (void)copyMobileSubscriberIdentity:(id)identity completion:(id)completion;
- (void)copyMobileSubscriberIso3CountryCode:(id)code MNC:(id)c completion:(id)completion;
- (void)copyMobileSubscriberIsoCountryCode:(id)code completion:(id)completion;
- (void)copyMobileSubscriberIsoSubregionCode:(id)code MNC:(id)c completion:(id)completion;
- (void)copyMobileSubscriberNetworkCode:(id)code completion:(id)completion;
- (void)copyPriVersion:(id)version completion:(id)completion;
- (void)copyPublicCellId:(id)id completion:(id)completion;
- (void)copySIMIdentity:(id)identity completion:(id)completion;
- (void)create:(id)create groupChat:(id)chat withOperationID:(id)d completion:(id)completion;
- (void)createEncryptedIdentity:(id)identity identity:(id)a4 completion:(id)completion;
- (void)dataUsageForLastPeriods:(unint64_t)periods completion:(id)completion;
- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)device completion:(id)completion;
- (void)decodeSuggestionsBase64:(id)base64 withBase64String:(id)string completion:(id)completion;
- (void)deleteChat:(id)chat chat:(id)a4 completion:(id)completion;
- (void)deleteHiddenSims:(id)sims;
- (void)disableBusinessMessaging:(id)messaging completion:(id)completion;
- (void)disableLazuli:(id)lazuli completion:(id)completion;
- (void)discoverCapabilities:(id)capabilities forDestination:(id)destination completion:(id)completion;
- (void)discoverRemoteCapabilities:(id)capabilities forDestination:(id)destination withOperationID:(id)d completion:(id)completion;
- (void)enableBusinessMessaging:(id)messaging completion:(id)completion;
- (void)enableLazuli:(id)lazuli completion:(id)completion;
- (void)evaluateMobileSubscriberIdentity:(id)identity identity:(id)a4 completion:(id)completion;
- (void)exit:(id)exit groupChat:(id)chat withOperationID:(id)d completion:(id)completion;
- (void)fetchBasebandTicket:(BOOL)ticket withCompletion:(id)completion;
- (void)fetchChatBotRenderInformation:(id)information forDestination:(id)destination completion:(id)completion;
- (void)fetchPhonebook:(id)phonebook completion:(id)completion;
- (void)fetchRemoteCapabilities:(id)capabilities forDestination:(id)destination withOptions:(id)options withOperationID:(id)d completion:(id)completion;
- (void)fetchRenderInformation:(id)information forChatBot:(id)bot withOperationID:(id)d completion:(id)completion;
- (void)fetchSIMLockValue:(id)value completion:(id)completion;
- (void)forceRollAllTransportKeys:(id)keys;
- (void)generateAuthenticationInfoUsingSim:(id)sim authParams:(id)params completion:(id)completion;
- (void)getActivationPolicyState:(id)state;
- (void)getBasebandRadioFrequencyFrontEndScanData:(id)data;
- (void)getCellularUsageWorkspaceInfo:(id)info;
- (void)getEOSFirmwareUpdateInfo:(id)info;
- (void)getEosStatus:(id)status;
- (void)getLastKnownSimDeactivationInfoFor:(id)for completion:(id)completion;
- (void)getListOfPresentDedicatedBearers:(id)bearers;
- (void)getMobileSubscriberHomeCountryList:(id)list completion:(id)completion;
- (void)getPhoneNumberWithCompletion:(id)completion completion:(id)a4;
- (void)getPhoneServicesDeviceInfo:(id)info;
- (void)getPhoneServicesDeviceList:(id)list;
- (void)getPhonebookEntryCountWithCompletion:(id)completion completion:(id)a4;
- (void)getPhonebookEntryWithCompletion:(id)completion atIndex:(int)index completion:(id)a5;
- (void)getPrivateNetworkCapabilitiesForContext:(id)context completion:(id)completion;
- (void)getPrivateNetworkSimInfoForContext:(id)context completion:(id)completion;
- (void)getProvisioningServerURL:(id)l completion:(id)completion;
- (void)getQoSLinkCharacteristics:(id)characteristics;
- (void)getRemainingPINAttemptCount:(id)count completion:(id)completion;
- (void)getRemainingPUKAttemptCount:(id)count completion:(id)completion;
- (void)getSIMStatus:(id)status completion:(id)completion;
- (void)getSIMToolkitListItemsForContext:(id)context completion:(id)completion;
- (void)getSIMToolkitMenuForContext:(id)context completion:(id)completion;
- (void)getSIMToolkitUSSDStringForContext:(id)context completion:(id)completion;
- (void)getSIMTrayStatus:(id)status;
- (void)getSatelliteMsgCfgToUpdate:(id)update;
- (void)getShortLabel:(id)label completion:(id)completion;
- (void)getSimHardwareInfo:(id)info completion:(id)completion;
- (void)getSimLabel:(id)label completion:(id)completion;
- (void)getSubscriptionUserFacingName:(id)name completion:(id)completion;
- (void)getSupports5G:(id)g completion:(id)completion;
- (void)getSupportsTARandomization:(id)randomization completion:(id)completion;
- (void)getSweetgumApps:(id)apps completion:(id)completion;
- (void)getSweetgumCapabilities:(id)capabilities completion:(id)completion;
- (void)getSweetgumDataPlanMetrics:(id)metrics completion:(id)completion;
- (void)getSweetgumPlans:(id)plans completion:(id)completion;
- (void)getSweetgumUsage:(id)usage completion:(id)completion;
- (void)getSweetgumUserConsentInfo:(id)info completion:(id)completion;
- (void)getSystemConfiguration:(id)configuration completion:(id)completion;
- (void)getTARandomizationSetting:(id)setting completion:(id)completion;
- (void)getTransportKeysToUpdate:(id)update;
- (void)getTypeAllocationCode:(id)code completion:(id)completion;
- (void)getUserAuthToken:(id)token completion:(id)completion;
- (void)getUserDefaultVoiceSubscriptionContext:(id)context;
- (void)hasDedicatedBearerSupport:(id)support;
- (void)installPrivateNetworkProfile:(id)profile completion:(id)completion;
- (void)interfaceCostExpensive:(id)expensive completion:(id)completion;
- (void)isAnySimReadyWithCompletion:(id)completion;
- (void)isDedicatedBearerPresent:(id)present completion:(id)completion;
- (void)isEmbeddedSIMOnlyConfig:(id)config;
- (void)isFactoryDebugEnabled:(id)enabled;
- (void)isHighDataModeSupported:(id)supported completion:(id)completion;
- (void)isPrivateNetworkContext:(id)context completion:(id)completion;
- (void)isPrivateNetworkEvaluationNeeded:(id)needed;
- (void)isPrivateNetworkPreferredOverWifi:(id)wifi completion:(id)completion;
- (void)isPrivateNetworkSIM:(id)m completion:(id)completion;
- (void)isSimMatching:(id)matching carrierDescriptors:(id)descriptors completion:(id)completion;
- (void)isSmartDataModeSupportedWithCompletion:(id)completion;
- (void)lowDataMode:(id)mode completion:(id)completion;
- (void)overriddenInterfaceCostInexpensiveWithCompletion:(id)completion;
- (void)privacyProxy:(id)proxy completion:(id)completion;
- (void)promptForSIMUnlock:(id)unlock completion:(id)completion;
- (void)purchaseSweetgumPlan:(id)plan completion:(id)completion;
- (void)readCachedCapabilities:(id)capabilities forDestination:(id)destination completion:(id)completion;
- (void)readCachedChatBotRenderInformation:(id)information forChatBot:(id)bot completion:(id)completion;
- (void)refreshCellMonitor:(id)monitor completion:(id)completion;
- (void)refreshSweetgumAll:(id)all completion:(id)completion;
- (void)refreshSweetgumApps:(id)apps completion:(id)completion;
- (void)refreshSweetgumPlans:(id)plans completion:(id)completion;
- (void)refreshSweetgumUsage:(id)usage completion:(id)completion;
- (void)refreshUserAuthToken:(id)token completion:(id)completion;
- (void)reliableNetworkFallback:(id)fallback completion:(id)completion;
- (void)removeAllDedicatedBearers:(id)bearers;
- (void)removeDedicatedBearer:(id)bearer completion:(id)completion;
- (void)removeGeofenceProfile:(id)profile;
- (void)removeParticipants:(id)participants fromGroupChat:(id)chat withParticipantsToRemove:(id)remove withOperationID:(id)d withSecurity:(id)security completion:(id)completion;
- (void)removePrivateNetworkProfile:(id)profile completion:(id)completion;
- (void)reportChatbotSpam:(id)spam forChatbot:(id)chatbot withSpamReportInfo:(id)info andOperationID:(id)d completion:(id)completion;
- (void)reportLazuliSpamWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d completion:(id)completion;
- (void)reprovisionSatelliteMsg:(BOOL)msg completion:(id)completion;
- (void)requestQoSLinkCharacteristics:(id)characteristics;
- (void)retrieveAllIncomingMessageIDs:(id)ds completion:(id)completion;
- (void)retrieveMessage:(id)message withMessageID:(id)d completion:(id)completion;
- (void)revokeMessage:(id)message withRevokeData:(id)data withMessageID:(id)d completion:(id)completion;
- (void)savePhonebookEntry:(id)entry atIndex:(int)index withContactName:(id)name contactNumber:(id)number completion:(id)completion;
- (void)saveSIMLockValue:(id)value enabled:(BOOL)enabled pin:(id)pin completion:(id)completion;
- (void)selectPhonebook:(id)phonebook forPhonebookName:(int)name withPassword:(id)password completion:(id)completion;
- (void)selectSIMToolkitListItemForContext:(id)context session:(id)session response:(id)response index:(id)index completion:(id)completion;
- (void)selectSIMToolkitMenuItemForContext:(id)context index:(id)index completion:(id)completion;
- (void)sendComposingIndicator:(id)indicator to:(id)to withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security withError:(id *)error;
- (void)sendDeviceAction:(id)action to:(id)to withMessageID:(id)d withAction:(id)withAction completion:(id)completion;
- (void)sendDeviceSettings:(id)settings to:(id)to withMessageID:(id)d withSetting:(id)setting completion:(id)completion;
- (void)sendDispositionNotificationMessage:(id)message to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security completion:(id)completion;
- (void)sendFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security completion:(id)completion;
- (void)sendFileTransferMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security completion:(id)completion;
- (void)sendGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security completion:(id)completion;
- (void)sendGeolocationMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security completion:(id)completion;
- (void)sendGroupComposingIndicator:(id)indicator toGroup:(id)group withMessageID:(id)d withIndication:(id)indication completion:(id)completion;
- (void)sendGroupComposingIndicator:(id)indicator toGroupDestination:(id)destination withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security completion:(id)completion;
- (void)sendGroupDispositionNotificationMessage:(id)message toGroup:(id)group to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security completion:(id)self0;
- (void)sendOneToManyFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor completion:(id)completion;
- (void)sendOneToManyGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push completion:(id)completion;
- (void)sendOneToManyTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage completion:(id)completion;
- (void)sendResponseForSuggestedAction:(id)action to:(id)to withMessageID:(id)d response:(id)response completion:(id)completion;
- (void)sendResponseForSuggestedReply:(id)reply to:(id)to withMessageID:(id)d response:(id)response completion:(id)completion;
- (void)sendSIMToolkitBooleanResponseForContext:(id)context session:(id)session response:(id)response yesNo:(BOOL)no completion:(id)completion;
- (void)sendSIMToolkitDisplayReadyForContext:(id)context completion:(id)completion;
- (void)sendSIMToolkitResponseForContext:(id)context session:(id)session response:(id)response completion:(id)completion;
- (void)sendSIMToolkitStringResponseForContext:(id)context session:(id)session response:(id)response string:(id)string completion:(id)completion;
- (void)sendSIMToolkitUSSDResponseForContext:(id)context response:(id)response completion:(id)completion;
- (void)sendSIMToolkitUserActivityForContext:(id)context completion:(id)completion;
- (void)sendTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security completion:(id)completion;
- (void)sendTextMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security completion:(id)completion;
- (void)setActiveUserDataSelection:(id)selection completion:(id)completion;
- (void)setDefaultVoice:(id)voice completion:(id)completion;
- (void)setEosStatus:(id)status assertionState:(id)state completion:(id)completion;
- (void)setInterfaceCost:(id)cost expensive:(BOOL)expensive completion:(id)completion;
- (void)setLabel:(id)label label:(id)a4 completion:(id)completion;
- (void)setLowDataMode:(id)mode enable:(BOOL)enable completion:(id)completion;
- (void)setOverriddenInterfaceCostInexpensive:(BOOL)inexpensive completion:(id)completion;
- (void)setPrivacyProxy:(id)proxy enabled:(BOOL)enabled completion:(id)completion;
- (void)setProvisioningServerURL:(id)l url:(id)url completion:(id)completion;
- (void)setReliableNetworkFallback:(id)fallback enable:(BOOL)enable completion:(id)completion;
- (void)setSatelliteMsgCfgUpdated:(id)updated completion:(id)completion;
- (void)setSmartDataMode:(id)mode enable:(BOOL)enable completion:(id)completion;
- (void)setSweetgumUserConsent:(id)consent userConsent:(BOOL)userConsent completion:(id)completion;
- (void)setTARandomizationUserSetting:(id)setting enabled:(BOOL)enabled completion:(id)completion;
- (void)setTransportKeysUpdated:(BOOL)updated with:(id)with completion:(id)completion;
- (void)setUsageCollectionEnabled:(BOOL)enabled completion:(id)completion;
- (void)setUserEntered:(id)entered monthlyBudget:(id)budget completion:(id)completion;
- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month completion:(id)completion;
- (void)setVoLTEAudioCodec:(id)codec codecInfo:(id)info completion:(id)completion;
- (void)shouldAllowSimLockFor:(id)for completion:(id)completion;
- (void)smartDataMode:(id)mode completion:(id)completion;
- (void)supportsEmbeddedSIMWithCompletion:(id)completion;
- (void)supportsLimitedUseSIMsWithCompletion:(id)completion;
- (void)unlockPIN:(id)n pin:(id)pin completion:(id)completion;
- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin completion:(id)completion;
- (void)updateGeofenceProfile:(id)profile completion:(id)completion;
- (void)updatePrivateNetworkProfile:(id)profile setProfileAside:(BOOL)aside completion:(id)completion;
- (void)usageCollectionEnabled:(id)enabled;
- (void)userEnteredBillingEndDayOfMont:(id)mont completion:(id)completion;
- (void)userEnteredMonthlyBudget:(id)budget completion:(id)completion;
- (void)userEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)wifiCallingCTFollowUpComplete:(id)complete withCompletion:(id)completion;
@end

@implementation CTXPCClientHandler

- (shared_ptr<const)registry
{
  cntrl = self->_registry.__cntrl_;
  *v2 = self->_registry.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (CTXPCDataProviderInterface)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);

  return WeakRetained;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (CTXPCClientHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (optional<BOOL>)restrictedPublicCarrierInfoKeys
{
  if ([(CTXPCClientHandler *)self hasEntitlement:3])
  {
    objc_msgSend_getLogContext(self);
    v3 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    v4 = 1;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v6 = 0;
      return (v6 | (v4 << 8));
    }

    *v11 = 0;
    v5 = "Allow all bundle info (Entitlement)";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v5, v11, 2u);
    goto LABEL_5;
  }

  v7 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      objc_msgSend_getLogContext(self);
      v3 = v12;
      ctu::OsLogContext::~OsLogContext(v11);
      v4 = 1;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      *v11 = 0;
      v5 = "Allow all bundle info (SDK version)";
      goto LABEL_4;
    }

    objc_msgSend_getLogContext(self);
    v9 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Restricting carrier info", v11, 2u);
    }

    v6 = 1;
    v4 = 1;
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unknown (SDK version)", v11, 2u);
    }

    v6 = 0;
    v4 = 0;
  }

  return (v6 | (v4 << 8));
}

- (void)disableLazuli:(id)lazuli completion:(id)completion
{
  lazuliCopy = lazuli;
  completionCopy = completion;
  if (completionCopy)
  {
    if (lazuliCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [lazuliCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] disableLazuli: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, v9, buf);
      v11 = *buf;
      if (*buf)
      {
        v12 = sub_100018A64([lazuliCopy slotID]);
        if ((*(*v11 + 40))(v11, v12))
        {
          completionCopy[2](completionCopy, 0);
          goto LABEL_19;
        }

        objc_msgSend_getLogContext(self);
        v17 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10177AB64();
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AB98();
        }
      }

      v19 = 5;
      v20 = 1;
      v18 = sub_100A99330(&v19);
      (completionCopy)[2](completionCopy, v18);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    objc_msgSend_getLogContext(self);
    v14 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v15 = sub_100A99330(buf);
    (completionCopy)[2](completionCopy, v15);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177AC00();
    }
  }

LABEL_21:
}

- (void)disableBusinessMessaging:(id)messaging completion:(id)completion
{
  messagingCopy = messaging;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messagingCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [messagingCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] disableBusinessMessaging: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, v9, buf);
      v11 = *buf;
      if (*buf)
      {
        v12 = sub_100018A64([messagingCopy slotID]);
        if ((*(*v11 + 56))(v11, v12))
        {
          completionCopy[2](completionCopy, 0);
          goto LABEL_19;
        }

        objc_msgSend_getLogContext(self);
        v17 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10177AC34();
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AC68();
        }
      }

      v19 = 5;
      v20 = 1;
      v18 = sub_100A99330(&v19);
      (completionCopy)[2](completionCopy, v18);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    objc_msgSend_getLogContext(self);
    v14 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v15 = sub_100A99330(buf);
    (completionCopy)[2](completionCopy, v15);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177AC9C();
    }
  }

LABEL_21:
}

- (void)enableLazuli:(id)lazuli completion:(id)completion
{
  lazuliCopy = lazuli;
  completionCopy = completion;
  if (completionCopy)
  {
    if (lazuliCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [lazuliCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] enableLazuli: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, v9, buf);
      v11 = *buf;
      if (*buf)
      {
        v12 = sub_100018A64([lazuliCopy slotID]);
        if ((*(*v11 + 32))(v11, v12))
        {
          completionCopy[2](completionCopy, 0);
          goto LABEL_19;
        }

        objc_msgSend_getLogContext(self);
        v17 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10177ACD0();
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AD04();
        }
      }

      v19 = 5;
      v20 = 1;
      v18 = sub_100A99330(&v19);
      (completionCopy)[2](completionCopy, v18);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    objc_msgSend_getLogContext(self);
    v14 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v15 = sub_100A99330(buf);
    (completionCopy)[2](completionCopy, v15);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177AD38();
    }
  }

LABEL_21:
}

- (void)enableBusinessMessaging:(id)messaging completion:(id)completion
{
  messagingCopy = messaging;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messagingCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [messagingCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] enableBusinessMessaging: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, v9, buf);
      v11 = *buf;
      if (*buf)
      {
        v12 = sub_100018A64([messagingCopy slotID]);
        if ((*(*v11 + 48))(v11, v12))
        {
          completionCopy[2](completionCopy, 0);
          goto LABEL_19;
        }

        objc_msgSend_getLogContext(self);
        v17 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10177AD6C();
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = v21;
        ctu::OsLogContext::~OsLogContext(&v19);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177ADA0();
        }
      }

      v19 = 5;
      v20 = 1;
      v18 = sub_100A99330(&v19);
      (completionCopy)[2](completionCopy, v18);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    objc_msgSend_getLogContext(self);
    v14 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v15 = sub_100A99330(buf);
    (completionCopy)[2](completionCopy, v15);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177ADD4();
    }
  }

LABEL_21:
}

- (void)fetchChatBotRenderInformation:(id)information forDestination:(id)destination completion:(id)completion
{
  informationCopy = information;
  destinationCopy = destination;
  completionCopy = completion;
  if (completionCopy)
  {
    if (destinationCopy)
    {
      v11 = [destinationCopy uri];

      if (informationCopy)
      {
        if (v11)
        {
          objc_msgSend_getLogContext(self);
          v12 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            [informationCopy slotID];
            v13 = CTSubscriptionSlotAsString();
            v14 = [destinationCopy uri];
            *buf = 136315395;
            *&buf[4] = v13;
            *&buf[12] = 2113;
            *&buf[14] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchChatBotRenderInformation: [slot: %s, destination: %{private}@]", buf, 0x16u);
          }

          v15 = sub_100018A64([informationCopy slotID]);
          v30 = 0;
          v31 = 0;
          sub_1006E5E0C(self, &v30, v16);
          if (!v30)
          {
            objc_msgSend_getLogContext(self);
            v21 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10177AD04();
            }

            *buf = 5;
            buf[4] = 1;
            v22 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v22);

            goto LABEL_34;
          }

          v28[0] = 0;
          v28[1] = 0;
          v29 = 0;
          sub_100A972E8(v28);
          v27 = 0;
          v17 = v30;
          sub_1006E72AC(destinationCopy, buf);
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(__p, v28[0], v28[1]);
          }

          else
          {
            *__p = *v28;
            v26 = v29;
          }

          v23 = (*(*v17 + 96))(v17, v15, buf, __p);
          LODWORD(v27) = v23;
          BYTE4(v27) = BYTE4(v23);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          if (v36[24] == 1)
          {
            __p[0] = v36;
            sub_1000087B4(__p);
          }

          if (v35 < 0)
          {
            operator delete(v34);
          }

          if (v33 < 0)
          {
            operator delete(*buf);
            if ((v23 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }
          }

          else if ((v23 & 0x100000000) == 0)
          {
LABEL_29:
            completionCopy[2](completionCopy, 0);
            goto LABEL_32;
          }

          v24 = sub_100A99330(&v27);
          completionCopy[2](completionCopy, v24);

LABEL_32:
          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28[0]);
          }

LABEL_34:
          if (v31)
          {
            sub_100004A34(v31);
          }

          goto LABEL_36;
        }
      }
    }

    objc_msgSend_getLogContext(self);
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v19 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v19);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v20 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information", buf, 2u);
    }
  }

LABEL_36:
}

- (void)readCachedChatBotRenderInformation:(id)information forChatBot:(id)bot completion:(id)completion
{
  informationCopy = information;
  botCopy = bot;
  completionCopy = completion;
  if (completionCopy)
  {
    if (informationCopy && botCopy && ([botCopy uri], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      objc_msgSend_getLogContext(self);
      v12 = *&v37[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [informationCopy slotID];
        v13 = CTSubscriptionSlotAsString();
        v14 = [botCopy uri];
        *buf = 136315395;
        *v37 = v13;
        *&v37[8] = 2113;
        *&v37[10] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] readCachedChatBotRenderInformation [slot: %s, destination: %{private}@]", buf, 0x16u);
      }

      v15 = sub_100018A64([informationCopy slotID]);
      v33 = 0;
      v34 = 0;
      sub_1006E5FC4(self, v16, &v33);
      v17 = v33;
      if (v33)
      {
        bzero(buf, 0x2C0uLL);
        memset(v31, 0, sizeof(v31));
        v32 = 1;
        sub_1006E72AC(botCopy, v24);
        (*(*v17 + 288))(buf, v17, v31, v15, v24);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v28[24] == 1)
        {
          v35 = v28;
          sub_1000087B4(&v35);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        TMClientInfo::~TMClientInfo(v31);
        v18 = [[CTLazuliChatBotRenderInformationData alloc] initWithReflection:buf];
        completionCopy[2](completionCopy, v18, 0);

        if (v46 == 1)
        {
          if (v45 == 1 && v44 < 0)
          {
            operator delete(v43);
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }

          if (v38[24] == 1)
          {
            v24[0] = v38;
            sub_100191E28(v24);
          }

          sub_1006FA044(buf);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v22 = *&v37[4];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10177AE08();
        }

        *buf = 5;
        v37[0] = 1;
        v23 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, 0, v23);
      }

      if (v34)
      {
        sub_100004A34(v34);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v19 = *&v37[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      v37[0] = 1;
      v20 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v20);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = *&v37[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information from cache", buf, 2u);
    }
  }
}

- (void)fetchRenderInformation:(id)information forChatBot:(id)bot withOperationID:(id)d completion:(id)completion
{
  informationCopy = information;
  botCopy = bot;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (informationCopy && botCopy)
    {
      v14 = [botCopy uri];
      v15 = v14;
      if (dCopy && v14)
      {
        uuid = [dCopy uuid];

        if (uuid)
        {
          objc_msgSend_getLogContext(self);
          v17 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [informationCopy slotID];
            v18 = CTSubscriptionSlotAsString();
            v19 = [botCopy uri];
            uuid2 = [dCopy uuid];
            *buf = 136315651;
            *&buf[4] = v18;
            *&buf[12] = 2113;
            *&buf[14] = v19;
            v41 = 2113;
            v42 = uuid2;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchRenderInformation [slot: %s, destination: %{private}@, operationID: %{private}@]", buf, 0x20u);
          }

          v21 = sub_100018A64([informationCopy slotID]);
          v38 = 0;
          v39 = 0;
          sub_1006E5FC4(self, v22, &v38);
          v23 = v38;
          if (v38)
          {
            v37 = 0;
            memset(v35, 0, sizeof(v35));
            v36 = 1;
            sub_1006E72AC(botCopy, buf);
            uuid3 = [dCopy uuid];
            v25 = uuid3;
            sub_10000501C(__p, [uuid3 UTF8String]);
            v26 = (*(*v23 + 280))(v23, v35, v21, buf, __p);
            LODWORD(v37) = v26;
            BYTE4(v37) = BYTE4(v26);
            if (v34 < 0)
            {
              operator delete(__p[0]);
            }

            if (v46 < 0)
            {
              operator delete(v45);
            }

            if (v44[24] == 1)
            {
              __p[0] = v44;
              sub_1000087B4(__p);
            }

            if (v43 < 0)
            {
              operator delete(v42);
            }

            if (SHIBYTE(v41) < 0)
            {
              operator delete(*buf);
            }

            TMClientInfo::~TMClientInfo(v35);
            if ((v26 & 0x100000000) != 0)
            {
              v32 = sub_100A99330(&v37);
              completionCopy[2](completionCopy, v32);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v30 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_10177AE3C();
            }

            *buf = 5;
            buf[4] = 1;
            v31 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v31);
          }

          if (v39)
          {
            sub_100004A34(v39);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v29 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v29);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information", buf, 2u);
    }
  }

LABEL_28:
}

- (void)getSystemConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    if (configurationCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *(v22 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [configurationCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        v22[0] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] getSystemConfiguration: [slot %s]", buf, 0xCu);
      }

      v18 = 0;
      v19 = 0;
      sub_1006E5EC0(self, v9, &v18);
      v11 = v18;
      if (v18)
      {
        v12 = sub_100018A64([configurationCopy slotID]);
        bzero(buf, 0x208uLL);
        (*(*v11 + 64))(buf, v11, v12);
        v13 = [[CTLazuliSystemConfiguration alloc] initWithReflection:buf];
        completionCopy[2](completionCopy, v13, 0);

        if (v46 < 0)
        {
          operator delete(__p);
        }

        if (v44[24] == 1)
        {
          v20 = v44;
          sub_1000087B4(&v20);
          if (v43 < 0)
          {
            operator delete(v42);
          }
        }

        if (v41 == 1)
        {
          if (v40 == 1 && v39 < 0)
          {
            operator delete(v38);
          }

          if (v37 == 1 && v36 < 0)
          {
            operator delete(v35);
          }

          if (v34 == 1 && v33 < 0)
          {
            operator delete(v32);
          }

          if (v31 == 1 && v30 < 0)
          {
            operator delete(v29);
          }

          if (v28 == 1 && v27 < 0)
          {
            operator delete(v26);
          }
        }

        if (v25 == 1 && v24 == 1 && v23 < 0)
        {
          operator delete(*(&v22[6] + 4));
        }
      }

      else
      {
        v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        (completionCopy)[2](completionCopy, 0, v17);
      }

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v15 = *(v22 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      LOBYTE(v22[0]) = 1;
      v16 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v16);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v14 = *(v22 + 4);
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Invalid completion block while getting system configuration information", buf, 2u);
    }
  }
}

- (void)retrieveMessage:(id)message withMessageID:(id)d completion:(id)completion
{
  messageCopy = message;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && dCopy && ([dCopy uuid], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      objc_msgSend_getLogContext(self);
      v12 = *(v35 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [dCopy uuid];
        *buf = 138543362;
        v35[0] = uuid;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] retrieveMessage [identifier: %{public}@]", buf, 0xCu);
      }

      v14 = sub_100018A64([messageCopy slotID]);
      v32 = 0;
      v33 = 0;
      sub_1006E5FC4(self, v15, &v32);
      v16 = v32;
      if (v32)
      {
        bzero(buf, 0x468uLL);
        memset(v30, 0, sizeof(v30));
        v31 = 1;
        sub_1006E8724(dCopy, v25);
        (*(*v16 + 168))(buf, v16, v30, v14, v25);
        if (v29 == 1 && v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        TMClientInfo::~TMClientInfo(v30);
        if (v48)
        {
          v17 = [CTLazuliMessageEnvelope alloc];
          if ((v48 & 1) == 0)
          {
            sub_1000D1644();
          }

          v18 = [v17 initWithReflection:buf];
          completionCopy[2](completionCopy, v18, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = v25[1];
          ctu::OsLogContext::~OsLogContext(v25);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10177AE70();
          }

          completionCopy[2](completionCopy, 0, 0);
        }

        if (v48 == 1)
        {
          sub_1006A9CB8(&v47);
          if (v46 == 1 && v45 < 0)
          {
            operator delete(v44);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          if (v39[24] == 1)
          {
            v25[0] = v39;
            sub_1000087B4(v25);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          if (v36 < 0)
          {
            operator delete(*(v35 + 4));
          }
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v22 = *(v35 + 4);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10177AEA4();
        }

        *buf = 5;
        LOBYTE(v35[0]) = 1;
        v23 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, 0, v23);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v19 = *(v35 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      LOBYTE(v35[0]) = 1;
      v20 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v20);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = *(v35 + 4);
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Invalid completion block while retrieving message", buf, 2u);
    }
  }
}

- (void)retrieveAllIncomingMessageIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dsCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [dsCopy slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] retrieveAllIncomingMessageIDs: [slot: %s]", buf, 0xCu);
      }

      sub_100018A64([dsCopy slotID]);
      v18 = 0;
      v19 = 0;
      sub_1006E5E0C(self, &v18, v10);
      if (v18)
      {
        *buf = 0u;
        v22 = 0u;
        (*(*v18 + 200))(buf);
        if (BYTE8(v22))
        {
          v11 = [CTLazuliMessageIDList alloc];
          if ((BYTE8(v22) & 1) == 0)
          {
            sub_1000D1644();
          }

          v12 = [v11 initWithReflection:buf];
          completionCopy[2](completionCopy, v12, 0);
        }

        else
        {
          completionCopy[2](completionCopy, 0, 0);
        }

        if (BYTE8(v22) == 1)
        {
          v20 = buf;
          sub_1006ACCB8(&v20);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AED8();
        }

        *buf = 5;
        buf[4] = 1;
        v17 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, 0, v17);
      }

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v14 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v15 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177AF0C();
    }
  }
}

- (void)acknowledgeIncomingMessages:(id)messages withMessageIDList:(id)list completion:(id)completion
{
  messagesCopy = messages;
  listCopy = list;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messagesCopy && listCopy)
    {
      objc_msgSend_getLogContext(self);
      v11 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [messagesCopy slotID];
        v12 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] acknowledgeIncomingMessages: [slot: %s]", buf, 0xCu);
      }

      v13 = sub_100018A64([messagesCopy slotID]);
      v31 = 0;
      v32 = 0;
      sub_1006E5E0C(self, &v31, v14);
      if (v31)
      {
        memset(v30, 0, sizeof(v30));
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        list = [listCopy list];
        v16 = [list countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v16)
        {
          v17 = *v27;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(list);
              }

              sub_1006E8724(*(*(&v26 + 1) + 8 * i), buf);
              sub_1006E9190(v30, buf);
              if (v36 == 1 && v35 < 0)
              {
                operator delete(__p);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            v16 = [list countByEnumeratingWithState:&v26 objects:v37 count:16];
          }

          while (v16);
        }

        *buf = 0;
        v19 = (*(*v31 + 208))(v31, v13, v30);
        *buf = v19;
        buf[4] = BYTE4(v19);
        if ((v19 & 0x100000000) != 0)
        {
          v25 = sub_100A99330(buf);
          completionCopy[2](completionCopy, v25);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        *buf = v30;
        sub_1006ACCB8(buf);
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v23 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10177AF40();
        }

        *buf = 5;
        buf[4] = 1;
        v24 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v24);
      }

      if (v32)
      {
        sub_100004A34(v32);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v21 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v22 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v22);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v20 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10177AF74();
    }
  }
}

- (void)discoverCapabilities:(id)capabilities forDestination:(id)destination completion:(id)completion
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  completionCopy = completion;
  if (completionCopy)
  {
    if (capabilitiesCopy)
    {
      if (destinationCopy)
      {
        v11 = [destinationCopy uri];

        if (v11)
        {
          objc_msgSend_getLogContext(self);
          v12 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            [capabilitiesCopy slotID];
            v13 = CTSubscriptionSlotAsString();
            v14 = [destinationCopy uri];
            *buf = 136315395;
            *&buf[4] = v13;
            *&buf[12] = 2113;
            *&buf[14] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] discoverCapabilities [slot: %s, destination: %{private}@]", buf, 0x16u);
          }

          v15 = sub_100018A64([capabilitiesCopy slotID]);
          v30 = 0;
          v31 = 0;
          sub_1006E5E0C(self, &v30, v16);
          if (!v30)
          {
            objc_msgSend_getLogContext(self);
            v21 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10177AFA8();
            }

            *buf = 5;
            buf[4] = 1;
            v22 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v22);

            goto LABEL_34;
          }

          v28[0] = 0;
          v28[1] = 0;
          v29 = 0;
          sub_100A972E8(v28);
          v27 = 0;
          v17 = v30;
          sub_1006E72AC(destinationCopy, buf);
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(__p, v28[0], v28[1]);
          }

          else
          {
            *__p = *v28;
            v26 = v29;
          }

          v23 = (*(*v17 + 128))(v17, v15, buf, __p);
          LODWORD(v27) = v23;
          BYTE4(v27) = BYTE4(v23);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          if (v36[24] == 1)
          {
            __p[0] = v36;
            sub_1000087B4(__p);
          }

          if (v35 < 0)
          {
            operator delete(v34);
          }

          if (v33 < 0)
          {
            operator delete(*buf);
            if ((v23 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }
          }

          else if ((v23 & 0x100000000) == 0)
          {
LABEL_29:
            completionCopy[2](completionCopy, 0);
            goto LABEL_32;
          }

          v24 = sub_100A99330(&v27);
          completionCopy[2](completionCopy, v24);

LABEL_32:
          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28[0]);
          }

LABEL_34:
          if (v31)
          {
            sub_100004A34(v31);
          }

          goto LABEL_36;
        }
      }
    }

    objc_msgSend_getLogContext(self);
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v19 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v19);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v20 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10177AFDC();
    }
  }

LABEL_36:
}

- (void)fetchRemoteCapabilities:(id)capabilities forDestination:(id)destination withOptions:(id)options withOperationID:(id)d completion:(id)completion
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  optionsCopy = options;
  dCopy = d;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177B078();
    }

    goto LABEL_19;
  }

  if (!capabilitiesCopy || !destinationCopy)
  {
    goto LABEL_16;
  }

  v17 = [destinationCopy uri];
  v18 = v17;
  if (!dCopy || !optionsCopy || !v17)
  {

    goto LABEL_16;
  }

  uuid = [dCopy uuid];

  if (!uuid)
  {
LABEL_16:
    objc_msgSend_getLogContext(self);
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v30 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v30);

    goto LABEL_19;
  }

  objc_msgSend_getLogContext(self);
  v20 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [capabilitiesCopy slotID];
    v40 = CTSubscriptionSlotAsString();
    v21 = [destinationCopy uri];
    type = [optionsCopy type];
    uuid2 = [dCopy uuid];
    *buf = 136315907;
    *&buf[4] = v40;
    *&buf[12] = 2113;
    *&buf[14] = v21;
    v51 = 2048;
    v52 = type;
    v53 = 2113;
    v54 = uuid2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchRemoteCapabilities [slot: %s, destination: %{private}@, options: %ld, operationID: %{private}@]", buf, 0x2Au);
  }

  v24 = sub_100018A64([capabilitiesCopy slotID]);
  type2 = [optionsCopy type];
  if (!type2)
  {
    v27 = 0;
    goto LABEL_21;
  }

  if (type2 == 2)
  {
    v27 = 2;
LABEL_21:
    v47 = 0;
    v48 = 0;
    sub_1006E5FC4(self, v26, &v47);
    v31 = v47;
    if (v47)
    {
      v46 = v27;
      v44[0] = 0;
      v44[1] = 0;
      v45 = 0;
      uuid3 = [dCopy uuid];
      v33 = uuid3;
      sub_10000501C(v44, [uuid3 UTF8String]);

      v43 = 0;
      memset(v41, 0, sizeof(v41));
      v42 = 1;
      sub_1006E72AC(destinationCopy, buf);
      v34 = (*(*v31 + 224))(v31, v41, v24, buf, v44, &v46);
      LODWORD(v43) = v34;
      BYTE4(v43) = BYTE4(v34);
      if (v58 < 0)
      {
        operator delete(__p);
      }

      if (v56[24] == 1)
      {
        v49 = v56;
        sub_1000087B4(&v49);
      }

      if (v55 < 0)
      {
        operator delete(v52);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(*buf);
      }

      TMClientInfo::~TMClientInfo(v41);
      if ((v34 & 0x100000000) != 0)
      {
        v39 = sub_100A99330(&v43);
        completionCopy[2](completionCopy, v39);
      }

      else
      {
        completionCopy[2](completionCopy, 0);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v37 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10177B010();
      }

      *buf = 5;
      buf[4] = 1;
      v38 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v38);
    }

    if (v48)
    {
      sub_100004A34(v48);
    }

    goto LABEL_19;
  }

  objc_msgSend_getLogContext(self);
  v35 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_10177B044();
  }

  *buf = -1;
  buf[4] = 1;
  v36 = sub_100A99330(buf);
  completionCopy[2](completionCopy, v36);

LABEL_19:
}

- (void)discoverRemoteCapabilities:(id)capabilities forDestination:(id)destination withOperationID:(id)d completion:(id)completion
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (capabilitiesCopy && destinationCopy)
    {
      v14 = [destinationCopy uri];
      v15 = v14;
      if (dCopy && v14)
      {
        uuid = [dCopy uuid];

        if (uuid)
        {
          objc_msgSend_getLogContext(self);
          v17 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [capabilitiesCopy slotID];
            v18 = CTSubscriptionSlotAsString();
            v19 = [destinationCopy uri];
            uuid2 = [dCopy uuid];
            *buf = 136315651;
            *&buf[4] = v18;
            *&buf[12] = 2113;
            *&buf[14] = v19;
            v40 = 2113;
            v41 = uuid2;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] discoverRemoteCapabilities [slot: %s, destination: %{private}@, operationID: %{private}@]", buf, 0x20u);
          }

          v21 = sub_100018A64([capabilitiesCopy slotID]);
          v36 = 0;
          v37 = 0;
          sub_1006E5E0C(self, &v36, v22);
          if (v36)
          {
            v34[0] = 0;
            v34[1] = 0;
            v35 = 0;
            uuid3 = [dCopy uuid];
            v24 = uuid3;
            sub_10000501C(v34, [uuid3 UTF8String]);

            v33 = 0;
            v25 = v36;
            sub_1006E72AC(destinationCopy, buf);
            v26 = (*(*v25 + 128))(v25, v21, buf, v34);
            LODWORD(v33) = v26;
            BYTE4(v33) = BYTE4(v26);
            if (v45 < 0)
            {
              operator delete(__p);
            }

            if (v43[24] == 1)
            {
              v38 = v43;
              sub_1000087B4(&v38);
            }

            if (v42 < 0)
            {
              operator delete(v41);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(*buf);
            }

            if ((v26 & 0x100000000) != 0)
            {
              v32 = sub_100A99330(&v33);
              completionCopy[2](completionCopy, v32);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(v34[0]);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v30 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_10177AFA8();
            }

            *buf = 5;
            buf[4] = 1;
            v31 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v31);
          }

          if (v37)
          {
            sub_100004A34(v37);
          }

          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v29 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v29);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177AFDC();
    }
  }

LABEL_26:
}

- (void)readCachedCapabilities:(id)capabilities forDestination:(id)destination completion:(id)completion
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  completionCopy = completion;
  if (completionCopy)
  {
    if (capabilitiesCopy && destinationCopy && ([destinationCopy uri], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      objc_msgSend_getLogContext(self);
      v12 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [capabilitiesCopy slotID];
        v13 = CTSubscriptionSlotAsString();
        v14 = [destinationCopy uri];
        *buf = 136315395;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] readCachedCapabilities [slot: %s, destination: %{private}@]", buf, 0x16u);
      }

      v15 = sub_100018A64([capabilitiesCopy slotID]);
      v33 = 0;
      v34 = 0;
      sub_1006E5E0C(self, &v33, v16);
      v17 = v33;
      if (v33)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v37 = 0u;
        memset(v38, 0, sizeof(v38));
        memset(buf, 0, sizeof(buf));
        sub_1006E72AC(destinationCopy, v26);
        (*(*v17 + 144))(buf, v17, v15, v26);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v30[24] == 1)
        {
          v35 = v30;
          sub_1000087B4(&v35);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (BYTE8(v49))
        {
          v18 = [CTLazuliCapabilitiesInformation alloc];
          if ((BYTE8(v49) & 1) == 0)
          {
            sub_1000D1644();
          }

          v19 = [v18 initWithReflection:buf];
          completionCopy[2](completionCopy, v19, 0);
        }

        else
        {
          completionCopy[2](completionCopy, 0, 0);
        }

        if (BYTE8(v49) == 1)
        {
          if (v49 == 1 && SHIBYTE(v48) < 0)
          {
            operator delete(*(&v47 + 1));
          }

          if (BYTE8(v45) == 1)
          {
            v26[0] = &v44;
            sub_1000087B4(v26);
          }

          if (v43 == 1 && SHIBYTE(v42) < 0)
          {
            operator delete(*(&v41 + 1));
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(*(&v39 + 1));
          }

          if (v39 == 1)
          {
            v26[0] = &v38[8];
            sub_1000087B4(v26);
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(*&buf[24]);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v24 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10177AFA8();
        }

        *buf = 0;
        buf[4] = 1;
        v25 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, 0, v25);
      }

      if (v34)
      {
        sub_100004A34(v34);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v21 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v21);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177B0AC();
    }

    *buf = 5;
    buf[4] = 1;
    v23 = sub_100A99330(buf);
    MEMORY[0x10](0, 0, v23);
  }
}

- (void)sendDispositionNotificationMessage:(id)message to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy)
    {
      v20 = [toCopy uri];
      v21 = v20;
      if (dCopy && v20)
      {
        uuid = [dCopy uuid];
        v23 = uuid;
        if (iDCopy && uuid)
        {
          uuid2 = [iDCopy uuid];

          if (uuid2)
          {
            objc_msgSend_getLogContext(self);
            v25 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              [messageCopy slotID];
              v41 = CTSubscriptionSlotAsString();
              v26 = "true";
              if (!securityCopy)
              {
                v26 = "false";
              }

              v42 = [toCopy uri];
              uuid3 = [dCopy uuid];
              uuid4 = [iDCopy uuid];
              *buf = 136316419;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v39;
              v69 = 2113;
              v70 = v42;
              v71 = 2114;
              v72 = uuid3;
              v73 = 2048;
              dispositionCopy = disposition;
              v75 = 2114;
              v76 = uuid4;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDispositionNotificationMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, type: %ld, forMessageID: %{public}@]", buf, 0x3Eu);
            }

            v28 = sub_100018A64([messageCopy slotID]);
            v66 = 0;
            v67 = 0;
            sub_1006E5FC4(self, v29, &v66);
            v30 = v66;
            if (v66)
            {
              v65 = 0;
              if (disposition == 2)
              {
                v31 = 2;
              }

              else
              {
                v31 = -1;
              }

              v63 = 0u;
              v64 = 0u;
              if (!disposition)
              {
                v31 = 0;
              }

              v61 = 0uLL;
              v62 = 0uLL;
              v59 = 0uLL;
              v60 = 0uLL;
              LODWORD(v59) = v31;
              sub_1006E8724(iDCopy, &v59 + 8);
              v58 = 0;
              memset(v56, 0, sizeof(v56));
              v57 = 1;
              sub_1006E72AC(toCopy, v49);
              sub_1006E8724(dCopy, v44);
              buf[0] = securityCopy != 0;
              buf[8] = 0;
              v77 = 0;
              v32 = (*(*v30 + 72))(v30, v56, v28, v49, v44, &v59, buf);
              LODWORD(v58) = v32;
              BYTE4(v58) = BYTE4(v32);
              if (v77 == 1)
              {
                sub_1002AF7A0(&buf[16]);
              }

              if (v48 == 1 && v47 < 0)
              {
                operator delete(__p);
              }

              if (v45 < 0)
              {
                operator delete(v44[0]);
              }

              if (v55 < 0)
              {
                operator delete(v54);
              }

              if (v53[24] == 1)
              {
                *buf = v53;
                sub_1000087B4(buf);
              }

              if (v52 < 0)
              {
                operator delete(v51);
              }

              if (v50 < 0)
              {
                operator delete(v49[0]);
              }

              TMClientInfo::~TMClientInfo(v56);
              if ((v32 & 0x100000000) != 0)
              {
                v38 = sub_100A99330(&v58);
                completionCopy[2](completionCopy, v38);
              }

              else
              {
                completionCopy[2](completionCopy, 0);
              }

              if (v65 == 1 && SHIBYTE(v63) < 0)
              {
                operator delete(*(&v62 + 1));
              }

              if (SHIBYTE(v60) < 0)
              {
                operator delete(*(&v59 + 1));
              }
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v36 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_10177B0E0();
              }

              *buf = 5;
              buf[4] = 1;
              v37 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v37);
            }

            if (v67)
            {
              sub_100004A34(v67);
            }

            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }
    }

LABEL_40:
    objc_msgSend_getLogContext(self);
    v34 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v35 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v35);

    goto LABEL_43;
  }

  objc_msgSend_getLogContext(self);
  v33 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_10177B114();
  }

LABEL_43:
}

- (void)sendFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  informationCopy = information;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy)
    {
      v20 = [toCopy uri];
      v21 = v20;
      if (dCopy && v20)
      {
        uuid = [dCopy uuid];

        if (informationCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [messageCopy slotID];
            v39 = CTSubscriptionSlotAsString();
            if (securityCopy)
            {
              v24 = "true";
            }

            else
            {
              v24 = "false";
            }

            v40 = [toCopy uri];
            uuid2 = [dCopy uuid];
            *buf = 136315907;
            *&buf[4] = v39;
            *&buf[12] = 2080;
            *&buf[14] = v24;
            v87 = 2113;
            v88 = v40;
            LOWORD(v89[0]) = 2114;
            *(v89 + 2) = uuid2;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendFileTransferMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@]", buf, 0x2Au);
          }

          v26 = sub_100018A64([messageCopy slotID]);
          v81 = 0;
          v80 = 0;
          sub_1006E5E0C(self, &v80, v27);
          if (v80)
          {
            v79 = 0;
            v78 = 0;
            sub_1006E5FC4(self, v28, &v78);
            v29 = v78;
            if (v78)
            {
              bzero(v57, 0x208uLL);
              sub_1006EB6AC(informationCopy, v57);
              v56 = 0;
              memset(v54, 0, sizeof(v54));
              v55 = 1;
              sub_1006E72AC(toCopy, v47);
              sub_1006E8724(dCopy, v42);
              sub_1001907C0(buf, v57);
              sub_100190C40(v105, v76);
              sub_100190324(v106, v77);
              v108 = 0;
              v109 = 0;
              metaData = [informationCopy metaData];
              sub_1006EBDBC(metaData, v110);
              LOBYTE(v82) = securityCopy != 0;
              v83 = 0;
              v85 = 0;
              v30 = (*(*v29 + 40))(v29, v54, v26, v47, v42, buf, &v82);
              LODWORD(v56) = v30;
              BYTE4(v56) = BYTE4(v30);
              if (v85 == 1)
              {
                sub_1002AF7A0(&v84);
              }

              if (v110[24] == 1)
              {
                v82 = v110;
                sub_100190608(&v82);
              }

              if (v109 == 1)
              {
                v82 = &v108;
                sub_10019029C(&v82);
              }

              if (v107 == 1)
              {
                v82 = v106;
                sub_100190608(&v82);
              }

              sub_100190D9C(v105);
              if (v104 == 1)
              {
                if (v103 == 1)
                {
                  if (__p)
                  {
                    v102 = __p;
                    operator delete(__p);
                  }

                  if (v100 == 1 && v98)
                  {
                    v99 = v98;
                    operator delete(v98);
                  }

                  if (v97 == 1 && v95)
                  {
                    v96 = v95;
                    operator delete(v95);
                  }

                  if (v93)
                  {
                    v94 = v93;
                    operator delete(v93);
                  }
                }

                if (v92 < 0)
                {
                  operator delete(v91);
                }

                if (v90 < 0)
                {
                  operator delete(v89[0]);
                }

                if (SHIBYTE(v88) < 0)
                {
                  operator delete(*&buf[8]);
                }
              }

              if (v46 == 1 && v45 < 0)
              {
                operator delete(v44);
              }

              if (v43 < 0)
              {
                operator delete(v42[0]);
              }

              if (v53 < 0)
              {
                operator delete(v52);
              }

              if (v51[24] == 1)
              {
                *buf = v51;
                sub_1000087B4(buf);
              }

              if (v50 < 0)
              {
                operator delete(v49);
              }

              if (v48 < 0)
              {
                operator delete(v47[0]);
              }

              TMClientInfo::~TMClientInfo(v54);
              if (BYTE4(v56) == 1)
              {
                v31 = sub_100A99330(&v56);
                completionCopy[2](completionCopy, v31);
              }

              else
              {
                completionCopy[2](completionCopy, 0);
              }

              if (v77[24] == 1)
              {
                *buf = v77;
                sub_100190608(buf);
              }

              sub_100190D9C(v76);
              if (v75 == 1)
              {
                if (v74 == 1)
                {
                  if (v72)
                  {
                    v73 = v72;
                    operator delete(v72);
                  }

                  if (v71 == 1 && v69)
                  {
                    v70 = v69;
                    operator delete(v69);
                  }

                  if (v68 == 1 && v66)
                  {
                    v67 = v66;
                    operator delete(v66);
                  }

                  if (v64)
                  {
                    v65 = v64;
                    operator delete(v64);
                  }
                }

                if (v63 < 0)
                {
                  operator delete(v62);
                }

                if (v61 < 0)
                {
                  operator delete(v60);
                }

                if (v59 < 0)
                {
                  operator delete(v58);
                }
              }
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v37 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                sub_10177B148();
              }

              *buf = 5;
              buf[4] = 1;
              v38 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v38);
            }

            if (v79)
            {
              sub_100004A34(v79);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v35 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10177B17C();
            }

            *buf = 5;
            buf[4] = 1;
            v36 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v36);
          }

          if (v81)
          {
            sub_100004A34(v81);
          }

          goto LABEL_62;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v33 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v34 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v34);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177B1B0();
    }
  }

LABEL_62:
}

- (void)sendTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  withMessageCopy = withMessage;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy)
    {
      v20 = [toCopy uri];
      v21 = v20;
      if (dCopy && v20)
      {
        uuid = [dCopy uuid];
        v23 = uuid;
        if (withMessageCopy && uuid)
        {
          content = [withMessageCopy content];

          if (content)
          {
            v25 = sub_100018A64([messageCopy slotID]);
            v70 = 0;
            v71 = 0;
            sub_1006E5E0C(self, &v70, v26);
            if (v70)
            {
              v68 = 0;
              v69 = 0;
              sub_1006E5FC4(self, v27, &v68);
              v28 = v68;
              if (v68)
              {
                v48 = v25;
                objc_msgSend_getLogContext(self);
                v29 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  [messageCopy slotID];
                  v46 = CTSubscriptionSlotAsString();
                  v30 = "true";
                  if (!securityCopy)
                  {
                    v30 = "false";
                  }

                  v45 = v30;
                  v47 = [toCopy uri];
                  uuid2 = [dCopy uuid];
                  content2 = [withMessageCopy content];
                  *buf = 136316419;
                  *&buf[4] = v46;
                  *&buf[12] = 2080;
                  *&buf[14] = v45;
                  v73 = 2113;
                  v74 = v47;
                  v75 = 2114;
                  v76 = uuid2;
                  v77 = 2160;
                  v78 = 1752392040;
                  v79 = 2117;
                  v80 = content2;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendTextMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, content: %{sensitive, mask.hash}@]", buf, 0x3Eu);
                }

                memset(v66, 0, sizeof(v66));
                v67 = 1;
                sub_1006E72AC(toCopy, v59);
                sub_1006E8724(dCopy, v54);
                content3 = [withMessageCopy content];
                v34 = content3;
                sub_10000501C(__p, [content3 UTF8String]);
                v51 = 0;
                v52 = 0;
                metaData = [withMessageCopy metaData];
                sub_1006EBDBC(metaData, v53);
                buf[0] = securityCopy != 0;
                buf[8] = 0;
                v81 = 0;
                v36 = (*(*v28 + 24))(v28, v66, v48, v59, v54, __p, buf);
                if (v81 == 1)
                {
                  sub_1002AF7A0(&buf[16]);
                }

                if (v53[24] == 1)
                {
                  *buf = v53;
                  sub_100190608(buf);
                }

                if (v52 == 1)
                {
                  *buf = &v51;
                  sub_10019029C(buf);
                }

                if (v50 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v58 == 1 && v57 < 0)
                {
                  operator delete(v56);
                }

                if (v55 < 0)
                {
                  operator delete(v54[0]);
                }

                if (v65 < 0)
                {
                  operator delete(v64);
                }

                if (v63[24] == 1)
                {
                  *buf = v63;
                  sub_1000087B4(buf);
                }

                if (v62 < 0)
                {
                  operator delete(v61);
                }

                if (v60 < 0)
                {
                  operator delete(v59[0]);
                }

                TMClientInfo::~TMClientInfo(v66);
                if ((v36 & 0x100000000) != 0)
                {
                  *buf = v36;
                  buf[4] = 1;
                  v44 = sub_100A99330(buf);
                  completionCopy[2](completionCopy, v44);
                }

                else
                {
                  completionCopy[2](completionCopy, 0);
                }
              }

              else
              {
                objc_msgSend_getLogContext(self);
                v42 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B1E4();
                }

                *buf = 5;
                buf[4] = 1;
                v43 = sub_100A99330(buf);
                completionCopy[2](completionCopy, v43);
              }

              if (v69)
              {
                sub_100004A34(v69);
              }
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v40 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_10177B218();
              }

              *buf = 5;
              buf[4] = 1;
              v41 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v41);
            }

            if (v71)
            {
              sub_100004A34(v71);
            }

            goto LABEL_45;
          }

          goto LABEL_42;
        }
      }
    }

LABEL_42:
    objc_msgSend_getLogContext(self);
    v38 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v39 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v39);

    goto LABEL_45;
  }

  objc_msgSend_getLogContext(self);
  v37 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_10177B24C();
  }

LABEL_45:
}

- (void)sendComposingIndicator:(id)indicator to:(id)to withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security withError:(id *)error
{
  indicatorCopy = indicator;
  toCopy = to;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
  v71 = 0;
  v72 = 0;
  sub_1006E5FC4(self, v19, &v71);
  v20 = v71;
  if (v71)
  {
    if (indicatorCopy && toCopy)
    {
      v21 = [toCopy uri];
      v22 = v21;
      if (dCopy && v21)
      {
        uuid = [dCopy uuid];

        if (indicationCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v24 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          log = v24;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            [indicatorCopy slotID];
            v50 = CTSubscriptionSlotAsString();
            v25 = "true";
            if (!securityCopy)
            {
              v25 = "false";
            }

            v49 = v25;
            v53 = [toCopy uri];
            uuid2 = [dCopy uuid];
            refreshTime = [indicationCopy refreshTime];
            if (refreshTime)
            {
              refreshTime2 = [indicationCopy refreshTime];
              longValue = [refreshTime2 longValue];
            }

            else
            {
              longValue = -1;
            }

            active = [indicationCopy active];
            lastActive = [indicationCopy lastActive];
            if (lastActive)
            {
              lastActive2 = [indicationCopy lastActive];
              uTF8String = [lastActive2 UTF8String];
            }

            else
            {
              uTF8String = "";
            }

            *buf = 136316675;
            *&buf[4] = v50;
            *&buf[12] = 2080;
            *&buf[14] = v49;
            *&buf[22] = 2113;
            *&buf[24] = v53;
            *&buf[32] = 2114;
            *&buf[34] = uuid2;
            *&buf[42] = 2048;
            *&buf[44] = longValue;
            *&buf[52] = 1024;
            *&buf[54] = active;
            *&buf[58] = 2080;
            *&buf[60] = uTF8String;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendComposingIndicator [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, ind.refreshTime: %ld, ind.active: %d, ind.lastActive: %s]", buf, 0x44u);
            if (lastActive)
            {
            }

            if (refreshTime)
            {
            }
          }

          v55 = sub_100018A64([indicatorCopy slotID]);
          v80 = 0;
          memset(v79, 0, sizeof(v79));
          v78 = 0u;
          memset(buf, 0, sizeof(buf));
          refreshTime3 = [indicationCopy refreshTime];
          v32 = refreshTime3 == 0;

          if (!v32)
          {
            refreshTime4 = [indicationCopy refreshTime];
            longValue2 = [refreshTime4 longValue];
            if ((buf[8] & 1) == 0)
            {
              buf[8] = 1;
            }

            *buf = longValue2;
          }

          buf[16] = [indicationCopy active];
          lastActive3 = [indicationCopy lastActive];
          v36 = lastActive3 == 0;

          if (!v36)
          {
            lastActive4 = [indicationCopy lastActive];
            v38 = lastActive4;
            uTF8String2 = [lastActive4 UTF8String];
            sub_100184AD0(&buf[24], &uTF8String2);
          }

          contentType = [indicationCopy contentType];
          v40 = contentType == 0;

          if (!v40)
          {
            contentType2 = [indicationCopy contentType];
            v42 = contentType2;
            uTF8String2 = [contentType2 UTF8String];
            sub_100184AD0(&buf[56], &uTF8String2);
          }

          v70 = 0;
          memset(v68, 0, sizeof(v68));
          v69 = 1;
          sub_1006E72AC(toCopy, v61);
          sub_1006E8724(dCopy, v56);
          LOBYTE(uTF8String2) = securityCopy != 0;
          LOBYTE(v74) = 0;
          v76 = 0;
          v43 = (*(*v20 + 88))(v20, v68, v55, v61, v56, buf, &uTF8String2);
          LODWORD(v70) = v43;
          BYTE4(v70) = BYTE4(v43);
          if (v76 == 1)
          {
            sub_1002AF7A0(&v75);
          }

          if (v60 == 1 && v59 < 0)
          {
            operator delete(__p);
          }

          if (v57 < 0)
          {
            operator delete(v56[0]);
          }

          if (v67 < 0)
          {
            operator delete(v66);
          }

          if (v65[24] == 1)
          {
            uTF8String2 = v65;
            sub_1000087B4(&uTF8String2);
          }

          if (v64 < 0)
          {
            operator delete(v63);
          }

          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          TMClientInfo::~TMClientInfo(v68);
          if ((v43 & 0x100000000) != 0)
          {
            objc_msgSend_getLogContext(self);
            v44 = v74;
            ctu::OsLogContext::~OsLogContext(&uTF8String2);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_10177B280();
            }

            if (error)
            {
              *error = sub_100A99330(&v70);
            }
          }

          if (v80 == 1)
          {
            sub_1002AF7A0(&v79[8]);
          }

          if (v78 == 1 && (buf[79] & 0x80000000) != 0)
          {
            operator delete(*&buf[56]);
          }

          if (buf[48] == 1 && (buf[47] & 0x80000000) != 0)
          {
            operator delete(*&buf[24]);
          }

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    if (error)
    {
      *buf = 4;
      buf[4] = 1;
      v28 = sub_100A99330(buf);
      goto LABEL_22;
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177B2B4();
    }

    if (error)
    {
      *buf = 3;
      buf[4] = 1;
      v28 = sub_100A99330(buf);
LABEL_22:
      *error = v28;
    }
  }

LABEL_23:
  if (v72)
  {
    sub_100004A34(v72);
  }
}

- (void)revokeMessage:(id)message withRevokeData:(id)data withMessageID:(id)d completion:(id)completion
{
  messageCopy = message;
  dataCopy = data;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dataCopy)
    {
      if (dCopy)
      {
        uuid = [dCopy uuid];
        if (uuid)
        {
          destination = [dataCopy destination];
          if (destination)
          {
            messageID = [dataCopy messageID];
            if (messageID)
            {
              messageID2 = [dataCopy messageID];
              uuid2 = [messageID2 uuid];

              if (uuid2)
              {
                objc_msgSend_getLogContext(self);
                v19 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  [messageCopy slotID];
                  v20 = CTSubscriptionSlotAsString();
                  uuid3 = [dCopy uuid];
                  destination2 = [dataCopy destination];
                  messageID3 = [dataCopy messageID];
                  uuid4 = [messageID3 uuid];
                  *buf = 136315907;
                  *&buf[4] = v20;
                  *&buf[12] = 2114;
                  *&buf[14] = uuid3;
                  *&buf[22] = 2113;
                  *&buf[24] = destination2;
                  LOWORD(v52) = 2114;
                  *(&v52 + 2) = uuid4;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] revokeMessage [slot: %s, identifier: %{public}@, revoke.dst = %{private}@, revoke.messageID: %{public}@]", buf, 0x2Au);
                }

                v23 = sub_100018A64([messageCopy slotID]);
                v49 = 0;
                v50 = 0;
                sub_1006E5FC4(self, v24, &v49);
                v25 = v49;
                if (v49)
                {
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  memset(v53, 0, sizeof(v53));
                  v52 = 0u;
                  memset(buf, 0, sizeof(buf));
                  destination3 = [dataCopy destination];
                  v27 = [destination3 uri];
                  v28 = v27;
                  sub_10000501C(buf, [v27 UTF8String]);
                  v53[8] = 0;
                  LOBYTE(v54) = 0;
                  v55 = 0uLL;
                  *(&v54 + 1) = 0;
                  v52 = 0uLL;
                  *&buf[24] = 0;
                  v53[0] = 0;
                  messageID4 = [dataCopy messageID];
                  sub_1006E8724(messageID4, &v56);

                  v47 = 0u;
                  v48 = 0u;
                  v45 = 0u;
                  *__p = 0u;
                  *v43 = 0u;
                  v44 = 0u;
                  sub_1006E8724(dCopy, v43);
                  memset(v41, 0, sizeof(v41));
                  v42 = 1;
                  v30 = (*(*v25 + 272))(v25, v41, v23, buf, v43);
                  TMClientInfo::~TMClientInfo(v41);
                  if ((v30 & 0x100000000) != 0)
                  {
                    v39 = v30;
                    v40 = 1;
                    v36 = sub_100A99330(&v39);
                    completionCopy[2](completionCopy, v36);
                  }

                  else
                  {
                    completionCopy[2](completionCopy, 0);
                  }

                  if (BYTE8(v48) == 1 && SBYTE7(v47) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SBYTE7(v44) < 0)
                  {
                    operator delete(v43[0]);
                  }

                  if (BYTE8(v61) == 1 && SBYTE7(v60) < 0)
                  {
                    operator delete(v59);
                  }

                  if (SBYTE7(v57) < 0)
                  {
                    operator delete(v56);
                  }

                  if (SHIBYTE(v55) < 0)
                  {
                    operator delete(*(&v54 + 1));
                  }

                  if (v54 == 1)
                  {
                    v43[0] = &v53[8];
                    sub_1000087B4(v43);
                  }

                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(*&buf[24]);
                  }

                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }
                }

                else
                {
                  objc_msgSend_getLogContext(self);
                  v34 = *&buf[8];
                  ctu::OsLogContext::~OsLogContext(buf);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177B1E4();
                  }

                  *buf = 5;
                  buf[4] = 1;
                  v35 = sub_100A99330(buf);
                  completionCopy[2](completionCopy, v35);
                }

                if (v50)
                {
                  sub_100004A34(v50);
                }

                goto LABEL_20;
              }

              goto LABEL_17;
            }
          }
        }
      }
    }

LABEL_17:
    objc_msgSend_getLogContext(self);
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v33 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v33);

    goto LABEL_20;
  }

  objc_msgSend_getLogContext(self);
  v31 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10177B24C();
  }

LABEL_20:
}

- (void)sendGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy)
    {
      v20 = [toCopy uri];
      v21 = v20;
      if (dCopy && v20)
      {
        uuid = [dCopy uuid];

        if (pushCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [messageCopy slotID];
            v24 = CTSubscriptionSlotAsString();
            if (securityCopy)
            {
              v25 = "true";
            }

            else
            {
              v25 = "false";
            }

            v58 = [toCopy uri];
            uuid2 = [dCopy uuid];
            v52 = v25;
            v53 = v24;
            [pushCopy coordinates];
            v54 = longitude = "3$_5EEvRNS2_10RestModuleEOT_NS_17integral_constantIbLb0EEEEUlRKN3xpc6objectEE_NS8_ISS_EEFvSP_EEE";
            if (v54)
            {
              coordinates = [pushCopy coordinates];
              latitude = [coordinates latitude];
              [latitude doubleValue];
              v28 = v27;
            }

            else
            {
              v28 = 0x406FE00000000000;
            }

            coordinates2 = [pushCopy coordinates];
            if (coordinates2)
            {
              coordinates3 = [pushCopy coordinates];
              longitude = [coordinates3 longitude];
              [longitude doubleValue];
            }

            else
            {
              v33 = 0x406FE00000000000;
            }

            *buf = 136316419;
            *&buf[4] = v53;
            *&buf[12] = 2080;
            *&buf[14] = v52;
            v86 = 2113;
            v87 = v58;
            v88 = 2114;
            v89 = uuid2;
            v90 = 2048;
            v91 = v28;
            v92 = 2048;
            v93 = v33;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGeolocationMessage [slot: %s, security: %s, to: %{private}@, messageIdentifier: %{public}@, push.latitude: %{senstive}f, push.longitude: %{senstive}f]", buf, 0x3Eu);
            if (coordinates2)
            {
            }

            if (v54)
            {
            }
          }

          v59 = sub_100018A64([messageCopy slotID]);
          v83 = 0;
          v84 = 0;
          sub_1006E5FC4(self, v34, &v83);
          v35 = v83;
          if (v83)
          {
            *v81 = 0u;
            v82 = 0u;
            additionalDescription = [pushCopy additionalDescription];
            v37 = additionalDescription == 0;

            if (!v37)
            {
              additionalDescription2 = [pushCopy additionalDescription];
              v39 = additionalDescription2;
              *buf = [additionalDescription2 UTF8String];
              sub_100184AD0(v81, buf);
            }

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *v75 = 0u;
            v76 = 0u;
            coordinates4 = [pushCopy coordinates];
            longitude2 = [coordinates4 longitude];
            [longitude2 doubleValue];
            v74[0] = v40;
            coordinates5 = [pushCopy coordinates];
            latitude2 = [coordinates5 latitude];
            [latitude2 doubleValue];
            v74[1] = v43;
            sub_10006F264(v75, v81);
            LOBYTE(v77) = 0;
            BYTE8(v78) = 0;
            metaData = [pushCopy metaData];
            sub_1006EBDBC(metaData, &v79);

            memset(v72, 0, sizeof(v72));
            v73 = 1;
            sub_1006E72AC(toCopy, v65);
            sub_1006E8724(dCopy, v60);
            buf[0] = securityCopy != 0;
            buf[8] = 0;
            v94 = 0;
            v45 = (*(*v35 + 56))(v35, v72, v59, v65, v60, v74, buf);
            if (v94 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v64 == 1 && v63 < 0)
            {
              operator delete(__p);
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            if (v71 < 0)
            {
              operator delete(v70);
            }

            if (v69[24] == 1)
            {
              *buf = v69;
              sub_1000087B4(buf);
            }

            if (v68 < 0)
            {
              operator delete(v67);
            }

            if (v66 < 0)
            {
              operator delete(v65[0]);
            }

            TMClientInfo::~TMClientInfo(v72);
            if ((v45 & 0x100000000) != 0)
            {
              *buf = v45;
              buf[4] = 1;
              v48 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v48);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }

            if (BYTE8(v80) == 1)
            {
              *buf = &v79;
              sub_100190608(buf);
            }

            if (BYTE8(v78) == 1)
            {
              *buf = &v77;
              sub_10019029C(buf);
            }

            if (BYTE8(v76) == 1 && SBYTE7(v76) < 0)
            {
              operator delete(v75[0]);
            }

            if (BYTE8(v82) == 1 && SBYTE7(v82) < 0)
            {
              operator delete(v81[0]);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v46 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_10177B2E8();
            }

            *buf = 5;
            buf[4] = 1;
            v47 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v47);
          }

          if (v84)
          {
            sub_100004A34(v84);
          }

          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v31 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v31);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177B31C();
    }
  }

LABEL_20:
}

- (void)sendDeviceAction:(id)action to:(id)to withMessageID:(id)d withAction:(id)withAction completion:(id)completion
{
  actionCopy = action;
  toCopy = to;
  dCopy = d;
  withActionCopy = withAction;
  completionCopy = completion;
  if (completionCopy)
  {
    if (toCopy)
    {
      v17 = [toCopy uri];
      v18 = v17;
      if (dCopy && v17)
      {
        uuid = [dCopy uuid];

        if (withActionCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [actionCopy slotID];
            v21 = CTSubscriptionSlotAsString();
            v22 = [toCopy uri];
            uuid2 = [dCopy uuid];
            type = [withActionCopy type];
            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            v48 = 2114;
            v49 = uuid2;
            v50 = 2048;
            v51 = type;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDeviceAction [slot: %s, to: %@, messageIdentifier: %{public}@, type: %ld]", buf, 0x2Au);
          }

          v25 = sub_100018A64([actionCopy slotID]);
          v45 = 0;
          v46 = 0;
          sub_1006E5FC4(self, v26, &v45);
          v27 = v45;
          if (v45)
          {
            if ([withActionCopy type])
            {
              v28 = -1;
            }

            else
            {
              v28 = 0;
            }

            v44 = v28;
            v43 = 0;
            memset(v41, 0, sizeof(v41));
            v42 = 1;
            sub_1006E72AC(toCopy, buf);
            sub_1006E8724(dCopy, v36);
            v29 = (*(*v27 + 160))(v27, v41, v25, buf, v36, &v44);
            LODWORD(v43) = v29;
            BYTE4(v43) = BYTE4(v29);
            if (v40 == 1 && v39 < 0)
            {
              operator delete(__p);
            }

            if (v37 < 0)
            {
              operator delete(v36[0]);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53[24] == 1)
            {
              v36[0] = v53;
              sub_1000087B4(v36);
            }

            if (v52 < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*buf);
            }

            TMClientInfo::~TMClientInfo(v41);
            if ((v29 & 0x100000000) != 0)
            {
              v35 = sub_100A99330(&v43);
              completionCopy[2](completionCopy, v35);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v33 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10177B350();
            }

            *buf = 5;
            buf[4] = 1;
            v34 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v34);
          }

          if (v46)
          {
            sub_100004A34(v46);
          }

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v32 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v32);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177B384();
    }
  }

LABEL_34:
}

- (void)sendDeviceSettings:(id)settings to:(id)to withMessageID:(id)d withSetting:(id)setting completion:(id)completion
{
  settingsCopy = settings;
  toCopy = to;
  dCopy = d;
  settingCopy = setting;
  completionCopy = completion;
  if (completionCopy)
  {
    if (toCopy)
    {
      v17 = [toCopy uri];
      v18 = v17;
      if (dCopy && v17)
      {
        uuid = [dCopy uuid];

        if (settingCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [settingsCopy slotID];
            v21 = CTSubscriptionSlotAsString();
            v37 = [toCopy uri];
            uuid2 = [dCopy uuid];
            type = [settingCopy type];
            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v37;
            v48 = 2112;
            v49 = uuid2;
            v50 = 2048;
            v51 = type;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDeviceSettings [slot: %s, to: %@, identifier: %@, type: %ld]", buf, 0x2Au);
          }

          v24 = sub_100018A64([settingsCopy slotID]);
          v45 = 0;
          v46 = 0;
          sub_1006E5E0C(self, &v45, v25);
          if (v45)
          {
            type2 = [settingCopy type];
            if (type2)
            {
              v27 = -1;
            }

            else
            {
              v27 = 0;
            }

            if (type2 == 1)
            {
              v28 = 1;
            }

            else
            {
              v28 = v27;
            }

            v44 = 0;
            v29 = v45;
            sub_1006E72AC(toCopy, buf);
            sub_1006E8724(dCopy, v39);
            v38 = v28;
            v30 = (*(*v29 + 264))(v29, v24, buf, v39, &v38);
            LODWORD(v44) = v30;
            BYTE4(v44) = BYTE4(v30);
            if (v43 == 1 && v42 < 0)
            {
              operator delete(__p);
            }

            if (v40 < 0)
            {
              operator delete(v39[0]);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53[24] == 1)
            {
              v39[0] = v53;
              sub_1000087B4(v39);
            }

            if (v52 < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*buf);
            }

            if ((v30 & 0x100000000) != 0)
            {
              v36 = sub_100A99330(&v44);
              completionCopy[2](completionCopy, v36);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v34 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10177B3B8();
            }

            *buf = 5;
            buf[4] = 1;
            v35 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v35);
          }

          if (v46)
          {
            sub_100004A34(v46);
          }

          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v33 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v33);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177B3EC();
    }
  }

LABEL_37:
}

- (void)sendResponseForSuggestedReply:(id)reply to:(id)to withMessageID:(id)d response:(id)response completion:(id)completion
{
  replyCopy = reply;
  toCopy = to;
  dCopy = d;
  responseCopy = response;
  completionCopy = completion;
  if (completionCopy)
  {
    if (toCopy)
    {
      v17 = [toCopy uri];
      v18 = v17;
      if (dCopy && v17)
      {
        uuid = [dCopy uuid];

        if (responseCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [replyCopy slotID];
            v21 = CTSubscriptionSlotAsString();
            v46 = [toCopy uri];
            uuid2 = [dCopy uuid];
            displayText = [responseCopy displayText];
            if (displayText)
            {
              displayText2 = [responseCopy displayText];
            }

            else
            {
              displayText2 = &stru_101F6AFB8;
            }

            inReplyToID = [responseCopy inReplyToID];
            if (inReplyToID)
            {
              inReplyToID2 = [responseCopy inReplyToID];
              uuid3 = [inReplyToID2 uuid];
              if (uuid3)
              {
                v39 = uuid3;
                inReplyToID3 = [responseCopy inReplyToID];
                uuid4 = [inReplyToID3 uuid];
                LODWORD(uuid3) = 1;
              }

              else
              {
                v39 = 0;
                uuid4 = &stru_101F6AFB8;
              }
            }

            else
            {
              LODWORD(uuid3) = 0;
              uuid4 = &stru_101F6AFB8;
            }

            *buf = 136316163;
            *&buf[4] = v21;
            *&buf[12] = 2113;
            *&buf[14] = v46;
            v65 = 2114;
            v66 = uuid2;
            v67 = 2113;
            v68 = displayText2;
            v69 = 2114;
            *v70 = uuid4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendResponseForSuggestedReply [slot: %s, to: %{private}@, identifier: %{public}@, response.displayText: %{private}@, response.inReplyToID: %{public}@]", buf, 0x34u);
            if (uuid3)
            {
            }

            if (inReplyToID)
            {
            }

            if (displayText)
            {
            }
          }

          v27 = sub_100018A64([replyCopy slotID]);
          v62 = 0;
          v63 = 0;
          sub_1006E5FC4(self, v28, &v62);
          v29 = v62;
          if (v62)
          {
            memset(v60, 0, sizeof(v60));
            v61 = 1;
            sub_1006E72AC(toCopy, v53);
            sub_1006E8724(dCopy, v48);
            displayText3 = [responseCopy displayText];
            v30 = displayText3;
            sub_10000501C(buf, [displayText3 UTF8String]);
            postBackData = [responseCopy postBackData];
            data = [postBackData data];
            v32 = data;
            sub_10000501C(&v66, [data UTF8String]);
            inReplyToID4 = [responseCopy inReplyToID];
            sub_1006E8724(inReplyToID4, &v70[4]);
            v34 = (*(*v29 + 144))(v29, v60, v27, v53, v48, buf);
            if (v74 == 1 && v73 < 0)
            {
              operator delete(v72);
            }

            if (v71 < 0)
            {
              operator delete(*&v70[4]);
            }

            if ((v70[3] & 0x80000000) != 0)
            {
              operator delete(v66);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(*buf);
            }

            if (v52 == 1 && v51 < 0)
            {
              operator delete(__p);
            }

            if (v49 < 0)
            {
              operator delete(v48[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58);
            }

            if (v57[24] == 1)
            {
              *buf = v57;
              sub_1000087B4(buf);
            }

            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            TMClientInfo::~TMClientInfo(v60);
            if ((v34 & 0x100000000) != 0)
            {
              *buf = v34;
              buf[4] = 1;
              v37 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v37);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v35 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10177B420();
            }

            *buf = 5;
            buf[4] = 1;
            v36 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v36);
          }

          if (v63)
          {
            sub_100004A34(v63);
          }

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v24 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v24);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177B454();
    }
  }

LABEL_16:
}

- (void)sendResponseForSuggestedAction:(id)action to:(id)to withMessageID:(id)d response:(id)response completion:(id)completion
{
  actionCopy = action;
  toCopy = to;
  dCopy = d;
  responseCopy = response;
  completionCopy = completion;
  if (completionCopy)
  {
    if (toCopy)
    {
      v17 = [toCopy uri];
      v18 = v17;
      if (dCopy && v17)
      {
        uuid = [dCopy uuid];

        if (responseCopy && uuid)
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [actionCopy slotID];
            v21 = CTSubscriptionSlotAsString();
            v46 = [toCopy uri];
            uuid2 = [dCopy uuid];
            displayText = [responseCopy displayText];
            if (displayText)
            {
              displayText2 = [responseCopy displayText];
            }

            else
            {
              displayText2 = &stru_101F6AFB8;
            }

            inReplyToID = [responseCopy inReplyToID];
            if (inReplyToID)
            {
              inReplyToID2 = [responseCopy inReplyToID];
              uuid3 = [inReplyToID2 uuid];
              if (uuid3)
              {
                v39 = uuid3;
                inReplyToID3 = [responseCopy inReplyToID];
                uuid4 = [inReplyToID3 uuid];
                LODWORD(uuid3) = 1;
              }

              else
              {
                v39 = 0;
                uuid4 = &stru_101F6AFB8;
              }
            }

            else
            {
              LODWORD(uuid3) = 0;
              uuid4 = &stru_101F6AFB8;
            }

            *buf = 136316163;
            *&buf[4] = v21;
            *&buf[12] = 2113;
            *&buf[14] = v46;
            v65 = 2114;
            v66 = uuid2;
            v67 = 2113;
            v68 = displayText2;
            v69 = 2114;
            *v70 = uuid4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendResponseForSuggestedAction [slot: %s, to: %{private}@, identifier: %{public}@, response.displayText: %{private}@, response.inReplyToID: %{public}@]", buf, 0x34u);
            if (uuid3)
            {
            }

            if (inReplyToID)
            {
            }

            if (displayText)
            {
            }
          }

          v27 = sub_100018A64([actionCopy slotID]);
          v62 = 0;
          v63 = 0;
          sub_1006E5FC4(self, v28, &v62);
          v29 = v62;
          if (v62)
          {
            memset(v60, 0, sizeof(v60));
            v61 = 1;
            sub_1006E72AC(toCopy, v53);
            sub_1006E8724(dCopy, v48);
            displayText3 = [responseCopy displayText];
            v30 = displayText3;
            sub_10000501C(buf, [displayText3 UTF8String]);
            postBackData = [responseCopy postBackData];
            data = [postBackData data];
            v32 = data;
            sub_10000501C(&v66, [data UTF8String]);
            inReplyToID4 = [responseCopy inReplyToID];
            sub_1006E8724(inReplyToID4, &v70[4]);
            v34 = (*(*v29 + 152))(v29, v60, v27, v53, v48, buf);
            if (v74 == 1 && v73 < 0)
            {
              operator delete(v72);
            }

            if (v71 < 0)
            {
              operator delete(*&v70[4]);
            }

            if ((v70[3] & 0x80000000) != 0)
            {
              operator delete(v66);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(*buf);
            }

            if (v52 == 1 && v51 < 0)
            {
              operator delete(__p);
            }

            if (v49 < 0)
            {
              operator delete(v48[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58);
            }

            if (v57[24] == 1)
            {
              *buf = v57;
              sub_1000087B4(buf);
            }

            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            TMClientInfo::~TMClientInfo(v60);
            if ((v34 & 0x100000000) != 0)
            {
              *buf = v34;
              buf[4] = 1;
              v37 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v37);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v35 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10177B488();
            }

            *buf = 5;
            buf[4] = 1;
            v36 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v36);
          }

          if (v63)
          {
            sub_100004A34(v63);
          }

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v24 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v24);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177B4BC();
    }
  }

LABEL_16:
}

- (void)reportChatbotSpam:(id)spam forChatbot:(id)chatbot withSpamReportInfo:(id)info andOperationID:(id)d completion:(id)completion
{
  spamCopy = spam;
  chatbotCopy = chatbot;
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (chatbotCopy)
    {
      v15 = [chatbotCopy uri];
      v16 = v15;
      if (dCopy)
      {
        if (infoCopy)
        {
          if (v15)
          {
            uuid = [dCopy uuid];
            if (uuid)
            {
              chatbotUri = [infoCopy chatbotUri];
              if (chatbotUri)
              {
                messageIDList = [infoCopy messageIDList];
                if (messageIDList)
                {
                  messageIDList2 = [infoCopy messageIDList];
                  list = [messageIDList2 list];

                  if (list)
                  {
                    objc_msgSend_getLogContext(self);
                    v22 = *&buf[8];
                    ctu::OsLogContext::~OsLogContext(buf);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      [spamCopy slotID];
                      v61 = CTSubscriptionSlotAsString();
                      v23 = [chatbotCopy uri];
                      chatbotUri2 = [infoCopy chatbotUri];
                      messageIDList3 = [infoCopy messageIDList];
                      list2 = [messageIDList3 list];
                      v26 = [list2 count];
                      spamType = [infoCopy spamType];
                      *buf = 136316163;
                      *&buf[4] = v61;
                      *&buf[12] = 2113;
                      *&buf[14] = v23;
                      *&buf[22] = 2113;
                      *&buf[24] = chatbotUri2;
                      *&buf[32] = 2048;
                      *&buf[34] = v26;
                      *&buf[42] = 2048;
                      *&buf[44] = spamType;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] reportChatbotSpam: [slot: %s, to: %{private}@ spamReportInfo.uri: %{private}@, spamReportInfo.messageIDList.length: %ld, spamReportInfo.spamType: %ld]", buf, 0x34u);
                    }

                    v28 = sub_100018A64([spamCopy slotID]);
                    v78 = 0;
                    v79 = 0;
                    sub_1006E5E0C(self, &v78, v29);
                    if (!v78)
                    {
                      objc_msgSend_getLogContext(self);
                      v51 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B58C();
                      }

                      *buf = 5;
                      buf[4] = 1;
                      v52 = sub_100A99330(buf);
                      completionCopy[2](completionCopy, v52);

                      goto LABEL_74;
                    }

                    v30 = [chatbotCopy uri];
                    v31 = v30 == 0;

                    if (v31)
                    {
                      objc_msgSend_getLogContext(self);
                      v53 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B558();
                      }
                    }

                    else
                    {
                      messageIDList4 = [infoCopy messageIDList];
                      list3 = [messageIDList4 list];
                      v34 = [list3 count] == 0;

                      if (!v34)
                      {
                        v75 = 0;
                        v76 = 0;
                        v77 = 0;
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v74 = 0u;
                        messageIDList5 = [infoCopy messageIDList];
                        list4 = [messageIDList5 list];

                        v37 = [list4 countByEnumeratingWithState:&v71 objects:v87 count:16];
                        if (v37)
                        {
                          v38 = *v72;
                          do
                          {
                            for (i = 0; i != v37; i = i + 1)
                            {
                              if (*v72 != v38)
                              {
                                objc_enumerationMutation(list4);
                              }

                              sub_1006E8724(*(*(&v71 + 1) + 8 * i), buf);
                              sub_1006E9190(&v75, buf);
                              if (BYTE8(v82) == 1 && SBYTE7(v81) < 0)
                              {
                                operator delete(*&buf[48]);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v37 = [list4 countByEnumeratingWithState:&v71 objects:v87 count:16];
                          }

                          while (v37);
                        }

                        memset(&v70, 0, sizeof(v70));
                        sub_10000501C(&v70, "");
                        freeBodyText = [infoCopy freeBodyText];
                        v41 = freeBodyText == 0;

                        if (!v41)
                        {
                          freeBodyText2 = [infoCopy freeBodyText];
                          v43 = freeBodyText2;
                          sub_100016890(&v70, [freeBodyText2 UTF8String]);
                        }

                        spamType2 = [infoCopy spamType];
                        v85 = 0u;
                        v86 = 0u;
                        if (spamType2 + 1 >= 4)
                        {
                          v45 = 3;
                        }

                        else
                        {
                          v45 = spamType2;
                        }

                        v83 = 0uLL;
                        v84 = 0uLL;
                        v81 = 0uLL;
                        v82 = 0uLL;
                        memset(buf, 0, sizeof(buf));
                        buf[0] = 1;
                        v46 = [chatbotCopy uri];
                        v47 = v46;
                        sub_10000501C(&buf[8], [v46 UTF8String]);
                        buf[32] = 0;
                        buf[56] = 0;
                        *&v82 = 0;
                        v81 = 0uLL;
                        sub_1006FB07C(&v81, v75, v76, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 5));
                        BYTE8(v82) = 0;
                        LOBYTE(v84) = 0;
                        DWORD2(v84) = v45;
                        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v85, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v85 = *&v70.__r_.__value_.__l.__data_;
                          *&v86 = *(&v70.__r_.__value_.__l + 2);
                        }

                        BYTE8(v86) = 1;

                        v68[0] = 0;
                        v68[1] = 0;
                        v69 = 0;
                        uuid2 = [dCopy uuid];
                        v57 = uuid2;
                        sub_10000501C(v68, [uuid2 UTF8String]);

                        v67 = 0;
                        v58 = (*(*v78 + 112))(v78, v28, buf, v68);
                        LODWORD(v67) = v58;
                        BYTE4(v67) = BYTE4(v58);
                        if ((v58 & 0x100000000) != 0)
                        {
                          objc_msgSend_getLogContext(self);
                          v59 = v66;
                          ctu::OsLogContext::~OsLogContext(v65);
                          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                          {
                            sub_10177B4F0();
                          }

                          v60 = sub_100A99330(&v67);
                          completionCopy[2](completionCopy, v60);
                        }

                        else
                        {
                          completionCopy[2](completionCopy, 0);
                        }

                        if (SHIBYTE(v69) < 0)
                        {
                          operator delete(v68[0]);
                        }

                        if (BYTE8(v86) == 1 && SBYTE7(v86) < 0)
                        {
                          operator delete(v85);
                        }

                        if (v84 == 1 && SHIBYTE(v83) < 0)
                        {
                          operator delete(*(&v82 + 1));
                        }

                        v68[0] = &v81;
                        sub_1006ACCB8(v68);
                        if (buf[56] == 1 && buf[55] < 0)
                        {
                          operator delete(*&buf[32]);
                        }

                        if (buf[31] < 0)
                        {
                          operator delete(*&buf[8]);
                        }

                        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v70.__r_.__value_.__l.__data_);
                        }

                        *buf = &v75;
                        sub_1006ACCB8(buf);
                        goto LABEL_74;
                      }

                      objc_msgSend_getLogContext(self);
                      v55 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B524();
                      }
                    }

                    *buf = -1;
                    buf[4] = 1;
                    v54 = sub_100A99330(buf);
                    completionCopy[2](completionCopy, v54);

LABEL_74:
                    if (v79)
                    {
                      sub_100004A34(v79);
                    }

                    goto LABEL_42;
                  }

                  goto LABEL_39;
                }
              }
            }
          }
        }
      }
    }

LABEL_39:
    objc_msgSend_getLogContext(self);
    v49 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v50 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v50);

    goto LABEL_42;
  }

  objc_msgSend_getLogContext(self);
  v48 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Invalid completion block while reporting chatbot spam", buf, 2u);
  }

LABEL_42:
}

- (void)reportLazuliSpamWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d completion:(id)completion
{
  contextCopy = context;
  destinationCopy = destination;
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (destinationCopy)
    {
      v15 = [destinationCopy uri];
      v16 = v15;
      if (dCopy)
      {
        if (infoCopy)
        {
          if (v15)
          {
            uuid = [dCopy uuid];
            if (uuid)
            {
              destinationUri = [infoCopy destinationUri];
              if (destinationUri)
              {
                messageIDList = [infoCopy messageIDList];
                if (messageIDList)
                {
                  messageIDList2 = [infoCopy messageIDList];
                  list = [messageIDList2 list];

                  if (list)
                  {
                    objc_msgSend_getLogContext(self);
                    v22 = *&buf[8];
                    ctu::OsLogContext::~OsLogContext(buf);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      [contextCopy slotID];
                      v67 = CTSubscriptionSlotAsString();
                      v23 = [destinationCopy uri];
                      destinationUri2 = [infoCopy destinationUri];
                      messageIDList3 = [infoCopy messageIDList];
                      list2 = [messageIDList3 list];
                      v27 = [list2 count];
                      spamType = [infoCopy spamType];
                      *buf = 136316163;
                      *&buf[4] = v67;
                      *&buf[12] = 2113;
                      *&buf[14] = v23;
                      *&buf[22] = 2113;
                      *&buf[24] = destinationUri2;
                      *&buf[32] = 2048;
                      *&buf[34] = v27;
                      *&buf[42] = 2048;
                      *&buf[44] = spamType;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] reportSpam: [slot: %s, to: %{private}@ spamReportInfo.uri: %{private}@, spamReportInfo.messageIDList.length: %ld, spamReportInfo.spamType: %ld]", buf, 0x34u);
                    }

                    v29 = sub_100018A64([contextCopy slotID]);
                    v86 = 0;
                    v87 = 0;
                    sub_1006E5FC4(self, v30, &v86);
                    v31 = v86;
                    if (!v86)
                    {
                      objc_msgSend_getLogContext(self);
                      v57 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B5F4();
                      }

                      *buf = 5;
                      buf[4] = 1;
                      v58 = sub_100A99330(buf);
                      completionCopy[2](completionCopy, v58);

                      goto LABEL_81;
                    }

                    v32 = [destinationCopy uri];
                    v33 = v32 == 0;

                    if (v33)
                    {
                      objc_msgSend_getLogContext(self);
                      v59 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B5C0();
                      }
                    }

                    else
                    {
                      messageIDList4 = [infoCopy messageIDList];
                      list3 = [messageIDList4 list];
                      v36 = [list3 count] == 0;

                      if (!v36)
                      {
                        v83 = 0;
                        v84 = 0;
                        v85 = 0;
                        v79 = 0u;
                        v80 = 0u;
                        v81 = 0u;
                        v82 = 0u;
                        messageIDList5 = [infoCopy messageIDList];
                        list4 = [messageIDList5 list];

                        v39 = [list4 countByEnumeratingWithState:&v79 objects:v93 count:16];
                        if (v39)
                        {
                          v40 = *v80;
                          do
                          {
                            for (i = 0; i != v39; i = i + 1)
                            {
                              if (*v80 != v40)
                              {
                                objc_enumerationMutation(list4);
                              }

                              sub_1006E8724(*(*(&v79 + 1) + 8 * i), buf);
                              sub_1006E9190(&v83, buf);
                              if (v89[1].__r_.__value_.__s.__data_[0] == 1 && v89[0].__r_.__value_.__s.__data_[7] < 0)
                              {
                                operator delete(*&buf[48]);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v39 = [list4 countByEnumeratingWithState:&v79 objects:v93 count:16];
                          }

                          while (v39);
                        }

                        memset(&v78, 0, sizeof(v78));
                        sub_10000501C(&v78, "");
                        content = [infoCopy content];
                        v43 = content == 0;

                        if (!v43)
                        {
                          content2 = [infoCopy content];
                          v45 = content2;
                          sub_100016890(&v78, [content2 UTF8String]);
                        }

                        memset(&v77, 0, sizeof(v77));
                        sub_10000501C(&v77, "");
                        freeBodyText = [infoCopy freeBodyText];
                        v47 = freeBodyText == 0;

                        if (!v47)
                        {
                          freeBodyText2 = [infoCopy freeBodyText];
                          v49 = freeBodyText2;
                          sub_100016890(&v77, [freeBodyText2 UTF8String]);
                        }

                        spamType2 = [infoCopy spamType];
                        *v91 = 0u;
                        v92 = 0u;
                        if (spamType2 + 1 >= 4)
                        {
                          v51 = 3;
                        }

                        else
                        {
                          v51 = spamType2;
                        }

                        v90 = 0uLL;
                        memset(v89, 0, sizeof(v89));
                        memset(buf, 0, sizeof(buf));
                        buf[0] = [infoCopy isChatbot];
                        v52 = [destinationCopy uri];
                        v53 = v52;
                        sub_10000501C(&buf[8], [v52 UTF8String]);
                        buf[32] = 0;
                        buf[56] = 0;
                        memset(v89, 0, 24);
                        sub_1006FB07C(v89, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 5));
                        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v89[1], v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v89[1] = v78;
                        }

                        LOBYTE(v90) = 1;
                        DWORD2(v90) = v51;
                        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(v91, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          *v91 = *&v77.__r_.__value_.__l.__data_;
                          *&v92 = *(&v77.__r_.__value_.__l + 2);
                        }

                        BYTE8(v92) = 1;

                        v75[0] = 0;
                        v75[1] = 0;
                        v76 = 0;
                        uuid2 = [dCopy uuid];
                        v63 = uuid2;
                        sub_10000501C(v75, [uuid2 UTF8String]);

                        v74 = 0;
                        memset(v72, 0, sizeof(v72));
                        v73 = 1;
                        v64 = (*(*v31 + 264))(v31, v72, v29, buf, v75);
                        LODWORD(v74) = v64;
                        BYTE4(v74) = BYTE4(v64);
                        TMClientInfo::~TMClientInfo(v72);
                        if (BYTE4(v74) == 1)
                        {
                          objc_msgSend_getLogContext(self);
                          v65 = v71;
                          ctu::OsLogContext::~OsLogContext(v70);
                          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                          {
                            sub_10177B4F0();
                          }

                          v66 = sub_100A99330(&v74);
                          completionCopy[2](completionCopy, v66);
                        }

                        else
                        {
                          completionCopy[2](completionCopy, 0);
                        }

                        if (SHIBYTE(v76) < 0)
                        {
                          operator delete(v75[0]);
                        }

                        if (BYTE8(v92) == 1 && SBYTE7(v92) < 0)
                        {
                          operator delete(v91[0]);
                        }

                        if (v90 == 1 && SHIBYTE(v89[1].__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v89[1].__r_.__value_.__l.__data_);
                        }

                        v75[0] = v89;
                        sub_1006ACCB8(v75);
                        if (buf[56] == 1 && buf[55] < 0)
                        {
                          operator delete(*&buf[32]);
                        }

                        if (buf[31] < 0)
                        {
                          operator delete(*&buf[8]);
                        }

                        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v77.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v78.__r_.__value_.__l.__data_);
                        }

                        *buf = &v83;
                        sub_1006ACCB8(buf);
                        goto LABEL_81;
                      }

                      objc_msgSend_getLogContext(self);
                      v61 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B524();
                      }
                    }

                    *buf = -1;
                    buf[4] = 1;
                    v60 = sub_100A99330(buf);
                    completionCopy[2](completionCopy, v60);

LABEL_81:
                    if (v87)
                    {
                      sub_100004A34(v87);
                    }

                    goto LABEL_44;
                  }

                  goto LABEL_41;
                }
              }
            }
          }
        }
      }
    }

LABEL_41:
    objc_msgSend_getLogContext(self);
    v55 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v56 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v56);

    goto LABEL_44;
  }

  objc_msgSend_getLogContext(self);
  v54 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Invalid completion block while reporting chatbot spam", buf, 2u);
  }

LABEL_44:
}

- (void)decodeSuggestionsBase64:(id)base64 withBase64String:(id)string completion:(id)completion
{
  base64Copy = base64;
  stringCopy = string;
  completionCopy = completion;
  if (completionCopy)
  {
    if (base64Copy && stringCopy && ([stringCopy base64String], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      objc_msgSend_getLogContext(self);
      v12 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [base64Copy slotID];
        v13 = CTSubscriptionSlotAsString();
        base64String = [stringCopy base64String];
        *buf = 136315651;
        *&buf[4] = v13;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2117;
        *&buf[24] = base64String;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] decodeSuggestionsBase64: [slot: %s, link: %{sensitive, mask.hash}@]", buf, 0x20u);
      }

      v15 = sub_100018A64([base64Copy slotID]);
      v30 = 0;
      v31 = 0;
      sub_1006E5E0C(self, &v30, v16);
      v17 = v30;
      if (v30)
      {
        v33 = 0;
        memset(buf, 0, sizeof(buf));
        base64String2 = [stringCopy base64String];
        v19 = base64String2;
        sub_10000501C(__p, [base64String2 UTF8String]);
        (*(*v17 + 152))(buf, v17, v15, __p);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v33)
        {
          v20 = [CTLazuliDeepLinkBase64StringDecoded alloc];
          if ((v33 & 1) == 0)
          {
            sub_1000D1644();
          }

          v21 = [v20 initWithReflection:buf];
          completionCopy[2](completionCopy, 0, v21);
        }

        else
        {
          LODWORD(__p[0]) = 6;
          BYTE4(__p[0]) = 1;
          v27 = sub_100A99330(__p);
          (completionCopy)[2](completionCopy, v27, 0);
        }

        if (v33 == 1 && buf[24] == 1)
        {
          __p[0] = buf;
          sub_10019029C(__p);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v25 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10177B17C();
        }

        *buf = 5;
        buf[4] = 1;
        v26 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, v26, 0);
      }

      if (v31)
      {
        sub_100004A34(v31);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v22 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v23 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, v23, 0);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177B628();
    }
  }
}

- (void)sendTextMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  withMessageCopy = withMessage;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && destinationCopy && dCopy)
    {
      uuid = [dCopy uuid];
      v21 = uuid;
      if (withMessageCopy && uuid)
      {
        content = [withMessageCopy content];

        if (content)
        {
          objc_msgSend_getLogContext(self);
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [messageCopy slotID];
            v39 = CTSubscriptionSlotAsString();
            v24 = "true";
            if (!securityCopy)
            {
              v24 = "false";
            }

            focus = [destinationCopy focus];
            conversationID = [destinationCopy conversationID];
            uuid2 = [dCopy uuid];
            content2 = [withMessageCopy content];
            *buf = 136316675;
            *&buf[4] = v39;
            *&buf[12] = 2080;
            *&buf[14] = v38;
            v64 = 2113;
            v65 = focus;
            v66 = 2114;
            v67 = conversationID;
            v68 = 2114;
            v69 = uuid2;
            v70 = 2160;
            v71 = 1752392040;
            v72 = 2117;
            v73 = content2;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendTextMessage: [slot: %s, security: %s, to.focus: %{private}@, to.conversationID: %{public}@, messageIdentifier: %{public}@, message: %{sensitive, mask.hash}@]", buf, 0x48u);
          }

          v27 = sub_100018A64([messageCopy slotID]);
          v61 = 0;
          v62 = 0;
          sub_1006E5FC4(self, v28, &v61);
          v29 = v61;
          if (v61)
          {
            memset(v59, 0, sizeof(v59));
            v60 = 1;
            sub_1006F2118(destinationCopy, v53);
            sub_1006E8724(dCopy, v48);
            content3 = [withMessageCopy content];
            sub_10000501C(__p, [content3 UTF8String]);
            v45 = 0;
            v46 = 0;
            metaData = [withMessageCopy metaData];
            sub_1006EBDBC(metaData, v47);
            buf[0] = securityCopy != 0;
            buf[8] = 0;
            v74 = 0;
            v31 = (*(*v29 + 32))(v29, v59, v27, v53, v48, __p, buf);
            if (v74 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v47[24] == 1)
            {
              *buf = v47;
              sub_100190608(buf);
            }

            if (v46 == 1)
            {
              *buf = &v45;
              sub_10019029C(buf);
            }

            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            if (v52 == 1 && v51 < 0)
            {
              operator delete(v50);
            }

            if (v49 < 0)
            {
              operator delete(v48[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57);
            }

            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            TMClientInfo::~TMClientInfo(v59);
            if ((v31 & 0x100000000) != 0)
            {
              *buf = v31;
              buf[4] = 1;
              v37 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v37);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v35 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10177B65C();
            }

            *buf = 5;
            buf[4] = 1;
            v36 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v36);
          }

          if (v62)
          {
            sub_100004A34(v62);
          }

          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v33 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v34 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v34);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177B690();
    }
  }

LABEL_40:
}

- (void)sendGroupComposingIndicator:(id)indicator toGroupDestination:(id)destination withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security completion:(id)completion
{
  indicatorCopy = indicator;
  destinationCopy = destination;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (indicatorCopy && destinationCopy && dCopy && ([dCopy uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, indicationCopy) && v19)
    {
      objc_msgSend_getLogContext(self);
      lastActive2 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      log = lastActive2;
      if (os_log_type_enabled(lastActive2, OS_LOG_TYPE_DEFAULT))
      {
        [indicatorCopy slotID];
        v46 = CTSubscriptionSlotAsString();
        v22 = "true";
        if (!securityCopy)
        {
          v22 = "false";
        }

        v45 = v22;
        focus = [destinationCopy focus];
        if (focus)
        {
          focus2 = [destinationCopy focus];
        }

        else
        {
          focus2 = &stru_101F6AFB8;
        }

        conversationID = [destinationCopy conversationID];
        if (conversationID)
        {
          conversationID2 = [destinationCopy conversationID];
        }

        else
        {
          conversationID2 = &stru_101F6AFB8;
        }

        uuid = [dCopy uuid];
        refreshTime = [indicationCopy refreshTime];
        if (refreshTime)
        {
          refreshTime2 = [indicationCopy refreshTime];
          longValue = [refreshTime2 longValue];
        }

        else
        {
          longValue = -1;
        }

        active = [indicationCopy active];
        lastActive = [indicationCopy lastActive];
        if (lastActive)
        {
          lastActive2 = [indicationCopy lastActive];
          v28 = lastActive2;
          uTF8String = [lastActive2 UTF8String];
        }

        else
        {
          uTF8String = "";
        }

        *buf = 136316931;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = v45;
        *&buf[22] = 2114;
        *&buf[24] = focus2;
        *&buf[32] = 2114;
        *&buf[34] = conversationID2;
        *&buf[42] = 2113;
        *&buf[44] = uuid;
        *&buf[52] = 2048;
        *&buf[54] = longValue;
        *&buf[62] = 1024;
        LODWORD(v78) = active;
        WORD2(v78) = 2081;
        *(&v78 + 6) = uTF8String;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupComposingIndicator: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, messageIdentifier: %{private}@, ind.refreshTime: %ld, ind.active: %d, ind.lastActive: %{private}s]", buf, 0x4Eu);
        if (lastActive)
        {
        }

        if (refreshTime)
        {
        }

        if (conversationID)
        {
        }

        lastActive2 = focus == 0;

        if (focus)
        {
        }
      }

      v70 = 0;
      v71 = 0;
      sub_1006E5FC4(self, v21, &v70);
      v30 = v70;
      if (v70)
      {
        v53 = sub_100018A64([indicatorCopy slotID]);
        v81 = 0;
        memset(v80, 0, sizeof(v80));
        v78 = 0u;
        v79 = 0u;
        memset(buf, 0, sizeof(buf));
        loga = [indicationCopy refreshTime];
        if (loga)
        {
          conversationID = [indicationCopy refreshTime];
          longValue2 = [conversationID longValue];
        }

        else
        {
          longValue2 = -1;
        }

        *buf = longValue2;
        buf[8] = 1;
        buf[16] = [indicationCopy active];
        lastActive3 = [indicationCopy lastActive];
        if (lastActive3)
        {
          uuid = [indicationCopy lastActive];
          v35 = uuid;
          uTF8String2 = [uuid UTF8String];
        }

        else
        {
          uTF8String2 = "";
        }

        sub_10000501C(&buf[24], uTF8String2);
        buf[48] = 1;
        contentType = [indicationCopy contentType];
        if (contentType)
        {
          lastActive2 = [indicationCopy contentType];
          v38 = lastActive2;
          uTF8String3 = [lastActive2 UTF8String];
        }

        else
        {
          uTF8String3 = "";
        }

        sub_10000501C(&buf[56], uTF8String3);
        LOBYTE(v79) = 1;
        BYTE8(v79) = 0;
        v80[0] = 0;
        LOBYTE(v81) = 0;
        if (contentType)
        {
        }

        if (lastActive3)
        {
        }

        if (loga)
        {
        }

        memset(v68, 0, sizeof(v68));
        v69 = 1;
        sub_1006F2118(destinationCopy, v62);
        sub_1006E8724(dCopy, v57);
        LOBYTE(v72) = securityCopy != 0;
        LOBYTE(v74) = 0;
        v76 = 0;
        v40 = (*(*v30 + 96))(v30, v68, v53, v62, v57, buf, &v72);
        if (v76 == 1)
        {
          sub_1002AF7A0(&v75);
        }

        if (v61 == 1 && v60 < 0)
        {
          operator delete(__p);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        if (v67 < 0)
        {
          operator delete(v66);
        }

        if (v65 < 0)
        {
          operator delete(v64);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }

        TMClientInfo::~TMClientInfo(v68);
        if ((v40 & 0x100000000) != 0)
        {
          objc_msgSend_getLogContext(self);
          v41 = v74;
          ctu::OsLogContext::~OsLogContext(&v72);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_10177B280();
          }

          v72 = v40;
          v73 = 1;
          v42 = sub_100A99330(&v72);
          completionCopy[2](completionCopy, v42);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        if (v81 == 1)
        {
          sub_1002AF7A0(&v80[8]);
        }

        if (v79 == 1 && SHIBYTE(v78) < 0)
        {
          operator delete(*&buf[56]);
        }

        if (buf[48] == 1 && buf[47] < 0)
        {
          operator delete(*&buf[24]);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v32 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10177B6C4();
        }

        *buf = 5;
        buf[4] = 1;
        v33 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v33);
      }

      if (v71)
      {
        sub_100004A34(v71);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v24 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v24);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v25 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177B6F8();
    }
  }
}

- (void)sendGroupComposingIndicator:(id)indicator toGroup:(id)group withMessageID:(id)d withIndication:(id)indication completion:(id)completion
{
  indicatorCopy = indicator;
  groupCopy = group;
  dCopy = d;
  indicationCopy = indication;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v17 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupComposingIndicator", &v21, 2u);
    }

    objc_msgSend_getLogContext(self);
    v18 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177B72C();
    }

    v21 = 5;
    v22 = 1;
    v19 = sub_100A99330(&v21);
    completionCopy[2](completionCopy, v19);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v20 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10177B760();
    }
  }
}

- (void)sendGeolocationMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && destinationCopy && dCopy && ([dCopy uuid], v18 = objc_claimAutoreleasedReturnValue(), v18, pushCopy) && v18)
    {
      objc_msgSend_getLogContext(self);
      v19 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [messageCopy slotID];
        v21 = CTSubscriptionSlotAsString();
        v22 = "true";
        if (!securityCopy)
        {
          v22 = "false";
        }

        v56 = v22;
        focus = [destinationCopy focus];
        if (focus)
        {
          focus2 = [destinationCopy focus];
        }

        else
        {
          focus2 = &stru_101F6AFB8;
        }

        conversationID = [destinationCopy conversationID];
        if (conversationID)
        {
          conversationID2 = [destinationCopy conversationID];
        }

        else
        {
          conversationID2 = &stru_101F6AFB8;
        }

        uuid = [dCopy uuid];
        v55 = v21;
        [pushCopy coordinates];
        v62 = v27 = 0x406FE00000000000;
        if (v62)
        {
          coordinates = [pushCopy coordinates];
          latitude = [coordinates latitude];
          if (latitude)
          {
            coordinates2 = [pushCopy coordinates];
            latitude2 = [coordinates2 latitude];
            [latitude2 doubleValue];
            v27 = v28;
            v54 = 1;
          }

          else
          {
            latitude = 0;
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        coordinates3 = [pushCopy coordinates];
        v30 = 0x406FE00000000000;
        if (coordinates3)
        {
          coordinates4 = [pushCopy coordinates];
          longitude = [coordinates4 longitude];
          if (longitude)
          {
            v49 = longitude;
            coordinates5 = [pushCopy coordinates];
            longitude2 = [coordinates5 longitude];
            [longitude2 doubleValue];
            v30 = v32;
            v33 = messageCopy;
            v34 = 1;
          }

          else
          {
            v33 = messageCopy;
            v49 = 0;
            v34 = 0;
          }
        }

        else
        {
          v33 = messageCopy;
          v34 = 0;
        }

        *buf = 136316674;
        *&buf[4] = v55;
        *&buf[12] = 2080;
        *&buf[14] = v56;
        v91 = 2114;
        v92 = focus2;
        v93 = 2114;
        v94 = conversationID2;
        v95 = 2114;
        v96 = uuid;
        v97 = 2048;
        v98 = v27;
        v99 = 2048;
        v100 = v30;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGeolocationMessage: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, messageIdentifier: %{public}@, .latitude: %{senstive}f, .longitude: %{senstive}f]", buf, 0x48u);
        if (v34)
        {
        }

        if (coordinates3)
        {
        }

        if (v54)
        {
        }

        if (v62)
        {
        }

        if (conversationID)
        {
        }

        if (focus)
        {
        }

        messageCopy = v33;
      }

      v88 = 0;
      v89 = 0;
      sub_1006E5FC4(self, v20, &v88);
      v35 = v88;
      if (v88)
      {
        v61 = sub_100018A64([messageCopy slotID]);
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        coordinates6 = [pushCopy coordinates];
        longitude3 = [coordinates6 longitude];
        [longitude3 doubleValue];
        v81[0] = v36;
        coordinates7 = [pushCopy coordinates];
        latitude3 = [coordinates7 latitude];
        v23 = messageCopy;
        [latitude3 doubleValue];
        v81[1] = v39;
        BYTE8(v83) = 0;
        BYTE8(v85) = 0;
        metaData = [pushCopy metaData];
        sub_1006EBDBC(metaData, &v86);

        memset(v79, 0, sizeof(v79));
        v80 = 1;
        sub_1006F2118(destinationCopy, v73);
        sub_1006E8724(dCopy, v68);
        buf[0] = securityCopy != 0;
        buf[8] = 0;
        v101 = 0;
        v41 = (*(*v35 + 64))(v35, v79, v61, v73, v68, v81, buf);
        if (v101 == 1)
        {
          sub_1002AF7A0(&buf[16]);
        }

        if (v72 == 1 && v71 < 0)
        {
          operator delete(__p);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (v78 < 0)
        {
          operator delete(v77);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        TMClientInfo::~TMClientInfo(v79);
        if ((v41 & 0x100000000) != 0)
        {
          objc_msgSend_getLogContext(self);
          v44 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_10177B794();
          }

          *buf = v41;
          buf[4] = 1;
          v45 = sub_100A99330(buf);
          completionCopy[2](completionCopy, v45);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        if (BYTE8(v87) == 1)
        {
          *buf = &v86;
          sub_100190608(buf);
        }

        if (BYTE8(v85) == 1)
        {
          *buf = &v84;
          sub_10019029C(buf);
        }

        if (BYTE8(v83) == 1 && SBYTE7(v83) < 0)
        {
          operator delete(v82);
        }
      }

      else
      {
        v23 = messageCopy;
        objc_msgSend_getLogContext(self);
        v42 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10177B7C8();
        }

        *buf = 5;
        buf[4] = 1;
        v43 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v43);
      }

      if (v89)
      {
        sub_100004A34(v89);
      }
    }

    else
    {
      v23 = messageCopy;
      objc_msgSend_getLogContext(self);
      v24 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v25 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v25);
    }
  }

  else
  {
    v23 = messageCopy;
    objc_msgSend_getLogContext(self);
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177B7FC();
    }
  }
}

- (void)sendFileTransferMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security completion:(id)completion
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  informationCopy = information;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && destinationCopy && dCopy && ([dCopy uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, informationCopy) && v19)
    {
      v41 = messageCopy;
      objc_msgSend_getLogContext(self);
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [messageCopy slotID];
        v38 = CTSubscriptionSlotAsString();
        v22 = "true";
        if (!securityCopy)
        {
          v22 = "false";
        }

        focus = [destinationCopy focus];
        if (focus)
        {
          focus2 = [destinationCopy focus];
        }

        else
        {
          focus2 = &stru_101F6AFB8;
        }

        conversationID = [destinationCopy conversationID];
        if (conversationID)
        {
          conversationID2 = [destinationCopy conversationID];
        }

        else
        {
          conversationID2 = &stru_101F6AFB8;
        }

        uuid = [dCopy uuid];
        *buf = 136316162;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = v37;
        v84 = 2114;
        v85 = focus2;
        *v86 = 2114;
        *&v86[2] = conversationID2;
        v87 = 2114;
        v88 = uuid;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendFileTransferMessage: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, identifier: %{public}@]", buf, 0x34u);

        if (conversationID)
        {
        }

        if (focus)
        {
        }
      }

      v78 = 0;
      v77 = 0;
      sub_1006E5FC4(self, v21, &v77);
      v29 = v77;
      messageCopy = v41;
      if (v77)
      {
        v30 = sub_100018A64([v41 slotID]);
        bzero(v56, 0x208uLL);
        sub_1006EB6AC(informationCopy, v56);
        memset(v54, 0, sizeof(v54));
        v55 = 1;
        sub_1006F2118(destinationCopy, v48);
        sub_1006E8724(dCopy, v43);
        sub_1001907C0(buf, v56);
        sub_100190C40(v104, v75);
        sub_100190324(v105, v76);
        v107 = 0;
        v108 = 0;
        metaData = [informationCopy metaData];
        sub_1006EBDBC(metaData, v109);
        LOBYTE(v79) = securityCopy != 0;
        v80 = 0;
        v82 = 0;
        v32 = (*(*v29 + 48))(v29, v54, v30, v48, v43, buf, &v79);
        if (v82 == 1)
        {
          sub_1002AF7A0(&v81);
        }

        if (v109[24] == 1)
        {
          v79 = v109;
          sub_100190608(&v79);
        }

        if (v108 == 1)
        {
          v79 = &v107;
          sub_10019029C(&v79);
        }

        if (v106 == 1)
        {
          v79 = v105;
          sub_100190608(&v79);
        }

        sub_100190D9C(v104);
        messageCopy = v41;
        if (v103 == 1)
        {
          if (v102 == 1)
          {
            if (__p)
            {
              v101 = __p;
              operator delete(__p);
            }

            if (v99 == 1 && v97)
            {
              v98 = v97;
              operator delete(v97);
            }

            if (v96 == 1 && v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            if (v92)
            {
              v93 = v92;
              operator delete(v92);
            }
          }

          if (v91 < 0)
          {
            operator delete(v90);
          }

          if (v89 < 0)
          {
            operator delete(*v86);
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(*&buf[8]);
          }
        }

        if (v47 == 1 && v46 < 0)
        {
          operator delete(v45);
        }

        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        if (v53 < 0)
        {
          operator delete(v52);
        }

        if (v51 < 0)
        {
          operator delete(v50);
        }

        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        TMClientInfo::~TMClientInfo(v54);
        if ((v32 & 0x100000000) != 0)
        {
          objc_msgSend_getLogContext(self);
          v35 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10177B830();
          }

          *buf = v32;
          buf[4] = 1;
          v36 = sub_100A99330(buf);
          completionCopy[2](completionCopy, v36);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        if (v76[24] == 1)
        {
          *buf = v76;
          sub_100190608(buf);
        }

        sub_100190D9C(v75);
        if (v74 == 1)
        {
          if (v73 == 1)
          {
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            if (v70 == 1 && v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            if (v67 == 1 && v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            if (v63)
            {
              v64 = v63;
              operator delete(v63);
            }
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }

          if (v60 < 0)
          {
            operator delete(v59);
          }

          if (v58 < 0)
          {
            operator delete(v57);
          }
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v33 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10177B864();
        }

        *buf = 5;
        buf[4] = 1;
        v34 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v34);
      }

      if (v78)
      {
        sub_100004A34(v78);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v24 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v24);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v25 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177B898();
    }
  }
}

- (void)sendGroupDispositionNotificationMessage:(id)message toGroup:(id)group to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security completion:(id)self0
{
  messageCopy = message;
  groupCopy = group;
  toCopy = to;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && groupCopy && toCopy)
    {
      v21 = [toCopy uri];
      v22 = v21;
      if (dCopy && v21)
      {
        uuid = [dCopy uuid];
        v24 = uuid;
        if (iDCopy && uuid)
        {
          uuid2 = [iDCopy uuid];

          if (uuid2)
          {
            objc_msgSend_getLogContext(self);
            v26 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              [messageCopy slotID];
              v43 = CTSubscriptionSlotAsString();
              v28 = "true";
              if (!securityCopy)
              {
                v28 = "false";
              }

              v42 = v28;
              focus = [groupCopy focus];
              if (focus)
              {
                focus2 = [groupCopy focus];
              }

              else
              {
                focus2 = &stru_101F6AFB8;
              }

              conversationID = [groupCopy conversationID];
              if (conversationID)
              {
                conversationID2 = [groupCopy conversationID];
              }

              else
              {
                conversationID2 = &stru_101F6AFB8;
              }

              v47 = [toCopy uri];
              uuid3 = [dCopy uuid];
              uuid4 = [iDCopy uuid];
              *buf = 136316930;
              *&buf[4] = v43;
              *&buf[12] = 2080;
              *&buf[14] = v42;
              v81 = 2114;
              v82 = focus2;
              v83 = 2114;
              v84 = conversationID2;
              v85 = 2112;
              v86 = v47;
              v87 = 2114;
              v88 = uuid3;
              v89 = 2048;
              dispositionCopy = disposition;
              v91 = 2114;
              v92 = uuid4;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupDispositionNotificationMessage: [slot: %s, security: %s, group.focus: %{public}@, group.conversationID: %{public}@, to: %@, identifier: %{public}@, type: %ld, forMessageID: %{public}@]", buf, 0x52u);

              if (conversationID)
              {
              }

              if (focus)
              {
              }
            }

            v79 = 0;
            v78 = 0;
            sub_1006E5FC4(self, v27, &v78);
            v34 = v78;
            if (v78)
            {
              v35 = sub_100018A64([messageCopy slotID]);
              v77 = 0;
              if (disposition == 2)
              {
                v36 = 2;
              }

              else
              {
                v36 = -1;
              }

              v75 = 0u;
              v76 = 0u;
              if (!disposition)
              {
                v36 = 0;
              }

              v73 = 0uLL;
              v74 = 0uLL;
              v71 = 0uLL;
              v72 = 0uLL;
              LODWORD(v71) = v36;
              sub_1006E8724(iDCopy, &v71 + 8);
              memset(v69, 0, sizeof(v69));
              v70 = 1;
              sub_1006F2118(groupCopy, v63);
              sub_1006E72AC(toCopy, v56);
              sub_1006E8724(dCopy, v51);
              buf[0] = securityCopy != 0;
              buf[8] = 0;
              v93 = 0;
              v37 = (*(*v34 + 80))(v34, v69, v35, v63, v56, v51, &v71, buf);
              if (v93 == 1)
              {
                sub_1002AF7A0(&buf[16]);
              }

              if (v55 == 1 && v54 < 0)
              {
                operator delete(__p);
              }

              if (v52 < 0)
              {
                operator delete(v51[0]);
              }

              if (v62 < 0)
              {
                operator delete(v61);
              }

              if (v60[24] == 1)
              {
                *buf = v60;
                sub_1000087B4(buf);
              }

              if (v59 < 0)
              {
                operator delete(v58);
              }

              if (v57 < 0)
              {
                operator delete(v56[0]);
              }

              if (v68 < 0)
              {
                operator delete(v67);
              }

              if (v66 < 0)
              {
                operator delete(v65);
              }

              if (v64 < 0)
              {
                operator delete(v63[0]);
              }

              TMClientInfo::~TMClientInfo(v69);
              if ((v37 & 0x100000000) != 0)
              {
                objc_msgSend_getLogContext(self);
                v40 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B830();
                }

                *buf = v37;
                buf[4] = 1;
                v41 = sub_100A99330(buf);
                completionCopy[2](completionCopy, v41);
              }

              else
              {
                completionCopy[2](completionCopy, 0);
              }

              if (v77 == 1 && SHIBYTE(v75) < 0)
              {
                operator delete(*(&v74 + 1));
              }

              if (SHIBYTE(v72) < 0)
              {
                operator delete(*(&v71 + 1));
              }
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v38 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_10177B8CC();
              }

              *buf = 5;
              buf[4] = 1;
              v39 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v39);
            }

            if (v79)
            {
              sub_100004A34(v79);
            }

            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }
    }

LABEL_19:
    objc_msgSend_getLogContext(self);
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v31 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v31);

    goto LABEL_22;
  }

  objc_msgSend_getLogContext(self);
  v29 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10177B898();
  }

LABEL_22:
}

- (void)addParticipants:(id)participants toGroupChat:(id)chat withParticipantsToAdd:(id)add withOperationID:(id)d withSecurity:(id)security completion:(id)completion
{
  participantsCopy = participants;
  chatCopy = chat;
  addCopy = add;
  dCopy = d;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (participantsCopy && chatCopy && addCopy)
    {
      memberList = [addCopy memberList];
      v21 = memberList;
      if (dCopy && memberList)
      {
        uuid = [dCopy uuid];

        if (uuid)
        {
          objc_msgSend_getLogContext(self);
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [participantsCopy slotID];
            v25 = CTSubscriptionSlotAsString();
            v26 = "true";
            if (!securityCopy)
            {
              v26 = "false";
            }

            v45 = v26;
            focus = [chatCopy focus];
            if (focus)
            {
              focus2 = [chatCopy focus];
            }

            else
            {
              focus2 = &stru_101F6AFB8;
            }

            conversationID = [chatCopy conversationID];
            if (conversationID)
            {
              conversationID2 = [chatCopy conversationID];
            }

            else
            {
              conversationID2 = &stru_101F6AFB8;
            }

            v43 = v25;
            v44 = v23;
            memberList2 = [addCopy memberList];
            v31 = [memberList2 count];
            uuid2 = [dCopy uuid];
            *buf = 136316418;
            *&buf[4] = v43;
            *&buf[12] = 2080;
            *&buf[14] = v45;
            v64 = 2114;
            v65 = focus2;
            v66 = 2114;
            v67 = conversationID2;
            v68 = 2048;
            v69 = v31;
            v70 = 2112;
            v71 = uuid2;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] addParticipants: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, list.memberList.size: %ld,  operationID: %@]", buf, 0x3Eu);

            if (conversationID)
            {
            }

            if (focus)
            {
            }
          }

          v61 = 0;
          v62 = 0;
          sub_1006E5FC4(self, v24, &v61);
          v33 = v61;
          if (v61)
          {
            v34 = sub_100018A64([participantsCopy slotID]);
            memset(v59, 0, sizeof(v59));
            v60 = 1;
            sub_1006F2118(chatCopy, v53);
            sub_1006F51D4(addCopy, v51);
            uuid3 = [dCopy uuid];
            v36 = uuid3;
            sub_10000501C(__p, [uuid3 UTF8String]);
            buf[0] = securityCopy != 0;
            buf[8] = 0;
            v72 = 0;
            v37 = (*(*v33 + 104))(v33, v59, v34, v53, v51, __p, buf);
            if (v72 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v50 < 0)
            {
              operator delete(__p[0]);
            }

            *buf = &v52;
            sub_1000D48DC(buf);
            *buf = v51;
            sub_1000087B4(buf);
            if (v58 < 0)
            {
              operator delete(v57);
            }

            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            TMClientInfo::~TMClientInfo(v59);
            if ((v37 & 0x100000000) != 0)
            {
              objc_msgSend_getLogContext(self);
              v40 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_10177B900();
              }

              *buf = v37;
              buf[4] = 1;
              v41 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v41);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v38 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10177B934();
            }

            *buf = 5;
            buf[4] = 1;
            v39 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v39);
          }

          if (v62)
          {
            sub_100004A34(v62);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v29 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v29);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177B968();
    }
  }

LABEL_19:
}

- (void)removeParticipants:(id)participants fromGroupChat:(id)chat withParticipantsToRemove:(id)remove withOperationID:(id)d withSecurity:(id)security completion:(id)completion
{
  participantsCopy = participants;
  chatCopy = chat;
  removeCopy = remove;
  dCopy = d;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (participantsCopy && chatCopy && removeCopy)
    {
      memberList = [removeCopy memberList];
      v21 = memberList;
      if (dCopy && memberList)
      {
        uuid = [dCopy uuid];

        if (uuid)
        {
          objc_msgSend_getLogContext(self);
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [participantsCopy slotID];
            v24 = CTSubscriptionSlotAsString();
            v25 = "true";
            if (!securityCopy)
            {
              v25 = "false";
            }

            v46 = v25;
            focus = [chatCopy focus];
            if (focus)
            {
              focus2 = [chatCopy focus];
            }

            else
            {
              focus2 = &stru_101F6AFB8;
            }

            conversationID = [chatCopy conversationID];
            if (conversationID)
            {
              conversationID2 = [chatCopy conversationID];
            }

            else
            {
              conversationID2 = &stru_101F6AFB8;
            }

            v44 = v24;
            v45 = v23;
            memberList2 = [removeCopy memberList];
            v30 = [memberList2 count];
            uuid2 = [dCopy uuid];
            v42 = conversationID;
            *buf = 136316418;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = v46;
            v65 = 2114;
            v66 = focus2;
            v67 = 2114;
            v68 = conversationID2;
            v69 = 2048;
            v70 = v30;
            v71 = 2114;
            v72 = uuid2;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] removeParticipants: [slot: %s, security: %s, from.focus: %{public}@, from.conversationID: %{public}@, list.memberList.size: %lu, operationID: %{public}@]", buf, 0x3Eu);

            if (conversationID)
            {
            }

            if (focus)
            {
            }
          }

          v32 = sub_100018A64([participantsCopy slotID]);
          v62 = 0;
          v63 = 0;
          sub_1006E5FC4(self, v33, &v62);
          v34 = v62;
          if (v62)
          {
            memset(v60, 0, sizeof(v60));
            v61 = 1;
            sub_1006F2118(chatCopy, v54);
            sub_1006F51D4(removeCopy, v52);
            uuid3 = [dCopy uuid];
            v36 = uuid3;
            sub_10000501C(__p, [uuid3 UTF8String]);
            buf[0] = securityCopy != 0;
            buf[8] = 0;
            v73 = 0;
            v37 = (*(*v34 + 112))(v34, v60, v32, v54, v52, __p, buf);
            if (v73 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v51 < 0)
            {
              operator delete(__p[0]);
            }

            *buf = &v53;
            sub_1000D48DC(buf);
            *buf = v52;
            sub_1000087B4(buf);
            if (v59 < 0)
            {
              operator delete(v58);
            }

            if (v57 < 0)
            {
              operator delete(v56);
            }

            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            TMClientInfo::~TMClientInfo(v60);
            if ((v37 & 0x100000000) != 0)
            {
              objc_msgSend_getLogContext(self);
              v40 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_10177B99C();
              }

              *buf = v37;
              buf[4] = 1;
              v41 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v41);
            }

            else
            {
              completionCopy[2](completionCopy, 0);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v38 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10177B934();
            }

            *buf = 5;
            buf[4] = 1;
            v39 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v39);
          }

          if (v63)
          {
            sub_100004A34(v63);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    objc_msgSend_getLogContext(self);
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v28 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v28);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177B9D0();
    }
  }

LABEL_19:
}

- (void)changeIcon:(id)icon forGroupChat:(id)chat withNewIcon:(id)newIcon withOperationID:(id)d withSecurity:(id)security completion:(id)completion
{
  iconCopy = icon;
  chatCopy = chat;
  newIconCopy = newIcon;
  dCopy = d;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (iconCopy)
    {
      if (chatCopy)
      {
        if (dCopy)
        {
          uuid = [dCopy uuid];

          if (uuid)
          {
            objc_msgSend_getLogContext(self);
            v19 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              [iconCopy slotID];
              v49 = CTSubscriptionSlotAsString();
              v21 = "true";
              if (!securityCopy)
              {
                v21 = "false";
              }

              focus = [chatCopy focus];
              if (focus)
              {
                focus2 = [chatCopy focus];
              }

              else
              {
                focus2 = &stru_101F6AFB8;
              }

              conversationID = [chatCopy conversationID];
              if (conversationID)
              {
                conversationID2 = [chatCopy conversationID];
              }

              else
              {
                conversationID2 = &stru_101F6AFB8;
              }

              uuid2 = [dCopy uuid];
              *buf = 136316163;
              *&buf[4] = v49;
              *&buf[12] = 2080;
              *&buf[14] = v48;
              *&buf[22] = 2113;
              *v70 = focus2;
              *&v70[8] = 2114;
              *&v70[10] = conversationID2;
              *&v70[18] = 2114;
              *&v70[20] = uuid2;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] changeIcon: [slot: %s, security: %s, chat.focus: %{private}@, chat.conversationID: %{public}@, operationID: %{public}@]", buf, 0x34u);

              if (conversationID)
              {
              }

              if (focus)
              {
              }
            }

            v67 = 0;
            v68 = 0;
            sub_1006E5E0C(self, &v67, v20);
            if (!v67)
            {
              objc_msgSend_getLogContext(self);
              v40 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_10177AD04();
              }

              *buf = 5;
              buf[4] = 1;
              v41 = sub_100A99330(buf);
              completionCopy[2](completionCopy, v41);

              goto LABEL_64;
            }

            v28 = sub_100018A64([iconCopy slotID]);
            v66 = 0;
            *v65 = 0u;
            *__p = 0u;
            memset(v64, 0, sizeof(v64));
            if (newIconCopy)
            {
              data = [newIconCopy data];
              v30 = data == 0;

              if (!v30)
              {
                data2 = [newIconCopy data];
                v32 = [data2 length];

                data3 = [newIconCopy data];
                v34 = data3;
                bytes = [data3 bytes];

                v56 = 0;
                v57 = 0;
                v58 = 0;
                sub_1000DCF88(&v56, bytes, &v32[bytes], v32);
                name = [newIconCopy name];
                v37 = name;
                sub_10000501C(buf, [name UTF8String]);
                memset(v70, 0, 24);
                sub_100034C50(v70, v56, v57, v57 - v56);
                type = [newIconCopy type];
                v39 = type;
                sub_10000501C(&v70[24], [type UTF8String]);
                if (SHIBYTE(v64[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                *__p = *buf;
                v64[0] = *&buf[16];
                buf[23] = 0;
                buf[0] = 0;
                if (v64[1])
                {
                  v64[2] = v64[1];
                  operator delete(v64[1]);
                }

                *&v64[1] = *v70;
                v64[3] = *&v70[16];
                memset(v70, 0, 24);
                if (SHIBYTE(v66) < 0)
                {
                  operator delete(v65[0]);
                  *v65 = *&v70[24];
                  v66 = v71;
                  HIBYTE(v71) = 0;
                  v70[24] = 0;
                  if (*v70)
                  {
                    *&v70[8] = *v70;
                    operator delete(*v70);
                  }
                }

                else
                {
                  *v65 = *&v70[24];
                  v66 = v71;
                  HIBYTE(v71) = 0;
                  v70[24] = 0;
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (v56)
                {
                  v57 = v56;
                  operator delete(v56);
                }
              }
            }

            v42 = v67;
            sub_1006F2118(chatCopy, &v56);
            uuid3 = [dCopy uuid];
            v44 = uuid3;
            sub_10000501C(v54, [uuid3 UTF8String]);
            buf[0] = securityCopy != 0;
            buf[8] = 0;
            v72 = 0;
            v45 = (*(*v42 + 352))(v42, v28, &v56, __p, v54, buf);
            if (v72 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            if (v62 < 0)
            {
              operator delete(v61);
            }

            if (v60 < 0)
            {
              operator delete(v59);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(v56);
              if ((v45 & 0x100000000) == 0)
              {
                goto LABEL_53;
              }
            }

            else if ((v45 & 0x100000000) == 0)
            {
LABEL_53:
              completionCopy[2](completionCopy, 0);
LABEL_58:
              if (SHIBYTE(v66) < 0)
              {
                operator delete(v65[0]);
              }

              if (v64[1])
              {
                v64[2] = v64[1];
                operator delete(v64[1]);
              }

              if (SHIBYTE(v64[0]) < 0)
              {
                operator delete(__p[0]);
              }

LABEL_64:
              if (v68)
              {
                sub_100004A34(v68);
              }

              goto LABEL_66;
            }

            objc_msgSend_getLogContext(self);
            v46 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_10177BA04();
            }

            *buf = v45;
            buf[4] = 1;
            v47 = sub_100A99330(buf);
            completionCopy[2](completionCopy, v47);

            goto LABEL_58;
          }
        }
      }
    }

    objc_msgSend_getLogContext(self);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v23 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v23);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177BA38();
    }
  }

LABEL_66:
}

- (void)changeSubject:(id)subject forGroupChat:(id)chat withNewSubject:(id)newSubject withOperationID:(id)d withSecurity:(id)security completion:(id)completion
{
  subjectCopy = subject;
  chatCopy = chat;
  newSubjectCopy = newSubject;
  dCopy = d;
  securityCopy = security;
  completionCopy = completion;
  if (completionCopy)
  {
    if (subjectCopy)
    {
      if (chatCopy)
      {
        if (dCopy)
        {
          uuid = [dCopy uuid];

          if (uuid)
          {
            objc_msgSend_getLogContext(self);
            v21 = *&v62[4];
            ctu::OsLogContext::~OsLogContext(buf);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:
              memset(&v60, 0, sizeof(v60));
              if (newSubjectCopy)
              {
                displayString = [newSubjectCopy displayString];
                v29 = displayString;
                sub_100016890(&v60, [displayString UTF8String]);
              }

              v30 = sub_100018A64([subjectCopy slotID]);
              v58 = 0;
              v59 = 0;
              sub_1006E5FC4(self, v31, &v58);
              v32 = v58;
              if (v58)
              {
                memset(v56, 0, sizeof(v56));
                v57 = 1;
                sub_1006F2118(chatCopy, v50);
                uuid2 = [dCopy uuid];
                v34 = uuid2;
                sub_10000501C(__p, [uuid2 UTF8String]);
                buf[0] = securityCopy != 0;
                v62[4] = 0;
                v71 = 0;
                v35 = (*(*v32 + 120))(v32, v56, v30, v50, &v60, __p, buf);
                if (v71 == 1)
                {
                  sub_1002AF7A0(&v62[12]);
                }

                if (v49 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v55 < 0)
                {
                  operator delete(v54);
                }

                if (v53 < 0)
                {
                  operator delete(v52);
                }

                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }

                TMClientInfo::~TMClientInfo(v56);
                if ((v35 & 0x100000000) != 0)
                {
                  objc_msgSend_getLogContext(self);
                  v38 = *&v62[4];
                  ctu::OsLogContext::~OsLogContext(buf);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177BA04();
                  }

                  *buf = v35;
                  v62[0] = 1;
                  v39 = sub_100A99330(buf);
                  completionCopy[2](completionCopy, v39);
                }

                else
                {
                  completionCopy[2](completionCopy, 0);
                }
              }

              else
              {
                objc_msgSend_getLogContext(self);
                v36 = *&v62[4];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B934();
                }

                *buf = 5;
                v62[0] = 1;
                v37 = sub_100A99330(buf);
                completionCopy[2](completionCopy, v37);
              }

              if (v59)
              {
                sub_100004A34(v59);
              }

              if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v60.__r_.__value_.__l.__data_);
              }

              goto LABEL_58;
            }

            [subjectCopy slotID];
            v43 = CTSubscriptionSlotAsString();
            v22 = "true";
            if (!securityCopy)
            {
              v22 = "false";
            }

            v42 = v22;
            focus = [chatCopy focus];
            if (focus)
            {
              focus2 = [chatCopy focus];
            }

            else
            {
              focus2 = &stru_101F6AFB8;
            }

            conversationID = [chatCopy conversationID];
            if (conversationID)
            {
              conversationID2 = [chatCopy conversationID];
              if (newSubjectCopy)
              {
                goto LABEL_19;
              }
            }

            else
            {
              conversationID2 = &stru_101F6AFB8;
              if (newSubjectCopy)
              {
LABEL_19:
                displayString2 = [newSubjectCopy displayString];
                if (displayString2)
                {
                  displayString3 = [newSubjectCopy displayString];
                  v41 = 1;
                }

                else
                {
                  displayString2 = 0;
                  v41 = 0;
                  displayString3 = &stru_101F6AFB8;
                }

                goto LABEL_24;
              }
            }

            v41 = 0;
            displayString3 = &stru_101F6AFB8;
LABEL_24:
            uuid3 = [dCopy uuid];
            *buf = 136316418;
            *v62 = v43;
            *&v62[8] = 2080;
            *&v62[10] = v42;
            v63 = 2114;
            v64 = focus2;
            v65 = 2114;
            v66 = conversationID2;
            v67 = 2112;
            v68 = displayString3;
            v69 = 2114;
            v70 = uuid3;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] changeSubject: [slot: %s, security: %s, chat.focus: %{public}@, chat.conversationID: %{public}@, subject: %{senstive}@, operationID: %{public}@]", buf, 0x3Eu);

            if (v41)
            {
            }

            if (newSubjectCopy)
            {
            }

            if (conversationID)
            {
            }

            if (focus)
            {
            }

            goto LABEL_33;
          }
        }
      }
    }

    objc_msgSend_getLogContext(self);
    v23 = *&v62[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    v62[0] = 1;
    v24 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v24);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v25 = *&v62[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177BA6C();
    }
  }

LABEL_58:
}

- (void)create:(id)create groupChat:(id)chat withOperationID:(id)d completion:(id)completion
{
  createCopy = create;
  chatCopy = chat;
  dCopy = d;
  completionCopy = completion;
  v84 = createCopy;
  if (completionCopy)
  {
    if (createCopy)
    {
      if (chatCopy)
      {
        if (dCopy)
        {
          uuid = [dCopy uuid];
          if (uuid)
          {
            participants = [chatCopy participants];
            if (participants)
            {
              participants2 = [chatCopy participants];
              memberList = [participants2 memberList];

              if (memberList)
              {
                objc_msgSend_getLogContext(self);
                v17 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                selfCopy = self;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  [createCopy slotID];
                  v83 = CTSubscriptionSlotAsString();
                  participants3 = [chatCopy participants];
                  memberList2 = [participants3 memberList];
                  v20 = [memberList2 count];
                  subject = [chatCopy subject];
                  if (subject)
                  {
                    subject2 = [chatCopy subject];
                    displayString = [subject2 displayString];
                    if (displayString)
                    {
                      subject3 = [chatCopy subject];
                      displayString2 = [subject3 displayString];
                      v23 = 1;
                    }

                    else
                    {
                      displayString = 0;
                      v23 = 0;
                      displayString2 = &stru_101F6AFB8;
                    }
                  }

                  else
                  {
                    v23 = 0;
                    displayString2 = &stru_101F6AFB8;
                  }

                  uuid2 = [dCopy uuid];
                  *buf = 136316163;
                  *&buf[4] = v83;
                  *&buf[12] = 2048;
                  *&buf[14] = v20;
                  *&buf[22] = 2160;
                  *&buf[24] = 1752392040;
                  *&buf[32] = 2117;
                  *&buf[34] = displayString2;
                  *&buf[42] = 2114;
                  *&buf[44] = uuid2;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] create: [slot: %s, chat.participants.size: %ld, chat.subject: %{sensitive, mask.hash}@, operationID: %{public}@]", buf, 0x34u);

                  if (v23)
                  {
                  }

                  if (subject)
                  {
                  }
                }

                v81 = sub_100018A64([v84 slotID]);
                v101 = 0u;
                v102 = 0u;
                v100 = 0u;
                participants4 = [chatCopy participants];
                memberList3 = [participants4 memberList];
                v30 = [memberList3 count];

                if (v30)
                {
                  for (i = 0; i != v30; ++i)
                  {
                    participants5 = [chatCopy participants];
                    memberList4 = [participants5 memberList];
                    v34 = [memberList4 objectAtIndexedSubscript:i];

                    member = [v34 member];
                    v36 = member;
                    sub_10000501C(buf, [member UTF8String]);
                    *&buf[24] = -1;
                    buf[28] = 0;
                    v37 = v102;
                    if (v102 >= *(&v102 + 1))
                    {
                      *&v102 = sub_1006AD550(&v101 + 8, buf);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    else
                    {
                      v38 = *buf;
                      *(v102 + 16) = *&buf[16];
                      *v37 = v38;
                      memset(buf, 0, 24);
                      v39 = buf[28];
                      *(v37 + 24) = *&buf[24];
                      *(v37 + 28) = v39;
                      *&v102 = v37 + 32;
                    }
                  }
                }

                __p = 0u;
                v99 = 0u;
                subject4 = [chatCopy subject];
                if (subject4)
                {
                  subject5 = [chatCopy subject];
                  displayString3 = [subject5 displayString];
                  if (displayString3)
                  {
                    subject6 = [chatCopy subject];
                    displayString4 = [subject6 displayString];
                    v45 = [displayString4 length] == 0;

                    if (!v45)
                    {
                      subject7 = [chatCopy subject];
                      displayString5 = [subject7 displayString];
                      v48 = displayString5;
                      sub_10000501C(buf, [displayString5 UTF8String]);
                      if (BYTE8(v99) == 1)
                      {
                        if (SBYTE7(v99) < 0)
                        {
                          operator delete(__p);
                        }

                        __p = *buf;
                        *&v99 = *&buf[16];
                        buf[23] = 0;
                        buf[0] = 0;
                      }

                      else
                      {
                        __p = *buf;
                        *&v99 = *&buf[16];
                        memset(buf, 0, 24);
                        BYTE8(v99) = 1;
                      }
                    }
                  }

                  else
                  {
                  }
                }

                v97 = 0u;
                v95 = 0u;
                *v96 = 0u;
                *v93 = 0u;
                *v94 = 0u;
                icon = [chatCopy icon];
                v50 = icon == 0;

                if (!v50)
                {
                  icon2 = [chatCopy icon];
                  data = [icon2 data];
                  v53 = data == 0;

                  if (v53)
                  {
                    v61 = 0;
                    v62 = 0;
                  }

                  else
                  {
                    icon3 = [chatCopy icon];
                    data2 = [icon3 data];
                    v56 = [data2 length];

                    icon4 = [chatCopy icon];
                    data3 = [icon4 data];
                    v59 = data3;
                    bytes = [data3 bytes];

                    memset(buf, 0, 24);
                    sub_1000DCF88(buf, bytes, &v56[bytes], v56);
                    v62 = *buf;
                    v61 = *&buf[8];
                  }

                  icon5 = [chatCopy icon];
                  name = [icon5 name];
                  v65 = name;
                  sub_10000501C(buf, [name UTF8String]);
                  memset(&buf[24], 0, 24);
                  sub_100034C50(&buf[24], v62, v61, v61 - v62);
                  icon6 = [chatCopy icon];
                  type = [icon6 type];
                  v68 = type;
                  sub_10000501C(&buf[48], [type UTF8String]);
                  sub_1006F79E0(v93, buf);
                  if (SBYTE7(v104) < 0)
                  {
                    operator delete(*&buf[48]);
                  }

                  if (*&buf[24])
                  {
                    *&buf[32] = *&buf[24];
                    operator delete(*&buf[24]);
                  }

                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }

                  if (v62)
                  {
                    operator delete(v62);
                  }
                }

                v115 = 0;
                v113 = 0u;
                v114 = 0u;
                memset(v112, 0, sizeof(v112));
                v110 = 0u;
                memset(v111, 0, sizeof(v111));
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v104 = 0u;
                v105 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_10004EFD0(buf, v100, *(&v100 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v100 + 1) - v100) >> 3));
                memset(&buf[24], 0, 24);
                sub_1000D4704(&buf[24], SDWORD2(v101), v102, (v102 - *(&v101 + 1)) >> 5);
                BYTE8(v110) = 0;
                *&buf[48] = 0u;
                v104 = 0u;
                v105 = 0u;
                LOBYTE(v106) = 0;
                sub_1000D43F8(v111, &__p);
                sub_1000D4448(v112, v93);
                v113 = 0uLL;
                *&v114 = 0;
                DWORD2(v114) = -1;
                BYTE12(v114) = 0;
                LOBYTE(v115) = [chatCopy secure];
                v91 = 0;
                v92 = 0;
                sub_1006E5FC4(selfCopy, v69, &v91);
                v70 = v91;
                if (v91)
                {
                  memset(v89, 0, sizeof(v89));
                  v90 = 1;
                  uuid3 = [dCopy uuid];
                  v72 = uuid3;
                  sub_10000501C(&v86, [uuid3 UTF8String]);
                  v73 = (*(*v70 + 128))(v70, v89, v81, buf, &v86);
                  if (v88 < 0)
                  {
                    operator delete(v86);
                  }

                  TMClientInfo::~TMClientInfo(v89);
                  if ((v73 & 0x100000000) != 0)
                  {
                    objc_msgSend_getLogContext(selfCopy);
                    v76 = v87;
                    ctu::OsLogContext::~OsLogContext(&v86);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      sub_10177BAA0();
                    }

                    LODWORD(v86) = v73;
                    BYTE4(v86) = 1;
                    v77 = sub_100A99330(&v86);
                    completionCopy[2](completionCopy, v77);
                  }

                  else
                  {
                    completionCopy[2](completionCopy, 0);
                  }
                }

                else
                {
                  objc_msgSend_getLogContext(selfCopy);
                  v74 = v87;
                  ctu::OsLogContext::~OsLogContext(&v86);
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177B934();
                  }

                  LODWORD(v86) = 5;
                  BYTE4(v86) = 1;
                  v75 = sub_100A99330(&v86);
                  completionCopy[2](completionCopy, v75);
                }

                if (v92)
                {
                  sub_100004A34(v92);
                }

                sub_1000D45B0(buf);
                if (BYTE8(v97) == 1)
                {
                  if (SBYTE7(v97) < 0)
                  {
                    operator delete(v96[0]);
                  }

                  if (v94[1])
                  {
                    *&v95 = v94[1];
                    operator delete(v94[1]);
                  }

                  if (SHIBYTE(v94[0]) < 0)
                  {
                    operator delete(v93[0]);
                  }
                }

                if (BYTE8(v99) == 1 && SBYTE7(v99) < 0)
                {
                  operator delete(__p);
                }

                *buf = &v101 + 8;
                sub_1000D48DC(buf);
                *buf = &v100;
                sub_1000087B4(buf);
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    objc_msgSend_getLogContext(self);
    v25 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v26 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v26);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177BAD4();
    }
  }

LABEL_18:
}

- (void)exit:(id)exit groupChat:(id)chat withOperationID:(id)d completion:(id)completion
{
  exitCopy = exit;
  chatCopy = chat;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (exitCopy && chatCopy && dCopy && ([dCopy uuid], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      objc_msgSend_getLogContext(self);
      v15 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [exitCopy slotID];
        v16 = CTSubscriptionSlotAsString();
        focus = [chatCopy focus];
        if (focus)
        {
          focus2 = [chatCopy focus];
        }

        else
        {
          focus2 = &stru_101F6AFB8;
        }

        conversationID = [chatCopy conversationID];
        if (conversationID)
        {
          conversationID2 = [chatCopy conversationID];
        }

        else
        {
          conversationID2 = &stru_101F6AFB8;
        }

        uuid = [dCopy uuid];
        v33 = conversationID;
        *buf = 136315906;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = focus2;
        v43 = 2114;
        v44 = conversationID2;
        v45 = 2114;
        v46 = uuid;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] exit: [slot: %s, chat.focus: %{public}@, chat.conversationID: %{public}@, operationID: %{public}@]", buf, 0x2Au);

        if (conversationID)
        {
        }

        if (focus)
        {
        }
      }

      v23 = sub_100018A64([exitCopy slotID]);
      v40 = 0;
      v41 = 0;
      sub_1006E5FC4(self, v24, &v40);
      v25 = v40;
      if (v40)
      {
        memset(v38, 0, sizeof(v38));
        v39 = 1;
        sub_1006F2118(chatCopy, buf);
        uuid2 = [dCopy uuid];
        v27 = uuid2;
        sub_10000501C(__p, [uuid2 UTF8String]);
        v28 = (*(*v25 + 136))(v25, v38, v23, buf, __p);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47 < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(*buf);
        }

        TMClientInfo::~TMClientInfo(v38);
        if ((v28 & 0x100000000) != 0)
        {
          objc_msgSend_getLogContext(self);
          v31 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10177BB08();
          }

          *buf = v28;
          buf[4] = 1;
          v32 = sub_100A99330(buf);
          completionCopy[2](completionCopy, v32);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v29 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10177B934();
        }

        *buf = 5;
        buf[4] = 1;
        v30 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v30);
      }

      if (v41)
      {
        sub_100004A34(v41);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v18 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v18);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v19 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10177BB3C();
    }
  }
}

- (void)deleteChat:(id)chat chat:(id)a4 completion:(id)completion
{
  chatCopy = chat;
  v9 = a4;
  completionCopy = completion;
  if (completionCopy)
  {
    if (chatCopy && v9)
    {
      objc_msgSend_getLogContext(self);
      v11 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [chatCopy slotID];
        v13 = CTSubscriptionSlotAsString();
        *buf = 136315395;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] deleteChat: [slot: %s, chat: %{private}@]", buf, 0x16u);
      }

      v24 = 0;
      v25 = 0;
      sub_1006E5E0C(self, &v24, v12);
      if (!v24)
      {
        objc_msgSend_getLogContext(self);
        v21 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10177BB70();
        }

        *buf = 5;
        buf[4] = 1;
        v22 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v22);

        goto LABEL_20;
      }

      v14 = sub_100018A64([chatCopy slotID]);
      v15 = v24;
      v16 = v9;
      sub_10000501C(buf, [v9 UTF8String]);
      v17 = (*(*v15 + 368))(v15, v14, buf);
      if (v27 < 0)
      {
        operator delete(*buf);
        if ((v17 & 0x100000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v17 & 0x100000000) == 0)
      {
LABEL_9:
        completionCopy[2](completionCopy, 0);
        goto LABEL_20;
      }

      *buf = v17;
      buf[4] = 1;
      v23 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v23);

LABEL_20:
      if (v25)
      {
        sub_100004A34(v25);
      }

      goto LABEL_22;
    }

    objc_msgSend_getLogContext(self);
    v19 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v20 = sub_100A99330(buf);
    completionCopy[2](completionCopy, v20);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177BBA4();
    }
  }

LABEL_22:
}

- (void)setProvisioningServerURL:(id)l url:(id)url completion:(id)completion
{
  lCopy = l;
  urlCopy = url;
  completionCopy = completion;
  if (completionCopy)
  {
    if (lCopy && urlCopy)
    {
      objc_msgSend_getLogContext(self);
      v11 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [lCopy slotID];
        v13 = CTSubscriptionSlotAsString();
        *buf = 136315395;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = urlCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] setProvisioningServerURL: [slot: %s, url: %{private}@]", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_1006E5E0C(self, buf, v12);
      if (*buf)
      {
        v14 = sub_100018A64([lCopy slotID]);
        v15 = *buf;
        v16 = urlCopy;
        sub_10000501C(__p, [urlCopy UTF8String]);
        (*(*v15 + 160))(v15, v14, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        completionCopy[2](completionCopy, 0);
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v20 = v26;
        ctu::OsLogContext::~OsLogContext(&v24);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10177BBD8();
        }

        v24 = 5;
        v25 = 1;
        v21 = sub_100A99330(&v24);
        (completionCopy)[2](completionCopy, v21);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v18 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v19 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, v19);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177BC0C();
    }
  }
}

- (void)getProvisioningServerURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (completionCopy)
  {
    if (lCopy)
    {
      objc_msgSend_getLogContext(self);
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [lCopy slotID];
        v10 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] getProvisioningServerURL: [slot: %s]", buf, 0xCu);
      }

      v23 = 0;
      v24 = 0;
      sub_1006E5E0C(self, &v23, v9);
      if (v23)
      {
        sub_100018A64([lCopy slotID]);
        *buf = 0u;
        v26 = 0u;
        (*(*v23 + 168))(buf);
        if (BYTE8(v26))
        {
          if ((SBYTE7(v26) & 0x80u) == 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          v12 = [NSString stringWithUTF8String:v11];
          completionCopy[2](completionCopy, v12, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v22;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10177BC40();
          }

          v20 = 5;
          v21 = 1;
          v19 = sub_100A99330(&v20);
          (completionCopy)[2](completionCopy, 0, v19);
        }

        if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v16 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        *buf = 5;
        buf[4] = 1;
        v17 = sub_100A99330(buf);
        (completionCopy)[2](completionCopy, 0, v17);
      }

      if (v24)
      {
        sub_100004A34(v24);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v14 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v15 = sub_100A99330(buf);
      (completionCopy)[2](completionCopy, 0, v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCA8();
    }
  }
}

- (void)sendOneToManyTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  withMessageCopy = withMessage;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy && dCopy && withMessageCopy)
    {
      objc_msgSend_getLogContext(self);
      v17 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [messageCopy slotID];
        v19 = CTSubscriptionSlotAsString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", &buf, 0xCu);
      }

      v39 = 0;
      v40 = 0;
      sub_1006E5E0C(self, &v39, v18);
      if (v39)
      {
        v20 = sub_100018A64([messageCopy slotID]);
        v38 = 0;
        v21 = v39;
        sub_1006F907C(toCopy, v37);
        sub_1006E8724(dCopy, &buf);
        content = [withMessageCopy content];
        v23 = content;
        sub_10000501C(__p, [content UTF8String]);
        v34 = 0;
        v35 = 0;
        metaData = [withMessageCopy metaData];
        sub_1006EBDBC(metaData, v36);
        v25 = (*(*v21 + 384))(v21, v20, v37, &buf, __p);
        LODWORD(v38) = v25;
        BYTE4(v38) = BYTE4(v25);
        if (v36[24] == 1)
        {
          v41 = v36;
          sub_100190608(&v41);
        }

        if (v35 == 1)
        {
          v41 = &v34;
          sub_10019029C(&v41);
        }

        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        if (v46 == 1 && v45 < 0)
        {
          operator delete(v44);
        }

        if (v43 < 0)
        {
          operator delete(buf);
        }

        *&buf = v37;
        sub_1006FB6F8(&buf);
        if ((v25 & 0x100000000) != 0)
        {
          v31 = sub_100A99330(&v38);
          completionCopy[2](completionCopy, v31);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v29 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        LODWORD(buf) = 5;
        BYTE4(buf) = 1;
        v30 = sub_100A99330(&buf);
        completionCopy[2](completionCopy, v30);
      }

      if (v40)
      {
        sub_100004A34(v40);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v27 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      LODWORD(buf) = 4;
      BYTE4(buf) = 1;
      v28 = sub_100A99330(&buf);
      completionCopy[2](completionCopy, v28);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v26 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)sendOneToManyGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  pushCopy = push;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy && dCopy && pushCopy)
    {
      objc_msgSend_getLogContext(self);
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [messageCopy slotID];
        v19 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", buf, 0xCu);
      }

      v49 = 0;
      v50 = 0;
      sub_1006E5E0C(self, &v49, v18);
      if (v49)
      {
        v39 = sub_100018A64([messageCopy slotID]);
        *v47 = 0u;
        v48 = 0u;
        additionalDescription = [pushCopy additionalDescription];
        v21 = additionalDescription == 0;

        if (!v21)
        {
          additionalDescription2 = [pushCopy additionalDescription];
          v23 = additionalDescription2;
          *buf = [additionalDescription2 UTF8String];
          sub_100184AD0(v47, buf);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *v52 = 0u;
        v53 = 0u;
        *buf = 0u;
        coordinates = [pushCopy coordinates];
        longitude = [coordinates longitude];
        [longitude doubleValue];
        *buf = v25;
        coordinates2 = [pushCopy coordinates];
        latitude = [coordinates2 latitude];
        [latitude doubleValue];
        *&buf[8] = v28;
        sub_10006F264(v52, v47);
        LOBYTE(v54) = 0;
        BYTE8(v55) = 0;
        metaData = [pushCopy metaData];
        sub_1006EBDBC(metaData, &v56);

        v46 = 0;
        v30 = v49;
        sub_1006F907C(toCopy, v45);
        sub_1006E8724(dCopy, v40);
        v31 = (*(*v30 + 392))(v30, v39, v45, v40, buf);
        LODWORD(v46) = v31;
        BYTE4(v46) = BYTE4(v31);
        if (v44 == 1 && v43 < 0)
        {
          operator delete(__p);
        }

        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        v40[0] = v45;
        sub_1006FB6F8(v40);
        if ((v31 & 0x100000000) != 0)
        {
          v37 = sub_100A99330(&v46);
          completionCopy[2](completionCopy, v37);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        if (BYTE8(v57) == 1)
        {
          v40[0] = &v56;
          sub_100190608(v40);
        }

        if (BYTE8(v55) == 1)
        {
          v40[0] = &v54;
          sub_10019029C(v40);
        }

        if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
        {
          operator delete(v52[0]);
        }

        if (BYTE8(v48) == 1 && SBYTE7(v48) < 0)
        {
          operator delete(v47[0]);
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v35 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        *buf = 5;
        buf[4] = 1;
        v36 = sub_100A99330(buf);
        completionCopy[2](completionCopy, v36);
      }

      if (v50)
      {
        sub_100004A34(v50);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v33 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v34 = sub_100A99330(buf);
      completionCopy[2](completionCopy, v34);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)sendOneToManyFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor completion:(id)completion
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  descriptorCopy = descriptor;
  completionCopy = completion;
  if (completionCopy)
  {
    if (messageCopy && toCopy && dCopy && descriptorCopy)
    {
      objc_msgSend_getLogContext(self);
      v17 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [messageCopy slotID];
        v19 = CTSubscriptionSlotAsString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", &buf, 0xCu);
      }

      v59 = 0;
      v58 = 0;
      sub_1006E5E0C(self, &v58, v18);
      if (v58)
      {
        v20 = sub_100018A64([messageCopy slotID]);
        bzero(v37, 0x208uLL);
        sub_1006EB6AC(descriptorCopy, v37);
        v36 = 0;
        v21 = v58;
        sub_1006F907C(toCopy, v35);
        sub_1006E8724(dCopy, v30);
        sub_1001907C0(&buf, v37);
        sub_100190C40(v79, v56);
        sub_100190324(v80, v57);
        v82 = 0;
        v83 = 0;
        metaData = [descriptorCopy metaData];
        sub_1006EBDBC(metaData, v84);
        v23 = (*(*v21 + 400))(v21, v20, v35, v30, &buf);
        LODWORD(v36) = v23;
        BYTE4(v36) = BYTE4(v23);
        if (v84[24] == 1)
        {
          v60 = v84;
          sub_100190608(&v60);
        }

        if (v83 == 1)
        {
          v60 = &v82;
          sub_10019029C(&v60);
        }

        if (v81 == 1)
        {
          v60 = v80;
          sub_100190608(&v60);
        }

        sub_100190D9C(v79);
        if (v78 == 1)
        {
          if (v77 == 1)
          {
            if (__p)
            {
              v76 = __p;
              operator delete(__p);
            }

            if (v74 == 1 && v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            if (v71 == 1 && v69)
            {
              v70 = v69;
              operator delete(v69);
            }

            if (v67)
            {
              v68 = v67;
              operator delete(v67);
            }
          }

          if (v66 < 0)
          {
            operator delete(v65);
          }

          if (v64 < 0)
          {
            operator delete(v63);
          }

          if (v62 < 0)
          {
            operator delete(*(&buf + 1));
          }
        }

        if (v34 == 1 && v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        *&buf = v35;
        sub_1006FB6F8(&buf);
        if (BYTE4(v36) == 1)
        {
          v24 = sub_100A99330(&v36);
          completionCopy[2](completionCopy, v24);
        }

        else
        {
          completionCopy[2](completionCopy, 0);
        }

        if (v57[24] == 1)
        {
          *&buf = v57;
          sub_100190608(&buf);
        }

        sub_100190D9C(v56);
        if (v55 == 1)
        {
          if (v54 == 1)
          {
            if (v52)
            {
              v53 = v52;
              operator delete(v52);
            }

            if (v51 == 1 && v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            if (v48 == 1 && v46)
            {
              v47 = v46;
              operator delete(v46);
            }

            if (v44)
            {
              v45 = v44;
              operator delete(v44);
            }
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v28 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        LODWORD(buf) = 5;
        BYTE4(buf) = 1;
        v29 = sub_100A99330(&buf);
        completionCopy[2](completionCopy, v29);
      }

      if (v59)
      {
        sub_100004A34(v59);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v26 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      LODWORD(buf) = 4;
      BYTE4(buf) = 1;
      v27 = sub_100A99330(&buf);
      completionCopy[2](completionCopy, v27);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v25 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)copyPriVersion:(id)version completion:(id)completion
{
  versionCopy = version;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!versionCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([versionCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F11378;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 136))(v16, v20, v27);
          sub_10114B538(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find ActivationInterface for getting PRI version", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for PRI version query", &v24, 2u);
  }

LABEL_23:
}

- (void)getActivationPolicyState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (v21)
    {
      sub_100004A34(v21);
    }

    if (!v13)
    {
      objc_msgSend_getLogContext(self);
      v19 = v21;
      ctu::OsLogContext::~OsLogContext(&v20);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find ActivationInterface for activation policy status query", &v20, 2u);
      }

      v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      stateCopy[2](stateCopy, 0, v16);
      goto LABEL_24;
    }

    v16 = objc_opt_new();
    [v16 setCarrierLock:0];
    v17 = (*(*v13 + 152))(v13);
    if (v17 == 1)
    {
      v18 = 1;
    }

    else
    {
      if (v17 != 2)
      {
LABEL_23:
        (stateCopy)[2](stateCopy, v16, 0);
LABEL_24:

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_26;
      }

      v18 = 2;
    }

    [v16 setCarrierLock:v18];
    goto LABEL_23;
  }

  objc_msgSend_getLogContext(self);
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for activation policy status query", &v20, 2u);
  }

LABEL_26:
}

- (void)isFactoryDebugEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (enabledCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = [NSNumber numberWithBool:(*(*v13 + 96))(v13)];
          enabledCopy[2](enabledCopy, v16, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find activation handler to query the factory debug state", &v18, 2u);
          }

          v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (enabledCopy)[2](enabledCopy, 0, v16);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for factory debug state query", &v18, 2u);
  }

LABEL_21:
}

- (void)fetchBasebandTicket:(BOOL)ticket withCompletion:(id)completion
{
  ticketCopy = ticket;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v21);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v23 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v23);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_12:
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v15)
        {
          v18 = objc_retainBlock(completionCopy);
          v24[0] = off_101F11408;
          v24[1] = v18;
          v24[3] = v24;
          (*(*v15 + 104))(v15, ticketCopy, v24);
          sub_10000FF50(v24);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v19 = v22;
          ctu::OsLogContext::~OsLogContext(&v21);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v21) = 0;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find activation handler to fetch baseband ticket", &v21, 2u);
          }

          v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v20);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v17 = v22;
  ctu::OsLogContext::~OsLogContext(&v21);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler to fetch baseband ticket", &v21, 2u);
  }

LABEL_21:
}

- (void)setVoLTEAudioCodec:(id)codec codecInfo:(id)info completion:(id)completion
{
  codecCopy = codec;
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    if (codecCopy)
    {
      if (infoCopy)
      {
        objc_msgSend_registry(self);
        ServiceMap = Registry::getServiceMap(*buf);
        v12 = ServiceMap;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
          v15 = 5381;
          do
          {
            v13 = v15;
            v16 = *v14++;
            v15 = (33 * v15) ^ v16;
          }

          while (v16);
        }

        std::mutex::lock(ServiceMap);
        v33 = v13;
        v17 = sub_100009510(&v12[1].__m_.__sig, &v33);
        if (v17)
        {
          v18 = v17[3];
          v19 = v17[4];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v12);
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v28 = v19;
            sub_100004A34(v19);
            v29 = 0;
LABEL_20:
            if (v31)
            {
              sub_100004A34(v31);
            }

            if (v18)
            {
              v27 = sub_100018A64([codecCopy slotID]);
              *buf = 0;
              v31 = 0;
              v32 = 0;
              [infoCopy callId];
              [infoCopy codec];
              [infoCopy amrMode];
              [infoCopy evsBandwidth];
              [infoCopy evsBitrate];
              [infoCopy sampleRate];
              [infoCopy i2SClockRate];
              AudioCodecInfo::AudioCodecInfo();
              v24 = objc_retainBlock(completionCopy);
              v34[0] = off_101F11D78;
              v34[1] = v24;
              v34[3] = v34;
              (*(*v18 + 440))(v18, v27, buf, v34);
              sub_100014380(v34);
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v25 = v31;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find DataServiceInterface for setting VoLTE codec", buf, 2u);
              }

              v26 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
              (*(completionCopy + 2))(completionCopy, v26);
            }

            if ((v29 & 1) == 0)
            {
              sub_100004A34(v28);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v18 = 0;
        }

        std::mutex::unlock(v12);
        v28 = 0;
        v29 = 1;
        goto LABEL_20;
      }

      objc_msgSend_getLogContext(self);
      v23 = v31;
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid codec info for setting VoLTE codec", buf, 2u);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v21 = v31;
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid context for setting VoLTE codec", buf, 2u);
      }
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v22);

    goto LABEL_29;
  }

  objc_msgSend_getLogContext(self);
  v20 = v31;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting VoLTE codec", buf, 2u);
  }

LABEL_29:
}

- (void)getSIMToolkitMenuForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          v19 = sub_100018A64([contextCopy slotID]);
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          *buf = 0u;
          (*(*v16 + 24))(buf, v16, v19);
          if (v39)
          {
            v30 = contextCopy;
            v20 = [CTSIMToolkitMenu alloc];
            if ((SBYTE7(v37) & 0x80u) == 0)
            {
              v21 = buf;
            }

            else
            {
              v21 = *buf;
            }

            v22 = [NSString stringWithUTF8String:v21];
            [v20 setTitle:v22];

            v23 = objc_alloc_init(NSMutableArray);
            if (*(&v38 + 1))
            {
              v24 = 1;
              do
              {
                __p[0] = 0;
                __p[1] = 0;
                v35 = 0;
                v33 = 0;
                v31 = 0;
                v32 = 0;
                if ((*(*v16 + 32))(v16, v19, v24 - 1, __p, &v33 + 1, &v32, &v33, &v31))
                {
                  if (v35 >= 0)
                  {
                    v25 = __p;
                  }

                  else
                  {
                    v25 = __p[0];
                  }

                  v26 = [NSString stringWithUTF8String:v25];
                  [v23 addObject:v26];
                }

                if (SHIBYTE(v35) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              while (*(&v38 + 1) > v24++);
            }

            [v20 setSubTitles:v23];
            completionCopy[2](completionCopy, v20, 0);

            contextCopy = v30;
          }

          else
          {
            completionCopy[2](completionCopy, 0, 0);
          }

          if (v39 == 1 && SBYTE7(v37) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (completionCopy)[2](completionCopy, 0, v29);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit main menu", buf, 2u);
  }

LABEL_39:
}

- (void)selectSIMToolkitMenuItemForContext:(id)context index:(id)index completion:(id)completion
{
  contextCopy = context;
  indexCopy = index;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v26 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v26);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_9:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v19)
  {
    v21 = sub_100018A64([contextCopy slotID]);
    (*(*v19 + 112))(v19, v21, [indexCopy unsignedIntValue], 0);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    if ((v20 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v18);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v23);
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)getSIMToolkitListItemsForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit items selection", buf, 2u);
    }

    goto LABEL_24;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(*buf);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v37);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v16)
  {
    v29 = completionCopy;
    v30 = contextCopy;
    v19 = sub_100018A64([contextCopy slotID]);
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    LODWORD(v37) = 0;
    v32 = 0;
    v31 = 0;
    v20 = objc_alloc_init(NSMutableArray);
    v21 = 0;
    while ((*(*v16 + 56))(v16, v19, v21, buf, &v33 + 1, &v37, &v33, &v32, &v31))
    {
      v22 = [CTSIMToolkitItem alloc];
      if (v36 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithUTF8String:v23];
      v25 = [v22 initWithText:v24 selected:v31];

      [v20 addObject:v25];
      v21 = (v21 + 1);
    }

    v26 = objc_alloc_init(CTSIMToolkitItemList);
    completionCopy = v29;
    contextCopy = v30;
    [v26 setItemList:v20];
    completionCopy[2](completionCopy, v26, 0);

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
      if (v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if ((v17 & 1) == 0)
    {
LABEL_23:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v28);

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
}

- (void)selectSIMToolkitListItemForContext:(id)context session:(id)session response:(id)response index:(id)index completion:(id)completion
{
  contextCopy = context;
  sessionCopy = session;
  responseCopy = response;
  indexCopy = index;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(*buf);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v35 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v35);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (v24)
  {
    unsignedIntValue = [sessionCopy unsignedIntValue];
    v27 = sub_101164C98(responseCopy);
    unsignedIntValue2 = [indexCopy unsignedIntValue];
    v29 = sub_100018A64([contextCopy slotID]);
    (*(*v24 + 88))(v24, v29, unsignedIntValue, v27, unsignedIntValue2);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    if ((v25 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v23);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v30 = v34;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
    }

    v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v31);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)sendSIMToolkitResponseForContext:(id)context session:(id)session response:(id)response completion:(id)completion
{
  contextCopy = context;
  sessionCopy = session;
  responseCopy = response;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v31);
  v15 = ServiceMap;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  v33 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v33);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_9:
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (v22)
  {
    unsignedIntValue = [sessionCopy unsignedIntValue];
    v25 = sub_101164C98(responseCopy);
    v26 = sub_100018A64([contextCopy slotID]);
    v27 = *v22;
    if (v25 == 6)
    {
      v28 = 1;
    }

    else
    {
      if (v25 != 7)
      {
        (*(v27 + 72))(v22, v26, unsignedIntValue, v25);
LABEL_23:
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_25;
      }

      v28 = 0;
    }

    (*(v27 + 80))(v22, v26, unsignedIntValue, v25, v28);
    goto LABEL_23;
  }

  objc_msgSend_getLogContext(self);
  v29 = v32;
  ctu::OsLogContext::~OsLogContext(&v31);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v31) = 0;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v31, 2u);
  }

  v30 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v30);
  }

LABEL_25:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}

- (void)sendSIMToolkitStringResponseForContext:(id)context session:(id)session response:(id)response string:(id)string completion:(id)completion
{
  contextCopy = context;
  sessionCopy = session;
  responseCopy = response;
  stringCopy = string;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(__p[0]);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v37 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v37);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v24)
  {
    objc_msgSend_getLogContext(self);
    v30 = __p[1];
    ctu::OsLogContext::~OsLogContext(__p);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", __p, 2u);
    }

    v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v31);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  unsignedIntValue = [sessionCopy unsignedIntValue];
  v27 = sub_101164C98(responseCopy);
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  sub_10000501C(__p, [stringCopy UTF8String]);
  v28 = sub_100018A64([contextCopy slotID]);
  if (v27 >= 2)
  {
    if (v27 == 6)
    {
      v29 = 1;
      goto LABEL_25;
    }

    if (v27 == 7)
    {
      v29 = 0;
LABEL_25:
      (*(*v24 + 80))(v24, v28, unsignedIntValue, v27, v29);
      goto LABEL_29;
    }

    (*(*v24 + 72))(v24, v28, unsignedIntValue, v27);
LABEL_29:
    if (!completionCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
  }

  else
  {
    *__dst = *__p;
    v34 = v36;
  }

  (*(*v24 + 96))(v24, v28, unsignedIntValue, v27, __dst);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst[0]);
  if (completionCopy)
  {
LABEL_30:
    completionCopy[2](completionCopy, 0);
  }

LABEL_31:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v25 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v23);
  }

LABEL_34:
}

- (void)sendSIMToolkitBooleanResponseForContext:(id)context session:(id)session response:(id)response yesNo:(BOOL)no completion:(id)completion
{
  noCopy = no;
  contextCopy = context;
  sessionCopy = session;
  responseCopy = response;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v32);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v34 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v34);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v24)
  {
    unsignedIntValue = [sessionCopy unsignedIntValue];
    v27 = sub_101164C98(responseCopy);
    v28 = sub_100018A64([contextCopy slotID]);
    if (v27 < 2)
    {
      v29 = (*v24 + 104);
    }

    else if (v27 == 6)
    {
      v29 = (*v24 + 80);
      noCopy = 1;
    }

    else
    {
      if (v27 != 7)
      {
        (*(*v24 + 72))(v24, v28, unsignedIntValue, v27);
LABEL_24:
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_26;
      }

      noCopy = 0;
      v29 = (*v24 + 80);
    }

    (*v29)(v24, v28, unsignedIntValue, v27, noCopy);
    goto LABEL_24;
  }

  objc_msgSend_getLogContext(self);
  v30 = v33;
  ctu::OsLogContext::~OsLogContext(&v32);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v32, 2u);
  }

  v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v31);
  }

LABEL_26:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }
}

- (void)sendSIMToolkitUserActivityForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v20);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v22 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v22);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    (*(*v16 + 128))(v16);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    if ((v17 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v19);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)sendSIMToolkitDisplayReadyForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v20);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v22 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v22);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    (*(*v16 + 144))(v16);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    if ((v17 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v19);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)getSIMToolkitUSSDStringForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(__p);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          if ((sub_100B051A4() & 2) != 0)
          {
            completionCopy[2](completionCopy, @"Please add a description for this capture:", 1, 0);
          }

          else
          {
            __p = 0;
            v25 = 0;
            v26 = 0;
            (*(*v16 + 88))(&__p, v16);
            v19 = (*(*v16 + 96))(v16);
            if (v26 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v21 = [NSString stringWithUTF8String:p_p];
            completionCopy[2](completionCopy, v21, v19, 0);

            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&__p);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find Call Controller", &__p, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (completionCopy)[2](completionCopy, &stru_101F6AFB8, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit get USSD string", &__p, 2u);
  }

LABEL_27:
}

- (void)sendSIMToolkitUSSDResponseForContext:(id)context response:(id)response completion:(id)completion
{
  contextCopy = context;
  responseCopy = response;
  completionCopy = completion;
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v42[0]);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v38 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v38);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_9:
  if (v42[1])
  {
    sub_100004A34(v42[1]);
  }

  if (v19 && (sub_100B051A4() & 8) != 0)
  {
    sub_100B051E4(-1);
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v21 = v42;
    sub_10000501C(v42, [responseCopy UTF8String]);
    v22 = HIBYTE(v43);
    v23 = v42[0];
    if (v43 >= 0)
    {
      v24 = (v42 + HIBYTE(v43));
    }

    else
    {
      v24 = (v42[0] + v42[1]);
    }

    if (v43 < 0)
    {
      v21 = v42[0];
    }

    if (v21 != v24)
    {
      do
      {
        *v21 = __tolower(*v21);
        v21 = (v21 + 1);
      }

      while (v21 != v24);
      v22 = HIBYTE(v43);
      v23 = v42[0];
    }

    if (v22 >= 0)
    {
      v25 = v42;
    }

    else
    {
      v25 = v23;
    }

    sub_10000501C(__p, v25);
    (*(*v19 + 120))(v19, __p);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10097D7AC();
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }
  }

  v42[0] = 6144;
  if (IsTelephonyRunningExtended(v42))
  {
    if ((sub_100B051A4() & 2) == 0)
    {
      objc_msgSend_registry(self);
      v26 = Registry::getServiceMap(v42[0]);
      v27 = v26;
      if ((v28 & 0x8000000000000000) != 0)
      {
        v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
        v30 = 5381;
        do
        {
          v28 = v30;
          v31 = *v29++;
          v30 = (33 * v30) ^ v31;
        }

        while (v31);
      }

      std::mutex::lock(v26);
      v38 = v28;
      v32 = sub_100009510(&v27[1].__m_.__sig, &v38);
      if (v32)
      {
        v33 = v32[3];
        v34 = v32[4];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v27);
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
          v35 = 0;
LABEL_42:
          if (v42[1])
          {
            sub_100004A34(v42[1]);
          }

          if (v33)
          {
            v42[0] = 0;
            v42[1] = 0;
            v43 = 0;
            sub_10000501C(v42, [responseCopy UTF8String]);
            if (SHIBYTE(v43) < 0)
            {
              sub_100005F2C(v36, v42[0], v42[1]);
            }

            else
            {
              *v36 = *v42;
              v37 = v43;
            }

            (*(*v33 + 112))(v33, v36);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[0]);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42[0]);
            }
          }

          if ((v35 & 1) == 0)
          {
            sub_100004A34(v34);
          }

          goto LABEL_54;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v27);
      v34 = 0;
      v35 = 1;
      goto LABEL_42;
    }

    sub_100B051E4(-1);
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    sub_10000501C(v42, [responseCopy UTF8String]);
    sub_10005B8C8(&v38);
    (*(*v38 + 216))(v38, v42);
    if (v39)
    {
      sub_100004A34(v39);
    }

    sub_10097D7AC();
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }
  }

LABEL_54:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

- (void)cancelSIMToolkitUSSDSessionForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (sub_100B051A4())
  {
    sub_100B051E4(-1);
    sub_10097D7AC();
    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v18);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v20 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v20);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_10:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
LABEL_11:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v16)
  {
    (*(*v16 + 120))(v16);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

LABEL_17:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)reliableNetworkFallback:(id)fallback completion:(id)completion
{
  fallbackCopy = fallback;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(fallbackCopy);
          v20 = objc_retainBlock(completionCopy);
          v26[0] = off_101F1AB10;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 120))(v16, v19, v26);
          sub_100D5ED24(v26);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find cellular usage policy controller for getting current setting", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for rnf query", &v23, 2u);
  }

LABEL_21:
}

- (void)setReliableNetworkFallback:(id)fallback enable:(BOOL)enable completion:(id)completion
{
  enableCopy = enable;
  fallbackCopy = fallback;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting rnf", &v24, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(fallbackCopy);
    (*(*v18 + 128))(v18, v21, enableCopy);
    completionCopy[2](completionCopy, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find cellular usage policy controller for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)lowDataMode:(id)mode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(modeCopy);
          v20 = objc_retainBlock(completionCopy);
          v26[0] = off_101F1ABA0;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 16))(v16, v19, v26);
          sub_10000FF50(v26);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for low data mode query", &v23, 2u);
  }

LABEL_21:
}

- (void)setLowDataMode:(id)mode enable:(BOOL)enable completion:(id)completion
{
  enableCopy = enable;
  modeCopy = mode;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting low data mode", &v24, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(modeCopy);
    (*(*v18 + 24))(v18, v21, enableCopy);
    completionCopy[2](completionCopy, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isSmartDataModeSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = (*(*v13 + 32))(v13);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current support", &v18, 2u);
          }

          v16 = 0;
        }

        completionCopy[2](completionCopy, v16);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for smart data mode support query", &v18, 2u);
  }

LABEL_21:
}

- (void)smartDataMode:(id)mode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for smart data mode query", &v23, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(modeCopy);
    v20 = (*(*v16 + 40))(v16, v19);
    completionCopy[2](completionCopy, v20, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setSmartDataMode:(id)mode enable:(BOOL)enable completion:(id)completion
{
  enableCopy = enable;
  modeCopy = mode;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting smart data mode", &v24, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(modeCopy);
    (*(*v18 + 48))(v18, v21, enableCopy);
    completionCopy[2](completionCopy, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isHighDataModeSupported:(id)supported completion:(id)completion
{
  supportedCopy = supported;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v22);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v24 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v24);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(supportedCopy);
          v20 = (*(*v16 + 56))(v16, v19);
          completionCopy[2](completionCopy, v20);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v23;
          ctu::OsLogContext::~OsLogContext(&v22);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current support", &v22, 2u);
          }

          completionCopy[2](completionCopy, 0);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v23;
  ctu::OsLogContext::~OsLogContext(&v22);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for high data mode support query", &v22, 2u);
  }

LABEL_21:
}

- (void)interfaceCostExpensive:(id)expensive completion:(id)completion
{
  expensiveCopy = expensive;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for interface cost query", &v23, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(expensiveCopy);
    v20 = (*(*v16 + 64))(v16, v19);
    completionCopy[2](completionCopy, v20, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, 1, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setInterfaceCost:(id)cost expensive:(BOOL)expensive completion:(id)completion
{
  expensiveCopy = expensive;
  costCopy = cost;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting interface cost", &v24, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(costCopy);
    (*(*v18 + 72))(v18, v21, expensiveCopy);
    completionCopy[2](completionCopy, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)overriddenInterfaceCostInexpensiveWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for overridden interface cost query", &v19, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    v16 = (*(*v13 + 80))(v13);
    completionCopy[2](completionCopy, v16, 0);
    if ((v14 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v12);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, 1, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setOverriddenInterfaceCostInexpensive:(BOOL)inexpensive completion:(id)completion
{
  inexpensiveCopy = inexpensive;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v17 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting overridden interface cost", &v20, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v20);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v22 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v15)
  {
    (*(*v15 + 88))(v15, inexpensiveCopy);
    completionCopy[2](completionCopy, 0);
    if ((v16 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v14);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v19);

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)privacyProxy:(id)proxy completion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for privacy proxy query", &v23, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(proxyCopy);
    v20 = (*(*v16 + 16))(v16, v19);
    (*(completionCopy + 2))(completionCopy, v20 & 1, (v20 >> 8) & 1, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find privacy proxy interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setPrivacyProxy:(id)proxy enabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  proxyCopy = proxy;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting the privacy proxy.", &v24, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(proxyCopy);
    (*(*v18 + 24))(v18, v21, enabledCopy);
    completionCopy[2](completionCopy, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find privacy proxy interface for setting privacy proxy", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)checkRadioBootHealth:(id)health
{
  healthCopy = health;
  if (healthCopy)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(healthCopy);
      v12[0] = off_101F249C8;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 88))(v5, v12);
      sub_10000FF50(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(healthCopy + 2))(healthCopy, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking radio boot health", buf, 2u);
    }
  }
}

- (void)checkRadioBootHealthDetails:(id)details
{
  detailsCopy = details;
  if (detailsCopy)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(detailsCopy);
      v12[0] = off_101F24A48;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 96))(v5, v12);
      sub_1006647E4(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(detailsCopy + 2))(detailsCopy, 0, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking radio boot health", buf, 2u);
    }
  }
}

- (void)getBasebandRadioFrequencyFrontEndScanData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      *&object = objc_retainBlock(dataCopy);
      objc_msgSend_getQueue(self);
      v12 = off_101F24AD8;
      v13 = object;
      v14 = &v12;
      (*(*v5 + 104))(v5, &v12);
      sub_1006648E4(&v12);
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(dataCopy + 2))(dataCopy, 0, v6);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v7 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting RFFE scan data", buf, 2u);
    }
  }
}

- (void)checkCellularDiagnosticsStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    v6 = ServiceMap;
    v7 = "18DiagnosticsService";
    if (("18DiagnosticsService" & 0x8000000000000000) != 0)
    {
      v8 = ("18DiagnosticsService" & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v21 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (!v13)
    {
      v20 = 0;
      v19 = -3;
      goto LABEL_30;
    }

    v16 = sub_10109DCB0(v13);
    objc_msgSend_getLogContext(self);
    v17 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = cellularDiagnosticsStateAsString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cellular Diagnostics status: %s", &buf, 0xCu);
    }

    v19 = v16;
    if (v16 <= 0)
    {
      if ((v16 + 3) < 2)
      {
        v20 = 0;
        goto LABEL_30;
      }

      if (!v16)
      {
        v20 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      if ((v16 - 1) < 2)
      {
        v20 = 2;
        goto LABEL_30;
      }

      if (v16 == 3)
      {
        v20 = 3;
LABEL_30:
        statusCopy[2](statusCopy, v20, v19);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_32;
      }

      if (v16 == 4)
      {
        v19 = ((v16 >> 24) & 0xFF00) + 4;
      }
    }

    v20 = 4;
    goto LABEL_30;
  }

  objc_msgSend_getLogContext(self);
  v15 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting diagnostics status", &buf, 2u);
  }

LABEL_32:
}

- (void)activateTurboMode:(id)mode
{
  modeCopy = mode;
  if (!modeCopy)
  {
    objc_msgSend_getLogContext(self);
    v5 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No completion handler for activating turbo mode. Activation can still proceed but clients will not be notified of success or failure.", &v18, 2u);
    }
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v18);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_12:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v14)
  {
    v16 = objc_retainBlock(modeCopy);
    v21[0] = off_101F24B68;
    v21[1] = v16;
    v21[3] = v21;
    (*(*v14 + 224))(v14, v21);
    sub_10000FF50(v21);
    goto LABEL_19;
  }

  objc_msgSend_getLogContext(self);
  v17 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (!modeCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  LOWORD(v18) = 0;
  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for activating turbo mode.", &v18, 2u);
  if (modeCopy)
  {
LABEL_18:
    (*(modeCopy + 2))(modeCopy, 0);
  }

LABEL_19:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

- (void)checkBasebandConfigUpdateInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(infoCopy);
      v12[0] = off_101F24BE8;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 112))(v5, v12);
      sub_100664864(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(infoCopy + 2))(infoCopy, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking baseband config update info", buf, 2u);
    }
  }
}

- (void)getSupportsTARandomization:(id)randomization completion:(id)completion
{
  randomizationCopy = randomization;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(randomizationCopy);
          v20 = objc_retainBlock(completionCopy);
          v26[0] = off_101F24C78;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 232))(v16, v19, v26);
          sub_10070C94C(v26);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for getting TA randomization support", &v23, 2u);
          }

          v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting TA randomization support", &v23, 2u);
  }

LABEL_21:
}

- (void)getTARandomizationSetting:(id)setting completion:(id)completion
{
  settingCopy = setting;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v16)
    {
      v19 = sub_10002A8E0(settingCopy);
      v20 = (*(*v16 + 240))(v16, v19);
      if ((v20 & 0x100) != 0)
      {
        v21 = [NSNumber numberWithBool:v20 & 1];
        completionCopy[2](completionCopy, v21, 0);
LABEL_21:

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v22 = v24;
      ctu::OsLogContext::~OsLogContext(&v23);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for getting TA randomization preference", &v23, 2u);
      }
    }

    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v21);
    goto LABEL_21;
  }

  objc_msgSend_getLogContext(self);
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting TA randomization setting", &v23, 2u);
  }

LABEL_23:
}

- (void)setTARandomizationUserSetting:(id)setting enabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  settingCopy = setting;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v27 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v27);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v18)
        {
          v21 = sub_10002A8E0(settingCopy);
          v22 = objc_retainBlock(completionCopy);
          v28[0] = off_101F24CF8;
          v28[1] = v22;
          v28[3] = v28;
          (*(*v18 + 248))(v18, v21, enabledCopy, v28);
          sub_100014380(v28);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for setting TA randomization preference", &v25, 2u);
          }

          v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(completionCopy + 2))(completionCopy, v24);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v20 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting TA randomization preference", &v25, 2u);
  }

LABEL_21:
}

- (void)getTransportKeysToUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    v5 = updateCopy;
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v22 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v14)
        {
          selfCopy = self;
          v23[0] = off_101F24D78;
          v23[1] = selfCopy;
          v23[2] = v5;
          v23[3] = v23;
          (**v14)(v14, v23);
          sub_1012A003C(v23);
          v5 = 0;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v5)[2](v5, 0, v19);
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  objc_msgSend_getLogContext(self);
  v16 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for getTransportKeysToUpdate", &v20, 2u);
  }

  v5 = 0;
LABEL_22:
}

- (void)setTransportKeysUpdated:(BOOL)updated with:(id)with completion:(id)completion
{
  updatedCopy = updated;
  withCopy = with;
  v53 = withCopy;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v60 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v60);
    v49 = updatedCopy;
    if (v15)
    {
      v16 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v50 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          v47 = v16;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          if (withCopy)
          {
            stks = [withCopy stks];
            if (stks)
            {
              v20 = v17;
              stks2 = [withCopy stks];
              v22 = [stks2 count] == 0;

              if (!v22)
              {
                stks3 = [withCopy stks];
                v24 = [stks3 count];
                if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) < v24)
                {
                  if (v24 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    v67 = &v60;
                    sub_10129FA90(v24);
                  }

                  sub_1000CE3D4();
                }

                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                stks4 = [withCopy stks];
                v26 = [stks4 countByEnumeratingWithState:&v56 objects:v63 count:16];
                if (v26)
                {
                  v27 = *v57;
                  obj = stks4;
                  do
                  {
                    for (i = 0; i != v26; i = i + 1)
                    {
                      if (*v57 != v27)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v29 = *(*(&v56 + 1) + 8 * i);
                      index = [v29 index];
                      key_epki = [v29 key_epki];
                      v31 = key_epki;
                      *&v55 = key_epki;
                      if (key_epki)
                      {
                        CFRetain(key_epki);
                      }

                      v32 = [v29 stk];
                      v33 = v32;
                      *(&v55 + 1) = v32;
                      if (v32)
                      {
                        CFRetain(v32);
                      }

                      v34 = v61;
                      if (v61 >= v62)
                      {
                        v36 = 0xAAAAAAAAAAAAAAABLL * (v61 - v60);
                        v37 = v36 + 1;
                        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
                        {
                          sub_1000CE3D4();
                        }

                        if (0x5555555555555556 * ((v62 - v60) >> 3) > v37)
                        {
                          v37 = 0x5555555555555556 * ((v62 - v60) >> 3);
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) >= 0x555555555555555)
                        {
                          v38 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v38 = v37;
                        }

                        v67 = &v60;
                        if (v38)
                        {
                          sub_10129FA90(v38);
                        }

                        v39 = 8 * (v61 - v60);
                        *v39 = index;
                        *(v39 + 8) = 0;
                        *(v39 + 8) = v55;
                        *&v55 = 0;
                        *(v39 + 16) = 0;
                        *(v39 + 16) = *(&v55 + 1);
                        *(&v55 + 1) = 0;
                        v35 = (24 * v36 + 24);
                        v40 = (24 * v36 + v60 - v61);
                        sub_10129FAE8(v60, v61, v39 + v60 - v61);
                        v41 = v60;
                        v42 = v62;
                        v60 = v40;
                        v61 = v35;
                        v62 = 0;
                        v65 = v41;
                        v66 = v42;
                        *&buf = v41;
                        *(&buf + 1) = v41;
                        sub_10129FB70(&buf);
                        withCopy = v53;
                      }

                      else
                      {
                        *v61 = index;
                        *(v34 + 1) = 0u;
                        *(v34 + 1) = v55;
                        v55 = 0u;
                        v35 = v34 + 3;
                      }

                      v61 = v35;
                      sub_10002D760(&v55 + 1);
                      sub_10002D760(&v55);

                      v17 = v20;
                    }

                    stks4 = obj;
                    v26 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
                  }

                  while (v26);
                }
              }
            }
          }

          sps_environment = [withCopy sps_environment];
          (*(*v48 + 8))(v48, v49, &v60, sps_environment);
          objc_msgSend_getLogContext(self);
          v44 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = withCopy;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "processed setTransportKeysUpdated: %@", &buf, 0xCu);
          }

          completionCopy[2](completionCopy, 0);
          *&buf = &v60;
          sub_10129FBD4(&buf);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v45 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Stewie is not available", &buf, 2u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (completionCopy)[2](completionCopy, v46);
        }

        if ((v50 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v10);
    v17 = 0;
    v50 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setTransportKeysUpdated", &buf, 2u);
  }

LABEL_52:
}

- (void)forceRollAllTransportKeys:(id)keys
{
  keysCopy = keys;
  if (!keysCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for forceRollAllTransportKeys", &v19, 2u);
    }

    goto LABEL_19;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    (*(*v13 + 16))(v13);
    objc_msgSend_getLogContext(self);
    v16 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "processed forceRollAllTransportKeys", &v19, 2u);
    }

    keysCopy[2](keysCopy, 0);
    if ((v14 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v12);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Stewie is not available", &v19, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (keysCopy)[2](keysCopy, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)getSatelliteMsgCfgToUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    v5 = updateCopy;
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v22 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v14)
        {
          v23[1] = self;
          v23[2] = v5;
          v23[3] = v23;
          v17 = *(v14 + 8);
          v23[0] = off_101F24E08;
          (*v17)(v14 + 8, v23);
          sub_1012A03F8(v23);
          v5 = 0;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v5)[2](v5, 0, v19);
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  objc_msgSend_getLogContext(self);
  v16 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSatelliteMsgCfgToUpdate", &v20, 2u);
  }

  v5 = 0;
LABEL_22:
}

- (void)setSatelliteMsgCfgUpdated:(id)updated completion:(id)completion
{
  updatedCopy = updated;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v24 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v24);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          result = [updatedCopy result];
          cfg_id = [updatedCopy cfg_id];
          sub_100047544(cfg_id, &buf);
          (*(*(v16 + 8) + 8))(v16 + 8, result, buf, [updatedCopy sps_environment]);
          sub_1000475BC(&buf);

          objc_msgSend_getLogContext(self);
          v21 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = updatedCopy;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "processed setSatelliteMsgCfgUpdated: %@", &buf, 0xCu);
          }

          completionCopy[2](completionCopy, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Stewie is not available", &buf, 2u);
          }

          v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (completionCopy)[2](completionCopy, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setSatelliteMsgCfgUpdated", &buf, 2u);
  }

LABEL_23:
}

- (void)reprovisionSatelliteMsg:(BOOL)msg completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v20 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_12:
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v14)
        {
          selfCopy = self;
          objc_retainBlock(completionCopy);
          operator new();
        }

        objc_msgSend_getLogContext(self);
        v18 = v22;
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", buf, 2u);
        }

        v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        (*(completionCopy + 2))(completionCopy, v19);

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v16 = v22;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for reprovisionSatelliteMsg", buf, 2u);
  }

LABEL_20:
}

- (void)hasDedicatedBearerSupport:(id)support
{
  supportCopy = support;
  if (supportCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v13)
        {
          v20 = 0;
          v21 = 0;
          (*(*v13 + 32))(&v20, v13);
          v16 = v20;
          if (v20)
          {
            v17 = objc_retainBlock(supportCopy);
            *buf = off_101F24F18;
            v23 = v17;
            v24 = buf;
            (**v16)(v16, buf);
            sub_10000FF50(buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v19 = v23;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            (*(supportCopy + 2))(supportCopy, 0);
          }

          if (v21)
          {
            sub_100004A34(v21);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v23;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          (*(supportCopy + 2))(supportCopy, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v23;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for hasDedicatedBearerSupport", buf, 2u);
  }

LABEL_27:
}

- (void)addDedicatedBearer:(id)bearer completion:(id)completion
{
  bearerCopy = bearer;
  v29 = bearerCopy;
  completionCopy = completion;
  if (completionCopy)
  {
    if (bearerCopy)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(*buf);
      v8 = ServiceMap;
      if (v9 < 0)
      {
        v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
        v11 = 5381;
        do
        {
          v9 = v11;
          v12 = *v10++;
          v11 = (33 * v11) ^ v12;
        }

        while (v12);
      }

      std::mutex::lock(ServiceMap);
      __src[0] = v9;
      v13 = sub_100009510(&v8[1].__m_.__sig, __src);
      if (v13)
      {
        v15 = v13[3];
        v14 = v13[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v8);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = v14;
          sub_100004A34(v14);
          v28 = 0;
LABEL_16:
          if (v36)
          {
            sub_100004A34(v36);
          }

          if (v15)
          {
            v33 = 0;
            v34 = 0;
            (*(*v15 + 32))(&v33, v15);
            if (v33)
            {
              memset(__src, 0, sizeof(__src));
              memset(v31, 0, sizeof(v31));
              details = [v29 details];
              if ([details countByEnumeratingWithState:v31 objects:v38 count:16])
              {
                operator new();
              }

              v20 = v33;
              v21 = objc_retainBlock(completionCopy);
              *buf = off_101F24FE8;
              v36 = v21;
              v37 = buf;
              (*(*v20 + 8))(v20, __src, buf);
              sub_10036EC1C(buf);
              *buf = __src;
              sub_1000212F4(buf);
            }

            else
            {
              objc_msgSend_getLogContext(self, v26);
              v24 = v36;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(completionCopy + 2))(completionCopy, 0, v25);
            }

            if (v34)
            {
              sub_100004A34(v34);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self, v26);
            v22 = v36;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v23);
          }

          if ((v28 & 1) == 0)
          {
            sub_100004A34(v27);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v15 = 0;
      }

      std::mutex::unlock(v8);
      v26 = 0;
      v28 = 1;
      goto LABEL_16;
    }

    objc_msgSend_getLogContext(self);
    v17 = v36;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid arguments for hasDedicatedBearerSupport", buf, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v16 = v36;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for hasDedicatedBearerSupport", buf, 2u);
    }
  }

LABEL_33:
}

- (void)removeDedicatedBearer:(id)bearer completion:(id)completion
{
  bearerCopy = bearer;
  completionCopy = completion;
  if (completionCopy)
  {
    if (bearerCopy)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(*buf);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_16:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v16)
          {
            v27 = 0;
            v28 = 0;
            (*(*v16 + 32))(&v27, v16);
            v21 = v27;
            if (v27)
            {
              v22 = objc_retainBlock(completionCopy);
              *buf = off_101F25078;
              v30 = v22;
              v31 = buf;
              (*(*v21 + 16))(v21, bearerCopy, buf);
              sub_10036EC9C(buf);
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v25 = v30;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(completionCopy + 2))(completionCopy, v26);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v23 = v30;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(completionCopy + 2))(completionCopy, v24);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_16;
    }

    objc_msgSend_getLogContext(self);
    v19 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing bearer_id for removeDedicatedBearer", buf, 2u);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v20);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeDedicatedBearer", buf, 2u);
    }
  }

LABEL_31:
}

- (void)removeAllDedicatedBearers:(id)bearers
{
  bearersCopy = bearers;
  if (bearersCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(bearersCopy);
            *buf = off_101F250F8;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 24))(v16, buf);
            sub_10036EC9C(buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(bearersCopy + 2))(bearersCopy, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(bearersCopy + 2))(bearersCopy, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeAllDedicatedBearers", buf, 2u);
  }

LABEL_27:
}

- (void)isDedicatedBearerPresent:(id)present completion:(id)completion
{
  presentCopy = present;
  completionCopy = completion;
  if (completionCopy)
  {
    if (presentCopy)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(*buf);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_16:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v16)
          {
            v27 = 0;
            v28 = 0;
            (*(*v16 + 32))(&v27, v16);
            v21 = v27;
            if (v27)
            {
              v22 = objc_retainBlock(completionCopy);
              *buf = off_101F25178;
              v30 = v22;
              v31 = buf;
              (*(*v21 + 32))(v21, presentCopy, buf);
              sub_10036ED1C(buf);
            }

            else
            {
              objc_msgSend_getLogContext(self);
              v25 = v30;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(completionCopy + 2))(completionCopy, 0, v26);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v23 = v30;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v24);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_16;
    }

    objc_msgSend_getLogContext(self);
    v19 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing bearer_id for isDedicatedBearerPresent", buf, 2u);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isDedicatedBearerPresent", buf, 2u);
    }
  }

LABEL_31:
}

- (void)getListOfPresentDedicatedBearers:(id)bearers
{
  bearersCopy = bearers;
  if (bearersCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v13)
        {
          v20 = 0;
          v21 = 0;
          (*(*v13 + 32))(&v20, v13);
          v16 = v20;
          if (v20)
          {
            v17 = objc_retainBlock(bearersCopy);
            *buf = off_101F25208;
            v23 = v17;
            v24 = buf;
            (*(*v16 + 40))(v16, buf);
            sub_10036ED9C(buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v19 = v23;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            (*(bearersCopy + 2))(bearersCopy, 0);
          }

          if (v21)
          {
            sub_100004A34(v21);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v23;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          (*(bearersCopy + 2))(bearersCopy, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v23;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getListOfPresentDedicatedBearers", buf, 2u);
  }

LABEL_27:
}

- (void)getQoSLinkCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  if (characteristicsCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(characteristicsCopy);
            *buf = off_101F25298;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 48))(v16, buf);
            sub_10036EE1C(buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(characteristicsCopy + 2))(characteristicsCopy, 0, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(characteristicsCopy + 2))(characteristicsCopy, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getQoSLinkCharacteristics", buf, 2u);
  }

LABEL_27:
}

- (void)requestQoSLinkCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  if (characteristicsCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(characteristicsCopy);
            *buf = off_101F25328;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 56))(v16, buf);
            sub_10036EC9C(buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(characteristicsCopy + 2))(characteristicsCopy, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(characteristicsCopy + 2))(characteristicsCopy, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for CTQoSLinkCharacteristics", buf, 2u);
  }

LABEL_27:
}

- (void)selectPhonebook:(id)phonebook forPhonebookName:(int)name withPassword:(id)password completion:(id)completion
{
  LODWORD(v8) = name;
  phonebookCopy = phonebook;
  passwordCopy = password;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!phonebookCopy)
    {
      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v24);

      goto LABEL_30;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, __p);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v21)
        {
          v25 = sub_100018A64([phonebookCopy slotID]);
          memset(buf, 0, sizeof(buf));
          v33 = 0;
          ctu::cf::assign();
          if ((v8 - 1) >= 3)
          {
            v8 = 0;
          }

          else
          {
            v8 = v8;
          }

          *__p = *buf;
          v31 = v33;
          if (v33 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = *buf;
          }

          v27 = objc_retainBlock(completionCopy);
          v34[0] = off_101F2CE38;
          v34[1] = v27;
          v34[3] = v34;
          (*(*v21 + 24))(v21, v25, v8, v26, v34);
          sub_10000FF50(v34);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for selecting the phone book", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v29);
        }

        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v23 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid completion handler for selecting the phone book", buf, 2u);
  }

LABEL_30:
}

- (void)savePhonebookEntry:(id)entry atIndex:(int)index withContactName:(id)name contactNumber:(id)number completion:(id)completion
{
  v10 = *&index;
  entryCopy = entry;
  nameCopy = name;
  numberCopy = number;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!entryCopy)
    {
      v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v27);

      goto LABEL_39;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    *&v48 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v48);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
LABEL_14:
        if (v38)
        {
          sub_100004A34(v38);
        }

        if (v24)
        {
          v28 = sub_100018A64([entryCopy slotID]);
          v48 = 0uLL;
          v49 = 0;
          ctu::cf::assign();
          *v35 = v48;
          v36 = v49;
          CSIPhoneNumber::CSIPhoneNumber();
          v48 = 0uLL;
          v49 = 0;
          ctu::cf::assign();
          *__p = v48;
          v34 = v49;
          if (v49 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          v30 = objc_retainBlock(completionCopy);
          v50[0] = off_101F2CEB8;
          v50[1] = v30;
          v50[3] = v50;
          (*(*v24 + 40))(v24, v28, v10, buf, v29, v50);
          sub_10000FF50(v50);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          if (v47 < 0)
          {
            operator delete(v46);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[0]);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v31 = v38;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for saving the phone book entry", buf, 2u);
          }

          v32 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v32);
        }

        if ((v25 & 1) == 0)
        {
          sub_100004A34(v23);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v26 = v38;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid completion handler for saving the phone book entry", buf, 2u);
  }

LABEL_39:
}

- (void)fetchPhonebook:(id)phonebook completion:(id)completion
{
  phonebookCopy = phonebook;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!phonebookCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([phonebookCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F2CF38;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 56))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for fetching the phone book", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for fetching the phone book", &v24, 2u);
  }

LABEL_23:
}

- (void)getPhonebookEntryCountWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  if (v7)
  {
    if (!completionCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([completionCopy slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F2CFB8;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 64))(v16, v20, v27);
          sub_100BDCA88(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for counting phone book entries", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for counting phone book entries", &v24, 2u);
  }

LABEL_23:
}

- (void)getPhonebookEntryWithCompletion:(id)completion atIndex:(int)index completion:(id)a5
{
  v6 = *&index;
  completionCopy = completion;
  v9 = a5;
  if (v9)
  {
    if (!completionCopy)
    {
      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v9[2](v9, 0, v21);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v26);
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v28 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v28);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_14:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v18)
        {
          v22 = sub_100018A64([completionCopy slotID]);
          v23 = objc_retainBlock(v9);
          v29[0] = off_101F2D038;
          v29[1] = v23;
          v29[3] = v29;
          (*(*v18 + 72))(v18, v22, v6, v29);
          sub_100E3FDD8(v29);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for copying the phone book entry", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v9[2](v9, 0, v25);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v20 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for copying the phone book entry", &v26, 2u);
  }

LABEL_23:
}

- (void)getPhoneNumberWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  if (v7)
  {
    if (!completionCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([completionCopy slotID]);
          selfCopy = self;
          v22 = objc_retainBlock(v7);
          v28[0] = off_101F2D0B8;
          v28[1] = selfCopy;
          v28[2] = v22;
          v28[3] = v28;
          (*(*v16 + 264))(v16, v20, v28);
          sub_10006AE0C(v28);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for copying own phone number", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copying own phone number", &v25, 2u);
  }

LABEL_23:
}

- (void)getSIMStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if (completionCopy)
  {
    if (statusCopy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSIMStatus", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSIMStatus", buf, 2u);
    }
  }
}

- (void)getSIMTrayStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    *buf = 0;
    v11 = 0;
    objc_msgSend_registry(self);
    sGetSubscriberSimInterface();
    if (v9)
    {
      sub_100004A34(v9);
    }

    objc_msgSend_getLogContext(self);
    v6 = v9;
    ctu::OsLogContext::~OsLogContext(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSIMTrayStatus", v8, 2u);
    }

    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    statusCopy[2](statusCopy, 0, v7);

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v5 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSIMTrayStatus", buf, 2u);
    }
  }
}

- (void)isEmbeddedSIMOnlyConfig:(id)config
{
  configCopy = config;
  v9 = 0;
  v10 = 0;
  objc_msgSend_registry(self);
  sGetSubscriberSimInterface();
  if (v8)
  {
    sub_100004A34(v8);
  }

  objc_msgSend_getLogContext(self);
  v5 = v8;
  ctu::OsLogContext::~OsLogContext(v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface", v7, 2u);
  }

  v6 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
  configCopy[2](configCopy, 0, v6);

  if (v10)
  {
    sub_100004A34(v10);
  }
}

- (void)copyMobileEquipmentInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    *buf = 0;
    v11 = 0;
    objc_msgSend_registry(self);
    sGetSubscriberSimInterface();
    if (v9)
    {
      sub_100004A34(v9);
    }

    objc_msgSend_getLogContext(self);
    v6 = v9;
    ctu::OsLogContext::~OsLogContext(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyMobileEquipmentInfo", v8, 2u);
    }

    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    infoCopy[2](infoCopy, 0, v7);

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v5 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileEquipmentInfo", buf, 2u);
    }
  }
}

- (void)getTypeAllocationCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (codeCopy)
    {
      v14 = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(&__p);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberController for getTypeAllocationCode", &__p, 2u);
      }

      v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v13;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh user auth token", &__p, 2u);
    }
  }
}

- (void)copyFirmwareUpdateInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v35 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v35);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    v16 = v34;
    if (v34)
    {
      sub_100004A34(v34);
    }

    v17 = capabilities::ct::supportsVinylFirmwareUpdate(v16);
    if (!v17 || (capabilities::euicc::supportsEOS(v17) & 1) != 0)
    {
      if (v13)
      {
        v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      }

      else
      {
        v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      }

      infoCopy[2](infoCopy, 0, v18);

LABEL_20:
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      goto LABEL_22;
    }

    objc_msgSend_registry(self);
    v19 = Registry::getServiceMap(*buf);
    v20 = v19;
    if ((v21 & 0x8000000000000000) != 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v19);
    v35 = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, &v35);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
LABEL_31:
        if (v34)
        {
          sub_100004A34(v34);
        }

        if (v27)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1014342FC;
          v31[3] = &unk_101F3B988;
          v31[4] = self;
          v32 = infoCopy;
          (*(*v27 + 144))(v27, 1, v31, 0);
          v29 = v32;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v30 = v34;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find VinylController for copyFirmwareUpdateInfo", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          infoCopy[2](infoCopy, 0, v29);
        }

        if ((v28 & 1) == 0)
        {
          sub_100004A34(v26);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    goto LABEL_31;
  }

  objc_msgSend_getLogContext(self);
  v15 = v34;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyFirmwareUpdateInfo", buf, 2u);
  }

LABEL_22:
}

- (void)copySIMIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  if (completionCopy)
  {
    if (identityCopy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copySIMIdentity", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copySIMIdentity", buf, 2u);
    }
  }
}

- (void)copyMobileSubscriberIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  if (completionCopy)
  {
    if (identityCopy)
    {
      v13 = 0;
      v14 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      objc_msgSend_getLogContext(self);
      v10 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyMobileSubscriberIdentity", buf, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIdentity", buf, 2u);
    }
  }
}

- (void)context:(id)context isProtectedIdentitySupported:(id)supported completion:(id)completion
{
  contextCopy = context;
  supportedCopy = supported;
  completionCopy = completion;
  if (completionCopy)
  {
    if (contextCopy && supportedCopy)
    {
      dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
      v12 = [dataProviderDelegate resolveContext:contextCopy];

      if (v12)
      {
        v13 = sub_100018A64([v12 slotID]);
        if (!v13)
        {
          objc_msgSend_getLogContext(self);
          v27 = v33;
          ctu::OsLogContext::~OsLogContext(&v32);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v32) = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "no slot in context", &v32, 2u);
          }

          v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
          completionCopy[2](completionCopy, 0, v28);

          goto LABEL_28;
        }

        objc_msgSend_registry(self);
        ServiceMap = Registry::getServiceMap(v32);
        v15 = ServiceMap;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
          v18 = 5381;
          do
          {
            v16 = v18;
            v19 = *v17++;
            v18 = (33 * v18) ^ v19;
          }

          while (v19);
        }

        std::mutex::lock(ServiceMap);
        v34 = v16;
        v20 = sub_100009510(&v15[1].__m_.__sig, &v34);
        if (v20)
        {
          v22 = v20[3];
          v21 = v20[4];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v15);
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
            v23 = 0;
LABEL_21:
            if (v33)
            {
              sub_100004A34(v33);
            }

            if (v22)
            {
              v29 = [supportedCopy isEqualToString:kCTEncryptedIdentityWiFiCalling];
              v30 = objc_retainBlock(completionCopy);
              v35[0] = off_101F3BC60;
              v35[1] = v30;
              v35[3] = v35;
              (*(*v22 + 24))(v22, v13, v29 ^ 1, v35);
              sub_1009F1554(v35);
            }

            else
            {
              v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              completionCopy[2](completionCopy, 0, v31);
            }

            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

LABEL_28:
            contextCopy = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v22 = 0;
        }

        std::mutex::unlock(v15);
        v21 = 0;
        v23 = 1;
        goto LABEL_21;
      }

      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      completionCopy[2](completionCopy, 0, v26);

      contextCopy = 0;
    }

    else
    {
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v25);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = v33;
    ctu::OsLogContext::~OsLogContext(&v32);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid completion handler for isEncryptedIdentitySupportedForService", &v32, 2u);
    }
  }

LABEL_29:
}

- (void)context:(id)context supportedIdentityProtectionFor:(id)for completion:(id)completion
{
  contextCopy = context;
  forCopy = for;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!contextCopy)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([contextCopy slotID]);
    if (v11)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(v29);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v31 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v31);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v20)
          {
            v26 = [forCopy isEqualToString:kCTEncryptedIdentityWiFiCalling];
            v27 = objc_retainBlock(completionCopy);
            v32[0] = off_101F3BCF0;
            v32[1] = v27;
            v32[3] = v32;
            (*(*v20 + 24))(v20, v11, v26 ^ 1, v32);
            sub_1009F1554(v32);
          }

          else
          {
            v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            completionCopy[2](completionCopy, 0, v28);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    objc_msgSend_getLogContext(self);
    v24 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v29, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for supportedIdentityProtection", &v29, 2u);
    }
  }

LABEL_25:
}

- (void)createEncryptedIdentity:(id)identity identity:(id)a4 completion:(id)completion
{
  identityCopy = identity;
  v9 = a4;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!identityCopy)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([identityCopy slotID]);
    if (v11)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(v28);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v30 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v30);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v29)
          {
            sub_100004A34(v29);
          }

          if (v20)
          {
            v26 = objc_retainBlock(completionCopy);
            v31[0] = off_101F3BD70;
            v31[1] = v26;
            v31[3] = v31;
            (*(*v20 + 40))(v20, v11, 1, v9, v31);
            sub_1009F15D4(v31);
          }

          else
          {
            v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            completionCopy[2](completionCopy, 0, v27);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    objc_msgSend_getLogContext(self);
    v24 = v29;
    ctu::OsLogContext::~OsLogContext(&v28);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v28, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v29;
    ctu::OsLogContext::~OsLogContext(&v28);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for createEncryptedIdentity", &v28, 2u);
    }
  }

LABEL_25:
}

- (void)context:(id)context getPseudoIdentityFor:(id)for completion:(id)completion
{
  contextCopy = context;
  forCopy = for;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!contextCopy)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([contextCopy slotID]);
    if (v11)
    {
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(v29);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v31 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v31);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v20)
          {
            v26 = [forCopy isEqualToString:kCTEncryptedIdentityWiFiCalling];
            v27 = objc_retainBlock(completionCopy);
            v32[0] = off_101F3BE00;
            v32[1] = v27;
            v32[3] = v32;
            (*(*v20 + 80))(v20, v11, v26 ^ 1, v32);
            sub_1009F1654(v32);
          }

          else
          {
            v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            completionCopy[2](completionCopy, 0, v28);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    objc_msgSend_getLogContext(self);
    v24 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v29, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPseudoIdentity", &v29, 2u);
    }
  }

LABEL_25:
}

- (void)evaluateMobileSubscriberIdentity:(id)identity identity:(id)a4 completion:(id)completion
{
  identityCopy = identity;
  v9 = a4;
  completionCopy = completion;
  if (completionCopy)
  {
    if (identityCopy)
    {
      v11 = sub_100018A64([identityCopy slotID]);
      if (v11)
      {
        objc_msgSend_registry(self);
        ServiceMap = Registry::getServiceMap(v26);
        v13 = ServiceMap;
        if ((v14 & 0x8000000000000000) != 0)
        {
          v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
          v16 = 5381;
          do
          {
            v14 = v16;
            v17 = *v15++;
            v16 = (33 * v16) ^ v17;
          }

          while (v17);
        }

        std::mutex::lock(ServiceMap);
        v28 = v14;
        v18 = sub_100009510(&v13[1].__m_.__sig, &v28);
        if (v18)
        {
          v20 = v18[3];
          v19 = v18[4];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v13);
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v19);
            v21 = 0;
LABEL_19:
            if (v27)
            {
              sub_100004A34(v27);
            }

            if (v20)
            {
              v25 = 0;
              (*(*v20 + 56))(v20, v11, 1, v9);
            }

            else
            {
              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            }

            completionCopy[2](completionCopy, v25);
            if ((v21 & 1) == 0)
            {
              sub_100004A34(v19);
            }

            goto LABEL_27;
          }
        }

        else
        {
          v20 = 0;
        }

        std::mutex::unlock(v13);
        v19 = 0;
        v21 = 1;
        goto LABEL_19;
      }

      objc_msgSend_getLogContext(self);
      v24 = v27;
      ctu::OsLogContext::~OsLogContext(&v26);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v26, 2u);
      }

      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      completionCopy[2](completionCopy, v23);
    }

    else
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v23);
    }

    goto LABEL_27;
  }

  objc_msgSend_getLogContext(self);
  v22 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for evaluateMobileSubscriberIdentity", &v26, 2u);
  }

LABEL_27:
}

- (void)copyMobileSubscriberCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);
LABEL_15:

      goto LABEL_30;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      goto LABEL_4;
    }

    v20 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
    if ((v20 & 0x100) == 0)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);
      goto LABEL_15;
    }

    if ((v20 & 1) == 0)
    {
LABEL_4:
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(v25);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27[0] = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_22:
          if (v26)
          {
            sub_100004A34(v26);
          }

          if (v16)
          {
            sub_100018A64([codeCopy slotID]);
            selfCopy = self;
            objc_retainBlock(completionCopy);
            v27[4] = 0;
            operator new();
          }

          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyMobileSubscriberCountryCode", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v24);

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_30;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_22;
    }

    objc_msgSend_getLogContext(self);
    v21 = v26;
    ctu::OsLogContext::~OsLogContext(&v25);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberCountryCode", &v25, 2u);
    }

    (completionCopy)[2](completionCopy, @"65535", 0);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v26;
    ctu::OsLogContext::~OsLogContext(&v25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberCountryCode", &v25, 2u);
    }
  }

LABEL_30:
}

- (void)copyMobileSubscriberIsoCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);
LABEL_15:

      goto LABEL_40;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      memset(buf, 0, sizeof(buf));
      v30 = 0;
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(*v27);
      v9 = ServiceMap;
      if (v10 < 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, __p);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
LABEL_21:
      if (*&v27[8])
      {
        sub_100004A34(*&v27[8]);
      }

      if (v16)
      {
        sub_10000501C(__p, [codeCopy UTF8String]);
        (*(*v16 + 24))(v27, v16, __p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }

        *buf = *v27;
        v30 = v28;
        HIBYTE(v28) = 0;
        v27[0] = 0;
        if ((v26 & 0x80000000) == 0)
        {
          if (v17)
          {
            goto LABEL_28;
          }

LABEL_33:
          sub_100004A34(v15);
          if (!v16)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        operator delete(__p[0]);
        if ((v17 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v21 = *&v27[8];
        ctu::OsLogContext::~OsLogContext(v27);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIsoCountryCode", v27, 2u);
        }

        v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        completionCopy[2](completionCopy, 0, v22);

        if ((v17 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      if (!v16)
      {
LABEL_38:
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_40;
      }

LABEL_34:
      if (v30 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithUTF8String:v23];
      (completionCopy)[2](completionCopy, v24, 0);

      goto LABEL_38;
    }

    if (([(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"]& 0x100) == 0)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);
      goto LABEL_15;
    }

    objc_msgSend_getLogContext(self);
    v20 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberIsoCountryCode", buf, 2u);
    }

    (completionCopy)[2](completionCopy, @"--", 0);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIsoCountryCode", buf, 2u);
    }
  }

LABEL_40:
}

- (void)copyMobileSubscriberIsoSubregionCode:(id)code MNC:(id)c completion:(id)completion
{
  codeCopy = code;
  cCopy = c;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v21 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIsoSubregionCode", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!codeCopy || !cCopy)
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v22);

    goto LABEL_27;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(*buf);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v32[0] = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, v32);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v19)
  {
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v29 = v20;
    sub_10000501C(v32, [codeCopy UTF8String]);
    sub_10000501C(__p, [cCopy UTF8String]);
    (*(*v19 + 80))(buf, v19, v32, __p);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v23 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3)];
    if (v35 != *buf)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = [NSString stringWithUTF8String:?];
        [v23 setObject:v26 atIndexedSubscript:v25];

        ++v25;
        v24 += 24;
      }

      while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3));
    }

    (completionCopy)[2](completionCopy, v23, 0);

    v32[0] = buf;
    sub_1000087B4(v32);
    if ((v29 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v18);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIsoSubregionCode", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    completionCopy[2](completionCopy, 0, v28);

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)getSimHardwareInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!infoCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_30;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([infoCopy slotID]);
          v25 = 0;
          v25 = (*(*v16 + 24))(v16, v20);
          if (subscriber::isEsimCapable())
          {
            v21 = 3;
            v22 = 2;
          }

          else if (HIDWORD(v25) == 1)
          {
            if (v25 == 1)
            {
              v22 = 1;
              v21 = 1;
            }

            else
            {
              v21 = 2 * (v25 == 2);
              v22 = 1;
            }
          }

          else
          {
            v22 = 0;
            v21 = 0;
          }

          v24 = [[CTSimHardwareInfo alloc] initWithHardwareInfo:v22 simLocation:v21];
          (completionCopy)[2](completionCopy, v24, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSimHardwareInfo", &v25, 2u);
          }

          v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSimType", &v25, 2u);
  }

LABEL_30:
}

- (void)getMobileSubscriberHomeCountryList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!listCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([listCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F3BF00;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 48))(v16, v20, v27);
          sub_10002AA0C(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for getMobileSubscriberHomeCountryList", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getMobileSubscriberHomeCountryList", &v24, 2u);
  }

LABEL_23:
}

- (void)copyLastKnownMobileSubscriberCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([codeCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F3BF80;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 40))(v16, v20, v27);
          sub_10001C200(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyLastKnownMobileSubscriberCountryCode", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyLastKnownMobileSubscriberCountryCode", &v24, 2u);
  }

LABEL_23:
}

- (void)copyMobileSubscriberNetworkCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      goto LABEL_60;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      goto LABEL_13;
    }

    v8 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
    if ((v8 & 0x100) == 0)
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);

      goto LABEL_13;
    }

    if ((v8 & 1) == 0)
    {
LABEL_13:
      objc_msgSend_registry(self);
      ServiceMap = Registry::getServiceMap(v41);
      v14 = ServiceMap;
      if (v15 < 0)
      {
        v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
        v17 = 5381;
        do
        {
          v15 = v17;
          v18 = *v16++;
          v17 = (33 * v17) ^ v18;
        }

        while (v18);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v15;
      v19 = sub_100009510(&v14[1].__m_.__sig, __p);
      if (v19)
      {
        v21 = v19[3];
        v20 = v19[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v14);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v14);
      v20 = 0;
      v22 = 1;
LABEL_21:
      if (v42)
      {
        sub_100004A34(v42);
      }

      if (!v21)
      {
        objc_msgSend_getLogContext(self);
        v35 = v42;
        ctu::OsLogContext::~OsLogContext(&v41);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v41) = 0;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyMobileSubscriberNetworkCode", &v41, 2u);
        }

        v36 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        completionCopy[2](completionCopy, 0, v36);

        goto LABEL_58;
      }

      v23 = sub_100018A64([codeCopy slotID]);
      __p[0] = 0;
      __p[1] = 0;
      v50 = 0;
      (*(*v21 + 32))(__p, v21, v23);
      v24 = HIBYTE(v50);
      if (v50 < 0)
      {
        v24 = __p[1];
      }

      if (v24)
      {
LABEL_53:
        if (v50 >= 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        v40 = [NSString stringWithUTF8String:v39];
        (completionCopy)[2](completionCopy, v40, 0);

        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_58:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_60;
      }

      objc_msgSend_registry(self);
      v25 = Registry::getServiceMap(v41);
      v26 = v25;
      if (v27 < 0)
      {
        v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
        v29 = 5381;
        do
        {
          v27 = v29;
          v30 = *v28++;
          v29 = (33 * v29) ^ v30;
        }

        while (v30);
      }

      std::mutex::lock(v25);
      v46 = v27;
      v31 = sub_100009510(&v26[1].__m_.__sig, &v46);
      if (v31)
      {
        v33 = v31[3];
        v32 = v31[4];
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v32);
          v34 = 0;
LABEL_38:
          if (v42)
          {
            sub_100004A34(v42);
          }

          if (v33)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            (*(*v33 + 24))(&v46, v33, v23);
            v37 = HIBYTE(v48);
            v38 = HIBYTE(v48);
            if (v48 < 0)
            {
              v37 = v47;
            }

            if (v37)
            {
              sub_100A34BC8(&v41);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v44;
              v50 = v45;
              HIBYTE(v45) = 0;
              LOBYTE(v44) = 0;
              if (v43 < 0)
              {
                operator delete(v41);
              }

              v38 = HIBYTE(v48);
            }

            if (v38 < 0)
            {
              operator delete(v46);
            }
          }

          if ((v34 & 1) == 0)
          {
            sub_100004A34(v32);
          }

          goto LABEL_53;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v26);
      v32 = 0;
      v34 = 1;
      goto LABEL_38;
    }

    objc_msgSend_getLogContext(self);
    v12 = v42;
    ctu::OsLogContext::~OsLogContext(&v41);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberCountryCode", &v41, 2u);
    }

    (completionCopy)[2](completionCopy, @"65535", 0);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v10 = v42;
    ctu::OsLogContext::~OsLogContext(&v41);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberNetworkCode", &v41, 2u);
    }
  }

LABEL_60:
}

- (void)copyGid1:(id)gid1 completion:(id)completion
{
  gid1Copy = gid1;
  completionCopy = completion;
  if (completionCopy)
  {
    if (gid1Copy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyGid1", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyGid1", buf, 2u);
    }
  }
}

- (void)copyGid2:(id)gid2 completion:(id)completion
{
  gid2Copy = gid2;
  completionCopy = completion;
  if (completionCopy)
  {
    if (gid2Copy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyGid2", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyGid2", buf, 2u);
    }
  }
}

- (void)copyLabel:(id)label completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101438788;
  v7[3] = &unk_101F3B9B0;
  completionCopy = completion;
  v6 = completionCopy;
  [(CTXPCClientHandler *)self getSimLabel:label completion:v7];
}

- (void)getSimLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!labelCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_51;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v33 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v33);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          v33 = 0;
          v34 = 0;
          v20 = sub_100018A64([labelCopy slotID]);
          (*(*v16 + 8))(&v33, v16, v20);
          if (v33)
          {
            v44 = 0;
            v42 = 0u;
            *__p = 0u;
            *v40 = 0u;
            *v41 = 0u;
            *v38 = 0u;
            v39 = 0u;
            *v36 = 0u;
            v37 = 0u;
            *buf = 0u;
            (*(*v16 + 184))(buf, v16, v33 + 24);
            v21 = BYTE7(v39);
            if (SBYTE7(v39) < 0)
            {
              v21 = v38[1];
            }

            if (v21)
            {
              v22 = [CTSimLabel alloc];
              if ((SBYTE7(v39) & 0x80u) == 0)
              {
                v23 = v38;
              }

              else
              {
                v23 = v38[0];
              }

              v24 = [NSString stringWithUTF8String:v23];
              if (SHIBYTE(v36[0]) >= 0)
              {
                v25 = buf;
              }

              else
              {
                v25 = *buf;
              }

              v26 = [NSString stringWithUTF8String:v25];
              v27 = [v22 initWithId:v24 andText:v26 andDidSetup:BYTE8(v39)];

              (completionCopy)[2](completionCopy, v27, 0);
            }

            else
            {
              v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              completionCopy[2](completionCopy, 0, v27);
            }

            if (SHIBYTE(v44) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[1]);
            }

            if (SHIBYTE(v41[0]) < 0)
            {
              operator delete(v40[0]);
            }

            if (SBYTE7(v39) < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[1]);
            }

            if (SHIBYTE(v36[0]) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v30 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v32 = asString([labelCopy slotID] != 0);
              *buf = 136315138;
              *&buf[4] = v32;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "getSimLabel, no personality for slot %s", buf, 0xCu);
            }

            v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v31);
          }

          if (v34)
          {
            sub_100004A34(v34);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSimLabel", buf, 2u);
          }

          v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v29);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSimLabel", buf, 2u);
  }

LABEL_51:
}

- (void)getShortLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v27[0];
    ctu::OsLogContext::~OsLogContext(&v26);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getShortLabel", &v26, 2u);
    }

    goto LABEL_27;
  }

  if (!labelCopy)
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v19);

    goto LABEL_27;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v26);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v28 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_14:
  if (v27[0])
  {
    sub_100004A34(v27[0]);
  }

  if (v16)
  {
    v26 = 0;
    v27[0] = 0;
    v27[1] = 0;
    (*(*v16 + 336))(&v26, v16);
    v20 = sub_100018A64([labelCopy slotID]);
    v21 = v27[0];
    if (!v27[0])
    {
      goto LABEL_24;
    }

    v22 = v27;
    do
    {
      if (*(v21 + 8) >= v20)
      {
        v22 = v21;
      }

      v21 = v21[*(v21 + 8) < v20];
    }

    while (v21);
    if (v22 != v27 && v20 >= *(v22 + 8))
    {
      (completionCopy)[2](completionCopy, v22[5], 0);
    }

    else
    {
LABEL_24:
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v23);
    }

    sub_1001B1588(&v26, v27[0]);
    if ((v17 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = v27[0];
    ctu::OsLogContext::~OsLogContext(&v26);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSimLabel", &v26, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);

    if ((v17 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)getSubscriptionUserFacingName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!nameCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_32;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v27);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v28)
        {
          sub_100004A34(v28);
        }

        if (v16)
        {
          v20 = sub_100018A64([nameCopy slotID]);
          v27 = 0;
          v28 = 0;
          (*(*v16 + 8))(&v27, v16, v20);
          if (v27)
          {
            *&buf = 0;
            (*(*v16 + 216))(&buf, v16, v27 + 24);
            if (buf)
            {
              completionCopy[2](completionCopy, buf, 0);
            }

            else
            {
              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
              completionCopy[2](completionCopy, 0, v25);
            }

            sub_100005978(&buf);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v23 = *(&buf + 1);
            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = subscriber::asString();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v26;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "getSubscriptionUserFacingName, no personality for slot %s", &buf, 0xCu);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v24);
          }

          if (v28)
          {
            sub_100004A34(v28);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v28;
          ctu::OsLogContext::~OsLogContext(&v27);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v27) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSubscriptionUserFacingName", &v27, 2u);
          }

          v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v28;
  ctu::OsLogContext::~OsLogContext(&v27);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSubscriptionUserFacingName", &v27, 2u);
  }

LABEL_32:
}

- (void)generateAuthenticationInfoUsingSim:(id)sim authParams:(id)params completion:(id)completion
{
  simCopy = sim;
  paramsCopy = params;
  completionCopy = completion;
  v10 = completionCopy;
  v47 = simCopy;
  if (completionCopy)
  {
    if (simCopy)
    {
      v11 = paramsCopy;
      v46 = completionCopy;
      if (!paramsCopy)
      {
        objc_msgSend_getLogContext(self);
        v24 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No auth params given", buf, 2u);
        }

        goto LABEL_22;
      }

      data = [paramsCopy data];

      if (!data)
      {
        objc_msgSend_getLogContext(self);
        v26 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "No auth params dictionary given", buf, 2u);
        }

        goto LABEL_22;
      }

      objc_msgSend_getLogContext(self);
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        data2 = [paramsCopy data];
        *buf = 136315395;
        *&buf[4] = "[CTXPCClientHandler(Subscriber) generateAuthenticationInfoUsingSim:authParams:completion:]";
        *&buf[12] = 2117;
        *&buf[14] = data2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: input auth params: %{sensitive}@", buf, 0x16u);

        v10 = v46;
      }

      data3 = [paramsCopy data];
      v16 = kCTSimSupportUICCAuthenticationTypeKey;
      Value = CFDictionaryGetValue(data3, kCTSimSupportUICCAuthenticationTypeKey);
      v18 = Value;
      if (!Value || (v19 = CFGetTypeID(Value), v19 != CFStringGetTypeID()))
      {
        objc_msgSend_getLogContext(self);
        v25 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "No authentication type specified", buf, 2u);
        }

        goto LABEL_22;
      }

      AuthTypeFromClientKey = subscriber::getAuthTypeFromClientKey(v18, v20);
      if ((AuthTypeFromClientKey & 0x100000000) == 0)
      {
LABEL_22:
        v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (v10)[2](v10, 0, v27);

        v10 = v46;
        goto LABEL_23;
      }

      v59[0] = 0;
      v59[1] = 0;
      v58 = v59;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      data4 = [paramsCopy data];
      v45 = AuthTypeFromClientKey;
      v29 = [data4 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v29)
      {
        v30 = *v55;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v55 != v30)
            {
              objc_enumerationMutation(data4);
            }

            v32 = *(*(&v54 + 1) + 8 * i);
            if (([(subscriber *)v32 isEqualToString:v16]& 1) == 0)
            {
              v52 = 0;
              AuthInfoTypeFromClientKey = subscriber::getAuthInfoTypeFromClientKey(v32, v33);
              LODWORD(v52) = AuthInfoTypeFromClientKey;
              BYTE4(v52) = BYTE4(AuthInfoTypeFromClientKey);
              if ((AuthInfoTypeFromClientKey & 0x100000000) != 0)
              {
                data5 = [v11 data];
                [data5 objectForKey:v32];
                memset(buf, 0, 24);
                ctu::cf::assign();
                v49 = *buf;
                v37 = *&buf[16];
                *buf = &v52;
                v38 = sub_1004FCB34(&v58, &v52, &unk_101802C98, buf);
                v39 = v38[5];
                if (v39)
                {
                  v38[6] = v39;
                  operator delete(v39);
                  v38[5] = 0;
                  v38[6] = 0;
                  v38[7] = 0;
                }

                *(v38 + 5) = v49;
                v38[7] = v37;

                v11 = paramsCopy;
              }

              else
              {
                objc_msgSend_getLogContext(self);
                v35 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v32;
                  _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to convert auth info type (%@)", buf, 0xCu);
                }
              }
            }
          }

          v29 = [data4 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v29);
      }

      v52 = 0;
      v53 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v52)
      {
        *buf = 0;
        *&buf[16] = 0u;
        *&buf[8] = &buf[16];
        *buf = sub_100018A64([v47 slotID]);
        *&buf[4] = v45;
        sub_100BE09D8(&buf[8], v58, v59);
        v40 = v52;
        v50 = *buf;
        sub_1004F1F78(v51, &buf[8]);
        selfCopy = self;
        v42 = objc_retainBlock(v46);
        v60[0] = off_101F3C100;
        v60[1] = selfCopy;
        v60[2] = v42;
        v60[3] = v60;
        (*(*v40 + 256))(v40, &v50, v60);
        sub_1004F26B0(v60);
        sub_10004EC58(v51, v51[1]);
        sub_10004EC58(&buf[8], *&buf[16]);
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v43 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for generateAuthenticationInfoUsingSim", buf, 2u);
        }

        v44 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        (*(v46 + 2))(v46, 0, v44);
      }

      v10 = v46;
      if (v53)
      {
        sub_100004A34(v53);
      }

      sub_10004EC58(&v58, v59[0]);
    }

    else
    {
      v11 = paramsCopy;
      v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (v10)[2](v10, 0, v23);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    v11 = paramsCopy;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyLabel", buf, 2u);
    }
  }

LABEL_23:
}

- (void)setLabel:(id)label label:(id)a4 completion:(id)completion
{
  labelCopy = label;
  v9 = a4;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v12 = v14;
    ctu::OsLogContext::~OsLogContext(v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler for setLabel", v13, 2u);
    }
  }
}

- (void)setDefaultVoice:(id)voice completion:(id)completion
{
  voiceCopy = voice;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!voiceCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([voiceCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F3C180;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 776))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for setDefaultVoice", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setDefaultVoice", &v24, 2u);
  }

LABEL_23:
}

- (void)setActiveUserDataSelection:(id)selection completion:(id)completion
{
  selectionCopy = selection;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!selectionCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([selectionCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F3C200;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 784))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for setActiveUserDataSelection", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setActiveUserDataSelection", &v24, 2u);
  }

LABEL_23:
}

- (void)shouldAllowSimLockFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!forCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v20 = sub_100018A64([forCopy slotID]);
          v21 = [NSNumber numberWithBool:(*(*v16 + 72))(v16, v20)];
          (completionCopy)[2](completionCopy, v21, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for shouldAllowSimLockFor", &v23, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for shouldAllowSimLockFor", &v23, 2u);
  }

LABEL_23:
}

- (void)fetchSIMLockValue:(id)value completion:(id)completion
{
  valueCopy = value;
  completionCopy = completion;
  if (completionCopy)
  {
    if (valueCopy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for fetchSIMLockValue", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for fetchSIMLockValue", buf, 2u);
    }
  }
}

- (void)saveSIMLockValue:(id)value enabled:(BOOL)enabled pin:(id)pin completion:(id)completion
{
  valueCopy = value;
  pinCopy = pin;
  completionCopy = completion;
  if (completionCopy)
  {
    if (valueCopy)
    {
      *buf = 0;
      v19 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v17)
      {
        sub_100004A34(v17);
      }

      objc_msgSend_getLogContext(self);
      v14 = v17;
      ctu::OsLogContext::~OsLogContext(v16);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for saveSIMLockValue", v16, 2u);
      }

      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, v15);

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      v13 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v13);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v12 = v19;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler for saveSIMLockValue", buf, 2u);
    }
  }
}

- (void)unlockPIN:(id)n pin:(id)pin completion:(id)completion
{
  nCopy = n;
  pinCopy = pin;
  completionCopy = completion;
  if (completionCopy)
  {
    if (nCopy && pinCopy)
    {
      *buf = 0;
      v18 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v16)
      {
        sub_100004A34(v16);
      }

      objc_msgSend_getLogContext(self);
      v13 = v16;
      ctu::OsLogContext::~OsLogContext(v15);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for unlockPIN", v15, 2u);
      }

      v14 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, v14);

      if (v18)
      {
        sub_100004A34(v18);
      }
    }

    else
    {
      v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v12);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v11 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPIN", buf, 2u);
    }
  }
}

- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin completion:(id)completion
{
  kCopy = k;
  pukCopy = puk;
  pinCopy = pin;
  completionCopy = completion;
  if (completionCopy)
  {
    if (kCopy && pukCopy && pinCopy)
    {
      *buf = 0;
      v21 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v19)
      {
        sub_100004A34(v19);
      }

      objc_msgSend_getLogContext(self);
      v16 = v19;
      ctu::OsLogContext::~OsLogContext(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for unlockPUK", v18, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, v17);

      if (v21)
      {
        sub_100004A34(v21);
      }
    }

    else
    {
      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v14 = v21;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPUK", buf, 2u);
    }
  }
}

- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin completion:(id)completion
{
  nCopy = n;
  pinCopy = pin;
  newPinCopy = newPin;
  completionCopy = completion;
  if (completionCopy)
  {
    if (nCopy && pinCopy && newPinCopy)
    {
      *buf = 0;
      v21 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v19)
      {
        sub_100004A34(v19);
      }

      objc_msgSend_getLogContext(self);
      v16 = v19;
      ctu::OsLogContext::~OsLogContext(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for changePIN", v18, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, v17);

      if (v21)
      {
        sub_100004A34(v21);
      }
    }

    else
    {
      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v14 = v21;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPUK", buf, 2u);
    }
  }
}

- (void)getRemainingPINAttemptCount:(id)count completion:(id)completion
{
  countCopy = count;
  completionCopy = completion;
  if (completionCopy)
  {
    if (countCopy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getRemainingPINAttemptCount", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getRemainingPINAttemptCount", buf, 2u);
    }
  }
}

- (void)getRemainingPUKAttemptCount:(id)count completion:(id)completion
{
  countCopy = count;
  completionCopy = completion;
  if (completionCopy)
  {
    if (countCopy)
    {
      *buf = 0;
      v15 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      objc_msgSend_getLogContext(self);
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getRemainingPUKAttemptCount", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getRemainingPUKAttemptCount", buf, 2u);
    }
  }
}

- (void)promptForSIMUnlock:(id)unlock completion:(id)completion
{
  unlockCopy = unlock;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for promptForSIMUnlock", &v23, 2u);
    }

    goto LABEL_19;
  }

  if (!unlockCopy)
  {
    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, v19);

    goto LABEL_19;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_14:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v20 = sub_100018A64([unlockCopy slotID]);
    (*(*v16 + 24))(v16, v20);
    completionCopy[2](completionCopy, 0);
    if ((v17 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v15);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SubscriberUserAlertManagerInterface for promptForSIMUnlock", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    completionCopy[2](completionCopy, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)SIMUnlockProcedureDidComplete
{
  objc_msgSend_registry(self, a2);
  ServiceMap = Registry::getServiceMap(v14);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v11)
  {
    (*(*v11 + 48))(v11);
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v13 = v15;
  ctu::OsLogContext::~OsLogContext(&v14);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    if (v12)
    {
      return;
    }

    goto LABEL_15;
  }

  LOWORD(v14) = 0;
  _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberUserAlertManagerInterface for SIMUnlockProcedureDidComplete", &v14, 2u);
  if (v12)
  {
    return;
  }

LABEL_15:
  sub_100004A34(v10);
}

- (void)authenticate:(id)authenticate request:(id)request completion:(id)completion
{
  authenticateCopy = authenticate;
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    if (authenticateCopy)
    {
      v16 = 0;
      v17 = 0;
      objc_msgSend_registry(self);
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      objc_msgSend_getLogContext(self);
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberController for SIM authentication", buf, 2u);
      }

      v14 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, 0, v14);

      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    else
    {
      v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v12);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v11 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid completion handler when performing SIM authentication", buf, 2u);
    }
  }
}

- (void)getUserAuthToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!tokenCopy)
    {
      v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v20);

      goto LABEL_25;
    }

    v8 = sub_10002A8E0(tokenCopy);
    *buf = 0;
    v28 = 0;
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v29 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        (*(*v17 + 8))(buf, v17, v8);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        if (v26)
        {
          sub_100004A34(v26);
        }

        v21 = *buf;
        if (*buf)
        {
          v22 = objc_retainBlock(completionCopy);
          v30[0] = off_101F3C480;
          v30[1] = v22;
          v30[3] = v30;
          (*(*v21 + 248))(v21, v30);
          sub_1003EDCF8(v30);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CarrierEntitlementsController for getting user auth token", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v24);
        }

        if (v28)
        {
          sub_100004A34(v28);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v19 = v28;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting user auth token", buf, 2u);
  }

LABEL_25:
}

- (void)refreshUserAuthToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!tokenCopy)
    {
      v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v20);

      goto LABEL_25;
    }

    v8 = sub_10002A8E0(tokenCopy);
    *buf = 0;
    v28 = 0;
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v29 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        (*(*v17 + 8))(buf, v17, v8);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        if (v26)
        {
          sub_100004A34(v26);
        }

        v21 = *buf;
        if (*buf)
        {
          v22 = objc_retainBlock(completionCopy);
          v30[0] = off_101F3C500;
          v30[1] = v22;
          v30[3] = v30;
          (*(*v21 + 256))(v21, v30);
          sub_10000FF50(v30);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CarrierEntitlementsController for refresh user auth token", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, v24);
        }

        if (v28)
        {
          sub_100004A34(v28);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v19 = v28;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh user auth token", buf, 2u);
  }

LABEL_25:
}

- (void)getUserDefaultVoiceSubscriptionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    buf = 0uLL;
    v5 = sub_10006C5D0(&buf);
    if (buf)
    {
      v6 = (*(*buf + 32))(buf, v5);
      if (v6)
      {
        v7 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:sub_10000FD54(v6)];
        if (v7)
        {
          contextCopy[2](contextCopy, v7, 0);
        }

        else
        {
          v10 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
          (contextCopy)[2](contextCopy, 0, v10);

          v7 = 0;
        }
      }

      else
      {
        v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        (contextCopy)[2](contextCopy, 0, v7);
      }
    }

    else
    {
      objc_msgSend_getLogContext(self, v5);
      v9 = v12;
      ctu::OsLogContext::~OsLogContext(&v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CommCenter uninitialized", &v11, 2u);
      }

      v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (contextCopy)[2](contextCopy, 0, v7);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v8 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getUserDefaultVoiceSubscriptionContext", &buf, 2u);
    }
  }
}

- (void)getLastKnownSimDeactivationInfoFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  v8 = sub_100018A64([forCopy slotID]);
  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(__p[0]);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v25 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v25);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v17)
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    completionCopy[2](completionCopy, 0, v19);
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  *__p = 0u;
  (*(*v17 + 8))(__p, v17, v8);
  if (v24)
  {
    v21 = sub_100185E04(__p, v20);
    (completionCopy)[2](completionCopy, v21, 0);
  }

  else
  {
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    completionCopy[2](completionCopy, 0, v21);
  }

  if (v24 == 1)
  {
    v25 = v23 + 1;
    sub_10143F388(&v25);
    if (SBYTE7(v23[0]) < 0)
    {
      operator delete(__p[0]);
      if (v18)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if ((v18 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v16);
  }

LABEL_20:
}

- (void)copyMobileSubscriberIso3CountryCode:(id)code MNC:(id)c completion:(id)completion
{
  codeCopy = code;
  cCopy = c;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v21 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIso3CountryCode", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!codeCopy || !cCopy)
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v22);

    goto LABEL_27;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(*buf);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v32[0] = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, v32);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v19)
  {
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v29 = v20;
    sub_10000501C(v32, [codeCopy UTF8String]);
    sub_10000501C(__p, [cCopy UTF8String]);
    (*(*v19 + 88))(buf, v19, v32, __p);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v23 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3)];
    if (v35 != *buf)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = [NSString stringWithUTF8String:?];
        [v23 setObject:v26 atIndexedSubscript:v25];

        ++v25;
        v24 += 24;
      }

      while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3));
    }

    (completionCopy)[2](completionCopy, v23, 0);

    v32[0] = buf;
    sub_1000087B4(v32);
    if ((v29 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v18);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIso3CountryCode", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    completionCopy[2](completionCopy, 0, v28);

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)checkEmbeddedSimHealthWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v19);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v21 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v13)
    {
      v16 = (*(*v13 + 288))(v13);
      if ((v16 & 0x100) != 0)
      {
        (*(completionCopy + 2))(completionCopy, v16 & 1, 0);
LABEL_22:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_24;
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v18 = v20;
      ctu::OsLogContext::~OsLogContext(&v19);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SubscriberSimInterface not available", &v19, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }

    goto LABEL_22;
  }

  objc_msgSend_getLogContext(self);
  v15 = v20;
  ctu::OsLogContext::~OsLogContext(&v19);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler", &v19, 2u);
  }

LABEL_24:
}

- (void)supportsEmbeddedSIMWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = objc_retainBlock(completionCopy);
          v21[0] = off_101F3C580;
          v21[1] = v16;
          v21[3] = v21;
          (*(*v13 + 296))(v13, v21);
          sub_10000FF50(v21);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SubscriberSimInterface not available", &v18, 2u);
          }

          (*(completionCopy + 2))(completionCopy, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion", &v18, 2u);
  }

LABEL_21:
}

- (void)supportsLimitedUseSIMsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (capabilities::ct::supportsVoiceCall(completionCopy))
    {
      v6 = _os_feature_enabled_impl();
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 2))(v5, v6);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v7 = v9;
    ctu::OsLogContext::~OsLogContext(&v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid completion", &v8, 2u);
    }
  }
}

- (void)copyMccOrPlmnsListForIso3CountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_32;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v32)
        {
          sub_100004A34(v32);
        }

        if (v16)
        {
          *buf = 0;
          v32 = 0;
          v33 = 0;
          sub_10000501C(buf, [codeCopy UTF8String]);
          v20 = HIBYTE(v33);
          if (v33 < 0)
          {
            v20 = v32;
          }

          if (v20)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            (*(*v16 + 96))(&v28, v16, buf);
            v21 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3)];
            if (v29 != v28)
            {
              v22 = 0;
              v23 = 0;
              do
              {
                v24 = [NSString stringWithUTF8String:?];
                [v21 setObject:v24 atIndexedSubscript:v23];

                ++v23;
                v22 += 24;
              }

              while (v23 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
            }

            (completionCopy)[2](completionCopy, v21, 0);

            v34 = &v28;
            sub_1000087B4(&v34);
          }

          else
          {
            v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v27);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v25 = v32;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIso3CountryCode", buf, 2u);
          }

          v26 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          completionCopy[2](completionCopy, 0, v26);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v32;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMccOrPlmnsListForIso3CountryCode", buf, 2u);
  }

LABEL_32:
}

- (void)isAnySimReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion", &v18, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v18);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v20 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_12:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (!v13)
  {
    v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v17);

    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = (*(*v13 + 304))(v13);
  completionCopy[2](completionCopy, v16, 0);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v12);
  }

LABEL_17:
}

- (void)isSimMatching:(id)matching carrierDescriptors:(id)descriptors completion:(id)completion
{
  matchingCopy = matching;
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v23 = v41;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid completion", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!descriptorsCopy || ![descriptorsCopy count] || (v11 = sub_10002A8E0(matchingCopy), !v11))
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v22);

    goto LABEL_15;
  }

  if ([(CTXPCClientHandler *)self hasEntitlement:33])
  {
LABEL_6:
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v13 = ServiceMap;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    v42 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v42);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
LABEL_25:
    if (v41)
    {
      sub_100004A34(v41);
    }

    if (v20)
    {
      v39 = descriptorsCopy;
      CFRetain(descriptorsCopy);
      v33 = (*(*v20 + 312))(v20, v11, &v39);
      completionCopy[2](completionCopy, v33, 0);
      sub_100010250(&v39);
      if ((v21 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v34 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      completionCopy[2](completionCopy, 0, v34);

      if ((v21 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_15;
  }

  objc_msgSend_registry(self);
  v24 = Registry::getServiceMap(*buf);
  v25 = v24;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  v42 = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &v42);
  if (v30)
  {
    v31 = v30[3];
    v19 = v30[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v32 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v25);
  v19 = 0;
  v32 = 1;
LABEL_34:
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (v31)
  {
    v35 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"18.0"];
    v36 = v35;
    if ((v35 & 0x100) != 0)
    {
      if (((GestaltUtilityInterface::isIPhone(v31) & 1) != 0 || GestaltUtilityInterface::isIPad(v31)) && (v36 & 1) == 0 && [(CTXPCClientHandler *)self hasEntitlement:16])
      {
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        goto LABEL_6;
      }

      v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:13 userInfo:0];
      completionCopy[2](completionCopy, 0, v37);
    }

    else
    {
      v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v37);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v38 = v41;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Missing gestalt", buf, 2u);
    }

    v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v37);
  }

  if ((v32 & 1) == 0)
  {
LABEL_51:
    sub_100004A34(v19);
  }

LABEL_15:
}

- (void)dataUsageForLastPeriods:(unint64_t)periods completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (!periods)
    {
      v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v18);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v23);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v25 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v25);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_14:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v15)
        {
          v19 = objc_retainBlock(completionCopy);
          selfCopy = self;
          v26[0] = off_101F40540;
          v26[1] = v19;
          v26[2] = selfCopy;
          v26[3] = v26;
          (*(*v15 + 176))(v15, periods, v26);
          sub_1010CE1B8(v26);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting app data usage.", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v22);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v17 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for data usage query", &v23, 2u);
  }

LABEL_23:
}

- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)device completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v17 = v31;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for data usage query on active paired device", buf, 2u);
    }

    goto LABEL_31;
  }

  if (!device)
  {
    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v18);

    goto LABEL_31;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(*buf);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&v28 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v28);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_14:
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v15)
  {
    v27 = 0;
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      v27 = v19;
    }

    else
    {
      v20 = xpc_null_create();
      v27 = v20;
      if (!v20)
      {
        v22 = xpc_null_create();
        v20 = 0;
        goto LABEL_25;
      }
    }

    if (xpc_get_type(v20) == &_xpc_type_dictionary)
    {
      xpc_retain(v20);
      goto LABEL_26;
    }

    v22 = xpc_null_create();
LABEL_25:
    v27 = v22;
LABEL_26:
    xpc_release(v20);
    v25 = xpc_int64_create(device);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = &v27;
    v31 = "kPeriods";
    sub_10000F688(buf, &v25, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v25);
    v25 = 0;
    selfCopy = self;
    v24 = objc_retainBlock(completionCopy);
    v29[0] = off_101F405C0;
    v29[1] = selfCopy;
    v29[2] = v24;
    v29[3] = v29;
    v28 = 0uLL;
    operator new();
  }

  v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  completionCopy[2](completionCopy, 0, v21);

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_31:
}

- (void)billingCycleEndDatesForLastPeriods:(unint64_t)periods completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (!periods)
    {
      v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v18);

      goto LABEL_26;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v22);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v24 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v24);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_14:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v15)
        {
          v19 = (*(*v15 + 184))(v15, periods);
          if (v19)
          {
            v20 = 0;
          }

          else
          {
            v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          }

          (completionCopy)[2](completionCopy, v19, v20);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v21 = v23;
          ctu::OsLogContext::~OsLogContext(&v22);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for billing cycle end dates query.", &v22, 2u);
          }

          v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v19);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v17 = v23;
  ctu::OsLogContext::~OsLogContext(&v22);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for billing cycle end dates query", &v22, 2u);
  }

LABEL_26:
}

- (void)usageCollectionEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (enabledCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = [NSNumber numberWithBool:(*(*v13 + 16))(v13)];
          enabledCopy[2](enabledCopy, v16, 0);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting if usage collection is enabled.", &v18, 2u);
          }

          v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (enabledCopy)[2](enabledCopy, 0, v16);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for billing cycle end dates query", &v18, 2u);
  }

LABEL_21:
}

- (void)setUsageCollectionEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v17 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting usage collection", &v20, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v20);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v22 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15, enabledCopy);
    completionCopy[2](completionCopy, 0);
    if ((v16 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v14);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting usage collection.", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (completionCopy)[2](completionCopy, v19);

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)userEnteredMonthlyBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!budgetCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_33;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v29 = 0;
          objc_msgSend_registry(self);
          sub_100018A64([budgetCopy slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v27) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v29 = v27;
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v22 = (*(*v16 + 192))(v16, buf);
          if (v23)
          {
            v24 = [NSNumber numberWithUnsignedLongLong:v22];
            (completionCopy)[2](completionCopy, v24, 0);
          }

          else
          {
            v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v24);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for user entered monthly budget query.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered monthly budget query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEntered:(id)entered monthlyBudget:(id)budget completion:(id)completion
{
  enteredCopy = entered;
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!enteredCopy)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v22);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      objc_msgSend_getLogContext(self);
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered monthly budget.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([enteredCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 200))(v19, buf, [budgetCopy unsignedLongLongValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredMonthlyBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!budgetCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      objc_msgSend_getLogContext(self);
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered monthly budget.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([budgetCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 208))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)userEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!budgetCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_33;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v29 = 0;
          objc_msgSend_registry(self);
          sub_100018A64([budgetCopy slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v27) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v29 = v27;
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v22 = (*(*v16 + 216))(v16, buf);
          if (v23)
          {
            v24 = [NSNumber numberWithUnsignedLongLong:v22];
            (completionCopy)[2](completionCopy, v24, 0);
          }

          else
          {
            v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v24);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for user entered monthly budget query.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered monthly budget query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget completion:(id)completion
{
  enteredCopy = entered;
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!enteredCopy)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v22);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      objc_msgSend_getLogContext(self);
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered monthly budget.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([enteredCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 224))(v19, buf, [budgetCopy unsignedLongLongValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!budgetCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      objc_msgSend_getLogContext(self);
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered monthly budget.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([budgetCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 232))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)userEnteredBillingEndDayOfMont:(id)mont completion:(id)completion
{
  montCopy = mont;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!montCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_33;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v28 = 0;
          objc_msgSend_registry(self);
          sub_100018A64([montCopy slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v26) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v28 = v26;
          }

          if (v24)
          {
            sub_100004A34(v24);
          }

          v22 = (*(*v16 + 240))(v16, buf);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = [NSNumber numberWithInt:v22];
            (completionCopy)[2](completionCopy, v23, 0);
          }

          else
          {
            v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v23);
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting user entered billing end day of the month.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered billing end day of month query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month completion:(id)completion
{
  endCopy = end;
  monthCopy = month;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!endCopy)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v22);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      objc_msgSend_getLogContext(self);
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered billing end day of the month.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([endCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 248))(v19, buf, [monthCopy intValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered billing end day of the month", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)month completion:(id)completion
{
  monthCopy = month;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!monthCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_37;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      objc_msgSend_getLogContext(self);
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered billing end day of the month.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      completionCopy[2](completionCopy, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    objc_msgSend_registry(self);
    sub_100018A64([monthCopy slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 256))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    completionCopy[2](completionCopy, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  objc_msgSend_getLogContext(self);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered billing end day of the month", buf, 2u);
  }

LABEL_37:
}

- (void)getCellularUsageWorkspaceInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v35 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v35);
    if (v11)
    {
      v12 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v14 = 0;
LABEL_12:
        if (v34)
        {
          sub_100004A34(v34);
        }

        if (v12)
        {
          (*(*v12 + 8))(buf, v12);
          v16 = *buf;
          sub_10001021C(buf);
          v17 = [CTCellularUsageWorkspaceInfo alloc];
          v18 = [v16 objectForKey:@"kCTCellularUsageSubscriberTag"];
          v19 = [v16 objectForKey:@"kCTCellularUsageMetaDataForHomeCountry"];
          [v16 objectForKey:@"kCTCellularUsageMetaDataForRoaming"];
          v29 = v14;
          v31 = v19;
          v30 = v32 = v18;
          v28 = [v16 objectForKey:@"kCTCellularUsageBillingCycleEndDate"];
          v27 = [v16 objectForKey:@"kCTCellularUsagePreviousBillingCycleDate"];
          v26 = [v16 objectForKey:@"kCTCellularUsageBillingCycleSupported"];
          v20 = [v16 objectForKey:@"kCTCellularUsageCarrierSpaceSupported"];
          v21 = [v16 objectForKey:@"kCTCellularUsageWorkspaceName"];
          v22 = [v16 objectForKey:@"kCTCellularUsageWorkspacePath"];
          v23 = [v17 initWithSubscriberTag:v32 metaDataForHomeCountry:v31 metaDataForRoaming:v30 billingCycleEndDate:v28 previousBillingCycleDate:v27 billingCycleSupported:v26 carrierSpaceSupported:v20 workspaceName:v21 workspacePath:v22];

          infoCopy[2](infoCopy, v23, 0);
          v14 = v29;
          v24 = v16;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v25 = v34;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find data usage controller", buf, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (infoCopy)[2](infoCopy, 0, v24);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v34;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing completion handler", buf, 2u);
  }

LABEL_21:
}

- (void)isPrivateNetworkContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (contextCopy && (v19 = sub_100018A64([contextCopy slotID]), v19))
          {
            selfCopy = self;
            v21 = objc_retainBlock(completionCopy);
            v29[0] = off_101F42088;
            v29[1] = selfCopy;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 880))(v16, v19, v29);
            sub_100627050(v29);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkContext", &v26, 2u);
  }

LABEL_26:
}

- (void)getPrivateNetworkCapabilitiesForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (contextCopy && (v19 = sub_100018A64([contextCopy slotID]), v19))
          {
            selfCopy = self;
            v21 = objc_retainBlock(completionCopy);
            v29[0] = off_101F42108;
            v29[1] = selfCopy;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 888))(v16, v19, v29);
            sub_1008A1248(v29);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for getPrivateNetworkCapabilitiesForContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPrivateNetworkCapabilitiesForContext", &v26, 2u);
  }

LABEL_26:
}

- (void)isPrivateNetworkSIM:(id)m completion:(id)completion
{
  mCopy = m;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          if (mCopy && (v19 = sub_100018A64([mCopy slotID]), v19))
          {
            v20 = objc_retainBlock(completionCopy);
            v28[0] = off_101F42198;
            v28[1] = v20;
            v28[3] = v28;
            (*(*v16 + 912))(v16, v19, v28);
            sub_10000FF50(v28);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v21 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No slot in context", &v25, 2u);
            }

            v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v22);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkSIM", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkSIM", &v25, 2u);
  }

LABEL_26:
}

- (void)isPrivateNetworkEvaluationNeeded:(id)needed
{
  neededCopy = needed;
  if (!neededCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkEvaluationNeeded", &v19, 2u);
    }

    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  v7 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    v16 = (*(*v13 + 920))(v13);
    neededCopy[2](neededCopy, v16, 0);
    if ((v14 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v12);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkEvaluationNeeded", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    (neededCopy)[2](neededCopy, 0, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isPrivateNetworkPreferredOverWifi:(id)wifi completion:(id)completion
{
  wifiCopy = wifi;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          if (wifiCopy && (v19 = sub_100018A64([wifiCopy slotID]), v19))
          {
            v20 = objc_retainBlock(completionCopy);
            v28[0] = off_101F42218;
            v28[1] = v20;
            v28[3] = v28;
            (*(*v16 + 904))(v16, v19, v28);
            sub_10000FF50(v28);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v21 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No slot in context", &v25, 2u);
            }

            v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v22);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkPreferredOverWifi", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkPreferredOverWifi", &v25, 2u);
  }

LABEL_26:
}

- (void)updateGeofenceProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    dataSetName3 = ServiceMap;
    v9 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v10 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    *&v58 = v9;
    v13 = sub_100009510(&dataSetName3[1].__m_.__sig, &v58);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(dataSetName3);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = v14;
        sub_100004A34(v14);
        v46 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(dataSetName3);
    v16 = 0;
    v46 = 1;
LABEL_12:
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    v45 = v16;
    if (v15)
    {
      if (profileCopy)
      {
        geofenceList = [profileCopy geofenceList];
        if (geofenceList)
        {
          v44 = v15;
          dataSetName = [profileCopy dataSetName];
          v20 = dataSetName == 0;

          if (!v20)
          {
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            buf = 0u;
            v68 = 0u;
            sub_10000501C(&v70 + 1, "");
            sub_10000501C(&v72, "");
            WORD4(v73) = 0;
            HIDWORD(v73) = 0;
            *(&v74 + 1) = 0;
            v75 = 0;
            *&v74 = &v74 + 8;
            LODWORD(buf) = 1;
            dataSetName2 = [profileCopy dataSetName];
            if (dataSetName2)
            {
              dataSetName3 = [profileCopy dataSetName];
              v22 = dataSetName3;
              uTF8String = [(std::mutex *)dataSetName3 UTF8String];
            }

            else
            {
              uTF8String = "";
            }

            sub_100016890((&buf + 8), uTF8String);
            if (dataSetName2)
            {
            }

            versionNumber = [profileCopy versionNumber];
            if (versionNumber)
            {
              dataSetName3 = [profileCopy versionNumber];
              v26 = dataSetName3;
              uTF8String2 = [(std::mutex *)dataSetName3 UTF8String];
            }

            else
            {
              uTF8String2 = "";
            }

            sub_100016890(&v69, uTF8String2);
            if (versionNumber)
            {
            }

            BYTE9(v73) = [profileCopy cellularDataPreferred];
            nRStandaloneMode = [profileCopy NRStandaloneMode];
            if (nRStandaloneMode < 3)
            {
              HIDWORD(v73) = dword_10197B278[nRStandaloneMode];
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            geofenceList2 = [profileCopy geofenceList];
            v30 = [geofenceList2 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v30)
            {
              v31 = 0;
              v32 = *v64;
              for (i = *v64; ; i = *v64)
              {
                if (i != v32)
                {
                  objc_enumerationMutation(geofenceList2);
                }

                v34 = *(*(&v63 + 1) + 8 * v31);
                v62 = 0;
                v60 = 0u;
                __p = 0u;
                v58 = 0u;
                v59 = 0u;
                radius = [v34 radius];
                [radius doubleValue];
                *&v58 = v36;

                longitude = [v34 longitude];
                [longitude doubleValue];
                *(&v58 + 1) = v38;

                latitude = [v34 latitude];
                [latitude doubleValue];
                *&v59 = v40;

                geofenceId = [v34 geofenceId];
                v42 = geofenceId;
                sub_100016890((&v59 + 8), [geofenceId UTF8String]);

                sub_1004604CC(&v74, &v59 + 1, &v59 + 8, &v58);
                if (SHIBYTE(v62) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(*(&v59 + 1));
                }

                if (++v31 >= v30)
                {
                  v30 = [geofenceList2 countByEnumeratingWithState:&v63 objects:v77 count:16];
                  if (!v30)
                  {
                    break;
                  }

                  v31 = 0;
                }
              }
            }

            sub_100134E64(v48, &buf);
            v43 = objc_retainBlock(completionCopy);
            v76[0] = off_101F42298;
            v76[1] = v43;
            v76[3] = v76;
            (*(*v44 + 928))(v44, v48, v76);
            sub_10000FF50(v76);
            sub_1001349A0(v57, v57[1]);
            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52 < 0)
            {
              operator delete(v51);
            }

            if (v50 < 0)
            {
              operator delete(v49);
            }

            sub_1001349A0(&v74, *(&v74 + 1));
            if (SBYTE7(v73) < 0)
            {
              operator delete(v72);
            }

            if (SHIBYTE(v71) < 0)
            {
              operator delete(*(&v70 + 1));
            }

            if (SBYTE7(v70) < 0)
            {
              operator delete(v69);
            }

            if (SHIBYTE(v68) < 0)
            {
              operator delete(*(&buf + 1));
            }

            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      objc_msgSend_getLogContext(self);
      v24 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for updateGeofenceProfile", &buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
LABEL_23:
    if ((v46 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    goto LABEL_25;
  }

  objc_msgSend_getLogContext(self);
  v17 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for updateGeofenceProfile", &buf, 2u);
  }

LABEL_25:
}

- (void)removeGeofenceProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    v6 = ServiceMap;
    v7 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v37 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v37);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v13)
        {
          v36 = 0;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          buf = 0u;
          v29 = 0u;
          sub_10000501C(&v31 + 1, "");
          sub_10000501C(&v33, "");
          WORD4(v34) = 0;
          HIDWORD(v34) = 0;
          *(&v35 + 1) = 0;
          v36 = 0;
          *&v35 = &v35 + 8;
          LODWORD(buf) = 1;
          sub_100134E64(v18, &buf);
          v16 = objc_retainBlock(profileCopy);
          v38[0] = off_101F42318;
          v38[1] = v16;
          v38[3] = v38;
          (*(*v13 + 928))(v13, v18, v38);
          sub_10000FF50(v38);
          sub_1001349A0(v27, v27[1]);
          if (v26 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          sub_1001349A0(&v35, *(&v35 + 1));
          if (SBYTE7(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(*(&v31 + 1));
          }

          if (SBYTE7(v31) < 0)
          {
            operator delete(v30);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*(&buf + 1));
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v17 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for removeGeofenceProfile", &buf, 2u);
          }

          (*(profileCopy + 2))(profileCopy, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeGeofenceProfile", &buf, 2u);
  }

LABEL_36:
}

- (void)deleteHiddenSims:(id)sims
{
  simsCopy = sims;
  if (!simsCopy)
  {
    objc_msgSend_getLogContext(self);
    v5 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for deleteHiddenSims", &v19, 2u);
    }

    simsCopy = &stru_101F42058;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v19);
  v7 = ServiceMap;
  v8 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v9 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_13:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v14)
  {
    v16 = objc_retainBlock(simsCopy);
    v22[0] = off_101F42398;
    v22[1] = v16;
    v22[3] = v22;
    (*(*v14 + 944))(v14, v22);
    sub_10028ED7C(v22);
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for deleteHiddenSims", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    simsCopy->invoke(simsCopy, v18);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

- (void)installPrivateNetworkProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  v55 = profileCopy;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v17 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
    }

    goto LABEL_74;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(buf);
  dataSetName2 = ServiceMap;
  v10 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&v66 = v10;
  v14 = sub_100009510(&dataSetName2[1].__m_.__sig, &v66);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_11:
    std::mutex::unlock(dataSetName2);
    v53 = 0;
    v54 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(dataSetName2);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v53 = v15;
  sub_100004A34(v15);
  v54 = 0;
LABEL_12:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v16)
  {
    if (profileCopy && ([profileCopy versionNumber], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v52 = v16, objc_msgSend(profileCopy, "dataSetName"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v18, !v20))
    {
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      buf = 0u;
      v76 = 0u;
      sub_10000501C(&v78 + 1, "");
      sub_10000501C(&v80, "");
      WORD4(v81) = 0;
      HIDWORD(v81) = 0;
      *(&v82 + 1) = 0;
      v83 = 0;
      *&v82 = &v82 + 8;
      LODWORD(buf) = 1;
      dataSetName = [profileCopy dataSetName];
      if (dataSetName)
      {
        dataSetName2 = [profileCopy dataSetName];
        v22 = dataSetName2;
        uTF8String = [(std::mutex *)dataSetName2 UTF8String];
      }

      else
      {
        uTF8String = "";
      }

      sub_100016890((&buf + 8), uTF8String);
      if (dataSetName)
      {
      }

      versionNumber = [profileCopy versionNumber];
      if (versionNumber)
      {
        dataSetName2 = [profileCopy versionNumber];
        v28 = dataSetName2;
        uTF8String2 = [(std::mutex *)dataSetName2 UTF8String];
      }

      else
      {
        uTF8String2 = "";
      }

      sub_100016890(&v77, uTF8String2);
      if (versionNumber)
      {
      }

      csgNetworkIdentifier = [profileCopy csgNetworkIdentifier];
      if (csgNetworkIdentifier)
      {
        dataSetName2 = [profileCopy csgNetworkIdentifier];
        v31 = dataSetName2;
        uTF8String3 = [(std::mutex *)dataSetName2 UTF8String];
      }

      else
      {
        uTF8String3 = "";
      }

      sub_100016890((&v78 + 8), uTF8String3);
      if (csgNetworkIdentifier)
      {
      }

      networkIdentifier = [profileCopy networkIdentifier];
      if (networkIdentifier)
      {
        dataSetName2 = [profileCopy networkIdentifier];
        v34 = dataSetName2;
        uTF8String4 = [(std::mutex *)dataSetName2 UTF8String];
      }

      else
      {
        uTF8String4 = "";
      }

      sub_100016890(&v80, uTF8String4);
      if (networkIdentifier)
      {
      }

      BYTE9(v81) = [profileCopy cellularDataPreferred];
      nRStandaloneMode = [profileCopy NRStandaloneMode];
      if (nRStandaloneMode < 3)
      {
        HIDWORD(v81) = dword_10197B278[nRStandaloneMode];
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      geofenceList = [profileCopy geofenceList];
      v38 = [geofenceList countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v38)
      {
        v39 = 0;
        v40 = *v72;
        for (i = *v72; ; i = *v72)
        {
          if (i != v40)
          {
            objc_enumerationMutation(geofenceList);
          }

          v42 = *(*(&v71 + 1) + 8 * v39);
          v70 = 0;
          v68 = 0u;
          __p = 0u;
          v66 = 0u;
          v67 = 0u;
          radius = [v42 radius];
          [radius doubleValue];
          *&v66 = v44;

          longitude = [v42 longitude];
          [longitude doubleValue];
          *(&v66 + 1) = v46;

          latitude = [v42 latitude];
          [latitude doubleValue];
          *&v67 = v48;

          geofenceId = [v42 geofenceId];
          v50 = geofenceId;
          sub_100016890((&v67 + 8), [geofenceId UTF8String]);

          sub_1004604CC(&v82, &v67 + 1, &v67 + 8, &v66);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (++v39 >= v38)
          {
            v38 = [geofenceList countByEnumeratingWithState:&v71 objects:v85 count:16];
            if (!v38)
            {
              break;
            }

            v39 = 0;
          }
        }
      }

      sub_100134E64(v56, &buf);
      v51 = objc_retainBlock(completionCopy);
      v84[0] = off_101F42418;
      v84[1] = v51;
      v84[3] = v84;
      (*(*v52 + 952))(v52, v56, 1, v84);
      sub_1008A1348(v84);
      sub_1001349A0(v65, v65[1]);
      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (v58 < 0)
      {
        operator delete(v57);
      }

      sub_1001349A0(&v82, *(&v82 + 1));
      if (SBYTE7(v81) < 0)
      {
        operator delete(v80);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(*(&v78 + 1));
      }

      if (SBYTE7(v78) < 0)
      {
        operator delete(v77);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(*(&buf + 1));
      }
    }

    else
    {
      v26 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v24 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
    }

    v25 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v25);
  }

  if ((v54 & 1) == 0)
  {
    sub_100004A34(v53);
  }

LABEL_74:
}

- (void)removePrivateNetworkProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    dataSetName2 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v54 = v10;
    v14 = sub_100009510(&dataSetName2[1].__m_.__sig, &v54);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(dataSetName2);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          if (profileCopy)
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            buf = 0u;
            v46 = 0u;
            sub_10000501C(&v48 + 1, "");
            sub_10000501C(&v50, "");
            WORD4(v51) = 0;
            HIDWORD(v51) = 0;
            *(&v52 + 1) = 0;
            v53 = 0;
            *&v52 = &v52 + 8;
            dataSetName = [profileCopy dataSetName];
            if (dataSetName)
            {
              dataSetName2 = [profileCopy dataSetName];
              v20 = dataSetName2;
              uTF8String = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String = "";
            }

            sub_100016890((&buf + 8), uTF8String);
            if (dataSetName)
            {
            }

            versionNumber = [profileCopy versionNumber];
            if (versionNumber)
            {
              dataSetName2 = [profileCopy versionNumber];
              v26 = dataSetName2;
              uTF8String2 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String2 = "";
            }

            sub_100016890(&v47, uTF8String2);
            if (versionNumber)
            {
            }

            csgNetworkIdentifier = [profileCopy csgNetworkIdentifier];
            if (csgNetworkIdentifier)
            {
              dataSetName2 = [profileCopy csgNetworkIdentifier];
              v29 = dataSetName2;
              uTF8String3 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String3 = "";
            }

            sub_100016890((&v48 + 8), uTF8String3);
            if (csgNetworkIdentifier)
            {
            }

            networkIdentifier = [profileCopy networkIdentifier];
            if (networkIdentifier)
            {
              dataSetName2 = [profileCopy networkIdentifier];
              v32 = dataSetName2;
              uTF8String4 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String4 = "";
            }

            sub_100016890(&v50, uTF8String4);
            if (networkIdentifier)
            {
            }

            sub_100134E64(v35, &buf);
            v34 = objc_retainBlock(completionCopy);
            v55[0] = off_101F42498;
            v55[1] = v34;
            v55[3] = v55;
            (*(*v16 + 952))(v16, v35, 0, v55);
            sub_1008A1348(v55);
            sub_1001349A0(v44, v44[1]);
            if (v43 < 0)
            {
              operator delete(__p);
            }

            if (v41 < 0)
            {
              operator delete(v40);
            }

            if (v39 < 0)
            {
              operator delete(v38);
            }

            if (v37 < 0)
            {
              operator delete(v36);
            }

            sub_1001349A0(&v52, *(&v52 + 1));
            if (SBYTE7(v51) < 0)
            {
              operator delete(v50);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(*(&v48 + 1));
            }

            if (SBYTE7(v48) < 0)
            {
              operator delete(v47);
            }

            if (SHIBYTE(v46) < 0)
            {
              operator delete(*(&buf + 1));
            }
          }

          else
          {
            v24 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
            (*(completionCopy + 2))(completionCopy, v24);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
          }

          v23 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
          (*(completionCopy + 2))(completionCopy, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(dataSetName2);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
  }

LABEL_58:
}

- (void)updatePrivateNetworkProfile:(id)profile setProfileAside:(BOOL)aside completion:(id)completion
{
  asideCopy = aside;
  profileCopy = profile;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(buf);
    dataSetName2 = ServiceMap;
    v12 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v13 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v56 = v12;
    v16 = sub_100009510(&dataSetName2[1].__m_.__sig, &v56);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(dataSetName2);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v18)
        {
          if (profileCopy)
          {
            v55 = 0;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            buf = 0u;
            v48 = 0u;
            sub_10000501C(&v50 + 1, "");
            sub_10000501C(&v52, "");
            WORD4(v53) = 0;
            HIDWORD(v53) = 0;
            *(&v54 + 1) = 0;
            v55 = 0;
            *&v54 = &v54 + 8;
            dataSetName = [profileCopy dataSetName];
            if (dataSetName)
            {
              dataSetName2 = [profileCopy dataSetName];
              v22 = dataSetName2;
              uTF8String = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String = "";
            }

            sub_100016890((&buf + 8), uTF8String);
            if (dataSetName)
            {
            }

            versionNumber = [profileCopy versionNumber];
            if (versionNumber)
            {
              dataSetName2 = [profileCopy versionNumber];
              v28 = dataSetName2;
              uTF8String2 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String2 = "";
            }

            sub_100016890(&v49, uTF8String2);
            if (versionNumber)
            {
            }

            csgNetworkIdentifier = [profileCopy csgNetworkIdentifier];
            if (csgNetworkIdentifier)
            {
              dataSetName2 = [profileCopy csgNetworkIdentifier];
              v31 = dataSetName2;
              uTF8String3 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String3 = "";
            }

            sub_100016890((&v50 + 8), uTF8String3);
            if (csgNetworkIdentifier)
            {
            }

            networkIdentifier = [profileCopy networkIdentifier];
            if (networkIdentifier)
            {
              dataSetName2 = [profileCopy networkIdentifier];
              v34 = dataSetName2;
              uTF8String4 = [(std::mutex *)dataSetName2 UTF8String];
            }

            else
            {
              uTF8String4 = "";
            }

            sub_100016890(&v52, uTF8String4);
            if (networkIdentifier)
            {
            }

            sub_100134E64(v37, &buf);
            v36 = objc_retainBlock(completionCopy);
            v57[0] = off_101F42518;
            v57[1] = v36;
            v57[3] = v57;
            (*(*v18 + 960))(v18, v37, asideCopy, v57);
            sub_1008A1348(v57);
            sub_1001349A0(v46, v46[1]);
            if (v45 < 0)
            {
              operator delete(__p);
            }

            if (v43 < 0)
            {
              operator delete(v42);
            }

            if (v41 < 0)
            {
              operator delete(v40);
            }

            if (v39 < 0)
            {
              operator delete(v38);
            }

            sub_1001349A0(&v54, *(&v54 + 1));
            if (SBYTE7(v53) < 0)
            {
              operator delete(v52);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(*(&v50 + 1));
            }

            if (SBYTE7(v50) < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*(&buf + 1));
            }
          }

          else
          {
            v26 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
            (*(completionCopy + 2))(completionCopy, v26);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
          }

          v25 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
          (*(completionCopy + 2))(completionCopy, v25);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(dataSetName2);
    v17 = 0;
    v19 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v20 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
  }

LABEL_58:
}

- (void)getPrivateNetworkSimInfoForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (contextCopy && (v19 = sub_100018A64([contextCopy slotID]), v19))
          {
            selfCopy = self;
            v21 = objc_retainBlock(completionCopy);
            v29[0] = off_101F42598;
            v29[1] = selfCopy;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 896))(v16, v19, v29);
            sub_1008A12C8(v29);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v23);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for getPrivateNetworkSimInfoForContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPrivateNetworkSimInfoForContext", &v26, 2u);
  }

LABEL_26:
}

- (void)getEosStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    *buf = 0;
    v13 = 0;
    v11 = 0;
    objc_msgSend_registry(self);
    sub_10152E04C(buf, &v11, v9);
    v5 = v11;
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v5)
    {
      statusCopy[2](statusCopy, 0, v5);
    }

    else
    {
      v7 = *buf;
      v8 = objc_retainBlock(statusCopy);
      v14[0] = off_101F492C8;
      v14[1] = v8;
      v14[3] = v14;
      (*(*v7 + 80))(v7, v14);
      sub_100EE25BC(v14);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v6 = v13;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid completion handler", buf, 2u);
    }
  }
}

- (void)setEosStatus:(id)status assertionState:(id)state completion:(id)completion
{
  statusCopy = status;
  stateCopy = state;
  completionCopy = completion;
  if (completionCopy)
  {
    *buf = 0;
    v25 = 0;
    v23 = 0;
    objc_msgSend_registry(self);
    sub_10152E04C(buf, &v23, &v21);
    v11 = v23;
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v11)
    {
      completionCopy[2](completionCopy, 0, v11);
    }

    else
    {
      v13 = *buf;
      v14 = statusCopy;
      sub_10000501C(v19, [statusCopy UTF8String]);
      v15 = stateCopy;
      sub_10000501C(__p, [stateCopy UTF8String]);
      v16 = objc_retainBlock(completionCopy);
      v26[0] = off_101F49358;
      v26[1] = v16;
      v26[3] = v26;
      (*(*v13 + 88))(v13, v19, __p, v26);
      sub_100E6421C(v26);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v12 = v25;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler", buf, 2u);
    }
  }
}

- (void)getEOSFirmwareUpdateInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    *buf = 0;
    v26 = 0;
    v24 = 0;
    objc_msgSend_registry(self);
    sub_10152E04C(buf, &v24, &v22);
    v5 = v24;
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (v5)
    {
      infoCopy[2](infoCopy, 0, v5);
LABEL_23:
      if (v26)
      {
        sub_100004A34(v26);
      }

      goto LABEL_26;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v27 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_16:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v15)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10152E8D8;
          v18[3] = &unk_101F3B988;
          v18[4] = self;
          v19 = infoCopy;
          (*(*v15 + 144))(v15, 0, v18, 1);
          v17 = v19;
        }

        else
        {
          v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          infoCopy[2](infoCopy, 0, v17);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_16;
  }

  objc_msgSend_getLogContext(self);
  v6 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid completion handler for getEOSFirmwareUpdateInfo", buf, 2u);
  }

LABEL_26:
}

- (optional<PhoneServicesType>)serviceFromCFName:(id)name
{
  nameCopy = name;
  if (CFStringCompare(nameCopy, kCTCapabilityAgent, 0))
  {
    if (CFStringCompare(nameCopy, kCTCapabilityAgent2, 0))
    {
      if (CFStringCompare(nameCopy, kCTCapabilityPhoneServices, 0))
      {
        if (CFStringCompare(nameCopy, kCTCapabilityAgent3, 0))
        {
          if (CFStringCompare(nameCopy, kCTCapabilityNetworkSlicing, 0))
          {
            v4 = CFStringCompare(nameCopy, kCTCapabilitySatellite, 0);
            v5 = (v4 == kCFCompareEqualTo) << 32;
            if (v4)
            {
              v6 = 0;
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v5 = &_mh_execute_header;
            v6 = 4;
          }
        }

        else
        {
          v5 = &_mh_execute_header;
          v6 = 3;
        }
      }

      else
      {
        v5 = &_mh_execute_header;
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
      v5 = &_mh_execute_header;
    }
  }

  else
  {
    v5 = &_mh_execute_header;
    v6 = 2;
  }

  return (v6 | v5);
}

- (void)context:(id)context canSetCapability:(id)capability completion:(id)completion
{
  contextCopy = context;
  capabilityCopy = capability;
  completionCopy = completion;
  v11 = completionCopy;
  if (!contextCopy || !capabilityCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else if (!v11)
    {
LABEL_19:
      v13 = contextCopy;
      goto LABEL_41;
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, 0, 0, v27);

    goto LABEL_19;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [dataProviderDelegate resolveContext:contextCopy];

  if (v13)
  {
    __p = 0;
    v68 = 0;
    v69 = 0;
    objc_msgSend_registry(self);
    uuid = [v13 uuid];
    sub_100047544(uuid, &v64);
    PersonalityIdFromUuid();
    sub_1000475BC(&v64);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v15 = HIBYTE(v69);
    if (v69 < 0)
    {
      v15 = v68;
    }

    if (!v15)
    {
      objc_msgSend_getLogContext(self);
      v30 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [v13 uuid];
        uUIDString = [uuid2 UUIDString];
        v55 = uUIDString;
        uTF8String = [uUIDString UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v11)[2](v11, 0, 0, v31);

      goto LABEL_39;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    v64 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v64);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v24)
    {
      objc_msgSend_getLogContext(self);
      v32 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v11)[2](v11, 0, 0, v33);

      if (v25)
      {
        goto LABEL_39;
      }

LABEL_38:
      sub_100004A34(v23);
LABEL_39:
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_41;
    }

    v66 = 0;
    if (CFStringCompare(capabilityCopy, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(capabilityCopy, kCTCapabilityTurnOffCellular, 0))
      {
        if (([(CTXPCClientHandler *)self serviceFromCFName:capabilityCopy]& 0x100000000) == 0)
        {
LABEL_71:
          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v45 = 0;
          goto LABEL_81;
        }

        (**v24)(&v64, v24, &__p);
        (*(*v64 + 48))(buf);
        v45 = buf[0];
        v70 = v66;
        v66 = *&buf[8];
        *&buf[8] = 0;
        sub_10001021C(&v70);
        v47 = buf[16];
        sub_10001021C(&buf[8]);
        if (v65)
        {
          sub_100004A34(v65);
        }

        if (v47)
        {
          v46 = 0;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v50 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v60 = asString();
            v61 = HIBYTE(v69);
            if (v69 < 0)
            {
              v61 = v68;
            }

            p_p = &__p;
            if (v69 < 0)
            {
              p_p = __p;
            }

            if (v61)
            {
              v63 = p_p;
            }

            else
            {
              v63 = "<invalid>";
            }

            *buf = 136315394;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = v63;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s CanSet IS NOT READY for '%s'", buf, 0x16u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        }

        goto LABEL_81;
      }

      v44 = sub_100018A64([v13 slotID]);
      if (!v44)
      {
        objc_msgSend_getLogContext(self);
        v51 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = 0;
      objc_msgSend_registry(self);
      sub_1015DB584(buf, v64);
      if (v65)
      {
        sub_100004A34(v65);
      }

      if (*buf)
      {
        v45 = (*(**buf + 208))(*buf, v44);
        v46 = 0;
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v57 = v65;
        ctu::OsLogContext::~OsLogContext(&v64);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v64) = 0;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for CanSet kCTCapabilityTurnOffCellular", &v64, 2u);
        }

        v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v45 = 0;
      }

      v52 = *&buf[8];
      if (!*&buf[8])
      {
LABEL_81:
        objc_msgSend_getLogContext(self);
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = asStringBool(v45);
          *buf = 138412802;
          *&buf[4] = capabilityCopy;
          *&buf[12] = 2080;
          *&buf[14] = v59;
          v72 = 2112;
          v73 = v66;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ CanSet = %s with [%@]", buf, 0x20u);
        }

        (v11)[2](v11, v45, v66, v46);

        sub_10001021C(&v66);
        if (v25)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_80:
      sub_100004A34(v52);
      goto LABEL_81;
    }

    objc_msgSend_registry(self);
    v34 = Registry::getServiceMap(*buf);
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    v64 = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &v64);
    if (v40)
    {
      v41 = v40[3];
      v42 = v40[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v43 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v42 = 0;
    v43 = 1;
LABEL_61:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v41)
    {
      if ([v13 slotID])
      {
        v48 = sub_100018A64([v13 slotID]);
        v45 = (*(*v41 + 56))(v41, v48);
        v46 = 0;
LABEL_74:
        if (v43)
        {
          goto LABEL_81;
        }

        v52 = v42;
        goto LABEL_80;
      }

      v49 = 2;
    }

    else
    {
      v49 = 35;
    }

    v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v49 userInfo:0];
    v45 = 0;
    goto LABEL_74;
  }

  objc_msgSend_getLogContext(self);
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v11)[2](v11, 0, 0, v29);

  v13 = 0;
LABEL_41:
}

- (void)context:(id)context getCapability:(id)capability completion:(id)completion
{
  contextCopy = context;
  capabilityCopy = capability;
  completionCopy = completion;
  v11 = completionCopy;
  if (!contextCopy || !capabilityCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else if (!v11)
    {
LABEL_19:
      v13 = contextCopy;
      goto LABEL_41;
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, 0, 0, v27);

    goto LABEL_19;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [dataProviderDelegate resolveContext:contextCopy];

  if (v13)
  {
    __p = 0;
    v68 = 0;
    v69 = 0;
    objc_msgSend_registry(self);
    uuid = [v13 uuid];
    sub_100047544(uuid, &v64);
    PersonalityIdFromUuid();
    sub_1000475BC(&v64);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v15 = HIBYTE(v69);
    if (v69 < 0)
    {
      v15 = v68;
    }

    if (!v15)
    {
      objc_msgSend_getLogContext(self);
      v30 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [v13 uuid];
        uUIDString = [uuid2 UUIDString];
        v55 = uUIDString;
        uTF8String = [uUIDString UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v11)[2](v11, 0, 0, v31);

      goto LABEL_39;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    v64 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v64);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v24)
    {
      objc_msgSend_getLogContext(self);
      v32 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v11)[2](v11, 0, 0, v33);

      if (v25)
      {
        goto LABEL_39;
      }

LABEL_38:
      sub_100004A34(v23);
LABEL_39:
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_41;
    }

    v66 = 0;
    if (CFStringCompare(capabilityCopy, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(capabilityCopy, kCTCapabilityTurnOffCellular, 0))
      {
        if (([(CTXPCClientHandler *)self serviceFromCFName:capabilityCopy]& 0x100000000) == 0)
        {
LABEL_71:
          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v45 = 0;
          goto LABEL_81;
        }

        (**v24)(&v64, v24, &__p);
        (*(*v64 + 40))(buf);
        v45 = buf[0];
        v70 = v66;
        v66 = *&buf[8];
        *&buf[8] = 0;
        sub_10001021C(&v70);
        v47 = buf[16];
        sub_10001021C(&buf[8]);
        if (v65)
        {
          sub_100004A34(v65);
        }

        if (v47)
        {
          v46 = 0;
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v50 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v60 = asString();
            v61 = HIBYTE(v69);
            if (v69 < 0)
            {
              v61 = v68;
            }

            p_p = &__p;
            if (v69 < 0)
            {
              p_p = __p;
            }

            if (v61)
            {
              v63 = p_p;
            }

            else
            {
              v63 = "<invalid>";
            }

            *buf = 136315394;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = v63;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s Get IS NOT READY for '%s'", buf, 0x16u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        }

        goto LABEL_81;
      }

      v44 = sub_100018A64([v13 slotID]);
      if (!v44)
      {
        objc_msgSend_getLogContext(self);
        v51 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = 0;
      objc_msgSend_registry(self);
      sub_1015DB584(buf, v64);
      if (v65)
      {
        sub_100004A34(v65);
      }

      if (*buf)
      {
        v45 = (*(**buf + 200))(*buf, v44);
        v46 = 0;
      }

      else
      {
        objc_msgSend_getLogContext(self);
        v57 = v65;
        ctu::OsLogContext::~OsLogContext(&v64);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v64) = 0;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for Get kCTCapabilityTurnOffCellular", &v64, 2u);
        }

        v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v45 = 0;
      }

      v52 = *&buf[8];
      if (!*&buf[8])
      {
LABEL_81:
        objc_msgSend_getLogContext(self);
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = asStringBool(v45);
          *buf = 138412802;
          *&buf[4] = capabilityCopy;
          *&buf[12] = 2080;
          *&buf[14] = v59;
          v72 = 2112;
          v73 = v66;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ Get = %s with [%@]", buf, 0x20u);
        }

        (v11)[2](v11, v45, v66, v46);

        sub_10001021C(&v66);
        if (v25)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_80:
      sub_100004A34(v52);
      goto LABEL_81;
    }

    objc_msgSend_registry(self);
    v34 = Registry::getServiceMap(*buf);
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    v64 = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &v64);
    if (v40)
    {
      v41 = v40[3];
      v42 = v40[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v43 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v42 = 0;
    v43 = 1;
LABEL_61:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v41)
    {
      if ([v13 slotID])
      {
        v48 = sub_100018A64([v13 slotID]);
        v45 = (*(*v41 + 40))(v41, v48);
        v46 = 0;
LABEL_74:
        if (v43)
        {
          goto LABEL_81;
        }

        v52 = v42;
        goto LABEL_80;
      }

      v49 = 2;
    }

    else
    {
      v49 = 35;
    }

    v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v49 userInfo:0];
    v45 = 0;
    goto LABEL_74;
  }

  objc_msgSend_getLogContext(self);
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v11)[2](v11, 0, 0, v29);

  v13 = 0;
LABEL_41:
}

- (void)context:(id)context setCapability:(id)capability enabled:(BOOL)enabled info:(id)info completion:(id)completion
{
  enabledCopy = enabled;
  contextCopy = context;
  capabilityCopy = capability;
  infoCopy = info;
  completionCopy = completion;
  v16 = completionCopy;
  if (!contextCopy || !capabilityCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else if (!v16)
    {
LABEL_19:
      v18 = contextCopy;
      goto LABEL_84;
    }

    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v16)[2](v16, v32);

    goto LABEL_19;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v18 = [dataProviderDelegate resolveContext:contextCopy];

  if (v18)
  {
    __p = 0;
    v73 = 0;
    v74 = 0;
    objc_msgSend_registry(self);
    uuid = [v18 uuid];
    sub_100047544(uuid, v70);
    PersonalityIdFromUuid();
    sub_1000475BC(v70);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v20 = HIBYTE(v74);
    if (v74 < 0)
    {
      v20 = v73;
    }

    if (!v20)
    {
      objc_msgSend_getLogContext(self);
      v35 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [v18 uuid];
        uUIDString = [uuid2 UUIDString];
        v63 = uUIDString;
        uTF8String = [uUIDString UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v16)[2](v16, v36);

      goto LABEL_82;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v22 = ServiceMap;
    if (v23 < 0)
    {
      v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v23 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    std::mutex::lock(ServiceMap);
    *v70 = v23;
    v27 = sub_100009510(&v22[1].__m_.__sig, v70);
    v67 = enabledCopy;
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v22);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        v30 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = 0;
    }

    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v29)
    {
      objc_msgSend_getLogContext(self);
      v39 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v16)[2](v16, v40);
      goto LABEL_80;
    }

    if (CFStringCompare(capabilityCopy, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(capabilityCopy, kCTCapabilityTurnOffCellular, 0))
      {
        v37 = [(CTXPCClientHandler *)self serviceFromCFName:capabilityCopy];
        v38 = v37;
        if ((*&v37 & 0x100000000) != 0)
        {
          if (v37.var0.var1 == 1)
          {
            v52 = sub_1000B1374();
            if (infoCopy)
            {
              if (v52)
              {
                v53 = v30;
                (**v29)(buf, v29, &__p);
                v54 = *buf;
                v69 = infoCopy;
                CFRetain(infoCopy);
                (*(*v54 + 192))(v54, &v69);
                sub_10001021C(&v69);
                v30 = v53;
                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }
              }
            }
          }

          (**v29)(buf, v29, &__p);
          v55 = *buf;
          v68 = infoCopy;
          if (infoCopy)
          {
            CFRetain(infoCopy);
          }

          (*(*v55 + 32))(v55, v38, v67, &v68);
          sub_10001021C(&v68);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v40 = 0;
          goto LABEL_77;
        }
      }

      else
      {
        v51 = sub_100018A64([v18 slotID]);
        if (v51)
        {
          *buf = 0;
          *&buf[8] = 0;
          objc_msgSend_registry(self);
          sub_1015DB584(buf, *v70);
          if (v71)
          {
            sub_100004A34(v71);
          }

          if (*buf)
          {
            (*(**buf + 192))(*buf, v51, enabledCopy);
            v40 = 0;
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v65 = v71;
            ctu::OsLogContext::~OsLogContext(v70);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *v70 = 0;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for Set kCTCapabilityTurnOffCellular", v70, 2u);
            }

            v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_77;
        }

        objc_msgSend_getLogContext(self);
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_77:
      objc_msgSend_getLogContext(self);
      v59 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = asStringBool(v67);
        *buf = 138412802;
        *&buf[4] = capabilityCopy;
        *&buf[12] = 2080;
        *&buf[14] = v60;
        v76 = 2112;
        v77 = infoCopy;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%@ Set = %s with [%@]", buf, 0x20u);
      }

      (v16)[2](v16, v40);
LABEL_80:

      if ((v30 & 1) == 0)
      {
        sub_100004A34(v28);
      }

LABEL_82:
      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_84;
    }

    v66 = v30;
    objc_msgSend_registry(self);
    v41 = Registry::getServiceMap(*buf);
    v42 = v41;
    if (v43 < 0)
    {
      v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
      v45 = 5381;
      do
      {
        v43 = v45;
        v46 = *v44++;
        v45 = (33 * v45) ^ v46;
      }

      while (v46);
    }

    std::mutex::lock(v41);
    *v70 = v43;
    v47 = sub_100009510(&v42[1].__m_.__sig, v70);
    if (v47)
    {
      v49 = v47[3];
      v48 = v47[4];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v42);
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v48);
        v50 = 0;
        goto LABEL_63;
      }
    }

    else
    {
      v49 = 0;
    }

    std::mutex::unlock(v42);
    v48 = 0;
    v50 = 1;
LABEL_63:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v49)
    {
      if ([v18 slotID])
      {
        v56 = sub_100018A64([v18 slotID]);
        (*(*v49 + 48))(v49, enabledCopy, v56);
        v40 = 0;
LABEL_74:
        if ((v50 & 1) == 0)
        {
          sub_100004A34(v48);
        }

        v30 = v66;
        goto LABEL_77;
      }

      v57 = 2;
    }

    else
    {
      v57 = 35;
    }

    v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v57 userInfo:0];
    goto LABEL_74;
  }

  objc_msgSend_getLogContext(self);
  v33 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v16)[2](v16, v34);

  v18 = 0;
LABEL_84:
}

- (void)context:(id)context getSystemCapabilities:(id)capabilities
{
  contextCopy = context;
  capabilitiesCopy = capabilities;
  v8 = capabilitiesCopy;
  if (!contextCopy || !capabilitiesCopy)
  {
    objc_msgSend_getLogContext(self);
    v22 = v31;
    ctu::OsLogContext::~OsLogContext(&v30);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "not enough arguments", &v30, 2u);
      if (!v8)
      {
        goto LABEL_30;
      }
    }

    else if (!v8)
    {
      goto LABEL_30;
    }

    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v23);

    goto LABEL_30;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v10 = [dataProviderDelegate resolveContext:contextCopy];

  if (v10)
  {
    v11 = sub_100018A64([v10 slotID]);
    if (!v11)
    {
      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v8)[2](v8, 0, v26);

LABEL_29:
      contextCopy = v10;
      goto LABEL_30;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v30);
    v13 = ServiceMap;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    v32 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v32);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
LABEL_20:
        if (v31)
        {
          sub_100004A34(v31);
        }

        if (v20)
        {
          v27 = objc_retainBlock(v8);
          v33[0] = off_101F54610;
          v33[1] = v27;
          v33[3] = v33;
          (*(*v20 + 56))(v20, v11, v33);
          sub_101482B68(v33);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v28 = v31;
          ctu::OsLogContext::~OsLogContext(&v30);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v30) = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v30, 2u);
          }

          v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (v8)[2](v8, 0, v29);
        }

        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    goto LABEL_20;
  }

  objc_msgSend_getLogContext(self);
  v24 = v31;
  ctu::OsLogContext::~OsLogContext(&v30);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v30) = 0;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no valid context found", &v30, 2u);
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v8)[2](v8, 0, v25);

  contextCopy = 0;
LABEL_30:
}

- (void)getSupports5G:(id)g completion:(id)completion
{
  gCopy = g;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!gCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_29;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([gCopy slotID]);
          objc_msgSend_registry(self);
          isValidSimSlot = subscriber::isValidSimSlot();
          if (v26)
          {
            sub_100004A34(v26);
          }

          if (isValidSimSlot)
          {
            v22 = [NSNumber numberWithBool:(*(*v16 + 24))(v16, v20)];
            (completionCopy)[2](completionCopy, v22, 0);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v24 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid slot passed when getting supports 5G", &v25, 2u);
            }

            v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            completionCopy[2](completionCopy, 0, v22);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CapabilitiesHandler for getting 5G support", &v25, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting 5G support query", &v25, 2u);
  }

LABEL_29:
}

- (void)context:(id)context recheckPhoneServicesAccountStatus:(id)status completion:(id)completion
{
  contextCopy = context;
  statusCopy = status;
  completionCopy = completion;
  v11 = completionCopy;
  if (!contextCopy || !statusCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if (!v11)
    {
LABEL_11:
      v13 = contextCopy;
      goto LABEL_22;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_11;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [dataProviderDelegate resolveContext:contextCopy];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    objc_msgSend_registry(self);
    uuid = [v13 uuid];
    sub_100047544(uuid, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    objc_msgSend_getLogContext(self);
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [v13 uuid];
      uUIDString = [uuid2 UUIDString];
      v23 = uUIDString;
      uTF8String = [uUIDString UTF8String];
      buf = 136315138;
      *buf_4 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_22:
}

- (void)getPhoneServicesDeviceList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v13)
        {
          selfCopy = self;
          v17 = objc_retainBlock(listCopy);
          v23[0] = off_101F546A0;
          v23[1] = selfCopy;
          v23[2] = v17;
          v23[3] = v23;
          (*(*v13 + 72))(v13, v23);
          sub_10024725C(v23);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (*(listCopy + 2))(listCopy, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &v20, 2u);
  }

LABEL_21:
}

- (void)getPhoneServicesDeviceInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v13)
        {
          selfCopy = self;
          v17 = objc_retainBlock(infoCopy);
          v23[0] = off_101F54720;
          v23[1] = selfCopy;
          v23[2] = v17;
          v23[3] = v23;
          (*(*v13 + 64))(v13, v23);
          sub_10024725C(v23);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (*(infoCopy + 2))(infoCopy, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  objc_msgSend_getLogContext(self);
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &v20, 2u);
  }

LABEL_21:
}

- (void)context:(id)context addPhoneServicesDevice:(id)device withCompletion:(id)completion
{
  contextCopy = context;
  deviceCopy = device;
  completionCopy = completion;
  v11 = completionCopy;
  if (!contextCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
LABEL_10:
      v13 = contextCopy;
      goto LABEL_18;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_10;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [dataProviderDelegate resolveContext:contextCopy];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    objc_msgSend_registry(self);
    uuid = [v13 uuid];
    sub_100047544(uuid, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    objc_msgSend_getLogContext(self);
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [v13 uuid];
      uUIDString = [uuid2 UUIDString];
      v23 = uUIDString;
      uTF8String = [uUIDString UTF8String];
      buf = 136315138;
      *buf_4 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_18:
}

- (void)context:(id)context removePhoneServicesDevice:(id)device withCompletion:(id)completion
{
  contextCopy = context;
  deviceCopy = device;
  completionCopy = completion;
  v11 = completionCopy;
  if (!contextCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
LABEL_10:
      v13 = contextCopy;
      goto LABEL_18;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_10;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [dataProviderDelegate resolveContext:contextCopy];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    objc_msgSend_registry(self);
    uuid = [v13 uuid];
    sub_100047544(uuid, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    objc_msgSend_getLogContext(self);
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [v13 uuid];
      uUIDString = [uuid2 UUIDString];
      v23 = uUIDString;
      uTF8String = [uUIDString UTF8String];
      buf = 136315138;
      *buf_4 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    objc_msgSend_getLogContext(self);
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_18:
}

- (void)wifiCallingCTFollowUpComplete:(id)complete withCompletion:(id)completion
{
  completeCopy = complete;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [completeCopy objectForKey:@"SlotID"];
    if (!v8)
    {
      objc_msgSend_getLogContext(self);
      v20 = v27;
      ctu::OsLogContext::~OsLogContext(&v26);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "FollowUp do not specify target slot", &v26, 2u);
      }

      v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v21);

      goto LABEL_31;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v26);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &buf);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_16:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v17)
        {
          v26 = 0;
          v27 = 0;
          (*(*v17 + 8))(&v26, v17, [v8 intValue]);
          if (v26)
          {
            (*(*v26 + 88))(v26, completeCopy);
            completionCopy[2](completionCopy, 0);
          }

          else
          {
            objc_msgSend_getLogContext(self);
            v24 = *(&buf + 1);
            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No PhoneServices instance for target %@", &buf, 0xCu);
            }

            v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            completionCopy[2](completionCopy, v25);
          }

          if (v27)
          {
            sub_100004A34(v27);
          }
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v26, 2u);
          }

          v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          completionCopy[2](completionCopy, v23);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_16;
  }

  objc_msgSend_getLogContext(self);
  v19 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no completion provided", &v26, 2u);
  }

LABEL_32:
}

- (void)context:(id)context mandatoryDisableVoLTE:(BOOL)e withCompletion:(id)completion
{
  eCopy = e;
  contextCopy = context;
  completionCopy = completion;
  v10 = completionCopy;
  if (!contextCopy || !completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v14 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "not enough arguments", &v18, 2u);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else if (!v10)
    {
      goto LABEL_18;
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v10)[2](v10, v15);
LABEL_17:

    goto LABEL_18;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v12 = [dataProviderDelegate resolveContext:contextCopy];

  if (!v12)
  {
    objc_msgSend_getLogContext(self);
    v16 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "no valid context found", &v18, 2u);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v10)[2](v10, v15);
    contextCopy = 0;
    goto LABEL_17;
  }

  v13 = sub_100018A64([v12 slotID]);
  if (!v13)
  {
    objc_msgSend_getLogContext(self);
    v17 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no slot in context", &v18, 2u);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v10)[2](v10, v15);
    contextCopy = v12;
    goto LABEL_17;
  }

  objc_msgSend_registry(self);
  mandatoryDisableVoLTE(&v18, v13, eCopy);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v10[2](v10, 0);
  contextCopy = v12;
LABEL_18:
}

- (void)context:(id)context isMandatoryDisabledVoLTE:(id)e
{
  contextCopy = context;
  eCopy = e;
  v8 = eCopy;
  if (!contextCopy || !eCopy)
  {
    objc_msgSend_getLogContext(self);
    v13 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "not enough arguments", v17, 2u);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else if (!v8)
    {
      goto LABEL_16;
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v14);
LABEL_15:

    goto LABEL_16;
  }

  dataProviderDelegate = [(CTXPCClientHandler *)self dataProviderDelegate];
  v10 = [dataProviderDelegate resolveContext:contextCopy];

  if (!v10)
  {
    objc_msgSend_getLogContext(self);
    v15 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "no valid context found", v17, 2u);
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v14);
    contextCopy = 0;
    goto LABEL_15;
  }

  v11 = sub_100018A64([v10 slotID]);
  if (!v11)
  {
    objc_msgSend_getLogContext(self);
    v16 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "no slot in context", v17, 2u);
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v8)[2](v8, 0, v14);
    contextCopy = v10;
    goto LABEL_15;
  }

  v12 = isMandatoryDisabledVoLTE(v11);
  v8[2](v8, v12, 0);
  contextCopy = v10;
LABEL_16:
}

- (void)refreshCellMonitor:(id)monitor completion:(id)completion
{
  monitorCopy = monitor;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell monitor refresh", &v23, 2u);
    }

    goto LABEL_21;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_11:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    if (monitorCopy)
    {
      v19 = sub_100018A64([monitorCopy slotID]);
    }

    else
    {
      v19 = 3;
    }

    v22 = objc_retainBlock(completionCopy);
    v26[0] = off_101F58480;
    v26[1] = v22;
    v26[3] = v26;
    (*(*v16 + 24))(v16, v19, v26);
    sub_100014380(v26);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_100004A34(v15);
    goto LABEL_21;
  }

  objc_msgSend_getLogContext(self);
  v20 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for cell monitor refresh", &v23, 2u);
  }

  v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(completionCopy + 2))(completionCopy, v21);

  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
}

- (void)copyCellInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!infoCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([infoCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F58500;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 48))(v16, v20, v27);
          sub_10002AA0C(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting cell info", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell info query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyCellId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!idCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([idCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F58580;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 64))(v16, v20, v27);
          sub_100E902CC(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting cell ID", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell ID query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyPublicCellId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!idCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_10002A8E0(idCopy);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F58610;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 96))(v16, v20, v27);
          sub_100E9034C(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting public cell ID", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for public cell ID query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyLocationAreaCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!codeCopy)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_23;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([codeCopy slotID]);
          v21 = objc_retainBlock(completionCopy);
          v27[0] = off_101F586A0;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 56))(v16, v20, v27);
          sub_100E902CC(v27);
        }

        else
        {
          objc_msgSend_getLogContext(self);
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting location area code", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          completionCopy[2](completionCopy, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for location area code query", &v24, 2u);
  }

LABEL_23:
}

- (void)getSweetgumCapabilities:(id)capabilities completion:(id)completion
{
  capabilitiesCopy = capabilities;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!capabilitiesCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D6F0;
          v26 = v20;
          v27 = buf;
          sub_100D1A888(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum capabilities query", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumUserConsentInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!infoCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D770;
          v26 = v20;
          v27 = buf;
          sub_100D1AD6C(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum user consent query", buf, 2u);
  }

LABEL_20:
}

- (void)setSweetgumUserConsent:(id)consent userConsent:(BOOL)userConsent completion:(id)completion
{
  userConsentCopy = userConsent;
  consentCopy = consent;
  completionCopy = completion;
  if (!completionCopy)
  {
    objc_msgSend_getLogContext(self);
    v20 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler when setting Sweetgum user consent", &v23, 2u);
    }

    goto LABEL_19;
  }

  if (!consentCopy)
  {
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    completionCopy[2](completionCopy, v21);

    goto LABEL_19;
  }

  objc_msgSend_registry(self);
  ServiceMap = Registry::getServiceMap(v23);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v25 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v25);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_13:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_14:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (!v18)
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    completionCopy[2](completionCopy, v22);

    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (*(*v18 + 32))(v18, userConsentCopy);
  completionCopy[2](completionCopy, 0);
  if ((v19 & 1) == 0)
  {
LABEL_18:
    sub_100004A34(v17);
  }

LABEL_19:
}

- (void)getSweetgumUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!usageCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D7F0;
          v26 = v20;
          v27 = buf;
          sub_100D1B250(v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum usage query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!usageCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D870;
          v26 = v20;
          v27 = buf;
          sub_100D1C0FC(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum usage", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumPlans:(id)plans completion:(id)completion
{
  plansCopy = plans;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!plansCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D8F0;
          v26 = v20;
          v27 = buf;
          sub_100D1B734(v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum plans query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumPlans:(id)plans completion:(id)completion
{
  plansCopy = plans;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!plansCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D970;
          v26 = v20;
          v27 = buf;
          sub_100D1C0FC(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum plans", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!appsCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5D9F0;
          v26 = v20;
          v27 = buf;
          sub_100D1BC18(v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum apps query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!appsCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5DA70;
          v26 = v20;
          v27 = buf;
          sub_100D1C0FC(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum apps", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumAll:(id)all completion:(id)completion
{
  allCopy = all;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!allCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5DAF0;
          v26 = v20;
          v27 = buf;
          sub_100D1C0FC(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh all Sweetgum info", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumDataPlanMetrics:(id)metrics completion:(id)completion
{
  metricsCopy = metrics;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!metricsCopy)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, v19);

      goto LABEL_20;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v23 = 0;
          objc_msgSend_getQueue(self);
          v20 = objc_retainBlock(completionCopy);
          object = v22;
          *buf = off_101F5DB70;
          v26 = v20;
          v27 = buf;
          sub_100D1C8D4(&v23, &object, buf);
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum data plan metrics query", buf, 2u);
  }

LABEL_20:
}

- (void)purchaseSweetgumPlan:(id)plan completion:(id)completion
{
  planCopy = plan;
  completionCopy = completion;
  if (completionCopy)
  {
    planId = [planCopy planId];

    if (!planId)
    {
      v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      completionCopy[2](completionCopy, v20);

      goto LABEL_25;
    }

    objc_msgSend_registry(self);
    ServiceMap = Registry::getServiceMap(*buf);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v39[0] = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, v39);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v17)
        {
          v37 = 0;
          memset(v36, 0, sizeof(v36));
          *buf = 0u;
          memset(v35, 0, sizeof(v35));
          planId2 = [planCopy planId];
          v22 = planId2;
          sub_100016890(v35, [planId2 UTF8String]);

          planLabel = [planCopy planLabel];
          LOBYTE(planId2) = planLabel == 0;

          if ((planId2 & 1) == 0)
          {
            planLabel2 = [planCopy planLabel];
            v25 = planLabel2;
            sub_100016890(&v35[1], [planLabel2 UTF8String]);
          }

          planTermsURL = [planCopy planTermsURL];
          if (planTermsURL)
          {
            planTermsURL2 = [planCopy planTermsURL];
            v28 = [planTermsURL2 length] == 0;

            if (!v28)
            {
              planTermsURL3 = [planCopy planTermsURL];
              v30 = planTermsURL3;
              v39[0] = [planTermsURL3 UTF8String];
              sub_100184AD0(v36, v39);
            }
          }

          objc_msgSend_getQueue(self);
          v31 = objc_retainBlock(completionCopy);
          v38 = object;
          v39[0] = off_101F5DBF0;
          v39[1] = v31;
          v39[3] = v39;
          sub_100D1C0FC(buf, &v38, v39);
        }

        v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        completionCopy[2](completionCopy, v32);

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  objc_msgSend_getLogContext(self);
  v19 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for purchase Sweetgum plan", buf, 2u);
  }

LABEL_25:
}

@end