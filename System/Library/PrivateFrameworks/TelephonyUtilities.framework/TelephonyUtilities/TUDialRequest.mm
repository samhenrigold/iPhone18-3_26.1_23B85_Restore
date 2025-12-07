@interface TUDialRequest
+ (BOOL)isHandleEmergencyNumber:(id)number telephonyProvider:(id)provider;
+ (id)callProviderManagerGeneratorBlock;
+ (id)defaultAppCallProviderForDialType:(int64_t)type originatingUIType:(int)iType isSOS:(BOOL)s handles:(id)handles ttyType:(int64_t)ttyType;
+ (id)legacyAddressBookIdentifierToContactIdentifierTransformBlock;
+ (id)providerForIntentPreferredCallProvider:(int64_t)provider recentCallProviderId:(id)id callCapability:(int64_t)capability providerManager:(id)manager;
+ (id)senderIdentityClientGeneratorBlock;
+ (id)stringForDialType:(int64_t)type;
+ (id)stringForOriginatingUIType:(int)type;
+ (id)stringForTTYType:(int64_t)type;
+ (int)originatingUITypeForExecutionContext:(int64_t)context;
+ (int)originatingUITypeForString:(id)string;
+ (int64_t)dialRequestTTYTypeForCHRecentCallTTYType:(int64_t)type;
+ (int64_t)dialRequestTypeForIntentDestinationType:(int64_t)type;
+ (int64_t)handleTypeForQueryItem:(id)item;
+ (int64_t)intentTTYTypeForTTYType:(int64_t)type;
+ (int64_t)ttyTypeForIntentTTYType:(int64_t)type;
+ (int64_t)ttyTypeForString:(id)string;
+ (void)setCallProviderManagerGeneratorBlock:(id)block;
+ (void)setLegacyAddressBookIdentifierToContactIdentifierTransformBlock:(id)block;
+ (void)setSenderIdentityClientGeneratorBlock:(id)block;
- (BOOL)BOOLValueForQueryItemWithName:(id)name inURLComponents:(id)components;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDialRequest:(id)request;
- (BOOL)isRTTAvailable;
- (BOOL)isTTYAvailable;
- (BOOL)isValid;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CNGeminiManager)contactGeminiManager;
- (IDSDestination)endpointIDSDestination;
- (NSArray)validityErrors;
- (NSString)description;
- (NSString)destinationID;
- (NSURL)URL;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (TUDialRequest)dialRequestWithURLStripping;
- (TUDialRequest)init;
- (TUDialRequest)initWithCoder:(id)coder;
- (TUDialRequest)initWithDialIntent:(id)intent providerManager:(id)manager contactsDataSource:(id)source senderIdentityClient:(id)client isEmergencyServicesOverrideEnabled:(BOOL)enabled;
- (TUDialRequest)initWithProvider:(id)provider;
- (TUDialRequest)initWithProvider:(id)provider featureFlags:(id)flags;
- (TUDialRequest)initWithService:(int)service;
- (TUDialRequest)initWithService:(int)service featureFlags:(id)flags;
- (TUDialRequest)initWithURL:(id)l;
- (TUDialRequest)initWithURL:(id)l featureFlags:(id)flags;
- (TUDialRequest)initWithURL:(id)l translationRequestConfiguration:(id)configuration;
- (TUDialRequest)initWithUserActivity:(id)activity;
- (TUDialRequest)initWithUserActivity:(id)activity providerManager:(id)manager;
- (TUDialRequest)initWithUserActivity:(id)activity providerManager:(id)manager contactsDataSource:(id)source senderIdentityClient:(id)client;
- (TUHandle)handle;
- (TUSenderIdentity)localSenderIdentity;
- (TUSenderIdentityClient)senderIdentityClient;
- (id)URLHost;
- (id)URLQueryItems;
- (id)URLScheme;
- (id)_contactFromINPerson:(id)person contactsDataSource:(id)source bestGuessHandle:(id *)handle;
- (id)_validityErrorsForRelay:(BOOL)relay;
- (id)allowProviderFallbackQueryItem;
- (id)audioSourceIdentifierURLQueryItem;
- (id)bundleIdentifier;
- (id)bypassInterventionQueryItem;
- (id)callProviderFromURLComponents:(id)components handles:(id)handles dialType:(int64_t)type originatingUIType:(int)iType isSOS:(BOOL)s ttyType:(int64_t)ttyType video:(BOOL *)video featureFlags:(id)self0;
- (id)callProviderIdentiferFromURLComponents:(id)components;
- (id)callProviderIdentifierURLQueryItem;
- (id)contactIdentifierFromURLComponents:(id)components;
- (id)contactIdentifierURLQueryItem;
- (id)contactNamesByHandleWithContactsDataSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)destinationIDFromURL:(id)l;
- (id)dialAssistedURLQueryItem;
- (id)dialRequestByReplacingProvider:(id)provider;
- (id)endpointIDSDestinationURIQueryItem;
- (id)endpointRapportEffectiveIdentifierQueryItem;
- (id)endpointRapportMediaSystemIdentifierQueryItem;
- (id)failureNotificationQueryItem;
- (id)forceAssistURLQueryItem;
- (id)handleFromURL:(id)l;
- (id)handleTypeURLQueryItem;
- (id)isEmergencyNumberBlock;
- (id)isEmergencyNumberOrIsWhitelistedBlock;
- (id)isVoicemailURLQueryItem;
- (id)launchInBackgroundQueryItem;
- (id)legacyAddressBookIdentifierQueryItemNameFromURLComponents:(id)components;
- (id)localSenderIdentityAccountUUIDURLQueryItem;
- (id)localSenderIdentityUUIDURLQueryItem;
- (id)originatingUIURLQueryItem;
- (id)providerCustomIdentifierURLQueryItem;
- (id)redialURLQueryItem;
- (id)sanitizedHandles;
- (id)shouldSuppressInCallUIQueryItem;
- (id)sosURLQueryItem;
- (id)successNotificationQueryItem;
- (id)suppressAssistURLQueryItem;
- (id)ttyTypeURLQueryItem;
- (id)upgradedCallUUIDURLQueryItem;
- (id)uplinkMutedURLQueryItem;
- (id)userActivityUsingDeprecatedCallingIntents:(BOOL)intents;
- (id)validityErrorForDestinationIDWithVoicemail;
- (id)validityErrorForEmergencyCall;
- (id)validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService;
- (id)validityErrorForNonNormalDialTypeWithoutTelephony;
- (id)validityErrorForNormalDialTypeWithUnknownDestination;
- (id)validityErrorForSOS;
- (id)validityErrorForUnspecifiedProvider;
- (id)validityErrorForUnsupportedHandleType;
- (id)validityErrorForVideoUnsupported;
- (int)legacyAddressBookIdentifierFromURLComponents:(id)components;
- (int)service;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationID:(id)d;
- (void)setHandle:(id)handle;
- (void)setOriginatingUIType:(int)type;
@end

@implementation TUDialRequest

- (NSUUID)localSenderIdentityUUID
{
  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  if (!localSenderIdentityUUID)
  {
    if (self->_localSenderIdentityAccountUUID)
    {
      provider = [(TUDialRequest *)self provider];
      v5 = [provider senderIdentityForAccountUUID:self->_localSenderIdentityAccountUUID];
      uUID = [v5 UUID];
      v7 = self->_localSenderIdentityUUID;
      self->_localSenderIdentityUUID = uUID;

      localSenderIdentityUUID = self->_localSenderIdentityUUID;
    }

    else
    {
      localSenderIdentityUUID = 0;
    }
  }

  return localSenderIdentityUUID;
}

- (NSUUID)localSenderIdentityAccountUUID
{
  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  if (!localSenderIdentityAccountUUID)
  {
    if (self->_localSenderIdentityUUID)
    {
      provider = [(TUDialRequest *)self provider];
      v5 = [provider senderIdentityForUUID:self->_localSenderIdentityUUID];
      accountUUID = [v5 accountUUID];
      v7 = self->_localSenderIdentityAccountUUID;
      self->_localSenderIdentityAccountUUID = accountUUID;

      localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
    }

    else
    {
      localSenderIdentityAccountUUID = 0;
    }
  }

  return localSenderIdentityAccountUUID;
}

- (BOOL)isValid
{
  validityErrors = [(TUDialRequest *)self validityErrors];
  v3 = [validityErrors count] == 0;

  return v3;
}

- (NSArray)validityErrors
{
  hostIDSIdentifier = [(TUDialRequest *)self hostIDSIdentifier];
  v4 = [(TUDialRequest *)self _validityErrorsForRelay:hostIDSIdentifier != 0];

  return v4;
}

- (id)validityErrorForUnspecifiedProvider
{
  v8[1] = *MEMORY[0x1E69E9840];
  provider = [(TUDialRequest *)self provider];

  if (provider)
  {
    v3 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No provider specified"];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:1 userInfo:v5];
  }

  return v3;
}

- (id)validityErrorForDestinationIDWithVoicemail
{
  v13[1] = *MEMORY[0x1E69E9840];
  handle = [(TUDialRequest *)self handle];
  if (handle && (v4 = handle, v5 = [(TUDialRequest *)self dialType], v4, v5 == 2))
  {
    v12 = *MEMORY[0x1E696A578];
    v6 = MEMORY[0x1E696AEC0];
    handle2 = [(TUDialRequest *)self handle];
    v8 = [v6 stringWithFormat:@"handle is non-nil (%@) and dialType is Voicemail", handle2];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:2 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)validityErrorForNonNormalDialTypeWithoutTelephony
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self service]== 1 || ![(TUDialRequest *)self dialType])
  {
    v5 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E696A578];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dialType (%lu) is not Normal but service (%d) is not Telephony", -[TUDialRequest dialType](self, "dialType"), -[TUDialRequest service](self, "service")];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:3 userInfo:v4];
  }

  return v5;
}

- (id)validityErrorForEmergencyCall
{
  v86 = *MEMORY[0x1E69E9840];
  handle = [(TUDialRequest *)self handle];
  if (!handle || (v4 = handle, v5 = [(TUDialRequest *)self dialType], v4, v5 != 1))
  {
    v7 = 0;
    goto LABEL_55;
  }

  if ([(TUDialRequest *)self originatingUIType]== 2 || [(TUDialRequest *)self isSOS])
  {
    isEmergencyNumberOrIsWhitelistedBlock = [(TUDialRequest *)self isEmergencyNumberOrIsWhitelistedBlock];
  }

  else
  {
    isEmergencyNumberOrIsWhitelistedBlock = [(TUDialRequest *)self isEmergencyNumberBlock];
  }

  v8 = isEmergencyNumberOrIsWhitelistedBlock;
  v64 = _Block_copy(isEmergencyNumberOrIsWhitelistedBlock);

  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  v63 = localSenderIdentityAccountUUID;
  if (localSenderIdentityAccountUUID)
  {
    v10 = localSenderIdentityAccountUUID;
    provider = [(TUDialRequest *)self provider];
    v12 = [provider senderIdentityForAccountUUID:v10];

    v14 = TUDefaultLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      handle2 = [(TUDialRequest *)self handle];
      *buf = 138412546;
      v83 = handle2;
      v84 = 2112;
      v85 = v12;
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Checking whether %@ is an emergency number for sender identity %@", buf, 0x16u);
    }

    if (v12)
    {
      handle3 = [(TUDialRequest *)self handle];
      value = [handle3 value];
      v18 = v64[2](v64, value, v12);

      if (v18)
      {
        goto LABEL_30;
      }
    }
  }

  provider2 = [(TUDialRequest *)self provider];
  prioritizedSenderIdentities = [provider2 prioritizedSenderIdentities];

  v22 = [prioritizedSenderIdentities count];
  v23 = TUDefaultLog(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      handle4 = [(TUDialRequest *)self handle];
      *buf = 138412546;
      v83 = handle4;
      v84 = 2112;
      v85 = prioritizedSenderIdentities;
      _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Checking whether %@ is an emergency number for any of the following sender identities %@", buf, 0x16u);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    accountUUID = prioritizedSenderIdentities;
    v27 = [accountUUID countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v74;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v74 != v29)
          {
            objc_enumerationMutation(accountUUID);
          }

          v31 = *(*(&v73 + 1) + 8 * i);
          handle5 = [(TUDialRequest *)self handle];
          value2 = [handle5 value];
          v34 = v64[2](v64, value2, v31);

          if (v34)
          {
            v12 = v31;

            goto LABEL_30;
          }
        }

        v28 = [accountUUID countByEnumeratingWithState:&v73 objects:v81 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0;
    v12 = 0;
    goto LABEL_33;
  }

  if (v24)
  {
    provider3 = [(TUDialRequest *)self provider];
    *buf = 138412290;
    v83 = provider3;
    _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "No sender identities found on provider %@", buf, 0xCu);
  }

  handle6 = [(TUDialRequest *)self handle];
  value3 = [handle6 value];
  v39 = v64[2](v64, value3, 0);

  v12 = 0;
  if (v39)
  {
LABEL_30:
    v40 = TUDefaultLog(v19);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v83 = v12;
      _os_log_impl(&dword_1956FD000, v40, OS_LOG_TYPE_DEFAULT, "Emergency or whitelisted number detected; updating dial request with emergency sender identity %@", buf, 0xCu);
    }

    uUID = [v12 UUID];
    [(TUDialRequest *)self setLocalSenderIdentityUUID:uUID];

    accountUUID = [v12 accountUUID];
    [(TUDialRequest *)self setLocalSenderIdentityAccountUUID:accountUUID];
    v35 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v35 = 0;
LABEL_34:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  provider4 = [(TUDialRequest *)self provider];
  emergencyLabeledHandles = [provider4 emergencyLabeledHandles];

  v44 = [emergencyLabeledHandles countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v70;
LABEL_36:
    v47 = 0;
    while (1)
    {
      if (*v70 != v46)
      {
        objc_enumerationMutation(emergencyLabeledHandles);
      }

      v48 = *(*(&v69 + 1) + 8 * v47);
      handle7 = [(TUDialRequest *)self handle];
      handle8 = [v48 handle];
      v51 = [handle7 isEqualToHandle:handle8];

      if (v51)
      {
        goto LABEL_52;
      }

      if (v45 == ++v47)
      {
        v45 = [emergencyLabeledHandles countByEnumeratingWithState:&v69 objects:v80 count:16];
        if (v45)
        {
          goto LABEL_36;
        }

        break;
      }
    }
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  provider5 = [(TUDialRequest *)self provider];
  emergencyLabeledHandles = [provider5 emergencyHandles];

  v53 = [emergencyLabeledHandles countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v66;
LABEL_44:
    v56 = 0;
    while (1)
    {
      if (*v66 != v55)
      {
        objc_enumerationMutation(emergencyLabeledHandles);
      }

      v57 = *(*(&v65 + 1) + 8 * v56);
      handle9 = [(TUDialRequest *)self handle];
      LOBYTE(v57) = [handle9 isEqualToHandle:v57];

      if (v57)
      {
        break;
      }

      if (v54 == ++v56)
      {
        v54 = [emergencyLabeledHandles countByEnumeratingWithState:&v65 objects:v79 count:16];
        if (v54)
        {
          goto LABEL_44;
        }

        goto LABEL_50;
      }
    }

LABEL_52:
    v7 = 0;
LABEL_53:

    goto LABEL_54;
  }

LABEL_50:

  if ((v35 & 1) == 0)
  {
    v77 = *MEMORY[0x1E696A578];
    v60 = MEMORY[0x1E696AEC0];
    handle10 = [(TUDialRequest *)self handle];
    v62 = [v60 stringWithFormat:@"handle (%@) for emergency call dial request is not an emergency number (isEmergencyOrWhitelistedSOSNumber=%d isTelephonyApprovedEmergencyHandle=%d originatingUIType=%ld)", handle10, 0, 0, -[TUDialRequest originatingUIType](self, "originatingUIType"), v63];
    v78 = v62;
    emergencyLabeledHandles = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:5 userInfo:emergencyLabeledHandles];
    goto LABEL_53;
  }

  v7 = 0;
LABEL_54:

LABEL_55:

  return v7;
}

- (id)validityErrorForVideoUnsupported
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (-[TUDialRequest isVideo](self, "isVideo") && (-[TUDialRequest provider](self, "provider"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 supportsAudioAndVideo], v3, (v4 & 1) == 0))
  {
    v9 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested video for a provider which doesn't support it"];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:6 userInfo:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)validityErrorForNormalDialTypeWithUnknownDestination
{
  v12[1] = *MEMORY[0x1E69E9840];
  handle = [(TUDialRequest *)self handle];
  value = [handle value];
  if ([value length])
  {
    goto LABEL_4;
  }

  contactIdentifier = [(TUDialRequest *)self contactIdentifier];
  if ([contactIdentifier length])
  {

LABEL_4:
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  dialType = [(TUDialRequest *)self dialType];

  if (dialType)
  {
    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E696A578];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"destinationID and contactIdentifier are both nil/empty and dialType is Normal"];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:7 userInfo:v10];

LABEL_6:

  return v6;
}

- (id)validityErrorForSOS
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self dialType]== 1 || ![(TUDialRequest *)self isSOS])
  {
    v5 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E696A578];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested SOS for non emergency dialType"];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:9 userInfo:v4];
  }

  return v5;
}

+ (id)senderIdentityClientGeneratorBlock
{
  v2 = _Block_copy(senderIdentityClientGeneratorBlock);

  return v2;
}

- (BOOL)isTTYAvailable
{
  senderIdentityClient = [(TUDialRequest *)self senderIdentityClient];
  localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
  v5 = [senderIdentityClient isTTYAvailableForSenderIdentityUUID:localSenderIdentityUUID];

  return v5;
}

- (BOOL)isRTTAvailable
{
  senderIdentityClient = [(TUDialRequest *)self senderIdentityClient];
  localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
  v5 = [senderIdentityClient isRTTAvailableForSenderIdentityUUID:localSenderIdentityUUID];

  return v5;
}

- (id)validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self service]== 3 && ![(TUDialRequest *)self endpointOnCurrentDevice])
  {
    v7 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"service (%d) is not relayable but endpointOnCurrentDevice is set", -[TUDialRequest service](self, "service")];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:4 userInfo:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)validityErrorForUnsupportedHandleType
{
  v11[1] = *MEMORY[0x1E69E9840];
  handle = [(TUDialRequest *)self handle];
  if (handle)
  {
    provider = [(TUDialRequest *)self provider];
    handle2 = [(TUDialRequest *)self handle];
    v6 = [provider supportsHandleType:{objc_msgSend(handle2, "type")}];

    if (v6)
    {
      handle = 0;
    }

    else
    {
      v10 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider does not support the specified handle type"];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

      handle = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:8 userInfo:v8];
    }
  }

  return handle;
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    senderIdentityClientGeneratorBlock = [objc_opt_class() senderIdentityClientGeneratorBlock];
    v5 = senderIdentityClientGeneratorBlock[2]();
    v6 = self->_senderIdentityClient;
    self->_senderIdentityClient = v5;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

+ (id)callProviderManagerGeneratorBlock
{
  v2 = _Block_copy(callProviderManagerGeneratorBlock);

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [objc_opt_class() stringForDialType:{-[TUDialRequest dialType](self, "dialType")}];
  [v3 appendFormat:@" dialType=%@", v4];

  handles = [(TUDialRequest *)self handles];
  [v3 appendFormat:@" handles=%@", handles];

  contactIdentifier = [(TUDialRequest *)self contactIdentifier];
  [v3 appendFormat:@" contactIdentifier=%@", contactIdentifier];

  providerCustomIdentifier = [(TUDialRequest *)self providerCustomIdentifier];
  [v3 appendFormat:@" providerCustomIdentifier=%@", providerCustomIdentifier];

  localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
  [v3 appendFormat:@" localSenderIdentityUUID=%@", localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  [v3 appendFormat:@" localSenderIdentityAccountUUID=%@", localSenderIdentityAccountUUID];

  audioSourceIdentifier = [(TUDialRequest *)self audioSourceIdentifier];
  [v3 appendFormat:@" audioSourceIdentifier=%@", audioSourceIdentifier];

  [v3 appendFormat:@" video=%d", -[TUDialRequest isVideo](self, "isVideo")];
  [v3 appendFormat:@" performDialAssist=%d", -[TUDialRequest performDialAssist](self, "performDialAssist")];
  [v3 appendFormat:@" performLocalDialAssist=%d", -[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist")];
  upgradedFromCallUUID = [(TUDialRequest *)self upgradedFromCallUUID];
  [v3 appendFormat:@" upgradedFromCallUUID=%@", upgradedFromCallUUID];

  translationRequestConfiguration = [(TUDialRequest *)self translationRequestConfiguration];
  [v3 appendFormat:@" translationRequestConfiguration=%@", translationRequestConfiguration];

  [v3 appendFormat:@" dialAssisted=%d", -[TUDialRequest isDialAssisted](self, "isDialAssisted")];
  [v3 appendFormat:@" shouldStartWithUplinkMuted=%d", -[TUDialRequest shouldStartWithUplinkMuted](self, "shouldStartWithUplinkMuted")];
  v13 = [objc_opt_class() stringForTTYType:{-[TUDialRequest ttyType](self, "ttyType")}];
  [v3 appendFormat:@" ttyType=%@", v13];

  [v3 appendFormat:@" showUIPrompt=%d", -[TUDialRequest showUIPrompt](self, "showUIPrompt")];
  uniqueProxyIdentifier = [(TUDialRequest *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uniqueProxyIdentifier=%@", uniqueProxyIdentifier];

  [v3 appendFormat:@" hostOnCurrentDevice=%d", -[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice")];
  [v3 appendFormat:@" endpointOnCurrentDevice=%d", -[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice")];
  endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];
  [v3 appendFormat:@" endpointIDSDestinationURI=%@", endpointIDSDestinationURI];

  endpointRapportMediaSystemIdentifier = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
  [v3 appendFormat:@" endpointRapportMediaSystemIdentifier=%@", endpointRapportMediaSystemIdentifier];

  endpointRapportEffectiveIdentifier = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
  [v3 appendFormat:@" endpointRapportEffectiveIdentifier=%@", endpointRapportEffectiveIdentifier];

  [v3 appendFormat:@" originatingUI=%ld", -[TUDialRequest originatingUIType](self, "originatingUIType")];
  [v3 appendFormat:@" sos=%d", -[TUDialRequest isSOS](self, "isSOS")];
  [v3 appendFormat:@" shouldSuppressInCallUI=%d", -[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [v3 appendFormat:@" launchInBackground=%d", -[TUDialRequest launchInBackground](self, "launchInBackground")];
  [v3 appendFormat:@" valid=%d", -[TUDialRequest isValid](self, "isValid")];
  [v3 appendFormat:@" redial=%d", -[TUDialRequest isRedial](self, "isRedial")];
  [v3 appendFormat:@" preferDefaultApp=%d", -[TUDialRequest preferDefaultApp](self, "preferDefaultApp")];
  provider = [(TUDialRequest *)self provider];
  [v3 appendFormat:@" provider=%@", provider];

  [v3 appendFormat:@" bypassIntervention=%d", -[TUDialRequest bypassIntervention](self, "bypassIntervention")];
  validityErrors = [(TUDialRequest *)self validityErrors];
  v20 = [validityErrors count];

  if (v20)
  {
    validityErrors2 = [(TUDialRequest *)self validityErrors];
    v22 = [validityErrors2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" validityErrors=%@", v22];
  }

  [v3 appendString:@">"];

  return v3;
}

- (TUHandle)handle
{
  handles = [(TUDialRequest *)self handles];
  anyObject = [handles anyObject];

  return anyObject;
}

- (int)service
{
  selfCopy = self;
  provider = [(TUDialRequest *)self provider];
  LODWORD(selfCopy) = [TUCallProviderManager serviceForProvider:provider video:[(TUDialRequest *)selfCopy isVideo]];

  return selfCopy;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (IDSDestination)endpointIDSDestination
{
  endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];

  if (endpointIDSDestinationURI)
  {
    v4 = MEMORY[0x1E69A5240];
    endpointIDSDestinationURI2 = [(TUDialRequest *)self endpointIDSDestinationURI];
    v6 = [v4 destinationWithURI:endpointIDSDestinationURI2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)dialRequestTTYTypeForCHRecentCallTTYType:(int64_t)type
{
  if (type < 3)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)defaultAppCallProviderForDialType:(int64_t)type originatingUIType:(int)iType isSOS:(BOOL)s handles:(id)handles ttyType:(int64_t)ttyType
{
  sCopy = s;
  v9 = *&iType;
  v33 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  callProviderManagerGeneratorBlock = [self callProviderManagerGeneratorBlock];
  v14 = callProviderManagerGeneratorBlock[2]();

  v15 = [self dialTypeShouldForceTelephony:type];
  if (v15 & 1) != 0 || (v15 = [self originatingUITypeShouldForceTelephony:v9], (v15) || (v15 = objc_msgSend(self, "ttyTypeShouldForceTelephony:", ttyType), (v15) || sCopy)
  {
    v16 = TUDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218752;
      typeCopy = type;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = sCopy;
      v31 = 2048;
      ttyTypeCopy = ttyType;
      _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Using telephonyProvider for TUDialRequest dialType: %ld originatingUIType: %ld isSOS: %d ttyType:%ld", &v25, 0x26u);
    }

    telephonyProvider = [v14 telephonyProvider];
  }

  else
  {
    anyObject = [handlesCopy anyObject];
    if (anyObject && ([v14 telephonyProvider], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(self, "isHandleEmergencyNumber:telephonyProvider:", anyObject, v20), v20, v21))
    {
      v23 = TUDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        typeCopy = anyObject;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Using telephonyProvider due to emergency number TUDialRequest handle %@", &v25, 0xCu);
      }

      telephonyProvider2 = [v14 telephonyProvider];
    }

    else
    {
      telephonyProvider2 = [v14 defaultAppProvider];
    }

    telephonyProvider = telephonyProvider2;
  }

  return telephonyProvider;
}

+ (BOOL)isHandleEmergencyNumber:(id)number telephonyProvider:(id)provider
{
  v56 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  providerCopy = provider;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  emergencyHandles = [providerCopy emergencyHandles];
  v9 = [emergencyHandles countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(emergencyHandles);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [numberCopy isEquivalentToHandle:v13];
        if ((v14 & 1) == 0)
        {
          v14 = [numberCopy isEqualToHandle:v13];
          if (!v14)
          {
            continue;
          }
        }

        prioritizedSenderIdentities = TUDefaultLog(v14);
        if (os_log_type_enabled(prioritizedSenderIdentities, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1956FD000, prioritizedSenderIdentities, OS_LOG_TYPE_DEFAULT, "TUHandle is in TelephonyProvider emergencyHandles", buf, 2u);
        }

        LOBYTE(v27) = 1;
        goto LABEL_39;
      }

      v10 = [emergencyHandles countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  emergencyHandles = [providerCopy emergencyLabeledHandles];
  v15 = [emergencyHandles countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    while (2)
    {
      v18 = providerCopy;
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(emergencyHandles);
        }

        v20 = *(*(&v41 + 1) + 8 * j);
        handle = [v20 handle];
        if ([numberCopy isEquivalentToHandle:handle])
        {

LABEL_32:
          prioritizedSenderIdentities = TUDefaultLog(v24);
          if (os_log_type_enabled(prioritizedSenderIdentities, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1956FD000, prioritizedSenderIdentities, OS_LOG_TYPE_DEFAULT, "TUHandle is in TelephonyProvider emergencyLabeledHandles", buf, 2u);
          }

          LOBYTE(v27) = 1;
          providerCopy = v18;
          goto LABEL_39;
        }

        handle2 = [v20 handle];
        v23 = [numberCopy isEqualToHandle:handle2];

        if (v23)
        {
          goto LABEL_32;
        }
      }

      v16 = [emergencyHandles countByEnumeratingWithState:&v41 objects:v54 count:16];
      providerCopy = v18;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  senderIdentityClientGeneratorBlock = [self senderIdentityClientGeneratorBlock];
  emergencyHandles = senderIdentityClientGeneratorBlock[2]();

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  prioritizedSenderIdentities = [providerCopy prioritizedSenderIdentities];
  v27 = [prioritizedSenderIdentities countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v27)
  {
    v36 = providerCopy;
    v28 = *v38;
    while (2)
    {
      for (k = 0; k != v27; k = (k + 1))
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(prioritizedSenderIdentities);
        }

        v30 = *(*(&v37 + 1) + 8 * k);
        value = [numberCopy value];
        uUID = [v30 UUID];
        v33 = [emergencyHandles isEmergencyNumberForDigits:value senderIdentityUUID:uUID];

        if (v33)
        {
          v27 = TUDefaultLog(v34);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v30;
            v51 = 2112;
            v52 = numberCopy;
            _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "TUSenderIdentity %@ recognizing handle %@ as emergency number", buf, 0x16u);
          }

          LOBYTE(v27) = 1;
          goto LABEL_38;
        }
      }

      v27 = [prioritizedSenderIdentities countByEnumeratingWithState:&v37 objects:v53 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_38:
    providerCopy = v36;
  }

LABEL_39:

  return v27;
}

- (TUDialRequest)initWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUDialRequest *)self initWithProvider:providerCopy featureFlags:v5];

  return v6;
}

- (TUDialRequest)initWithProvider:(id)provider featureFlags:(id)flags
{
  providerCopy = provider;
  flagsCopy = flags;
  if (!providerCopy)
  {
    [TUDialRequest initWithProvider:a2 featureFlags:self];
  }

  v16.receiver = self;
  v16.super_class = TUDialRequest;
  v10 = [(TUDialRequest *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provider, provider);
    *&v11->_performDialAssist = 257;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueProxyIdentifier = v11->_uniqueProxyIdentifier;
    v11->_uniqueProxyIdentifier = uUIDString;

    *&v11->_hostOnCurrentDevice = 257;
    objc_storeStrong(&v11->_featureFlags, flags);
    v11->_preferDefaultApp = TUDefaultAppsEnabled(v11->_featureFlags);
  }

  return v11;
}

- (TUDialRequest)initWithService:(int)service featureFlags:(id)flags
{
  v4 = *&service;
  flagsCopy = flags;
  v12 = 0;
  callProviderManagerGeneratorBlock = [objc_opt_class() callProviderManagerGeneratorBlock];
  v8 = callProviderManagerGeneratorBlock[2]();

  v9 = [v8 providerWithService:v4 video:&v12];
  if (v9 && (v10 = [(TUDialRequest *)self initWithProvider:v9 featureFlags:flagsCopy], (self = v10) != 0))
  {
    v10->_video = v12;
  }

  else
  {

    self = 0;
  }

  return self;
}

- (TUDialRequest)initWithService:(int)service
{
  v3 = *&service;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUDialRequest *)self initWithService:v3 featureFlags:v5];

  return v6;
}

- (TUDialRequest)initWithURL:(id)l translationRequestConfiguration:(id)configuration
{
  configurationCopy = configuration;
  lCopy = l;
  v9 = objc_alloc_init(TUFeatureFlags);
  v10 = [(TUDialRequest *)self initWithURL:lCopy featureFlags:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_translationRequestConfiguration, configuration);
  }

  return v10;
}

- (TUDialRequest)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUDialRequest *)self initWithURL:lCopy featureFlags:v5];

  return v6;
}

- (TUDialRequest)initWithURL:(id)l featureFlags:(id)flags
{
  lCopy = l;
  flagsCopy = flags;
  v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v95 = 0;
  v9 = [MEMORY[0x1E695DFD8] set];
  scheme = [v8 scheme];
  tUDialRequestSchemeTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeTelephony];
  if ([scheme isEqualToString:tUDialRequestSchemeTelephony])
  {
    v12 = [v8 containsQueryItemWithName:@"isVoicemail"];

    if (v12)
    {
      v13 = 2;
      goto LABEL_8;
    }
  }

  else
  {
  }

  scheme2 = [v8 scheme];
  v15 = [scheme2 isEqualToString:@"telemergencycall"];

  v13 = v15;
  v16 = [(TUDialRequest *)self handleFromURL:lCopy];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFD8] setWithObject:v16];

    v9 = v17;
  }

LABEL_8:
  v18 = [v8 firstQueryItemWithName:@"originatingUI"];
  v19 = objc_opt_class();
  v94 = v18;
  value = [v18 value];
  v21 = [v19 originatingUITypeForString:value];

  v22 = [(TUDialRequest *)self BOOLValueForQueryItemWithName:@"sos" inURLComponents:v8];
  v23 = [v8 firstQueryItemWithName:@"ttyType"];
  v24 = objc_opt_class();
  v93 = v23;
  value2 = [v23 value];
  v26 = [v24 ttyTypeForString:value2];

  v27 = [(TUDialRequest *)self callProviderFromURLComponents:v8 handles:v9 dialType:v13 originatingUIType:v21 isSOS:v22 ttyType:v26 video:&v95 featureFlags:flagsCopy];
  if (v27)
  {
    v92 = v26;
    v28 = [(TUDialRequest *)self initWithProvider:v27 featureFlags:flagsCopy];
    v29 = v28;
    if (v28)
    {
      v28->_dialType = v13;
      objc_storeStrong(&v28->_handles, v9);
      v29->_originatingUIType = v21;
      v29->_sos = v22;
      v30 = [(TUDialRequest *)v29 contactIdentifierFromURLComponents:v8];
      contactIdentifier = v29->_contactIdentifier;
      v29->_contactIdentifier = v30;

      if (TUDefaultAppsEnabled(flagsCopy))
      {
        v32 = MEMORY[0x1E695DFF8];
        scheme3 = [v8 scheme];
        v29->_preferDefaultApp = [v32 isDefaultCallingAppScheme:scheme3];
      }

      else
      {
        v29->_preferDefaultApp = 0;
      }

      if (!v29->_contactIdentifier)
      {
        v34 = legacyAddressBookIdentifierToContactIdentifierTransformBlock;
        contactStore = [objc_opt_class() contactStore];
        v36 = v34[2](v34, contactStore, [(TUDialRequest *)v29 legacyAddressBookIdentifierFromURLComponents:v8]);
        v37 = v29->_contactIdentifier;
        v29->_contactIdentifier = v36;
      }

      v38 = [v8 firstQueryItemWithName:@"providerCustomIdentifier"];
      value3 = [v38 value];
      providerCustomIdentifier = v29->_providerCustomIdentifier;
      v29->_providerCustomIdentifier = value3;

      v41 = objc_alloc(MEMORY[0x1E696AFB0]);
      v42 = [v8 firstQueryItemWithName:@"localSenderIdentityUUID"];
      value4 = [v42 value];
      v44 = [v41 initWithUUIDString:value4];
      localSenderIdentityUUID = v29->_localSenderIdentityUUID;
      v29->_localSenderIdentityUUID = v44;

      v46 = objc_alloc(MEMORY[0x1E696AFB0]);
      v47 = [v8 firstQueryItemWithName:@"localSenderIdentityAccountUUID"];
      value5 = [v47 value];
      v49 = [v46 initWithUUIDString:value5];
      localSenderIdentityAccountUUID = v29->_localSenderIdentityAccountUUID;
      v29->_localSenderIdentityAccountUUID = v49;

      v51 = [v8 firstQueryItemWithName:@"TUCallSourceIdentifierKey"];
      value6 = [v51 value];
      audioSourceIdentifier = v29->_audioSourceIdentifier;
      v29->_audioSourceIdentifier = value6;

      v29->_redial = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"redial" inURLComponents:v8];
      v54 = [v8 firstQueryItemWithName:@"endpointIDSDestinationURI"];
      value7 = [v54 value];
      endpointIDSDestinationURI = v29->_endpointIDSDestinationURI;
      v29->_endpointIDSDestinationURI = value7;

      v57 = [v8 firstQueryItemWithName:@"endpointRapportMediaSystemIdentifier"];
      value8 = [v57 value];
      endpointRapportMediaSystemIdentifier = v29->_endpointRapportMediaSystemIdentifier;
      v29->_endpointRapportMediaSystemIdentifier = value8;

      v60 = [v8 firstQueryItemWithName:@"endpointRapportEffectiveIdentifier"];
      value9 = [v60 value];
      endpointRapportEffectiveIdentifier = v29->_endpointRapportEffectiveIdentifier;
      v29->_endpointRapportEffectiveIdentifier = value9;

      v63 = [v8 firstQueryItemWithName:@"relayHostIdentifier"];
      value10 = [v63 value];
      hostIDSIdentifier = v29->_hostIDSIdentifier;
      v29->_hostIDSIdentifier = value10;

      v29->_performDialAssist = ![(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"suppressAssist" inURLComponents:v8];
      if ([(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"suppressAssist" inURLComponents:v8])
      {
        LOBYTE(v66) = 0;
      }

      else
      {
        v66 = ![(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"forceAssist" inURLComponents:v8];
      }

      v29->_performLocalDialAssist = v66;
      v29->_dialAssisted = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"wasAssisted" inURLComponents:v8];
      v29->_shouldStartWithUplinkMuted = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"uplinkMuted" inURLComponents:v8];
      v29->_video = v95;
      v67 = [v8 firstQueryItemWithName:@"successNotification"];
      value11 = [v67 value];
      successNotification = v29->_successNotification;
      v29->_successNotification = value11;

      v70 = [v8 firstQueryItemWithName:@"failureNotification"];
      value12 = [v70 value];
      failureNotification = v29->_failureNotification;
      v29->_failureNotification = value12;

      v73 = [v8 firstQueryItemWithName:@"upgradedFromCallUUID"];
      self = [v73 value];

      if (self)
      {
        v74 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self];
        upgradedFromCallUUID = v29->_upgradedFromCallUUID;
        v29->_upgradedFromCallUUID = v74;
      }

      scheme4 = [v8 scheme];
      if ([scheme4 isEqualToIgnoringCase:@"facetime-prompt"])
      {
        v29->_showUIPrompt = 1;
      }

      else
      {
        scheme5 = [v8 scheme];
        if ([scheme5 isEqualToIgnoringCase:@"facetime-audio-prompt"])
        {
          v29->_showUIPrompt = 1;
        }

        else
        {
          v90 = flagsCopy;
          scheme6 = [v8 scheme];
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
          v89 = v91 = scheme6;
          if ([scheme6 isEqualToIgnoringCase:?])
          {
            v29->_showUIPrompt = 1;
          }

          else
          {
            scheme7 = [v8 scheme];
            tUDialRequestSchemeForceTelephonyPrompt = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
            v88 = scheme7;
            v81 = scheme7;
            v82 = tUDialRequestSchemeForceTelephonyPrompt;
            if ([v81 isEqualToIgnoringCase:tUDialRequestSchemeForceTelephonyPrompt])
            {
              v29->_showUIPrompt = 1;
            }

            else
            {
              scheme8 = [v8 scheme];
              v29->_showUIPrompt = [scheme8 isEqualToIgnoringCase:@"callkit-audio-prompt"];
            }

            flagsCopy = v90;
          }
        }
      }

      v29->_ttyType = v92;
      v29->_shouldSuppressInCallUI = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"shouldSuppressInCallUI" inURLComponents:v8];
      v29->_launchInBackground = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"launchInBackground" inURLComponents:v8];
      v84 = MEMORY[0x1E695DFF8];
      scheme9 = [lCopy scheme];
      if ([v84 isDefaultCallingAppScheme:scheme9])
      {
        v86 = [v27 isTelephonyProvider] ^ 1;
      }

      else
      {
        v86 = 0;
      }

      v29->_allowProviderFallback = ([(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"allowProviderFallback" inURLComponents:v8]| v86) & 1;
      v29->_bypassIntervention = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"bypassIntervention" inURLComponents:v8];
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (TUDialRequest)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  callProviderManagerGeneratorBlock = [objc_opt_class() callProviderManagerGeneratorBlock];
  v6 = callProviderManagerGeneratorBlock[2]();
  v7 = [(TUDialRequest *)self initWithUserActivity:activityCopy providerManager:v6];

  return v7;
}

- (TUDialRequest)initWithUserActivity:(id)activity providerManager:(id)manager
{
  managerCopy = manager;
  activityCopy = activity;
  contactStore = [objc_opt_class() contactStore];
  v9 = [(TUDialRequest *)self initWithUserActivity:activityCopy providerManager:managerCopy contactsDataSource:contactStore senderIdentityClient:0];

  return v9;
}

- (TUDialRequest)initWithUserActivity:(id)activity providerManager:(id)manager contactsDataSource:(id)source senderIdentityClient:(id)client
{
  activityCopy = activity;
  managerCopy = manager;
  clientCopy = client;
  sourceCopy = source;
  interaction = [activityCopy interaction];
  intent = [interaction intent];
  v16 = [(TUDialRequest *)self initWithDialIntent:intent providerManager:managerCopy contactsDataSource:sourceCopy senderIdentityClient:clientCopy];

  if (v16)
  {
    userInfo = [activityCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:@"providerIdentifier"];
    if (v18)
    {
      v19 = [managerCopy providerWithIdentifier:v18];
      if (v19)
      {
        objc_storeStrong(&v16->_provider, v19);
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = [userInfo objectForKeyedSubscript:@"sos"];

    if (v20)
    {
      v21 = [userInfo objectForKeyedSubscript:@"sos"];
      v16->_sos = [v21 BOOLValue];
    }

    v22 = [userInfo objectForKeyedSubscript:@"redial"];

    if (v22)
    {
      v23 = [userInfo objectForKeyedSubscript:@"redial"];
      v16->_redial = [v23 BOOLValue];
    }

    v24 = [userInfo objectForKeyedSubscript:@"localSenderIdentityUUID"];

    if (v24)
    {
      v25 = [userInfo objectForKeyedSubscript:@"localSenderIdentityUUID"];
      localSenderIdentityUUID = v16->_localSenderIdentityUUID;
      v16->_localSenderIdentityUUID = v25;
    }

    v27 = [userInfo objectForKeyedSubscript:@"localSenderIdentityAccountUUID"];

    if (v27)
    {
      v28 = [userInfo objectForKeyedSubscript:@"localSenderIdentityAccountUUID"];
      localSenderIdentityAccountUUID = v16->_localSenderIdentityAccountUUID;
      v16->_localSenderIdentityAccountUUID = v28;
    }

    v30 = [userInfo objectForKeyedSubscript:@"TUCallSourceIdentifierKey"];

    if (v30)
    {
      v31 = [userInfo objectForKeyedSubscript:@"TUCallSourceIdentifierKey"];
      audioSourceIdentifier = v16->_audioSourceIdentifier;
      v16->_audioSourceIdentifier = v31;
    }

    v33 = [userInfo objectForKeyedSubscript:@"performDialAssist"];

    if (v33)
    {
      v34 = [userInfo objectForKeyedSubscript:@"performDialAssist"];
      v16->_performDialAssist = [v34 BOOLValue];
    }

    v35 = [userInfo objectForKeyedSubscript:@"performLocalDialAssist"];

    if (v35)
    {
      v36 = [userInfo objectForKeyedSubscript:@"performLocalDialAssist"];
      v16->_performLocalDialAssist = [v36 BOOLValue];
    }

    v37 = [userInfo objectForKeyedSubscript:@"dialAssisted"];

    if (v37)
    {
      v38 = [userInfo objectForKeyedSubscript:@"dialAssisted"];
      v16->_dialAssisted = [v38 BOOLValue];
    }

    v39 = [userInfo objectForKeyedSubscript:@"originatingUI"];

    if (v39)
    {
      v40 = objc_opt_class();
      v41 = [userInfo objectForKeyedSubscript:@"originatingUI"];
      v16->_originatingUIType = [v40 originatingUITypeForString:v41];
    }

    v42 = [userInfo objectForKeyedSubscript:@"preferDefaultApp"];

    if (v42)
    {
      v43 = [userInfo objectForKeyedSubscript:@"preferDefaultApp"];
      v16->_preferDefaultApp = [v43 BOOLValue];
    }
  }

  return v16;
}

- (TUDialRequest)initWithDialIntent:(id)intent providerManager:(id)manager contactsDataSource:(id)source senderIdentityClient:(id)client isEmergencyServicesOverrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v179 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  managerCopy = manager;
  sourceCopy = source;
  obj = client;
  clientCopy = client;
  v14 = intentCopy;
  v160 = clientCopy;
  v15 = TUDefaultLog(clientCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy5 = intentCopy;
    v173 = 2048;
    triggerMethod = [(TUDialRequest *)intentCopy triggerMethod];
    _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "intent: %@ intent.triggerMethod: %ld", buf, 0x16u);
  }

  v153 = [objc_opt_class() originatingUITypeForExecutionContext:{-[TUDialRequest _executionContext](intentCopy, "_executionContext")}];
  CUTWeakLinkClass();
  CUTWeakLinkClass();
  CUTWeakLinkClass();
  v16 = CUTWeakLinkSymbol();
  v161 = intentCopy;
  if ([(TUDialRequest *)intentCopy _idiom]!= 4)
  {
    v163 = 0;
    _originatingDeviceRapportEffectiveIdentifier2 = 0;
    v162 = 0;
    v155 = 1;
    goto LABEL_22;
  }

  selfCopy = self;
  _originatingDeviceIDSIdentifier = [(TUDialRequest *)intentCopy _originatingDeviceIDSIdentifier];
  if ([_originatingDeviceIDSIdentifier length])
  {
    [(TUDialRequest *)intentCopy _isOwnedByCurrentUser];
    v20 = v19 = sourceCopy;
    bOOLValue = [v20 BOOLValue];

    sourceCopy = v19;
    v14 = intentCopy;

    if (bOOLValue)
    {
      _originatingDeviceIDSIdentifier2 = [(TUDialRequest *)intentCopy _originatingDeviceIDSIdentifier];
      v23 = TUDefaultLog(_originatingDeviceIDSIdentifier2);
      v162 = _originatingDeviceIDSIdentifier2;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = _originatingDeviceIDSIdentifier2;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceIDSIdentifier: %@", buf, 0xCu);
      }

      v163 = 0;
      _originatingDeviceRapportEffectiveIdentifier2 = 0;
      self = selfCopy;
LABEL_20:

      v155 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  _originatingDeviceRapportMediaSystemIdentifier = [(TUDialRequest *)v14 _originatingDeviceRapportMediaSystemIdentifier];

  v155 = _originatingDeviceRapportMediaSystemIdentifier == 0;
  if (_originatingDeviceRapportMediaSystemIdentifier)
  {
    _originatingDeviceRapportMediaSystemIdentifier2 = [(TUDialRequest *)v14 _originatingDeviceRapportMediaSystemIdentifier];
    v26 = TUDefaultLog(_originatingDeviceRapportMediaSystemIdentifier2);
    self = selfCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = _originatingDeviceRapportMediaSystemIdentifier2;
      _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "Intent contains an _originatingDeviceRapportMediaSystemIdentifier: %@", buf, 0xCu);
    }
  }

  else
  {
    _originatingDeviceRapportMediaSystemIdentifier2 = 0;
    self = selfCopy;
  }

  _originatingDeviceRapportEffectiveIdentifier = [(TUDialRequest *)v14 _originatingDeviceRapportEffectiveIdentifier];

  v163 = _originatingDeviceRapportMediaSystemIdentifier2;
  if (_originatingDeviceRapportEffectiveIdentifier)
  {
    _originatingDeviceRapportEffectiveIdentifier2 = [(TUDialRequest *)v14 _originatingDeviceRapportEffectiveIdentifier];
    v23 = TUDefaultLog(_originatingDeviceRapportEffectiveIdentifier2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = _originatingDeviceRapportEffectiveIdentifier2;
      _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceRapportEffectiveIdentifier: %@", buf, 0xCu);
    }

    v162 = 0;
    goto LABEL_20;
  }

  _originatingDeviceRapportEffectiveIdentifier2 = 0;
  v162 = 0;
LABEL_22:
  if (objc_opt_isKindOfClass())
  {
    v28 = v14;
    v29 = TUDefaultLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      audioRoute = [v28 audioRoute];
      ttyType = [v28 ttyType];
      preferredCallProvider = [v28 preferredCallProvider];
      *buf = 134218496;
      selfCopy5 = audioRoute;
      v173 = 2048;
      triggerMethod = ttyType;
      v175 = 2048;
      v176 = preferredCallProvider;
      _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, "Start call intent has audioRoute: %ld ttyType: %ld preferredCallProvider: %ld", buf, 0x20u);
    }

    contacts = [v28 contacts];
    firstObject = [contacts firstObject];

    v35 = [v28 callCapability]== 2;
    if ([v28 audioRoute]== 1)
    {
      v36 = TUDefaultLog(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v36, OS_LOG_TYPE_DEFAULT, "Intent contains a speakerphone audio route, setting audioSourceIdentifier to TUCallSourceIdentifierSpeakerRoute", buf, 2u);
      }

      v37 = &TUCallSourceIdentifierSpeakerRoute;
    }

    else
    {
      if (!v16 || (v46 = [v28 audioRoute], v46 != *v16))
      {
        v53 = firstObject;
        recordDeviceUID = [v28 recordDeviceUID];
        uUIDString = [recordDeviceUID UUIDString];
        v56 = [uUIDString length];

        if (v56)
        {
          recordDeviceUID2 = [v28 recordDeviceUID];
          uUIDString2 = [recordDeviceUID2 UUIDString];

          v59 = TUDefaultLog(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy5 = uUIDString2;
            _os_log_impl(&dword_1956FD000, v59, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceUID, setting audioSourceIdentifier to %@", buf, 0xCu);
          }
        }

        else
        {
          recordDeviceIdentifier = [v28 recordDeviceIdentifier];
          v74 = [recordDeviceIdentifier length];

          if (v74)
          {
            uUIDString2 = [v28 recordDeviceIdentifier];
            v75 = TUDefaultLog(uUIDString2);
            firstObject = v53;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy5 = uUIDString2;
              _os_log_impl(&dword_1956FD000, v75, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceIdentifier, setting audioSourceIdentifier to %@", buf, 0xCu);
            }

LABEL_67:
            v51 = [objc_opt_class() dialRequestTypeForIntentDestinationType:{-[NSObject destinationType](v28, "destinationType")}];
            if (_TUIsInternalInstall() && enabledCopy && [v28 destinationType]== 2)
            {
              v76 = TUDefaultLog(2);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v76, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
              }

              v51 = 0;
            }

            v52 = [objc_opt_class() ttyTypeForIntentTTYType:{-[NSObject ttyType](v28, "ttyType")}];
            if (!v52)
            {
              if ([v28 _idiom]== 4)
              {
                v77 = TUDefaultLog(4);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v77, OS_LOG_TYPE_DEFAULT, "Request is from a homepod, setting ttyType to none", buf, 2u);
                }

                v52 = 1;
              }

              else
              {
                v52 = 0;
              }
            }

            personHandle = [(TUDialRequest *)firstObject personHandle];
            emergencyType = [personHandle emergencyType];

            if (emergencyType == 1)
            {
              emergencyProvider = [managerCopy emergencyProvider];
              if (_TUIsInternalInstall() && enabledCopy && [v28 destinationType]== 2)
              {
                v81 = TUDefaultLog(2);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v81, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
                }

LABEL_90:
                v51 = 0;
LABEL_100:
                v92 = TUDefaultLog(voicemailProvider);
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  selfCopy5 = emergencyProvider;
                  _os_log_impl(&dword_1956FD000, v92, OS_LOG_TYPE_DEFAULT, "Determined call intent provider: %@", buf, 0xCu);
                }

                goto LABEL_138;
              }
            }

            else
            {
              if (v51 == 2)
              {
                voicemailProvider = [managerCopy voicemailProvider];
                emergencyProvider = voicemailProvider;
                goto LABEL_100;
              }

              if (v51 != 1)
              {
                if (v51)
                {
                  emergencyProvider = 0;
                  goto LABEL_100;
                }

                v156 = objc_opt_class();
                v82 = v52;
                preferredCallProvider2 = [v28 preferredCallProvider];
                callRecordToCallBack = [v28 callRecordToCallBack];
                [callRecordToCallBack providerId];
                v86 = v85 = firstObject;
                callCapability = [v28 callCapability];
                v88 = preferredCallProvider2;
                v52 = v82;
                v89 = [v156 providerForIntentPreferredCallProvider:v88 recentCallProviderId:v86 callCapability:callCapability providerManager:managerCopy];

                firstObject = v85;
                emergencyProvider = v89;
                goto LABEL_90;
              }

              emergencyProvider = [managerCopy emergencyProvider];
            }

            voicemailProvider = [v28 triggerMethod];
            if (voicemailProvider == 4 && (voicemailProvider = [(TUDialRequest *)uUIDString2 length]) == 0)
            {
              v90 = TUDefaultLog(0);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v90, OS_LOG_TYPE_DEFAULT, "It's an emergency call. Siri was triggered by HeySiri, and audioSourceIdentifier isn't set already. setting audioSourceIdentifier to speaker phone.", buf, 2u);
              }

              v91 = @"TUCallSourceIdentifierSpeakerRoute";
              v51 = 1;
              uUIDString2 = v91;
            }

            else
            {
              v51 = 1;
            }

            goto LABEL_100;
          }

          uUIDString2 = 0;
        }

        firstObject = v53;
        goto LABEL_67;
      }

      v47 = TUDefaultLog(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v47, OS_LOG_TYPE_DEFAULT, "Intent contains a Hey Siri audio route, setting audioSourceIdentifier to TUCallSourceIdentifierHeySiri", buf, 2u);
      }

      v37 = &TUCallSourceIdentifierHeySiri;
    }

    uUIDString2 = *v37;
    goto LABEL_67;
  }

  v38 = managerCopy;
  if (objc_opt_isKindOfClass())
  {
    v28 = v14;
    v39 = TUDefaultLog(v28);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      audioRoute2 = [v28 audioRoute];
      ttyType2 = [v28 ttyType];
      preferredCallProvider3 = [v28 preferredCallProvider];
      *buf = 134218496;
      selfCopy5 = audioRoute2;
      v173 = 2048;
      triggerMethod = ttyType2;
      v175 = 2048;
      v176 = preferredCallProvider3;
      _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "Start call audio intent has audioRoute: %ld ttyType: %ld preferredCallProvider: %ld", buf, 0x20u);
    }

    contacts2 = [v28 contacts];
    firstObject = [contacts2 firstObject];

    if ([v28 audioRoute]== 1)
    {
      v44 = TUDefaultLog(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v44, OS_LOG_TYPE_DEFAULT, "Intent contains a speakerphone audio route, setting audioSourceIdentifier to TUCallSourceIdentifierSpeakerRoute", buf, 2u);
      }

      v45 = &TUCallSourceIdentifierSpeakerRoute;
    }

    else
    {
      if (!v16 || (v60 = [v28 audioRoute], v60 != *v16))
      {
        v66 = firstObject;
        recordDeviceUID3 = [v28 recordDeviceUID];
        uUIDString3 = [recordDeviceUID3 UUIDString];
        v69 = [uUIDString3 length];

        if (v69)
        {
          recordDeviceUID4 = [v28 recordDeviceUID];
          uUIDString2 = [recordDeviceUID4 UUIDString];

          v72 = TUDefaultLog(v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy5 = uUIDString2;
            _os_log_impl(&dword_1956FD000, v72, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceUID, setting audioSourceIdentifier to %@", buf, 0xCu);
          }
        }

        else
        {
          recordDeviceIdentifier2 = [v28 recordDeviceIdentifier];
          v94 = [recordDeviceIdentifier2 length];

          if (v94)
          {
            uUIDString2 = [v28 recordDeviceIdentifier];
            v95 = TUDefaultLog(uUIDString2);
            firstObject = v66;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy5 = uUIDString2;
              _os_log_impl(&dword_1956FD000, v95, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceIdentifier, setting audioSourceIdentifier to %@", buf, 0xCu);
            }

LABEL_107:
            v51 = [objc_opt_class() dialRequestTypeForIntentDestinationType:{-[NSObject destinationType](v28, "destinationType")}];
            if (_TUIsInternalInstall() && enabledCopy && [v28 destinationType]== 2)
            {
              v96 = TUDefaultLog(2);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v96, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
              }

              v51 = 0;
            }

            v52 = [objc_opt_class() ttyTypeForIntentTTYType:{-[NSObject ttyType](v28, "ttyType")}];
            if (!v52)
            {
              if ([v28 _idiom]== 4)
              {
                v97 = TUDefaultLog(4);
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v97, OS_LOG_TYPE_DEFAULT, "Request is from a homepod, setting ttyType to none", buf, 2u);
                }

                v52 = 1;
              }

              else
              {
                v52 = 0;
              }
            }

            personHandle2 = [(TUDialRequest *)firstObject personHandle];
            emergencyType2 = [personHandle2 emergencyType];

            if (emergencyType2 == 1)
            {
              emergencyProvider = [managerCopy emergencyProvider];
              destinationType = _TUIsInternalInstall();
              v51 = 1;
              if (destinationType && enabledCopy)
              {
                destinationType = [v28 destinationType];
                if (destinationType == 2)
                {
                  v101 = TUDefaultLog(2);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1956FD000, v101, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
                  }

                  v51 = 0;
                }

                else
                {
                  v51 = 1;
                }
              }

              goto LABEL_135;
            }

            if (v51 == 2)
            {
              destinationType = [managerCopy voicemailProvider];
            }

            else if (v51 == 1)
            {
              destinationType = [managerCopy emergencyProvider];
            }

            else
            {
              if (v51)
              {
                emergencyProvider = 0;
                goto LABEL_135;
              }

              destinationType = [objc_opt_class() providerForIntentPreferredCallProvider:-[NSObject preferredCallProvider](v28 recentCallProviderId:"preferredCallProvider") callCapability:0 providerManager:{1, managerCopy}];
            }

            emergencyProvider = destinationType;
LABEL_135:
            v102 = TUDefaultLog(destinationType);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy5 = emergencyProvider;
              _os_log_impl(&dword_1956FD000, v102, OS_LOG_TYPE_DEFAULT, "Determined audio call intent provider: %@", buf, 0xCu);
            }

            v35 = 0;
            goto LABEL_138;
          }

          uUIDString2 = 0;
        }

        firstObject = v66;
        goto LABEL_107;
      }

      v61 = TUDefaultLog(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v61, OS_LOG_TYPE_DEFAULT, "Intent contains a Hey Siri audio route, setting audioSourceIdentifier to TUCallSourceIdentifierHeySiri", buf, 2u);
      }

      v45 = &TUCallSourceIdentifierHeySiri;
    }

    uUIDString2 = *v45;
    goto LABEL_107;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    firstObject = 0;
    v62 = 0;
    v63 = 0;
    identifier = 0;
    v65 = 0;
    emergencyProvider = 0;
    goto LABEL_182;
  }

  contacts3 = [(TUDialRequest *)v14 contacts];
  firstObject = [contacts3 firstObject];

  emergencyProvider = [managerCopy faceTimeProvider];
  v28 = TUDefaultLog(emergencyProvider);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy5 = emergencyProvider;
    _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "Determined video call intent provider: %@", buf, 0xCu);
  }

  uUIDString2 = 0;
  v51 = 0;
  v52 = 0;
  v35 = 1;
LABEL_138:

  if (!emergencyProvider)
  {
    v63 = uUIDString2;
    v62 = 0;
    identifier = 0;
    v65 = 0;
    v38 = managerCopy;
    goto LABEL_182;
  }

  v157 = emergencyProvider;
  v149 = v52;
  v104 = TUDefaultLog(v103);
  v159 = firstObject;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    personHandle3 = [(TUDialRequest *)firstObject personHandle];
    personHandle4 = [(TUDialRequest *)firstObject personHandle];
    value = [personHandle4 value];
    contactIdentifier = [(TUDialRequest *)firstObject contactIdentifier];
    *buf = 138413058;
    selfCopy5 = v159;
    v173 = 2112;
    triggerMethod = personHandle3;
    v175 = 2112;
    v176 = value;
    v177 = 2112;
    v178 = contactIdentifier;
    _os_log_impl(&dword_1956FD000, v104, OS_LOG_TYPE_DEFAULT, "Determining destinationID and contactIdentifier for INPerson: %@ (personHandle=%@, personHandle.value=%@, contactIdentifier=%@)", buf, 0x2Au);

    firstObject = v159;
  }

  personHandle5 = [(TUDialRequest *)firstObject personHandle];
  value2 = [personHandle5 value];
  if ([value2 length])
  {
    contactIdentifier2 = [(TUDialRequest *)firstObject contactIdentifier];
    v112 = [contactIdentifier2 length];

    if (v112)
    {
      v65 = [TUHandle handleWithPerson:firstObject];
      contactIdentifier3 = [(TUDialRequest *)firstObject contactIdentifier];
      identifier = contactIdentifier3;
      goto LABEL_154;
    }
  }

  else
  {
  }

  if (firstObject)
  {
    if (sourceCopy)
    {
      contactStore = sourceCopy;
    }

    else
    {
      contactStore = [objc_opt_class() contactStore];
    }

    v115 = contactStore;
    v168 = 0;
    v116 = [(TUDialRequest *)self _contactFromINPerson:firstObject contactsDataSource:contactStore bestGuessHandle:&v168];
    v117 = v168;
    v118 = TUDefaultLog(v117);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = v116;
      _os_log_impl(&dword_1956FD000, v118, OS_LOG_TYPE_DEFAULT, "Obtained CNContact from INPerson: %@", buf, 0xCu);
    }

    v65 = v117;
    identifier = [(TUDialRequest *)v116 identifier];
  }

  else
  {
    identifier = 0;
    v65 = 0;
  }

LABEL_154:
  v119 = TUDefaultLog(contactIdentifier3);
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy5 = v65;
    v173 = 2112;
    triggerMethod = identifier;
    _os_log_impl(&dword_1956FD000, v119, OS_LOG_TYPE_DEFAULT, "Using the following handle and contactIdentifier: %@, %@", buf, 0x16u);
  }

  telephonyProvider = [managerCopy telephonyProvider];
  v121 = TUDefaultLog(telephonyProvider);
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
    *buf = 138412290;
    selfCopy5 = prioritizedSenderIdentities;
    _os_log_impl(&dword_1956FD000, v121, OS_LOG_TYPE_DEFAULT, "Sender identities the device holds %@", buf, 0xCu);
  }

  prioritizedSenderIdentities2 = [telephonyProvider prioritizedSenderIdentities];
  v152 = sourceCopy;
  v150 = v35;
  v148 = v51;
  if ([prioritizedSenderIdentities2 count] < 2)
  {
    selfCopy6 = self;
    self = 0;
    v151 = 0;
    firstObject2 = 0;
    v136 = 0;
LABEL_175:

    goto LABEL_176;
  }

  v124 = [identifier length];

  if (v124)
  {
    v147 = uUIDString2;
    v125 = MEMORY[0x1E695CD58];
    v170 = identifier;
    v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
    v127 = [v125 predicateForContactsWithIdentifiers:v126];

    descriptorForRequiredKeys = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
    v169 = descriptorForRequiredKeys;
    prioritizedSenderIdentities2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1];

    v167 = 0;
    v151 = v127;
    v129 = [sourceCopy unifiedContactsMatchingPredicate:v127 keysToFetch:prioritizedSenderIdentities2 error:&v167];
    v130 = v167;
    v131 = v130;
    v146 = v129;
    if (!v129)
    {
      selfCopy6 = self;
      v135 = TUDefaultLog(v130);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy5 = v159;
        v173 = 2112;
        triggerMethod = v131;
        _os_log_impl(&dword_1956FD000, v135, OS_LOG_TYPE_DEFAULT, "[WARN] Error obtaining contact from INPerson %@: %@", buf, 0x16u);
      }

      self = 0;
      firstObject2 = 0;
      v136 = v131;
      goto LABEL_174;
    }

    firstObject2 = [v129 firstObject];
    selfCopy6 = self;
    contactGeminiManager = [(TUDialRequest *)self contactGeminiManager];
    v166 = v131;
    v135 = [contactGeminiManager bestSenderIdentityForContact:firstObject2 error:&v166];
    v136 = v166;

    if (v135)
    {
      self = [v135 accountUUID];
      v138 = TUDefaultLog(self);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_1956FD000, v138, OS_LOG_TYPE_DEFAULT, "Contact preferred accountUUIDData %@", buf, 0xCu);
      }
    }

    else
    {
      if (!v136)
      {
        self = 0;
        goto LABEL_174;
      }

      v138 = TUDefaultLog(v137);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        [TUDialRequest initWithDialIntent:v136 providerManager:v138 contactsDataSource:? senderIdentityClient:? isEmergencyServicesOverrideEnabled:?];
      }

      self = 0;
    }

LABEL_174:
    uUIDString2 = v147;
    goto LABEL_175;
  }

  selfCopy6 = self;
  self = 0;
  v151 = 0;
  firstObject2 = 0;
  v136 = 0;
LABEL_176:
  firstObject = v159;
  displayName = [(TUDialRequest *)v159 displayName];
  [(TUDialRequest *)v65 setSiriDisplayName:displayName];

  emergencyProvider = [(TUDialRequest *)selfCopy6 initWithProvider:v157];
  if (emergencyProvider)
  {
    if (v65)
    {
      [MEMORY[0x1E695DFD8] setWithObject:v65];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v140 = ;
    v141 = *(emergencyProvider + 80);
    *(emergencyProvider + 80) = v140;

    objc_storeStrong((emergencyProvider + 88), identifier);
    customIdentifier = [(TUDialRequest *)v159 customIdentifier];
    v143 = *(emergencyProvider + 96);
    *(emergencyProvider + 96) = customIdentifier;

    *(emergencyProvider + 8) = v150;
    *(emergencyProvider + 72) = v148;
    *(emergencyProvider + 112) = v149;
    *(emergencyProvider + 24) = v153;
    objc_storeStrong((emergencyProvider + 104), uUIDString2);
    objc_storeStrong((emergencyProvider + 40), obj);
    objc_storeStrong((emergencyProvider + 152), v162);
    objc_storeStrong((emergencyProvider + 160), v163);
    objc_storeStrong((emergencyProvider + 168), _originatingDeviceRapportEffectiveIdentifier2);
    *(emergencyProvider + 14) = v155;
    objc_storeStrong((emergencyProvider + 192), self);
    *(emergencyProvider + 15) = 0;
  }

  v63 = uUIDString2;

  v38 = managerCopy;
  sourceCopy = v152;
  v62 = v157;
LABEL_182:

  v144 = emergencyProvider;
  return v144;
}

- (TUDialRequest)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUDialRequest init]"];
  v6 = [v4 stringWithFormat:@"Don't call %@, call designated initializer instead.", v5];
  NSLog(&cfstr_TuassertionFai.isa, v6);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUDialRequest init]"];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TUDialRequest.m" lineNumber:699 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (void)setHandle:(id)handle
{
  if (handle)
  {
    [MEMORY[0x1E695DFD8] setWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;
  [(TUDialRequest *)self setHandles:v4];
}

+ (id)stringForDialType:(int64_t)type
{
  if (type >= 3)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %ld>", type];
  }

  else
  {
    type = off_1E7427230[type];
  }

  return type;
}

+ (int64_t)handleTypeForQueryItem:(id)item
{
  itemCopy = item;
  name = [itemCopy name];
  v5 = [name isEqualToString:@"handleType"];

  if (v5)
  {
    value = [itemCopy value];
    v7 = value;
    if (value)
    {
      if ([value isEqualToString:@"emailAddress"])
      {
        v8 = 3;
      }

      else if ([v7 isEqualToString:@"generic"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"phoneNumber"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)stringForTTYType:(int64_t)type
{
  if (type >= 4)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %ld>", type];
  }

  else
  {
    type = off_1E7427248[type];
  }

  return type;
}

+ (int64_t)ttyTypeForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"none"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"direct"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"relay"])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)dialRequestTypeForIntentDestinationType:(int64_t)type
{
  if (type == 3)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

+ (int64_t)intentTTYTypeForTTYType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int64_t)ttyTypeForIntentTTYType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (id)providerForIntentPreferredCallProvider:(int64_t)provider recentCallProviderId:(id)id callCapability:(int64_t)capability providerManager:(id)manager
{
  idCopy = id;
  managerCopy = manager;
  v11 = managerCopy;
  v12 = 0;
  if (provider <= 1)
  {
    if (provider)
    {
      if (provider != 1)
      {
        goto LABEL_16;
      }

      telephonyProvider = [managerCopy telephonyProvider];
      goto LABEL_15;
    }

    if (capability < 2)
    {
      telephonyProvider = [managerCopy defaultProvider];
LABEL_15:
      v12 = telephonyProvider;
      goto LABEL_16;
    }

    if (capability == 2)
    {
LABEL_14:
      telephonyProvider = [managerCopy faceTimeProvider];
      goto LABEL_15;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_16;
  }

  if (provider == 2)
  {
    goto LABEL_14;
  }

  if (provider != 3)
  {
    goto LABEL_16;
  }

  if (!idCopy)
  {
    goto LABEL_19;
  }

  v12 = [managerCopy providerWithIdentifier:idCopy];
  v14 = TUDefaultLog(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [TUDialRequest providerForIntentPreferredCallProvider:v12 recentCallProviderId:v14 callCapability:? providerManager:?];
  }

LABEL_16:

  return v12;
}

+ (int)originatingUITypeForExecutionContext:(int64_t)context
{
  if (context > 0xA)
  {
    return 11;
  }

  else
  {
    return dword_19589E4F0[context];
  }
}

+ (id)stringForOriginatingUIType:(int)type
{
  if ((type - 1) > 0x3F)
  {
    return 0;
  }

  else
  {
    return off_1E7427268[type - 1];
  }
}

- (void)setOriginatingUIType:(int)type
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = type;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Setting originating UI type to =%d", v6, 8u);
  }

  self->_originatingUIType = type;
}

+ (int)originatingUITypeForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"dialer"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"emergencyDialerLockscreen"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"sideButtonPresses"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"volumeLockHold"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"sideButtonHold"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"fallDetection"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"fallDetectionUserResponsive"])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:@"ecg"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"phoneRecents"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"phoneFavorites"])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:@"facetimeRecents"])
    {
      v5 = 14;
    }

    else if ([v4 isEqualToString:@"facetimeLink"])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:@"contactCard"])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:@"messagesContactCard"])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:@"messagesAvatarBar"])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:@"messagesBubble"])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:@"facetimeMissedCallNotification"])
    {
      v5 = 23;
    }

    else if ([v4 isEqualToString:@"facetimeGFTNotification"])
    {
      v5 = 24;
    }

    else if ([v4 isEqualToString:@"facetimeOngoing"])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:@"facetimeSpotlight"])
    {
      v5 = 22;
    }

    else if ([v4 isEqualToString:@"facetimeCreateCall"])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:@"crashDetection"])
    {
      v5 = 10;
    }

    else if ([v4 isEqualToString:@"crashDetectionUserResponsive"])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:@"siri"])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:@"dialerCallButtonDoubleTap"])
    {
      v5 = 26;
    }

    else if ([v4 isEqualToString:@"inCallUI"])
    {
      v5 = 27;
    }

    else if ([v4 isEqualToString:@"inCallDFR"])
    {
      v5 = 28;
    }

    else if ([v4 isEqualToString:@"assistiveAccessDialer"])
    {
      v5 = 29;
    }

    else if ([v4 isEqualToString:@"assistiveAccessContact"])
    {
      v5 = 30;
    }

    else if ([v4 isEqualToString:@"assistiveAccessRecents"])
    {
      v5 = 31;
    }

    else if ([v4 isEqualToString:@"messagesScreenSharing"])
    {
      v5 = 32;
    }

    else if ([v4 isEqualToString:@"fromStaging"])
    {
      v5 = 33;
    }

    else if ([v4 isEqualToString:@"fromApp"])
    {
      v5 = 34;
    }

    else if ([v4 isEqualToString:@"tuTool"])
    {
      v5 = 35;
    }

    else if ([v4 isEqualToString:@"fromTests"])
    {
      v5 = 36;
    }

    else if ([v4 isEqualToString:@"userActivity"])
    {
      v5 = 37;
    }

    else if ([v4 isEqualToString:@"explicitCallTransfer"])
    {
      v5 = 38;
    }

    else if ([v4 isEqualToString:@"callButtonTap"])
    {
      v5 = 39;
    }

    else if ([v4 isEqualToString:@"fieldModeSendButtonTap"])
    {
      v5 = 40;
    }

    else if ([v4 isEqualToString:@"dialVoicemail"])
    {
      v5 = 41;
    }

    else if ([v4 isEqualToString:@"voiceDial"])
    {
      v5 = 42;
    }

    else if ([v4 isEqualToString:@"handoff"])
    {
      v5 = 43;
    }

    else if ([v4 isEqualToString:@"fromNAC"])
    {
      v5 = 44;
    }

    else if ([v4 isEqualToString:@"answerIncoming"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"answerIncomingFromCarPlay"))
    {
      v5 = 45;
    }

    else if ([v4 isEqualToString:@"answerIncomingCarPlayRecents"])
    {
      v5 = 47;
    }

    else if ([v4 isEqualToString:@"answerIncomingCarPlayCallBackButtonTap"])
    {
      v5 = 48;
    }

    else if ([v4 isEqualToString:@"recentsSearchCall"])
    {
      v5 = 49;
    }

    else if ([v4 isEqualToString:@"recentsSearchVoicemail"])
    {
      v5 = 50;
    }

    else if ([v4 isEqualToString:@"fallbackToTelephony"])
    {
      v5 = 51;
    }

    else if ([v4 isEqualToString:@"carPlayDashboard"])
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUSenderIdentity)localSenderIdentity
{
  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  if (!localSenderIdentityAccountUUID || (-[TUDialRequest provider](self, "provider"), v4 = objc_claimAutoreleasedReturnValue(), [v4 senderIdentityForAccountUUID:localSenderIdentityAccountUUID], firstObject = objc_claimAutoreleasedReturnValue(), v4, !firstObject))
  {
    provider = [(TUDialRequest *)self provider];
    prioritizedSenderIdentities = [provider prioritizedSenderIdentities];
    firstObject = [prioritizedSenderIdentities firstObject];
  }

  return firstObject;
}

- (id)isEmergencyNumberBlock
{
  isEmergencyNumberBlock = self->_isEmergencyNumberBlock;
  if (!isEmergencyNumberBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__TUDialRequest_isEmergencyNumberBlock__block_invoke;
    v8[3] = &unk_1E74271B0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_isEmergencyNumberBlock;
    self->_isEmergencyNumberBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isEmergencyNumberBlock = self->_isEmergencyNumberBlock;
  }

  v6 = _Block_copy(isEmergencyNumberBlock);

  return v6;
}

uint64_t __39__TUDialRequest_isEmergencyNumberBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained senderIdentityClient];
    v10 = [v6 UUID];
    v11 = [v9 isEmergencyNumberForDigits:v5 senderIdentityUUID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)isEmergencyNumberOrIsWhitelistedBlock
{
  isEmergencyNumberOrIsWhitelistedBlock = self->_isEmergencyNumberOrIsWhitelistedBlock;
  if (!isEmergencyNumberOrIsWhitelistedBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__TUDialRequest_isEmergencyNumberOrIsWhitelistedBlock__block_invoke;
    v8[3] = &unk_1E74271B0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_isEmergencyNumberOrIsWhitelistedBlock;
    self->_isEmergencyNumberOrIsWhitelistedBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isEmergencyNumberOrIsWhitelistedBlock = self->_isEmergencyNumberOrIsWhitelistedBlock;
  }

  v6 = _Block_copy(isEmergencyNumberOrIsWhitelistedBlock);

  return v6;
}

uint64_t __54__TUDialRequest_isEmergencyNumberOrIsWhitelistedBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained senderIdentityClient];
    v10 = [v6 UUID];
    v11 = [v9 isWhitelistedEmergencyNumberForDigits:v5 senderIdentityUUID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)destinationID
{
  handle = [(TUDialRequest *)self handle];
  value = [handle value];

  return value;
}

- (void)setDestinationID:(id)d
{
  dCopy = d;
  handle = [(TUDialRequest *)self handle];
  value = [handle value];
  v6 = TUStringsAreEqualOrNil(value, dCopy);

  if ((v6 & 1) == 0)
  {
    if (dCopy)
    {
      v7 = [TUHandle handleWithDestinationID:?];
      [(TUDialRequest *)self setHandle:v7];
    }

    else
    {
      [(TUDialRequest *)self setHandle:?];
    }
  }
}

- (id)bundleIdentifier
{
  provider = [(TUDialRequest *)self provider];
  bundleIdentifier = [provider bundleIdentifier];

  return bundleIdentifier;
}

- (id)sanitizedHandles
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  handles = [(TUDialRequest *)self handles];
  v5 = [handles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(handles);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        normalizedValue = [v9 normalizedValue];
        controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
        v12 = [normalizedValue stringByTrimmingCharactersInSet:controlCharacterSet];

        if (![v12 length])
        {
          value = [v9 value];
          controlCharacterSet2 = [MEMORY[0x1E696AB08] controlCharacterSet];
          v15 = [value stringByTrimmingCharactersInSet:controlCharacterSet2];

          v12 = v15;
        }

        if ([v12 length])
        {
          [v3 addObject:v12];
        }
      }

      v6 = [handles countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (id)contactNamesByHandleWithContactsDataSource:(id)source
{
  v30 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v4 = MEMORY[0x1E695DF90];
  handles = [(TUDialRequest *)self handles];
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(handles, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(TUDialRequest *)self sanitizedHandles];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
        v28 = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

        if ([v11 length])
        {
          contactIdentifier = [(TUDialRequest *)self contactIdentifier];
          v15 = [contactIdentifier length];

          if (v15)
          {
            contactIdentifier2 = [(TUDialRequest *)self contactIdentifier];
            v17 = [sourceCopy contactForIdentifier:contactIdentifier2 keysToFetch:v13];
          }

          else
          {
            v17 = [sourceCopy contactForDestinationId:v11 keysToFetch:v13];
          }

          displayName = [v17 displayName];
          if ([displayName length])
          {
            v19 = displayName;
          }

          else
          {
            v19 = v11;
          }

          [v6 setObject:v19 forKeyedSubscript:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v20 = [v6 copy];

  return v20;
}

+ (void)setCallProviderManagerGeneratorBlock:(id)block
{
  callProviderManagerGeneratorBlock = _Block_copy(block);

  MEMORY[0x1EEE66BB8]();
}

+ (void)setSenderIdentityClientGeneratorBlock:(id)block
{
  senderIdentityClientGeneratorBlock = _Block_copy(block);

  MEMORY[0x1EEE66BB8]();
}

- (CNGeminiManager)contactGeminiManager
{
  contactGeminiManager = self->_contactGeminiManager;
  if (!contactGeminiManager)
  {
    v4 = objc_alloc(MEMORY[0x1E695CEB0]);
    callProviderManagerGeneratorBlock = [objc_opt_class() callProviderManagerGeneratorBlock];
    v6 = callProviderManagerGeneratorBlock[2]();
    v7 = [v4 initWithCallProviderManager:v6];
    v8 = self->_contactGeminiManager;
    self->_contactGeminiManager = v7;

    contactGeminiManager = self->_contactGeminiManager;
  }

  return contactGeminiManager;
}

+ (void)setLegacyAddressBookIdentifierToContactIdentifierTransformBlock:(id)block
{
  legacyAddressBookIdentifierToContactIdentifierTransformBlock = _Block_copy(block);

  MEMORY[0x1EEE66BB8]();
}

+ (id)legacyAddressBookIdentifierToContactIdentifierTransformBlock
{
  v2 = _Block_copy(legacyAddressBookIdentifierToContactIdentifierTransformBlock);

  return v2;
}

- (BOOL)BOOLValueForQueryItemWithName:(id)name inURLComponents:(id)components
{
  v4 = [components firstQueryItemWithName:name];
  value = [v4 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (id)callProviderFromURLComponents:(id)components handles:(id)handles dialType:(int64_t)type originatingUIType:(int)iType isSOS:(BOOL)s ttyType:(int64_t)ttyType video:(BOOL *)video featureFlags:(id)self0
{
  sCopy = s;
  v12 = *&iType;
  videoCopy = video;
  componentsCopy = components;
  handlesCopy = handles;
  flagsCopy = flags;
  callProviderManagerGeneratorBlock = [objc_opt_class() callProviderManagerGeneratorBlock];
  v19 = callProviderManagerGeneratorBlock[2]();

  scheme = [componentsCopy scheme];
  if ([MEMORY[0x1E695DFF8] isDefaultCallingAppScheme:scheme] && ((TUDefaultAppsEnabled(flagsCopy) & 1) != 0 || objc_msgSend(flagsCopy, "uplevelFTAEnabled")))
  {
    v21 = handlesCopy;
    faceTimeProvider = [objc_opt_class() defaultAppCallProviderForDialType:type originatingUIType:v12 isSOS:sCopy handles:handlesCopy ttyType:ttyType];
LABEL_5:
    v23 = 0;
    goto LABEL_16;
  }

  tUDialRequestSchemeTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeTelephony];
  if ([scheme isEqualToIgnoringCase:tUDialRequestSchemeTelephony] & 1) != 0 || (objc_msgSend(scheme, "isEqualToIgnoringCase:", @"telprompt") & 1) != 0 || (objc_msgSend(scheme, "isEqualToIgnoringCase:", @"telemergencycall") & 1) != 0 || (objc_msgSend(scheme, "isEqualToIgnoringCase:", @"callto"))
  {
    goto LABEL_12;
  }

  tUDialRequestSchemeForceTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
  if ([scheme isEqualToIgnoringCase:tUDialRequestSchemeForceTelephony])
  {

LABEL_12:
LABEL_13:
    telephonyProvider = [v19 telephonyProvider];
LABEL_14:
    faceTimeProvider = telephonyProvider;
    v23 = 0;
LABEL_15:
    v21 = handlesCopy;
    goto LABEL_16;
  }

  tUDialRequestSchemeForceTelephonyPrompt = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
  v29 = [scheme isEqualToIgnoringCase:tUDialRequestSchemeForceTelephonyPrompt];

  if (v29)
  {
    goto LABEL_13;
  }

  tUDialRequestSchemeFaceTimeAudio = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTimeAudio];
  if ([scheme isEqualToIgnoringCase:tUDialRequestSchemeFaceTimeAudio] & 1) != 0 || (objc_msgSend(scheme, "isEqualToIgnoringCase:", @"facetime-audio-prompt"))
  {
    goto LABEL_26;
  }

  tUDialRequestSchemeFaceTime = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTime];
  if ([scheme isEqualToIgnoringCase:tUDialRequestSchemeFaceTime])
  {

LABEL_26:
LABEL_27:
    faceTimeProvider = [v19 faceTimeProvider];
    tUDialRequestSchemeFaceTime2 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTime];
    if ([scheme isEqualToIgnoringCase:tUDialRequestSchemeFaceTime2])
    {

      v21 = handlesCopy;
    }

    else
    {
      v33 = [scheme isEqualToIgnoringCase:@"facetime-prompt"];

      v21 = handlesCopy;
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v23 = 1;
    goto LABEL_16;
  }

  v34 = [scheme isEqualToIgnoringCase:@"facetime-prompt"];

  if (v34)
  {
    goto LABEL_27;
  }

  if ([scheme isEqualToIgnoringCase:@"tincan"])
  {
    telephonyProvider = [v19 tinCanProvider];
    goto LABEL_14;
  }

  v21 = handlesCopy;
  if (([scheme isEqualToIgnoringCase:@"superbox-audio"] & 1) == 0 && !objc_msgSend(scheme, "isEqualToIgnoringCase:", @"superbox-video"))
  {
    if (([scheme isEqualToIgnoringCase:@"callkit-audio"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToIgnoringCase:", @"callkit-video") & 1) != 0 || objc_msgSend(scheme, "isEqualToIgnoringCase:", @"callkit-audio-prompt"))
    {
      v35 = [(TUDialRequest *)self callProviderIdentiferFromURLComponents:componentsCopy];
      if ([v35 length])
      {
        faceTimeProvider = [v19 providerWithIdentifier:v35];
        v23 = [scheme isEqualToIgnoringCase:@"callkit-video"];
      }

      else
      {
        v23 = 0;
        faceTimeProvider = 0;
      }
    }

    else
    {
      v23 = 0;
      faceTimeProvider = 0;
    }

    goto LABEL_15;
  }

  faceTimeProvider = [v19 superboxProvider];
  v23 = [scheme isEqualToIgnoringCase:@"superbox-video"];
LABEL_16:
  if (videoCopy)
  {
    *videoCopy = v23;
  }

  return faceTimeProvider;
}

- (id)destinationIDFromURL:(id)l
{
  lCopy = l;
  host = [lCopy host];

  if (host)
  {
    host2 = [lCopy host];
    v6 = IMCopyStringWithLatinNumbers();

    user = [lCopy user];

    if (user)
    {
      v8 = MEMORY[0x1E696AEC0];
      user2 = [lCopy user];
      v10 = [v8 stringWithFormat:@"%@@%@", user2, v6];

      v6 = v10;
    }

    fragment = [lCopy fragment];

    if (fragment)
    {
      v12 = MEMORY[0x1E696AEC0];
      fragment2 = [lCopy fragment];
      v14 = [v12 stringWithFormat:@"%@#%@", v6, fragment2];

      v6 = v14;
    }

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [lCopy _destinationIDConvertingNumbersToLatin:1];
    if (v6)
    {
LABEL_7:
      controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
      v16 = [v6 stringByTrimmingCharactersInSet:controlCharacterSet];

      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (id)handleFromURL:(id)l
{
  lCopy = l;
  v5 = [(TUDialRequest *)self destinationIDFromURL:lCopy];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    v7 = [v6 firstQueryItemWithName:@"handleType"];
    if (!v7 || (v8 = [objc_opt_class() handleTypeForQueryItem:v7]) == 0 || (v9 = -[TUHandle initWithType:value:]([TUHandle alloc], "initWithType:value:", v8, v5)) == 0)
    {
      v9 = [TUHandle handleWithDestinationID:v5];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contactIdentifierFromURLComponents:(id)components
{
  v3 = [components firstQueryItemWithName:@"contactIdentifier"];
  value = [v3 value];

  return value;
}

- (id)callProviderIdentiferFromURLComponents:(id)components
{
  v3 = [components firstQueryItemWithName:@"providerIdentifier"];
  value = [v3 value];

  return value;
}

- (int)legacyAddressBookIdentifierFromURLComponents:(id)components
{
  componentsCopy = components;
  v5 = [(TUDialRequest *)self legacyAddressBookIdentifierQueryItemNameFromURLComponents:componentsCopy];
  v6 = [componentsCopy firstQueryItemWithName:v5];

  if (v6)
  {
    value = [v6 value];
    intValue = [value intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (id)legacyAddressBookIdentifierQueryItemNameFromURLComponents:(id)components
{
  componentsCopy = components;
  provider = [(TUDialRequest *)self provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  v7 = @"abuid";
  if ((isTelephonyProvider & 1) == 0)
  {
    provider2 = [(TUDialRequest *)self provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if (isFaceTimeProvider)
    {
      v10 = MEMORY[0x1E695DFF8];
      scheme = [componentsCopy scheme];
      LODWORD(v10) = [v10 isDefaultCallingAppScheme:scheme];

      if (!v10)
      {
        v7 = @"uid";
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSURL)URL
{
  if ([(TUDialRequest *)self isValid])
  {
    uRLScheme = [(TUDialRequest *)self URLScheme];
    uRLHost = [(TUDialRequest *)self URLHost];
    uRLQueryItems = [(TUDialRequest *)self URLQueryItems];
    if (uRLScheme)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v6 setScheme:uRLScheme];
      [v6 setEncodedHost:uRLHost];
      [v6 setQueryItems:uRLQueryItems];
      v7 = [v6 URL];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)URLScheme
{
  provider = [(TUDialRequest *)self provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    if ([(TUDialRequest *)self dialType]== 1)
    {
      tUDialRequestSchemeForceTelephony = @"telemergencycall";
      goto LABEL_33;
    }

    featureFlags = [(TUDialRequest *)self featureFlags];
    v9 = TUDefaultAppsEnabled(featureFlags);

    if (v9)
    {
      preferDefaultApp = [(TUDialRequest *)self preferDefaultApp];
      showUIPrompt = [(TUDialRequest *)self showUIPrompt];
      if (preferDefaultApp)
      {
        if (showUIPrompt)
        {
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
        }

        else
        {
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultApp];
        }
      }

      else if (showUIPrompt)
      {
        [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
      }

      else
      {
        [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
      }
      v12 = ;
LABEL_32:
      tUDialRequestSchemeForceTelephony = v12;
      goto LABEL_33;
    }

    featureFlags2 = [(TUDialRequest *)self featureFlags];
    uplevelFTAEnabled = [featureFlags2 uplevelFTAEnabled];

    if (uplevelFTAEnabled)
    {
      tUDialRequestSchemeForceTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
      if ([(TUDialRequest *)self showUIPrompt])
      {
        tUDialRequestSchemeForceTelephonyPrompt = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];

        tUDialRequestSchemeForceTelephony = tUDialRequestSchemeForceTelephonyPrompt;
      }
    }

    else
    {
      tUDialRequestSchemeForceTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeTelephony];
      if ([(TUDialRequest *)self showUIPrompt])
      {

        tUDialRequestSchemeForceTelephony = @"telprompt";
      }
    }
  }

  else
  {
    provider2 = [(TUDialRequest *)self provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if (isFaceTimeProvider)
    {
      if ([(TUDialRequest *)self isVideo])
      {
        tUDialRequestSchemeForceTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTime];
        if ([(TUDialRequest *)self showUIPrompt])
        {

          tUDialRequestSchemeForceTelephony = @"facetime-prompt";
        }
      }

      else
      {
        tUDialRequestSchemeForceTelephony = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTimeAudio];
        if ([(TUDialRequest *)self showUIPrompt])
        {

          tUDialRequestSchemeForceTelephony = @"facetime-audio-prompt";
        }
      }
    }

    else
    {
      provider3 = [(TUDialRequest *)self provider];
      isTinCanProvider = [provider3 isTinCanProvider];

      if (isTinCanProvider)
      {
        tUDialRequestSchemeForceTelephony = @"tincan";
        goto LABEL_33;
      }

      provider4 = [(TUDialRequest *)self provider];
      isSuperboxProvider = [provider4 isSuperboxProvider];

      isVideo = [(TUDialRequest *)self isVideo];
      if (isSuperboxProvider)
      {
        v21 = @"superbox-audio";
        if (isVideo)
        {
          v21 = @"superbox-video";
        }

        v12 = v21;
        goto LABEL_32;
      }

      if (isVideo)
      {
        tUDialRequestSchemeForceTelephony = @"callkit-video";
        goto LABEL_33;
      }

      featureFlags3 = [(TUDialRequest *)self featureFlags];
      if (TUDefaultAppsEnabled(featureFlags3))
      {
        showUIPrompt2 = [(TUDialRequest *)self showUIPrompt];

        if (showUIPrompt2)
        {
          tUDialRequestSchemeForceTelephony = @"callkit-audio-prompt";
          goto LABEL_33;
        }
      }

      else
      {
      }

      tUDialRequestSchemeForceTelephony = @"callkit-audio";
    }
  }

LABEL_33:

  return tUDialRequestSchemeForceTelephony;
}

- (id)URLHost
{
  handle = [(TUDialRequest *)self handle];
  value = [handle value];

  if ([(__CFString *)value length])
  {
    handle2 = [(TUDialRequest *)self handle];
    type = [handle2 type];

    if (type == 2)
    {
      v7 = TUURLHostForTelephoneNumber(value);

      if ([(__CFString *)v7 length]&& ([(TUDialRequest *)self service]== 2 || [(TUDialRequest *)self service]== 3) && ![(TUDialRequest *)self allowProviderFallback])
      {
        value = IMFormatPhoneNumber();
      }

      else
      {
        value = v7;
      }
    }
  }

  if ([(__CFString *)value length])
  {
    uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v9 = [uRLHostAllowedCharacterSet mutableCopy];

    [v9 removeCharactersInString:@"[]:"];
    v10 = [(__CFString *)value stringByAddingPercentEncodingWithAllowedCharacters:v9];

    value = v10;
  }

  if (value)
  {
    v11 = value;
  }

  else
  {
    v11 = &stru_1F098C218;
  }

  v12 = v11;

  return v11;
}

- (id)URLQueryItems
{
  handleTypeURLQueryItem = [(TUDialRequest *)self handleTypeURLQueryItem];
  if (handleTypeURLQueryItem)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:handleTypeURLQueryItem];
  }

  else
  {
    array = 0;
  }

  isVoicemailURLQueryItem = [(TUDialRequest *)self isVoicemailURLQueryItem];
  if (isVoicemailURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:isVoicemailURLQueryItem];
  }

  providerCustomIdentifierURLQueryItem = [(TUDialRequest *)self providerCustomIdentifierURLQueryItem];
  if (providerCustomIdentifierURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:providerCustomIdentifierURLQueryItem];
  }

  localSenderIdentityUUIDURLQueryItem = [(TUDialRequest *)self localSenderIdentityUUIDURLQueryItem];
  if (localSenderIdentityUUIDURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:localSenderIdentityUUIDURLQueryItem];
  }

  localSenderIdentityAccountUUIDURLQueryItem = [(TUDialRequest *)self localSenderIdentityAccountUUIDURLQueryItem];
  if (localSenderIdentityAccountUUIDURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:localSenderIdentityAccountUUIDURLQueryItem];
  }

  upgradedCallUUIDURLQueryItem = [(TUDialRequest *)self upgradedCallUUIDURLQueryItem];
  if (upgradedCallUUIDURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:upgradedCallUUIDURLQueryItem];
  }

  contactIdentifierURLQueryItem = [(TUDialRequest *)self contactIdentifierURLQueryItem];
  if (contactIdentifierURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:contactIdentifierURLQueryItem];
  }

  callProviderIdentifierURLQueryItem = [(TUDialRequest *)self callProviderIdentifierURLQueryItem];
  if (callProviderIdentifierURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:callProviderIdentifierURLQueryItem];
  }

  audioSourceIdentifierURLQueryItem = [(TUDialRequest *)self audioSourceIdentifierURLQueryItem];
  if (audioSourceIdentifierURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:audioSourceIdentifierURLQueryItem];
  }

  forceAssistURLQueryItem = [(TUDialRequest *)self forceAssistURLQueryItem];
  if (forceAssistURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:forceAssistURLQueryItem];
  }

  suppressAssistURLQueryItem = [(TUDialRequest *)self suppressAssistURLQueryItem];
  if (suppressAssistURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:suppressAssistURLQueryItem];
  }

  dialAssistedURLQueryItem = [(TUDialRequest *)self dialAssistedURLQueryItem];
  if (dialAssistedURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:dialAssistedURLQueryItem];
  }

  ttyTypeURLQueryItem = [(TUDialRequest *)self ttyTypeURLQueryItem];
  if (ttyTypeURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:ttyTypeURLQueryItem];
  }

  originatingUIURLQueryItem = [(TUDialRequest *)self originatingUIURLQueryItem];
  if (originatingUIURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:originatingUIURLQueryItem];
  }

  noPromptURLQueryItem = [(TUDialRequest *)self noPromptURLQueryItem];
  if (noPromptURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:noPromptURLQueryItem];
  }

  launchInBackgroundQueryItem = [(TUDialRequest *)self launchInBackgroundQueryItem];
  if (launchInBackgroundQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:launchInBackgroundQueryItem];
  }

  sosURLQueryItem = [(TUDialRequest *)self sosURLQueryItem];
  if (sosURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:sosURLQueryItem];
  }

  redialURLQueryItem = [(TUDialRequest *)self redialURLQueryItem];
  if (redialURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:redialURLQueryItem];
  }

  endpointIDSDestinationURIQueryItem = [(TUDialRequest *)self endpointIDSDestinationURIQueryItem];
  if (endpointIDSDestinationURIQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:endpointIDSDestinationURIQueryItem];
  }

  endpointRapportMediaSystemIdentifierQueryItem = [(TUDialRequest *)self endpointRapportMediaSystemIdentifierQueryItem];
  if (endpointRapportMediaSystemIdentifierQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:endpointRapportMediaSystemIdentifierQueryItem];
  }

  endpointRapportEffectiveIdentifierQueryItem = [(TUDialRequest *)self endpointRapportEffectiveIdentifierQueryItem];
  if (endpointRapportEffectiveIdentifierQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:endpointRapportEffectiveIdentifierQueryItem];
  }

  shouldSuppressInCallUIQueryItem = [(TUDialRequest *)self shouldSuppressInCallUIQueryItem];
  if (shouldSuppressInCallUIQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:shouldSuppressInCallUIQueryItem];
  }

  successNotificationQueryItem = [(TUDialRequest *)self successNotificationQueryItem];
  if (successNotificationQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:successNotificationQueryItem];
  }

  failureNotificationQueryItem = [(TUDialRequest *)self failureNotificationQueryItem];
  if (failureNotificationQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:failureNotificationQueryItem];
  }

  uplinkMutedURLQueryItem = [(TUDialRequest *)self uplinkMutedURLQueryItem];
  if (uplinkMutedURLQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:uplinkMutedURLQueryItem];
  }

  allowProviderFallbackQueryItem = [(TUDialRequest *)self allowProviderFallbackQueryItem];
  if (allowProviderFallbackQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:allowProviderFallbackQueryItem];
  }

  bypassInterventionQueryItem = [(TUDialRequest *)self bypassInterventionQueryItem];
  if (bypassInterventionQueryItem)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:bypassInterventionQueryItem];
  }

  v31 = [array copy];

  return v31;
}

- (id)isVoicemailURLQueryItem
{
  if ([(TUDialRequest *)self service]== 1 && [(TUDialRequest *)self dialType]== 2)
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"isVoicemail" value:@"1"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contactIdentifierURLQueryItem
{
  contactIdentifier = [(TUDialRequest *)self contactIdentifier];

  if (contactIdentifier)
  {
    v4 = MEMORY[0x1E696AF60];
    contactIdentifier2 = [(TUDialRequest *)self contactIdentifier];
    v6 = [v4 queryItemWithName:@"contactIdentifier" value:contactIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)callProviderIdentifierURLQueryItem
{
  provider = [(TUDialRequest *)self provider];
  if ([provider isSystemProvider])
  {
    v4 = 0;
LABEL_5:

    goto LABEL_6;
  }

  provider2 = [(TUDialRequest *)self provider];
  identifier = [provider2 identifier];

  if (identifier)
  {
    v7 = MEMORY[0x1E696AF60];
    provider = [(TUDialRequest *)self provider];
    identifier2 = [provider identifier];
    v4 = [v7 queryItemWithName:@"providerIdentifier" value:identifier2];

    goto LABEL_5;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)providerCustomIdentifierURLQueryItem
{
  providerCustomIdentifier = [(TUDialRequest *)self providerCustomIdentifier];

  if (providerCustomIdentifier)
  {
    v4 = MEMORY[0x1E696AF60];
    providerCustomIdentifier2 = [(TUDialRequest *)self providerCustomIdentifier];
    v6 = [v4 queryItemWithName:@"providerCustomIdentifier" value:providerCustomIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localSenderIdentityUUIDURLQueryItem
{
  localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];

  if (localSenderIdentityUUID)
  {
    v4 = MEMORY[0x1E696AF60];
    localSenderIdentityUUID2 = [(TUDialRequest *)self localSenderIdentityUUID];
    uUIDString = [localSenderIdentityUUID2 UUIDString];
    v7 = [v4 queryItemWithName:@"localSenderIdentityUUID" value:uUIDString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localSenderIdentityAccountUUIDURLQueryItem
{
  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];

  if (localSenderIdentityAccountUUID)
  {
    v4 = MEMORY[0x1E696AF60];
    localSenderIdentityAccountUUID2 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
    uUIDString = [localSenderIdentityAccountUUID2 UUIDString];
    v7 = [v4 queryItemWithName:@"localSenderIdentityAccountUUID" value:uUIDString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)upgradedCallUUIDURLQueryItem
{
  upgradedFromCallUUID = [(TUDialRequest *)self upgradedFromCallUUID];

  if (upgradedFromCallUUID)
  {
    v4 = MEMORY[0x1E696AF60];
    upgradedFromCallUUID2 = [(TUDialRequest *)self upgradedFromCallUUID];
    uUIDString = [upgradedFromCallUUID2 UUIDString];
    v7 = [v4 queryItemWithName:@"upgradedFromCallUUID" value:uUIDString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)audioSourceIdentifierURLQueryItem
{
  audioSourceIdentifier = [(TUDialRequest *)self audioSourceIdentifier];

  if (audioSourceIdentifier)
  {
    v4 = MEMORY[0x1E696AF60];
    audioSourceIdentifier2 = [(TUDialRequest *)self audioSourceIdentifier];
    v6 = [v4 queryItemWithName:@"TUCallSourceIdentifierKey" value:audioSourceIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)forceAssistURLQueryItem
{
  if ([(TUDialRequest *)self performDialAssist]&& ![(TUDialRequest *)self performLocalDialAssist])
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"forceAssist" value:@"1"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)suppressAssistURLQueryItem
{
  if ([(TUDialRequest *)self performDialAssist]|| [(TUDialRequest *)self performLocalDialAssist])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"suppressAssist" value:@"1"];
  }

  return v3;
}

- (id)dialAssistedURLQueryItem
{
  if ([(TUDialRequest *)self isDialAssisted])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"wasAssisted" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)uplinkMutedURLQueryItem
{
  if ([(TUDialRequest *)self shouldStartWithUplinkMuted])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"uplinkMuted" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)handleTypeURLQueryItem
{
  handle = [(TUDialRequest *)self handle];

  if (handle)
  {
    v4 = MEMORY[0x1E696AF60];
    handle2 = [(TUDialRequest *)self handle];
    v6 = [v4 queryItemForHandleType:{objc_msgSend(handle2, "type")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)ttyTypeURLQueryItem
{
  if ([(TUDialRequest *)self ttyType])
  {
    v3 = MEMORY[0x1E696AF60];
    v4 = [objc_opt_class() stringForTTYType:{-[TUDialRequest ttyType](self, "ttyType")}];
    v5 = [v3 queryItemWithName:@"ttyType" value:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)originatingUIURLQueryItem
{
  v2 = [objc_opt_class() stringForOriginatingUIType:{-[TUDialRequest originatingUIType](self, "originatingUIType")}];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"originatingUI" value:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sosURLQueryItem
{
  if ([(TUDialRequest *)self isSOS])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"sos" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)redialURLQueryItem
{
  if ([(TUDialRequest *)self isRedial])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"redial" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)endpointIDSDestinationURIQueryItem
{
  endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];

  if (endpointIDSDestinationURI)
  {
    v4 = MEMORY[0x1E696AF60];
    endpointIDSDestinationURI2 = [(TUDialRequest *)self endpointIDSDestinationURI];
    v6 = [v4 queryItemWithName:@"endpointIDSDestinationURI" value:endpointIDSDestinationURI2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)endpointRapportMediaSystemIdentifierQueryItem
{
  endpointRapportMediaSystemIdentifier = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];

  if (endpointRapportMediaSystemIdentifier)
  {
    v4 = MEMORY[0x1E696AF60];
    endpointRapportMediaSystemIdentifier2 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
    v6 = [v4 queryItemWithName:@"endpointRapportMediaSystemIdentifier" value:endpointRapportMediaSystemIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)endpointRapportEffectiveIdentifierQueryItem
{
  endpointRapportEffectiveIdentifier = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];

  if (endpointRapportEffectiveIdentifier)
  {
    v4 = MEMORY[0x1E696AF60];
    endpointRapportEffectiveIdentifier2 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
    v6 = [v4 queryItemWithName:@"endpointRapportEffectiveIdentifier" value:endpointRapportEffectiveIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)shouldSuppressInCallUIQueryItem
{
  if ([(TUDialRequest *)self shouldSuppressInCallUI])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"shouldSuppressInCallUI" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)launchInBackgroundQueryItem
{
  if ([(TUDialRequest *)self launchInBackground])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"launchInBackground" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)successNotificationQueryItem
{
  successNotification = [(TUDialRequest *)self successNotification];

  if (successNotification)
  {
    v4 = MEMORY[0x1E696AF60];
    successNotification2 = [(TUDialRequest *)self successNotification];
    v6 = [v4 queryItemWithName:@"successNotification" value:successNotification2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)failureNotificationQueryItem
{
  failureNotification = [(TUDialRequest *)self failureNotification];

  if (failureNotification)
  {
    v4 = MEMORY[0x1E696AF60];
    failureNotification2 = [(TUDialRequest *)self failureNotification];
    v6 = [v4 queryItemWithName:@"failureNotification" value:failureNotification2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allowProviderFallbackQueryItem
{
  if ([(TUDialRequest *)self allowProviderFallback])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"allowProviderFallback" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)bypassInterventionQueryItem
{
  if ([(TUDialRequest *)self bypassIntervention])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"bypassIntervention" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)userActivityUsingDeprecatedCallingIntents:(BOOL)intents
{
  intentsCopy = intents;
  selfCopy = self;
  v82 = *MEMORY[0x1E69E9840];
  if (![(TUDialRequest *)self isValid])
  {
    v17 = 0;
    goto LABEL_46;
  }

  handles = [(TUDialRequest *)selfCopy handles];
  v6 = [handles count];

  if (v6)
  {
    v74 = intentsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v7 = selfCopy;
    obj = [(TUDialRequest *)selfCopy handles];
    v8 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v78;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v78 != v10)
          {
            objc_enumerationMutation(obj);
          }

          personHandle = [*(*(&v77 + 1) + 8 * i) personHandle];
          v13 = objc_alloc(CUTWeakLinkClass());
          contactIdentifier = [(TUDialRequest *)v7 contactIdentifier];
          providerCustomIdentifier = [(TUDialRequest *)v7 providerCustomIdentifier];
          v16 = [v13 initWithPersonHandle:personHandle nameComponents:0 displayName:0 image:0 contactIdentifier:contactIdentifier customIdentifier:providerCustomIdentifier];

          [array addObject:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v9);
    }

    selfCopy = v7;
    intentsCopy = v74;
  }

  else
  {
    array = 0;
  }

  provider = [(TUDialRequest *)selfCopy provider];
  isSystemProvider = [provider isSystemProvider];

  if (isSystemProvider)
  {
    dialType = [(TUDialRequest *)selfCopy dialType];
    if (dialType < 3)
    {
      v21 = dialType + 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_opt_class() intentTTYTypeForTTYType:{-[TUDialRequest ttyType](selfCopy, "ttyType")}];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = 1;
  if ([(TUDialRequest *)selfCopy isVideo])
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  provider2 = [(TUDialRequest *)selfCopy provider];
  isTelephonyProvider = [provider2 isTelephonyProvider];

  if ((isTelephonyProvider & 1) == 0)
  {
    provider3 = [(TUDialRequest *)selfCopy provider];
    isFaceTimeProvider = [provider3 isFaceTimeProvider];

    if (isFaceTimeProvider)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }
  }

  if (![(NSString *)selfCopy->_audioSourceIdentifier isEqualToString:@"TUCallSourceIdentifierSpeakerRoute"])
  {
    if ([(NSString *)selfCopy->_audioSourceIdentifier isEqualToString:@"TUCallSourceIdentifierHeySiri"]&& (v30 = CUTWeakLinkSymbol()) != 0)
    {
      v29 = *v30;
      if (intentsCopy)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v29 = 0;
      if (intentsCopy)
      {
        goto LABEL_40;
      }
    }

LABEL_32:
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:v29 destinationType:v21 preferredCallProvider:v23 contacts:array ttyType:v22 callCapability:v24];
    provider4 = [(TUDialRequest *)selfCopy provider];
    bundleIdentifier = [provider4 bundleIdentifier];
    _metadata = [v31 _metadata];
    [_metadata setLaunchId:bundleIdentifier];

    launchInBackground = [(TUDialRequest *)selfCopy launchInBackground];
    _metadata2 = [v31 _metadata];
    [_metadata2 setBackgroundLaunch:launchInBackground];

    endpointIDSDestinationURI = [(TUDialRequest *)selfCopy endpointIDSDestinationURI];
    v38 = [endpointIDSDestinationURI length];

    if (v38)
    {
      endpointIDSDestinationURI2 = [(TUDialRequest *)selfCopy endpointIDSDestinationURI];
      [v31 _setOriginatingDeviceIdsIdentifier:endpointIDSDestinationURI2];
    }

    endpointRapportMediaSystemIdentifier = [(TUDialRequest *)selfCopy endpointRapportMediaSystemIdentifier];
    v41 = [endpointRapportMediaSystemIdentifier length];

    if (v41)
    {
      endpointRapportMediaSystemIdentifier2 = [(TUDialRequest *)selfCopy endpointRapportMediaSystemIdentifier];
      [v31 _setOriginatingDeviceRapportMediaSystemIdentifier:endpointRapportMediaSystemIdentifier2];
    }

    endpointRapportEffectiveIdentifier = [(TUDialRequest *)selfCopy endpointRapportEffectiveIdentifier];
    v44 = [endpointRapportEffectiveIdentifier length];

    if (v44)
    {
      endpointRapportEffectiveIdentifier2 = [(TUDialRequest *)selfCopy endpointRapportEffectiveIdentifier];
      [v31 _setOriginatingDeviceRapportEffectiveIdentifier:endpointRapportEffectiveIdentifier2];
    }

    v46 = @"INStartCallIntent";
    goto LABEL_43;
  }

  v29 = 1;
  if (!intentsCopy)
  {
    goto LABEL_32;
  }

LABEL_40:
  if ([(TUDialRequest *)selfCopy isVideo])
  {
    v46 = @"INStartVideoCallIntent";
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithContacts:array];
    provider5 = [(TUDialRequest *)selfCopy provider];
    bundleIdentifier2 = [provider5 bundleIdentifier];
    _metadata3 = [v31 _metadata];
    [_metadata3 setLaunchId:bundleIdentifier2];

    launchInBackground2 = [(TUDialRequest *)selfCopy launchInBackground];
    _metadata4 = [v31 _metadata];
    [_metadata4 setBackgroundLaunch:launchInBackground2];
  }

  else
  {
    v46 = @"INStartAudioCallIntent";
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithDestinationType:v21 contacts:array];
    provider6 = [(TUDialRequest *)selfCopy provider];
    bundleIdentifier3 = [provider6 bundleIdentifier];
    _metadata5 = [v31 _metadata];
    [_metadata5 setLaunchId:bundleIdentifier3];

    launchInBackground3 = [(TUDialRequest *)selfCopy launchInBackground];
    _metadata6 = [v31 _metadata];
    [_metadata6 setBackgroundLaunch:launchInBackground3];

    [v31 setTTYType:v22];
    [v31 setPreferredCallProvider:v23];
  }

LABEL_43:
  v57 = [objc_alloc(CUTWeakLinkClass()) initWithIntent:v31 response:0];
  [v57 setDirection:1];
  v17 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:v46];
  [v17 _setInteraction:v57 donate:0];
  provider7 = [(TUDialRequest *)selfCopy provider];
  isSystemProvider2 = [provider7 isSystemProvider];

  if (isSystemProvider2)
  {
    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isSOS](selfCopy, "isSOS")}];
    [v60 setObject:v61 forKeyedSubscript:@"sos"];

    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isRedial](selfCopy, "isRedial")}];
    [v60 setObject:v62 forKeyedSubscript:@"redial"];

    provider8 = [(TUDialRequest *)selfCopy provider];
    identifier = [provider8 identifier];
    [v60 setObject:identifier forKeyedSubscript:@"providerIdentifier"];

    localSenderIdentityUUID = [(TUDialRequest *)selfCopy localSenderIdentityUUID];
    [v60 setObject:localSenderIdentityUUID forKeyedSubscript:@"localSenderIdentityUUID"];

    localSenderIdentityAccountUUID = [(TUDialRequest *)selfCopy localSenderIdentityAccountUUID];
    [v60 setObject:localSenderIdentityAccountUUID forKeyedSubscript:@"localSenderIdentityAccountUUID"];

    audioSourceIdentifier = [(TUDialRequest *)selfCopy audioSourceIdentifier];
    [v60 setObject:audioSourceIdentifier forKeyedSubscript:@"TUCallSourceIdentifierKey"];

    v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest performDialAssist](selfCopy, "performDialAssist")}];
    [v60 setObject:v68 forKeyedSubscript:@"performDialAssist"];

    v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest performLocalDialAssist](selfCopy, "performLocalDialAssist")}];
    [v60 setObject:v69 forKeyedSubscript:@"performLocalDialAssist"];

    v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isDialAssisted](selfCopy, "isDialAssisted")}];
    [v60 setObject:v70 forKeyedSubscript:@"dialAssisted"];

    v71 = [objc_opt_class() stringForOriginatingUIType:{-[TUDialRequest originatingUIType](selfCopy, "originatingUIType")}];
    [v60 setObject:v71 forKeyedSubscript:@"originatingUI"];

    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest preferDefaultApp](selfCopy, "preferDefaultApp")}];
    [v60 setObject:v72 forKeyedSubscript:@"preferDefaultApp"];

    [v17 setUserInfo:v60];
  }

LABEL_46:

  return v17;
}

- (id)_validityErrorsForRelay:(BOOL)relay
{
  array = [MEMORY[0x1E695DF70] array];
  validityErrorForUnspecifiedProvider = [(TUDialRequest *)self validityErrorForUnspecifiedProvider];
  if (validityErrorForUnspecifiedProvider)
  {
    [array addObject:validityErrorForUnspecifiedProvider];
  }

  validityErrorForDestinationIDWithVoicemail = [(TUDialRequest *)self validityErrorForDestinationIDWithVoicemail];

  if (validityErrorForDestinationIDWithVoicemail)
  {
    [array addObject:validityErrorForDestinationIDWithVoicemail];
  }

  validityErrorForNonNormalDialTypeWithoutTelephony = [(TUDialRequest *)self validityErrorForNonNormalDialTypeWithoutTelephony];

  if (validityErrorForNonNormalDialTypeWithoutTelephony)
  {
    [array addObject:validityErrorForNonNormalDialTypeWithoutTelephony];
  }

  validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService = [(TUDialRequest *)self validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService];

  if (validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService)
  {
    [array addObject:validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService];
  }

  validityErrorForEmergencyCall = [(TUDialRequest *)self validityErrorForEmergencyCall];

  if (validityErrorForEmergencyCall)
  {
    [array addObject:validityErrorForEmergencyCall];
  }

  validityErrorForVideoUnsupported = [(TUDialRequest *)self validityErrorForVideoUnsupported];

  if (validityErrorForVideoUnsupported)
  {
    [array addObject:validityErrorForVideoUnsupported];
  }

  validityErrorForNormalDialTypeWithUnknownDestination = [(TUDialRequest *)self validityErrorForNormalDialTypeWithUnknownDestination];

  if (validityErrorForNormalDialTypeWithUnknownDestination)
  {
    [array addObject:validityErrorForNormalDialTypeWithUnknownDestination];
  }

  validityErrorForUnsupportedHandleType = [(TUDialRequest *)self validityErrorForUnsupportedHandleType];

  if (validityErrorForUnsupportedHandleType)
  {
    [array addObject:validityErrorForUnsupportedHandleType];
  }

  validityErrorForSOS = [(TUDialRequest *)self validityErrorForSOS];

  if (validityErrorForSOS)
  {
    [array addObject:validityErrorForSOS];
  }

  v14 = [array copy];

  return v14;
}

- (id)dialRequestByReplacingProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(TUDialRequest *)self copy];
  [v5 setProvider:providerCopy];

  return v5;
}

- (TUDialRequest)dialRequestWithURLStripping
{
  allowProviderFallback = [(TUDialRequest *)self allowProviderFallback];
  [(TUDialRequest *)self setAllowProviderFallback:0];
  v4 = [TUDialRequest alloc];
  v5 = [(TUDialRequest *)self URL];
  v6 = [(TUDialRequest *)v4 initWithURL:v5];

  [(TUDialRequest *)self setAllowProviderFallback:allowProviderFallback];

  return v6;
}

- (id)_contactFromINPerson:(id)person contactsDataSource:(id)source bestGuessHandle:(id *)handle
{
  v69[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  sourceCopy = source;
  *handle = 0;
  contactIdentifier = [personCopy contactIdentifier];
  v10 = [contactIdentifier length];

  if (v10)
  {
    v11 = MEMORY[0x1E695CD58];
    contactIdentifier2 = [personCopy contactIdentifier];
    v69[0] = contactIdentifier2;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
    v14 = [v11 predicateForContactsWithIdentifiers:v13];
LABEL_3:
    v15 = v14;
LABEL_4:

    goto LABEL_5;
  }

  personHandle = [personCopy personHandle];
  value = [personHandle value];
  v27 = [value length];

  if (!v27)
  {
    displayName = [personCopy displayName];
    v35 = [displayName length];

    if (!v35)
    {
      goto LABEL_22;
    }

    v36 = MEMORY[0x1E695CD58];
    contactIdentifier2 = [personCopy displayName];
    v37 = [v36 predicateForContactsMatchingName:contactIdentifier2];
    goto LABEL_47;
  }

  personHandle2 = [personCopy personHandle];
  contactIdentifier2 = [personHandle2 value];

  personHandle3 = [personCopy personHandle];
  type = [personHandle3 type];

  if (type)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v13 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:contactIdentifier2];
        if (!v13)
        {
          v32 = TUDefaultLog(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = contactIdentifier2;
            v33 = "[WARN] Could not create CNPhoneNumber from personHandle.value with phone number type: %@";
LABEL_54:
            _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
            goto LABEL_55;
          }

          goto LABEL_55;
        }

        goto LABEL_43;
      }

      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v56 = TUDefaultLog(v31);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = personCopy;
    _os_log_impl(&dword_1956FD000, v56, OS_LOG_TYPE_DEFAULT, "[WARN] INPersonHandle has no type, attempting to infer from value %@", buf, 0xCu);
  }

  if ([contactIdentifier2 _appearsToBePhoneNumber])
  {
    v13 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:contactIdentifier2];
    if (!v13)
    {
      v32 = TUDefaultLog(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = contactIdentifier2;
        v33 = "[WARN] Could not create CNPhoneNumber from personHandle.value with unknown type: %@";
        goto LABEL_54;
      }

LABEL_55:

      v15 = 0;
      goto LABEL_4;
    }

LABEL_43:
    v14 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v13];
    goto LABEL_3;
  }

  personHandle4 = [personCopy personHandle];
  value2 = [personHandle4 value];
  _appearsToBeEmail = [value2 _appearsToBeEmail];

  if (_appearsToBeEmail)
  {
LABEL_46:
    v37 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:contactIdentifier2];
LABEL_47:
    v15 = v37;
    goto LABEL_5;
  }

  v61 = TUDefaultLog(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    personHandle5 = [personCopy personHandle];
    *buf = 138412290;
    v65 = personHandle5;
    _os_log_impl(&dword_1956FD000, v61, OS_LOG_TYPE_DEFAULT, "[WARN] Could not infer INPersonHandleType for person %@", buf, 0xCu);
  }

LABEL_51:
  v15 = 0;
LABEL_5:

  if (v15)
  {
    v17 = *MEMORY[0x1E695C330];
    v68[0] = *MEMORY[0x1E695C208];
    v68[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    v63 = 0;
    v19 = [sourceCopy unifiedContactsMatchingPredicate:v15 keysToFetch:v18 error:&v63];
    v20 = v63;
    v21 = v20;
    if (v19)
    {
      firstObject = [v19 firstObject];
      v23 = TUDefaultLog(firstObject);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v19 count];
        *buf = 134218242;
        v65 = v24;
        v66 = 2112;
        v67 = firstObject;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Found %ld contacts matching INPerson, using %@", buf, 0x16u);
      }
    }

    else
    {
      v23 = TUDefaultLog(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v65 = personCopy;
        v66 = 2112;
        v67 = v21;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Error obtaining contact from INPerson %@: %@", buf, 0x16u);
      }

      firstObject = 0;
    }

    goto LABEL_25;
  }

LABEL_22:
  v18 = TUDefaultLog(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = personCopy;
    _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not create contact search predicate for INPerson: %@", buf, 0xCu);
  }

  v15 = 0;
  v21 = 0;
  firstObject = 0;
LABEL_25:

  personHandle6 = [personCopy personHandle];
  value3 = [personHandle6 value];
  v40 = [value3 length];

  if (!v40)
  {
    phoneNumbers = [firstObject phoneNumbers];
    v46 = [phoneNumbers count];

    if (v46)
    {
      phoneNumbers2 = [firstObject phoneNumbers];
      firstObject2 = [phoneNumbers2 firstObject];
      value4 = [firstObject2 value];
      stringValue = [value4 stringValue];

      v51 = 2;
    }

    else
    {
      emailAddresses = [firstObject emailAddresses];
      v53 = [emailAddresses count];

      if (!v53)
      {
        stringValue = 0;
        v51 = 1;
LABEL_34:
        if ([stringValue length])
        {
          v54 = [TUHandle alloc];
          displayName2 = [personCopy displayName];
          v41 = [(TUHandle *)v54 initWithType:v51 value:stringValue siriDisplayName:displayName2];
        }

        else
        {
          v41 = 0;
        }

        if (v41)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      phoneNumbers2 = [firstObject emailAddresses];
      firstObject2 = [phoneNumbers2 firstObject];
      stringValue = [firstObject2 value];
      v51 = 3;
    }

    goto LABEL_34;
  }

  v41 = [TUHandle handleWithPerson:personCopy];
  if (v41)
  {
LABEL_27:
    v42 = v41;
    *handle = v41;
  }

LABEL_28:
  v43 = firstObject;

  return firstObject;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUDialRequest *)self isEqualToDialRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToDialRequest:(id)request
{
  requestCopy = request;
  service = [(TUDialRequest *)self service];
  if (service == [requestCopy service] && (v6 = -[TUDialRequest dialType](self, "dialType"), v6 == objc_msgSend(requestCopy, "dialType")))
  {
    handle = [(TUDialRequest *)self handle];
    handle2 = [requestCopy handle];
    if (TUObjectsAreEqualOrNil(handle, handle2))
    {
      contactIdentifier = [(TUDialRequest *)self contactIdentifier];
      contactIdentifier2 = [requestCopy contactIdentifier];
      if (TUStringsAreEqualOrNil(contactIdentifier, contactIdentifier2))
      {
        providerCustomIdentifier = [(TUDialRequest *)self providerCustomIdentifier];
        providerCustomIdentifier2 = [requestCopy providerCustomIdentifier];
        if (TUStringsAreEqualOrNil(providerCustomIdentifier, providerCustomIdentifier2))
        {
          localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
          localSenderIdentityUUID2 = [requestCopy localSenderIdentityUUID];
          if (TUObjectsAreEqualOrNil(localSenderIdentityUUID, localSenderIdentityUUID2))
          {
            v56 = localSenderIdentityUUID;
            localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
            localSenderIdentityAccountUUID2 = [requestCopy localSenderIdentityAccountUUID];
            v55 = localSenderIdentityAccountUUID;
            if (TUObjectsAreEqualOrNil(localSenderIdentityAccountUUID, localSenderIdentityAccountUUID2))
            {
              audioSourceIdentifier = [(TUDialRequest *)self audioSourceIdentifier];
              [requestCopy audioSourceIdentifier];
              v52 = v53 = audioSourceIdentifier;
              if (TUStringsAreEqualOrNil(audioSourceIdentifier, v52))
              {
                contactIdentifier3 = [(TUDialRequest *)self contactIdentifier];
                contactIdentifier4 = [requestCopy contactIdentifier];
                v51 = contactIdentifier3;
                if (TUStringsAreEqualOrNil(contactIdentifier3, contactIdentifier4))
                {
                  performDialAssist = [(TUDialRequest *)self performDialAssist];
                  v19 = performDialAssist == [requestCopy performDialAssist];
                  localSenderIdentityUUID = v56;
                  if (v19 && (v48 = -[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist"), v48 == [requestCopy performLocalDialAssist]))
                  {
                    upgradedFromCallUUID = [(TUDialRequest *)self upgradedFromCallUUID];
                    upgradedFromCallUUID2 = [requestCopy upgradedFromCallUUID];
                    if (TUObjectsAreEqualOrNil(upgradedFromCallUUID, upgradedFromCallUUID2))
                    {
                      translationRequestConfiguration = [(TUDialRequest *)self translationRequestConfiguration];
                      translationRequestConfiguration2 = [requestCopy translationRequestConfiguration];
                      if (TUObjectsAreEqualOrNil(translationRequestConfiguration, translationRequestConfiguration2) && (v43 = -[TUDialRequest isDialAssisted](self, "isDialAssisted"), v43 == [requestCopy isDialAssisted]))
                      {
                        ttyType = [(TUDialRequest *)self ttyType];
                        if (ttyType == [requestCopy ttyType] && (v23 = -[TUDialRequest showUIPrompt](self, "showUIPrompt"), v23 == objc_msgSend(requestCopy, "showUIPrompt")) && (v24 = -[TUDialRequest isVideo](self, "isVideo"), v24 == objc_msgSend(requestCopy, "isVideo")) && (v25 = -[TUDialRequest isSOS](self, "isSOS"), v25 == objc_msgSend(requestCopy, "isSOS")))
                        {
                          uniqueProxyIdentifier = [(TUDialRequest *)self uniqueProxyIdentifier];
                          uniqueProxyIdentifier2 = [requestCopy uniqueProxyIdentifier];
                          if (TUStringsAreEqualOrNil(uniqueProxyIdentifier, uniqueProxyIdentifier2) && (v39 = -[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice"), v39 == [requestCopy hostOnCurrentDevice]) && (v40 = -[TUDialRequest originatingUIType](self, "originatingUIType"), v40 == objc_msgSend(requestCopy, "originatingUIType")) && (v41 = -[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice"), v41 == objc_msgSend(requestCopy, "endpointOnCurrentDevice")))
                          {
                            endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];
                            endpointIDSDestinationURI2 = [requestCopy endpointIDSDestinationURI];
                            if (TUStringsAreEqualOrNil(endpointIDSDestinationURI, endpointIDSDestinationURI2))
                            {
                              endpointRapportMediaSystemIdentifier = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
                              endpointRapportMediaSystemIdentifier2 = [requestCopy endpointRapportMediaSystemIdentifier];
                              if (TUStringsAreEqualOrNil(endpointRapportMediaSystemIdentifier, endpointRapportMediaSystemIdentifier2))
                              {
                                endpointRapportEffectiveIdentifier = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
                                endpointRapportEffectiveIdentifier2 = [requestCopy endpointRapportEffectiveIdentifier];
                                if (TUStringsAreEqualOrNil(endpointRapportEffectiveIdentifier, endpointRapportEffectiveIdentifier2) && (v31 = -[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI"), v31 == [requestCopy shouldSuppressInCallUI]) && (v32 = -[TUDialRequest launchInBackground](self, "launchInBackground"), v32 == objc_msgSend(requestCopy, "launchInBackground")))
                                {
                                  hostIDSIdentifier = [(TUDialRequest *)self hostIDSIdentifier];
                                  hostIDSIdentifier2 = [requestCopy hostIDSIdentifier];
                                  if (TUStringsAreEqualOrNil(hostIDSIdentifier, hostIDSIdentifier2) && (v28 = -[TUDialRequest preferDefaultApp](self, "preferDefaultApp"), v28 == [requestCopy preferDefaultApp]) && (v29 = -[TUDialRequest allowProviderFallback](self, "allowProviderFallback"), v29 == objc_msgSend(requestCopy, "allowProviderFallback")))
                                  {
                                    bypassIntervention = [(TUDialRequest *)self bypassIntervention];
                                    v20 = bypassIntervention ^ [requestCopy bypassIntervention] ^ 1;
                                  }

                                  else
                                  {
                                    LOBYTE(v20) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v20) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v20) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v20) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v20) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v20) = 0;
                        }

                        localSenderIdentityUUID = v56;
                      }

                      else
                      {
                        LOBYTE(v20) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v20) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v20) = 0;
                  }
                }

                else
                {
                  LOBYTE(v20) = 0;
                  localSenderIdentityUUID = v56;
                }
              }

              else
              {
                LOBYTE(v20) = 0;
                localSenderIdentityUUID = v56;
              }
            }

            else
            {
              LOBYTE(v20) = 0;
              localSenderIdentityUUID = v56;
            }
          }

          else
          {
            LOBYTE(v20) = 0;
          }
        }

        else
        {
          LOBYTE(v20) = 0;
        }
      }

      else
      {
        LOBYTE(v20) = 0;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  service = [(TUDialRequest *)self service];
  v4 = [(TUDialRequest *)self dialType]- service + 32 * service;
  handle = [(TUDialRequest *)self handle];
  v6 = [handle hash] - v4 + 32 * v4;

  contactIdentifier = [(TUDialRequest *)self contactIdentifier];
  v8 = [contactIdentifier hash] - v6 + 32 * v6;

  providerCustomIdentifier = [(TUDialRequest *)self providerCustomIdentifier];
  v10 = [providerCustomIdentifier hash] - v8 + 32 * v8;

  localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
  v12 = [localSenderIdentityUUID hash] - v10 + 32 * v10;

  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  v14 = [localSenderIdentityAccountUUID hash] - v12 + 32 * v12;

  audioSourceIdentifier = [(TUDialRequest *)self audioSourceIdentifier];
  v16 = [audioSourceIdentifier hash] - v14 + 32 * v14;

  if ([(TUDialRequest *)self performDialAssist])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = v17 - v16 + 32 * v16;
  if ([(TUDialRequest *)self performLocalDialAssist])
  {
    v19 = 1231;
  }

  else
  {
    v19 = 1237;
  }

  v20 = v19 - v18 + 32 * v18;
  if ([(TUDialRequest *)self isDialAssisted])
  {
    v21 = 1231;
  }

  else
  {
    v21 = 1237;
  }

  v22 = [(TUDialRequest *)self ttyType]- (v21 - v20 + 32 * v20) + 32 * (v21 - v20 + 32 * v20);
  upgradedFromCallUUID = [(TUDialRequest *)self upgradedFromCallUUID];
  v24 = [upgradedFromCallUUID hash] - v22 + 32 * v22;

  translationRequestConfiguration = [(TUDialRequest *)self translationRequestConfiguration];
  v26 = [translationRequestConfiguration hash] - v24 + 32 * v24;

  if ([(TUDialRequest *)self showUIPrompt])
  {
    v27 = 1231;
  }

  else
  {
    v27 = 1237;
  }

  v28 = v27 - v26 + 32 * v26;
  if ([(TUDialRequest *)self launchInBackground])
  {
    v29 = 1231;
  }

  else
  {
    v29 = 1237;
  }

  v30 = v29 - v28 + 32 * v28;
  if ([(TUDialRequest *)self isVideo])
  {
    v31 = 1231;
  }

  else
  {
    v31 = 1237;
  }

  v32 = v31 - v30 + 32 * v30;
  uniqueProxyIdentifier = [(TUDialRequest *)self uniqueProxyIdentifier];
  v34 = [uniqueProxyIdentifier hash] - v32 + 32 * v32;

  if ([(TUDialRequest *)self hostOnCurrentDevice])
  {
    v35 = 1231;
  }

  else
  {
    v35 = 1237;
  }

  v36 = 31 * (v35 - v34 + 32 * v34) + [(TUDialRequest *)self originatingUIType];
  if ([(TUDialRequest *)self isSOS])
  {
    v37 = 1231;
  }

  else
  {
    v37 = 1237;
  }

  v38 = v37 - v36 + 32 * v36;
  if ([(TUDialRequest *)self isRedial])
  {
    v39 = 1231;
  }

  else
  {
    v39 = 1237;
  }

  v40 = v39 - v38 + 32 * v38;
  if ([(TUDialRequest *)self endpointOnCurrentDevice])
  {
    v41 = 1231;
  }

  else
  {
    v41 = 1237;
  }

  v42 = v41 - v40 + 32 * v40;
  endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];
  v44 = [endpointIDSDestinationURI hash] - v42 + 32 * v42;

  endpointRapportMediaSystemIdentifier = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
  v46 = [endpointRapportMediaSystemIdentifier hash] - v44 + 32 * v44;

  endpointRapportEffectiveIdentifier = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
  v48 = [endpointRapportEffectiveIdentifier hash] - v46 + 32 * v46;

  if ([(TUDialRequest *)self shouldSuppressInCallUI])
  {
    v49 = 1231;
  }

  else
  {
    v49 = 1237;
  }

  v50 = v49 - v48 + 32 * v48;
  if ([(TUDialRequest *)self preferDefaultApp])
  {
    v51 = 1231;
  }

  else
  {
    v51 = 1237;
  }

  v52 = v51 - v50 + 32 * v50;
  if ([(TUDialRequest *)self allowProviderFallback])
  {
    v53 = 1231;
  }

  else
  {
    v53 = 1237;
  }

  v54 = v53 - v52 + 32 * v52;
  if ([(TUDialRequest *)self bypassIntervention])
  {
    v55 = 1231;
  }

  else
  {
    v55 = 1237;
  }

  return v55 - v54 + 32 * v54 + 0x79CAF9C914E8C841;
}

- (TUDialRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
  v6 = [(TUDialRequest *)self initWithProvider:v5];

  if (v6)
  {
    v6->_dialType = [coderCopy decodeIntegerForKey:@"dialType"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_handles);
    v10 = [coderCopy decodeArrayOfObjectsOfClass:v8 forKey:v9];
    v11 = [v7 setWithArray:v10];
    handles = v6->_handles;
    v6->_handles = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioSourceIdentifier"];
    v14 = [v13 copy];
    audioSourceIdentifier = v6->_audioSourceIdentifier;
    v6->_audioSourceIdentifier = v14;

    v6->_video = [coderCopy decodeBoolForKey:@"video"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    v17 = [v16 copy];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerCustomIdentifier"];
    v20 = [v19 copy];
    providerCustomIdentifier = v6->_providerCustomIdentifier;
    v6->_providerCustomIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityUUID"];
    v23 = [v22 copy];
    localSenderIdentityUUID = v6->_localSenderIdentityUUID;
    v6->_localSenderIdentityUUID = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityAccountUUID"];
    v26 = [v25 copy];
    localSenderIdentityAccountUUID = v6->_localSenderIdentityAccountUUID;
    v6->_localSenderIdentityAccountUUID = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upgradedFromCallUUID"];
    v29 = [v28 copy];
    upgradedFromCallUUID = v6->_upgradedFromCallUUID;
    v6->_upgradedFromCallUUID = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TUCallTranslationRequestConfiguration"];
    v32 = [v31 copy];
    translationRequestConfiguration = v6->_translationRequestConfiguration;
    v6->_translationRequestConfiguration = v32;

    v6->_performDialAssist = [coderCopy decodeBoolForKey:@"performDialAssist"];
    v6->_performLocalDialAssist = [coderCopy decodeBoolForKey:@"performLocalDialAssist"];
    v6->_dialAssisted = [coderCopy decodeBoolForKey:@"dialAssisted"];
    v6->_shouldStartWithUplinkMuted = [coderCopy decodeBoolForKey:@"shouldStartWithUplinkMuted"];
    v6->_ttyType = [coderCopy decodeIntegerForKey:@"ttyType"];
    v6->_showUIPrompt = [coderCopy decodeBoolForKey:@"showUIPrompt"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueProxyIdentifier"];
    uniqueProxyIdentifier = v6->_uniqueProxyIdentifier;
    v6->_uniqueProxyIdentifier = v34;

    v6->_hostOnCurrentDevice = [coderCopy decodeBoolForKey:@"hostOnCurrentDevice"];
    v6->_originatingUIType = [coderCopy decodeIntForKey:@"originatingUIType"];
    v6->_sos = [coderCopy decodeBoolForKey:@"sos"];
    v6->_redial = [coderCopy decodeBoolForKey:@"redial"];
    v6->_endpointOnCurrentDevice = [coderCopy decodeBoolForKey:@"endpointOnCurrentDevice"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointIDSDestinationURI"];
    endpointIDSDestinationURI = v6->_endpointIDSDestinationURI;
    v6->_endpointIDSDestinationURI = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointRapportMediaSystemIdentifier"];
    endpointRapportMediaSystemIdentifier = v6->_endpointRapportMediaSystemIdentifier;
    v6->_endpointRapportMediaSystemIdentifier = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointRapportEffectiveIdentifier"];
    endpointRapportEffectiveIdentifier = v6->_endpointRapportEffectiveIdentifier;
    v6->_endpointRapportEffectiveIdentifier = v40;

    v6->_shouldSuppressInCallUI = [coderCopy decodeBoolForKey:@"shouldSuppressInCallUI"];
    v6->_launchInBackground = [coderCopy decodeBoolForKey:@"launchInBackground"];
    [coderCopy decodeSizeForKey:@"localLandscapeAspectRatio"];
    v6->_localLandscapeAspectRatio.width = v42;
    v6->_localLandscapeAspectRatio.height = v43;
    [coderCopy decodeSizeForKey:@"localPortraitAspectRatio"];
    v6->_localPortraitAspectRatio.width = v44;
    v6->_localPortraitAspectRatio.height = v45;
    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_dateDialed);
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    dateDialed = v6->_dateDialed;
    v6->_dateDialed = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processHandle"];
    processHandle = v6->_processHandle;
    v6->_processHandle = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostIDSIdentifier"];
    hostIDSIdentifier = v6->_hostIDSIdentifier;
    v6->_hostIDSIdentifier = v52;

    v6->_preferDefaultApp = [coderCopy decodeBoolForKey:@"preferDefaultApp"];
    v6->_allowProviderFallback = [coderCopy decodeBoolForKey:@"allowProviderFallback"];
    v6->_bypassIntervention = [coderCopy decodeBoolForKey:@"bypassIntervention"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"provider"];
  [coderCopy encodeInteger:self->_dialType forKey:@"dialType"];
  allObjects = [(NSSet *)self->_handles allObjects];
  v6 = NSStringFromSelector(sel_handles);
  [coderCopy encodeObject:allObjects forKey:v6];

  [coderCopy encodeObject:self->_audioSourceIdentifier forKey:@"audioSourceIdentifier"];
  [coderCopy encodeBool:self->_video forKey:@"video"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_providerCustomIdentifier forKey:@"providerCustomIdentifier"];
  [coderCopy encodeObject:self->_localSenderIdentityUUID forKey:@"localSenderIdentityUUID"];
  [coderCopy encodeObject:self->_localSenderIdentityAccountUUID forKey:@"localSenderIdentityAccountUUID"];
  [coderCopy encodeObject:self->_translationRequestConfiguration forKey:@"TUCallTranslationRequestConfiguration"];
  [coderCopy encodeBool:self->_performDialAssist forKey:@"performDialAssist"];
  [coderCopy encodeBool:self->_performLocalDialAssist forKey:@"performLocalDialAssist"];
  [coderCopy encodeBool:self->_dialAssisted forKey:@"dialAssisted"];
  [coderCopy encodeBool:self->_shouldStartWithUplinkMuted forKey:@"shouldStartWithUplinkMuted"];
  [coderCopy encodeInteger:self->_ttyType forKey:@"ttyType"];
  [coderCopy encodeBool:self->_showUIPrompt forKey:@"showUIPrompt"];
  [coderCopy encodeObject:self->_uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  [coderCopy encodeBool:self->_hostOnCurrentDevice forKey:@"hostOnCurrentDevice"];
  [coderCopy encodeInteger:self->_originatingUIType forKey:@"originatingUIType"];
  [coderCopy encodeBool:self->_sos forKey:@"sos"];
  [coderCopy encodeBool:self->_redial forKey:@"redial"];
  [coderCopy encodeBool:self->_endpointOnCurrentDevice forKey:@"endpointOnCurrentDevice"];
  [coderCopy encodeObject:self->_endpointIDSDestinationURI forKey:@"endpointIDSDestinationURI"];
  [coderCopy encodeObject:self->_endpointRapportMediaSystemIdentifier forKey:@"endpointRapportMediaSystemIdentifier"];
  [coderCopy encodeObject:self->_endpointRapportEffectiveIdentifier forKey:@"endpointRapportEffectiveIdentifier"];
  [coderCopy encodeObject:self->_hostIDSIdentifier forKey:@"hostIDSIdentifier"];
  [coderCopy encodeBool:self->_shouldSuppressInCallUI forKey:@"shouldSuppressInCallUI"];
  [coderCopy encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [coderCopy encodeObject:self->_successNotification forKey:@"successNotification"];
  [coderCopy encodeObject:self->_failureNotification forKey:@"failureNotification"];
  [coderCopy encodeSize:@"localLandscapeAspectRatio" forKey:{self->_localLandscapeAspectRatio.width, self->_localLandscapeAspectRatio.height}];
  [coderCopy encodeSize:@"localPortraitAspectRatio" forKey:{self->_localPortraitAspectRatio.width, self->_localPortraitAspectRatio.height}];
  dateDialed = self->_dateDialed;
  v8 = NSStringFromSelector(sel_dateDialed);
  [coderCopy encodeObject:dateDialed forKey:v8];

  [coderCopy encodeObject:self->_processHandle forKey:@"processHandle"];
  [coderCopy encodeBool:self->_preferDefaultApp forKey:@"preferDefaultApp"];
  [coderCopy encodeBool:self->_allowProviderFallback forKey:@"allowProviderFallback"];
  [coderCopy encodeBool:self->_bypassIntervention forKey:@"bypassIntervention"];
  [coderCopy encodeObject:self->_upgradedFromCallUUID forKey:@"upgradedFromCallUUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  provider = [(TUDialRequest *)self provider];
  v7 = [v5 initWithProvider:provider];

  if (v7)
  {
    [v7 setDialType:{-[TUDialRequest dialType](self, "dialType")}];
    handles = [(TUDialRequest *)self handles];
    v9 = [handles copyWithZone:zone];
    [v7 setHandles:v9];

    contactIdentifier = [(TUDialRequest *)self contactIdentifier];
    v11 = [contactIdentifier copyWithZone:zone];
    [v7 setContactIdentifier:v11];

    providerCustomIdentifier = [(TUDialRequest *)self providerCustomIdentifier];
    v13 = [providerCustomIdentifier copyWithZone:zone];
    [v7 setProviderCustomIdentifier:v13];

    localSenderIdentityUUID = [(TUDialRequest *)self localSenderIdentityUUID];
    v15 = [localSenderIdentityUUID copyWithZone:zone];
    [v7 setLocalSenderIdentityUUID:v15];

    localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
    v17 = [localSenderIdentityAccountUUID copyWithZone:zone];
    [v7 setLocalSenderIdentityAccountUUID:v17];

    upgradedFromCallUUID = [(TUDialRequest *)self upgradedFromCallUUID];
    v19 = [upgradedFromCallUUID copyWithZone:zone];
    [v7 setUpgradedFromCallUUID:v19];

    translationRequestConfiguration = [(TUDialRequest *)self translationRequestConfiguration];
    v21 = [translationRequestConfiguration copyWithZone:zone];
    [v7 setTranslationRequestConfiguration:v21];

    audioSourceIdentifier = [(TUDialRequest *)self audioSourceIdentifier];
    v23 = [audioSourceIdentifier copyWithZone:zone];
    [v7 setAudioSourceIdentifier:v23];

    [v7 setVideo:{-[TUDialRequest isVideo](self, "isVideo")}];
    [v7 setPerformDialAssist:{-[TUDialRequest performDialAssist](self, "performDialAssist")}];
    [v7 setPerformLocalDialAssist:{-[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist")}];
    [v7 setDialAssisted:{-[TUDialRequest isDialAssisted](self, "isDialAssisted")}];
    [v7 setTtyType:{-[TUDialRequest ttyType](self, "ttyType")}];
    [v7 setShowUIPrompt:{-[TUDialRequest showUIPrompt](self, "showUIPrompt")}];
    uniqueProxyIdentifier = [(TUDialRequest *)self uniqueProxyIdentifier];
    v25 = [uniqueProxyIdentifier copyWithZone:zone];
    [v7 setUniqueProxyIdentifier:v25];

    [v7 setHostOnCurrentDevice:{-[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice")}];
    [v7 setOriginatingUIType:{-[TUDialRequest originatingUIType](self, "originatingUIType")}];
    [v7 setSOS:{-[TUDialRequest isSOS](self, "isSOS")}];
    [v7 setRedial:{-[TUDialRequest isRedial](self, "isRedial")}];
    [v7 setEndpointOnCurrentDevice:{-[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice")}];
    endpointIDSDestinationURI = [(TUDialRequest *)self endpointIDSDestinationURI];
    v27 = [endpointIDSDestinationURI copyWithZone:zone];
    [v7 setEndpointIDSDestinationURI:v27];

    endpointRapportMediaSystemIdentifier = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
    v29 = [endpointRapportMediaSystemIdentifier copyWithZone:zone];
    [v7 setEndpointRapportMediaSystemIdentifier:v29];

    endpointRapportEffectiveIdentifier = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
    v31 = [endpointRapportEffectiveIdentifier copyWithZone:zone];
    [v7 setEndpointRapportEffectiveIdentifier:v31];

    hostIDSIdentifier = [(TUDialRequest *)self hostIDSIdentifier];
    v33 = [hostIDSIdentifier copyWithZone:zone];
    [v7 setHostIDSIdentifier:v33];

    [v7 setShouldSuppressInCallUI:{-[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
    [v7 setLaunchInBackground:{-[TUDialRequest launchInBackground](self, "launchInBackground")}];
    successNotification = [(TUDialRequest *)self successNotification];
    [v7 setSuccessNotification:successNotification];

    failureNotification = [(TUDialRequest *)self failureNotification];
    [v7 setFailureNotification:failureNotification];

    dateDialed = [(TUDialRequest *)self dateDialed];
    [v7 setDateDialed:dateDialed];

    processHandle = [(TUDialRequest *)self processHandle];
    [v7 setProcessHandle:processHandle];

    [v7 setPreferDefaultApp:{-[TUDialRequest preferDefaultApp](self, "preferDefaultApp")}];
    [v7 setAllowProviderFallback:{-[TUDialRequest allowProviderFallback](self, "allowProviderFallback")}];
    [v7 setShouldStartWithUplinkMuted:{-[TUDialRequest shouldStartWithUplinkMuted](self, "shouldStartWithUplinkMuted")}];
    [v7 setBypassIntervention:{-[TUDialRequest bypassIntervention](self, "bypassIntervention")}];
  }

  return v7;
}

- (void)initWithProvider:(uint64_t)a1 featureFlags:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUDialRequest.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];
}

- (void)initWithDialIntent:(uint64_t)a1 providerManager:(NSObject *)a2 contactsDataSource:senderIdentityClient:isEmergencyServicesOverrideEnabled:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not find sender identity for contact %@", &v2, 0xCu);
}

+ (void)providerForIntentPreferredCallProvider:(void *)a1 recentCallProviderId:(NSObject *)a2 callCapability:providerManager:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "Using third-party provider: %@", &v4, 0xCu);
}

@end