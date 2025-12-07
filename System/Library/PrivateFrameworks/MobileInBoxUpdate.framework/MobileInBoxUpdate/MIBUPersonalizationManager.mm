@interface MIBUPersonalizationManager
+ (__AMAuthInstall)_createBaseAMAIObjectForDevice:(id)device error:(id *)error;
+ (id)requestTatsuTicketForDevice:(id)device error:(id *)error;
@end

@implementation MIBUPersonalizationManager

+ (id)requestTatsuTicketForDevice:(id)device error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v92 = 49;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v92 length:1];
  v8 = objc_opt_new();
  theDict = 0;
  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = deviceCopy;
    _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting personalization ticket ...", buf, 0xCu);
  }

  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v94[0] = @"SerialNumber";
    v11 = v10;
    serialNumber = [deviceCopy serialNumber];
    v95[0] = serialNumber;
    v94[1] = @"ECID";
    ecid = [deviceCopy ecid];
    v95[1] = ecid;
    v94[2] = @"BoardID";
    boardID = [deviceCopy boardID];
    v95[2] = boardID;
    v94[3] = @"ChipID";
    chipID = [deviceCopy chipID];
    v95[3] = chipID;
    v94[4] = @"Security Domain";
    securityDomain = [deviceCopy securityDomain];
    v95[4] = securityDomain;
    v94[5] = @"APNounce";
    apNonce = [deviceCopy apNonce];
    v95[5] = apNonce;
    v94[6] = @"Production Mode";
    v83 = v7;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(deviceCopy, "productionMode")}];
    v95[6] = v12;
    v94[7] = @"Security Mode";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(deviceCopy, "securityMode")}];
    v95[7] = v13;
    v94[8] = @"UID Mode";
    selfCopy = self;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(deviceCopy, "uidMode")}];
    v95[8] = v14;
    v94[9] = @"SEPNonce";
    [deviceCopy sepNonce];
    v16 = v15 = error;
    v95[9] = v16;
    v94[10] = @"Entitlement";
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(deviceCopy, "entitlement")}];
    v95[10] = v17;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:11];
    v19 = v18 = v8;
    *buf = 138543618;
    *&buf[4] = deviceCopy;
    v97 = 2114;
    v98 = v19;
    _os_log_impl(&dword_259ABF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Device Info: %{public}@", buf, 0x16u);

    v8 = v18;
    v7 = v83;

    error = v15;
    self = selfCopy;
  }

  if (os_variant_has_internal_content())
  {
    v20 = +[MIBUTestPreferences sharedInstance];
    useLiveTatsu = [v20 useLiveTatsu];

    if ((useLiveTatsu & 1) == 0)
    {
      if (MIBUOnceToken != -1)
      {
        +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
      }

      v37 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = deviceCopy;
        _os_log_impl(&dword_259ABF000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Faking Tatsu ticket, waiting for 30s...", buf, 0xCu);
      }

      sleep(0x1Eu);
      v38 = +[MIBUTestPreferences sharedInstance];
      fakeTatsuPayloadPath = [v38 fakeTatsuPayloadPath];

      if (fakeTatsuPayloadPath)
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v40 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = deviceCopy;
          v97 = 2114;
          v98 = fakeTatsuPayloadPath;
          _os_log_impl(&dword_259ABF000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading tatsu payload from file: %{public}@", buf, 0x16u);
        }

        v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:fakeTatsuPayloadPath];
        v42 = [v41 objectForKey:*MEMORY[0x277D82560]];
        if (!v42)
        {
          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          v90 = 0;
          safeAssignError(&v90, 100663296, 0, @"Failed load tatsu payload from file: %@", v71, v72, v73, v74, fakeTatsuPayloadPath);
          v23 = v90;

          v36 = 0;
          goto LABEL_51;
        }

        v36 = v42;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v43 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = deviceCopy;
          _os_log_impl(&dword_259ABF000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating fake tatsu payload", buf, 0xCu);
        }

        v36 = [MEMORY[0x277CBEA90] generateRandomBytesOfSize:0xFFFFLL];
      }

      v23 = 0;
LABEL_51:

      goto LABEL_52;
    }
  }

  v89 = 0;
  v22 = [self _createBaseAMAIObjectForDevice:deviceCopy error:&v89];
  v23 = v89;
  if (!v22)
  {
    [(MIBUPersonalizationManager *)deviceCopy requestTatsuTicketForDevice:v23 error:&v93, buf];
    v23 = v93;
    v36 = *buf;
    goto LABEL_52;
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_20;
  }

  v24 = +[MIBUTestPreferences sharedInstance];
  useAppleConnect = [v24 useAppleConnect];

  if (!useAppleConnect)
  {
    goto LABEL_20;
  }

  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v26 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = deviceCopy;
    _os_log_impl(&dword_259ABF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Using AppleConnect for personalization ...", buf, 0xCu);
  }

  v27 = AMAuthInstallSsoInitialize();
  if (v27)
  {
    v60 = v27;
    if (MIBUOnceToken != -1)
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    v88 = v23;
    safeAssignError(&v88, 100663296, 0, @"Failed load SSOClient.framework; status: %d", v61, v62, v63, v64, v60);
    v51 = v88;
  }

  else
  {
    v28 = AMAuthInstallSsoEnable();
    if (!v28)
    {
LABEL_20:
      v29 = @"Ap,EnableInBoxUpdate";
      if ([deviceCopy entitlement] && objc_msgSend(deviceCopy, "entitlement") == 1)
      {
        v29 = @"Ap,EnableInBoxDiagnostics";
      }

      [v8 setObject:v7 forKey:v29];
      sepNonce = [deviceCopy sepNonce];
      [v8 setObject:sepNonce forKey:*MEMORY[0x277D82590]];

      if ([deviceCopy sikaFuseExists])
      {
        sikaFuse = [deviceCopy sikaFuse];
        [v8 setObject:sikaFuse forKey:*MEMORY[0x277D82598]];
      }

      v32 = AMAuthInstallApImg4ServerRequestAddRequiredTags();
      if (v32)
      {
        v46 = v32;
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v86 = v23;
        safeAssignError(&v86, 100663296, 0, @"Failed to add measurement dict, status: %d", v47, v48, v49, v50, v46);
        v51 = v86;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v33 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = deviceCopy;
          _os_log_impl(&dword_259ABF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending Tatsu personalization request...", buf, 0xCu);
        }

        PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
        if (PersonalizedResponse || !theDict)
        {
          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          v85 = v23;
          safeAssignError(&v85, 100663296, 0, @"Fail Tatsu personalization, status: %d", v52, v53, v54, v55, PersonalizedResponse);
          v51 = v85;
        }

        else
        {
          v35 = CFDictionaryGetValue(theDict, *MEMORY[0x277D82560]);
          if (v35)
          {
            v36 = v35;
            goto LABEL_52;
          }

          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          v84 = v23;
          safeAssignError(&v84, 100663296, 0, @"Failed to parse payload from personalization response", v56, v57, v58, v59, v75);
          v51 = v84;
        }
      }

      goto LABEL_83;
    }

    v65 = v28;
    if (MIBUOnceToken != -1)
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    v87 = v23;
    safeAssignError(&v87, 100663296, 0, @"Failed to enable AC SSO, status: %d", v66, v67, v68, v69, v65);
    v51 = v87;
  }

LABEL_83:
  v70 = v51;

  v36 = 0;
  v23 = v70;
LABEL_52:
  if (error)
  {
    v44 = v23;
    *error = v23;
  }

  AMSupportSafeRelease();

  return v36;
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_15()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_53()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_56()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_59()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_65()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_68()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_71()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_74()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_80()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_92()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_98()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_101()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_107()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (__AMAuthInstall)_createBaseAMAIObjectForDevice:(id)device error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  AMAuthInstallLogSetHandler();
  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v49 = deviceCopy;
    v50 = 2112;
    LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Building base AMAI object from %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = AMAuthInstallCreate();
  if (v9)
  {
    v10 = CFURLCreateWithString(v8, @"https://gs.apple.com:443", 0);
    if (v10)
    {
      if (AMAuthInstallSetSigningServerURL())
      {
        v41 = &v45;
        [(MIBUPersonalizationManager *)deviceCopy _createBaseAMAIObjectForDevice:v10 error:&v45];
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          v41 = v44;
          +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
          v38 = 1;
          goto LABEL_47;
        }

        v12 = *MEMORY[0x277D82508];
        ecid = [deviceCopy ecid];
        if (ecid)
        {
          ecid2 = [deviceCopy ecid];
          CFDictionarySetValue(Mutable, v12, ecid2);
        }

        else
        {
          CFDictionarySetValue(Mutable, v12, *MEMORY[0x277CBEEE8]);
        }

        v15 = *MEMORY[0x277D82500];
        chipID = [deviceCopy chipID];
        if (chipID)
        {
          chipID2 = [deviceCopy chipID];
          CFDictionarySetValue(Mutable, v15, chipID2);
        }

        else
        {
          CFDictionarySetValue(Mutable, v15, *MEMORY[0x277CBEEE8]);
        }

        v18 = *MEMORY[0x277D824F8];
        boardID = [deviceCopy boardID];
        if (boardID)
        {
          boardID2 = [deviceCopy boardID];
          CFDictionarySetValue(Mutable, v18, boardID2);
        }

        else
        {
          CFDictionarySetValue(Mutable, v18, *MEMORY[0x277CBEEE8]);
        }

        v21 = *MEMORY[0x277D82520];
        securityDomain = [deviceCopy securityDomain];
        if (securityDomain)
        {
          securityDomain2 = [deviceCopy securityDomain];
          CFDictionarySetValue(Mutable, v21, securityDomain2);
        }

        else
        {
          CFDictionarySetValue(Mutable, v21, *MEMORY[0x277CBEEE8]);
        }

        v24 = *MEMORY[0x277D82528];
        securityMode = [deviceCopy securityMode];
        v26 = *MEMORY[0x277CBED28];
        v27 = *MEMORY[0x277CBED10];
        if (securityMode)
        {
          v28 = *MEMORY[0x277CBED28];
        }

        else
        {
          v28 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, v24, v28);
        v29 = *MEMORY[0x277D82510];
        if ([deviceCopy productionMode])
        {
          v30 = v26;
        }

        else
        {
          v30 = v27;
        }

        CFDictionarySetValue(Mutable, v29, v30);
        CFDictionarySetValue(Mutable, *MEMORY[0x277D82530], v26);
        v31 = *MEMORY[0x277D824F0];
        apNonce = [deviceCopy apNonce];
        if (apNonce)
        {
          apNonce2 = [deviceCopy apNonce];
          CFDictionarySetValue(Mutable, v31, apNonce2);
        }

        else
        {
          CFDictionarySetValue(Mutable, v31, *MEMORY[0x277CBEEE8]);
        }

        v34 = *MEMORY[0x277D82538];
        if ([deviceCopy uidMode])
        {
          v35 = v26;
        }

        else
        {
          v35 = v27;
        }

        CFDictionarySetValue(Mutable, v34, v35);
        CFDictionarySetValue(Mutable, *MEMORY[0x277D82518], v26);
        if (AMAuthInstallApSetParameters())
        {
          v41 = v43;
          +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
        }

        else
        {
          v36 = AMAuthInstallApImg4ForceServerSigning();
          if (!v36)
          {
            v37 = 0;
            v38 = 1;
            if (!error)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v41 = &v42;
          [(MIBUPersonalizationManager *)deviceCopy _createBaseAMAIObjectForDevice:v36 error:&v42];
        }
      }
    }

    else
    {
      v41 = v46;
      +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
    }
  }

  else
  {
    v41 = v47;
    +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
  }

  v38 = 0;
LABEL_47:
  v37 = *v41;
  if (error)
  {
LABEL_36:
    v39 = v37;
    *error = v37;
  }

LABEL_37:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if ((v38 & 1) == 0)
  {
    AMSupportSafeRelease();
    v9 = 0;
  }

  return v9;
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_118()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_124()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_130()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_136()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_142()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_148()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (void)requestTatsuTicketForDevice:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)requestTatsuTicketForDevice:error:.cold.10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)requestTatsuTicketForDevice:error:.cold.12()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)requestTatsuTicketForDevice:error:.cold.14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)requestTatsuTicketForDevice:error:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)requestTatsuTicketForDevice:error:.cold.19()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)requestTatsuTicketForDevice:(void *)a3 error:(void *)a4 .cold.20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_70);
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a1;
    _os_log_error_impl(&dword_259ABF000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create AMAI object", &v9, 0xCu);
  }

  *a4 = 0;
  *a3 = a2;
}

+ (void)_createBaseAMAIObjectForDevice:(void *)a3 error:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_132);
  }

  v6 = MIBUConnObj;
  v7 = os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    *buf = 138543618;
    v15 = a1;
    v16 = 2114;
    v17 = a2;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set signing server URL to %{public}@", buf, 0x16u);
  }

  *a3 = 0;
  OUTLINED_FUNCTION_3(v7, v8, v9, @"Failed to set signing server URL to %@", v10, v11, v12, v13, a2);
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.3()
{
  OUTLINED_FUNCTION_7();
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_144);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to set auth install ap img4 parameters", v4, v5, v6, v7, v13);
}

+ (void)_createBaseAMAIObjectForDevice:(void *)a3 error:.cold.4(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_150);
  }

  v6 = MIBUConnObj;
  v7 = os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    *buf = 138543618;
    v15 = a1;
    v16 = 1024;
    v17 = a2;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed server signing, status: %d", buf, 0x12u);
  }

  *a3 = 0;
  OUTLINED_FUNCTION_3(v7, v8, v9, @"Failed server signing, status: %d", v10, v11, v12, v13, a2);
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.5()
{
  OUTLINED_FUNCTION_7();
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_138);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to allocate options dictionary", v4, v5, v6, v7, v13);
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.6()
{
  OUTLINED_FUNCTION_7();
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_126);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to create server URL object", v4, v5, v6, v7, v13);
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_120);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to create AMAuthInstall object", v4, v5, v6, v7, v13);
}

@end