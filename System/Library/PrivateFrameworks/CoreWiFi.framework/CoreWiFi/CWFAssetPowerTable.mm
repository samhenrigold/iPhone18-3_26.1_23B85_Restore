@interface CWFAssetPowerTable
+ (BOOL)isChipsetDownloadOnly;
+ (BOOL)isChipsetFullySupported;
+ (BOOL)isSupportedDeviceClass;
+ (BOOL)isSupportedOTAPTDownloadOnly;
+ (BOOL)isSupportedOTAPTUpdate;
+ (BOOL)shouldAllowTestingOnUnSupportedChipset;
+ (id)currentLatestAssetVersion;
+ (id)currentLatestPowerTableAssemblyDate;
+ (id)currentLatestPowerTableAssemblyDateFromPT:(id)t;
+ (id)currentLatestPowerTableVersion;
+ (id)currentLatestPowerTableVersionFromPT:(id)t;
+ (id)currentLatestPowerTableVersionInfoDict;
+ (id)getDeviceSKU;
+ (id)getPowerTableAssemblyDateFromDict:(id)dict;
+ (id)getPowerTableVersionFromDict:(id)dict;
+ (id)getPowerTableVersionInfoDict:(id)dict;
+ (id)sharedObj;
- (CWFAssetPowerTable)init;
- (id)assetSpecifierToTrack;
- (id)description;
- (id)transferAssetFromSrc:(id)src toDst:(id)dst withAsseID:(id)d withVersion:(id)version assetBuild:(id)build firstSupportedOS:(id)s lastSupportedOS:(id)oS firstSupportedBuild:(id)self0 lastSupportedBuild:(id)self1 ptVersionInfo:(id)self2 lastTimeCatalogChecked:(id)self3 catalogPostedDate:(id)self4;
- (void)createTopLevelDir;
- (void)garbageCollectWithNewAsset:(id)asset prevAsset:(id)prevAsset;
- (void)processLocalAsset:(id)asset;
@end

@implementation CWFAssetPowerTable

- (CWFAssetPowerTable)init
{
  v12 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CWFAssetPowerTable;
  v2 = [(CWFAssetPowerTable *)&v5 init];
  if (v2)
  {
    if (MEMORY[0x1EEE84668])
    {
      v3 = objc_alloc_init(CWFAssetPowerTableElectionManager);
      [(CWFAssetPowerTable *)v2 set_elector:v3];
    }

    else
    {
      v3 = CWFGetOTAOSLog();
      if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v7 = "[CWFAssetPowerTable init]";
        v8 = 1024;
        v9 = 95;
        v10 = 2080;
        v11 = "[CWFAssetPowerTable init]";
        _os_log_impl(&dword_1E0BBF000, &v3->super.super, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: No elector, symbols not found", buf, 0x1Cu);
      }
    }
  }

  return v2;
}

+ (id)sharedObj
{
  if (qword_1ED7E3AA8 != -1)
  {
    dispatch_once(&qword_1ED7E3AA8, &unk_1F5B89DB0);
  }

  v3 = qword_1ED7E3AA0;

  return v3;
}

- (id)assetSpecifierToTrack
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  if (!v3 || [(NSString *)v3 isEqualToString:&stru_1F5B8FC80])
  {
    v9 = CWFGetOTAOSLog();
    if (v9)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[CWFAssetPowerTable assetSpecifierToTrack]";
      v23 = 2112;
      v24 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA] %s: wifiChipSet is '%@'", &v21, 22);
    }

    goto LABEL_39;
  }

  if (!v4 || [(NSString *)v4 isEqualToString:&stru_1F5B8FC80])
  {
    v11 = CWFGetOTAOSLog();
    if (v11)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[CWFAssetPowerTable assetSpecifierToTrack]";
      v23 = 2112;
      v24 = v4;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA] %s: wifiChipSetRevision is '%@'", &v21, 22);
    }

    goto LABEL_39;
  }

  if ([(NSString *)v4 containsString:@"="])
  {
    v5 = [(NSString *)v4 stringByReplacingOccurrencesOfString:@"=" withString:@"EQ"];

    v4 = v5;
  }

  if (+[CWFAssetPowerTable isChipsetDownloadOnly]&& !self->_powerTableAPIMajorVersion)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"PowerTable", v3, v4, v20];
    goto LABEL_13;
  }

  if (!+[CWFAssetPowerTable isChipsetFullySupported])
  {
    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[CWFAssetPowerTable assetSpecifierToTrack]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA] %s: Chipset not fully supported.", &v21);
    }

LABEL_39:

    goto LABEL_40;
  }

  powerTableAPIMajorVersion = self->_powerTableAPIMajorVersion;
  if (powerTableAPIMajorVersion && ![(NSString *)powerTableAPIMajorVersion isEqualToString:&stru_1F5B8FC80])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@_%@", @"PowerTable", v3, v4, self->_powerTableAPIMajorVersion];
    v7 = LABEL_13:;
    goto LABEL_14;
  }

  v12 = CWFGetOTAOSLog();
  if (v12)
  {
    v13 = CWFGetOTAOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = self->_powerTableAPIMajorVersion;
    v21 = 136315394;
    v22 = "[CWFAssetPowerTable assetSpecifierToTrack]";
    v23 = 2112;
    v24 = v18;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA] %s: powerTableAPIMajorVersion is '%@'", &v21, 22);
  }

LABEL_40:
  v7 = 0;
LABEL_14:

  return v7;
}

+ (BOOL)isChipsetFullySupported
{
  v2 = CWFHashedChipsetName();
  v3 = [&unk_1F5BB9DA8 containsObject:v2];

  if (v3)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](CWFAssetPowerTable, sel_shouldAllowTestingOnUnSupportedChipset);
}

+ (BOOL)isChipsetDownloadOnly
{
  v2 = CWFHashedChipsetName();
  v3 = [&unk_1F5BB9DC0 containsObject:v2];

  return v3;
}

+ (BOOL)isSupportedDeviceClass
{
  v2 = MGCopyAnswer();
  v3 = [&unk_1F5BB9DD8 containsObject:v2];

  return v3;
}

+ (BOOL)isSupportedOTAPTUpdate
{
  v2 = +[CWFAssetPowerTable isSupportedDeviceClass];
  if (v2)
  {

    LOBYTE(v2) = +[CWFAssetPowerTable isChipsetFullySupported];
  }

  return v2;
}

+ (BOOL)isSupportedOTAPTDownloadOnly
{
  v2 = +[CWFAssetPowerTable isSupportedDeviceClass];
  if (v2)
  {

    LOBYTE(v2) = +[CWFAssetPowerTable isChipsetDownloadOnly];
  }

  return v2;
}

+ (BOOL)shouldAllowTestingOnUnSupportedChipset
{
  v2 = MGCopyAnswer();
  bOOLValue = [v2 BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"OTAPowerTableAllowTestingOnUnSupportedChipset"];

  return v5;
}

+ (id)getDeviceSKU
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = v2;
  if (!v2)
  {
    v11 = CWFGetOTAOSLog();
    if (v11)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 16, "[OTA] %s: deviceSKUdata = nil", v16);
    }

    goto LABEL_28;
  }

  if ([v2 length] != 16)
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v3 length];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 16, "[OTA] %s: incorrect length %lu", v16, 22);
    }

LABEL_28:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = [v3 subdataWithRange:{8, 8}];
  v5 = v4;
  if (v4 && [v4 length] == 8)
  {
    v6 = CWFGetOTAOSLog();
    if (v6)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      *&v16[4] = "+[CWFAssetPowerTable getDeviceSKU]";
      *&v16[12] = 2112;
      *&v16[14] = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[OTA] %s: deviceSKUdata = %@ ", v16, 22, *v16, *&v16[8], v17);
    }
  }

  else
  {
    v10 = CWFGetOTAOSLog();
    if (v10)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "+[CWFAssetPowerTable getDeviceSKU]";
      *&v16[12] = 2112;
      *&v16[14] = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 16, "[OTA] %s: deviceSKUdata = nil or lesser bytes, %@ ", v16, 22, *v16, *&v16[8], v17);
    }
  }

LABEL_10:

  return v5;
}

+ (id)getPowerTableVersionFromDict:(id)dict
{
  v26 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = dictCopy;
  if (!dictCopy)
  {
    v17 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v22 = 1024;
      v23 = 215;
      _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:infoDict doesn't exist", &v20, 0x12u);
    }

    v10 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  allKeys = [dictCopy allKeys];
  v6 = allKeys;
  if (!allKeys || ![allKeys count])
  {
    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v22 = 1024;
      v23 = 218;
      v24 = 2112;
      v25 = v4;
      v16 = "%{public}s::%d:infoDict bad %@";
LABEL_16:
      _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_ERROR, v16, &v20, 0x1Cu);
    }

LABEL_17:

    v10 = 0;
    v8 = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_8;
  }

  lastObject = [v6 lastObject];
  if (!lastObject)
  {
    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v22 = 1024;
      v23 = 221;
      v24 = 2112;
      v25 = v4;
      v16 = "%{public}s::%d:lastKey bad %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v8 = lastObject;
  v9 = [v4 objectForKeyedSubscript:lastObject];
  if (!v9)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v22 = 1024;
      v23 = 224;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v20, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"TableVersion"];

  if (!v11)
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v22 = 1024;
      v23 = 226;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v20, 0x1Cu);
    }

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"TableVersion"];
LABEL_8:
  v13 = v12;

  return v12;
}

+ (id)getPowerTableAssemblyDateFromDict:(id)dict
{
  v26 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = dictCopy;
  if (!dictCopy)
  {
    v17 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v22 = 1024;
      v23 = 241;
      _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:infoDict doesn't exist", &v20, 0x12u);
    }

    v10 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  allKeys = [dictCopy allKeys];
  v6 = allKeys;
  if (!allKeys || ![allKeys count])
  {
    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v22 = 1024;
      v23 = 244;
      v24 = 2112;
      v25 = v4;
      v16 = "%{public}s::%d:infoDict bad %@";
LABEL_16:
      _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_ERROR, v16, &v20, 0x1Cu);
    }

LABEL_17:

    v10 = 0;
    v8 = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_8;
  }

  lastObject = [v6 lastObject];
  if (!lastObject)
  {
    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v22 = 1024;
      v23 = 247;
      v24 = 2112;
      v25 = v4;
      v16 = "%{public}s::%d:lastKey bad %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v8 = lastObject;
  v9 = [v4 objectForKeyedSubscript:lastObject];
  if (!v9)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v22 = 1024;
      v23 = 250;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v20, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"TableDate"];

  if (!v11)
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v22 = 1024;
      v23 = 252;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v20, 0x1Cu);
    }

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"TableDate"];
LABEL_8:
  v13 = v12;

  return v12;
}

+ (id)currentLatestPowerTableVersion
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  if (v2)
  {
    v3 = [CWFAssetPowerTable getPowerTableVersionFromDict:v2];
  }

  else
  {
    v5 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446466;
      v7 = "+[CWFAssetPowerTable currentLatestPowerTableVersion]";
      v8 = 1024;
      v9 = 265;
      _os_log_impl(&dword_1E0BBF000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:currentLatestPowerTableVersionInfoDict doesn't exist", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)currentLatestPowerTableAssemblyDate
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  if (v2)
  {
    v3 = [CWFAssetPowerTable getPowerTableAssemblyDateFromDict:v2];
  }

  else
  {
    v5 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446466;
      v7 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDate]";
      v8 = 1024;
      v9 = 278;
      _os_log_impl(&dword_1E0BBF000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:currentLatestPowerTableVersionInfoDict doesn't exist", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)currentLatestPowerTableVersionFromPT:(id)t
{
  v21 = *MEMORY[0x1E69E9840];
  tCopy = t;
  v4 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  v5 = [v4 objectForKeyedSubscript:tCopy];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:tCopy];
    v7 = [v6 objectForKeyedSubscript:@"TableVersion"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:tCopy];
      v9 = [v8 objectForKeyedSubscript:@"TableVersion"];

      goto LABEL_4;
    }

    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "+[CWFAssetPowerTable currentLatestPowerTableVersionFromPT:]";
      v15 = 1024;
      v16 = 293;
      v17 = 2112;
      v18 = tCopy;
      v19 = 2112;
      v20 = @"TableVersion";
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't have %@ key", &v13, 0x26u);
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "+[CWFAssetPowerTable currentLatestPowerTableVersionFromPT:]";
      v15 = 1024;
      v16 = 291;
      v17 = 2112;
      v18 = tCopy;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't exist", &v13, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_4:

  return v9;
}

+ (id)currentLatestPowerTableAssemblyDateFromPT:(id)t
{
  v21 = *MEMORY[0x1E69E9840];
  tCopy = t;
  v4 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  v5 = [v4 objectForKeyedSubscript:tCopy];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:tCopy];
    v7 = [v6 objectForKeyedSubscript:@"TableDate"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:tCopy];
      v9 = [v8 objectForKeyedSubscript:@"TableDate"];

      goto LABEL_4;
    }

    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDateFromPT:]";
      v15 = 1024;
      v16 = 308;
      v17 = 2112;
      v18 = tCopy;
      v19 = 2112;
      v20 = @"TableDate";
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't have %@ key", &v13, 0x26u);
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDateFromPT:]";
      v15 = 1024;
      v16 = 306;
      v17 = 2112;
      v18 = tCopy;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't exist", &v13, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_4:

  return v9;
}

+ (id)currentLatestPowerTableVersionInfoDict
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v17[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v17[1] = @"WiFi/";
  v17[2] = @"wifi_powertable_info.plist";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v4 = [v2 fileURLWithPathComponents:v3];

  v5 = [CWFAssetPowerTable getPowerTableVersionInfoDict:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v9 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      path = [v4 path];
      v11 = 136446722;
      v12 = "+[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict]";
      v13 = 1024;
      v14 = 325;
      v15 = 2112;
      v16 = path;
      _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Power table version info file empty %@", &v11, 0x1Cu);
    }
  }

  return v6;
}

+ (id)getPowerTableVersionInfoDict:(id)dict
{
  v19 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [dictCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:dictCopy];
    if (v7)
    {
      v8 = v7;
      goto LABEL_4;
    }

    v10 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path2 = [dictCopy path];
      v13 = 136446722;
      v14 = "+[CWFAssetPowerTable getPowerTableVersionInfoDict:]";
      v15 = 1024;
      v16 = 342;
      v17 = 2112;
      v18 = path2;
      v12 = "%{public}s::%d:Power table version info file empty %@";
      goto LABEL_11;
    }
  }

  else
  {
    v10 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path2 = [dictCopy path];
      v13 = 136446722;
      v14 = "+[CWFAssetPowerTable getPowerTableVersionInfoDict:]";
      v15 = 1024;
      v16 = 339;
      v17 = 2112;
      v18 = path2;
      v12 = "%{public}s::%d:Path doesn't exist %@";
LABEL_11:
      _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_ERROR, v12, &v13, 0x1Cu);
    }
  }

  v8 = 0;
LABEL_4:

  return v8;
}

- (void)createTopLevelDir
{
  v29 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/"])
  {
    v3 = 0;
  }

  else
  {
    v4 = CWFGetOTAOSLog();
    if (v4)
    {
      v5 = CWFGetOTAOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315394;
      v24 = "[CWFAssetPowerTable createTopLevelDir]";
      v25 = 2112;
      v26 = @"/private/var/db/ConnectivityPowerTableUpdates/";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 2, "[OTA] %s: createTopLevelDir %@ not found, calling createDirectoryAtPath", &v23, 22);
    }

    v20 = 0;
    v7 = [defaultManager createDirectoryAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/" withIntermediateDirectories:0 attributes:0 error:&v20];
    v3 = v20;
    if ((v7 & 1) == 0)
    {
      v8 = CWFGetOTAOSLog();
      if (v8)
      {
        v9 = CWFGetOTAOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315650;
        v24 = "[CWFAssetPowerTable createTopLevelDir]";
        v25 = 2112;
        v26 = @"/private/var/db/ConnectivityPowerTableUpdates/";
        v27 = 2112;
        v28 = v3;
        LODWORD(v18) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[OTA] %s: Failed to create new folder %@, error: %@", &v23, v18);
      }
    }
  }

  v11 = *MEMORY[0x1E696A328];
  v21[0] = *MEMORY[0x1E696A360];
  v21[1] = v11;
  v22[0] = @"mobile";
  v22[1] = @"mobile";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = v3;
  v13 = [defaultManager setAttributes:v12 ofItemAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/" error:&v19];
  v14 = v19;

  if ((v13 & 1) == 0)
  {
    v15 = CWFGetOTAOSLog();
    if (v15)
    {
      v16 = CWFGetOTAOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[CWFAssetPowerTable createTopLevelDir]";
      v25 = 2112;
      v26 = @"/private/var/db/ConnectivityPowerTableUpdates/";
      v27 = 2112;
      v28 = v14;
      LODWORD(v18) = 32;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[OTA] %s: Not able to change ownership of %@, error: %@", &v23, v18);
    }
  }
}

- (void)processLocalAsset:(id)asset
{
  v68[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = objc_autoreleasePoolPush();
  v6 = CWFGetOTAOSLog();
  if (v6)
  {
    v7 = CWFGetOTAOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 136315138;
    v48 = "[CWFAssetPowerTable processLocalAsset:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[OTA] %s: Entered", &v47);
  }

  if (assetCopy)
  {
    if (+[CWFAssetPowerTable isChipsetDownloadOnly])
    {
      v9 = CWFGetOTAOSLog();
      if (v9)
      {
        v10 = CWFGetOTAOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v47 = 136315138;
        v48 = "[CWFAssetPowerTable processLocalAsset:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA] %s: Valid Asset but download only support, exiting without transferring asset to hand-off folder", &v47);
      }
    }

    else
    {
      v40 = v5;
      [(CWFAssetPowerTable *)self createTopLevelDir];
      localURL = [assetCopy localURL];
      selfCopy = self;
      v12 = MEMORY[0x1E695DFF8];
      v68[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
      v68[1] = @"WiFi/";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
      v43 = [v12 fileURLWithPathComponents:v13];

      assetID = [assetCopy assetID];
      assetVersion = [assetCopy assetVersion];
      assetBuild = [assetCopy assetBuild];
      firstSupportedBuild = [assetCopy firstSupportedBuild];
      lastSupportedBuild = [assetCopy lastSupportedBuild];
      firstSupportedOS = [assetCopy firstSupportedOS];
      lastSupportedOS = [assetCopy lastSupportedOS];
      v17 = MEMORY[0x1E695DFF8];
      localURL2 = [assetCopy localURL];
      path = [localURL2 path];
      v67[0] = path;
      v67[1] = @"wifi_powertable_info.plist";
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
      v21 = [v17 fileURLWithPathComponents:v20];
      v22 = [CWFAssetPowerTable getPowerTableVersionInfoDict:v21];

      lastTimeCatalogChecked = [assetCopy lastTimeCatalogChecked];
      catalogPostedDate = [assetCopy catalogPostedDate];
      v37 = lastSupportedBuild;
      v41 = lastSupportedBuild;
      v25 = firstSupportedOS;
      v26 = [(CWFAssetPowerTable *)selfCopy transferAssetFromSrc:localURL toDst:v43 withAsseID:assetID withVersion:assetVersion assetBuild:assetBuild firstSupportedOS:firstSupportedOS lastSupportedOS:lastSupportedOS firstSupportedBuild:firstSupportedBuild lastSupportedBuild:v37 ptVersionInfo:v22 lastTimeCatalogChecked:lastTimeCatalogChecked catalogPostedDate:catalogPostedDate];
      v27 = CWFGetOTAOSLog();
      if (v27)
      {
        v28 = CWFGetOTAOSLog();
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = @"Failed";
        v47 = 136317442;
        v48 = "[CWFAssetPowerTable processLocalAsset:]";
        if (!v26)
        {
          v32 = @"Successfull";
        }

        v49 = 2112;
        v50 = v32;
        v51 = 2112;
        v52 = localURL;
        v53 = 2112;
        v54 = assetID;
        v55 = 2112;
        v56 = assetVersion;
        v57 = 2112;
        v58 = v25;
        v59 = 2112;
        v60 = lastSupportedOS;
        v61 = 2112;
        v62 = firstSupportedBuild;
        v63 = 2112;
        v64 = v41;
        v65 = 2112;
        v66 = v26;
        LODWORD(v36) = 102;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 16, "[OTA] %s: %@: localURL: %@, assetID: %@, assetVersion: %@, firstSupportedOS: %@, lastSupportedOS: %@, firstSupportedBuild: %@, lastSupportedBuild: %@, error: %@", &v47, v36);
      }

      v33 = CWFGetOTAOSLog();
      if (v33)
      {
        v34 = CWFGetOTAOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315138;
        v48 = "[CWFAssetPowerTable processLocalAsset:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[OTA] %s: Exiting", &v47);
      }

      v5 = v40;
      v10 = localURL;
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (v11)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v47 = 136315138;
      v48 = "[CWFAssetPowerTable processLocalAsset:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA] %s: Existing, nil localAsset", &v47);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)transferAssetFromSrc:(id)src toDst:(id)dst withAsseID:(id)d withVersion:(id)version assetBuild:(id)build firstSupportedOS:(id)s lastSupportedOS:(id)oS firstSupportedBuild:(id)self0 lastSupportedBuild:(id)self1 ptVersionInfo:(id)self2 lastTimeCatalogChecked:(id)self3 catalogPostedDate:(id)self4
{
  v118[2] = *MEMORY[0x1E69E9840];
  srcCopy = src;
  dstCopy = dst;
  dCopy = d;
  versionCopy = version;
  buildCopy = build;
  sCopy = s;
  oSCopy = oS;
  v22 = dstCopy;
  supportedBuildCopy = supportedBuild;
  lastSupportedBuildCopy = lastSupportedBuild;
  infoCopy = info;
  checkedCopy = checked;
  dateCopy = date;
  v108 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v100 = [MEMORY[0x1E695DF00] now];
  selfCopy = self;
  ++self->numberOfCallsToCopyAsset;
  v107 = 0;
  LOBYTE(build) = [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v107];
  v25 = v107;
  v91 = supportedBuildCopy;
  v86 = defaultManager;
  v87 = v22;
  if (build)
  {
    v26 = MEMORY[0x1E695DFF8];
    path = [v22 path];
    v118[0] = path;
    v118[1] = dCopy;
    v92 = dCopy;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
    v29 = [v26 fileURLWithPathComponents:v28];

    v30 = +[CWFAssetPowerTable currentLatestAssetVersion];
    v103 = v29;
    path2 = [v29 path];
    LODWORD(path) = [defaultManager fileExistsAtPath:path2 isDirectory:&v108];

    v85 = v30;
    v88 = path;
    if (path)
    {
      v32 = versionCopy;
      if (v30 && ([v30 isEqual:versionCopy] & 1) != 0)
      {
        v78 = CWFGetOTAOSLog();
        if (v78)
        {
          v79 = CWFGetOTAOSLog();
        }

        else
        {
          v79 = MEMORY[0x1E69E9C10];
          v82 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
          v110 = 136315650;
          if (v108)
          {
            v83 = "YES";
          }

          else
          {
            v83 = "NO";
          }

          v112 = 2112;
          v113 = v103;
          v114 = 2080;
          v115 = v83;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v79, 0, "[OTA] %s: The URL %@ for new asset already exist, isDirectory:%s. Nothing to do, returning.", &v110, 32);
        }

        v58 = 0;
        v88 = 0;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v50 = 0;
        v90 = 0;
        v41 = 0;
        v57 = 1;
        goto LABEL_79;
      }

      ++self->numberOfTimesAssetExisted;
      v33 = CWFGetOTAOSLog();
      if (v33)
      {
        v34 = CWFGetOTAOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v110 = 136315650;
        if (v108)
        {
          v36 = "YES";
        }

        else
        {
          v36 = "NO";
        }

        v112 = 2112;
        v113 = v103;
        v114 = 2080;
        v115 = v36;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[OTA] %s: The URL %@ for new asset already exist, isDirectory:%s. Remvoing it.", &v110, 32);
      }

      v106 = v25;
      v37 = [defaultManager removeItemAtURL:v103 error:&v106];
      v38 = v106;

      if ((v37 & 1) == 0)
      {
        v69 = CWFGetOTAOSLog();
        if (v69)
        {
          v70 = CWFGetOTAOSLog();
        }

        else
        {
          v70 = MEMORY[0x1E69E9C10];
          v80 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v38 localizedDescription];
          v110 = 136315650;
          v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
          v112 = 2112;
          v113 = v103;
          v114 = 2112;
          v115 = localizedDescription;
          LODWORD(v84) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 16, "[OTA] %s: Failed to remove sub-dir %@ with error: %@", &v110, v84);
        }

        v58 = 0;
        v57 = 0;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v50 = 0;
        v90 = 0;
        v41 = 0;
        v88 = 1;
        goto LABEL_78;
      }

      v25 = v38;
      supportedBuildCopy = v91;
    }

    else
    {
      v32 = versionCopy;
    }

    v39 = v25;
    v105 = v25;
    v40 = [defaultManager copyItemAtURL:srcCopy toURL:v103 error:&v105];
    v25 = v105;

    if ((v40 & 1) == 0)
    {
      v64 = CWFGetOTAOSLog();
      if (v64)
      {
        v65 = CWFGetOTAOSLog();
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
        v73 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v25 localizedDescription];
        v110 = 136315906;
        v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v112 = 2112;
        v113 = srcCopy;
        v114 = 2112;
        v115 = v103;
        v116 = 2112;
        v117 = localizedDescription2;
        LODWORD(v84) = 42;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 16, "[OTA] %s: Failed to copy assets recursively from %@ to %@ with error: %@", &v110, v84);
      }

      v58 = 0;
      v57 = 0;
      v53 = 0;
      v54 = 0;
      v52 = 0;
      v50 = 0;
      v90 = 0;
      v41 = 0;
      goto LABEL_79;
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v41 setObject:v100 forKey:@"datePowerTableAvailable"];
    if (supportedBuildCopy && lastSupportedBuildCopy)
    {
      [v41 setObject:supportedBuildCopy forKey:@"_MinOSRestoreVersion"];
      [v41 setObject:lastSupportedBuildCopy forKey:@"_MaxOSRestoreVersion"];
    }

    [v41 setObject:sCopy forKey:@"_MinOSVersion"];
    [v41 setObject:oSCopy forKey:@"_MaxOSVersion"];
    [v41 setObject:v32 forKey:@"assetVersion"];
    if (buildCopy)
    {
      [v41 setObject:buildCopy forKey:@"Build"];
    }

    if (infoCopy)
    {
      [v41 setObject:infoCopy forKey:@"PowerTableVersionInfoDict"];
    }

    if (checkedCopy)
    {
      [v41 setObject:checkedCopy forKey:@"lastTimeChecked"];
    }

    if (dateCopy)
    {
      [v41 setObject:dateCopy forKey:@"postedDate"];
    }

    [v103 URLByAppendingPathComponent:@"Info.plist"];
    v90 = v104[1] = v25;
    v42 = [v41 writeToURL:? error:?];
    v38 = v25;

    v43 = CWFGetOTAOSLog();
    v44 = v43;
    if (v42)
    {
      if (v43)
      {
        v45 = CWFGetOTAOSLog();
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v110 = 136315650;
        v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v112 = 2112;
        v113 = v90;
        v114 = 2112;
        v115 = v41;
        LODWORD(v84) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 0, "[OTA] %s: Created .plist %@ with content %@", &v110, v84);
      }

      v47 = MEMORY[0x1E695DFF8];
      path3 = [v22 path];
      v109[0] = path3;
      v109[1] = @"Latest.plist";
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
      v50 = [v47 fileURLWithPathComponents:v49];

      v51 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v50];
      if (v51)
      {
        v52 = v51;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v51];
      }

      else
      {
        v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v52 setObject:v100 forKey:@"datePowerTableAvailable"];
        v53 = 0;
      }

      v54 = [v52 objectForKey:@"latestAssetSubDir"];
      [v52 setObject:v92 forKey:@"latestAssetSubDir"];
      [v52 setObject:v32 forKey:@"assetVersion"];
      if (buildCopy)
      {
        [v52 setObject:buildCopy forKey:@"Build"];
      }

      if (infoCopy)
      {
        [v52 setObject:infoCopy forKey:@"PowerTableVersionInfoDict"];
      }

      v104[0] = v38;
      v55 = [v52 writeToURL:v50 error:v104];
      v25 = v104[0];

      if (v55)
      {
        v56 = v92;
        [(CWFAssetPowerTable *)selfCopy garbageCollectWithNewAsset:v92 prevAsset:v54];
        v57 = 0;
        ++selfCopy->numberOfSuccessfullAssetCopy;
        v58 = 1;
        goto LABEL_43;
      }

      v67 = CWFGetOTAOSLog();
      if (v67)
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
        v110 = 136315906;
        v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v112 = 2112;
        v113 = v50;
        v114 = 2112;
        v115 = v52;
        v116 = 2112;
        v117 = v25;
        LODWORD(v84) = 42;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v68, 16, "[OTA] %s: Failed to update .plist %@ atomically with content %@ - error %@", &v110, v84);
      }

      v58 = 0;
      v57 = 0;
      goto LABEL_79;
    }

    if (v43)
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
      localizedDescription3 = [v38 localizedDescription];
      v110 = 136315906;
      v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
      v112 = 2112;
      v113 = v90;
      v114 = 2112;
      v115 = v41;
      v116 = 2112;
      v117 = localizedDescription3;
      LODWORD(v84) = 42;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v66, 16, "[OTA] %s: Failed to create .plist %@ with content %@ with error: %@", &v110, v84);
    }

    v58 = 0;
    v57 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v50 = 0;
LABEL_78:
    v25 = v38;
LABEL_79:
    v56 = v92;
    goto LABEL_43;
  }

  v62 = CWFGetOTAOSLog();
  if (v62)
  {
    v63 = CWFGetOTAOSLog();
  }

  else
  {
    v63 = MEMORY[0x1E69E9C10];
    v71 = MEMORY[0x1E69E9C10];
  }

  v56 = dCopy;

  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    localizedDescription4 = [v25 localizedDescription];
    v110 = 136315650;
    v111 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
    v112 = 2112;
    v113 = v22;
    v114 = 2112;
    v115 = localizedDescription4;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v63, 16, "[OTA] %s: Failed to create new folder %@ with error: %@", &v110, 32);
  }

  v58 = 0;
  v88 = 0;
  v57 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v90 = 0;
  v41 = 0;
  v85 = 0;
  v103 = 0;
LABEL_43:
  v59 = +[CWFAssetPowerTableTelemetry sharedObj];
  [v59 setAssetHandoffInfo:v58 assetAlreadyHere:v57 previousAssetCleanedUp:v88 previousLatestPlist:v53 latestPlistDict:v52 newPlist:v41 error:v25];

  v60 = v25;

  return v60;
}

- (void)garbageCollectWithNewAsset:(id)asset prevAsset:(id)prevAsset
{
  v56[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  prevAssetCopy = prevAsset;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = MEMORY[0x1E695DFF8];
  v56[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v56[1] = @"WiFi/";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v10 = [v8 fileURLWithPathComponents:v9];

  v47 = 0;
  v41 = [defaultManager contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:5 error:&v47];
  v11 = v47;
  if (v11)
  {
    v12 = v11;
    v13 = CWFGetOTAOSLog();
    if (v13)
    {
      v14 = CWFGetOTAOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v50 = 136315650;
      v51 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
      v52 = 2112;
      v53 = v10;
      v54 = 2112;
      v55 = v12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[OTA] %s: Failed to enumerate all sub-dirs in %@ with error: %@", &v50, 32);
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v49[0] = @"Latest.plist";
    v49[1] = @"LastKnownGood";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v14 = [v15 initWithArray:v16];

    if (assetCopy)
    {
      [v14 addObject:assetCopy];
    }

    else
    {
      v18 = CWFGetOTAOSLog();
      if (v18)
      {
        v19 = CWFGetOTAOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v50 = 136315138;
        v51 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[OTA] %s: newAssetUUIDString is nil", &v50);
      }
    }

    v39 = prevAssetCopy;
    v40 = assetCopy;
    v38 = v10;
    if (prevAssetCopy)
    {
      [v14 addObject:prevAssetCopy];
    }

    else
    {
      v21 = CWFGetOTAOSLog();
      if (v21)
      {
        v22 = CWFGetOTAOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v50 = 136315138;
        v51 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[OTA] %s: previousLatestUUIDString is nil", &v50);
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = v41;
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v12 = 0;
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          lastPathComponent = [v29 lastPathComponent];
          v31 = [v14 containsObject:lastPathComponent];

          if ((v31 & 1) == 0)
          {
            v42 = v12;
            v32 = [defaultManager removeItemAtURL:v29 error:&v42];
            v33 = v42;

            if ((v32 & 1) == 0)
            {
              v34 = CWFGetOTAOSLog();
              if (v34)
              {
                v35 = CWFGetOTAOSLog();
              }

              else
              {
                v35 = MEMORY[0x1E69E9C10];
                v36 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v50 = 136315650;
                v51 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
                v52 = 2112;
                v53 = v29;
                v54 = 2112;
                v55 = v33;
                LODWORD(v37) = 32;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v35, 16, "[OTA] %s: Failed to remove sub-dir %@ with error: %@", &v50, v37);
              }
            }

            v12 = v33;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v26);
    }

    else
    {
      v12 = 0;
    }

    prevAssetCopy = v39;
    assetCopy = v40;
    v10 = v38;
  }
}

+ (id)currentLatestAssetVersion
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v10[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v10[1] = @"WiFi/";
  v10[2] = @"Latest.plist";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v4 = [v2 fileURLWithPathComponents:v3];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"assetVersion"];
    if ([CWFAssetLocal isValidAssetVersion:v7])
    {
      v8 = v7;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[CWFAssetPowerTable currentLatestAssetVersion];
  v5 = [v3 stringWithFormat:@"<CWFAssetPowerTable: currentLatestAssetVersion: %@, numberOfCallsToCopyAsset: %llu, numberOfTimesAssetExisted: %llu, numberOfSuccessfullAssetCopy: %llu", v4, self->numberOfCallsToCopyAsset, self->numberOfTimesAssetExisted, self->numberOfSuccessfullAssetCopy];

  return v5;
}

@end