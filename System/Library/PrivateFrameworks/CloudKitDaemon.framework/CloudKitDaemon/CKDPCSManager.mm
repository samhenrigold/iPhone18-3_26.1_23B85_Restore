@interface CKDPCSManager
+ (id)_legacyServiceNameForContainerID:(id)d;
+ (id)allProtectionIdentifiersFromShareProtection:(_OpaquePCSShareProtection *)protection;
+ (id)etagFromPCSData:(id)data;
+ (id)noMatchingIdentityErrorForPCSError:(id)error withErrorCode:(int64_t)code description:(id)description;
+ (id)pcsOverrideKeys;
+ (id)protectionIdentifierFromShareProtection:(_OpaquePCSShareProtection *)protection;
+ (id)publicKeyIDFromIdentity:(_OpaquePCSShareProtection *)identity;
- (BOOL)_addPublicIdentityForService:(unint64_t)service toSharePCS:(_OpaquePCSShareProtection *)s withError:(id *)error;
- (BOOL)_checkAndClearPCSTestOverrideForKey:(id)key;
- (BOOL)_checkPCSTestOverrideForKey:(id)key;
- (BOOL)_checkUnitTestOverridesForDecryptionFailuresWithState:(BOOL)state error:(id *)error;
- (BOOL)_isKeyRollingUnitTestContainerID:(id)d;
- (BOOL)addParentZonePCS:(_OpaquePCSShareProtection *)s toChildZonePCS:(_OpaquePCSShareProtection *)cS error:(id *)error;
- (BOOL)addRandomShareeToPCS:(_OpaquePCSShareProtection *)s;
- (BOOL)addSharePCS:(_OpaquePCSShareProtection *)s toRecordPCS:(_OpaquePCSShareProtection *)cS permission:(unint64_t)permission error:(id *)error;
- (BOOL)availableIdentityForService:(unint64_t)service error:(id *)error;
- (BOOL)canRollShareKeys;
- (BOOL)containerSupportsEnhancedContext;
- (BOOL)currentServiceIsManatee;
- (BOOL)decryptSharedZonePCSData:(id)data withInvitedPCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (BOOL)isPCSSizeTooBigForKeyRoll:(unint64_t)roll;
- (BOOL)isPCSTooBigForKeyRoll:(_OpaquePCSShareProtection *)roll;
- (BOOL)isPreviouslyUndecryptablePCS:(id)s;
- (BOOL)isSinglyWrappedRemindersZone:(_OpaquePCSShareProtection *)zone;
- (BOOL)needsUserKeySyncToPopulateCurrentIdentityForServiceType:(unint64_t)type;
- (BOOL)recordProtectionDataNeedsCounterSign:(id)sign error:(id *)error;
- (BOOL)removeParentZonePCSFromChildZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (BOOL)removePublicKeys:(id)keys fromPCS:(_OpaquePCSShareProtection *)s;
- (BOOL)removeSharePCS:(_OpaquePCSShareProtection *)s fromRecordPCS:(_OpaquePCSShareProtection *)cS error:(id *)error;
- (BOOL)serviceTypeIsManatee:(unint64_t)manatee;
- (BOOL)sharingFingerprintsContainPublicKeyWithData:(id)data error:(id *)error;
- (BOOL)updateSigningIdentityOnPCS:(_OpaquePCSShareProtection *)s usingSignedPCS:(_OpaquePCSShareProtection *)cS;
- (BOOL)validateFullPublicKeySignature:(id)signature forSignedData:(id)data error:(id *)error;
- (BOOL)validateSignature:(id)signature forSignedData:(id)data usingIdentityType:(unint64_t)type error:(id *)error;
- (BOOL)zonePCSNeedsKeyRolled:(_OpaquePCSShareProtection *)rolled isZoneishZone:(BOOL)zone bypassAllowlistedContainers:(BOOL)containers;
- (BOOL)zonePCSNeedsUpdate:(_OpaquePCSShareProtection *)update;
- (CKDContainerScopedUserIDProvider)containerScopedUserIDProvider;
- (CKDPCSKeySyncNotifierProtocol)userKeySyncNotifier;
- (CKDPCSManager)initWithContainer:(id)container account:(id)account;
- (NSDate)lastMissingManateeIdentityErrorDateForCurrentService;
- (NSString)pcsServiceName;
- (_OpaquePCSShareProtection)createChainPCSWithError:(id *)error;
- (_OpaquePCSShareProtection)createEmptySharePCSOfType:(unint64_t)type error:(id *)error;
- (_OpaquePCSShareProtection)createEmptySignedSharePCSOfType:(unint64_t)type forPCSServiceType:(unint64_t)serviceType withError:(id *)error;
- (_OpaquePCSShareProtection)createPCSObjectFromData:(id)data ofType:(unint64_t)type sharedToPCS:(_OpaquePCSShareProtection *)s logFailure:(BOOL)failure trusts:(id)trusts error:(id *)error;
- (_OpaquePCSShareProtection)createRecordPCSWithEncryptedZonePCS:(__CFData *)s sharePCS:(_OpaquePCSShareProtection *)cS createLite:(BOOL)lite error:(id *)error;
- (_OpaquePCSShareProtection)createRecordPCSWithZonePCS:(_OpaquePCSShareProtection *)s sharePCS:(_OpaquePCSShareProtection *)cS createLite:(BOOL)lite error:(id *)error;
- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data ofType:(unint64_t)type withService:(unint64_t)service logFailure:(BOOL)failure error:(id *)error;
- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data sharePrivateKey:(id)key error:(id *)error;
- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data sharingIdentity:(_PCSIdentityData *)identity logFailure:(BOOL)failure error:(id *)error;
- (_OpaquePCSShareProtection)createSharePCSFromEncryptedData:(id)data error:(id *)error;
- (_OpaquePCSShareProtection)createSharePCSOfType:(unint64_t)type forPCSServiceType:(unint64_t)serviceType error:(id *)error;
- (_OpaquePCSShareProtection)createSharePublicPCSWithIdentity:(_PCSIdentityData *)identity error:(id *)error;
- (_PCSIdentityData)createCombinedIdentityWithOutOfNetworkPrivateKey:(id)key publicSharingIdentity:(id)identity;
- (_PCSIdentityData)createRandomSharingIdentityWithError:(id *)error;
- (_PCSIdentityData)createSharingIdentityFromData:(id)data error:(id *)error;
- (_PCSIdentityData)debugSharingIdentity;
- (_PCSPublicIdentityData)copyDiversifiedPublicIdentityForService:(unint64_t)service withError:(id *)error;
- (_PCSPublicIdentityData)copyPublicAuthorshipIdentityFromPCS:(_OpaquePCSShareProtection *)s;
- (_PCSPublicIdentityData)createPublicSharingIdentityFromPublicKey:(id)key error:(id *)error;
- (id)_addIdentity:(_PCSIdentitySetData *)identity withService:(unint64_t)service toPCS:(_OpaquePCSShareProtection *)s;
- (id)_pcsObjectKindForCKDPCSBlobType:(unint64_t)type;
- (id)_pcsTestOverrideForKey:(id)key;
- (id)_unwrapEncryptedData:(id)data usingKeyID:(id)d forPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string;
- (id)addIdentityBackToPCS:(_OpaquePCSShareProtection *)s;
- (id)addIdentityForService:(unint64_t)service toPCS:(_OpaquePCSShareProtection *)s;
- (id)addPublicIdentity:(_PCSPublicIdentityData *)identity toSharePCS:(_OpaquePCSShareProtection *)s permission:(unsigned int)permission;
- (id)addSharingIdentity:(_PCSIdentityData *)identity toSharePCS:(_OpaquePCSShareProtection *)s permission:(unint64_t)permission;
- (id)copyAllPublicKeysForService:(unint64_t)service withError:(id *)error;
- (id)copyDiversifiedPublicKeyForService:(unint64_t)service withError:(id *)error;
- (id)copyPublicKeyForService:(unint64_t)service withError:(id *)error;
- (id)counterSignRecordPCS:(_OpaquePCSShareProtection *)s zonePCS:(_OpaquePCSShareProtection *)cS;
- (id)createCloudKitFeaturesSignatureForData:(id)data forScope:(unint64_t)scope error:(id *)error;
- (id)createNewSharePCSDataForShareWithID:(id)d withPublicSharingKey:(id)key addDebugIdentity:(BOOL)identity error:(id *)error;
- (id)createProtectionInfoFromOONPrivateKey:(id)key privateToken:(id)token OONProtectionInfo:(id)info error:(id *)error;
- (id)createSignatureWithIdentity:(_PCSIdentityData *)identity dataToBeSigned:(id)signed forScope:(unint64_t)scope error:(id *)error;
- (id)currentIdentityPublicKeyIDForServiceType:(unint64_t)type error:(id *)error;
- (id)dataFromRecordPCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)dataFromSharePCS:(_OpaquePCSShareProtection *)s pcsBlobType:(unint64_t)type error:(id *)error;
- (id)dataFromSharingIdentity:(_PCSIdentityData *)identity error:(id *)error;
- (id)dataFromZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)decryptChainPCSForRecordPCS:(id)s;
- (id)etagFromSharePCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)etagFromZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)generateAnonymousCKUserIDForCurrentUserInShare:(id)share containerID:(id)d acceptA2AShareUsingVersionOneAnonymousIdentifier:(BOOL)identifier;
- (id)generateOONPrivateKeyWithError:(id *)error;
- (id)generateOctopusAnonymousUserID;
- (id)getAllPublicKeysForExportedData:(id)data error:(id *)error;
- (id)getCurrentIdentityExportedPrivateKey;
- (id)keyRollForZoneWideShareRecordPCS:(id)s sharedZonePCS:(id)cS sharePCS:(id)pCS forOperation:(id)operation;
- (id)keyRollForZoneWideShareWithZonePCS:(id)s sharePCS:(id)cS forOperation:(id)operation;
- (id)keyRollIfNeededForPerRecordPCS:(id)s needsRollAndCounterSign:(BOOL)sign forOperation:(id)operation didRoll:(BOOL *)roll;
- (id)participantPublicKeyForServiceType:(unint64_t)type error:(id *)error;
- (id)publicKeyDataFromPCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)publicKeyFromSignature:(id)signature error:(id *)error;
- (id)referenceIdentifierStringFromAssetKey:(id)key;
- (id)removeEncryptedPCS:(id)s fromSharePCS:(_OpaquePCSShareProtection *)cS;
- (id)removePrivateKeysForKeyIDs:(id)ds fromPCS:(_OpaquePCSShareProtection *)s;
- (id)removePublicIdentity:(_PCSPublicIdentityData *)identity fromSharePCS:(_OpaquePCSShareProtection *)s;
- (id)removePublicKeyID:(id)d fromPCS:(_OpaquePCSShareProtection *)s;
- (id)removeSharingIdentity:(_PCSIdentityData *)identity fromSharePCS:(_OpaquePCSShareProtection *)s;
- (id)replacePrimaryKeyInPCS:(_OpaquePCSShareProtection *)s ofType:(unint64_t)type;
- (id)rollIdentityForSharePCS:(_OpaquePCSShareProtection *)s ofType:(unint64_t)type removeAllExistingPrivateKeys:(BOOL)keys error:(id *)error;
- (id)rollMasterKeyForRecordPCS:(_OpaquePCSShareProtection *)s isZoneishRecord:(BOOL)record bypassAllowlistedContainers:(BOOL)containers forOperation:(id)operation;
- (id)sharingIdentityDataFromPCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (id)unwrapAssetKey:(id)key withRecordPCS:(_OpaquePCSShareProtection *)s inContext:(id)context withError:(id *)error;
- (id)unwrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s inContext:(id)context;
- (id)unwrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string;
- (id)updateIdentityAndRollKeyForZonePCS:(_OpaquePCSShareProtection *)s usingServiceIdentityWithType:(unint64_t)type forOperation:(id)operation;
- (id)updateZoneIdentityForRecordPCS:(_OpaquePCSShareProtection *)s usingZonePCS:(_OpaquePCSShareProtection *)cS isZoneishRecord:(BOOL)record bypassAllowlistedContainers:(BOOL)containers;
- (id)wrapAssetKey:(id)key withRecordPCS:(_OpaquePCSShareProtection *)s inContext:(id)context withError:(id *)error;
- (id)wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s inContext:(id)context;
- (id)wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string;
- (int64_t)keyrollingErrorCodeForPCSOfType:(unint64_t)type;
- (unint64_t)invitedPCSPermissionForParticipant:(id)participant inShare:(id)share error:(id *)error;
- (unint64_t)maxPcsBytes;
- (unint64_t)publicKeyVersionForServiceType:(unint64_t)type;
- (unint64_t)removePCSKeys:(id)keys fromPCS:(_OpaquePCSShareProtection *)s withProtectionEtag:(id)etag forOperation:(id)operation;
- (unint64_t)serviceTypeForSharing;
- (unint64_t)sizeOfPCS:(_OpaquePCSShareProtection *)s;
- (void)_createPCSFromData:(id)data ofType:(unint64_t)type usingPCSServiceType:(unint64_t)serviceType tryDecryptingWithOtherServices:(BOOL)services withSyncKeyRegistryRetry:(BOOL)retry lastModifiedDate:(id)date requestorOperationID:(id)d completionHandler:(id)self0;
- (void)_lockedGlobalPerUserBoundaryKeyDataWithCompletionHandler:(id)handler;
- (void)_locked_createPCSFromData:(id)data ofType:(unint64_t)type usingPCSServiceType:(unint64_t)serviceType tryDecryptingWithOtherServices:(BOOL)services withSyncKeyRegistryRetry:(BOOL)retry lastModifiedDate:(id)date keySyncAnalytics:(id)analytics requestorOperationID:(id)self0 completionHandler:(id)self1;
- (void)_locked_createZonePCSWithSyncKeyRegistryRetry:(BOOL)retry requestorOperationID:(id)d keySyncAnalytics:(id)analytics createV2PCS:(BOOL)s completionHandler:(id)handler;
- (void)_locked_decryptCurrentPerParticipantPCSDataOnSharePCS:(id)s withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler;
- (void)_locked_decryptPCSDataOnSharePCS:(id)s shareModificationDate:(id)date withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey requestorOperationID:(id)d completionHandler:(id)handler;
- (void)_locked_markMissingIdentitiesFromFailedDecryptError:(id)error serviceName:(id)name;
- (void)_locked_pcsDataFromFetchedShare:(id)share withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey withServiceType:(unint64_t)type requestorOperationID:(id)d completionHandler:(id)handler;
- (void)_onSynchronizeQueue:(id)queue;
- (void)addEntriesForUnitTestOverrides:(id)overrides;
- (void)canDecryptInvitedProtectionData:(id)data participantProtectionInfo:(id)info serviceType:(unint64_t)type completionHandler:(id)handler;
- (void)createIngestedPPPCSDataFromInvitationData:(id)data shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler;
- (void)createSharePCSFromData:(id)data ofType:(unint64_t)type withService:(unint64_t)service completionHandler:(id)handler;
- (void)createZonePCSFromData:(id)data usingServiceIdentityWithType:(unint64_t)type zonePCSModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler;
- (void)createZonePCSWithSyncKeyRegistryRetry:(BOOL)retry requestorOperationID:(id)d createV2PCS:(BOOL)s completionHandler:(id)handler;
- (void)dealloc;
- (void)decryptPCSDataOnSharePCS:(id)s shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler;
- (void)findSelfParticipantOnShareMetadata:(id)metadata invitationToken:(id)token completionHandler:(id)handler;
- (void)globalPerUserBoundaryKeyDataWithCompletionHandler:(id)handler;
- (void)markCurrentUserParticipantViaPublicKeyMatchingForShare:(id)share;
- (void)markUndecryptablePCS:(id)s;
- (void)pcsDataFromFetchedShare:(id)share requestorOperationID:(id)d completionHandler:(id)handler;
- (void)pcsDataFromFetchedShare:(id)share withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey withServiceType:(unint64_t)type requestorOperationID:(id)d completionHandler:(id)handler;
- (void)setOwnerIdentity:(_PCSPublicIdentityData *)identity onPCS:(_OpaquePCSShareProtection *)s;
- (void)setPCSServiceNameOverwrite:(id)overwrite;
- (void)synchronizeUserKeyRegistryForServiceType:(unint64_t)type resourceLastModifiedDate:(id)date outdatedPublicKeyID:(id)d shouldThrottle:(BOOL)throttle context:(id)context requestorOperationID:(id)iD completionHandler:(id)handler;
- (void)synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID:(id)d shouldThrottle:(BOOL)throttle completionHandler:(id)handler;
- (void)updateAccount:(id)account clearPCSCacheHandler:(id)handler;
@end

@implementation CKDPCSManager

- (void)dealloc
{
  v4 = objc_msgSend_sharedNotifier(CKDPCSNotifier, a2, v2);
  v7 = objc_msgSend_uuid(self, v5, v6);
  objc_msgSend_clearContextIfUnnecessaryForManagerUUID_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDPCSManager;
  [(CKDPCSManager *)&v9 dealloc];
}

- (BOOL)currentServiceIsManatee
{
  v3 = objc_msgSend_identityManager(self, a2, v2);
  IsManatee = objc_msgSend_currentServiceIsManatee(v3, v4, v5);

  return IsManatee;
}

- (BOOL)containerSupportsEnhancedContext
{
  if ((objc_msgSend_useZoneWidePCS(self, a2, v2) & 1) != 0 || (objc_msgSend_mmcsEncryptionSupport(self, v4, v5) & 2) != 0 || (objc_msgSend_identityManager(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_serviceName(v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), IsManatee = PCSServiceItemTypeIsManatee(), v9, v6, IsManatee))
  {
    v11 = objc_msgSend_containerID(self, v4, v5);
    v14 = objc_msgSend_specialContainerType(v11, v12, v13);

    if (v14 <= 5)
    {
      v15 = 0xBu >> v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

+ (id)_legacyServiceNameForContainerID:(id)d
{
  v3 = objc_msgSend_specialContainerType(d, a2, d) - 1;
  v4 = @"com.apple.SafariShared.CloudTabs";
  switch(v3)
  {
    case 0:
      v5 = MEMORY[0x277D42FE8];
      goto LABEL_18;
    case 1:
      v5 = MEMORY[0x277D43000];
      goto LABEL_18;
    case 2:
      v5 = MEMORY[0x277D42FF8];
      goto LABEL_18;
    case 3:
      v5 = MEMORY[0x277D43008];
      goto LABEL_18;
    case 4:
      v5 = MEMORY[0x277D43040];
      goto LABEL_18;
    case 5:
      v4 = @"com.apple.icloud.events";
      goto LABEL_19;
    case 8:
      v5 = MEMORY[0x277D43090];
      goto LABEL_18;
    case 12:
      v5 = MEMORY[0x277D43048];
      goto LABEL_18;
    case 15:
      v5 = MEMORY[0x277D43070];
      goto LABEL_18;
    case 19:
      v5 = MEMORY[0x277D43060];
      goto LABEL_18;
    case 20:
      v5 = MEMORY[0x277D43068];
      goto LABEL_18;
    case 25:
      v5 = MEMORY[0x277D43078];
      goto LABEL_18;
    case 27:
      goto LABEL_19;
    case 29:
      v5 = MEMORY[0x277D42FF0];
      goto LABEL_18;
    case 31:
      v5 = MEMORY[0x277D43038];
      goto LABEL_18;
    case 32:
      v5 = MEMORY[0x277D43088];
      goto LABEL_18;
    default:
      v5 = MEMORY[0x277D43050];
LABEL_18:
      v4 = *v5;
LABEL_19:

      return v4;
  }
}

- (unint64_t)serviceTypeForSharing
{
  v4 = objc_msgSend_containerID(self, a2, v2);
  v7 = objc_msgSend_specialContainerType(v4, v5, v6);

  if (v7 == 4)
  {
    return 1;
  }

  if (objc_msgSend_currentServiceIsManatee(self, v8, v9))
  {
    return 0;
  }

  return 2;
}

- (void)updateAccount:(id)account clearPCSCacheHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225292E54;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = accountCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountCopy;
  dispatch_async(v10, block);
}

- (CKDPCSManager)initWithContainer:(id)container account:(id)account
{
  v138 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accountCopy = account;
  v131.receiver = self;
  v131.super_class = CKDPCSManager;
  v11 = [(CKDPCSManager *)&v131 init];
  if (v11)
  {
    v128 = a2;
    v12 = objc_msgSend_containerID(containerCopy, v9, v10);
    v15 = objc_msgSend_containerIdentifier(v12, v13, v14);

    v129 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s.%@.%p", "com.apple.cloudkit.pcsmanager.queue", v15, containerCopy);
    v19 = objc_msgSend_UTF8String(v129, v17, v18);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(v19, v20);
    v22 = *(v11 + 14);
    *(v11 + 14) = v21;

    dispatch_queue_set_specific(*(v11 + 14), "com.apple.cloudkit.pcsmanager.queue", 1, 0);
    v130 = v15;
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%@.%@", @"com.apple.CloudKit.CKDPCSManager.callbackQueue", v15);
    v25 = v24;
    v28 = objc_msgSend_UTF8String(v25, v26, v27);
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create(v28, v29);
    v31 = *(v11 + 15);
    *(v11 + 15) = v30;

    v34 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v32, v33);
    v35 = *(v11 + 7);
    *(v11 + 7) = v34;

    objc_storeStrong(v11 + 4, account);
    objc_storeWeak(v11 + 9, containerCopy);
    v38 = objc_msgSend_containerID(containerCopy, v36, v37);
    v39 = *(v11 + 10);
    *(v11 + 10) = v38;

    v42 = objc_msgSend_deviceContext(containerCopy, v40, v41);
    objc_storeStrong(v11 + 2, v42);
    v45 = objc_msgSend_applicationID(containerCopy, v43, v44);
    v48 = objc_msgSend_applicationBundleIdentifier(v45, v46, v47);
    v49 = *(v11 + 11);
    *(v11 + 11) = v48;

    v52 = objc_msgSend_options(containerCopy, v50, v51);
    *(v11 + 8) = objc_msgSend_forceEnableReadOnlyManatee(v52, v53, v54);

    v57 = objc_msgSend_options(containerCopy, v55, v56);
    *(v11 + 12) = objc_msgSend_mmcsEncryptionSupport(v57, v58, v59);

    v62 = objc_msgSend_options(containerCopy, v60, v61);
    *(v11 + 9) = objc_msgSend_useZoneWidePCS(v62, v63, v64);

    v67 = objc_msgSend_encryptionServiceName(containerCopy, v65, v66);
    v68 = v67;
    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v70 = objc_opt_class();
      v73 = objc_msgSend_containerID(containerCopy, v71, v72);
      v69 = objc_msgSend__legacyServiceNameForContainerID_(v70, v74, v73);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v75 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      if (v68)
      {
        v120 = @"client specified";
      }

      else
      {
        v120 = @"containerIdentifier default";
      }

      v121 = *(v11 + 10);
      v122 = v75;
      v125 = objc_msgSend_ckShortDescription(v121, v123, v124);
      *buf = 138543874;
      v133 = v120;
      v134 = 2114;
      v135 = v69;
      v136 = 2114;
      v137 = v125;
      _os_log_debug_impl(&dword_22506F000, v122, OS_LOG_TYPE_DEBUG, "Using %{public}@ PCS Service Name %{public}@ with containerID %{public}@", buf, 0x20u);
    }

    v80 = objc_msgSend_accountID(*(v11 + 4), v76, v77);
    if (v80)
    {
      v81 = objc_msgSend_accountID(*(v11 + 4), v78, v79);
      v83 = objc_msgSend_isEqualToString_(v81, v82, *MEMORY[0x277CBC8A0]) ^ 1;
    }

    else
    {
      v83 = 0;
    }

    if (PCSServiceItemTypeIsManatee() && v83)
    {
      v86 = objc_msgSend_accountDataSecurityObserver(v42, v84, v85);
      objc_msgSend_manateeStatusForAccount_isSecondaryAccount_allowFetch_completionHandler_(v86, v87, accountCopy, 0, 1, 0);
    }

    if (v83)
    {
      v88 = objc_msgSend_accountDataSecurityObserver(v42, v84, v85);
      objc_msgSend_walrusStatusForAccount_isSecondaryAccount_checkCache_allowFetch_completionHandler_(v88, v89, accountCopy, 0, 1, 1, 0);
    }

    v90 = [CKDPCSIdentityManager alloc];
    v91 = *(v11 + 2);
    v94 = objc_msgSend_options(containerCopy, v92, v93);
    OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v94, v95, v96);
    v100 = objc_msgSend_clientSDKVersion(containerCopy, v98, v99);
    OnlyManatee_clientSDKVersion = objc_msgSend_initWithAccount_deviceContext_serviceName_forceEnableReadOnlyManatee_clientSDKVersion_(v90, v101, accountCopy, v91, v69, OnlyManatee, v100);
    v103 = *(v11 + 3);
    *(v11 + 3) = OnlyManatee_clientSDKVersion;

    v104 = objc_opt_new();
    v105 = *(v11 + 5);
    *(v11 + 5) = v104;

    if ((objc_msgSend_conformsToProtocol_(containerCopy, v106, &unk_2838DEFC8) & 1) == 0)
    {
      v126 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v107, v108);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v126, v127, v128, v11, @"CKDPCSManager.m", 285, @"CKDContainer swift implementation of CKDPCSKeySyncNotifierProtocol has gone missing!");
    }

    objc_storeWeak(v11 + 13, containerCopy);
    v109 = [CKDPCSManagerMissingIdentitiesContext alloc];
    v111 = objc_msgSend_initWithContainer_(v109, v110, containerCopy);
    v114 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v112, v113);
    v117 = objc_msgSend_uuid(v11, v115, v116);
    objc_msgSend_addContext_forManagerUUID_(v114, v118, v111, v117);
  }

  return v11;
}

- (id)_pcsObjectKindForCKDPCSBlobType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    v3 = MEMORY[0x277D42F68];
  }

  else
  {
    v3 = qword_27854C520[type - 1];
  }

  return *v3;
}

- (_PCSIdentityData)debugSharingIdentity
{
  v3 = objc_msgSend_identityManager(self, a2, v2);
  v6 = objc_msgSend_debugSharingIdentity(v3, v4, v5);

  return v6;
}

- (NSDate)lastMissingManateeIdentityErrorDateForCurrentService
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_225074150;
  v9 = sub_225073634;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22529373C;
  v4[3] = &unk_278546448;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend__onSynchronizeQueue_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unint64_t)publicKeyVersionForServiceType:(unint64_t)type
{
  if (type - 1 >= 2)
  {
    if (!type)
    {
      v3 = objc_msgSend_identityManager(self, a2, type);
      v6 = objc_msgSend_serviceName(v3, v4, v5);
      NumberByName = PCSServiceItemGetNumberByName();
      v10 = objc_msgSend_unsignedIntegerValue(NumberByName, v8, v9);

      return v10;
    }

    return 0;
  }

  return type;
}

- (NSString)pcsServiceName
{
  v3 = objc_msgSend_identityManager(self, a2, v2);
  v5 = objc_msgSend_PCSServiceStringFromCKServiceType_(v3, v4, 0);

  return v5;
}

- (void)setPCSServiceNameOverwrite:(id)overwrite
{
  overwriteCopy = overwrite;
  v8 = objc_msgSend_identityManager(self, v5, v6);
  objc_msgSend_setPCSServiceNameOverwrite_(v8, v7, overwriteCopy);
}

+ (id)noMatchingIdentityErrorForPCSError:(id)error withErrorCode:(int64_t)code description:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  if (errorCopy && objc_msgSend_code(errorCopy, v8, v9) == 73)
  {
    v13 = objc_msgSend_userInfo(errorCopy, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x277D42F40]);
    v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, *MEMORY[0x277D42F38]);
    v19 = objc_msgSend_componentsJoinedByString_(v15, v18, @", ");
    v21 = objc_msgSend_componentsJoinedByString_(v17, v20, @", ");
    v22 = v19;
    v26 = v22;
    if (objc_msgSend_count(v15, v23, v24) >= 0xB)
    {
      v27 = objc_msgSend_subarrayWithRange_(v15, v25, 0, 10);
      objc_msgSend_componentsJoinedByString_(v27, v28, @", ");
      v29 = v37 = v17;
      v30 = MEMORY[0x277CCACA8];
      v33 = objc_msgSend_count(v15, v31, v32);
      v26 = objc_msgSend_stringWithFormat_(v30, v34, @"%@ ... (and %lu more)", v29, v33 - 10);

      v17 = v37;
    }

    v35 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], code, errorCopy, @"%@. Public keys on object: %@. Attempted public keys: %@", descriptionCopy, v21, v26);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)copyPublicKeyForService:(unint64_t)service withError:(id *)error
{
  v6 = objc_msgSend_identityManager(self, a2, service);
  v8 = objc_msgSend_copyPublicKeyForService_withError_(v6, v7, service, error);

  return v8;
}

- (id)copyAllPublicKeysForService:(unint64_t)service withError:(id *)error
{
  v6 = objc_msgSend_identityManager(self, a2, service);
  v8 = objc_msgSend_copyAllPublicKeysForService_withError_(v6, v7, service, error);

  return v8;
}

- (_PCSPublicIdentityData)copyDiversifiedPublicIdentityForService:(unint64_t)service withError:(id *)error
{
  v7 = objc_msgSend_containerScopedUserIDProvider(self, a2, service);
  v10 = objc_msgSend_containerScopedUserID(v7, v8, v9);
  v12 = objc_msgSend_dataUsingEncoding_(v10, v11, 4);

  v15 = objc_msgSend_identityManager(self, v13, v14);
  v17 = objc_msgSend_copyDiversifiedIdentityForService_userIDEntropy_withError_(v15, v16, service, v12, error);

  return v17;
}

- (id)copyDiversifiedPublicKeyForService:(unint64_t)service withError:(id *)error
{
  v7 = objc_msgSend_containerScopedUserIDProvider(self, a2, service);
  v10 = objc_msgSend_containerScopedUserID(v7, v8, v9);
  v12 = objc_msgSend_dataUsingEncoding_(v10, v11, 4);

  v15 = objc_msgSend_identityManager(self, v13, v14);
  v17 = objc_msgSend_copyDiversifiedPublicKeyForService_userIDEntropy_withError_(v15, v16, service, v12, error);

  return v17;
}

- (id)participantPublicKeyForServiceType:(unint64_t)type error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (type == 2)
  {
    v17 = 0;
    v6 = &v17;
    v7 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(self, a2, 2, &v17);
  }

  else
  {
    v16 = 0;
    v6 = &v16;
    v7 = objc_msgSend_copyPublicKeyForService_withError_(self, a2, type, &v16);
  }

  v8 = v7;
  v9 = *v6;
  v11 = v9;
  if (!v8 || v9)
  {
    if (!v9)
    {
      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5000, @"Couldn't get a public key for our participant");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v15 = &stru_28385ED00;
      if (type == 2)
      {
        v15 = @"diversified ";
      }

      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Couldn't get a %{public}@key for service: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  if (error)
  {
    v13 = v11;
    *error = v11;
  }

  return v8;
}

- (id)currentIdentityPublicKeyIDForServiceType:(unint64_t)type error:(id *)error
{
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, a2, @"ForceNoCurrentIdentityOnce"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Forcing 'no current identity' for the service due to unit test override.", v17, 2u);
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_msgSend_identityManager(self, a2, type);
    v11 = objc_msgSend_PCSServiceStringFromCKServiceType_(v9, v10, type);

    v14 = objc_msgSend_account(self, v12, v13);
    v8 = objc_msgSend_currentIdentityPublicKeyIDForAccount_serviceName_error_(CKDPCSIdentityManager, v15, v14, v11, error);
  }

  return v8;
}

- (BOOL)needsUserKeySyncToPopulateCurrentIdentityForServiceType:(unint64_t)type
{
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, a2, @"ForceNoCurrentIdentityOnce"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Forcing 'no current identity' for the service due to unit test override.", v14, 2u);
    }

    return 0;
  }

  else
  {
    v7 = objc_msgSend_identityManager(self, a2, type);
    v9 = objc_msgSend_PCSServiceStringFromCKServiceType_(v7, v8, type);

    v12 = objc_msgSend_account(self, v10, v11);
    LOBYTE(v7) = objc_msgSend_needsUserKeySyncToPopulateCurrentIdentityForAccount_serviceName_(CKDPCSIdentityManager, v13, v12, v9);

    return v7;
  }
}

- (BOOL)addRandomShareeToPCS:(_OpaquePCSShareProtection *)s
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, s);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDPCSManager.m", 461, @"For testing purposes only");
  }

  v17 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(self, a2, &v17);
  v6 = v17;
  v8 = v6;
  if (RandomSharingIdentityWithError)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v9)
  {
    v11 = objc_msgSend_addSharingIdentity_toSharePCS_permission_(self, v7, RandomSharingIdentityWithError, s, 0);
    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Failed to create random sharing identity: %@", buf, 0xCu);
    if (!RandomSharingIdentityWithError)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (RandomSharingIdentityWithError)
  {
LABEL_16:
    CFRelease(RandomSharingIdentityWithError);
  }

LABEL_17:

  return v10;
}

- (_PCSIdentityData)createRandomSharingIdentityWithError:(id *)error
{
  v4 = objc_msgSend_identityManager(self, a2, error);
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v4, v5, error);

  return RandomSharingIdentityWithError;
}

- (_PCSIdentityData)createCombinedIdentityWithOutOfNetworkPrivateKey:(id)key publicSharingIdentity:(id)identity
{
  identityCopy = identity;
  keyCopy = key;
  v10 = objc_msgSend_identityManager(self, v8, v9);
  CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity = objc_msgSend_createCombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity_(v10, v11, keyCopy, identityCopy);

  return CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity;
}

- (id)createProtectionInfoFromOONPrivateKey:(id)key privateToken:(id)token OONProtectionInfo:(id)info error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  tokenCopy = token;
  keyCopy = key;
  v15 = objc_msgSend_identityManager(self, v13, v14);
  CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity = objc_msgSend_createCombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity_(v15, v16, keyCopy, tokenCopy);

  v66 = 0;
  v19 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(self, v18, infoCopy, CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity, &v66);

  v20 = v66;
  v23 = v20;
  v24 = MEMORY[0x277CBC880];
  if (!v19)
  {
    v42 = objc_msgSend_identityManager(self, v21, v22);
    v65 = 0;
    v44 = objc_msgSend_dataFromSharingIdentity_error_(v42, v43, CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity, &v65);
    v45 = v65;

    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v68 = v23;
      v69 = 2112;
      v70 = v44;
      v71 = 2112;
      v72 = v45;
      _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "OON keyswap: Failed decrypting calling participant protectionInfo: %@. CombinedOONIdentity: %@ (%@)", buf, 0x20u);
    }

    v31 = 0;
    v25 = 0;
LABEL_43:
    v49 = 0;
    if (!CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v64 = v20;
  v25 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(self, v21, 2, &v64);
  v26 = v64;

  if (v26 || !v25)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v26;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Couldn't create a diversified public key for the owner participant: %@", buf, 0xCu);
      if (v26)
      {
LABEL_25:
        v31 = 0;
        v49 = 0;
        v23 = v26;
        if (!CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (v26)
    {
      goto LABEL_25;
    }

    v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v48, *MEMORY[0x277CBC120], 5000, @"Couldn't create a diversified public key for the owner participant");
    v31 = 0;
    goto LABEL_43;
  }

  v29 = objc_msgSend_identityManager(self, v27, v28);
  v63 = 0;
  v31 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v29, v30, v25, &v63);
  v23 = v63;

  v32 = MEMORY[0x277CBC878];
  v33 = *MEMORY[0x277CBC878];
  v34 = *v24;
  if (v23 || !v31)
  {
    if (v34 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

    v50 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = v23;
      v69 = 2114;
      v70 = v25;
      _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Couldn't create an identity from the public sharing key for participant: %@ (key was %{public}@)", buf, 0x16u);
      if (v23)
      {
        goto LABEL_43;
      }
    }

    else if (v23)
    {
      goto LABEL_43;
    }

    v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v51, *MEMORY[0x277CBC120], 5000, @"Couldn't create an identity from the public sharing key: %@ (key was %@)", 0, v25);
    goto LABEL_43;
  }

  if (v34 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v33);
  }

  v35 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v31;
    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Created public identity for participant: %@", buf, 0xCu);
  }

  v37 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(self, v36, v31, v19, 1);
  if (v37)
  {
    v39 = v37;
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v32);
    }

    v40 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v39;
      _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Couldn't add public identity to per-participant PCS: %@", buf, 0xCu);
    }

    v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 5005, @"Couldn't add public identity to per-participant PCS: %@", v39);

    goto LABEL_43;
  }

  v52 = objc_msgSend_removeSharingIdentity_fromSharePCS_(self, v38, CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity, v19);
  if (v52)
  {
    v23 = v52;
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v32);
    }

    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v23;
      _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "OON keyswap: Failed to remove combined identity: %@", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v62 = 0;
  v49 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(self, v53, v19, 4, &v62);
  v55 = v62;
  v56 = v55;
  if (v49 && !v55)
  {
    v23 = 0;
    if (!CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
    {
      goto LABEL_45;
    }

LABEL_44:
    CFRelease(CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity);
    goto LABEL_45;
  }

  if (*v24 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v32);
  }

  v60 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v68 = v56;
    _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "OON keyswap: failed to convert PCS blob to data: %@", buf, 0xCu);
  }

  v23 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v61, *MEMORY[0x277CBC120], 5005, v56, @"Couldn't serialize PCS data after key swap on OON PCS blob");

  if (CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v23)
  {
    if (error)
    {
      v57 = v23;
      v58 = 0;
      *error = v23;
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = v49;
  }

  return v58;
}

- (void)canDecryptInvitedProtectionData:(id)data participantProtectionInfo:(id)info serviceType:(unint64_t)type completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225294ABC;
  v15[3] = &unk_27854BCF0;
  v15[4] = self;
  v16 = dataCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = dataCopy;
  objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(self, v14, info, 4, type, v15);
}

- (id)dataFromSharingIdentity:(_PCSIdentityData *)identity error:(id *)error
{
  v6 = objc_msgSend_identityManager(self, a2, identity);
  v8 = objc_msgSend_dataFromSharingIdentity_error_(v6, v7, identity, error);

  return v8;
}

- (_PCSIdentityData)createSharingIdentityFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v9 = objc_msgSend_identityManager(self, v7, v8);
  SharingIdentityFromData_error = objc_msgSend_createSharingIdentityFromData_error_(v9, v10, dataCopy, error);

  return SharingIdentityFromData_error;
}

- (_PCSPublicIdentityData)createPublicSharingIdentityFromPublicKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = objc_msgSend_identityManager(self, v7, v8);
  PublicSharingIdentityFromPublicKey_error = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v9, v10, keyCopy, error);

  return PublicSharingIdentityFromPublicKey_error;
}

- (id)_addIdentity:(_PCSIdentitySetData *)identity withService:(unint64_t)service toPCS:(_OpaquePCSShareProtection *)s
{
  v33 = *MEMORY[0x277D85DE8];
  if (!s)
  {
    v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1017, @"Can't add an identity to a nil pcs");
    goto LABEL_28;
  }

  cf = 0;
  v9 = objc_msgSend_identityManager(self, a2, identity);
  objc_msgSend_PCSServiceStringFromCKServiceType_(v9, v10, service);

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (identity)
  {
    v11 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
    v13 = v11;
    if (!v11 || cf)
    {
      v15 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5000, s, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_225295240;
      v21[3] = &unk_27854BD18;
      v21[4] = &v22;
      v21[5] = s;
      v21[6] = v11;
      objc_msgSend__onSynchronizeQueue_(self, v12, v21);
      if (v23[3])
      {
LABEL_20:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v19 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v28 = v13;
          v29 = 2112;
          sCopy2 = s;
          _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Added identity %@ to PCS %@", buf, 0x16u);
        }

        v15 = 0;
        goto LABEL_25;
      }

      v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Failed to add our public identity to the PCS object");
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = 0;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Warn: Couldn't get a self identity: %@", buf, 0xCu);
    }

    v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5000, @"Couldn't get a self identity to add to the share PCS");
    v13 = 0;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v28 = v13;
    v29 = 2112;
    sCopy2 = s;
    v31 = 2112;
    v32 = v15;
    _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Error adding identity %@ to PCS %@: %@", buf, 0x20u);
  }

LABEL_25:
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v22, 8);
LABEL_28:

  return v15;
}

- (id)addIdentityForService:(unint64_t)service toPCS:(_OpaquePCSShareProtection *)s
{
  v26 = *MEMORY[0x277D85DE8];
  if (!s)
  {
    v10 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1017, @"Asked to add an identity to an null PCS in addIdentityForService:toPCS:");
    goto LABEL_15;
  }

  v7 = objc_msgSend_identityManager(self, a2, service);
  v21 = 0;
  v9 = objc_msgSend_copyIdentitySetWithType_options_error_(v7, v8, service, 1, &v21);
  v10 = v21;

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 == 0;
  }

  if (!v12)
  {
    v10 = objc_msgSend__addIdentity_withService_toPCS_(self, v11, v9, service, s);
LABEL_14:
    CFRelease(v9);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_19:
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = sub_2252927B0(service);
    v10 = objc_msgSend_errorWithDomain_code_format_(v17, v20, v18, 5000, @"Couldn't get a %@ identity set to add to PCS", v19);

    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = v13;
  v16 = sub_2252927B0(service);
  *buf = 138412546;
  v23 = v16;
  v24 = 2112;
  v25 = v10;
  _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Warn: Couldn't get a %@ identity set: %@", buf, 0x16u);

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (void)markCurrentUserParticipantViaPublicKeyMatchingForShare:(id)share
{
  v78 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  v6 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(self, v5, 2, 0);
  v9 = objc_msgSend_identityManager(self, v7, v8);
  v11 = objc_msgSend_copyIdentitySetWithType_options_error_(v9, v10, 2, 0, 0);

  selfCopy = self;
  v14 = objc_msgSend_containerID(self, v12, v13);
  v17 = objc_msgSend_specialContainerType(v14, v15, v16);

  cf = 0;
  v67 = 0;
  if (v17 == 4)
  {
    v67 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(selfCopy, v18, 1, 0);
    v22 = objc_msgSend_identityManager(selfCopy, v20, v21);
    cf = objc_msgSend_copyIdentitySetWithType_options_error_(v22, v23, 1, 0, 0);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v24 = objc_msgSend_allParticipants(shareCopy, v18, v19);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v69, v77, 16);
  if (!v26)
  {
    goto LABEL_29;
  }

  v29 = v26;
  v63 = shareCopy;
  v30 = *v70;
  v31 = cf;
LABEL_5:
  v32 = 0;
  v64 = v29;
  while (1)
  {
    if (*v70 != v30)
    {
      objc_enumerationMutation(v24);
    }

    v33 = *(*(&v69 + 1) + 8 * v32);
    v34 = objc_msgSend_userIdentity(v33, v27, v28, v63);
    v37 = objc_msgSend_publicSharingKey(v34, v35, v36);

    if (!v37)
    {
      goto LABEL_20;
    }

    v38 = objc_msgSend_userIdentity(v33, v27, v28);
    v41 = objc_msgSend_publicSharingKey(v38, v39, v40);

    if (objc_msgSend_isEqualToData_(v6, v42, v41) & 1) != 0 || (objc_msgSend_isEqualToData_(v67, v43, v41))
    {
      goto LABEL_24;
    }

    if (v11)
    {
      break;
    }

    if (v31)
    {
LABEL_16:
      v46 = v30;
      v47 = v24;
      v48 = v6;
      v49 = objc_msgSend_identityManager(selfCopy, v43, v44);
      v51 = objc_msgSend_identitySet_containsPublicKey_error_(v49, v50, v31, v41, 0);

      if (v11)
      {
      }

      v6 = v48;
      v24 = v47;
      v30 = v46;
      v29 = v64;
      v31 = cf;
      if (v51)
      {
        goto LABEL_24;
      }
    }

LABEL_19:

LABEL_20:
    if (v29 == ++v32)
    {
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v69, v77, 16);
      if (v29)
      {
        goto LABEL_5;
      }

      shareCopy = v63;
      goto LABEL_29;
    }
  }

  v66 = objc_msgSend_identityManager(selfCopy, v43, v44);
  if (!objc_msgSend_identitySet_containsPublicKey_error_(v66, v45, v11, v41, 0))
  {
    if (v31)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_24:
  objc_msgSend_setIsCurrentUser_(v33, v43, 1);
  v52 = v24;
  v24 = v33;

  shareCopy = v63;
  if (!v24)
  {
    goto LABEL_30;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v53 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v54 = v53;
    v57 = objc_msgSend_participantID(v24, v55, v56);
    objc_msgSend_recordID(v63, v58, v59);
    v60 = v11;
    v62 = v61 = v6;
    *buf = 138412546;
    v74 = v57;
    v75 = 2114;
    v76 = v62;
    _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Found current user participant %@ via public key matching on share %{public}@", buf, 0x16u);

    v6 = v61;
    v11 = v60;
  }

LABEL_29:

LABEL_30:
  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (BOOL)sharingFingerprintsContainPublicKeyWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v49 = 0;
    v8 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(self, v6, 2, &v49);
    v9 = v49;
    isEqualToData = objc_msgSend_isEqualToData_(v8, v10, dataCopy);
    if (error && v9)
    {
      v12 = v9;
      *error = v9;
    }

    if ((isEqualToData & 1) == 0)
    {
      v48 = v9;
      v15 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(self, v13, 1, &v48);
      v16 = v48;

      v18 = objc_msgSend_isEqualToData_(v15, v17, dataCopy);
      if (error && v16)
      {
        v19 = v16;
        *error = v16;
      }

      if (v18)
      {
        v14 = 1;
        v9 = v16;
        goto LABEL_13;
      }

      v23 = objc_msgSend_identityManager(self, v20, v21);
      v47 = v16;
      v25 = objc_msgSend_copyIdentitySetWithType_options_error_(v23, v24, 2, 0, &v47);
      v26 = v47;

      v29 = objc_msgSend_identityManager(self, v27, v28);
      v46 = v26;
      v31 = objc_msgSend_identitySet_containsPublicKey_error_(v29, v30, v25, dataCopy, &v46);
      v9 = v46;

      if (v25)
      {
        CFRelease(v25);
      }

      if (error && v9)
      {
        v34 = v9;
        *error = v9;
      }

      if ((v31 & 1) == 0)
      {
        v35 = objc_msgSend_identityManager(self, v32, v33);
        v45 = v9;
        v37 = objc_msgSend_copyIdentitySetWithType_options_error_(v35, v36, 1, 0, &v45);
        v38 = v45;

        v41 = objc_msgSend_identityManager(self, v39, v40);
        v44 = v38;
        v14 = objc_msgSend_identitySet_containsPublicKey_error_(v41, v42, v37, dataCopy, &v44);
        v9 = v44;

        if (v37)
        {
          CFRelease(v37);
        }

        if (error && v9)
        {
          v43 = v9;
          *error = v9;
        }

        goto LABEL_13;
      }
    }

    v14 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)generateOONPrivateKeyWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  RandomCompactRaw = PCSIdentityCreateRandomCompactRaw();
  v5 = MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC878];
  v7 = MEMORY[0x277CBC880];
  v8 = *MEMORY[0x277CBC880];
  if (RandomCompactRaw)
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v15 = MEMORY[0x277CBC830];
    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = RandomCompactRaw;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Created OON PCS identity %@", buf, 0xCu);
    }

    v14 = PCSIdentityCopyExportedPrivateKey();
    if (v14)
    {
      v12 = 0;
    }

    else
    {
      if (*v7 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v5);
      }

      v17 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = 0;
        _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Error extracting private key from OON identity: %@", buf, 0xCu);
      }

      v19 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't export OON private key");
      v12 = v19;
      if (error)
      {
        v20 = v19;
        *error = v12;
      }
    }

    CFRelease(RandomCompactRaw);
  }

  else
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = 0;
      _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Error creating OON identity: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't generate OON identity");
    v12 = v11;
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    v14 = 0;
  }

  return v14;
}

+ (id)publicKeyIDFromIdentity:(_OpaquePCSShareProtection *)identity
{
  identityCopy = identity;
  v21 = *MEMORY[0x277D85DE8];
  if (identity)
  {
    v4 = PCSFPCopyKeyIDs();
    if (objc_msgSend_count(v4, v5, v6))
    {
      v9 = objc_msgSend_lastObject(v4, v7, v8);
      v10 = PCSFPCopyPrivateKey();
      if (v10)
      {
        v11 = v10;
        v12 = PCSIdentityCopyPublicIdentity();
        if (v12)
        {
          v13 = v12;
          v14 = PCSPublicIdentityCopyCurrentKeyFingerprint();
          CFRelease(v13);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v17 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v19 = 138412290;
            v20 = identityCopy;
            _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Couldn't get a public identity from PCS %@", &v19, 0xCu);
          }

          v14 = 0;
        }

        CFRelease(v11);
        goto LABEL_22;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = identityCopy;
        _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Couldn't get private key from pcs %@", &v19, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = identityCopy;
        _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Couldn't get keyIDs from pcs %@", &v19, 0xCu);
      }

      v9 = 0;
    }

    v14 = 0;
LABEL_22:
    identityCopy = v14;
  }

  return identityCopy;
}

- (void)_locked_markMissingIdentitiesFromFailedDecryptError:(id)error serviceName:(id)name
{
  v74 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  nameCopy = name;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  if (!errorCopy)
  {
    if (!nameCopy)
    {
      goto LABEL_16;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v71 = nameCopy;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "We are missing identities for service %{public}@. Will notify clients if any keys arrive.", buf, 0xCu);
    }

    v13 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v30, v31);
    v69 = nameCopy;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, &v69, 1);
    v21 = objc_msgSend_uuid(self, v33, v34);
    v24 = objc_msgSend_account(self, v35, v36);
    objc_msgSend_addServicesWithMissingIdentities_forManagerUUID_withAccount_(v13, v37, v15, v21, v24);
    goto LABEL_14;
  }

  v13 = objc_msgSend_userInfo(errorCopy, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x277D42F38]);
  if (objc_msgSend_count(v15, v16, v17))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v71 = nameCopy;
      v72 = 2114;
      v73 = v15;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "A PCS blob could not be decrypted for service %{public}@. %{public}@ are keys that can decrypt the zone. Will notify clients if any of these keys arrive.", buf, 0x16u);
    }

    v21 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v19, v20);
    v24 = objc_msgSend_uuid(self, v22, v23);
    v27 = objc_msgSend_account(self, v25, v26);
    objc_msgSend_addMissingIdentityPublicKeys_forManagerUUID_withAccount_(v21, v28, v15, v24, v27);

LABEL_14:
  }

LABEL_16:
  if (*MEMORY[0x277CBC810] == 1)
  {
    if (objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v11, @"FakeOutCurrentIdentityIsMissing"))
    {
      v40 = objc_msgSend_identityManager(self, v38, v39);
      v42 = objc_msgSend_PCSServiceStringFromCKServiceType_(v40, v41, 0);

      v45 = objc_msgSend_identityManager(self, v43, v44);
      v47 = objc_msgSend_copyIdentitySetWithType_options_error_(v45, v46, 0, 1, 0);

      if (v47)
      {
        v48 = PCSIdentitySetCopyCurrentIdentityWithError();
        if (v48)
        {
          v49 = v48;
          PublicKey = PCSIdentityGetPublicKey();
          if (PublicKey)
          {
            v53 = PublicKey;
            v54 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v51, v52);
            v68 = v53;
            v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, &v68, 1);
            v59 = objc_msgSend_uuid(self, v57, v58);
            v62 = objc_msgSend_account(self, v60, v61);
            objc_msgSend_addMissingIdentityPublicKeys_forManagerUUID_withAccount_(v54, v63, v56, v59, v62);
          }

          CFRelease(v49);
        }

        CFRelease(v47);
      }
    }

    if (objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v38, @"ClearContainersOnPCSNotifier"))
    {
      v66 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v64, v65);
      objc_msgSend_addTestOverrides_(v66, v67, &unk_2838C9228);
    }
  }
}

- (void)_locked_createZonePCSWithSyncKeyRegistryRetry:(BOOL)retry requestorOperationID:(id)d keySyncAnalytics:(id)analytics createV2PCS:(BOOL)s completionHandler:(id)handler
{
  sCopy = s;
  retryCopy = retry;
  v147[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  analyticsCopy = analytics;
  handlerCopy = handler;
  v14 = objc_msgSend_synchronizeQueue(self, v12, v13);
  dispatch_assert_queue_V2(v14);

  v141 = 0;
  v17 = objc_msgSend_identityManager(self, v15, v16);
  objc_msgSend_PCSServiceStringFromCKServiceType_(v17, v18, 0);

  v19 = MEMORY[0x277D42F90];
  if (!sCopy)
  {
    v19 = MEMORY[0x277D42F80];
  }

  v121 = *v19;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v22 = objc_msgSend_identityManager(self, v20, v21);
  v136 = 0;
  v24 = objc_msgSend_copyIdentitySetWithType_options_error_(v22, v23, 0, 1, &v136);
  v25 = v136;

  v26 = MEMORY[0x277CBC810];
  if (v25 || !v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = v25;
      _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Failed to get signing identity set in _locked_createZonePCSWithSyncKeyRegistryRetry: %@", buf, 0xCu);
    }

    if (!v25)
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBC120], 5000, @"Couldn't get a PCS identity set");
    }

    v59 = objc_msgSend_domain(v25, v57, v58);
    if (objc_msgSend_isEqualToString_(v59, v60, *MEMORY[0x277CBC120]))
    {
      v48 = objc_msgSend_code(v25, v61, v62) == 5000;
    }

    else
    {
      v48 = 0;
    }

    v120 = 0;
    v39 = 0;
    v55 = 0;
  }

  else
  {
    v29 = PCSIdentitySetCopyCurrentIdentityWithError();
    if (v29 && !v141)
    {
      v146[0] = *MEMORY[0x277D42F78];
      v30 = objc_msgSend_identityManager(self, v27, v28);
      v33 = objc_msgSend_serviceName(v30, v31, v32);
      v34 = *MEMORY[0x277D42F50];
      v147[0] = v33;
      v147[1] = v29;
      v35 = *MEMORY[0x277D42F58];
      v146[1] = v34;
      v146[2] = v35;
      v147[2] = *MEMORY[0x277D42F70];
      v120 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v147, v146, 3);

      v37 = PCSFPCreate();
      v39 = v37;
      if (v141 || !v37)
      {
        v63 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v38, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't create a new PCSShareProtectionRef");
      }

      else
      {
        v41 = PCSFPCreatePrivateKey();
        if (v41)
        {
          v118 = PCSIdentityCopyPublicIdentity();
          v134[0] = MEMORY[0x277D85DD0];
          v134[1] = 3221225472;
          v134[2] = sub_22529717C;
          v134[3] = &unk_27854BD40;
          v135 = sCopy;
          v134[4] = &v137;
          v134[5] = v39;
          v134[6] = v118;
          objc_msgSend__onSynchronizeQueue_(self, v42, v134);
          cf = v41;
          if (v138[3])
          {
            v45 = objc_msgSend_containerID(self, v43, v44);
            v48 = objc_msgSend_specialContainerType(v45, v46, v47) == 25;

            if (!v48)
            {
              v55 = 0;
              goto LABEL_33;
            }

            if (*v26 == 1)
            {
              v51 = objc_msgSend__pcsTestOverrideForKey_(self, v49, @"ForceSingleIdentityForRemindersZone");
              v54 = objc_msgSend_BOOLValue(v51, v52, v53);

              if (v54)
              {
                v55 = 0;
                v48 = 0;
LABEL_33:
                v25 = 0;
LABEL_51:
                CFRelease(cf);
                if (v118)
                {
                  CFRelease(v118);
                }

                goto LABEL_53;
              }
            }

            v65 = objc_msgSend_identityManager(self, v49, v50);
            v133 = 0;
            v67 = objc_msgSend_copyIdentitySetWithType_options_error_(v65, v66, 4, 1, &v133);
            v25 = v133;

            if (*v26 == 1)
            {
              v69 = objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v68, @"ForceKeyRegistrySyncOnRemindersZoneCreation");
            }

            else
            {
              v69 = 0;
            }

            if (v25 || !v67 || v69)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v70 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v143 = v25;
                _os_log_impl(&dword_22506F000, v70, OS_LOG_TYPE_INFO, "Warn: Couldn't get a Reminders identity set: %@", buf, 0xCu);
              }

              if (!v25)
              {
                v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v71, *MEMORY[0x277CBC120], 5000, @"Couldn't get a Reminders identity set to add to PCS");
              }

              v73 = objc_msgSend_domain(v25, v71, v72);
              if (objc_msgSend_isEqualToString_(v73, v74, *MEMORY[0x277CBC120]))
              {
                v48 = objc_msgSend_code(v25, v75, v76) == 5000;
              }

              else
              {
                v48 = 0;
              }

              v55 = 4;
              goto LABEL_51;
            }

            v64 = objc_msgSend__addIdentity_withService_toPCS_(self, v68, v67, 4, v39);
          }

          else
          {
            v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 5005, @"Failed to add our public identity to the PCS object");
          }

          v25 = v64;
          v55 = 0;
          v48 = 0;
          goto LABEL_51;
        }

        v63 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 5000, @"Failed to add a protection key to the zone");
      }

      v25 = v63;
      v48 = 0;
      v55 = 0;
LABEL_53:
      CFRelease(v29);
      goto LABEL_54;
    }

    v25 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 5000, 0, v141);
    v120 = 0;
    v39 = 0;
    v55 = 0;
    v48 = 1;
    if (v29)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  if (v141)
  {
    CFRelease(v141);
    v141 = 0;
  }

  v77 = *MEMORY[0x277CBC878];
  if (v39)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v77);
    }

    v78 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v143 = v39;
      _os_log_debug_impl(&dword_22506F000, v78, OS_LOG_TYPE_DEBUG, "Created new zone PCS: %@", buf, 0xCu);
    }

    v79 = objc_alloc_init(CKDZonePCSData);
    objc_msgSend_setPcs_(v79, v80, v39);
    CFRelease(v39);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v77);
    }

    v83 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v143 = v25;
      _os_log_error_impl(&dword_22506F000, v83, OS_LOG_TYPE_ERROR, "Error creating new zone PCS: %@", buf, 0xCu);
    }

    v79 = 0;
  }

  if (*v26 != 1)
  {
LABEL_80:
    if (v48 && retryCopy)
    {
      v91 = objc_msgSend_identityManager(self, v81, v82);
      v93 = objc_msgSend_PCSServiceStringFromCKServiceType_(v91, v92, v55);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v94 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v143 = v93;
        v144 = 2114;
        v145 = dCopy;
        _os_log_debug_impl(&dword_22506F000, v94, OS_LOG_TYPE_DEBUG, "Attempting user key sync before retrying zone PCS creation for service %{public}@ and operation %{public}@.", buf, 0x16u);
      }

      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = sub_2252971CC;
      v128[3] = &unk_27854BD90;
      v128[4] = self;
      v95 = v93;
      v129 = v95;
      v130 = dCopy;
      v131 = handlerCopy;
      v132 = sCopy;
      objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(self, v96, v55, 0, 0, 0, 0x28387E900, v130, v128);

      goto LABEL_103;
    }

    goto LABEL_88;
  }

  if (objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v81, @"ForceUserKeyRegistrySyncRetryOnZonePCSCreation"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v85 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Forcing user key sync retry for unit tests", buf, 2u);
    }

    v87 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v86, *MEMORY[0x277CBC120], 5000, @"Couldn't create a PCS identity for unit tests");

    v48 = 1;
    v25 = v87;
    goto LABEL_80;
  }

  if (!objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v84, @"ForceImmediateUserKeyRegistrySyncFailure"))
  {
    goto LABEL_80;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v88 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v88, OS_LOG_TYPE_DEBUG, "Forcing user key sync failure for unit tests", buf, 2u);
    if (!v25)
    {
      goto LABEL_79;
    }

LABEL_88:
    objc_msgSend_domain(v25, v81, v82);
    goto LABEL_89;
  }

  if (v25)
  {
    goto LABEL_88;
  }

LABEL_79:
  v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v81, *MEMORY[0x277CBC120], 5000, @"Failed to preflight PCS identities because of unit tests");
  objc_msgSend_domain(v25, v89, v90);
  v97 = LABEL_89:;
  v98 = *MEMORY[0x277CBC120];
  if (objc_msgSend_isEqualToString_(v97, v99, *MEMORY[0x277CBC120]) && objc_msgSend_code(v25, v100, v101) == 5000)
  {
    IsManatee = objc_msgSend_currentServiceIsManatee(self, v102, v103);

    if (!IsManatee)
    {
      goto LABEL_94;
    }

    v107 = MEMORY[0x277CBC560];
    v97 = objc_msgSend_userInfo(v25, v105, v106);
    v109 = objc_msgSend_objectForKeyedSubscript_(v97, v108, *MEMORY[0x277CCA7E8]);
    v111 = objc_msgSend_errorWithDomain_code_error_format_(v107, v110, v98, 5008, v109, @"Failed to decrypt. Keys unavailable even after synchronization");

    v25 = v111;
  }

LABEL_94:
  if (analyticsCopy && (objc_msgSend_isCloudCoreSessionNoLongerValidError(v25, v105, v106) & 1) == 0)
  {
    if (v25)
    {
      v112 = 1;
    }

    else
    {
      v112 = v79 == 0;
    }

    v113 = &off_27854DFC0;
    if (v112)
    {
      v113 = &off_27854DFC8;
    }

    objc_msgSend_setOverallResult_(analyticsCopy, v105, *v113);
    objc_msgSend_setError_(analyticsCopy, v114, v25);
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v115, analyticsCopy);
  }

  v116 = objc_msgSend_callbackQueue(self, v105, v106);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225297590;
  block[3] = &unk_2785457E0;
  v127 = handlerCopy;
  v125 = v79;
  v25 = v25;
  v126 = v25;
  dispatch_async(v116, block);

  v95 = v127;
LABEL_103:

  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(&v137, 8);
}

- (void)createZonePCSWithSyncKeyRegistryRetry:(BOOL)retry requestorOperationID:(id)d createV2PCS:(BOOL)s completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v14 = objc_msgSend_synchronizeQueue(self, v12, v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2252976A0;
  v17[3] = &unk_27854BDB8;
  retryCopy = retry;
  v17[4] = self;
  v18 = dCopy;
  sCopy = s;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  dispatch_async(v14, v17);
}

- (id)dataFromZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  sCopy = s;
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225074150;
  v22 = sub_225073634;
  v23 = 0;
  if (s)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_225297A00;
    v17[3] = &unk_27854BDE0;
    v17[5] = &v24;
    v17[6] = s;
    v17[4] = &v18;
    objc_msgSend__onSynchronizeQueue_(self, a2, v17);
    if (v25[3] || !v19[5])
    {
      v7 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't encode zone PCS data");
      v8 = v7;
      if (error)
      {
        v9 = v7;
        *error = v8;
      }

      v10 = v19[5];
      v19[5] = 0;

      v11 = v25[3];
      if (v11)
      {
        CFRelease(v11);
        v25[3] = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = *MEMORY[0x277CBC878];
    if (v19[5])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v12);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v14 = v19[5];
        *buf = 138412546;
        v29 = sCopy;
        v30 = 2112;
        v31 = v14;
        _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Created zone PCS data from zone PCS %@: %@.", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v12);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = sCopy;
        v30 = 2112;
        v31 = v8;
        _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error creating zone PCS data from zone PCS %@: %@", buf, 0x16u);
      }
    }

    sCopy = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return sCopy;
}

- (id)getAllPublicKeysForExportedData:(id)data error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0;
  v9 = objc_msgSend_createSharePCSFromEncryptedData_error_(self, v8, dataCopy, &v19);
  v10 = v19;
  v11 = v10;
  if (v9 && !v10)
  {
    v12 = PCSShareProtectionCopyPublicKeys();
    if (v12)
    {
      v13 = v12;
      v18 = v7;
      CKCFArrayForEach();

      CFRelease(v9);
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    CFRelease(v14);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v21 = dataCopy;
    v22 = 2112;
    v23 = v11;
    _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error creating PCS from encrypted data %@: %@", buf, 0x16u);
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    CFRelease(v9);
  }

LABEL_10:
  if (error && v11)
  {
    v16 = v11;
    *error = v11;
  }

LABEL_15:

  return v7;
}

- (void)findSelfParticipantOnShareMetadata:(id)metadata invitationToken:(id)token completionHandler:(id)handler
{
  v154 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  tokenCopy = token;
  handlerCopy = handler;
  v127 = metadataCopy;
  v126 = objc_msgSend_share(metadataCopy, v8, v9);
  if (objc_msgSend_currentServiceIsManatee(self, v10, v11))
  {
    v12 = [CKPCSManateeShareInvitation alloc];
    v15 = objc_msgSend_sharingInvitationData(tokenCopy, v13, v14);
    v17 = objc_msgSend_initWithData_(v12, v16, v15);
    v120 = objc_msgSend_exportedPCSData(v17, v18, v19);

    v121 = objc_msgSend_getAllPublicKeysForExportedData_error_(self, v20, v120, 0);
    v21 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v98 = v22;
      *buf = 134217984;
      *&buf[4] = objc_msgSend_count(v121, v99, v100);
      _os_log_debug_impl(&dword_22506F000, v98, OS_LOG_TYPE_DEBUG, "Got %lu pcs key(s) to match from dugong invitation", buf, 0xCu);
    }

    if (objc_msgSend_count(v121, v23, v24))
    {
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      obj = v121;
      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v145, v153, 16);
      if (!v118)
      {
        goto LABEL_39;
      }

      v27 = *v146;
      *&v26 = 138412290;
      v116 = v26;
      v117 = *v146;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v146 != v27)
          {
            v29 = v28;
            objc_enumerationMutation(obj);
            v28 = v29;
          }

          v30 = v28;
          v31 = *(*(&v145 + 1) + 8 * v28);
          if (*v21 != -1)
          {
            dispatch_once(v21, *MEMORY[0x277CBC878]);
          }

          v32 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            *buf = v116;
            *&buf[4] = v31;
            _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Matching participants with invitation public key: %@", buf, 0xCu);
          }

          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v124 = objc_msgSend_participants(v126, v33, v34, v116);
          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v35, &v141, v152, 16);
          if (!v38)
          {
            goto LABEL_37;
          }

          v39 = *v142;
          while (2)
          {
            v40 = 0;
            do
            {
              if (*v142 != v39)
              {
                objc_enumerationMutation(v124);
              }

              v41 = *(*(&v141 + 1) + 8 * v40);
              v44 = objc_msgSend_protectionInfoPublicKey(v41, v36, v37);
              if (v44)
              {
                goto LABEL_67;
              }

              v44 = objc_msgSend_protectionInfo(v41, v42, v43);
              if (!v44)
              {
                goto LABEL_35;
              }

              v48 = objc_msgSend_acceptanceStatus(v41, v46, v47) == 2;

              if (!v48)
              {
                goto LABEL_34;
              }

              if (*v21 != -1)
              {
                dispatch_once(v21, *MEMORY[0x277CBC878]);
              }

              v49 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
              {
                v59 = v49;
                v62 = objc_msgSend_participantID(v41, v60, v61);
                *buf = v116;
                *&buf[4] = v62;
                _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "PPPCS public key is not present for participant %@, checking PPPCS blob", buf, 0xCu);
              }

              v52 = objc_msgSend_protectionInfo(v41, v50, v51);
              v54 = objc_msgSend_getAllPublicKeysForExportedData_error_(self, v53, v52, 0);

              if (objc_msgSend_count(v54, v55, v56) != 1)
              {

LABEL_34:
                v44 = 0;
                goto LABEL_35;
              }

              v44 = objc_msgSend_firstObject(v54, v57, v58);

              if (v44)
              {
LABEL_67:
                if (objc_msgSend_isEqualToData_(v44, v42, v31))
                {
                  objc_msgSend_setIsCurrentUser_(v41, v45, 1);
                  objc_msgSend_setCallingParticipant_(v127, v81, v41);
                  v84 = objc_msgSend_acceptanceStatus(v41, v82, v83);
                  if (v84 == 2)
                  {
                    v87 = objc_msgSend_userIdentity(v41, v85, v86);
                    v90 = objc_msgSend_userRecordID(v87, v88, v89);
                    v93 = objc_msgSend_recordName(v90, v91, v92);

                    if (*v21 != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v94 = *MEMORY[0x277CBC858];
                    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
                    {
                      v112 = v94;
                      v115 = objc_msgSend_participantID(v41, v113, v114);
                      *buf = 138412546;
                      *&buf[4] = v115;
                      *&buf[12] = 2112;
                      *&buf[14] = v93;
                      _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "Manatee share is already accepted by participant %@, filling anonymousID %@ for share metadata.", buf, 0x16u);
                    }

                    objc_msgSend_fillAnonymousCKUserID_(v127, v95, v93);
                  }

                  if (*v21 != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v96 = *MEMORY[0x277CBC858];
                  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
                  {
                    v101 = v96;
                    v104 = objc_msgSend_callingParticipant(v127, v102, v103);
                    v107 = objc_msgSend_recordID(v126, v105, v106);
                    *buf = 138412546;
                    *&buf[4] = v104;
                    *&buf[12] = 2112;
                    *&buf[14] = v107;
                    _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "Found current participant %@ on anonymous to server share %@", buf, 0x16u);
                  }

                  handlerCopy[2](handlerCopy, 1);

                  goto LABEL_64;
                }
              }

LABEL_35:

              ++v40;
            }

            while (v38 != v40);
            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v36, &v141, v152, 16);
            if (v38)
            {
              continue;
            }

            break;
          }

LABEL_37:

          v28 = v30 + 1;
          v27 = v117;
        }

        while (v30 + 1 != v118);
        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v145, v153, 16);
        v27 = v117;
        if (!v118)
        {
LABEL_39:

          goto LABEL_63;
        }
      }
    }

    if (*v21 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v97 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v108 = v97;
      v111 = objc_msgSend_recordID(v126, v109, v110);
      *buf = 138412290;
      *&buf[4] = v111;
      _os_log_error_impl(&dword_22506F000, v108, OS_LOG_TYPE_ERROR, "Could not get public key data from invitation token for share %@. This won't go well.", buf, 0xCu);
    }

LABEL_63:
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v151 = 0;
    v64 = dispatch_group_create();
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v67 = objc_msgSend_share(metadataCopy, v65, v66);
    v125 = objc_msgSend_participants(v67, v68, v69);

    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v70, &v137, v149, 16);
    if (v71)
    {
      v72 = *v138;
      do
      {
        for (i = 0; i != v71; ++i)
        {
          if (*v138 != v72)
          {
            objc_enumerationMutation(v125);
          }

          v74 = *(*(&v137 + 1) + 8 * i);
          dispatch_group_enter(v64);
          v77 = objc_msgSend_protectionInfo(v74, v75, v76);
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = sub_2252986D8;
          v132[3] = &unk_27854BE08;
          v136 = buf;
          v132[4] = v74;
          v133 = metadataCopy;
          v134 = v126;
          v135 = v64;
          objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(self, v78, v77, 4, 2, v132);
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v79, &v137, v149, 16);
      }

      while (v71);
    }

    v80 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225298928;
    block[3] = &unk_27854B6F0;
    v130 = handlerCopy;
    v131 = buf;
    dispatch_group_notify(v64, v80, block);

    _Block_object_dispose(buf, 8);
  }

LABEL_64:
}

- (id)getCurrentIdentityExportedPrivateKey
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v4 = objc_msgSend_identityManager(self, a2, v2);
  objc_msgSend_PCSServiceStringFromCKServiceType_(v4, v5, 0);

  v8 = objc_msgSend_identityManager(self, v6, v7);
  v21 = 0;
  v10 = objc_msgSend_copyIdentitySetWithType_options_error_(v8, v9, 0, 1, &v21);
  v11 = v21;

  if (v11 || !v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Failed to get current identity set trying to create anonymous userID %@", buf, 0xCu);
    }

    v15 = 0;
    v18 = 0;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = PCSIdentitySetCopyCurrentIdentityWithError();
    v13 = v12;
    if (!v22 && v12)
    {
      v14 = PCSIdentityCopyExportedPrivateKey();
      v15 = v14;
      if (v22 || !v14)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v16 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v22;
          _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Failed to get exported private key data trying to create anonymous userID: %@", buf, 0xCu);
        }
      }

      CFRelease(v10);
      v10 = v13;
LABEL_17:
      CFRelease(v10);
      v18 = v15;
      goto LABEL_18;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v22;
      _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Failed to get current identity trying to create anonymous userID: %@", buf, 0xCu);
    }

    CFRelease(v10);
    v15 = 0;
    v18 = 0;
    v10 = v13;
    if (v13)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v18;
}

- (id)generateOctopusAnonymousUserID
{
  v25 = *MEMORY[0x277D85DE8];
  Named = PCSIdentitySetCreateNamed();
  v3 = PCSIdentitySetCopyCurrentIdentityWithError();
  v5 = PCSIdentityCopyExportedPrivateKey();
  if (Named)
  {
    CFRelease(Named);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%@-%@-%@-%@-%@-%@", @"123456789", @"com.apple.fake.container", @"cloudkit.zoneshare", @"TestZone", @"🐥", v5);
  *md = 0u;
  v24 = 0u;
  v8 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v7, md, 32, 0);
  v11 = objc_msgSend_UTF8String(v6, v9, v10);
  v13 = objc_msgSend_lengthOfBytesUsingEncoding_(v6, v12, 4);
  CC_SHA256(v11, v13, md);
  v16 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v8, v14, v15);
  v18 = objc_msgSend_stringByAppendingString_(@"+", v17, v16);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v18;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Generated fake anonymous user ID %@", buf, 0xCu);
  }

  return v18;
}

- (id)generateAnonymousCKUserIDForCurrentUserInShare:(id)share containerID:(id)d acceptA2AShareUsingVersionOneAnonymousIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v64 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  dCopy = d;
  v12 = objc_msgSend_account(self, v10, v11);
  v15 = objc_msgSend_dsid(v12, v13, v14);

  v18 = objc_msgSend_containerIdentifier(dCopy, v16, v17);

  v21 = objc_msgSend_recordName(shareCopy, v19, v20);
  v24 = objc_msgSend_zoneID(shareCopy, v22, v23);
  v27 = objc_msgSend_zoneName(v24, v25, v26);

  v30 = objc_msgSend_zoneID(shareCopy, v28, v29);
  v33 = objc_msgSend_ownerName(v30, v31, v32);

  v34 = CKRandomDataWithLength();
  v36 = v34;
  if (v15 && v18 && v21 && v27 && v33 && v34)
  {
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%@-%@-%@-%@-%@-%@", v15, v18, v21, v27, v33, v34);
    *md = 0u;
    v63 = 0u;
    v57 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v38, md, 32, 0);
    v41 = objc_msgSend_UTF8String(v37, v39, v40);
    v56 = v37;
    v43 = objc_msgSend_lengthOfBytesUsingEncoding_(v37, v42, 4);
    CC_SHA256(v41, v43, md);
    if (*MEMORY[0x277CBC810] == 1 && identifierCopy)
    {
      v46 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v57, v44, v45);
      v48 = objc_msgSend_stringByAppendingString_(@"+", v47, v46);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v59 = v48;
      v60 = 2112;
      v61 = shareCopy;
      v50 = "CKBehaviorOptions override - Generated anonymous user ID %@ for share %@";
    }

    else
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v57, v44, v45);
      v48 = objc_msgSend_stringWithFormat_(v52, v54, @"%@%@%@", @"+", @"01", v53);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = v56;
      v49 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v59 = v48;
      v60 = 2112;
      v61 = shareCopy;
      v50 = "Generated versioned anonymous user ID %@ for share %@";
    }

    _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, v50, buf, 0x16u);
LABEL_21:

    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v51 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *md = 0;
    _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Failed to assemble required components to generate an anonymous userID. Not returning one.", md, 2u);
  }

  v48 = 0;
LABEL_22:

  return v48;
}

- (id)createSignatureWithIdentity:(_PCSIdentityData *)identity dataToBeSigned:(id)signed forScope:(unint64_t)scope error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  signedCopy = signed;
  if (identity)
  {
    allocator = 0;
    v12 = scope - 1;
    Signature = PCSIdentityCreateSignature();
    v15 = MEMORY[0x277CBC810];
    if (*MEMORY[0x277CBC810] == 1 && ((objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v13, @"GenerateOneInvalidSignature") & 1) != 0 || objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v16, @"FakeInvalidSignature")))
    {
      v27 = xmmword_225447DC8;
      *v28 = unk_225447DD8;
      *&v28[15] = 0xDD6BD7280FB6607ALL;
      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v19 = objc_msgSend_initWithBytes_length_(v17, v18, &v27, 39);
      v20 = PCSIdentityCreateFromRaw();
      v21 = PCSIdentityCreateSignature();

      if (v20)
      {
        CFRelease(v20);
      }

      Signature = v21;
    }

    if (*v15 == 1 && v12 <= 5)
    {
      v22 = objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v13, off_27854C548[v12]);
      v23 = 0;
      if (!v22)
      {
LABEL_13:
        if (!v23)
        {
          goto LABEL_21;
        }

        if (error)
        {
          v24 = v23;
LABEL_18:
          *error = v24;
          goto LABEL_21;
        }

        CFRelease(v23);
        goto LABEL_21;
      }

      allocator = CFErrorCreate(0, @"com.apple.protectedcloudstorage", 16, &unk_2838C9250);

      Signature = 0;
    }

    v23 = allocator;
    goto LABEL_13;
  }

  if (error)
  {
    v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, @"Missing the required PCSIdentity to generate a signature");
    Signature = 0;
    goto LABEL_18;
  }

  Signature = 0;
LABEL_21:

  return Signature;
}

- (id)createCloudKitFeaturesSignatureForData:(id)data forScope:(unint64_t)scope error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v11 = objc_msgSend_deviceContext(self, v9, v10);
  v14 = objc_msgSend_accountDataSecurityObserver(v11, v12, v13);
  v17 = objc_msgSend_account(self, v15, v16);
  error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v14, v18, v17, 0, 1, 0);

  if (error)
  {
    v22 = 5;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Manatee unavailable, using CloudKitFeaturesStingray identity for signing.", buf, 2u);
    }

    v22 = 6;
  }

  v24 = objc_msgSend_identityManager(self, v20, v21);
  v26 = objc_msgSend_PCSServiceStringFromCKServiceType_(v24, v25, v22);

  v29 = objc_msgSend_identityManager(self, v27, v28);
  v62 = 0;
  v31 = objc_msgSend_copyIdentitySetWithType_options_error_(v29, v30, v22, 0, &v62);
  v32 = v62;

  v34 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1 && scope - 1 <= 3)
  {
    v35 = objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v33, off_27854C578[scope - 1]);
    if (!v31)
    {
      goto LABEL_31;
    }

LABEL_13:
    if (!v32 && !v35)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  v35 = 0;
  if (v31)
  {
    goto LABEL_13;
  }

LABEL_31:
  if ((v31 != 0 || (*v34 & 1) == 0) | v35 & 1)
  {
    if (!v32)
    {
      v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5000, @"Failed to create signature. No identity set for service %@.", v26);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Failed to create CloudKitFeatures signature. No identity set for service %{public}@.", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v49 = dataCopy;
  v50 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v51 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v64 = v26;
    _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Warn: The test account has no identity set for service %{public}@. Creating a temporary one, which will not be known to the server.", buf, 0xCu);
  }

  v54 = objc_msgSend_identityManager(self, v52, v53);
  v61 = 0;
  v31 = objc_msgSend_createTemporaryCloudKitFeaturesSigningIdentitySetForServiceName_withError_(v54, v55, v26, &v61);
  v32 = v61;

  if (v32)
  {
    if (*v50 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    dataCopy = v49;
    v56 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "Failed to create temporary identity set for service %{public}@.", buf, 0xCu);
      if (!v31)
      {
LABEL_56:
        if (error)
        {
LABEL_45:
          v48 = v32;
          v42 = 0;
          *error = v32;
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else if (!v31)
    {
      goto LABEL_56;
    }

    CFRelease(v31);
    goto LABEL_56;
  }

  dataCopy = v49;
LABEL_15:
  cf = 0;
  v37 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (!v37)
  {
    v32 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 5000, cf);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Failed to create CloudKitFeatures signature. No current identity for service %{public}@", buf, 0xCu);
    }

LABEL_42:
    if (v31)
    {
      CFRelease(v31);
    }

    if (error)
    {
      goto LABEL_45;
    }

LABEL_57:
    v42 = 0;
    goto LABEL_58;
  }

  errorCopy = error;
  v38 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v39 = MEMORY[0x277CBC858];
  v40 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v64 = v37;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Creating CloudKitFeatures signature with PCS identity: %@", buf, 0xCu);
  }

  v59 = 0;
  v42 = objc_msgSend_createSignatureWithIdentity_dataToBeSigned_forScope_error_(self, v41, v37, dataCopy, scope, &v59);
  v43 = v59;
  v32 = v43;
  if (!v42 || v43)
  {
    if (*v38 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *v39;
    if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v64 = v37;
      v65 = 2114;
      v66 = v32;
      _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Failed to create CloudKitFeatures signature with PCS identity %@. Error: %{public}@", buf, 0x16u);
      if (!errorCopy)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (errorCopy)
    {
LABEL_26:
      v45 = v32;
      *errorCopy = v32;
    }
  }

LABEL_27:
  CFRelease(v37);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v31)
  {
    CFRelease(v31);
  }

LABEL_58:

  return v42;
}

- (id)publicKeyFromSignature:(id)signature error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  v6 = PCSSignatureCopyKeyID();
  v8 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5022, @"Signature does not contain a public key: %@.", signatureCopy);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *buf = 138412290;
  v13 = signatureCopy;
  _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Signature does not contain a public key: %@.", buf, 0xCu);
  if (v6)
  {
LABEL_5:
    CFRelease(v6);
    v6 = 0;
  }

LABEL_6:
  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v6;
}

- (BOOL)validateFullPublicKeySignature:(id)signature forSignedData:(id)data error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  cf = 0;
  v9 = PCSValidateSignature();
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v8, @"FakeSignatureValidationError"))
  {
    cf = CFErrorCreate(0, @"com.apple.protectedcloudstorage", 16, &unk_2838C9278);
  }

  if (cf)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    v12 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5004, signatureCopy);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = signatureCopy;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Failed to validate signature %@ using the embedded public key. Error: %{public}@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_19;
      }
    }

    else if (!error)
    {
      goto LABEL_19;
    }

LABEL_18:
    v14 = v12;
    *error = v12;
    goto LABEL_19;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = signatureCopy;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Successfully validated signature %@ using the embedded public key.", buf, 0xCu);
  }

  v12 = 0;
  if (error)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (BOOL)validateSignature:(id)signature forSignedData:(id)data usingIdentityType:(unint64_t)type error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  dataCopy = data;
  cf = 0;
  v14 = objc_msgSend_identityManager(self, v12, v13);
  v16 = objc_msgSend_PCSServiceStringFromCKServiceType_(v14, v15, type);

  v19 = objc_msgSend_identityManager(self, v17, v18);
  v34 = 0;
  v21 = objc_msgSend_copyIdentitySetWithType_options_error_(v19, v20, type, 0, &v34);
  v22 = v34;

  if (!v21 || v22)
  {
    if (!v22)
    {
      v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 5000, @"Failed to validate signature %@. No identity set for service %@.", signatureCopy, v16);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = signatureCopy;
      v38 = 2114;
      v39 = v16;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Failed to validate signature %@. No identity set for service %{public}@.", buf, 0x16u);
      if (!v21)
      {
LABEL_26:
        v27 = 0;
        v30 = 0;
        if (!error)
        {
          goto LABEL_28;
        }

LABEL_27:
        v31 = v22;
        *error = v22;
        v30 = v27;
        goto LABEL_28;
      }
    }

    else if (!v21)
    {
      goto LABEL_26;
    }

    CFRelease(v21);
    goto LABEL_26;
  }

  v25 = PCSValidateSignatureWithSet();
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v24, @"FakeSignatureValidationError"))
  {
    cf = CFErrorCreate(0, @"com.apple.protectedcloudstorage", 16, &unk_2838C92A0);
  }

  if (v25)
  {
    v26 = cf == 0;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  if (v26)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v37 = signatureCopy;
      v38 = 2114;
      v39 = v16;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Successfully validated signature %@ with service %{public}@", buf, 0x16u);
    }

    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 5004, signatureCopy, v16);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = signatureCopy;
      v38 = 2114;
      v39 = v16;
      _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Failed to validate signature %@ with service %{public}@.", buf, 0x16u);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(v21);
  v30 = v27;
  if (error)
  {
    goto LABEL_27;
  }

LABEL_28:

  return v30;
}

- (void)_locked_createPCSFromData:(id)data ofType:(unint64_t)type usingPCSServiceType:(unint64_t)serviceType tryDecryptingWithOtherServices:(BOOL)services withSyncKeyRegistryRetry:(BOOL)retry lastModifiedDate:(id)date keySyncAnalytics:(id)analytics requestorOperationID:(id)self0 completionHandler:(id)self1
{
  v193 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  analyticsCopy = analytics;
  dCopy = d;
  handlerCopy = handler;
  v19 = objc_msgSend_synchronizeQueue(self, v17, v18);
  dispatch_assert_queue_V2(v19);

  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v180[3] = 0;
  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x3032000000;
  v173 = sub_225074150;
  v174 = sub_225073634;
  v175 = 0;
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x3032000000;
  v168[3] = sub_225074150;
  v168[4] = sub_225073634;
  v169 = 0;
  v121 = PCSFPCreatePEMData();
  v22 = objc_msgSend_identityManager(self, v20, v21);
  v123 = objc_msgSend_PCSServiceStringFromCKServiceType_(v22, v23, serviceType);

  v27 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, v24, type);
  if (!dataCopy)
  {
    v44 = objc_msgSend_callbackQueue(self, v25, v26);
    v43 = v167;
    v167[0] = MEMORY[0x277D85DD0];
    v167[1] = 3221225472;
    v167[2] = sub_22529B194;
    v167[3] = &unk_2785456A0;
    v167[4] = handlerCopy;
    dispatch_async(v44, v167);

LABEL_13:
    v45 = 0;
    v46 = v43[4];
    goto LABEL_48;
  }

  if (objc_msgSend_isPreviouslyUndecryptablePCS_(self, v25, dataCopy))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "A decrypt attempt on this exact PCS data has failed before and no useful identities have arrived since. Failing the decryption.", buf, 2u);
    }

    if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_deviceContext(self, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_testDeviceReference(v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v33, v37))
    {
      if (serviceType || (objc_msgSend_currentServiceIsManatee(self, v31, v32) & 1) == 0)
      {
        v111 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v31, v32);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v111, v112, a2, self, @"CKDPCSManager.m", 1598, @"We failed a prior decryption of this PCS data a with manatee identity when current identity is non-manatee. Did our identity change?");
      }
    }

    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5011, @"PCS data wasn't decrypted because a prior attempt failed after key sync.");
    v39 = v171[5];
    v171[5] = v38;

    v42 = objc_msgSend_callbackQueue(self, v40, v41);
    v43 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22529B1B4;
    block[3] = &unk_27854B6F0;
    block[4] = handlerCopy;
    block[5] = &v170;
    dispatch_async(v42, block);

    goto LABEL_13;
  }

  v46 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v28, v29);
  if (!objc_msgSend_isAppleInternalInstall(v46, v47, v48))
  {
LABEL_25:

    goto LABEL_26;
  }

  IsManatee = objc_msgSend_currentServiceIsManatee(self, v49, v50);

  if (IsManatee)
  {
    v54 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v52, v53);
    v46 = objc_msgSend_containerIdentifierToForceFatalManateeZoneDecryptionFailure(v54, v55, v56);

    if (objc_msgSend_length(v46, v57, v58))
    {
      v61 = objc_msgSend_containerID(self, v59, v60);
      v64 = objc_msgSend_containerIdentifier(v61, v62, v63);
      if (objc_msgSend_isEqualToString_(v46, v65, v64))
      {

LABEL_20:
        v68 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v67, *MEMORY[0x277CBC120], 5011, @"Forcing a manatee decryption failure due to behavior option override");
        v69 = v171[5];
        v171[5] = v68;

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Forcing a manatee decryption failure due to behavior option override.", buf, 2u);
        }

        objc_msgSend__locked_markMissingIdentitiesFromFailedDecryptError_serviceName_(self, v71, v182[3], v123);
        v74 = objc_msgSend_date(MEMORY[0x277CBEAA8], v72, v73);
        objc_msgSend_setLastMissingManateeIdentityErrorDateForCurrentService_(self, v75, v74);

        objc_msgSend_markUndecryptablePCS_(self, v76, dataCopy);
        v79 = objc_msgSend_callbackQueue(self, v77, v78);
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = sub_22529B1E0;
        v163[3] = &unk_27854B6F0;
        v164 = handlerCopy;
        v165 = &v170;
        dispatch_async(v79, v163);

        v45 = 0;
        goto LABEL_48;
      }

      isEqualToString = objc_msgSend_isEqualToString_(v46, v66, @"*");

      if (isEqualToString)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  v80 = objc_msgSend_identityManager(self, v52, v53);
  v81 = (v171 + 5);
  obj = v171[5];
  v83 = objc_msgSend_copyIdentitySetWithType_options_error_(v80, v82, serviceType, 2, &obj);
  objc_storeStrong(v81, obj);
  v177[3] = v83;

  v46 = dispatch_group_create();
  if (v171[5])
  {
    v115 = 0;
    v86 = 0;
  }

  else
  {
    if (v177[3])
    {
      v87 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v84, v85);
      isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v87, v88, v89);

      if (isAppleInternalInstall)
      {
        v115 = CKDescriptionForIdentitySet(v177[3], v91);
      }

      else
      {
        v115 = 0;
      }

      if (type == 6)
      {
        v94 = objc_alloc(MEMORY[0x277D42F00]);
        v95 = v177[3];
        v96 = (v171 + 5);
        v161 = v171[5];
        v93 = objc_msgSend_initWithSharingRequestData_identitySet_error_(v94, v97, dataCopy, v95, &v161);
        objc_storeStrong(v96, v161);
        v100 = (v171 + 5);
        v99 = v171[5];
        if (!v93 || v99)
        {
          v105 = v99;
          v86 = 0;
          v182[3] = v105;
        }

        else
        {
          v160 = 0;
          v86 = objc_msgSend_exportAcceptedSharingRequestWithError_(v93, v98, &v160);
          objc_storeStrong(v100, v160);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v106 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v108 = v177[3];
          v109 = v171[5];
          v110 = @". Error: ";
          if (!v109)
          {
            v110 = &stru_28385ED00;
            v109 = &stru_28385ED00;
          }

          *buf = 138412802;
          v188 = v108;
          v189 = 2114;
          v190 = v110;
          v191 = 2112;
          v192 = v109;
          _os_log_debug_impl(&dword_22506F000, v106, OS_LOG_TYPE_DEBUG, "Attempted to decrypt and export sharing invitation token with identity set %@%{public}@%@", buf, 0x20u);
        }
      }

      else
      {
        dispatch_group_enter(v46);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v101 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v188 = dataCopy;
          v189 = 2114;
          v190 = v123;
          v191 = 2114;
          v192 = dCopy;
          _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "Starting to unwrap PCS data %{public}@ with identities for service %{public}@ operation %{public}@.", buf, 0x20u);
        }

        v103 = *MEMORY[0x277D42F48];
        v185[0] = *MEMORY[0x277D42F58];
        v185[1] = v103;
        v186[0] = v27;
        v186[1] = MEMORY[0x277CBEC38];
        v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, v186, v185, 2);
        v146 = MEMORY[0x277D85DD0];
        v147 = 3221225472;
        v148 = sub_22529B20C;
        v149 = &unk_27854BE80;
        v150 = dataCopy;
        v156 = &v176;
        v151 = v123;
        v157 = v180;
        v158 = &v170;
        v152 = dCopy;
        selfCopy = self;
        servicesCopy = services;
        v154 = v46;
        v155 = v27;
        PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync();

        v86 = 0;
        v93 = v150;
      }
    }

    else
    {
      v92 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v84, *MEMORY[0x277CBC120], 5000, @"Couldn't get a service identity set");
      v115 = 0;
      v86 = 0;
      v93 = v171[5];
      v171[5] = v92;
    }
  }

  queue = objc_msgSend_synchronizeQueue(self, v84, v85);
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = sub_22529B914;
  v124[3] = &unk_27854BFC0;
  v136 = &v170;
  v137 = v180;
  v45 = v86;
  v125 = v45;
  v126 = v115;
  v127 = dataCopy;
  selfCopy2 = self;
  v138 = v168;
  v139 = &v181;
  v129 = v121;
  v140 = &v176;
  retryCopy = retry;
  v130 = v27;
  v131 = v123;
  v132 = dCopy;
  v141 = a2;
  serviceTypeCopy = serviceType;
  v133 = dateCopy;
  v135 = handlerCopy;
  typeCopy = type;
  servicesCopy2 = services;
  v134 = analyticsCopy;
  v107 = v115;
  dispatch_group_notify(v46, queue, v124);

LABEL_48:
  _Block_object_dispose(v168, 8);

  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v176, 8);
  _Block_object_dispose(v180, 8);
  _Block_object_dispose(&v181, 8);
}

- (BOOL)_checkUnitTestOverridesForDecryptionFailuresWithState:(BOOL)state error:(id *)error
{
  if (*MEMORY[0x277CBC810])
  {
    if (state)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (!objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, a2, @"ForceUserKeyRegistrySyncRetryOnDecryption"))
    {
      return 1;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      v11 = "Forcing user key sync retry for unit tests";
      v12 = v19;
LABEL_25:
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
      if (!error)
      {
        return 1;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, state);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDPCSManager.m", 1870, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 1870);

  if (!state)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, a2, @"ForceMissingIdentitiesErrorOnDecryptionRetry"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Forcing CKUnderlyingErrorPCSNoPublicIdentity after user key sync due to unit tests", buf, 2u);
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (error)
    {
LABEL_8:
      *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5000, @"Failed to decrypt zone PCS because of unit tests");
    }
  }

LABEL_9:
  if (!objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v7, @"ForceDecryptFailedErrorOnDecryptionRetry"))
  {
    return 1;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v17 = 0;
    v11 = "Forcing CKUnderlyingErrorPCSDecryptFailed after user key sync due to unit tests";
    v12 = &v17;
    goto LABEL_25;
  }

LABEL_21:
  if (error)
  {
LABEL_22:
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5004, @"Failed to decrypt zone PCS because of unit tests");
  }

  return 1;
}

- (void)_createPCSFromData:(id)data ofType:(unint64_t)type usingPCSServiceType:(unint64_t)serviceType tryDecryptingWithOtherServices:(BOOL)services withSyncKeyRegistryRetry:(BOOL)retry lastModifiedDate:(id)date requestorOperationID:(id)d completionHandler:(id)self0
{
  dataCopy = data;
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  v22 = objc_msgSend_synchronizeQueue(self, v20, v21);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22529D3FC;
  v27[3] = &unk_27854BFE8;
  v27[4] = self;
  v28 = dataCopy;
  typeCopy = type;
  serviceTypeCopy = serviceType;
  servicesCopy = services;
  retryCopy = retry;
  v29 = dateCopy;
  v30 = dCopy;
  v31 = handlerCopy;
  v23 = handlerCopy;
  v24 = dCopy;
  v25 = dateCopy;
  v26 = dataCopy;
  dispatch_async(v22, v27);
}

- (void)createZonePCSFromData:(id)data usingServiceIdentityWithType:(unint64_t)type zonePCSModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  dateCopy = date;
  dataCopy = data;
  v18 = objc_msgSend_containerID(self, v16, v17);
  v21 = objc_msgSend_specialContainerType(v18, v19, v20) != 25;

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22529D55C;
  v24[3] = &unk_27854C010;
  v25 = handlerCopy;
  v22 = handlerCopy;
  objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(self, v23, dataCopy, 3, type, v21, 1, dateCopy, dCopy, v24);
}

- (void)createIngestedPPPCSDataFromInvitationData:(id)data shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22529D6CC;
  v13[3] = &unk_27854C010;
  v14 = handlerCopy;
  v11 = handlerCopy;
  objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(self, v12, data, 6, 0, 0, 1, date, d, v13);
}

- (BOOL)availableIdentityForService:(unint64_t)service error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_225074150;
  v15 = sub_225073634;
  v16 = 0;
  v7 = objc_msgSend_synchronizeQueue(self, a2, service);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529D894;
  block[3] = &unk_278545DF8;
  block[5] = &v11;
  block[6] = service;
  block[4] = self;
  dispatch_sync(v7, block);

  if (error)
  {
    *error = v12[5];
  }

  v8 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)createSharePCSFromData:(id)data ofType:(unint64_t)type withService:(unint64_t)service completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v12 = handlerCopy;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_225074150;
  v45 = sub_225073634;
  v46 = 0;
  if (dataCopy)
  {
    v13 = PCSFPCreatePEMData();
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v16 = objc_msgSend_identityManager(self, v14, v15);
    v17 = v42;
    obj = v42[5];
    v19 = objc_msgSend_copyIdentitySetWithType_options_error_(v16, v18, service, 2, &obj);
    objc_storeStrong(v17 + 5, obj);

    v40 = v19;
    if (v38[3])
    {
      v21 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, v20, type);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22529DD28;
      v27[3] = &unk_27854C060;
      v33 = &v37;
      v22 = v21;
      v28 = v22;
      v34 = &v41;
      typeCopy = type;
      v29 = dataCopy;
      selfCopy = self;
      v31 = v13;
      v32 = v12;
      objc_msgSend__onSynchronizeQueue_(self, v23, v27);
    }

    else
    {
      v24 = v42[5];
      if (!v24)
      {
        v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 5000, @"Couldn't get a service identity set");
        v26 = v42[5];
        v42[5] = v25;

        v24 = v42[5];
      }

      (v12)[2](v12, 0, v24);
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  _Block_object_dispose(&v41, 8);
}

- (BOOL)decryptSharedZonePCSData:(id)data withInvitedPCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (objc_msgSend_pcs(dataCopy, v9, v10) && objc_msgSend_zoneishPCS(dataCopy, v11, v12))
  {
    goto LABEL_18;
  }

  if (objc_msgSend_pcs(dataCopy, v11, v12))
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = objc_msgSend_pcsData(dataCopy, v13, v14);

  if (!v15 || (objc_msgSend_pcsData(dataCopy, v13, v14), v26 = objc_claimAutoreleasedReturnValue(), v47 = 0, v15 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(self, v27, v26, 3, s, &v47), v20 = v47, v26, v18 = 0, v15) && !v20)
  {
LABEL_5:
    if (objc_msgSend_zoneishPCS(dataCopy, v13, v14) || (objc_msgSend_zoneishPCSData(dataCopy, v16, v17), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
    {
      v18 = 0;
    }

    else
    {
      v30 = objc_msgSend_zoneishPCSData(dataCopy, v16, v29);
      v46 = 0;
      v18 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(self, v31, v30, 1, v15, &v46);
      v20 = v46;

      if (!v18 || v20)
      {
        goto LABEL_8;
      }
    }

    objc_msgSend_setPcs_(dataCopy, v16, v15);
    objc_msgSend_setZoneishPCS_(dataCopy, v19, v18);
    v20 = 0;
  }

LABEL_8:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v20)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v42 = v21;
      v45 = objc_msgSend_zoneID(dataCopy, v43, v44);
      *buf = 138412546;
      v49 = v45;
      v50 = 2112;
      v51 = v20;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Error creating shared zone PCS using invited PCS for zone %@: %@", buf, 0x16u);

      if (error)
      {
        goto LABEL_17;
      }
    }

    else if (error)
    {
LABEL_17:
      v22 = v20;
      v23 = 0;
      *error = v20;
      goto LABEL_23;
    }

    v23 = 0;
    goto LABEL_23;
  }

LABEL_18:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v24 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v32 = v24;
    v35 = objc_msgSend_pcs(dataCopy, v33, v34);
    v38 = objc_msgSend_zoneishPCS(dataCopy, v36, v37);
    v41 = objc_msgSend_zoneID(dataCopy, v39, v40);
    *buf = 138412802;
    v49 = v35;
    v50 = 2112;
    v51 = v38;
    v52 = 2112;
    v53 = v41;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Created shared zone PCS: %@ and zoneish PCS: %@ for zone %@", buf, 0x20u);
  }

  v20 = 0;
  v23 = 1;
LABEL_23:

  return v23;
}

- (id)etagFromZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  sCopy = s;
  v17 = *MEMORY[0x277D85DE8];
  if (s)
  {
    v12 = 0;
    v6 = objc_msgSend_dataFromZonePCS_error_(self, a2, s, &v12);
    v8 = v12;
    if (v6)
    {
      sCopy = objc_msgSend_etagFromPCSData_(CKDPCSManager, v7, v6);
      if (!error)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = sCopy;
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Couldn't create data from zone PCS %@: %@", buf, 0x16u);
      }

      sCopy = 0;
      if (!error)
      {
        goto LABEL_5;
      }
    }

    v9 = v8;
    *error = v8;
    goto LABEL_5;
  }

LABEL_6:

  return sCopy;
}

- (BOOL)zonePCSNeedsKeyRolled:(_OpaquePCSShareProtection *)rolled isZoneishZone:(BOOL)zone bypassAllowlistedContainers:(BOOL)containers
{
  zoneCopy = zone;
  v91 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_deviceContext(self, a2, rolled);
  if ((objc_msgSend_forceEnableReadOnlyManatee(self, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v12, v13);
    v19 = objc_msgSend_rollZonePCSIdentities(v16, v17, v18);

    v22 = MEMORY[0x277CBC880];
    v23 = MEMORY[0x277CBC858];
    if ((v19 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = *v23;
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Not checking PCS shouldRoll hint because we're asked not to!", buf, 2u);
      }

      goto LABEL_2;
    }

    rolledCopy = rolled;
    IsManatee = objc_msgSend_currentServiceIsManatee(self, v20, v21);
    v85 = v9;
    v27 = objc_msgSend_accountDataSecurityObserver(v9, v25, v26);
    v30 = objc_msgSend_account(self, v28, v29);
    v32 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v27, v31, v30, 1);

    if (*v22 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = IsManatee | v32;
    v34 = *v23;
    if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
    {
      v75 = @"is not";
      if (v32)
      {
        v75 = @"is";
      }

      *buf = 138412290;
      v88 = v75;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Walrus %@ enabled", buf, 0xCu);
      if (v33)
      {
LABEL_9:
        if (!containers)
        {
          v39 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v35, v36);
          v42 = v39;
          if (zoneCopy)
          {
            v43 = objc_msgSend_allowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers(v39, v40, v41);
          }

          else
          {
            v43 = objc_msgSend_allowZoneKeyRollingInPerRecordPCSZonesForAllContainers(v39, v40, v41);
          }

          v44 = v43;

          if (v44 & v32) != 1 || (objc_msgSend_currentServiceIsManatee(self, v35, v36))
          {
            v37 = 1;
            goto LABEL_21;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v68 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_INFO))
          {
            v69 = v68;
            v72 = objc_msgSend_containerID(self, v70, v71);
            v73 = v72;
            v74 = @"NO";
            if (zoneCopy)
            {
              v74 = @"YES";
            }

            *buf = 138412546;
            v88 = v72;
            v89 = 2112;
            v90 = v74;
            _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Bypassing zone key rolling container allow-list restriction due to walrus enabled, non manatee, and behavior option for container %@, isZoneishZone:%@", buf, 0x16u);
          }
        }

        v37 = 0;
LABEL_21:
        if (*MEMORY[0x277CBC810] == 1)
        {
          v45 = objc_msgSend_containerID(self, v35, v36);
          isKeyRollingUnitTestContainerID = objc_msgSend__isKeyRollingUnitTestContainerID_(self, v46, v45);

          v48 = isKeyRollingUnitTestContainerID ^ 1;
        }

        else
        {
          v48 = 1;
        }

        v49 = objc_msgSend_containerID(self, v35, v36);
        if (objc_msgSend__isAllowlistedKeyRollingContainerID_(self, v50, v49))
        {

          goto LABEL_31;
        }

        if ((v37 & v48) != 1)
        {
LABEL_31:
          v58 = objc_msgSend_accountDataSecurityObserver(v85, v51, v52);
          v61 = objc_msgSend_account(self, v59, v60);
          v86 = 0;
          error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v58, v62, v61, 0, 1, &v86);
          v64 = v86;

          if (error)
          {
            if (rolledCopy)
            {
              v14 = PCSFPShouldRoll();
LABEL_42:
              v9 = v85;

              goto LABEL_3;
            }
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v65 = *v23;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = @"Last CoreCDP error was ";
              v67 = &stru_28385ED00;
              if (v64)
              {
                v67 = v64;
              }

              else
              {
                v66 = &stru_28385ED00;
              }

              *buf = 138543618;
              v88 = v66;
              v89 = 2112;
              v90 = v67;
              _os_log_impl(&dword_22506F000, v65, OS_LOG_TYPE_INFO, "Not checking PCS shouldRoll hint because manatee isn't available. %{public}@%@", buf, 0x16u);
            }
          }

          v14 = 0;
          goto LABEL_42;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v53 = *v23;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = v53;
          v57 = objc_msgSend_containerID(self, v55, v56);
          *buf = 138412290;
          v88 = v57;
          _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Not checking PCS shouldRoll hint because we're not allowed to in container %@", buf, 0xCu);
        }

LABEL_56:
        v14 = 0;
        v9 = v85;
        goto LABEL_3;
      }
    }

    else if (v33)
    {
      goto LABEL_9;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v76 = *v23;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = v76;
      v80 = objc_msgSend_identityManager(self, v78, v79);
      v83 = objc_msgSend_serviceName(v80, v81, v82);
      *buf = 138543362;
      v88 = v83;
      _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_INFO, "Not checking PCS shouldRoll hint because we're using a non-manatee service identity: %{public}@", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_2:
  v14 = 0;
LABEL_3:

  return v14;
}

- (BOOL)zonePCSNeedsUpdate:(_OpaquePCSShareProtection *)update
{
  if (!update)
  {
    return 0;
  }

  if (objc_msgSend_forceEnableReadOnlyManatee(self, a2, update))
  {
    return 0;
  }

  return PCSFPSupportFeature() ^ 1;
}

- (BOOL)isSinglyWrappedRemindersZone:(_OpaquePCSShareProtection *)zone
{
  if (!zone)
  {
    return 0;
  }

  v4 = objc_msgSend_containerID(self, a2, zone);
  v7 = objc_msgSend_specialContainerType(v4, v5, v6);

  if (v7 != 25)
  {
    return 0;
  }

  v8 = PCSFPCopyPublicIdentities();
  if (objc_msgSend_count(v8, v9, v10) == 1)
  {
    v13 = objc_msgSend_firstObject(v8, v11, v12);
    v14 = PCSPublicIdentityGetPublicID();
  }

  else
  {
    v14 = 0;
  }

  v16 = objc_msgSend_identityManager(self, v11, v12);
  v18 = objc_msgSend_liverpoolServiceOwnsPublicID_(v16, v17, v14);

  return v18;
}

- (id)rollMasterKeyForRecordPCS:(_OpaquePCSShareProtection *)s isZoneishRecord:(BOOL)record bypassAllowlistedContainers:(BOOL)containers forOperation:(id)operation
{
  recordCopy = record;
  v99 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v13 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v11, v12);
  v16 = objc_msgSend_rollRecordPCSMasterKeys(v13, v14, v15);

  if ((v16 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Aborting master key roll because of behavior option override", buf, 2u);
    }

    goto LABEL_11;
  }

  if (recordCopy)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (containers)
  {
    goto LABEL_6;
  }

  v23 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v17, v18);
  v26 = v23;
  if (recordCopy)
  {
    v27 = objc_msgSend_allowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers(v23, v24, v25);

    if (!v27)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v28 = objc_msgSend_allowRecordKeyRollingInPerRecordPCSZonesForAllContainers(v23, v24, v25);

    if ((v28 & 1) == 0)
    {
LABEL_20:
      v20 = 1;
      goto LABEL_21;
    }
  }

  v29 = objc_msgSend_deviceContext(self, v17, v18);
  v32 = objc_msgSend_accountDataSecurityObserver(v29, v30, v31);
  v35 = objc_msgSend_account(self, v33, v34);
  if ((objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v32, v36, v35, 1) & 1) == 0)
  {

    goto LABEL_20;
  }

  IsManatee = objc_msgSend_currentServiceIsManatee(self, v37, v38);

  if ((IsManatee & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v79 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v80 = v79;
      v83 = objc_msgSend_containerID(self, v81, v82);
      v84 = v83;
      v85 = @"NO";
      if (recordCopy)
      {
        v85 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v83;
      *&buf[12] = 2112;
      *&buf[14] = v85;
      _os_log_impl(&dword_22506F000, v80, OS_LOG_TYPE_INFO, "Bypassing record master key rolling container allow-list restriction due to walrus enabled, non manatee, and behavior option for container %@, isZoneishRecord:%@", buf, 0x16u);
    }

LABEL_6:
    v20 = 0;
    goto LABEL_21;
  }

  v20 = 1;
LABEL_21:
  if (*MEMORY[0x277CBC810] == 1)
  {
    v40 = objc_msgSend_containerID(self, v17, v18);
    isKeyRollingUnitTestContainerID = objc_msgSend__isKeyRollingUnitTestContainerID_(self, v41, v40);

    v43 = isKeyRollingUnitTestContainerID ^ 1;
  }

  else
  {
    v43 = 1;
  }

  v44 = objc_msgSend_containerID(self, v17, v18);
  if (objc_msgSend__isAllowlistedKeyRollingContainerID_(self, v45, v44))
  {

    goto LABEL_31;
  }

  if ((v20 & v43) != 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v49 = v48;
      v52 = objc_msgSend_containerID(self, v50, v51);
      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Aborting master key roll because container %@ is not on the allowlist", buf, 0xCu);
    }

LABEL_11:
    v22 = 0;
    goto LABEL_55;
  }

LABEL_31:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  if (!s)
  {
    v66 = MEMORY[0x277CBC560];
    v67 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v46, v19);
    v22 = objc_msgSend_errorWithDomain_code_format_(v66, v68, *MEMORY[0x277CBC120], v67, @"Cannot roll master key for a nil record PCS");
    v57 = 0;
    goto LABEL_42;
  }

  v53 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v46, v47);
  v56 = objc_msgSend_maxRecordPCSMasterKeyRolls(v53, v54, v55);

  v57 = PCSFPCopyAvailableMasterKeyIDs();
  if (objc_msgSend_count(v57, v58, v59) <= v56)
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_22529F65C;
    v88[3] = &unk_27854BDE0;
    v88[4] = &v89;
    v88[5] = buf;
    v88[6] = s;
    objc_msgSend__onSynchronizeQueue_(self, v60, v88);
    if (*(v90 + 24) == 1 && !*(*&buf[8] + 24))
    {
      if (*MEMORY[0x277CBC880] == -1)
      {
LABEL_50:
        v76 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *v93 = 138412290;
          sCopy2 = s;
          _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Rolled master key for record PCS %@", v93, 0xCu);
        }

        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = sub_22529F6A0;
        v86[3] = &unk_27854C080;
        v87 = recordCopy;
        objc_msgSend_updateCloudKitMetrics_(operationCopy, v77, v86);
        goto LABEL_53;
      }

      v74 = *MEMORY[0x277CBC878];
LABEL_66:
      dispatch_once(MEMORY[0x277CBC880], v74);
      goto LABEL_50;
    }

    v70 = MEMORY[0x277CBC560];
    v71 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v69, v19);
    v22 = objc_msgSend_errorWithDomain_code_error_format_(v70, v72, *MEMORY[0x277CBC120], v71, *(*&buf[8] + 24), @"Couldn't roll master key for record PCS");
LABEL_42:
    v73 = *(*&buf[8] + 24);
    if (v73)
    {
      CFRelease(v73);
      *(*&buf[8] + 24) = 0;
    }

    v74 = *MEMORY[0x277CBC878];
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v74);
      }

      v75 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *v93 = 138412546;
        sCopy2 = s;
        v95 = 2112;
        v96 = v22;
        _os_log_error_impl(&dword_22506F000, v75, OS_LOG_TYPE_ERROR, "Couldn't roll master key for record PCS %@: %@", v93, 0x16u);
      }

      goto LABEL_54;
    }

    if (*MEMORY[0x277CBC880] == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_66;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v61 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    v64 = objc_msgSend_count(v57, v62, v63);
    *v93 = 134218240;
    sCopy2 = v56;
    v95 = 2048;
    v96 = v64;
    _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Aborting master key roll due to cap of %lu rolls. Current number of keys: %lu", v93, 0x16u);
  }

  objc_msgSend_updateCloudKitMetrics_(operationCopy, v65, &unk_28385DA40);
LABEL_53:
  v22 = 0;
LABEL_54:
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(buf, 8);

LABEL_55:

  return v22;
}

- (id)counterSignRecordPCS:(_OpaquePCSShareProtection *)s zonePCS:(_OpaquePCSShareProtection *)cS
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_currentServiceIsManatee(self, a2, s))
  {
    if (s && cS)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      if (dlsym(0xFFFFFFFFFFFFFFFELL, "CKMarkForCounterSigning"))
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_22529FA98;
        v26[3] = &unk_27854BD18;
        v26[4] = buf;
        v26[5] = s;
        v26[6] = cS;
        objc_msgSend__onSynchronizeQueue_(self, v7, v26);
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v9 = MEMORY[0x277CBC560];
          v10 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v8, 1);
          v12 = objc_msgSend_errorWithDomain_code_error_format_(v9, v11, *MEMORY[0x277CBC120], v10, 0, @"Couldn't counter-sign record PCS");
LABEL_22:
          _Block_object_dispose(buf, 8);
          goto LABEL_23;
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v16 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "CKMarkForCounterSigning is not defined. Skipping counterSignRecordPCS", v25, 2u);
        }
      }

      v12 = 0;
      goto LABEL_22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = s;
      *&buf[12] = 2112;
      *&buf[14] = cS;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Didn't get decrypted record PCS and zone PCS. Record PCS: %@, Zone PCS: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5005, @"Couldn't counter-sign record PCS due to missing record or zone PCS");
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = v13;
      v21 = objc_msgSend_identityManager(self, v19, v20);
      v24 = objc_msgSend_serviceName(v21, v22, v23);
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Not counter-signing record PCS because current service %{public}@ is not manatee", buf, 0xCu);
    }

    v12 = 0;
  }

LABEL_23:

  return v12;
}

- (id)updateZoneIdentityForRecordPCS:(_OpaquePCSShareProtection *)s usingZonePCS:(_OpaquePCSShareProtection *)cS isZoneishRecord:(BOOL)record bypassAllowlistedContainers:(BOOL)containers
{
  recordCopy = record;
  v77 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, s);
  v14 = objc_msgSend_rollRecordPCSMasterKeys(v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Not updating zone PCS identity for record PCS because we're asked not to!", buf, 2u);
    }

    goto LABEL_8;
  }

  if (containers)
  {
    goto LABEL_3;
  }

  v20 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
  v23 = v20;
  if (recordCopy)
  {
    v24 = objc_msgSend_allowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers(v20, v21, v22);

    if (!v24)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v25 = objc_msgSend_allowRecordKeyRollingInPerRecordPCSZonesForAllContainers(v20, v21, v22);

    if ((v25 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v26 = objc_msgSend_deviceContext(self, v15, v16);
  v29 = objc_msgSend_accountDataSecurityObserver(v26, v27, v28);
  v32 = objc_msgSend_account(self, v30, v31);
  if (objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v29, v33, v32, 1))
  {
    IsManatee = objc_msgSend_currentServiceIsManatee(self, v34, v35);

    if ((IsManatee & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v38 = v37;
        v41 = objc_msgSend_containerID(self, v39, v40);
        v42 = v41;
        v43 = @"NO";
        if (recordCopy)
        {
          v43 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Bypassing updating record sharee (zone key) container allow-list restriction due to walrus enabled, non-manatee and behavior option for container %@, isZoneishRecord: %@", buf, 0x16u);
      }

LABEL_3:
      v17 = 0;
      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_22:
  v17 = 1;
LABEL_23:
  if (*MEMORY[0x277CBC810] == 1)
  {
    v44 = objc_msgSend_containerID(self, v15, v16);
    isKeyRollingUnitTestContainerID = objc_msgSend__isKeyRollingUnitTestContainerID_(self, v45, v44);

    v47 = isKeyRollingUnitTestContainerID ^ 1;
  }

  else
  {
    v47 = 1;
  }

  v48 = objc_msgSend_containerID(self, v15, v16);
  if (objc_msgSend__isAllowlistedKeyRollingContainerID_(self, v49, v48))
  {

    goto LABEL_33;
  }

  if ((v17 & v47) != 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v52 = v51;
      v55 = objc_msgSend_containerID(self, v53, v54);
      *buf = 138412290;
      *&buf[4] = v55;
      _os_log_impl(&dword_22506F000, v52, OS_LOG_TYPE_INFO, "Not updating zone PCS identity because container %@ is not on the allowlist", buf, 0xCu);
    }

LABEL_8:
    v19 = 0;
    goto LABEL_52;
  }

LABEL_33:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  if (!cS)
  {
    v59 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v50, *MEMORY[0x277CBC120], 5005, @"Cannot roll key for a nil zone PCS");
    goto LABEL_40;
  }

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_2252A0274;
  v64[3] = &unk_27854C0A8;
  v64[6] = s;
  v64[7] = cS;
  v64[4] = &v65;
  v64[5] = buf;
  objc_msgSend__onSynchronizeQueue_(self, v50, v64);
  v57 = *(*&buf[8] + 24);
  if (*(v66 + 24) != 1 || v57)
  {
    v59 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 5005, v57, @"Couldn't update zone identity on PCS");
LABEL_40:
    v19 = v59;
    v60 = *(*&buf[8] + 24);
    if (v60)
    {
      CFRelease(v60);
      *(*&buf[8] + 24) = 0;
    }

    v58 = *MEMORY[0x277CBC878];
    if (v19)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v58);
      }

      v61 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *v69 = 138412802;
        sCopy2 = s;
        v71 = 2112;
        cSCopy2 = cS;
        v73 = 2112;
        v74 = v19;
        _os_log_error_impl(&dword_22506F000, v61, OS_LOG_TYPE_ERROR, "Couldn't update zone identity on pcs %@ using zone PCS %@: %@", v69, 0x20u);
      }

      goto LABEL_51;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    v58 = *MEMORY[0x277CBC878];
LABEL_55:
    dispatch_once(MEMORY[0x277CBC880], v58);
  }

LABEL_48:
  v62 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *v69 = 138412546;
    sCopy2 = s;
    v71 = 2112;
    cSCopy2 = cS;
    _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Updated zone identity on pcs %@ with zone PCS %@", v69, 0x16u);
  }

  v19 = 0;
LABEL_51:
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(buf, 8);
LABEL_52:

  return v19;
}

- (BOOL)isPreviouslyUndecryptablePCS:(id)s
{
  sCopy = s;
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (objc_msgSend_length(sCopy, v8, v9))
  {
    v14 = objc_msgSend_CKSHA256(sCopy, v10, v11);
    if (v14)
    {
      v15 = objc_msgSend_undecryptablePCSDataHashes(self, v12, v13);
      v17 = objc_msgSend_containsObject_(v15, v16, v14);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)markUndecryptablePCS:(id)s
{
  v20 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (objc_msgSend_length(sCopy, v8, v9))
  {
    v12 = objc_msgSend_CKSHA256(sCopy, v10, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "PCS data with hash %{public}@ is undecryptable. Recording this so we fail early on future attempts.", &v18, 0xCu);
    }

    if (v12)
    {
      v16 = objc_msgSend_undecryptablePCSDataHashes(self, v14, v15);
      objc_msgSend_addObject_(v16, v17, v12);
    }
  }
}

- (id)removePrivateKeysForKeyIDs:(id)ds fromPCS:(_OpaquePCSShareProtection *)s
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  dsCopy = ds;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(dsCopy, v7, &v21, v33, 16);
  if (v9)
  {
    v10 = *v22;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(dsCopy);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2252A07E0;
      v20[3] = &unk_278546268;
      v20[5] = &v25;
      v20[6] = s;
      v20[4] = v12;
      objc_msgSend__onSynchronizeQueue_(self, v8, v20);
      if ((v26[3] & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(dsCopy, v8, &v21, v33, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5005, @"Failed to clean up the share PCS");

    if (!v13)
    {
      goto LABEL_15;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      sCopy = s;
      v31 = 2112;
      sCopy2 = v13;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Failed to clean up share pcs %@: %@", buf, 0x16u);
    }
  }

  else
  {
LABEL_9:

LABEL_15:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_count(dsCopy, v16, v17);
      *buf = 134218242;
      sCopy = v18;
      v31 = 2112;
      sCopy2 = s;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Cleaned up %lu private keys from pcs %@", buf, 0x16u);
    }

    v13 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (int64_t)keyrollingErrorCodeForPCSOfType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return 5020;
  }

  else
  {
    return qword_225447DF0[type - 1];
  }
}

- (id)rollIdentityForSharePCS:(_OpaquePCSShareProtection *)s ofType:(unint64_t)type removeAllExistingPrivateKeys:(BOOL)keys error:(id *)error
{
  keysCopy = keys;
  v51 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v11 = PCSFPCopyKeyIDs();
  v12 = PCSFPCreatePrivateKey();
  v14 = v12;
  if (v12)
  {
    if (keysCopy)
    {
      v35 = v11;
      typeCopy = type;
      v34 = v12;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = v11;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v38, v50, 16);
      if (v18)
      {
        v19 = *v39;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = sub_2252A0C28;
            v37[3] = &unk_278546268;
            v37[5] = &v42;
            v37[6] = s;
            v37[4] = v21;
            objc_msgSend__onSynchronizeQueue_(self, v17, v37);
            if ((v43[3] & 1) == 0)
            {
              v26 = MEMORY[0x277CBC560];
              v27 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v17, typeCopy);
              v22 = objc_msgSend_errorWithDomain_code_format_(v26, v28, *MEMORY[0x277CBC120], v27, @"Failed to clean up the share PCS when creating a new private key");

              v11 = v35;
              v14 = v34;
              goto LABEL_18;
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v38, v50, 16);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v11 = v35;
      v14 = v34;
      type = typeCopy;
    }

    if (type == 5 || type == 3)
    {
      v22 = objc_msgSend_replacePrimaryKeyInPCS_ofType_(self, v13, s, type);
    }

    else
    {
      v22 = 0;
    }

LABEL_18:
    CFRelease(v14);
  }

  else
  {
    v23 = MEMORY[0x277CBC560];
    v24 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v13, type);
    v22 = objc_msgSend_errorWithDomain_code_format_(v23, v25, *MEMORY[0x277CBC120], v24, @"Failed to create a new private key for share PCS");
  }

  v29 = *MEMORY[0x277CBC878];
  if (v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v30 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    *buf = 138412546;
    sCopy2 = s;
    v48 = 2112;
    v49 = v22;
    _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to roll the identity for share pcs %@: %@", buf, 0x16u);
    if (error)
    {
LABEL_24:
      v31 = v22;
      *error = v22;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v32 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      sCopy2 = s;
      _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Rolled the identity for share pcs %@", buf, 0xCu);
    }
  }

LABEL_29:
  _Block_object_dispose(&v42, 8);

  return v11;
}

- (unint64_t)sizeOfPCS:(_OpaquePCSShareProtection *)s
{
  sCopy = s;
  v29 = *MEMORY[0x277D85DE8];
  if (s)
  {
    v5 = objc_autoreleasePoolPush();
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_225074150;
    v19 = sub_225073634;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2252A0EB4;
    v14[3] = &unk_27854BDE0;
    v14[5] = &v21;
    v14[6] = sCopy;
    v14[4] = &v15;
    objc_msgSend__onSynchronizeQueue_(self, v6, v14);
    if (v22[3] || (v11 = v16[5]) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v13 = v22[3];
        *buf = 138412546;
        v26 = sCopy;
        v27 = 2112;
        v28 = v13;
        _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Failed to serialize PCS %@: %@", buf, 0x16u);
      }

      v10 = v22[3];
      if (v10)
      {
        CFRelease(v10);
        sCopy = 0;
        v22[3] = 0;
      }

      else
      {
        sCopy = 0;
      }
    }

    else
    {
      sCopy = objc_msgSend_length(v11, v7, v8);
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    objc_autoreleasePoolPop(v5);
  }

  return sCopy;
}

- (unint64_t)maxPcsBytes
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_maxPCSSizeForKeyRolls(v3, v4, v5);

  return v6;
}

- (BOOL)isPCSSizeTooBigForKeyRoll:(unint64_t)roll
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_maxPcsBytes(self, a2, roll);
  if (v4)
  {
    v5 = v4 >= roll;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v6)
  {
    v7 = v4;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v10 = 134218240;
      rollCopy = roll;
      v12 = 2048;
      v13 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "PCS is too big for key rolling: %lu bytes (cap: %lu bytes)", &v10, 0x16u);
    }
  }

  return v6;
}

- (BOOL)isPCSTooBigForKeyRoll:(_OpaquePCSShareProtection *)roll
{
  v5 = objc_msgSend_sizeOfPCS_(self, a2, roll);

  return objc_msgSend_isPCSSizeTooBigForKeyRoll_(self, v4, v5);
}

- (id)updateIdentityAndRollKeyForZonePCS:(_OpaquePCSShareProtection *)s usingServiceIdentityWithType:(unint64_t)type forOperation:(id)operation
{
  v79 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_rollZonePCSIdentities(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_identityManager(self, v15, v16);
    v63 = objc_msgSend_PCSServiceStringFromCKServiceType_(v17, v18, type);

    IsManatee = objc_msgSend_currentServiceIsManatee(self, v19, v20);
    v24 = objc_msgSend_deviceContext(self, v22, v23);
    v27 = objc_msgSend_accountDataSecurityObserver(v24, v25, v26);
    v30 = objc_msgSend_account(self, v28, v29);
    v32 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v27, v31, v30, 1);

    v33 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = IsManatee | v32;
    v35 = MEMORY[0x277CBC858];
    v36 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v60 = @"is not";
      if (v32)
      {
        v60 = @"is";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v60;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Walrus %@ enabled", &buf, 0xCu);
      if (v34)
      {
LABEL_6:
        *&buf = 0;
        *(&buf + 1) = &buf;
        v77 = 0x2020000000;
        v78 = 0;
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        if (s)
        {
          v39 = objc_msgSend_identityManager(self, v37, v38);
          v65 = 0;
          v41 = objc_msgSend_copyIdentitySetWithType_options_error_(v39, v40, type, 1, &v65);
          v42 = v65;

          if (!v41 || v42)
          {
            v50 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 5000, v42, @"Couldn't get a service identity set", v63);
            goto LABEL_24;
          }

          if (objc_msgSend_isPCSTooBigForKeyRoll_(self, v43, s))
          {
            if (*v33 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v45 = *v35;
            if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
            {
              *v70 = 0;
              _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Aborting zone identity key roll due to current zone PCS being too large.", v70, 2u);
            }

            objc_msgSend_updateCloudKitMetrics_(operationCopy, v46, &unk_28385DA60, v63);
            v48 = 0;
            v49 = @"Cannot roll key for too large zone PCS";
          }

          else
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = sub_2252A17FC;
            v64[3] = &unk_27854C0A8;
            v64[6] = s;
            v64[7] = v41;
            v64[4] = &v66;
            v64[5] = &buf;
            objc_msgSend__onSynchronizeQueue_(self, v44, v64);
            v48 = *(*(&buf + 1) + 24);
            v49 = @"Couldn't roll key for zone PCS";
            if (*(v67 + 24) == 1 && !v48)
            {
              v50 = objc_msgSend_replacePrimaryKeyInPCS_ofType_(self, v47, s, 3, 0, @"Couldn't roll key for zone PCS");
              if (v50)
              {
                if (*v33 != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v59 = *v35;
                if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
                {
                  *v70 = 138412546;
                  sCopy3 = s;
                  v72 = 2112;
                  v73 = v50;
                  _os_log_error_impl(&dword_22506F000, v59, OS_LOG_TYPE_ERROR, "Failed to roll primary key of the zone PCS %@: %@", v70, 0x16u);
                }
              }

              goto LABEL_22;
            }
          }

          v50 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v47, *MEMORY[0x277CBC120], 5018, v48, v49, v63);
        }

        else
        {
          v50 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5018, @"Cannot roll key for a nil zone PCS");
          v41 = 0;
        }

LABEL_22:
        v42 = 0;
LABEL_24:
        v53 = *(*(&buf + 1) + 24);
        if (v53)
        {
          CFRelease(v53);
          *(*(&buf + 1) + 24) = 0;
        }

        if (v41)
        {
          CFRelease(v41);
        }

        v54 = *MEMORY[0x277CBC878];
        if (v50)
        {
          if (*v33 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v54);
          }

          v55 = *v35;
          if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
          {
            *v70 = 138412802;
            sCopy3 = s;
            v72 = 2114;
            v73 = v63;
            v74 = 2112;
            v75 = v50;
            _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "Couldn't roll key for zone PCS %@ with current service %{public}@: %@", v70, 0x20u);
          }
        }

        else
        {
          if (*v33 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v54);
          }

          v56 = *v35;
          if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
          {
            *v70 = 138412546;
            sCopy3 = s;
            v72 = 2114;
            v73 = v63;
            _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Rolled key for zone PCS %@ with current service: %{public}@", v70, 0x16u);
          }

          objc_msgSend_updateCloudKitMetrics_(operationCopy, v57, &unk_28385DA80, v63);
        }

        v52 = v50;
        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(&buf, 8);

        v58 = v63;
LABEL_54:

        goto LABEL_55;
      }
    }

    else if (v34)
    {
      goto LABEL_6;
    }

    if (*v33 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = v63;
    v61 = *v35;
    if (os_log_type_enabled(*v35, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v63;
      _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Not rolling zone PCS identities because we're using a non-manatee service identity: %{public}@", &buf, 0xCu);
    }

    v52 = 0;
    goto LABEL_54;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v51 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Not rolling zone PCS identities because we're asked not to!", &buf, 2u);
  }

  v52 = 0;
LABEL_55:

  return v52;
}

- (BOOL)canRollShareKeys
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v7 = objc_msgSend_rollZoneSharingKeys(v4, v5, v6);

  if (v7)
  {
    IsManatee = objc_msgSend_currentServiceIsManatee(self, v8, v9);
    v13 = objc_msgSend_deviceContext(self, v11, v12);
    v16 = objc_msgSend_accountDataSecurityObserver(v13, v14, v15);
    v19 = objc_msgSend_account(self, v17, v18);
    v21 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v16, v20, v19, 1);

    v22 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = IsManatee | v21;
    v24 = MEMORY[0x277CBC858];
    v25 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v28 = @"is not";
      if (v21)
      {
        v28 = @"is";
      }

      v38 = 138412290;
      v39 = v28;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Walrus %@ enabled", &v38, 0xCu);
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else if (v23)
    {
LABEL_6:
      LOBYTE(v26) = 1;
      return v26;
    }

    if (*v22 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *v24;
    v26 = os_log_type_enabled(*v24, OS_LOG_TYPE_INFO);
    if (v26)
    {
      v30 = v29;
      v33 = objc_msgSend_identityManager(self, v31, v32);
      v36 = objc_msgSend_serviceName(v33, v34, v35);
      v38 = 138543362;
      v39 = v36;
      _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Not rolling zone sharing PCS identities because current service %{public}@ is not manatee", &v38, 0xCu);

      goto LABEL_18;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC858];
    v26 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO);
    if (v26)
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Not rolling zone sharing PCS identities due to behavior option", &v38, 2u);
LABEL_18:
      LOBYTE(v26) = 0;
    }
  }

  return v26;
}

- (id)keyRollForZoneWideShareWithZonePCS:(id)s sharePCS:(id)cS forOperation:(id)operation
{
  v130 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  operationCopy = operation;
  v13 = objc_msgSend_zoneID(sCopy, v11, v12);
  canRollShareKeys = objc_msgSend_canRollShareKeys(self, v14, v15);
  v19 = MEMORY[0x277CBC858];
  if ((canRollShareKeys & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v19;
    if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
LABEL_66:
      v61 = *v19;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v125 = v13;
        _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Skipped key roll for zone-wide share in zone %@", buf, 0xCu);
      }

      goto LABEL_68;
    }

    *buf = 138412290;
    v125 = v13;
    _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Attempting to roll share keys for zone-wide share in zone %@ but this operation is not permitted", buf, 0xCu);
    v30 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_64;
  }

  if (!objc_msgSend_pcs(cSCopy, v17, v18) || !objc_msgSend_pcs(sCopy, v20, v21))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *v19;
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v71 = v31;
      *buf = 138412802;
      v125 = objc_msgSend_pcs(cSCopy, v72, v73);
      v126 = 2112;
      v127 = objc_msgSend_pcs(sCopy, v74, v75);
      v128 = 2112;
      v129 = objc_msgSend_zoneishPCS(sCopy, v76, v77);
      _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "Didn't get decrypted share, shared zone pcs to roll- aborting. Share PCS: %@, Zone PCS: %@, Zoneish PCS: %@", buf, 0x20u);
    }

    v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 5005, @"Couldn't roll zone wide share PCS due to missing share or zone PCS");
    v29 = 0;
    v28 = 0;
    goto LABEL_15;
  }

  if (objc_msgSend_zoneishPCS(sCopy, v22, v23))
  {
    objc_msgSend_zoneishPCS(sCopy, v24, v25);
    v26 = PCSFPCopyObject();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *v19;
    if (!os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
    {
      v26 = 0;
      goto LABEL_31;
    }

    *buf = 0;
    _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "Didn't get decrypted zoneish pcs to roll- solidering on. We're probably using per-record PCS.", buf, 2u);
    v26 = 0;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_31:
  cf = v26;
  v38 = *v19;
  if (os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v125 = v13;
    _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Rolling identities for zone-wide share and zone pcs for zone %@", buf, 0xCu);
  }

  objc_msgSend_pcs(sCopy, v39, v40);
  v41 = PCSFPCopyObject();
  objc_msgSend_invitedPCS(cSCopy, v42, v43);
  v44 = PCSFPCopyObject();
  objc_msgSend_publicPCS(cSCopy, v45, v46);
  v47 = PCSFPCopyObject();
  v123 = 0;
  v112 = v41;
  LOBYTE(v41) = objc_msgSend_removeSharePCS_fromRecordPCS_error_(self, v48, v44, v41, &v123);
  v49 = v123;
  v30 = v49;
  v113 = v44;
  v115 = v47;
  if ((v41 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = v112;
    v57 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v125 = v13;
    v126 = 2112;
    v127 = v30;
    v58 = "Couldn't remove old invited PCS from zone PCS for zone-wide share in zone %@: %@";
    goto LABEL_82;
  }

  v122 = v49;
  v51 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(self, v50, v44, v47, &v122);
  v52 = v122;

  if ((v51 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v125 = v13;
      v126 = 2112;
      v127 = v52;
      _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "Couldn't remove old invited PCS from public PCS for zone-wide share in zone %@: %@", buf, 0x16u);
    }

    v59 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v52;
    goto LABEL_50;
  }

  v121 = v52;
  v54 = objc_msgSend_rollIdentityForSharePCS_ofType_removeAllExistingPrivateKeys_error_(self, v53, v44, 5, 1, &v121);
  v30 = v121;

  if (v30)
  {
    v56 = v112;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v57 = *v19;
    if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v125 = v13;
    v126 = 2112;
    v127 = v30;
    v58 = "Failed to roll identity for invited PCS for zone-wide share in zone %@: %@";
LABEL_82:
    _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x16u);
LABEL_43:
    v59 = 0;
    v28 = 0;
LABEL_44:
    v29 = 0;
    goto LABEL_51;
  }

  v120 = 0;
  v56 = v112;
  v64 = objc_msgSend_addSharePCS_toRecordPCS_error_(self, v55, v44, v112, &v120);
  v65 = v120;
  v30 = v65;
  if ((v64 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v57 = *v19;
    if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v125 = v13;
    v126 = 2112;
    v127 = v30;
    v58 = "Failed to add rolled invited PCS key to zone PCS for zone-wide share in zone %@: %@";
    goto LABEL_82;
  }

  v119 = v65;
  v111 = objc_msgSend_addSharePCS_toRecordPCS_error_(self, v66, v44, v115, &v119);
  v67 = v119;

  if ((v111 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = v67;
    v57 = *v19;
    if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v125 = v13;
    v126 = 2112;
    v127 = v30;
    v58 = "Failed to add rolled invited PCS key to public PCS for zone-wide share in zone %@: %@";
    goto LABEL_82;
  }

  v118 = v67;
  v28 = objc_msgSend_rollIdentityForSharePCS_ofType_removeAllExistingPrivateKeys_error_(self, v68, v112, 3, 0, &v118);
  v30 = v118;

  if (v30)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v70 = *v19;
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v125 = v13;
      v126 = 2112;
      v127 = v30;
      _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Failed to roll identity for zone PCS for zone %@: %@", buf, 0x16u);
    }

    v59 = 0;
    goto LABEL_44;
  }

  v78 = objc_msgSend_sizeOfPCS_(self, v69, v112);
  v80 = objc_msgSend_sizeOfPCS_(self, v79, cf) + v78;
  v82 = objc_msgSend_sizeOfPCS_(self, v81, v113);
  v84 = objc_msgSend_sizeOfPCS_(self, v83, v115);
  if (!objc_msgSend_isPCSSizeTooBigForKeyRoll_(self, v85, v80 + v82 + v84))
  {
    if (!cf)
    {
      v29 = 0;
      v98 = 0;
      goto LABEL_104;
    }

    v117 = 0;
    v29 = objc_msgSend_dataFromRecordPCS_error_(self, v86, cf, &v117);
    v30 = v117;
    v56 = v112;
    if (v30 || !v29)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v106 = *v19;
      if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_112;
      }

      *buf = 138412290;
      v125 = v30;
      v107 = "Couldn't serialize zoneish PCS for share roll: %@";
    }

    else
    {
      CFRelease(cf);
      v116 = 0;
      v90 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(self, v89, v29, 1, v112, &v116);
      v91 = v116;
      v93 = v90;
      v30 = v91;
      cf = v93;
      if (!v91 && v93)
      {
        v94 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(self, v92, v93, v112, 1, 1);
        if (v94)
        {
          v30 = v94;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v96 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_124;
          }

          *buf = 138412546;
          v125 = v13;
          v126 = 2112;
          v127 = v30;
          v97 = "Couldn't update identity on zoneish PCS for zone %@: %@";
LABEL_123:
          _os_log_error_impl(&dword_22506F000, v96, OS_LOG_TYPE_ERROR, v97, buf, 0x16u);
LABEL_124:
          v59 = 0;
LABEL_50:
          v56 = v112;
          goto LABEL_51;
        }

        v108 = objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(self, v95, cf, 1, 1, operationCopy);
        if (v108)
        {
          v30 = v108;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v96 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_124;
          }

          *buf = 138412546;
          v125 = v13;
          v126 = 2112;
          v127 = v30;
          v97 = "Failed to roll master key for zoneish PCS for zone %@: %@";
          goto LABEL_123;
        }

        v110 = objc_msgSend_removePrivateKeysForKeyIDs_fromPCS_(self, v109, v28, v112);
        if (v110)
        {
          v30 = v110;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v96 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_124;
          }

          *buf = 138412546;
          v125 = v13;
          v126 = 2112;
          v127 = v30;
          v97 = "Couldn't clean up old private keys from PCS for zone %@: %@";
          goto LABEL_123;
        }

        v98 = cf;
LABEL_104:
        v56 = v112;
        objc_msgSend_setPcs_(sCopy, v86, v112);
        cf = v98;
        objc_msgSend_setZoneishPCS_(sCopy, v99, v98);
        v102 = objc_msgSend_invitedPCS(cSCopy, v100, v101);
        objc_msgSend_setPreKeyRollInvitedPCS_(cSCopy, v103, v102);
        objc_msgSend_setInvitedPCS_(cSCopy, v104, v113);
        objc_msgSend_setPublicPCS_(cSCopy, v105, v115);
        v59 = 0;
        v30 = 0;
        goto LABEL_51;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v106 = *v19;
      if (!os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
LABEL_112:
        v59 = 0;
        goto LABEL_51;
      }

      *buf = 138412290;
      v125 = v30;
      v107 = "Couldn't decode zoneishPCS data for share roll: %@";
    }

    _os_log_error_impl(&dword_22506F000, v106, OS_LOG_TYPE_ERROR, v107, buf, 0xCu);
    goto LABEL_112;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v56 = v112;
  v87 = *v19;
  if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v125 = v13;
    _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Skipping zone key roll because combined PCS is too big in zone %@", buf, 0xCu);
  }

  objc_msgSend_updateCloudKitMetrics_(operationCopy, v88, &unk_28385DAA0);
  v29 = 0;
  v30 = 0;
  v59 = 1;
LABEL_51:
  if (v56)
  {
    CFRelease(v56);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (!v115)
  {
    if (!v59)
    {
      goto LABEL_15;
    }

LABEL_64:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    goto LABEL_66;
  }

  CFRelease(v115);
  if (v59)
  {
    goto LABEL_64;
  }

LABEL_15:
  v33 = *MEMORY[0x277CBC878];
  if (v30)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

    v34 = *v19;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v125 = v13;
      v126 = 2112;
      v127 = v30;
      _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Failed to roll keys for zone-wide share in zone %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

    v35 = *v19;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v125 = v13;
      _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Successfully rolled keys for zone-wide share in zone %@", buf, 0xCu);
    }

    objc_msgSend_updateCloudKitMetrics_(operationCopy, v36, &unk_28385DAC0);
    v30 = 0;
  }

LABEL_68:
  v62 = v30;

  return v30;
}

- (id)replacePrimaryKeyInPCS:(_OpaquePCSShareProtection *)s ofType:(unint64_t)type
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252A2BD8;
  v13[3] = &unk_27854BDE0;
  v13[5] = &v18;
  v13[6] = s;
  v13[4] = &v14;
  objc_msgSend__onSynchronizeQueue_(self, a2, v13);
  if (*(v15 + 24) == 1 && !v19[3])
  {
    v10 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CBC560];
    v8 = objc_msgSend_keyrollingErrorCodeForPCSOfType_(self, v6, type);
    v10 = objc_msgSend_errorWithDomain_code_error_format_(v7, v9, *MEMORY[0x277CBC120], v8, v19[3], @"Couldn't replace primary key of PCS");
    v11 = v19[3];
    if (v11)
    {
      CFRelease(v11);
      v19[3] = 0;
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)keyRollIfNeededForPerRecordPCS:(id)s needsRollAndCounterSign:(BOOL)sign forOperation:(id)operation didRoll:(BOOL *)roll
{
  signCopy = sign;
  v138 = *MEMORY[0x277D85DE8];
  sCopy = s;
  operationCopy = operation;
  IsManatee = objc_msgSend_currentServiceIsManatee(self, v12, v13);
  v17 = objc_msgSend_deviceContext(self, v15, v16);
  v20 = objc_msgSend_accountDataSecurityObserver(v17, v18, v19);
  v23 = objc_msgSend_account(self, v21, v22);
  v25 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v20, v24, v23, 1);

  v26 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = IsManatee | v25;
  v28 = MEMORY[0x277CBC858];
  v29 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    if (v27)
    {
      goto LABEL_5;
    }

LABEL_47:
    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v84 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
    {
      v85 = v84;
      v88 = objc_msgSend_identityManager(self, v86, v87);
      v91 = objc_msgSend_serviceName(v88, v89, v90);
      v134 = 138543362;
      v135 = v91;
      _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Not rolling record PCS keys because current service %{public}@ is not manatee", &v134, 0xCu);
    }

    goto LABEL_51;
  }

  v83 = @"is not";
  if (v25)
  {
    v83 = @"is";
  }

  v134 = 138412290;
  v135 = v83;
  _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Walrus %@ enabled", &v134, 0xCu);
  if ((v27 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_5:
  v32 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v30, v31);
  v35 = objc_msgSend_allowRecordKeyRollingInPerRecordPCSZonesForAllContainers(v32, v33, v34);

  if ((v35 & v25) == 1 && (objc_msgSend_currentServiceIsManatee(self, v36, v37) & 1) == 0)
  {
    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
    {
      v119 = v39;
      v122 = objc_msgSend_containerID(self, v120, v121);
      v134 = 138412290;
      v135 = v122;
      _os_log_debug_impl(&dword_22506F000, v119, OS_LOG_TYPE_DEBUG, "Allowing record PCS key rolling in container %@ due to walrus enabled, non manatee, and behavior option override", &v134, 0xCu);
    }

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v40 = objc_msgSend_containerID(self, v36, v37);
    isKeyRollingUnitTestContainerID = objc_msgSend__isKeyRollingUnitTestContainerID_(self, v41, v40);

    v43 = isKeyRollingUnitTestContainerID ^ 1;
  }

  else
  {
    v43 = 1;
  }

  v44 = objc_msgSend_containerID(self, v36, v37);
  if (objc_msgSend_specialContainerType(v44, v45, v46) != 34)
  {

    if ((v38 & v43) != 1)
    {
      goto LABEL_23;
    }

    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_INFO))
    {
      v50 = v49;
      v53 = objc_msgSend_containerID(self, v51, v52);
      v134 = 138412290;
      v135 = v53;
      _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_INFO, "Not checking PCS shouldRoll hint because we're not allowed to in container %@", &v134, 0xCu);
    }

LABEL_51:
    v70 = 0;
    goto LABEL_76;
  }

LABEL_23:
  if (!objc_msgSend_pcs(sCopy, v47, v48) || (objc_msgSend_zonePCSData(sCopy, v54, v55), v56 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend_pcs(v56, v57, v58), v56, !v59))
  {
    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v77 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v109 = v77;
      v112 = objc_msgSend_pcs(sCopy, v110, v111);
      v115 = objc_msgSend_zonePCSData(sCopy, v113, v114);
      v118 = objc_msgSend_pcs(v115, v116, v117);
      v134 = 138412546;
      v135 = v112;
      v136 = 2112;
      v137 = v118;
      _os_log_error_impl(&dword_22506F000, v109, OS_LOG_TYPE_ERROR, "Didn't get decrypted record pcs and zone pcs to roll- aborting. Record PCS: %@, Zone PCS: %@", &v134, 0x16u);
    }

    v70 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v78, *MEMORY[0x277CBC120], 5005, @"Couldn't roll record PCS due to missing record or zone PCS");
    goto LABEL_71;
  }

  objc_msgSend_pcs(sCopy, v60, v61);
  v62 = PCSFPCopyObject();
  if (PCSFPShouldRoll())
  {
    v65 = objc_msgSend_zonePCSData(sCopy, v63, v64);
    v68 = objc_msgSend_pcs(v65, v66, v67);
    v70 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(self, v69, v62, v68, 0, 1);

    if (v70)
    {
      if (*v26 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v71 = *v28;
      if (!os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      v72 = v71;
      v75 = objc_msgSend_recordID(sCopy, v73, v74);
      v134 = 138412546;
      v135 = v75;
      v136 = 2112;
      v137 = v70;
      v76 = "Couldn't update identity on record PCS for record %@: %@";
      goto LABEL_42;
    }
  }

  else if (!signCopy)
  {
    goto LABEL_68;
  }

  v79 = objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(self, v63, v62, 0, 1, operationCopy);
  if (v79)
  {
    v70 = v79;
    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v80 = *v28;
    if (!os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v72 = v80;
    v75 = objc_msgSend_recordID(sCopy, v81, v82);
    v134 = 138412546;
    v135 = v75;
    v136 = 2112;
    v137 = v70;
    v76 = "Failed to roll master key for record PCS for record %@: %@";
LABEL_42:
    _os_log_error_impl(&dword_22506F000, v72, OS_LOG_TYPE_ERROR, v76, &v134, 0x16u);
LABEL_43:

    goto LABEL_69;
  }

  if (roll)
  {
    *roll = 1;
  }

  if (*v26 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v92 = *v28;
  if (os_log_type_enabled(*v28, OS_LOG_TYPE_INFO))
  {
    v94 = v92;
    v97 = objc_msgSend_recordID(sCopy, v95, v96);
    v134 = 138543362;
    v135 = v97;
    _os_log_impl(&dword_22506F000, v94, OS_LOG_TYPE_INFO, "Successfully rolled keys for record %{public}@", &v134, 0xCu);
  }

  if (signCopy)
  {
    v98 = objc_msgSend_zonePCSData(sCopy, v63, v93);
    objc_msgSend_pcs(v98, v99, v100);
    v101 = PCSFPCopyObject();

    v103 = objc_msgSend_counterSignRecordPCS_zonePCS_(self, v102, v62, v101);
    v104 = *MEMORY[0x277CBC878];
    v105 = *v26;
    if (v103)
    {
      v70 = v103;
      if (v105 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v104);
      }

      v106 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_69;
      }

      v72 = v106;
      v75 = objc_msgSend_recordID(sCopy, v107, v108);
      v134 = 138412546;
      v135 = v75;
      v136 = 2112;
      v137 = 0;
      _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Error counter-signing record %@: %@", &v134, 0x16u);
      goto LABEL_43;
    }

    if (v105 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v104);
    }

    v123 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_INFO))
    {
      v124 = v123;
      v127 = objc_msgSend_recordID(sCopy, v125, v126);
      v134 = 138412290;
      v135 = v127;
      _os_log_impl(&dword_22506F000, v124, OS_LOG_TYPE_INFO, "Successfully counter-signed record %@ if it was necessary", &v134, 0xCu);
    }
  }

LABEL_68:
  objc_msgSend_setPcs_(sCopy, v63, v62);
  v70 = 0;
LABEL_69:
  if (v62)
  {
    CFRelease(v62);
  }

LABEL_71:
  if (v70)
  {
    if (*v26 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v128 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v130 = v128;
      v133 = objc_msgSend_recordID(sCopy, v131, v132);
      v134 = 138412546;
      v135 = v133;
      v136 = 2112;
      v137 = v70;
      _os_log_error_impl(&dword_22506F000, v130, OS_LOG_TYPE_ERROR, "Failed to roll keys for record PCS for record %@: %@", &v134, 0x16u);
    }
  }

LABEL_76:

  return v70;
}

- (id)keyRollForZoneWideShareRecordPCS:(id)s sharedZonePCS:(id)cS sharePCS:(id)pCS forOperation:(id)operation
{
  v123 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  pCSCopy = pCS;
  operationCopy = operation;
  v16 = objc_msgSend_zoneID(cSCopy, v14, v15);
  if (objc_msgSend_canRollShareKeys(self, v17, v18))
  {
    if (!objc_msgSend_pcs(sCopy, v19, v20) || !objc_msgSend_pcs(cSCopy, v21, v22) || !objc_msgSend_pcs(pCSCopy, v23, v24))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v62 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v68 = v62;
        *buf = 138412802;
        v118 = objc_msgSend_pcs(pCSCopy, v69, v70);
        v119 = 2112;
        v120 = objc_msgSend_pcs(cSCopy, v71, v72);
        v121 = 2112;
        v122 = objc_msgSend_pcs(sCopy, v73, v74);
        _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Didn't get decrypted share, shared zone and record pcs to roll- aborting. Share PCS: %@, Zone PCS: %@, record PCS: %@", buf, 0x20u);
      }

      v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 5005, @"Couldn't roll zone-wide share record PCS due to missing share or zone PCS");
      v29 = 0;
      if (!v32)
      {
        goto LABEL_76;
      }

      goto LABEL_27;
    }

    objc_msgSend_pcs(sCopy, v25, v26);
    v27 = PCSFPCopyObject();
    v116 = 0;
    v29 = objc_msgSend_dataFromRecordPCS_error_(self, v28, v27, &v116);
    v32 = v116;
    if (v32 || !v29)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v65 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buf = 138412290;
      v118 = v32;
      v66 = "Couldn't serialize zone-wide share record PCS for share roll: %@";
    }

    else
    {
      if (v27)
      {
        CFRelease(v27);
      }

      v33 = objc_msgSend_pcs(cSCopy, v30, v31);
      v115 = 0;
      v27 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(self, v34, v29, 1, v33, &v115);
      v32 = v115;
      if (!v32 && v27)
      {
        v109 = v29;
        objc_msgSend_publicPCS(pCSCopy, v35, v36);
        v37 = v27;
        v38 = PCSFPCopyObject();
        v40 = objc_msgSend_sizeOfPCS_(self, v39, v37);
        v43 = objc_msgSend_pcs(cSCopy, v41, v42);
        v45 = objc_msgSend_sizeOfPCS_(self, v44, v43);
        v48 = objc_msgSend_pcs(pCSCopy, v46, v47);
        v50 = v45 + objc_msgSend_sizeOfPCS_(self, v49, v48);
        cf = v38;
        v52 = objc_msgSend_sizeOfPCS_(self, v51, v38);
        isPCSSizeTooBigForKeyRoll = objc_msgSend_isPCSSizeTooBigForKeyRoll_(self, v53, v50 + v52 + v40);
        if (isPCSSizeTooBigForKeyRoll)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v57 = v37;
          v58 = *MEMORY[0x277CBC858];
          v29 = v109;
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v118 = v16;
            _os_log_error_impl(&dword_22506F000, v58, OS_LOG_TYPE_ERROR, "Skipping zone-wide share record key roll because combined PCS is too big in zone %@", buf, 0xCu);
          }

          objc_msgSend_updateCloudKitMetrics_(operationCopy, v59, &unk_28385DAE0);
          v32 = 0;
          goto LABEL_72;
        }

        v75 = objc_msgSend_pcs(cSCopy, v54, v55);
        v77 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(self, v76, v37, v75, 0, 1);
        v57 = v37;
        if (v77)
        {
          v32 = v77;
          v29 = v109;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v79 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v118 = v16;
            v119 = 2112;
            v120 = v32;
            v80 = "Couldn't update identity on zone-wide share record PCS for zone %@: %@";
LABEL_71:
            _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, v80, buf, 0x16u);
          }
        }

        else
        {
          v81 = objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(self, v78, v37, 0, 1, operationCopy);
          v29 = v109;
          if (v81)
          {
            v32 = v81;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v79 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v118 = v16;
              v119 = 2112;
              v120 = v32;
              v80 = "Failed to roll master key for zone-wide share record PCS for zone %@: %@";
              goto LABEL_71;
            }
          }

          else
          {
            v84 = objc_msgSend_preKeyRollInvitedPCS(pCSCopy, v82, v83);
            v114 = 0;
            v86 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(self, v85, v84, v57, &v114);
            v32 = v114;
            if (v86)
            {
              v89 = objc_msgSend_preKeyRollInvitedPCS(pCSCopy, v87, v88);
              v113 = v32;
              v91 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(self, v90, v89, cf, &v113);
              v107 = v113;

              if (v91)
              {
                v94 = objc_msgSend_pcs(pCSCopy, v92, v93);
                v112 = v107;
                v106 = objc_msgSend_addSharePCS_toRecordPCS_error_(self, v95, v94, v57, &v112);
                v32 = v112;

                if (v106)
                {
                  v98 = objc_msgSend_pcs(pCSCopy, v96, v97);
                  v111 = v32;
                  v100 = objc_msgSend_addSharePCS_toRecordPCS_error_(self, v99, v98, cf, &v111);
                  v108 = v111;

                  if (v100)
                  {
                    objc_msgSend_setPcs_(sCopy, v101, v57);
                    objc_msgSend_setPublicPCS_(pCSCopy, v102, cf);
                    v32 = v108;
                    LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
                  }

                  else
                  {
                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v105 = *MEMORY[0x277CBC858];
                    LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
                    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v118 = v16;
                      v119 = 2112;
                      v120 = v108;
                      _os_log_error_impl(&dword_22506F000, v105, OS_LOG_TYPE_ERROR, "Failed to add rolled invited PCS key to public PCS for zone-wide share record PCS for zone %@: %@", buf, 0x16u);
                    }

                    v32 = v108;
                  }
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
                  v79 = *MEMORY[0x277CBC858];
                  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v118 = v16;
                    v119 = 2112;
                    v120 = v32;
                    v80 = "Failed to add rolled invited PCS key to zone-wide share record PCS for zone %@: %@";
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                v32 = v107;
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
                v79 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v118 = v16;
                  v119 = 2112;
                  v120 = v107;
                  v80 = "Failed to remove the old invited PCS from public PCS for zone-wide share record PCS for zone %@: %@";
                  goto LABEL_71;
                }
              }
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
              v79 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v118 = v16;
                v119 = 2112;
                v120 = v32;
                v80 = "Failed to remove the old invited PCS key from zone-wide share record PCS for zone %@: %@";
                goto LABEL_71;
              }
            }
          }
        }

LABEL_72:
        CFRelease(v57);
        v67 = cf;
        if (!cf)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v65 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        if (v27)
        {
LABEL_39:
          LOBYTE(isPCSSizeTooBigForKeyRoll) = 0;
          v67 = v27;
LABEL_73:
          CFRelease(v67);
LABEL_74:
          if (!v32)
          {
            if (isPCSSizeTooBigForKeyRoll)
            {
LABEL_80:
              v32 = 0;
LABEL_81:
              v61 = v32;

              goto LABEL_82;
            }

LABEL_76:
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v103 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v118 = v16;
              _os_log_impl(&dword_22506F000, v103, OS_LOG_TYPE_INFO, "Successfully rolled keys for zone-wide share record PCS in zone %@", buf, 0xCu);
            }

            goto LABEL_80;
          }

LABEL_27:
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v64 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v118 = v16;
            v119 = 2112;
            v120 = v32;
            _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failed to roll keys for zone-wide share record PCS in zone %@: %@", buf, 0x16u);
          }

          goto LABEL_81;
        }

LABEL_57:
        if (!v32)
        {
          goto LABEL_76;
        }

        goto LABEL_27;
      }

      *buf = 138412290;
      v118 = v32;
      v66 = "Couldn't decode zone-wide share record PCS data for share roll: %@";
    }

    _os_log_error_impl(&dword_22506F000, v65, OS_LOG_TYPE_ERROR, v66, buf, 0xCu);
    if (v27)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v60 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v118 = v16;
    _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "Attempting to roll record PCS keys for zone-wide share in zone %@ but this operation is not permitted", buf, 0xCu);
  }

  v61 = 0;
LABEL_82:

  return v61;
}

- (BOOL)addParentZonePCS:(_OpaquePCSShareProtection *)s toChildZonePCS:(_OpaquePCSShareProtection *)cS error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBC880];
  v7 = MEMORY[0x277CBC858];
  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Refusing to add a nil parent zone PCS to child zone PCS", buf, 2u);
    }

    if (error)
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1017, @"You can't add a nil parent zone PCS to a child zone PCS");
LABEL_23:
      v19 = 0;
      v22 = 0;
      v28 = 0;
      *error = v25;
      goto LABEL_43;
    }

LABEL_24:
    v19 = 0;
    v22 = 0;
    goto LABEL_37;
  }

  v9 = MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC878];
  v11 = *MEMORY[0x277CBC880];
  if (!cS)
  {
    if (v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v26 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Refusing to add parent zone PCS to a nil child zone PCS", buf, 2u);
    }

    if (error)
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1017, @"You can't add a parent zone PCS to a nil child zone PCS");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v11 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v10);
  }

  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = s;
    *&buf[12] = 2112;
    *&buf[14] = cS;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Adding parent zone PCS\n%@\nTo child zone PCS\n%@", buf, 0x16u);
  }

  v16 = PCSFPCopyCurrentPrivateKey();
  if (v16)
  {
    v18 = PCSIdentityCopyPublicIdentity();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(cSCopy) = 0;
    if (v18)
    {
      v19 = PCSPublicIdentityGetPublicID();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_2252A46F0;
      v34[3] = &unk_27854BD18;
      v34[4] = buf;
      v34[5] = cS;
      v34[6] = v18;
      objc_msgSend__onSynchronizeQueue_(self, v20, v34);
      if (*(*&buf[8] + 24))
      {
        v22 = 0;
      }

      else
      {
        v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 5002, @"Couldn't add parent zone PCS to child zone PCS");
      }

      CFRelease(v18);
    }

    else
    {
      v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5002, @"Couldn't get a public identity from the parent zone PCS");
      v19 = 0;
    }

    CFRelease(v16);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5002, @"Couldn't get a private identity from the parent zone PCS");
    v19 = 0;
  }

  v29 = *v9;
  if (v22)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v30 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = s;
      *&buf[12] = 2112;
      *&buf[14] = cS;
      *&buf[22] = 2112;
      cSCopy = v22;
      _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Warn: Unable to add parent zone PCS (%@) to child zone PCS (%@): %@", buf, 0x20u);
    }

    if (error)
    {
      v31 = v22;
      v28 = 0;
      *error = v22;
      goto LABEL_43;
    }

LABEL_37:
    v28 = 0;
    goto LABEL_43;
  }

  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v29);
  }

  v32 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = s;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2112;
    cSCopy = cS;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Added parent zone PCS %@ (%@) to child zone PCS %@.", buf, 0x20u);
  }

  v22 = 0;
  v28 = 1;
LABEL_43:

  return v28;
}

- (BOOL)removeParentZonePCSFromChildZonePCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  if (s)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = sub_225074150;
    v30 = sub_225073634;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_2252A4AB0;
    v20 = &unk_27854C0D0;
    v21 = &v22;
    _PCSFPEnumeratePublicIdentities();
    v7 = *MEMORY[0x277CBC878];
    if (v23[3])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v8 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Found a parent zone PCS identity to remove from child zone PCS.", buf, 2u);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_2252A4AFC;
      v15[3] = &unk_27854C0F8;
      v15[4] = &v22;
      v15[5] = v26;
      v15[6] = &v32;
      v15[7] = s;
      objc_msgSend__onSynchronizeQueue_(self, v9, v15);
      v10 = *(v33 + 24);
      if (error && (v33[3] & 1) == 0)
      {
        *error = *(v27 + 5);
        v10 = *(v33 + 24);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v13 = *MEMORY[0x277CBC858];
      v10 = 1;
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "No parent zone PCS identities found in the child zone PCS.", buf, 2u);
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v26, 8);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Refusing to remove parent zone PCS from a nil child zone PCS", v26, 2u);
    }

    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1017, @"You can't remove parent zone PCS from a nil child zone PCS");
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

- (_OpaquePCSShareProtection)createRecordPCSWithZonePCS:(_OpaquePCSShareProtection *)s sharePCS:(_OpaquePCSShareProtection *)cS createLite:(BOOL)lite error:(id *)error
{
  liteCopy = lite;
  v75 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_225074150;
  v55[4] = sub_225073634;
  v56 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v10 = MEMORY[0x277CBC878];
  v11 = MEMORY[0x277CBC880];
  v12 = MEMORY[0x277CBC858];
  if (!s)
  {
    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5002, @"Can't create a record PCS with a nil zone PCS");
    v18 = v21;
    if (error)
    {
      v22 = v21;
      *error = v18;
    }

    goto LABEL_14;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2252A5378;
  v49[3] = &unk_27854C120;
  liteCopy2 = lite;
  v49[4] = &v57;
  v49[5] = &v61;
  v49[6] = v55;
  v49[7] = self;
  v49[8] = s;
  objc_msgSend__onSynchronizeQueue_(self, a2, v49);
  if (v62[3] || !v58[3])
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v10);
    }

    v15 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v41 = v62[3];
      *buf = 138412290;
      sCopy2 = v41;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Couldn't create a new PCSShareProtectionRef: %@", buf, 0xCu);
    }

    v17 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5002, 0, v62[3], 0, 0, @"Couldn't create a new record PCS");
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    v20 = v58[3];
    if (!v20)
    {
      goto LABEL_14;
    }

    CFRelease(v20);
LABEL_11:
    v58[3] = 0;
    goto LABEL_14;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2252A54C8;
  v48[3] = &unk_27854BDE0;
  v48[4] = &v51;
  v48[5] = &v57;
  v48[6] = s;
  objc_msgSend__onSynchronizeQueue_(self, v14, v48);
  if ((v52[3] & 1) == 0)
  {
    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 5002, @"Couldn't add zone PCS to record PCS");
    v18 = v38;
    if (error)
    {
      v39 = v38;
      *error = v18;
    }

    v40 = v58[3];
    if (!v40)
    {
      goto LABEL_14;
    }

    CFRelease(v40);
    goto LABEL_11;
  }

  if (!cS || (v47[0] = MEMORY[0x277D85DD0], v47[1] = 3221225472, v47[2] = sub_2252A5504, v47[3] = &unk_27854BDE0, v47[4] = &v51, v47[5] = &v57, v47[6] = cS, objc_msgSend__onSynchronizeQueue_(self, v36, v47), (v52[3] & 1) != 0))
  {
    v18 = 0;
    goto LABEL_14;
  }

  v42 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5002, @"Couldn't add share PCS to record PCS");
  v18 = v42;
  if (error)
  {
    v43 = v42;
    *error = v18;
  }

  v44 = v58[3];
  if (v44)
  {
    CFRelease(v44);
    goto LABEL_11;
  }

LABEL_14:
  v23 = v62[3];
  if (v23)
  {
    CFRelease(v23);
    v62[3] = 0;
  }

  v24 = *v10;
  if (v58[3])
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v25 = *v12;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v28 = &stru_28385ED00;
      if (liteCopy)
      {
        v29 = @"lightweight ";
      }

      else
      {
        v29 = &stru_28385ED00;
      }

      if (cS)
      {
        v30 = @" and share PCS ";
      }

      else
      {
        v30 = &stru_28385ED00;
      }

      if (cS)
      {
        v28 = objc_msgSend_description(cS, v26, v27);
      }

      v31 = v58[3];
      *buf = 138413314;
      sCopy2 = v29;
      v67 = 2114;
      sCopy = s;
      v69 = 2114;
      v70 = v30;
      v71 = 2112;
      v72 = v28;
      v73 = 2112;
      v74 = v31;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Created %@record PCS from zone PCS %{public}@%{public}@%@: %@.", buf, 0x34u);
      if (cS)
      {
      }
    }
  }

  else
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v25 = *v12;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v45 = &stru_28385ED00;
      if (cS)
      {
        v46 = @" and share PCS ";
      }

      else
      {
        v46 = &stru_28385ED00;
      }

      if (cS)
      {
        v45 = objc_msgSend_description(cS, v32, v33);
      }

      *buf = 138413058;
      sCopy2 = s;
      v67 = 2114;
      sCopy = v46;
      v69 = 2112;
      v70 = v45;
      v71 = 2112;
      v72 = v18;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Error creating record PCS from zone PCS %@%{public}@%@: %@", buf, 0x2Au);
      if (cS)
      {
      }
    }
  }

  v34 = v58[3];
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  return v34;
}

- (_OpaquePCSShareProtection)createRecordPCSWithEncryptedZonePCS:(__CFData *)s sharePCS:(_OpaquePCSShareProtection *)cS createLite:(BOOL)lite error:(id *)error
{
  liteCopy = lite;
  v74 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v10 = MEMORY[0x277CBC878];
  v11 = MEMORY[0x277CBC880];
  v12 = MEMORY[0x277CBC858];
  if (!s)
  {
    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5002, @"Can't create a record PCS with nil zone PCS data");
    v18 = v21;
    if (error)
    {
      v22 = v21;
      *error = v18;
    }

    goto LABEL_14;
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2252A5B80;
  v50[3] = &unk_27854C148;
  liteCopy2 = lite;
  v50[4] = &v56;
  v50[5] = &v60;
  objc_msgSend__onSynchronizeQueue_(self, a2, v50);
  if (v61[3] || !v57[3])
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v10);
    }

    v15 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v42 = v61[3];
      *buf = 138412290;
      sCopy2 = v42;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Couldn't create a new PCSShareProtectionRef: %@", buf, 0xCu);
    }

    v17 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5002, 0, v61[3], 0, 0, @"Couldn't create a new record PCS");
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    v20 = v57[3];
    if (!v20)
    {
      goto LABEL_14;
    }

    CFRelease(v20);
LABEL_11:
    v57[3] = 0;
    goto LABEL_14;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2252A5C84;
  v49[3] = &unk_27854C0F8;
  v49[4] = &v52;
  v49[5] = &v56;
  v49[6] = &v60;
  v49[7] = s;
  objc_msgSend__onSynchronizeQueue_(self, v14, v49);
  if ((v53[3] & 1) == 0)
  {
    v38 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 5002, v61[3], @"Couldn't add encrypted zone PCS to record PCS");
    v18 = v38;
    if (error)
    {
      v39 = v38;
      *error = v18;
    }

    v40 = v61[3];
    if (v40)
    {
      CFRelease(v40);
      v61[3] = 0;
    }

    v41 = v57[3];
    if (!v41)
    {
      goto LABEL_14;
    }

    CFRelease(v41);
    goto LABEL_11;
  }

  if (!cS || (v48[0] = MEMORY[0x277D85DD0], v48[1] = 3221225472, v48[2] = sub_2252A5CD0, v48[3] = &unk_27854BDE0, v48[4] = &v52, v48[5] = &v56, v48[6] = cS, objc_msgSend__onSynchronizeQueue_(self, v36, v48), (v53[3] & 1) != 0))
  {
    v18 = 0;
    goto LABEL_14;
  }

  v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5002, @"Couldn't add share PCS to record PCS");
  v18 = v43;
  if (error)
  {
    v44 = v43;
    *error = v18;
  }

  v45 = v57[3];
  if (v45)
  {
    CFRelease(v45);
    goto LABEL_11;
  }

LABEL_14:
  v23 = v61[3];
  if (v23)
  {
    CFRelease(v23);
    v61[3] = 0;
  }

  v24 = *v10;
  if (v57[3])
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v25 = *v12;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v28 = &stru_28385ED00;
      if (liteCopy)
      {
        v29 = @"lightweight ";
      }

      else
      {
        v29 = &stru_28385ED00;
      }

      if (cS)
      {
        v30 = @" and share PCS ";
      }

      else
      {
        v30 = &stru_28385ED00;
      }

      if (cS)
      {
        v28 = objc_msgSend_description(cS, v26, v27);
      }

      v31 = v57[3];
      *buf = 138413314;
      sCopy2 = v29;
      v66 = 2114;
      sCopy = s;
      v68 = 2114;
      v69 = v30;
      v70 = 2112;
      v71 = v28;
      v72 = 2112;
      v73 = v31;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Created %@record PCS from zone PCS data %{public}@%{public}@%@: %@.", buf, 0x34u);
      if (cS)
      {
      }
    }
  }

  else
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v25 = *v12;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v46 = &stru_28385ED00;
      if (cS)
      {
        v47 = @" and share PCS ";
      }

      else
      {
        v47 = &stru_28385ED00;
      }

      if (cS)
      {
        v46 = objc_msgSend_description(cS, v32, v33);
      }

      *buf = 138413058;
      sCopy2 = s;
      v66 = 2114;
      sCopy = v47;
      v68 = 2112;
      v69 = v46;
      v70 = 2112;
      v71 = v18;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Error creating record PCS from zone PCS %@%{public}@%@: %@.", buf, 0x2Au);
      if (cS)
      {
      }
    }
  }

  v34 = v57[3];
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  return v34;
}

- (id)dataFromRecordPCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  sCopy = s;
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225074150;
  v22 = sub_225073634;
  v23 = 0;
  if (s)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2252A603C;
    v17[3] = &unk_27854BDE0;
    v17[5] = &v24;
    v17[6] = s;
    v17[4] = &v18;
    objc_msgSend__onSynchronizeQueue_(self, a2, v17);
    if (v25[3] || !v19[5])
    {
      v7 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't encode record PCS data");
      v8 = v7;
      if (error)
      {
        v9 = v7;
        *error = v8;
      }

      v10 = v19[5];
      v19[5] = 0;

      v11 = v25[3];
      if (v11)
      {
        CFRelease(v11);
        v25[3] = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = *MEMORY[0x277CBC878];
    if (v19[5])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v12);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v14 = v19[5];
        *buf = 138412546;
        v29 = sCopy;
        v30 = 2112;
        v31 = v14;
        _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Created data from record PCS %@: %@", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v12);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = sCopy;
        v30 = 2112;
        v31 = v8;
        _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error creating PCS data from record PCS %@: %@", buf, 0x16u);
      }
    }

    sCopy = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return sCopy;
}

- (_OpaquePCSShareProtection)createPCSObjectFromData:(id)data ofType:(unint64_t)type sharedToPCS:(_OpaquePCSShareProtection *)s logFailure:(BOOL)failure trusts:(id)trusts error:(id *)error
{
  failureCopy = failure;
  v62[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  trustsCopy = trusts;
  cf = 0;
  if (dataCopy)
  {
    v19 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, v15, type);
    if (!s)
    {
      v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5002, @"Can't create a PCS object without a share PCS");
      v33 = v34;
      if (error)
      {
        v35 = v34;
        *error = v33;
      }

      goto LABEL_27;
    }

    v20 = MEMORY[0x277D42F58];
    if (trustsCopy && objc_msgSend_count(trustsCopy, v17, v18))
    {
      v61 = *v20;
      v62[0] = v19;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v62, &v61, 1);
      v22 = trustsCopy;
      v25 = v22;
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v26 = off_27D71F858;
      v53 = off_27D71F858;
      if (!off_27D71F858)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_2252B50AC;
        sCopy = &unk_278545630;
        *v56 = &v50;
        v27 = sub_2252B4EE4(v22, v23, v24);
        v28 = dlsym(v27, "PCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts");
        *(*(*v56 + 8) + 24) = v28;
        off_27D71F858 = *(*(*v56 + 8) + 24);
        v26 = v51[3];
      }

      _Block_object_dispose(&v50, 8);
      if (!v26)
      {
        v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v29, v30);
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "PCSShareProtectionRef CKPCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts(PCSShareProtectionRef, NSDictionary<PCSFPOption,id> *__strong, CFDataRef, NSArray *__strong, CFErrorRef *)");
        v47 = dlerror();
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v44, v48, v46, @"CKDPCSManager.m", 67, @"%s", v47);

        __break(1u);
      }

      v31 = v26(s, v21, dataCopy, v25, &cf);
    }

    else
    {
      v59 = *v20;
      v60 = v19;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v60, &v59, 1);
      v31 = PCSObjectCreateFromExportedWithKeyedPCSAndOptions();
    }

    if (v31 && !cf)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        *&buf[4] = dataCopy;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        *&buf[22] = 2112;
        sCopy = s;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Created PCS object from data (%{public}@): %@. Share PCS was %@", buf, 0x20u);
      }

      v33 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v36 = objc_opt_class();
    v33 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v36, v37, cf, 5004, @"Failed to decrypt PCS data");
    if (v33)
    {
      if (!error)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v38, *MEMORY[0x277CBC120], 5002, cf, @"Couldn't create PCS object from data");
      if (!error)
      {
LABEL_22:
        if (!v31)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v39 = v33;
    *error = v33;
    if (!v31)
    {
LABEL_27:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (failureCopy)
      {
        v40 = PCSFPCreatePEMData();
        if (s)
        {
          v41 = PCSShareProtectionCopyPublicKeys();
        }

        else
        {
          v41 = 0;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v42 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138413314;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = s;
          *&buf[22] = 2112;
          sCopy = v40;
          *v56 = 2112;
          *&v56[2] = v41;
          v57 = 2112;
          v58 = dataCopy;
          _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Error creating PCS object: %@.\nShare PCS was %@.\nPEM data was %@.\nShare PCS public keys were %@\nExported PCS data was %@", buf, 0x34u);
        }
      }

      v31 = 0;
      goto LABEL_39;
    }

LABEL_26:
    CFRelease(v31);
    goto LABEL_27;
  }

  v31 = 0;
LABEL_40:

  return v31;
}

- (BOOL)recordProtectionDataNeedsCounterSign:(id)sign error:(id *)error
{
  signCopy = sign;
  v8 = signCopy;
  cf[0] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v9 = off_27D71F860;
  v30 = off_27D71F860;
  if (!off_27D71F860)
  {
    cf[1] = MEMORY[0x277D85DD0];
    cf[2] = 3221225472;
    cf[3] = sub_2252B50FC;
    cf[4] = &unk_278545630;
    v26 = &v27;
    v10 = sub_2252B4EE4(signCopy, v6, v7);
    v28[3] = dlsym(v10, "PCSNeedsRollAndCounterSign");
    off_27D71F860 = *(v26[1] + 24);
    v9 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v9)
  {
    v13 = v9(v8, cf);
    if (cf[0])
    {
      v14 = objc_opt_class();
      v17 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v14, v15, cf[0], 5004, @"Failed to decrypt PCS data when checking if counter-signature is necessary");
      if (!v17)
      {
        v17 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5002, cf[0], @"Couldn't create PCS object from data when checking if counter-signature is necessary");
      }

      if (error)
      {
        v18 = v17;
        *error = v17;
      }

      CFRelease(cf[0]);
    }

    return v13;
  }

  else
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "_Bool CKPCSNeedsRollAndCounterSign(CFDataRef, CFErrorRef *)");
    v23 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v20, v24, v22, @"CKDPCSManager.m", 68, @"%s", v23);

    __break(1u);
  }

  return result;
}

- (BOOL)addSharePCS:(_OpaquePCSShareProtection *)s toRecordPCS:(_OpaquePCSShareProtection *)cS permission:(unint64_t)permission error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBC880];
  v8 = MEMORY[0x277CBC858];
  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Refusing to add a nil share PCS to a record PCS", buf, 2u);
    }

    if (error)
    {
      v29 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 5005, @"You can't add a nil share PCS to a record PCS");
LABEL_23:
      v23 = 0;
      v26 = 0;
      v32 = 0;
      *error = v29;
      goto LABEL_43;
    }

LABEL_24:
    v23 = 0;
    v26 = 0;
    goto LABEL_37;
  }

  v10 = *MEMORY[0x277CBC878];
  v11 = *MEMORY[0x277CBC880];
  if (!cS)
  {
    if (v11 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v30 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Refusing to add a share PCS to a nil record PCS", buf, 2u);
    }

    if (error)
    {
      v29 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5005, @"You can't add a share PCS to a nil record PCS");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v11 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v10);
  }

  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v18 = CKStringFromSharePermission(permission, v17);
    *buf = 138543874;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = s;
    *&buf[22] = 2112;
    cSCopy2 = cS;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Adding %{public}@ share PCS\n%@\nTo PCS\n%@", buf, 0x20u);
  }

  v20 = PCSFPCopyCurrentPrivateKey();
  if (v20)
  {
    v22 = PCSIdentityCopyPublicIdentity();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(cSCopy2) = 0;
    if (v22)
    {
      v23 = PCSPublicIdentityGetPublicID();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2252A6D14;
      v38[3] = &unk_27854C170;
      v38[4] = buf;
      v38[5] = cS;
      v38[6] = v22;
      v38[7] = permission;
      objc_msgSend__onSynchronizeQueue_(self, v24, v38);
      if (*(*&buf[8] + 24))
      {
        v26 = 0;
      }

      else
      {
        v26 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 5002, @"Couldn't add share PCS to record PCS");
      }

      CFRelease(v22);
    }

    else
    {
      v26 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 5002, @"Couldn't get a public identity from the share PCS");
      v23 = 0;
    }

    CFRelease(v20);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 5002, @"Couldn't get a private identity from the share PCS");
    v23 = 0;
  }

  v33 = *MEMORY[0x277CBC878];
  if (v26)
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

    v34 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = s;
      *&buf[12] = 2112;
      *&buf[14] = cS;
      *&buf[22] = 2112;
      cSCopy2 = v26;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Warn: Unable to add share PCS (%@) to record PCS (%@): %@", buf, 0x20u);
    }

    if (error)
    {
      v35 = v26;
      v32 = 0;
      *error = v26;
      goto LABEL_43;
    }

LABEL_37:
    v32 = 0;
    goto LABEL_43;
  }

  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v33);
  }

  v36 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = s;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2112;
    cSCopy2 = cS;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Added share PCS %@ (%@) to record PCS %@.", buf, 0x20u);
  }

  v26 = 0;
  v32 = 1;
LABEL_43:

  return v32;
}

- (BOOL)updateSigningIdentityOnPCS:(_OpaquePCSShareProtection *)s usingSignedPCS:(_OpaquePCSShareProtection *)cS
{
  v6 = PCSFPGetAuthorshipIdentity();
  v8 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2252A6DFC;
    v10[3] = &unk_2785464E0;
    v10[4] = s;
    v10[5] = v6;
    objc_msgSend__onSynchronizeQueue_(self, v7, v10);
  }

  return v8 != 0;
}

- (BOOL)removeSharePCS:(_OpaquePCSShareProtection *)s fromRecordPCS:(_OpaquePCSShareProtection *)cS error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBC880];
  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Refusing to remove a nil share PCS from a record PCS", buf, 2u);
    }

    if (error)
    {
      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 5005, @"You can't remove a nil share PCS from a record PCS");
LABEL_21:
      v23 = 0;
      *error = v20;
      return v23;
    }

    return 0;
  }

  v8 = MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (!cS)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Refusing to remove a share PCS from a nil record PCS", buf, 2u);
    }

    if (error)
    {
      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5005, @"You can't remove a share PCS from a nil record PCS");
      goto LABEL_21;
    }

    return 0;
  }

  if (v10 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v9);
  }

  v13 = MEMORY[0x277CBC858];
  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = s;
    *&buf[12] = 2112;
    *&buf[14] = cS;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Removing share PCS\n%@\nFrom PCS\n%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v42 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2252A7298;
  v30[3] = &unk_27854C0A8;
  v30[6] = cS;
  v30[7] = s;
  v30[4] = buf;
  v30[5] = &v31;
  objc_msgSend__onSynchronizeQueue_(self, v15, v30);
  if (*(*&buf[8] + 24))
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5002, v32[3], @"Couldn't remove share PCS from record PCS");
  }

  v24 = v32[3];
  if (v24)
  {
    CFRelease(v24);
    v32[3] = 0;
  }

  v23 = v17 == 0;
  v25 = *v8;
  if (v17)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v25);
    }

    v26 = *v13;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v35 = 138412802;
      sCopy2 = s;
      v37 = 2112;
      cSCopy2 = cS;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Warn: Unable to remove share PCS (%@) from record PCS (%@): %@", v35, 0x20u);
    }

    if (error)
    {
      v27 = v17;
      *error = v17;
    }
  }

  else
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v25);
    }

    v28 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      *v35 = 138412546;
      sCopy2 = s;
      v37 = 2112;
      cSCopy2 = cS;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Removed share PCS %@ from record PCS %@.", v35, 0x16u);
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);

  return v23;
}

- (unint64_t)removePCSKeys:(id)keys fromPCS:(_OpaquePCSShareProtection *)s withProtectionEtag:(id)etag forOperation:(id)operation
{
  v123 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  etagCopy = etag;
  operationCopy = operation;
  v77 = etagCopy;
  if (keysCopy)
  {
    v74 = operationCopy;
    if ((objc_msgSend_isEmpty(keysCopy, v11, v12) & 1) == 0)
    {
      if (etagCopy && (objc_msgSend_etag(keysCopy, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(etagCopy, v17, v16), v16, (isEqualToString & 1) == 0))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v67 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v68 = v67;
          v71 = objc_msgSend_etag(keysCopy, v69, v70);
          *buf = 138412546;
          *v115 = v77;
          *&v115[8] = 2112;
          *&v115[10] = v71;
          _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Skipping PCS key removal due to PCS etag mismatch. current: %@, expected: %@", buf, 0x16u);
        }
      }

      else
      {
        if (s)
        {
          v19 = objc_msgSend_sizeOfPCS_(self, v13, s);
          v110 = 0;
          v111 = &v110;
          v112 = 0x2020000000;
          v113 = 0;
          v106 = 0;
          v107 = &v106;
          v108 = 0x2020000000;
          v109 = 0;
          v102 = 0;
          v103 = &v102;
          v104 = 0x2020000000;
          v105 = 0;
          v96 = 0;
          v97 = &v96;
          v98 = 0x3032000000;
          v99 = sub_225074150;
          v100 = sub_225073634;
          v101 = objc_opt_new();
          v90 = 0;
          v91 = &v90;
          v92 = 0x3032000000;
          v93 = sub_225074150;
          v94 = sub_225073634;
          v73 = v19;
          v95 = objc_opt_new();
          v84 = 0;
          v85 = &v84;
          v86 = 0x3032000000;
          v87 = sub_225074150;
          v88 = sub_225073634;
          v89 = objc_opt_new();
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v22 = objc_msgSend_keys(keysCopy, v20, v21);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v80, v122, 16);
          if (v26)
          {
            v27 = MEMORY[0x277CBC880];
            v28 = *v81;
            v29 = MEMORY[0x277CBC858];
            do
            {
              v30 = 0;
              do
              {
                if (*v81 != v28)
                {
                  objc_enumerationMutation(v22);
                }

                v31 = *(*(&v80 + 1) + 8 * v30);
                v32 = objc_msgSend_keyType(v31, v24, v25, v73);
                switch(v32)
                {
                  case 1:
                    v40 = v97[5];
                    v36 = objc_msgSend_pcsKeyID(v31, v33, v34);
                    objc_msgSend_addObject_(v40, v41, v36);
                    break;
                  case 2:
                    v38 = v91[5];
                    v36 = objc_msgSend_pcsKeyID(v31, v33, v34);
                    objc_msgSend_addObject_(v38, v39, v36);
                    break;
                  case 3:
                    v35 = v85[5];
                    v36 = objc_msgSend_pcsKeyID(v31, v33, v34);
                    objc_msgSend_addObject_(v35, v37, v36);
                    break;
                  default:
                    if (*v27 != -1)
                    {
                      dispatch_once(v27, *MEMORY[0x277CBC878]);
                    }

                    v36 = *v29;
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      v44 = objc_msgSend_keyType(v31, v42, v43);
                      *buf = 67109378;
                      *v115 = v44;
                      *&v115[4] = 2112;
                      *&v115[6] = v31;
                      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Unrecognized key type (%d), ignoring %@", buf, 0x12u);
                    }

                    break;
                }

                ++v30;
              }

              while (v26 != v30);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v80, v122, 16);
            }

            while (v26);
          }

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = sub_2252A7B7C;
          v79[3] = &unk_27854C1C0;
          v79[4] = &v96;
          v79[5] = &v106;
          v79[6] = &v90;
          v79[7] = &v110;
          v79[8] = &v84;
          v79[9] = &v102;
          v79[10] = s;
          objc_msgSend__onSynchronizeQueue_(self, v45, v79);
          v15 = v107[3] + v111[3] + v103[3];
          if (v15)
          {
            v48 = objc_msgSend_sizeOfPCS_(self, v46, s);
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v49 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
            {
              v50 = v103[3];
              v51 = v111[3];
              v52 = v107[3];
              *buf = 134219008;
              *v115 = v50;
              *&v115[8] = 2048;
              *&v115[10] = v51;
              v116 = 2048;
              v117 = v52;
              v118 = 2048;
              v119 = v73;
              v120 = 2048;
              v121 = v48;
              _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Removed %zu sharee public identities, %zu unused key pairs and %zu unused primary keys from the PCS, reducing the size from %zu to %zu bytes.", buf, 0x34u);
            }
          }

          v53 = objc_msgSend_keys(keysCopy, v46, v47, v73);
          v56 = objc_msgSend_count(v53, v54, v55);

          if (v56 != v15)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v57 = v56 - v15;
            v58 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v61 = objc_msgSend_keys(keysCopy, v59, v60);
              v64 = objc_msgSend_count(v61, v62, v63);
              *buf = 134218240;
              *v115 = v57;
              *&v115[8] = 2048;
              *&v115[10] = v64;
              _os_log_impl(&dword_22506F000, v58, OS_LOG_TYPE_INFO, "Warn: %zu of the %zu keys to remove were not removed from the PCS.", buf, 0x16u);
            }

            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = sub_2252A87EC;
            v78[3] = &unk_2785498A0;
            v78[4] = v57;
            objc_msgSend_updateCloudKitMetrics_(v74, v65, v78);
          }

          _Block_object_dispose(&v84, 8);

          _Block_object_dispose(&v90, 8);
          _Block_object_dispose(&v96, 8);

          _Block_object_dispose(&v102, 8);
          _Block_object_dispose(&v106, 8);
          _Block_object_dispose(&v110, 8);
          goto LABEL_37;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v72 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Warn: Cannot remove keys from PCS, it has not yet been decrypted.", buf, 2u);
        }
      }
    }

    v15 = 0;
LABEL_37:
    operationCopy = v74;
    goto LABEL_38;
  }

  v15 = 0;
LABEL_38:

  return v15;
}

- (_OpaquePCSShareProtection)createEmptySignedSharePCSOfType:(unint64_t)type forPCSServiceType:(unint64_t)serviceType withError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  cf = 0;
  v9 = objc_msgSend_identityManager(self, a2, type);
  v11 = objc_msgSend_PCSServiceStringFromCKServiceType_(v9, v10, serviceType);

  v13 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, v12, type);
  v16 = objc_msgSend_identityManager(self, v14, v15);
  v45 = 0;
  v18 = objc_msgSend_copyIdentitySetWithType_options_error_(v16, v17, serviceType, 1, &v45);
  v19 = v45;

  v20 = MEMORY[0x277CBC858];
  if (v19 || !v18)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = v20;
    v32 = *v20;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v19;
      _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Failed to get signing identity set in createEmptySignedSharePCSForServiceType:withError: %@", buf, 0xCu);
    }

    if (!v19)
    {
      v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5000, @"Couldn't create a PCS identity");
    }

    v26 = 0;
    v29 = 0;
    v34 = 0;
    v35 = 0;
    v24 = v18;
    if (v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = MEMORY[0x277CBC858];
    v22 = PCSIdentitySetCopyCurrentIdentityWithError();
    v24 = v22;
    if (v22 && !cf)
    {
      v25 = *MEMORY[0x277D42F50];
      v47[0] = *MEMORY[0x277D42F78];
      v47[1] = v25;
      v48[0] = v11;
      v48[1] = v22;
      v47[2] = *MEMORY[0x277D42F58];
      v48[2] = v13;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v48, v47, 3);
      v27 = PCSFPCreate();
      v29 = v27;
      if (cf || !v27)
      {
        v36 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 5002);
        v19 = v36;
        if (error)
        {
          v37 = v36;
          *error = v19;
        }

        if (v29)
        {
          CFRelease(v29);
          v29 = 0;
        }
      }

      else
      {
        v30 = PCSFPCreatePrivateKey();
        if (v30)
        {
          CFRelease(v30);
          v19 = 0;
        }

        else
        {
          v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5005, @"Failed to add a protection key to the share");
          v19 = v38;
          if (error)
          {
            v39 = v38;
            *error = v19;
          }
        }
      }

      CFRelease(v18);
      goto LABEL_26;
    }

    v19 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 5000, cf);
    CFRelease(v18);
    v26 = 0;
    v29 = 0;
    v34 = 0;
    v35 = 0;
    if (v24)
    {
LABEL_26:
      CFRelease(v24);
      v34 = v26;
      v35 = v29;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v35 || v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v19;
      _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Warn: Error creating a share PCS: %@", buf, 0xCu);
    }

    if (error)
    {
      v43 = v19;
      *error = v19;
    }

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }
  }

  else
  {
    v40 = PCSFPCopyDiagnostic();
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v40;
      _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Created a new signed share PCS: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v35;
}

- (_OpaquePCSShareProtection)createEmptySharePCSOfType:(unint64_t)type error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, a2, type);
  v25 = *MEMORY[0x277D42F58];
  v26[0] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v26, &v25, 1);
  v8 = PCSFPCreate();

  if (v8)
  {
    v10 = PCSFPCreatePrivateKey();
    if (v10)
    {
      CFRelease(v10);
      v12 = 0;
    }

    else
    {
      v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5005, @"Failed to add a protection key to the share");
      v12 = v15;
      if (error)
      {
        v16 = v15;
        *error = v12;
      }
    }
  }

  else
  {
    v13 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't create a new PCSShareProtectionRef");
    v12 = v13;
    if (error)
    {
      v14 = v13;
      *error = v12;
    }
  }

  if (v8)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v20 = PCSFPCopyDiagnostic();
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Created a new share PCS: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Warn: Error creating a share PCS: %@", buf, 0xCu);
    }

    if (error)
    {
      v19 = v12;
      *error = v12;
    }

    if (v8)
    {
      CFRelease(v8);
      v8 = 0;
    }
  }

  return v8;
}

- (void)setOwnerIdentity:(_PCSPublicIdentityData *)identity onPCS:(_OpaquePCSShareProtection *)s
{
  v14 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    identityCopy = identity;
    v12 = 2112;
    sCopy = s;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Setting owner public identity %@ on pcs %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252A9130;
  v9[3] = &unk_2785464E0;
  v9[4] = s;
  v9[5] = identity;
  objc_msgSend__onSynchronizeQueue_(self, v8, v9);
}

- (BOOL)_addPublicIdentityForService:(unint64_t)service toSharePCS:(_OpaquePCSShareProtection *)s withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  cf = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v9 = objc_msgSend_identityManager(self, a2, service);
  v34 = 0;
  v11 = objc_msgSend_copyIdentitySetWithType_options_error_(v9, v10, service, 1, &v34);
  v12 = v34;

  if (!v11 || v12)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    v17 = 0;
  }

  else
  {
    v15 = objc_msgSend_identityManager(self, v13, v14);
    objc_msgSend_PCSServiceStringFromCKServiceType_(v15, v16, service);
    v17 = PCSIdentitySetCopyCurrentPublicIdentityWithError();

    v19 = cf;
    if (!v17 || cf)
    {
      v20 = MEMORY[0x277CBC560];
      v21 = *MEMORY[0x277CBC120];
      v22 = sub_2252927B0(service);
      v12 = objc_msgSend_errorWithDomain_code_error_format_(v20, v23, v21, 5002, v19, @"Couldn't get a public identity for our current user in order to add our public %@ identity to PCS %@", v22, s);

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_2252A948C;
      v33[3] = &unk_27854BD18;
      v33[4] = &v35;
      v33[5] = s;
      v33[6] = v17;
      objc_msgSend__onSynchronizeQueue_(self, v18, v33);
      if (v36[3])
      {
        v12 = 0;
      }

      else
      {
        v24 = MEMORY[0x277CBC560];
        v25 = *MEMORY[0x277CBC120];
        v26 = sub_2252927B0(service);
        v12 = objc_msgSend_errorWithDomain_code_format_(v24, v27, v25, 5005, @"Failed to add our %@ identity to the share", v26);
      }
    }
  }

  CFRelease(v11);
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_14:
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v30 = sub_2252927B0(service);
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Warn: Error adding public %{public}@ identity to share PCS: %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v31 = v12;
    *error = v12;
  }

  _Block_object_dispose(&v35, 8);

  return v12 == 0;
}

- (_OpaquePCSShareProtection)createSharePCSOfType:(unint64_t)type forPCSServiceType:(unint64_t)serviceType error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v8 = objc_msgSend_createEmptySharePCSOfType_error_(self, a2, type, &v26);
  v9 = v26;
  v11 = v9;
  v12 = MEMORY[0x277CBC880];
  v13 = MEMORY[0x277CBC858];
  if (!v8 || v9)
  {
    if (!v9)
    {
      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, @"Couldn't create an empty share PCS");
    }

    if (v8)
    {
      CFRelease(v8);
      v8 = 0;
    }
  }

  else
  {
    v25 = 0;
    v14 = objc_msgSend__addPublicIdentityForService_toSharePCS_withError_(self, v10, serviceType, v8, &v25);
    v15 = v25;
    v17 = v15;
    if (!v14 || (v11 = 0, v15))
    {
      if (!v15)
      {
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5005, @"Couldn't add public PCS identity to new share PCS");
      }

      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Warn: Error adding public sharing identity to share PCS: %@", buf, 0xCu);
      }

      v11 = v17;
    }

    if (v11)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    if (v19)
    {
      v20 = PCSFPCopyDiagnostic();
      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Created a new share PCS: %@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_33;
    }
  }

  if (*v12 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Warn: Error creating a share PCS: %@", buf, 0xCu);
  }

  if (error)
  {
    v23 = v11;
    *error = v11;
  }

  if (v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

LABEL_33:

  return v8;
}

- (_OpaquePCSShareProtection)createSharePublicPCSWithIdentity:(_PCSIdentityData *)identity error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v38 = *MEMORY[0x277D42F58];
  v39[0] = *MEMORY[0x277D42F68];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v39, &v38, 1);
  v8 = PCSFPCreate();

  if (v33[3] || !v8)
  {
    v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't create a new PCSShareProtectionRef");
    v14 = v15;
    if (error)
    {
      v16 = v15;
      *error = v14;
    }

    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = PCSIdentityCopyPublicIdentity();
  if (!v11)
  {
    v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5000, @"Couldn't get a public identity'");
    v14 = v17;
    if (error)
    {
      v18 = v17;
      *error = v14;
    }

LABEL_13:
    CFRelease(v8);
    v8 = 0;
LABEL_14:
    v11 = 0;
    goto LABEL_22;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2252A9BD8;
  v27[3] = &unk_27854C0A8;
  v27[6] = v8;
  v27[7] = identity;
  v27[4] = &v28;
  v27[5] = &v32;
  objc_msgSend__onSynchronizeQueue_(self, v10, v27);
  if (v29[3])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2252A9C18;
    v26[3] = &unk_27854BD18;
    v26[4] = &v28;
    v26[5] = v8;
    v26[6] = v11;
    objc_msgSend__onSynchronizeQueue_(self, v12, v26);
    if (v29[3])
    {
      v14 = 0;
      goto LABEL_22;
    }

    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5005, @"Failed to add public identity to the share PCS");
    v14 = v21;
    if (error)
    {
      v22 = v21;
      *error = v14;
    }

    CFRelease(v8);
  }

  else
  {
    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5005, @"Failed to add identity to the share PCS");
    v14 = v19;
    if (error)
    {
      v20 = v19;
      *error = v14;
    }

    CFRelease(v8);
  }

  v8 = 0;
LABEL_22:
  v23 = v33[3];
  if (v23)
  {
    CFRelease(v23);
    v33[3] = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (!v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Error creating a share PCS: %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v8;
}

- (_OpaquePCSShareProtection)createChainPCSWithError:(id *)error
{
  v25[3] = *MEMORY[0x277D85DE8];
  RandomCompactRaw = PCSIdentityCreateRandomCompactRaw();
  if (RandomCompactRaw)
  {
    v6 = RandomCompactRaw;
    ServiceName = PCSIdentityGetServiceName();
    v8 = *MEMORY[0x277D42F50];
    v24[0] = *MEMORY[0x277D42F78];
    v24[1] = v8;
    v25[0] = ServiceName;
    v25[1] = v6;
    v24[2] = *MEMORY[0x277D42F58];
    v25[2] = *MEMORY[0x277D42F68];
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v25, v24, 3);
    v12 = PCSFPCreate();
    if (v12)
    {
      PCSFPSetCurrentPrivateKey();
      v17 = 0;
    }

    else
    {
      v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't create a new PCSShareProtectionRef");
      v17 = v15;
      if (error)
      {
        v16 = v15;
        *error = v17;
      }

      if (v12)
      {
        CFRelease(v12);
        v12 = 0;
      }
    }

    CFRelease(v6);
  }

  else
  {
    v13 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 5000, 0, 0, 0, 0, @"Failed to add a protection key to the chain PCS");
    v17 = v13;
    if (error)
    {
      v14 = v13;
      v10 = 0;
      v12 = 0;
      *error = v17;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277CBC878];
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v19 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Created new chain PCS: %@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v20 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Error creating new chain PCS: %@", buf, 0xCu);
    }
  }

  return v12;
}

- (id)dataFromSharePCS:(_OpaquePCSShareProtection *)s pcsBlobType:(unint64_t)type error:(id *)error
{
  sCopy = s;
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_225074150;
  v29 = sub_225073634;
  v30 = 0;
  if (s)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2252AA328;
    v24[3] = &unk_27854BDE0;
    v24[5] = &v31;
    v24[6] = s;
    v24[4] = &v25;
    objc_msgSend__onSynchronizeQueue_(self, a2, v24);
    v8 = v32[3];
    if (v8 || !v26[5])
    {
      v9 = MEMORY[0x277CBC560];
      v10 = MEMORY[0x277CCACA8];
      v11 = sub_225292788(type);
      v13 = objc_msgSend_stringWithFormat_(v10, v12, @"Couldn't encode share PCS data %@, PCS type %@, error: %@", sCopy, v11, v32[3]);
      v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(v9, v14, *MEMORY[0x277CBC120], 5002, 0, v8, 0, 0, v13);

      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      v17 = v26[5];
      v26[5] = 0;

      v18 = v32[3];
      if (v18)
      {
        CFRelease(v18);
        v32[3] = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = *MEMORY[0x277CBC878];
    if (v26[5])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v19);
      }

      v20 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v21 = v26[5];
        *buf = 138412546;
        v36 = sCopy;
        v37 = 2112;
        v38 = v21;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Created data from share PCS %@: %@", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v19);
      }

      v22 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = sCopy;
        v37 = 2112;
        v38 = v15;
        _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Error creating PCS data from share PCS %@: %@", buf, 0x16u);
      }
    }

    sCopy = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return sCopy;
}

- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data sharingIdentity:(_PCSIdentityData *)identity logFailure:(BOOL)failure error:(id *)error
{
  failureCopy = failure;
  v48 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = dataCopy;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!dataCopy)
  {
    v19 = 0;
    goto LABEL_35;
  }

  if (!identity)
  {
    v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5002, @"Can't create a share PCS without a sharing identity");
    v18 = v20;
    if (error)
    {
      v21 = v20;
      *error = v18;
    }

    goto LABEL_21;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2252AA814;
  v31[3] = &unk_27854C1E8;
  v31[6] = dataCopy;
  v31[7] = identity;
  v31[4] = &v32;
  v31[5] = &v36;
  objc_msgSend__onSynchronizeQueue_(self, v11, v31);
  if (v37[3] || !v33[3])
  {
    if (failureCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v14 = v37[3];
        *buf = 138412546;
        identityCopy = identity;
        v42 = 2112;
        identityCopy3 = v14;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Couldn't decrypt share PCS data with share identity %@: %@", buf, 0x16u);
      }
    }

    v15 = objc_opt_class();
    v18 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v15, v16, v37[3], 5004, @"Failed to decrypt share PCS data");
    if (v18)
    {
      if (!error)
      {
LABEL_19:
        v23 = v33[3];
        if (v23)
        {
          CFRelease(v23);
          v33[3] = 0;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5004, 0, v37[3], 0, 0, @"Couldn't create share PCS object from data");
      if (!error)
      {
        goto LABEL_19;
      }
    }

    v22 = v18;
    *error = v18;
    goto LABEL_19;
  }

  v18 = 0;
LABEL_21:
  v24 = objc_opt_self();
  v25 = v37[3];
  if (v25)
  {
    CFRelease(v25);
    v37[3] = 0;
  }

  if (v33[3])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v27 = v33[3];
      *buf = 138412802;
      identityCopy = v12;
      v42 = 2112;
      identityCopy3 = v27;
      v44 = 2112;
      identityCopy2 = identity;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Created share PCS from data (%@): %@. Identity PCS was %@", buf, 0x20u);
    }
  }

  else if (failureCopy)
  {
    v28 = PCSFPCreatePEMData();
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      identityCopy = v18;
      v42 = 2112;
      identityCopy3 = identity;
      v44 = 2112;
      identityCopy2 = v28;
      v46 = 2112;
      v47 = v12;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Error creating share PCS: %@.\nIdentity PCS was %@.\nPEM data was %@.\nRecord data was %@", buf, 0x2Au);
    }
  }

  v19 = v33[3];

LABEL_35:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v19;
}

- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data ofType:(unint64_t)type withService:(unint64_t)service logFailure:(BOOL)failure error:(id *)error
{
  failureCopy = failure;
  v52 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v16 = objc_msgSend__pcsObjectKindForCKDPCSBlobType_(self, v13, type);
  if (!dataCopy)
  {
    v20 = 0;
LABEL_18:
    v28 = 0;
    goto LABEL_31;
  }

  v17 = objc_msgSend_identityManager(self, v14, v15);
  v39 = 0;
  v19 = objc_msgSend_copyIdentitySetWithType_options_error_(v17, v18, service, 2, &v39);
  v20 = v39;

  if (!v19 || v20)
  {
    if (error)
    {
      v26 = v20;
      *error = v20;
    }

    if (failureCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v20;
        _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Couldn't decrypt share PCS data due to identity set unavailable. Error: %@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2252AAC6C;
  v33[3] = &unk_27854C210;
  v36 = &v40;
  v38 = v19;
  v34 = v16;
  v35 = dataCopy;
  v37 = &v44;
  objc_msgSend__onSynchronizeQueue_(self, v21, v33);
  if (v41[3] && !v45[3])
  {
    v20 = 0;
  }

  else
  {
    v22 = objc_opt_class();
    v20 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v22, v23, v45[3], 5004, @"Failed to decrypt share PCS object");
    if (!v20)
    {
      v20 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 5004, 0, v45[3], 0, 0, @"Couldn't create share PCS object from data");
    }

    v25 = v45[3];
    if (v25)
    {
      CFRelease(v25);
      v45[3] = 0;
    }
  }

  if (!v41[3])
  {
    if (error)
    {
      v29 = v20;
      *error = v20;
    }

    if (failureCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = v19;
        v50 = 2112;
        v51 = v20;
        _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Couldn't decrypt share PCS data with share identities %@: %@", buf, 0x16u);
      }
    }
  }

  CFRelease(v19);
  v31 = v45[3];
  if (v31)
  {
    CFRelease(v31);
    v45[3] = 0;
  }

  v28 = v41[3];

LABEL_31:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v28;
}

- (_OpaquePCSShareProtection)createSharePCSFromData:(id)data sharePrivateKey:(id)key error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = 0;
  v10 = 0;
  if (!dataCopy || !key)
  {
    goto LABEL_21;
  }

  keyCopy = key;
  v14 = objc_msgSend_identityManager(self, v12, v13);
  v26 = 0;
  v16 = objc_msgSend_createSharingIdentityFromData_error_(v14, v15, keyCopy, &v26);

  v9 = v26;
  if (!v16 || v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Couldn't create an identity from private key data: %@", buf, 0xCu);
      if (v9)
      {
LABEL_17:
        v10 = 0;
        if (!v16)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (v9)
    {
      goto LABEL_17;
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5005, @"Couldn't create an identity from private key data");
    goto LABEL_17;
  }

  v25 = 0;
  v10 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(self, v17, dataCopy, v16, &v25);
  v18 = v25;
  v9 = v18;
  if (v10 && !v18)
  {
    goto LABEL_18;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v28 = dataCopy;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v9;
    _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS from the PCS data %@ for identity %@: %@", buf, 0x20u);
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 5005, @"Couldn't create a public PCS from the PCS data %@ for identity %@", dataCopy, v16);
  }

LABEL_18:
  CFRelease(v16);
LABEL_19:
  if (error)
  {
    v23 = v9;
    *error = v9;
  }

LABEL_21:

  return v10;
}

- (_OpaquePCSShareProtection)createSharePCSFromEncryptedData:(id)data error:(id *)error
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v6 = PCSFPCopyRecoverPCS();
    v7 = v6;
    if (error && !v6)
    {
      *error = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)publicKeyDataFromPCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = PCSFPCopyCurrentPrivateKey();
  if (v6)
  {
    v8 = v6;
    v9 = PCSIdentityCopyPublicIdentity();
    if (v9)
    {
      v10 = v9;
      v11 = PCSPublicIdentityCopyPublicKey();
      CFRelease(v10);
      CFRelease(v8);
      if (v11)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          sCopy = s;
          v17 = 2114;
          v18 = v11;
          _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Public key data for current private key for share PCS %@ is %{public}@", buf, 0x16u);
        }

        v13 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      CFRelease(v8);
    }
  }

  v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5005, @"Couldn't create public key data from PCS  %@", s);
  v11 = 0;
  if (error && v13)
  {
    v13 = v13;
    v11 = 0;
    *error = v13;
  }

LABEL_13:

  return v11;
}

- (void)decryptPCSDataOnSharePCS:(id)s shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler
{
  sCopy = s;
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  v16 = objc_msgSend_synchronizeQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252AB3E4;
  block[3] = &unk_278547248;
  block[4] = self;
  v22 = sCopy;
  v23 = dateCopy;
  v24 = dCopy;
  v25 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  v19 = dateCopy;
  v20 = sCopy;
  dispatch_async(v16, block);
}

- (void)_locked_decryptCurrentPerParticipantPCSDataOnSharePCS:(id)s withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey shareModificationDate:(id)date requestorOperationID:(id)d completionHandler:(id)handler
{
  v118 = *MEMORY[0x277D85DE8];
  sCopy = s;
  keyCopy = key;
  privateKeyCopy = privateKey;
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  v19 = objc_msgSend_synchronizeQueue(self, v17, v18);
  dispatch_assert_queue_V2(v19);

  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_225074150;
  v112 = sub_225073634;
  v113 = 0;
  v77 = objc_msgSend_shareID(sCopy, v20, v21);
  v24 = objc_msgSend_serviceType(sCopy, v22, v23);
  v27 = objc_msgSend_identityManager(self, v25, v26);
  v76 = objc_msgSend_PCSServiceStringFromCKServiceType_(v27, v28, v24);

  v31 = objc_msgSend_callbackQueue(self, v29, v30);
  v34 = objc_msgSend_myParticipantPCSData(sCopy, v32, v33);

  if (v34)
  {
    if (keyCopy && privateKeyCopy)
    {
      v37 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = MEMORY[0x277CBC858];
      v39 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v115 = v77;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Trying to unlock our per-participant PCS for share %@ using a combined OON key", buf, 0xCu);
      }

      v42 = objc_msgSend_identityManager(self, v40, v41);
      CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity = objc_msgSend_createCombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity_(v42, v43, privateKeyCopy, keyCopy);

      v47 = objc_msgSend_myParticipantPCSData(sCopy, v45, v46);
      v48 = v109;
      v107 = v109[5];
      v50 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(self, v49, v47, CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity, &v107);
      objc_storeStrong(v48 + 5, v107);

      if (v50)
      {
        objc_msgSend_setMyParticipantPCS_(sCopy, v51, v50);
        if (*v37 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v52 = *v38;
        if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v115 = v77;
          v116 = 2112;
          v117 = v50;
          _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS for share %@ using a combined OON key: %@", buf, 0x16u);
        }

        CFRelease(v50);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2252ABD00;
      block[3] = &unk_27854C238;
      v105 = handlerCopy;
      v104 = sCopy;
      v106 = &v108;
      dispatch_async(v31, block);
    }

    else if (v24)
    {
      v54 = v24 == 1;
      if (v24 == 1)
      {
        v57 = objc_msgSend_publicPermission(sCopy, v35, v36) == 1 || objc_msgSend_publicPermission(sCopy, v55, v56) == 0;
        v64 = objc_msgSend_myParticipantRole(sCopy, v55, v56) == 1 || v57;
        if (v64)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v64)
        {
          v63 = 2;
        }

        else
        {
          v63 = 1;
        }
      }

      else
      {
        v63 = 2;
      }

      objc_initWeak(&location, self);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v65 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v72 = objc_msgSend_identityManager(self, v66, v67);
        v74 = objc_msgSend_PCSServiceStringFromCKServiceType_(v72, v73, v63);
        *buf = 138412546;
        v115 = v77;
        v116 = 2114;
        v75 = v74;
        v117 = v74;
        _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Attempting decryption of per-participant PCS for share %@ using our %{public}@ identity", buf, 0x16u);
      }

      v70 = objc_msgSend_myParticipantPCSData(sCopy, v68, v69);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = sub_2252ABF30;
      v85[3] = &unk_27854C2B0;
      objc_copyWeak(v94, &location);
      v86 = v31;
      v93 = &v108;
      v87 = sCopy;
      selfCopy = self;
      v94[1] = v63;
      v95 = v54;
      v89 = v77;
      v94[2] = v24;
      v90 = dateCopy;
      v91 = dCopy;
      v92 = handlerCopy;
      objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(self, v71, v70, 4, v63, 0, 1, v90, v91, v85);

      objc_destroyWeak(v94);
      objc_destroyWeak(&location);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v115 = v77;
        v116 = 2114;
        v117 = v76;
        _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Trying to unlock our per-participant PCS for share %@ using the %{public}@ service", buf, 0x16u);
      }

      v61 = objc_msgSend_myParticipantPCSData(sCopy, v59, v60);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = sub_2252ABD2C;
      v97[3] = &unk_27854C260;
      v98 = v31;
      v102 = &v108;
      v99 = sCopy;
      v100 = v76;
      v101 = handlerCopy;
      objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(self, v62, v61, 4, 0, 0, 1, dateCopy, dCopy, v97);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v115 = v77;
      _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "No current per-participant PCS data found for decryption on share %@", buf, 0xCu);
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_2252AC570;
    v81[3] = &unk_27854C238;
    v83 = handlerCopy;
    v82 = sCopy;
    v84 = &v108;
    dispatch_async(v31, v81);
  }

  _Block_object_dispose(&v108, 8);
}

- (void)_locked_decryptPCSDataOnSharePCS:(id)s shareModificationDate:(id)date withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey requestorOperationID:(id)d completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  dCopy = d;
  privateKeyCopy = privateKey;
  dateCopy = date;
  sCopy = s;
  v22 = objc_msgSend_synchronizeQueue(self, v20, v21);
  dispatch_assert_queue_V2(v22);

  v25 = objc_msgSend_shareID(sCopy, v23, v24);
  v28 = objc_msgSend_serviceType(sCopy, v26, v27);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2252AC70C;
  v33[3] = &unk_27854C2D8;
  v36 = handlerCopy;
  v37 = v28;
  v33[4] = self;
  v34 = keyCopy;
  v35 = v25;
  v29 = handlerCopy;
  v30 = v25;
  v31 = keyCopy;
  objc_msgSend__locked_decryptCurrentPerParticipantPCSDataOnSharePCS_withPublicSharingKey_oonPrivateKey_shareModificationDate_requestorOperationID_completionHandler_(self, v32, sCopy, v31, privateKeyCopy, dateCopy, dCopy, v33);
}

- (void)pcsDataFromFetchedShare:(id)share requestorOperationID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  shareCopy = share;
  v12 = objc_msgSend_serviceTypeForSharing(self, v10, v11);
  objc_msgSend_pcsDataFromFetchedShare_withServiceType_requestorOperationID_completionHandler_(self, v13, shareCopy, v12, dCopy, handlerCopy);
}

- (void)pcsDataFromFetchedShare:(id)share withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey withServiceType:(unint64_t)type requestorOperationID:(id)d completionHandler:(id)handler
{
  shareCopy = share;
  keyCopy = key;
  privateKeyCopy = privateKey;
  dCopy = d;
  handlerCopy = handler;
  v21 = objc_msgSend_synchronizeQueue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252AD43C;
  block[3] = &unk_27854C300;
  block[4] = self;
  v28 = shareCopy;
  v29 = keyCopy;
  v30 = privateKeyCopy;
  v32 = handlerCopy;
  typeCopy = type;
  v31 = dCopy;
  v22 = handlerCopy;
  v23 = dCopy;
  v24 = privateKeyCopy;
  v25 = keyCopy;
  v26 = shareCopy;
  dispatch_async(v21, block);
}

- (void)_locked_pcsDataFromFetchedShare:(id)share withPublicSharingKey:(id)key oonPrivateKey:(id)privateKey withServiceType:(unint64_t)type requestorOperationID:(id)d completionHandler:(id)handler
{
  v74 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  keyCopy = key;
  privateKeyCopy = privateKey;
  dCopy = d;
  handlerCopy = handler;
  v21 = objc_msgSend_synchronizeQueue(self, v19, v20);
  dispatch_assert_queue_V2(v21);

  if (shareCopy)
  {
    v23 = objc_msgSend_dataWithShare_serviceType_(CKDSharePCSData, v22, shareCopy, type);
    if (objc_msgSend_privatePCS(shareCopy, v24, v25) && objc_msgSend_publicPCS(shareCopy, v26, v27))
    {
      v28 = objc_msgSend_privatePCS(shareCopy, v26, v27);
      objc_msgSend_setPcs_(v23, v29, v28);
      v32 = objc_msgSend_publicPCS(shareCopy, v30, v31);
      objc_msgSend_setPublicPCS_(v23, v33, v32);
      if (objc_msgSend_myParticipantPCS(shareCopy, v34, v35))
      {
        v38 = objc_msgSend_myParticipantPCS(shareCopy, v36, v37);
        objc_msgSend_setMyParticipantPCS_(v23, v39, v38);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v40 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v43 = v40;
        v46 = objc_msgSend_recordID(shareCopy, v44, v45);
        *buf = 138412290;
        v73 = v46;
        _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Using pre-decrypted share PCS for share %@", buf, 0xCu);
      }

      v47 = objc_msgSend_callbackQueue(self, v41, v42);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2252AD8F4;
      block[3] = &unk_2785456C8;
      v69 = handlerCopy;
      v68 = v23;
      dispatch_async(v47, block);

      v48 = v69;
    }

    else
    {
      v48 = objc_msgSend_modificationDate(shareCopy, v26, v27);
      if (*MEMORY[0x277CBC810] == 1)
      {
        v51 = objc_msgSend_pcsTestOverrides(self, v49, v50);
        v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"OverrideShareModificationDate");

        if (v53)
        {
          v56 = objc_msgSend_pcsTestOverrides(self, v54, v55);
          v58 = objc_msgSend_objectForKeyedSubscript_(v56, v57, @"OverrideShareModificationDate");

          v48 = v58;
        }
      }

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_2252AD918;
      v64[3] = &unk_278549CE0;
      v64[4] = self;
      v65 = shareCopy;
      v66 = handlerCopy;
      objc_msgSend__locked_decryptPCSDataOnSharePCS_shareModificationDate_withPublicSharingKey_oonPrivateKey_requestorOperationID_completionHandler_(self, v59, v23, v48, keyCopy, privateKeyCopy, dCopy, v64);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "Share decryption called without a share", buf, 2u);
    }

    v63 = objc_msgSend_callbackQueue(self, v61, v62);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_2252AD8D4;
    v70[3] = &unk_2785456A0;
    v71 = handlerCopy;
    dispatch_async(v63, v70);

    v23 = v71;
  }
}

- (_PCSPublicIdentityData)copyPublicAuthorshipIdentityFromPCS:(_OpaquePCSShareProtection *)s
{
  if (!s)
  {
    return 0;
  }

  PCSFPGetAuthorshipIdentity();

  return PCSIdentityCopyPublicIdentity();
}

- (id)createNewSharePCSDataForShareWithID:(id)d withPublicSharingKey:(id)key addDebugIdentity:(BOOL)identity error:(id *)error
{
  identityCopy = identity;
  v111 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  v13 = objc_msgSend_serviceTypeForSharing(self, v11, v12);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = MEMORY[0x277CBC858];
  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v17 = v15;
    v18 = sub_2252927B0(v13);
    *buf = 138412546;
    v106 = dCopy;
    v107 = 2114;
    v108 = v18;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Creating new PCS data for share %@ with service type %{public}@", buf, 0x16u);
  }

  v19 = objc_msgSend_dataWithShareID_pcsData_(CKDSharePCSData, v16, dCopy, 0);
  objc_msgSend_setServiceType_(v19, v20, v13);
  v97 = dCopy;
  if (v13 == 1)
  {
    v104 = 0;
    v23 = objc_msgSend_createSharePCSOfType_forPCSServiceType_error_(self, v21, 5, 1, &v104);
    v24 = v104;
    if (v24)
    {
      v27 = v24;
      v28 = MEMORY[0x277CBC880];
      v96 = v23;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = v14;
      v30 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (objc_msgSend_currentServiceIsManatee(self, v21, v22))
    {
      v103 = 0;
      v33 = &v103;
      v34 = objc_msgSend_createEmptySignedSharePCSOfType_forPCSServiceType_withError_(self, v32, 5, v13, &v103);
    }

    else
    {
      v102 = 0;
      v33 = &v102;
      v34 = objc_msgSend_createEmptySharePCSOfType_error_(self, v32, 5, &v102);
    }

    v23 = v34;
    v35 = *v33;
    if (v35)
    {
      v27 = v35;
      v28 = MEMORY[0x277CBC880];
      v96 = v23;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = v14;
      v30 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

LABEL_10:
      *buf = 138412546;
      v106 = dCopy;
      v107 = 2112;
      v108 = v27;
      v31 = "Couldn't create a private PCS object for the share %@: %@";
LABEL_29:
      _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
LABEL_30:
      SharePublicPCSWithIdentity_error = 0;
      v43 = 0;
LABEL_31:
      v44 = 0;
LABEL_32:
      v45 = 0;
LABEL_33:

      v46 = *v28;
      goto LABEL_34;
    }
  }

  v96 = v23;
  if (identityCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v106 = dCopy;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Adding debug sharing identity to share %@", buf, 0xCu);
    }

    v39 = objc_msgSend_debugSharingIdentity(self, v37, v38);
    v41 = objc_msgSend_addSharingIdentity_toSharePCS_permission_(self, v40, v39, v23, 1);
    if (v41)
    {
      v27 = v41;
      v28 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = v14;
      v30 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 138412546;
      v106 = dCopy;
      v107 = 2112;
      v108 = v27;
      v31 = "Couldn't add debug sharing identifier to share %@: %@";
      goto LABEL_29;
    }
  }

  v51 = objc_msgSend_identityManager(self, v25, v26);
  v101 = 0;
  v43 = objc_msgSend_createSharingIdentityFromData_error_(v51, v52, keyCopy, &v101);
  v27 = v101;

  if (!v43 || v27)
  {
    v28 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = v14;
    v55 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v106 = keyCopy;
      v107 = 2112;
      v108 = v27;
      _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS sharing identity from data (%@): %@", buf, 0x16u);
    }

    SharePublicPCSWithIdentity_error = 0;
    goto LABEL_31;
  }

  v100[1] = 0;
  v54 = PCSIdentityCopyExternalForm();
  v94 = v54;
  if (v54)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      v57 = v56;
      PublicKey = PCSIdentityGetPublicKey();
      v59 = v14;
      v60 = MEMORY[0x277CCACA8];
      v92 = PublicKey;
      v61 = [v60 alloc];
      v63 = objc_msgSend_initWithData_encoding_(v61, v62, v94, 4);
      *buf = 138412802;
      v106 = v97;
      v107 = 2114;
      v108 = PublicKey;
      v109 = 2112;
      v110 = v63;
      _os_log_impl(&dword_22506F000, v57, OS_LOG_TYPE_INFO, "Using identity for public PCS on share %@: %{public}@: %@", buf, 0x20u);

      v14 = v59;
    }
  }

  v29 = v14;
  v100[0] = 0;
  SharePublicPCSWithIdentity_error = objc_msgSend_createSharePublicPCSWithIdentity_error_(self, v53, v43, v100);
  v64 = v100[0];
  if (v64)
  {
    v27 = v64;
    v28 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = v94;
    v67 = *v29;
    if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v106 = v97;
      v107 = 2112;
      v108 = v27;
      _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS object for the share %@: %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  v93 = keyCopy;
  v68 = objc_msgSend_identityManager(self, v65, v66);
  v99 = 0;
  v45 = objc_msgSend_dataFromSharingIdentity_error_(v68, v69, v43, &v99);
  v27 = v99;

  if (v27 || !v45)
  {
    v28 = MEMORY[0x277CBC880];
    keyCopy = v93;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = v94;
    v81 = *v29;
    if (!os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v106 = v27;
    v78 = "Couldn't create data from our public sharing identity: %@";
    v79 = v81;
    v80 = 12;
LABEL_84:
    _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, v78, buf, v80);
    goto LABEL_33;
  }

  keyCopy = v93;
  if (identityCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *v29;
    if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v106 = v97;
      _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "Adding debug sharing identity to share %@", buf, 0xCu);
    }

    v74 = objc_msgSend_debugSharingIdentity(self, v72, v73);
    v76 = objc_msgSend_addSharingIdentity_toSharePCS_permission_(self, v75, v74, SharePublicPCSWithIdentity_error, 1);
    if (v76)
    {
      v27 = v76;
      v28 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v44 = v94;
      v77 = *v29;
      if (!os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 138412546;
      v106 = v97;
      v107 = 2112;
      v108 = v27;
      v78 = "Couldn't add debug sharing identifier to share %@: %@";
      v79 = v77;
      v80 = 22;
      goto LABEL_84;
    }
  }

  if (v13 != 1)
  {
    goto LABEL_95;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v82 = *v29;
  if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v106 = v97;
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Adding the owner to the self-added PCS blob for share %@", buf, 0xCu);
  }

  v84 = objc_msgSend_addIdentityForService_toPCS_(self, v83, 1, SharePublicPCSWithIdentity_error);
  if (v84)
  {
    v27 = v84;
    v85 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = v94;
    v86 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v46 = -1;
      goto LABEL_98;
    }

    *buf = 138543874;
    v106 = @"Bladerunner";
    v107 = 2112;
    v108 = v97;
    v109 = 2112;
    v110 = v27;
    _os_log_error_impl(&dword_22506F000, v86, OS_LOG_TYPE_ERROR, "Couldn't add our %{public}@ identity to the public PCS for share %@: %@", buf, 0x20u);
  }

  else
  {
LABEL_95:
    v98 = 0;
    v87 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(self, v70, v96, SharePublicPCSWithIdentity_error, 0, &v98);
    v27 = v98;
    if ((v87 & 1) == 0)
    {
      v28 = MEMORY[0x277CBC880];
      v44 = v94;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v91 = *v29;
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v106 = v97;
        v107 = 2112;
        v108 = v27;
        _os_log_impl(&dword_22506F000, v91, OS_LOG_TYPE_INFO, "Error adding private sharing PCS to public sharing PCS for share %@: %@", buf, 0x16u);
      }

      goto LABEL_33;
    }

    objc_msgSend_setPcs_(v19, v88, v96);
    objc_msgSend_setPublicPCS_(v19, v89, SharePublicPCSWithIdentity_error);
    v85 = MEMORY[0x277CBC880];
    v44 = v94;
  }

  v46 = *v85;
LABEL_98:
  if (!v19)
  {
LABEL_34:
    if (v46 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *v29;
    if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v106 = v97;
      v107 = 2112;
      v108 = v27;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Error creating PCS data for share %@: %@", buf, 0x16u);
    }

    v48 = v96;
    if (error)
    {
      v49 = v27;
      v19 = 0;
      *error = v27;
      if (!v96)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v19 = 0;
      if (!v96)
      {
        goto LABEL_43;
      }
    }

LABEL_42:
    CFRelease(v48);
    goto LABEL_43;
  }

  if (v46 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v90 = *v29;
  if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v106 = v97;
    _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "Successfully created PCS data for share %@", buf, 0xCu);
  }

  v48 = v96;
  if (v96)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (SharePublicPCSWithIdentity_error)
  {
    CFRelease(SharePublicPCSWithIdentity_error);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v19;
}

- (id)etagFromSharePCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  if (s)
  {
    v5 = PCSFPCreateUniqueID();
    v8 = v5;
    if (v5)
    {
      v9 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v5, v6, v7);
      if (!error)
      {
LABEL_5:

        goto LABEL_7;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v12 = 138412546;
        v13 = 0;
        v14 = 2112;
        v15 = 0;
        _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Couldn't create data from share PCS %@: %@", &v12, 0x16u);
      }

      v9 = 0;
      if (!error)
      {
        goto LABEL_5;
      }
    }

    *error = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)addPublicIdentity:(_PCSPublicIdentityData *)identity toSharePCS:(_OpaquePCSShareProtection *)s permission:(unsigned int)permission
{
  v31 = *MEMORY[0x277D85DE8];
  if (!identity)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "Refusing to add a nil public identity to a record PCS";
    goto LABEL_17;
  }

  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "Refusing to add a sharing identity to a nil record PCS";
LABEL_17:
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
LABEL_18:
    v12 = 0;
    goto LABEL_25;
  }

  permissionCopy = permission;
  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2252AED5C;
  v19[3] = &unk_27854C328;
  v19[4] = buf;
  v19[5] = s;
  v19[6] = identity;
  permissionCopy2 = permission;
  objc_msgSend__onSynchronizeQueue_(self, a2, v19);
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (v22[24] == 1)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = CKStringFromSharePermission(permissionCopy, v11);
      *v25 = 138412802;
      identityCopy2 = identity;
      v27 = 2112;
      sCopy2 = s;
      v29 = 2114;
      v30 = v18;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Successfully added public identity %@ to record PCS %@ with permission %{public}@", v25, 0x20u);
    }

    v12 = 0;
  }

  else
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v15 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *v25 = 138412546;
      identityCopy2 = identity;
      v27 = 2112;
      sCopy2 = s;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error adding public identity %@ to record PCS %@", v25, 0x16u);
    }

    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5005, @"Error adding public identity %@ to record PCS %@", identity, s);
  }

  _Block_object_dispose(buf, 8);
LABEL_25:

  return v12;
}

- (id)addIdentityBackToPCS:(_OpaquePCSShareProtection *)s
{
  if (s)
  {
    v5 = PCSFPCopyKeyIDs();
    if (objc_msgSend_count(v5, v6, v7))
    {
      v10 = objc_msgSend_lastObject(v5, v8, v9);
      v11 = PCSFPCopyPrivateKey();
      if (v11)
      {
        v13 = v11;
        v14 = objc_msgSend_addSharingIdentity_toSharePCS_permission_(self, v12, v11, s, 0);
        CFRelease(v13);
      }

      else
      {
        v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5005, @"Couldn't get PCS identity with key ID %@", v10);
      }
    }

    else
    {
      v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5005, @"Couldn't get key IDs from share PCS %@", s);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)addSharingIdentity:(_PCSIdentityData *)identity toSharePCS:(_OpaquePCSShareProtection *)s permission:(unint64_t)permission
{
  v20 = *MEMORY[0x277D85DE8];
  if (!identity)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v14 = "Refusing to add a nil sharing identity to a record PCS";
    goto LABEL_13;
  }

  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v14 = "Refusing to add a sharing identity to a nil record PCS";
LABEL_13:
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v9 = PCSIdentityCopyPublicIdentity();
  if (v9)
  {
    v11 = v9;
    v12 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(self, v10, v9, s, permission);
    CFRelease(v11);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identityCopy = identity;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Error getting a public identity from sharing identity %@", buf, 0xCu);
    }

    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5000, @"Error getting a public identity from sharing identity %@", identity);
  }

LABEL_15:

  return v12;
}

- (id)removePublicIdentity:(_PCSPublicIdentityData *)identity fromSharePCS:(_OpaquePCSShareProtection *)s
{
  if (identity)
  {
    if (s)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2252AF288;
      v8[3] = &unk_27854BD18;
      v8[4] = &v9;
      v8[5] = s;
      v8[6] = identity;
      objc_msgSend__onSynchronizeQueue_(self, a2, v8);
      if (v10[3])
      {
        v5 = 0;
      }

      else
      {
        v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBC120], 5005, @"Couldn't remove public identity from share PCS");
      }

      v6 = v5;
      _Block_object_dispose(&v9, 8);

      goto LABEL_10;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5005, @"Can't remove a public identity from a nil share");
  }

  else
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5005, @"Can't remove a nil public identity");
  }
  v6 = ;
LABEL_10:

  return v6;
}

- (id)removeSharingIdentity:(_PCSIdentityData *)identity fromSharePCS:(_OpaquePCSShareProtection *)s
{
  v18 = *MEMORY[0x277D85DE8];
  if (!identity)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Refusing to remove a nil sharing identity from a record PCS";
    goto LABEL_13;
  }

  if (!s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Refusing to remove a sharing identity from a nil record PCS";
LABEL_13:
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v7 = PCSIdentityCopyPublicIdentity();
  if (v7)
  {
    v9 = v7;
    v10 = objc_msgSend_removePublicIdentity_fromSharePCS_(self, v8, v7, s);
    CFRelease(v9);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identityCopy = identity;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Error getting a public identity from sharing identity %@", buf, 0xCu);
    }

    v10 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5005, @"Error getting a public identity from sharing identity %@", identity);
  }

LABEL_15:

  return v10;
}

- (id)removeEncryptedPCS:(id)s fromSharePCS:(_OpaquePCSShareProtection *)cS
{
  v18 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v8 = 0;
  if (sCopy && cS)
  {
    v15 = 0;
    v9 = objc_msgSend_createSharePCSFromEncryptedData_error_(self, v6, sCopy, &v15);
    v10 = v15;
    v8 = v10;
    if (v9 && !v10)
    {
      v11 = PCSShareProtectionCopyPublicKeys();
      if (v11)
      {
        v12 = v11;
        CKCFArrayForEach();
        CFRelease(v9);
        v9 = v12;
      }

LABEL_12:
      CFRelease(v9);
      goto LABEL_13;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = sCopy;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Couldn't create a PCS from the encrypted blob %@", buf, 0xCu);
    }

    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return v8;
}

- (BOOL)removePublicKeys:(id)keys fromPCS:(_OpaquePCSShareProtection *)s
{
  v35 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if (s)
  {
    v6 = PCSFPCopyPublicIdentities();
    if (v6)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = keysCopy;
      obj = keysCopy;
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v22, v34, 16);
      if (v8)
      {
        v9 = *v23;
        do
        {
          v10 = 0;
          do
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v22 + 1) + 8 * v10);
            v18 = 0;
            v19 = &v18;
            v20 = 0x2020000000;
            v21 = 0;
            CKCFArrayForEach();
            if ((v19[3] & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v12 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v31 = v11;
                v32 = 2112;
                sCopy = s;
                _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Could not find matching public identity for key %{public}@ on record PCS %@", buf, 0x16u);
              }
            }

            _Block_object_dispose(&v18, 8);
            ++v10;
          }

          while (v8 != v10);
          v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v22, v34, 16);
        }

        while (v8);
      }

      keysCopy = v16;
      v14 = *(v27 + 24);
      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)removePublicKeyID:(id)d fromPCS:(_OpaquePCSShareProtection *)s
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = 0;
  if (dCopy && s)
  {
    v7 = PCSFPCopyPublicIdentities();
    if (v7)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = sub_225074150;
      v20 = sub_225073634;
      v21 = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v8 = dCopy;
      v11 = v8;
      CKCFArrayForEach();
      if ((v13[3] & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v9 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v23 = v8;
          v24 = 2112;
          sCopy = s;
          _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Could not find matching public identity for keyID %{public}@ on record PCS %@. Soldiering on.", buf, 0x16u);
        }
      }

      v6 = v17[5];

      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)sharingIdentityDataFromPCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (!s)
  {
    v22 = 0;
    goto LABEL_20;
  }

  v7 = PCSFPCopyKeyIDs();
  if (!objc_msgSend_count(v7, v8, v9))
  {
    v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, @"Couldn't get key IDs from share PCS %@", s);
    v12 = 0;
    goto LABEL_12;
  }

  v12 = objc_msgSend_lastObject(v7, v10, v11);
  v13 = PCSFPCopyPrivateKey();
  if (!v13)
  {
    v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Couldn't get PCS identity with key ID %@", v12);
    goto LABEL_12;
  }

  v16 = v13;
  v17 = objc_msgSend_identityManager(self, v14, v15);
  v26 = 0;
  v19 = objc_msgSend_dataFromSharingIdentity_error_(v17, v18, v16, &v26);
  v20 = v26;

  CFRelease(v16);
  if (!v19)
  {
LABEL_12:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Warn: Couldn't get sharing identity from PCS data: %@", buf, 0xCu);
    }

    if (error)
    {
      v24 = v20;
      v19 = 0;
      *error = v20;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_19;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = v19;
    v29 = 2112;
    sCopy = s;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Got sharing identity %@ from PCS data %@", buf, 0x16u);
  }

LABEL_19:
  v22 = v19;

LABEL_20:

  return v22;
}

- (id)decryptChainPCSForRecordPCS:(id)s
{
  sCopy = s;
  v7 = objc_msgSend_chainPCSData(sCopy, v5, v6);
  v10 = objc_msgSend_pcs(v7, v8, v9);

  if (v10)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if (!objc_msgSend_pcs(sCopy, v11, v12))
  {
    v61 = MEMORY[0x277CBC560];
    v62 = *MEMORY[0x277CBC120];
    v63 = objc_msgSend_recordID(sCopy, v14, v15);
    objc_msgSend_errorWithDomain_code_format_(v61, v64, v62, 5004, @"Can't decrypt chain PCS for record %@ because we don't have a decrypted record PCS", v63);
    v13 = LABEL_15:;

    goto LABEL_16;
  }

  v16 = objc_msgSend_chainPCSData(sCopy, v14, v15);
  v19 = objc_msgSend_encryptedChainPCSPrivateKey(v16, v17, v18);

  if (!v19)
  {
    v65 = MEMORY[0x277CBC560];
    v66 = *MEMORY[0x277CBC120];
    v63 = objc_msgSend_recordID(sCopy, v20, v21);
    objc_msgSend_errorWithDomain_code_format_(v65, v67, v66, 5004, @"Can't decrypt chain PCS for record %@ because the record has no chain PCS private key", v63);
    goto LABEL_15;
  }

  v22 = objc_msgSend_chainPCSData(sCopy, v20, v21);
  v25 = objc_msgSend_pcsData(v22, v23, v24);

  if (!v25)
  {
    v68 = MEMORY[0x277CBC560];
    v69 = *MEMORY[0x277CBC120];
    v63 = objc_msgSend_recordID(sCopy, v26, v27);
    objc_msgSend_errorWithDomain_code_format_(v68, v70, v69, 5004, @"Can't decrypt chain PCS for record %@ because the record has no chain PCS data", v63);
    goto LABEL_15;
  }

  v28 = objc_msgSend_chainPCSData(sCopy, v26, v27);
  v31 = objc_msgSend_encryptedChainPCSPrivateKey(v28, v29, v30);
  v34 = objc_msgSend_data(v31, v32, v33);

  if (v34 || (v72 = [CKDWrappingContext alloc], objc_msgSend_recordID(sCopy, v73, v74), v75 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v72, v76, v75, *MEMORY[0x277CBC8B0], 0, 0, 0), v75, objc_msgSend_chainPCSData(sCopy, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend_encryptedChainPCSPrivateKey(v80, v81, v82), v83 = objc_claimAutoreleasedReturnValue(), v86 = objc_msgSend_pcs(sCopy, v84, v85), objc_msgSend_unwrapEncryptedData_withPCS_inContext_(self, v87, v83, v86, v77), v13 = objc_claimAutoreleasedReturnValue(), v83, v80, v77, !v13))
  {
    v37 = objc_msgSend_identityManager(self, v35, v36);
    v40 = objc_msgSend_chainPCSData(sCopy, v38, v39);
    v43 = objc_msgSend_encryptedChainPCSPrivateKey(v40, v41, v42);
    v46 = objc_msgSend_data(v43, v44, v45);
    v89 = 0;
    v48 = objc_msgSend_createSharingIdentityFromData_error_(v37, v47, v46, &v89);
    v13 = v89;

    if (v48 && !v13)
    {
      v51 = objc_msgSend_chainPCSData(sCopy, v49, v50);
      v54 = objc_msgSend_pcsData(v51, v52, v53);
      v88 = 0;
      v56 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(self, v55, v54, v48, &v88);
      v13 = v88;

      if (!v56 || v13)
      {
        CFRelease(v48);
        v48 = v56;
        if (!v56)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v59 = objc_msgSend_chainPCSData(sCopy, v57, v58);
        objc_msgSend_setPcs_(v59, v60, v56);

        CFRelease(v48);
        v13 = 0;
        v48 = v56;
      }

      goto LABEL_26;
    }

    if (!v13)
    {
      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v49, *MEMORY[0x277CBC120], 5004, @"Couldn't decrypt the private chain PCS identity");
    }

    if (v48)
    {
LABEL_26:
      CFRelease(v48);
    }
  }

LABEL_16:

  return v13;
}

- (unint64_t)invitedPCSPermissionForParticipant:(id)participant inShare:(id)share error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  shareCopy = share;
  v13 = shareCopy;
  if (participantCopy)
  {
    if (shareCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v52, v53, a2, self, @"CKDPCSManager.m", 4878, @"Invalid parameter not satisfying: %@", @"participant");

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v54 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, a2, self, @"CKDPCSManager.m", 4879, @"Invalid parameter not satisfying: %@", @"share");

LABEL_3:
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  v14 = objc_msgSend_protectionInfo(participantCopy, v11, v12);
  v56 = 0;
  v16 = objc_msgSend_createSharePCSFromEncryptedData_error_(self, v15, v14, &v56);
  v17 = v56;

  if (v16)
  {
    v18 = PCSShareProtectionCopyPublicKeys();
    CFRelease(v16);
    if (objc_msgSend_count(v18, v19, v20))
    {
      if (objc_msgSend_count(v18, v21, v22) >= 2)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v25 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = participantCopy;
          _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "PCS for %@ had multiple public identities – using the first.", buf, 0xCu);
        }
      }

      v26 = objc_msgSend_firstObject(v18, v23, v24);

      CFRetain(v26);
      v31 = objc_msgSend_invitedProtectionData(v13, v27, v28);
      if (v31)
      {
        v32 = PCSFPCopyRecoverPCS();
        if (!v32)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v33 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v66 = 0;
            _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Couldn't create data from encrypted share PCS: %@", buf, 0xCu);
            if (!v26)
            {
              goto LABEL_17;
            }
          }

          else if (!v26)
          {
LABEL_17:
            if (error)
            {
              v34 = 0;
              *error = 0;
            }

            v35 = v58[3];

            goto LABEL_36;
          }

          CFRelease(v26);
          goto LABEL_17;
        }
      }

      else
      {
        objc_msgSend_privatePCS(v13, v29, v30);
        v32 = PCSFPCopyObject();
        if (!v32)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v44 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v51 = objc_msgSend_recordID(v13, v45, v46);
            *buf = 138412290;
            v66 = v51;
            _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Couldn't get private PCS for share %@", buf, 0xCu);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (error)
          {
            v48 = MEMORY[0x277CCA9B8];
            v61 = *MEMORY[0x277CCA450];
            v62 = @"Unable to copy share privatePCS.";
            v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, &v62, &v61, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v48, v50, *MEMORY[0x277CBBF50], 1, v49);
          }

          goto LABEL_35;
        }
      }

      _PCSFPEnumeratePublicIdentities();
      CFRelease(v32);
      if (v26)
      {
        CFRelease(v26);
      }

LABEL_35:
      v35 = v58[3];
LABEL_36:

      goto LABEL_37;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v66 = participantCopy;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "PCS for %@ contained no public identities.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_31;
      }
    }

    else if (!error)
    {
LABEL_31:
      v35 = v58[3];
LABEL_37:

      goto LABEL_38;
    }

    v40 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA450];
    v64 = @"PCS contained no public identities.";
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v64, &v63, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v40, v42, *MEMORY[0x277CBBF50], 1, v41);

    goto LABEL_31;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v36 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v66 = participantCopy;
    v67 = 2112;
    v68 = v17;
    _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Unable to build per-participant PCS for %@: %@", buf, 0x16u);
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (error)
  {
LABEL_24:
    v37 = v17;
    *error = v17;
  }

LABEL_25:
  v35 = v58[3];
LABEL_38:

  _Block_object_dispose(&v57, 8);
  return v35;
}

- (id)unwrapAssetKey:(id)key withRecordPCS:(_OpaquePCSShareProtection *)s inContext:(id)context withError:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contextCopy = context;
  v11 = objc_autoreleasePoolPush();
  contextCopy2 = v11;
  v13 = MEMORY[0x277CBC880];
  if (!keyCopy || !s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't unwrap asset key because we have no PCS object or wrapped asset key", buf, 2u);
    }

    v22 = 0;
LABEL_11:
    objc_autoreleasePoolPop(contextCopy2);
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v50 = v23;
      v53 = objc_msgSend_assetContextString(contextCopy, v51, v52);
      *buf = 138413058;
      *&buf[4] = keyCopy;
      v68 = 2112;
      sCopy2 = v53;
      v70 = 2112;
      sCopy = s;
      v72 = 2112;
      v73 = v22;
      _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Failed all decryption attempts for wrapped asset key %@ in context %@ using PCS %@: %@", buf, 0x2Au);
    }

    v26 = MEMORY[0x277CBC560];
    v27 = *MEMORY[0x277CBC120];
    v28 = objc_msgSend_assetContextString(contextCopy, v24, v25);
    v20 = objc_msgSend_errorWithDomain_code_error_format_(v26, v29, v27, 5004, v22, @"Failed all decryption attempts for wrapped asset key %@ in context %@ using PCS %@", keyCopy, v28, s);

    if (error)
    {
      v30 = v20;
      v19 = 0;
      *error = v20;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_50;
  }

  context = v11;
  v14 = PCSFPCopyAvailableMasterKeyIDs();
  *buf = 0;
  v17 = objc_msgSend_assetContextString(contextCopy, v15, v16);
  objc_msgSend_dataUsingEncoding_(v17, v18, 4);

  errorCopy = error;
  v58 = PCSFPCopyTruncatedKeyIDFromEncryptedData();
  if (v58)
  {
    v19 = PCSFPCopyDecryptedData();
    v20 = *buf;
    if (v19)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0;
  }

  v55 = v14;
  v56 = contextCopy;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = v14;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v63, v75, 16);
  if (v33)
  {
    v34 = v33;
    v35 = *v64;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v64 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v19 = PCSFPCopyDecryptedData();
        v38 = *buf;
        if (*buf)
        {

          *buf = 0;
          v20 = v38;
        }

        if (v19)
        {

          v14 = v55;
          contextCopy = v56;
          v13 = MEMORY[0x277CBC880];
          goto LABEL_45;
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v37, &v63, v75, 16);
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v13 = MEMORY[0x277CBC880];
  if (!v58)
  {
    goto LABEL_33;
  }

  v19 = PCSFPCopyUnwrappedKey();
  v39 = *buf;
  v14 = v55;
  if (*buf)
  {

    *buf = 0;
    v20 = v39;
  }

  contextCopy = v56;
  if (!v19)
  {
LABEL_33:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v40 = v31;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v59, v74, 16);
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      error = errorCopy;
      while (2)
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(v40);
          }

          v19 = PCSFPCopyUnwrappedKey();
          v47 = *buf;
          if (*buf)
          {

            *buf = 0;
            v20 = v47;
          }

          if (v19)
          {

            v14 = v55;
            contextCopy = v56;
            v13 = MEMORY[0x277CBC880];
            goto LABEL_46;
          }
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, &v59, v74, 16);
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      error = errorCopy;
    }

    v22 = v20;
    contextCopy = v56;
    contextCopy2 = context;
    v13 = MEMORY[0x277CBC880];
    goto LABEL_11;
  }

LABEL_45:

LABEL_46:
  objc_autoreleasePoolPop(context);
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v48 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *&buf[4] = keyCopy;
    v68 = 2112;
    sCopy2 = s;
    _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Unwrapped wrapped asset key %{public}@ with PCS %@", buf, 0x16u);
  }

LABEL_50:

  return v19;
}

- (id)wrapAssetKey:(id)key withRecordPCS:(_OpaquePCSShareProtection *)s inContext:(id)context withError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contextCopy = context;
  v14 = MEMORY[0x277CBC858];
  if (!keyCopy || !s)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v14;
    if (!os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v27 = 0;
      goto LABEL_20;
    }

    *buf = 0;
    _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Couldn't wrap asset key with no record PCS or asset key", buf, 2u);
LABEL_18:
    v27 = 0;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_20:
    v30 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v37 = v30;
      v39 = objc_msgSend_referenceIdentifierStringFromAssetKey_(self, v38, keyCopy);
      *buf = 138412546;
      v45 = v39;
      v46 = 2112;
      sCopy2 = s;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Couldn't wrap asset key with signature %@ with PCS %@", buf, 0x16u);

      if (error)
      {
        goto LABEL_22;
      }
    }

    else if (error)
    {
LABEL_22:
      v32 = MEMORY[0x277CBC560];
      v33 = *MEMORY[0x277CBC120];
      v34 = objc_msgSend_referenceIdentifierStringFromAssetKey_(self, v31, keyCopy);
      v27 = objc_msgSend_errorWithDomain_code_format_(v32, v35, v33, 5003, @"Couldn't wrap asset key with signature %@ with PCS %@", v34, s);

      v36 = v27;
      v28 = 0;
      *error = v27;
      goto LABEL_25;
    }

    v28 = 0;
    goto LABEL_25;
  }

  if (objc_msgSend_containerSupportsEnhancedContext(self, v11, v12) && (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_useEnhancedPCSEncryptionContext(v17, v18, v19), v17, v20))
  {
    v23 = objc_msgSend_assetContextString(contextCopy, v21, v22);
    objc_msgSend_dataUsingEncoding_(v23, v24, 4);

    v25 = PCSFPCopyEncryptedData();
  }

  else
  {
    v25 = PCSFPCopyWrappedKey();
  }

  v28 = v25;
  if (!v25)
  {
    goto LABEL_18;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v29 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    v41 = v29;
    v43 = objc_msgSend_referenceIdentifierStringFromAssetKey_(self, v42, keyCopy);
    *buf = 138412546;
    v45 = v43;
    v46 = 2112;
    sCopy2 = s;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Wrapped asset key with signature %@ with PCS %@", buf, 0x16u);
  }

  v27 = 0;
LABEL_25:

  return v28;
}

- (id)referenceIdentifierStringFromAssetKey:(id)key
{
  if (key)
  {
    v3 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, a2, key);
    v6 = v3;
    if (v3)
    {
      v3 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v3, v4, v5);
    }

    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unwrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s inContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v12 = objc_msgSend_data(dataCopy, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = 0;
LABEL_5:

    goto LABEL_6;
  }

  if (objc_msgSend_containerSupportsEnhancedContext(self, v13, v14))
  {
    v15 = objc_msgSend_encryptedDataContextString(contextCopy, v17, v18);
    v16 = objc_msgSend_unwrapEncryptedData_withPCS_withContextString_(self, v19, dataCopy, s, v15);
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:
  v20 = objc_msgSend_data(dataCopy, v17, v18);

  if (!v20)
  {
    v23 = objc_msgSend_fieldName(contextCopy, v21, v22);
    v25 = objc_msgSend_unwrapEncryptedData_withPCS_withContextString_(self, v24, dataCopy, s, v23);

    v16 = v25;
  }

  v26 = objc_msgSend_data(dataCopy, v21, v22);

  if (!v26)
  {
    v29 = objc_msgSend_unwrapEncryptedData_withPCS_withContextString_(self, v27, dataCopy, s, 0);

    v16 = v29;
  }

  v30 = objc_msgSend_data(dataCopy, v27, v28);
  if (v30)
  {
    v33 = v30;
  }

  else
  {
    if (objc_msgSend_containerSupportsEnhancedContext(self, v31, v32))
    {
      goto LABEL_15;
    }

    v33 = objc_msgSend_encryptedDataContextString(contextCopy, v34, v35);
    v37 = objc_msgSend_unwrapEncryptedData_withPCS_withContextString_(self, v36, dataCopy, s, v33);

    v16 = v37;
  }

LABEL_15:
  v38 = objc_msgSend_data(dataCopy, v34, v35);

  if (v38)
  {
    v39 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v42 = v40;
      v45 = objc_msgSend_encryptedDataContextString(contextCopy, v43, v44);
      v46 = 138413058;
      v47 = dataCopy;
      v48 = 2112;
      v49 = v45;
      v50 = 2112;
      sCopy = s;
      v52 = 2112;
      v53 = v16;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed all decryption attempts for encrypted data %@ in context %@ using PCS %@: %@", &v46, 0x2Au);
    }

    v39 = v16;
  }

  return v39;
}

- (id)_unwrapEncryptedData:(id)data usingKeyID:(id)d forPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string
{
  dataCopy = data;
  dCopy = d;
  stringCopy = string;
  objc_msgSend_dataUsingEncoding_(stringCopy, v11, 4);
  v14 = objc_msgSend_encryptedData(dataCopy, v12, v13);
  v15 = PCSFPCopyDecryptedData();

  if (v15)
  {

    objc_msgSend_setData_(dataCopy, v16, v15);
  }

  return 0;
}

- (id)unwrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string
{
  v53 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stringCopy = string;
  if (!s)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 5003, @"Couldn't unwrap encrypted data in context %@ because %@.", stringCopy, @"we don't have a record PCS");
    v23 = LABEL_7:;
    goto LABEL_33;
  }

  v12 = objc_msgSend_encryptedData(dataCopy, v9, v10);

  if (!v12)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5003, @"Couldn't unwrap encrypted data in context %@ because %@.", stringCopy, @"there's nothing to decrypt");
    goto LABEL_7;
  }

  v14 = objc_autoreleasePoolPush();
  cf = 0;
  v17 = objc_msgSend_encryptedData(dataCopy, v15, v16);
  v18 = PCSFPCopyTruncatedKeyIDFromEncryptedData();

  if (v18)
  {
    v22 = objc_msgSend__unwrapEncryptedData_usingKeyID_forPCS_withContextString_(self, v19, dataCopy, v18, s, stringCopy);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v48 = dataCopy;
      v49 = 2112;
      v50 = cf;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Failed to get keyID from encrypted data %@. Soldering on and trying all keyIDs. PCS error: %@", buf, 0x16u);
    }

    v22 = 0;
  }

  v25 = objc_msgSend_data(dataCopy, v20, v21);

  if (!v25 || v22)
  {

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v48 = stringCopy;
      v49 = 2112;
      v50 = v18;
      v51 = 2112;
      sCopy = s;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Couldn't unwrap encrypted data in context %@ using keyID %@ with record PCS %@. Trying all keyIDs.", buf, 0x20u);
    }

    v39 = v18;
    v40 = v14;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = PCSFPCopyAvailableMasterKeyIDs();
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v41, v46, 16);
    if (v29)
    {
      v31 = v29;
      v23 = 0;
      v32 = *v42;
LABEL_22:
      v33 = 0;
      v34 = v23;
      while (1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v23 = objc_msgSend__unwrapEncryptedData_usingKeyID_forPCS_withContextString_(self, v30, dataCopy, *(*(&v41 + 1) + 8 * v33), s, stringCopy);

        v37 = objc_msgSend_data(dataCopy, v35, v36);

        if (v37)
        {
          if (!v23)
          {
            break;
          }
        }

        ++v33;
        v34 = v23;
        if (v31 == v33)
        {
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v41, v46, 16);
          if (v31)
          {
            goto LABEL_22;
          }

          break;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v18 = v39;
    v14 = v40;
  }

  else
  {
    v23 = 0;
  }

  objc_autoreleasePoolPop(v14);
LABEL_33:

  return v23;
}

- (id)wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s inContext:(id)context
{
  contextCopy = context;
  dataCopy = data;
  if (objc_msgSend_containerSupportsEnhancedContext(self, v10, v11) && (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_useEnhancedPCSEncryptionContext(v14, v15, v16), v14, v17))
  {
    v18 = objc_msgSend_encryptedDataContextString(contextCopy, v12, v13);
  }

  else
  {
    v18 = objc_msgSend_fieldName(contextCopy, v12, v13);
  }

  v20 = v18;
  v21 = objc_msgSend_wrapEncryptedData_withPCS_withContextString_(self, v19, dataCopy, s, v18);

  return v21;
}

- (id)wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s withContextString:(id)string
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stringCopy = string;
  if (!s)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5003, @"Couldn't wrap encrypted data in context %@ because %@.", stringCopy, @"there's nothing to encrypt");
    v17 = LABEL_6:;
    goto LABEL_12;
  }

  v11 = objc_msgSend_data(dataCopy, v8, v9);

  if (!v11)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5003, @"Couldn't wrap encrypted data in context %@ because %@.", stringCopy, @"we don't have a record PCS");
    goto LABEL_6;
  }

  objc_msgSend_dataUsingEncoding_(stringCopy, v12, 4);
  v15 = objc_msgSend_data(dataCopy, v13, v14);
  v16 = PCSFPCopyEncryptedData();

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = stringCopy;
    v23 = 2112;
    sCopy = s;
    v25 = 2112;
    v26 = v16;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Wrapped encrypted data in context %@ with record PCS %@: %@", buf, 0x20u);
  }

  objc_msgSend_setEncryptedData_(dataCopy, v19, v16);
  v17 = 0;

LABEL_12:

  return v17;
}

- (void)_lockedGlobalPerUserBoundaryKeyDataWithCompletionHandler:(id)handler
{
  v51[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (handlerCopy)
  {
    v10 = objc_msgSend_containerID(self, v8, v9);
    v13 = objc_msgSend_specialContainerType(v10, v11, v12);

    if (v13 <= 0x18 && ((1 << v13) & 0x1840004) != 0)
    {
      v16 = 0;
    }

    else
    {
      v10 = objc_msgSend_containerID(self, v14, v15);
      v16 = objc_msgSend_isTestContainer(v10, v23, v24) ^ 1;
    }

    if (v13 <= 0x18 && ((1 << v13) & 0x1840004) != 0)
    {
      if (v16)
      {
LABEL_8:
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1017, @"Container not permitted to use global per-user boundary key for MMCSv2 uploads.");
        v20 = objc_msgSend_callbackQueue(self, v18, v19);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2252B28FC;
        block[3] = &unk_2785456C8;
        v48 = v17;
        v49 = handlerCopy;
        v21 = v17;
        dispatch_async(v20, block);

        v22 = v49;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_8;
      }
    }

    v25 = objc_msgSend_boundaryKeyData(self, v14, v15);
    if (v25)
    {
      v28 = v25;
      v29 = objc_msgSend_callbackQueue(self, v26, v27);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_2252B2914;
      v44[3] = &unk_2785456C8;
      v46 = handlerCopy;
      v21 = v28;
      v45 = v21;
      dispatch_async(v29, v44);

      v22 = v46;
    }

    else
    {
      v30 = objc_msgSend_account(self, v26, v27);
      v22 = objc_msgSend_dsid(v30, v31, v32);

      if (v22)
      {
        v50 = *MEMORY[0x277D430A8];
        v51[0] = v22;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v51, &v50, 1);
        v40 = handlerCopy;
        PCSGetBoundaryKey();
        v35 = v40;
      }

      else
      {
        v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5000, @"No account DSID, so we can't fetch a boundary key");
        v39 = objc_msgSend_callbackQueue(self, v37, v38);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = sub_2252B292C;
        v41[3] = &unk_2785456C8;
        v42 = v36;
        v43 = handlerCopy;
        v34 = v36;
        dispatch_async(v39, v41);

        v35 = v43;
      }

      v21 = 0;
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)globalPerUserBoundaryKeyDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252B2C18;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, v9);
}

- (BOOL)serviceTypeIsManatee:(unint64_t)manatee
{
  v5 = objc_msgSend_identityManager(self, a2, manatee);
  v7 = objc_msgSend_PCSServiceStringFromCKServiceType_(v5, v6, manatee);

  if (manatee)
  {
    IsManatee = PCSServiceItemTypeIsManatee();
  }

  else
  {
    IsManatee = objc_msgSend_currentServiceIsManatee(self, v8, v9);
  }

  v11 = IsManatee;

  return v11;
}

- (void)synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID:(id)d shouldThrottle:(BOOL)throttle completionHandler:(id)handler
{
  v149 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!objc_msgSend_forceEnableReadOnlyManatee(self, v10, v11))
  {
    v16 = dispatch_group_create();
    v139 = 0;
    v140 = &v139;
    v141 = 0x2020000000;
    v142 = 1;
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = sub_225074150;
    v137 = sub_225073634;
    v138 = 0;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v132 = 1;
    v123 = 0;
    v124 = &v123;
    v125 = 0x3032000000;
    v126 = sub_225074150;
    v127 = sub_225073634;
    v128 = 0;
    v19 = objc_msgSend_deviceContext(self, v17, v18);
    v22 = objc_msgSend_accountDataSecurityObserver(v19, v20, v21);
    v25 = objc_msgSend_account(self, v23, v24);
    error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v22, v26, v25, 0, 1, 0);

    v103 = objc_msgSend_userKeySyncNotifier(self, v28, v29);
    throttleCopy = throttle;
    if (error)
    {
      v102 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(self, v30, 5, 0);
      v33 = objc_msgSend_identityManager(self, v31, v32);
      v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v33, v34, 5);

      if (!v103)
      {
        v101 = 0;
        goto LABEL_11;
      }

      v116 = 0;
      v37 = objc_msgSend_allowUserKeySyncForServiceName_resourceLastModifiedDate_outdatedPublicKeyID_error_(v103, v36, v35, 0, v102, &v116);
      v38 = v116;
      if (v37)
      {
        v101 = v38;
LABEL_11:
        v50 = v16;
        dispatch_group_enter(v16);
        v98 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v51, v52);
        responsibleBundleID = self->_responsibleBundleID;
        v55 = objc_msgSend_account(self, v53, v54);
        v58 = objc_msgSend_dsid(v55, v56, v57);
        v61 = objc_msgSend_account(self, v59, v60);
        v64 = objc_msgSend_accountType(v61, v62, v63);
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = sub_2252B36A8;
        v111[3] = &unk_27854C3F0;
        v114 = &v129;
        v35 = v35;
        v112 = v35;
        v115 = &v123;
        v113 = v50;
        objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(v98, v65, v35, 0x28387E940, responsibleBundleID, 1, v58, v64, throttleCopy, self, dCopy, v111);

        v15 = v50;
        v66 = v112;
LABEL_29:

        v90 = objc_msgSend_callbackQueue(self, v88, v89);
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = sub_2252B37EC;
        v105[3] = &unk_27854C418;
        v106 = handlerCopy;
        v107 = &v139;
        v108 = &v129;
        v109 = &v123;
        v110 = &v133;
        v91 = handlerCopy;
        dispatch_group_notify(v15, v90, v105);

        _Block_object_dispose(&v123, 8);
        _Block_object_dispose(&v129, 8);
        _Block_object_dispose(&v133, 8);

        _Block_object_dispose(&v139, 8);
        goto LABEL_30;
      }

      v15 = v16;
      v83 = v38;
      if (!v38)
      {
        v92 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v92, v93, a2, self, @"CKDPCSManager.m", 5337, @"An error must be set when allowUserKeySyncForServiceName returns NO");

        v15 = v16;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v84 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v146 = v35;
        v147 = 2112;
        v148 = v83;
        _os_log_impl(&dword_22506F000, v84, OS_LOG_TYPE_INFO, "User key sync for signing identity %{public}@ was not permitted due to: %@", buf, 0x16u);
      }

      *(v130 + 24) = 0;
      v85 = v124;
LABEL_28:
      v87 = v83;
      v66 = v85[5];
      v101 = v87;
      v85[5] = v87;
      goto LABEL_29;
    }

    v102 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(self, v30, 6, 0);
    v43 = objc_msgSend_identityManager(self, v41, v42);
    v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v43, v44, 6);

    if (v103)
    {
      v122 = 0;
      v46 = objc_msgSend_allowUserKeySyncForServiceName_resourceLastModifiedDate_outdatedPublicKeyID_error_(v103, v45, v35, 0, v102, &v122);
      v47 = v122;
      if ((v46 & 1) == 0)
      {
        v15 = v16;
        v83 = v47;
        if (!v47)
        {
          v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, a2, self, @"CKDPCSManager.m", 5305, @"An error must be set when allowUserKeySyncForServiceName returns NO");

          v15 = v16;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v146 = v35;
          v147 = 2112;
          v148 = v83;
          _os_log_impl(&dword_22506F000, v86, OS_LOG_TYPE_INFO, "User key sync for signing identity %{public}@ was not permitted due to: %@", buf, 0x16u);
        }

        *(v140 + 24) = 0;
        v85 = v134;
        goto LABEL_28;
      }

      v101 = v47;
    }

    else
    {
      v101 = 0;
    }

    v67 = v16;
    dispatch_group_enter(v16);
    v99 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v68, v69);
    v97 = self->_responsibleBundleID;
    v72 = objc_msgSend_account(self, v70, v71);
    v75 = objc_msgSend_dsid(v72, v73, v74);
    v78 = objc_msgSend_account(self, v76, v77);
    v81 = objc_msgSend_accountType(v78, v79, v80);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_2252B3564;
    v117[3] = &unk_27854C3F0;
    v120 = &v139;
    v35 = v35;
    v118 = v35;
    v121 = &v133;
    v119 = v67;
    objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(v99, v82, v35, 0x28387E940, v97, 0, v75, v81, throttleCopy, self, dCopy, v117);

    v15 = v67;
    v66 = v118;
    goto LABEL_29;
  }

  v14 = objc_msgSend_callbackQueue(self, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B3544;
  block[3] = &unk_2785456A0;
  v144 = handlerCopy;
  v15 = handlerCopy;
  dispatch_async(v14, block);

LABEL_30:
}

- (void)synchronizeUserKeyRegistryForServiceType:(unint64_t)type resourceLastModifiedDate:(id)date outdatedPublicKeyID:(id)d shouldThrottle:(BOOL)throttle context:(id)context requestorOperationID:(id)iD completionHandler:(id)handler
{
  v83 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  contextCopy = context;
  iDCopy = iD;
  handlerCopy = handler;
  if (!objc_msgSend_forceEnableReadOnlyManatee(self, v20, v21))
  {
    v26 = objc_msgSend_identityManager(self, v22, v23);
    v25 = objc_msgSend_PCSServiceStringFromCKServiceType_(v26, v27, type);

    v30 = objc_msgSend_userKeySyncNotifier(self, v28, v29);
    v69 = v30;
    if (v30)
    {
      v76 = 0;
      v32 = objc_msgSend_allowUserKeySyncForServiceName_resourceLastModifiedDate_outdatedPublicKeyID_error_(v30, v31, v25, dateCopy, dCopy, &v76);
      v33 = v76;
      if ((v32 & 1) == 0)
      {
        v54 = v33;
        if (!v33)
        {
          v59 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v31, v34);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKDPCSManager.m", 5394, @"An error must be set when allowUserKeySyncForServiceName returns NO");
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v55 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v80 = v25;
          v81 = 2112;
          v82 = v54;
          _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "User key sync for identity %{public}@ was not permitted due to: %@", buf, 0x16u);
        }

        v58 = objc_msgSend_callbackQueue(self, v56, v57);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = sub_2252B3CC4;
        v73[3] = &unk_2785456C8;
        v75 = handlerCopy;
        v53 = v54;
        v74 = v53;
        dispatch_async(v58, v73);

        goto LABEL_15;
      }

      v62 = v33;
      v63 = v25;
      v64 = handlerCopy;
      v65 = iDCopy;
      v66 = contextCopy;
      v67 = dCopy;
      v68 = dateCopy;
    }

    else
    {
      v63 = v25;
      v64 = handlerCopy;
      v65 = iDCopy;
      v66 = contextCopy;
      v67 = dCopy;
      v68 = dateCopy;
      v62 = 0;
    }

    IsManatee = objc_msgSend_serviceTypeIsManatee_(self, v31, type);
    v37 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v35, v36);
    responsibleBundleID = self->_responsibleBundleID;
    v41 = objc_msgSend_account(self, v39, v40);
    v44 = objc_msgSend_dsid(v41, v42, v43);
    v47 = objc_msgSend_account(self, v45, v46);
    v50 = objc_msgSend_accountType(v47, v48, v49);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_2252B3CEC;
    v71[3] = &unk_27854C468;
    v71[4] = self;
    handlerCopy = v64;
    v72 = v64;
    iDCopy = v65;
    v51 = v50;
    v25 = v63;
    objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(v37, v52, v63, v66, responsibleBundleID, IsManatee, v44, v51, throttle, self, v65, v71);

    contextCopy = v66;
    dCopy = v67;
    dateCopy = v68;
    v53 = v62;
LABEL_15:

    goto LABEL_16;
  }

  v24 = objc_msgSend_callbackQueue(self, v22, v23);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B3CA0;
  block[3] = &unk_2785456A0;
  v78 = handlerCopy;
  dispatch_async(v24, block);

  v25 = v78;
LABEL_16:
}

- (void)_onSynchronizeQueue:(id)queue
{
  if (dispatch_get_specific("com.apple.cloudkit.pcsmanager.queue"))
  {
    v5 = *(queue + 2);
    queueCopy = queue;
    v5();
  }

  else
  {
    queueCopy2 = queue;
    queueCopy = objc_msgSend_synchronizeQueue(self, v7, v8);
    dispatch_sync(queueCopy, queueCopy2);
  }
}

+ (id)etagFromPCSData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  LODWORD(v17) = 0;
  dataCopy = data;
  v6 = objc_msgSend_bytes(dataCopy, v4, v5, 0, 0, v17, v18);
  v9 = objc_msgSend_length(dataCopy, v7, v8);

  CC_SHA1(v6, v9, &v16);
  v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, &v16, 20);
  v14 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v11, v12, v13);

  return v14;
}

+ (id)protectionIdentifierFromShareProtection:(_OpaquePCSShareProtection *)protection
{
  if (protection)
  {
    v4 = PCSFPGetCurrentMasterKeyID();
    v6 = objc_msgSend_subdataWithRange_(v4, v5, 0, 4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allProtectionIdentifiersFromShareProtection:(_OpaquePCSShareProtection *)protection
{
  if (protection)
  {
    v3 = PCSFPCopyAvailableMasterKeyIDs();
    v5 = objc_msgSend_CKMap_(v3, v4, &unk_28385DB00);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isKeyRollingUnitTestContainerID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKDPCSManager.m", 5464, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5464);
  }

  if (qword_280D583C0 != -1)
  {
    dispatch_once(&qword_280D583C0, &unk_28385DB20);
  }

  v8 = objc_msgSend_containerIdentifier(dCopy, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = qword_280D583B8;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (objc_msgSend_hasPrefix_(v8, v11, *(*(&v18 + 1) + 8 * i)))
        {
          LOBYTE(v12) = 1;
          goto LABEL_15;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v12;
}

+ (id)pcsOverrideKeys
{
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDPCSManager.m", 5487, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5487);
  }

  if (qword_280D583D0 != -1)
  {
    dispatch_once(&qword_280D583D0, &unk_28385DB40);
  }

  v3 = qword_280D583C8;

  return v3;
}

- (void)addEntriesForUnitTestOverrides:(id)overrides
{
  overridesCopy = overrides;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDPCSManager.m", 5533, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5533);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2252B45F8;
  v12[3] = &unk_278545898;
  v12[4] = self;
  v13 = overridesCopy;
  v8 = overridesCopy;
  objc_msgSend__onSynchronizeQueue_(self, v9, v12);
}

- (BOOL)_checkAndClearPCSTestOverrideForKey:(id)key
{
  keyCopy = key;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDPCSManager.m", 5552, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5552);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2252B4970;
  v14[3] = &unk_278546420;
  v16 = &v17;
  v14[4] = self;
  v8 = keyCopy;
  v15 = v8;
  objc_msgSend__onSynchronizeQueue_(self, v9, v14);
  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

- (BOOL)_checkPCSTestOverrideForKey:(id)key
{
  keyCopy = key;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDPCSManager.m", 5562, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5562);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2252B4B58;
  v14[3] = &unk_278546420;
  v16 = &v17;
  v14[4] = self;
  v8 = keyCopy;
  v15 = v8;
  objc_msgSend__onSynchronizeQueue_(self, v9, v14);
  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

- (id)_pcsTestOverrideForKey:(id)key
{
  keyCopy = key;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDPCSManager.m", 5571, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSManager.m", 5571);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_225074150;
  v21 = sub_225073634;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2252B4D5C;
  v14[3] = &unk_278546420;
  v16 = &v17;
  v14[4] = self;
  v8 = keyCopy;
  v15 = v8;
  objc_msgSend__onSynchronizeQueue_(self, v9, v14);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (CKDContainerScopedUserIDProvider)containerScopedUserIDProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_containerScopedUserIDProvider);

  return WeakRetained;
}

- (CKDPCSKeySyncNotifierProtocol)userKeySyncNotifier
{
  WeakRetained = objc_loadWeakRetained(&self->_userKeySyncNotifier);

  return WeakRetained;
}

@end