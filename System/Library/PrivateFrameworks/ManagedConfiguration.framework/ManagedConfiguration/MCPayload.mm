@interface MCPayload
+ (id)_allKnownPayloadClasses;
+ (id)_installablePhoneConfigurationPayloadClasses;
+ (id)_installableTVConfigurationPayloadClasses;
+ (id)_installableVisionConfigurationPayloadClasses;
+ (id)_minimumWatchVersionRequirementsForPayloads;
+ (id)_platformSpecificConfigurationPayloadClasses;
+ (id)_sharedHomePodPayloadClasses;
+ (id)_sharedWatchPayloadClasses;
+ (id)accountPayloads;
+ (id)availablePayloadsForUserEnrollment;
+ (id)badFieldTypeErrorWithField:(id)field;
+ (id)badFieldValueErrorWithField:(id)field underlyingError:(id)error;
+ (id)cellularRequiredPayloads;
+ (id)conflictingFieldValueErrorWithUnderlyingError:(id)error;
+ (id)hrnRequiredPayloads;
+ (id)installableHomePodConfigurationPayloadClasses;
+ (id)installableWatchConfigurationPayloadClasses;
+ (id)localizedDescriptionForPayloadCount:(unint64_t)count;
+ (id)localizedParenthesizedFormDescriptionForPayloadCount:(unint64_t)count;
+ (id)mdmAdoptablePayloads;
+ (id)missingFieldErrorWithField:(id)field underlyingError:(id)error;
+ (id)payloadFromDictionary:(id)dictionary isStub:(BOOL)stub profile:(id)profile outError:(id *)error;
+ (id)payloadsFromArray:(id)array isStub:(BOOL)stub profile:(id)profile outError:(id *)error;
+ (id)payloadsRequiringRatchetWithStolenDeviceProtection;
+ (id)remoteQueueableHomePodPayloadClasses;
+ (id)remoteQueueableWatchPayloadClasses;
+ (id)supervisedRequiredPayloads;
+ (id)unavailablePayloadsInEphemeralMultiUser;
+ (id)unavailableSystemPayloadsInEphemeralMultiUser;
+ (id)unavailableUserPayloadsInEphemeralMultiUser;
+ (id)wrapperPayloadDictionary;
- (BOOL)isSupportedByWatchVersions:(id)versions;
- (MCPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (MCProfile)profile;
- (NSString)friendlyName;
- (id)description;
- (id)filterForUserEnrollmentOutError:(id *)error;
- (id)malformedPayloadErrorWithError:(id)error;
- (id)serializedDictionary;
- (id)stubDictionary;
- (void)setPersistentResourceID:(id)d;
@end

@implementation MCPayload

+ (id)_platformSpecificConfigurationPayloadClasses
{
  if (_platformSpecificConfigurationPayloadClasses_onceToken != -1)
  {
    +[MCPayload(Private) _platformSpecificConfigurationPayloadClasses];
  }

  v3 = _platformSpecificConfigurationPayloadClasses_platformPayloads;

  return v3;
}

- (MCProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

+ (id)_sharedHomePodPayloadClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

+ (id)installableHomePodConfigurationPayloadClasses
{
  v2 = MEMORY[0x1E695DFA8];
  _sharedHomePodPayloadClasses = [self _sharedHomePodPayloadClasses];
  v4 = [v2 setWithSet:_sharedHomePodPayloadClasses];

  [v4 addObject:objc_opt_class()];
  [v4 addObject:objc_opt_class()];
  [v4 addObject:objc_opt_class()];

  return v4;
}

+ (id)remoteQueueableHomePodPayloadClasses
{
  v2 = MEMORY[0x1E695DFA8];
  _sharedHomePodPayloadClasses = [self _sharedHomePodPayloadClasses];
  v4 = [v2 setWithSet:_sharedHomePodPayloadClasses];

  [v4 addObject:objc_opt_class()];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AcceptProfileServicePayloadOnHomePod", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if ((MCGestaltIsInternalBuild() & 1) != 0 || (AppBooleanValue ? (v6 = keyExistsAndHasValidFormat == 0) : (v6 = 1), !v6))
  {
    [v4 addObject:objc_opt_class()];
  }

  return v4;
}

+ (id)_sharedWatchPayloadClasses
{
  v21 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v21 setWithObjects:{v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (id)installableWatchConfigurationPayloadClasses
{
  v2 = MEMORY[0x1E695DFA8];
  _sharedWatchPayloadClasses = [self _sharedWatchPayloadClasses];
  v4 = [v2 setWithSet:_sharedWatchPayloadClasses];

  [v4 addObject:objc_opt_class()];
  [v4 addObject:objc_opt_class()];

  return v4;
}

+ (id)remoteQueueableWatchPayloadClasses
{
  _sharedWatchPayloadClasses = [self _sharedWatchPayloadClasses];
  if (MCGestaltIsInternalBuild())
  {
    v3 = [MEMORY[0x1E695DFA8] setWithSet:_sharedWatchPayloadClasses];
    [v3 addObject:objc_opt_class()];
  }

  else
  {
    v3 = _sharedWatchPayloadClasses;
  }

  return v3;
}

- (BOOL)isSupportedByWatchVersions:(id)versions
{
  v19 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  v4 = +[MCPayload _minimumWatchVersionRequirementsForPayloads];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = versionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          unsignedIntegerValue = [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
          if (unsignedIntegerValue >= [v7 unsignedIntegerValue])
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (id)_minimumWatchVersionRequirementsForPayloads
{
  if (_minimumWatchVersionRequirementsForPayloads_onceToken != -1)
  {
    +[MCPayload(RemoteDevices) _minimumWatchVersionRequirementsForPayloads];
  }

  v3 = _minimumWatchVersionRequirementsForPayloads_supportedWatchPayloads;

  return v3;
}

void __71__MCPayload_RemoteDevices___minimumWatchVersionRequirementsForPayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v51[23] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v49 = NSStringFromClass(v2);
  v50[0] = v49;
  v51[0] = &unk_1F1AA5698;
  v3 = objc_opt_class();
  v48 = NSStringFromClass(v3);
  v50[1] = v48;
  v51[1] = &unk_1F1AA56B0;
  v4 = objc_opt_class();
  v47 = NSStringFromClass(v4);
  v50[2] = v47;
  v51[2] = &unk_1F1AA56B0;
  v5 = objc_opt_class();
  v46 = NSStringFromClass(v5);
  v50[3] = v46;
  v51[3] = &unk_1F1AA56B0;
  v6 = objc_opt_class();
  v45 = NSStringFromClass(v6);
  v50[4] = v45;
  v51[4] = &unk_1F1AA56B0;
  v7 = objc_opt_class();
  v44 = NSStringFromClass(v7);
  v50[5] = v44;
  v51[5] = &unk_1F1AA56B0;
  v8 = objc_opt_class();
  v43 = NSStringFromClass(v8);
  v50[6] = v43;
  v51[6] = &unk_1F1AA56B0;
  v9 = objc_opt_class();
  v42 = NSStringFromClass(v9);
  v50[7] = v42;
  v51[7] = &unk_1F1AA56C8;
  v10 = objc_opt_class();
  v41 = NSStringFromClass(v10);
  v50[8] = v41;
  v51[8] = &unk_1F1AA56C8;
  v11 = objc_opt_class();
  v40 = NSStringFromClass(v11);
  v50[9] = v40;
  v51[9] = &unk_1F1AA56C8;
  v12 = objc_opt_class();
  v39 = NSStringFromClass(v12);
  v50[10] = v39;
  v51[10] = &unk_1F1AA56E0;
  v13 = objc_opt_class();
  v38 = NSStringFromClass(v13);
  v50[11] = v38;
  v51[11] = &unk_1F1AA56F8;
  v14 = objc_opt_class();
  v37 = NSStringFromClass(v14);
  v50[12] = v37;
  v51[12] = &unk_1F1AA5710;
  v15 = objc_opt_class();
  v36 = NSStringFromClass(v15);
  v50[13] = v36;
  v51[13] = &unk_1F1AA5728;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v50[14] = v17;
  v51[14] = &unk_1F1AA5728;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v50[15] = v19;
  v51[15] = &unk_1F1AA5740;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v50[16] = v21;
  v51[16] = &unk_1F1AA5740;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v50[17] = v23;
  v51[17] = &unk_1F1AA5740;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v50[18] = v25;
  v51[18] = &unk_1F1AA5740;
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v50[19] = v27;
  v51[19] = &unk_1F1AA5740;
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v50[20] = v29;
  v51[20] = &unk_1F1AA5740;
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v50[21] = v31;
  v51[21] = &unk_1F1AA5740;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v50[22] = v33;
  v51[22] = &unk_1F1AA5740;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:23];
  v35 = _minimumWatchVersionRequirementsForPayloads_supportedWatchPayloads;
  _minimumWatchVersionRequirementsForPayloads_supportedWatchPayloads = v34;
}

+ (id)localizedDescriptionForPayloadCount:(unint64_t)count
{
  if (count < 2)
  {
    localizedSingularForm = [self localizedSingularForm];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    localizedPluralForm = [self localizedPluralForm];
    localizedSingularForm = MCLocalizedFormat(@"PAYLOAD_PLURAL_FORMAT", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  return localizedSingularForm;
}

+ (id)localizedParenthesizedFormDescriptionForPayloadCount:(unint64_t)count
{
  if (count < 2)
  {
    localizedSingularForm = [self localizedSingularForm];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    localizedPluralForm = [self localizedPluralForm];
    localizedSingularForm = MCLocalizedFormat(@"PAYLOAD_PAREN_PLURAL_FORMAT", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  return localizedSingularForm;
}

- (void)setPersistentResourceID:(id)d
{
  if (self->_persistentResourceID != d)
  {
    self->_persistentResourceID = [d copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)friendlyName
{
  v18 = *MEMORY[0x1E69E9840];
  displayName = [(MCPayload *)self displayName];
  v4 = [displayName length];

  if (v4)
  {
    displayName2 = [(MCPayload *)self displayName];
  }

  else
  {
    identifier = [(MCPayload *)self identifier];
    v7 = [identifier length];

    if (v7)
    {
      displayName2 = [(MCPayload *)self identifier];
    }

    else
    {
      uUID = [(MCPayload *)self UUID];
      v9 = [uUID length];

      if (v9)
      {
        displayName2 = [(MCPayload *)self UUID];
      }

      else
      {
        v10 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          v14 = 138543618;
          v15 = objc_opt_class();
          v16 = 2048;
          selfCopy = self;
          v12 = v15;
          _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Payload %{public}@ %p has no friendly name.", &v14, 0x16u);
        }

        displayName2 = @"Payload";
      }
    }
  }

  return displayName2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"Payload %@ %p, version %d\n", objc_opt_class(), self, self->_version];
  v4 = v3;
  if (self->_payloadDescription)
  {
    [v3 appendFormat:@"Description : “%@”\n", self->_payloadDescription];
  }

  if (self->_identifier)
  {
    [v4 appendFormat:@"Identifier  : %@\n", self->_identifier];
  }

  if (self->_UUID)
  {
    [v4 appendFormat:@"UUID        : %@\n", self->_UUID];
  }

  if (self->_type)
  {
    [v4 appendFormat:@"Type        : %@\n", self->_type];
  }

  if (self->_displayName)
  {
    [v4 appendFormat:@"Display name: %@\n", self->_displayName];
  }

  if (self->_organization)
  {
    [v4 appendFormat:@"Organization: %@\n", self->_organization];
  }

  if (self->_persistentResourceID)
  {
    [v4 appendFormat:@"Persistent Resource ID: %@\n", self->_persistentResourceID];
  }

  restrictions = [(MCPayload *)self restrictions];
  v6 = restrictions;
  if (restrictions)
  {
    [v4 appendFormat:@"Restrictions: %@\n", restrictions];
  }

  return v4;
}

- (id)serializedDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKeyedSubscript:@"Class"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  [v3 setObject:v6 forKeyedSubscript:@"Version"];

  payloadDescription = self->_payloadDescription;
  if (payloadDescription)
  {
    [v3 setObject:payloadDescription forKeyedSubscript:@"Description"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"Identifier"];
  }

  UUID = self->_UUID;
  if (UUID)
  {
    [v3 setObject:UUID forKeyedSubscript:@"UUID"];
  }

  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKeyedSubscript:@"Type"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKeyedSubscript:@"Display Name"];
  }

  organization = self->_organization;
  if (organization)
  {
    [v3 setObject:organization forKeyedSubscript:@"Organization"];
  }

  persistentResourceID = self->_persistentResourceID;
  if (persistentResourceID)
  {
    [v3 setObject:persistentResourceID forKeyedSubscript:@"Persistent Resource ID"];
  }

  restrictions = [(MCPayload *)self restrictions];
  if (restrictions)
  {
    [v3 setObject:restrictions forKeyedSubscript:@"Restrictions"];
  }

  return v3;
}

void __66__MCPayload_Private___platformSpecificConfigurationPayloadClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  IsAppleTV = MCGestaltIsAppleTV(a1, a2);
  if (IsAppleTV)
  {
    v4 = +[MCPayload _installableTVConfigurationPayloadClasses];
  }

  else
  {
    IsHomePod = MCGestaltIsHomePod(IsAppleTV, v3);
    if (IsHomePod)
    {
      v4 = +[MCPayload installableHomePodConfigurationPayloadClasses];
    }

    else
    {
      IsWatch = MCGestaltIsWatch(IsHomePod, v6);
      if (IsWatch)
      {
        v4 = +[MCPayload installableWatchConfigurationPayloadClasses];
      }

      else
      {
        if (MCGestaltIsVisionDevice(IsWatch, v8))
        {
          +[MCPayload _installableVisionConfigurationPayloadClasses];
        }

        else
        {
          +[MCPayload _installablePhoneConfigurationPayloadClasses];
        }
        v4 = ;
      }
    }
  }

  v11 = v4;
  v9 = [v4 allObjects];
  v10 = _platformSpecificConfigurationPayloadClasses_platformPayloads;
  _platformSpecificConfigurationPayloadClasses_platformPayloads = v9;
}

+ (id)_allKnownPayloadClasses
{
  if (_allKnownPayloadClasses_onceToken != -1)
  {
    +[MCPayload(Private) _allKnownPayloadClasses];
  }

  v3 = _allKnownPayloadClasses_allPayloads;

  return v3;
}

void __45__MCPayload_Private___allKnownPayloadClasses__block_invoke()
{
  v0 = +[MCPayload _installableTVConfigurationPayloadClasses];
  v7 = [v0 mutableCopy];

  v1 = +[MCPayload installableHomePodConfigurationPayloadClasses];
  [v7 unionSet:v1];

  v2 = +[MCPayload installableWatchConfigurationPayloadClasses];
  [v7 unionSet:v2];

  v3 = +[MCPayload _installableVisionConfigurationPayloadClasses];
  [v7 unionSet:v3];

  v4 = +[MCPayload _installablePhoneConfigurationPayloadClasses];
  [v7 unionSet:v4];

  v5 = [v7 allObjects];
  v6 = _allKnownPayloadClasses_allPayloads;
  _allKnownPayloadClasses_allPayloads = v5;
}

+ (id)_installableTVConfigurationPayloadClasses
{
  v25 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v25 setWithObjects:{v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (id)_installablePhoneConfigurationPayloadClasses
{
  v54 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v52 = objc_opt_class();
  v51 = objc_opt_class();
  v50 = objc_opt_class();
  v49 = objc_opt_class();
  v48 = objc_opt_class();
  v47 = objc_opt_class();
  v46 = objc_opt_class();
  v45 = objc_opt_class();
  v44 = objc_opt_class();
  v43 = objc_opt_class();
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v54 setWithObjects:{v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (id)_installableVisionConfigurationPayloadClasses
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFA8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
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
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:33];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38}];

  if ([MEMORY[0x1E69997F0] isVisionMDMEnabled])
  {
    [v4 addObject:objc_opt_class()];
  }

  v5 = [v4 copy];

  return v5;
}

+ (id)accountPayloads
{
  if (accountPayloads_once != -1)
  {
    +[MCPayload(Private) accountPayloads];
  }

  v3 = accountPayloads_set;

  return v3;
}

void __37__MCPayload_Private__accountPayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  v4 = accountPayloads_set;
  accountPayloads_set = v3;
}

+ (id)payloadsRequiringRatchetWithStolenDeviceProtection
{
  if (payloadsRequiringRatchetWithStolenDeviceProtection_onceToken != -1)
  {
    +[MCPayload(Private) payloadsRequiringRatchetWithStolenDeviceProtection];
  }

  v3 = payloadsRequiringRatchetWithStolenDeviceProtection_payloads;

  return v3;
}

void __72__MCPayload_Private__payloadsRequiringRatchetWithStolenDeviceProtection__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:5];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9}];
  v5 = payloadsRequiringRatchetWithStolenDeviceProtection_payloads;
  payloadsRequiringRatchetWithStolenDeviceProtection_payloads = v4;
}

+ (id)unavailablePayloadsInEphemeralMultiUser
{
  if (unavailablePayloadsInEphemeralMultiUser_once != -1)
  {
    +[MCPayload(Private) unavailablePayloadsInEphemeralMultiUser];
  }

  v3 = unavailablePayloadsInEphemeralMultiUser_set;

  return v3;
}

void __61__MCPayload_Private__unavailablePayloadsInEphemeralMultiUser__block_invoke()
{
  v6 = +[MCPayload unavailableSystemPayloadsInEphemeralMultiUser];
  v0 = +[MCPayload unavailableUserPayloadsInEphemeralMultiUser];
  v1 = [MEMORY[0x1E695DFA8] set];
  if (v6)
  {
    v2 = v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v3 = [v6 allObjects];
    [v1 addObjectsFromArray:v3];

    [v1 intersectSet:v0];
    v4 = [v1 copy];
  }

  v5 = unavailablePayloadsInEphemeralMultiUser_set;
  unavailablePayloadsInEphemeralMultiUser_set = v4;
}

+ (id)hrnRequiredPayloads
{
  if (hrnRequiredPayloads_onceToken != -1)
  {
    +[MCPayload(Private) hrnRequiredPayloads];
  }

  v3 = hrnRequiredPayloads_payloads;

  return v3;
}

void __41__MCPayload_Private__hrnRequiredPayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];
  v5 = hrnRequiredPayloads_payloads;
  hrnRequiredPayloads_payloads = v4;
}

+ (id)mdmAdoptablePayloads
{
  if (mdmAdoptablePayloads_onceToken != -1)
  {
    +[MCPayload(Private) mdmAdoptablePayloads];
  }

  v3 = mdmAdoptablePayloads_payloads;

  return v3;
}

void __42__MCPayload_Private__mdmAdoptablePayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:7];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11}];
  v5 = mdmAdoptablePayloads_payloads;
  mdmAdoptablePayloads_payloads = v4;
}

+ (id)cellularRequiredPayloads
{
  if (cellularRequiredPayloads_onceToken != -1)
  {
    +[MCPayload(Private) cellularRequiredPayloads];
  }

  v3 = cellularRequiredPayloads_payloads;

  return v3;
}

void __46__MCPayload_Private__cellularRequiredPayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];
  v5 = cellularRequiredPayloads_payloads;
  cellularRequiredPayloads_payloads = v4;
}

+ (id)supervisedRequiredPayloads
{
  if (supervisedRequiredPayloads_onceToken != -1)
  {
    +[MCPayload(Private) supervisedRequiredPayloads];
  }

  v3 = supervisedRequiredPayloads_supervisedOnlyPayloadClasses;

  return v3;
}

void __48__MCPayload_Private__supervisedRequiredPayloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:10];
  v4 = [v2 setWithArray:v3];
  v5 = supervisedRequiredPayloads_supervisedOnlyPayloadClasses;
  supervisedRequiredPayloads_supervisedOnlyPayloadClasses = v4;
}

+ (id)unavailableSystemPayloadsInEphemeralMultiUser
{
  if (unavailableSystemPayloadsInEphemeralMultiUser_once != -1)
  {
    +[MCPayload(Private) unavailableSystemPayloadsInEphemeralMultiUser];
  }

  v3 = unavailableSystemPayloadsInEphemeralMultiUser_set;

  return v3;
}

void __67__MCPayload_Private__unavailableSystemPayloadsInEphemeralMultiUser__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[14] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v6[10] = objc_opt_class();
  v6[11] = objc_opt_class();
  v6[12] = objc_opt_class();
  v6[13] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:14];
  v4 = [v2 setWithArray:v3];
  v5 = unavailableSystemPayloadsInEphemeralMultiUser_set;
  unavailableSystemPayloadsInEphemeralMultiUser_set = v4;
}

+ (id)unavailableUserPayloadsInEphemeralMultiUser
{
  if (unavailableUserPayloadsInEphemeralMultiUser_once != -1)
  {
    +[MCPayload(Private) unavailableUserPayloadsInEphemeralMultiUser];
  }

  v3 = unavailableUserPayloadsInEphemeralMultiUser_set;

  return v3;
}

void __65__MCPayload_Private__unavailableUserPayloadsInEphemeralMultiUser__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v6[10] = objc_opt_class();
  v6[11] = objc_opt_class();
  v6[12] = objc_opt_class();
  v6[13] = objc_opt_class();
  v6[14] = objc_opt_class();
  v6[15] = objc_opt_class();
  v6[16] = objc_opt_class();
  v6[17] = objc_opt_class();
  v6[18] = objc_opt_class();
  v6[19] = objc_opt_class();
  v6[20] = objc_opt_class();
  v6[21] = objc_opt_class();
  v6[22] = objc_opt_class();
  v6[23] = objc_opt_class();
  v6[24] = objc_opt_class();
  v6[25] = objc_opt_class();
  v6[26] = objc_opt_class();
  v6[27] = objc_opt_class();
  v6[28] = objc_opt_class();
  v6[29] = objc_opt_class();
  v6[30] = objc_opt_class();
  v6[31] = objc_opt_class();
  v6[32] = objc_opt_class();
  v6[33] = objc_opt_class();
  v6[34] = objc_opt_class();
  v6[35] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:36];
  v4 = [v2 setWithArray:v3];
  v5 = unavailableUserPayloadsInEphemeralMultiUser_set;
  unavailableUserPayloadsInEphemeralMultiUser_set = v4;
}

+ (id)availablePayloadsForUserEnrollment
{
  if (availablePayloadsForUserEnrollment_once != -1)
  {
    +[MCPayload(Private) availablePayloadsForUserEnrollment];
  }

  v3 = availablePayloadsForUserEnrollment_set;

  return v3;
}

void __56__MCPayload_Private__availablePayloadsForUserEnrollment__block_invoke(uint64_t a1, uint64_t a2)
{
  v7[30] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFA8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v7[10] = objc_opt_class();
  v7[11] = objc_opt_class();
  v7[12] = objc_opt_class();
  v7[13] = objc_opt_class();
  v7[14] = objc_opt_class();
  v7[15] = objc_opt_class();
  v7[16] = objc_opt_class();
  v7[17] = objc_opt_class();
  v7[18] = objc_opt_class();
  v7[19] = objc_opt_class();
  v7[20] = objc_opt_class();
  v7[21] = objc_opt_class();
  v7[22] = objc_opt_class();
  v7[23] = objc_opt_class();
  v7[24] = objc_opt_class();
  v7[25] = objc_opt_class();
  v7[26] = objc_opt_class();
  v7[27] = objc_opt_class();
  v7[28] = objc_opt_class();
  v7[29] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:30];
  v4 = [v2 setWithArray:v3];

  if (+[MCFeatureOverrides allowVPNInUserEnrollment])
  {
    [v4 addObject:objc_opt_class()];
  }

  v5 = [v4 copy];
  v6 = availablePayloadsForUserEnrollment_set;
  availablePayloadsForUserEnrollment_set = v5;
}

+ (id)payloadsFromArray:(id)array isStub:(BOOL)stub profile:(id)profile outError:(id *)error
{
  stubCopy = stub;
  v38 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  profileCopy = profile;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = 0;
          v22 = [MCPayload payloadFromDictionary:v14 isStub:stubCopy profile:profileCopy outError:&v32];
          v23 = v32;
          if (v22)
          {
            [array addObject:v22];
          }
        }

        else
        {
          v24 = MEMORY[0x1E696ABC0];
          v22 = MCErrorArray(@"ERROR_PAYLOAD_MALFORMED", v15, v16, v17, v18, v19, v20, v21, 0);
          v23 = [v24 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2000 descriptionArray:v22 errorType:@"MCFatalError"];
        }

        if (v23)
        {

          if (error)
          {
            v27 = v23;
            v26 = 0;
            *error = v23;
          }

          else
          {
            v26 = 0;
          }

          v25 = array;
          goto LABEL_18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v25 = array;
  v26 = array;
  v23 = 0;
LABEL_18:

  return v26;
}

+ (id)payloadFromDictionary:(id)dictionary isStub:(BOOL)stub profile:(id)profile outError:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v11 = [dictionaryCopy objectForKey:@"PayloadType"];
  v55 = profileCopy;
  if (stub)
  {
    v12 = 0;
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    if (_removedPayloadClasses_onceToken != -1)
    {
      +[MCPayload(Private) payloadFromDictionary:isStub:profile:outError:];
    }

    v13 = _removedPayloadClasses_array;
    v14 = [v13 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(v13);
        }

        typeStrings = [*(*(&v63 + 1) + 8 * v17) typeStrings];
        v19 = [typeStrings containsObject:v11];

        if (v19)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v68 = v11;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEBUG, "Payload class for type “%{public}@” was deprecated on current platform. Converting to Unknown Payload.", buf, 0xCu);
      }

      v21 = [MCUnknownPayload alloc];
      v22 = [dictionaryCopy mutableCopy];
      v62 = 0;
      v23 = [(MCUnknownPayload *)v21 initWithDictionary:v22 profile:v55 outError:&v62];
      v12 = v62;

      profileCopy = v55;
      if (!v23)
      {
        goto LABEL_23;
      }

      if (!v12)
      {
        goto LABEL_48;
      }

      goto LABEL_18;
    }

LABEL_13:

    v12 = 0;
    profileCopy = v55;
  }

LABEL_23:
  v29 = +[MCFeatureOverrides shouldDisablePlatformPayloadFilter];
  _platformSpecificConfigurationPayloadClasses = [self _platformSpecificConfigurationPayloadClasses];
  v31 = _platformSpecificConfigurationPayloadClasses;
  if (v29)
  {
    _allKnownPayloadClasses = [self _allKnownPayloadClasses];
  }

  else
  {
    _allKnownPayloadClasses = _platformSpecificConfigurationPayloadClasses;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = _allKnownPayloadClasses;
  v34 = [v33 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v34)
  {
    v35 = v34;
    v52 = v31;
    v53 = dictionaryCopy;
    v36 = *v59;
LABEL_28:
    v37 = 0;
    while (1)
    {
      if (*v59 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = *(*(&v58 + 1) + 8 * v37);
      typeStrings2 = [v38 typeStrings];
      v40 = [typeStrings2 containsObject:v11];

      if (v40)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v33 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (v35)
        {
          goto LABEL_28;
        }

        v23 = 0;
        dictionaryCopy = v53;
        profileCopy = v55;
        goto LABEL_42;
      }
    }

    v41 = [v38 alloc];
    v42 = [v53 mutableCopy];
    v57 = v12;
    profileCopy = v55;
    v23 = [v41 initWithDictionary:v42 profile:v55 outError:&v57];
    v43 = v57;

    if (!v29)
    {
      v12 = v43;
      dictionaryCopy = v53;
LABEL_42:
      v31 = v52;
      goto LABEL_43;
    }

    v31 = v52;
    if (([v52 containsObject:v38] & 1) == 0)
    {
      v44 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v45 = v44;
        v46 = NSStringFromClass(v38);
        *buf = 138543362;
        v68 = v46;
        _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "Platform payload filter has been disabled. Allowing %{public}@ payload despite it being unsupported.", buf, 0xCu);

        v31 = v52;
      }
    }

    v12 = v43;
    dictionaryCopy = v53;
  }

  else
  {
    v23 = 0;
  }

LABEL_43:

  if (!(v12 | v23))
  {
    v47 = v31;
    v48 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v68 = v11;
      _os_log_impl(&dword_1A795B000, v48, OS_LOG_TYPE_DEBUG, "No payload class for type “%{public}@” on current platform. Converting to Unknown Payload.", buf, 0xCu);
    }

    v49 = [MCUnknownPayload alloc];
    v50 = [dictionaryCopy mutableCopy];
    v56 = 0;
    v23 = [(MCUnknownPayload *)v49 initWithDictionary:v50 profile:profileCopy outError:&v56];
    v12 = v56;

    v31 = v47;
  }

  if (!v12)
  {
LABEL_48:
    v28 = v23;
    goto LABEL_49;
  }

LABEL_18:
  if (error)
  {
    v24 = v12;
    *error = v12;
  }

  v25 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    mCVerboseDescription = [v12 MCVerboseDescription];
    *buf = 138543618;
    v68 = v11;
    v69 = 2114;
    v70 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_ERROR, "Cannot create profile of type “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  v28 = 0;
LABEL_49:

  return v28;
}

+ (id)missingFieldErrorWithField:(id)field underlyingError:(id)error
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD", a2, field, error, v4, v5, v6, v7, field);
  v10 = [v8 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2002 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)badFieldTypeErrorWithField:(id)field
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD", a2, field, v3, v4, v5, v6, v7, field);
  v10 = [v8 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)badFieldValueErrorWithField:(id)field underlyingError:(id)error
{
  v5 = MEMORY[0x1E696ABC0];
  errorCopy = error;
  v14 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v7, v8, v9, v10, v11, v12, v13, field);
  v15 = [v5 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v14 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v15;
}

+ (id)conflictingFieldValueErrorWithUnderlyingError:(id)error
{
  v3 = MEMORY[0x1E696ABC0];
  errorCopy = error;
  v5 = MCErrorVaArray(@"ERROR_PAYLOAD_FIELD_CONFLICTING_P_FIELDS", &v9);
  v6 = [v3 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v5 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v6;
}

- (MCPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v61.receiver = self;
  v61.super_class = MCPayload;
  v10 = [(MCPayload *)&v61 init];
  if (!v10)
  {
    goto LABEL_34;
  }

  v60 = 0;
  v11 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"PayloadVersion" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v60];
  v12 = v60;
  if (!v12)
  {
    v10->_version = [v11 intValue];
    isStub = [profileCopy isStub];
    version = v10->_version;
    if (isStub)
    {
      if (version != 1)
      {
        v23 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, "WARNING: payload contains PayloadVersion other than “1”.", buf, 2u);
        }
      }
    }

    else if (version != 1)
    {
      v32 = MEMORY[0x1E696ABC0];
      v33 = MCErrorArray(@"ERROR_PAYLOAD_UNSUPPORTED_VERSION", v15, v16, v17, v18, v19, v20, v21, 0);
      persistentResourceID = [v32 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2001 descriptionArray:v33 errorType:@"MCFatalError"];
      mCCopyAsPrimaryError = [persistentResourceID MCCopyAsPrimaryError];
      goto LABEL_27;
    }

    objc_storeWeak(&v10->_profile, profileCopy);
    v59 = 0;
    v24 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadType" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v59];
    mCCopyAsPrimaryError = v59;
    type = v10->_type;
    v10->_type = v24;

    if (!mCCopyAsPrimaryError)
    {
      v58 = 0;
      v26 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadIdentifier" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v58];
      mCCopyAsPrimaryError = v58;
      identifier = v10->_identifier;
      v10->_identifier = v26;

      if (!mCCopyAsPrimaryError)
      {
        v57 = 0;
        v28 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadUUID" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v57];
        mCCopyAsPrimaryError = v57;
        UUID = v10->_UUID;
        v10->_UUID = v28;
      }
    }

    v33 = [dictionaryCopy objectForKey:@"PayloadDescription"];
    if (!v33)
    {
LABEL_21:
      [dictionaryCopy removeObjectForKey:@"PayloadDescription"];
      if (mCCopyAsPrimaryError)
      {
        goto LABEL_28;
      }

      v56 = 0;
      v38 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadDisplayName" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v56];
      mCCopyAsPrimaryError = v56;
      displayName = v10->_displayName;
      v10->_displayName = v38;

      if (!mCCopyAsPrimaryError)
      {
        v55 = 0;
        v40 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadOrganization" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v55];
        mCCopyAsPrimaryError = v55;
        organization = v10->_organization;
        v10->_organization = v40;
      }

      WeakRetained = objc_loadWeakRetained(&v10->_profile);
      isStub2 = [WeakRetained isStub];

      if (!isStub2 || mCCopyAsPrimaryError)
      {
LABEL_28:

        if (!mCCopyAsPrimaryError)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v54 = 0;
      v44 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PersistentResourceID" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v54];
      mCCopyAsPrimaryError = v54;
      persistentResourceID = v10->_persistentResourceID;
      v10->_persistentResourceID = v44;
LABEL_27:

      goto LABEL_28;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = MCStringFromArrayOfStrings(v33);
      payloadDescription = v10->_payloadDescription;
      v10->_payloadDescription = v30;

      if (v10->_payloadDescription)
      {
        goto LABEL_21;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v33;
        v36 = v10->_payloadDescription;
        v10->_payloadDescription = v35;
LABEL_20:

        goto LABEL_21;
      }
    }

    v37 = [MCPayload badFieldTypeErrorWithField:@"PayloadDescription"];
    v36 = mCCopyAsPrimaryError;
    mCCopyAsPrimaryError = v37;
    goto LABEL_20;
  }

  mCCopyAsPrimaryError = v12;

LABEL_29:
  v45 = [(MCPayload *)v10 malformedPayloadErrorWithError:mCCopyAsPrimaryError];
  v46 = v45;
  if (error)
  {
    v47 = v45;
    *error = v46;
  }

  v48 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v49 = v48;
    v50 = objc_opt_class();
    v51 = v50;
    mCVerboseDescription = [v46 MCVerboseDescription];
    *buf = 138543618;
    v63 = v50;
    v64 = 2114;
    v65 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v49, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_34:

  return v10;
}

- (id)malformedPayloadErrorWithError:(id)error
{
  errorCopy = error;
  profile = [(MCPayload *)self profile];
  friendlyName = [profile friendlyName];

  v14 = MEMORY[0x1E696ABC0];
  if (friendlyName)
  {
    MCErrorArray(@"ERROR_PAYLOAD_MALFORMED_P_ID", v7, v8, v9, v10, v11, v12, v13, friendlyName);
  }

  else
  {
    MCErrorArray(@"ERROR_PAYLOAD_MALFORMED", v7, v8, v9, v10, v11, v12, v13, 0);
  }
  v15 = ;
  v16 = [v14 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2000 descriptionArray:v15 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v16;
}

- (id)stubDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  [v3 setObject:v4 forKey:@"PayloadVersion"];

  [v3 setObject:self->_type forKey:@"PayloadType"];
  [v3 setObject:self->_identifier forKey:@"PayloadIdentifier"];
  [v3 setObject:self->_UUID forKey:@"PayloadUUID"];
  [v3 MCSetObjectIfNotNil:self->_payloadDescription forKey:@"PayloadDescription"];
  [v3 MCSetObjectIfNotNil:self->_displayName forKey:@"PayloadDisplayName"];
  [v3 MCSetObjectIfNotNil:self->_organization forKey:@"PayloadOrganization"];
  [v3 MCSetObjectIfNotNil:self->_persistentResourceID forKey:@"PersistentResourceID"];

  return v3;
}

+ (id)wrapperPayloadDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:1];
  [dictionary setObject:v3 forKey:@"PayloadVersion"];

  return dictionary;
}

- (id)filterForUserEnrollmentOutError:(id *)error
{
  v5 = +[MCPayload availablePayloadsForUserEnrollment];
  v6 = [v5 containsObject:objc_opt_class()];
  if (error && (v6 & 1) == 0)
  {
    v7 = MEMORY[0x1E696ABC0];
    type = [(MCPayload *)self type];
    v16 = MCErrorArray(@"ERROR_UNACCEPTABLE_PAYLOAD_IN_USER_ENROLLMENT_P_TYPE", v9, v10, v11, v12, v13, v14, v15, type);
    *error = [v7 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4029 descriptionArray:v16 errorType:@"MCFatalError"];
  }

  return 0;
}

@end