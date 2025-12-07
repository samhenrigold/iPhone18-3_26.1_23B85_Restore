@interface AppAttestEligibilityManager
- (BOOL)containsValidEntitlements;
- (BOOL)isEligibleApplicationExtensionFor:(id *)for;
- (BOOL)isEligibleApplicationFor:(id *)for;
- (BOOL)isEligibleClientFor:(id *)for;
- (BOOL)isEligibleDaemonFor:(id *)for;
- (BOOL)isEligibleForPrivService:(id *)service;
- (BOOL)isSupportedSPIClient;
- (BOOL)meetsSecurityControlsForAuditToken:(id *)token;
- (NSArray)allowlistedDaemons;
- (NSArray)allowlistedFirstPartyExtensions;
- (NSArray)allowlistedThirdPartyExtensions;
- (id)fetchBundleRecordFor:(id *)for;
- (id)fetchEntitlementForAuditToken:(id *)token withKey:(id)key;
@end

@implementation AppAttestEligibilityManager

- (NSArray)allowlistedDaemons
{
  allowlistedDaemons = self->_allowlistedDaemons;
  if (!allowlistedDaemons)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v4 BOOLForKey:@"addTestDaemonToAllowlist"])
    {
      v5 = [&unk_283960E90 arrayByAddingObject:@"com.apple.dctestd"];
      v6 = [v5 arrayByAddingObject:@"com.apple.appattestctl"];
    }

    else
    {
      v6 = &unk_283960E90;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6];
    v8 = self->_allowlistedDaemons;
    self->_allowlistedDaemons = v7;

    allowlistedDaemons = self->_allowlistedDaemons;
  }

  return allowlistedDaemons;
}

- (NSArray)allowlistedThirdPartyExtensions
{
  allowlistedThirdPartyExtensions = self->_allowlistedThirdPartyExtensions;
  if (!allowlistedThirdPartyExtensions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:&unk_283960EA8];
    v5 = self->_allowlistedThirdPartyExtensions;
    self->_allowlistedThirdPartyExtensions = v4;

    allowlistedThirdPartyExtensions = self->_allowlistedThirdPartyExtensions;
  }

  return allowlistedThirdPartyExtensions;
}

- (NSArray)allowlistedFirstPartyExtensions
{
  allowlistedFirstPartyExtensions = self->_allowlistedFirstPartyExtensions;
  if (!allowlistedFirstPartyExtensions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v4 BOOLForKey:@"addTestFirstPartyExtensionToAllowlist"])
    {
      v5 = [&unk_283960EC0 arrayByAddingObject:@"com.apple.DCAppContainer.Extension"];
    }

    else
    {
      v5 = &unk_283960EC0;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
    v7 = self->_allowlistedFirstPartyExtensions;
    self->_allowlistedFirstPartyExtensions = v6;

    allowlistedFirstPartyExtensions = self->_allowlistedFirstPartyExtensions;
  }

  return allowlistedFirstPartyExtensions;
}

- (BOOL)isEligibleClientFor:(id *)for
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(AppAttestEligibilityManager *)self isSupportedHardware])
  {
    if ([(AppAttestEligibilityManager *)self isSupportedSPIClient])
    {
      if ([(AppAttestEligibilityManager *)self containsValidEntitlements])
      {
        v5 = *&for->var0[4];
        *v33 = *for->var0;
        *&v33[16] = v5;
        if ([(AppAttestEligibilityManager *)self isEligibleApplicationFor:v33]|| (v6 = *&for->var0[4], *v33 = *for->var0, *&v33[16] = v6, [(AppAttestEligibilityManager *)self isEligibleDaemonFor:v33]) || (v7 = *&for->var0[4], *v33 = *for->var0, *&v33[16] = v7, [(AppAttestEligibilityManager *)self isEligibleApplicationExtensionFor:v33]))
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v9 = AAInternalLogSystem_log_4;
        v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          v27 = 0;
          v28 = 0;
          v29 = 47;
          do
          {
            v30 = &aLibraryCachesC_4[v27];
            if (v29 == 47)
            {
              v28 = &aLibraryCachesC_4[v27];
            }

            v29 = v30[1];
            if (!v30[1])
            {
              break;
            }

            v14 = v27++ >= 0xFFF;
          }

          while (!v14);
          if (v28)
          {
            v31 = v28 + 1;
          }

          else
          {
            v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v33 = 136315394;
          *&v33[4] = v31;
          *&v33[12] = 1024;
          *&v33[14] = 133;
          v16 = "%25s:%-5d Client is not of eligible type.";
LABEL_47:
          _os_log_impl(&dword_226177000, v9, OS_LOG_TYPE_DEBUG, v16, v33, 0x12u);
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v9 = AAInternalLogSystem_log_4;
        v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          v22 = 0;
          v23 = 0;
          v24 = 47;
          do
          {
            v25 = &aLibraryCachesC_4[v22];
            if (v24 == 47)
            {
              v23 = &aLibraryCachesC_4[v22];
            }

            v24 = v25[1];
            if (!v25[1])
            {
              break;
            }

            v14 = v22++ >= 0xFFF;
          }

          while (!v14);
          if (v23)
          {
            v26 = v23 + 1;
          }

          else
          {
            v26 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v33 = 136315394;
          *&v33[4] = v26;
          *&v33[12] = 1024;
          *&v33[14] = 125;
          v16 = "%25s:%-5d Client does not have valid entitlements.";
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v9 = AAInternalLogSystem_log_4;
      v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v17 = 0;
        v18 = 0;
        v19 = 47;
        do
        {
          v20 = &aLibraryCachesC_4[v17];
          if (v19 == 47)
          {
            v18 = &aLibraryCachesC_4[v17];
          }

          v19 = v20[1];
          if (!v20[1])
          {
            break;
          }

          v14 = v17++ >= 0xFFF;
        }

        while (!v14);
        if (v18)
        {
          v21 = v18 + 1;
        }

        else
        {
          v21 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        *v33 = 136315394;
        *&v33[4] = v21;
        *&v33[12] = 1024;
        *&v33[14] = 119;
        v16 = "%25s:%-5d Client is not supported SPI client.";
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v9 = AAInternalLogSystem_log_4;
    v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_4[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_4[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }

        v14 = v10++ >= 0xFFF;
      }

      while (!v14);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *v33 = 136315394;
      *&v33[4] = v15;
      *&v33[12] = 1024;
      *&v33[14] = 113;
      v16 = "%25s:%-5d AppAttest not supported on this device.";
      goto LABEL_47;
    }
  }

  return v8;
}

- (BOOL)isEligibleApplicationFor:(id *)for
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *&for->var0[4];
  *v21 = *for->var0;
  *&v21[16] = v3;
  v4 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:v21];
  if (!v4)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v14 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v15 = 0;
      v16 = 0;
      v17 = 47;
      do
      {
        v18 = &aLibraryCachesC_4[v15];
        if (v17 == 47)
        {
          v16 = &aLibraryCachesC_4[v15];
        }

        v17 = v18[1];
        if (!v18[1])
        {
          break;
        }

        v10 = v15++ >= 0xFFF;
      }

      while (!v10);
      if (v16)
      {
        v19 = v16 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *v21 = 136315394;
      *&v21[4] = v19;
      *&v21[12] = 1024;
      *&v21[14] = 162;
      _os_log_impl(&dword_226177000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch bundle record.", v21, 0x12u);
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v5 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 0;
    v7 = 0;
    v8 = 47;
    do
    {
      v9 = &aLibraryCachesC_4[v6];
      if (v8 == 47)
      {
        v7 = &aLibraryCachesC_4[v6];
      }

      v8 = v9[1];
      if (!v9[1])
      {
        break;
      }

      v10 = v6++ >= 0xFFF;
    }

    while (!v10);
    if (v7)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    bundleIdentifier = [v4 bundleIdentifier];
    *v21 = 136315650;
    *&v21[4] = v11;
    *&v21[12] = 1024;
    *&v21[14] = 167;
    *&v21[18] = 2112;
    *&v21[20] = bundleIdentifier;
    _os_log_impl(&dword_226177000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':App, 'identifier':%@ }", v21, 0x1Cu);
  }

  v13 = 1;
LABEL_31:

  return v13;
}

- (BOOL)isEligibleApplicationExtensionFor:(id *)for
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = *&for->var0[4];
  *buf.val = *for->var0;
  *&buf.val[4] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:&buf];
  if (!v6)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v20 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    v21 = 0;
    v22 = 0;
    v23 = 47;
    do
    {
      v24 = &aLibraryCachesC_4[v21];
      if (v23 == 47)
      {
        v22 = &aLibraryCachesC_4[v21];
      }

      v23 = v24[1];
      if (!v24[1])
      {
        break;
      }

      v16 = v21++ >= 0xFFF;
    }

    while (!v16);
    if (v22)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    buf.val[0] = 136315394;
    *&buf.val[1] = v25;
    LOWORD(buf.val[3]) = 1024;
    *(&buf.val[3] + 2) = 177;
    v26 = "%25s:%-5d Failed to fetch bundle record.";
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    extensionPointRecord = [v7 extensionPointRecord];
    allowlistedThirdPartyExtensions = [(AppAttestEligibilityManager *)self allowlistedThirdPartyExtensions];
    name = [extensionPointRecord name];
    if ([allowlistedThirdPartyExtensions containsObject:name])
    {
      v10 = +[FeatureFlagsManager isExtensionAttestationEnabled];

      if (v10)
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v11 = AAInternalLogSystem_log_4;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = 0;
          v13 = 0;
          v14 = 47;
          do
          {
            v15 = &aLibraryCachesC_4[v12];
            if (v14 == 47)
            {
              v13 = &aLibraryCachesC_4[v12];
            }

            v14 = v15[1];
            if (!v15[1])
            {
              break;
            }

            v16 = v12++ >= 0xFFF;
          }

          while (!v16);
          if (v13)
          {
            v17 = v13 + 1;
          }

          else
          {
            v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          bundleIdentifier = [v7 bundleIdentifier];
          buf.val[0] = 136315650;
          *&buf.val[1] = v17;
          LOWORD(buf.val[3]) = 1024;
          *(&buf.val[3] + 2) = 202;
          HIWORD(buf.val[4]) = 2112;
          *&buf.val[5] = bundleIdentifier;
          _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':AppExtension, 'identifier':%@ }", &buf, 0x1Cu);
        }

        v19 = 1;
        goto LABEL_65;
      }
    }

    else
    {
    }

    v32 = *MEMORY[0x277CBECE8];
    v33 = *&for->var0[4];
    *buf.val = *for->var0;
    *&buf.val[4] = v33;
    v34 = SecTaskCreateWithAuditToken(v32, &buf);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v34;
    v11 = _Block_copy(aBlock);
    v89[4] = 0;
    error = 0;
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_2;
    v89[3] = &__block_descriptor_40_e5_v8__0l;
    v35 = _Block_copy(v89);
    v36 = SecTaskCopyValueForEntitlement(v34, @"com.apple.devicecheck.extension-client", &error);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_3;
    v88[3] = &__block_descriptor_40_e5_v8__0l;
    v88[4] = v36;
    v37 = _Block_copy(v88);
    if (error)
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v38 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = 0;
        v40 = 0;
        v41 = 47;
        do
        {
          v42 = &aLibraryCachesC_4[v39];
          if (v41 == 47)
          {
            v40 = &aLibraryCachesC_4[v39];
          }

          v41 = v42[1];
          if (!v42[1])
          {
            break;
          }

          v16 = v39++ >= 0xFFF;
        }

        while (!v16);
        localizedDescription = [(__CFError *)error localizedDescription];
        v44 = localizedDescription;
        if (v40)
        {
          v45 = v40 + 1;
        }

        else
        {
          v45 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        buf.val[0] = 136315650;
        *&buf.val[1] = v45;
        LOWORD(buf.val[3]) = 1024;
        *(&buf.val[3] + 2) = 219;
        HIWORD(buf.val[4]) = 2112;
        *&buf.val[5] = localizedDescription;
        _os_log_impl(&dword_226177000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch extension entitlement. { error=%@ }", &buf, 0x1Cu);
      }

      goto LABEL_63;
    }

    if ([v36 intValue] == 1)
    {
      teamIdentifier = [v7 teamIdentifier];
      v86 = [teamIdentifier isEqualToString:@"0000000000"];

      bundleIdentifier2 = [v7 bundleIdentifier];
      v85 = [bundleIdentifier2 hasPrefix:@"com.apple."];

      allowlistedFirstPartyExtensions = [(AppAttestEligibilityManager *)self allowlistedFirstPartyExtensions];
      bundleIdentifier3 = [v7 bundleIdentifier];
      v84 = [allowlistedFirstPartyExtensions containsObject:bundleIdentifier3];

      v51 = *&for->var0[4];
      *buf.val = *for->var0;
      *&buf.val[4] = v51;
      v52 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:&buf];
      if (v52)
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v53 = AAInternalLogSystem_log_4;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = 0;
          v55 = 0;
          v56 = 47;
          do
          {
            v57 = &aLibraryCachesC_4[v54];
            if (v56 == 47)
            {
              v55 = &aLibraryCachesC_4[v54];
            }

            v56 = v57[1];
            if (!v57[1])
            {
              break;
            }

            v16 = v54++ >= 0xFFF;
          }

          while (!v16);
          bundleIdentifier4 = [v7 bundleIdentifier];
          if (v55)
          {
            v59 = v55 + 1;
          }

          else
          {
            v59 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          buf.val[0] = 136315650;
          *&buf.val[1] = v59;
          LOWORD(buf.val[3]) = 1024;
          *(&buf.val[3] + 2) = 251;
          HIWORD(buf.val[4]) = 2112;
          *&buf.val[5] = bundleIdentifier4;
          v60 = bundleIdentifier4;
          _os_log_impl(&dword_226177000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client meets security standards. { type=AppExtension, identifier=%@ }", &buf, 0x1Cu);
        }

        if ((v52 & v86 & v85 & v84) == 1)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v61 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v62 = 0;
            v63 = 0;
            v64 = 47;
            do
            {
              v65 = &aLibraryCachesC_4[v62];
              if (v64 == 47)
              {
                v63 = &aLibraryCachesC_4[v62];
              }

              v64 = v65[1];
              if (!v65[1])
              {
                break;
              }

              v16 = v62++ >= 0xFFF;
            }

            while (!v16);
            bundleIdentifier5 = [v7 bundleIdentifier];
            v67 = bundleIdentifier5;
            if (v63)
            {
              v68 = v63 + 1;
            }

            else
            {
              v68 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            buf.val[0] = 136315650;
            *&buf.val[1] = v68;
            LOWORD(buf.val[3]) = 1024;
            *(&buf.val[3] + 2) = 254;
            HIWORD(buf.val[4]) = 2112;
            *&buf.val[5] = bundleIdentifier5;
            _os_log_impl(&dword_226177000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':AppExtension, 'identifier':%@ }", &buf, 0x1Cu);
          }

          v19 = 1;
          goto LABEL_64;
        }

LABEL_63:
        v19 = 0;
LABEL_64:
        v37[2](v37);

        v35[2](v35);
        (v11[2].isa)(v11);
LABEL_65:

        goto LABEL_66;
      }

      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v78 = AAInternalLogSystem_log_4;
      if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v79 = 0;
      v80 = 0;
      v81 = 47;
      do
      {
        v82 = &aLibraryCachesC_4[v79];
        if (v81 == 47)
        {
          v80 = &aLibraryCachesC_4[v79];
        }

        v81 = v82[1];
        if (!v82[1])
        {
          break;
        }

        v16 = v79++ >= 0xFFF;
      }

      while (!v16);
      if (v80)
      {
        v83 = v80 + 1;
      }

      else
      {
        v83 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      buf.val[0] = 136315394;
      *&buf.val[1] = v83;
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 250;
      v75 = "%25s:%-5d Client is ineligible and does not meet security standards.";
      v76 = v78;
      v77 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v69 = AAInternalLogSystem_log_4;
      if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_63;
      }

      v70 = 0;
      v71 = 0;
      v72 = 47;
      do
      {
        v73 = &aLibraryCachesC_4[v70];
        if (v72 == 47)
        {
          v71 = &aLibraryCachesC_4[v70];
        }

        v72 = v73[1];
        if (!v73[1])
        {
          break;
        }

        v16 = v70++ >= 0xFFF;
      }

      while (!v16);
      if (v71)
      {
        v74 = v71 + 1;
      }

      else
      {
        v74 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      buf.val[0] = 136315394;
      *&buf.val[1] = v74;
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 224;
      v75 = "%25s:%-5d Extension client entitlement not set.";
      v76 = v69;
      v77 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_226177000, v76, v77, v75, &buf, 0x12u);
    goto LABEL_63;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v20 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v27 = 0;
    v28 = 0;
    v29 = 47;
    do
    {
      v30 = &aLibraryCachesC_4[v27];
      if (v29 == 47)
      {
        v28 = &aLibraryCachesC_4[v27];
      }

      v29 = v30[1];
      if (!v30[1])
      {
        break;
      }

      v16 = v27++ >= 0xFFF;
    }

    while (!v16);
    if (v28)
    {
      v31 = v28 + 1;
    }

    else
    {
      v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    buf.val[0] = 136315394;
    *&buf.val[1] = v31;
    LOWORD(buf.val[3]) = 1024;
    *(&buf.val[3] + 2) = 182;
    v26 = "%25s:%-5d Bundle record is not of application extension type.";
LABEL_45:
    _os_log_impl(&dword_226177000, v20, OS_LOG_TYPE_DEBUG, v26, &buf, 0x12u);
  }

LABEL_46:
  v19 = 0;
LABEL_66:

  return v19;
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (BOOL)isEligibleDaemonFor:(id *)for
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *&for->var0[4];
  *v55 = *for->var0;
  *&v55[16] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v55 withKey:@"com.apple.devicecheck.daemon-client"];
  v7 = v6;
  if (v6 && [v6 intValue] == 1)
  {
    v8 = *&for->var0[4];
    *v55 = *for->var0;
    *&v55[16] = v8;
    v9 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v55 withKey:@"application-identifier"];
    v10 = v9;
    if (v9)
    {
      if ([v9 hasPrefix:@"com.apple."])
      {
        allowlistedDaemons = [(AppAttestEligibilityManager *)self allowlistedDaemons];
        v12 = [allowlistedDaemons containsObject:v10];

        if (v12)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v13 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v14 = 0;
            v15 = 0;
            v16 = 47;
            do
            {
              v17 = &aLibraryCachesC_4[v14];
              if (v16 == 47)
              {
                v15 = &aLibraryCachesC_4[v14];
              }

              v16 = v17[1];
              if (!v17[1])
              {
                break;
              }

              v18 = v14++ >= 0xFFF;
            }

            while (!v18);
            if (v15)
            {
              v19 = v15 + 1;
            }

            else
            {
              v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            *v55 = 136315650;
            *&v55[4] = v19;
            *&v55[12] = 1024;
            *&v55[14] = 281;
            *&v55[18] = 2112;
            *&v55[20] = v10;
            _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':Daemon, 'identifier':%@ }", v55, 0x1Cu);
          }
        }

        v20 = *&for->var0[4];
        *v55 = *for->var0;
        *&v55[16] = v20;
        v21 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:v55];
        if (v21)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v22 = AAInternalLogSystem_log_4;
          if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_89;
          }

          v23 = 0;
          v24 = 0;
          v25 = 47;
          do
          {
            v26 = &aLibraryCachesC_4[v23];
            if (v25 == 47)
            {
              v24 = &aLibraryCachesC_4[v23];
            }

            v25 = v26[1];
            if (!v26[1])
            {
              break;
            }

            v18 = v23++ >= 0xFFF;
          }

          while (!v18);
          if (v24)
          {
            v27 = v24 + 1;
          }

          else
          {
            v27 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v55 = 136315394;
          *&v55[4] = v27;
          *&v55[12] = 1024;
          *&v55[14] = 285;
          v28 = "%25s:%-5d Client meets security standards. { type=Daemon }";
        }

        else
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v22 = AAInternalLogSystem_log_4;
          if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_89;
          }

          v49 = 0;
          v50 = 0;
          v51 = 47;
          do
          {
            v52 = &aLibraryCachesC_4[v49];
            if (v51 == 47)
            {
              v50 = &aLibraryCachesC_4[v49];
            }

            v51 = v52[1];
            if (!v52[1])
            {
              break;
            }

            v18 = v49++ >= 0xFFF;
          }

          while (!v18);
          if (v50)
          {
            v53 = v50 + 1;
          }

          else
          {
            v53 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v55 = 136315394;
          *&v55[4] = v53;
          *&v55[12] = 1024;
          *&v55[14] = 284;
          v28 = "%25s:%-5d Client is ineligible and does not meet security standards. { type=Daemon }";
        }

        _os_log_impl(&dword_226177000, v22, OS_LOG_TYPE_DEFAULT, v28, v55, 0x12u);
LABEL_89:
        v35 = v12 & v21;
        goto LABEL_90;
      }

      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v42 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = 0;
        v44 = 0;
        v45 = 47;
        do
        {
          v46 = &aLibraryCachesC_4[v43];
          if (v45 == 47)
          {
            v44 = &aLibraryCachesC_4[v43];
          }

          v45 = v46[1];
          if (!v46[1])
          {
            break;
          }

          v18 = v43++ >= 0xFFF;
        }

        while (!v18);
        if (v44)
        {
          v47 = v44 + 1;
        }

        else
        {
          v47 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        uTF8String = [v10 UTF8String];
        *v55 = 136315650;
        *&v55[4] = v47;
        *&v55[12] = 1024;
        *&v55[14] = 276;
        *&v55[18] = 2080;
        *&v55[20] = uTF8String;
        _os_log_impl(&dword_226177000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalid daemon application identifier. { appID=%s }", v55, 0x1Cu);
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v36 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
      {
        v37 = 0;
        v38 = 0;
        v39 = 47;
        do
        {
          v40 = &aLibraryCachesC_4[v37];
          if (v39 == 47)
          {
            v38 = &aLibraryCachesC_4[v37];
          }

          v39 = v40[1];
          if (!v40[1])
          {
            break;
          }

          v18 = v37++ >= 0xFFF;
        }

        while (!v18);
        if (v38)
        {
          v41 = v38 + 1;
        }

        else
        {
          v41 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        *v55 = 136315394;
        *&v55[4] = v41;
        *&v55[12] = 1024;
        *&v55[14] = 271;
        _os_log_impl(&dword_226177000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Daemon client is missing application identifier entitlement.", v55, 0x12u);
      }
    }

    v35 = 0;
LABEL_90:

    goto LABEL_91;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v29 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v30 = 0;
    v31 = 0;
    v32 = 47;
    do
    {
      v33 = &aLibraryCachesC_4[v30];
      if (v32 == 47)
      {
        v31 = &aLibraryCachesC_4[v30];
      }

      v32 = v33[1];
      if (!v33[1])
      {
        break;
      }

      v18 = v30++ >= 0xFFF;
    }

    while (!v18);
    if (v31)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v55 = 136315394;
    *&v55[4] = v34;
    *&v55[12] = 1024;
    *&v55[14] = 264;
    _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Daemon client entitlement not set.", v55, 0x12u);
  }

  v35 = 0;
LABEL_91:

  return v35;
}

- (BOOL)isEligibleForPrivService:(id *)service
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *&service->var0[4];
  *v34 = *service->var0;
  *&v34[16] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v34 withKey:@"com.apple.devicecheck.private.api"];
  v7 = v6;
  if (!v6 || [v6 intValue] != 1)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v18 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    v19 = 0;
    v20 = 0;
    v21 = 47;
    do
    {
      v22 = &aLibraryCachesC_4[v19];
      if (v21 == 47)
      {
        v20 = &aLibraryCachesC_4[v19];
      }

      v21 = v22[1];
      if (!v22[1])
      {
        break;
      }

      v16 = v19++ >= 0xFFF;
    }

    while (!v16);
    if (v20)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v34 = 136315394;
    *&v34[4] = v23;
    *&v34[12] = 1024;
    *&v34[14] = 296;
    v24 = "%25s:%-5d Priv service client entitlement not set.";
    v25 = v18;
    v26 = OS_LOG_TYPE_DEBUG;
    goto LABEL_30;
  }

  v8 = *&service->var0[4];
  *v34 = *service->var0;
  *&v34[16] = v8;
  v9 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:v34];
  if (!v9)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v28 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v29 = 0;
    v30 = 0;
    v31 = 47;
    do
    {
      v32 = &aLibraryCachesC_4[v29];
      if (v31 == 47)
      {
        v30 = &aLibraryCachesC_4[v29];
      }

      v31 = v32[1];
      if (!v32[1])
      {
        break;
      }

      v16 = v29++ >= 0xFFF;
    }

    while (!v16);
    if (v30)
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v34 = 136315394;
    *&v34[4] = v33;
    *&v34[12] = 1024;
    *&v34[14] = 301;
    v24 = "%25s:%-5d Client is ineligible and does not meet security standards. { type=Priv }";
    v25 = v28;
    v26 = OS_LOG_TYPE_DEFAULT;
LABEL_30:
    _os_log_impl(&dword_226177000, v25, v26, v24, v34, 0x12u);
LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = v9;
  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v11 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v13 = 0;
    v14 = 47;
    do
    {
      v15 = &aLibraryCachesC_4[v12];
      if (v14 == 47)
      {
        v13 = &aLibraryCachesC_4[v12];
      }

      v14 = v15[1];
      if (!v15[1])
      {
        break;
      }

      v16 = v12++ >= 0xFFF;
    }

    while (!v16);
    if (v13)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v34 = 136315394;
    *&v34[4] = v17;
    *&v34[12] = 1024;
    *&v34[14] = 302;
    _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client meets security standards.", v34, 0x12u);
  }

LABEL_32:

  return v10;
}

- (BOOL)isSupportedSPIClient
{
  v2 = copy_current_process_name();
  v3 = [&unk_283960ED8 containsObject:v2];

  return v3;
}

- (BOOL)containsValidEntitlements
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v2;
  v3 = _Block_copy(aBlock);
  v39[4] = 0;
  error = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_2;
  v39[3] = &__block_descriptor_40_e5_v8__0l;
  v4 = _Block_copy(v39);
  v5 = SecTaskCopyValueForEntitlement(v2, @"com.apple.appattest.spi", &error);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_3;
  v38[3] = &__block_descriptor_40_e5_v8__0l;
  v38[4] = v5;
  v6 = _Block_copy(v38);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v7 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_4[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_4[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }

        v12 = v8++ >= 0xFFF;
      }

      while (!v12);
      v13 = CFErrorCopyDescription(error);
      if (v9)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *buf = 136315650;
      v43 = v14;
      v44 = 1024;
      v45 = 334;
      v46 = 2112;
      v47 = v13;
      v15 = v13;
      _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch AppAttest SPI entitlement value. { error=%@ }", buf, 0x1Cu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v5 || v5 != *MEMORY[0x277CBED28])
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v26 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v27 = 0;
    v28 = 0;
    v29 = 47;
    do
    {
      v30 = &aLibraryCachesC_4[v27];
      if (v29 == 47)
      {
        v28 = &aLibraryCachesC_4[v27];
      }

      v29 = v30[1];
      if (!v30[1])
      {
        break;
      }

      v12 = v27++ >= 0xFFF;
    }

    while (!v12);
    if (v28)
    {
      v31 = v28 + 1;
    }

    else
    {
      v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *buf = 136315394;
    v43 = v31;
    v44 = 1024;
    v45 = 339;
    v32 = "%25s:%-5d AppAttest SPI entitlement value is invalid.";
    goto LABEL_48;
  }

  v18 = SecTaskCopyValueForEntitlement(v2, @"com.apple.security.attestation.access", &error);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v7 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      v20 = 0;
      v21 = 47;
      do
      {
        v22 = &aLibraryCachesC_4[v19];
        if (v21 == 47)
        {
          v20 = &aLibraryCachesC_4[v19];
        }

        v21 = v22[1];
        if (!v22[1])
        {
          break;
        }

        v12 = v19++ >= 0xFFF;
      }

      while (!v12);
      v23 = CFErrorCopyDescription(error);
      if (v20)
      {
        v24 = v20 + 1;
      }

      else
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *buf = 136315650;
      v43 = v24;
      v44 = 1024;
      v45 = 345;
      v46 = 2112;
      v47 = v23;
      v25 = v23;
      _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch AppAttest attestation SPI entitlement value. { error=%@ }", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

  if (v18 && v18 == v5)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v26 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v33 = 0;
    v34 = 0;
    v35 = 47;
    do
    {
      v36 = &aLibraryCachesC_4[v33];
      if (v35 == 47)
      {
        v34 = &aLibraryCachesC_4[v33];
      }

      v35 = v36[1];
      if (!v36[1])
      {
        break;
      }

      v12 = v33++ >= 0xFFF;
    }

    while (!v12);
    if (v34)
    {
      v37 = v34 + 1;
    }

    else
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *buf = 136315394;
    v43 = v37;
    v44 = 1024;
    v45 = 350;
    v32 = "%25s:%-5d AppAttest attestation SPI entitlement value is invalid.";
LABEL_48:
    _os_log_impl(&dword_226177000, v26, OS_LOG_TYPE_DEBUG, v32, buf, 0x12u);
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  v6[2](v6);

  v4[2](v4);
  v3[2](v3);

  return v16;
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (id)fetchEntitlementForAuditToken:(id *)token withKey:(id)key
{
  v38 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = *MEMORY[0x277CBECE8];
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v8;
  v9 = _Block_copy(aBlock);
  v34[4] = 0;
  error = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_2;
  v34[3] = &__block_descriptor_40_e5_v8__0l;
  v10 = _Block_copy(v34);
  v11 = SecTaskCopyValueForEntitlement(v8, keyCopy, &error);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_3;
  v33[3] = &__block_descriptor_40_e5_v8__0l;
  v33[4] = v11;
  v12 = _Block_copy(v33);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v13 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_4[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_4[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }

        v18 = v14++ >= 0xFFF;
      }

      while (!v18);
      localizedDescription = [(__CFError *)error localizedDescription];
      v20 = localizedDescription;
      if (v15)
      {
        v21 = v15 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315650;
      *&token.val[1] = v21;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 369;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = localizedDescription;
      _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch entitlement. { error=%@ }", &token, 0x1Cu);
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v27 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v28 = 0;
      v29 = 0;
      v30 = 47;
      do
      {
        v31 = &aLibraryCachesC_4[v28];
        if (v30 == 47)
        {
          v29 = &aLibraryCachesC_4[v28];
        }

        v30 = v31[1];
        if (!v31[1])
        {
          break;
        }

        v18 = v28++ >= 0xFFF;
      }

      while (!v18);
      if (v29)
      {
        v32 = v29 + 1;
      }

      else
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v32;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 374;
      _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch entitlement.", &token, 0x12u);
    }

    goto LABEL_16;
  }

  v23 = CFGetTypeID(v11);
  if (v23 != CFNumberGetTypeID())
  {
    v24 = CFGetTypeID(v11);
    if (v24 != CFStringGetTypeID())
    {
      v25 = CFGetTypeID(v11);
      if (v25 != CFBooleanGetTypeID())
      {
LABEL_16:
        v22 = 0;
        goto LABEL_22;
      }
    }
  }

  v22 = v11;
LABEL_22:
  v12[2](v12);

  v10[2](v10);
  v9[2](v9);

  return v22;
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (BOOL)meetsSecurityControlsForAuditToken:(id *)token
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBECE8];
  v6 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AppAttestEligibilityManager_meetsSecurityControlsForAuditToken___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v7;
  v8 = _Block_copy(aBlock);
  if (SecTaskEntitlementsValidated() == 1)
  {
    v9 = 0;
    goto LABEL_114;
  }

  CodeSignStatus = SecTaskGetCodeSignStatus(v7);
  if ((CodeSignStatus & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v11 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v13 = 0;
      v14 = 47;
      do
      {
        v15 = &aLibraryCachesC_4[v12];
        if (v14 == 47)
        {
          v13 = &aLibraryCachesC_4[v12];
        }

        v14 = v15[1];
        if (!v15[1])
        {
          break;
        }

        v16 = v12++ >= 0xFFF;
      }

      while (!v16);
      if (v13)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v17;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 405;
      _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_VALID code sign flag not set.", &token, 0x12u);
    }
  }

  if ((CodeSignStatus & 0x4000000) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v18 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      v20 = 0;
      v21 = 47;
      do
      {
        v22 = &aLibraryCachesC_4[v19];
        if (v21 == 47)
        {
          v20 = &aLibraryCachesC_4[v19];
        }

        v21 = v22[1];
        if (!v22[1])
        {
          break;
        }

        v16 = v19++ >= 0xFFF;
      }

      while (!v16);
      if (v20)
      {
        v23 = v20 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v23;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 406;
      _os_log_impl(&dword_226177000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_PLATFORM_BINARY code sign flag not set.", &token, 0x12u);
    }
  }

  if ((CodeSignStatus & 0x2000) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v24 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v25 = 0;
      v26 = 0;
      v27 = 47;
      do
      {
        v28 = &aLibraryCachesC_4[v25];
        if (v27 == 47)
        {
          v26 = &aLibraryCachesC_4[v25];
        }

        v27 = v28[1];
        if (!v28[1])
        {
          break;
        }

        v16 = v25++ >= 0xFFF;
      }

      while (!v16);
      if (v26)
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v29;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 407;
      _os_log_impl(&dword_226177000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_REQUIRE_LV code sign flag not set.", &token, 0x12u);
    }
  }

  v9 = (CodeSignStatus & 0x4002001) == 67117057;
  if (os_variant_allows_internal_security_policies())
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v30 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v31 = 0;
      v32 = 0;
      v33 = 47;
      do
      {
        v34 = &aLibraryCachesC_4[v31];
        if (v33 == 47)
        {
          v32 = &aLibraryCachesC_4[v31];
        }

        v33 = v34[1];
        if (!v34[1])
        {
          break;
        }

        v16 = v31++ >= 0xFFF;
      }

      while (!v16);
      if (v32)
      {
        v35 = v32 + 1;
      }

      else
      {
        v35 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v35;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 412;
      _os_log_impl(&dword_226177000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Internal build variant, attempting internal binary security check.", &token, 0x12u);
    }

    v36 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v36;
    v37 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:&token];
    v38 = v37;
    v39 = -335552513;
    if (v37)
    {
      bundleIdentifier = [v37 bundleIdentifier];
      v41 = [bundleIdentifier isEqualToString:@"com.apple.DeviceCheckTests.xctrunner"];

      if (v41)
      {
        v42 = -268443649;
      }

      else
      {
        v42 = -335552513;
      }

      if ((CodeSignStatus >> 26) & 1 | v41 & 1)
      {
        v39 = v42;
LABEL_79:
        if ((CodeSignStatus & 0x10000000) == 0)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v49 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v50 = 0;
            v51 = 0;
            v52 = 47;
            do
            {
              v53 = &aLibraryCachesC_4[v50];
              if (v52 == 47)
              {
                v51 = &aLibraryCachesC_4[v50];
              }

              v52 = v53[1];
              if (!v53[1])
              {
                break;
              }

              v16 = v50++ >= 0xFFF;
            }

            while (!v16);
            if (v51)
            {
              v54 = v51 + 1;
            }

            else
            {
              v54 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            token.val[0] = 136315394;
            *&token.val[1] = v54;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = 420;
            _os_log_impl(&dword_226177000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_DEBUGGED code sign flag not set.", &token, 0x12u);
          }
        }

        if ((CodeSignStatus & 0x2000) == 0)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v55 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v56 = 0;
            v57 = 0;
            v58 = 47;
            do
            {
              v59 = &aLibraryCachesC_4[v56];
              if (v58 == 47)
              {
                v57 = &aLibraryCachesC_4[v56];
              }

              v58 = v59[1];
              if (!v59[1])
              {
                break;
              }

              v16 = v56++ >= 0xFFF;
            }

            while (!v16);
            if (v57)
            {
              v60 = v57 + 1;
            }

            else
            {
              v60 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            token.val[0] = 136315394;
            *&token.val[1] = v60;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = 421;
            _os_log_impl(&dword_226177000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_REQUIRE_LV code sign flag not set.", &token, 0x12u);
          }
        }

        v9 = (CodeSignStatus & 0x4002001) == 0x4002001 || (v39 | CodeSignStatus) == -1;

        goto LABEL_114;
      }
    }

    else if ((CodeSignStatus & 0x4000000) != 0)
    {
      goto LABEL_79;
    }

    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v43 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v44 = 0;
      v45 = 0;
      v46 = 47;
      do
      {
        v47 = &aLibraryCachesC_4[v44];
        if (v46 == 47)
        {
          v45 = &aLibraryCachesC_4[v44];
        }

        v46 = v47[1];
        if (!v47[1])
        {
          break;
        }

        v16 = v44++ >= 0xFFF;
      }

      while (!v16);
      if (v45)
      {
        v48 = v45 + 1;
      }

      else
      {
        v48 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v48;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 417;
      _os_log_impl(&dword_226177000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_PLATFORM_BINARY code sign flag not set.", &token, 0x12u);
    }

    goto LABEL_79;
  }

LABEL_114:
  v8[2](v8);

  return v9;
}

void __66__AppAttestEligibilityManager_meetsSecurityControlsForAuditToken___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (id)fetchBundleRecordFor:(id *)for
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  v5 = *&for->var0[4];
  *token.val = *for->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__AppAttestEligibilityManager_fetchBundleRecordFor___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  v28 = 0;
  v8 = *&for->var0[4];
  *token.val = *for->var0;
  *&token.val[4] = v8;
  v9 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:&token error:&v28];
  v10 = v28;
  if (v10)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v11 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v13 = 0;
      v14 = 47;
      do
      {
        v15 = &aLibraryCachesC_4[v12];
        if (v14 == 47)
        {
          v13 = &aLibraryCachesC_4[v12];
        }

        v14 = v15[1];
        if (!v15[1])
        {
          break;
        }

        v16 = v12++ >= 0xFFF;
      }

      while (!v16);
      localizedDescription = [v10 localizedDescription];
      v18 = localizedDescription;
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315650;
      *&token.val[1] = v19;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 443;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = localizedDescription;
      _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch bundle record. { error=%@ }", &token, 0x1Cu);
    }

LABEL_16:
    v20 = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v22 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v23 = 0;
      v24 = 0;
      v25 = 47;
      do
      {
        v26 = &aLibraryCachesC_4[v23];
        if (v25 == 47)
        {
          v24 = &aLibraryCachesC_4[v23];
        }

        v25 = v26[1];
        if (!v26[1])
        {
          break;
        }

        v16 = v23++ >= 0xFFF;
      }

      while (!v16);
      if (v24)
      {
        v27 = v24 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v27;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 448;
      _os_log_impl(&dword_226177000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to construct bundle record from audit token.", &token, 0x12u);
    }

    goto LABEL_16;
  }

  v20 = v9;
LABEL_19:

  v7[2](v7);

  return v20;
}

void __52__AppAttestEligibilityManager_fetchBundleRecordFor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end