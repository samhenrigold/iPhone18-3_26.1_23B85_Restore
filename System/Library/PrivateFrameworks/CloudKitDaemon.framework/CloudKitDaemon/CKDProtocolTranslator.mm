@interface CKDProtocolTranslator
+ (id)standaloneTranslatorWithDatabaseScope:(int64_t)scope;
- (BOOL)_isDefaultUserNameFromClient:(id)client;
- (BOOL)_isDefaultUserNameFromServer:(id)server;
- (BOOL)_valueTypeIsAnEncryptedBytesTypeForField:(id)field;
- (BOOL)haveDownloadPreauthorizations;
- (BOOL)objectIsAnEncryptedType:(id)type;
- (CKDPIdentifier)pUserID;
- (CKDProtocolTranslator)initWithContainer:(id)container databaseScope:(int64_t)scope requireContainerScopedUserID:(BOOL)d;
- (CKDProtocolTranslatorIdentityDelegate)identityDelegate;
- (NSString)containerScopedUserID;
- (id)_capabilitiesFromPCapabilities:(id)capabilities level:(int)level;
- (id)_pRecordFromRecordSansValues:(id)values forCache:(BOOL)cache;
- (id)assetFromPAsset:(id)asset field:(id)field error:(id *)error;
- (id)blockedIdentityFromPBlockedUser:(id)user;
- (id)containerPrivacySettingsFromPContainerPrivacySettings:(id)settings;
- (id)cryptoRequirementsFromPSignedCryptoRequirements:(id)requirements zoneID:(id)d error:(id *)error requiredFeaturesValidationFailureType:(id *)type;
- (id)dateFromPDate:(id)date;
- (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)timestamps error:(id *)error;
- (id)deltaPRecordFromRecord:(id)record withAllFields:(BOOL)fields outDeletedMergeFields:(id *)mergeFields outKeysToSend:(id *)send;
- (id)deviceCapabilitySetFromPDeviceCapabilitySet:(id)set;
- (id)downloadPreauthorizationForResponseUUID:(id)d;
- (id)encryptedFieldValueOfType:(int)type withObject:(id)object;
- (id)encryptedObjectRepresentationFromFieldValue:(id)value;
- (id)featureSetFromPAdopterFeatureSet:(id)set ofFeatureClass:(Class)class;
- (id)fieldValueFromObject:(id)object forCache:(BOOL)cache;
- (id)fieldValueOfType:(int)type withObject:(id)object forCache:(BOOL)cache;
- (id)identityFromPUser:(id)user;
- (id)initInternalWithContainerScopedUserID:(id)d orgAdminUserID:(id)iD bundleID:(id)bundleID databaseScope:(int64_t)scope addDatabaseScopeToZoneIDs:(BOOL)ds pcsManager:(id)manager clientSDKVersion:(unsigned int)version isAppleInternal:(BOOL)self0;
- (id)locationFieldValueWithLatitude:(double)latitude longitude:(double)longitude;
- (id)mergeableDeltaFromPDelta:(id)delta valueID:(id)d error:(id *)error;
- (id)mergeableDeltaMetadataFromPMetadata:(id)metadata mergeableValueID:(id)d error:(id *)error;
- (id)mergeableRecordValueFromPRecordField:(id)field inPRecordIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error;
- (id)mergeableValueIDFromPMergeableValueIdentifier:(id)identifier recordName:(id)name fieldName:(id)fieldName encrypted:(BOOL)encrypted error:(id *)error;
- (id)notificationFromPPushMessage:(id)message;
- (id)objectRepresentationFromField:(id)field inRecord:(id)record asAnonymousCKUserID:(id)d;
- (id)objectRepresentationFromFieldValue:(id)value;
- (id)pAdopterFeatureSetFromFeatureSet:(id)set;
- (id)pAdopterFeatureSetFromRequiredFeatures:(id)features;
- (id)pAliasWithHashedStringID:(id)d type:(int)type;
- (id)pAliasWithIdentityLookupInfo:(id)info;
- (id)pAliasWithPhoneNumber:(id)number;
- (id)pAliasWithUserRecordID:(id)d;
- (id)pAssetFromAsset:(id)asset;
- (id)pBlockedUserFromShareBlockedIdentity:(id)identity;
- (id)pCapabilitiesFrom:(id)from;
- (id)pContainerScopedRecordIdentifierWithPRecordIdentifier:(id)identifier;
- (id)pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier:(id)identifier;
- (id)pContainerScopedUserIdentifierFromPUserIdentifier:(id)identifier;
- (id)pDateFromDate:(id)date;
- (id)pDeviceCapabilitiesFromDeviceCapabilitySet:(id)set withDeviceID:(id)d;
- (id)pEncryptedMergeableValueFromRecordValue:(id)value;
- (id)pFieldActionWithLocation:(int64_t)location length:(unint64_t)length values:(id)values;
- (id)pFieldWithKey:(id)key value:(id)value forCache:(BOOL)cache;
- (id)pIdentifierFromUserRecordID:(id)d;
- (id)pMergeableDeltaFromDelta:(id)delta error:(id *)error;
- (id)pMergeableDeltaMetadataFromMetadata:(id)metadata mergeableValueID:(id)d error:(id *)error;
- (id)pMergeableValueFromMergeableValueID:(id)d;
- (id)pMergeableValueIdentifierFromMergeableValueID:(id)d;
- (id)pPackageFromPackage:(id)package;
- (id)pParticipantFromShareParticipant:(id)participant forCache:(BOOL)cache;
- (id)pProtectionInfoKeysToRemoveFromPCSKeysToRemove:(id)remove;
- (id)pQueryFromQuery:(id)query error:(id *)error;
- (id)pRecordFromRecord:(id)record forCache:(BOOL)cache;
- (id)pRecordIdentifierFromRecordID:(id)d;
- (id)pRecordIdentifierFromUserRecordName:(id)name;
- (id)pRecordZoneFromRecordZone:(id)zone;
- (id)pRecordZoneIdentifierFromRecordZoneID:(id)d;
- (id)pRecordZoneReferenceFromRecordZoneReference:(id)reference;
- (id)pReferenceFromReference:(id)reference error:(id *)error;
- (id)pRequesterFromShareRequester:(id)requester;
- (id)pShareFromShare:(id)share forCache:(BOOL)cache;
- (id)pShareIdentifierFromRecordID:(id)d;
- (id)pShareUsageFromShareRecordID:(id)d at:(id)at withDeviceID:(id)iD;
- (id)pSignedVersionedBlobFrom:(id)from signature:(id)signature;
- (id)pStreamingAssetFromStreamingAsset:(id)asset forCache:(BOOL)cache;
- (id)pSubscriptionFromSubscription:(id)subscription error:(id *)error;
- (id)pUserIdentifierFromUserRecordName:(id)name;
- (id)pZoneCryptoFeatureRequirmentsFromZone:(id)zone;
- (id)pZoneUsageFromZoneID:(id)d at:(id)at withDeviceID:(id)iD;
- (id)packageFromPPackage:(id)package error:(id *)error;
- (id)pcsKeysToRemoveFromPProtectionInfoKeysToRemove:(id)remove;
- (id)recordFromPRecord:(id)record asAnonymousCKUserID:(id)d error:(id *)error;
- (id)recordIDFromPRecordIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error;
- (id)recordIDFromPShareIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error;
- (id)recordIDFromPUserName:(id)name error:(id *)error;
- (id)recordZoneFromPRecordZone:(id)zone asAnonymousCKUserID:(id)d databaseScope:(int64_t)scope error:(id *)error requiredFeaturesValidationFailureType:(id *)type;
- (id)recordZoneIDFromPRecordZoneIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error;
- (id)referenceFromPReference:(id)reference asAnonymousCKUserID:(id)d error:(id *)error;
- (id)requiredFeatureSetFromPAdopterFeatureSet:(id)set;
- (id)shareFromPShare:(id)share asAnonymousCKUserID:(id)d error:(id *)error;
- (id)shareParticipantFromPParticipant:(id)participant shareID:(id)d shouldMatchCurrentUserParticipantByPublicKey:(BOOL)key error:(id *)error;
- (id)shareRequesterFromPRequester:(id)requester;
- (id)streamingAssetFromPStreamingAsset:(id)asset error:(id *)error;
- (id)subscriptionFromPSubscription:(id)subscription error:(id *)error;
- (id)userNameFromPIdentifier:(id)identifier error:(id *)error;
- (int)fieldValueTypeFromEncryptedDataObject:(id)object isInList:(BOOL)list;
- (int)fieldValueTypeFromObject:(id)object;
- (int64_t)databaseScope;
- (unint64_t)capabilitiesFromPZoneCapabilities:(id)capabilities;
- (void)addCapability:(id)capability to:(id)to;
- (void)consumeResponseHeader:(id)header;
- (void)setDownloadPreauthorization:(id)preauthorization forResponseUUID:(id)d;
@end

@implementation CKDProtocolTranslator

- (NSString)containerScopedUserID
{
  v4 = objc_msgSend_overriddenContainerScopedUserID(self, a2, v2);
  containerScopedUserID = v4;
  if (!v4)
  {
    containerScopedUserID = self->_containerScopedUserID;
    if (!containerScopedUserID)
    {
      containerScopedUserID = *MEMORY[0x277CBC088];
    }
  }

  v6 = containerScopedUserID;

  return v6;
}

- (int64_t)databaseScope
{
  result = objc_msgSend_overriddenDatabaseScope(self, a2, v2);
  if (!result)
  {
    return self->_databaseScope;
  }

  return result;
}

- (id)initInternalWithContainerScopedUserID:(id)d orgAdminUserID:(id)iD bundleID:(id)bundleID databaseScope:(int64_t)scope addDatabaseScopeToZoneIDs:(BOOL)ds pcsManager:(id)manager clientSDKVersion:(unsigned int)version isAppleInternal:(BOOL)self0
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = CKDProtocolTranslator;
  v22 = [(CKDProtocolTranslator *)&v30 init];
  if (v22)
  {
    v23 = objc_msgSend_copy(dCopy, v20, v21);
    containerScopedUserID = v22->_containerScopedUserID;
    v22->_containerScopedUserID = v23;

    v27 = objc_msgSend_copy(iDCopy, v25, v26);
    orgAdminUserID = v22->_orgAdminUserID;
    v22->_orgAdminUserID = v27;

    v22->_databaseScope = scope;
    v22->_bundleID = bundleIDCopy;
    v22->_addDatabaseScopeToZoneIDs = ds;
    objc_storeStrong(&v22->_pcsManager, manager);
    v22->_clientSDKVersion = version;
    v22->_isAppleInternal = internal;
  }

  return v22;
}

- (CKDProtocolTranslator)initWithContainer:(id)container databaseScope:(int64_t)scope requireContainerScopedUserID:(BOOL)d
{
  dCopy = d;
  containerCopy = container;
  v12 = objc_msgSend_containerScopedUserID(containerCopy, v10, v11);

  if (!v12 && dCopy)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDProtocolTranslator.m", 118, @"Without a user id, this translator won't do what you want");
  }

  v15 = objc_msgSend_options(containerCopy, v13, v14);
  v18 = objc_msgSend_addDatabaseScopeToZoneIDs(v15, v16, v17);

  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v22 = objc_msgSend_containerID(containerCopy, v19, v20);
    v21 = objc_msgSend_specialContainerType(v22, v23, v24) == 5;
  }

  v25 = objc_msgSend_clientSDKVersion(containerCopy, v19, v20);
  v28 = objc_msgSend_containerID(containerCopy, v26, v27);
  isAppleInternal = objc_msgSend_isAppleInternal(v28, v29, v30);

  v34 = objc_msgSend_containerScopedUserID(containerCopy, v32, v33);
  v37 = objc_msgSend_orgAdminUserID(containerCopy, v35, v36);
  v40 = objc_msgSend_applicationBundleID(containerCopy, v38, v39);
  v43 = objc_msgSend_pcsManager(containerCopy, v41, v42);
  BYTE4(v49) = isAppleInternal;
  LODWORD(v49) = v25;
  v45 = objc_msgSend_initInternalWithContainerScopedUserID_orgAdminUserID_bundleID_databaseScope_addDatabaseScopeToZoneIDs_pcsManager_clientSDKVersion_isAppleInternal_(self, v44, v34, v37, v40, scope, v21, v43, v49);

  return v45;
}

+ (id)standaloneTranslatorWithDatabaseScope:(int64_t)scope
{
  v4 = [self alloc];
  BYTE4(v9) = 1;
  LODWORD(v9) = 0;
  isAppleInternal = objc_msgSend_initInternalWithContainerScopedUserID_orgAdminUserID_bundleID_databaseScope_addDatabaseScopeToZoneIDs_pcsManager_clientSDKVersion_isAppleInternal_(v4, v5, 0, 0, 0, scope, 0, 0, v9);
  objc_msgSend_setOverriddenContainerScopedUserID_(isAppleInternal, v7, *MEMORY[0x277CBC088]);

  return isAppleInternal;
}

- (BOOL)haveDownloadPreauthorizations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_downloadPreauthorizationMap != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)downloadPreauthorizationForResponseUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_downloadPreauthorizationMap, v6, dCopy);
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setDownloadPreauthorization:(id)preauthorization forResponseUUID:(id)d
{
  preauthorizationCopy = preauthorization;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_downloadPreauthorizationMap)
  {
    if (preauthorizationCopy)
    {
LABEL_3:
      objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_downloadPreauthorizationMap, v9, preauthorizationCopy, dCopy);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10);
    downloadPreauthorizationMap = selfCopy->_downloadPreauthorizationMap;
    selfCopy->_downloadPreauthorizationMap = v11;

    if (preauthorizationCopy)
    {
      goto LABEL_3;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Download Preauthorization Failed to Init", v14, 2u);
  }

LABEL_9:
  objc_sync_exit(selfCopy);
}

- (void)consumeResponseHeader:(id)header
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_assetAuthorizationResponses(header, a2, header);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v47, v52, 16);
  if (v4)
  {
    v7 = v4;
    v41 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v13 = objc_msgSend_responseHeaders(v9, v11, v12);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v51, 16);
        if (v15)
        {
          v18 = v15;
          v19 = *v44;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v13);
              }

              v21 = *(*(&v43 + 1) + 8 * j);
              v22 = objc_msgSend_headerValue(v21, v16, v17);
              v25 = objc_msgSend_headerKey(v21, v23, v24);
              objc_msgSend_setObject_forKey_(v10, v26, v22, v25);
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v43, v51, 16);
          }

          while (v18);
        }

        v27 = objc_alloc(MEMORY[0x277CBC198]);
        v30 = objc_msgSend_responseUUID(v9, v28, v29);
        v33 = objc_msgSend_authGetResponseBody(v9, v31, v32);
        v35 = objc_msgSend_initWithResponseUUID_contentResponseHeaders_contentResponseBody_(v27, v34, v30, v10, v33);

        v38 = objc_msgSend_responseUUID(v9, v36, v37);
        objc_msgSend_setDownloadPreauthorization_forResponseUUID_(self, v39, v35, v38);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v47, v52, 16);
    }

    while (v7);
  }
}

- (BOOL)_isDefaultUserNameFromServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v7 = objc_msgSend_containerScopedUserID(self, v4, v5);
    if (objc_msgSend_isEqualToString_(v7, v8, serverCopy))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(*MEMORY[0x277CBC088], v9, serverCopy);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)_isDefaultUserNameFromClient:(id)client
{
  clientCopy = client;
  v7 = objc_msgSend_containerScopedUserID(self, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, clientCopy))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(*MEMORY[0x277CBBF28], v9, clientCopy);
  }

  return isEqualToString;
}

- (CKDPIdentifier)pUserID
{
  v3 = objc_msgSend_containerScopedUserID(self, a2, v2);
  v6 = objc_msgSend_CKDPIdentifier_User(v3, v4, v5);

  return v6;
}

- (id)recordIDFromPUserName:(id)name error:(id *)error
{
  nameCopy = name;
  if (objc_msgSend__isDefaultUserNameFromServer_(self, v6, nameCopy))
  {
    v7 = *MEMORY[0x277CBBF28];

    nameCopy = v7;
  }

  if (_CKCheckArgument())
  {
    v8 = objc_alloc(MEMORY[0x277CBC5D0]);
    v10 = objc_msgSend_initWithRecordName_(v8, v9, nameCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pIdentifierFromUserRecordID:(id)d
{
  v4 = objc_msgSend_recordName(d, a2, d);
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, v4))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    v4 = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_User(v4, v6, v7);

  return v9;
}

- (id)pUserIdentifierFromUserRecordName:(id)name
{
  nameCopy = name;
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, nameCopy))
  {
    if (objc_msgSend_databaseScope(self, v6, v7) == 1 || objc_msgSend_databaseScope(self, v8, v9) == 4)
    {
      v12 = *MEMORY[0x277CBC088];
    }

    else
    {
      v12 = objc_msgSend_containerScopedUserID(self, v10, v11);
    }

    v13 = v12;

    nameCopy = v13;
  }

  v14 = objc_msgSend_CKDPIdentifier_User(nameCopy, v6, v7);

  return v14;
}

- (id)pContainerScopedUserIdentifierFromPUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend__isDefaultUserNameFromServer_(self, v5, identifierCopy))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    identifierCopy = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_User(identifierCopy, v6, v7);

  return v9;
}

- (id)pRecordIdentifierFromUserRecordName:(id)name
{
  nameCopy = name;
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, nameCopy))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    nameCopy = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_Record(nameCopy, v6, v7);

  return v9;
}

- (id)userNameFromPIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v8 = objc_msgSend_name(identifierCopy, v6, v7);
  v9 = _CKCheckArgument();

  if (v9)
  {
    v12 = objc_msgSend_name(identifierCopy, v10, v11);
    if (objc_msgSend_hasName(identifierCopy, v13, v14))
    {
      v17 = objc_msgSend_name(identifierCopy, v15, v16);
      isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v18, v17);

      if (isDefaultUserNameFromServer)
      {
        v20 = *MEMORY[0x277CBBF28];

        v12 = v20;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)recordIDFromPRecordIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  v12 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], v10, v11);
  v15 = objc_msgSend_zoneID(v12, v13, v14);
  v18 = objc_msgSend_copy(v15, v16, v17);

  v21 = objc_msgSend_zoneIdentifier(identifierCopy, v19, v20);
  v24 = objc_msgSend_ownerIdentifier(v21, v22, v23);
  v27 = objc_msgSend_name(v24, v25, v26);
  isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v28, v27);

  if (objc_msgSend_hasZoneIdentifier(identifierCopy, v30, v31))
  {
    v34 = objc_msgSend_zoneIdentifier(identifierCopy, v32, v33);
    v37 = objc_msgSend_value(v34, v35, v36);
    v40 = objc_msgSend_name(v37, v38, v39);
    v42 = objc_msgSend_isEqualToString_(v40, v41, *MEMORY[0x277CBC060]) ^ 1;
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_msgSend_addDatabaseScopeToZoneIDs(self, v32, v33);
  if ((isDefaultUserNameFromServer && (v42 & 1) == 0 && !v43 || (objc_msgSend_zoneIdentifier(identifierCopy, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v47, v46, dCopy, error), v48 = objc_claimAutoreleasedReturnValue(), v18, v46, (v18 = v48) != 0)) && (objc_msgSend_value(identifierCopy, v44, v45), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v49, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), v53 = _CKCheckArgument(), v52, v49, v53))
  {
    v54 = objc_alloc(MEMORY[0x277CBC5D0]);
    v57 = objc_msgSend_value(identifierCopy, v55, v56);
    v60 = objc_msgSend_name(v57, v58, v59);
    v62 = objc_msgSend_initWithRecordName_zoneID_(v54, v61, v60, v18);
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (id)pRecordIdentifierFromRecordID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(dCopy, v6, v7);
  v10 = objc_msgSend_pRecordIdentifierFromUserRecordName_(self, v9, v8);
  objc_msgSend_setValue_(v5, v11, v10);

  v14 = objc_msgSend_zoneID(dCopy, v12, v13);

  v16 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v15, v14);
  objc_msgSend_setZoneIdentifier_(v5, v17, v16);

  return v5;
}

- (id)pContainerScopedRecordIdentifierWithPRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v8 = objc_msgSend_value(identifierCopy, v6, v7);
  objc_msgSend_setValue_(v5, v9, v8);

  v12 = objc_msgSend_zoneIdentifier(identifierCopy, v10, v11);

  v14 = objc_msgSend_pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier_(self, v13, v12);
  objc_msgSend_setZoneIdentifier_(v5, v15, v14);

  v18 = objc_msgSend_zoneIdentifier(v5, v16, v17);

  if (v18)
  {
    v18 = v5;
  }

  return v18;
}

- (id)recordZoneIDFromPRecordZoneIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  v12 = objc_msgSend_ownerIdentifier(identifierCopy, v10, v11);
  v14 = objc_msgSend_userNameFromPIdentifier_error_(self, v13, v12, error);

  if (!v14 || (objc_msgSend_value(identifierCopy, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v21 = _CKCheckArgument(), v20, v17, !v21))
  {
    v32 = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_addDatabaseScopeToZoneIDs(self, v22, v23))
  {
    goto LABEL_8;
  }

  v26 = objc_msgSend_databaseScope(self, v24, v25);
  if (objc_msgSend_hasDatabaseType(identifierCopy, v27, v28))
  {
    v31 = objc_msgSend_databaseType(identifierCopy, v29, v30) - 1;
    if (v31 <= 3)
    {
      v26 = qword_225447F98[v31];
      goto LABEL_9;
    }

LABEL_8:
    v26 = 0;
  }

LABEL_9:
  v33 = objc_alloc(MEMORY[0x277CBC5F8]);
  v36 = objc_msgSend_value(identifierCopy, v34, v35);
  v39 = objc_msgSend_name(v36, v37, v38);
  v32 = objc_msgSend_initWithZoneName_ownerName_anonymousCKUserID_databaseScope_(v33, v40, v39, v14, dCopy, v26);

LABEL_10:

  return v32;
}

- (id)pRecordZoneIdentifierFromRecordZoneID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v8 = objc_msgSend_zoneName(dCopy, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_Zone(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_ownerName(dCopy, v13, v14);
  v17 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v16, v15);
  objc_msgSend_setOwnerIdentifier_(v5, v18, v17);

  v21 = objc_msgSend_databaseScope(dCopy, v19, v20);
  if (!v21)
  {
    v21 = objc_msgSend_databaseScope(self, v22, v23);
  }

  if (v21 > 4)
  {
    objc_msgSend_setDatabaseType_(v5, v22, 1);
  }

  else
  {
    objc_msgSend_setDatabaseType_(v5, v22, dword_225447FB8[v21]);
  }

  return v5;
}

- (id)pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v8 = objc_msgSend_value(identifierCopy, v6, v7);
  objc_msgSend_setValue_(v5, v9, v8);

  v12 = objc_msgSend_ownerIdentifier(identifierCopy, v10, v11);
  v15 = objc_msgSend_name(v12, v13, v14);
  v17 = objc_msgSend_pContainerScopedUserIdentifierFromPUserIdentifier_(self, v16, v15);
  objc_msgSend_setOwnerIdentifier_(v5, v18, v17);

  v21 = objc_msgSend_ownerIdentifier(v5, v19, v20);

  if (v21)
  {
    if (objc_msgSend_hasDatabaseType(identifierCopy, v22, v23))
    {
      v26 = objc_msgSend_databaseType(identifierCopy, v24, v25);
      objc_msgSend_setDatabaseType_(v5, v27, v26);
    }

    v21 = v5;
  }

  return v21;
}

- (id)pShareIdentifierFromRecordID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(dCopy, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_ShareId(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_zoneID(dCopy, v13, v14);

  v17 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v16, v15);
  objc_msgSend_setZoneIdentifier_(v5, v18, v17);

  return v5;
}

- (id)recordIDFromPShareIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  v12 = objc_msgSend_zoneIdentifier(identifierCopy, v10, v11);
  v14 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v13, v12, dCopy, error);

  if (v14 && (objc_msgSend_value(identifierCopy, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v21 = _CKCheckArgument(), v20, v17, v21))
  {
    v22 = objc_alloc(MEMORY[0x277CBC5D0]);
    v25 = objc_msgSend_value(identifierCopy, v23, v24);
    v28 = objc_msgSend_name(v25, v26, v27);
    v30 = objc_msgSend_initWithRecordName_zoneID_(v22, v29, v28, v14);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)referenceFromPReference:(id)reference asAnonymousCKUserID:(id)d error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  dCopy = d;
  v12 = objc_msgSend_recordIdentifier(referenceCopy, v10, v11);
  v28 = 0;
  v14 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v13, v12, dCopy, &v28);

  v17 = v28;
  if (v14)
  {
    if (objc_msgSend_hasType(referenceCopy, v15, v16))
    {
      v20 = objc_msgSend_type(referenceCopy, v18, v19);
      v21 = sub_22509E008(v20);
    }

    else
    {
      v21 = 0;
    }

    v24 = objc_alloc(MEMORY[0x277CBC620]);
    v23 = objc_msgSend_initWithRecordID_action_(v24, v25, v14, v21);
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v30 = referenceCopy;
    v31 = 2112;
    v32 = v17;
    _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Invalid record identifier from server %{public}@: %@", buf, 0x16u);
  }

  v23 = 0;
  if (error)
  {
LABEL_12:
    v26 = v17;
    *error = v17;
  }

LABEL_13:

  return v23;
}

- (id)pReferenceFromReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  v6 = objc_opt_new();
  v9 = objc_msgSend_recordID(referenceCopy, v7, v8);
  v11 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v10, v9);
  objc_msgSend_setRecordIdentifier_(v6, v12, v11);

  v15 = objc_msgSend_referenceAction(referenceCopy, v13, v14);
  if (*MEMORY[0x277CBC070] == v15)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if (v15 == 1)
  {
    objc_msgSend_setType_(v6, v16, 1);
  }

  else
  {
    objc_msgSend_setType_(v6, v16, v17);
  }

  return v6;
}

- (id)recordFromPRecord:(id)record asAnonymousCKUserID:(id)d error:(id *)error
{
  v420 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v12 = objc_msgSend_recordIdentifier(recordCopy, v10, v11);
  v396 = dCopy;
  selfCopy = self;
  v14 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v13, v12, dCopy, error);

  if (!v14)
  {
    v28 = 0;
    goto LABEL_122;
  }

  v17 = objc_msgSend_type(recordCopy, v15, v16);
  v20 = objc_msgSend_name(v17, v18, v19);
  v392 = *MEMORY[0x277CBC050];
  isEqualToString = objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277CBC050]);

  if (isEqualToString)
  {
    v25 = objc_msgSend_shareInfo(recordCopy, v23, v24);
    inited = objc_msgSend_shareFromPShare_asAnonymousCKUserID_error_(selfCopy, v26, v25, v396, error);
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CBC5A0]);
    v25 = objc_msgSend_type(recordCopy, v30, v31);
    v34 = objc_msgSend_name(v25, v32, v33);
    inited = objc_msgSend_initInternalSkippingValidationWithRecordType_recordID_(v29, v35, v34, v14);
  }

  if (!inited)
  {
    goto LABEL_120;
  }

  if (objc_msgSend_hasStableUrl(recordCopy, v36, v37))
  {
    v40 = objc_msgSend_stableUrl(recordCopy, v38, v39);
    if (objc_msgSend_hasRoutingKey(v40, v41, v42))
    {
      v45 = objc_msgSend_stableUrl(recordCopy, v43, v44);
      v48 = objc_msgSend_routingKey(v45, v46, v47);
      objc_msgSend_setRoutingKey_(inited, v49, v48);
    }

    else
    {
      objc_msgSend_setRoutingKey_(inited, v43, 0);
    }

    v52 = objc_msgSend_stableUrl(recordCopy, v50, v51);
    hasEncryptedPublicSharingKey = objc_msgSend_hasEncryptedPublicSharingKey(v52, v53, v54);

    if (hasEncryptedPublicSharingKey)
    {
      v58 = objc_alloc(MEMORY[0x277CBC2E8]);
      v61 = objc_msgSend_stableUrl(recordCopy, v59, v60);
      v64 = objc_msgSend_encryptedPublicSharingKey(v61, v62, v63);
      v66 = objc_msgSend_initWithEncryptedData_(v58, v65, v64);
      objc_msgSend_setMutableEncryptedPSK_(inited, v67, v66);
    }

    v68 = objc_msgSend_stableUrl(recordCopy, v56, v57);
    v71 = objc_msgSend_displayedHostname(v68, v69, v70);
    objc_msgSend_setDisplayedHostname_(inited, v72, v71);
  }

  v394 = recordCopy;
  v395 = inited;
  v393 = v14;
  if (objc_msgSend_hasOneTimeStableUrlInfo(recordCopy, v38, v39))
  {
    errorCopy = error;
    v391 = inited;
    v75 = objc_opt_new();
    v410 = 0u;
    v411 = 0u;
    v412 = 0u;
    v413 = 0u;
    v78 = objc_msgSend_oneTimeStableUrlInfo(recordCopy, v76, v77);
    v81 = objc_msgSend_oneTimeUrls(v78, v79, v80);

    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v410, v419, 16);
    if (v83)
    {
      v86 = v83;
      v87 = *v411;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v411 != v87)
          {
            objc_enumerationMutation(v81);
          }

          v89 = *(*(&v410 + 1) + 8 * i);
          if (objc_msgSend_hasEncryptedFullTokenInfo(v89, v84, v85, errorCopy) && objc_msgSend_participantIdsCount(v89, v84, v85))
          {
            v90 = objc_alloc(MEMORY[0x277CBC2E8]);
            v93 = objc_msgSend_encryptedFullTokenInfo(v89, v91, v92);
            v95 = objc_msgSend_initWithEncryptedData_(v90, v94, v93);

            v96 = objc_alloc(MEMORY[0x277CBC4E0]);
            v99 = objc_msgSend_participantIds(v89, v97, v98);
            v102 = objc_msgSend_firstObject(v99, v100, v101);
            v104 = objc_msgSend_initWithEncryptedOneTimeFullToken_participantID_(v96, v103, v95, v102);

            v107 = objc_msgSend_participantIds(v89, v105, v106);
            v110 = objc_msgSend_firstObject(v107, v108, v109);
            objc_msgSend_setObject_forKeyedSubscript_(v75, v111, v104, v110);
          }
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v410, v419, 16);
      }

      while (v86);
    }

    if (objc_msgSend_count(v75, v112, v113))
    {
      objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v391, v114, v75);
      v408 = 0u;
      v409 = 0u;
      v406 = 0u;
      v407 = 0u;
      v117 = objc_msgSend_allParticipants(v391, v115, v116);
      v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v406, v418, 16);
      if (v119)
      {
        v122 = v119;
        v123 = *v407;
        do
        {
          for (j = 0; j != v122; ++j)
          {
            if (*v407 != v123)
            {
              objc_enumerationMutation(v117);
            }

            v125 = *(*(&v406 + 1) + 8 * j);
            v126 = objc_msgSend_allKeys(v75, v120, v121, errorCopy);
            v129 = objc_msgSend_participantID(v125, v127, v128);
            v131 = objc_msgSend_containsObject_(v126, v130, v129);

            if (v131)
            {
              objc_msgSend_setUsesOneTimeURL_(v125, v120, 1);
            }
          }

          v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v120, &v406, v418, 16);
        }

        while (v122);
      }
    }

    v14 = v393;
    recordCopy = v394;
    inited = v395;
    error = errorCopy;
  }

  v132 = objc_msgSend_etag(recordCopy, v73, v74, errorCopy);
  objc_msgSend_setEtag_(inited, v133, v132);

  if (objc_msgSend_hasTimeStatistics(recordCopy, v134, v135))
  {
    v138 = objc_msgSend_timeStatistics(recordCopy, v136, v137);
    if (objc_msgSend_hasCreation(v138, v139, v140))
    {
      v143 = MEMORY[0x277CBEAA8];
      v144 = objc_msgSend_timeStatistics(recordCopy, v141, v142);
      v147 = objc_msgSend_creation(v144, v145, v146);
      objc_msgSend_time(v147, v148, v149);
      v152 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v143, v150, v151);
      objc_msgSend_setCreationDate_(inited, v153, v152);
    }

    else
    {
      objc_msgSend_setCreationDate_(inited, v141, 0);
    }

    v156 = objc_msgSend_timeStatistics(recordCopy, v154, v155);
    if (objc_msgSend_hasModification(v156, v157, v158))
    {
      v161 = MEMORY[0x277CBEAA8];
      v162 = objc_msgSend_timeStatistics(recordCopy, v159, v160);
      v165 = objc_msgSend_modification(v162, v163, v164);
      objc_msgSend_time(v165, v166, v167);
      v170 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v161, v168, v169);
      objc_msgSend_setModificationDate_(inited, v171, v170);
    }

    else
    {
      objc_msgSend_setModificationDate_(inited, v159, 0);
    }
  }

  if (objc_msgSend_hasCreatedBy(recordCopy, v136, v137))
  {
    v174 = objc_msgSend_createdBy(recordCopy, v172, v173);
    v177 = objc_msgSend_name(v174, v175, v176);
    v179 = objc_msgSend_recordIDFromPUserName_error_(selfCopy, v178, v177, 0);
    objc_msgSend_setCreatorUserRecordID_(inited, v180, v179);
  }

  if (objc_msgSend_hasModifiedBy(recordCopy, v172, v173))
  {
    v183 = objc_msgSend_modifiedBy(recordCopy, v181, v182);
    v186 = objc_msgSend_name(v183, v184, v185);
    v188 = objc_msgSend_recordIDFromPUserName_error_(selfCopy, v187, v186, 0);
    objc_msgSend_setLastModifiedUserRecordID_(inited, v189, v188);
  }

  if (objc_msgSend_hasModifiedByDevice(recordCopy, v181, v182))
  {
    v192 = objc_msgSend_modifiedByDevice(recordCopy, v190, v191);
    objc_msgSend_setModifiedByDevice_(inited, v193, v192);
  }

  if (objc_msgSend_hasExpirationTime(recordCopy, v190, v191))
  {
    v196 = MEMORY[0x277CBEAA8];
    v197 = objc_msgSend_expirationTime(recordCopy, v194, v195);
    objc_msgSend_time(v197, v198, v199);
    v202 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v196, v200, v201);
    objc_msgSend_setExpirationDate_(inited, v203, v202);
  }

  if (objc_msgSend_hasExpired(recordCopy, v194, v195))
  {
    v206 = objc_msgSend_expired(recordCopy, v204, v205);
    objc_msgSend_setExpired_(inited, v207, v206);
  }

  if (objc_msgSend_hasProtectionInfo(recordCopy, v204, v205))
  {
    v210 = objc_msgSend_protectionInfo(recordCopy, v208, v209);
    v213 = objc_msgSend_protectionInfo(v210, v211, v212);
    v216 = objc_msgSend_length(v213, v214, v215);

    if (v216)
    {
      v217 = objc_msgSend_protectionInfo(recordCopy, v208, v209);
      v220 = objc_msgSend_protectionInfo(v217, v218, v219);
      objc_msgSend_setProtectionData_(inited, v221, v220);

      v224 = objc_msgSend_protectionInfo(recordCopy, v222, v223);
      v227 = objc_msgSend_protectionInfoTag(v224, v225, v226);
      objc_msgSend_setProtectionEtag_(inited, v228, v227);
    }
  }

  if (objc_msgSend_hasZoneishPrimaryKeyId(recordCopy, v208, v209))
  {
    v231 = objc_msgSend_zoneishPrimaryKeyId(recordCopy, v229, v230);
    objc_msgSend_setZoneishKeyID_(inited, v232, v231);
  }

  objc_msgSend_setTrackChanges_(inited, v229, 0);
  if (!objc_msgSend_hasShareId(recordCopy, v233, v234))
  {
    goto LABEL_65;
  }

  v237 = objc_msgSend_type(recordCopy, v235, v236);
  v240 = objc_msgSend_name(v237, v238, v239);
  v242 = objc_msgSend_isEqualToString_(v240, v241, v392);

  if (v242)
  {
    goto LABEL_65;
  }

  v243 = objc_msgSend_shareId(recordCopy, v235, v236);
  v245 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(selfCopy, v244, v243, v396, error);

  if (v245)
  {
    v246 = objc_alloc(MEMORY[0x277CBC620]);
    v248 = objc_msgSend_initWithRecordID_action_(v246, v247, v245, 0);
    objc_msgSend_setShare_(inited, v249, v248);

    v252 = objc_msgSend_share(inited, v250, v251);

    if (v252)
    {

LABEL_65:
      if (!objc_msgSend_hasChainParent(recordCopy, v235, v236))
      {
LABEL_72:
        v279 = objc_msgSend_tombstonedPublicKeyIDs(recordCopy, v253, v254);
        objc_msgSend_setTombstonedPublicKeyIDs_(inited, v280, v279);

        if (objc_msgSend_hasChainPrivateKey(recordCopy, v281, v282))
        {
          v285 = objc_alloc(MEMORY[0x277CBC2E8]);
          v288 = objc_msgSend_chainPrivateKey(recordCopy, v286, v287);
          v290 = objc_msgSend_initWithEncryptedData_(v285, v289, v288);
          objc_msgSend_setChainPrivateKey_(inited, v291, v290);
        }

        if (objc_msgSend_hasChainProtectionInfo(recordCopy, v283, v284))
        {
          v294 = objc_msgSend_chainProtectionInfo(recordCopy, v292, v293);
          v297 = objc_msgSend_protectionInfo(v294, v295, v296);
          objc_msgSend_setChainProtectionInfo_(inited, v298, v297);
        }

        v404 = 0u;
        v405 = 0u;
        v402 = 0u;
        v403 = 0u;
        v299 = objc_msgSend_fields(recordCopy, v292, v293);
        v301 = objc_msgSend_countByEnumeratingWithState_objects_count_(v299, v300, &v402, v415, 16);
        if (v301)
        {
          v304 = v301;
          v305 = *v403;
          do
          {
            for (k = 0; k != v304; ++k)
            {
              if (*v403 != v305)
              {
                objc_enumerationMutation(v299);
              }

              v307 = *(*(&v402 + 1) + 8 * k);
              v308 = objc_msgSend_identifier(v307, v302, v303);
              v311 = objc_msgSend_name(v308, v309, v310);
              hasPrefix = objc_msgSend_hasPrefix_(v311, v312, @"_");

              if ((hasPrefix & 1) == 0)
              {
                v314 = objc_msgSend_identifier(v307, v302, v303);
                v317 = objc_msgSend_name(v314, v315, v316);

                v319 = objc_msgSend_objectRepresentationFromField_inRecord_asAnonymousCKUserID_(selfCopy, v318, v307, recordCopy, v396);
                if ((objc_msgSend_objectIsAnEncryptedType_(selfCopy, v320, v319) & 1) != 0 || objc_msgSend__valueTypeIsAnEncryptedBytesTypeForField_(selfCopy, v321, v307))
                {
                  v323 = objc_msgSend_encryptedValueStore(v395, v321, v322);
                }

                else
                {
                  v323 = objc_msgSend_valueStore(v395, v321, v322);
                }

                v325 = v323;
                objc_msgSend_setObjectNoValidate_forKey_(v323, v324, v319, v317);

                recordCopy = v394;
              }
            }

            v304 = objc_msgSend_countByEnumeratingWithState_objects_count_(v299, v302, &v402, v415, 16);
          }

          while (v304);
        }

        inited = v395;
        objc_msgSend_setTrackChanges_(v395, v326, 1);
        if (objc_msgSend_pluginFieldsCount(recordCopy, v327, v328))
        {
          v331 = objc_alloc(MEMORY[0x277CBEB38]);
          v334 = objc_msgSend_pluginFieldsCount(recordCopy, v332, v333);
          v336 = objc_msgSend_initWithCapacity_(v331, v335, v334);
          v398 = 0u;
          v399 = 0u;
          v400 = 0u;
          v401 = 0u;
          v339 = objc_msgSend_pluginFields(recordCopy, v337, v338);
          v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v340, &v398, v414, 16);
          if (v341)
          {
            v344 = v341;
            v345 = *v399;
            do
            {
              for (m = 0; m != v344; ++m)
              {
                if (*v399 != v345)
                {
                  objc_enumerationMutation(v339);
                }

                v347 = *(*(&v398 + 1) + 8 * m);
                v348 = objc_msgSend_value(v347, v342, v343);
                v350 = objc_msgSend_objectRepresentationFromFieldValue_(selfCopy, v349, v348);
                v353 = objc_msgSend_identifier(v347, v351, v352);
                v356 = objc_msgSend_name(v353, v354, v355);
                objc_msgSend_setObject_forKeyedSubscript_(v336, v357, v350, v356);
              }

              v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v342, &v398, v414, 16);
            }

            while (v344);
          }

          inited = v395;
          objc_msgSend_setPluginFields_(v395, v358, v336);
        }

        v359 = objc_msgSend_conflictLoserEtags(recordCopy, v329, v330);
        objc_msgSend_setConflictLoserEtags_(inited, v360, v359);

        objc_msgSend_setKnownToServer_(inited, v361, 1);
        if (objc_msgSend_hasPermission(recordCopy, v362, v363))
        {
          if (objc_msgSend_permission(recordCopy, v364, v365) == 1)
          {
            v366 = 2;
          }

          else
          {
            v366 = 1;
          }
        }

        else
        {
          v366 = 0;
        }

        v14 = v393;
        objc_msgSend_setPermission_(inited, v364, v366);
        if (objc_msgSend_hasProtectionInfoKeysToRemove(recordCopy, v367, v368))
        {
          v371 = objc_msgSend_protectionInfoKeysToRemove(recordCopy, v369, v370);
          v373 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(selfCopy, v372, v371);
          objc_msgSend_setPcsKeysToRemove_(inited, v374, v373);
        }

        v28 = inited;
        goto LABEL_121;
      }

      v245 = objc_msgSend_chainParent(recordCopy, v253, v254);
      if (!objc_msgSend_hasReference(v245, v255, v256))
      {
LABEL_69:
        if (objc_msgSend_hasPublicKeyID(v245, v257, v258))
        {
          v277 = objc_msgSend_publicKeyID(v245, v275, v276);
          objc_msgSend_setChainParentPublicKeyID_(inited, v278, v277);
        }

        goto LABEL_72;
      }

      v259 = objc_msgSend_chainParent(recordCopy, v257, v258);
      v262 = objc_msgSend_reference(v259, v260, v261);
      v265 = objc_msgSend_recordIdentifier(v262, v263, v264);
      v267 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(selfCopy, v266, v265, v396, error);

      v268 = objc_alloc(MEMORY[0x277CBC620]);
      v270 = objc_msgSend_initWithRecordID_action_(v268, v269, v267, 0);
      objc_msgSend_setParent_(inited, v271, v270);

      v274 = objc_msgSend_parent(inited, v272, v273);

      if (v274)
      {

        goto LABEL_69;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v380 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v383 = v380;
        v386 = objc_msgSend_chainParent(recordCopy, v384, v385);
        v389 = objc_msgSend_reference(v386, v387, v388);
        *buf = 138543362;
        v417 = v389;
        _os_log_debug_impl(&dword_22506F000, v383, OS_LOG_TYPE_DEBUG, "Couldn't convert parent record ID: %{public}@", buf, 0xCu);
      }

      goto LABEL_119;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v381 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v417 = v245;
      _os_log_debug_impl(&dword_22506F000, v381, OS_LOG_TYPE_DEBUG, "Couldn't create a share reference for share %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v375 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v376 = v375;
      v379 = objc_msgSend_shareId(recordCopy, v377, v378);
      *buf = 138543362;
      v417 = v379;
      _os_log_debug_impl(&dword_22506F000, v376, OS_LOG_TYPE_DEBUG, "Couldn't convert share ID for record: %{public}@", buf, 0xCu);
    }
  }

LABEL_119:

LABEL_120:
  v28 = 0;
LABEL_121:

LABEL_122:

  return v28;
}

- (id)dateFromPDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  objc_msgSend_time(date, a2, date);

  return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v3, v4, v5);
}

- (id)pProtectionInfoKeysToRemoveFromPCSKeysToRemove:(id)remove
{
  v47 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  v4 = objc_opt_new();
  v7 = objc_msgSend_etag(removeCopy, v5, v6);
  objc_msgSend_setProtectionInfoTag_(v4, v8, v7);

  v9 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_keys(removeCopy, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14);
  v17 = objc_msgSend_arrayWithCapacity_(v9, v16, v15);
  objc_msgSend_setKeysToRemoves_(v4, v18, v17);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = objc_msgSend_keys(removeCopy, v19, v20, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v42, v46, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        v28 = objc_opt_new();
        v31 = objc_msgSend_pcsKeyID(v27, v29, v30);
        objc_msgSend_setKeyId_(v28, v32, v31);

        v35 = objc_msgSend_keyType(v27, v33, v34);
        if ((v35 - 1) <= 2)
        {
          objc_msgSend_setKeyType_(v28, v36, v35);
        }

        v38 = objc_msgSend_keysToRemoves(v4, v36, v37);
        objc_msgSend_addObject_(v38, v39, v28);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v40, &v42, v46, 16);
    }

    while (v24);
  }

  return v4;
}

- (id)pcsKeysToRemoveFromPProtectionInfoKeysToRemove:(id)remove
{
  v55 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  if (objc_msgSend_hasProtectionInfoTag(removeCopy, v4, v5))
  {
    v8 = objc_msgSend_protectionInfoTag(removeCopy, v6, v7);
  }

  else
  {
    v8 = objc_opt_new();
  }

  v46 = v8;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_keysToRemovesCount(removeCopy, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v47 = removeCopy;
  v17 = objc_msgSend_keysToRemoves(removeCopy, v15, v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v48, v54, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v49;
    v24 = MEMORY[0x277CBC880];
    v25 = MEMORY[0x277CBC830];
    do
    {
      v26 = 0;
      do
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v48 + 1) + 8 * v26);
        if (objc_msgSend_hasKeyId(v27, v20, v21, v46) && objc_msgSend_hasKeyType(v27, v28, v29))
        {
          v32 = objc_msgSend_keyType(v27, v30, v31) - 1;
          if (v32 < 3)
          {
            v33 = v32 + 1;
          }

          else
          {
            v33 = 0;
          }

          v34 = objc_alloc(MEMORY[0x277CBC528]);
          v37 = objc_msgSend_keyId(v27, v35, v36);
          v39 = objc_msgSend_initWithKeyID_keyType_(v34, v38, v37, v33);

          objc_msgSend_addObject_(v14, v40, v39);
        }

        else
        {
          if (*v24 != -1)
          {
            dispatch_once(v24, *MEMORY[0x277CBC878]);
          }

          v41 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v53 = v27;
            _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Warn: Ignoring PCS key to remove because key type and/or key ID is not specified: %{public}@", buf, 0xCu);
          }
        }

        ++v26;
      }

      while (v22 != v26);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v48, v54, 16);
    }

    while (v22);
  }

  v42 = objc_alloc(MEMORY[0x277CBC530]);
  v44 = objc_msgSend_initWithEtag_keys_(v42, v43, v46, v14);

  return v44;
}

- (BOOL)_valueTypeIsAnEncryptedBytesTypeForField:(id)field
{
  fieldCopy = field;
  v6 = objc_msgSend_value(fieldCopy, v4, v5);
  if (objc_msgSend_type(v6, v7, v8) == 20)
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_value(fieldCopy, v9, v10);
    v11 = objc_msgSend_type(v12, v13, v14) == 21;
  }

  return v11;
}

- (id)pDateFromDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v5, v6);
  v8 = v7;

  objc_msgSend_setTime_(v4, v9, v10, v8);

  return v4;
}

- (id)_pRecordFromRecordSansValues:(id)values forCache:(BOOL)cache
{
  cacheCopy = cache;
  v348 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v7 = objc_opt_new();
  v10 = objc_msgSend_etag(valuesCopy, v8, v9);
  objc_msgSend_setEtag_(v7, v11, v10);

  v14 = objc_msgSend_recordID(valuesCopy, v12, v13);
  v16 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v15, v14);
  objc_msgSend_setRecordIdentifier_(v7, v17, v16);

  v18 = objc_opt_new();
  objc_msgSend_setType_(v7, v19, v18);

  v22 = objc_msgSend_recordType(valuesCopy, v20, v21);
  v25 = objc_msgSend_type(v7, v23, v24);
  objc_msgSend_setName_(v25, v26, v22);

  v29 = objc_msgSend_conflictLoserEtags(valuesCopy, v27, v28);
  v32 = objc_msgSend_mutableCopy(v29, v30, v31);
  objc_msgSend_setConflictLoserEtags_(v7, v33, v32);

  if (!cacheCopy)
  {
    goto LABEL_19;
  }

  v36 = objc_msgSend_creationDate(valuesCopy, v34, v35);
  if (v36)
  {

LABEL_5:
    v42 = objc_opt_new();
    objc_msgSend_setTimeStatistics_(v7, v43, v42);

    goto LABEL_6;
  }

  v39 = objc_msgSend_modificationDate(valuesCopy, v37, v38);

  if (v39)
  {
    goto LABEL_5;
  }

LABEL_6:
  v44 = objc_msgSend_creationDate(valuesCopy, v40, v41);

  if (v44)
  {
    v47 = objc_msgSend_creationDate(valuesCopy, v45, v46);
    v49 = objc_msgSend_pDateFromDate_(self, v48, v47);
    v52 = objc_msgSend_timeStatistics(v7, v50, v51);
    objc_msgSend_setCreation_(v52, v53, v49);
  }

  v54 = objc_msgSend_modificationDate(valuesCopy, v45, v46);

  if (v54)
  {
    v57 = objc_msgSend_modificationDate(valuesCopy, v55, v56);
    v59 = objc_msgSend_pDateFromDate_(self, v58, v57);
    v62 = objc_msgSend_timeStatistics(v7, v60, v61);
    objc_msgSend_setModification_(v62, v63, v59);
  }

  v64 = objc_msgSend_creatorUserRecordID(valuesCopy, v55, v56);

  if (v64)
  {
    v67 = objc_msgSend_creatorUserRecordID(valuesCopy, v65, v66);
    v69 = objc_msgSend_pIdentifierFromUserRecordID_(self, v68, v67);
    objc_msgSend_setCreatedBy_(v7, v70, v69);
  }

  v71 = objc_msgSend_lastModifiedUserRecordID(valuesCopy, v65, v66);

  if (v71)
  {
    v74 = objc_msgSend_lastModifiedUserRecordID(valuesCopy, v72, v73);
    v76 = objc_msgSend_pIdentifierFromUserRecordID_(self, v75, v74);
    objc_msgSend_setModifiedBy_(v7, v77, v76);
  }

  v78 = objc_msgSend_modifiedByDevice(valuesCopy, v72, v73);

  if (v78)
  {
    v81 = objc_msgSend_modifiedByDevice(valuesCopy, v79, v80);
    objc_msgSend_setModifiedByDevice_(v7, v82, v81);
  }

  v83 = objc_msgSend_expirationDate(valuesCopy, v79, v80);

  if (v83)
  {
    v86 = objc_msgSend_expirationDate(valuesCopy, v84, v85);
    v88 = objc_msgSend_pDateFromDate_(self, v87, v86);
    objc_msgSend_setExpirationTime_(v7, v89, v88);
  }

  isExpired = objc_msgSend_isExpired(valuesCopy, v84, v85);
  objc_msgSend_setExpired_(v7, v91, isExpired);
LABEL_19:
  v92 = objc_msgSend_protectionData(valuesCopy, v34, v35);

  if (v92)
  {
    v95 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v7, v96, v95);

    v99 = objc_msgSend_protectionData(valuesCopy, v97, v98);
    v102 = objc_msgSend_protectionInfo(v7, v100, v101);
    objc_msgSend_setProtectionInfo_(v102, v103, v99);

    v106 = objc_msgSend_protectionEtag(valuesCopy, v104, v105);
    v109 = objc_msgSend_protectionInfo(v7, v107, v108);
    objc_msgSend_setProtectionInfoTag_(v109, v110, v106);
  }

  v111 = objc_msgSend_zoneishKeyID(valuesCopy, v93, v94);

  if (v111)
  {
    v114 = objc_msgSend_zoneishKeyID(valuesCopy, v112, v113);
    objc_msgSend_setZoneishPrimaryKeyId_(v7, v115, v114);

    objc_msgSend_setProtectionInfo_(v7, v116, 0);
  }

  v117 = objc_msgSend_share(valuesCopy, v112, v113);

  if (v117)
  {
    v120 = objc_msgSend_share(valuesCopy, v118, v119);
    v123 = objc_msgSend_recordID(v120, v121, v122);
    v125 = objc_msgSend_pShareIdentifierFromRecordID_(self, v124, v123);
    objc_msgSend_setShareId_(v7, v126, v125);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v129 = valuesCopy;
    v132 = objc_msgSend_currentUserParticipant(v129, v130, v131);
    v135 = v132;
    if (cacheCopy)
    {
      v136 = objc_msgSend_pShareFromShare_forCache_(self, v133, v129, 1);
      objc_msgSend_setShareInfo_(v7, v137, v136);
    }

    else
    {
      if (objc_msgSend_role(v132, v133, v134) == 1 || objc_msgSend_role(v135, v140, v141) == 2)
      {
        v143 = objc_msgSend_pShareFromShare_forCache_(self, v140, v129, 0);
        objc_msgSend_setShareInfo_(v7, v144, v143);
      }

      v145 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v140, v142);
      v148 = objc_msgSend_count(v145, v146, v147);

      if (!v148)
      {
        goto LABEL_42;
      }
    }

    selfCopy = self;
    v335 = cacheCopy;
    v336 = valuesCopy;
    if ((objc_msgSend_hasOneTimeStableUrlInfo(v7, v138, v139) & 1) == 0)
    {
      v149 = objc_opt_new();
      objc_msgSend_setOneTimeStableUrlInfo_(v7, v150, v149);
    }

    v333 = v135;
    v337 = v7;
    v151 = objc_opt_new();
    v340 = 0u;
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    obj = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v152, v153);
    v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v154, &v340, v347, 16);
    if (v155)
    {
      v158 = v155;
      v159 = *v341;
      do
      {
        for (i = 0; i != v158; ++i)
        {
          if (*v341 != v159)
          {
            objc_enumerationMutation(obj);
          }

          v161 = *(*(&v340 + 1) + 8 * i);
          v162 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v156, v157);
          v164 = objc_msgSend_objectForKeyedSubscript_(v162, v163, v161);

          v165 = objc_opt_new();
          v168 = objc_msgSend_encryptedOneTimeFullToken(v164, v166, v167);
          v171 = objc_msgSend_encryptedData(v168, v169, v170);
          objc_msgSend_setEncryptedFullTokenInfo_(v165, v172, v171);

          v175 = objc_msgSend_participantID(v164, v173, v174);
          v346 = v175;
          v177 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v176, &v346, 1);
          v180 = objc_msgSend_mutableCopy(v177, v178, v179);
          objc_msgSend_setParticipantIds_(v165, v181, v180);

          v184 = objc_msgSend_encryptedOneTimeFullTokenData(v164, v182, v183);
          objc_msgSend_setProtectedFullToken_(v165, v185, v184);

          v188 = objc_msgSend_oneTimeShortSharingTokenHashData(v164, v186, v187);
          objc_msgSend_setShortTokenHash_(v165, v189, v188);

          objc_msgSend_addObject_(v151, v190, v165);
        }

        v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v156, &v340, v347, 16);
      }

      while (v158);
    }

    v7 = v337;
    v193 = objc_msgSend_oneTimeStableUrlInfo(v337, v191, v192);
    objc_msgSend_setOneTimeUrls_(v193, v194, v151);

    valuesCopy = v336;
    cacheCopy = v335;
    v135 = v333;
    self = selfCopy;
LABEL_42:
  }

  v195 = objc_msgSend_chainPrivateKey(valuesCopy, v127, v128);
  v198 = objc_msgSend_encryptedData(v195, v196, v197);

  if (v198)
  {
    v201 = objc_msgSend_chainPrivateKey(valuesCopy, v199, v200);
    v204 = objc_msgSend_encryptedData(v201, v202, v203);
    objc_msgSend_setChainPrivateKey_(v7, v205, v204);
  }

  v206 = objc_msgSend_chainProtectionInfo(valuesCopy, v199, v200);

  if (v206)
  {
    v209 = objc_opt_new();
    objc_msgSend_setChainProtectionInfo_(v7, v210, v209);

    v213 = objc_msgSend_chainProtectionInfo(valuesCopy, v211, v212);
    v216 = objc_msgSend_chainProtectionInfo(v7, v214, v215);
    objc_msgSend_setProtectionInfo_(v216, v217, v213);
  }

  if ((objc_msgSend_hasUpdatedParent(valuesCopy, v207, v208) & 1) != 0 || cacheCopy)
  {
    v220 = objc_opt_new();
    objc_msgSend_setChainParent_(v7, v221, v220);

    v224 = objc_msgSend_parent(valuesCopy, v222, v223);

    if (v224)
    {
      if (objc_msgSend_dontCreateValidatingParentReferences(self, v218, v219))
      {
        v225 = 0;
      }

      else
      {
        v225 = *MEMORY[0x277CBC070];
      }

      v226 = objc_alloc(MEMORY[0x277CBC620]);
      v229 = objc_msgSend_parent(valuesCopy, v227, v228);
      v232 = objc_msgSend_recordID(v229, v230, v231);
      v234 = objc_msgSend_initWithRecordID_action_(v226, v233, v232, v225);

      v339 = 0;
      v236 = objc_msgSend_pReferenceFromReference_error_(self, v235, v234, &v339);
      v237 = v339;
      v240 = objc_msgSend_chainParent(v7, v238, v239);
      objc_msgSend_setReference_(v240, v241, v236);

      v244 = objc_msgSend_chainParent(v7, v242, v243);
      v247 = objc_msgSend_reference(v244, v245, v246);

      if (!v247 || v237)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v250 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v251 = v250;
          v254 = objc_msgSend_recordID(valuesCopy, v252, v253);
          *buf = 138543362;
          v345 = v254;
          _os_log_impl(&dword_22506F000, v251, OS_LOG_TYPE_INFO, "Warn: Couldn't create a parent reference for record %{public}@", buf, 0xCu);
        }
      }

      v255 = objc_msgSend_chainParentPublicKeyID(valuesCopy, v248, v249);

      if (v255)
      {
        v258 = objc_msgSend_chainParentPublicKeyID(valuesCopy, v256, v257);
        v261 = objc_msgSend_chainParent(v7, v259, v260);
        objc_msgSend_setPublicKeyID_(v261, v262, v258);
      }
    }
  }

  if (cacheCopy)
  {
    v263 = objc_msgSend_tombstonedPublicKeyIDs(valuesCopy, v218, v219);
    v266 = objc_msgSend_mutableCopy(v263, v264, v265);
    objc_msgSend_setTombstonedPublicKeyIDs_(v7, v267, v266);
  }

  if (objc_msgSend_hasUpdatedExpirationTimeInterval(valuesCopy, v218, v219))
  {
    v270 = objc_opt_new();
    objc_msgSend_setStorageExpiration_(v7, v271, v270);

    v274 = objc_msgSend_updatedExpirationTimeInterval(valuesCopy, v272, v273);

    v277 = objc_msgSend_storageExpiration(v7, v275, v276);
    v279 = v277;
    if (v274)
    {
      objc_msgSend_setOperationType_(v277, v278, 2);

      v279 = objc_msgSend_updatedExpirationTimeInterval(valuesCopy, v280, v281);
      v284 = objc_msgSend_unsignedLongLongValue(v279, v282, v283);
      v287 = objc_msgSend_storageExpiration(v7, v285, v286);
      objc_msgSend_setDuration_(v287, v288, v284);
    }

    else
    {
      objc_msgSend_setOperationType_(v277, v278, 1);
    }
  }

  if (cacheCopy || objc_msgSend_canHostServerURLInfo(valuesCopy, v268, v269) && (objc_msgSend_shortSharingTokenHashData(valuesCopy, v289, v290), v291 = objc_claimAutoreleasedReturnValue(), v291, v291))
  {
    if ((objc_msgSend_hasStableUrl(v7, v268, v269) & 1) == 0)
    {
      v294 = objc_opt_new();
      objc_msgSend_setStableUrl_(v7, v295, v294);
    }

    v296 = objc_msgSend_mutableEncryptedPSK(valuesCopy, v292, v293);
    v299 = objc_msgSend_encryptedData(v296, v297, v298);
    v302 = objc_msgSend_stableUrl(v7, v300, v301);
    objc_msgSend_setEncryptedPublicSharingKey_(v302, v303, v299);

    v306 = objc_msgSend_encryptedFullTokenData(valuesCopy, v304, v305);
    v309 = objc_msgSend_stableUrl(v7, v307, v308);
    objc_msgSend_setProtectedFullToken_(v309, v310, v306);

    v313 = objc_msgSend_routingKey(valuesCopy, v311, v312);
    v316 = objc_msgSend_stableUrl(v7, v314, v315);
    objc_msgSend_setRoutingKey_(v316, v317, v313);

    v320 = objc_msgSend_shortSharingTokenHashData(valuesCopy, v318, v319);
    v323 = objc_msgSend_stableUrl(v7, v321, v322);
    objc_msgSend_setShortTokenHash_(v323, v324, v320);

    v327 = objc_msgSend_displayedHostname(valuesCopy, v325, v326);
    v330 = objc_msgSend_stableUrl(v7, v328, v329);
    objc_msgSend_setDisplayedHostname_(v330, v331, v327);
  }

  return v7;
}

- (id)pRecordFromRecord:(id)record forCache:(BOOL)cache
{
  cacheCopy = cache;
  v98 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v81 = objc_msgSend__pRecordFromRecordSansValues_forCache_(self, v6, recordCopy, cacheCopy);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v9 = objc_msgSend_valueStore(recordCopy, v7, v8);
  v12 = objc_msgSend_allKeys(v9, v10, v11);

  v14 = 0;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v91, v97, 16);
  if (v17)
  {
    v18 = *v92;
    obj = v12;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v92 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v91 + 1) + 8 * i);
        v21 = objc_msgSend_valueStore(recordCopy, v15, v16);
        v23 = objc_msgSend_rawValueForKey_(v21, v22, v20);

        v25 = objc_msgSend_pFieldWithKey_value_forCache_(self, v24, v20, v23, cacheCopy);
        v28 = objc_msgSend_actions(v25, v26, v27);
        v31 = objc_msgSend_count(v28, v29, v30);
        if (v14)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31 == 0;
        }

        v33 = !v32;

        if (v33)
        {
          v14 = objc_opt_new();
        }

        sub_2250A0728(v81, v25, v14);
      }

      v12 = obj;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v91, v97, 16);
    }

    while (v17);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v36 = objc_msgSend_encryptedValueStore(recordCopy, v34, v35);
  obja = objc_msgSend_allKeys(v36, v37, v38);

  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v39, &v87, v96, 16);
  if (v42)
  {
    v43 = *v88;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v88 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v87 + 1) + 8 * j);
        v46 = objc_msgSend_encryptedValueStore(recordCopy, v40, v41);
        v48 = objc_msgSend_rawValueForKey_(v46, v47, v45);

        v50 = objc_msgSend_pFieldWithKey_value_forCache_(self, v49, v45, v48, cacheCopy);
        v53 = objc_msgSend_actions(v50, v51, v52);
        v56 = objc_msgSend_count(v53, v54, v55);
        if (v14)
        {
          v57 = 1;
        }

        else
        {
          v57 = v56 == 0;
        }

        v58 = !v57;

        if (v58)
        {
          v14 = objc_opt_new();
        }

        sub_2250A0728(v81, v50, v14);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v40, &v87, v96, 16);
    }

    while (v42);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v61 = objc_msgSend_pluginFields(recordCopy, v59, v60);
  v64 = objc_msgSend_allKeys(v61, v62, v63);

  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v83, v95, 16);
  if (v68)
  {
    v69 = *v84;
    do
    {
      for (k = 0; k != v68; ++k)
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(v64);
        }

        v71 = *(*(&v83 + 1) + 8 * k);
        v72 = objc_msgSend_pluginFields(recordCopy, v66, v67);
        v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, v71);

        v76 = objc_msgSend_pFieldWithKey_value_forCache_(self, v75, v71, v74, cacheCopy);
        objc_msgSend_addPluginFields_(v81, v77, v76);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v66, &v83, v95, 16);
    }

    while (v68);
  }

  return v81;
}

- (id)deltaPRecordFromRecord:(id)record withAllFields:(BOOL)fields outDeletedMergeFields:(id *)mergeFields outKeysToSend:(id *)send
{
  mergeFieldsCopy = mergeFields;
  fieldsCopy = fields;
  v149 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v132 = objc_opt_new();
  v133 = objc_msgSend__pRecordFromRecordSansValues_forCache_(self, v9, recordCopy, 0);
  v12 = objc_msgSend_valueStore(recordCopy, v10, v11);
  obj = objc_msgSend_changedKeys(v12, v13, v14);

  v17 = objc_msgSend_encryptedValueStore(recordCopy, v15, v16);
  v128 = objc_msgSend_changedKeys(v17, v18, v19);

  if (fieldsCopy)
  {
    v21 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v20, obj);
    v24 = v21;
    if (v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = objc_msgSend_set(MEMORY[0x277CBEB58], v22, v23);
    }

    v27 = v25;

    v30 = objc_msgSend_valueStore(recordCopy, v28, v29);
    v33 = objc_msgSend_allKeys(v30, v31, v32);
    v35 = v33;
    v36 = MEMORY[0x277CBEBF8];
    if (v33)
    {
      objc_msgSend_addObjectsFromArray_(v27, v34, v33, mergeFieldsCopy);
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v27, v34, MEMORY[0x277CBEBF8], mergeFieldsCopy);
    }

    v26 = objc_msgSend_allObjects(v27, v37, v38);

    v40 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v39, v128);
    v43 = v40;
    if (v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = objc_msgSend_set(MEMORY[0x277CBEB58], v41, v42);
    }

    v45 = v44;

    v48 = objc_msgSend_encryptedValueStore(recordCopy, v46, v47);
    v51 = objc_msgSend_allKeys(v48, v49, v50);
    v53 = v51;
    if (v51)
    {
      objc_msgSend_addObjectsFromArray_(v45, v52, v51);
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v45, v52, v36);
    }

    v56 = objc_msgSend_allObjects(v45, v54, v55);

    v128 = v56;
  }

  else
  {
    v26 = obj;
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obja = v26;
  v58 = 0;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v57, &v142, v148, 16);
  if (v61)
  {
    v62 = *v143;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v143 != v62)
        {
          objc_enumerationMutation(obja);
        }

        v64 = *(*(&v142 + 1) + 8 * i);
        v65 = objc_msgSend_valueStore(recordCopy, v59, v60, mergeFieldsCopy);
        v67 = objc_msgSend_rawValueForKey_(v65, v66, v64);

        if (v67)
        {
          v69 = objc_msgSend_pFieldWithKey_value_forCache_(self, v68, v64, v67, 0);
          v72 = objc_msgSend_actions(v69, v70, v71);
          if (objc_msgSend_count(v72, v73, v74))
          {
            v75 = v58 == 0;
          }

          else
          {
            v75 = 0;
          }

          v76 = v75;

          if (v76)
          {
            v58 = objc_opt_new();
          }

          sub_2250A0728(v133, v69, v58);
        }

        else
        {
          v69 = objc_opt_new();
          objc_msgSend_setName_(v69, v77, v64);
          objc_msgSend_addObject_(v132, v78, v69);
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v59, &v142, v148, 16);
    }

    while (v61);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v129 = v128;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v79, &v138, v147, 16);
  if (v82)
  {
    v83 = *v139;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v139 != v83)
        {
          objc_enumerationMutation(v129);
        }

        v85 = *(*(&v138 + 1) + 8 * j);
        v86 = objc_msgSend_encryptedValueStore(recordCopy, v80, v81, mergeFieldsCopy);
        v88 = objc_msgSend_rawValueForKey_(v86, v87, v85);

        if (v88)
        {
          v90 = objc_msgSend_pFieldWithKey_value_forCache_(self, v89, v85, v88, 0);
          v93 = objc_msgSend_actions(v90, v91, v92);
          if (objc_msgSend_count(v93, v94, v95))
          {
            v96 = v58 == 0;
          }

          else
          {
            v96 = 0;
          }

          v97 = v96;

          if (v97)
          {
            v58 = objc_opt_new();
          }

          sub_2250A0728(v133, v90, v58);
        }

        else
        {
          v90 = objc_opt_new();
          objc_msgSend_setName_(v90, v98, v85);
          objc_msgSend_addObject_(v132, v99, v90);
        }
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v80, &v138, v147, 16);
    }

    while (v82);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v102 = objc_msgSend_pluginFields(recordCopy, v100, v101);
  v105 = objc_msgSend_allKeys(v102, v103, v104);

  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v134, v146, 16);
  if (v109)
  {
    v110 = *v135;
    do
    {
      for (k = 0; k != v109; ++k)
      {
        if (*v135 != v110)
        {
          objc_enumerationMutation(v105);
        }

        v112 = *(*(&v134 + 1) + 8 * k);
        v113 = objc_msgSend_pluginFields(recordCopy, v107, v108, mergeFieldsCopy);
        v115 = objc_msgSend_objectForKeyedSubscript_(v113, v114, v112);

        v117 = objc_msgSend_pFieldWithKey_value_forCache_(self, v116, v112, v115, 0);
        objc_msgSend_addPluginFields_(v133, v118, v117);
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v107, &v134, v146, 16);
    }

    while (v109);
  }

  if (mergeFieldsCopy && objc_msgSend_count(v132, v119, v120))
  {
    v121 = v132;
    *mergeFieldsCopy = v132;
  }

  if (send)
  {
    v122 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v119, obja);
    objc_msgSend_addObjectsFromArray_(v122, v123, v129);
    v124 = v122;
    *send = v122;
  }

  return v133;
}

- (id)assetFromPAsset:(id)asset field:(id)field error:(id *)error
{
  v126 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  fieldCopy = field;
  v9 = objc_alloc(MEMORY[0x277CBC190]);
  inited = objc_msgSend_initInternal(v9, v10, v11);
  v15 = objc_msgSend_signature(assetCopy, v13, v14);
  objc_msgSend_setSignature_(inited, v16, v15);

  v19 = objc_msgSend_size(assetCopy, v17, v18);
  objc_msgSend_setPaddedFileSize_(inited, v20, v19);
  v23 = objc_msgSend_size(assetCopy, v21, v22);
  objc_msgSend_setSize_(inited, v24, v23);
  v25 = MEMORY[0x277CBEBC0];
  v28 = objc_msgSend_contentBaseURL(assetCopy, v26, v27);
  v30 = objc_msgSend_URLWithString_(v25, v29, v28);
  objc_msgSend_setContentBaseURL_(inited, v31, v30);

  v34 = objc_msgSend_owner(assetCopy, v32, v33);
  objc_msgSend_setOwner_(inited, v35, v34);

  v38 = objc_msgSend_requestor(assetCopy, v36, v37);
  objc_msgSend_setRequestor_(inited, v39, v38);

  v42 = objc_msgSend_downloadToken(assetCopy, v40, v41);
  objc_msgSend_setAuthToken_(inited, v43, v42);

  if (objc_msgSend_hasAssetAuthorizationResponseUUID(assetCopy, v44, v45) && objc_msgSend_haveDownloadPreauthorizations(self, v46, v47))
  {
    v48 = objc_msgSend_assetAuthorizationResponseUUID(assetCopy, v46, v47);
    v50 = objc_msgSend_downloadPreauthorizationForResponseUUID_(self, v49, v48);

    if (v50)
    {
      objc_msgSend_setDownloadPreauthorization_(inited, v51, v50);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v120 = v52;
        v123 = objc_msgSend_assetAuthorizationResponseUUID(assetCopy, v121, v122);
        v124 = 138543362;
        v125 = v123;
        _os_log_error_impl(&dword_22506F000, v120, OS_LOG_TYPE_ERROR, "Download Preauthorization For Response UUID %{public}@ Not Found", &v124, 0xCu);
      }
    }
  }

  v53 = objc_msgSend_uploadReceipt(assetCopy, v46, v47);
  objc_msgSend_setUploadReceipt_(inited, v54, v53);

  if ((objc_msgSend_hasDownloadBaseURL(assetCopy, v55, v56) & 1) != 0 || objc_msgSend_hasConstructedAssetDownloadURL(assetCopy, v57, v58))
  {
    v59 = objc_msgSend_downloadBaseURL(assetCopy, v57, v58);
    objc_msgSend_setDownloadBaseURL_(inited, v60, v59);

    v63 = objc_msgSend_constructedAssetDownloadURL(assetCopy, v61, v62);
    objc_msgSend_setConstructedAssetDownloadURLTemplate_(inited, v64, v63);

    if (objc_msgSend_hasDownloadURLExpiration(assetCopy, v65, v66))
    {
      v67 = MEMORY[0x277CBEAA8];
      v68 = objc_msgSend_downloadURLExpiration(assetCopy, v57, v58);
      v71 = objc_msgSend_dateWithTimeIntervalSince1970_(v67, v69, v70, v68);
      objc_msgSend_setDownloadURLExpiration_(inited, v72, v71);
    }
  }

  if (objc_msgSend_hasConstructedAssetDownloadURL(assetCopy, v57, v58))
  {
    v75 = objc_msgSend_constructedAssetDownloadURL(assetCopy, v73, v74);
    objc_msgSend_setConstructedAssetDownloadURLTemplate_(inited, v76, v75);

    if (objc_msgSend_hasConstructedAssetDownloadEstimatedSize(assetCopy, v77, v78))
    {
      v81 = objc_msgSend_constructedAssetDownloadEstimatedSize(assetCopy, v79, v80);
    }

    else
    {
      v81 = objc_msgSend_size(assetCopy, v79, v80);
    }

    objc_msgSend_setConstructedAssetEstimatedSize_(inited, v82, v81);
  }

  if (objc_msgSend_hasConstructedAssetDownloadParameters(assetCopy, v73, v74))
  {
    v85 = objc_msgSend_constructedAssetDownloadParameters(assetCopy, v83, v84);
    objc_msgSend_setConstructedAssetDownloadParameters_(inited, v86, v85);
  }

  v87 = objc_msgSend_referenceSignature(assetCopy, v83, v84);
  objc_msgSend_setReferenceSignature_(inited, v88, v87);

  v91 = objc_msgSend_protectionInfo(assetCopy, v89, v90);
  v94 = objc_msgSend_protectionInfo(v91, v92, v93);
  objc_msgSend_setWrappedAssetKey_(inited, v95, v94);

  if (objc_msgSend_hasClearAssetKey(assetCopy, v96, v97))
  {
    v100 = objc_msgSend_clearAssetKey(assetCopy, v98, v99);
    v103 = objc_msgSend_length(v100, v101, v102);

    if (v103)
    {
      v104 = objc_msgSend_clearAssetKey(assetCopy, v98, v99);
      objc_msgSend_setClearAssetKey_(inited, v105, v104);

      v108 = objc_msgSend_clearAssetKey(inited, v106, v107);
      objc_msgSend_setAssetKey_(inited, v109, v108);
    }
  }

  if (objc_msgSend_hasDownloadTokenExpiration(assetCopy, v98, v99))
  {
    v112 = objc_msgSend_downloadTokenExpiration(assetCopy, v110, v111);
    objc_msgSend_setDownloadTokenExpiration_(inited, v113, v112);
  }

  v114 = objc_msgSend_identifier(fieldCopy, v110, v111);
  v117 = objc_msgSend_name(v114, v115, v116);
  objc_msgSend_setRecordKey_(inited, v118, v117);

  return inited;
}

- (id)pAssetFromAsset:(id)asset
{
  assetCopy = asset;
  v7 = objc_msgSend_record(assetCopy, v5, v6);
  v8 = objc_opt_new();
  v11 = objc_msgSend_signature(assetCopy, v9, v10);
  objc_msgSend_setSignature_(v8, v12, v11);

  v15 = objc_msgSend_paddedFileSize(assetCopy, v13, v14);
  objc_msgSend_setSize_(v8, v16, v15);
  if (v7)
  {
    v19 = objc_msgSend_recordID(v7, v17, v18);
    v21 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v20, v19);
    objc_msgSend_setRecordId_(v8, v22, v21);
  }

  v23 = objc_msgSend_uploadReceipt(assetCopy, v17, v18);
  objc_msgSend_setUploadReceipt_(v8, v24, v23);

  v27 = objc_msgSend_wrappedAssetKey(assetCopy, v25, v26);

  if (v27)
  {
    v30 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v8, v31, v30);

    v34 = objc_msgSend_wrappedAssetKey(assetCopy, v32, v33);
    v37 = objc_msgSend_protectionInfo(v8, v35, v36);
    objc_msgSend_setProtectionInfo_(v37, v38, v34);
  }

  v39 = objc_msgSend_clearAssetKey(assetCopy, v28, v29);

  if (v39)
  {
    v42 = objc_msgSend_clearAssetKey(assetCopy, v40, v41);
    objc_msgSend_setClearAssetKey_(v8, v43, v42);
  }

  v44 = objc_msgSend_referenceSignature(assetCopy, v40, v41);

  if (v44)
  {
    v47 = objc_msgSend_referenceSignature(assetCopy, v45, v46);
    objc_msgSend_setReferenceSignature_(v8, v48, v47);
  }

  v49 = objc_msgSend_downloadPreauthorization(assetCopy, v45, v46);

  if (v49)
  {
    v52 = objc_msgSend_downloadPreauthorization(assetCopy, v50, v51);
    v55 = objc_msgSend_responseUUID(v52, v53, v54);
    objc_msgSend_setAssetAuthorizationResponseUUID_(v8, v56, v55);
  }

  return v8;
}

- (id)packageFromPPackage:(id)package error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v7 = MEMORY[0x277CBC208];
  v10 = objc_msgSend_bundleID(self, v8, v9);
  v12 = objc_msgSend_packageForBundleID_error_(v7, v11, v10, error);

  if (v12)
  {
    v15 = objc_msgSend_sections(packageCopy, v13, v14);
    v18 = objc_msgSend_count(v15, v16, v17);

    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v21 = objc_msgSend_initWithCapacity_(v19, v20, v18 + 1);
    v24 = objc_msgSend_manifest(packageCopy, v22, v23);
    v26 = objc_msgSend_assetFromPAsset_field_error_(self, v25, v24, 0, error);

    if (v26)
    {
      v42 = v12;
      objc_msgSend_addObject_(v21, v27, v26);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v30 = objc_msgSend_sections(packageCopy, v28, v29);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v43, v47, 16);
      if (v32)
      {
        v34 = v32;
        v35 = *v44;
        while (2)
        {
          v36 = 0;
          v37 = v26;
          do
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(v30);
            }

            v26 = objc_msgSend_assetFromPAsset_field_error_(self, v33, *(*(&v43 + 1) + 8 * v36), 0, error);

            if (!v26)
            {
              v40 = 0;
              v12 = v42;
              goto LABEL_14;
            }

            objc_msgSend_addObject_(v21, v38, v26);
            ++v36;
            v37 = v26;
          }

          while (v34 != v36);
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v43, v47, 16);
          if (v34)
          {
            continue;
          }

          break;
        }
      }

      v12 = v42;
      objc_msgSend_setAssets_(v42, v39, v21);
      v40 = v42;
      v30 = v26;
LABEL_14:
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)pPackageFromPackage:(id)package
{
  v33 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v5 = objc_opt_new();
  v8 = objc_msgSend_assets(packageCopy, v6, v7);
  v11 = objc_msgSend_objectEnumerator(v8, v9, v10);

  v14 = objc_msgSend_nextObject(v11, v12, v13);
  v16 = objc_msgSend_pAssetFromAsset_(self, v15, v14);
  objc_msgSend_setManifest_(v5, v17, v16);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v11;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v28, v32, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_pAssetFromAsset_(self, v21, *(*(&v28 + 1) + 8 * i), v28);
        objc_msgSend_addSections_(v5, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v28, v32, 16);
    }

    while (v22);
  }

  return v5;
}

- (id)pStreamingAssetFromStreamingAsset:(id)asset forCache:(BOOL)cache
{
  cacheCopy = cache;
  assetCopy = asset;
  v6 = objc_opt_new();
  v9 = objc_msgSend_owner(assetCopy, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_fileSignature(assetCopy, v10, v11);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_referenceSignature(assetCopy, v14, v15);

      if (!v17)
      {
        goto LABEL_6;
      }

      v12 = objc_opt_new();
      v20 = objc_msgSend_referenceSignature(assetCopy, v18, v19);
      objc_msgSend_setReferenceSignature_(v12, v21, v20);

      v24 = objc_msgSend_fileSignature(assetCopy, v22, v23);
      objc_msgSend_setFileSignature_(v12, v25, v24);

      v28 = objc_msgSend_owner(assetCopy, v26, v27);
      objc_msgSend_setOwner_(v12, v29, v28);

      objc_msgSend_setAssetId_(v6, v30, v12);
    }
  }

LABEL_6:
  if (!cacheCopy)
  {
    goto LABEL_17;
  }

  v31 = objc_msgSend_downloadURL(assetCopy, v10, v11);
  if (v31)
  {
  }

  else if (!objc_msgSend_hasSize(assetCopy, v32, v33))
  {
    goto LABEL_17;
  }

  v34 = objc_opt_new();
  v37 = objc_msgSend_downloadURL(assetCopy, v35, v36);

  if (v37)
  {
    v40 = objc_msgSend_downloadURL(assetCopy, v38, v39);
    v43 = objc_msgSend_absoluteString(v40, v41, v42);
    objc_msgSend_setDownloadURL_(v34, v44, v43);
  }

  if (objc_msgSend_hasSize(assetCopy, v38, v39))
  {
    v47 = objc_msgSend_size(assetCopy, v45, v46);
    objc_msgSend_setSize_(v34, v48, v47);
  }

  v49 = objc_msgSend_downloadURLExpirationDate(assetCopy, v45, v46);

  if (v49)
  {
    v52 = objc_msgSend_downloadURLExpirationDate(assetCopy, v50, v51);
    objc_msgSend_timeIntervalSince1970(v52, v53, v54);
    objc_msgSend_setDownloadURLExpirationTimeSeconds_(v34, v56, v55);
  }

  objc_msgSend_setRetrieveAssetResponse_(v6, v50, v34);

LABEL_17:
  v57 = objc_opt_new();
  objc_msgSend_setRequestedSize_(v57, v58, 0x7FFFFFFFFFFFFFFFLL);
  if (objc_msgSend_hasSize(assetCopy, v59, v60))
  {
    v63 = objc_msgSend_size(assetCopy, v61, v62);
    objc_msgSend_setUploadedSize_(v57, v64, v63);
  }

  v65 = objc_msgSend_uploadReceipt(assetCopy, v61, v62);

  if (v65)
  {
    v68 = objc_msgSend_uploadReceipt(assetCopy, v66, v67);
    objc_msgSend_setUploadReceipt_(v57, v69, v68);
  }

  objc_msgSend_setSaveAssetRequest_(v6, v66, v57);

  return v6;
}

- (id)streamingAssetFromPStreamingAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v5 = objc_alloc(MEMORY[0x277CBC6D0]);
  inited = objc_msgSend_initInternal(v5, v6, v7);
  if (objc_msgSend_hasAssetId(assetCopy, v9, v10))
  {
    v13 = objc_msgSend_assetId(assetCopy, v11, v12);
    if (objc_msgSend_hasOwner(v13, v14, v15))
    {
      v18 = objc_msgSend_owner(v13, v16, v17);
      objc_msgSend_setOwner_(inited, v19, v18);
    }

    if (objc_msgSend_hasFileSignature(v13, v16, v17))
    {
      v22 = objc_msgSend_fileSignature(v13, v20, v21);
      objc_msgSend_setFileSignature_(inited, v23, v22);
    }

    if (objc_msgSend_hasReferenceSignature(v13, v20, v21))
    {
      v26 = objc_msgSend_referenceSignature(v13, v24, v25);
      objc_msgSend_setReferenceSignature_(inited, v27, v26);
    }
  }

  if (objc_msgSend_hasSaveAssetResponse(assetCopy, v11, v12))
  {
    v30 = objc_msgSend_saveAssetResponse(assetCopy, v28, v29);
    if (objc_msgSend_hasUploadURL(v30, v31, v32))
    {
      v35 = MEMORY[0x277CBEBC0];
      v36 = objc_msgSend_uploadURL(v30, v33, v34);
      v38 = objc_msgSend_URLWithString_(v35, v37, v36);
      objc_msgSend_setUploadURL_(inited, v39, v38);
    }

    if (objc_msgSend_hasReservedSize(v30, v33, v34))
    {
      v42 = objc_msgSend_reservedSize(v30, v40, v41);
      objc_msgSend_setReservedSize_(inited, v43, v42);
    }

    if (objc_msgSend_hasUploadURLExpirationTimeSeconds(v30, v40, v41))
    {
      v46 = MEMORY[0x277CBEAA8];
      v47 = objc_msgSend_uploadURLExpirationTimeSeconds(v30, v44, v45);
      v50 = objc_msgSend_dateWithTimeIntervalSince1970_(v46, v48, v49, v47);
      objc_msgSend_setUploadURLExpirationDate_(inited, v51, v50);
    }
  }

  if (objc_msgSend_hasRetrieveAssetResponse(assetCopy, v28, v29))
  {
    v54 = objc_msgSend_retrieveAssetResponse(assetCopy, v52, v53);
    if (objc_msgSend_hasSize(v54, v55, v56))
    {
      v59 = objc_msgSend_size(v54, v57, v58);
      objc_msgSend_setSize_(inited, v60, v59);
    }

    if (objc_msgSend_hasDownloadURL(v54, v57, v58))
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = objc_msgSend_downloadURL(v54, v61, v62);
      v66 = objc_msgSend_URLWithString_(v63, v65, v64);
      objc_msgSend_setDownloadURL_(inited, v67, v66);
    }

    if (objc_msgSend_hasDownloadURLExpirationTimeSeconds(v54, v61, v62))
    {
      v70 = MEMORY[0x277CBEAA8];
      v71 = objc_msgSend_downloadURLExpirationTimeSeconds(v54, v68, v69);
      v74 = objc_msgSend_dateWithTimeIntervalSince1970_(v70, v72, v73, v71);
      objc_msgSend_setDownloadURLExpirationDate_(inited, v75, v74);
    }
  }

  return inited;
}

- (id)pMergeableValueIdentifierFromMergeableValueID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v8 = objc_msgSend_name(dCopy, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_MergeableValue(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_zoneID(dCopy, v13, v14);

  v17 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v16, v15);
  objc_msgSend_setZoneIdentifier_(v5, v18, v17);

  return v5;
}

- (id)mergeableValueIDFromPMergeableValueIdentifier:(id)identifier recordName:(id)name fieldName:(id)fieldName encrypted:(BOOL)encrypted error:(id *)error
{
  encryptedCopy = encrypted;
  nameCopy = name;
  fieldNameCopy = fieldName;
  identifierCopy = identifier;
  v17 = objc_msgSend_value(identifierCopy, v15, v16);
  v20 = objc_msgSend_name(v17, v18, v19);

  v23 = objc_msgSend_zoneIdentifier(identifierCopy, v21, v22);

  v35 = 0;
  v25 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(self, v24, v23, &v35);
  v26 = v35;

  if (v26)
  {
    if (error)
    {
      v27 = v26;
      v28 = 0;
      *error = v26;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CBC5D0]);
    v31 = objc_msgSend_initWithRecordName_zoneID_(v29, v30, nameCopy, v25);
    v32 = objc_alloc(MEMORY[0x277CBC478]);
    v28 = objc_msgSend_initWithName_recordID_key_encrypted_(v32, v33, v20, v31, fieldNameCopy, encryptedCopy);
  }

  return v28;
}

- (id)mergeableRecordValueFromPRecordField:(id)field inPRecordIdentifier:(id)identifier asAnonymousCKUserID:(id)d error:(id *)error
{
  fieldCopy = field;
  identifierCopy = identifier;
  dCopy = d;
  v16 = objc_msgSend_value(fieldCopy, v14, v15);
  v19 = objc_msgSend_type(v16, v17, v18);
  if (v19 == 29)
  {
    v22 = objc_msgSend_encryptedMergeableValue(v16, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_encryptedMergeableValue(v16, v23, v24);
      v63 = 1;
      objc_msgSend_identifier(v25, v28, v29);
      goto LABEL_7;
    }

    v63 = 1;
  }

  else
  {
    if (v19 != 28)
    {
      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1005, @"Invalid field value type");
        v22 = 0;
        *error = v30 = 0;
        goto LABEL_25;
      }

      v22 = 0;
      goto LABEL_18;
    }

    v22 = objc_msgSend_mergeableValue(v16, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_mergeableValue(v16, v23, v24);
      v63 = 0;
      objc_msgSend_identifier(v25, v26, v27);
      v22 = LABEL_7:;

      goto LABEL_12;
    }

    v63 = 0;
  }

LABEL_12:
  v31 = objc_msgSend_name(v22, v23, v24);
  v32 = _CKCheckArgument();

  if (!v32)
  {
LABEL_18:
    v30 = 0;
    goto LABEL_25;
  }

  v35 = objc_msgSend_name(v22, v33, v34);

  if (v35)
  {
    if (identifierCopy)
    {
      goto LABEL_15;
    }

LABEL_20:
    v39 = 0;
LABEL_21:
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_error_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1017, 0, v39, @"No zone ID for mergeable value");
      *error = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_24;
  }

  v59 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v36, v37);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKDProtocolTranslator.m", 1201, @"Convincing clang");

  if (!identifierCopy)
  {
    goto LABEL_20;
  }

LABEL_15:
  v64 = 0;
  v38 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v36, identifierCopy, dCopy, &v64);
  v39 = v64;
  if (!v38)
  {
    goto LABEL_21;
  }

  v40 = objc_alloc(MEMORY[0x277CBC478]);
  v43 = objc_msgSend_name(v22, v41, v42);
  v46 = objc_msgSend_identifier(fieldCopy, v44, v45);
  v49 = objc_msgSend_name(v46, v47, v48);
  v50 = v38;
  v62 = v38;
  v51 = identifierCopy;
  v52 = dCopy;
  v53 = v39;
  v54 = v49;
  v56 = objc_msgSend_initWithName_recordID_key_encrypted_(v40, v55, v43, v50, v49, v63);

  v39 = v53;
  dCopy = v52;
  identifierCopy = v51;

  v30 = objc_alloc_init(MEMORY[0x277CBC470]);
  objc_msgSend_setValueID_(v30, v57, v56);
  objc_msgSend_setIsValueIDKnownToServer_(v30, v58, 1);

LABEL_24:
LABEL_25:

  return v30;
}

- (id)pMergeableValueFromMergeableValueID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDProtocolTranslator.m", 1228, @"Trying to create a mergeable value proto without a mergeable value ID");
  }

  v8 = objc_opt_new();
  v11 = objc_msgSend_name(dCopy, v9, v10);
  v14 = objc_msgSend_CKDPIdentifier_MergeableValue(v11, v12, v13);
  objc_msgSend_setIdentifier_(v8, v15, v14);

  return v8;
}

- (id)pEncryptedMergeableValueFromRecordValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_valueID(valueCopy, v6, v7);

  if (!v8)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDProtocolTranslator.m", 1235, @"Trying to create a mergeable value proto without a mergeable value ID");
  }

  v11 = objc_opt_new();
  v14 = objc_msgSend_valueID(valueCopy, v12, v13);

  v17 = objc_msgSend_name(v14, v15, v16);
  v20 = objc_msgSend_CKDPIdentifier_MergeableValue(v17, v18, v19);
  objc_msgSend_setIdentifier_(v11, v21, v20);

  return v11;
}

- (id)mergeableDeltaFromPDelta:(id)delta valueID:(id)d error:(id *)error
{
  deltaCopy = delta;
  dCopy = d;
  if (objc_msgSend_hasMetadata(deltaCopy, v10, v11))
  {
    v14 = objc_msgSend_metadata(deltaCopy, v12, v13);
    v16 = objc_msgSend_mergeableDeltaMetadataFromPMetadata_mergeableValueID_error_(self, v15, v14, dCopy, error);

    if (v16)
    {
      v19 = objc_msgSend_payload(deltaCopy, v17, v18);
      v22 = 0;
      if (v19 > 2)
      {
        if ((v19 - 3) < 2)
        {
          v29 = objc_msgSend_asset(deltaCopy, v20, v21);
          v32 = v29;
          if (v29)
          {
            v33 = v29;
          }

          else
          {
            v33 = objc_msgSend_encryptedAsset(deltaCopy, v30, v31);
          }

          v38 = v33;

          v45 = 0;
          v40 = objc_msgSend_assetFromPAsset_field_error_(self, v39, v38, 0, &v45);
          v26 = v45;
          if (v40)
          {
            v42 = objc_alloc(MEMORY[0x277CBC458]);
            v22 = objc_msgSend_initWithValueID_metadata_asset_(v42, v43, dCopy, v16, v40);
          }

          else if (error)
          {
            objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2005, v26, @"Failed to parse asset from server");
            *error = v22 = 0;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v19)
      {
        if (v19 == 1)
        {
          v34 = objc_alloc(MEMORY[0x277CBC458]);
          v26 = objc_msgSend_data(deltaCopy, v35, v36);
          v28 = objc_msgSend_initWithValueID_metadata_data_(v34, v37, dCopy, v16, v26);
          goto LABEL_18;
        }

        if (v19 == 2)
        {
          v23 = objc_alloc(MEMORY[0x277CBC458]);
          v26 = objc_msgSend_encryptedData(deltaCopy, v24, v25);
          v28 = objc_msgSend_initWithValueID_metadata_encryptedData_(v23, v27, dCopy, v16, v26);
LABEL_18:
          v22 = v28;
LABEL_26:
        }

LABEL_27:

        goto LABEL_28;
      }

      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1017, @"Unknown or missing mergeable delta payload");
        *error = v22 = 0;
        goto LABEL_27;
      }
    }

    v22 = 0;
    goto LABEL_27;
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1017, @"Missing mergeable delta metadata: %@", deltaCopy);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_28:

  return v22;
}

- (id)pMergeableDeltaFromDelta:(id)delta error:(id *)error
{
  deltaCopy = delta;
  v7 = objc_alloc_init(CKDPMergeableDelta);
  v10 = objc_msgSend_valueID(deltaCopy, v8, v9);
  isEncrypted = objc_msgSend_isEncrypted(v10, v11, v12);

  if (isEncrypted)
  {
    v16 = objc_msgSend_encryptedData(deltaCopy, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_encryptedData(deltaCopy, v17, v18);
      objc_msgSend_setEncryptedData_(v7, v20, v19);
      goto LABEL_11;
    }

    v27 = objc_msgSend_asset(deltaCopy, v17, v18);

    if (v27)
    {
      v19 = objc_msgSend_asset(deltaCopy, v28, v29);
      v25 = objc_msgSend_pAssetFromAsset_(self, v30, v19);
      objc_msgSend_setEncryptedAsset_(v7, v31, v25);
      goto LABEL_10;
    }

    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1017, @"No encrypted data on delta %@", deltaCopy);
      *error = v45 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v21 = objc_msgSend_asset(deltaCopy, v14, v15);

    if (v21)
    {
      v19 = objc_msgSend_asset(deltaCopy, v22, v23);
      v25 = objc_msgSend_pAssetFromAsset_(self, v24, v19);
      objc_msgSend_setAsset_(v7, v26, v25);
LABEL_10:

LABEL_11:
      v37 = objc_msgSend_metadata(deltaCopy, v33, v34);
      if (v37)
      {
        v38 = objc_msgSend_valueID(deltaCopy, v35, v36);
        v40 = objc_msgSend_pMergeableDeltaMetadataFromMetadata_mergeableValueID_error_(self, v39, v37, v38, error);
        objc_msgSend_setMetadata_(v7, v41, v40);

        v44 = objc_msgSend_metadata(v7, v42, v43);

        if (v44)
        {
          v45 = v7;
LABEL_17:

          goto LABEL_18;
        }
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 1017, @"No metadata on delta %@", deltaCopy);
        *error = v45 = 0;
        goto LABEL_17;
      }

      v45 = 0;
      goto LABEL_17;
    }

    v47 = 0;
    v25 = objc_msgSend_dataWithError_(deltaCopy, v22, &v47);
    v19 = v47;
    if (v25)
    {
      objc_msgSend_setData_(v7, v32, v25);
      goto LABEL_10;
    }

    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 1017, v19, @"Failed to get data from mergeable delta %@", deltaCopy);
    }
  }

  v45 = 0;
LABEL_18:

  return v45;
}

- (id)mergeableDeltaMetadataFromPMetadata:(id)metadata mergeableValueID:(id)d error:(id *)error
{
  metadataCopy = metadata;
  dCopy = d;
  v13 = objc_msgSend_identifier(metadataCopy, v10, v11);
  if (v13)
  {
    v14 = objc_opt_new();
    v90 = objc_opt_new();
    v15 = objc_opt_new();
    v89 = objc_opt_new();
    v18 = objc_msgSend_replacedDeltaIdentifiers(metadataCopy, v16, v17);
    v21 = objc_msgSend_count(v18, v19, v20);

    if (v21)
    {
      v24 = MEMORY[0x277CBEB98];
      objc_msgSend_replacedDeltaIdentifiers(metadataCopy, v22, v23);
      v26 = v25 = v15;
      v21 = objc_msgSend_setWithArray_(v24, v27, v26);

      v15 = v25;
    }

    if (objc_msgSend_isEncrypted(dCopy, v22, v23))
    {
      v30 = objc_alloc(MEMORY[0x277CBC460]);
      v31 = objc_alloc(MEMORY[0x277CBC468]);
      v88 = v14;
      v32 = v15;
      v34 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v31, v33, v14, v90, v15, v89);
      v36 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v30, v35, v13, v34, v21);

      if (!objc_msgSend_hasProtectionInfo(metadataCopy, v37, v38) || (objc_msgSend_protectionInfo(metadataCopy, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_protectionInfo(v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend_length(v44, v45, v46), v44, v41, !v47))
      {
        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 1017, @"Missing protection info for delta metadata");
          *error = v78 = 0;
        }

        else
        {
          v78 = 0;
        }

        v14 = v88;
        v15 = v32;
        goto LABEL_33;
      }

      v49 = objc_msgSend_protectionInfo(metadataCopy, v39, v48);
      v52 = objc_msgSend_protectionInfo(v49, v50, v51);
      objc_msgSend_setEnvelope_(v36, v53, v52);

      if ((objc_msgSend_hasTimestamps(metadataCopy, v54, v55) & 1) == 0 && (objc_msgSend_hasEncryptedTimestamps(metadataCopy, v56, v57) & 1) == 0)
      {
        v15 = v32;
        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata proto");
          *error = v78 = 0;
        }

        else
        {
          v78 = 0;
        }

        v14 = v88;
        goto LABEL_33;
      }

      v15 = v32;
      if (!objc_msgSend_hasTimestamps(metadataCopy, v56, v57))
      {
        goto LABEL_12;
      }

      if (objc_msgSend_hasTimestampsAuthTag(metadataCopy, v58, v59))
      {
        v61 = objc_alloc(MEMORY[0x277CBC7A0]);
        v64 = objc_msgSend_timestamps(metadataCopy, v62, v63);
        v67 = objc_msgSend_data(v64, v65, v66);
        v70 = objc_msgSend_timestampsAuthTag(metadataCopy, v68, v69);
        v72 = objc_msgSend_initWithObject1_object2_(v61, v71, v67, v70);
        objc_msgSend_setAuthenticatedTimestamps_(v36, v73, v72);

        v15 = v32;
LABEL_12:
        v14 = v88;
        if (!objc_msgSend_hasEncryptedTimestamps(metadataCopy, v58, v59))
        {
LABEL_21:
          v36 = v36;
          v78 = v36;
LABEL_33:

          goto LABEL_34;
        }

        v76 = objc_msgSend_encryptedTimestamps(metadataCopy, v74, v75);
        objc_msgSend_setEncryptedTimestamps_(v36, v77, v76);
LABEL_20:

        goto LABEL_21;
      }

      v14 = v88;
      if (error)
      {
        v86 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v60, *MEMORY[0x277CBC120], 1017, @"Missing authentication tag for timestamps");
        goto LABEL_26;
      }
    }

    else
    {
      if (objc_msgSend_hasTimestamps(metadataCopy, v28, v29))
      {
        v81 = objc_msgSend_timestamps(metadataCopy, v79, v80);
        v76 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(self, v82, v81, error);

        if (v76 && (objc_msgSend__validate_(v76, v83, error) & 1) != 0)
        {
          v84 = objc_alloc(MEMORY[0x277CBC460]);
          v36 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v84, v85, v13, v76, v21);
          goto LABEL_20;
        }
      }

      else if (error)
      {
        v86 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata proto");
        v36 = 0;
LABEL_26:
        v78 = 0;
        *error = v86;
        goto LABEL_33;
      }

      v36 = 0;
    }

    v78 = 0;
    goto LABEL_33;
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1017, @"No identifier in delta metadata proto");
    *error = v78 = 0;
  }

  else
  {
    v78 = 0;
  }

LABEL_34:

  return v78;
}

- (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)timestamps error:(id *)error
{
  v19 = 0;
  v5 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(MEMORY[0x277CBC468], a2, timestamps, &v19);
  v6 = v19;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  if (error && v11)
  {
    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_userInfo(v6, v7, v8);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x277CCA450]);
    *error = objc_msgSend_errorWithDomain_code_format_(v12, v17, v13, 1017, @"%@", v16);
  }

  return v5;
}

- (id)pMergeableDeltaMetadataFromMetadata:(id)metadata mergeableValueID:(id)d error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dCopy = d;
  v9 = objc_opt_new();
  v12 = objc_msgSend_identifier(metadataCopy, v10, v11);
  objc_msgSend_setIdentifier_(v9, v13, v12);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v16 = objc_msgSend_replacedDeltaIdentifiers(metadataCopy, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v72, v76, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v73;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addReplacedDeltaIdentifiers_(v9, v19, *(*(&v72 + 1) + 8 * i));
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v72, v76, 16);
    }

    while (v20);
  }

  if (!objc_msgSend_isEncrypted(dCopy, v23, v24))
  {
    v35 = MEMORY[0x277CBC468];
    v36 = objc_msgSend_vectors(metadataCopy, v25, v26);
    v38 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(v35, v37, v36);
    objc_msgSend_setTimestamps_(v9, v39, v38);

    v34 = 0;
    v40 = v9;
LABEL_21:

    v68 = v34;
    v9 = v40;
LABEL_22:
    if (error)
    {
      v69 = v68;
      *error = v68;
    }

    v9 = v9;
    v34 = v68;
    v70 = v9;
    goto LABEL_25;
  }

  v28 = objc_msgSend_envelope(metadataCopy, v25, v26);
  if (v28)
  {
    v29 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v29, v30, v28);
    objc_msgSend_setProtectionInfo_(v9, v31, v29);

    v34 = 0;
  }

  else
  {
    v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1017, @"No envelope on metadata: %@", metadataCopy);
  }

  v41 = objc_msgSend_encryptedTimestamps(metadataCopy, v32, v33);
  if (v41)
  {

    goto LABEL_16;
  }

  v46 = objc_msgSend_authenticatedTimestamps(metadataCopy, v42, v43);

  if (v46)
  {
LABEL_16:
    v47 = objc_msgSend_encryptedTimestamps(metadataCopy, v44, v45);

    if (v47)
    {
      v50 = objc_msgSend_encryptedTimestamps(metadataCopy, v48, v49);
      objc_msgSend_setEncryptedTimestamps_(v9, v51, v50);
    }

    v52 = objc_msgSend_authenticatedTimestamps(metadataCopy, v48, v49);

    if (v52)
    {
      v53 = objc_alloc(MEMORY[0x277CBC248]);
      v56 = objc_msgSend_authenticatedTimestamps(metadataCopy, v54, v55);
      v58 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0);
      v60 = objc_msgSend_initWithData_(v53, v59, v58);
      objc_msgSend_setTimestamps_(v9, v61, v60);

      v64 = objc_msgSend_authenticatedTimestamps(metadataCopy, v62, v63);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 1);
      objc_msgSend_setTimestampsAuthTag_(v9, v67, v66);
    }

    v40 = 0;
    v68 = 0;
    v36 = v9;
    if (!v34)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata");
  }

  v70 = 0;
LABEL_25:

  return v70;
}

- (id)pQueryFromQuery:(id)query error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = objc_opt_new();
  v10 = objc_msgSend_predicate(queryCopy, v8, v9);
  v49 = 0;
  v12 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v10, v11, self, &v49);
  v13 = v49;

  if (!v12)
  {
    goto LABEL_4;
  }

  v14 = CKVerifyFilters(v12);

  if (v14)
  {
    v13 = v14;
LABEL_4:
    if (error)
    {
      v15 = v13;
      *error = v13;
    }

    v16 = 0;
    goto LABEL_22;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v45, v51, 16);
  if (v20)
  {
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_addFilters_(v7, v19, *(*(&v45 + 1) + 8 * i));
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v45, v51, 16);
    }

    while (v20);
  }

  v23 = objc_alloc_init(CKDPRecordType);
  v26 = objc_msgSend_recordType(queryCopy, v24, v25);
  objc_msgSend_setName_(v23, v27, v26);

  objc_msgSend_addTypes_(v7, v28, v23);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = objc_msgSend_sortDescriptors(queryCopy, v29, v30);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v41, v50, 16);
  if (v35)
  {
    v36 = *v42;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = objc_msgSend_CKDPQuerySort(*(*(&v41 + 1) + 8 * j), v33, v34);
        objc_msgSend_addSorts_(v7, v39, v38);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v41, v50, 16);
    }

    while (v35);
  }

  v16 = v7;
LABEL_22:

  return v16;
}

- (id)subscriptionFromPSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  v9 = objc_msgSend_identifier(subscriptionCopy, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);

  if (objc_msgSend_hasZoneIdentifier(subscriptionCopy, v13, v14))
  {
    v17 = objc_msgSend_zoneIdentifier(subscriptionCopy, v15, v16);
    v19 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(self, v18, v17, error);

    if (!v19)
    {
      v20 = 0;
      v21 = 0;
LABEL_4:
      v22 = 0;
LABEL_5:
      v23 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v19 = 0;
  }

  v26 = v12;
  if (objc_msgSend_hasEvaluationType(subscriptionCopy, v15, v16))
  {
    v27 = objc_msgSend_evaluationType(subscriptionCopy, v24, v25);
    if (v27 > 3)
    {
      LOBYTE(v28) = 0;
      LOBYTE(v29) = 0;
      LOBYTE(v297) = 0;
    }

    else
    {
      v28 = 2u >> (v27 & 0xF);
      v29 = 4u >> (v27 & 0xF);
      v297 = 8u >> (v27 & 0xF);
    }
  }

  else
  {
    LOBYTE(v29) = 0;
    LOBYTE(v297) = 0;
    LOBYTE(v28) = 1;
  }

  if (objc_msgSend_filtersCount(subscriptionCopy, v24, v25))
  {
    v32 = MEMORY[0x277CCAC30];
    v33 = objc_msgSend_filters(subscriptionCopy, v30, v31);
    v22 = objc_msgSend_predicateWithCKDPQueryFilters_translator_(v32, v34, v33, self);
  }

  else if (objc_msgSend_evaluationType(subscriptionCopy, v30, v31) == 1)
  {
    v22 = objc_msgSend_predicateWithValue_(MEMORY[0x277CCAC30], v35, 1);
  }

  else
  {
    v22 = 0;
  }

  v21 = objc_msgSend_recordTypes(subscriptionCopy, v35, v36);
  if (v21)
  {
    v39 = objc_msgSend_recordTypes(subscriptionCopy, v37, v38);
    v42 = objc_msgSend_count(v39, v40, v41);

    if (v42)
    {
      v43 = objc_msgSend_recordTypes(subscriptionCopy, v37, v38);
      v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0);
      v21 = objc_msgSend_name(v45, v46, v47);
    }

    else
    {
      v21 = 0;
    }
  }

  if (objc_msgSend_mutationTriggers(subscriptionCopy, v37, v38) && objc_msgSend_mutationTriggersCount(subscriptionCopy, v48, v49))
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v54 = *(objc_msgSend_mutationTriggers(subscriptionCopy, v48, v49) + 4 * v50);
      v55 = v51 | 2;
      v56 = v51 | 1;
      if (v54 != 1)
      {
        v56 = v51;
      }

      if (v54 != 2)
      {
        v55 = v56;
      }

      if (v54 == 3)
      {
        v51 |= 4uLL;
      }

      else
      {
        v51 = v55;
      }

      ++v50;
    }

    while (v50 < objc_msgSend_mutationTriggersCount(subscriptionCopy, v52, v53));
  }

  else
  {
    v51 = 0;
  }

  if (objc_msgSend_fireOnce(subscriptionCopy, v48, v49))
  {
    v51 |= 8uLL;
  }

  if (v28)
  {
    v12 = v26;
    if (!v21)
    {
      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a record type");
        v21 = 0;
        *error = v23 = 0;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v20 = v19;
      goto LABEL_60;
    }

    if (v22)
    {
      v59 = objc_alloc(MEMORY[0x277CBC598]);
      v61 = objc_msgSend_initWithRecordType_predicate_subscriptionID_options_(v59, v60, v21, v22, v26, v51);
      v20 = v19;
      objc_msgSend_setZoneID_(v61, v62, v19);
      goto LABEL_49;
    }

    v20 = v19;
    if (!error)
    {
      goto LABEL_4;
    }

    v295 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a predicate");
    v22 = 0;
LABEL_57:
    v23 = 0;
    *error = v295;
    goto LABEL_60;
  }

  v12 = v26;
  if ((v29 & 1) == 0)
  {
    if (v297)
    {
      v66 = objc_alloc(MEMORY[0x277CBC2A0]);
      v61 = objc_msgSend_initWithSubscriptionID_(v66, v67, v26);
      objc_msgSend_setRecordType_(v61, v68, v21);
    }

    else
    {
      v61 = 0;
    }

    v20 = v19;
    goto LABEL_49;
  }

  if (!v19)
  {
    if (!error)
    {
      v20 = 0;
      goto LABEL_5;
    }

    v295 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a zone id");
    v20 = 0;
    goto LABEL_57;
  }

  v20 = v19;
  v63 = objc_alloc(MEMORY[0x277CBC618]);
  v61 = objc_msgSend_initWithZoneID_subscriptionID_(v63, v64, v19, v12);
  objc_msgSend_setRecordType_(v61, v65, v21);
LABEL_49:
  if (objc_msgSend_hasNotification(subscriptionCopy, v57, v58))
  {
    v69 = objc_alloc_init(MEMORY[0x277CBC4D0]);
    objc_msgSend_setNotificationInfo_(v61, v70, v69);

    v73 = objc_msgSend_notification(subscriptionCopy, v71, v72);
    shouldBadge = objc_msgSend_shouldBadge(v73, v74, v75);
    v79 = objc_msgSend_notificationInfo(v61, v77, v78);
    objc_msgSend_setShouldBadge_(v79, v80, shouldBadge);

    v83 = objc_msgSend_notification(subscriptionCopy, v81, v82);
    shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(v83, v84, v85);
    v89 = objc_msgSend_notificationInfo(v61, v87, v88);
    objc_msgSend_setShouldSendContentAvailable_(v89, v90, shouldSendContentAvailable);

    v93 = objc_msgSend_notification(subscriptionCopy, v91, v92);
    shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(v93, v94, v95);
    v99 = objc_msgSend_notificationInfo(v61, v97, v98);
    objc_msgSend_setShouldSendMutableContent_(v99, v100, shouldSendMutableContent);

    v103 = objc_msgSend_notification(subscriptionCopy, v101, v102);
    v106 = objc_msgSend_collapseIdKey(v103, v104, v105);
    v109 = objc_msgSend_notificationInfo(v61, v107, v108);
    objc_msgSend_setCollapseIDKey_(v109, v110, v106);

    v113 = objc_msgSend_notification(subscriptionCopy, v111, v112);
    v116 = objc_msgSend_additionalFields(v113, v114, v115);
    v119 = objc_msgSend_notificationInfo(v61, v117, v118);
    objc_msgSend_setDesiredKeys_(v119, v120, v116);

    v123 = objc_msgSend_notification(subscriptionCopy, v121, v122);
    LODWORD(v116) = objc_msgSend_hasAlert(v123, v124, v125);

    if (v116)
    {
      v128 = objc_msgSend_notification(subscriptionCopy, v126, v127);
      v131 = objc_msgSend_alert(v128, v129, v130);
      v134 = objc_msgSend_text(v131, v132, v133);
      v137 = objc_msgSend_notificationInfo(v61, v135, v136);
      objc_msgSend_setAlertBody_(v137, v138, v134);

      v141 = objc_msgSend_notification(subscriptionCopy, v139, v140);
      v144 = objc_msgSend_alert(v141, v142, v143);
      v147 = objc_msgSend_localizedKey(v144, v145, v146);
      v150 = objc_msgSend_notificationInfo(v61, v148, v149);
      objc_msgSend_setAlertLocalizationKey_(v150, v151, v147);

      v154 = objc_msgSend_notification(subscriptionCopy, v152, v153);
      v157 = objc_msgSend_alert(v154, v155, v156);
      v160 = objc_msgSend_localizedArguments(v157, v158, v159);
      v163 = objc_msgSend_notificationInfo(v61, v161, v162);
      objc_msgSend_setAlertLocalizationArgs_(v163, v164, v160);

      v167 = objc_msgSend_notification(subscriptionCopy, v165, v166);
      v170 = objc_msgSend_alert(v167, v168, v169);
      v173 = objc_msgSend_title(v170, v171, v172);
      v176 = objc_msgSend_notificationInfo(v61, v174, v175);
      objc_msgSend_setTitle_(v176, v177, v173);

      v180 = objc_msgSend_notification(subscriptionCopy, v178, v179);
      v183 = objc_msgSend_alert(v180, v181, v182);
      v186 = objc_msgSend_titleLocalizedKey(v183, v184, v185);
      v189 = objc_msgSend_notificationInfo(v61, v187, v188);
      objc_msgSend_setTitleLocalizationKey_(v189, v190, v186);

      v193 = objc_msgSend_notification(subscriptionCopy, v191, v192);
      v196 = objc_msgSend_alert(v193, v194, v195);
      v199 = objc_msgSend_titleLocalizedArguments(v196, v197, v198);
      v202 = objc_msgSend_notificationInfo(v61, v200, v201);
      objc_msgSend_setTitleLocalizationArgs_(v202, v203, v199);

      v206 = objc_msgSend_notification(subscriptionCopy, v204, v205);
      v209 = objc_msgSend_alert(v206, v207, v208);
      v212 = objc_msgSend_subtitle(v209, v210, v211);
      v215 = objc_msgSend_notificationInfo(v61, v213, v214);
      objc_msgSend_setSubtitle_(v215, v216, v212);

      v219 = objc_msgSend_notification(subscriptionCopy, v217, v218);
      v222 = objc_msgSend_alert(v219, v220, v221);
      v225 = objc_msgSend_subtitleLocalizedKey(v222, v223, v224);
      v228 = objc_msgSend_notificationInfo(v61, v226, v227);
      objc_msgSend_setSubtitleLocalizationKey_(v228, v229, v225);

      v232 = objc_msgSend_notification(subscriptionCopy, v230, v231);
      v235 = objc_msgSend_alert(v232, v233, v234);
      v238 = objc_msgSend_subtitleLocalizedArguments(v235, v236, v237);
      v241 = objc_msgSend_notificationInfo(v61, v239, v240);
      objc_msgSend_setSubtitleLocalizationArgs_(v241, v242, v238);

      v245 = objc_msgSend_notification(subscriptionCopy, v243, v244);
      v248 = objc_msgSend_alert(v245, v246, v247);
      v251 = objc_msgSend_actionLocKey(v248, v249, v250);
      v254 = objc_msgSend_notificationInfo(v61, v252, v253);
      objc_msgSend_setAlertActionLocalizationKey_(v254, v255, v251);

      v258 = objc_msgSend_notification(subscriptionCopy, v256, v257);
      v261 = objc_msgSend_alert(v258, v259, v260);
      v264 = objc_msgSend_launchImage(v261, v262, v263);
      v267 = objc_msgSend_notificationInfo(v61, v265, v266);
      objc_msgSend_setAlertLaunchImage_(v267, v268, v264);

      v271 = objc_msgSend_notification(subscriptionCopy, v269, v270);
      v274 = objc_msgSend_alert(v271, v272, v273);
      v277 = objc_msgSend_soundName(v274, v275, v276);
      v280 = objc_msgSend_notificationInfo(v61, v278, v279);
      objc_msgSend_setSoundName_(v280, v281, v277);

      v284 = objc_msgSend_notification(subscriptionCopy, v282, v283);
      v287 = objc_msgSend_alert(v284, v285, v286);
      v290 = objc_msgSend_category(v287, v288, v289);
      v293 = objc_msgSend_notificationInfo(v61, v291, v292);
      objc_msgSend_setCategory_(v293, v294, v290);
    }
  }

  v23 = v61;
LABEL_60:

  return v23;
}

- (id)pSubscriptionFromSubscription:(id)subscription error:(id *)error
{
  v327 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v7 = objc_opt_new();
  v10 = objc_msgSend_subscriptionID(subscriptionCopy, v8, v9);
  v13 = objc_msgSend_CKDPIdentifier_Subscription(v10, v11, v12);
  objc_msgSend_setIdentifier_(v7, v14, v13);

  if (objc_msgSend_subscriptionType(subscriptionCopy, v15, v16) == 1)
  {
    v19 = subscriptionCopy;
    v22 = objc_msgSend_zoneID(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_zoneID(v19, v23, v24);
      v27 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v26, v25);
      objc_msgSend_setZoneIdentifier_(v7, v28, v27);
    }

    v29 = objc_msgSend_predicate(v19, v23, v24);
    v325 = 0;
    v31 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v29, v30, self, &v325);
    v32 = v325;

    if (!v31 && v32)
    {
      if (!error)
      {
LABEL_8:

        v34 = 0;
        goto LABEL_43;
      }

LABEL_7:
      v33 = v32;
      *error = v32;
      goto LABEL_8;
    }

    v46 = CKVerifyFilters(v31);

    if (v46)
    {
      v32 = v46;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v323 = 0u;
    v324 = 0u;
    v321 = 0u;
    v322 = 0u;
    v52 = v31;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v58, &v321, v326, 16);
    if (v59)
    {
      v61 = v59;
      v62 = *v322;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v322 != v62)
          {
            objc_enumerationMutation(v52);
          }

          objc_msgSend_addFilters_(v7, v60, *(*(&v321 + 1) + 8 * i), v321);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v60, &v321, v326, 16);
      }

      while (v61);
    }

    v64 = objc_opt_new();
    v67 = objc_msgSend_recordType(v19, v65, v66);
    objc_msgSend_setName_(v64, v68, v67);

    objc_msgSend_addRecordTypes_(v7, v69, v64);
    SubscriptionOptions = objc_msgSend_querySubscriptionOptions(v19, v70, v71);
    v73 = SubscriptionOptions;
    objc_msgSend_setFireOnce_(v7, v74, (SubscriptionOptions >> 3) & 1);
    if (v73)
    {
      objc_msgSend_addMutationTriggers_(v7, v75, 1);
      if ((v73 & 2) == 0)
      {
LABEL_29:
        if ((v73 & 4) == 0)
        {
LABEL_31:

          goto LABEL_32;
        }

LABEL_30:
        objc_msgSend_addMutationTriggers_(v7, v75, 3, v321);
        goto LABEL_31;
      }
    }

    else if ((v73 & 2) == 0)
    {
      goto LABEL_29;
    }

    objc_msgSend_addMutationTriggers_(v7, v75, 2, v321);
    if ((v73 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (objc_msgSend_subscriptionType(subscriptionCopy, v17, v18) == 2)
  {
    v19 = subscriptionCopy;
    v39 = objc_msgSend_zoneID(v19, v37, v38);

    if (v39)
    {
      v42 = objc_msgSend_zoneID(v19, v40, v41);
      v44 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v43, v42);
      objc_msgSend_setZoneIdentifier_(v7, v45, v44);
    }

    objc_msgSend_recordType(v19, v40, v41);
    goto LABEL_18;
  }

  if (objc_msgSend_subscriptionType(subscriptionCopy, v35, v36) == 3)
  {
    v19 = subscriptionCopy;
    objc_msgSend_recordType(v19, v49, v50);
    v51 = LABEL_18:;

    if (!v51)
    {
LABEL_33:

      goto LABEL_34;
    }

    v52 = objc_opt_new();
    v55 = objc_msgSend_recordType(v19, v53, v54);
    objc_msgSend_setName_(v52, v56, v55);

    objc_msgSend_addRecordTypes_(v7, v57, v52);
LABEL_32:

    goto LABEL_33;
  }

LABEL_34:
  v76 = objc_msgSend_subscriptionType(subscriptionCopy, v47, v48, v321);
  if (v76 == 3)
  {
    v78 = 3;
  }

  else
  {
    v78 = 1;
  }

  if (v76 == 2)
  {
    objc_msgSend_setEvaluationType_(v7, v77, 2);
  }

  else
  {
    objc_msgSend_setEvaluationType_(v7, v77, v78);
  }

  v81 = objc_msgSend_notificationInfo(subscriptionCopy, v79, v80);

  if (v81)
  {
    v82 = objc_opt_new();
    objc_msgSend_setNotification_(v7, v83, v82);

    v84 = MEMORY[0x277CBEB18];
    v87 = objc_msgSend_notificationInfo(subscriptionCopy, v85, v86);
    v90 = objc_msgSend_desiredKeys(v87, v88, v89);
    v92 = objc_msgSend_arrayWithArray_(v84, v91, v90);
    v95 = objc_msgSend_notification(v7, v93, v94);
    objc_msgSend_setAdditionalFields_(v95, v96, v92);

    v99 = objc_msgSend_notificationInfo(subscriptionCopy, v97, v98);
    shouldBadge = objc_msgSend_shouldBadge(v99, v100, v101);
    v105 = objc_msgSend_notification(v7, v103, v104);
    objc_msgSend_setShouldBadge_(v105, v106, shouldBadge);

    v109 = objc_msgSend_notificationInfo(subscriptionCopy, v107, v108);
    shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(v109, v110, v111);
    v115 = objc_msgSend_notification(v7, v113, v114);
    objc_msgSend_setShouldSendContentAvailable_(v115, v116, shouldSendContentAvailable);

    v119 = objc_msgSend_notificationInfo(subscriptionCopy, v117, v118);
    shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(v119, v120, v121);
    v125 = objc_msgSend_notification(v7, v123, v124);
    objc_msgSend_setShouldSendMutableContent_(v125, v126, shouldSendMutableContent);

    v129 = objc_msgSend_notificationInfo(subscriptionCopy, v127, v128);
    v132 = objc_msgSend_collapseIDKey(v129, v130, v131);
    v135 = objc_msgSend_notification(v7, v133, v134);
    objc_msgSend_setCollapseIdKey_(v135, v136, v132);

    v137 = objc_opt_new();
    v140 = objc_msgSend_notification(v7, v138, v139);
    objc_msgSend_setAlert_(v140, v141, v137);

    v144 = objc_msgSend_notificationInfo(subscriptionCopy, v142, v143);
    v147 = objc_msgSend_alertBody(v144, v145, v146);
    v150 = objc_msgSend_notification(v7, v148, v149);
    v153 = objc_msgSend_alert(v150, v151, v152);
    objc_msgSend_setText_(v153, v154, v147);

    v157 = objc_msgSend_notificationInfo(subscriptionCopy, v155, v156);
    v160 = objc_msgSend_alertLocalizationKey(v157, v158, v159);
    v163 = objc_msgSend_notification(v7, v161, v162);
    v166 = objc_msgSend_alert(v163, v164, v165);
    objc_msgSend_setLocalizedKey_(v166, v167, v160);

    v168 = MEMORY[0x277CBEB18];
    v171 = objc_msgSend_notificationInfo(subscriptionCopy, v169, v170);
    v174 = objc_msgSend_alertLocalizationArgs(v171, v172, v173);
    v176 = objc_msgSend_arrayWithArray_(v168, v175, v174);
    v179 = objc_msgSend_notification(v7, v177, v178);
    v182 = objc_msgSend_alert(v179, v180, v181);
    objc_msgSend_setLocalizedArguments_(v182, v183, v176);

    v186 = objc_msgSend_notificationInfo(subscriptionCopy, v184, v185);
    v189 = objc_msgSend_title(v186, v187, v188);
    v192 = objc_msgSend_notification(v7, v190, v191);
    v195 = objc_msgSend_alert(v192, v193, v194);
    objc_msgSend_setTitle_(v195, v196, v189);

    v199 = objc_msgSend_notificationInfo(subscriptionCopy, v197, v198);
    v202 = objc_msgSend_titleLocalizationKey(v199, v200, v201);
    v205 = objc_msgSend_notification(v7, v203, v204);
    v208 = objc_msgSend_alert(v205, v206, v207);
    objc_msgSend_setTitleLocalizedKey_(v208, v209, v202);

    v210 = MEMORY[0x277CBEB18];
    v213 = objc_msgSend_notificationInfo(subscriptionCopy, v211, v212);
    v216 = objc_msgSend_titleLocalizationArgs(v213, v214, v215);
    v218 = objc_msgSend_arrayWithArray_(v210, v217, v216);
    v221 = objc_msgSend_notification(v7, v219, v220);
    v224 = objc_msgSend_alert(v221, v222, v223);
    objc_msgSend_setTitleLocalizedArguments_(v224, v225, v218);

    v228 = objc_msgSend_notificationInfo(subscriptionCopy, v226, v227);
    v231 = objc_msgSend_subtitle(v228, v229, v230);
    v234 = objc_msgSend_notification(v7, v232, v233);
    v237 = objc_msgSend_alert(v234, v235, v236);
    objc_msgSend_setSubtitle_(v237, v238, v231);

    v241 = objc_msgSend_notificationInfo(subscriptionCopy, v239, v240);
    v244 = objc_msgSend_subtitleLocalizationKey(v241, v242, v243);
    v247 = objc_msgSend_notification(v7, v245, v246);
    v250 = objc_msgSend_alert(v247, v248, v249);
    objc_msgSend_setSubtitleLocalizedKey_(v250, v251, v244);

    v252 = MEMORY[0x277CBEB18];
    v255 = objc_msgSend_notificationInfo(subscriptionCopy, v253, v254);
    v258 = objc_msgSend_subtitleLocalizationArgs(v255, v256, v257);
    v260 = objc_msgSend_arrayWithArray_(v252, v259, v258);
    v263 = objc_msgSend_notification(v7, v261, v262);
    v266 = objc_msgSend_alert(v263, v264, v265);
    objc_msgSend_setSubtitleLocalizedArguments_(v266, v267, v260);

    v270 = objc_msgSend_notificationInfo(subscriptionCopy, v268, v269);
    v273 = objc_msgSend_alertActionLocalizationKey(v270, v271, v272);
    v276 = objc_msgSend_notification(v7, v274, v275);
    v279 = objc_msgSend_alert(v276, v277, v278);
    objc_msgSend_setActionLocKey_(v279, v280, v273);

    v283 = objc_msgSend_notificationInfo(subscriptionCopy, v281, v282);
    v286 = objc_msgSend_alertLaunchImage(v283, v284, v285);
    v289 = objc_msgSend_notification(v7, v287, v288);
    v292 = objc_msgSend_alert(v289, v290, v291);
    objc_msgSend_setLaunchImage_(v292, v293, v286);

    v296 = objc_msgSend_notificationInfo(subscriptionCopy, v294, v295);
    v299 = objc_msgSend_soundName(v296, v297, v298);
    v302 = objc_msgSend_notification(v7, v300, v301);
    v305 = objc_msgSend_alert(v302, v303, v304);
    objc_msgSend_setSoundName_(v305, v306, v299);

    v309 = objc_msgSend_notificationInfo(subscriptionCopy, v307, v308);
    v312 = objc_msgSend_category(v309, v310, v311);
    v315 = objc_msgSend_notification(v7, v313, v314);
    v318 = objc_msgSend_alert(v315, v316, v317);
    objc_msgSend_setCategory_(v318, v319, v312);
  }

  v34 = v7;
LABEL_43:

  return v34;
}

- (id)recordZoneFromPRecordZone:(id)zone asAnonymousCKUserID:(id)d databaseScope:(int64_t)scope error:(id *)error requiredFeaturesValidationFailureType:(id *)type
{
  v174 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  dCopy = d;
  if (!type)
  {
    v165 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v165, v166, a2, self, @"CKDProtocolTranslator.m", 1773, @"requiredFeaturesValidationFailureType must not be nil");
  }

  v16 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], v13, v14);
  v19 = objc_msgSend_copy(v16, v17, v18);

  v22 = objc_msgSend_zoneIdentifier(zoneCopy, v20, v21);
  v25 = objc_msgSend_value(v22, v23, v24);
  v28 = objc_msgSend_name(v25, v26, v27);

  if (!_CKCheckArgument())
  {
    v98 = 0;
LABEL_23:
    v116 = 0;
    goto LABEL_45;
  }

  v31 = objc_msgSend_zoneIdentifier(zoneCopy, v29, v30);
  v171 = 0;
  v167 = dCopy;
  v33 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v32, v31, dCopy, &v171);
  v34 = v171;
  objc_msgSend_setZoneID_(v19, v35, v33);

  v38 = objc_msgSend_zoneID(v19, v36, v37);

  if (!v38)
  {
    if (error)
    {
      v117 = v34;
      v116 = 0;
      *error = v34;
    }

    else
    {
      v116 = 0;
    }

    v98 = v34;
    dCopy = v167;
    goto LABEL_45;
  }

  if (objc_msgSend_hasProtectionInfo(zoneCopy, v39, v40))
  {
    v43 = objc_msgSend_protectionInfo(zoneCopy, v41, v42);
    v46 = objc_msgSend_protectionInfo(v43, v44, v45);
    v49 = objc_msgSend_length(v46, v47, v48);

    if (v49)
    {
      v50 = objc_msgSend_protectionInfo(zoneCopy, v41, v42);
      v53 = objc_msgSend_protectionInfo(v50, v51, v52);
      objc_msgSend_setProtectionData_(v19, v54, v53);

      v57 = objc_msgSend_protectionInfo(zoneCopy, v55, v56);
      v60 = objc_msgSend_protectionInfoTag(v57, v58, v59);
      objc_msgSend_setProtectionEtag_(v19, v61, v60);

      if (objc_msgSend_hasZoneProtectionInfoKeysToRemove(zoneCopy, v62, v63))
      {
        v64 = objc_msgSend_zoneProtectionInfoKeysToRemove(zoneCopy, v41, v42);
        v66 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(self, v65, v64);
        objc_msgSend_setZonePCSKeysToRemove_(v19, v67, v66);
      }
    }
  }

  if (objc_msgSend_hasRecordProtectionInfo(zoneCopy, v41, v42))
  {
    v70 = objc_msgSend_recordProtectionInfo(zoneCopy, v68, v69);
    v73 = objc_msgSend_protectionInfo(v70, v71, v72);
    v76 = objc_msgSend_length(v73, v74, v75);

    if (v76)
    {
      v77 = objc_msgSend_recordProtectionInfo(zoneCopy, v68, v69);
      v80 = objc_msgSend_protectionInfo(v77, v78, v79);
      objc_msgSend_setZoneishProtectionData_(v19, v81, v80);

      if (objc_msgSend_hasRecordProtectionInfoKeysToRemove(zoneCopy, v82, v83))
      {
        v86 = objc_msgSend_recordProtectionInfoKeysToRemove(zoneCopy, v84, v85);
        v88 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(self, v87, v86);
        objc_msgSend_setZoneishPCSKeysToRemove_(v19, v89, v88);
      }

      objc_msgSend__setEncryptionScopeNoSideEffects_(v19, v84, 1);
    }
  }

  if (!objc_msgSend_hasSignedCryptoRequirements(zoneCopy, v68, v69))
  {
    goto LABEL_18;
  }

  v92 = objc_msgSend_signedCryptoRequirements(zoneCopy, v90, v91);
  v95 = objc_msgSend_zoneID(v19, v93, v94);
  v170 = v34;
  v97 = objc_msgSend_cryptoRequirementsFromPSignedCryptoRequirements_zoneID_error_requiredFeaturesValidationFailureType_(self, v96, v92, v95, &v170, type);
  v98 = v170;

  if (v98 || !v97)
  {
    dCopy = v167;
    if (error)
    {
      v150 = v98;
      *error = v98;
    }

    goto LABEL_23;
  }

  v101 = objc_msgSend_requiredAdopterFeatures(v97, v99, v100);
  objc_msgSend_setRequiredFeatures_(v19, v102, v101);

  v105 = objc_msgSend_requiredAdopterFeatures(v97, v103, v104);
  objc_msgSend_setOriginalRequiredFeatures_(v19, v106, v105);

  v34 = 0;
LABEL_18:
  dCopy = v167;
  if (objc_msgSend_hasShareId(zoneCopy, v90, v91))
  {
    v109 = objc_msgSend_shareId(zoneCopy, v107, v108);
    v169 = v34;
    v111 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(self, v110, v109, v167, &v169);
    v98 = v169;

    if (v111)
    {
      v112 = objc_alloc(MEMORY[0x277CBC620]);
      v114 = objc_msgSend_initWithRecordID_action_(v112, v113, v111, 0);
      objc_msgSend_setShare_(v19, v115, v114);
    }
  }

  else
  {
    v98 = v34;
  }

  v118 = objc_msgSend_protectionInfoKeysToRemoves(zoneCopy, v107, v108);
  objc_msgSend_setInvitedKeysToRemove_(v19, v119, v118);

  if (objc_msgSend_hasParentReference(zoneCopy, v120, v121))
  {
    v124 = objc_msgSend_parentReference(zoneCopy, v122, v123);
    hasZoneIdentifier = objc_msgSend_hasZoneIdentifier(v124, v125, v126);

    if (hasZoneIdentifier)
    {
      v130 = objc_msgSend_parentReference(zoneCopy, v128, v129);
      v133 = objc_msgSend_zoneIdentifier(v130, v131, v132);
      v168 = v98;
      v135 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v134, v133, v167, &v168);
      v136 = v168;

      v139 = objc_msgSend_parentReference(zoneCopy, v137, v138);
      hasReferenceType = objc_msgSend_hasReferenceType(v139, v140, v141);

      if (hasReferenceType)
      {
        v145 = objc_msgSend_parentReference(zoneCopy, v143, v144);
        v148 = objc_msgSend_referenceType(v145, v146, v147);
        v149 = sub_225395698(v148);
      }

      else
      {
        v149 = 1;
      }

      v156 = objc_alloc(MEMORY[0x277CBC610]);
      v158 = objc_msgSend_initWithZoneID_action_(v156, v157, v135, v149);
      objc_msgSend_setParent_(v19, v159, v158);

      v98 = v136;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v151 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v152 = v151;
        v155 = objc_msgSend_zoneIdentifier(zoneCopy, v153, v154);
        *buf = 138412290;
        v173 = v155;
        _os_log_error_impl(&dword_22506F000, v152, OS_LOG_TYPE_ERROR, "Zone %@ has a parent reference that is missing a zone identifier.", buf, 0xCu);
      }
    }
  }

  if (objc_msgSend_hasEtag(zoneCopy, v122, v123))
  {
    v162 = objc_msgSend_etag(zoneCopy, v160, v161);
    objc_msgSend_setEtag_(v19, v163, v162);
  }

  v116 = v19;
LABEL_45:

  return v116;
}

- (id)pRecordZoneReferenceFromRecordZoneReference:(id)reference
{
  referenceCopy = reference;
  v7 = objc_opt_new();
  if (referenceCopy)
  {
    v8 = objc_msgSend_zoneID(referenceCopy, v5, v6);
    v10 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v9, v8);
    objc_msgSend_setZoneIdentifier_(v7, v11, v10);

    v14 = objc_msgSend_referenceAction(referenceCopy, v12, v13);
    if (v14 == 1)
    {
      objc_msgSend_setReferenceType_(v7, v15, 1);
    }

    else
    {
      objc_msgSend_setReferenceType_(v7, v15, 2 * (v14 != 2));
    }
  }

  return v7;
}

- (id)cryptoRequirementsFromPSignedCryptoRequirements:(id)requirements zoneID:(id)d error:(id *)error requiredFeaturesValidationFailureType:(id *)type
{
  *&v109[5] = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  dCopy = d;
  if (type)
  {
    if (requirementsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v100 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v100, v101, a2, self, @"CKDProtocolTranslator.m", 1863, @"requiredFeaturesValidationFailureType must not be nil");

    if (requirementsCopy)
    {
      goto LABEL_3;
    }
  }

  v102 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v102, v103, a2, self, @"CKDProtocolTranslator.m", 1864, @"Being asked to parse a nil SignedCryptoRequirements");

LABEL_3:
  v15 = objc_alloc_init(CKDCryptoRequirements);
  v18 = objc_msgSend_serializedRequirements(requirementsCopy, v16, v17);
  if (!v18)
  {
    goto LABEL_14;
  }

  v21 = v18;
  v22 = objc_msgSend_signature(requirementsCopy, v19, v20);
  if (!v22)
  {

LABEL_14:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v107 = dCopy;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Requirements, signature or version is missing.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_19;
      }
    }

    else if (!error)
    {
LABEL_19:
      v40 = 0;
      v41 = @"incompleteCryptoRequirements";
      goto LABEL_20;
    }

    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 1000, @"Failed to parse required features for zone %@. Missing attributes.", dCopy);
    goto LABEL_19;
  }

  v25 = v22;
  v26 = objc_msgSend_version(requirementsCopy, v23, v24);

  if (!v26)
  {
    goto LABEL_14;
  }

  v29 = objc_msgSend_version(requirementsCopy, v27, v28);
  v32 = MEMORY[0x277CBC980];
  if (v29 > *MEMORY[0x277CBC980])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v90 = v33;
      v93 = objc_msgSend_version(requirementsCopy, v91, v92);
      v94 = *v32;
      *buf = 138543874;
      v107 = dCopy;
      v108 = 1024;
      *v109 = v93;
      v109[2] = 1024;
      *&v109[3] = v94;
      _os_log_error_impl(&dword_22506F000, v90, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Unsupported signed requirements version: %d. The current OS supports versions up to %d.", buf, 0x18u);

      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:
      v40 = 0;
      v41 = @"unsupportedCryptoRequirementsVersion";
LABEL_20:
      *type = v41;
      goto LABEL_21;
    }

    v36 = MEMORY[0x277CBC560];
    v37 = *MEMORY[0x277CBC120];
    v38 = objc_msgSend_version(requirementsCopy, v34, v35);
    *error = objc_msgSend_errorWithDomain_code_format_(v36, v39, v37, 5021, @"Failed to parse required features for zone %@. Version %d is required the current OS only supports versions up to %d.", dCopy, v38, *v32);;
    goto LABEL_12;
  }

  v104 = v15;
  v45 = objc_msgSend_pcsManager(self, v30, v31);
  v48 = objc_msgSend_signature(requirementsCopy, v46, v47);
  v51 = objc_msgSend_serializedRequirements(requirementsCopy, v49, v50);
  v105 = 0;
  v53 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v45, v52, v48, v51, &v105);
  v54 = v105;

  if (!v53 || v54)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = v104;
    v75 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v107 = dCopy;
      v108 = 2112;
      *v109 = v54;
      _os_log_error_impl(&dword_22506F000, v75, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Signature validation failed: %@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_40;
      }
    }

    else if (!error)
    {
LABEL_40:
      *type = @"invalidCryptoRequirementsSignature";

      v40 = 0;
      goto LABEL_21;
    }

    *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v76, *MEMORY[0x277CBC120], 5022, v54, @"Failed to validate the cryptographic signature of the required features for zone %@.", dCopy);
    goto LABEL_40;
  }

  v55 = [CKDPZoneCryptoFeatureRequirements alloc];
  v58 = objc_msgSend_serializedRequirements(requirementsCopy, v56, v57);
  v60 = objc_msgSend_initWithData_(v55, v59, v58);

  if (!v60)
  {
    v15 = v104;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v86 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v107 = dCopy;
      _os_log_error_impl(&dword_22506F000, v86, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Failed to parse the required features from the signed blob.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_51;
      }
    }

    else if (!error)
    {
LABEL_51:
      v40 = 0;
      v74 = @"invalidCryptoFeatureRequirements";
      goto LABEL_58;
    }

    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v87, *MEMORY[0x277CBC120], 1005, @"Failed to parse the required features for zone %@.", dCopy);
    goto LABEL_51;
  }

  v15 = v104;
  if (objc_msgSend_hasMinimumSchemaVersion(v60, v61, v62))
  {
    v65 = objc_msgSend_minimumSchemaVersion(v60, v63, v64);
    v66 = MEMORY[0x277CBC8D0];
    if (v65 > *MEMORY[0x277CBC8D0])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v67 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v95 = v67;
        v98 = objc_msgSend_minimumSchemaVersion(v60, v96, v97);
        v99 = *v66;
        *buf = 138543874;
        v107 = dCopy;
        v108 = 1024;
        *v109 = v98;
        v109[2] = 1024;
        *&v109[3] = v99;
        _os_log_error_impl(&dword_22506F000, v95, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Unsupported minimum schema version: %d. The current OS supports schema versions up to %d.", buf, 0x18u);

        if (!error)
        {
          goto LABEL_34;
        }
      }

      else if (!error)
      {
LABEL_34:
        v40 = 0;
        v74 = @"unsupportedCryptoFeatureRequirementsVersion";
LABEL_58:
        *type = v74;
        goto LABEL_59;
      }

      v70 = MEMORY[0x277CBC560];
      v71 = *MEMORY[0x277CBC120];
      v72 = objc_msgSend_minimumSchemaVersion(v60, v68, v69);
      *error = objc_msgSend_errorWithDomain_code_format_(v70, v73, v71, 5021, @"Failed to parse required features for zone %@. Schema version %d or higher is required the current OS only supports schema versions up to %d.", dCopy, v72, *v66);;
      goto LABEL_34;
    }
  }

  if (!objc_msgSend_hasRequiredAdopterFeatures(v60, v63, v64) || (objc_msgSend_requiredAdopterFeatures(v60, v77, v78), v79 = objc_claimAutoreleasedReturnValue(), v79, !v79))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v88 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v107 = dCopy;
      _os_log_error_impl(&dword_22506F000, v88, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: The required features are missing.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_57;
      }
    }

    else if (!error)
    {
LABEL_57:
      v40 = 0;
      v74 = @"invalidAdopterFeatures";
      goto LABEL_58;
    }

    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v89, *MEMORY[0x277CBC120], 1005, @"Failed to parse required features for zone with ID %@. The required features are missing.", dCopy);
    goto LABEL_57;
  }

  v82 = objc_msgSend_requiredAdopterFeatures(v60, v80, v81);
  v84 = objc_msgSend_requiredFeatureSetFromPAdopterFeatureSet_(self, v83, v82);

  objc_msgSend_setRequiredAdopterFeatures_(v104, v85, v84);
  v40 = v104;

LABEL_59:
LABEL_21:

  return v40;
}

- (id)pRecordZoneFromRecordZone:(id)zone
{
  zoneCopy = zone;
  v5 = objc_opt_new();
  v8 = objc_msgSend_zoneID(zoneCopy, v6, v7);
  v10 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v9, v8);
  objc_msgSend_setZoneIdentifier_(v5, v11, v10);

  v14 = objc_msgSend_protectionData(zoneCopy, v12, v13);

  v17 = MEMORY[0x277CBC810];
  if (v14)
  {
    v18 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v5, v19, v18);

    v22 = objc_msgSend_protectionData(zoneCopy, v20, v21);
    v25 = objc_msgSend_protectionInfo(v5, v23, v24);
    objc_msgSend_setProtectionInfo_(v25, v26, v22);

    v29 = objc_msgSend_protectionEtag(zoneCopy, v27, v28);
    v32 = objc_msgSend_protectionInfo(v5, v30, v31);
    objc_msgSend_setProtectionInfoTag_(v32, v33, v29);

    if (*v17 == 1)
    {
      if (objc_msgSend_applyPCSKeysToRemoveForTesting(zoneCopy, v15, v16))
      {
        v34 = objc_msgSend_zonePCSKeysToRemove(zoneCopy, v15, v16);

        if (v34)
        {
          v35 = objc_msgSend_protectionEtag(zoneCopy, v15, v16);
          v38 = objc_msgSend_zonePCSKeysToRemove(zoneCopy, v36, v37);
          objc_msgSend_setEtag_(v38, v39, v35);

          v42 = objc_msgSend_zonePCSKeysToRemove(zoneCopy, v40, v41);
          v44 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(self, v43, v42);
          objc_msgSend_setZoneProtectionInfoKeysToRemove_(v5, v45, v44);
        }
      }
    }
  }

  v46 = objc_msgSend_zoneishProtectionData(zoneCopy, v15, v16);

  if (v46)
  {
    v49 = objc_opt_new();
    objc_msgSend_setRecordProtectionInfo_(v5, v50, v49);

    v53 = objc_msgSend_zoneishProtectionData(zoneCopy, v51, v52);
    v56 = objc_msgSend_recordProtectionInfo(v5, v54, v55);
    objc_msgSend_setProtectionInfo_(v56, v57, v53);

    if (*v17 == 1)
    {
      if (objc_msgSend_applyPCSKeysToRemoveForTesting(zoneCopy, v47, v48))
      {
        v58 = objc_msgSend_zoneishPCSKeysToRemove(zoneCopy, v47, v48);

        if (v58)
        {
          v59 = objc_msgSend_zoneishProtectionData(zoneCopy, v47, v48);
          v61 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v60, v59);
          v64 = objc_msgSend_zoneishPCSKeysToRemove(zoneCopy, v62, v63);
          objc_msgSend_setEtag_(v64, v65, v61);

          v68 = objc_msgSend_zoneishPCSKeysToRemove(zoneCopy, v66, v67);
          v70 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(self, v69, v68);
          objc_msgSend_setRecordProtectionInfoKeysToRemove_(v5, v71, v70);
        }
      }
    }
  }

  if (objc_msgSend_hasUpdatedExpirationTimeInterval(zoneCopy, v47, v48))
  {
    v74 = objc_opt_new();
    objc_msgSend_setStorageExpiration_(v5, v75, v74);

    v78 = objc_msgSend_updatedExpirationTimeInterval(zoneCopy, v76, v77);

    v81 = objc_msgSend_storageExpiration(v5, v79, v80);
    v83 = v81;
    if (v78)
    {
      objc_msgSend_setOperationType_(v81, v82, 2);

      v83 = objc_msgSend_updatedExpirationTimeInterval(zoneCopy, v84, v85);
      v88 = objc_msgSend_unsignedLongLongValue(v83, v86, v87);
      v91 = objc_msgSend_storageExpiration(v5, v89, v90);
      objc_msgSend_setDuration_(v91, v92, v88);
    }

    else
    {
      objc_msgSend_setOperationType_(v81, v82, 1);
    }
  }

  if (objc_msgSend_hasUpdatedParent(zoneCopy, v72, v73))
  {
    v95 = objc_msgSend_parent(zoneCopy, v93, v94);
    v97 = objc_msgSend_pRecordZoneReferenceFromRecordZoneReference_(self, v96, v95);
    objc_msgSend_setParentReference_(v5, v98, v97);
  }

  v99 = objc_msgSend_etag(zoneCopy, v93, v94);

  if (v99)
  {
    v102 = objc_msgSend_etag(zoneCopy, v100, v101);
    objc_msgSend_setEtag_(v5, v103, v102);
  }

  return v5;
}

- (unint64_t)capabilitiesFromPZoneCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (objc_msgSend_atomicSaves(capabilitiesCopy, v4, v5))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | objc_msgSend_fetchChanges(capabilitiesCopy, v6, v7);
  if (objc_msgSend_hierarchicalSharing(capabilitiesCopy, v10, v11))
  {
    v14 = v9 | 4;
  }

  else
  {
    v14 = v9;
  }

  v15 = objc_msgSend_zoneSharing(capabilitiesCopy, v12, v13);

  if (v15)
  {
    return v14 | 8;
  }

  else
  {
    return v14;
  }
}

- (id)featureSetFromPAdopterFeatureSet:(id)set ofFeatureClass:(Class)class
{
  v34 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = setCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v33, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [class alloc];
        v17 = objc_msgSend_key(v13, v15, v16, v29);
        v20 = objc_msgSend_value(v13, v18, v19);
        v22 = objc_msgSend_initWithName_value_(v14, v21, v17, v20);
        objc_msgSend_addObject_(v6, v23, v22);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v24, &v29, v33, 16);
    }

    while (v10);
  }

  v25 = objc_alloc(MEMORY[0x277CBC368]);
  v27 = objc_msgSend_initWithFeatures_(v25, v26, v6);

  return v27;
}

- (id)pAdopterFeatureSetFromFeatureSet:(id)set
{
  v31 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_features(setCopy, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_opt_new();
        v17 = objc_msgSend_name(v13, v15, v16);
        objc_msgSend_setKey_(v14, v18, v17);

        v21 = objc_msgSend_value(v13, v19, v20);
        objc_msgSend_setValue_(v14, v22, v21);

        objc_msgSend_addObject_(v4, v23, v14);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v24, &v26, v30, 16);
    }

    while (v10);
  }

  return v4;
}

- (id)pAdopterFeatureSetFromRequiredFeatures:(id)features
{
  featuresCopy = features;
  v5 = objc_opt_new();
  v8 = objc_msgSend_fieldFeatures(featuresCopy, v6, v7);
  v10 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v9, v8);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);
  objc_msgSend_setFieldFeatures_(v5, v14, v13);

  v17 = objc_msgSend_recordFeatures(featuresCopy, v15, v16);
  v19 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v18, v17);
  v22 = objc_msgSend_mutableCopy(v19, v20, v21);
  objc_msgSend_setRecordFeatures_(v5, v23, v22);

  v26 = objc_msgSend_zoneFeatures(featuresCopy, v24, v25);

  v28 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v27, v26);
  v31 = objc_msgSend_mutableCopy(v28, v29, v30);
  objc_msgSend_setZoneFeatures_(v5, v32, v31);

  return v5;
}

- (id)requiredFeatureSetFromPAdopterFeatureSet:(id)set
{
  setCopy = set;
  v7 = objc_msgSend_fieldFeatures(setCopy, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v9, v7, v8);

  v13 = objc_msgSend_recordFeatures(setCopy, v11, v12);
  v14 = objc_opt_class();
  v16 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v15, v13, v14);

  v19 = objc_msgSend_zoneFeatures(setCopy, v17, v18);

  v20 = objc_opt_class();
  v22 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v21, v19, v20);

  v23 = objc_alloc(MEMORY[0x277CBC638]);
  v26 = objc_msgSend_features(v22, v24, v25);
  v29 = objc_msgSend_features(v16, v27, v28);
  v32 = objc_msgSend_features(v10, v30, v31);
  v34 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v23, v33, v26, v29, v32);

  return v34;
}

- (id)pZoneCryptoFeatureRequirmentsFromZone:(id)zone
{
  zoneCopy = zone;
  v5 = objc_opt_new();
  v8 = objc_msgSend_requiredFeatures(zoneCopy, v6, v7);
  v10 = objc_msgSend_pAdopterFeatureSetFromRequiredFeatures_(self, v9, v8);
  objc_msgSend_setRequiredAdopterFeatures_(v5, v11, v10);

  v14 = objc_msgSend_zoneID(zoneCopy, v12, v13);

  v16 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v15, v14);
  objc_msgSend_setZoneIdentifier_(v5, v17, v16);

  objc_msgSend_setMinimumSchemaVersion_(v5, v18, *MEMORY[0x277CBC8D8]);

  return v5;
}

- (void)addCapability:(id)capability to:(id)to
{
  toCopy = to;
  capabilityCopy = capability;
  v8 = objc_msgSend_name(capabilityCopy, v6, v7);
  v10 = objc_msgSend_objectForKey_(toCopy, v9, v8);

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v13 = objc_msgSend_value(capabilityCopy, v11, v12);
  objc_msgSend_addObject_(v10, v14, v13);

  v17 = objc_msgSend_name(capabilityCopy, v15, v16);

  objc_msgSend_setObject_forKey_(toCopy, v18, v10, v17);
}

- (id)pCapabilitiesFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253A4454;
  v8[3] = &unk_27854A048;
  v5 = v4;
  v9 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(fromCopy, v6, v8);

  return v5;
}

- (id)_capabilitiesFromPCapabilities:(id)capabilities level:(int)level
{
  capabilitiesCopy = capabilities;
  v6 = objc_opt_new();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2253A45E0;
  v19 = &unk_27854CE28;
  v20 = v6;
  levelCopy = level;
  v7 = v6;
  objc_msgSend_enumerateObjectsUsingBlock_(capabilitiesCopy, v8, &v16);

  v9 = MEMORY[0x277CBC2B0];
  v12 = objc_msgSend_copy(v7, v10, v11, v16, v17, v18, v19);
  v14 = objc_msgSend_pruneAndSort_(v9, v13, v12);

  return v14;
}

- (id)deviceCapabilitySetFromPDeviceCapabilitySet:(id)set
{
  setCopy = set;
  v7 = objc_msgSend_fieldLevelCapabilities(setCopy, v5, v6);
  v9 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v8, v7, 3);

  v12 = objc_msgSend_recordLevelCapabilities(setCopy, v10, v11);
  v14 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v13, v12, 2);

  v17 = objc_msgSend_zoneLevelCapabilities(setCopy, v15, v16);

  v19 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v18, v17, 1);

  v20 = objc_opt_new();
  objc_msgSend_addObjectsFromArray_(v20, v21, v9);
  objc_msgSend_addObjectsFromArray_(v20, v22, v14);
  objc_msgSend_addObjectsFromArray_(v20, v23, v19);

  return v20;
}

- (id)pDeviceCapabilitiesFromDeviceCapabilitySet:(id)set withDeviceID:(id)d
{
  v65 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dCopy = d;
  v8 = objc_opt_new();
  objc_msgSend_setVersion_(v8, v9, 1);
  v12 = objc_msgSend_now(MEMORY[0x277CBEAA8], v10, v11);
  v14 = objc_msgSend_pDateFromDate_(self, v13, v12);
  objc_msgSend_setTime_(v8, v15, v14);

  v18 = objc_msgSend_containerScopedUserID(self, v16, v17);
  v21 = objc_msgSend_CKDPIdentifier_User(v18, v19, v20);
  objc_msgSend_setUserIdentifier_(v8, v22, v21);

  v58 = dCopy;
  v25 = objc_msgSend_CKDPIdentifier_Device(dCopy, v23, v24);
  objc_msgSend_setDeviceIdentifier_(v8, v26, v25);

  v59 = setCopy;
  if (setCopy)
  {
    v28 = objc_msgSend_pruneAndSort_(MEMORY[0x277CBC2B0], v27, setCopy);
  }

  else
  {
    v28 = objc_opt_new();
  }

  v29 = v28;
  v30 = objc_opt_new();
  v31 = objc_opt_new();
  v32 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v33 = v29;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v60, v64, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v61;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v61 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v60 + 1) + 8 * i);
        v42 = objc_msgSend_level(v41, v36, v37);
        v43 = v30;
        if (v42 == 1)
        {
          goto LABEL_14;
        }

        if (v42 == 3)
        {
          v43 = v32;
LABEL_14:
          objc_msgSend_addCapability_to_(self, v36, v41, v43);
          continue;
        }

        v43 = v31;
        if (v42 == 2)
        {
          goto LABEL_14;
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v60, v64, 16);
    }

    while (v38);
  }

  if (objc_msgSend_count(v30, v44, v45))
  {
    v48 = objc_msgSend_pCapabilitiesFrom_(self, v46, v30);
    objc_msgSend_setZoneLevelCapabilities_(v8, v49, v48);
  }

  if (objc_msgSend_count(v31, v46, v47))
  {
    v52 = objc_msgSend_pCapabilitiesFrom_(self, v50, v31);
    objc_msgSend_setRecordLevelCapabilities_(v8, v53, v52);
  }

  if (objc_msgSend_count(v32, v50, v51))
  {
    v55 = objc_msgSend_pCapabilitiesFrom_(self, v54, v32);
    objc_msgSend_setFieldLevelCapabilities_(v8, v56, v55);
  }

  return v8;
}

- (id)pSignedVersionedBlobFrom:(id)from signature:(id)signature
{
  signatureCopy = signature;
  fromCopy = from;
  v7 = objc_opt_new();
  objc_msgSend_setVersion_(v7, v8, 1);
  objc_msgSend_setSerializedObject_(v7, v9, fromCopy);

  objc_msgSend_setSignature_(v7, v10, signatureCopy);

  return v7;
}

- (id)pZoneUsageFromZoneID:(id)d at:(id)at withDeviceID:(id)iD
{
  iDCopy = iD;
  atCopy = at;
  dCopy = d;
  v11 = objc_opt_new();
  objc_msgSend_setVersion_(v11, v12, 1);
  v14 = objc_msgSend_pDateFromDate_(self, v13, atCopy);

  objc_msgSend_setTime_(v11, v15, v14);
  v18 = objc_msgSend_CKDPIdentifier_Device(iDCopy, v16, v17);

  objc_msgSend_setDeviceIdentifier_(v11, v19, v18);
  v22 = objc_msgSend_containerScopedUserID(self, v20, v21);
  v25 = objc_msgSend_CKDPIdentifier_User(v22, v23, v24);
  objc_msgSend_setUserIdentifier_(v11, v26, v25);

  v28 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v27, dCopy);

  objc_msgSend_setZoneIdentifier_(v11, v29, v28);

  return v11;
}

- (id)pShareUsageFromShareRecordID:(id)d at:(id)at withDeviceID:(id)iD
{
  iDCopy = iD;
  atCopy = at;
  dCopy = d;
  v11 = objc_opt_new();
  objc_msgSend_setVersion_(v11, v12, 1);
  v14 = objc_msgSend_pDateFromDate_(self, v13, atCopy);

  objc_msgSend_setTime_(v11, v15, v14);
  v18 = objc_msgSend_CKDPIdentifier_Device(iDCopy, v16, v17);

  objc_msgSend_setDeviceIdentifier_(v11, v19, v18);
  v22 = objc_msgSend_containerScopedUserID(self, v20, v21);
  v25 = objc_msgSend_CKDPIdentifier_User(v22, v23, v24);
  objc_msgSend_setUserIdentifier_(v11, v26, v25);

  v28 = objc_msgSend_pShareIdentifierFromRecordID_(self, v27, dCopy);

  objc_msgSend_setShareIdentifier_(v11, v29, v28);

  return v11;
}

- (id)containerPrivacySettingsFromPContainerPrivacySettings:(id)settings
{
  settingsCopy = settings;
  v6 = objc_msgSend_applicationContainer(settingsCopy, v4, v5);
  if (objc_msgSend_applicationContainerEnvironment(settingsCopy, v7, v8) == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = objc_alloc(MEMORY[0x277CBC220]);
  v12 = objc_msgSend_initWithContainerIdentifier_environment_(v10, v11, v6, v9);
  v15 = objc_msgSend_userPrivacySettings(settingsCopy, v13, v14);
  v18 = objc_msgSend_discoverable(v15, v16, v17);

  v21 = objc_msgSend_applicationBundles(settingsCopy, v19, v20);

  if (v21)
  {
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_msgSend_applicationBundles(settingsCopy, v22, v23);
    v21 = objc_msgSend_setWithArray_(v24, v26, v25);
  }

  v27 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v22, &unk_2838C8F28);
  isEqual = objc_msgSend_isEqual_(v21, v28, v27);

  if (isEqual)
  {
    v31 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v30, v6);

    v21 = v31;
  }

  v32 = [CKDContainerPrivacySettings alloc];
  v34 = objc_msgSend_initWithContainerID_applicationBundleIDs_discoverable_(v32, v33, v12, v21, v18);

  return v34;
}

- (id)shareFromPShare:(id)share asAnonymousCKUserID:(id)d error:(id *)error
{
  v232 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  dCopy = d;
  if ((objc_msgSend_hasShareId(shareCopy, v10, v11) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v182 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v226 = shareCopy;
      _os_log_debug_impl(&dword_22506F000, v182, OS_LOG_TYPE_DEBUG, "Share has no share ID: %@", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_95;
  }

  v14 = objc_msgSend_shareId(shareCopy, v12, v13);
  v16 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(self, v15, v14, dCopy, error);

  if (!v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v183 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v192 = v183;
      v195 = objc_msgSend_shareId(shareCopy, v193, v194);
      *buf = 138543362;
      v226 = v195;
      _os_log_debug_impl(&dword_22506F000, v192, OS_LOG_TYPE_DEBUG, "Couldn't create a record ID from share ID %{public}@", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_94;
  }

  v17 = objc_alloc(MEMORY[0x277CBC680]);
  inited = objc_msgSend_initInternalWithShareRecordID_(v17, v18, v16);
  if (!inited)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v186 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v226 = v16;
      _os_log_debug_impl(&dword_22506F000, v186, OS_LOG_TYPE_DEBUG, "Couldn't create a share with ID %{public}@. Giving up.", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_93;
  }

  if (objc_msgSend_hasEtag(shareCopy, v19, v20))
  {
    v23 = objc_msgSend_etag(shareCopy, v21, v22);
    objc_msgSend_setEtag_(inited, v24, v23);
  }

  v26 = objc_msgSend_publicAccess(shareCopy, v21, v22) - 1;
  if (v26 < 3)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 0;
  }

  objc_msgSend__setPublicPermissionNoSideEffects_(inited, v25, v27);
  v30 = objc_msgSend_invitedKeyToRemoves(shareCopy, v28, v29);
  objc_msgSend_setInvitedKeysToRemove_(inited, v31, v30);

  if (objc_msgSend_hasPublisherModelType(shareCopy, v32, v33))
  {
    v36 = objc_msgSend_publisherModelType(shareCopy, v34, v35) - 1;
    if (v36 <= 3)
    {
      objc_msgSend_setParticipantVisibility_(inited, v34, qword_225447FD0[v36]);
    }
  }

  errorCopy = error;
  if (objc_msgSend_hasParticipantSelfRemovalBehavior(shareCopy, v34, v35))
  {
    v39 = objc_msgSend_participantSelfRemovalBehavior(shareCopy, v37, v38);
    if (v39 - 1 <= 2)
    {
      objc_msgSend_setParticipantSelfRemovalBehavior_(inited, v37, v39);
    }
  }

  v40 = objc_msgSend_anonymousPublicAccess(shareCopy, v37, v38);
  objc_msgSend_setAllowsAnonymousPublicAccess_(inited, v41, v40);
  v42 = objc_alloc(MEMORY[0x277CBEB18]);
  v45 = objc_msgSend_participants(shareCopy, v43, v44);
  v48 = objc_msgSend_count(v45, v46, v47);
  v208 = objc_msgSend_initWithCapacity_(v42, v49, v48);

  objc_msgSend_resetFetchedParticipants(inited, v50, v51);
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v204 = shareCopy;
  obj = objc_msgSend_participants(shareCopy, v52, v53);
  v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v219, v231, 16);
  if (v206)
  {
    v205 = *v220;
    do
    {
      v56 = 0;
      do
      {
        if (*v220 != v205)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v219 + 1) + 8 * v56);
        v218 = 0;
        v58 = objc_msgSend_shareParticipantFromPParticipant_shareID_shouldMatchCurrentUserParticipantByPublicKey_error_(self, v55, v57, v16, 0, &v218);
        v61 = v218;
        if (!v58)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          shareCopy = v204;
          v184 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v226 = v57;
            v227 = 2114;
            v228 = v16;
            v229 = 2112;
            v230 = v61;
            _os_log_debug_impl(&dword_22506F000, v184, OS_LOG_TYPE_DEBUG, "Failed to convert participant %@ for share %{public}@: %@", buf, 0x20u);
            if (!errorCopy)
            {
              goto LABEL_91;
            }
          }

          else if (!errorCopy)
          {
            goto LABEL_91;
          }

          v185 = v61;
          v181 = 0;
          *errorCopy = v61;
          goto LABEL_92;
        }

        selfCopy = self;
        v63 = v16;
        if (objc_msgSend_role(v58, v59, v60) == 4)
        {
          v66 = objc_msgSend_publicPermission(inited, v64, v65);
          objc_msgSend_setPermission_(v58, v67, v66);
        }

        v68 = objc_msgSend_userIdentity(v58, v64, v65);
        v71 = objc_msgSend_userRecordID(v68, v69, v70);
        v74 = objc_msgSend_recordName(v71, v72, v73);
        v75 = dCopy;
        isEqualToString = objc_msgSend_isEqualToString_(dCopy, v76, v74);

        if (isEqualToString)
        {
          objc_msgSend_setIsCurrentUser_(v58, v78, 1);
        }

        objc_msgSend_addObject_(v208, v78, v58);
        objc_msgSend_registerFetchedParticipant_(inited, v79, v58);

        ++v56;
        dCopy = v75;
        v16 = v63;
        self = selfCopy;
      }

      while (v206 != v56);
      v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v219, v231, 16);
    }

    while (v206);
  }

  objc_msgSend_setAllParticipants_(inited, v80, v208);
  v83 = objc_msgSend_currentUserParticipant(inited, v81, v82);

  shareCopy = v204;
  if (!v83)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v84 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v196 = v84;
      objc_msgSend_recordID(inited, v197, v198);
      v200 = v199 = dCopy;
      *buf = 138543362;
      v226 = v200;
      _os_log_debug_impl(&dword_22506F000, v196, OS_LOG_TYPE_DEBUG, "Matching public keys to find current user participant on share %{public}@", buf, 0xCu);

      dCopy = v199;
    }

    v87 = objc_msgSend_identityDelegate(self, v85, v86);
    objc_msgSend_markCurrentUserParticipantViaPublicKeyMatchingForShare_(v87, v88, inited);
  }

  v201 = dCopy;
  v89 = objc_alloc(MEMORY[0x277CBEB18]);
  v92 = objc_msgSend_requestingAccess(v204, v90, v91);
  v95 = objc_msgSend_requestingAccessUsersCount(v92, v93, v94);
  obj = objc_msgSend_initWithCapacity_(v89, v96, v95);

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v99 = objc_msgSend_requestingAccess(v204, v97, v98);
  v61 = objc_msgSend_requestingAccessUsers(v99, v100, v101);

  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v102, &v214, v224, 16);
  if (v103)
  {
    v105 = v103;
    v106 = *v215;
    do
    {
      for (i = 0; i != v105; ++i)
      {
        if (*v215 != v106)
        {
          objc_enumerationMutation(v61);
        }

        v108 = *(*(&v214 + 1) + 8 * i);
        v109 = objc_msgSend_shareRequesterFromPRequester_(self, v104, v108, v201);
        if (!v109)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          dCopy = v201;
          v187 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v226 = v108;
            v227 = 2114;
            v228 = v16;
            _os_log_debug_impl(&dword_22506F000, v187, OS_LOG_TYPE_DEBUG, "Failed to convert requester %@ for share %{public}@", buf, 0x16u);
            if (errorCopy)
            {
              goto LABEL_84;
            }
          }

          else if (errorCopy)
          {
LABEL_84:
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v188, *MEMORY[0x277CBC120], 1005, @"Unable to parse requester");
            *errorCopy = v181 = 0;
            goto LABEL_92;
          }

LABEL_91:
          v181 = 0;
          goto LABEL_92;
        }

        v111 = v109;
        objc_msgSend_addObject_(obj, v110, v109);
      }

      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v104, &v214, v224, 16);
    }

    while (v105);
  }

  objc_msgSend_setRequesters_(inited, v112, obj);
  v113 = objc_alloc(MEMORY[0x277CBEB18]);
  v116 = objc_msgSend_blockedAccess(v204, v114, v115);
  v119 = objc_msgSend_blockedUsersCount(v116, v117, v118);
  v61 = objc_msgSend_initWithCapacity_(v113, v120, v119);

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v123 = objc_msgSend_blockedAccess(v204, v121, v122);
  v126 = objc_msgSend_blockedUsers(v123, v124, v125);

  v127 = v126;
  v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v128, &v210, v223, 16);
  if (!v129)
  {
    goto LABEL_49;
  }

  v131 = v129;
  v132 = *v211;
  while (2)
  {
    for (j = 0; j != v131; ++j)
    {
      if (*v211 != v132)
      {
        objc_enumerationMutation(v127);
      }

      v134 = *(*(&v210 + 1) + 8 * j);
      v135 = objc_msgSend_blockedIdentityFromPBlockedUser_(self, v130, v134, v201);
      if (!v135)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        dCopy = v201;
        v189 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v226 = v134;
          v227 = 2114;
          v228 = v16;
          _os_log_debug_impl(&dword_22506F000, v189, OS_LOG_TYPE_DEBUG, "Failed to convert blocked identity %@ for share %{public}@", buf, 0x16u);
          if (!errorCopy)
          {
            goto LABEL_90;
          }
        }

        else if (!errorCopy)
        {
LABEL_90:

          goto LABEL_91;
        }

        *errorCopy = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v190, *MEMORY[0x277CBC120], 1005, @"Unable to parse blocked user");
        goto LABEL_90;
      }

      v137 = v135;
      objc_msgSend_addObject_(v61, v136, v135);
    }

    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v130, &v210, v223, 16);
    if (v131)
    {
      continue;
    }

    break;
  }

LABEL_49:

  objc_msgSend_setBlockedIdentities_(inited, v138, v61);
  if (objc_msgSend_hasDenyAccessRequests(v204, v139, v140))
  {
    v143 = objc_msgSend_denyAccessRequests(v204, v141, v142);
    objc_msgSend__setAccessRequestsEnabledNoSideEffects_(inited, v144, v143 ^ 1u);
  }

  if (objc_msgSend_hasShortTokenRoutingKey(v204, v141, v142, v201))
  {
    v147 = objc_msgSend_shortTokenRoutingKey(v204, v145, v146);
    objc_msgSend_setRoutingKey_(inited, v148, v147);
  }

  if (objc_msgSend_hasDisplayedHostname(v204, v145, v146))
  {
    v151 = objc_msgSend_displayedHostname(v204, v149, v150);
    objc_msgSend_setDisplayedHostname_(inited, v152, v151);
  }

  if (objc_msgSend_hasInvitedPcs(v204, v149, v150))
  {
    v155 = objc_msgSend_invitedPcs(v204, v153, v154);
    v158 = objc_msgSend_protectionInfo(v155, v156, v157);
    objc_msgSend_setInvitedProtectionData_(inited, v159, v158);

    v162 = objc_msgSend_invitedPcs(v204, v160, v161);
    v165 = objc_msgSend_protectionInfoTag(v162, v163, v164);
    objc_msgSend_setInvitedProtectionEtag_(inited, v166, v165);
  }

  if (objc_msgSend_hasSelfAddedPcs(v204, v153, v154))
  {
    v169 = objc_msgSend_selfAddedPcs(v204, v167, v168);
    v172 = objc_msgSend_protectionInfo(v169, v170, v171);
    objc_msgSend_setPublicProtectionData_(inited, v173, v172);

    v176 = objc_msgSend_selfAddedPcs(v204, v174, v175);
    v179 = objc_msgSend_protectionInfoTag(v176, v177, v178);
    objc_msgSend_setPublicProtectionEtag_(inited, v180, v179);
  }

  v181 = inited;
  dCopy = v202;
LABEL_92:

LABEL_93:
LABEL_94:

LABEL_95:

  return v181;
}

- (id)pShareFromShare:(id)share forCache:(BOOL)cache
{
  cacheCopy = cache;
  v165 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  v7 = objc_opt_new();
  v10 = objc_msgSend_recordID(shareCopy, v8, v9);
  v12 = objc_msgSend_pShareIdentifierFromRecordID_(self, v11, v10);
  objc_msgSend_setShareId_(v7, v13, v12);

  v16 = objc_msgSend_etag(shareCopy, v14, v15);
  v148 = v7;
  objc_msgSend_setEtag_(v7, v17, v16);

  v149 = objc_opt_new();
  v20 = objc_msgSend_removedParticipants(shareCopy, v18, v19);
  v22 = objc_msgSend_valueForKey_(v20, v21, @"participantID");

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v147 = shareCopy;
  v25 = objc_msgSend_allParticipants(shareCopy, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v158, v164, 16);
  if (v27)
  {
    v29 = v27;
    v30 = *v159;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v159 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v158 + 1) + 8 * i);
        v33 = objc_msgSend_pParticipantFromShareParticipant_forCache_(self, v28, v32, cacheCopy);
        v36 = objc_msgSend_participantID(v32, v34, v35);
        v38 = objc_msgSend_containsObject_(v22, v37, v36);

        if (v38)
        {
          objc_msgSend_setState_(v33, v39, 3);
        }

        objc_msgSend_addObject_(v149, v39, v33);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v158, v164, 16);
    }

    while (v29);
  }

  objc_msgSend_setParticipants_(v148, v40, v149);
  v43 = objc_msgSend_allowsAccessRequests(v147, v41, v42);
  objc_msgSend_setDenyAccessRequests_(v148, v44, v43 ^ 1u);
  v45 = objc_opt_new();
  v48 = objc_msgSend_requesters(v147, v46, v47);
  v51 = objc_msgSend_approvedRequesters(v147, v49, v50);
  v53 = objc_msgSend_arrayByAddingObjectsFromArray_(v48, v52, v51);

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v54 = v53;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v154, v163, 16);
  if (v56)
  {
    v58 = v56;
    v59 = *v155;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v155 != v59)
        {
          objc_enumerationMutation(v54);
        }

        v62 = objc_msgSend_pRequesterFromShareRequester_(self, v57, *(*(&v154 + 1) + 8 * j));
        if (v62)
        {
          objc_msgSend_addObject_(v45, v61, v62);
        }
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v154, v163, 16);
    }

    while (v58);
  }

  v63 = objc_opt_new();
  objc_msgSend_setRequestingAccess_(v148, v64, v63);

  v67 = objc_msgSend_requestingAccess(v148, v65, v66);
  objc_msgSend_setRequestingAccessUsers_(v67, v68, v45);

  v69 = objc_opt_new();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v72 = objc_msgSend_blockedIdentities(v147, v70, v71);
  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v150, v162, 16);
  if (v74)
  {
    v76 = v74;
    v77 = *v151;
    do
    {
      for (k = 0; k != v76; ++k)
      {
        if (*v151 != v77)
        {
          objc_enumerationMutation(v72);
        }

        v80 = objc_msgSend_pBlockedUserFromShareBlockedIdentity_(self, v75, *(*(&v150 + 1) + 8 * k));
        if (v80)
        {
          objc_msgSend_addObject_(v69, v79, v80);
        }
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v150, v162, 16);
    }

    while (v76);
  }

  v81 = objc_opt_new();
  objc_msgSend_setBlockedAccess_(v148, v82, v81);

  v85 = objc_msgSend_blockedAccess(v148, v83, v84);
  objc_msgSend_setBlockedUsers_(v85, v86, v69);

  v89 = objc_msgSend_publicPermission(v147, v87, v88);
  v92 = sub_22539649C(v89, v90, v91);
  objc_msgSend_setPublicAccess_(v148, v93, v92);
  v96 = objc_msgSend_participantVisibility(v147, v94, v95);
  if (v96 > 1)
  {
    if (v96 == 2)
    {
      objc_msgSend_setPublisherModelType_(v148, v97, 3);
    }

    else if (v96 == 3)
    {
      objc_msgSend_setPublisherModelType_(v148, v97, 4);
    }
  }

  else if (v96)
  {
    if (v96 == 1 && objc_msgSend_publicPermission(v147, v97, v98) == 1)
    {
      objc_msgSend_setPublisherModelType_(v148, v97, 2);
    }
  }

  else
  {
    objc_msgSend_setPublisherModelType_(v148, v97, 1);
  }

  v99 = objc_msgSend_participantSelfRemovalBehavior(v147, v97, v98);
  if ((v99 - 1) <= 2)
  {
    objc_msgSend_setParticipantSelfRemovalBehavior_(v148, v100, v99);
  }

  v102 = objc_msgSend_allowsAnonymousPublicAccess(v147, v100, v101);
  objc_msgSend_setAnonymousPublicAccess_(v148, v103, v102);
  v106 = objc_msgSend_displayedHostname(v147, v104, v105);
  objc_msgSend_setDisplayedHostname_(v148, v107, v106);

  v110 = objc_msgSend_invitedProtectionData(v147, v108, v109);

  if (v110)
  {
    v113 = objc_opt_new();
    objc_msgSend_setInvitedPcs_(v148, v114, v113);

    v117 = objc_msgSend_invitedProtectionData(v147, v115, v116);
    v120 = objc_msgSend_invitedPcs(v148, v118, v119);
    objc_msgSend_setProtectionInfo_(v120, v121, v117);

    v124 = objc_msgSend_invitedProtectionEtag(v147, v122, v123);
    v127 = objc_msgSend_invitedPcs(v148, v125, v126);
    objc_msgSend_setProtectionInfoTag_(v127, v128, v124);
  }

  v129 = objc_msgSend_publicProtectionData(v147, v111, v112);

  if (v129)
  {
    v130 = objc_opt_new();
    objc_msgSend_setSelfAddedPcs_(v148, v131, v130);

    v134 = objc_msgSend_publicProtectionData(v147, v132, v133);
    v137 = objc_msgSend_selfAddedPcs(v148, v135, v136);
    objc_msgSend_setProtectionInfo_(v137, v138, v134);

    v141 = objc_msgSend_publicProtectionEtag(v147, v139, v140);
    v144 = objc_msgSend_selfAddedPcs(v148, v142, v143);
    objc_msgSend_setProtectionInfoTag_(v144, v145, v141);
  }

  return v148;
}

- (id)shareParticipantFromPParticipant:(id)participant shareID:(id)d shouldMatchCurrentUserParticipantByPublicKey:(BOOL)key error:(id *)error
{
  keyCopy = key;
  participantCopy = participant;
  dCopy = d;
  v11 = objc_alloc(MEMORY[0x277CBC7C0]);
  inited = objc_msgSend_initInternal(v11, v12, v13);
  v17 = objc_msgSend_userId(participantCopy, v15, v16);
  hasName = objc_msgSend_hasName(v17, v18, v19);

  if (!hasName)
  {
    v28 = 0;
LABEL_5:
    if (objc_msgSend_hasContactInformation(participantCopy, v21, v22))
    {
      v32 = objc_msgSend_contactInformation(participantCopy, v30, v31);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v32, v33, v34);

      if (hasEmailAddress)
      {
        v38 = objc_alloc(MEMORY[0x277CBC7C8]);
        v41 = objc_msgSend_contactInformation(participantCopy, v39, v40);
        v44 = objc_msgSend_emailAddress(v41, v42, v43);
        v46 = objc_msgSend_initWithEmailAddress_(v38, v45, v44);
        objc_msgSend_setLookupInfo_(inited, v47, v46);
      }

      v48 = objc_msgSend_contactInformation(participantCopy, v36, v37);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v48, v49, v50);

      if (hasPhoneNumber)
      {
        v54 = objc_alloc(MEMORY[0x277CBC7C8]);
        v57 = objc_msgSend_contactInformation(participantCopy, v55, v56);
        v60 = objc_msgSend_phoneNumber(v57, v58, v59);
        v62 = objc_msgSend_initWithPhoneNumber_(v54, v61, v60);
        objc_msgSend_setLookupInfo_(inited, v63, v62);
      }

      v64 = objc_msgSend_contactInformation(participantCopy, v52, v53);
      hasContainerScopedUserId = objc_msgSend_hasContainerScopedUserId(v64, v65, v66);

      if (hasContainerScopedUserId)
      {
        v70 = objc_alloc(MEMORY[0x277CBC7C8]);
        v73 = objc_msgSend_contactInformation(participantCopy, v71, v72);
        v76 = objc_msgSend_containerScopedUserId(v73, v74, v75);
        v78 = objc_msgSend_recordIDFromPUserName_error_(self, v77, v76, 0);
        v80 = objc_msgSend_initWithUserRecordID_(v70, v79, v78);
        objc_msgSend_setLookupInfo_(inited, v81, v80);
      }

      v82 = objc_msgSend_contactInformation(participantCopy, v68, v69);
      v85 = objc_msgSend_firstName(v82, v83, v84);
      v88 = objc_msgSend_nameComponents(inited, v86, v87);
      objc_msgSend_setGivenName_(v88, v89, v85);

      v92 = objc_msgSend_contactInformation(participantCopy, v90, v91);
      v95 = objc_msgSend_lastName(v92, v93, v94);
      v98 = objc_msgSend_nameComponents(inited, v96, v97);
      objc_msgSend_setFamilyName_(v98, v99, v95);
    }

    if (objc_msgSend_hasOutOfNetworkPrivateKey(participantCopy, v30, v31))
    {
      v102 = objc_msgSend_outOfNetworkPrivateKey(participantCopy, v100, v101);
      objc_msgSend_setOutOfNetworkPrivateKey_(inited, v103, v102);
    }

    if (objc_msgSend_hasPublicKey(participantCopy, v100, v101))
    {
      v106 = objc_msgSend_publicKey(participantCopy, v104, v105);
      v109 = objc_msgSend_protectionInfo(v106, v107, v108);
      objc_msgSend_setPublicSharingKey_(inited, v110, v109);
    }

    v111 = objc_msgSend_publicKeyVersion(participantCopy, v104, v105);
    objc_msgSend_setPublicKeyVersion_(inited, v112, v111);
    if (objc_msgSend_hasIsInNetwork(participantCopy, v113, v114))
    {
      v117 = objc_msgSend_isInNetwork(participantCopy, v115, v116);
      objc_msgSend_setHasiCloudAccount_(inited, v118, v117);
    }

    else if (objc_msgSend_hasOutOfNetworkKeyType(participantCopy, v115, v116))
    {
      objc_msgSend_setHasiCloudAccount_(inited, v119, 0);
    }

    else
    {
      v121 = objc_msgSend_hasOutOfNetworkPrivateKey(participantCopy, v119, v120) ^ 1;
      objc_msgSend_setHasiCloudAccount_(inited, v122, v121);
    }

    v123 = objc_alloc(MEMORY[0x277CBC6A0]);
    v125 = objc_msgSend_initInternalWithUserIdentity_(v123, v124, inited);
    v128 = objc_msgSend_participantId(participantCopy, v126, v127);
    v131 = objc_msgSend_name(v128, v129, v130);
    objc_msgSend_setParticipantID_(v125, v132, v131);

    objc_msgSend_setShareID_(v125, v133, dCopy);
    if (objc_msgSend_hasInviterId(participantCopy, v134, v135))
    {
      v138 = objc_msgSend_inviterId(participantCopy, v136, v137);
      v141 = objc_msgSend_name(v138, v139, v140);
      objc_msgSend_setInviterID_(v125, v142, v141);
    }

    if (objc_msgSend_hasParticipantType(participantCopy, v136, v137))
    {
      v145 = objc_msgSend_participantType(participantCopy, v143, v144);
      v148 = objc_msgSend_clientSDKVersion(self, v146, v147);
      isAppleInternal = objc_msgSend_isAppleInternal(self, v149, v150);
      v152 = sub_2253965F8(v145, v148, isAppleInternal);
      objc_msgSend_setRole_(v125, v153, v152);
    }

    else
    {
      v152 = 0;
      objc_msgSend_setRole_(v125, v143, 0);
    }

    objc_msgSend_setOriginalParticipantRole_(v125, v154, v152);
    if (objc_msgSend_hasState(participantCopy, v155, v156))
    {
      v159 = objc_msgSend_state(participantCopy, v157, v158);
      if (v159 - 2 >= 3)
      {
        objc_msgSend_setAcceptanceStatus_(v125, v160, 1);
      }

      else
      {
        objc_msgSend_setAcceptanceStatus_(v125, v160, v159);
      }
    }

    else
    {
      v163 = 2 * (objc_msgSend_role(v125, v157, v158) == 1);
      objc_msgSend_setAcceptanceStatus_(v125, v164, v163);
    }

    v166 = objc_msgSend_permission(participantCopy, v161, v162) - 1;
    if (v166 < 3)
    {
      objc_msgSend_setPermission_(v125, v165, v166 + 1);
    }

    else
    {
      objc_msgSend_setPermission_(v125, v165, 0);
    }

    v169 = objc_msgSend_recordName(v28, v167, v168);
    isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v170, v169);

    if (isDefaultUserNameFromServer & 1) != 0 || (objc_msgSend_userIdentity(v125, v172, v173), v174 = objc_claimAutoreleasedReturnValue(), objc_msgSend_userRecordID(v174, v175, v176), v177 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordName(v177, v178, v179), v180 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v180, v181, *MEMORY[0x277CBBF28]), v180, v177, v174, (isEqualToString) || keyCopy && (objc_msgSend_identityDelegate(self, v172, v183), v282 = objc_claimAutoreleasedReturnValue(), objc_msgSend_publicKey(participantCopy, v283, v284), v285 = objc_claimAutoreleasedReturnValue(), objc_msgSend_protectionInfo(v285, v286, v287), v288 = objc_claimAutoreleasedReturnValue(), v290 = objc_msgSend_sharingFingerprintsContainPublicKeyWithData_error_(v282, v289, v288, 0), v288, v285, v282, v290))
    {
      objc_msgSend_setIsCurrentUser_(v125, v172, 1);
    }

    v184 = objc_msgSend_userIdentity(v125, v172, v183);
    v187 = objc_msgSend_userRecordID(v184, v185, v186);
    v190 = objc_msgSend_recordName(v187, v188, v189);
    v193 = objc_msgSend_orgAdminUserID(self, v191, v192);
    v195 = objc_msgSend_isEqualToString_(v190, v194, v193);

    if ((v195 & 1) != 0 || objc_msgSend_isOrgUser(participantCopy, v196, v197))
    {
      objc_msgSend_setIsOrgAdminUser_(v125, v196, 1);
    }

    v199 = objc_msgSend_protectionInfo(participantCopy, v196, v198);
    v202 = objc_msgSend_protectionInfo(v199, v200, v201);
    v205 = objc_msgSend_length(v202, v203, v204);

    if (v205)
    {
      v208 = objc_msgSend_protectionInfo(participantCopy, v206, v207);
      v211 = objc_msgSend_protectionInfo(v208, v209, v210);
      objc_msgSend_setProtectionInfo_(v125, v212, v211);
    }

    v213 = objc_msgSend_protectionInfoPublicKey(participantCopy, v206, v207);
    v216 = objc_msgSend_length(v213, v214, v215);

    if (v216)
    {
      v219 = objc_msgSend_protectionInfoPublicKey(participantCopy, v217, v218);
      objc_msgSend_setProtectionInfoPublicKey_(v125, v220, v219);
    }

    if (objc_msgSend_hasKeyHealth(participantCopy, v217, v218))
    {
      v224 = objc_msgSend_keyHealth(participantCopy, v221, v222) - 1;
      if (v224 < 3)
      {
        objc_msgSend_setMutableInvitationTokenStatus_(v125, v223, v224 + 1);
      }

      else
      {
        objc_msgSend_setMutableInvitationTokenStatus_(v125, v223, 0);
      }
    }

    v225 = objc_msgSend_createdInProcess(participantCopy, v221, v222);
    objc_msgSend_setCreatedInProcess_(v125, v226, v225);
    v229 = objc_msgSend_acceptedInProcess(participantCopy, v227, v228);
    objc_msgSend_setAcceptedInProcess_(v125, v230, v229);
    isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(participantCopy, v231, v232);
    objc_msgSend_setIsAnonymousInvitedParticipant_(v125, v234, isAnonymousInvitedParticipant);
    if (objc_msgSend_hasIsApprovedRequester(participantCopy, v235, v236))
    {
      isApprovedRequester = objc_msgSend_isApprovedRequester(participantCopy, v237, v238);
      objc_msgSend_setIsApprovedRequester_(v125, v240, isApprovedRequester);
    }

    if (objc_msgSend_hasInviteNSSecTimestampDate(participantCopy, v237, v238))
    {
      v243 = MEMORY[0x277CBEAA8];
      v244 = objc_msgSend_inviteNSSecTimestampDate(participantCopy, v241, v242);
      objc_msgSend_time(v244, v245, v246);
      v249 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v243, v247, v248);
      objc_msgSend_setInvitationDate_(v125, v250, v249);
    }

    else
    {
      if (!objc_msgSend_hasInviteTimestampDate(participantCopy, v241, v242))
      {
        goto LABEL_56;
      }

      v253 = objc_msgSend_inviteTimestampDate(participantCopy, v251, v252);
      objc_msgSend_time(v253, v254, v255);
      v257 = v256 / 1000.0;

      v244 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v258, v259, v257);
      objc_msgSend_setInvitationDate_(v125, v260, v244);
    }

LABEL_56:
    if (objc_msgSend_hasAcceptedNSSecTimestampDate(participantCopy, v251, v252))
    {
      v263 = MEMORY[0x277CBEAA8];
      v264 = objc_msgSend_acceptedNSSecTimestampDate(participantCopy, v261, v262);
      objc_msgSend_time(v264, v265, v266);
      v269 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v263, v267, v268);
      objc_msgSend_setAcceptanceDate_(v125, v270, v269);
    }

    else
    {
      if (!objc_msgSend_hasAcceptedTimestampDate(participantCopy, v261, v262))
      {
LABEL_61:

        goto LABEL_62;
      }

      v273 = objc_msgSend_acceptedTimestampDate(participantCopy, v271, v272);
      objc_msgSend_time(v273, v274, v275);
      v277 = v276 / 1000.0;

      v264 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v278, v279, v277);
      objc_msgSend_setAcceptanceDate_(v125, v280, v264);
    }

    goto LABEL_61;
  }

  v23 = objc_msgSend_userId(participantCopy, v21, v22);
  v26 = objc_msgSend_name(v23, v24, v25);
  v28 = objc_msgSend_recordIDFromPUserName_error_(self, v27, v26, error);

  if (v28)
  {
    objc_msgSend_setUserRecordID_(inited, v29, v28);
    goto LABEL_5;
  }

  v125 = 0;
LABEL_62:

  return v125;
}

- (id)pParticipantFromShareParticipant:(id)participant forCache:(BOOL)cache
{
  cacheCopy = cache;
  participantCopy = participant;
  v8 = objc_opt_new();
  if (cacheCopy)
  {
    v9 = objc_msgSend_userIdentity(participantCopy, v6, v7);
    v12 = objc_msgSend_userRecordID(v9, v10, v11);
    v15 = objc_msgSend_recordName(v12, v13, v14);
    v17 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v16, v15);
    objc_msgSend_setUserId_(v8, v18, v17);
  }

  v19 = objc_msgSend_role(participantCopy, v6, v7);
  v22 = sub_225396550(v19, v20, v21);
  objc_msgSend_setParticipantType_(v8, v23, v22);
  if (objc_msgSend_role(participantCopy, v24, v25) != 4)
  {
    v28 = objc_msgSend_permission(participantCopy, v26, v27);
    v31 = sub_22539649C(v28, v29, v30);
    objc_msgSend_setPermission_(v8, v32, v31);
  }

  v33 = objc_msgSend_userIdentity(participantCopy, v26, v27);
  if (!objc_msgSend_isAnonymousInvitedParticipant(participantCopy, v34, v35) || objc_msgSend_forceSendPublicKeyForAnonymousParticipants(participantCopy, v36, v37))
  {
    v38 = objc_msgSend_lookupInfo(v33, v36, v37);
    v41 = objc_msgSend_userRecordID(v38, v39, v40);
    if (v41)
    {
      v44 = v41;
      v45 = objc_msgSend_role(participantCopy, v42, v43);

      if (v45 != 1)
      {
        v48 = objc_opt_new();
        objc_msgSend_setContactInformation_(v8, v49, v48);

        v52 = objc_msgSend_lookupInfo(v33, v50, v51);
        v55 = objc_msgSend_userRecordID(v52, v53, v54);
        v58 = objc_msgSend_recordName(v55, v56, v57);
        v60 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v59, v58);
        objc_msgSend_name(v60, v61, v62);
        v63 = v33;
        v65 = v64 = cacheCopy;
        v68 = objc_msgSend_contactInformation(v8, v66, v67);
        objc_msgSend_setContainerScopedUserId_(v68, v69, v65);

        cacheCopy = v64;
        v33 = v63;

        goto LABEL_15;
      }
    }

    else
    {
    }

    v70 = objc_msgSend_lookupInfo(v33, v46, v47);
    v73 = objc_msgSend_emailAddress(v70, v71, v72);

    if (v73)
    {
      v76 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v77, v76);

      v52 = objc_msgSend_lookupInfo(v33, v78, v79);
      v55 = objc_msgSend_emailAddress(v52, v80, v81);
      v84 = objc_msgSend_contactInformation(v8, v82, v83);
      objc_msgSend_setEmailAddress_(v84, v85, v55);
    }

    else
    {
      v86 = objc_msgSend_lookupInfo(v33, v74, v75);
      v89 = objc_msgSend_phoneNumber(v86, v87, v88);

      if (!v89)
      {
        goto LABEL_16;
      }

      v92 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v93, v92);

      v96 = objc_msgSend_lookupInfo(v33, v94, v95);
      v99 = objc_msgSend_phoneNumber(v96, v97, v98);
      v52 = sub_225405704(v99);

      v55 = objc_msgSend_contactInformation(v8, v100, v101);
      objc_msgSend_setPhoneNumber_(v55, v102, v52);
    }

LABEL_15:

LABEL_16:
    if (cacheCopy)
    {
      v103 = objc_msgSend_lookupInfo(v33, v90, v91);
      v106 = objc_msgSend_emailAddress(v103, v104, v105);
      v109 = objc_msgSend_contactInformation(v8, v107, v108);
      objc_msgSend_setEmailAddress_(v109, v110, v106);

      v113 = objc_msgSend_lookupInfo(v33, v111, v112);
      v116 = objc_msgSend_phoneNumber(v113, v114, v115);
      v119 = objc_msgSend_contactInformation(v8, v117, v118);
      objc_msgSend_setPhoneNumber_(v119, v120, v116);
    }

    v121 = objc_msgSend_contactInformation(v8, v90, v91);

    v124 = objc_msgSend_nameComponents(v33, v122, v123);
    v127 = objc_msgSend_familyName(v124, v125, v126);
    v130 = v127;
    if (!v121)
    {
      if (objc_msgSend_isEqualToString_(v127, v128, &stru_28385ED00))
      {
        v133 = objc_msgSend_nameComponents(v33, v131, v132);
        v136 = objc_msgSend_givenName(v133, v134, v135);
        isEqualToString = objc_msgSend_isEqualToString_(v136, v137, &stru_28385ED00);

        if (isEqualToString)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v139 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v140, v139);

      v124 = objc_msgSend_nameComponents(v33, v141, v142);
      v130 = objc_msgSend_familyName(v124, v143, v144);
    }

    v145 = objc_msgSend_contactInformation(v8, v128, v129);
    objc_msgSend_setLastName_(v145, v146, v130);

    v149 = objc_msgSend_nameComponents(v33, v147, v148);
    v152 = objc_msgSend_givenName(v149, v150, v151);
    v155 = objc_msgSend_contactInformation(v8, v153, v154);
    objc_msgSend_setFirstName_(v155, v156, v152);

LABEL_25:
    v157 = objc_opt_new();
    objc_msgSend_setPublicKey_(v8, v158, v157);

    v161 = objc_msgSend_publicSharingKey(v33, v159, v160);
    v164 = objc_msgSend_publicKey(v8, v162, v163);
    objc_msgSend_setProtectionInfo_(v164, v165, v161);
  }

  v166 = objc_msgSend_userIdentity(participantCopy, v36, v37);
  v169 = objc_msgSend_publicKeyVersion(v166, v167, v168);
  objc_msgSend_setPublicKeyVersion_(v8, v170, v169);

  v173 = objc_msgSend_participantID(participantCopy, v171, v172);
  v176 = objc_msgSend_length(v173, v174, v175);

  if (v176)
  {
    v179 = objc_msgSend_participantID(participantCopy, v177, v178);
    v182 = objc_msgSend_CKDPIdentifier_User(v179, v180, v181);
    objc_msgSend_setParticipantId_(v8, v183, v182);
  }

  v184 = objc_msgSend_inviterID(participantCopy, v177, v178);
  v187 = objc_msgSend_length(v184, v185, v186);

  if (v187)
  {
    v190 = objc_msgSend_inviterID(participantCopy, v188, v189);
    v193 = objc_msgSend_CKDPIdentifier_User(v190, v191, v192);
    objc_msgSend_setInviterId_(v8, v194, v193);
  }

  v195 = MEMORY[0x277CBC810];
  if (cacheCopy || objc_msgSend_acceptanceStatus(participantCopy, v188, v189) == 3 || (v279 = objc_msgSend_role(participantCopy, v188, v189), (*v195 & 1) != 0) || v279 != 4)
  {
    v196 = objc_msgSend_acceptanceStatus(participantCopy, v188, v189);
    if ((v196 - 2) >= 3)
    {
      objc_msgSend_setState_(v8, v197, 1);
    }

    else
    {
      objc_msgSend_setState_(v8, v197, v196);
    }
  }

  if (objc_msgSend_isOrgAdminUser(participantCopy, v188, v189))
  {
    objc_msgSend_setIsOrgUser_(v8, v198, 1);
  }

  else
  {
    v202 = objc_msgSend_userIdentity(participantCopy, v198, v199);
    v205 = objc_msgSend_userRecordID(v202, v203, v204);
    v208 = objc_msgSend_recordName(v205, v206, v207);
    v211 = objc_msgSend_orgAdminUserID(self, v209, v210);
    v213 = objc_msgSend_isEqualToString_(v208, v212, v211);

    objc_msgSend_setIsOrgUser_(v8, v214, v213);
  }

  v215 = objc_msgSend_protectionInfo(participantCopy, v200, v201);

  if (v215)
  {
    v218 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v8, v219, v218);

    v222 = objc_msgSend_protectionInfo(participantCopy, v220, v221);
    v225 = objc_msgSend_protectionInfo(v8, v223, v224);
    objc_msgSend_setProtectionInfo_(v225, v226, v222);
  }

  v227 = objc_msgSend_userIdentity(participantCopy, v216, v217);
  v230 = objc_msgSend_outOfNetworkPrivateKey(v227, v228, v229);
  v233 = objc_msgSend_length(v230, v231, v232);

  if (v233)
  {
    v236 = objc_msgSend_userIdentity(participantCopy, v234, v235);
    v239 = objc_msgSend_outOfNetworkPrivateKey(v236, v237, v238);
    objc_msgSend_setOutOfNetworkPrivateKey_(v8, v240, v239);

    objc_msgSend_setOutOfNetworkKeyType_(v8, v241, 0);
  }

  v242 = objc_msgSend_protectionInfoPublicKey(participantCopy, v234, v235);
  v245 = objc_msgSend_length(v242, v243, v244);

  if (v245)
  {
    v248 = objc_msgSend_protectionInfoPublicKey(participantCopy, v246, v247);
    objc_msgSend_setProtectionInfoPublicKey_(v8, v249, v248);
  }

  v250 = objc_msgSend_createdInProcess(participantCopy, v246, v247);
  objc_msgSend_setCreatedInProcess_(v8, v251, v250);
  v254 = objc_msgSend_acceptedInProcess(participantCopy, v252, v253);
  objc_msgSend_setAcceptedInProcess_(v8, v255, v254);
  v258 = objc_msgSend_invitationTokenStatus(participantCopy, v256, v257);
  v261 = sub_2253963F0(v258, v259, v260);
  objc_msgSend_setKeyHealth_(v8, v262, v261);
  isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(participantCopy, v263, v264);
  objc_msgSend_setIsAnonymousInvitedParticipant_(v8, v266, isAnonymousInvitedParticipant);
  isApprovedRequester = objc_msgSend_isApprovedRequester(participantCopy, v267, v268);
  objc_msgSend_setIsApprovedRequester_(v8, v270, isApprovedRequester);
  if (*v195 == 1)
  {
    v273 = objc_msgSend_userIdentity(participantCopy, v271, v272);
    v276 = objc_msgSend_hasiCloudAccount(v273, v274, v275);
    objc_msgSend_setIsInNetwork_(v8, v277, v276);
  }

  return v8;
}

- (id)shareRequesterFromPRequester:(id)requester
{
  requesterCopy = requester;
  if (requesterCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v5, v6, v7);
    v9 = objc_alloc(MEMORY[0x277CBC7C8]);
    v12 = objc_msgSend_initInternal(v9, v10, v11);
    if (objc_msgSend_hasUserId(requesterCopy, v13, v14))
    {
      v17 = objc_msgSend_userId(requesterCopy, v15, v16);
      v19 = objc_msgSend_recordIDFromPUserName_error_(self, v18, v17, 0);
      objc_msgSend_setUserRecordID_(inited, v20, v19);

      objc_msgSend_setHasiCloudAccount_(inited, v21, 1);
      v24 = objc_msgSend_userId(requesterCopy, v22, v23);
      v26 = objc_msgSend_recordIDFromPUserName_error_(self, v25, v24, 0);
      objc_msgSend_setUserRecordID_(v12, v27, v26);
    }

    if (objc_msgSend_hasContactInformation(requesterCopy, v15, v16))
    {
      v30 = objc_msgSend_contactInformation(requesterCopy, v28, v29);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v30, v31, v32);

      if (hasEmailAddress)
      {
        v36 = objc_msgSend_contactInformation(requesterCopy, v34, v35);
        v39 = objc_msgSend_emailAddress(v36, v37, v38);
        objc_msgSend_setEmailAddress_(v12, v40, v39);
      }

      v41 = objc_msgSend_contactInformation(requesterCopy, v34, v35);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v41, v42, v43);

      if (hasPhoneNumber)
      {
        v47 = objc_msgSend_contactInformation(requesterCopy, v45, v46);
        v50 = objc_msgSend_phoneNumber(v47, v48, v49);
        objc_msgSend_setPhoneNumber_(v12, v51, v50);
      }

      v52 = objc_msgSend_contactInformation(requesterCopy, v45, v46);
      hasFirstName = objc_msgSend_hasFirstName(v52, v53, v54);

      if (hasFirstName)
      {
        v58 = objc_msgSend_contactInformation(requesterCopy, v56, v57);
        v61 = objc_msgSend_firstName(v58, v59, v60);
        v64 = objc_msgSend_nameComponents(inited, v62, v63);
        objc_msgSend_setGivenName_(v64, v65, v61);
      }

      v66 = objc_msgSend_contactInformation(requesterCopy, v56, v57);
      hasLastName = objc_msgSend_hasLastName(v66, v67, v68);

      if (hasLastName)
      {
        v71 = objc_msgSend_contactInformation(requesterCopy, v28, v70);
        v74 = objc_msgSend_lastName(v71, v72, v73);
        v77 = objc_msgSend_nameComponents(inited, v75, v76);
        objc_msgSend_setFamilyName_(v77, v78, v74);
      }
    }

    objc_msgSend_setLookupInfo_(inited, v28, v12);
    v79 = objc_alloc(MEMORY[0x277CBC688]);
    v81 = objc_msgSend_initWithUserIdentity_(v79, v80, inited);
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)blockedIdentityFromPBlockedUser:(id)user
{
  userCopy = user;
  if (userCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v5, v6, v7);
    v9 = objc_alloc(MEMORY[0x277CBC7C8]);
    v12 = objc_msgSend_initInternal(v9, v10, v11);
    if (objc_msgSend_hasUserId(userCopy, v13, v14))
    {
      v17 = objc_msgSend_userId(userCopy, v15, v16);
      v19 = objc_msgSend_recordIDFromPUserName_error_(self, v18, v17, 0);
      objc_msgSend_setUserRecordID_(inited, v20, v19);

      objc_msgSend_setHasiCloudAccount_(inited, v21, 1);
      v24 = objc_msgSend_userId(userCopy, v22, v23);
      v26 = objc_msgSend_recordIDFromPUserName_error_(self, v25, v24, 0);
      objc_msgSend_setUserRecordID_(v12, v27, v26);
    }

    if (objc_msgSend_hasContactInformation(userCopy, v15, v16))
    {
      v30 = objc_msgSend_contactInformation(userCopy, v28, v29);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v30, v31, v32);

      if (hasEmailAddress)
      {
        v36 = objc_msgSend_contactInformation(userCopy, v34, v35);
        v39 = objc_msgSend_emailAddress(v36, v37, v38);
        objc_msgSend_setEmailAddress_(v12, v40, v39);
      }

      v41 = objc_msgSend_contactInformation(userCopy, v34, v35);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v41, v42, v43);

      if (hasPhoneNumber)
      {
        v47 = objc_msgSend_contactInformation(userCopy, v45, v46);
        v50 = objc_msgSend_phoneNumber(v47, v48, v49);
        objc_msgSend_setPhoneNumber_(v12, v51, v50);
      }

      v52 = objc_msgSend_contactInformation(userCopy, v45, v46);
      hasFirstName = objc_msgSend_hasFirstName(v52, v53, v54);

      if (hasFirstName)
      {
        v58 = objc_msgSend_contactInformation(userCopy, v56, v57);
        v61 = objc_msgSend_firstName(v58, v59, v60);
        v64 = objc_msgSend_nameComponents(inited, v62, v63);
        objc_msgSend_setGivenName_(v64, v65, v61);
      }

      v66 = objc_msgSend_contactInformation(userCopy, v56, v57);
      hasLastName = objc_msgSend_hasLastName(v66, v67, v68);

      if (hasLastName)
      {
        v71 = objc_msgSend_contactInformation(userCopy, v28, v70);
        v74 = objc_msgSend_lastName(v71, v72, v73);
        v77 = objc_msgSend_nameComponents(inited, v75, v76);
        objc_msgSend_setFamilyName_(v77, v78, v74);
      }
    }

    objc_msgSend_setLookupInfo_(inited, v28, v12);
    v79 = objc_alloc(MEMORY[0x277CBC690]);
    v81 = objc_msgSend_initWithUserIdentity_(v79, v80, inited);
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)pRequesterFromShareRequester:(id)requester
{
  if (requester)
  {
    requesterCopy = requester;
    v5 = objc_alloc_init(CKDPUserInformationRequestAccess);
    v8 = objc_msgSend_userIdentity(requesterCopy, v6, v7);

    v11 = objc_msgSend_lookupInfo(v8, v9, v10);
    v14 = objc_msgSend_userRecordID(v11, v12, v13);
    v17 = objc_msgSend_recordName(v14, v15, v16);
    v19 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v18, v17);
    v22 = objc_msgSend_name(v19, v20, v21);
    objc_msgSend_setUserId_(v5, v23, v22);

    v24 = objc_alloc_init(CKDPContactInformation);
    v27 = objc_msgSend_nameComponents(v8, v25, v26);
    v30 = objc_msgSend_givenName(v27, v28, v29);
    objc_msgSend_setFirstName_(v24, v31, v30);

    v34 = objc_msgSend_nameComponents(v8, v32, v33);
    v37 = objc_msgSend_familyName(v34, v35, v36);
    objc_msgSend_setLastName_(v24, v38, v37);

    v41 = objc_msgSend_lookupInfo(v8, v39, v40);
    v44 = objc_msgSend_emailAddress(v41, v42, v43);
    objc_msgSend_setEmailAddress_(v24, v45, v44);

    v48 = objc_msgSend_lookupInfo(v8, v46, v47);
    v51 = objc_msgSend_phoneNumber(v48, v49, v50);
    objc_msgSend_setPhoneNumber_(v24, v52, v51);

    objc_msgSend_setContactInformation_(v5, v53, v24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pBlockedUserFromShareBlockedIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    v5 = objc_alloc_init(CKDPUserInformationBlockedRequestAccess);
    v8 = objc_msgSend_userIdentity(identityCopy, v6, v7);

    v11 = objc_msgSend_lookupInfo(v8, v9, v10);
    v14 = objc_msgSend_userRecordID(v11, v12, v13);
    v17 = objc_msgSend_recordName(v14, v15, v16);
    v19 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v18, v17);
    v22 = objc_msgSend_name(v19, v20, v21);
    objc_msgSend_setUserId_(v5, v23, v22);

    v24 = objc_alloc_init(CKDPContactInformation);
    v27 = objc_msgSend_nameComponents(v8, v25, v26);
    v30 = objc_msgSend_givenName(v27, v28, v29);
    objc_msgSend_setFirstName_(v24, v31, v30);

    v34 = objc_msgSend_nameComponents(v8, v32, v33);
    v37 = objc_msgSend_familyName(v34, v35, v36);
    objc_msgSend_setLastName_(v24, v38, v37);

    v41 = objc_msgSend_lookupInfo(v8, v39, v40);
    v44 = objc_msgSend_emailAddress(v41, v42, v43);
    objc_msgSend_setEmailAddress_(v24, v45, v44);

    v48 = objc_msgSend_lookupInfo(v8, v46, v47);
    v51 = objc_msgSend_phoneNumber(v48, v49, v50);
    objc_msgSend_setPhoneNumber_(v24, v52, v51);

    objc_msgSend_setContactInformation_(v5, v53, v24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)notificationFromPPushMessage:(id)message
{
  v111[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = objc_msgSend_payload(messageCopy, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (v9)
  {
    v12 = MEMORY[0x277CCAAA0];
    v13 = objc_msgSend_payload(messageCopy, v10, v11);
    v105 = 0;
    v15 = objc_msgSend_JSONObjectWithData_options_error_(v12, v14, v13, 4, &v105);
    v16 = v105;

    if (v15)
    {
      v110 = *MEMORY[0x277CBC970];
      v111[0] = v15;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v111, &v110, 1);
      objc_msgSend__realNotificationFromRemoteNotificationDictionary_(MEMORY[0x277CBC4C0], v19, v18);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v107 = v16;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Unable to convert payload message: %@", buf, 0xCu);
      }

      v18 = 0;
      objc_msgSend__realNotificationFromRemoteNotificationDictionary_(MEMORY[0x277CBC4C0], v27, 0);
    }
    inited = ;
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277CBC4C0]);
    inited = objc_msgSend_initInternal(v20, v21, v22);
  }

  v28 = objc_msgSend_uuid(messageCopy, v23, v24);

  if (v28)
  {
    v31 = objc_alloc(MEMORY[0x277CBC4C8]);
    v34 = objc_msgSend_uuid(messageCopy, v32, v33);
    v36 = objc_msgSend_initWithNotificationUUID_(v31, v35, v34);

    objc_msgSend_setNotificationID_(inited, v37, v36);
  }

  if (objc_msgSend_hasDialog(messageCopy, v29, v30))
  {
    v40 = MEMORY[0x277CCAAA0];
    v41 = objc_msgSend_dialog(messageCopy, v38, v39);
    v43 = objc_msgSend_dataUsingEncoding_(v41, v42, 4);
    v104 = 0;
    v45 = objc_msgSend_JSONObjectWithData_options_error_(v40, v44, v43, 4, &v104);
    v46 = v104;

    if (v45)
    {
      v47 = v45;
      if (objc_opt_respondsToSelector())
      {
        v50 = objc_msgSend_objectForKeyedSubscript_(v47, v48, *MEMORY[0x277CBC930]);
        objc_msgSend_setAlertBody_(inited, v51, v50);

        v53 = objc_msgSend_objectForKeyedSubscript_(v47, v52, *MEMORY[0x277CBC948]);
        objc_msgSend_setAlertLocalizationKey_(inited, v54, v53);

        v56 = objc_msgSend_objectForKeyedSubscript_(v47, v55, *MEMORY[0x277CBC940]);
        objc_msgSend_setAlertLocalizationArgs_(inited, v57, v56);

        v59 = objc_msgSend_objectForKeyedSubscript_(v47, v58, *MEMORY[0x277CBC968]);
        objc_msgSend_setTitleLocalizationKey_(inited, v60, v59);

        v62 = objc_msgSend_objectForKeyedSubscript_(v47, v61, *MEMORY[0x277CBC960]);
        objc_msgSend_setTitleLocalizationArgs_(inited, v63, v62);

        v65 = objc_msgSend_objectForKeyedSubscript_(v47, v64, *MEMORY[0x277CBC958]);
        objc_msgSend_setSubtitleLocalizationKey_(inited, v66, v65);

        v68 = objc_msgSend_objectForKeyedSubscript_(v47, v67, *MEMORY[0x277CBC950]);
        objc_msgSend_setSubtitleLocalizationArgs_(inited, v69, v68);

        v71 = objc_msgSend_objectForKeyedSubscript_(v47, v70, *MEMORY[0x277CBC928]);
        objc_msgSend_setAlertActionLocalizationKey_(inited, v72, v71);

        v74 = objc_msgSend_objectForKeyedSubscript_(v47, v73, *MEMORY[0x277CBC938]);
        objc_msgSend_setAlertLaunchImage_(inited, v75, v74);
      }

      else
      {
        v74 = objc_msgSend_dialog(messageCopy, v48, v49);
        objc_msgSend_setAlertBody_(inited, v80, v74);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v76 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v100 = v76;
        v103 = objc_msgSend_dialog(messageCopy, v101, v102);
        *buf = 138412546;
        v107 = v103;
        v108 = 2112;
        v109 = v46;
        _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Unable to parse dialog body %@: %@", buf, 0x16u);
      }

      v47 = objc_msgSend_dialog(messageCopy, v77, v78);
      objc_msgSend_setAlertBody_(inited, v79, v47);
    }
  }

  v81 = objc_msgSend_sound(messageCopy, v38, v39);
  objc_msgSend_setSoundName_(inited, v82, v81);

  if (objc_msgSend_hasBadgeCount(messageCopy, v83, v84))
  {
    v87 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_badgeCount(messageCopy, v85, v86);
    v90 = objc_msgSend_numberWithInt_(v87, v89, v88);
    objc_msgSend_setBadge_(inited, v91, v90);
  }

  v92 = objc_msgSend_category(messageCopy, v85, v86);
  objc_msgSend_setCategory_(inited, v93, v92);

  if (objc_msgSend_hasIsRead(messageCopy, v94, v95) && objc_msgSend_isRead(messageCopy, v96, v97))
  {
    objc_msgSend_setNotificationType_(inited, v98, 3);
  }

  return inited;
}

- (id)pAliasWithIdentityLookupInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_lookupField(infoCopy, v6, v7) == 1)
  {
    v10 = objc_msgSend_emailAddress(infoCopy, v8, v9);
    v12 = objc_msgSend_pAliasWithEmailAddress_(self, v11, v10);
  }

  else if (objc_msgSend_lookupField(infoCopy, v8, v9) == 2)
  {
    v10 = objc_msgSend_userRecordID(infoCopy, v13, v14);
    v12 = objc_msgSend_pAliasWithUserRecordID_(self, v15, v10);
  }

  else
  {
    if (objc_msgSend_lookupField(infoCopy, v13, v14) != 3)
    {
      v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
      v24 = objc_msgSend_lookupField(infoCopy, v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v25, a2, self, @"CKDProtocolTranslator.m", 2840, @"Unknown lookup field in CKUserIdentityLookupInfo: %ld", v24);
    }

    v10 = objc_msgSend_phoneNumber(infoCopy, v16, v17);
    v12 = objc_msgSend_pAliasWithPhoneNumber_(self, v18, v10);
  }

  v19 = v12;

  return v19;
}

- (id)pAliasWithPhoneNumber:(id)number
{
  v4 = sub_225405704(number);
  v6 = objc_msgSend_pAliasWithHashedStringID_type_(self, v5, v4, 3);

  return v6;
}

- (id)pAliasWithHashedStringID:(id)d type:(int)type
{
  v4 = *&type;
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v5 = MEMORY[0x277CBEA90];
  dCopy = d;
  v8 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v5, v7, &v24, 32, 0);
  v11 = objc_msgSend_lowercaseString(dCopy, v9, v10, v24, v25);

  v14 = objc_msgSend_UTF8String(v11, v12, v13);
  v16 = objc_msgSend_lengthOfBytesUsingEncoding_(v11, v15, 4);
  CC_SHA256(v14, v16, &v24);
  v19 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v8, v17, v18);
  if (v19)
  {
    v20 = objc_opt_new();
    objc_msgSend_setIdentifier_(v20, v21, v19);
    objc_msgSend_setType_(v20, v22, v4);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)pAliasWithUserRecordID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(dCopy, v6, v7);
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v9, v8))
  {
    objc_msgSend_containerScopedUserID(self, v10, v11);
  }

  else
  {
    objc_msgSend_recordName(dCopy, v10, v11);
  }
  v12 = ;
  objc_msgSend_setIdentifier_(v5, v13, v12);

  objc_msgSend_setType_(v5, v14, 2);

  return v5;
}

- (id)identityFromPUser:(id)user
{
  userCopy = user;
  if (userCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v4, v5, v6);
    v10 = objc_msgSend_lastName(userCopy, v8, v9);
    v13 = objc_msgSend_nameComponents(inited, v11, v12);
    objc_msgSend_setFamilyName_(v13, v14, v10);

    v17 = objc_msgSend_firstName(userCopy, v15, v16);
    v20 = objc_msgSend_nameComponents(inited, v18, v19);
    objc_msgSend_setGivenName_(v20, v21, v17);

    v24 = objc_msgSend_identifier(userCopy, v22, v23);
    LODWORD(v20) = objc_msgSend_hasName(v24, v25, v26);

    if (v20)
    {
      v27 = objc_alloc(MEMORY[0x277CBC5D0]);
      v30 = objc_msgSend_identifier(userCopy, v28, v29);
      v33 = objc_msgSend_name(v30, v31, v32);
      v35 = objc_msgSend_initWithRecordName_(v27, v34, v33);
      objc_msgSend_setUserRecordID_(inited, v36, v35);
    }
  }

  else
  {
    inited = 0;
  }

  return inited;
}

- (CKDProtocolTranslatorIdentityDelegate)identityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_identityDelegate);

  return WeakRetained;
}

- (int)fieldValueTypeFromEncryptedDataObject:(id)object isInList:(BOOL)list
{
  listCopy = list;
  objectCopy = object;
  if (listCopy)
  {
    v6 = 21;
  }

  else
  {
    v6 = 20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 2;
    v9 = 10;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 3;
    v9 = 15;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 7;
    v9 = 17;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 8;
    v9 = 18;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 5;
    v9 = 13;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !listCopy;
    v8 = 4;
    v9 = 12;
LABEL_16:
    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 15;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 17;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = 18;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = 12;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = 9;
            }

            else
            {
              v10 = v6;
            }
          }
        }
      }
    }
  }

LABEL_19:

  return v10;
}

- (int)fieldValueTypeFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CFNumberIsFloatType(objectCopy) == 0;
    v6 = 7;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 2;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 3;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_fieldValueTypeFromEncryptedDataObject_isInList_(self, v8, objectCopy, 0);
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    if (!objc_msgSend_count(v9, v10, v11))
    {
      v7 = 9;
      goto LABEL_26;
    }

    v13 = objc_msgSend_objectAtIndexedSubscript_(v9, v12, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = 13;
LABEL_20:

LABEL_26:
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 11;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_fieldValueTypeFromEncryptedDataObject_isInList_(self, v15, v13, 1);
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 10;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 12;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CFNumberIsFloatType(v13))
      {
        v7 = 18;
      }

      else
      {
        v7 = 17;
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 15;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 14;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 25;
      goto LABEL_20;
    }

    v29 = objc_alloc(MEMORY[0x277CBC360]);
    v30 = objc_opt_class();
    v24 = NSStringFromClass(v30);
    v26 = objc_msgSend_initWithCode_format_(v29, v31, 1006, @"Can't encode array %@ of unknown child class: %@", v9, v24);
LABEL_57:
    v27 = v26;
    v28 = v26;

    objc_exception_throw(v27);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = 5;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 6;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 19;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 4;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 24;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_alloc(MEMORY[0x277CBC360]);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = objc_msgSend_initWithCode_format_(v22, v25, 1006, @"Can't encode object %@ of class %@", objectCopy, v24);
    goto LABEL_57;
  }

  v18 = objc_msgSend_valueID(objectCopy, v16, v17);
  isEncrypted = objc_msgSend_isEncrypted(v18, v19, v20);

  v5 = isEncrypted == 0;
  v6 = 28;
LABEL_3:
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

LABEL_27:

  return v7;
}

- (BOOL)objectIsAnEncryptedType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_firstObject(typeCopy, v4, v5);

    typeCopy = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEncrypted = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_valueID(typeCopy, v8, v9);
      isEncrypted = objc_msgSend_isEncrypted(v10, v11, v12);
    }

    else
    {
      isEncrypted = 0;
    }
  }

  return isEncrypted;
}

- (id)fieldValueFromObject:(id)object forCache:(BOOL)cache
{
  cacheCopy = cache;
  objectCopy = object;
  if (objectCopy)
  {
    v8 = objc_msgSend_fieldValueTypeFromObject_(self, v6, objectCopy);
    if (objc_msgSend_objectIsAnEncryptedType_(self, v9, objectCopy))
    {
      objc_msgSend_encryptedFieldValueOfType_withObject_(self, v10, v8, objectCopy);
    }

    else
    {
      objc_msgSend_fieldValueOfType_withObject_forCache_(self, v10, v8, objectCopy, cacheCopy);
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)encryptedFieldValueOfType:(int)type withObject:(id)object
{
  v4 = *&type;
  v45 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_opt_new();
  objc_msgSend_setType_(v8, v9, v4);
  objc_msgSend_setIsEncrypted_(v8, v10, 1);
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
    case 15:
    case 17:
    case 18:
    case 20:
      v13 = objc_msgSend_encryptedData(objectCopy, v11, v12);
      objc_msgSend_setBytesValue_(v8, v14, v13);
      goto LABEL_3;
    case 6:
    case 13:
    case 14:
    case 16:
    case 19:
    case 24:
    case 25:
    case 28:
    case 30:
    case 31:
      v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
      v17 = v4 - 6;
      if (v4 - 6) < 0x1A && ((0x3CCFFFFu >> v17))
      {
        v18 = off_27854CE70[v17];
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v15, a2, self, @"CKDRecordFieldConversion.m", 371, @"Invalid type %@ on encrypted field object %@", v18, objectCopy);
      }

      else
      {
        v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"(unknown: %i)", v4);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v19, a2, self, @"CKDRecordFieldConversion.m", 371, @"Invalid type %@ on encrypted field object %@", v18, objectCopy);
      }

      break;
    case 9:
      objc_msgSend_setBytesValue_(v8, v11, 0);
      break;
    case 11:
    case 21:
      objc_msgSend_setIsEncrypted_(v8, v11, 0);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v21 = objectCopy;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v44, 16);
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
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = objc_alloc(MEMORY[0x277CBC360]);
              v37 = objc_msgSend_initWithCode_format_(v35, v36, 1006, @"Nesting arrays not supported");
              objc_exception_throw(v37);
            }

            v29 = objc_msgSend_fieldValueFromObject_(self, v28, v27);
            objc_msgSend_addListValue_(v8, v30, v29);
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v31, &v38, v44, 16);
        }

        while (v24);
      }

      break;
    case 29:
      objc_msgSend_setIsEncrypted_(v8, v11, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_msgSend_pEncryptedMergeableValueFromRecordValue_(self, v32, objectCopy);
        objc_msgSend_setEncryptedMergeableValue_(v8, v33, v13);
LABEL_3:
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v34 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v43 = objectCopy;
          _os_log_fault_impl(&dword_22506F000, v34, OS_LOG_TYPE_FAULT, "Trying to create a mergeable value field from something that isn't a mergeable: %@", buf, 0xCu);
        }
      }

      break;
    default:
      break;
  }

  return v8;
}

- (id)fieldValueOfType:(int)type withObject:(id)object forCache:(BOOL)cache
{
  cacheCopy = cache;
  v6 = *&type;
  v72 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v10 = objc_opt_new();
  objc_msgSend_setType_(v10, v11, v6);
  switch(v6)
  {
    case 1:
      objc_msgSend_setBytesValue_(v10, v12, objectCopy);
      goto LABEL_37;
    case 2:
      v36 = objc_alloc_init(MEMORY[0x277CBC240]);
      objc_msgSend_setDateValue_(v10, v37, v36);

      objc_msgSend_timeIntervalSinceReferenceDate(objectCopy, v38, v39);
      v41 = v40;
      v27 = objc_msgSend_dateValue(v10, v42, v43);
      objc_msgSend_setTime_(v27, v44, v45, v41);
      goto LABEL_23;
    case 3:
      objc_msgSend_setStringValue_(v10, v12, objectCopy);
      goto LABEL_37;
    case 4:
      v27 = objc_msgSend_CKDPLocationCoordinateFromCLLocation_(MEMORY[0x277CE41F8], v12, objectCopy);
      objc_msgSend_setLocationValue_(v10, v50, v27);
      goto LABEL_23;
    case 5:
      v25 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = objc_msgSend_recordID(objectCopy, v51, v52);
        v55 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v54, v53);
        objc_msgSend_setRecordIdentifier_(v25, v56, v55);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v58, objectCopy);
          objc_msgSend_setRecordIdentifier_(v25, v59, v53);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_35;
          }

          objc_msgSend_pReferenceFromReference_error_(self, v60, objectCopy, 0);
          v25 = v53 = v25;
        }
      }

LABEL_35:
      objc_msgSend_setReferenceValue_(v10, v60, v25);
      goto LABEL_36;
    case 6:
      v27 = objc_msgSend_pAssetFromAsset_(self, v12, objectCopy);
      objc_msgSend_setAssetValue_(v10, v34, v27);
      goto LABEL_23;
    case 7:
      v46 = objc_msgSend_longLongValue(objectCopy, v12, v13);
      objc_msgSend_setSignedValue_(v10, v47, v46);
      goto LABEL_37;
    case 8:
      objc_msgSend_doubleValue(objectCopy, v12, v13);
      objc_msgSend_setCkDoubleValue_(v10, v48, v49);
      goto LABEL_37;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
    case 18:
    case 25:
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v14 = objectCopy;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v65, v69, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *v66;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v66 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v65 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = objc_alloc(MEMORY[0x277CBC360]);
              v64 = objc_msgSend_initWithCode_format_(v62, v63, 1006, @"Nesting arrays not supported", v65);
              objc_exception_throw(v64);
            }

            v22 = objc_msgSend_fieldValueFromObject_forCache_(self, v21, v20, cacheCopy, v65);
            objc_msgSend_addListValue_(v10, v23, v22);
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v65, v69, 16);
        }

        while (v17);
      }

      goto LABEL_37;
    case 19:
      v27 = objc_msgSend_pPackageFromPackage_(self, v12, objectCopy);
      objc_msgSend_setPackageValue_(v10, v28, v27);
      goto LABEL_23;
    case 20:
    case 21:
    case 29:
      v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDRecordFieldConversion.m", 474, @"Did not expect encrypted types while creating field value");
      goto LABEL_36;
    case 24:
      v27 = objc_msgSend_pStreamingAssetFromStreamingAsset_forCache_(self, v12, objectCopy, cacheCopy);
      objc_msgSend_setStreamingAssetValue_(v10, v35, v27);
LABEL_23:

      goto LABEL_37;
    case 28:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = objc_msgSend_valueID(objectCopy, v29, v30);
        v32 = objc_msgSend_pMergeableValueFromMergeableValueID_(self, v31, v25);
        objc_msgSend_setMergeableValue_(v10, v33, v32);

LABEL_36:
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v57 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v71 = objectCopy;
          _os_log_fault_impl(&dword_22506F000, v57, OS_LOG_TYPE_FAULT, "Trying to create a mergeable value field from something that isn't a mergeable record value: %@", buf, 0xCu);
        }
      }

LABEL_37:

      return v10;
    default:
      goto LABEL_37;
  }
}

- (id)locationFieldValueWithLatitude:(double)latitude longitude:(double)longitude
{
  v6 = objc_opt_new();
  objc_msgSend_setType_(v6, v7, 4);
  if (longitude > 180.0 || fabs(latitude) > 90.0 || longitude < -180.0)
  {
    v15 = objc_alloc(MEMORY[0x277CBC360]);
    v17 = objc_msgSend_initWithCode_format_(v15, v16, 1006, @"Invalid latitude/longitude value in location");
    objc_exception_throw(v17);
  }

  v8 = objc_opt_new();
  objc_msgSend_setLatitude_(v8, v9, v10, latitude);
  objc_msgSend_setLongitude_(v8, v11, v12, longitude);
  objc_msgSend_setLocationValue_(v6, v13, v8);

  return v6;
}

- (id)encryptedObjectRepresentationFromFieldValue:(id)value
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v6 = 0;
  switch(objc_msgSend_type(valueCopy, v4, v5))
  {
    case 1u:
    case 0x14u:
      v10 = MEMORY[0x277CBC2E8];
      goto LABEL_19;
    case 2u:
      v10 = MEMORY[0x277CBC2F0];
      goto LABEL_19;
    case 3u:
      v10 = MEMORY[0x277CBC340];
      goto LABEL_19;
    case 4u:
      v10 = MEMORY[0x277CBC318];
      goto LABEL_19;
    case 5u:
      v10 = MEMORY[0x277CBC338];
      goto LABEL_19;
    case 6u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
    case 0x13u:
    case 0x15u:
    case 0x18u:
    case 0x19u:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v7 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v22 = objc_msgSend_type(valueCopy, v8, v9);
        v24 = v22 - 1;
        if (v22 - 1) < 0x1F && ((0x799FFFFFu >> v24))
        {
          v25 = off_27854CF40[v24];
        }

        else
        {
          v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"(unknown: %i)", v22);
        }

        *buf = 138412290;
        v27 = v25;
        _os_log_fault_impl(&dword_22506F000, v7, OS_LOG_TYPE_FAULT, "Did not expect %@ field to have encrypted flag set", buf, 0xCu);
      }

      v6 = 0;
      break;
    case 7u:
      v10 = MEMORY[0x277CBC328];
      goto LABEL_19;
    case 8u:
      v10 = MEMORY[0x277CBC300];
      goto LABEL_19;
    case 9u:
      v11 = objc_alloc(MEMORY[0x277CBC310]);
      v14 = objc_msgSend_data(MEMORY[0x277CBEA90], v12, v13);
      v16 = objc_msgSend_initWithData_(v11, v15, v14);
      goto LABEL_20;
    case 0xAu:
      v10 = MEMORY[0x277CBC2F8];
      goto LABEL_19;
    case 0xCu:
      v10 = MEMORY[0x277CBC320];
      goto LABEL_19;
    case 0xFu:
      v10 = MEMORY[0x277CBC348];
      goto LABEL_19;
    case 0x11u:
      v10 = MEMORY[0x277CBC330];
      goto LABEL_19;
    case 0x12u:
      v10 = MEMORY[0x277CBC308];
LABEL_19:
      v17 = [v10 alloc];
      v14 = objc_msgSend_bytesValue(valueCopy, v18, v19);
      v16 = objc_msgSend_initWithEncryptedData_(v17, v20, v14);
LABEL_20:
      v6 = v16;

      break;
    default:
      break;
  }

  return v6;
}

- (id)objectRepresentationFromFieldValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_new();
  objc_msgSend_setValue_(v5, v6, valueCopy);

  v8 = objc_msgSend_objectRepresentationFromField_inRecord_asAnonymousCKUserID_(self, v7, v5, 0, 0);

  return v8;
}

- (id)objectRepresentationFromField:(id)field inRecord:(id)record asAnonymousCKUserID:(id)d
{
  v75 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  recordCopy = record;
  dCopy = d;
  v13 = objc_msgSend_value(fieldCopy, v11, v12);
  if (objc_msgSend_isEncrypted(v13, v14, v15))
  {
    v18 = objc_msgSend_encryptedObjectRepresentationFromFieldValue_(self, v16, v13);
LABEL_3:
    v19 = v18;
  }

  else
  {
    v19 = objc_msgSend_listValues(v13, v16, v17);

    if (v19)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v73 = 0x2020000000;
      v74 = 0;
      v22 = objc_msgSend_listValues(v13, v20, v21);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_2253AADAC;
      v71[3] = &unk_27854CE50;
      v71[4] = self;
      v71[5] = &buf;
      v19 = objc_msgSend_CKCompactMap_(v22, v23, v71);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      switch(objc_msgSend_type(v13, v20, v21))
      {
        case 1u:
          v18 = objc_msgSend_bytesValue(v13, v25, v26);
          goto LABEL_3;
        case 2u:
          v51 = MEMORY[0x277CBEAA8];
          v34 = objc_msgSend_dateValue(v13, v25, v26);
          objc_msgSend_time(v34, v52, v53);
          v36 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v51, v54, v55);
          goto LABEL_45;
        case 3u:
          v18 = objc_msgSend_stringValue(v13, v25, v26);
          goto LABEL_3;
        case 4u:
          v49 = MEMORY[0x277CE41F8];
          v34 = objc_msgSend_locationValue(v13, v25, v26);
          v36 = objc_msgSend_CKLocationFromPLocationCoordinate_(v49, v50, v34);
          goto LABEL_45;
        case 5u:
          v37 = objc_msgSend_referenceValue(v13, v25, v26);
          v70 = 0;
          v19 = objc_msgSend_referenceFromPReference_error_(self, v38, v37, &v70);
          v39 = v70;

          if (v39 || !v19)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v40 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v39;
              _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Invalid field value (record identifier) from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 6u:
          v45 = objc_msgSend_assetValue(v13, v25, v26);
          v69 = 0;
          v19 = objc_msgSend_assetFromPAsset_field_error_(self, v46, v45, fieldCopy, &v69);
          v47 = v69;

          if (!v19 && v47)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v48 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v47;
              _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "Invalid asset type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 7u:
          v56 = MEMORY[0x277CCABB0];
          v57 = objc_msgSend_signedValue(v13, v25, v26);
          v18 = objc_msgSend_numberWithLongLong_(v56, v58, v57);
          goto LABEL_3;
        case 8u:
          v59 = MEMORY[0x277CCABB0];
          objc_msgSend_ckDoubleValue(v13, v25, v26);
          v18 = objc_msgSend_numberWithDouble_(v59, v60, v61);
          goto LABEL_3;
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x15u:
        case 0x19u:
          v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v25, v26);
          goto LABEL_3;
        case 0x13u:
          v62 = objc_msgSend_packageValue(v13, v25, v26);
          v68 = 0;
          v19 = objc_msgSend_packageFromPPackage_error_(self, v63, v62, &v68);
          v64 = v68;

          if (!v19 && v64)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v65 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v64;
              _os_log_error_impl(&dword_22506F000, v65, OS_LOG_TYPE_ERROR, "Invalid package type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 0x14u:
          v31 = objc_alloc(MEMORY[0x277CBC2E8]);
          v34 = objc_msgSend_bytesValue(v13, v32, v33);
          v36 = objc_msgSend_initWithEncryptedData_(v31, v35, v34);
LABEL_45:
          v19 = v36;

          break;
        case 0x18u:
          v41 = objc_msgSend_streamingAssetValue(v13, v25, v26);
          v67 = 0;
          v19 = objc_msgSend_streamingAssetFromPStreamingAsset_error_(self, v42, v41, &v67);
          v43 = v67;

          if (!v19 && v43)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v43;
              _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Invalid streaming asset type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 0x1Cu:
        case 0x1Du:
          if (recordCopy)
          {
            v27 = objc_msgSend_recordIdentifier(recordCopy, v25, v26);
            v66 = 0;
            v19 = objc_msgSend_mergeableRecordValueFromPRecordField_inPRecordIdentifier_asAnonymousCKUserID_error_(self, v28, fieldCopy, v27, dCopy, &v66);
            v29 = v66;

            if (!v19 || v29)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v30 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v29;
                _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Invalid mergeable value type from server: %@", &buf, 0xCu);
              }
            }
          }

          else
          {
            v19 = 0;
          }

          break;
        default:
          break;
      }
    }
  }

  return v19;
}

- (id)pFieldWithKey:(id)key value:(id)value forCache:(BOOL)cache
{
  cacheCopy = cache;
  keyCopy = key;
  valueCopy = value;
  v11 = objc_msgSend_fieldValueFromObject_forCache_(self, v10, valueCopy, cacheCopy);
  if (!v11)
  {
    v21 = 0;
    goto LABEL_15;
  }

  v12 = CKProcessIndexedArrayKey();
  v15 = 0;
  if (v15)
  {
    if (v12)
    {
      v41 = objc_alloc(MEMORY[0x277CBC360]);
      v43 = objc_msgSend_initWithCode_format_(v41, v42, 2018, @"Could not parse key for indexed list field operation: %@", v12);
      goto LABEL_21;
    }

    v16 = objc_msgSend_listValues(v11, v13, v14);
    if (v16)
    {
    }

    else if (objc_msgSend_type(v11, v17, v18) != 9)
    {
      v46 = objc_alloc(MEMORY[0x277CBC360]);
      v43 = objc_msgSend_initWithCode_format_(v46, v47, 1006, @"Invalid value type for indexed list field key %@", keyCopy);
      goto LABEL_21;
    }

    v29 = objc_msgSend_listValues(v11, v19, v20);
    v31 = v29;
    if (v29)
    {
      objc_msgSend_pFieldActionWithLocation_length_values_(self, v30, 0, 0, v29);
    }

    else
    {
      objc_msgSend_pFieldActionWithLocation_length_values_(self, v30, 0, 0, MEMORY[0x277CBEBF8]);
    }
    v32 = ;

    if (v32)
    {
      v21 = objc_opt_new();
      v33 = objc_opt_new();
      objc_msgSend_setIdentifier_(v21, v34, v33);

      v37 = objc_msgSend_identifier(v21, v35, v36);
      objc_msgSend_setName_(v37, v38, v15);

      objc_msgSend_addAction_(v21, v39, v32);
      goto LABEL_14;
    }

    v44 = objc_alloc(MEMORY[0x277CBC360]);
    v43 = objc_msgSend_initWithCode_format_(v44, v45, 2018, @"Could not produce action for indexed list field key %@", keyCopy);
LABEL_21:
    objc_exception_throw(v43);
  }

  v21 = objc_opt_new();
  v22 = objc_opt_new();
  objc_msgSend_setIdentifier_(v21, v23, v22);

  v26 = objc_msgSend_identifier(v21, v24, v25);
  objc_msgSend_setName_(v26, v27, keyCopy);

  objc_msgSend_setValue_(v21, v28, v11);
LABEL_14:

LABEL_15:

  return v21;
}

- (id)pFieldActionWithLocation:(int64_t)location length:(unint64_t)length values:(id)values
{
  valuesCopy = values;
  v10 = valuesCopy;
  if (location != -1 || length)
  {
    if (length)
    {
      v19 = length + location;
      v20 = objc_msgSend_count(valuesCopy, v8, v9);
      v11 = objc_opt_new();
      objc_msgSend_setIndex_(v11, v21, location);
      objc_msgSend_setIsReversed_(v11, v22, 0);
      v14 = objc_opt_new();
      objc_msgSend_setIndex_(v14, v23, (v19 - 1));
      objc_msgSend_setIsReversed_(v14, v24, 0);
      v25 = objc_opt_new();
      objc_msgSend_setLeft_(v25, v26, v11);
      objc_msgSend_setRight_(v25, v27, v14);
      v28 = objc_opt_new();
      objc_msgSend_setRange_(v28, v29, v25);
      if (v20)
      {
        v32 = objc_msgSend_mutableCopy(v10, v30, v31);
        objc_msgSend_setValues_(v28, v33, v32);

        v34 = objc_opt_new();
        objc_msgSend_setReplaceListRange_(v34, v35, v28);
      }

      else
      {
        v34 = objc_opt_new();
        objc_msgSend_setDeleteListRange_(v34, v43, v28);
      }

      goto LABEL_11;
    }

    v11 = objc_opt_new();
    objc_msgSend_setIndex_(v11, v36, location);
    objc_msgSend_setIsReversed_(v11, v37, 0);
    v14 = objc_opt_new();
    objc_msgSend_setPosition_(v14, v38, v11);
    objc_msgSend_setInsertAfter_(v14, v39, 0);
  }

  else
  {
    v11 = objc_opt_new();
    objc_msgSend_setIndex_(v11, v12, 0);
    objc_msgSend_setIsReversed_(v11, v13, 1);
    v14 = objc_opt_new();
    objc_msgSend_setPosition_(v14, v15, v11);
    objc_msgSend_setInsertAfter_(v14, v16, 1);
  }

  v40 = objc_msgSend_mutableCopy(v10, v17, v18);
  objc_msgSend_setValues_(v14, v41, v40);

  v34 = objc_opt_new();
  objc_msgSend_setInsertIntoList_(v34, v42, v14);
LABEL_11:

  return v34;
}

@end