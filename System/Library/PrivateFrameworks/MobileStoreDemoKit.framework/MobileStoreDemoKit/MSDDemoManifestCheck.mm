@interface MSDDemoManifestCheck
+ (id)sharedInstance;
- (BOOL)checkFileForEntitlements:(id)entitlements forCorrespondingManifestEntry:(id)entry;
- (BOOL)isManualSigning:(id)signing;
- (BOOL)isValidDataContainerFile:(id)file;
- (BOOL)runAppLayoutSecurityCheck:(id)check;
- (BOOL)runFileSecurityChecksForSection:(id)section dataType:(id)type options:(id)options;
- (BOOL)runSecurityCheck:(id)check;
- (BOOL)runSecurityChecksForSection:(id)section dataType:(id)type componentName:(id)name options:(id)options;
- (BOOL)runSettingsSecurityCheckForSection:(id)section component:(id)component;
- (BOOL)secureManifestCheckForSegmentedManifest:(id)manifest options:(id)options;
- (BOOL)validateISTSignedApp:(id)app manifest:(id)manifest;
- (BOOL)verifySignature:(id)signature forData:(id)data withKey:(__SecKey *)key;
- (MSDDemoManifestCheck)init;
- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)checker andCheckType:(id)type;
- (__SecKey)createPublicKey:(id)key usingPolicy:(__SecPolicy *)policy anchors:(id)anchors;
- (__SecKey)createPublicKeyAppleISTSigning:(id)signing;
- (__SecKey)createPublicKeyForDevelopmentSigning:(id)signing;
- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)standard;
- (__SecKey)createPublicKeyForStrongSigning:(id)signing;
- (id)getAllowedISTSignedComponents:(id)components;
- (id)getAllowedISTSignedComponentsFromManifest:(id)manifest;
- (id)getAllowedSymLinks;
- (id)getBackupItemName:(id)name;
- (id)getBackupSectionName;
- (id)getComponentData:(id)data;
- (id)getInstallationOrder;
- (id)getManifestData:(id)data;
- (id)getSecurityCheckSectionNames;
- (id)getappIconLayoutBackupName;
- (id)verifyFactoryManifestSignature:(id)signature forDataSectionKeys:(id)keys;
- (id)verifyManifestSignature:(id)signature forDataSectionKeys:(id)keys withOptions:(id)options;
- (void)init;
- (void)registerEntitlementNotificationHandler;
- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name;
@end

@implementation MSDDemoManifestCheck

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MSDDemoManifestCheck sharedInstance];
  }

  v3 = sharedInstance_shared_1;

  return v3;
}

uint64_t __38__MSDDemoManifestCheck_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MSDDemoManifestCheck);
  v1 = sharedInstance_shared_1;
  sharedInstance_shared_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MSDDemoManifestCheck)init
{
  v13.receiver = self;
  v13.super_class = MSDDemoManifestCheck;
  v2 = [(MSDDemoManifestCheck *)&v13 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  getAllowedSymLinks = [(MSDDemoManifestCheck *)v2 getAllowedSymLinks];
  [(MSDDemoManifestCheck *)v3 setAllowedSymLinks:getAllowedSymLinks];

  getSettingsComponentNames = [(MSDDemoManifestCheck *)v3 getSettingsComponentNames];
  [(MSDDemoManifestCheck *)v3 setSettingsComponentNames:getSettingsComponentNames];

  v6 = objc_alloc_init(WhitelistChecker);
  [(MSDDemoManifestCheck *)v3 setWhitelistChecker:v6];

  whitelistChecker = [(MSDDemoManifestCheck *)v3 whitelistChecker];
  load = [whitelistChecker load];

  if ((load & 1) == 0)
  {
    [(MSDDemoManifestCheck *)v9 init];
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = objc_opt_new();
  [(MSDDemoManifestCheck *)v3 setBlocklistedItems:v10];

  v11 = v3;
LABEL_6:

  return v11;
}

- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)checker andCheckType:(id)type
{
  checkerCopy = checker;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = MSDDemoManifestCheck;
  v8 = [(MSDDemoManifestCheck *)&v13 init];
  v9 = v8;
  if (v8)
  {
    getAllowedSymLinks = [(MSDDemoManifestCheck *)v8 getAllowedSymLinks];
    [(MSDDemoManifestCheck *)v9 setAllowedSymLinks:getAllowedSymLinks];

    getSettingsComponentNames = [(MSDDemoManifestCheck *)v9 getSettingsComponentNames];
    [(MSDDemoManifestCheck *)v9 setSettingsComponentNames:getSettingsComponentNames];

    [(MSDDemoManifestCheck *)v9 setWhitelistChecker:checkerCopy];
    [(MSDDemoManifestCheck *)v9 setCheckType:typeCopy];
  }

  return v9;
}

- (id)verifyFactoryManifestSignature:(id)signature forDataSectionKeys:(id)keys
{
  signatureCopy = signature;
  keysCopy = keys;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  v10 = [signatureCopy objectForKey:@"Info"];
  v11 = 0;
  if (!v10)
  {
    v11 = [0 objectForKey:@"MinimumOSVersion"];
  }

  if (([v9 isEqualToString:v11] & 1) == 0)
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKey:@"ExcludeBlocklistItem"];
  }

  v12 = [(MSDDemoManifestCheck *)self verifyManifestSignature:signatureCopy forDataSectionKeys:keysCopy withOptions:v8];

  return v12;
}

- (id)verifyManifestSignature:(id)signature forDataSectionKeys:(id)keys withOptions:(id)options
{
  v138 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  keysCopy = keys;
  optionsCopy = options;
  v102 = objc_alloc_init(MEMORY[0x277CBEB38]);
  error = 0;
  v9 = defaultLogHandle(v102);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v127 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "%s: Verifying a separate component manifest.", buf, 0xCu);
  }

  v92 = [optionsCopy objectForKey:@"RigorousTestingOverride"];
  v10 = [optionsCopy objectForKey:@"ExcludeBlocklistItem"];
  allowedISTSignedComponents = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!allowedISTSignedComponents)
  {
    v12 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:signatureCopy];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v12];
  }

  v13 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [signatureCopy allKeys];
  v15 = [v13 initWithArray:allKeys];

  v16 = MGCopyAnswer();
  cf = v16;
  if (v16)
  {
    v98 = CFBooleanGetValue(v16) == 0;
  }

  else
  {
    v98 = 0;
  }

  v17 = [signatureCopy objectForKey:@"Certificates"];
  v89 = v17;
  if (!v17)
  {
    [MSDDemoManifestCheck verifyManifestSignature:? forDataSectionKeys:? withOptions:?];
    v36 = 0;
    v21 = 0;
    v105 = 0;
    v47 = 0;
    v42 = 0;
LABEL_97:
    if (cf)
    {
      CFRelease(cf);
    }

    v79 = 0;
    goto LABEL_107;
  }

  selfCopy = self;
  v87 = v15;
  v90 = optionsCopy;
  v91 = v10;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v120 objects:v137 count:16];
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v107 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  v107 = 0;
  v103 = *v121;
  while (2)
  {
    v23 = 0;
    v24 = v21;
    v25 = v22;
    do
    {
      if (*v121 != v103)
      {
        objc_enumerationMutation(v18);
      }

      v26 = *(*(&v120 + 1) + 8 * v23);
      v27 = [v18 objectForKey:v26];
      v22 = [v27 objectForKey:@"TypeOfSignature"];

      v21 = [v27 objectForKey:@"Certificate"];

      if (!v22)
      {
        v64 = defaultLogHandle(isKindOfClass);
        v105 = 0;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if (!v21 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
      {
        v64 = defaultLogHandle(isKindOfClass);
        v105 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if (![v21 count])
      {
        v64 = defaultLogHandle(0);
        v105 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if ([v22 isEqualToString:@"UAT"])
      {
        v29 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyForDevelopmentSigning:v21];
        v30 = v29;
        v31 = @"Skip";
        if (!v29)
        {
          goto LABEL_90;
        }

        goto LABEL_26;
      }

      v32 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyForStrongSigning:v21];
      if (!v32)
      {
        v29 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyAppleISTSigning:v21];
        v30 = v29;
        v31 = @"AppleISTCertCheck";
        if (v29)
        {
LABEL_26:
          v33 = v21;
          goto LABEL_27;
        }

LABEL_90:
        v107 = v31;
        v64 = defaultLogHandle(v29);
        v105 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

LABEL_92:
        v15 = v87;

        v36 = 0;
        v47 = 0;
        v42 = v107;
        optionsCopy = v90;
        goto LABEL_97;
      }

      v30 = v32;
      v33 = v21;
      v34 = [(MSDDemoManifestCheck *)selfCopy isManualSigning:v21];
      v31 = @"Skip";
      if (!v34)
      {
        v31 = @"Default";
      }

LABEL_27:
      v135[0] = @"publicKey";
      v135[1] = @"TypeOfSignature";
      v136[0] = v30;
      v136[1] = v22;
      v135[2] = @"RigorousCheckType";
      v107 = v31;
      v136[2] = v31;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:3];
      [v102 setObject:v35 forKeyedSubscript:v26];

      ++v23;
      v24 = v33;
      v25 = v22;
    }

    while (v20 != v23);
    v20 = [v18 countByEnumeratingWithState:&v120 objects:v137 count:16];
    v21 = v33;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v105 = v22;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = keysCopy;
  v81 = [obj countByEnumeratingWithState:&v116 objects:v134 count:16];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v81)
  {
    v82 = *v117;
    v83 = v21;
    algorithm = *MEMORY[0x277CDC378];
    v96 = *MEMORY[0x277CBECE8];
    do
    {
      v39 = 0;
      do
      {
        if (*v117 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v36;
        v85 = v39;
        v40 = *(*(&v116 + 1) + 8 * v39);
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v101 = v40;
        v94 = [signatureCopy objectForKey:?];
        v99 = [v94 countByEnumeratingWithState:&v112 objects:v133 count:16];
        if (!v99)
        {
          goto LABEL_50;
        }

        v97 = *v113;
        while (2)
        {
          for (i = 0; i != v99; ++i)
          {
            v42 = v107;
            v43 = v37;
            v44 = v105;
            if (*v113 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v45 = *(*(&v112 + 1) + 8 * i);
            v46 = [signatureCopy objectForKey:v101];
            v47 = [v46 objectForKey:v45];

            v48 = [v47 objectForKey:@"Certificate"];
            v49 = [v102 objectForKey:v48];
            v50 = v49;
            if (!v49)
            {
              v77 = defaultLogHandle(0);
              v36 = v104;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              goto LABEL_96;
            }

            v51 = [v49 objectForKey:@"TypeOfSignature"];

            v105 = v51;
            v52 = [v51 isEqualToString:@"UAT"];
            v36 = v104;
            if (((v98 | v52 ^ 1) & 1) == 0)
            {
              v77 = defaultLogHandle(v52);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              goto LABEL_95;
            }

            v53 = [(MSDDemoManifestCheck *)selfCopy getComponentData:v47];

            if (!v53)
            {
              v77 = defaultLogHandle(v54);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              v36 = 0;
LABEL_95:
              v44 = v105;
LABEL_96:
              optionsCopy = v90;
              v10 = v91;
              v15 = v87;

              v105 = v44;
              v21 = v83;
              goto LABEL_97;
            }

            v55 = [v50 objectForKey:@"publicKey"];
            v104 = v53;
            v56 = _MobileAssetHashAssetData(v96, v45, v53);
            v57 = [v47 objectForKey:@"Signature"];
            LODWORD(v55) = SecKeyVerifySignature(v55, algorithm, [MEMORY[0x277CBEA90] dataWithBytes:v56 length:20], v57, &error);
            free(v56);
            if (!v55)
            {
              v37 = v47;
              v78 = defaultLogHandle(v58);
              optionsCopy = v90;
              v15 = v87;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v127 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
                v128 = 2114;
                *v129 = v45;
                *&v129[8] = 2114;
                v130 = v101;
                v131 = 2114;
                v132 = error;
                _os_log_error_impl(&dword_259B7D000, v78, OS_LOG_TYPE_ERROR, "%s: signature verification failed for %{public}@ in section %{public}@. Error: %{public}@", buf, 0x2Au);
              }

              goto LABEL_85;
            }

            v42 = [v50 objectForKey:@"RigorousCheckType"];

            v37 = v47;
            [v47 setObject:v42 forKey:@"RigorousCheckType"];
            v59 = [(__CFString *)v42 isEqualToString:@"Skip"];
            v107 = v42;
            if (-[__CFString isEqualToString:](v42, "isEqualToString:", @"AppleISTCertCheck") && [v101 isEqualToString:@"Apps"] && !-[MSDDemoManifestCheck validateISTSignedApp:manifest:](selfCopy, "validateISTSignedApp:manifest:", v45, signatureCopy))
            {
              optionsCopy = v90;
              v15 = v87;
LABEL_85:
              v36 = v104;

              v10 = v91;
              v21 = v83;
              v47 = v37;
              goto LABEL_97;
            }

            v38 |= v59 ^ 1;
          }

          v99 = [v94 countByEnumeratingWithState:&v112 objects:v133 count:16];
          if (v99)
          {
            continue;
          }

          break;
        }

LABEL_50:

        v21 = v83;
        v39 = v85 + 1;
        v36 = v104;
      }

      while (v85 + 1 != v81);
      v81 = [obj countByEnumeratingWithState:&v116 objects:v134 count:16];
    }

    while (v81);
  }

  has_internal_content = os_variant_has_internal_content();
  v15 = v87;
  if (!has_internal_content || !v92 || (has_internal_content = [v92 BOOLValue], (v38 & 1) == has_internal_content))
  {
    v47 = v37;
    if ((v38 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  v47 = v37;
  v61 = defaultLogHandle(has_internal_content);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v92 BOOLValue];
    *buf = 136315650;
    v127 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    v128 = 1024;
    *v129 = v38 & 1;
    *&v129[4] = 1024;
    *&v129[6] = bOOLValue;
    _os_log_impl(&dword_259B7D000, v61, OS_LOG_TYPE_DEFAULT, "%s: Overriding rigorous testing from %{BOOL}d to %{BOOL}d", buf, 0x18u);
  }

  has_internal_content = [v92 BOOLValue];
  if (has_internal_content)
  {
LABEL_64:
    optionsCopy = v90;
    v65 = [(MSDDemoManifestCheck *)selfCopy secureManifestCheckForSegmentedManifest:signatureCopy options:v90];
    v10 = v91;
    if (v65)
    {
      goto LABEL_65;
    }

    [MSDDemoManifestCheck verifyManifestSignature:v65 forDataSectionKeys:? withOptions:?];
    v42 = v107;
    goto LABEL_97;
  }

LABEL_58:
  v63 = defaultLogHandle(has_internal_content);
  v10 = v91;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v127 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&dword_259B7D000, v63, OS_LOG_TYPE_DEFAULT, "%s: Skipping rigorous manifest testing.", buf, 0xCu);
  }

  optionsCopy = v90;
LABEL_65:
  if (![v10 BOOLValue])
  {
    goto LABEL_104;
  }

  blocklistedItems = [(MSDDemoManifestCheck *)selfCopy blocklistedItems];
  v67 = [blocklistedItems count];

  if (!v67)
  {
    v69 = defaultLogHandle(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v69, OS_LOG_TYPE_DEFAULT, "No items blocklisted, skip blocklist item exclusion", buf, 2u);
    }

    goto LABEL_102;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v69 = signatureCopy;
  v70 = [v69 countByEnumeratingWithState:&v108 objects:v125 count:16];
  if (!v70)
  {
LABEL_102:
    v10 = v91;
    goto LABEL_103;
  }

  v71 = v70;
  v72 = v36;
  v84 = v21;
  v73 = *v109;
  do
  {
    for (j = 0; j != v71; ++j)
    {
      if (*v109 != v73)
      {
        objc_enumerationMutation(v69);
      }

      v75 = *(*(&v108 + 1) + 8 * j);
      v76 = [v69 objectForKey:v75 ofType:objc_opt_class()];
      if (v76)
      {
        [(MSDDemoManifestCheck *)selfCopy removeBlocklistedItemFromSection:v76 withName:v75];
      }
    }

    v71 = [v69 countByEnumeratingWithState:&v108 objects:v125 count:16];
  }

  while (v71);
  optionsCopy = v90;
  v10 = v91;
  v21 = v84;
  v36 = v72;
LABEL_103:

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  v79 = signatureCopy;
  v42 = v107;
LABEL_107:

  return v79;
}

- (BOOL)checkFileForEntitlements:(id)entitlements forCorrespondingManifestEntry:(id)entry
{
  entitlementsCopy = entitlements;
  entryCopy = entry;
  itemBeingInstalled = [(MSDDemoManifestCheck *)self itemBeingInstalled];
  v9 = itemBeingInstalled;
  if (itemBeingInstalled)
  {
    v10 = [itemBeingInstalled objectForKey:@"TypeOfFiles"];
    segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v12 = [segmentedManifestWithRigorousFlag objectForKey:v10];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
LABEL_27:
      v28 = v40;
      goto LABEL_11;
    }

    getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
    v14 = [v10 isEqualToString:getBackupSectionName];

    if (v14)
    {
      v37 = v10;
      v38 = v9;
      v39 = entitlementsCopy;
      v36 = [v9 objectForKey:@"Identifier"];
      rangeValue = [v36 rangeValue];
      v17 = v16;
      getInstallationOrder = [(MSDDemoManifestCheck *)self getInstallationOrder];
      v19 = (rangeValue + v17 - 1);
      if (rangeValue + v17 - 1 >= 0)
      {
        while (1)
        {
          v20 = [getInstallationOrder objectAtIndex:v19];
          v21 = [(MSDDemoManifestCheck *)self getBackupItemName:v20];

          v22 = [v12 objectForKey:v21];
          v23 = [v22 objectForKey:@"Manifest"];
          v24 = [(MSDDemoManifestCheck *)self getManifestData:v23];

          v25 = [v24 objectForKey:entryCopy];

          if (v25)
          {
            break;
          }

          if (v19-- <= 0)
          {
            goto LABEL_8;
          }
        }

        v33 = [v22 objectForKey:@"RigorousCheckType"];
        v34 = [v33 isEqualToString:@"Skip"];

        v9 = v38;
        entitlementsCopy = v39;
        v10 = v37;
        if (v34)
        {
          goto LABEL_21;
        }

LABEL_20:
        if (MISValidateSignatureAndCopyInfo())
        {
LABEL_21:
          v29 = 1;
          goto LABEL_22;
        }

        [MSDDemoManifestCheck checkFileForEntitlements:? forCorrespondingManifestEntry:?];
        goto LABEL_27;
      }

LABEL_8:

      v9 = v38;
      entitlementsCopy = v39;
      v10 = v37;
    }

    else if (([v10 isEqualToString:@"ExtensionData"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"AppData") & 1) != 0 || (v27 = objc_msgSend(v10, "isEqualToString:", @"GroupData"), v27))
    {
      v28 = [v9 objectForKey:@"Identifier"];
      v30 = [v12 objectForKey:v28];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
LABEL_11:

        v29 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v31 = [v30 objectForKey:@"RigorousCheckType"];
      v32 = [v31 isEqualToString:@"Skip"];

      if (v32)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v28 = defaultLogHandle(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
    }

    goto LABEL_11;
  }

  v29 = 1;
LABEL_23:

  return v29;
}

- (__SecKey)createPublicKeyForStrongSigning:(id)signing
{
  signingCopy = signing;
  MobileStoreSigner = SecPolicyCreateMobileStoreSigner();
  v6 = defaultLogHandle(MobileStoreSigner);
  v7 = v6;
  if (MobileStoreSigner)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "Verifying strong signing", v10, 2u);
    }

    v8 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:MobileStoreSigner anchors:0];
  }

  else
  {
    [MSDDemoManifestCheck createPublicKeyForStrongSigning:v6];
    v8 = 0;
  }

  return v8;
}

- (__SecKey)createPublicKeyForDevelopmentSigning:(id)signing
{
  signingCopy = signing;
  v5 = defaultLogHandle(signingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Verifying development signing", v8, 2u);
  }

  v6 = [(MSDDemoManifestCheck *)self createPublicKeyForDevelopmentSigningStandard:signingCopy];
  return v6;
}

- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)standard
{
  standardCopy = standard;
  TestMobileStoreSigner = SecPolicyCreateTestMobileStoreSigner();
  if (TestMobileStoreSigner)
  {
    v6 = [(MSDDemoManifestCheck *)self createPublicKey:standardCopy usingPolicy:TestMobileStoreSigner anchors:0];
  }

  else
  {
    [MSDDemoManifestCheck createPublicKeyForDevelopmentSigningStandard:?];
    v6 = 0;
  }

  return v6;
}

- (__SecKey)createPublicKey:(id)key usingPolicy:(__SecPolicy *)policy anchors:(id)anchors
{
  keyCopy = key;
  anchorsCopy = anchors;
  trust[0] = 0;
  v25 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v10 = v20[5];
  v20[5] = v9;

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke;
  v18[3] = &unk_2798EF580;
  v18[4] = &v19;
  [keyCopy enumerateObjectsUsingBlock:v18];
  v11 = v20[5];
  if (!v11)
  {
LABEL_14:
    v15 = 0;
    if (!policy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = SecTrustCreateWithCertificates(v11, policy, trust);
  if (v12)
  {
    defaultLogHandle(v12);
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
LABEL_23:
    v16 = trust[1];
LABEL_13:

    goto LABEL_14;
  }

  if (anchorsCopy)
  {
    v13 = SecTrustSetAnchorCertificates(trust[0], anchorsCopy);
    if (v13)
    {
      defaultLogHandle(v13);
      objc_claimAutoreleasedReturnValue();
      [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
      goto LABEL_23;
    }
  }

  v14 = MEMORY[0x259CB03D0](trust[0], &v25);
  if (v14)
  {
    defaultLogHandle(v14);
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    goto LABEL_23;
  }

  if (v25 != 1 && v25 != 4)
  {
    v16 = defaultLogHandle(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    }

    goto LABEL_13;
  }

  v15 = MEMORY[0x259CB03B0](trust[0]);
  if (!v15)
  {
    defaultLogHandle(0);
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    goto LABEL_23;
  }

  if (policy)
  {
LABEL_15:
    CFRelease(policy);
  }

LABEL_16:
  if (trust[0])
  {
    CFRelease(trust[0]);
    trust[0] = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v15;
}

void __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4)
{
  v5 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], a2);
  if (v5)
  {
    v6 = v5;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  else
  {
    __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke_cold_1();
  }
}

- (BOOL)verifySignature:(id)signature forData:(id)data withKey:(__SecKey *)key
{
  dataCopy = data;
  signatureCopy = signature;
  v9 = defaultLogHandle(signatureCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MSDDemoManifestCheck verifySignature:v9 forData:? withKey:?];
  }

  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];

  CC_SHA1(bytes, v12, v10);
  bytes2 = [signatureCopy bytes];
  v14 = [signatureCopy length];

  v15 = SecKeyRawVerify(key, 0x8002u, v10, 0x14uLL, bytes2, v14);
  free(v10);
  if (v15)
  {
    [MSDDemoManifestCheck verifySignature:v15 forData:? withKey:?];
  }

  return v15 == 0;
}

- (BOOL)isManualSigning:(id)signing
{
  commonName = 0;
  isKindOfClass = [signing objectAtIndexedSubscript:0];
  v4 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v11 = defaultLogHandle(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isManualSigning:];
    }

    goto LABEL_12;
  }

  v5 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v4);
  if (!v5)
  {
    v11 = defaultLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isManualSigning:];
    }

LABEL_12:

    v7 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  SecCertificateCopyCommonName(v5, &commonName);
  CFRelease(v6);
  v7 = commonName;
  v8 = [(__CFString *)commonName isEqualToString:@"Demo Content Signing"];
  if (v8)
  {
    v9 = defaultLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "A certificate for manual signing is used.", buf, 2u);
    }

    v10 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v9 = defaultLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "A certificate for non-manual signing is used.", v13, 2u);
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (BOOL)validateISTSignedApp:(id)app manifest:(id)manifest
{
  appCopy = app;
  v6 = [manifest objectForKey:@"Apps"];
  v7 = [v6 objectForKey:appCopy];

  v8 = [v7 objectForKey:@"Manifest"];

  v9 = [v8 objectForKey:@"Info"];
  v10 = [v9 objectForKey:@"AppType"];

  v11 = [v8 objectForKey:@"Dependencies"];
  v12 = v11;
  if (!v11 || (v13 = [v11 count], v13 == 1) && (objc_msgSend(v12, "objectForKey:", @"ProvisioningProfiles"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = 1;
  }

  else
  {
    [MSDDemoManifestCheck validateISTSignedApp:v13 manifest:?];
    v15 = 0;
  }

  return v15;
}

- (BOOL)secureManifestCheckForSegmentedManifest:(id)manifest options:(id)options
{
  manifestCopy = manifest;
  optionsCopy = options;
  v8 = optionsCopy;
  if (!manifestCopy)
  {
    [MSDDemoManifestCheck secureManifestCheckForSegmentedManifest:optionsCopy options:?];
LABEL_9:
    v13 = 0;
    goto LABEL_6;
  }

  allowedISTSignedComponents = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!allowedISTSignedComponents)
  {
    v10 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:manifestCopy];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v10];
  }

  [(MSDDemoManifestCheck *)self setSegmentedManifestWithRigorousFlag:manifestCopy];
  v11 = [manifestCopy objectForKey:@"Version"];
  -[MSDDemoManifestCheck setManifestVersion:](self, "setManifestVersion:", [v11 unsignedIntValue]);

  v12 = [(MSDDemoManifestCheck *)self runSecurityCheck:v8];
  if ((v12 & 1) == 0)
  {
    [MSDDemoManifestCheck secureManifestCheckForSegmentedManifest:v12 options:?];
    goto LABEL_9;
  }

  [(MSDDemoManifestCheck *)self registerEntitlementNotificationHandler];
  v13 = 1;
LABEL_6:

  return v13;
}

- (BOOL)runSecurityCheck:(id)check
{
  v30 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  getSecurityCheckSectionNames = [(MSDDemoManifestCheck *)self getSecurityCheckSectionNames];
  getappIconLayoutBackupName = [(MSDDemoManifestCheck *)self getappIconLayoutBackupName];
  getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v8 = defaultLogHandle(getBackupSectionName);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "Starting rigorous security checks", buf, 2u);
  }

  segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke;
  v18[3] = &unk_2798EF5D0;
  v10 = getSecurityCheckSectionNames;
  v19 = v10;
  selfCopy = self;
  v24 = &v25;
  v11 = checkCopy;
  v21 = v11;
  v12 = getappIconLayoutBackupName;
  v22 = v12;
  v13 = getBackupSectionName;
  v23 = v13;
  [segmentedManifestWithRigorousFlag enumerateKeysAndObjectsUsingBlock:v18];

  if (v26[3])
  {
    v15 = defaultLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDDemoManifestCheck runSecurityCheck:]";
      _os_log_impl(&dword_259B7D000, v15, OS_LOG_TYPE_DEFAULT, "%s:Cleared all checks for manifest. Approving future installations", buf, 0xCu);
    }
  }

  else
  {
    defaultLogHandle(v14);
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck runSecurityCheck:];
    v15 = *buf;
  }

  v16 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v16 & 1;
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2;
    v14[3] = &unk_2798EF5A8;
    v14[4] = *(a1 + 40);
    v15 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 64);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v16 = v13;
    v17 = v12;
    v18 = a4;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) checkType];
  if (v9)
  {
    [*(a1 + 32) checkType];
  }

  else
  {
    [v8 objectForKey:@"RigorousCheckType"];
  }
  v10 = ;

  v12 = defaultLogHandle(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 138543874;
    v28 = v7;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "Name: %{public}@, Section Name: %{public}@, Check Type: %{public}@", buf, 0x20u);
  }

  v14 = [*(a1 + 32) getComponentData:v8];
  v15 = [v10 isEqualToString:@"Skip"];
  if (v15)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if ([v10 isEqualToString:@"Default"])
  {
    v15 = [*(a1 + 32) runSecurityChecksForSection:v14 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
    *(*(*(a1 + 72) + 8) + 24) = v15;
  }

  else
  {
    v16 = [v10 isEqualToString:@"AppleISTCertCheck"];
    if (v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *(a1 + 40), v7];
      v18 = [*(a1 + 32) allowedISTSignedComponents];
      v19 = [v18 containsObject:v17];

      if (v19)
      {
        if ([v7 isEqualToString:*(a1 + 56)] && (v21 = objc_msgSend(*(a1 + 40), "isEqualToString:", *(a1 + 64)), v21))
        {
          v22 = defaultLogHandle(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = v17;
            _os_log_impl(&dword_259B7D000, v22, OS_LOG_TYPE_DEFAULT, "About to run app layout checks for %{public}@", buf, 0xCu);
          }

          v23 = [*(a1 + 32) runAppLayoutSecurityCheck:v14];
        }

        else
        {
          v23 = [*(a1 + 32) runSecurityChecksForSection:v14 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
        }

        *(*(*(a1 + 72) + 8) + 24) = v23;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v25 = defaultLogHandle(v20);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_1();
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v17 = defaultLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        *buf = 136315906;
        v28 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
        v29 = 2114;
        v30 = v10;
        v31 = 2114;
        v32 = v7;
        v33 = 2114;
        v34 = v24;
        _os_log_error_impl(&dword_259B7D000, v17, OS_LOG_TYPE_ERROR, "%s: Unknown rigorous check type (%{public}@) for %{public}@ (from %{public}@).", buf, 0x2Au);
      }
    }
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v26 = defaultLogHandle(v15);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_2(v7, a1, v26);
    }

    *a4 = 1;
    **(a1 + 80) = 1;
  }
}

- (BOOL)runSecurityChecksForSection:(id)section dataType:(id)type componentName:(id)name options:(id)options
{
  typeCopy = type;
  nameCopy = name;
  optionsCopy = options;
  sectionCopy = section;
  settingsComponentNames = [(MSDDemoManifestCheck *)self settingsComponentNames];
  v15 = [settingsComponentNames containsObject:nameCopy];

  if (v15)
  {
    v16 = [(MSDDemoManifestCheck *)self runSettingsSecurityCheckForSection:sectionCopy component:nameCopy];
  }

  else
  {
    v16 = [(MSDDemoManifestCheck *)self runFileSecurityChecksForSection:sectionCopy dataType:typeCopy options:optionsCopy];
  }

  v17 = v16;

  return v17;
}

- (BOOL)runSettingsSecurityCheckForSection:(id)section component:(id)component
{
  sectionCopy = section;
  componentCopy = component;
  if ([componentCopy isEqualToString:@"locale"])
  {
    v7 = [sectionCopy objectForKey:@"Data"];
    v8 = [v7 objectForKey:@"language"];

    if (!v8)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      goto LABEL_14;
    }

    v9 = [v7 objectForKey:@"region"];

    if (!v9)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
LABEL_14:

LABEL_10:
LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = [componentCopy isEqualToString:@"display"];
    if (!v10)
    {
      v7 = defaultLogHandle(v10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      }

      goto LABEL_10;
    }

    v7 = [sectionCopy objectForKey:@"Data"];
    v11 = [v7 objectForKey:@"HDR"];

    if (!v11)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)runFileSecurityChecksForSection:(id)section dataType:(id)type options:(id)options
{
  v114 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  typeCopy = type;
  optionsCopy = options;
  v11 = [optionsCopy objectForKey:@"ExcludeBlocklistItem"];
  v12 = +[MSDPlatform sharedInstance];
  LODWORD(type) = [v12 macOS];

  v82 = typeCopy;
  if (type)
  {
    v13 = [sectionCopy objectForKey:@"Data"];
    whitelistChecker = [(MSDDemoManifestCheck *)self whitelistChecker];
    v15 = v13;
    v16 = [whitelistChecker checkManifest:v13];

    if ([v11 BOOLValue])
    {
      blocklistedItems = [(MSDDemoManifestCheck *)self blocklistedItems];
      [blocklistedItems addObjectsFromArray:v16];
    }

    else if (v16)
    {
      [MSDDemoManifestCheck runFileSecurityChecksForSection:v16 dataType:? options:?];
LABEL_64:
      v34 = 0;
      goto LABEL_70;
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v15 = v15;
    v23 = [v15 countByEnumeratingWithState:&v106 objects:v113 count:16];
    if (v23)
    {
      v24 = v23;
      v92 = v16;
      v76 = optionsCopy;
      v78 = sectionCopy;
      v74 = v11;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *v107;
      while (2)
      {
        v29 = 0;
        v30 = v25;
        v31 = v27;
        do
        {
          if (*v107 != v28)
          {
            objc_enumerationMutation(v15);
          }

          v32 = *(*(&v106 + 1) + 8 * v29);

          v25 = [v15 objectForKey:v32];

          v27 = [v25 valueForKey:@"MSDManifestFileAttributes"];

          if (!v27)
          {
            v71 = v32;
            v72 = defaultLogHandle(v33);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
            }

            v34 = 0;
            typeCopy = v82;
            v11 = v74;
            optionsCopy = v76;
            sectionCopy = v78;
            v15 = v71;
            goto LABEL_70;
          }

          ++v29;
          v30 = v25;
          v26 = v32;
          v31 = v27;
        }

        while (v24 != v29);
        v26 = v32;
        v24 = [v15 countByEnumeratingWithState:&v106 objects:v113 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      typeCopy = v82;
      v11 = v74;
      optionsCopy = v76;
      sectionCopy = v78;
      v16 = v92;
    }

    v34 = 1;
    goto LABEL_70;
  }

  v81 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1660];
  getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v19 = [(MSDDemoManifestCheck *)self getManifestData:sectionCopy];

  v80 = getBackupSectionName;
  selfCopy = self;
  if ([typeCopy isEqualToString:getBackupSectionName])
  {
    whitelistChecker2 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v21 = [whitelistChecker2 checkManifest:v19];

    if ([v11 BOOLValue])
    {
      blocklistedItems2 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [blocklistedItems2 addObjectsFromArray:v21];
    }

    else if (v21)
    {
      [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
      v34 = 0;
      v15 = v81;
      sectionCopy = v19;
      goto LABEL_70;
    }
  }

  v75 = v11;
  v77 = optionsCopy;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  sectionCopy = v19;
  v85 = [sectionCopy countByEnumeratingWithState:&v102 objects:v112 count:16];
  v35 = 0;
  v36 = 0;
  v15 = 0;
  if (!v85)
  {
    v38 = v80;
    v37 = v81;
    goto LABEL_66;
  }

  v84 = *v103;
  v38 = v80;
  v37 = v81;
  v79 = sectionCopy;
  while (2)
  {
    v39 = 0;
    v40 = v15;
    do
    {
      if (*v103 != v84)
      {
        v41 = v39;
        objc_enumerationMutation(sectionCopy);
        v39 = v41;
      }

      v86 = v39;
      v42 = *(*(&v102 + 1) + 8 * v39);
      context = objc_autoreleasePoolPush();
      v93 = v42;
      v89 = [sectionCopy objectForKey:v42];
      v15 = [v89 valueForKey:@"MSDManifestFileAttributes"];

      if (!v15)
      {
        v70 = defaultLogHandle(v43);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
        }

        goto LABEL_63;
      }

      v44 = [v37 containsObject:typeCopy];
      v45 = [v15 valueForKey:@"NSFileType"];

      v88 = v45;
      v46 = [v45 isEqualToString:@"NSFileTypeRegular"];
      if (v44)
      {
        if (v46 & 1) != 0 || ([v45 isEqualToString:@"NSFileTypeDirectory"])
        {
          v47 = [(MSDDemoManifestCheck *)selfCopy isValidDataContainerFile:v93, v75, v77];
          if ((v47 & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }

      else if ((v46 & 1) == 0 && ([v45 isEqualToString:@"NSFileTypeDirectory"] & 1) == 0)
      {
        v83 = v15;
        v48 = [v89 valueForKey:@"MSDManifestSymbolicLinkTargetFile"];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v49 = selfCopy;
        allowedSymLinks = [(MSDDemoManifestCheck *)selfCopy allowedSymLinks];
        v51 = [allowedSymLinks countByEnumeratingWithState:&v98 objects:v111 count:16];
        if (!v51)
        {

          v35 = v48;
          v15 = v83;
LABEL_61:
          v70 = defaultLogHandle(v47);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v36 = v88;
            [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
            goto LABEL_63;
          }

LABEL_62:
          v36 = v88;
LABEL_63:
          v11 = v75;
          optionsCopy = v77;

          objc_autoreleasePoolPop(context);
          goto LABEL_64;
        }

        v52 = v51;
        v90 = 0;
        v53 = *v99;
        v54 = v93;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v99 != v53)
            {
              objc_enumerationMutation(allowedSymLinks);
            }

            v56 = *(*(&v98 + 1) + 8 * i);
            if ([v54 rangeOfString:{v56, v75, v77}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              allowedSymLinks2 = [(MSDDemoManifestCheck *)v49 allowedSymLinks];
              v58 = [allowedSymLinks2 objectForKey:v56];

              v96 = 0u;
              v97 = 0u;
              v94 = 0u;
              v95 = 0u;
              v59 = v58;
              v60 = [v59 countByEnumeratingWithState:&v94 objects:v110 count:16];
              if (v60)
              {
                v61 = v60;
                v62 = *v95;
                while (2)
                {
                  for (j = 0; j != v61; ++j)
                  {
                    if (*v95 != v62)
                    {
                      objc_enumerationMutation(v59);
                    }

                    if ([v48 rangeOfString:*(*(&v94 + 1) + 8 * j)] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v90 = 1;
                      goto LABEL_49;
                    }
                  }

                  v61 = [v59 countByEnumeratingWithState:&v94 objects:v110 count:16];
                  if (v61)
                  {
                    continue;
                  }

                  break;
                }

LABEL_49:
                v49 = selfCopy;
                v54 = v93;
              }
            }
          }

          v52 = [allowedSymLinks countByEnumeratingWithState:&v98 objects:v111 count:16];
        }

        while (v52);

        v35 = v48;
        typeCopy = v82;
        v15 = v83;
        sectionCopy = v79;
        v38 = v80;
        v37 = v81;
        if ((v90 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v64 = [v15 valueForKey:{@"NSFilePosixPermissions", v75, v77}];
      longValue = [v64 longValue];

      if ((longValue & 0xC00) != 0)
      {
        v70 = defaultLogHandle(v66);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
        }

        goto LABEL_62;
      }

      if ([typeCopy isEqualToString:v38])
      {
        whitelistChecker3 = [(MSDDemoManifestCheck *)selfCopy whitelistChecker];
        v68 = [whitelistChecker3 handleSystemContainerFiles:v93 withMetadata:v89];

        if ((v68 & 1) == 0)
        {
          v70 = defaultLogHandle(v69);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
          }

          goto LABEL_62;
        }
      }

      objc_autoreleasePoolPop(context);
      v39 = v86 + 1;
      v36 = v88;
      v40 = v15;
    }

    while (v86 + 1 != v85);
    v36 = v88;
    v85 = [sectionCopy countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_66:

  v34 = 1;
  v11 = v75;
  optionsCopy = v77;
LABEL_70:

  return v34;
}

- (BOOL)runAppLayoutSecurityCheck:(id)check
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  checkCopy = check;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = +[MSDPlatform sharedInstance];
  macOS = [v8 macOS];

  v79 = v6;
  v80 = v7;
  if (macOS)
  {
    [v6 addObject:&unk_286AE1858];
    [v7 addObject:@"staff"];
    v81 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1678];
    goto LABEL_11;
  }

  [v6 addObject:&unk_286AE1870];
  [v6 addObject:&unk_286AE1888];
  [v7 addObject:@"mobile"];
  [v7 addObject:@"wheel"];
  v10 = +[MSDPlatform sharedInstance];
  v11 = [v10 rOS];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = &unk_286AE1690;
  }

  else
  {
    v14 = +[MSDPlatform sharedInstance];
    v15 = [v14 iOS];

    if (v15)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = &unk_286AE16A8;
    }

    else
    {
      v16 = +[MSDPlatform sharedInstance];
      tvOS = [v16 tvOS];

      v12 = MEMORY[0x277CBEB98];
      if (!tvOS)
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
        goto LABEL_10;
      }

      v13 = &unk_286AE16C0;
    }
  }

  v18 = [v12 setWithArray:v13];
LABEL_10:
  v81 = v18;
LABEL_11:
  v19 = [(MSDDemoManifestCheck *)self getManifestData:checkCopy];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v21)
  {
    v23 = v21;
    v82 = *v84;
    v76 = *MEMORY[0x277CCA158];
    v75 = *MEMORY[0x277CCA118];
    v73 = *MEMORY[0x277CCA120];
    v74 = *MEMORY[0x277CCA160];
    v72 = *MEMORY[0x277CCA180];
    *&v22 = 134218242;
    v71 = v22;
    v77 = v20;
    do
    {
      v24 = 0;
      v78 = v23;
      do
      {
        if (*v84 != v82)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v83 + 1) + 8 * v24);
        v26 = [v20 objectForKey:{v25, v71}];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [MSDDemoManifestCheck runAppLayoutSecurityCheck:];
LABEL_105:
          v32 = 6;
          goto LABEL_95;
        }

        v27 = [v26 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        if (v27)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v27 isEqualToString:&stru_286AD9A18] & 1) == 0)
          {
            [(MSDDemoManifestCheck *)v25 runAppLayoutSecurityCheck:v27, v26];
            goto LABEL_105;
          }
        }

        isKindOfClass = [v26 objectForKey:@"MSDManifestFileAttributes"];
        v29 = isKindOfClass;
        if (isKindOfClass)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v30 = [v29 objectForKey:@"NSFileType"];
            v31 = v30;
            if (v30 && (objc_opt_class(), v30 = objc_opt_isKindOfClass(), (v30 & 1) != 0))
            {
              if (([v31 isEqualToString:@"NSFileTypeDirectory"]& 1) != 0)
              {
                v32 = 3;
                goto LABEL_48;
              }

              v33 = [v31 isEqualToString:@"NSFileTypeRegular"];
              if (v33)
              {
                v34 = [v81 containsObject:v25];
                if (v34)
                {
                  v35 = [v29 objectForKey:v76];
                  v36 = v35;
                  if (v35 && (objc_opt_class(), v35 = objc_opt_isKindOfClass(), (v35 & 1) != 0))
                  {
                    integerValue = [v36 integerValue];
                    if (integerValue == 501)
                    {
                      v38 = [v29 objectForKey:v75];

                      if (v38 && (objc_opt_class(), v39 = objc_opt_isKindOfClass(), (v39 & 1) != 0))
                      {
                        v40 = [v6 containsObject:v38];
                        if (v40)
                        {
                          v41 = [v29 objectForKey:v74];
                          v42 = v41;
                          if (v41 && (objc_opt_class(), v41 = objc_opt_isKindOfClass(), (v41 & 1) != 0))
                          {
                            v43 = [v42 isEqualToString:@"mobile"];
                            if (v43)
                            {
                              v44 = [v29 objectForKey:v73];

                              if (v44 && (objc_opt_class(), v45 = objc_opt_isKindOfClass(), (v45 & 1) != 0))
                              {
                                v46 = [v80 containsObject:v44];
                                v23 = v78;
                                if (v46)
                                {
                                  v47 = [v29 objectForKey:v72];
                                  v48 = v47;
                                  if (v47 && (objc_opt_class(), v47 = objc_opt_isKindOfClass(), (v47 & 1) != 0))
                                  {
                                    integerValue2 = [v48 integerValue];
                                    if ((integerValue2 & 0xC00) == 0)
                                    {
                                      v32 = 1;
                                      goto LABEL_45;
                                    }

                                    v62 = defaultLogHandle(integerValue2);
                                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                                    {
LABEL_79:

                                      v32 = 6;
LABEL_80:
                                      v23 = v78;
LABEL_45:

LABEL_46:
                                      v6 = v79;
LABEL_47:

                                      v20 = v77;
                                      goto LABEL_48;
                                    }

                                    *buf = 138543362;
                                    v88 = v25;
                                    v63 = v62;
                                    v64 = "IS&T signed component contains setuid item: %{public}@";
                                  }

                                  else
                                  {
                                    v62 = defaultLogHandle(v47);
                                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_79;
                                    }

                                    *buf = 138543362;
                                    v88 = v25;
                                    v63 = v62;
                                    v64 = "IS&T signed component in wrong format (permission) for %{public}@";
                                  }

                                  _os_log_error_impl(&dword_259B7D000, v63, OS_LOG_TYPE_ERROR, v64, buf, 0xCu);
                                  goto LABEL_79;
                                }

                                v48 = defaultLogHandle(v46);
                                if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                                {
LABEL_77:
                                  v32 = 6;
                                  goto LABEL_45;
                                }

                                *buf = 138543618;
                                v88 = v80;
                                v89 = 2114;
                                v90 = v25;
                                v59 = v48;
                                v60 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                                v61 = 22;
                              }

                              else
                              {
                                v48 = defaultLogHandle(v45);
                                v23 = v78;
                                if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_77;
                                }

                                *buf = 138543362;
                                v88 = v25;
                                v59 = v48;
                                v60 = "IS&T signed component in wrong format (onwer name) for %{public}@";
                                v61 = 12;
                              }

                              _os_log_error_impl(&dword_259B7D000, v59, OS_LOG_TYPE_ERROR, v60, buf, v61);
                              goto LABEL_77;
                            }

                            v48 = defaultLogHandle(v43);
                            if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                            {
LABEL_75:
                              v32 = 6;
                              v44 = v42;
                              goto LABEL_80;
                            }

                            *buf = 138543618;
                            v88 = @"mobile";
                            v89 = 2114;
                            v90 = v25;
                            v56 = v48;
                            v57 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                            v58 = 22;
                          }

                          else
                          {
                            v48 = defaultLogHandle(v41);
                            if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_75;
                            }

                            *buf = 138543362;
                            v88 = v25;
                            v56 = v48;
                            v57 = "IS&T signed component in wrong format (owner name) for %{public}@";
                            v58 = 12;
                          }

                          _os_log_error_impl(&dword_259B7D000, v56, OS_LOG_TYPE_ERROR, v57, buf, v58);
                          goto LABEL_75;
                        }

                        v44 = defaultLogHandle(v40);
                        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                        {
LABEL_73:
                          v32 = 6;
                          goto LABEL_46;
                        }

                        *buf = 138543618;
                        v88 = v79;
                        v89 = 2114;
                        v90 = v25;
                        v53 = v44;
                        v54 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                        v55 = 22;
                      }

                      else
                      {
                        v44 = defaultLogHandle(v39);
                        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_73;
                        }

                        *buf = 138543362;
                        v88 = v25;
                        v53 = v44;
                        v54 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                        v55 = 12;
                      }

                      _os_log_error_impl(&dword_259B7D000, v53, OS_LOG_TYPE_ERROR, v54, buf, v55);
                      goto LABEL_73;
                    }

                    v44 = defaultLogHandle(integerValue);
                    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
LABEL_71:
                      v32 = 6;
                      v38 = v36;
                      goto LABEL_46;
                    }

                    *buf = v71;
                    v88 = 501;
                    v89 = 2114;
                    v90 = v25;
                    v50 = v44;
                    v51 = "IS&T signed component can only contain %ld owned file - %{public}@";
                    v52 = 22;
                  }

                  else
                  {
                    v44 = defaultLogHandle(v35);
                    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_71;
                    }

                    *buf = 138543362;
                    v88 = v25;
                    v50 = v44;
                    v51 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                    v52 = 12;
                  }

                  _os_log_error_impl(&dword_259B7D000, v50, OS_LOG_TYPE_ERROR, v51, buf, v52);
                  goto LABEL_71;
                }

                v38 = defaultLogHandle(v34);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v88 = v25;
                  v65 = v38;
                  v66 = "%{public}@ is not allowed in IS&T signed component.";
                  goto LABEL_82;
                }
              }

              else
              {
                v38 = defaultLogHandle(v33);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v88 = v25;
                  v65 = v38;
                  v66 = "IS&T signed component can only contain regular files - %{public}@";
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v38 = defaultLogHandle(v30);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v88 = v25;
                v65 = v38;
                v66 = "IS&T signed component in wrong format (file type) for %{public}@";
LABEL_82:
                _os_log_error_impl(&dword_259B7D000, v65, OS_LOG_TYPE_ERROR, v66, buf, 0xCu);
              }
            }

            v32 = 6;
            goto LABEL_47;
          }
        }

        v31 = defaultLogHandle(isKindOfClass);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v88 = v25;
          _os_log_error_impl(&dword_259B7D000, v31, OS_LOG_TYPE_ERROR, "IS&T signed component in wrong format (no file attributes) for %{public}@", buf, 0xCu);
        }

        v32 = 6;
LABEL_48:

        if (v32 != 3)
        {
          goto LABEL_95;
        }

        ++v24;
      }

      while (v23 != v24);
      v67 = [v20 countByEnumeratingWithState:&v83 objects:v91 count:16];
      v23 = v67;
    }

    while (v67);
  }

  v32 = 0;
LABEL_95:

  if (v32)
  {
    v68 = v32 == 6;
  }

  else
  {
    v68 = 1;
  }

  v69 = !v68;

  return v69;
}

- (void)registerEntitlementNotificationHandler
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__MSDDemoManifestCheck_registerEntitlementNotificationHandler__block_invoke;
  v5[3] = &unk_2798EF5F8;
  v5[4] = self;
  v4 = [defaultCenter addObserverForName:@"CheckEntitlementsNotify" object:0 queue:0 usingBlock:v5];
}

void __62__MSDDemoManifestCheck_registerEntitlementNotificationHandler__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = defaultLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v3 userInfo];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "Notification received for entitlement check for: %{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [v3 userInfo];
  [*(a1 + 32) setItemBeingInstalled:v7];
}

- (id)getSecurityCheckSectionNames
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v2 = +[MSDPlatform sharedInstance];
    macOS = [v2 macOS];

    v4 = MEMORY[0x277CBEB98];
    if (macOS)
    {
      v5 = &unk_286AE16D8;
    }

    else
    {
      v5 = &unk_286AE16F0;
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = &unk_286AE1708;
  }

  v6 = [v4 setWithArray:v5];

  return v6;
}

- (id)getManifestData:(id)data
{
  dataCopy = data;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [dataCopy objectForKey:@"Data" ofType:objc_opt_class()];
  }

  else
  {
    v5 = dataCopy;
  }

  v6 = v5;

  return v6;
}

- (id)getComponentData:(id)data
{
  dataCopy = data;
  v4 = @"Manifest";
  v5 = [dataCopy objectForKey:@"Manifest"];

  if (v5 || (v4 = @"Settings", [dataCopy objectForKey:@"Settings"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [dataCopy objectForKey:v4 ofType:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getBackupSectionName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    return @"BackupData";
  }

  else
  {
    return @"Backup";
  }
}

- (id)getappIconLayoutBackupName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]!= 7)
  {
    return @"backup.Merge.AppIconLayout";
  }

  v2 = +[MSDPlatform sharedInstance];
  macOS = [v2 macOS];

  if (macOS)
  {
    return @"dockLayout";
  }

  else
  {
    return @"appIconLayout";
  }
}

- (id)getInstallationOrder
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    array = [MEMORY[0x277CBEB18] array];
    segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    segmentedManifestWithRigorousFlag2 = [segmentedManifestWithRigorousFlag objectForKey:@"InstallationOrder"];

    v6 = [segmentedManifestWithRigorousFlag2 objectForKey:@"CriticalComponents"];
    if (v6)
    {
      [array addObjectsFromArray:v6];
    }

    v7 = [segmentedManifestWithRigorousFlag2 objectForKey:@"Components"];
    if (v7)
    {
      [array addObjectsFromArray:v7];
    }
  }

  else
  {
    segmentedManifestWithRigorousFlag2 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    array = [segmentedManifestWithRigorousFlag2 objectForKey:@"InstallationOrder"];
  }

  return array;
}

- (id)getBackupItemName:(id)name
{
  nameCopy = name;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [nameCopy substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
  }

  else
  {
    v5 = nameCopy;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isValidDataContainerFile:(id)file
{
  fileCopy = file;
  pathComponents = [fileCopy pathComponents];
  v5 = pathComponents;
  if (pathComponents)
  {
    if ([pathComponents count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = [v8 isEqualToString:@".."];

        if (v9)
        {
          if (!v7)
          {
            v15 = defaultLogHandle(v10);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [MSDDemoManifestCheck isValidDataContainerFile:];
            }

            goto LABEL_12;
          }

          v11 = -1;
        }

        else
        {
          v12 = [v5 objectAtIndexedSubscript:v6];
          v13 = [v12 isEqualToString:@"."];

          v11 = v13 ^ 1;
        }

        v7 += v11;
        ++v6;
      }

      while ([v5 count] > v6);
    }

    v14 = 1;
  }

  else
  {
    v15 = defaultLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isValidDataContainerFile:];
    }

LABEL_12:

    v14 = 0;
  }

  return v14;
}

- (id)getAllowedSymLinks
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[MSDPlatform sharedInstance];
  if ([v3 iOS])
  {
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 rOS];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1720];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.carrier"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_1.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_2.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.merged.plist"];
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"/var/db/timezone/zoneinfo"];
  [v2 setObject:v7 forKey:@"/var/db/timezone/localtime"];

  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1738];
  [v2 setObject:v8 forKey:@"/var/mobile/Media/Books"];

  v9 = [MEMORY[0x277CBEB98] setWithObject:@"/var/mobile/Library/Shortcuts/ToolKit"];
  [v2 setObject:v9 forKey:@"/var/mobile/Library/Shortcuts/ToolKit/Tools-active"];

  v10 = [MEMORY[0x277CBEB98] setWithObject:@"Binaries/0/Debug-xros"];
  [v2 setObject:v10 forKey:@"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts/Tests/0/Debug-xros"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v11 addObject:@"/var/mobile/Containers/Data/Application/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/AppGroup/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/Extension/"];
  [v11 addObject:@"/var/mobile/Library/Cookies"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/com.apple.PeoplePicker.plist"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/.GlobalPreferences.plist"];
  [v2 setObject:v11 forKey:@"/var/mobile/Containers/"];

LABEL_5:

  return v2;
}

- (id)getAllowedISTSignedComponents:(id)components
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  componentsCopy = components;
  v6 = [v4 set];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"BackupData", @"appIconLayout"];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"BackupData", @"dockLayout"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v10 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponentsFromManifest:componentsCopy];

  [v6 addObjectsFromArray:v9];
  [v6 addObjectsFromArray:v10];
  v11 = [MEMORY[0x277CBEB98] setWithSet:v6];

  return v11;
}

- (id)getAllowedISTSignedComponentsFromManifest:(id)manifest
{
  v48 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:@"com.apple.ist.DigitalCatalog"];
  [array addObject:@"com.apple.ist.demoloop"];
  [array addObject:@"com.apple.ist.windward"];
  [array addObject:@"com.apple.ist.DemoDiscoveryApp"];
  [array addObject:@"com.apple.ist.DigitalSignage.iOS"];
  [array addObject:@"com.retailtech.arkenstone"];
  array2 = [MEMORY[0x277CBEB18] array];
  v24 = manifestCopy;
  v27 = [manifestCopy objectForKeyedSubscript:@"Apps"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = array;
  v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v28)
  {
    v26 = *v42;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = [v27 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * v6)];
        v8 = [v7 objectForKeyedSubscript:@"Manifest"];
        v9 = [v8 objectForKeyedSubscript:@"Dependencies"];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          v30 = *v38;
          v31 = v10;
          do
          {
            v14 = 0;
            v32 = v12;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v37 + 1) + 8 * v14);
              if (([v15 isEqualToString:@"ProvisioningProfiles"] & 1) == 0)
              {
                v16 = [v10 objectForKeyedSubscript:v15];
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v34;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v34 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v15, *(*(&v33 + 1) + 8 * i)];
                      [array2 addObject:v21];
                    }

                    v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v18);
                }

                v13 = v30;
                v10 = v31;
                v12 = v32;
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v28);
  }

  v22 = [MEMORY[0x277CBEA60] arrayWithArray:array2];

  return v22;
}

- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name
{
  v70 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  nameCopy = name;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = [sectionCopy countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v57;
    selfCopy = self;
    v36 = sectionCopy;
    v33 = *v57;
    v34 = nameCopy;
    do
    {
      v11 = 0;
      v37 = v9;
      do
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(sectionCopy);
        }

        v41 = *(*(&v56 + 1) + 8 * v11);
        v12 = [sectionCopy objectForKey:v41 ofType:objc_opt_class()];
        if (v12)
        {
          v13 = [(MSDDemoManifestCheck *)self getComponentData:v12];
          if (v13)
          {
            v14 = [(MSDDemoManifestCheck *)self getManifestData:v13];
            if (v14)
            {
              v38 = v13;
              v39 = v12;
              v40 = v11;
              v15 = objc_opt_new();
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              obj = [(MSDDemoManifestCheck *)self blocklistedItems];
              v16 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
              if (v16)
              {
                v17 = v16;
                v43 = *v53;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v53 != v43)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v52 + 1) + 8 * i);
                    v48 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v20 = v14;
                    v21 = [v20 countByEnumeratingWithState:&v48 objects:v67 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v49;
                      do
                      {
                        for (j = 0; j != v22; ++j)
                        {
                          if (*v49 != v23)
                          {
                            objc_enumerationMutation(v20);
                          }

                          v25 = *(*(&v48 + 1) + 8 * j);
                          if (([v25 isEqualToString:{v19, v33}] & 1) != 0 || objc_msgSend(v25, "hasPrefix:", v19))
                          {
                            [v15 addObject:v25];
                          }
                        }

                        v22 = [v20 countByEnumeratingWithState:&v48 objects:v67 count:16];
                      }

                      while (v22);
                    }
                  }

                  v17 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
                }

                while (v17);
              }

              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v26 = v15;
              v27 = [v26 countByEnumeratingWithState:&v44 objects:v66 count:16];
              nameCopy = v34;
              if (v27)
              {
                v28 = v27;
                v29 = *v45;
                do
                {
                  v30 = 0;
                  do
                  {
                    if (*v45 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v44 + 1) + 8 * v30);
                    v32 = defaultLogHandle(v27);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543874;
                      v61 = v31;
                      v62 = 2114;
                      v63 = v34;
                      v64 = 2114;
                      v65 = v41;
                      _os_log_impl(&dword_259B7D000, v32, OS_LOG_TYPE_DEFAULT, "Excluding %{public}@ from section: %{public}@ component:%{public}@", buf, 0x20u);
                    }

                    v27 = [v14 removeObjectForKey:v31];
                    ++v30;
                  }

                  while (v28 != v30);
                  v27 = [v26 countByEnumeratingWithState:&v44 objects:v66 count:16];
                  v28 = v27;
                }

                while (v27);
              }

              self = selfCopy;
              sectionCopy = v36;
              v10 = v33;
              v9 = v37;
              v13 = v38;
              v12 = v39;
              v11 = v40;
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [sectionCopy countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v9);
  }
}

- (__SecKey)createPublicKeyAppleISTSigning:(id)signing
{
  v60 = *MEMORY[0x277D85DE8];
  signingCopy = signing;
  commonName = 0;
  v6 = defaultLogHandle(signingCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "Verifying AppleIST certificate\n", buf, 2u);
  }

  DemoDigitalCatalogSigning = SecPolicyCreateDemoDigitalCatalogSigning();
  if (!DemoDigitalCatalogSigning)
  {
    v33 = defaultLogHandle(0);
    if (OUTLINED_FUNCTION_12(v33))
    {
      *buf = 136315138;
      v59 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      OUTLINED_FUNCTION_3_0();
LABEL_38:
      _os_log_error_impl(v34, v35, v36, v37, v38, v39);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v8 = DemoDigitalCatalogSigning;
  v9 = [signingCopy count];
  if (v9 != 2)
  {
    v40 = defaultLogHandle(v9);
    if (OUTLINED_FUNCTION_12(v40))
    {
      *buf = 0;
LABEL_37:
      OUTLINED_FUNCTION_10();
      goto LABEL_38;
    }

LABEL_23:
    v17 = 0;
    goto LABEL_35;
  }

  v10 = [signingCopy objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v12 = *MEMORY[0x277CBECE8];
  v3 = [signingCopy objectAtIndex:0];
  bytes = [(__CFString *)v3 bytes];
  v14 = [signingCopy objectAtIndex:0];
  v15 = CFDataCreate(v12, bytes, [v14 length]);

  if (!v15)
  {
    v41 = defaultLogHandle(v16);
    if (!OUTLINED_FUNCTION_12(v41))
    {
      goto LABEL_23;
    }

    *buf = 0;
    goto LABEL_37;
  }

  SecCertificateCreateWithData(v12, v15);
  v17 = SecCertificateCopyOrganizationalUnit();
  v3 = [(__CFString *)v17 objectAtIndex:0];
  v18 = [(__CFString *)v3 isEqualToString:@"1.2.840.113635.100.6.60"];

  if ((v18 & 1) == 0)
  {
    v42 = defaultLogHandle(v19);
    if (OUTLINED_FUNCTION_12(v42))
    {
      *buf = 138543362;
      v59 = v17;
      OUTLINED_FUNCTION_3_0();
LABEL_28:
      _os_log_error_impl(v43, v44, v45, v46, v47, v48);
    }

LABEL_35:
    v30 = 0;
    v31 = 0;
    goto LABEL_14;
  }

  v20 = [signingCopy objectAtIndex:1];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if ((v21 & 1) == 0)
  {
LABEL_21:
    v30 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  v22 = [signingCopy objectAtIndex:1];
  bytes2 = [v22 bytes];
  v24 = [signingCopy objectAtIndex:1];
  v3 = CFDataCreate(v12, bytes2, [v24 length]);

  if (!v3)
  {
    v49 = defaultLogHandle(v25);
    if (OUTLINED_FUNCTION_12(v49))
    {
      *buf = 0;
      OUTLINED_FUNCTION_10();
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v26 = SecCertificateCreateWithData(v12, v3);
  SecCertificateCopyCommonName(v26, &commonName);
  v3 = commonName;
  v27 = [(__CFString *)v3 isEqualToString:@"DemoUnit CA"];
  if ((v27 & 1) == 0)
  {
    v50 = defaultLogHandle(v27);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = commonName;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v28 = CFDataCreate(v12, demoUnitRootCACert_crt, demoUnitRootCACert_crt_len);
  if (!v28)
  {
    v50 = defaultLogHandle(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v59 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v29 = SecCertificateCreateWithData(v12, v28);
  if (!v29)
  {
    v50 = defaultLogHandle(0);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v59 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
LABEL_40:
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v51, v52, v53, v54, v55, v56);
    goto LABEL_34;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:{v29, 0}];
  v31 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:v8 anchors:v30];
LABEL_14:

LABEL_15:
  return v31;
}

- (void)init
{
  v2 = defaultLogHandle(self);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v0, v1, "%s: signature type for certificate %{public}@ does not exist", v2);
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v0, v1, "%s: No matching certificate for %{public}@.", v2);
}

- (void)verifyManifestSignature:(uint64_t)a1 forDataSectionKeys:withOptions:.cold.8(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)verifyManifestSignature:(uint64_t)a1 forDataSectionKeys:withOptions:.cold.9(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = defaultLogHandle(v0);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v3 = defaultLogHandle(v2);
  if (OUTLINED_FUNCTION_4(v3))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

- (void)checkFileForEntitlements:(uint64_t)a1 forCorrespondingManifestEntry:.cold.3(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createPublicKeyForStrongSigning:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_14(a1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)createPublicKeyForDevelopmentSigningStandard:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)createPublicKey:usingPolicy:anchors:.cold.1()
{
  OUTLINED_FUNCTION_9();
  if (OUTLINED_FUNCTION_14(v0))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createPublicKey:usingPolicy:anchors:.cold.2()
{
  OUTLINED_FUNCTION_9();
  if (OUTLINED_FUNCTION_14(v0))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createPublicKey:usingPolicy:anchors:.cold.3()
{
  OUTLINED_FUNCTION_9();
  if (OUTLINED_FUNCTION_14(v0))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createPublicKey:usingPolicy:anchors:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_14(v0))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createPublicKey:usingPolicy:anchors:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v0, v1, "%s: certificate trust evaluation failed: %ld", v2);
}

void __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  v4 = defaultLogHandle(v3);
  if (OUTLINED_FUNCTION_12(v4))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
  }

  v5 = *(*(v1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  *v0 = 1;
}

- (void)verifySignature:(uint64_t)a1 forData:withKey:.cold.2(uint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "[MSDDemoManifestCheck verifySignature:forData:withKey:]";
    v5 = 1024;
    v6 = v1;
    _os_log_debug_impl(&dword_259B7D000, v2, OS_LOG_TYPE_DEBUG, "%s: Failed in verifying signature(%d)", &v3, 0x12u);
  }
}

- (void)validateISTSignedApp:(uint64_t)a1 manifest:.cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)secureManifestCheckForSegmentedManifest:(uint64_t)a1 options:.cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)secureManifestCheckForSegmentedManifest:(uint64_t)a1 options:.cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)runSecurityCheck:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_14(v0))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_6();
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = 136315650;
  v5 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed rigorous check for:%{public}@ (from %{public}@)", &v4, 0x20u);
}

- (void)runSettingsSecurityCheckForSection:component:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)runSettingsSecurityCheckForSection:component:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v3 = defaultLogHandle(v2);
  if (OUTLINED_FUNCTION_4(v3))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

- (void)runSettingsSecurityCheckForSection:component:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v1 = defaultLogHandle(v0);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)runSettingsSecurityCheckForSection:component:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v1 = defaultLogHandle(v0);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v4 = defaultLogHandle(v3);
  if (OUTLINED_FUNCTION_12(v4))
  {
    OUTLINED_FUNCTION_10();
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
  }
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v3 = 2114;
  v4 = v0;
  OUTLINED_FUNCTION_7(&dword_259B7D000, v1, v1, "Not a valid fileType (%{public}@) for file: %{public}@", v2);
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v3 = 2048;
  v4 = v0;
  OUTLINED_FUNCTION_7(&dword_259B7D000, v1, v1, "File permissions failed for file:%{public}@(%ld)", v2);
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)runFileSecurityChecksForSection:(void *)a1 dataType:options:.cold.6(void *a1)
{
  v3 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_4(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

- (void)runAppLayoutSecurityCheck:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v6 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_12(v6))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
  }
}

- (void)runAppLayoutSecurityCheck:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v3 = defaultLogHandle(v2);
  if (OUTLINED_FUNCTION_4(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)isValidDataContainerFile:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)isValidDataContainerFile:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end