@interface CWFAssetLocal
+ (BOOL)isValidAssetVersion:(id)version;
+ (BOOL)isValidOSVersion:(id)version;
+ (BOOL)isValidRestoreOSVersion:(id)version;
+ (char)compareOSVersion:(id)version withVersion:(id)withVersion;
+ (char)compareSUCoreRestoreVersion:(id)version withVersion:(id)withVersion;
+ (id)assetIDFromLocalURL:(id)l;
+ (id)restoreOSVersionFromOSVersion:(id)version;
- (BOOL)sanityCheckAssetBuildAttribute:(id)attribute;
- (BOOL)sanityCheckOSRestoreVersion:(id)version;
- (BOOL)sanityCheckOSVersion:(id)version;
- (BOOL)sanityCheckSKUVersion:(id)version;
- (CWFAssetLocal)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version attributes:(id)attributes rootCatalogInfo:(id)info localURL:(id)l;
- (id)getCoreWiFiCatalogDataFromMobileAssetFile:(id)file;
@end

@implementation CWFAssetLocal

+ (id)assetIDFromLocalURL:(id)l
{
  pathComponents = [l pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = &stru_1F5B8FC80;
  }

  else
  {
    v4 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
  }

  return v4;
}

+ (BOOL)isValidAssetVersion:(id)version
{
  v17 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:versionCopy];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    v11 = 136315650;
    v12 = "+[CWFAssetLocal isValidAssetVersion:]";
    v13 = 2112;
    v14 = versionCopy;
    if (v5)
    {
      v9 = @"YES";
    }

    v15 = 2112;
    v16 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 2, "[corewifi] %s: assetVersion: %@ valid: %@", &v11, 32);
  }

  objc_autoreleasePoolPop(v4);
  return v5 != 0;
}

+ (BOOL)isValidRestoreOSVersion:(id)version
{
  v17 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:versionCopy];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    v11 = 136315650;
    v12 = "+[CWFAssetLocal isValidRestoreOSVersion:]";
    v13 = 2112;
    v14 = versionCopy;
    if (v5)
    {
      v9 = @"YES";
    }

    v15 = 2112;
    v16 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 2, "[corewifi] %s: RestoreVersion: %@ valid: %@", &v11, 32);
  }

  objc_autoreleasePoolPop(v4);
  return v5 != 0;
}

+ (BOOL)isValidOSVersion:(id)version
{
  v20 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = objc_autoreleasePoolPush();
  v5 = [CWFAssetLocal restoreOSVersionFromOSVersion:versionCopy];
  v6 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v5];
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v12 = 136315906;
    v13 = "+[CWFAssetLocal isValidOSVersion:]";
    if (v6)
    {
      v10 = @"YES";
    }

    v14 = 2112;
    v15 = versionCopy;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] %s: osVersion: %@, restoreOSVersionString: %@, valid: %@", &v12, 42);
  }

  objc_autoreleasePoolPop(v4);
  return v6 != 0;
}

+ (id)restoreOSVersionFromOSVersion:(id)version
{
  v25 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = versionCopy;
  if (!versionCopy || ([versionCopy isEqual:&stru_1F5B8FC80] & 1) != 0 || (objc_msgSend(v4, "containsString:", @",") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7 = [v4 componentsSeparatedByString:@"."];
    v8 = [v7 count];
    if (v8 > 5)
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "+[CWFAssetLocal restoreOSVersionFromOSVersion:]";
        v23 = 2114;
        v24 = v4;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %s:too many elements in osVersion:%{public}@", &v21, 22);
      }

      v5 = 0;
    }

    else
    {
      v9 = v8;
      v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v11 = [v7 objectAtIndexedSubscript:0];
      v12 = [v11 isEqualToString:&stru_1F5B8FC80];

      if (v12)
      {
        [v10 appendString:@"0"];
      }

      else
      {
        v15 = [v7 objectAtIndexedSubscript:0];
        [v10 appendString:v15];
      }

      for (i = 1; i != 5; ++i)
      {
        if (i >= v9 || ([v7 objectAtIndexedSubscript:i], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", &stru_1F5B8FC80), v17, (v18 & 1) != 0))
        {
          v19 = @"0";
        }

        else
        {
          v19 = [v7 objectAtIndexedSubscript:i];
        }

        [v10 appendFormat:@".%@", v19];
      }

      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, 0", v10];
    }
  }

  return v5;
}

+ (char)compareOSVersion:(id)version withVersion:(id)withVersion
{
  withVersionCopy = withVersion;
  v6 = [CWFAssetLocal restoreOSVersionFromOSVersion:version];
  v7 = [CWFAssetLocal restoreOSVersionFromOSVersion:withVersionCopy];

  LOBYTE(withVersionCopy) = [CWFAssetLocal compareSUCoreRestoreVersion:v6 withVersion:v7];
  return withVersionCopy;
}

+ (char)compareSUCoreRestoreVersion:(id)version withVersion:(id)withVersion
{
  withVersionCopy = withVersion;
  versionCopy = version;
  v7 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:versionCopy];

  v8 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:withVersionCopy];
  if ([v7 isComparable:v8])
  {
    v9 = [v7 compare:v8];
    if (v9 == -1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = -2;
  }

  return v11;
}

- (BOOL)sanityCheckOSRestoreVersion:(id)version
{
  v46 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v5 = versionCopy;
  if (!versionCopy)
  {
    goto LABEL_60;
  }

  v6 = [versionCopy objectForKey:@"_OSRestoreVersionCompatibilities"];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = @"empty";
      if (!v7)
      {
        v28 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[OTA] %s: restoreVersionCompatibilities is %@", v44, 22);
    }

    goto LABEL_59;
  }

  v8 = MGCopyAnswer();
  v9 = v8;
  if (!v8 || [v8 isEqual:&stru_1F5B8FC80])
  {
    v20 = CWFGetOTAOSLog();
    if (v20)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = @"empty string";
      if (!v9)
      {
        v30 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v30;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[OTA] %s: deviceName is %@", v44, 22);
    }

    goto LABEL_58;
  }

  v10 = [v7 objectForKey:v9];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      restoreVersion = CWFGetOTAOSLog();
    }

    else
    {
      restoreVersion = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(restoreVersion, OS_LOG_TYPE_ERROR))
    {
      v32 = @"empty";
      if (!v11)
      {
        v32 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v32;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, restoreVersion, 16, "[OTA] %s: supportedBuildRange is %@", v44, 22, *v44, *&v44[8], v45);
    }

    goto LABEL_57;
  }

  v12 = [v11 objectForKey:@"_MinOSRestoreVersion"];
  firstSupportedBuild = self->_firstSupportedBuild;
  self->_firstSupportedBuild = v12;

  v14 = [v11 objectForKey:@"_MaxOSRestoreVersion"];
  lastSupportedBuild = self->_lastSupportedBuild;
  self->_lastSupportedBuild = v14;

  if (![CWFAssetLocal isValidRestoreOSVersion:self->_firstSupportedBuild]|| ![CWFAssetLocal isValidRestoreOSVersion:self->_lastSupportedBuild])
  {
    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      restoreVersion = CWFGetOTAOSLog();
    }

    else
    {
      restoreVersion = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(restoreVersion, OS_LOG_TYPE_ERROR))
    {
      v34 = self->_firstSupportedBuild;
      v35 = self->_lastSupportedBuild;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v34;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, restoreVersion, 16, "[OTA] %s: Malformed first or last supported builds. firstSupportedBuild: %@, lastSupportedBuild: %@", v44, 32, *v44, *&v44[8], v35);
    }

    goto LABEL_57;
  }

  if (([CWFAssetLocal compareOSRestoreVersion:self->_firstSupportedBuild withVersion:self->_lastSupportedBuild]- 1) <= 0xFDu)
  {
    v23 = CWFGetOTAOSLog();
    if (v23)
    {
      restoreVersion = CWFGetOTAOSLog();
    }

    else
    {
      restoreVersion = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(restoreVersion, OS_LOG_TYPE_ERROR))
    {
      v37 = self->_firstSupportedBuild;
      v38 = self->_lastSupportedBuild;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v37;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, restoreVersion, 16, "[OTA] %s: First build is larger than last build. firstSupportedBuild: %@, lastSupportedBuild: %@", v44, 32, *v44, *&v44[8], v38);
    }

    goto LABEL_57;
  }

  sharedDevice = [sub_1E0BFCECC() sharedDevice];
  restoreVersion = [sharedDevice restoreVersion];

  if (([CWFAssetLocal compareOSRestoreVersion:self->_firstSupportedBuild withVersion:restoreVersion]- 1) <= 0xFDu)
  {
    v24 = CWFGetOTAOSLog();
    if (v24)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v40 = self->_firstSupportedBuild;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v40;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[OTA] %s: First build is larger than current build firstSupportedBuild: %@, currentRestoreVersion: %@", v44, 32, *v44, *&v44[8], restoreVersion);
    }

    goto LABEL_56;
  }

  if (([CWFAssetLocal compareOSRestoreVersion:restoreVersion withVersion:self->_lastSupportedBuild]- 1) <= 0xFDu)
  {
    v26 = CWFGetOTAOSLog();
    if (v26)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v42 = self->_lastSupportedBuild;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSRestoreVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = restoreVersion;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[OTA] %s: Current build is larger than last supported build currentRestoreVersion: %@, lastSupportedBuild: %@", v44, 32, *v44, *&v44[8], v42);
    }

LABEL_56:

LABEL_57:
LABEL_58:

LABEL_59:
LABEL_60:
    v18 = 0;
    goto LABEL_61;
  }

  v18 = 1;
LABEL_61:

  return v18;
}

- (BOOL)sanityCheckOSVersion:(id)version
{
  v46 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v5 = versionCopy;
  if (!versionCopy)
  {
    goto LABEL_60;
  }

  v6 = [versionCopy objectForKey:@"_OSVersionCompatibilities"];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = @"empty";
      if (!v7)
      {
        v28 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[OTA] %s: OSVersionCompatibilities is %@", v44, 22);
    }

    goto LABEL_59;
  }

  v8 = MGCopyAnswer();
  v9 = v8;
  if (!v8 || [v8 isEqual:&stru_1F5B8FC80])
  {
    v20 = CWFGetOTAOSLog();
    if (v20)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = @"empty string";
      if (!v9)
      {
        v30 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v30;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[OTA] %s: deviceName is %@", v44, 22);
    }

    goto LABEL_58;
  }

  v10 = [v7 objectForKey:v9];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      productVersion = CWFGetOTAOSLog();
    }

    else
    {
      productVersion = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
    {
      v32 = @"empty";
      if (!v11)
      {
        v32 = @"nil";
      }

      *v44 = 136315394;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v32;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, productVersion, 16, "[OTA] %s: supportedOSRange is %@", v44, 22, *v44, *&v44[8], v45);
    }

    goto LABEL_57;
  }

  v12 = [v11 objectForKey:@"_MinOSVersion"];
  firstSupportedOS = self->_firstSupportedOS;
  self->_firstSupportedOS = v12;

  v14 = [v11 objectForKey:@"_MaxOSVersion"];
  lastSupportedOS = self->_lastSupportedOS;
  self->_lastSupportedOS = v14;

  if (![CWFAssetLocal isValidOSVersion:self->_firstSupportedOS]|| ![CWFAssetLocal isValidOSVersion:self->_lastSupportedOS])
  {
    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      productVersion = CWFGetOTAOSLog();
    }

    else
    {
      productVersion = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
    {
      v34 = self->_firstSupportedOS;
      v35 = self->_lastSupportedOS;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v34;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, productVersion, 16, "[OTA] %s: Malformed first or last supported OS Version. firstSupportedOS: %@, lastSupportedOS: %@", v44, 32, *v44, *&v44[8], v35);
    }

    goto LABEL_57;
  }

  if (([CWFAssetLocal compareOSVersion:self->_firstSupportedOS withVersion:self->_lastSupportedOS]- 1) <= 0xFDu)
  {
    v23 = CWFGetOTAOSLog();
    if (v23)
    {
      productVersion = CWFGetOTAOSLog();
    }

    else
    {
      productVersion = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
    {
      v37 = self->_firstSupportedOS;
      v38 = self->_lastSupportedOS;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v37;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, productVersion, 16, "[OTA] %s: First OS version is larger than last OS Version. firstSupportedOS: %@, lastSupportedOS: %@", v44, 32, *v44, *&v44[8], v38);
    }

    goto LABEL_57;
  }

  sharedDevice = [sub_1E0BFCECC() sharedDevice];
  productVersion = [sharedDevice productVersion];

  if (([CWFAssetLocal compareOSVersion:self->_firstSupportedOS withVersion:productVersion]- 1) <= 0xFDu)
  {
    v24 = CWFGetOTAOSLog();
    if (v24)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v40 = self->_firstSupportedOS;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = v40;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[OTA] %s: First OS Version is larger than current OS Version firstSupportedOS: %@, currentOSVersion: %@", v44, 32, *v44, *&v44[8], productVersion);
    }

    goto LABEL_56;
  }

  if (([CWFAssetLocal compareOSVersion:productVersion withVersion:self->_lastSupportedOS]- 1) <= 0xFDu)
  {
    v26 = CWFGetOTAOSLog();
    if (v26)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v42 = self->_lastSupportedOS;
      *v44 = 136315650;
      *&v44[4] = "[CWFAssetLocal sanityCheckOSVersion:]";
      *&v44[12] = 2112;
      *&v44[14] = productVersion;
      *&v44[22] = 2112;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[OTA] %s: Current OS Version is larger than last supported OS Version currentOSVersion: %@, lastSupportedOS: %@", v44, 32, *v44, *&v44[8], v42);
    }

LABEL_56:

LABEL_57:
LABEL_58:

LABEL_59:
LABEL_60:
    v18 = 0;
    goto LABEL_61;
  }

  v18 = 1;
LABEL_61:

  return v18;
}

- (BOOL)sanityCheckSKUVersion:(id)version
{
  v24 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if (versionCopy)
  {
    v4 = MGCopyAnswer();
    v5 = +[CWFAssetPowerTable getDeviceSKU];
    v6 = [versionCopy objectForKey:@"WiFiSKU"];
    v7 = v6;
    if (v6 && [v6 count] && v5 && objc_msgSend(v5, "length"))
    {
      v8 = [v7 objectForKey:v4];
      v9 = v8;
      if (v8 && [v8 count])
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
        uTF8String = [v10 UTF8String];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = v9;
        v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v9);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              if (!strcmp([v16 UTF8String], uTF8String))
              {

                goto LABEL_19;
              }
            }

            v13 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_17;
      }

LABEL_19:
    }

    v17 = 1;
    goto LABEL_21;
  }

LABEL_17:
  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)sanityCheckAssetBuildAttribute:(id)attribute
{
  v3 = [attribute objectForKey:@"Build"];
  v4 = v3 != 0;

  return v4;
}

- (id)getCoreWiFiCatalogDataFromMobileAssetFile:(id)file
{
  v31 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [fileCopy path];
  v7 = [defaultManager fileExistsAtPath:path];

  if ((v7 & 1) == 0)
  {
    v20 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      path2 = [fileCopy path];
      v25 = 136446722;
      v26 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v27 = 1024;
      v28 = 326;
      v29 = 2112;
      v30 = path2;
      _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Path doesn't exist %@", &v25, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_22;
  }

  uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
  v8URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
  v10 = [v8URLByDeletingLastPathComponent URLByAppendingPathComponent:@"com_apple_MobileAsset_CoreWiFi.xml"];

  path3 = [v10 path];
  LOBYTE(v8URLByDeletingLastPathComponent) = [defaultManager fileExistsAtPath:path3];

  if ((v8URLByDeletingLastPathComponent & 1) == 0)
  {
    v22 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      path4 = [v10 path];
      v25 = 136446722;
      v26 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v27 = 1024;
      v28 = 329;
      v29 = 2112;
      v30 = path4;
      v24 = "%{public}s::%d:Core WiFi Mobile Asset Catalog XML File doesn't exist %@";
LABEL_20:
      _os_log_impl(&dword_1E0BBF000, v22, OS_LOG_TYPE_ERROR, v24, &v25, 0x1Cu);
    }

LABEL_21:

LABEL_22:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v10];
  if (!v12)
  {
    v22 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      path4 = [v10 path];
      v25 = 136446722;
      v26 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v27 = 1024;
      v28 = 332;
      v29 = 2112;
      v30 = path4;
      v24 = "%{public}s::%d:Core WiFi Mobile Asset Catalog XML File Empty %@";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:@"lastTimeChecked"];

  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:@"lastTimeChecked"];
    [dictionary setObject:v15 forKeyedSubscript:@"lastTimeChecked"];
  }

  v16 = [v13 objectForKeyedSubscript:@"postedDate"];

  if (v16)
  {
    v17 = [v13 objectForKeyedSubscript:@"postedDate"];
    [dictionary setObject:v17 forKeyedSubscript:@"postedDate"];
  }

LABEL_8:
  v18 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136446722;
    v26 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
    v27 = 1024;
    v28 = 344;
    v29 = 2112;
    v30 = dictionary;
    _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Core WiFi Mobile Asset Catalog XML Data %@", &v25, 0x1Cu);
  }

  return dictionary;
}

- (CWFAssetLocal)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version attributes:(id)attributes rootCatalogInfo:(id)info localURL:(id)l
{
  v94 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  attributesCopy = attributes;
  infoCopy = info;
  lCopy = l;
  v87.receiver = self;
  v87.super_class = CWFAssetLocal;
  v20 = [(CWFAssetLocal *)&v87 init];
  v85 = infoCopy;
  v86 = specifierCopy;
  v82 = typeCopy;
  if (v20)
  {
    v21 = [typeCopy copy];
    assetType = v20->_assetType;
    v20->_assetType = v21;

    v23 = [lCopy copy];
    localURL = v20->_localURL;
    v20->_localURL = v23;

    if (infoCopy)
    {
      v25 = infoCopy;
      [v25 objectForKeyedSubscript:@"RootAssetID"];
    }

    else
    {
      v25 = [(CWFAssetLocal *)v20 getCoreWiFiCatalogDataFromMobileAssetFile:lCopy];
      [CWFAssetLocal assetIDFromLocalURL:lCopy];
    }
    v26 = ;
    assetID = v20->_assetID;
    v20->_assetID = v26;

    v28 = [v25 objectForKeyedSubscript:@"lastTimeChecked"];

    if (v28)
    {
      v29 = [v25 objectForKeyedSubscript:@"lastTimeChecked"];
      lastTimeCatalogChecked = v20->_lastTimeCatalogChecked;
      v20->_lastTimeCatalogChecked = v29;
    }

    v31 = [v25 objectForKeyedSubscript:@"postedDate"];

    if (v31)
    {
      v32 = [v25 objectForKeyedSubscript:@"postedDate"];
      catalogPostedDate = v20->_catalogPostedDate;
      v20->_catalogPostedDate = v32;
    }

    v80 = versionCopy;
    v34 = [CWFAssetLocal isValidAssetVersion:versionCopy];
    v84 = v25;
    if (specifierCopy)
    {
      v35 = +[CWFAssetPowerTable sharedObj];
      assetSpecifierToTrack = [v35 assetSpecifierToTrack];
      v37 = [specifierCopy isEqual:assetSpecifierToTrack] ^ 1;
    }

    else
    {
      v37 = 1;
    }

    v38 = [(CWFAssetLocal *)v20 sanityCheckOSVersion:attributesCopy];
    v39 = [(CWFAssetLocal *)v20 sanityCheckOSRestoreVersion:attributesCopy];
    v81 = [(CWFAssetLocal *)v20 sanityCheckSKUVersion:attributesCopy];
    v83 = [(CWFAssetLocal *)v20 sanityCheckAssetBuildAttribute:attributesCopy];
    if (infoCopy)
    {
      v40 = infoCopy;
      v41 = MEMORY[0x1E696AEC0];
      v42 = [attributesCopy objectForKey:@"Build"];
      v43 = [v40 objectForKeyedSubscript:@"RootAssetID"];
      v44 = [v41 stringWithFormat:@"Root_%@_%@", v42, v43];
      assetBuild = v20->_assetBuild;
      v20->_assetBuild = v44;
    }

    else
    {
      v46 = [attributesCopy objectForKey:@"Build"];
      v42 = v20->_assetBuild;
      v20->_assetBuild = v46;
    }

    if (!v34)
    {
      v61 = CWFGetOTAOSLog();
      if (v61)
      {
        v62 = CWFGetOTAOSLog();
      }

      else
      {
        v62 = MEMORY[0x1E69E9C10];
        v70 = MEMORY[0x1E69E9C10];
      }

      versionCopy = v80;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315394;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v90 = 2112;
        v91 = v80;
        LODWORD(v79) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v62, 16, "[OTA] %s: assetVersion:%@ is nil or malformed", &v88, v79);
      }

      v55 = 0;
      v56 = 0;
      goto LABEL_70;
    }

    versionCopy = v80;
    v47 = [v80 copy];
    assetVersion = v20->_assetVersion;
    v20->_assetVersion = v47;

    if (v37)
    {
      v63 = CWFGetOTAOSLog();
      if (v63)
      {
        v64 = CWFGetOTAOSLog();
      }

      else
      {
        v64 = MEMORY[0x1E69E9C10];
        v71 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v72 = +[CWFAssetPowerTable sharedObj];
        assetSpecifierToTrack2 = [v72 assetSpecifierToTrack];
        v88 = 136315650;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v90 = 2112;
        v91 = v86;
        v92 = 2112;
        v93 = assetSpecifierToTrack2;
        LODWORD(v79) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v64, 16, "[OTA] %s: assetSpecifier:%@ is nil or malformed, or doesn't match required %@", &v88, v79);
      }

      v56 = 0;
      v55 = 1;
      versionCopy = v80;
      goto LABEL_70;
    }

    v49 = CWFGetOTAOSLog();
    v50 = v49;
    if (attributesCopy)
    {
      if (v38)
      {
        if (v39)
        {
          if (v81)
          {
            if (v49)
            {
              v51 = CWFGetOTAOSLog();
            }

            else
            {
              v51 = MEMORY[0x1E69E9C10];
              v52 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [(CWFAssetLocal *)v20 description];
              v88 = 136315394;
              v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
              v90 = 2112;
              v91 = v53;
              LODWORD(v79) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v51, 0, "[OTA] %s: Initialized CWFAssetLocal %@", &v88, v79);
            }

            v54 = 1;
            v39 = 1;
            v38 = 1;
            v55 = 1;
            v56 = 1;
          }

          else
          {
            if (v49)
            {
              v68 = CWFGetOTAOSLog();
            }

            else
            {
              v68 = MEMORY[0x1E69E9C10];
              v77 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v88 = 136315138;
              v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v68, 16, "[OTA] %s: sanityCheckSKUVersion failed.", &v88);
            }

            v54 = 0;
            v56 = 0;
            v39 = 1;
            v38 = 1;
            v55 = 1;
          }

          goto LABEL_27;
        }

        if (v49)
        {
          v67 = CWFGetOTAOSLog();
        }

        else
        {
          v67 = MEMORY[0x1E69E9C10];
          v76 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v88 = 136315138;
          v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v67, 16, "[OTA] %s: sanityCheckOSRestoreVersion failed.", &v88);
        }

        v39 = 0;
        v56 = 0;
        v38 = 1;
        goto LABEL_69;
      }

      if (v49)
      {
        v66 = CWFGetOTAOSLog();
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
        v75 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315138;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v66, 16, "[OTA] %s: sanityCheckOSVersion failed.", &v88);
      }

      v38 = 0;
    }

    else
    {
      if (v49)
      {
        v65 = CWFGetOTAOSLog();
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
        v74 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315138;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 16, "[OTA] %s: localAsset.attributes is nil", &v88);
      }
    }

    v56 = 0;
LABEL_69:
    v55 = 1;
LABEL_70:
    v54 = v81;
    goto LABEL_27;
  }

  v59 = CWFGetOTAOSLog();
  if (v59)
  {
    v60 = CWFGetOTAOSLog();
  }

  else
  {
    v60 = MEMORY[0x1E69E9C10];
    v69 = MEMORY[0x1E69E9C10];
  }

  v84 = v60;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v88 = 136315138;
    v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v60, 16, "[OTA] %s: Failed to super init", &v88);
  }

  v83 = 0;
  v54 = 0;
  v39 = 0;
  v38 = 0;
  v55 = 0;
  v56 = 0;
LABEL_27:

  v57 = +[CWFAssetPowerTableTelemetry sharedObj];
  BYTE4(v78) = v83;
  BYTE3(v78) = v54;
  BYTE2(v78) = v39;
  BYTE1(v78) = v38;
  LOBYTE(v78) = v55;
  [v57 setAssetLocalInfo:v82 assetSpecifier:v86 assetVersion:versionCopy assetBuild:v20->_assetBuild lastTimeCatalogChecked:v20->_lastTimeCatalogChecked catalogPostedDate:v20->_catalogPostedDate assetVersionSanity:v78 osVersionSanity:attributesCopy osRestoreVersionSanity:lCopy skuSanity:? sanityCheckAssetBuildAttribute:? attributes:? localURL:?];

  if ((v56 & 1) == 0)
  {

    v20 = 0;
  }

  return v20;
}

@end