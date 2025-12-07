@interface ACXApplication
+ (BOOL)_isIndeterminateMISError:(int)error;
+ (id)gizmoApplicationsFromCompanionAppRecord:(id)record databaseUUID:(id)d startingSequenceNumber:(unint64_t)number;
+ (int)_systemTrustsApplicationWithBundleURL:(id)l;
- (ACXApplication)init;
- (ACXApplication)initWithApplicationRecord:(id)record gizmoBundleIdentifier:(id)identifier databaseUUID:(id)d sequenceNumber:(unint64_t)number;
- (ACXApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number;
- (ACXApplication)initWithCoder:(id)coder;
- (ACXApplication)initWithSerializedDictionary:(id)dictionary reevaluatingTrust:(BOOL)trust;
- (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory;
- (id)_URLsOfExtensionsInBundleURL:(id)l mayNotExist:(BOOL)exist;
- (id)_infoPlistForPluginBundle:(id)bundle;
- (id)_mostCurrentWKAppURLInCompanionAppRecord:(id)record isPlaceholder:(BOOL *)placeholder;
- (id)_parseArchitectureSlicesForWatchKitAppExecutableURL:(id)l;
- (id)_storeMetadataWithError:(id *)error;
- (id)_watchKitApplicationNameFromWKAppInfoPlist:(id)plist containerRecord:(id)record;
- (id)appWithReevaluatedTrust;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForTesting;
- (id)serialize;
- (id)serializeAsRemoteApplication;
- (void)_evaluateTrustInfoForReevaluation:(BOOL)reevaluation;
- (void)_populateStoreMetadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXApplication

- (ACXApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ACXApplication;
  v5 = [(ACXRemoteApplication *)&v27 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (![coderCopy containsValueForKey:@"watchAppURL"] || (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"watchAppURL"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6), v7 = objc_claimAutoreleasedReturnValue(), watchAppURL = v5->_watchAppURL, v5->_watchAppURL = v7, watchAppURL, v6, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"lsSequenceNumber"), v9 = objc_claimAutoreleasedReturnValue(), v5->_lsSequenceNumber = objc_msgSend(v9, "unsignedIntegerValue"), v9, v10 = MEMORY[0x277CBEB98], v11 = objc_opt_class(), objc_msgSend(v10, "setWithObjects:", v11, objc_opt_class(), 0), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v12, @"clockFaceExtensionPaths"), v13 = objc_claimAutoreleasedReturnValue(), clockFaceExtensionPaths = v5->_clockFaceExtensionPaths, v5->_clockFaceExtensionPaths = v13, clockFaceExtensionPaths, v12, v5->_isTrusted = objc_msgSend(coderCopy, "decodeBoolForKey:", @"isTrusted"), (objc_msgSend(coderCopy, "containsValueForKey:", @"companionAppURL") & 1) == 0))
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_10;
    }

LABEL_9:
    MOLogWrite();
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppURL"];
  v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
  companionAppURL = v5->_companionAppURL;
  v5->_companionAppURL = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppIdentifier"];
  sourceAppIdentifier = v5->_sourceAppIdentifier;
  v5->_sourceAppIdentifier = v18;

  if (([coderCopy containsValueForKey:@"companionAppName"] & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppName"];
  companionAppName = v5->_companionAppName;
  v5->_companionAppName = v20;

  v5->_isPurchasedReDownload = [coderCopy decodeBoolForKey:@"isPurchasedReDownload"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
  v5->_autoInstallOverride = [v22 unsignedIntegerValue];

  v5->_isEmbeddedPlaceholder = [coderCopy decodeBoolForKey:@"isEmbeddedPlaceholder"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceStatus"];
  deviceStatus = v5->_deviceStatus;
  v5->_deviceStatus = v23;

LABEL_6:
  v25 = v5;
LABEL_11:

  return v25;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v3 initForTesting];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = ACXApplication;
  coderCopy = coder;
  [(ACXRemoteApplication *)&v9 encodeWithCoder:coderCopy];
  v5 = [(NSURL *)self->_watchAppURL absoluteString:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"watchAppURL"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lsSequenceNumber];
  [coderCopy encodeObject:v6 forKey:@"lsSequenceNumber"];

  [coderCopy encodeObject:self->_clockFaceExtensionPaths forKey:@"clockFaceExtensionPaths"];
  [coderCopy encodeBool:self->_isTrusted forKey:@"isTrusted"];
  absoluteString = [(NSURL *)self->_companionAppURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"companionAppURL"];

  [coderCopy encodeObject:self->_sourceAppIdentifier forKey:@"sourceAppIdentifier"];
  [coderCopy encodeObject:self->_companionAppName forKey:@"companionAppName"];
  [coderCopy encodeBool:self->_isPurchasedReDownload forKey:@"isPurchasedReDownload"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoInstallOverride];
  [coderCopy encodeObject:v8 forKey:@"autoInstallOverride"];

  [coderCopy encodeBool:self->_isEmbeddedPlaceholder forKey:@"isEmbeddedPlaceholder"];
  [coderCopy encodeObject:self->_deviceStatus forKey:@"deviceStatus"];
}

- (ACXApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v3 init];
}

- (ACXApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v6 initWithBundleID:d databaseUUID:iD sequenceNumber:number];
}

- (ACXApplication)initWithSerializedDictionary:(id)dictionary reevaluatingTrust:(BOOL)trust
{
  trustCopy = trust;
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = ACXApplication;
  v7 = [(ACXRemoteApplication *)&v44 initWithSerializedDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"LSSequenceNumber"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_60;
    }

    v7->_lsSequenceNumber = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"watchAppURLString"];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (![(ACXRemoteApplication *)v7 isSystemApp])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_37;
      }

LABEL_36:
      MOLogWrite();
LABEL_37:

LABEL_63:
      v42 = 0;
      goto LABEL_64;
    }

    if (![(ACXRemoteApplication *)v7 isSystemApp])
    {
      goto LABEL_31;
    }

    v14 = 0;
LABEL_15:
    watchAppURL = v7->_watchAppURL;
    v7->_watchAppURL = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"ACXClockfaceExtensionPaths"];
    objc_opt_class();
    v17 = v16;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      objc_storeStrong(&v7->_clockFaceExtensionPaths, v18);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isTrusted"];
    objc_opt_class();
    v20 = v19;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_60;
    }

    v7->_isTrusted = [v21 BOOLValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"companionAppURLString"];
    objc_opt_class();
    v23 = v22;
    if (objc_opt_isKindOfClass())
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_63;
      }

LABEL_62:
      MOLogWrite();
      goto LABEL_63;
    }

    v24 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    if (v24)
    {
      companionAppURL = v7->_companionAppURL;
      v7->_companionAppURL = v24;

      v26 = [dictionaryCopy objectForKeyedSubscript:@"sourceAppIdentifier"];
      objc_opt_class();
      v27 = v26;
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        objc_storeStrong(&v7->_sourceAppIdentifier, v28);
      }

      v29 = [dictionaryCopy objectForKeyedSubscript:@"companionAppName"];
      objc_opt_class();
      v30 = v29;
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        companionAppName = v7->_companionAppName;
        v7->_companionAppName = v31;

        v33 = [dictionaryCopy objectForKeyedSubscript:@"isPurchaseReDownload"];
        objc_opt_class();
        v34 = v33;
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          v7->_isPurchasedReDownload = [v35 BOOLValue];
        }

        else if (![(ACXRemoteApplication *)v7 isSystemApp])
        {
          goto LABEL_60;
        }

        v36 = [dictionaryCopy objectForKeyedSubscript:@"autoInstallOverride"];
        v37 = objc_opt_class();
        v38 = _ACXValidateObject(v36, v37);

        if (v38)
        {
          v7->_autoInstallOverride = [v38 unsignedIntegerValue];
        }

        v39 = [dictionaryCopy objectForKeyedSubscript:@"isPlaceholder"];
        v40 = objc_opt_class();
        v41 = _ACXValidateObject(v39, v40);

        if (v41)
        {
          v7->_isEmbeddedPlaceholder = [v41 BOOLValue];

          if (trustCopy)
          {
            [(ACXApplication *)v7 _evaluateTrustInfoForReevaluation:1];
          }

          goto LABEL_59;
        }
      }

LABEL_60:
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

LABEL_31:
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_59:
  v42 = v7;
LABEL_64:

  return v42;
}

- (id)serialize
{
  v19.receiver = self;
  v19.super_class = ACXApplication;
  serialize = [(ACXRemoteApplication *)&v19 serialize];
  v4 = [serialize mutableCopy];

  watchAppURL = [(ACXApplication *)self watchAppURL];
  absoluteString = [watchAppURL absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"watchAppURLString"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXApplication lsSequenceNumber](self, "lsSequenceNumber")}];
  [v4 setObject:v7 forKeyedSubscript:@"LSSequenceNumber"];

  clockFaceExtensionPaths = [(ACXApplication *)self clockFaceExtensionPaths];
  [v4 setObject:clockFaceExtensionPaths forKeyedSubscript:@"ACXClockfaceExtensionPaths"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isTrusted](self, "isTrusted")}];
  [v4 setObject:v9 forKeyedSubscript:@"isTrusted"];

  companionAppURL = [(ACXApplication *)self companionAppURL];
  absoluteString2 = [companionAppURL absoluteString];
  [v4 setObject:absoluteString2 forKeyedSubscript:@"companionAppURLString"];

  sourceAppIdentifier = [(ACXApplication *)self sourceAppIdentifier];
  [v4 setObject:sourceAppIdentifier forKeyedSubscript:@"sourceAppIdentifier"];

  companionAppName = [(ACXApplication *)self companionAppName];
  [v4 setObject:companionAppName forKeyedSubscript:@"companionAppName"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isPurchasedReDownload](self, "isPurchasedReDownload")}];
  [v4 setObject:v14 forKeyedSubscript:@"isPurchaseReDownload"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXApplication autoInstallOverride](self, "autoInstallOverride")}];
  [v4 setObject:v15 forKeyedSubscript:@"autoInstallOverride"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isEmbeddedPlaceholder](self, "isEmbeddedPlaceholder")}];
  [v4 setObject:v16 forKeyedSubscript:@"isPlaceholder"];

  v17 = [v4 copy];

  return v17;
}

- (id)serializeAsRemoteApplication
{
  v4.receiver = self;
  v4.super_class = ACXApplication;
  serialize = [(ACXRemoteApplication *)&v4 serialize];

  return serialize;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = ACXApplication;
  v4 = [(ACXRemoteApplication *)&v25 copyWithZone:zone];
  if (v4)
  {
    watchAppURL = [(ACXApplication *)self watchAppURL];
    v6 = [watchAppURL copy];
    v7 = v4[33];
    v4[33] = v6;

    v4[34] = [(ACXApplication *)self lsSequenceNumber];
    clockFaceExtensionPaths = [(ACXApplication *)self clockFaceExtensionPaths];
    v9 = [clockFaceExtensionPaths copy];
    v10 = v4[35];
    v4[35] = v9;

    *(v4 + 256) = [(ACXApplication *)self isTrusted];
    companionAppURL = [(ACXApplication *)self companionAppURL];
    v12 = [companionAppURL copy];
    v13 = v4[36];
    v4[36] = v12;

    sourceAppIdentifier = [(ACXApplication *)self sourceAppIdentifier];
    v15 = [sourceAppIdentifier copy];
    v16 = v4[38];
    v4[38] = v15;

    companionAppName = [(ACXApplication *)self companionAppName];
    v18 = [companionAppName copy];
    v19 = v4[37];
    v4[37] = v18;

    *(v4 + 257) = [(ACXApplication *)self isPurchasedReDownload];
    v4[40] = [(ACXApplication *)self autoInstallOverride];
    *(v4 + 258) = [(ACXApplication *)self isEmbeddedPlaceholder];
    deviceStatus = [(ACXApplication *)self deviceStatus];
    v21 = [deviceStatus copy];
    v22 = v4[39];
    v4[39] = v21;

    v23 = v4;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
  watchAppURL = [(ACXApplication *)self watchAppURL];
  path = [watchAppURL path];
  v9 = [v3 stringWithFormat:@"<%@<%p> bundleID=%@ path=%@>", v5, self, bundleIdentifier, path];

  return v9;
}

- (id)_parseArchitectureSlicesForWatchKitAppExecutableURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = objc_opt_new();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __70__ACXApplication__parseArchitectureSlicesForWatchKitAppExecutableURL___block_invoke;
    v13 = &unk_278C8D078;
    v6 = v4;
    v14 = v6;
    if ((parse_macho_iterate_slices(fileSystemRepresentation, &v10) & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v9 = lCopy;
      MOLogWrite();
    }

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __70__ACXApplication__parseArchitectureSlicesForWatchKitAppExecutableURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 4);
  v4 = *(a3 + 8);
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v11 = *(a3 + 4);
    v12 = *(a3 + 8);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{v5, v11, v12}];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v6 addObject:v9];

  return 1;
}

- (void)_populateStoreMetadata
{
  if ([(ACXSyncedApplication *)self isDeletable]|| [(ACXSyncedApplication *)self applicationType]== 2)
  {
    v11 = 0;
    v3 = [(ACXApplication *)self _storeMetadataWithError:&v11];
    v4 = v11;
    v5 = v4;
    if (v3)
    {
      [(ACXRemoteApplication *)self setStoreMetadata:v3];
LABEL_13:

      return;
    }

    userInfo = [v4 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v7 code];

      if (code == 260)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
      MOLogWrite();
    }

    goto LABEL_12;
  }
}

+ (id)gizmoApplicationsFromCompanionAppRecord:(id)record databaseUUID:(id)d startingSequenceNumber:(unint64_t)number
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  if (recordCopy)
  {
    v9 = objc_opt_new();
    counterpartIdentifiers = [recordCopy counterpartIdentifiers];
    v11 = counterpartIdentifiers;
    if (counterpartIdentifiers && [counterpartIdentifiers count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [objc_alloc(objc_opt_class()) initWithApplicationRecord:recordCopy gizmoBundleIdentifier:*(*(&v22 + 1) + 8 * i) databaseUUID:dCopy sequenceNumber:number];
            if (!v17)
            {

              v19 = 0;
              v11 = v21;
              goto LABEL_21;
            }

            v18 = v17;
            ++number;
            [v9 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v11 = v21;
    }

    else
    {
      v19 = [objc_alloc(objc_opt_class()) initWithApplicationRecord:recordCopy gizmoBundleIdentifier:0 databaseUUID:dCopy sequenceNumber:number];
      if (!v19)
      {
LABEL_21:

        goto LABEL_22;
      }

      [v9 addObject:v19];
    }

    v19 = [v9 copy];
    goto LABEL_21;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (ACXApplication)initWithApplicationRecord:(id)record gizmoBundleIdentifier:(id)identifier databaseUUID:(id)d sequenceNumber:(unint64_t)number
{
  v236 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifierCopy = identifier;
  v229.receiver = self;
  v229.super_class = ACXApplication;
  v197 = recordCopy;
  dCopy = d;
  v10 = [ACXRemoteApplication initWithApplicationRecord:sel_initWithApplicationRecord_databaseUUID_sequenceNumber_ databaseUUID:recordCopy sequenceNumber:?];
  if (!v10)
  {
    goto LABEL_43;
  }

  if (recordCopy)
  {
    if ([recordCopy isPlaceholder])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }

    bundleIdentifier = [recordCopy bundleIdentifier];
    applicationState = [recordCopy applicationState];
    isInstalled = [applicationState isInstalled];

    if ((isInstalled & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      goto LABEL_30;
    }

    compatibilityObject = [recordCopy compatibilityObject];
    if ([compatibilityObject compatibilityState])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ([recordCopy ACX_shouldBeTrackedByAppConduit])
    {
      if (bundleIdentifier)
      {
        typeForInstallMachinery = [recordCopy typeForInstallMachinery];
        if ([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E40]])
        {
          v13 = 2;
        }

        else
        {
          if (([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E30]] & 1) == 0)
          {
            if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_112;
            }

            goto LABEL_81;
          }

          v13 = 1;
        }

        [(ACXSyncedApplication *)v10 setApplicationType:v13];
        -[ACXRemoteApplication setIsProfileValidated:](v10, "setIsProfileValidated:", [recordCopy isProfileValidated]);
        [(ACXRemoteApplication *)v10 setCompanionAppBundleID:bundleIdentifier];
        -[ACXRemoteApplication setIsBetaApp:](v10, "setIsBetaApp:", [recordCopy isBeta]);
        -[ACXSyncedApplication setIsDeletable:](v10, "setIsDeletable:", [recordCopy isDeletable]);
        iTunesMetadata = [recordCopy iTunesMetadata];
        sourceApp = [iTunesMetadata sourceApp];
        sourceAppIdentifier = v10->_sourceAppIdentifier;
        v10->_sourceAppIdentifier = sourceApp;

        v18 = [recordCopy URL];
        companionAppURL = v10->_companionAppURL;
        v10->_companionAppURL = v18;

        if (!v10->_companionAppURL)
        {
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_112;
          }

          goto LABEL_81;
        }

        v20 = [objc_opt_class() localizedAppNameFromRecord:recordCopy];
        companionAppName = v10->_companionAppName;
        v10->_companionAppName = v20;

        if (!v10->_companionAppName)
        {
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_112;
          }

          goto LABEL_81;
        }

        v10->_lsSequenceNumber = [recordCopy sequenceNumber];
        if ([(ACXRemoteApplication *)v10 isSystemApp])
        {
          if (identifierCopy && [identifierCopy length])
          {
            [(ACXSyncedApplication *)v10 setBundleIdentifier:identifierCopy];
            counterpartIdentifiers = [recordCopy counterpartIdentifiers];
            if ([counterpartIdentifiers containsObject:identifierCopy])
            {
              [(ACXApplication *)v10 setIsTrusted:1];
              v23 = [objc_opt_class() localizedAppNameFromRecord:recordCopy];
              [(ACXSyncedApplication *)v10 setApplicationName:v23];

              aCX_watchKitAppExtensionBundleID = [recordCopy ACX_watchKitAppExtensionBundleID];
              if (aCX_watchKitAppExtensionBundleID)
              {
                [(ACXRemoteApplication *)v10 setWatchKitAppExtensionBundleID:aCX_watchKitAppExtensionBundleID];
                [(ACXRemoteApplication *)v10 setWatchKitVersion:@"2.0"];
                [(ACXRemoteApplication *)v10 setTeamID:&stru_2851ED680];
              }

              [(ACXRemoteApplication *)v10 setApplicationMode:0];

LABEL_42:
LABEL_43:
              v14 = v10;
              goto LABEL_44;
            }

            v57 = [counterpartIdentifiers componentsJoinedByString:{@", "}];
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              MOLogWrite();
            }

LABEL_112:
            goto LABEL_30;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_112;
          }

LABEL_81:
          MOLogWrite();
          goto LABEL_112;
        }

        v228 = 0;
        v180 = [(ACXApplication *)v10 _mostCurrentWKAppURLInCompanionAppRecord:recordCopy isPlaceholder:&v228];
        if (!v180)
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            MOLogWrite();
          }

          goto LABEL_112;
        }

        v10->_isEmbeddedPlaceholder = v228;
        v26 = [(ACXApplication *)v10 _URLsOfExtensionsInBundleURL:v180 mayNotExist:0];
        v27 = objc_opt_new();
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        obj = v26;
        v191 = [obj countByEnumeratingWithState:&v224 objects:v235 count:16];
        if (v191)
        {
          v28 = 0;
          v187 = *v225;
          do
          {
            for (i = 0; i != v191; i = i + 1)
            {
              if (*v225 != v187)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v224 + 1) + 8 * i);
              v31 = [(ACXApplication *)v10 _infoPlistForPluginBundle:v30];
              if (v31)
              {
                [v27 setObject:v31 forKeyedSubscript:v30];
                v32 = [v31 objectForKeyedSubscript:@"NSExtension"];
                v193 = [v32 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];

                if ([v193 isEqualToString:@"com.apple.watchkit"])
                {
                  v33 = [(ACXApplication *)v10 _URLsOfExtensionsInBundleURL:v30 mayNotExist:1];
                  v185 = v33;
                  v34 = v33;
                  if (v33)
                  {
                    v35 = [v33 count];
                    v34 = v185;
                    if (v35)
                    {
                      v222 = 0u;
                      v223 = 0u;
                      v220 = 0u;
                      v221 = 0u;
                      v36 = v185;
                      v37 = [v36 countByEnumeratingWithState:&v220 objects:v234 count:16];
                      if (v37)
                      {
                        v38 = *v221;
                        do
                        {
                          for (j = 0; j != v37; ++j)
                          {
                            if (*v221 != v38)
                            {
                              objc_enumerationMutation(v36);
                            }

                            v40 = *(*(&v220 + 1) + 8 * j);
                            v41 = [(ACXApplication *)v10 _infoPlistForPluginBundle:v40];
                            if (v41)
                            {
                              [v27 setObject:v41 forKeyedSubscript:v40];
                            }
                          }

                          v37 = [v36 countByEnumeratingWithState:&v220 objects:v234 count:16];
                        }

                        while (v37);
                      }

                      v34 = v185;
                    }
                  }

                  v28 = 1;
                }
              }
            }

            v191 = [obj countByEnumeratingWithState:&v224 objects:v235 count:16];
          }

          while (v191);
        }

        else
        {
          v28 = 0;
        }

        v42 = *MEMORY[0x277CBED58];
        v43 = *MEMORY[0x277CBEC50];
        v173 = *MEMORY[0x277D1C1E8];
        v175 = *MEMORY[0x277CBED38];
        v188 = *MEMORY[0x277CBED30];
        v174 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED58], *MEMORY[0x277CBEC50], *MEMORY[0x277CBEC40], *MEMORY[0x277CBED50], *MEMORY[0x277CBED30], @"MinimumOSVersion", @"UIRequiredDeviceCapabilities", @"NSUserActivityTypes", @"WKRunsIndependentlyOfCompanionApp", @"WKApplication", *MEMORY[0x277D1C1E8], 0}];
        v44 = ACXLoadInfoPlist(v180, v174);
        v177 = v44;
        if (v44)
        {
          if ([v44 count])
          {
            v45 = [v177 objectForKeyedSubscript:v175];
            v46 = objc_opt_class();
            v171 = _ACXValidateObject(v45, v46);

            if (v171)
            {
              v47 = [v177 objectForKeyedSubscript:@"WKApplication"];
              v48 = ACXBooleanValue(v47, 0);

              if ((v48 | v28))
              {
                [(ACXSyncedApplication *)v10 setBundleIdentifier:v171];
                v49 = [v177 objectForKeyedSubscript:v42];
                v50 = objc_opt_class();
                v51 = _ACXValidateObject(v49, v50);
                [(ACXRemoteApplication *)v10 setBundleVersion:v51];

                v52 = [v177 objectForKeyedSubscript:v43];
                v53 = objc_opt_class();
                v54 = _ACXValidateObject(v52, v53);
                [(ACXRemoteApplication *)v10 setBundleShortVersion:v54];

                v55 = [(ACXApplication *)v10 _watchKitApplicationNameFromWKAppInfoPlist:v177 containerRecord:v197];
                [(ACXSyncedApplication *)v10 setApplicationName:v55];

                [(ACXApplication *)v10 _evaluateTrustInfoForReevaluation:0];
                v219 = 0;
                v169 = MobileInstallationCopyAppMetadata();
                v165 = 0;
                if (v169)
                {
                  if (!v228)
                  {
                    watchKitAppExecutableHash = [v169 watchKitAppExecutableHash];
                    [(ACXRemoteApplication *)v10 setWatchKitAppExecutableHash:watchKitAppExecutableHash];
                  }

                  v10->_autoInstallOverride = [v169 autoInstallOverride];
                }

                else if (!gLogHandle || *(gLogHandle + 44) >= 3)
                {
                  v158 = bundleIdentifier;
                  v163 = v165;
                  MOLogWrite();
                }

                v60 = [v177 objectForKeyedSubscript:{@"MinimumOSVersion", v158, v163}];
                v61 = objc_opt_class();
                v62 = _ACXValidateObject(v60, v61);
                [(ACXRemoteApplication *)v10 setMinimumOSVersion:v62];

                iTunesMetadata2 = [v197 iTunesMetadata];
                v10->_isPurchasedReDownload = [iTunesMetadata2 isPurchasedRedownload];

                v167 = [v177 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
                if (!v167)
                {
LABEL_133:
                  [(ACXRemoteApplication *)v10 setWatchKitVersion:@"2.0"];
                  teamIdentifier = [v197 teamIdentifier];
                  [(ACXRemoteApplication *)v10 setTeamID:teamIdentifier];

                  teamID = [(ACXRemoteApplication *)v10 teamID];
                  if (!teamID || (-[ACXRemoteApplication teamID](v10, "teamID"), v77 = objc_claimAutoreleasedReturnValue(), v78 = [v77 isEqualToString:@"0000000000"], v77, teamID, v78))
                  {
                    [(ACXRemoteApplication *)v10 setTeamID:&stru_2851ED680];
                  }

                  objc_storeStrong(&v10->_watchAppURL, v180);
                  if (v228)
                  {
                    v79 = [v177 objectForKeyedSubscript:v173];
                    v80 = objc_opt_class();
                    path = _ACXValidateObject(v79, v80);
                    v82 = _ValidateSupportedArchitecturesListForPlaceholder(path, v180);
                    [(ACXRemoteApplication *)v10 setArchitectureSlices:v82];
                  }

                  else
                  {
                    v83 = [v177 objectForKeyedSubscript:v188];
                    v84 = objc_opt_class();
                    v79 = _ACXValidateObject(v83, v84);

                    if (v79)
                    {
                      path = [v180 URLByAppendingPathComponent:v79 isDirectory:0];
                      v85 = [(ACXApplication *)v10 _parseArchitectureSlicesForWatchKitAppExecutableURL:path];
                      [(ACXRemoteApplication *)v10 setArchitectureSlices:v85];
                    }

                    else
                    {
                      if (gLogHandle && *(gLogHandle + 44) < 3)
                      {
                        goto LABEL_144;
                      }

                      path = [v180 path];
                      path2 = path;
                      MOLogWrite();
                    }
                  }

LABEL_144:
                  v86 = [v177 objectForKeyedSubscript:@"NSUserActivityTypes"];
                  v87 = objc_opt_class();
                  v168 = _ACXValidateObject(v86, v87);

                  if (v168)
                  {
                    v88 = objc_opt_class();
                    if (ACXArrayContainsOnlyClass(v168, v88))
                    {
                      [(ACXRemoteApplication *)v10 setUserActivityTypes:v168];
                    }

                    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
                    {
                      path2 = [v180 path];
                      MOLogWrite();
                    }
                  }

                  v89 = [v177 objectForKeyedSubscript:{@"WKRunsIndependentlyOfCompanionApp", path2}];
                  v90 = objc_opt_class();
                  v166 = _ACXValidateObject(v89, v90);

                  if (v166 && ([v166 BOOLValue] & 1) != 0)
                  {
                    v91 = 2;
                  }

                  else
                  {
                    v91 = 1;
                  }

                  [(ACXRemoteApplication *)v10 setApplicationMode:v91];
                  v170 = objc_opt_new();
                  v208 = 0u;
                  v209 = 0u;
                  v206 = 0u;
                  v207 = 0u;
                  v189 = v27;
                  v186 = [v189 countByEnumeratingWithState:&v206 objects:v232 count:16];
                  if (!v186)
                  {
                    v176 = 0;
LABEL_254:

                    v152 = [v170 copy];
                    clockFaceExtensionPaths = v10->_clockFaceExtensionPaths;
                    v10->_clockFaceExtensionPaths = v152;

                    clockFaceExtensionPaths = [(ACXApplication *)v10 clockFaceExtensionPaths];
                    v155 = [clockFaceExtensionPaths count] == 0;

                    if (!v155)
                    {
                      [(ACXRemoteApplication *)v10 setHasClockfaces:1];
                    }

                    v156 = [objc_opt_class() buildLocalizedInfoPlistStringsDictForAppBundleURL:v10->_watchAppURL watchKitExtensionURL:v176];
                    [(ACXSyncedApplication *)v10 setLocalizedInfoPlistStrings:v156];

                    aCX_externalVersionIdentifier = [v197 ACX_externalVersionIdentifier];
                    [(ACXSyncedApplication *)v10 setExternalVersionIdentifier:aCX_externalVersionIdentifier];

                    [(ACXApplication *)v10 _populateStoreMetadata];
                    v151 = 1;
                    v178 = v176;
LABEL_257:

                    if (v151)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_112;
                  }

                  v176 = 0;
                  v181 = *v207;
LABEL_156:
                  v92 = 0;
                  while (1)
                  {
                    if (*v207 != v181)
                    {
                      objc_enumerationMutation(v189);
                    }

                    v93 = *(*(&v206 + 1) + 8 * v92);
                    v194 = [v189 objectForKeyedSubscript:{v93, path6}];
                    v94 = [v194 objectForKeyedSubscript:@"NSExtension"];
                    v95 = objc_opt_class();
                    path3 = _ACXValidateObject(v94, v95);

                    if (path3)
                    {
                      break;
                    }

                    if (gLogHandle && *(gLogHandle + 44) < 3)
                    {
                      goto LABEL_200;
                    }

                    path3 = [v93 path];
                    path6 = path3;
                    MOLogWrite();
LABEL_199:

LABEL_200:
                    if (++v92 == v186)
                    {
                      v150 = [v189 countByEnumeratingWithState:&v206 objects:v232 count:16];
                      v186 = v150;
                      if (v150)
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_254;
                    }
                  }

                  v97 = [path3 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
                  v98 = objc_opt_class();
                  v192 = _ACXValidateObject(v97, v98);

                  v99 = v192;
                  if (v192)
                  {
                    if ([v192 isEqualToString:@"com.apple.watchkit"])
                    {
                      v178 = v93;

                      path7 = [v194 objectForKeyedSubscript:@"CLKComplicationPrincipalClass"];
                      if (path7)
                      {
                        v101 = objc_opt_class();
                        v102 = _ACXValidateObject(path7, v101);
                        v103 = v102 == 0;

                        if (v103)
                        {
                          if (!gLogHandle || *(gLogHandle + 44) >= 3)
                          {
                            path6 = bundleIdentifier;
                            v164 = path7;
                            MOLogWrite();
                          }

                          path7 = 0;
                        }
                      }

                      v104 = [v194 objectForKeyedSubscript:{@"CLKComplicationSupportedFamilies", path6, v164}];
                      if (v104)
                      {
                        v105 = objc_opt_class();
                        v106 = _ACXValidateObject(v104, v105);
                        if (!v106 || (v107 = objc_opt_class(), v108 = ACXArrayContainsOnlyClass(v104, v107), v106, (v108 & 1) == 0))
                        {
                          if (!gLogHandle || *(gLogHandle + 44) >= 3)
                          {
                            v161 = bundleIdentifier;
                            v164 = v104;
                            MOLogWrite();
                          }

                          v104 = 0;
                        }
                      }

                      if (path7)
                      {
                        [(ACXRemoteApplication *)v10 setComplicationPrincipalClass:path7];
                      }

                      if (v104)
                      {
                        [(ACXRemoteApplication *)v10 setSupportedComplicationFamilies:v104];
                      }

                      v109 = [v194 objectForKeyedSubscript:{v175, v161}];
                      v110 = objc_opt_class();
                      v111 = _ACXValidateObject(v109, v110);

                      if (!v111)
                      {
                        if (!gLogHandle || *(gLogHandle + 44) >= 3)
                        {
                          path4 = [v178 path];
                          MOLogWrite();
                        }

                        v151 = 0;
                        goto LABEL_257;
                      }

                      [(ACXRemoteApplication *)v10 setWatchKitAppExtensionBundleID:v111];
                      v112 = [v194 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
                      v113 = objc_opt_class();
                      v114 = _ACXValidateObject(v112, v113);

                      if (v114 && ([v114 BOOLValue] & 1) != 0)
                      {
                        v115 = 2;
                      }

                      else
                      {
                        v115 = 1;
                      }

                      [(ACXRemoteApplication *)v10 setApplicationMode:v115];
                      if (v228)
                      {
                        v117 = [v194 objectForKeyedSubscript:v173];
                        v118 = objc_opt_class();
                        v119 = _ACXValidateObject(v117, v118);
                        v120 = _ValidateSupportedArchitecturesListForPlaceholder(v119, v178);
                        [(ACXRemoteApplication *)v10 setArchitectureSlices:v120];
                      }

                      v176 = v178;
                      goto LABEL_196;
                    }

                    if ([v192 isEqualToString:@"com.apple.clockface"])
                    {
                      path5 = [v93 path];
                      path7 = path5;
                      if (path5)
                      {
                        [v170 addObject:path5];
                        path7 = path5;
                      }

                      goto LABEL_196;
                    }

                    if (![v192 isEqualToString:@"com.apple.intents-service"])
                    {
                      goto LABEL_197;
                    }

                    v121 = [path3 objectForKeyedSubscript:@"NSExtensionAttributes"];
                    v122 = objc_opt_class();
                    v179 = _ACXValidateObject(v121, v122);

                    if (v179)
                    {
                      v123 = [v179 objectForKeyedSubscript:@"IntentsSupported"];
                      v124 = objc_opt_class();
                      v172 = _ACXValidateObject(v123, v124);

                      if (v172)
                      {
                        v125 = objc_opt_class();
                        if ((ACXArrayContainsOnlyClass(v172, v125) & 1) == 0)
                        {
                          if (!gLogHandle || *(gLogHandle + 44) >= 3)
                          {
                            path6 = [v93 path];
                            MOLogWrite();
                          }

LABEL_246:
                          path7 = v179;
                          goto LABEL_196;
                        }

                        if ([v172 count])
                        {
                          intentsSupported = [(ACXRemoteApplication *)v10 intentsSupported];
                          v127 = intentsSupported == 0;

                          if (v127)
                          {
                            [(ACXRemoteApplication *)v10 setIntentsSupported:v172];
                          }

                          else
                          {
                            intentsSupported2 = [(ACXRemoteApplication *)v10 intentsSupported];
                            v129 = [intentsSupported2 mutableCopy];

                            v204 = 0u;
                            v205 = 0u;
                            v202 = 0u;
                            v203 = 0u;
                            v130 = v172;
                            v131 = [v130 countByEnumeratingWithState:&v202 objects:v231 count:16];
                            if (v131)
                            {
                              v132 = *v203;
                              do
                              {
                                for (k = 0; k != v131; ++k)
                                {
                                  if (*v203 != v132)
                                  {
                                    objc_enumerationMutation(v130);
                                  }

                                  v134 = *(*(&v202 + 1) + 8 * k);
                                  if (([v129 containsObject:v134] & 1) == 0)
                                  {
                                    [v129 addObject:v134];
                                  }
                                }

                                v131 = [v130 countByEnumeratingWithState:&v202 objects:v231 count:16];
                              }

                              while (v131);
                            }

                            v135 = [v129 copy];
                            [(ACXRemoteApplication *)v10 setIntentsSupported:v135];
                          }
                        }
                      }

                      v136 = [v179 objectForKeyedSubscript:@"IntentsRestrictedWhileLocked"];
                      v137 = objc_opt_class();
                      v138 = _ACXValidateObject(v136, v137);

                      if (v138)
                      {
                        v139 = objc_opt_class();
                        if ((ACXArrayContainsOnlyClass(v138, v139) & 1) == 0)
                        {
                          if (!gLogHandle || *(gLogHandle + 44) >= 3)
                          {
                            path6 = [v93 path];
                            MOLogWrite();
                          }

                          goto LABEL_199;
                        }

                        if ([v138 count])
                        {
                          intentsRestrictedWhileLocked = [(ACXRemoteApplication *)v10 intentsRestrictedWhileLocked];
                          v141 = intentsRestrictedWhileLocked == 0;

                          if (v141)
                          {
                            [(ACXRemoteApplication *)v10 setIntentsRestrictedWhileLocked:v138];
                          }

                          else
                          {
                            intentsRestrictedWhileLocked2 = [(ACXRemoteApplication *)v10 intentsRestrictedWhileLocked];
                            v143 = [intentsRestrictedWhileLocked2 mutableCopy];

                            v200 = 0u;
                            v201 = 0u;
                            v198 = 0u;
                            v199 = 0u;
                            v144 = v138;
                            v145 = [v144 countByEnumeratingWithState:&v198 objects:v230 count:16];
                            if (v145)
                            {
                              v146 = *v199;
                              do
                              {
                                for (m = 0; m != v145; ++m)
                                {
                                  if (*v199 != v146)
                                  {
                                    objc_enumerationMutation(v144);
                                  }

                                  v148 = *(*(&v198 + 1) + 8 * m);
                                  if (([v143 containsObject:v148] & 1) == 0)
                                  {
                                    [v143 addObject:v148];
                                  }
                                }

                                v145 = [v144 countByEnumeratingWithState:&v198 objects:v230 count:16];
                              }

                              while (v145);
                            }

                            v149 = [v143 copy];
                            [(ACXRemoteApplication *)v10 setIntentsRestrictedWhileLocked:v149];
                          }
                        }
                      }

                      goto LABEL_246;
                    }

                    if (gLogHandle && *(gLogHandle + 44) < 3)
                    {
                      goto LABEL_197;
                    }
                  }

                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                  {
                    goto LABEL_198;
                  }

                  path7 = [v93 path];
                  path6 = path7;
                  MOLogWrite();
LABEL_196:

LABEL_197:
                  v99 = v192;
LABEL_198:

                  goto LABEL_199;
                }

                v64 = objc_opt_class();
                v65 = _ACXValidateObject(v167, v64);
                if (v65)
                {
                  v66 = objc_opt_class();
                  if (!ACXArrayContainsOnlyClass(v65, v66))
                  {
LABEL_132:

                    goto LABEL_133;
                  }

                  v67 = objc_opt_new();
                  v217 = 0u;
                  v218 = 0u;
                  v215 = 0u;
                  v216 = 0u;
                  v68 = v65;
                  v69 = [v68 countByEnumeratingWithState:&v215 objects:v233 count:16];
                  if (v69)
                  {
                    v70 = *v216;
                    v71 = MEMORY[0x277CBEC38];
                    do
                    {
                      for (n = 0; n != v69; ++n)
                      {
                        if (*v216 != v70)
                        {
                          objc_enumerationMutation(v68);
                        }

                        [v67 setObject:v71 forKeyedSubscript:*(*(&v215 + 1) + 8 * n)];
                      }

                      v69 = [v68 countByEnumeratingWithState:&v215 objects:v233 count:16];
                    }

                    while (v69);
                  }

                  [(ACXRemoteApplication *)v10 setRequiredCapabilities:v67];
                }

                else
                {
                  v73 = objc_opt_class();
                  v74 = _ACXValidateObject(v167, v73);
                  v67 = v74;
                  if (v74)
                  {
                    v211 = 0;
                    v212 = &v211;
                    v213 = 0x2020000000;
                    v214 = 1;
                    v210[0] = MEMORY[0x277D85DD0];
                    v210[1] = 3221225472;
                    v210[2] = __94__ACXApplication_initWithApplicationRecord_gizmoBundleIdentifier_databaseUUID_sequenceNumber___block_invoke;
                    v210[3] = &unk_278C8D0A0;
                    v210[4] = &v211;
                    [v74 enumerateKeysAndObjectsUsingBlock:v210];
                    if (*(v212 + 24) == 1)
                    {
                      [(ACXRemoteApplication *)v10 setRequiredCapabilities:v67];
                    }

                    _Block_object_dispose(&v211, 8);
                  }
                }

                goto LABEL_132;
              }

              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_111:

                goto LABEL_112;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_111;
            }

            path8 = [v180 path];
            MOLogWrite();

            goto LABEL_111;
          }

          v44 = v177;
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_104:

            goto LABEL_112;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_104;
        }

        path9 = [v180 path];
        MOLogWrite();

        v44 = v177;
        goto LABEL_104;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_29;
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_29;
    }

LABEL_28:
    MOLogWrite();
LABEL_29:

    goto LABEL_30;
  }

  if (gLogHandle && *(gLogHandle + 44) < 3)
  {
    goto LABEL_30;
  }

LABEL_6:
  MOLogWrite();
LABEL_30:
  v14 = 0;
LABEL_44:

  return v14;
}

void __94__ACXApplication_initWithApplicationRecord_gizmoBundleIdentifier_databaseUUID_sequenceNumber___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v11 = v7;
  if (objc_opt_isKindOfClass())
  {
    if (v11)
    {
      objc_opt_class();
      v9 = v8;
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;

      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_7:
}

- (void)_evaluateTrustInfoForReevaluation:(BOOL)reevaluation
{
  reevaluationCopy = reevaluation;
  if ([(ACXRemoteApplication *)self isProfileValidated])
  {
    v5 = objc_opt_class();
    companionAppURL = [(ACXApplication *)self companionAppURL];
    v7 = [v5 _systemTrustsApplicationWithBundleURL:companionAppURL];

    if (reevaluationCopy && v7 == 2)
    {
      return;
    }

    v8 = v7 == 1;
  }

  else
  {
    v8 = 1;
  }

  [(ACXApplication *)self setIsTrusted:v8];
}

- (id)appWithReevaluatedTrust
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  companionAppBundleID = [(ACXRemoteApplication *)self companionAppBundleID];
  v12 = 0;
  v5 = [v3 initWithBundleIdentifier:companionAppBundleID allowPlaceholder:0 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = objc_alloc(objc_opt_class());
    bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
    databaseUUID = [(ACXSyncedApplication *)self databaseUUID];
    v10 = [v7 initWithApplicationRecord:v5 gizmoBundleIdentifier:bundleIdentifier databaseUUID:databaseUUID sequenceNumber:{-[ACXSyncedApplication sequenceNumber](self, "sequenceNumber")}];

LABEL_6:
    goto LABEL_7;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    bundleIdentifier = [(ACXRemoteApplication *)self companionAppBundleID];
    MOLogWrite();
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (BOOL)_isIndeterminateMISError:(int)error
{
  if (error)
  {
    v3 = error == -402620405;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && (error + 402620377) < 0xFFFFFFFE;
}

+ (int)_systemTrustsApplicationWithBundleURL:(id)l
{
  v16[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = *MEMORY[0x277D82AC0];
  v15[0] = *MEMORY[0x277D82AD0];
  v15[1] = v5;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  path = [lCopy path];
  v8 = MISValidateSignature();

  if (v8)
  {
    v9 = MISCopyErrorStringForErrorCode();
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      [lCopy path];
      v13 = v8;
      v12 = v14 = v9;
      MOLogWrite();
    }

    if ([self _isIndeterminateMISError:{v8, v12, v13, v14}])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)_infoPlistForPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  if (_infoPlistForPluginBundle__onceToken != -1)
  {
    [ACXApplication _infoPlistForPluginBundle:];
  }

  v4 = ACXLoadInfoPlist(bundleCopy, _infoPlistForPluginBundle__keysToLoad);
  v5 = v4;
  if (!v4)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  if (![v4 count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
LABEL_12:
      path = [bundleCopy path];
      MOLogWrite();
      goto LABEL_13;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_31;
  }

  v6 = [v5 objectForKeyedSubscript:@"NSExtension"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    path = v7;
  }

  else
  {
    path = 0;
  }

  if (path)
  {
    v10 = [path objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      path3 = v11;
    }

    else
    {
      path3 = 0;
    }

    if (path3)
    {
      v9 = v5;
LABEL_29:

      goto LABEL_30;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      path2 = [bundleCopy path];
      MOLogWrite();
    }

LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    path3 = [bundleCopy path];
    MOLogWrite();
    goto LABEL_28;
  }

LABEL_13:
  v9 = 0;
LABEL_30:

LABEL_31:

  return v9;
}

uint64_t __44__ACXApplication__infoPlistForPluginBundle___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED38], @"CLKComplicationPrincipalClass", @"CLKComplicationSupportedFamilies", @"NSExtension", @"WKRunsIndependentlyOfCompanionApp", *MEMORY[0x277D1C1E8], 0}];
  v1 = _infoPlistForPluginBundle__keysToLoad;
  _infoPlistForPluginBundle__keysToLoad = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory
{
  v25 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:5 error:&v23];
  v9 = v23;

  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v18 = v9;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          pathExtension = [v14 pathExtension];
          v16 = [pathExtension isEqualToString:extensionCopy];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v9 = v18;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_mostCurrentWKAppURLInCompanionAppRecord:(id)record isPlaceholder:(BOOL *)placeholder
{
  recordCopy = record;
  v7 = [recordCopy URL];
  v8 = v7;
  if (v7)
  {
    bundleIdentifier = [v7 URLByAppendingPathComponent:@"Watch" isDirectory:1];
    v10 = [(ACXApplication *)self _URLOfFirstItemWithExtension:@"app" inDirectory:bundleIdentifier];
    if (v10)
    {
      v11 = v10;
      if (placeholder)
      {
        *placeholder = 0;
      }
    }

    else
    {
      v12 = [v8 URLByAppendingPathComponent:@"com.apple.WatchPlaceholder" isDirectory:1];
      v13 = [(ACXApplication *)self _URLOfFirstItemWithExtension:@"app" inDirectory:v12];
      v11 = v13;
      if (placeholder && v13)
      {
        *placeholder = 1;
      }
    }

    goto LABEL_12;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    MOLogWrite();
    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_URLsOfExtensionsInBundleURL:(id)l mayNotExist:(BOOL)exist
{
  existCopy = exist;
  v5 = [l URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:5 error:&v14];
  v8 = v14;

  if (v7)
  {
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if (!existCopy)
  {
    goto LABEL_7;
  }

  domain = [v8 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_7;
  }

  code = [v8 code];

  if (code != 260)
  {
LABEL_7:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      path = [v5 path];
      MOLogWrite();
    }

    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

- (id)_watchKitApplicationNameFromWKAppInfoPlist:(id)plist containerRecord:(id)record
{
  plistCopy = plist;
  recordCopy = record;
  v7 = [plistCopy objectForKeyedSubscript:*MEMORY[0x277CBEC40]];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [plistCopy objectForKeyedSubscript:*MEMORY[0x277CBED50]];
    objc_opt_class();
    v11 = v10;
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (!v9)
    {
      localizedShortName = [recordCopy localizedShortName];
      if (localizedShortName)
      {
        v9 = localizedShortName;
      }

      else
      {
        v9 = @"Unknown Name";
      }
    }
  }

  return v9;
}

- (id)_storeMetadataWithError:(id *)error
{
  companionAppURL = [(ACXApplication *)self companionAppURL];
  uRLByDeletingLastPathComponent = [companionAppURL URLByDeletingLastPathComponent];
  v6 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];

  v12 = 0;
  v7 = [MEMORY[0x277D1C208] metadataFromPlistAtURL:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if (error && !v7)
  {
    v10 = v8;
    *error = v9;
  }

  return v7;
}

@end