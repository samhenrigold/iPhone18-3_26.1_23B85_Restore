@interface SUCorePolicyFamily
+ (id)_getGenericDefaultAssetTypeForKind:(int)kind;
+ (id)_getIOSAssetTypeForKind:(int)kind;
+ (id)_getMacOSAssetTypeForKind:(int)kind;
+ (id)_getNERDBRAINAssetTypeForKind:(int)kind;
+ (id)_getNERDCAssetTypeForKind:(int)kind;
+ (id)_getNERDSUAssetTypeForKind:(int)kind;
+ (id)_getPlatformDefaultAssetTypeForKind:(int)kind;
+ (id)_getTVOSAssetTypeForKind:(int)kind;
+ (id)_getWatchOSAssetTypeForKind:(int)kind;
+ (id)getAssetTypeForKind:(int)kind usingFamily:(int)family;
+ (id)getNameForSUCorePolicyAssetFamily:(int)family;
+ (id)getNameForSUCorePolicyAssetKind:(int)kind;
+ (int)getFamilyUsingDeviceClass:(id)class;
@end

@implementation SUCorePolicyFamily

+ (id)getAssetTypeForKind:(int)kind usingFamily:(int)family
{
  if (family <= 3)
  {
    if (family == 1)
    {
      v4 = [SUCorePolicyFamily _getIOSAssetTypeForKind:*&kind];
      goto LABEL_18;
    }

    if (family != 2)
    {
      if (family == 3)
      {
        v4 = [SUCorePolicyFamily _getWatchOSAssetTypeForKind:*&kind];
        goto LABEL_18;
      }

LABEL_14:
      v4 = [SUCorePolicyFamily _getPlatformDefaultAssetTypeForKind:*&kind];
      goto LABEL_18;
    }

    v4 = [SUCorePolicyFamily _getTVOSAssetTypeForKind:*&kind];
  }

  else
  {
    if (family <= 5)
    {
      if (family == 4)
      {
        [SUCorePolicyFamily _getNERDCAssetTypeForKind:*&kind];
      }

      else
      {
        [SUCorePolicyFamily _getNERDSUAssetTypeForKind:*&kind];
      }
      v4 = ;
      goto LABEL_18;
    }

    if (family != 6)
    {
      if (family == 7)
      {
        v4 = [SUCorePolicyFamily _getMacOSAssetTypeForKind:*&kind];
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = [SUCorePolicyFamily _getNERDBRAINAssetTypeForKind:*&kind];
  }

LABEL_18:

  return v4;
}

+ (int)getFamilyUsingDeviceClass:(id)class
{
  v16 = *MEMORY[0x277D85DE8];
  classCopy = class;
  if (([classCopy isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"iPod") & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"iPad") & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"AudioAccessory") & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", @"RealityDevice"))
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to iOS family", buf, 2u);
    }

    v6 = 1;
  }

  else if ([classCopy isEqualToString:@"AppleTV"])
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = 2;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to tvOS family", buf, 2u);
    }

    else
    {
      v6 = 2;
    }
  }

  else if ([classCopy isEqualToString:@"Watch"])
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to watchOS family", buf, 2u);
    }

    v6 = 3;
  }

  else
  {
    v10 = [classCopy isEqualToString:@"Mac"];
    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]4 oslog];

    v12 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to macOS family", buf, 2u);
      }

      v6 = 7;
    }

    else
    {
      if (v12)
      {
        *buf = 138543362;
        v15 = classCopy;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass unknown device class %{public}@, returning default instead", buf, 0xCu);
      }

      oslog = [MEMORY[0x277D64428] sharedDiag];
      classCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown device class (%@), returning default instead", classCopy];
      [oslog trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:classCopy withResult:8116 withError:0];

      v6 = 0;
    }
  }

  return v6;
}

+ (id)getNameForSUCorePolicyAssetFamily:(int)family
{
  if (family >= 8)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SUCORE_POLICY_FAMILY_UNKNOWN(%d)", *&family];
  }

  else
  {
    v3 = off_27892D790[family];
  }

  return v3;
}

+ (id)getNameForSUCorePolicyAssetKind:(int)kind
{
  if ((kind - 1) >= 7)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SUCORE_POLICY_KIND_UNKNOWN(%d)", *&kind];
  }

  else
  {
    v4 = off_27892D7D0[kind - 1];
  }

  return v4;
}

+ (id)_getIOSAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return off_27892D808[kind - 1];
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine iOS asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU", v4];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return @"com.apple.MobileAsset.SoftwareUpdate";
}

+ (id)_getTVOSAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return off_27892D840[kind - 1];
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine tvOS asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU", v4];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return @"com.apple.MobileAsset.SoftwareUpdate";
}

+ (id)_getWatchOSAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return off_27892D878[kind - 1];
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine watchOS asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU", v4];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return @"com.apple.MobileAsset.SoftwareUpdate";
}

+ (id)_getNERDCAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return off_27892D8B0[kind - 1];
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine NERDC asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU", v4];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return @"com.apple.MobileAsset.RecoveryOSUpdate";
}

+ (id)_getNERDSUAssetTypeForKind:(int)kind
{
  v3 = *&kind;
  v4 = @"com.apple.MobileAsset.RecoveryOSUpdate";
  if (kind <= 3)
  {
    switch(kind)
    {
      case 1:
        return v4;
      case 2:
        mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no documentation asset type for NERDSU family, defaulting to NeRD SU asset type(%@)", @"com.apple.MobileAsset.RecoveryOSUpdate"];
        break;
      case 3:
        mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no update brain asset type for NERDSU family, defaulting to NeRD SU asset type(%@)", @"com.apple.MobileAsset.RecoveryOSUpdate"];
        break;
      default:
        goto LABEL_12;
    }

    v9 = v6;
    [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

    return v4;
  }

  if (kind > 5)
  {
    if (kind == 6 || kind == 7)
    {
      return 0;
    }

LABEL_12:
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine NERDSU asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU type(%@)", v3, @"com.apple.MobileAsset.RecoveryOSUpdate"];
    [mEMORY[0x277D64428]2 trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v8 withResult:8102 withError:0];

    return v4;
  }

  if (kind == 4)
  {
    return @"com.apple.MobileAsset.SFRSoftwareUpdate";
  }

  else
  {
    return @"com.apple.MobileAsset.SoftwareUpdateConfiguration";
  }
}

+ (id)_getNERDBRAINAssetTypeForKind:(int)kind
{
  v3 = *&kind;
  v4 = @"com.apple.MobileAsset.RecoveryOSUpdateBrain";
  if (kind <= 3)
  {
    switch(kind)
    {
      case 1:
        return v4;
      case 2:
        mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no documentation asset type for NERDBRAIN family, defaulting to NeRD update brain asset type(%@)", @"com.apple.MobileAsset.RecoveryOSUpdateBrain"];
        break;
      case 3:
        mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no update brain asset type for NERDBRAIN family (since brain handled as SU asset), defaulting to NeRD update brain asset type(%@)", @"com.apple.MobileAsset.RecoveryOSUpdateBrain"];
        break;
      default:
        goto LABEL_12;
    }

    v9 = v6;
    [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

    return v4;
  }

  if (kind > 5)
  {
    if (kind == 6 || kind == 7)
    {
      return 0;
    }

LABEL_12:
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine NERDBRAIN asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU type(%@)", v3, @"com.apple.MobileAsset.RecoveryOSUpdateBrain"];
    [mEMORY[0x277D64428]2 trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v8 withResult:8102 withError:0];

    return v4;
  }

  if (kind == 4)
  {
    return @"com.apple.MobileAsset.SFRSoftwareUpdate";
  }

  else
  {
    return @"com.apple.MobileAsset.SoftwareUpdateConfiguration";
  }
}

+ (id)_getMacOSAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return *(&off_27892D8E8 + (kind - 1));
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v3 = @"com.apple.MobileAsset.MacSoftwareUpdate";
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine macOS asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU type(%@)", v4, @"com.apple.MobileAsset.MacSoftwareUpdate"];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return v3;
}

+ (id)_getPlatformDefaultAssetTypeForKind:(int)kind
{
  v3 = *&kind;
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  deviceClass = [mEMORY[0x277D64418] deviceClass];
  v6 = [SUCorePolicyFamily getFamilyUsingDeviceClass:deviceClass];

  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 7)
      {
        v7 = [SUCorePolicyFamily _getMacOSAssetTypeForKind:v3];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v7 = [SUCorePolicyFamily _getWatchOSAssetTypeForKind:v3];
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = [SUCorePolicyFamily _getTVOSAssetTypeForKind:v3];
        goto LABEL_11;
      }

LABEL_8:
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown family value (%d), defaulting to generic default family", v6];
      [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v9 withResult:8116 withError:0];

      v7 = [SUCorePolicyFamily _getGenericDefaultAssetTypeForKind:v3];
      goto LABEL_11;
    }

    v7 = [SUCorePolicyFamily _getIOSAssetTypeForKind:v3];
  }

LABEL_11:

  return v7;
}

+ (id)_getGenericDefaultAssetTypeForKind:(int)kind
{
  if ((kind - 1) < 7)
  {
    return *(&off_27892D920 + (kind - 1));
  }

  v4 = *&kind;
  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to determine generic default asset kind (%d), defaulting to SUCORE_POLICY_KIND_SU", v4];
  [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v6 withResult:8102 withError:0];

  return @"com.apple.MobileAsset.SoftwareUpdate";
}

@end