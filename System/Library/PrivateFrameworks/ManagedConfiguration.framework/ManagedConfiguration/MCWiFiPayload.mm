@interface MCWiFiPayload
+ (id)localizedPluralForm;
+ (id)localizedSingularForm;
- (BOOL)_eapConfigIsValid:(id)valid error:(id *)error;
- (BOOL)_isEAPSIMConfig:(id)config;
- (BOOL)_qosMarkingConfigIsValid:(id)valid error:(id *)error;
- (MCWiFiPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_createDictionaryWithAllowListKeyMigrated:(id)migrated;
- (id)_eapPasswordFromConfig:(id)config isRequired:(BOOL *)required;
- (id)_eapUsernameFromConfig:(id)config isRequired:(BOOL *)required;
- (id)_localizedEncryptionTypeString;
- (id)filterForUserEnrollmentOutError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Label;
- (id)userInputFields;
- (id)verboseDescription;
@end

@implementation MCWiFiPayload

+ (id)localizedSingularForm
{
  mCAppendGreenteaSuffix = [@"WIFI_NETWORK_DESCRIPTION_SINGULAR_FORMAT" MCAppendGreenteaSuffix];
  v10 = MCLocalizedFormat(mCAppendGreenteaSuffix, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

+ (id)localizedPluralForm
{
  mCAppendGreenteaSuffix = [@"WIFI_NETWORK_DESCRIPTION_PLURAL_FORMAT" MCAppendGreenteaSuffix];
  v10 = MCLocalizedFormat(mCAppendGreenteaSuffix, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

- (BOOL)_eapConfigIsValid:(id)valid error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = [valid mutableCopy];
  v85 = 0;
  v7 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserName" isRequired:0 outError:&v85];
  v8 = v85;
  if (v8 || (v84 = 0, v9 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserPassword" isRequired:0 outError:&v84], (v8 = v84) != 0))
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
LABEL_4:
    v13 = 0;
LABEL_5:
    v14 = 0;
    v15 = 0;
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v83 = 0;
  v12 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"AcceptEAPTypes" isRequired:1 outError:&v83];
  v19 = v83;
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1AA5968];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v12 = v12;
  v21 = [v12 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v80;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v80 != v23)
        {
          objc_enumerationMutation(v12);
        }

        if (![v20 containsObject:*(*(&v79 + 1) + 8 * i)])
        {
          v10 = [MCPayload badFieldValueErrorWithField:@"AcceptEAPTypes"];

          v16 = 0;
          v15 = 0;
          v14 = 0;
          v13 = 0;
          goto LABEL_29;
        }
      }

      v22 = [v12 countByEnumeratingWithState:&v79 objects:v92 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v78 = 0;
  v25 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PayloadCertificateAnchorUUID" isRequired:0 outError:&v78];
  v19 = v78;
  if (v19 || (v77 = 0, v26 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"TLSTrustedCertificates" isRequired:0 outError:&v77], (v19 = v77) != 0) || (v76 = 0, v27 = objc_msgSend(v6, "MCValidateAndRemoveArrayOfClass:withKey:isRequired:outError:", objc_opt_class(), @"TLSTrustedServerCommonNames", 0, &v76), (v19 = v76) != 0) || (v75 = 0, v28 = objc_msgSend(v6, "MCValidateAndRemoveArrayOfClass:withKey:isRequired:outError:", objc_opt_class(), @"TLSTrustedServerNames", 0, &v75), (v19 = v75) != 0) || (v74 = 0, v29 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"TLSAllowTrustExceptions", 0, &v74), (v19 = v74) != 0) || (v73 = 0, v30 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"TLSCertificateIsRequired", 0, &v73), (v19 = v73) != 0))
  {
LABEL_11:
    v10 = v19;
    v11 = 0;
    goto LABEL_4;
  }

  v72 = 0;
  v13 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TTLSInnerAuthentication" isRequired:0 outError:&v72];
  v31 = v72;
  if (v31)
  {
    v10 = v31;
    v11 = 0;
    goto LABEL_5;
  }

  if (!v13)
  {
LABEL_38:
    v71 = 0;
    v15 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TLSMinimumVersion" isRequired:0 outError:&v71];
    v38 = v71;
    if (v38)
    {
      v10 = v38;
      v11 = 0;
      v14 = 0;
      goto LABEL_6;
    }

    v70 = 0;
    v16 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TLSMaximumVersion" isRequired:0 outError:&v70];
    v39 = v70;
    if (v39)
    {
      goto LABEL_56;
    }

    if (!(v15 | v16))
    {
      goto LABEL_52;
    }

    v90[0] = @"1.0";
    v90[1] = @"1.1";
    v90[2] = @"1.2";
    v90[3] = @"1.3";
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
    v57 = [MEMORY[0x1E695DFD8] setWithArray:?];
    if (v15 && ([v57 containsObject:v15] & 1) == 0)
    {
      v46 = @"TLSMinimumVersion";
    }

    else
    {
      if (!v16)
      {
LABEL_51:

LABEL_52:
        v69 = 0;
        v42 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OuterIdentity" isRequired:0 outError:&v69];
        v39 = v69;
        if (v39 || (v68 = 0, v43 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPFASTUsePAC" isRequired:0 outError:&v68], (v39 = v68) != 0) || (v67 = 0, v44 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"EAPFASTProvisionPAC", 0, &v67), (v39 = v67) != 0) || (v66 = 0, v45 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"EAPFASTProvisionPACAnonymously", 0, &v66), (v39 = v66) != 0))
        {
LABEL_56:
          v10 = v39;
          v11 = 0;
          v14 = 0;
          goto LABEL_7;
        }

        v65 = 0;
        v14 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPSIMNumberOfRANDs" isRequired:0 outError:&v65];
        v47 = v65;
        if (!v47)
        {
          if (!v14 || [v14 intValue] == 2 || objc_msgSend(v14, "intValue") == 3)
          {
            v64 = 0;
            v48 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OneTimeUserPassword" isRequired:0 outError:&v64];
            v47 = v64;
            if (v47)
            {
              goto LABEL_71;
            }

            v63 = 0;
            v49 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPSIMAKAConservativePeer" isRequired:0 outError:&v63];
            v47 = v63;
            if (v47)
            {
              goto LABEL_71;
            }

            v62 = 0;
            v50 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPSIMAKAPseudonymIdentityLifetimeHours" isRequired:0 outError:&v62];
            v47 = v62;
            if (v47)
            {
              goto LABEL_71;
            }

            v61 = 0;
            v51 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPSIMAKAEncryptedIdentityEnabled" isRequired:0 outError:&v61];
            v47 = v61;
            if (v47)
            {
              goto LABEL_71;
            }

            v60 = 0;
            v52 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPSIMAKARealm" isRequired:0 outError:&v60];
            v47 = v60;
            if (v47)
            {
              goto LABEL_71;
            }

            v59 = 0;
            v53 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ExtensibleSSOProvider" isRequired:0 outError:&v59];
            v47 = v59;
            if (v47)
            {
              goto LABEL_71;
            }

            v58 = 0;
            v55 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"EAPSIMAKANotificationActions" isRequired:0 outError:&v58];
            v54 = v58;
          }

          else
          {
            v54 = [MCPayload badFieldValueErrorWithField:@"EAPSIMNumberOfRANDs"];
          }

          v10 = v54;
          goto LABEL_29;
        }

LABEL_71:
        v10 = v47;
        goto LABEL_30;
      }

      if ([v57 containsObject:v16])
      {
        if (v15)
        {
          v56 = [v40 indexOfObject:v15];
          if (v56 > [v40 indexOfObject:v16])
          {
            v41 = [MCPayload conflictingFieldValueErrorWithUnderlyingError:0, @"TLSMinimumVersion", @"TLSMaximumVersion", v15, v16, 0];
LABEL_60:
            v10 = v41;

            goto LABEL_41;
          }
        }

        goto LABEL_51;
      }

      v46 = @"TLSMaximumVersion";
    }

    v41 = [MCPayload badFieldValueErrorWithField:v46];
    goto LABEL_60;
  }

  v35 = MEMORY[0x1E695DFD8];
  v91[0] = @"PAP";
  v91[1] = @"CHAP";
  v91[2] = @"MSCHAP";
  v91[3] = @"MSCHAPv2";
  v91[4] = @"EAP";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:5];
  v37 = [v35 setWithArray:v36];

  if ([v37 containsObject:v13])
  {

    goto LABEL_38;
  }

  v10 = [MCPayload badFieldValueErrorWithField:@"TTLSInnerAuthentication"];

  v16 = 0;
  v15 = 0;
LABEL_41:
  v14 = 0;
LABEL_29:
  if (v10)
  {
LABEL_30:
    v11 = 0;
    goto LABEL_7;
  }

  if ([v6 count])
  {
    v32 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      friendlyName = [(MCPayload *)self friendlyName];
      *buf = 138543618;
      v87 = friendlyName;
      v88 = 2114;
      v89 = v6;
      _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_DEFAULT, "Payload “%{public}@” contains unexpected fields in EAP Configuration. They are: %{public}@", buf, 0x16u);
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_7:
  if (error)
  {
    v17 = v10;
    *error = v10;
  }

  return v11;
}

- (BOOL)_qosMarkingConfigIsValid:(id)valid error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = [valid mutableCopy];
  v24 = 0;
  v7 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"QoSMarkingWhitelistedAppIdentifiers" isRequired:0 allowZeroLengthString:0 outError:&v24];
  v8 = v24;
  if (v8 || (v23 = 0, v9 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"QoSMarkingAllowListAppIdentifiers" isRequired:0 allowZeroLengthString:0 outError:&v23], (v8 = v23) != 0) || (v22 = 0, v10 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"QoSMarkingAppleAudioVideoCalls", 0, &v22), (v8 = v22) != 0) || (v21 = 0, v11 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"QoSMarkingEnabled", 0, &v21), (v8 = v21) != 0) || (v20 = 0, v12 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"QoSMarkingURL", 0, &v20), (v8 = v20) != 0))
  {
    v13 = v8;
    v14 = 0;
    if (error)
    {
LABEL_7:
      v15 = v13;
      *error = v13;
    }
  }

  else
  {
    if ([v6 count])
    {
      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        friendlyName = [(MCPayload *)self friendlyName];
        *buf = 138543618;
        v26 = friendlyName;
        v27 = 2114;
        v28 = v6;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEFAULT, "Payload “%{public}@” contains unexpected fields in QoS Marking Configuration. They are: %{public}@", buf, 0x16u);
      }
    }

    v13 = 0;
    v14 = 1;
    if (error)
    {
      goto LABEL_7;
    }
  }

  return v14;
}

- (id)_createDictionaryWithAllowListKeyMigrated:(id)migrated
{
  migratedCopy = migrated;
  v4 = [migratedCopy objectForKeyedSubscript:@"QoSMarkingAllowListAppIdentifiers"];

  if (v4)
  {
    v5 = [migratedCopy mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"QoSMarkingAllowListAppIdentifiers"];
    [v5 setObject:v6 forKeyedSubscript:@"QoSMarkingWhitelistedAppIdentifiers"];

    [v5 setObject:0 forKeyedSubscript:@"QoSMarkingAllowListAppIdentifiers"];
    v7 = [v5 copy];
  }

  else
  {
    v7 = migratedCopy;
  }

  return v7;
}

- (id)_eapUsernameFromConfig:(id)config isRequired:(BOOL *)required
{
  configCopy = config;
  v6 = configCopy;
  if (configCopy)
  {
    v7 = [configCopy objectForKey:@"AcceptEAPTypes"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:13];
      if (![v7 containsObject:v8])
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:18];
        if (![v7 containsObject:v9])
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInt:23];
          v13 = [v7 containsObject:v12];

          if (required && (v13 & 1) == 0)
          {
            *required = 1;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    v10 = [v6 objectForKey:@"UserName"];

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)_eapPasswordFromConfig:(id)config isRequired:(BOOL *)required
{
  configCopy = config;
  v6 = configCopy;
  if (configCopy)
  {
    v7 = [configCopy objectForKey:@"AcceptEAPTypes"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:13];
      if (![v7 containsObject:v8])
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:18];
        if (![v7 containsObject:v9])
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInt:23];
          v13 = [v7 containsObject:v12];

          if (required && (v13 & 1) == 0)
          {
            *required = 1;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    v10 = [v6 objectForKey:@"UserPassword"];

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)_isEAPSIMConfig:(id)config
{
  v3 = [config objectForKey:@"AcceptEAPTypes"];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:18];
    v5 = [v3 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MCWiFiPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v175 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v169.receiver = self;
  v169.super_class = MCWiFiPayload;
  v10 = [(MCPayload *)&v169 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_25;
  }

  v168 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsHotspot" isRequired:0 outError:&v168];
  qosMarkingConfig = v168;
  isHotspotNum = v10->_isHotspotNum;
  v10->_isHotspotNum = v11;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v10->_isHotspot = [(NSNumber *)v10->_isHotspotNum BOOLValue];
  v167 = 0;
  v14 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ServiceProviderRoamingEnabled" isRequired:0 outError:&v167];
  qosMarkingConfig = v167;
  serviceProviderRoamingEnabledNum = v10->_serviceProviderRoamingEnabledNum;
  v10->_serviceProviderRoamingEnabledNum = v14;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v10->_serviceProviderRoamingEnabled = [(NSNumber *)v10->_serviceProviderRoamingEnabledNum BOOLValue];
  v166 = 0;
  v16 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyPACFallbackAllowed" isRequired:0 outError:&v166];
  qosMarkingConfig = v166;
  proxyPACFallbackAllowedNum = v10->_proxyPACFallbackAllowedNum;
  v10->_proxyPACFallbackAllowedNum = v16;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v10->_proxyPACFallbackAllowed = [(NSNumber *)v10->_proxyPACFallbackAllowedNum BOOLValue];
  v165 = 0;
  v18 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DomainName" isRequired:0 outError:&v165];
  qosMarkingConfig = v165;
  domainName = v10->_domainName;
  v10->_domainName = v18;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v164 = 0;
  v20 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"HESSID" isRequired:0 outError:&v164];
  qosMarkingConfig = v164;
  HESSID = v10->_HESSID;
  v10->_HESSID = v20;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v163 = 0;
  v22 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"RoamingConsortiumOIs" isRequired:0 outError:&v163];
  qosMarkingConfig = v163;
  roamingConsortiumOIs = v10->_roamingConsortiumOIs;
  v10->_roamingConsortiumOIs = v22;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v162 = 0;
  v24 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"NAIRealmNames" isRequired:0 outError:&v162];
  qosMarkingConfig = v162;
  NAIRealmNames = v10->_NAIRealmNames;
  v10->_NAIRealmNames = v24;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v161 = 0;
  v26 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MCCAndMNCs" isRequired:0 outError:&v161];
  qosMarkingConfig = v161;
  MCCAndMNCs = v10->_MCCAndMNCs;
  v10->_MCCAndMNCs = v26;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v160 = 0;
  v28 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DisplayedOperatorName" isRequired:0 outError:&v160];
  qosMarkingConfig = v160;
  displayedOperatorName = v10->_displayedOperatorName;
  v10->_displayedOperatorName = v28;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v159 = 0;
  v30 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"HIDDEN_NETWORK" isRequired:0 outError:&v159];
  qosMarkingConfig = v159;
  isHiddenNum = v10->_isHiddenNum;
  v10->_isHiddenNum = v30;

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

  v10->_isHidden = [(NSNumber *)v10->_isHiddenNum BOOLValue];
  v158 = 0;
  v32 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"SSID_STR" isRequired:0 outError:&v158];
  v33 = v158;
  ssid = v10->_ssid;
  v10->_ssid = v32;

  if (v33)
  {
    goto LABEL_14;
  }

  v157 = 0;
  v35 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EncryptionType" isRequired:0 outError:&v157];
  v33 = v157;
  encryptionType = v10->_encryptionType;
  v10->_encryptionType = v35;

  if (v33)
  {
    goto LABEL_14;
  }

  v10->_allowJoinBeforeFirstUnlock = 0;
  if (!v10->_encryptionType)
  {
    v10->_encryptionType = @"Any";
  }

  if ([profileCopy isStub])
  {
    v156 = 0;
    v49 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CredentialUUID" isRequired:0 outError:&v156];
    v33 = v156;
    credentialUUID = v10->_credentialUUID;
    v10->_credentialUUID = v49;

    if (v33)
    {
LABEL_14:
      qosMarkingConfig = v33;
LABEL_15:
      v37 = [(MCPayload *)v10 malformedPayloadErrorWithError:qosMarkingConfig];
      v38 = v37;
      if (error)
      {
        v39 = v37;
        *error = v38;
      }

      v40 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
        v42 = objc_opt_class();
        v43 = v42;
        mCVerboseDescription = [v38 MCVerboseDescription];
        *buf = 138543618;
        v171 = v42;
        v172 = 2114;
        v173 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_20;
    }

    v155 = 0;
    v127 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyType" isRequired:0 outError:&v155];
    v51 = v155;
    if (!v51)
    {
      intValue = [v127 intValue];
      v10->_proxyType = intValue;
      if (intValue == 1)
      {
        v150 = 0;
        v60 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPACURL" isRequired:0 outError:&v150];
        v54 = v150;
        v61 = 216;
      }

      else
      {
        if (intValue != 2)
        {
          goto LABEL_65;
        }

        v154 = 0;
        v53 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyServer" isRequired:0 outError:&v154];
        v54 = v154;
        proxyServer = v10->_proxyServer;
        v10->_proxyServer = v53;

        if (v54)
        {
          goto LABEL_95;
        }

        v153 = 0;
        v56 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyServerPort" isRequired:0 outError:&v153];
        v54 = v153;
        proxyServerPort = v10->_proxyServerPort;
        v10->_proxyServerPort = v56;

        if (v54)
        {
          goto LABEL_95;
        }

        v152 = 0;
        v58 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyUsername" isRequired:0 outError:&v152];
        v54 = v152;
        proxyUsername = v10->_proxyUsername;
        v10->_proxyUsername = v58;

        if (v54)
        {
          goto LABEL_95;
        }

        v151 = 0;
        v60 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPassword" isRequired:0 outError:&v151];
        v54 = v151;
        v61 = 208;
      }

      v77 = *(&v10->super.super.isa + v61);
      *(&v10->super.super.isa + v61) = v60;

      if (!v54)
      {
        goto LABEL_65;
      }

LABEL_95:
      qosMarkingConfig = v54;
      goto LABEL_46;
    }

LABEL_45:
    qosMarkingConfig = v51;
LABEL_46:

    goto LABEL_15;
  }

  if ([(NSString *)v10->_encryptionType isEqualToString:@"Any"])
  {
    v62 = 1;
  }

  else
  {
    v62 = [(NSString *)v10->_encryptionType isEqualToString:@"WEP"];
  }

  v10->_isWEP = v62;
  if ([(NSString *)v10->_encryptionType isEqualToString:@"Any"]|| [(NSString *)v10->_encryptionType isEqualToString:@"WPA"]|| [(NSString *)v10->_encryptionType isEqualToString:@"WPA2"])
  {
    v10->_isWPA = 1;
    goto LABEL_44;
  }

  v75 = [(NSString *)v10->_encryptionType isEqualToString:@"WPA3"];
  v10->_isWPA = v75;
  if (v10->_isWEP || v75)
  {
LABEL_44:
    v149 = 0;
    v127 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPClientConfiguration" isRequired:0 outError:&v149];
    v51 = v149;
    if (v51)
    {
      goto LABEL_45;
    }

    if (v127)
    {
      v148 = 0;
      v63 = [(MCWiFiPayload *)v10 _eapConfigIsValid:v127 error:&v148];
      v64 = v148;
      if (v63)
      {
        v65 = [(MCWiFiPayload *)v10 _eapUsernameFromConfig:v127 isRequired:&v10->_usernameRequired];
        username = v10->_username;
        v10->_username = v65;

        v67 = [(MCWiFiPayload *)v10 _eapPasswordFromConfig:v127 isRequired:&v10->_passwordRequired];
        password = v10->_password;
        v10->_password = v67;

        v147 = v64;
        v125 = [v127 mutableCopy];
        v69 = [v125 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PayloadCertificateAnchorUUID" isRequired:0 outError:&v147];
        v70 = v147;

        payloadCertificateAnchorUUID = v10->_payloadCertificateAnchorUUID;
        v10->_payloadCertificateAnchorUUID = v69;

        if (v70)
        {
          qosMarkingConfig = v70;
LABEL_70:

          goto LABEL_46;
        }

        v146 = 0;
        v82 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"PayloadCertificateUUID" isRequired:0 outError:&v146];
        v83 = v146;
        certificateUUID = v10->_certificateUUID;
        v10->_certificateUUID = v82;

        if (v83)
        {
          qosMarkingConfig = v83;
          goto LABEL_70;
        }

        [(MCWiFiPayload *)v10 setEapClientConfig:v125];

        goto LABEL_58;
      }
    }

    else
    {
      v64 = 0;
    }

    v145 = v64;
    v72 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Password" isRequired:0 outError:&v145];
    v73 = v145;

    v74 = v10->_password;
    v10->_password = v72;

    if (v73)
    {
      qosMarkingConfig = v73;
      goto LABEL_46;
    }

    v10->_passwordRequired = 1;
LABEL_58:
  }

  v144 = 0;
  v127 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyType" isRequired:0 outError:&v144];
  v51 = v144;
  if (v51)
  {
    goto LABEL_45;
  }

  if (v127)
  {
    if ([v127 isEqualToString:@"None"])
    {
      v76 = 0;
LABEL_86:
      [(MCWiFiPayload *)v10 setProxyType:v76];
      goto LABEL_87;
    }

    if ([v127 isEqualToString:@"Manual"])
    {
      v76 = 2;
      goto LABEL_86;
    }

    if ([v127 isEqualToString:@"Auto"])
    {
      v76 = 1;
      goto LABEL_86;
    }

    v51 = [MCPayload badFieldValueErrorWithField:@"ProxyType"];
    if (v51)
    {
      goto LABEL_45;
    }
  }

LABEL_87:
  if ([(MCWiFiPayload *)v10 proxyType]== 2)
  {
    v143 = 0;
    v92 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyServer" isRequired:1 outError:&v143];
    v54 = v143;
    v93 = v10->_proxyServer;
    v10->_proxyServer = v92;

    if (v54)
    {
      goto LABEL_95;
    }

    v142 = 0;
    v94 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyServerPort" isRequired:0 outError:&v142];
    v54 = v142;
    v95 = v10->_proxyServerPort;
    v10->_proxyServerPort = v94;

    if (v54)
    {
      goto LABEL_95;
    }

    v141 = 0;
    v96 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyUsername" isRequired:0 outError:&v141];
    v54 = v141;
    v97 = v10->_proxyUsername;
    v10->_proxyUsername = v96;

    if (v54)
    {
      goto LABEL_95;
    }

    v140 = 0;
    v98 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPassword" isRequired:0 outError:&v140];
    v54 = v140;
    v99 = 208;
  }

  else
  {
    if (v10->_proxyType != 1)
    {
      goto LABEL_96;
    }

    v139 = 0;
    v98 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPACURL" isRequired:0 outError:&v139];
    v54 = v139;
    v99 = 216;
  }

  v100 = *(&v10->super.super.isa + v99);
  *(&v10->super.super.isa + v99) = v98;

  if (v54)
  {
    goto LABEL_95;
  }

LABEL_96:
  ssid = [(MCWiFiPayload *)v10 ssid];
  v102 = [ssid length];

  if (v102)
  {
LABEL_97:
    qosMarkingConfig = 0;
    goto LABEL_102;
  }

  if ([(MCWiFiPayload *)v10 isHotspot])
  {
    domainName = [(MCWiFiPayload *)v10 domainName];
    v104 = [domainName length];

    if (v104)
    {
      v105 = MEMORY[0x1E696AEC0];
      domainName2 = [(MCWiFiPayload *)v10 domainName];
      mCMakeUUID = [MEMORY[0x1E696AEC0] MCMakeUUID];
      v107 = [v105 stringWithFormat:@"%@-%@", domainName2, mCMakeUUID];
      v109 = v10->_ssid;
      v10->_ssid = v107;

      goto LABEL_97;
    }
  }

  qosMarkingConfig = [MCPayload badFieldTypeErrorWithField:@"SSID_STR"];
LABEL_102:
  roamingConsortiumOIs = [(MCWiFiPayload *)v10 roamingConsortiumOIs];
  v111 = [roamingConsortiumOIs count];

  if (!v111)
  {
    [(MCWiFiPayload *)v10 setRoamingConsortiumOIs:0];
  }

  if (qosMarkingConfig)
  {
    goto LABEL_46;
  }

  nAIRealmNames = [(MCWiFiPayload *)v10 NAIRealmNames];
  v113 = [nAIRealmNames count];

  if (!v113)
  {
    [(MCWiFiPayload *)v10 setNAIRealmNames:0];
  }

  mCCAndMNCs = [(MCWiFiPayload *)v10 MCCAndMNCs];
  v115 = [mCCAndMNCs count];

  if (v115)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = [(MCWiFiPayload *)v10 MCCAndMNCs];
    v122 = [obj countByEnumeratingWithState:&v135 objects:v174 count:16];
    if (v122)
    {
      v123 = *v136;
      while (1)
      {
        v126 = 0;
LABEL_111:
        if (*v136 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v116 = *(*(&v135 + 1) + 8 * v126);
        objc_opt_class();
        v117 = v116;
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v116 length] != 6)
        {
          break;
        }

        v128 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];
        for (i = 0; i != 6; ++i)
        {
          v119 = [v117 characterAtIndex:i];
          v120 = [v128 characterIsMember:v119];
          if (i == 3)
          {
            if (v119 == 70)
            {
              v121 = 1;
            }

            else
            {
              v121 = v120;
            }

            if ((v121 & 1) == 0)
            {
LABEL_130:

              goto LABEL_131;
            }
          }

          else if ((v120 & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        if (++v126 != v122)
        {
          goto LABEL_111;
        }

        v122 = [obj countByEnumeratingWithState:&v135 objects:v174 count:16];
        if (!v122)
        {
          goto LABEL_126;
        }
      }

LABEL_131:
      v54 = [MCPayload badFieldTypeErrorWithField:@"MCCAndMNCs"];

      if (v54)
      {
        goto LABEL_95;
      }
    }

    else
    {
LABEL_126:
    }
  }

  else
  {
    [(MCWiFiPayload *)v10 setMCCAndMNCs:0];
  }

LABEL_65:

  v134 = 0;
  v78 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AutoJoin" isRequired:0 outError:&v134];
  v33 = v134;
  autoJoinNum = v10->_autoJoinNum;
  v10->_autoJoinNum = v78;

  if (v33)
  {
    goto LABEL_14;
  }

  v80 = v10->_autoJoinNum;
  v81 = !v80 || [(NSNumber *)v80 BOOLValue];
  v10->_autoJoin = v81;
  v133 = 0;
  v85 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"FirstAutoJoinRestricted" isRequired:0 outError:&v133];
  v33 = v133;
  isFirstAutoJoinRestricted = v10->_isFirstAutoJoinRestricted;
  v10->_isFirstAutoJoinRestricted = v85;

  if (v33)
  {
    goto LABEL_14;
  }

  v132 = 0;
  v87 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CaptiveBypass" isRequired:0 outError:&v132];
  v33 = v132;
  captiveBypassNum = v10->_captiveBypassNum;
  v10->_captiveBypassNum = v87;

  if (v33)
  {
    goto LABEL_14;
  }

  v89 = v10->_captiveBypassNum;
  if (v89)
  {
    LOBYTE(v89) = [(NSNumber *)v89 BOOLValue];
  }

  v10->_captiveBypass = v89;
  v131 = 0;
  v90 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DisableAssociationMACRandomization" isRequired:0 outError:&v131];
  v33 = v131;
  disableAssociationMACRandomization = v10->_disableAssociationMACRandomization;
  v10->_disableAssociationMACRandomization = v90;

  if (v33)
  {
    goto LABEL_14;
  }

  v130 = 0;
  v127 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"QoSMarkingPolicy" isRequired:0 outError:&v130];
  v51 = v130;
  if (v51)
  {
    goto LABEL_45;
  }

  if (v127)
  {
    v129 = 0;
    [(MCWiFiPayload *)v10 _qosMarkingConfigIsValid:v127 error:&v129];
    v51 = v129;
    if (!v51)
    {
      v38 = [(MCWiFiPayload *)v10 _createDictionaryWithAllowListKeyMigrated:v127];

      goto LABEL_134;
    }

    goto LABEL_45;
  }

  v38 = 0;
LABEL_134:
  [(MCWiFiPayload *)v10 setQosMarkingConfig:v38];
  if (!v10->_allowJoinBeforeFirstUnlock)
  {
    qosMarkingConfig = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (![(MCWiFiPayload *)v10 isHotspot]&& !v10->_eapClientConfig && ![(MCWiFiPayload *)v10 proxyType])
  {
    qosMarkingConfig = [(MCWiFiPayload *)v10 qosMarkingConfig];

    if (!qosMarkingConfig)
    {
      goto LABEL_20;
    }
  }

  qosMarkingConfig = [MCPayload badFieldTypeErrorWithField:@"AllowJoinBeforeFirstUnlock"];

  if (qosMarkingConfig)
  {
    goto LABEL_15;
  }

LABEL_21:
  if ([dictionaryCopy count])
  {
    v45 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v46 = v45;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v171 = friendlyName;
      v172 = 2114;
      v173 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v46, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_25:
  return v10;
}

- (id)stubDictionary
{
  v39.receiver = self;
  v39.super_class = MCWiFiPayload;
  stubDictionary = [(MCPayload *)&v39 stubDictionary];
  v4 = stubDictionary;
  ssid = self->_ssid;
  if (ssid)
  {
    [stubDictionary setObject:ssid forKey:@"SSID_STR"];
  }

  encryptionType = self->_encryptionType;
  if (encryptionType)
  {
    [v4 setObject:encryptionType forKey:@"EncryptionType"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoJoin];
  [v4 setObject:v7 forKey:@"AutoJoin"];

  isFirstAutoJoinRestricted = self->_isFirstAutoJoinRestricted;
  if (isFirstAutoJoinRestricted)
  {
    [v4 setObject:isFirstAutoJoinRestricted forKey:@"FirstAutoJoinRestricted"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_captiveBypass];
  [v4 setObject:v9 forKey:@"CaptiveBypass"];

  disableAssociationMACRandomization = self->_disableAssociationMACRandomization;
  if (disableAssociationMACRandomization)
  {
    [v4 setObject:disableAssociationMACRandomization forKey:@"DisableAssociationMACRandomization"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_proxyType];
  [v4 setObject:v11 forKey:@"ProxyType"];

  proxyServer = self->_proxyServer;
  if (proxyServer)
  {
    [v4 setObject:proxyServer forKey:@"ProxyServer"];
  }

  proxyServerPort = self->_proxyServerPort;
  if (proxyServerPort)
  {
    [v4 setObject:proxyServerPort forKey:@"ProxyServerPort"];
  }

  proxyPACURLString = self->_proxyPACURLString;
  if (proxyPACURLString)
  {
    [v4 setObject:proxyPACURLString forKey:@"ProxyPACURL"];
  }

  credentialUUID = self->_credentialUUID;
  if (credentialUUID)
  {
    [v4 setObject:credentialUUID forKey:@"CredentialUUID"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWiFiPayload isHotspot](self, "isHotspot")}];
  [v4 setObject:v16 forKeyedSubscript:@"IsHotspot"];

  hESSID = [(MCWiFiPayload *)self HESSID];

  if (hESSID)
  {
    hESSID2 = [(MCWiFiPayload *)self HESSID];
    [v4 setObject:hESSID2 forKeyedSubscript:@"HESSID"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWiFiPayload isServiceProviderRoamingEnabled](self, "isServiceProviderRoamingEnabled")}];
  [v4 setObject:v19 forKeyedSubscript:@"ServiceProviderRoamingEnabled"];

  roamingConsortiumOIs = [(MCWiFiPayload *)self roamingConsortiumOIs];

  if (roamingConsortiumOIs)
  {
    roamingConsortiumOIs2 = [(MCWiFiPayload *)self roamingConsortiumOIs];
    [v4 setObject:roamingConsortiumOIs2 forKeyedSubscript:@"RoamingConsortiumOIs"];
  }

  nAIRealmNames = [(MCWiFiPayload *)self NAIRealmNames];

  if (nAIRealmNames)
  {
    nAIRealmNames2 = [(MCWiFiPayload *)self NAIRealmNames];
    [v4 setObject:nAIRealmNames2 forKeyedSubscript:@"NAIRealmNames"];
  }

  mCCAndMNCs = [(MCWiFiPayload *)self MCCAndMNCs];

  if (mCCAndMNCs)
  {
    mCCAndMNCs2 = [(MCWiFiPayload *)self MCCAndMNCs];
    [v4 setObject:mCCAndMNCs2 forKeyedSubscript:@"MCCAndMNCs"];
  }

  displayedOperatorName = [(MCWiFiPayload *)self displayedOperatorName];

  if (displayedOperatorName)
  {
    displayedOperatorName2 = [(MCWiFiPayload *)self displayedOperatorName];
    [v4 setObject:displayedOperatorName2 forKeyedSubscript:@"DisplayedOperatorName"];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_proxyPACFallbackAllowed];
  [v4 setObject:v28 forKeyedSubscript:@"ProxyPACFallbackAllowed"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHidden];
  [v4 setObject:v29 forKeyedSubscript:@"HIDDEN_NETWORK"];

  qosMarkingConfig = [(MCWiFiPayload *)self qosMarkingConfig];

  if (qosMarkingConfig)
  {
    qosMarkingConfig2 = [(MCWiFiPayload *)self qosMarkingConfig];
    [v4 setObject:qosMarkingConfig2 forKeyedSubscript:@"QoSMarkingPolicy"];
  }

  eapClientConfig = self->_eapClientConfig;
  if (eapClientConfig)
  {
    v33 = [(NSDictionary *)eapClientConfig mutableCopy];
    v34 = self->_eapClientConfig;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __31__MCWiFiPayload_stubDictionary__block_invoke;
    v37[3] = &unk_1E77D2318;
    v38 = v33;
    v35 = v33;
    [(NSDictionary *)v34 enumerateKeysAndObjectsUsingBlock:v37];
    [v4 setObject:v35 forKeyedSubscript:@"EAPClientConfiguration"];
  }

  return v4;
}

void __31__MCWiFiPayload_stubDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (_nonPrivacySensitiveEAPKeys_onceToken != -1)
  {
    __31__MCWiFiPayload_stubDictionary__block_invoke_cold_1();
  }

  if (([_nonPrivacySensitiveEAPKeys_keys containsObject:v6] & 1) == 0)
  {
    [*(a1 + 32) setObject:@"(present)" forKeyedSubscript:v6];
  }
}

- (id)subtitle1Label
{
  ssid = [(MCWiFiPayload *)self ssid];
  if (ssid)
  {
    v3 = @"NETWORK_COLON";
  }

  else
  {
    v3 = @"NETWORK_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  ssid = [(MCWiFiPayload *)self ssid];
  if (ssid)
  {
    v3 = MCLocalizedString(@"ENCRYPTION_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_localizedEncryptionTypeString
{
  encryptionType = [(MCWiFiPayload *)self encryptionType];
  ssid = [(MCWiFiPayload *)self ssid];

  if (ssid)
  {
    if (encryptionType)
    {
      if (![encryptionType isEqualToString:@"Any"])
      {
        v6 = encryptionType;
        goto LABEL_8;
      }

      v5 = @"ANY_ENCRYPTION";
    }

    else
    {
      v5 = @"NONE";
    }

    v6 = MCLocalizedString(v5);
LABEL_8:
    ssid = v6;
  }

  return ssid;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if ([(MCWiFiPayload *)self isHotspot])
  {
    v5 = [MCKeyValue alloc];
    v6 = MCLocalizedStringForBool(1);
    v7 = MCLocalizedString(@"WIFI_HOTSPOT");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:v6 localizedKey:v7];

    [v4 addObject:v8];
  }

  if ([(MCWiFiPayload *)self allowJoinBeforeFirstUnlock])
  {
    v9 = [MCKeyValue alloc];
    v10 = MCLocalizedStringForBool(1);
    v11 = MCLocalizedString(@"WIFI_JOIN_BEFORE_FIRST_UNLOCK");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:v10 localizedKey:v11];

    [v4 addObject:v12];
  }

  ssid = [(MCWiFiPayload *)self ssid];

  if (ssid)
  {
    v14 = [MCKeyValue alloc];
    ssid2 = [(MCWiFiPayload *)self ssid];
    v16 = MCLocalizedString(@"WIFI_SSID");
    v17 = [(MCKeyValue *)v14 initWithLocalizedString:ssid2 localizedKey:v16];

    [v4 addObject:v17];
  }

  hESSID = [(MCWiFiPayload *)self HESSID];

  if (hESSID)
  {
    v19 = [MCKeyValue alloc];
    hESSID2 = [(MCWiFiPayload *)self HESSID];
    v21 = MCLocalizedString(@"WIFI_HESSID");
    v22 = [(MCKeyValue *)v19 initWithLocalizedString:hESSID2 localizedKey:v21];

    [v4 addObject:v22];
  }

  displayedOperatorName = [(MCWiFiPayload *)self displayedOperatorName];

  if (displayedOperatorName)
  {
    v24 = [MCKeyValue alloc];
    displayedOperatorName2 = [(MCWiFiPayload *)self displayedOperatorName];
    v26 = MCLocalizedString(@"WIFI_OPERATOR");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:displayedOperatorName2 localizedKey:v26];

    [v4 addObject:v27];
  }

  domainName = [(MCWiFiPayload *)self domainName];

  if (domainName)
  {
    v29 = [MCKeyValue alloc];
    domainName2 = [(MCWiFiPayload *)self domainName];
    v31 = MCLocalizedString(@"WIFI_DOMAIN");
    v32 = [(MCKeyValue *)v29 initWithLocalizedString:domainName2 localizedKey:v31];

    [v4 addObject:v32];
  }

  isHiddenNum = [(MCWiFiPayload *)self isHiddenNum];

  if (isHiddenNum)
  {
    v34 = [MCKeyValue alloc];
    v35 = MCLocalizedStringForBool([(NSNumber *)self->_isHiddenNum BOOLValue]);
    v36 = MCLocalizedString(@"WIFI_HIDDEN");
    v37 = [(MCKeyValue *)v34 initWithLocalizedString:v35 localizedKey:v36];

    [v4 addObject:v37];
  }

  _localizedEncryptionTypeString = [(MCWiFiPayload *)self _localizedEncryptionTypeString];
  if (_localizedEncryptionTypeString)
  {
    v39 = [MCKeyValue alloc];
    v40 = MCLocalizedString(@"WIFI_ENCRYPTION");
    v41 = [(MCKeyValue *)v39 initWithLocalizedString:_localizedEncryptionTypeString localizedKey:v40];
    [v4 addObject:v41];
  }

  autoJoinNum = [(MCWiFiPayload *)self autoJoinNum];

  if (autoJoinNum)
  {
    v43 = [MCKeyValue alloc];
    v44 = MCLocalizedStringForBool([(NSNumber *)self->_autoJoinNum BOOLValue]);
    v45 = MCLocalizedString(@"WIFI_AUTOJOIN");
    v46 = [(MCKeyValue *)v43 initWithLocalizedString:v44 localizedKey:v45];

    [v4 addObject:v46];
  }

  if ([(MCWiFiPayload *)self captiveBypass])
  {
    v47 = [MCKeyValue alloc];
    v48 = MCLocalizedStringForBool([(NSNumber *)self->_captiveBypassNum BOOLValue]);
    v49 = MCLocalizedString(@"WIFI_CAPTIVEBYPASS");
    v50 = [(MCKeyValue *)v47 initWithLocalizedString:v48 localizedKey:v49];

    [v4 addObject:v50];
  }

  disableAssociationMACRandomization = [(MCWiFiPayload *)self disableAssociationMACRandomization];

  if (disableAssociationMACRandomization)
  {
    v52 = [MCKeyValue alloc];
    v53 = MCLocalizedStringForBool([(NSNumber *)self->_disableAssociationMACRandomization BOOLValue]);
    v54 = MCLocalizedString(@"WIFI_ASSOCIATIONMACRANDOMIZATIONDISABLED");
    v55 = [(MCKeyValue *)v52 initWithLocalizedString:v53 localizedKey:v54];

    [v4 addObject:v55];
  }

  password = [(MCWiFiPayload *)self password];

  if (password)
  {
    v57 = [MCKeyValue alloc];
    v58 = MCLocalizedString(@"PRESENT");
    v59 = MCLocalizedString(@"PASSWORD");
    v60 = [(MCKeyValue *)v57 initWithLocalizedString:v58 localizedKey:v59];

    [v4 addObject:v60];
  }

  eapClientConfig = [(MCWiFiPayload *)self eapClientConfig];

  if (eapClientConfig)
  {
    v62 = [MCKeyValue alloc];
    v63 = MCLocalizedString(@"PRESENT");
    v64 = MCLocalizedString(@"WIFI_EAP_CONFIGURATION");
    v65 = [(MCKeyValue *)v62 initWithLocalizedString:v63 localizedKey:v64];

    [v4 addObject:v65];
  }

  if ([v4 count])
  {
    v66 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v66];

    v67 = objc_opt_new();
    v4 = v67;
  }

  proxyType = [(MCWiFiPayload *)self proxyType];
  if (proxyType > 2)
  {
    v69 = @"WIFI_PROXY_TYPE_UNKNOWN";
  }

  else
  {
    v69 = off_1E77D2338[proxyType];
  }

  v70 = MCLocalizedString(v69);
  v71 = [MCKeyValue alloc];
  v72 = MCLocalizedString(@"PROXY");
  v155 = v70;
  v73 = [(MCKeyValue *)v71 initWithLocalizedString:v70 localizedKey:v72];
  [v4 addObject:v73];

  proxyServer = [(MCWiFiPayload *)self proxyServer];

  if (proxyServer)
  {
    v75 = [MCKeyValue alloc];
    proxyServer2 = [(MCWiFiPayload *)self proxyServer];
    v77 = MCLocalizedString(@"SERVER");
    v78 = [(MCKeyValue *)v75 initWithLocalizedString:proxyServer2 localizedKey:v77];

    [v4 addObject:v78];
  }

  proxyServerPort = [(MCWiFiPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    v80 = MEMORY[0x1E696AEC0];
    proxyServerPort2 = [(MCWiFiPayload *)self proxyServerPort];
    v82 = [v80 stringWithFormat:@"%@", proxyServerPort2];

    v83 = [MCKeyValue alloc];
    v84 = MCLocalizedString(@"PORT");
    v85 = [(MCKeyValue *)v83 initWithLocalizedString:v82 localizedKey:v84];

    [v4 addObject:v85];
  }

  proxyUsername = [(MCWiFiPayload *)self proxyUsername];

  v87 = 0x1E77CF000uLL;
  if (proxyUsername)
  {
    v88 = [MCKeyValue alloc];
    proxyUsername2 = [(MCWiFiPayload *)self proxyUsername];
    v90 = MCLocalizedString(@"USERNAME");
    v91 = [(MCKeyValue *)v88 initWithLocalizedString:proxyUsername2 localizedKey:v90];

    [v4 addObject:v91];
  }

  proxyPassword = [(MCWiFiPayload *)self proxyPassword];

  if (proxyPassword)
  {
    v93 = [MCKeyValue alloc];
    v94 = MCLocalizedString(@"PRESENT");
    v95 = MCLocalizedString(@"PASSWORD");
    v96 = [(MCKeyValue *)v93 initWithLocalizedString:v94 localizedKey:v95];

    [v4 addObject:v96];
  }

  proxyPACURLString = [(MCWiFiPayload *)self proxyPACURLString];

  if (proxyPACURLString)
  {
    v98 = [MCKeyValue alloc];
    proxyPACURLString2 = [(MCWiFiPayload *)self proxyPACURLString];
    v100 = MCLocalizedString(@"WIFI_PROXY_PAC_URL");
    v101 = [(MCKeyValue *)v98 initWithLocalizedString:proxyPACURLString2 localizedKey:v100];

    [v4 addObject:v101];
  }

  if ([(MCWiFiPayload *)self proxyType]== 1)
  {
    v102 = [MCKeyValue alloc];
    v103 = MCLocalizedStringForBool([(MCWiFiPayload *)self proxyPACFallbackAllowed]);
    v104 = MCLocalizedString(@"WIFI_PROXY_PAC_FALLBACK");
    v105 = [(MCKeyValue *)v102 initWithLocalizedString:v103 localizedKey:v104];

    [v4 addObject:v105];
  }

  if ([v4 count])
  {
    v106 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v106];
  }

  roamingConsortiumOIs = [(MCWiFiPayload *)self roamingConsortiumOIs];
  v108 = [roamingConsortiumOIs count];

  if (v108)
  {
    roamingConsortiumOIs2 = [(MCWiFiPayload *)self roamingConsortiumOIs];
    v110 = MCLocalizedString(@"WIFI_ROAMING_CONSORTIUM_OIS");
    v111 = [MCKeyValueSection sectionWithLocalizedArray:roamingConsortiumOIs2 title:v110 footer:0];

    [v3 addObject:v111];
  }

  nAIRealmNames = [(MCWiFiPayload *)self NAIRealmNames];
  v113 = [nAIRealmNames count];

  if (v113)
  {
    nAIRealmNames2 = [(MCWiFiPayload *)self NAIRealmNames];
    v115 = MCLocalizedString(@"WIFI_NAI_REALM_NAMES");
    v116 = [MCKeyValueSection sectionWithLocalizedArray:nAIRealmNames2 title:v115 footer:0];

    [v3 addObject:v116];
  }

  mCCAndMNCs = [(MCWiFiPayload *)self MCCAndMNCs];
  v118 = [mCCAndMNCs count];

  if (v118)
  {
    mCCAndMNCs2 = [(MCWiFiPayload *)self MCCAndMNCs];
    v120 = MCLocalizedString(@"WIFI_MCC_AND_MNCS");
    v121 = [MCKeyValueSection sectionWithLocalizedArray:mCCAndMNCs2 title:v120 footer:0];

    [v3 addObject:v121];
  }

  qosMarkingConfig = [(MCWiFiPayload *)self qosMarkingConfig];
  v123 = [qosMarkingConfig count];

  if (v123)
  {
    v154 = _localizedEncryptionTypeString;
    v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
    qosMarkingConfig2 = [(MCWiFiPayload *)self qosMarkingConfig];
    v126 = [qosMarkingConfig2 objectForKeyedSubscript:@"QoSMarkingEnabled"];

    if (v126)
    {
      v127 = [MCKeyValue alloc];
      v128 = MCLocalizedStringForBool([v126 BOOLValue]);
      v129 = MCLocalizedString(@"WIFI_QOS_MARKING_ENABLED");
      v130 = [(MCKeyValue *)v127 initWithLocalizedString:v128 localizedKey:v129];

      [v124 addObject:v130];
    }

    qosMarkingConfig3 = [(MCWiFiPayload *)self qosMarkingConfig];
    v132 = [qosMarkingConfig3 objectForKeyedSubscript:@"QoSMarkingAppleAudioVideoCalls"];

    if (v132)
    {
      v133 = [MCKeyValue alloc];
      v134 = MCLocalizedStringForBool([v132 BOOLValue]);
      v135 = MCLocalizedString(@"WIFI_QOS_APPLE_AUDIO_VIDEO_CALLS");
      v136 = [(MCKeyValue *)v133 initWithLocalizedString:v134 localizedKey:v135];

      [v124 addObject:v136];
    }

    qosMarkingConfig4 = [(MCWiFiPayload *)self qosMarkingConfig];
    v138 = [qosMarkingConfig4 objectForKeyedSubscript:@"QoSMarkingURL"];

    if (v138)
    {
      v139 = [MCKeyValue alloc];
      v140 = MCLocalizedString(@"WIFI_QOS_MARKING_URL");
      v141 = [(MCKeyValue *)v139 initWithLocalizedString:v138 localizedKey:v140];

      [v124 addObject:v141];
    }

    qosMarkingConfig5 = [(MCWiFiPayload *)self qosMarkingConfig];
    v143 = [qosMarkingConfig5 objectForKeyedSubscript:@"QoSMarkingAllowListAppIdentifiers"];
    v144 = v143;
    if (v143)
    {
      v145 = v143;
    }

    else
    {
      qosMarkingConfig6 = [(MCWiFiPayload *)self qosMarkingConfig];
      v145 = [qosMarkingConfig6 objectForKeyedSubscript:@"QoSMarkingWhitelistedAppIdentifiers"];

      v87 = 0x1E77CF000;
    }

    if ([v145 count])
    {
      v147 = [MCKeyValue alloc];
      v148 = MCLocalizedString(@"WIFI_QOS_MARKED_APP_IDS");
      v149 = [(MCKeyValue *)v147 initWithLocalizedArray:v145 localizedKey:v148];

      v87 = 0x1E77CF000uLL;
      [v124 addObject:v149];
    }

    if ([v124 count])
    {
      v150 = [*(v87 + 1496) sectionWithKeyValues:v124];
      v151 = MCLocalizedString(@"WIFI_QOS_MARKING_POLICY");
      [v150 setSectionTitle:v151];

      [v3 addObject:v150];
    }

    _localizedEncryptionTypeString = v154;
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v152 = v3;

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v45.receiver = self;
  v45.super_class = MCWiFiPayload;
  verboseDescription = [(MCPayload *)&v45 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if ([(MCWiFiPayload *)self isHotspot])
  {
    [v5 appendString:@"IsHotspot   : Yes\n"];
  }

  ssid = [(MCWiFiPayload *)self ssid];

  if (ssid)
  {
    ssid2 = [(MCWiFiPayload *)self ssid];
    [v5 appendFormat:@"SSID        : %@\n", ssid2];
  }

  hESSID = [(MCWiFiPayload *)self HESSID];

  if (hESSID)
  {
    hESSID2 = [(MCWiFiPayload *)self HESSID];
    [v5 appendFormat:@"HESSID      : %@\n", hESSID2];
  }

  roamingConsortiumOIs = [(MCWiFiPayload *)self roamingConsortiumOIs];

  if (roamingConsortiumOIs)
  {
    roamingConsortiumOIs2 = [(MCWiFiPayload *)self roamingConsortiumOIs];
    [v5 appendFormat:@"Roaming Consortium OIs:\n%@\n", roamingConsortiumOIs2];
  }

  nAIRealmNames = [(MCWiFiPayload *)self NAIRealmNames];

  if (nAIRealmNames)
  {
    nAIRealmNames2 = [(MCWiFiPayload *)self NAIRealmNames];
    [v5 appendFormat:@"NAI Realm Names:\n%@\n", nAIRealmNames2];
  }

  mCCAndMNCs = [(MCWiFiPayload *)self MCCAndMNCs];

  if (mCCAndMNCs)
  {
    mCCAndMNCs2 = [(MCWiFiPayload *)self MCCAndMNCs];
    [v5 appendFormat:@"MCC and MNCs:\n%@\n", mCCAndMNCs2];
  }

  displayedOperatorName = [(MCWiFiPayload *)self displayedOperatorName];

  if (displayedOperatorName)
  {
    displayedOperatorName2 = [(MCWiFiPayload *)self displayedOperatorName];
    [v5 appendFormat:@"Operator    : %@\n", displayedOperatorName2];
  }

  domainName = [(MCWiFiPayload *)self domainName];

  if (domainName)
  {
    domainName2 = [(MCWiFiPayload *)self domainName];
    [v5 appendFormat:@"Domain      : %@\n", domainName2];
  }

  v20 = MCStringForBool(self->_isHidden);
  [v5 appendFormat:@"Hidden      : %@\n", v20];

  encryptionType = [(MCWiFiPayload *)self encryptionType];
  [v5 appendFormat:@"Encryption  : %@\n", encryptionType];

  v22 = MCStringForBool(self->_autoJoin);
  [v5 appendFormat:@"Autojoin    : %@\n", v22];

  isFirstAutoJoinRestricted = [(MCWiFiPayload *)self isFirstAutoJoinRestricted];

  if (isFirstAutoJoinRestricted)
  {
    isFirstAutoJoinRestricted2 = [(MCWiFiPayload *)self isFirstAutoJoinRestricted];
    v25 = MCStringForBool([isFirstAutoJoinRestricted2 BOOLValue]);
    [v5 appendFormat:@"First Autojoin Restricted: %@\n", v25];
  }

  password = [(MCWiFiPayload *)self password];

  if (password)
  {
    [v5 appendFormat:@"Password    : (present)\n"];
  }

  eapClientConfig = [(MCWiFiPayload *)self eapClientConfig];

  if (eapClientConfig)
  {
    [v5 appendFormat:@"EAP Config  : (present)\n"];
  }

  qosMarkingConfig = [(MCWiFiPayload *)self qosMarkingConfig];

  if (qosMarkingConfig)
  {
    [v5 appendFormat:@"QoS Marking Policy Config  : (present)\n"];
  }

  disableAssociationMACRandomization = [(MCWiFiPayload *)self disableAssociationMACRandomization];

  if (disableAssociationMACRandomization)
  {
    disableAssociationMACRandomization2 = [(MCWiFiPayload *)self disableAssociationMACRandomization];
    v31 = MCStringForBool([disableAssociationMACRandomization2 BOOLValue] ^ 1);
    [v5 appendFormat:@"Randomization: %@\n", v31];
  }

  proxyType = [(MCWiFiPayload *)self proxyType];
  if (proxyType > 2)
  {
    v33 = @"Unknown";
  }

  else
  {
    v33 = off_1E77D2350[proxyType];
  }

  [v5 appendFormat:@"Proxy       : %@\n", v33];
  proxyServer = [(MCWiFiPayload *)self proxyServer];

  if (proxyServer)
  {
    proxyServer2 = [(MCWiFiPayload *)self proxyServer];
    [v5 appendFormat:@"  Server    : %@\n", proxyServer2];
  }

  proxyServerPort = [(MCWiFiPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    proxyServerPort2 = [(MCWiFiPayload *)self proxyServerPort];
    [v5 appendFormat:@"  Port      : %@\n", proxyServerPort2];
  }

  proxyUsername = [(MCWiFiPayload *)self proxyUsername];

  if (proxyUsername)
  {
    proxyUsername2 = [(MCWiFiPayload *)self proxyUsername];
    [v5 appendFormat:@"  Username  : %@\n", proxyUsername2];
  }

  proxyPassword = [(MCWiFiPayload *)self proxyPassword];

  if (proxyPassword)
  {
    [v5 appendFormat:@"  Password  : (present)\n"];
  }

  proxyPACURLString = [(MCWiFiPayload *)self proxyPACURLString];

  if (proxyPACURLString)
  {
    proxyPACURLString2 = [(MCWiFiPayload *)self proxyPACURLString];
    [v5 appendFormat:@"  PAC URL   : %@\n", proxyPACURLString2];
  }

  if ([(MCWiFiPayload *)self proxyType]== 1)
  {
    v43 = MCStringForBool([(MCWiFiPayload *)self proxyPACFallbackAllowed]);
    [v5 appendFormat:@"   fallback : %@\n", v43];
  }

  return v5;
}

- (id)installationWarnings
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ([(MCWiFiPayload *)self proxyType])
  {
    v3 = +[MCHacks sharedHacks];
    if ([v3 isGreenTea])
    {
      v4 = @"INSTALL_WARNING_WLAN";
    }

    else
    {
      v4 = @"INSTALL_WARNING_WIFI";
    }

    v5 = MCLocalizedStringByDevice(v4);
  }

  else
  {
    v5 = 0;
  }

  disableAssociationMACRandomization = [(MCWiFiPayload *)self disableAssociationMACRandomization];
  bOOLValue = [disableAssociationMACRandomization BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v10 = 0;
    v11 = v5 != 0;
LABEL_15:
    if (v11)
    {
      v13 = v5;
    }

    else
    {
      v13 = v10;
    }

    v12 = v13;
    goto LABEL_19;
  }

  v8 = +[MCHacks sharedHacks];
  if ([v8 isGreenTea])
  {
    v9 = @"INSTALL_WARNING_WLAN_RANDOMIZATION";
  }

  else
  {
    v9 = @"INSTALL_WARNING_WIFI_RANDOMIZATION";
  }

  v10 = MCLocalizedStringByDevice(v9);

  v11 = v5 != 0;
  if (!v5 || !v10)
  {
    goto LABEL_15;
  }

  v12 = [v5 stringByAppendingFormat:@" %@", v10];
LABEL_19:
  v14 = v12;
  if (v12)
  {
    v15 = +[MCHacks sharedHacks];
    if ([v15 isGreenTea])
    {
      v16 = @"INSTALL_WARNING_WLAN_TITLE";
    }

    else
    {
      v16 = @"INSTALL_WARNING_WIFI_TITLE";
    }

    v17 = MCLocalizedString(v16);

    v18 = [MCProfileWarning warningWithLocalizedTitle:v17 localizedBody:v14 isLongForm:1];
    v21[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)userInputFields
{
  array = [MEMORY[0x1E695DF70] array];
  username = [(MCWiFiPayload *)self username];
  if (!username && [(MCWiFiPayload *)self usernameRequired])
  {
    v5 = MCLocalizedString(@"USERNAME_PROMPT_TITLE");
    v6 = MEMORY[0x1E696AEC0];
    mCAppendGreenteaSuffix = [@"WIFI_USERNAME_PROMPT_DESCRIPTION" MCAppendGreenteaSuffix];
    v8 = MCLocalizedString(mCAppendGreenteaSuffix);
    ssid = [(MCWiFiPayload *)self ssid];
    v10 = [v6 stringWithFormat:v8, ssid];
    v11 = [MCPayloadUserPromptUtilities promptDictionaryForKey:@"UsernameUserInputKey" title:v5 description:v10 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000000 flags:?];
    [array addObject:v11];
  }

  password = [(MCWiFiPayload *)self password];
  if (!password)
  {
    if (![(MCWiFiPayload *)self passwordRequired])
    {
      goto LABEL_11;
    }

    v13 = [username length];
    v14 = MEMORY[0x1E696AEC0];
    if (v13)
    {
      mCAppendGreenteaSuffix2 = [@"WIFI_PASSWORD_ACCOUNT_PROMPT_DESCRIPTION" MCAppendGreenteaSuffix];
      v16 = MCLocalizedString(mCAppendGreenteaSuffix2);
      password = [v14 stringWithFormat:v16, username];
    }

    else
    {
      mCAppendGreenteaSuffix2 = [@"WIFI_PASSWORD_PROMPT_DESCRIPTION" MCAppendGreenteaSuffix];
      v16 = MCLocalizedString(mCAppendGreenteaSuffix2);
      ssid2 = [(MCWiFiPayload *)self ssid];
      password = [v14 stringWithFormat:v16, ssid2];
    }

    v18 = MCLocalizedString(@"PASSWORD_PROMPT_TITLE");
    v19 = [MCPayloadUserPromptUtilities promptDictionaryForKey:@"PasswordUserInputKey" title:v18 description:password retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [array addObject:v19];
  }

LABEL_11:

  return array;
}

- (id)filterForUserEnrollmentOutError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (self->_proxyType)
  {
    [array addObject:@"ProxyType"];
    self->_proxyType = 0;
  }

  if (self->_proxyServer)
  {
    [v5 addObject:@"ProxyServer"];
    proxyServer = self->_proxyServer;
    self->_proxyServer = 0;
  }

  if (self->_proxyServerPort)
  {
    [v5 addObject:@"ProxyServerPort"];
    proxyServerPort = self->_proxyServerPort;
    self->_proxyServerPort = 0;
  }

  if (self->_proxyUsername)
  {
    [v5 addObject:@"ProxyUsername"];
    proxyUsername = self->_proxyUsername;
    self->_proxyUsername = 0;
  }

  if (self->_proxyPassword)
  {
    [v5 addObject:@"ProxyPassword"];
    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = 0;

    if (self->_proxyPassword)
    {
      [v5 addObject:@"ProxyPassword"];
      v10 = self->_proxyPassword;
      self->_proxyPassword = 0;
    }
  }

  if (self->_proxyPACURLString)
  {
    [v5 addObject:@"ProxyPACURL"];
    proxyPACURLString = self->_proxyPACURLString;
    self->_proxyPACURLString = 0;
  }

  if (self->_proxyPACFallbackAllowed)
  {
    [v5 addObject:@"ProxyPACFallbackAllowed"];
    self->_proxyPACFallbackAllowed = 0;
  }

  if ([v5 count])
  {
    v12 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      friendlyName = [(MCPayload *)self friendlyName];
      v16 = 138543618;
      v17 = friendlyName;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_INFO, "Payload “%{public}@” has ignored proxy keys. They are: %{public}@", &v16, 0x16u);
    }
  }

  return 0;
}

@end