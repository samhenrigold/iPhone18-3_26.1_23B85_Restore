@interface MSDDemoManifestCheck
+ (MSDDemoManifestCheck)sharedInstance;
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
- (void)registerEntitlementNotificationHandler;
- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name;
@end

@implementation MSDDemoManifestCheck

+ (MSDDemoManifestCheck)sharedInstance
{
  if (qword_10005BEB8 != -1)
  {
    sub_100029E10();
  }

  v3 = qword_10005BEB0;

  return v3;
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
    sub_100029E24(v9);
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
    [v8 setObject:&__kCFBooleanTrue forKey:@"ExcludeBlocklistItem"];
  }

  v12 = [(MSDDemoManifestCheck *)self verifyManifestSignature:signatureCopy forDataSectionKeys:keysCopy withOptions:v8];

  return v12;
}

- (id)verifyManifestSignature:(id)signature forDataSectionKeys:(id)keys withOptions:(id)options
{
  signatureCopy = signature;
  keysCopy = keys;
  optionsCopy = options;
  v100 = objc_alloc_init(NSMutableDictionary);
  error = 0;
  v9 = sub_100021268(v100);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v125 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Verifying a separate component manifest.", buf, 0xCu);
  }

  v92 = [optionsCopy objectForKey:@"RigorousTestingOverride"];
  v10 = [optionsCopy objectForKey:@"ExcludeBlocklistItem"];
  allowedISTSignedComponents = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!allowedISTSignedComponents)
  {
    v12 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:signatureCopy];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v12];
  }

  v13 = [NSMutableSet alloc];
  allKeys = [signatureCopy allKeys];
  v15 = [v13 initWithArray:allKeys];

  v16 = MGCopyAnswer();
  cf = v16;
  if (v16)
  {
    v96 = CFBooleanGetValue(v16) == 0;
  }

  else
  {
    v96 = 0;
  }

  v17 = [signatureCopy objectForKey:@"Certificates"];
  v89 = v17;
  if (!v17)
  {
    sub_10002A23C(0);
    v36 = 0;
    v21 = 0;
    v103 = 0;
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
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v118 objects:v135 count:16];
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v105 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  v105 = 0;
  v101 = *v119;
  while (2)
  {
    v23 = 0;
    v24 = v21;
    v25 = v22;
    do
    {
      if (*v119 != v101)
      {
        objc_enumerationMutation(v18);
      }

      v26 = *(*(&v118 + 1) + 8 * v23);
      v27 = [v18 objectForKey:v26];
      v22 = [v27 objectForKey:@"TypeOfSignature"];

      v21 = [v27 objectForKey:@"Certificate"];

      if (!v22)
      {
        v64 = sub_100021268(isKindOfClass);
        v103 = 0;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_10002A000();
        }

        goto LABEL_92;
      }

      if (!v21 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
      {
        v64 = sub_100021268(isKindOfClass);
        v103 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100029F80();
        }

        goto LABEL_92;
      }

      if (![v21 count])
      {
        v64 = sub_100021268(0);
        v103 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100029F00();
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
        v105 = v31;
        v64 = sub_100021268(v29);
        v103 = v22;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100029E80();
        }

LABEL_92:
        v15 = v87;

        v36 = 0;
        v47 = 0;
        v42 = v105;
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
      v133[0] = @"publicKey";
      v133[1] = @"TypeOfSignature";
      v134[0] = v30;
      v134[1] = v22;
      v133[2] = @"RigorousCheckType";
      v105 = v31;
      v134[2] = v31;
      v35 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:3];
      [v100 setObject:v35 forKeyedSubscript:v26];

      v23 = v23 + 1;
      v24 = v33;
      v25 = v22;
    }

    while (v20 != v23);
    v20 = [v18 countByEnumeratingWithState:&v118 objects:v135 count:16];
    v21 = v33;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v103 = v22;

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = keysCopy;
  v81 = [obj countByEnumeratingWithState:&v114 objects:v132 count:16];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v81)
  {
    v82 = *v115;
    v83 = v21;
    do
    {
      v39 = 0;
      do
      {
        if (*v115 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v102 = v36;
        v85 = v39;
        v40 = *(*(&v114 + 1) + 8 * v39);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v99 = v40;
        v94 = [signatureCopy objectForKey:?];
        v97 = [v94 countByEnumeratingWithState:&v110 objects:v131 count:16];
        if (!v97)
        {
          goto LABEL_50;
        }

        v95 = *v111;
        while (2)
        {
          for (i = 0; i != v97; i = i + 1)
          {
            v42 = v105;
            v43 = v37;
            v44 = v103;
            if (*v111 != v95)
            {
              objc_enumerationMutation(v94);
            }

            v45 = *(*(&v110 + 1) + 8 * i);
            v46 = [signatureCopy objectForKey:v99];
            v47 = [v46 objectForKey:v45];

            v48 = [v47 objectForKey:@"Certificate"];
            v49 = [v100 objectForKey:v48];
            v50 = v49;
            if (!v49)
            {
              v77 = sub_100021268(0);
              v36 = v102;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                sub_10002A168();
              }

              goto LABEL_96;
            }

            v51 = [v49 objectForKey:@"TypeOfSignature"];

            v103 = v51;
            v52 = [v51 isEqualToString:@"UAT"];
            v36 = v102;
            if (((v96 | v52 ^ 1) & 1) == 0)
            {
              v77 = sub_100021268(v52);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                sub_10002A078();
              }

              goto LABEL_95;
            }

            v53 = [(MSDDemoManifestCheck *)selfCopy getComponentData:v47];

            if (!v53)
            {
              v77 = sub_100021268(v54);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                sub_10002A0F8();
              }

              v36 = 0;
LABEL_95:
              v44 = v103;
LABEL_96:
              optionsCopy = v90;
              v10 = v91;
              v15 = v87;

              v103 = v44;
              v21 = v83;
              goto LABEL_97;
            }

            v55 = [v50 objectForKey:@"publicKey"];
            v102 = v53;
            v56 = sub_1000061E4(kCFAllocatorDefault, v45, v53);
            v57 = [v47 objectForKey:@"Signature"];
            LODWORD(v55) = SecKeyVerifySignature(v55, kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1, [NSData dataWithBytes:v56 length:20], v57, &error);
            free(v56);
            if (!v55)
            {
              v37 = v47;
              v78 = sub_100021268(v58);
              optionsCopy = v90;
              v15 = v87;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v125 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
                v126 = 2114;
                *v127 = v45;
                *&v127[8] = 2114;
                v128 = v99;
                v129 = 2114;
                v130 = error;
                _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%s: signature verification failed for %{public}@ in section %{public}@. Error: %{public}@", buf, 0x2Au);
              }

              goto LABEL_85;
            }

            v42 = [v50 objectForKey:@"RigorousCheckType"];

            v37 = v47;
            [v47 setObject:v42 forKey:@"RigorousCheckType"];
            v59 = [(__CFString *)v42 isEqualToString:@"Skip"];
            v105 = v42;
            if (-[__CFString isEqualToString:](v42, "isEqualToString:", @"AppleISTCertCheck") && [v99 isEqualToString:@"Apps"] && !-[MSDDemoManifestCheck validateISTSignedApp:manifest:](selfCopy, "validateISTSignedApp:manifest:", v45, signatureCopy))
            {
              optionsCopy = v90;
              v15 = v87;
LABEL_85:
              v36 = v102;

              v10 = v91;
              v21 = v83;
              v47 = v37;
              goto LABEL_97;
            }

            v38 |= v59 ^ 1;
          }

          v97 = [v94 countByEnumeratingWithState:&v110 objects:v131 count:16];
          if (v97)
          {
            continue;
          }

          break;
        }

LABEL_50:

        v21 = v83;
        v39 = v85 + 1;
        v36 = v102;
      }

      while ((v85 + 1) != v81);
      v81 = [obj countByEnumeratingWithState:&v114 objects:v132 count:16];
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
  v61 = sub_100021268(has_internal_content);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v92 BOOLValue];
    *buf = 136315650;
    v125 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    v126 = 1024;
    *v127 = v38 & 1;
    *&v127[4] = 1024;
    *&v127[6] = bOOLValue;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s: Overriding rigorous testing from %{BOOL}d to %{BOOL}d", buf, 0x18u);
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

    sub_10002A1E0(v65);
    v42 = v105;
    goto LABEL_97;
  }

LABEL_58:
  v63 = sub_100021268(has_internal_content);
  v10 = v91;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v125 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: Skipping rigorous manifest testing.", buf, 0xCu);
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
    v69 = sub_100021268(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "No items blocklisted, skip blocklist item exclusion", buf, 2u);
    }

    goto LABEL_102;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v69 = signatureCopy;
  v70 = [v69 countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (!v70)
  {
LABEL_102:
    v10 = v91;
    goto LABEL_103;
  }

  v71 = v70;
  v72 = v36;
  v84 = v21;
  v73 = *v107;
  do
  {
    for (j = 0; j != v71; j = j + 1)
    {
      if (*v107 != v73)
      {
        objc_enumerationMutation(v69);
      }

      v75 = *(*(&v106 + 1) + 8 * j);
      v76 = [v69 objectForKey:v75 ofType:objc_opt_class()];
      if (v76)
      {
        [(MSDDemoManifestCheck *)selfCopy removeBlocklistedItemFromSection:v76 withName:v75];
      }
    }

    v71 = [v69 countByEnumeratingWithState:&v106 objects:v123 count:16];
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
  v42 = v105;
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
      sub_10002A298();
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
      v19 = rangeValue + v17 - 1;
      if ((rangeValue + v17 - 1) >= 0)
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

        sub_10002A3E8(&v40);
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
        sub_10002A33C();
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

    v28 = sub_100021268(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10002A490();
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
  v6 = sub_100021268(MobileStoreSigner);
  v7 = v6;
  if (MobileStoreSigner)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Verifying strong signing", v10, 2u);
    }

    v8 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:MobileStoreSigner anchors:0];
  }

  else
  {
    sub_10002A500(v6);
    v8 = 0;
  }

  return v8;
}

- (__SecKey)createPublicKeyForDevelopmentSigning:(id)signing
{
  signingCopy = signing;
  v5 = sub_100021268(signingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Verifying development signing", v8, 2u);
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
    sub_10002A594(0);
    v6 = 0;
  }

  return v6;
}

- (__SecKey)createPublicKey:(id)key usingPolicy:(__SecPolicy *)policy anchors:(id)anchors
{
  keyCopy = key;
  anchorsCopy = anchors;
  trust[0] = 0;
  result = kSecTrustResultInvalid;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000DBB4;
  v23 = sub_10000DBC4;
  v24 = 0;
  v9 = [NSMutableArray arrayWithCapacity:0];
  v10 = v20[5];
  v20[5] = v9;

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000DBCC;
  v18[3] = &unk_100050DC8;
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
    sub_100021268(v12);
    objc_claimAutoreleasedReturnValue();
    sub_10002A630();
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
      sub_100021268(v13);
      objc_claimAutoreleasedReturnValue();
      sub_10002A6CC();
      goto LABEL_23;
    }
  }

  v14 = SecTrustEvaluate(trust[0], &result);
  if (v14)
  {
    sub_100021268(v14);
    objc_claimAutoreleasedReturnValue();
    sub_10002A768();
    goto LABEL_23;
  }

  if (result != kSecTrustResultProceed && result != kSecTrustResultUnspecified)
  {
    v16 = sub_100021268(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002A894();
    }

    goto LABEL_13;
  }

  v15 = SecTrustCopyPublicKey(trust[0]);
  if (!v15)
  {
    sub_100021268(0);
    objc_claimAutoreleasedReturnValue();
    sub_10002A804();
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

- (BOOL)verifySignature:(id)signature forData:(id)data withKey:(__SecKey *)key
{
  dataCopy = data;
  signatureCopy = signature;
  v9 = sub_100021268(signatureCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A9D8(v9);
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
    sub_10002AA1C(v15);
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
    v11 = sub_100021268(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB58();
    }

    goto LABEL_12;
  }

  v5 = SecCertificateCreateWithData(kCFAllocatorDefault, v4);
  if (!v5)
  {
    v11 = sub_100021268(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002AAD8();
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
    v9 = sub_100021268(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "A certificate for manual signing is used.", buf, 2u);
    }

    v10 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v9 = sub_100021268(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "A certificate for non-manual signing is used.", v13, 2u);
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
    sub_10002ABD8(v13);
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
    sub_10002ACD0(optionsCopy);
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
    sub_10002AC34(v12);
    goto LABEL_9;
  }

  [(MSDDemoManifestCheck *)self registerEntitlementNotificationHandler];
  v13 = 1;
LABEL_6:

  return v13;
}

- (BOOL)runSecurityCheck:(id)check
{
  checkCopy = check;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  getSecurityCheckSectionNames = [(MSDDemoManifestCheck *)self getSecurityCheckSectionNames];
  getappIconLayoutBackupName = [(MSDDemoManifestCheck *)self getappIconLayoutBackupName];
  getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v8 = sub_100021268(getBackupSectionName);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting rigorous security checks", buf, 2u);
  }

  segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000E39C;
  v18[3] = &unk_100050E18;
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
    v15 = sub_100021268(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDDemoManifestCheck runSecurityCheck:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:Cleared all checks for manifest. Approving future installations", buf, 0xCu);
    }
  }

  else
  {
    sub_100021268(v14);
    objc_claimAutoreleasedReturnValue();
    sub_10002AD6C();
    v15 = *buf;
  }

  v16 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v16 & 1;
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
      sub_10002B0C8();
      goto LABEL_14;
    }

    v9 = [v7 objectForKey:@"region"];

    if (!v9)
    {
      sub_10002B024();
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
      v7 = sub_100021268(v10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002AF08();
      }

      goto LABEL_10;
    }

    v7 = [sectionCopy objectForKey:@"Data"];
    v11 = [v7 objectForKey:@"HDR"];

    if (!v11)
    {
      sub_10002AF78();
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)runFileSecurityChecksForSection:(id)section dataType:(id)type options:(id)options
{
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
      sub_10002B3B4(v16);
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
            v72 = sub_100021268(v33);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              sub_10002B344();
            }

            v34 = 0;
            typeCopy = v82;
            v11 = v74;
            optionsCopy = v76;
            sectionCopy = v78;
            v15 = v71;
            goto LABEL_70;
          }

          v29 = v29 + 1;
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

  v81 = [NSSet setWithArray:&off_100056538];
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
      sub_10002B16C();
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
        v70 = sub_100021268(v43);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_10002B344();
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
          v70 = sub_100021268(v47);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v36 = v88;
            sub_10002B1DC();
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
          for (i = 0; i != v52; i = i + 1)
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
                  for (j = 0; j != v61; j = j + 1)
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
        v70 = sub_100021268(v66);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_10002B258();
        }

        goto LABEL_62;
      }

      if ([typeCopy isEqualToString:v38])
      {
        whitelistChecker3 = [(MSDDemoManifestCheck *)selfCopy whitelistChecker];
        v68 = [whitelistChecker3 handleSystemContainerFiles:v93 withMetadata:v89];

        if ((v68 & 1) == 0)
        {
          v70 = sub_100021268(v69);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_10002B2D4();
          }

          goto LABEL_62;
        }
      }

      objc_autoreleasePoolPop(context);
      v39 = v86 + 1;
      v36 = v88;
      v40 = v15;
    }

    while ((v86 + 1) != v85);
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
  checkCopy = check;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = +[MSDPlatform sharedInstance];
  macOS = [v7 macOS];

  v72 = v5;
  v73 = v6;
  if (macOS)
  {
    [v5 addObject:&off_100056760];
    [v6 addObject:@"staff"];
    v74 = [NSSet setWithArray:&off_100056550];
    goto LABEL_11;
  }

  [v5 addObject:&off_100056778];
  [v5 addObject:&off_100056790];
  [v6 addObject:@"mobile"];
  [v6 addObject:@"wheel"];
  v9 = +[MSDPlatform sharedInstance];
  v10 = [v9 rOS];

  if (v10)
  {
    v11 = &off_100056568;
  }

  else
  {
    v12 = +[MSDPlatform sharedInstance];
    v13 = [v12 iOS];

    if (v13)
    {
      v11 = &off_100056580;
    }

    else
    {
      v14 = +[MSDPlatform sharedInstance];
      tvOS = [v14 tvOS];

      if (!tvOS)
      {
        v16 = objc_alloc_init(NSSet);
        goto LABEL_10;
      }

      v11 = &off_100056598;
    }
  }

  v16 = [NSSet setWithArray:v11];
LABEL_10:
  v74 = v16;
LABEL_11:
  v17 = [(MSDDemoManifestCheck *)self getManifestData:checkCopy];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v19)
  {
    v21 = v19;
    v75 = *v77;
    *&v20 = 134218242;
    v69 = v20;
    v70 = v18;
    do
    {
      v22 = 0;
      v71 = v21;
      do
      {
        if (*v77 != v75)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v76 + 1) + 8 * v22);
        v24 = [v18 objectForKey:{v23, v69}];
        if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          sub_10002B4CC();
LABEL_105:
          v30 = 6;
          goto LABEL_95;
        }

        v25 = [v24 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        if (v25)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v25 isEqualToString:&stru_1000519D0] & 1) == 0)
          {
            sub_10002B418(v23, v25, v24);
            goto LABEL_105;
          }
        }

        isKindOfClass = [v24 objectForKey:@"MSDManifestFileAttributes"];
        v27 = isKindOfClass;
        if (isKindOfClass)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v28 = [v27 objectForKey:@"NSFileType"];
            v29 = v28;
            if (v28 && (objc_opt_class(), v28 = objc_opt_isKindOfClass(), (v28 & 1) != 0))
            {
              if (([v29 isEqualToString:@"NSFileTypeDirectory"]& 1) != 0)
              {
                v30 = 3;
                goto LABEL_48;
              }

              v31 = [v29 isEqualToString:@"NSFileTypeRegular"];
              if (v31)
              {
                v32 = [v74 containsObject:v23];
                if (v32)
                {
                  v33 = [v27 objectForKey:NSFileOwnerAccountID];
                  v34 = v33;
                  if (v33 && (objc_opt_class(), v33 = objc_opt_isKindOfClass(), (v33 & 1) != 0))
                  {
                    integerValue = [v34 integerValue];
                    if (integerValue == 501)
                    {
                      v36 = [v27 objectForKey:NSFileGroupOwnerAccountID];

                      if (v36 && (objc_opt_class(), v37 = objc_opt_isKindOfClass(), (v37 & 1) != 0))
                      {
                        v38 = [v5 containsObject:v36];
                        if (v38)
                        {
                          v39 = [v27 objectForKey:NSFileOwnerAccountName];
                          v40 = v39;
                          if (v39 && (objc_opt_class(), v39 = objc_opt_isKindOfClass(), (v39 & 1) != 0))
                          {
                            v41 = [v40 isEqualToString:@"mobile"];
                            if (v41)
                            {
                              v42 = [v27 objectForKey:NSFileGroupOwnerAccountName];

                              if (v42 && (objc_opt_class(), v43 = objc_opt_isKindOfClass(), (v43 & 1) != 0))
                              {
                                v44 = [v73 containsObject:v42];
                                v21 = v71;
                                if (v44)
                                {
                                  v45 = [v27 objectForKey:NSFilePosixPermissions];
                                  v46 = v45;
                                  if (v45 && (objc_opt_class(), v45 = objc_opt_isKindOfClass(), (v45 & 1) != 0))
                                  {
                                    integerValue2 = [v46 integerValue];
                                    if ((integerValue2 & 0xC00) == 0)
                                    {
                                      v30 = 1;
                                      goto LABEL_45;
                                    }

                                    v60 = sub_100021268(integerValue2);
                                    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                                    {
LABEL_79:

                                      v30 = 6;
LABEL_80:
                                      v21 = v71;
LABEL_45:

LABEL_46:
                                      v5 = v72;
LABEL_47:

                                      v18 = v70;
                                      goto LABEL_48;
                                    }

                                    *buf = 138543362;
                                    v81 = v23;
                                    v61 = v60;
                                    v62 = "IS&T signed component contains setuid item: %{public}@";
                                  }

                                  else
                                  {
                                    v60 = sub_100021268(v45);
                                    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_79;
                                    }

                                    *buf = 138543362;
                                    v81 = v23;
                                    v61 = v60;
                                    v62 = "IS&T signed component in wrong format (permission) for %{public}@";
                                  }

                                  _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, buf, 0xCu);
                                  goto LABEL_79;
                                }

                                v46 = sub_100021268(v44);
                                if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                                {
LABEL_77:
                                  v30 = 6;
                                  goto LABEL_45;
                                }

                                *buf = 138543618;
                                v81 = v73;
                                v82 = 2114;
                                v83 = v23;
                                v57 = v46;
                                v58 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                                v59 = 22;
                              }

                              else
                              {
                                v46 = sub_100021268(v43);
                                v21 = v71;
                                if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_77;
                                }

                                *buf = 138543362;
                                v81 = v23;
                                v57 = v46;
                                v58 = "IS&T signed component in wrong format (onwer name) for %{public}@";
                                v59 = 12;
                              }

                              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, v58, buf, v59);
                              goto LABEL_77;
                            }

                            v46 = sub_100021268(v41);
                            if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                            {
LABEL_75:
                              v30 = 6;
                              v42 = v40;
                              goto LABEL_80;
                            }

                            *buf = 138543618;
                            v81 = @"mobile";
                            v82 = 2114;
                            v83 = v23;
                            v54 = v46;
                            v55 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                            v56 = 22;
                          }

                          else
                          {
                            v46 = sub_100021268(v39);
                            if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_75;
                            }

                            *buf = 138543362;
                            v81 = v23;
                            v54 = v46;
                            v55 = "IS&T signed component in wrong format (owner name) for %{public}@";
                            v56 = 12;
                          }

                          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, v55, buf, v56);
                          goto LABEL_75;
                        }

                        v42 = sub_100021268(v38);
                        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                        {
LABEL_73:
                          v30 = 6;
                          goto LABEL_46;
                        }

                        *buf = 138543618;
                        v81 = v72;
                        v82 = 2114;
                        v83 = v23;
                        v51 = v42;
                        v52 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                        v53 = 22;
                      }

                      else
                      {
                        v42 = sub_100021268(v37);
                        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_73;
                        }

                        *buf = 138543362;
                        v81 = v23;
                        v51 = v42;
                        v52 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                        v53 = 12;
                      }

                      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, v52, buf, v53);
                      goto LABEL_73;
                    }

                    v42 = sub_100021268(integerValue);
                    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
LABEL_71:
                      v30 = 6;
                      v36 = v34;
                      goto LABEL_46;
                    }

                    *buf = v69;
                    v81 = 501;
                    v82 = 2114;
                    v83 = v23;
                    v48 = v42;
                    v49 = "IS&T signed component can only contain %ld owned file - %{public}@";
                    v50 = 22;
                  }

                  else
                  {
                    v42 = sub_100021268(v33);
                    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_71;
                    }

                    *buf = 138543362;
                    v81 = v23;
                    v48 = v42;
                    v49 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                    v50 = 12;
                  }

                  _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v49, buf, v50);
                  goto LABEL_71;
                }

                v36 = sub_100021268(v32);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v81 = v23;
                  v63 = v36;
                  v64 = "%{public}@ is not allowed in IS&T signed component.";
                  goto LABEL_82;
                }
              }

              else
              {
                v36 = sub_100021268(v31);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v81 = v23;
                  v63 = v36;
                  v64 = "IS&T signed component can only contain regular files - %{public}@";
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v36 = sub_100021268(v28);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v81 = v23;
                v63 = v36;
                v64 = "IS&T signed component in wrong format (file type) for %{public}@";
LABEL_82:
                _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, v64, buf, 0xCu);
              }
            }

            v30 = 6;
            goto LABEL_47;
          }
        }

        v29 = sub_100021268(isKindOfClass);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v81 = v23;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "IS&T signed component in wrong format (no file attributes) for %{public}@", buf, 0xCu);
        }

        v30 = 6;
LABEL_48:

        if (v30 != 3)
        {
          goto LABEL_95;
        }

        v22 = v22 + 1;
      }

      while (v21 != v22);
      v65 = [v18 countByEnumeratingWithState:&v76 objects:v84 count:16];
      v21 = v65;
    }

    while (v65);
  }

  v30 = 0;
LABEL_95:

  if (v30)
  {
    v66 = v30 == 6;
  }

  else
  {
    v66 = 1;
  }

  v67 = !v66;

  return v67;
}

- (void)registerEntitlementNotificationHandler
{
  v3 = +[NSNotificationCenter defaultCenter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FEA8;
  v5[3] = &unk_100050E40;
  v5[4] = self;
  v4 = [v3 addObserverForName:@"CheckEntitlementsNotify" object:0 queue:0 usingBlock:v5];
}

- (id)getSecurityCheckSectionNames
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v2 = +[MSDPlatform sharedInstance];
    macOS = [v2 macOS];

    if (macOS)
    {
      v4 = &off_1000565B0;
    }

    else
    {
      v4 = &off_1000565C8;
    }
  }

  else
  {
    v4 = &off_1000565E0;
  }

  v5 = [NSSet setWithArray:v4];

  return v5;
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
    v3 = +[NSMutableArray array];
    segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    segmentedManifestWithRigorousFlag2 = [segmentedManifestWithRigorousFlag objectForKey:@"InstallationOrder"];

    v6 = [segmentedManifestWithRigorousFlag2 objectForKey:@"CriticalComponents"];
    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }

    v7 = [segmentedManifestWithRigorousFlag2 objectForKey:@"Components"];
    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  else
  {
    segmentedManifestWithRigorousFlag2 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v3 = [segmentedManifestWithRigorousFlag2 objectForKey:@"InstallationOrder"];
  }

  return v3;
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
            v15 = sub_100021268(v10);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10002B570();
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
    v15 = sub_100021268(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002B5E0();
    }

LABEL_12:

    v14 = 0;
  }

  return v14;
}

- (id)getAllowedSymLinks
{
  v2 = objc_alloc_init(NSMutableDictionary);
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

  v6 = [NSSet setWithArray:&off_1000565F8];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.carrier"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_1.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_2.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.merged.plist"];
  v7 = [NSSet setWithObject:@"/var/db/timezone/zoneinfo"];
  [v2 setObject:v7 forKey:@"/var/db/timezone/localtime"];

  v8 = [NSSet setWithArray:&off_100056610];
  [v2 setObject:v8 forKey:@"/var/mobile/Media/Books"];

  v9 = [NSSet setWithObject:@"/var/mobile/Library/Shortcuts/ToolKit"];
  [v2 setObject:v9 forKey:@"/var/mobile/Library/Shortcuts/ToolKit/Tools-active"];

  v10 = [NSSet setWithObject:@"Binaries/0/Debug-xros"];
  [v2 setObject:v10 forKey:@"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts/Tests/0/Debug-xros"];

  v11 = objc_alloc_init(NSMutableSet);
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
  componentsCopy = components;
  v5 = +[NSMutableSet set];
  v6 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"appIconLayout"];
  v12[0] = v6;
  v7 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"dockLayout"];
  v12[1] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:2];

  v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponentsFromManifest:componentsCopy];

  [v5 addObjectsFromArray:v8];
  [v5 addObjectsFromArray:v9];
  v10 = [NSSet setWithSet:v5];

  return v10;
}

- (id)getAllowedISTSignedComponentsFromManifest:(id)manifest
{
  manifestCopy = manifest;
  v4 = +[NSMutableArray array];
  [v4 addObject:@"com.apple.ist.DigitalCatalog"];
  [v4 addObject:@"com.apple.ist.demoloop"];
  [v4 addObject:@"com.apple.ist.windward"];
  [v4 addObject:@"com.apple.ist.DemoDiscoveryApp"];
  [v4 addObject:@"com.apple.ist.DigitalSignage.iOS"];
  [v4 addObject:@"com.retailtech.arkenstone"];
  v5 = +[NSMutableArray array];
  v24 = manifestCopy;
  v27 = [manifestCopy objectForKeyedSubscript:@"Apps"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
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
                    for (i = 0; i != v18; i = i + 1)
                    {
                      if (*v34 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = [NSString stringWithFormat:@"%@.%@", v15, *(*(&v33 + 1) + 8 * i)];
                      [v5 addObject:v21];
                    }

                    v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v18);
                }

                v13 = v30;
                v10 = v31;
                v12 = v32;
              }

              v14 = v14 + 1;
            }

            while (v14 != v12);
            v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        v6 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v28);
  }

  v22 = [NSArray arrayWithArray:v5];

  return v22;
}

- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name
{
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
                  for (i = 0; i != v17; i = i + 1)
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
                        for (j = 0; j != v22; j = j + 1)
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
                    v32 = sub_100021268(v27);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543874;
                      v61 = v31;
                      v62 = 2114;
                      v63 = v34;
                      v64 = 2114;
                      v65 = v41;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Excluding %{public}@ from section: %{public}@ component:%{public}@", buf, 0x20u);
                    }

                    v27 = [v14 removeObjectForKey:v31];
                    v30 = v30 + 1;
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

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [sectionCopy countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v9);
  }
}

- (__SecKey)createPublicKeyAppleISTSigning:(id)signing
{
  signingCopy = signing;
  commonName = 0;
  v6 = sub_100021268(signingCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Verifying AppleIST certificate\n", buf, 2u);
  }

  DemoDigitalCatalogSigning = SecPolicyCreateDemoDigitalCatalogSigning();
  if (!DemoDigitalCatalogSigning)
  {
    v32 = sub_100021268(0);
    if (sub_10001124C(v32))
    {
      *buf = 136315138;
      v58 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      sub_10000C334();
LABEL_38:
      _os_log_error_impl(v33, v34, v35, v36, v37, v38);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v8 = DemoDigitalCatalogSigning;
  v9 = [signingCopy count];
  if (v9 != 2)
  {
    v39 = sub_100021268(v9);
    if (sub_10001124C(v39))
    {
      *buf = 0;
LABEL_37:
      sub_100011224();
      goto LABEL_38;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_35;
  }

  v10 = [signingCopy objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v3 = [signingCopy objectAtIndex:0];
  bytes = [(__CFString *)v3 bytes];
  v13 = [signingCopy objectAtIndex:0];
  v14 = CFDataCreate(kCFAllocatorDefault, bytes, [v13 length]);

  if (!v14)
  {
    v40 = sub_100021268(v15);
    if (!sub_10001124C(v40))
    {
      goto LABEL_23;
    }

    *buf = 0;
    goto LABEL_37;
  }

  SecCertificateCreateWithData(kCFAllocatorDefault, v14);
  v16 = SecCertificateCopyOrganizationalUnit();
  v3 = [(__CFString *)v16 objectAtIndex:0];
  v17 = [(__CFString *)v3 isEqualToString:@"1.2.840.113635.100.6.60"];

  if ((v17 & 1) == 0)
  {
    v41 = sub_100021268(v18);
    if (sub_10001124C(v41))
    {
      *buf = 138543362;
      v58 = v16;
      sub_10000C334();
LABEL_28:
      _os_log_error_impl(v42, v43, v44, v45, v46, v47);
    }

LABEL_35:
    v29 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  v19 = [signingCopy objectAtIndex:1];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) == 0)
  {
LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_15;
  }

  v21 = [signingCopy objectAtIndex:1];
  bytes2 = [v21 bytes];
  v23 = [signingCopy objectAtIndex:1];
  v3 = CFDataCreate(kCFAllocatorDefault, bytes2, [v23 length]);

  if (!v3)
  {
    v48 = sub_100021268(v24);
    if (sub_10001124C(v48))
    {
      *buf = 0;
      sub_100011224();
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v25 = SecCertificateCreateWithData(kCFAllocatorDefault, v3);
  SecCertificateCopyCommonName(v25, &commonName);
  v3 = commonName;
  v26 = [(__CFString *)v3 isEqualToString:@"DemoUnit CA"];
  if ((v26 & 1) == 0)
  {
    v49 = sub_100021268(v26);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = commonName;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v27 = CFDataCreate(kCFAllocatorDefault, byte_10005BAF8, dword_10005BE80);
  if (!v27)
  {
    v49 = sub_100021268(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v28 = SecCertificateCreateWithData(kCFAllocatorDefault, v27);
  if (!v28)
  {
    v49 = sub_100021268(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v58 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
LABEL_40:
    sub_10000C334();
    _os_log_error_impl(v50, v51, v52, v53, v54, v55);
    goto LABEL_34;
  }

  v29 = [NSArray arrayWithObjects:v28, 0];
  v30 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:v8 anchors:v29];
LABEL_14:

LABEL_15:
  return v30;
}

@end