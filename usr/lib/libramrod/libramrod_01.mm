CFBooleanRef ramrod_get_effective_production_status_ap()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"effective-production-status-ap");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_effective_production_status_ap");
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_effective_production_status_ap");
  }

  return v0;
}

CFBooleanRef ramrod_get_effective_security_mode_ap()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"effective-security-mode-ap");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_effective_security_mode_ap");
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_effective_security_mode_ap");
  }

  return v0;
}

BOOL ramrod_should_entangle_nonce()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = IORegistryEntryCreateCFProperty(v0, @"entangle-nonce", kCFAllocatorDefault, 0) != 0;
  AMSupportSafeRelease();
  IOObjectRelease(v1);
  return v2;
}

CFDataRef ramrod_hash_stored_apnonce_with_method(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-nonce", kCFAllocatorDefault, 0);
    IOObjectRelease(v3);
    if (ramrod_should_entangle_nonce())
    {
      ramrod_log_msg("Need to entangle the nonce with UID 1. Aborting because we don't know how to do that yet.\n");
    }

    else if (CFProperty)
    {
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        v5 = ramrod_hash_data_with_method(CFProperty, a1);
        goto LABEL_8;
      }
    }

    v5 = 0;
LABEL_8:
    AMSupportSafeRelease();
    return v5;
  }

  return 0;
}

uint64_t ramrod_copy_device_identity_static_info(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  ramrod_log_msg("%s: Attempting to read device identity info\n", "ramrod_copy_device_identity_static_info");
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  v2 = ramrod_copy_crypto_hash_method();
  *(v1 + 88) = v2;
  if (v2)
  {
    ramrod_log_msg_cf(@"%s: image4CryptoHashMethod: %@\n", "ramrod_copy_device_identity_static_info", v2);
  }

  v3 = ramrod_copy_ecid();
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFNumberGetTypeID() || CFNumberGetValue(v4, kCFNumberSInt64Type, v1) != 1)
  {
    goto LABEL_20;
  }

  AMSupportSafeRelease();
  v6 = ramrod_copy_board_id();
  *(v1 + 8) = v6;
  if (!v6 || (v7 = CFGetTypeID(v6), v7 != CFNumberGetTypeID()))
  {
    ramrod_log_msg("%s: Unable to get board ID..\n");
    goto LABEL_20;
  }

  v8 = ramrod_copy_chip_id();
  *(v1 + 16) = v8;
  if (!v8 || (v9 = CFGetTypeID(v8), v9 != CFNumberGetTypeID()))
  {
    ramrod_log_msg("%s: Unable to read chipID\n");
    goto LABEL_20;
  }

  v10 = MGCopyAnswer();
  *(v1 + 24) = v10;
  if (!v10)
  {
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_1C46B8);
    *(v1 + 24) = v10;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFNumberGetTypeID())
  {
    ramrod_log_msg("%s: Failed to read security domain value\n");
    goto LABEL_20;
  }

  certificate_production_status = ramrod_get_certificate_production_status();
  v13 = CFGetTypeID(certificate_production_status);
  if (v13 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("%s: Failed to read certificate production status\n");
    goto LABEL_20;
  }

  *(v1 + 32) = CFBooleanGetValue(certificate_production_status);
  AMSupportSafeRelease();
  if (kCFBooleanTrue)
  {
    v14 = CFGetTypeID(kCFBooleanTrue);
    if (v14 != CFBooleanGetTypeID())
    {
      ramrod_log_msg("%s: Failed to read img4_supported\n");
      goto LABEL_20;
    }

    Value = CFBooleanGetValue(kCFBooleanTrue);
  }

  else
  {
    Value = 0;
  }

  *(v1 + 48) = Value;
  AMSupportSafeRelease();
  certificate_security_mode = ramrod_get_certificate_security_mode();
  v17 = CFGetTypeID(certificate_security_mode);
  if (v17 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("%s: Failed to read security mode\n");
    goto LABEL_20;
  }

  *(v1 + 49) = CFBooleanGetValue(certificate_security_mode);
  AMSupportSafeRelease();
  effective_production_status_ap = ramrod_get_effective_production_status_ap();
  v19 = CFGetTypeID(effective_production_status_ap);
  if (v19 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("%s: Failed to read production status\n");
    goto LABEL_20;
  }

  *(v1 + 51) = CFBooleanGetValue(effective_production_status_ap);
  AMSupportSafeRelease();
  effective_security_mode_ap = ramrod_get_effective_security_mode_ap();
  v21 = CFGetTypeID(effective_security_mode_ap);
  if (v21 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("%s: Failed to read sec mode ap\n");
    goto LABEL_20;
  }

  *(v1 + 50) = CFBooleanGetValue(effective_security_mode_ap);
  AMSupportSafeRelease();
  v22 = ramrod_hash_stored_apnonce_with_method(*(v1 + 88));
  *(v1 + 40) = v22;
  if (!v22)
  {
LABEL_31:
    ramrod_log_msg("Retrieved APNonce (without regeneration) was NULL.\n");
    v24 = *(v1 + 40);
    goto LABEL_32;
  }

  v23 = CFGetTypeID(v22);
  if (v23 != CFDataGetTypeID())
  {
LABEL_20:
    AMSupportSafeRelease();
    ramrod_release_device_identity(v1);
    return 0;
  }

  v24 = *(v1 + 40);
  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (!v24)
  {
    v24 = @"NULL";
  }

  ramrod_log_msg_cf(@"ApNonce (retrieved): %@", v24);
  ramrod_log_msg("Successfully copied device Identity\n");
  ramrod_log_msg_cf(@"DeviceInfo:\nBoardID: %@\nChipID: %@\n", *(v1 + 8), *(v1 + 16));
  AMSupportSafeRelease();
  return 1;
}

double ramrod_release_device_identity(_OWORD *a1)
{
  if (a1)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    result = 0.0;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t ramrod_configure_authinstall_object(uint64_t a1, uint64_t a2)
{
  updated = ramrod_update_copy_ap_parameters(0);
  if (updated)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, updated);
    if (MutableCopy)
    {
      AMAuthInstallSupportDictionarySetInteger64();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterChipID, *(a2 + 16));
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterBoardID, *(a2 + 8));
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterSecurityDomain, *(a2 + 24));
      v5 = *(a2 + 40);
      if (v5 && CFDataGetLength(v5) >= 1)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterApNonce, *(a2 + 40));
      }

      v6 = *(a2 + 64);
      if (v6 && CFDataGetLength(v6) >= 1)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterSepNonce, *(a2 + 64));
      }

      v7 = *(a2 + 88);
      if (v7)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterImg4DigestType, v7);
      }

      if (*(a2 + 104))
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterAllowMixAndMatch, kCFBooleanTrue);
      }

      if (AMAuthInstallApSetParameters())
      {
        ramrod_log_msg("Could not set AP parameters: %d\n");
      }

      else
      {
        if (!*(a2 + 56) || !AMAuthInstallBasebandSetParametersWithUpdaterOutput())
        {
          v8 = 1;
          goto LABEL_18;
        }

        ramrod_log_msg("Could not set baseband parameters: %d\n");
      }
    }
  }

  else
  {
    ramrod_log_msg("Could not query generic AP parameters\n");
  }

  v8 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v8;
}

uint64_t (*setiBULoggingPointer(uint64_t (*result)(const char *, ...)))(const char *, ...)
{
  if (result)
  {
    off_1C6530 = result;
  }

  return result;
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (off_1C6530)
  {
    v12 = [v10 UTF8String];
    off_1C6530("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(&cfstr_S_5.isa, a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

uint64_t sub_12F5C(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D5CC4(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_133F4(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_D5DD8(&v2, v3);
    }
  }

  return result;
}

double sub_13494(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL sub_134AC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

id ramrod_splat_enabled(void *a1)
{
  if (!a1)
  {
    ramrod_log_msg("%s: Warning: build identity is NULL\n");
    return 0;
  }

  v1 = [a1 objectForKeyedSubscript:@"Manifest"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    ramrod_log_msg("%s: Warning: build identity -> Manifest is NULL or invalid\n");
    return 0;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [v1 allKeys];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasPrefix:{@"Cryptex1, "}])
        {
          return &dword_0 + 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      result = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t ramrod_splat_local_policy_supported(void *a1)
{
  v6[0] = [NSNumber numberWithInt:8198];
  v6[1] = [NSNumber numberWithInt:8224];
  v6[2] = [NSNumber numberWithInt:8228];
  v6[3] = [NSNumber numberWithInt:0x4000];
  v6[4] = [NSNumber numberWithInt:0x8000];
  v6[5] = [NSNumber numberWithInt:32769];
  v6[6] = [NSNumber numberWithInt:32771];
  v6[7] = [NSNumber numberWithInt:32774];
  v6[8] = [NSNumber numberWithInt:32784];
  v6[9] = [NSNumber numberWithInt:32785];
  v6[10] = [NSNumber numberWithInt:32786];
  v6[11] = [NSNumber numberWithInt:32789];
  v6[12] = [NSNumber numberWithInt:32800];
  v6[13] = [NSNumber numberWithInt:32816];
  v6[14] = [NSNumber numberWithInt:33537];
  v2 = [[NSArray arrayWithObjects:15 count:?], "containsObject:", a1];
  v3 = [a1 unsignedIntValue];
  v4 = "is";
  if (v2)
  {
    v4 = "is not";
  }

  ramrod_log_msg("%s: 0x%x %s supported\n", "ramrod_splat_local_policy_supported", v3, v4);
  return v2 ^ 1;
}

uint64_t ramrod_splat_install(void *a1, CFErrorRef *a2, uint64_t a3)
{
  v61 = +[NSFileManager defaultManager];
  v69 = 0;
  v6 = sub_13F34(a1, @"SplatOnlyUpdate");
  v7 = sub_13F34(a1, @"SplatComboUpdate");
  v8 = sub_13F34(a1, @"StageToProposed");
  v9 = v8;
  v10 = v6 | v7;
  if ((v6 | v7) & 1) == 0 || (v8)
  {
    v12 = [a1 objectForKeyedSubscript:@"BuildIdentity"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v12)
    {
      v11 = "missing RAMROD_SPLAT_OPT_BUILD_IDENTITY";
      goto LABEL_10;
    }

    v67 = 0;
    v68 = 0;
    v13 = sub_15050(a1);
    result = sub_15100(v13, a1, &v68, &v67, a2);
    if (!result)
    {
      return result;
    }

    if (v9)
    {
      v15 = v67;
    }

    else
    {
      v15 = v68;
      sub_14040(v67, 0);
    }

    v59 = a3;
    v60 = v15;
    if (v7)
    {
      ramrod_log_msg("%s: Keeping existing proposed directory for combo update\n", "ramrod_splat_install");
      [v68 stringByAppendingPathComponent:@"/rollback"];
      v19 = v67;
    }

    else
    {
      if (!sub_14040(v15, &v69) || !sub_140C0(v15, &v69))
      {
        v36 = v69;
        v37 = "failed to recreate destination directory";
        goto LABEL_46;
      }

      if (((v6 | v7) & 1) == 0)
      {
LABEL_49:
        v40 = v10;
        v41 = &dword_1A8EB8;
        v42 = 9;
        while (1)
        {
          v43 = *v41;
          if (v43 || (v44 = *(v41 + 1), sub_143E0(v12, [NSString stringWithUTF8String:v44])))
          {
            v45 = *(v41 + 4);
            if (v45)
            {
              v45 = [NSString stringWithUTF8String:?];
            }

            if (v43 == 1)
            {
              v45 = sub_141EC(0, a2);
            }

            v46 = v15;
            if (v45)
            {
              v46 = [v15 stringByAppendingPathComponent:?];
            }

            if (v43 > 3)
            {
              if (v43 == 4)
              {
                v47 = "system version plist";
              }

              else if (v43 == 5)
              {
                v47 = "build manifest plist";
              }

              else
              {
                v47 = "global manifest";
                if (v43 == 6)
                {
                  v47 = "reverse patch";
                }
              }
            }

            else if (v43)
            {
              if (v43 == 2)
              {
                v47 = "global manifest directory root";
              }

              else
              {
                v47 = "global manifest";
                if (v43 == 3)
                {
                  v47 = "restore version plist";
                }
              }
            }

            else
            {
              v47 = *(v41 + 1);
            }

            ramrod_log_msg("%s: Installing %s -> %s\n", "ramrod_splat_install", v47, [v46 UTF8String]);
            if (!sub_140C0([v46 stringByDeletingLastPathComponent], &v69))
            {
              v36 = v69;
              v37 = "failed to create containing directory";
LABEL_86:
              v38 = a2;
              goto LABEL_47;
            }

            v48 = *(v41 + 1);
            if (((*(v59 + 16))(v59, v43, v48, [v46 fileSystemRepresentation]) & 1) == 0)
            {
              v49 = sub_13F34(a1, @"SafariDownlevelUpdate");
              v50 = 57;
              if (v49)
              {
                v50 = 58;
              }

              if (*(v41 + v50) == 1)
              {
                ramrod_log_msg("%s: %s\n", "ramrod_splat_install", "install handler failed");
                ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2011, 0, @"%s", v53, v54, v55, "install handler failed");
                return 0;
              }
            }

            if ((v40 & 1) != 0 && *(v41 + 59) == 1)
            {
              v51 = [v60 stringByAppendingPathComponent:@"/rollback/payloadv2"];
              v52 = [v51 fileSystemRepresentation];
              ramrod_log_msg("%s: Copying reverse patch %s -> %s\n", "ramrod_splat_install", *(v41 + 6), v52);
              if (!sub_140C0(v51, &v69))
              {
                v36 = v69;
                v37 = "failed to create containing directory for reverse patch";
                goto LABEL_86;
              }

              if (((*(v59 + 16))(v59, 6, v48, v52) & 1) == 0)
              {
                v37 = "install handler failed for reverse patch";
                v38 = a2;
                v39 = 2011;
                v36 = 0;
                goto LABEL_48;
              }
            }
          }

          else
          {
            ramrod_log_msg("%s: %s isn't present in build identity, skipping\n", "ramrod_splat_install", v44);
          }

          v41 += 16;
          --v42;
          v15 = v60;
          if (!v42)
          {
            return ramrod_splat_write_personalized_ticket(a1, a2);
          }
        }
      }

      v34 = v68;
      v35 = [v68 stringByAppendingPathComponent:@"/rollback"];
      if ([(NSFileManager *)v61 fileExistsAtPath:v35])
      {
        v19 = v35;
      }

      else
      {
        v19 = v34;
      }
    }

    ramrod_log_msg_cf(@"%s: Preserving rollback objects from %@\n", "ramrod_splat_install", v19);
    v20 = [v15 stringByAppendingPathComponent:@"/rollback"];
    if (sub_140C0(v20, &v69))
    {
      v57 = v12;
      v21 = [(NSFileManager *)v61 contentsOfDirectoryAtPath:v19 error:&v69];
      if (!v21)
      {
        v36 = v69;
        v37 = "failed to list current dir for rollback clones";
        v38 = a2;
        v39 = 2010;
        goto LABEL_48;
      }

      v22 = v21;
      v56 = v10;
      v58 = a2;
      v23 = +[NSMutableArray array];
      v24 = 9;
      v25 = &off_1A8ED8;
      do
      {
        if (*(v25 + 27) == 1 && *v25)
        {
          [v23 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:")}];
        }

        v25 += 8;
        --v24;
      }

      while (v24);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v26 = [(NSArray *)v22 countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v64;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v64 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(*(&v63 + 1) + 8 * i);
            if ([v23 containsObject:v30])
            {
              ramrod_log_msg_cf(@"%s: Skipping %@\n", "ramrod_splat_install", v30);
            }

            else
            {
              v31 = [v19 stringByAppendingPathComponent:v30];
              v32 = [v20 stringByAppendingPathComponent:v30];
              v62 = 0;
              if ([(NSFileManager *)v61 fileExistsAtPath:v31 isDirectory:&v62]&& (v62 & 1) == 0 && !sub_14148(v31, v32, &v69))
              {
                v36 = v69;
                v37 = "failed to clone boot object for rollback";
                v38 = v58;
                v39 = 2007;
                goto LABEL_48;
              }
            }
          }

          v27 = [(NSArray *)v22 countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v27);
      }

      a2 = v58;
      v33 = sub_141EC(1, v58);
      if (v33)
      {
        sub_14040([v20 stringByAppendingPathComponent:v33], 0);
      }

      sub_14040([v20 stringByAppendingPathComponent:@"CryptexUpgradeManifest.plist"], 0);
      v15 = v60;
      v10 = v56;
      v12 = v57;
      goto LABEL_49;
    }

    v36 = v69;
    v37 = "failed to recreate rollback directory";
LABEL_46:
    v38 = a2;
LABEL_47:
    v39 = 2009;
LABEL_48:
    sub_13F9C(v38, v39, v36, "ramrod_splat_install", v37);
    return 0;
  }

  v11 = "missing RAMROD_SPLAT_OPT_STAGE_TO_PROPOSED";
LABEL_10:
  ramrod_log_msg("%s: %s\n", "ramrod_splat_install", v11);
  ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2000, 0, @"%s", v16, v17, v18, v11);
  return 0;
}

id sub_13F34(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

void sub_13F9C(CFErrorRef *a1, CFIndex a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    [objc_msgSend(a3 "description")];
    ramrod_log_msg("%s: %s: %s\n");
  }

  else
  {
    ramrod_log_msg("%s: %s\n");
  }

  ramrod_create_error_cf(a1, @"RamrodErrorDomain", a2, a3, @"%s", v9, v10, v11, a5);
}

BOOL sub_14040(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  ramrod_log_msg("Removing %s\n", [a1 fileSystemRepresentation]);
  result = [(NSFileManager *)v4 removeItemAtPath:a1 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_140C0(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  ramrod_log_msg("Creating directory at %s\n", [a1 fileSystemRepresentation]);
  result = [(NSFileManager *)v4 createDirectoryAtPath:a1 withIntermediateDirectories:1 attributes:0 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_14148(void *a1, void *a2, void *a3)
{
  v5 = [a1 fileSystemRepresentation];
  v6 = [a2 fileSystemRepresentation];
  ramrod_log_msg("Cloning %s -> %s\n", v5, v6);
  v7 = clonefile(v5, v6, 0);
  if (v7)
  {
    v8 = __error();
    if (a3)
    {
      *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*v8 userInfo:0];
    }
  }

  return v7 == 0;
}

NSString *sub_141EC(int a1, CFErrorRef *a2)
{
  memset(v17, 0, 255);
  v16 = 255;
  if ((sysctlbyname("hw.target", v17, &v16, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v4 = *__error();
  if (v4 == 2)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v13 = __error();
    sub_15B94(a2, 2004, *v13, "_ticket_file_name_personalized", "sysctlbyname() failed for hw.target");
    return 0;
  }

  if (!LOBYTE(v17[0]))
  {
LABEL_6:
    __strlcpy_chk();
  }

  v5 = [[NSString stringWithUTF8String:?]];
  if (!a1)
  {
    return [NSString stringWithFormat:@"apticket.%@.im4m", v5, v14];
  }

  *buffer = 0;
  v6 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v6)
  {
    v7 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, @"unique-chip-id", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      v10 = CFGetTypeID(CFProperty);
      if (v10 == CFDataGetTypeID())
      {
        v18.location = 0;
        v18.length = 8;
        CFDataGetBytes(v9, v18, buffer);
      }

      CFRelease(v9);
    }

    IOObjectRelease(v7);
    v11 = *buffer;
  }

  else
  {
    v11 = 0;
  }

  return [NSString stringWithFormat:@"apticket.%@.%llX.im4m", v5, v11];
}

BOOL sub_143E0(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:@"Manifest"];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [v3 objectForKey:a2] != 0;
}

uint64_t ramrod_splat_write_personalized_ticket(void *a1, CFErrorRef *a2)
{
  v26 = 0;
  v4 = sub_15050(a1);
  v24 = 0;
  v25 = 0;
  if (!sub_15100(v4, a1, &v25, &v24, a2))
  {
    return 0;
  }

  if (sub_13F34(a1, @"StageToProposed"))
  {
    v5 = &v24;
  }

  else
  {
    v5 = &v25;
  }

  v6 = *v5;
  v7 = [a1 objectForKeyedSubscript:@"TicketData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v7)
  {
    v8 = sub_141EC(1, a2);
    if (!v8)
    {
      return 0;
    }

    v9 = [v6 stringByAppendingPathComponent:v8];
    ramrod_log_msg_cf(@"%s: writing cryptex1 ticket to %@\n", "ramrod_splat_write_personalized_ticket", v9);
    if (([v7 writeToFile:v9 options:1 error:&v26] & 1) == 0)
    {
      v16 = v26;
      v17 = "failed to write cryptex1 ticket";
      v18 = a2;
      v19 = 2005;
      goto LABEL_20;
    }
  }

  v10 = [a1 objectForKeyedSubscript:@"LocalPolicyData"];
  objc_opt_class();
  v11 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v10)
  {
    return v11;
  }

  v12 = [a1 objectForKeyedSubscript:@"ApTicketHashData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v12)
  {
    ramrod_log_msg("%s: %s\n", "ramrod_splat_write_personalized_ticket", "ticket hash required to write local policy");
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2012, 0, @"%s", v20, v21, v22, "ticket hash required to write local policy");
    return 0;
  }

  v13 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 2 * [v12 length]);
  if ([v12 length])
  {
    v14 = 0;
    do
    {
      -[NSMutableString appendFormat:](v13, "appendFormat:", @"%02hhX", *([v12 bytes] + v14++));
    }

    while (v14 < [v12 length]);
  }

  v15 = [objc_msgSend(v4 stringByAppendingPathComponent:{v13), "stringByAppendingPathComponent:", @"LocalPolicy.cryptex1.img4"}];
  ramrod_log_msg_cf(@"%s: writing cryptex1 local policy to %@\n", "ramrod_splat_write_personalized_ticket", v15);
  v11 = 1;
  if (([v10 writeToFile:v15 options:1 error:&v26] & 1) == 0)
  {
    v16 = v26;
    v17 = "failed to write cryptex1 local policy";
    v18 = a2;
    v19 = 2006;
LABEL_20:
    sub_13F9C(v18, v19, v16, "ramrod_splat_write_personalized_ticket", v17);
    return 0;
  }

  return v11;
}

uint64_t ramrod_splat_verify(void *a1, void *a2)
{
  v55 = 0;
  v56[0] = 0;
  v4 = sub_15050(a1);
  if (!sub_15100(v4, a1, v56, &v55, 0))
  {
    return 22;
  }

  v5 = v56[0];
  if (sub_13F34(a1, @"StageToProposed"))
  {
    v5 = v55;
  }

  v6 = sub_141EC(0, 0);
  v7 = sub_141EC(1, 0);
  v8 = 22;
  if (v6)
  {
    v9 = v7;
    if (v7)
    {
      v10 = [v5 stringByAppendingPathComponent:v6];
      v11 = [v5 stringByAppendingPathComponent:v9];
      v12 = [a1 objectForKeyedSubscript:@"VerifyManifestPathOverride"];
      v13 = &classRef_NSError;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_13F34(a1, @"VerifyGlobalManifest");
      v16 = v15;
      if (v15)
      {
        v17 = v10;
      }

      else
      {
        v17 = v11;
      }

      if (v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      ramrod_log_msg("%s: Verifying manifest: %s\n", "ramrod_splat_verify", [v18 fileSystemRepresentation]);
      if (!sub_D5200(2, 16, 0, 0))
      {
        ramrod_log_msg("%s: AppleImage4 API unavailable, skipping verification\n");
        return 19;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      LOWORD(v59) = 6;
      bzero(v58, 0x3C0uLL);
      v57 = 0;
      memset(&v56[1], 0, 48);
      if (v16)
      {
        if (&_img4_chip_ap_reduced)
        {
LABEL_18:
          if (!off_1AD480 || a2)
          {
            if (!off_1AD478)
            {
              goto LABEL_32;
            }

            if (!a2)
            {
              goto LABEL_32;
            }

            cryptex1_boot = img4_chip_get_cryptex1_boot();
            v20 = "boot";
            if (!cryptex1_boot)
            {
              goto LABEL_32;
            }
          }

          else
          {
            cryptex1_boot_proposal = img4_chip_get_cryptex1_boot_proposal();
            v20 = "boot proposal";
            if (!cryptex1_boot_proposal)
            {
LABEL_32:
              ramrod_log_msg("%s: cryptex1 chips unavailable, skipping verification\n");
              return 19;
            }
          }

          ramrod_log_msg("%s: Verifying against cryptex1 %s coprocessor\n", "ramrod_splat_verify", v20);
          v22 = [a1 objectForKeyedSubscript:@"VerifyIUOUOverride"];
          v23 = [a1 objectForKeyedSubscript:@"VerifyEUOUOverride"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v24 = img4_chip_instantiate();
            if (v24)
            {
              v8 = v24;
              v25 = strerror(v24);
              ramrod_log_msg("%s: img4_chip_instantiate() failed: %d (%s)\n", "ramrod_splat_verify", v8, v25);
              return v8;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ramrod_log_msg("%s: Overriding chip with iuou = %i\n", "ramrod_splat_verify", [v22 BOOLValue]);
              BYTE4(v62) = [v22 BOOLValue];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ramrod_log_msg("%s: Overriding chip with euou = %i\n", "ramrod_splat_verify", [v23 BOOLValue]);
              BYTE6(v62) = [v23 BOOLValue];
            }

            img4_chip_init_from_buff();
            img4_chip_custom();
          }

          if (a2)
          {
            if ([a2 length] >= 0x31)
            {
              ramrod_log_msg("%s: Nonce exceeds maximum length\n", "ramrod_splat_verify");
              return 22;
            }

            HIDWORD(v57) = [a2 length];
            [a2 getBytes:&v56[1] + 2 length:{objc_msgSend(a2, "length")}];
          }

          v27 = &dword_1A8EB8;
          v28 = 9;
          v29 = 0uLL;
          v30 = xmmword_10A0B8;
          while (1)
          {
            v53 = v29;
            v54 = v29;
            v51 = v29;
            v52 = v29;
            v49 = v30;
            v50 = 0;
            v48 = 0;
            if (*(v27 + 60) == 1)
            {
              v31 = v13;
              v32 = [v5 stringByAppendingPathComponent:{objc_msgSend(v13[10], "stringWithUTF8String:", *(v27 + 4))}];
              v33 = [v32 fileSystemRepresentation];
              v34 = [v18 fileSystemRepresentation];
              if (access(v33, 0))
              {
                v35 = *__error();
                v36 = sub_13F34(a1, @"SafariDownlevelUpdate");
                v37 = 57;
                if (v36)
                {
                  v37 = 58;
                }

                v13 = v31;
                v29 = 0uLL;
                v30 = xmmword_10A0B8;
                if (*(v27 + v37) == 1)
                {
                  v42 = strerror(v35);
                  ramrod_log_msg("%s: Payload not found (%s): %d %s\n", "ramrod_splat_verify", v33, v35, v42);
                  return v35;
                }
              }

              else
              {
                if (access(v34, 0))
                {
                  v43 = __error();
                  v8 = *v43;
                  v44 = strerror(*v43);
                  ramrod_log_msg("%s: Manifest not found (%s): %d %s\n", "ramrod_splat_verify", v34, v8, v44);
                  return v8;
                }

                v38 = [NSData dataWithContentsOfFile:v32];
                *(&v53 + 1) = [(NSData *)v38 bytes];
                *&v54 = [(NSData *)v38 length];
                v39 = v27[6];
                v48 = img4_firmware_new();
                if (!v48)
                {
                  ramrod_log_msg("%s: img4_firmware_new() failed\n", "ramrod_splat_verify");
                  return 12;
                }

                v40 = [NSData dataWithContentsOfFile:v18];
                *(&v51 + 1) = [(NSData *)v40 bytes];
                *&v52 = [(NSData *)v40 length];
                if (!v52)
                {
                  ramrod_log_msg("%s: Manifest is empty", "ramrod_splat_verify");
                  img4_firmware_destroy();
                  return 96;
                }

                img4_firmware_attach_manifest();
                v41 = img4_firmware_evaluate();
                img4_firmware_destroy();
                v47 = 0;
                v46 = bswap32(v39);
                if (v41)
                {
                  v45 = strerror(v41);
                  ramrod_log_msg("%s: Failed to verify %s (%s): %d %s\n", "ramrod_splat_verify", &v46, v33, v41, v45);
                  return v41;
                }

                ramrod_log_msg("%s: Successfully verified %s (%s)\n", "ramrod_splat_verify", &v46, v33);
                v13 = v31;
                v29 = 0uLL;
                v30 = xmmword_10A0B8;
              }
            }

            v27 += 16;
            if (!--v28)
            {
              return 0;
            }
          }
        }
      }

      else if (img4_chip_select_personalized_ap())
      {
        goto LABEL_18;
      }

      ramrod_log_msg("%s: Failed to get AP chip\n", "ramrod_splat_verify");
      return 2;
    }
  }

  return v8;
}

uint64_t ramrod_splat_stage_rollback(void *a1, CFErrorRef *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v6 = sub_15050(a1);
  result = sub_15100(v6, a1, &v22, &v21, a2);
  if (!result)
  {
    return result;
  }

  v8 = [v22 stringByAppendingPathComponent:@"/rollback"];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [v8 fileSystemRepresentation];
    ramrod_log_msg("%s: Rollback directory does not exist: %s\n");
    return 0;
  }

  if (!sub_14040(v21, &v23))
  {
    v17 = v23;
    v18 = "failed to remove destination directory";
    v19 = a2;
    v20 = 2008;
    goto LABEL_17;
  }

  if (!sub_14148(v8, v21, &v23))
  {
    v17 = v23;
    v18 = "failed to clone rollback directory";
    v19 = a2;
    v20 = 2007;
    goto LABEL_17;
  }

  v9 = [v21 stringByAppendingPathComponent:@"/payloadv2"];
  v10 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v9];
  v11 = [v9 fileSystemRepresentation];
  if ((v10 & 1) == 0)
  {
    ramrod_log_msg("%s: Assets directory does not exist: %s\n");
    return 0;
  }

  v12 = 9;
  for (i = &byte_1A8EF3; *(i - 59) || *i != 1; i += 64)
  {
LABEL_11:
    if (!--v12)
    {
      sub_14040(v9, 0);
      return 1;
    }
  }

  v14 = *(i - 27);
  v15 = [v22 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  v16 = [v21 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  if (sub_140C0([v16 stringByDeletingLastPathComponent], &v23))
  {
    result = (*(a3 + 16))(a3, v11, *(i - 11), [v15 fileSystemRepresentation], objc_msgSend(v16, "fileSystemRepresentation"));
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v17 = v23;
  v18 = "failed to create containing directory";
  v19 = a2;
  v20 = 2009;
LABEL_17:
  sub_13F9C(v19, v20, v17, "ramrod_splat_stage_rollback", v18);
  return 0;
}

id sub_15050(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL sub_15100(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5)
{
  if (a1)
  {
    if (sub_13F34(a2, @"SafariDownlevelUpdate"))
    {
      v8 = @"downlevel";
    }

    else
    {
      v8 = @"cryptex1";
    }

    v9 = [a1 stringByAppendingPathComponent:v8];
    v10 = v9;
    if (a3)
    {
      *a3 = [v9 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v10 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", "_get_splat_preboot_paths", "preboot directory is nil");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v12, v13, v14, "preboot directory is nil");
  }

  return a1 != 0;
}

uint64_t ramrod_splat_commit_proposed(void *a1, CFErrorRef *a2)
{
  v14 = 0;
  v15 = 0;
  v4 = sub_15050(a1);
  result = sub_15100(v4, a1, &v15, &v14, a2);
  if (result)
  {
    v6 = [v14 fileSystemRepresentation];
    result = sub_1535C(v6, [v15 fileSystemRepresentation], a2);
    if (result)
    {
      v14 = 0;
      v15 = 0;
      v7 = sub_15050(a1);
      if (v7)
      {
        v8 = v7;
        if ((sub_13F34(a1, @"SafariDownlevelUpdate") & 1) == 0 && (sub_13F34(a1, @"SplatOnlyUpdate") & 1) == 0)
        {
          v9 = [v8 stringByAppendingPathComponent:@"supplemental"];
          v15 = [v9 stringByAppendingPathComponent:@"current"];
          v14 = [v9 stringByAppendingPathComponent:@"proposed"];
          v10 = [v14 fileSystemRepresentation];
          sub_1535C(v10, [v15 fileSystemRepresentation], a2);
        }
      }

      else
      {
        ramrod_log_msg("%s: %s\n", "_get_supplemental_preboot_paths", "preboot directory is nil");
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2001, 0, @"%s", v11, v12, v13, "preboot directory is nil");
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1535C(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, CFErrorRef *a3)
{
  if (!access(a1, 0))
  {
    if (access(a2, 0))
    {
      ramrod_log_msg("%s: Moving %s to %s\n", "ramrod_splat_commit_proposed_internal", a1, a2);
      rename(a1, a2, v7);
      if (!v8)
      {
        return 1;
      }

      v9 = *__error();
      v10 = "rename() failed";
      v11 = a3;
      v12 = 2002;
    }

    else
    {
      ramrod_log_msg("%s: Swapping %s with %s\n", "ramrod_splat_commit_proposed_internal", a1, a2);
      if (!renamex_np(a1, a2, 2u))
      {
        v6 = 1;
        if (!removefile(a1, 0, 1u))
        {
          return v6;
        }

        v14 = __error();
        strerror(*v14);
        ramrod_log_msg("%s: Failed to delete proposed (%s): %d (%s)\n");
        return 1;
      }

      v9 = *__error();
      v10 = "rename_np() failed";
      v11 = a3;
      v12 = 2003;
    }

    sub_15B94(v11, v12, v9, "ramrod_splat_commit_proposed_internal", v10);
    return 0;
  }

  ramrod_log_msg("%s: Warning: proposed directory doesn't exist, skipping: %s\n");
  return 1;
}

BOOL ramrod_splat_cleanup(void *a1)
{
  ramrod_log_msg("%s: Cleaning up proposed directory in preboot\n", "ramrod_splat_cleanup");
  v4 = 0;
  v2 = sub_15050(a1);
  result = sub_15100(v2, a1, 0, &v4, 0);
  if (result)
  {
    return sub_14040(v4, 0);
  }

  return result;
}

id ramrod_splat_copy_object_path(const char *a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_15050(a2);
  if (!sub_15100(v4, a2, &v11, &v10, 0))
  {
    return 0;
  }

  v5 = v11;
  if (sub_13F34(a2, @"StageToProposed"))
  {
    v6 = v10;
  }

  else
  {
    v6 = v5;
  }

  if (!a1)
  {
    if (v6)
    {
      return CFRetain(v6);
    }

    return 0;
  }

  v7 = &dword_1A8EB8;
  v8 = 9;
  while (*v7 || strcmp(*(v7 + 1), a1))
  {
    v7 += 16;
    if (!--v8)
    {
      return 0;
    }
  }

  result = [v6 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", *(v7 + 4))}];
  v6 = result;
  if (result)
  {
    return CFRetain(v6);
  }

  return result;
}

char *ramrod_splat_object_image_patch_tag(char *__s2)
{
  v2 = &off_1A8EE8;
  v3 = 9;
  while (strcmp(*(v2 - 5), __s2))
  {
    v2 += 8;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t ramrod_splat_object_4cc(char *__s2)
{
  v2 = &dword_1A8EB8;
  v3 = 9;
  while (*v2 || strcmp(*(v2 + 1), __s2))
  {
    v2 += 16;
    if (!--v3)
    {
      return 0;
    }
  }

  return v2[6];
}

CFTypeRef ramrod_splat_copy_rollback_assets_path(void *a1)
{
  v6 = 0;
  v2 = sub_15050(a1);
  if (!sub_15100(v2, a1, &v6, 0, 0))
  {
    return 0;
  }

  v3 = [v6 stringByAppendingPathComponent:@"/rollback/payloadv2"];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 0;
  }

  else
  {
    return CFRetain(v3);
  }
}

NSString *ramrod_splat_copy_ticket_path(void *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v4 = sub_15050(a1);
  if (!sub_15100(v4, a1, &v12, &v11, 0))
  {
    return 0;
  }

  v5 = v12;
  v6 = sub_13F34(a1, @"StageToProposed");
  v7 = v11;
  result = sub_141EC(a2, 0);
  if (result)
  {
    v9 = result;
    if (v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    result = [v10 stringByAppendingPathComponent:{v9, v11}];
    if (result)
    {
      return CFRetain(result);
    }
  }

  return result;
}

uint64_t _ramrod_splat_object_iter(uint64_t a1)
{
  v2 = &dword_1A8EB8;
  v3 = 9;
  do
  {
    result = (*(a1 + 16))(a1, v2);
    v2 += 16;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t ramrod_splat_get_total_cryptex_size(void *a1, CFErrorRef *a2)
{
  v3 = [a1 objectForKeyedSubscript:@"BuildIdentity"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v3)
  {
    ramrod_log_msg("%s: %s\n", "ramrod_splat_get_total_cryptex_size", "missing RAMROD_SPLAT_OPT_BUILD_IDENTITY");
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2000, 0, @"%s", v16, v17, v18, "missing RAMROD_SPLAT_OPT_BUILD_IDENTITY");
    return 0;
  }

  if (!ramrod_splat_enabled(v3))
  {
    ramrod_log_msg("%s: Cryptexes not supported in this environment. Returning 0 for size\n", "ramrod_splat_get_total_cryptex_size");
    return 0;
  }

  v21 = 0;
  v4 = &off_1A8EC8;
  v5 = 9;
  do
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    if (!v7 || !v6)
    {
      ramrod_log_msg("%s: Tag or info_size_key not specified for this entry, skipping. Tag: %s InfoSizeKey: %s\n");
      goto LABEL_17;
    }

    if (*(v4 - 4))
    {
      goto LABEL_17;
    }

    v8 = [NSString stringWithUTF8String:*(v4 - 1)];
    v9 = [NSString stringWithUTF8String:v6];
    if (!sub_143E0(v3, v8))
    {
      ramrod_log_msg("%s: %s isn't present in the build identity dictionary, skipping\n");
      goto LABEL_17;
    }

    v10 = [v3 objectForKeyedSubscript:@"Info"];
    if (!v9)
    {
      v13 = "Invalid arguments passed to %s\n";
LABEL_21:
      ramrod_log_msg(v13, "_build_identity_info_dict_contains_entry");
LABEL_22:
      ramrod_log_msg("%s: Could not find entry for %s in the buildIdentity info dict. Skipping\n");
      goto LABEL_17;
    }

    v11 = v10;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = "%s: BuildIdentity does not contain 'Info' key\n";
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_21;
    }

    if (![v11 objectForKey:v9])
    {
      goto LABEL_22;
    }

    ramrod_log_msg("%s: Found entry for %s in buildIdentity\n", "ramrod_splat_get_total_cryptex_size", v6);
    v14 = [v3 objectForKeyedSubscript:@"Info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 objectForKeyedSubscript:v9];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
      {
        ramrod_log_msg("%s: Size of %s is %lld MB\n", "ramrod_splat_get_total_cryptex_size", v7, [v15 longLongValue]);
        v21 += [v15 longLongValue];
        goto LABEL_17;
      }
    }

    else
    {
      ramrod_log_msg("%s: Unable to read info dictionary from build identity for %s\n", "ramrod_splat_get_total_cryptex_size", v6);
    }

    ramrod_log_msg("%s: Unable to read size of %s. Skipping\n");
LABEL_17:
    v4 += 8;
    --v5;
  }

  while (v5);
  if (v21)
  {
    v19 = v21 << 20;
    ramrod_log_msg("%s: Total size of cryptexes is %lld bytes\n");
  }

  else
  {
    v19 = 3355443200;
    ramrod_log_msg("%s: Unable to determine size of any cryptex. Returning default size(%lld bytes)\n");
  }

  return v19;
}

void sub_15B94(CFErrorRef *a1, CFIndex a2, int __errnum, const char *a4, const char *a5)
{
  v10 = strerror(__errnum);
  ramrod_log_msg("%s: %s: %d (%s)\n", a4, a5, __errnum, v10);
  v11 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, __errnum, 0);
  ramrod_create_error_cf(a1, @"RamrodErrorDomain", a2, v11, @"%s", v12, v13, v14, a5);
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t picoPNG::decodePNG(uint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5, char a6)
{
  v6 = 0;
  *v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v7 = 48;
  if (!a4)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  if (!a5)
  {
LABEL_21:
    *a2 = v9;
    *a3 = v6;
    return v7;
  }

  if (a5 < 0x1D)
  {
    v6 = 0;
    v9 = 0;
    v7 = 27;
    goto LABEL_21;
  }

  if (*a4 != 137 || a4[1] != 80 || a4[2] != 78 || a4[3] != 71 || a4[4] != 13 || a4[5] != 10 || a4[6] != 26 || a4[7] != 10)
  {
    v6 = 0;
    v9 = 0;
    v7 = 28;
    goto LABEL_21;
  }

  if (a4[12] != 73 || a4[13] != 72 || a4[14] != 68 || a4[15] != 82)
  {
    v6 = 0;
    v9 = 0;
    v7 = 29;
    goto LABEL_21;
  }

  v10 = a2;
  v11 = a3;
  v9 = bswap32(*(a4 + 4));
  v6 = bswap32(*(a4 + 5));
  v103 = v9;
  v104 = v6;
  v12 = a4[24];
  v13 = a4[25];
  v105 = v13;
  v106 = v12;
  if (a4[26])
  {
    v7 = 32;
LABEL_28:
    a2 = v10;
    goto LABEL_21;
  }

  if (a4[27])
  {
    v7 = 33;
    goto LABEL_28;
  }

  v109 = a4[28];
  if (v109 > 1)
  {
    v7 = 34;
    goto LABEL_28;
  }

  v7 = sub_17C28(v13, v12);
  DWORD2(v113) = v7;
  a3 = v11;
  a2 = v10;
  if (v7)
  {
    goto LABEL_21;
  }

  v123 = 0;
  __dst = 0;
  v125 = 0;
  BYTE8(v111) = 0;
  if (a5 < 0x2A)
  {
LABEL_74:
    v37 = 30;
LABEL_129:
    DWORD2(v113) = v37;
    goto LABEL_130;
  }

  v17 = 33;
  v18 = 41;
  while (1)
  {
    v19 = &a4[v17];
    v20 = a4[v17] << 24;
    if (v20 < 0)
    {
      goto LABEL_128;
    }

    v21 = v19[3];
    v22 = v20 | (v19[1] << 16);
    v23 = (v22 | v21) & 0xFFFF00FF | (v19[2] << 8);
    v24 = v17 + 4 + v23;
    if (v24 >= a5)
    {
      v37 = 35;
      goto LABEL_129;
    }

    v25 = a4[v17 + 4];
    if (v25 != 116)
    {
      break;
    }

    if (v19[5] != 82 || v19[6] != 78 || v19[7] != 83)
    {
      goto LABEL_58;
    }

    if (v105)
    {
      if (v105 == 2)
      {
        if (v23 != 6)
        {
          v37 = 41;
          goto LABEL_129;
        }

        BYTE8(v111) = 1;
        v36 = __rev16(*(v19 + 5));
        *&v110 = v19[9] | (a4[v18] << 8);
        *(&v110 + 1) = v36;
        *&v111 = __rev16(*(v19 + 6));
        v18 = v17 + 14;
      }

      else
      {
        if (v105 != 3)
        {
          v37 = 42;
          goto LABEL_129;
        }

        if ((v112[1] - v112[0]) < (4 * v23))
        {
          v37 = 39;
          goto LABEL_129;
        }

        if (v23)
        {
          v30 = v22 | (v19[2] << 8) | v21;
          v31 = 3;
          v32 = v18;
          do
          {
            v18 = v32 + 1;
            *(v112[0] + v31) = a4[v32];
            v31 += 4;
            ++v32;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      if (v23 != 2)
      {
        v37 = 40;
        goto LABEL_129;
      }

      BYTE8(v111) = 1;
      *(&v110 + 1) = v19[9] | (a4[v18] << 8);
      *&v111 = *(&v110 + 1);
      *&v110 = *(&v110 + 1);
      v18 = v17 + 10;
    }

LABEL_59:
    v17 = v18 + 4;
    v18 += 12;
    if (v18 >= a5)
    {
      goto LABEL_74;
    }
  }

  if (v25 == 80)
  {
    if (v19[5] != 76 || v19[6] != 84 || v19[7] != 69)
    {
      goto LABEL_81;
    }

    v27 = (2 * ((2863311531u * v23) >> 32)) & 0xFFFFFFFC;
    v29 = v112[0];
    v28 = v112[1];
    if (v27 <= v112[1] - v112[0])
    {
      if (v27 < v112[1] - v112[0])
      {
        v28 = v112[0] + v27;
        v112[1] = v112[0] + v27;
      }
    }

    else
    {
      sub_17F9C(v112, v27 - (v112[1] - v112[0]));
      v29 = v112[0];
      v28 = v112[1];
    }

    if ((v28 - v29) > 0x400)
    {
      v37 = 38;
      goto LABEL_129;
    }

    if (v28 != v29)
    {
      v33 = 0;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v35 = a4[v18++];
          *(v112[0] + v33 + i) = v35;
        }

        *(v112[0] + v33 + 3) = -1;
        v33 += 4;
      }

      while (v33 < v112[1] - v112[0]);
    }

    goto LABEL_59;
  }

  if (v25 != 73)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_81;
    }

LABEL_58:
    v18 = v24 + 4;
    goto LABEL_59;
  }

  v26 = v19[5];
  if (v26 == 68)
  {
    if (v19[6] != 65 || v19[7] != 84)
    {
      goto LABEL_81;
    }

    sub_17CC0(&v123, __dst, &a4[v18], &a4[v18 + v23], v23);
    goto LABEL_58;
  }

  if (v26 != 69 || v19[6] != 78 || v19[7] != 68)
  {
LABEL_81:
    v37 = 69;
    goto LABEL_129;
  }

  if (v105 == 2)
  {
    v38 = 3 * v106;
  }

  else if (v105 < 4)
  {
    v38 = v106;
  }

  else
  {
    v38 = v106 * (v105 - 2);
  }

  if (v38 < 8)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 >> 3;
  }

  if (!v104 || !v103 || (v103 | v104) >= 0x10000)
  {
LABEL_128:
    v37 = 63;
    goto LABEL_129;
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  sub_180AC(&v120, (v39 + v39 * v104) * v103);
  v40 = v120;
  if (v104 + 1 == (v121 - v120) / (v103 * v39))
  {
    DWORD2(v113) = sub_168D4(&v120, &v123);
    if (!DWORD2(v113))
    {
      v99 = (v103 * v38 + 7) >> 3;
      sub_168AC(a1, v99 * v104);
      if (v104 == (a1[1] - *a1) / v99)
      {
        v41 = (v38 + 7) >> 3;
        if (v99 * v104)
        {
          v42 = *a1;
        }

        else
        {
          v42 = 0;
        }

        if (v109)
        {
          v43 = 0;
          v44 = 0;
          v45 = v103;
          v132 = vshlq_u64(vdupq_n_s64(v103 + 3), xmmword_10A0D0);
          v133 = vshlq_u64(vdupq_n_s64(v103 + 1), xmmword_10A0E0);
          v134 = v103 >> 1;
          v135 = v103;
          v127[0] = (v104 + 7) >> 3;
          v127[1] = v127[0];
          v128 = vshlq_u64(vdupq_n_s64(v104 + 3), xmmword_10A0D0);
          v129 = vshlq_u64(vdupq_n_s64(v104 + 1), xmmword_10A0E0);
          v130 = v104 >> 1;
          v131 = ((v103 + 7) >> 3);
          memset(v126, 0, sizeof(v126));
          do
          {
            v46 = (&v131)[v43];
            v47 = v46 == 0;
            v48 = (v46 * v38 + 7) >> 3;
            if (!v47)
            {
              ++v48;
            }

            v44 += v48 * v127[v43];
            v126[++v43] = v44;
          }

          while (v43 != 6);
          v117 = 0;
          v118 = 0;
          v119 = 0;
          sub_180AC(&v117, (v45 * v38 + 7) >> 3);
          __p = 0;
          v115 = 0;
          v116 = 0;
          sub_180AC(&__p, (v103 * v38 + 7) >> 3);
          for (j = 0; j != 7; ++j)
          {
            v49 = (&v131)[j];
            if (v49)
            {
              v93 = v127[j];
              if (v93)
              {
                v50 = __p;
                v95 = v117;
                v96 = 0;
                v92 = v120 + v126[j];
                v51 = (&unk_10A568 + 8 * j);
                v86 = v103 * v38;
                v87 = v51[21];
                v91 = (v103 * v38 + 7) >> 3;
                v97 = v51[14];
                v100 = *v51;
                v88 = v51[7];
                v94 = &v42[v41 * (*v51 + v88 * v103)];
                v90 = v41 * v87 * v103;
                do
                {
                  v52 = v50;
                  v53 = &v92[v96 * (((v49 * v38 + 7) >> 3) + 1)];
                  v56 = *v53;
                  v54 = v53 + 1;
                  v55 = v56;
                  if (v96)
                  {
                    v57 = v95;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  sub_17420(&v103, v50, v54, v57, (v38 + 7) >> 3, v55, v91);
                  if (DWORD2(v113))
                  {
                    break;
                  }

                  if (v38 <= 7)
                  {
                    for (k = 0; k != v49; ++k)
                    {
                      if (v38)
                      {
                        v66 = k * v38;
                        v67 = (v88 + v96 * v87) * v86 + (v100 + k * v97) * v38;
                        v68 = v38;
                        do
                        {
                          v69 = (v52[v66 >> 3] >> (~v66 & 7)) & 1;
                          ++v66;
                          v42[v67 >> 3] |= v69 << (~v67 & 7);
                          ++v67;
                          --v68;
                        }

                        while (v68);
                      }
                    }
                  }

                  else
                  {
                    v58 = 0;
                    v59 = v52;
                    v60 = v94;
                    do
                    {
                      v61 = v59;
                      v62 = v60;
                      v63 = (v38 + 7) >> 3;
                      if (v38 + 7 >= 8)
                      {
                        do
                        {
                          v64 = *v61++;
                          *v62++ = v64;
                          --v63;
                        }

                        while (v63);
                      }

                      ++v58;
                      v60 += v41 * v97;
                      v59 += v41;
                    }

                    while (v58 != v49);
                  }

                  v94 += v90;
                  v50 = v95;
                  v95 = v52;
                  ++v96;
                }

                while (v96 != v93);
              }
            }
          }

          if (__p)
          {
            v115 = __p;
            operator delete(__p);
          }

          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }

          goto LABEL_165;
        }

        v101 = (v103 * v38 + 7) >> 3;
        if (v38 < 8)
        {
          v131 = 0;
          v132 = 0uLL;
          sub_180AC(&v131, v101);
          v77 = 0;
          v78 = 0;
          v79 = 0;
          while (1)
          {
            v80 = v77 ? &v42[(v77 - 1) * v99] : 0;
            sub_17420(&v103, v131, v120 + v78 + 1, v80, (v38 + 7) >> 3, *(v120 + v78), v101);
            v98 = DWORD2(v113) != 0;
            if (DWORD2(v113))
            {
              break;
            }

            if (v103 * v38)
            {
              v81 = 0;
              do
              {
                v82 = v79 + v81;
                v83 = ~(v79 + v81);
                v84 = (v131[v81 >> 3] >> (~v81 & 7)) & 1;
                ++v81;
                v42[v82 >> 3] |= v84 << (v83 & 7);
              }

              while (v81 < v103 * v38);
              v79 += v81;
            }

            v78 += v101 + 1;
            if (++v77 >= v104)
            {
              v85 = 0;
              goto LABEL_160;
            }
          }

          v85 = 1;
LABEL_160:
          if (v131)
          {
            v132.i64[0] = v131;
            operator delete(v131);
          }

          if (!v98)
          {
LABEL_163:
            v85 = 0;
          }

          if (!v85)
          {
LABEL_165:
            if ((a6 & 1) != 0 && (v105 != 6 || v106 != 8))
            {
              v131 = 0;
              v132 = 0uLL;
              sub_188A8(&v131, *a1, a1[1], a1[1] - *a1);
              DWORD2(v113) = sub_17690(a1, v131, &v103, v103, v104);
              if (v131)
              {
                v132.i64[0] = v131;
                operator delete(v131);
              }
            }
          }
        }

        else
        {
          v72 = 0;
          v73 = 0;
          v74 = -v41;
          v75 = v42;
          while (1)
          {
            v76 = v73 ? &v42[v74 * v103] : 0;
            sub_17420(&v103, v75, v120 + v72 + 1, v76, v41, *(v120 + v72), v101);
            if (DWORD2(v113))
            {
              break;
            }

            ++v73;
            v75 += v101;
            v74 += v41;
            v72 += v101 + 1;
            if (v73 >= v104)
            {
              goto LABEL_163;
            }
          }
        }
      }

      else
      {
        DWORD2(v113) = 63;
      }
    }

    v40 = v120;
  }

  else
  {
    DWORD2(v113) = 63;
  }

  if (v40)
  {
    v121 = v40;
    operator delete(v40);
  }

LABEL_130:
  if (v123)
  {
    __dst = v123;
    operator delete(v123);
  }

  v70 = v104;
  v7 = DWORD2(v113);
  v71 = v112[0];
  *v10 = v103;
  *v11 = v70;
  if (v71)
  {
    v112[1] = v71;
    operator delete(v71);
  }

  return v7;
}

void sub_16824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  v53 = *(v51 - 160);
  if (v53)
  {
    *(v51 - 152) = v53;
    operator delete(v53);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_168AC(void *result, unint64_t a2)
{
  v2 = result[1] - *result;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_17F9C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + a2;
  }
}

uint64_t sub_168D4(uint64_t *a1, unsigned __int8 **a2)
{
  *v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  *v104 = 0u;
  *v102 = 0u;
  v2 = *a2;
  if ((a2[1] - *a2) < 2)
  {
    v3 = 53;
    goto LABEL_184;
  }

  v4 = *v2;
  v5 = v2[1];
  if ((31711 * (v5 | (v4 << 8))) > 0x842u)
  {
    v3 = 24;
    goto LABEL_184;
  }

  if ((v4 & 0xFFFFFF8F) != 8)
  {
    v3 = 25;
    goto LABEL_184;
  }

  if ((v5 & 0x20) != 0)
  {
    v3 = 26;
    goto LABEL_184;
  }

  v6 = a2;
  v8 = 0;
  v107 = 0;
  LODWORD(v102[0]) = 0;
  do
  {
    v3 = LODWORD(v102[0]);
    if (LODWORD(v102[0]))
    {
      goto LABEL_182;
    }

    v9 = v107;
    v10 = *v6;
    v11 = v6[1] - *v6;
    if (v107 >> 3 >= v11)
    {
      v3 = 52;
      goto LABEL_181;
    }

    v12 = (v10 + 2);
    v13 = v10[(v107 >> 3) + 2];
    v14 = (v10[((v107 + 1) >> 3) + 2] >> ((v107 + 1) & 7)) & 1;
    v15 = v10[((v107 + 2) >> 3) + 2] >> ((v107 + 2) & 7);
    v16 = v107 + 3;
    v107 += 3;
    v17 = v14 & 0xFFFFFFFD | (2 * (v15 & 1));
    v101 = v13;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v111 = 0;
        sub_184E4(&v114, 0x120uLL, &v111);
        v111 = 0;
        v112 = 0;
        v113 = 0;
        __p = 0;
        sub_184E4(&v111, 0x20uLL, &__p);
        if (v11 - 2 <= v16 >> 3)
        {
          LODWORD(v102[0]) = 49;
          goto LABEL_119;
        }

        v24 = 0;
        for (i = 3; i != 8; ++i)
        {
          v26 = v24;
          v27 = ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 3);
          v24 += v27;
        }

        v28 = 0;
        do
        {
          v28 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 8);
          ++i;
        }

        while (i != 13);
        v29 = 0;
        do
        {
          v29 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 13);
          ++i;
        }

        while (i != 17);
        __p = 0;
        v109 = 0;
        v110 = 0;
        sub_18660(&__p, 0x13uLL);
        v30 = 0;
        v99 = v24 + 257;
        v31 = v9 + 17;
        v32 = __p;
        do
        {
          if (v30 >= v29 + 4)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            do
            {
              v34 += ((*(v12 + ((v31 + v33) >> 3)) >> ((v31 + v33) & 7)) & 1) << v33;
              ++v33;
            }

            while (v33 != 3);
            v31 += 3;
          }

          v32[qword_10A4D0[v30++]] = v34;
        }

        while (v30 != 19);
        v107 = v31;
        LODWORD(v102[0]) = sub_1823C(&v105[1], &__p, 7);
        if (!LODWORD(v102[0]))
        {
          v97 = v114;
          v98 = v24 + v28 + 258;
          if (v24 + v28 != -258)
          {
            v35 = 0;
            v36 = v26 + v27;
            v37 = v111;
            v38 = -1 * v36;
            do
            {
              v39 = sub_181B4(v102, v12, &v107, &v105[1], v11);
              if (LODWORD(v102[0]))
              {
                goto LABEL_116;
              }

              if (v39 > 0xF)
              {
                switch(v39)
                {
                  case 0x12uLL:
                    if (v11 <= v107 >> 3)
                    {
LABEL_112:
                      v70 = 50;
                      goto LABEL_115;
                    }

                    v60 = 0;
                    v61 = 0;
                    do
                    {
                      v61 += ((*(v12 + ((v107 + v60) >> 3)) >> ((v107 + v60) & 7)) & 1) << v60;
                      ++v60;
                    }

                    while (v60 != 7);
                    v107 += 7;
                    v62 = v61 + 11;
                    if (v61 != -11)
                    {
                      v63 = v98 - v35;
                      if (v98 < v35)
                      {
                        v63 = 0;
                      }

                      v64 = &v111[v38 - 257 + v35];
                      v65 = &v114[v35];
                      while (v63)
                      {
                        if (v35 >= v99)
                        {
                          v66 = v64;
                        }

                        else
                        {
                          v66 = v65;
                        }

                        *v66 = 0;
                        ++v35;
                        --v63;
                        ++v64;
                        ++v65;
                        if (!--v62)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 15;
                      goto LABEL_115;
                    }

                    break;
                  case 0x11uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    v53 = 0;
                    v54 = 0;
                    do
                    {
                      v54 += ((*(v12 + ((v107 + v53) >> 3)) >> ((v107 + v53) & 7)) & 1) << v53;
                      ++v53;
                    }

                    while (v53 != 3);
                    v107 += 3;
                    v55 = v54 + 3;
                    if (v54 != -3)
                    {
                      v56 = v98 - v35;
                      if (v98 < v35)
                      {
                        v56 = 0;
                      }

                      v57 = &v111[v38 - 257 + v35];
                      v58 = &v114[v35];
                      while (v56)
                      {
                        if (v35 >= v99)
                        {
                          v59 = v57;
                        }

                        else
                        {
                          v59 = v58;
                        }

                        *v59 = 0;
                        ++v35;
                        --v56;
                        ++v57;
                        ++v58;
                        if (!--v55)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 14;
                      goto LABEL_115;
                    }

                    break;
                  case 0x10uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    if (!v35)
                    {
                      v70 = 54;
                      goto LABEL_115;
                    }

                    v44 = 0;
                    v45 = 0;
                    do
                    {
                      v45 += ((*(v12 + ((v107 + v44) >> 3)) >> ((v107 + v44) & 7)) & 1) << v44;
                      ++v44;
                    }

                    while (v44 != 2);
                    v107 += 2;
                    if (v35 - 1 >= v99)
                    {
                      v46 = &v111[v35 - v24 - 258];
                    }

                    else
                    {
                      v46 = &v114[v35 - 1];
                    }

                    v47 = v45 + 3;
                    if (v47)
                    {
                      v48 = *v46;
                      v49 = v98 - v35;
                      if (v98 < v35)
                      {
                        v49 = 0;
                      }

                      v50 = &v111[v38 - 257 + v35];
                      v51 = &v114[v35];
                      while (v49)
                      {
                        if (v35 >= v99)
                        {
                          v52 = v50;
                        }

                        else
                        {
                          v52 = v51;
                        }

                        *v52 = v48;
                        ++v35;
                        --v49;
                        ++v50;
                        ++v51;
                        if (!--v47)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 13;
                      goto LABEL_115;
                    }

                    break;
                  default:
                    v70 = 16;
                    goto LABEL_115;
                }
              }

              else
              {
                v40 = v35 >= v99;
                v41 = v35 - v99;
                v42 = &v97[v35++];
                v43 = &v37[v41];
                if (!v40)
                {
                  v43 = v42;
                }

                *v43 = v39;
              }

LABEL_43:
              ;
            }

            while (v35 < v98);
          }

          if (!v97[256])
          {
            v70 = 64;
            goto LABEL_115;
          }

          LODWORD(v102[0]) = sub_1823C(&v102[1], &v114, 15);
          if (!LODWORD(v102[0]))
          {
            v70 = sub_1823C(v104, &v111, 15);
LABEL_115:
            LODWORD(v102[0]) = v70;
          }
        }

LABEL_116:
        if (__p)
        {
          v109 = __p;
          operator delete(__p);
        }

        v6 = a2;
LABEL_119:
        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }

        if (LODWORD(v102[0]))
        {
          continue;
        }

        goto LABEL_124;
      }

      v3 = 20;
LABEL_181:
      LODWORD(v102[0]) = v3;
      goto LABEL_182;
    }

    if (!v17)
    {
      if ((v16 & 7) != 0)
      {
        v16 = v9 + (v16 & 7 ^ 7) + 4;
        v107 = v16;
      }

      v18 = v16 >> 3;
      if (v16 >> 3 >= v11 - 4)
      {
        v23 = 52;
      }

      else
      {
        v19 = v12 + v18;
        v20 = *(v12 + v18);
        if (*(v19 + 2) + v20 == 0xFFFF)
        {
          v21 = a1[1] - *a1;
          if (v20 + v8 > v21)
          {
            sub_17F9C(a1, v20 + v8 - v21);
          }

          v22 = v20 + v18 + 4;
          if (v22 <= v11)
          {
            if (v20)
            {
              v68 = &v10[v18 + 6];
              do
              {
                v69 = *v68++;
                *(*a1 + v8++) = v69;
                --v20;
              }

              while (v20);
            }

            else
            {
              v22 = v18 + 4;
            }

            v107 = 8 * v22;
            continue;
          }

          v23 = 23;
        }

        else
        {
          v23 = 21;
        }
      }

      LODWORD(v102[0]) = v23;
      continue;
    }

    v114 = 0;
    v115 = 0;
    v116 = 0;
    v111 = &dword_8;
    sub_184E4(&v114, 0x120uLL, &v111);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    __p = &dword_4 + 1;
    sub_184E4(&v111, 0x20uLL, &__p);
    v67 = v114;
    memset_pattern16(v114 + 144, &unk_10A100, 0x380uLL);
    memset_pattern16(v67 + 256, &unk_10A110, 0xC0uLL);
    sub_1823C(&v102[1], &v114, 15);
    sub_1823C(v104, &v111, 15);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

LABEL_124:
    v71 = sub_181B4(v102, v12, &v107, &v102[1], v11);
    if (LODWORD(v102[0]))
    {
      continue;
    }

    v72 = v71;
    if (v71 == 256)
    {
      continue;
    }

    v73 = v8;
    while (1)
    {
      if (v72 <= 0xFF)
      {
        v74 = *a1;
        v75 = a1[1] - *a1;
        if (v73 >= v75)
        {
          v76 = 2 * v73 + 2;
          if (v76 <= v75)
          {
            if (v76 < v75)
            {
              a1[1] = v74 + v76;
            }
          }

          else
          {
            sub_17F9C(a1, v76 - v75);
            v74 = *a1;
          }
        }

        v8 = v73 + 1;
        *(v74 + v73) = v72;
        goto LABEL_163;
      }

      if (v72 > 0x11D)
      {
        goto LABEL_162;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_172;
      }

      v77 = 8 * v72 - 2056;
      if (v72 - 285 >= 0xFFFFFFFFFFFFFFECLL)
      {
        v79 = 0;
        v78 = 0;
        v80 = *(&unk_10A208 + v77);
        do
        {
          v78 += ((*(v12 + ((v107 + v79) >> 3)) >> ((v107 + v79) & 7)) & 1) << v79;
          ++v79;
        }

        while (v80 != v79);
        v107 += v80;
      }

      else
      {
        v78 = 0;
      }

      v81 = *(&unk_10A120 + v77);
      v82 = sub_181B4(v102, v12, &v107, v104, v11);
      if (LODWORD(v102[0]))
      {
        v8 = v73;
        v6 = a2;
        goto LABEL_173;
      }

      if (v82 > 0x1D)
      {
        v94 = 18;
        goto LABEL_171;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_171;
      }

      if (v82 >= 4)
      {
        v84 = 0;
        v83 = 0;
        v85 = qword_10A3E0[v82];
        do
        {
          v83 += ((*(v12 + ((v107 + v84) >> 3)) >> ((v107 + v84) & 7)) & 1) << v84;
          ++v84;
        }

        while (v85 != v84);
        v107 += v85;
      }

      else
      {
        v83 = 0;
      }

      v86 = v83 + qword_10A2F0[v82];
      v87 = v73 - v86;
      if (v73 < v86)
      {
        break;
      }

      v88 = v78 + v81;
      v89 = a1[1] - *a1;
      v6 = a2;
      if (v88 + v73 >= v89)
      {
        v90 = 2 * (v88 + v73);
        if (v90 <= v89)
        {
          if (v90 < v89)
          {
            a1[1] = *a1 + v90;
          }
        }

        else
        {
          sub_17F9C(a1, v90 - v89);
        }
      }

      if (v88)
      {
        v91 = v73;
        v92 = v87;
        do
        {
          v8 = v91 + 1;
          *(*a1 + v91) = *(*a1 + v92);
          if (v92 + 1 < v73)
          {
            ++v92;
          }

          else
          {
            v92 = v87;
          }

          ++v91;
          --v88;
        }

        while (v88);
        goto LABEL_163;
      }

LABEL_162:
      v8 = v73;
LABEL_163:
      v93 = sub_181B4(v102, v12, &v107, &v102[1], v11);
      if (!LODWORD(v102[0]))
      {
        v72 = v93;
        v73 = v8;
        if (v93 != 256)
        {
          continue;
        }
      }

      goto LABEL_173;
    }

    v94 = 52;
LABEL_171:
    v6 = a2;
LABEL_172:
    LODWORD(v102[0]) = v94;
    v8 = v73;
LABEL_173:
    ;
  }

  while (((v101 >> (v9 & 7)) & 1) == 0);
  v3 = LODWORD(v102[0]);
  if (!LODWORD(v102[0]))
  {
    v95 = a1[1] - *a1;
    if (v8 <= v95)
    {
      v3 = 0;
      if (v8 < v95)
      {
        a1[1] = *a1 + v8;
      }
    }

    else
    {
      sub_17F9C(a1, v8 - v95);
      v3 = LODWORD(v102[0]);
    }
  }

LABEL_182:
  if (v105[1])
  {
    *&v106 = v105[1];
    operator delete(v105[1]);
  }

LABEL_184:
  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v102[1])
  {
    *&v103 = v102[1];
    operator delete(v102[1]);
  }

  return v3;
}

uint64_t sub_17420(uint64_t result, _BYTE *a2, char *a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a6 <= 1)
  {
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_47;
      }

      if (a5)
      {
        v24 = a3;
        v25 = a2;
        v26 = a5;
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      v28 = a7 - a5;
      if (a7 > a5)
      {
        do
        {
          a2[a5] = *a2 + a3[a5];
          ++a2;
          ++a3;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      for (; a7; --a7)
      {
        v40 = *a3++;
        *a2++ = v40;
      }
    }
  }

  else
  {
    switch(a6)
    {
      case 2:
        if (a4)
        {
          for (; a7; --a7)
          {
            v30 = *a3++;
            v29 = v30;
            v31 = *a4++;
            *a2++ = v31 + v29;
          }
        }

        else
        {
          for (; a7; --a7)
          {
            v41 = *a3++;
            *a2++ = v41;
          }
        }

        break;
      case 3:
        if (a4)
        {
          if (a5)
          {
            v32 = a3;
            v33 = a4;
            v34 = a2;
            v35 = a5;
            do
            {
              v37 = *v32++;
              v36 = v37;
              v38 = *v33++;
              *v34++ = v36 + (v38 >> 1);
              --v35;
            }

            while (v35);
          }

          v39 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + ((a4[a5] + *a2) >> 1);
              ++a2;
              ++a4;
              ++a3;
              --v39;
            }

            while (v39);
          }
        }

        else
        {
          if (a5)
          {
            v42 = a3;
            v43 = a2;
            v44 = a5;
            do
            {
              v45 = *v42++;
              *v43++ = v45;
              --v44;
            }

            while (v44);
          }

          v46 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + (*a2 >> 1);
              ++a2;
              ++a3;
              --v46;
            }

            while (v46);
          }
        }

        break;
      case 4:
        if (a4)
        {
          if (a5)
          {
            v7 = a3;
            v8 = a4;
            v9 = a2;
            v10 = a5;
            do
            {
              v12 = *v7++;
              v11 = v12;
              v13 = *v8++;
              *v9++ = v13 + v11;
              --v10;
            }

            while (v10);
          }

          v14 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              v15 = *a2;
              v16 = a4[a5];
              v18 = *a4++;
              v17 = v18;
              v19 = v16 + v15 - v18;
              v20 = v16 - v18;
              if (v16 - v18 < 0)
              {
                v20 = -v20;
              }

              v21 = v19 - v16;
              if (v19 - v16 < 0)
              {
                v21 = v16 - v19;
              }

              v22 = v19 - v17;
              if (v22 < 0)
              {
                v22 = -v22;
              }

              if (v21 > v22)
              {
                LOBYTE(v16) = v17;
              }

              if (v20 > v22 || v20 > v21)
              {
                LOBYTE(v15) = v16;
              }

              a2[a5] = v15 + a3[a5];
              ++a2;
              ++a3;
              --v14;
            }

            while (v14);
          }
        }

        else
        {
          if (a5)
          {
            v47 = a3;
            v48 = a2;
            v49 = a5;
            do
            {
              v50 = *v47++;
              *v48++ = v50;
              --v49;
            }

            while (v49);
          }

          v51 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = *a2 + a3[a5];
              ++a2;
              ++a3;
              --v51;
            }

            while (v51);
          }
        }

        return result;
      default:
LABEL_47:
        *(result + 112) = 36;
        return result;
    }
  }

  return result;
}

uint64_t sub_17690(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 * a4;
  v9 = 4 * a5 * a4;
  v10 = *a1;
  v11 = a1[1];
  v12 = &v11[-*a1];
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v11 = &v10[v9];
      a1[1] = &v10[v9];
    }
  }

  else
  {
    sub_17F9C(a1, v9 - v12);
    v10 = *a1;
    v11 = a1[1];
  }

  if (v10 == v11)
  {
    v10 = 0;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  if (v14 == 8 && v13 == 0)
  {
    if (v8)
    {
      v22 = v10 + 3;
      do
      {
        v23 = *a2;
        *(v22 - 1) = *a2;
        *(v22 - 2) = v23;
        *(v22 - 3) = v23;
        if (*(a3 + 80) == 1)
        {
          if (*(a3 + 56) == *a2)
          {
            v24 = 0;
          }

          else
          {
            v24 = -1;
          }
        }

        else
        {
          v24 = -1;
        }

        *v22 = v24;
        v22 += 4;
        ++a2;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 2)
  {
    if (v8)
    {
      v16 = 0;
      v17 = a2;
      v18 = v10;
      do
      {
        v19 = 0;
        v20 = &a2[3 * v16];
        do
        {
          v18[v19] = v17[v19];
          ++v19;
        }

        while (v19 != 3);
        if ((*(a3 + 80) & 1) != 0 && *(a3 + 56) == *v20 && *(a3 + 64) == v20[1])
        {
          if (*(a3 + 72) == v20[2])
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }
        }

        else
        {
          v21 = -1;
        }

        v10[4 * v16++ + 3] = v21;
        v18 += 4;
        v17 += 3;
      }

      while (v16 != v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 3)
  {
    if (v8)
    {
      v26 = 0;
      while (*(a3 + 96) - *(a3 + 88) > 4 * a2[v26])
      {
        for (i = 0; i != 4; ++i)
        {
          v10[i] = *(*(a3 + 88) + 4 * a2[v26] + i);
        }

        ++v26;
        v10 += 4;
        if (v26 == v8)
        {
          return 0;
        }
      }

      return 46;
    }

    return 0;
  }

  if (v14 == 8 && v13 == 4)
  {
    if (v8)
    {
      v28 = a2 + 1;
      v29 = v10 + 3;
      do
      {
        v30 = *(v28 - 1);
        *(v29 - 1) = v30;
        *(v29 - 2) = v30;
        *(v29 - 3) = v30;
        v31 = *v28;
        v28 += 2;
        *v29 = v31;
        v29 += 4;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 6)
  {
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        for (k = 0; k != 4; ++k)
        {
          v10[k] = a2[k];
        }

        result = 0;
        v10 += 4;
        a2 += 4;
      }

      return result;
    }

    return 0;
  }

  if (v14 == 16 && !v13)
  {
    if (v8)
    {
      v34 = v10 + 3;
      v35 = a2 + 1;
      do
      {
        v36 = *a2;
        a2 += 2;
        *(v34 - 1) = v36;
        *(v34 - 2) = v36;
        *(v34 - 3) = v36;
        if (*(a3 + 80) == 1)
        {
          if (__rev16(*(v35 - 1)) == *(a3 + 56))
          {
            v37 = 0;
          }

          else
          {
            v37 = -1;
          }
        }

        else
        {
          v37 = -1;
        }

        result = 0;
        *v34 = v37;
        v34 += 4;
        ++v35;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 2)
  {
    if (v8)
    {
      v38 = v10 + 3;
      v39 = a2 + 2;
      do
      {
        *(v38 - 3) = *(v39 - 2);
        *(v38 - 2) = *v39;
        v40 = v39[2];
        *(v38 - 1) = v40;
        if (*(a3 + 80) == 1 && __rev16(*(v39 - 1)) == *(a3 + 56) && __rev16(*v39) == *(a3 + 64))
        {
          if ((v39[3] | (v40 << 8)) == *(a3 + 72))
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }
        }

        else
        {
          v41 = -1;
        }

        result = 0;
        *v38 = v41;
        v38 += 4;
        v39 += 6;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 4)
  {
    if (v8)
    {
      v42 = v10 + 3;
      v43 = a2 + 2;
      result = 0;
      do
      {
        v44 = *(v43 - 2);
        *(v42 - 1) = v44;
        *(v42 - 2) = v44;
        *(v42 - 3) = v44;
        v45 = *v43;
        v43 += 4;
        *v42 = v45;
        v42 += 4;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 6)
  {
    if (v8)
    {
      for (m = 0; m != v8; ++m)
      {
        v47 = 0;
        v48 = a2;
        do
        {
          v49 = *v48;
          v48 += 2;
          v10[v47++] = v49;
        }

        while (v47 != 4);
        result = 0;
        v10 += 4;
        a2 += 8;
      }

      return result;
    }

    return 0;
  }

  if (v14 <= 7 && !v13)
  {
    if (v8)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = *(a3 + 24);
        if (v52)
        {
          v53 = 0;
          v54 = v52 - 1;
          do
          {
            v55 = (a2[v51 >> 3] >> (~v51 & 7)) & 1;
            ++v51;
            v53 += v55 << v54--;
          }

          while (v54 < v52);
          v56 = 255 * v53;
        }

        else
        {
          v56 = 0;
        }

        v57 = ~(-1 << v52);
        v58 = &v10[4 * v50];
        v58[2] = v56 / v57;
        v58[1] = v56 / v57;
        *v58 = v56 / v57;
        v59 = -1;
        if (*(a3 + 80) == 1 && v56 >= v57)
        {
          v60 = *(a3 + 24);
          v61 = ~(-1 << v60);
          v59 = v60 ? 0 : -1;
          if (*(a3 + 56) != v61)
          {
            v59 = -1;
          }
        }

        result = 0;
        v10[4 * v50++ + 3] = v59;
      }

      while (v50 != v8);
      return result;
    }

    return 0;
  }

  result = 0;
  if (v14 <= 7 && v13 == 3 && v8)
  {
    v62 = 0;
    v63 = 0;
    while (1)
    {
      v64 = *(a3 + 24);
      if (v64)
      {
        v65 = 0;
        v66 = v64 - 1;
        do
        {
          v67 = (a2[v63 >> 3] >> (~v63 & 7)) & 1;
          ++v63;
          v65 += v67 << v66--;
        }

        while (v66 < v64);
        v64 = 4 * v65;
      }

      if (v64 >= *(a3 + 96) - *(a3 + 88))
      {
        break;
      }

      v68 = 4;
      v69 = v10;
      do
      {
        *v69++ = *(*(a3 + 88) + v64++);
        --v68;
      }

      while (v68);
      result = 0;
      ++v62;
      v10 += 4;
      if (v62 == v8)
      {
        return result;
      }
    }

    return 47;
  }

  return result;
}

uint64_t sub_17C28(uint64_t a1, unint64_t a2)
{
  result = 31;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (((1 << a2) & 0x10116) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 37;
    }

    if (a2 <= 0x10)
    {
      return v4;
    }

    else
    {
      return 37;
    }
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 != 6 && a1 != 4)
      {
        return result;
      }

LABEL_8:
      if (((a2 - 8) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        return 37;
      }

      else
      {
        return 0;
      }
    }

    if (a2 - 1 > 7)
    {
      return 37;
    }

    else
    {
      return dword_10A648[a2 - 1];
    }
  }
}

char *sub_17CC0(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v17 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v22 = &__dst[a5];
      v23 = (v10 - a5);
      v24 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v25 = *v23++;
          *v24++ = v25;
        }

        while (v23 != v10);
      }

      *(a1 + 8) = v24;
      if (v10 != v22)
      {
        memmove(&__dst[a5], __dst, v10 - v22);
      }

      v26 = v5;
      v27 = __src;
      v28 = a5;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&a4[__dst] - __src);
        v20 = *(a1 + 8);
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v29 = &__dst[a5];
      v30 = &v19[-a5];
      v31 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v32 = *v30++;
          *v31++ = v32;
        }

        while (v30 != v10);
      }

      *(a1 + 8) = v31;
      if (v20 != v29)
      {
        memmove(&__dst[a5], __dst, v19 - v29);
      }

      v26 = v5;
      v27 = __src;
      v28 = v10 - v5;
    }

    memmove(v26, v27, v28);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    sub_17EC8();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v13[v16], __src, a5);
  memcpy(&v13[v16 + a5], v5, v10 - v5);
  *(a1 + 8) = v5;
  memcpy(v16, v11, v5 - v11);
  *a1 = v16;
  *(a1 + 8) = &v13[v16 + a5 + v10 - v5];
  *(a1 + 16) = v16 + v15;
  if (v11)
  {
    operator delete(v11);
  }

  return &v13[v16];
}

void sub_17EE0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_17F3C(exception, a1);
}

std::logic_error *sub_17F3C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_17F68()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_17F9C(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      sub_17EC8();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *sub_180AC(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_18120(a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_18104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_18120(void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    sub_17EC8();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void *sub_18160(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_181B4(int *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = *a4;
  v8 = ((a4[1] - *a4) >> 3) >> 1;
  while (1)
  {
    v9 = v6 >> 3;
    if ((v6 & 7) == 0 && v9 >= a5)
    {
      v12 = 10;
      goto LABEL_9;
    }

    v10 = *(a2 + v9);
    *a3 = v6 + 1;
    if (v5 >= v8)
    {
      break;
    }

    v11 = *(v7 + 16 * v5 + 8 * ((v10 >> (v6 & 7)) & 1));
    *a1 = 0;
    ++v6;
    v5 = v11 - v8;
    if (v11 < v8)
    {
      return v11;
    }
  }

  v12 = 11;
LABEL_9:
  v11 = 0;
  *a1 = v12;
  return v11;
}

uint64_t sub_1823C(void *a1, uint64_t **a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = v8 >> 3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_18660(&v46, v8 >> 3);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  sub_184E4(&v43, a3 + 1, &__p);
  __p = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  sub_184E4(&__p, a3 + 1, &v39);
  if (v6 != v7)
  {
    v10 = *a2;
    v11 = v43;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 >> 3;
    }

    do
    {
      v13 = *v10++;
      ++v11[v13];
      --v12;
    }

    while (v12);
  }

  if (a3)
  {
    v14 = v43;
    v15 = (__p + 8);
    v16 = *__p;
    do
    {
      v17 = *v14++;
      v16 = 2 * (v17 + v16);
      *v15++ = v16;
      --a3;
    }

    while (a3);
  }

  if (v6 != v7)
  {
    v18 = *a2;
    v19 = __p;
    v20 = v46;
    if (v9 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8 >> 3;
    }

    do
    {
      v23 = *v18++;
      v22 = v23;
      if (v23)
      {
        v24 = v19[v22];
        v19[v22] = v24 + 1;
        *v20 = v24;
      }

      ++v20;
      --v21;
    }

    while (v21);
  }

  a1[1] = *a1;
  v39 = 0x7FFFLL;
  sub_18630(a1, v8 >> 2, &v39);
  if (v6 == v7)
  {
LABEL_31:
    v37 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = *a2;
    if (v9 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v8 >> 3;
    }

    v30 = 1;
    while (1)
    {
      v31 = v28[v25];
      if (v31)
      {
        break;
      }

LABEL_30:
      v30 = ++v25 < v9;
      if (v25 == v29)
      {
        goto LABEL_31;
      }
    }

    v32 = 0;
    v33 = v46;
    while (v27 <= v9 - 2)
    {
      v34 = (v33[v25] >> (v31 + ~v32)) & 1 | (2 * v27);
      v35 = *a1;
      v36 = *(*a1 + 8 * v34);
      if (v36 == 0x7FFF)
      {
        if (++v32 == v31)
        {
          v27 = 0;
          *(v35 + 8 * v34) = v25;
        }

        else
        {
          v27 = v26 + 1;
          *(v35 + 8 * v34) = ++v26 + v9;
        }
      }

      else
      {
        v27 = v36 - v9;
        ++v32;
      }

      v31 = v28[v25];
      if (v32 >= v31)
      {
        goto LABEL_30;
      }
    }

    if (v30)
    {
      v37 = 55;
    }

    else
    {
      v37 = 0;
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v37;
}

void sub_18498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_184E4(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_185BC(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_10A0F0)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_185A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_185BC(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_17EC8();
  }

  result = sub_185F8(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *sub_185F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_17F68();
  }

  return operator new(8 * a2);
}

void sub_18630(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_186D8(result, a2 - v3, a3);
  }
}

uint64_t *sub_18660(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_185BC(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

void sub_186BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_186D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v14 = 0;
      v15 = v7 + 8 * a2;
      v16 = *a3;
      v17 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v18 = vdupq_n_s64(v17);
      v19 = (v7 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_10A0F0)));
        if (v20.i8[0])
        {
          *(v19 - 1) = v16;
        }

        if (v20.i8[4])
        {
          *v19 = v16;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v14);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_17EC8();
    }

    v10 = v8 >> 3;
    v11 = v6 - *a1;
    if (v11 >> 2 > v9)
    {
      v9 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_185F8(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0;
    v22 = &v13[8 * v10];
    v23 = &v22[8 * a2];
    v24 = *a3;
    v25 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = v22 + 8;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v21), xmmword_10A0F0)));
      if (v29.i8[0])
      {
        *(v28 - 1) = v24;
      }

      if (v29.i8[4])
      {
        *v28 = v24;
      }

      v21 += 2;
      v28 += 2;
    }

    while (v26 != v21);
    v30 = &v13[8 * v12];
    v31 = *(a1 + 8) - *a1;
    v32 = &v22[-v31];
    memcpy(&v22[-v31], *a1, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 8) = v23;
    *(a1 + 16) = v30;
    if (v33)
    {

      operator delete(v33);
    }
  }
}

void *sub_188A8(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_18120(result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_18908(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1, const __CFString *a2, CFTypeRef *a3, off_t *a4, CFTypeRef *a5, off_t *a6)
{
  if (a1)
  {
    v7 = sub_18DEC(a1, 0);
    if (v7)
    {
      v8 = v7;
      v9 = malloc(0x8000uLL);
      if (v9)
      {
        if (read(v8, v9, 0x8000uLL))
        {
          v10 = Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal(6, "AMRestorePartitionFWCopyTagData", "No more segments. (derstat=%d)", v10);
        }

        AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "No DER segments found.");
      }

      else
      {
        sub_D6000(0);
      }

      if (v8 >= 1)
      {
        close(v8);
      }
    }

    else
    {
      AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Unable to open inURL %@", a1);
    }
  }

  else
  {
    sub_D6014(0);
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_18DEC(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "failed to convert url to file system representation");
    AMSupportLogInternal(8, "_AMRestorePartitionOpenFileWithURL", "%@", a1);
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    sub_D6054(v4);
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    sub_D6028();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t AMRestorePartitionFWCommitData(const __CFData *a1, CFStringRef theString, CFDataRef theData, int a4, uint64_t a5)
{
  v46 = 0;
  v47 = 0;
  *bytes = 0;
  theString1 = 0;
  theDataa = 0;
  if (!a1)
  {
    sub_D6470(0);
    goto LABEL_24;
  }

  if (!theString)
  {
    sub_D645C(a1);
    goto LABEL_24;
  }

  v7 = theData;
  if (!theData)
  {
    sub_D6448(a1);
    goto LABEL_24;
  }

  if (!a4)
  {
    v14 = CFDataGetLength(theData);
    goto LABEL_16;
  }

  v51 = 0;
  memset(length, 0, sizeof(length));
  if (CFStringGetLength(theString) != 4)
  {
    AMSupportLogInternal(3, "AMRestorePartitionCreateUnsignedImg4", "tag %@ is not 4 chars.", theString);
LABEL_81:
    v12 = 0;
LABEL_82:
    v13 = 0;
    goto LABEL_12;
  }

  v49 = 0;
  *buffer = 0;
  if (!CFStringGetCString(theString, buffer, 5, 0x8000100u))
  {
    sub_D60FC();
    goto LABEL_81;
  }

  if (AMAuthInstallApImg4CreatePayload())
  {
    AMSupportLogInternal(3, "AMRestorePartitionCreateUnsignedImg4", "IM4P encode failed with %d");
    goto LABEL_81;
  }

  if (!v51)
  {
    sub_D60D0();
    goto LABEL_81;
  }

  BytePtr = CFDataGetBytePtr(v51);
  v10 = CFDataGetLength(v51);
  if (Img4EncodeStitchManifest(BytePtr, v10, 0, 0, &length[1], length) != 100)
  {
    AMSupportLogInternal(3, "AMRestorePartitionCreateUnsignedImg4", "failed to encode image4 with %d");
    goto LABEL_81;
  }

  v11 = CFDataCreate(0, *&length[1], length[0]);
  if (!v11)
  {
    sub_D60A4();
    v12 = 0;
    goto LABEL_82;
  }

  v12 = CFRetain(v11);
  v13 = 1;
LABEL_12:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  if ((v13 & 1) == 0)
  {
    AMSupportLogInternal(3, "AMRestorePartitionFWCommitData", "IM4P encode failed with %d");
    goto LABEL_24;
  }

  if (!v12)
  {
    sub_D641C();
    goto LABEL_24;
  }

  v14 = CFDataGetLength(v12);
  v7 = v12;
LABEL_16:
  v15 = AMRestorePartitionFWCopyTagData(a1, theString, &theString1, &v47, &theDataa, &v46);
  if ((v15 | 8) != 8)
  {
    AMSupportLogInternal(3, "AMRestorePartitionFWCommitData", "Failed to parse input device amr=%d.");
LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  if (!theString1)
  {
    sub_D63F0();
    goto LABEL_24;
  }

  v16 = &v47;
  if (v15 == 8)
  {
    v16 = &v46;
  }

  v17 = *v16;
  if (v15)
  {
    v18 = sub_18DEC(a1, 1);
    if (v18 > 0)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_37;
    }

LABEL_86:
    v41 = __error();
    AMSupportLogInternal(3, "AMRestorePartitionFWCommitData", "unable to open fileHandle: %@, returned %d", a1, *v41);
    goto LABEL_25;
  }

  v21 = CFStringCompare(theString1, theString, 0);
  v18 = sub_18DEC(a1, 1);
  if (v18 < 1)
  {
    goto LABEL_86;
  }

  if (v21 == kCFCompareEqualTo)
  {
    v19 = 0;
    v20 = 0;
LABEL_37:
    if (lseek(v18, v17, 0) == v17)
    {
      if ((sub_195D8(v7, v18) & 1) == 0)
      {
        sub_D62D8();
        goto LABEL_25;
      }

      if (!v19)
      {
        goto LABEL_42;
      }

      if (lseek(v18, v17 + v14, 0) == v17 + v14)
      {
        AMSupportLogInternal(6, "AMRestorePartitionFWCommitData", "Tag %@ was found in input, but wasn't the last tag (%@), appending final input data.", theString, theString1);
        if ((sub_195D8(v20, v18) & 1) == 0)
        {
          sub_D6304();
          goto LABEL_25;
        }

LABEL_42:
        v29 = CFDataCreate(kCFAllocatorDefault, bytes, 2);
        v30 = v29;
        if (v29)
        {
          if (CFDataGetLength(v29) == 2)
          {
            if (sub_195D8(v30, v18))
            {
              v31 = close(v18);
              if (v31)
              {
                sub_D6388(v31);
              }

              else
              {
                if (!a5)
                {
LABEL_60:
                  v18 = -1;
                  goto LABEL_61;
                }

                v32 = IOServiceMatching("AppleEmbeddedNVMeController");
                if (v32)
                {
                  v33 = v32;
                  v34 = 0;
                  do
                  {
                    CFRetain(v33);
                    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v33);
                    if (MatchingService)
                    {
                      break;
                    }

                    v36 = 10 - v34 >= 3 ? 3 : 10 - v34;
                    v37 = CFCopyDescription(v33);
                    CStringPtr = CFStringGetCStringPtr(v37, 0);
                    AMSupportLogInternal(3, "_wait_for_io_service_matching_name", "waiting for matching IOKit service: %s\n", CStringPtr);
                    sleep(v36);
                    v34 += v36;
                    CFRelease(v37);
                  }

                  while (v34 < 0xA);
                  CFRelease(v33);
                }

                else
                {
                  AMSupportLogInternal(3, "_wait_for_io_service_matching_name", "unable to create matching dictionary for service '%s'\n", "AppleEmbeddedNVMeController");
                  MatchingService = 0;
                }

                v39 = IORegistryEntrySetCFProperty(MatchingService, @"fw-write-done", kCFBooleanTrue);
                if (!v39)
                {
                  a5 = 0;
                  goto LABEL_60;
                }

                AMSupportLogInternal(3, "_flushNAND", "failed to set fw-write-done property: 0x%x\n", v39);
                AMSupportLogInternal(3, "AMRestorePartitionFWCommitData", "Failed to flush to NAND");
              }

              a5 = 99;
              goto LABEL_60;
            }

            sub_D635C();
          }

          else
          {
            sub_D6330();
          }
        }

        else
        {
          sub_D63C4();
        }

LABEL_25:
        a5 = 99;
        goto LABEL_61;
      }
    }

    sub_D628C(v17);
    goto LABEL_25;
  }

  if (theDataa)
  {
    v22 = v47;
    v23 = CFDataGetLength(theDataa);
    v24 = v23 + v22;
    v25 = v46 - (v23 + v22);
    if (v23 + v22)
    {
      if (v46 == v23 + v22)
      {
        sub_D6208();
      }

      else if (lseek(v18, v24, 0) == v24)
      {
        v26 = malloc(v25);
        if (v26)
        {
          v27 = v26;
          if (read(v18, v26, v25) == v25)
          {
            v28 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v27, v25, kCFAllocatorMalloc);
            if (v28)
            {
              v20 = v28;
              v19 = 1;
              goto LABEL_37;
            }
          }

          else
          {
            sub_D6174();
          }

          AMSupportSafeFree();
        }

        else
        {
          sub_D61B8(v25);
        }
      }

      else
      {
        sub_D6128(v24);
      }
    }

    else
    {
      sub_D6234();
    }

    AMSupportLogInternal(3, "AMRestorePartitionFWCommitData", "finalData is NULL", v42);
    goto LABEL_25;
  }

  sub_D6260();
  a5 = 99;
LABEL_61:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v18 >= 1)
  {
    close(v18);
  }

  return a5;
}

uint64_t sub_195D8(const __CFData *a1, int a2)
{
  if (a1)
  {
    if (a2 <= 0)
    {
      AMSupportLogInternal(3, "_flushDataToHandle", "toFile is %d");
    }

    else
    {
      BytePtr = CFDataGetBytePtr(a1);
      if (BytePtr)
      {
        v5 = BytePtr;
        Length = CFDataGetLength(a1);
        v7 = Length;
        if (Length < 1)
        {
          v8 = 0;
LABEL_10:
          if (v8 == v7)
          {
            return 1;
          }

          AMSupportLogInternal(3, "_flushDataToHandle", "Wrote %lu of %lu bytes!");
        }

        else
        {
          v8 = 0;
          v9 = Length;
          while (1)
          {
            v10 = write(a2, v5, v9);
            if (v10 <= 0)
            {
              break;
            }

            v5 += v10;
            v9 -= v10;
            v8 += v10;
            if (v8 >= v7)
            {
              goto LABEL_10;
            }
          }

          v12 = __error();
          strerror(*v12);
          AMSupportLogInternal(3, "_flushDataToHandle", "failed to write to file: %s, attempted %lu bytes, only wrote %lu.");
        }
      }

      else
      {
        sub_D6484(0);
      }
    }
  }

  else
  {
    sub_D6498(0);
  }

  return 0;
}

uint64_t ramrod_display_set_minimum_progress_blink(double a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  qword_1C46D0 = *&a1;
  if (*&qword_1C46D8 >= a1 && (byte_1C6640 & 1) == 0)
  {
    byte_1C6640 = 1;
    sub_1B708();
  }

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t sub_19798()
{
  if (pthread_mutex_init(&stru_1C6538, 0))
  {
    ramrod_log_msg("unable to initialize display lock\n");
  }

  pthread_mutex_lock(&stru_1C6538);
  *&dword_1C65CC = 0xFF4D4D4DFFFFFFFFLL;
  byte_1C65C8 = 0;
  dword_1C65C4 = 257;
  byte_1C65FC = 1;
  v0 = MGGetSInt32Answer();
  if (v0)
  {
    if (v0 == 1)
    {
      ramrod_log_msg("inverting UI color");
      *&dword_1C65CC = 0xFFCCCCCCFF000000;
      HIWORD(dword_1C65C4) = -1;
      byte_1C65C8 = -1;
    }

    else
    {
      ramrod_log_msg("unexpect color map policy %d", v0);
    }
  }

  off_1C6628 = sub_1ADA8;
  off_1C6618 = sub_1B080;
  off_1C6620 = sub_1B154;
  off_1C6630 = sub_1B1AC;
  off_1C6638 = sub_1B530;
  sub_1A990();

  return pthread_mutex_unlock(&stru_1C6538);
}

void ramrod_set_progress_UI(uint64_t result, double a2)
{
  v2 = 100.0;
  if (a2 <= 100.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 != *&qword_1C46D8 || result != 0)
  {
    qword_1C46D8 = *&v3;
    if (dword_1C46E0 != -1)
    {
      off_1C6630(result, v3);
      v3 = *&qword_1C46D8;
    }

    if (v3 >= *&qword_1C46D0 && (byte_1C6640 & 1) == 0)
    {
      byte_1C6640 = 1;

      sub_1B708();
    }
  }
}

uint64_t ramrod_display_set_granular_progress_forced(uint64_t a1, double a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  ramrod_log_msg("%s: %f\n", "ramrod_display_set_granular_progress_forced", a2);
  ramrod_set_progress_UI(a1, a2);

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t ramrod_display_get_num_progress_segments()
{
  pthread_once(&stru_1C46C0, sub_19798);
  if (dword_1C65B8)
  {
    return dword_1C65B8;
  }

  else
  {
    return (dword_1C658C << 8);
  }
}

void ramrod_display_set_showui(char a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  LOBYTE(dword_1C65C4) = a1;

  sub_19ACC();
}

void sub_19ACC()
{
  sub_1B808(qword_1C65E8);
  sub_1A5C8();
  if (dword_1C46E0 != -1)
  {
    v0.n128_u64[0] = qword_1C46D8;
    if (*&qword_1C46D8 >= 0.0)
    {
      v1 = off_1C6630;

      v1(v0);
    }

    else
    {

      sub_1A344();
    }
  }
}

void ramrod_display_set_showprogress(int a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  v2 = "Disabling";
  if (a1)
  {
    v2 = "Enabling";
  }

  ramrod_log_msg("%s progress UI", v2);
  BYTE1(dword_1C65C4) = a1;

  sub_19ACC();
}

uint64_t ramrod_display_show_image_with_alpha(const __CFString *a1, int a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (dword_1C46E0 != -1)
  {
    bzero(v13, 0x400uLL);
    v4 = buffer;
    bzero(buffer, 0x400uLL);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    CFStringGetFileSystemRepresentation(a1, buffer, 1024);
    if (access(buffer, 0))
    {
      v5 = strrchr(buffer, 47);
      if (!v5)
      {
        ramrod_log_msg("'%s' is not an absolute path\n");
        return pthread_mutex_unlock(&stru_1C6538);
      }

      *v5 = 0;
      v6 = v5 + 1;
      v7 = strchr(v5 + 1, 46);
      if (!v7)
      {
        ramrod_log_msg("'%s' does not have an extension\n");
        return pthread_mutex_unlock(&stru_1C6538);
      }

      *v7 = 0;
      v4 = v13;
      if (!sub_19DF8(buffer, v6, dword_1C658C, v13))
      {
        ramrod_log_msg("could not find suitable image for %s/%s\n");
        return pthread_mutex_unlock(&stru_1C6538);
      }
    }

    ramrod_log_msg("loading image: %s\n", v4);
    if (sub_1A074(v4, &v9, dword_1C6588))
    {
      if (v9 > xmmword_1C6578 || v10 > *(&xmmword_1C6578 + 1))
      {
        ramrod_log_msg("image dimensions (%zu, %zu) too big\n");
      }

      else
      {
        if (a2)
        {
          sub_1A25C(&v9, 1);
        }

        sub_1A2D4(qword_1C65D8[dword_1C46E0], &v9);
        sub_1A344();
        sub_1A2D4(qword_1C65D8[dword_1C46E0], &v9);
      }
    }

    else
    {
      ramrod_log_msg("unable to load image '%s'\n");
    }
  }

  return pthread_mutex_unlock(&stru_1C6538);
}

BOOL sub_19DF8(const char *a1, const char *a2, int a3, char *a4)
{
  memset(v11, 0, sizeof(v11));
  v8 = MGGetSInt32Answer() - 1;
  if (v8 >= 9 || ((0x12Fu >> v8) & 1) == 0)
  {
    LOBYTE(v11[0]) = 0;
    byte_1C6594 = 0;
    goto LABEL_10;
  }

  __strlcpy_chk();
  byte_1C6594 = 0;
  if (!LOBYTE(v11[0]))
  {
LABEL_10:
    snprintf(a4, 0x400uLL, "%s/%s@%zu.tga", a1, a2, *(&xmmword_1C6578 + 1));
    if (access(a4, 0))
    {
      snprintf(a4, 0x400uLL, "%s/%s@%dx.tga", a1, a2, a3);
      if (access(a4, 0))
      {
        if (!LOBYTE(v11[0]) || (snprintf(a4, 0x400uLL, "%s/%s~%s.tga", a1, a2, v11), access(a4, 0)))
        {
          snprintf(a4, 0x400uLL, "%s/%s.tga", a1, a2);
          return access(a4, 0) == 0;
        }
      }
    }

    return 1;
  }

  ramrod_log_msg("Using product_suffix of %s\n", v11);
  MGGetFloat32Answer();
  if (v9 <= 0.0 || (snprintf(a4, 0x400uLL, "%s/%s@%zu~%s-USBc.tga", a1, a2, *(&xmmword_1C6578 + 1), v11), access(a4, 0)))
  {
    snprintf(a4, 0x400uLL, "%s/%s@%zu~%s.tga", a1, a2, *(&xmmword_1C6578 + 1), v11);
    if (!access(a4, 0))
    {
      return 1;
    }

    snprintf(a4, 0x400uLL, "%s/%s@%dx~%s.tga", a1, a2, a3, v11);
    if (!access(a4, 0))
    {
      return 1;
    }

    goto LABEL_10;
  }

  result = 1;
  byte_1C6594 = 1;
  return result;
}

uint64_t sub_1A074(const char *a1, unint64_t *a2, int a3)
{
  v6 = strlen(a1);
  if (v6 < 4 || strcasecmp(&a1[v6 - 4], ".png"))
  {
    if ((ramrod_load_tga(a1, a2, a2 + 1, a2 + 2) & 1) == 0)
    {
      return 0;
    }

LABEL_4:
    if (a3 > 179)
    {
      if (a3 != 270 && a3 != 180)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!a3)
      {
        return 1;
      }

      if (a3 != 90)
      {
LABEL_20:
        ramrod_log_msg("unexpected rotation value %d\n", a3);
        return 0;
      }
    }

    v8 = a2[1];
    v7 = a2[2];
    v9 = *a2;
    v10 = malloc(4 * *a2 * v8);
    if (a3 == 90)
    {
      if (v8)
      {
        v22 = 0;
        v23 = &v10[4 * v8 - 4];
        do
        {
          v24 = v23;
          for (i = v9; i; --i)
          {
            v26 = *v7++;
            *v24 = v26;
            v24 += v8;
          }

          ++v22;
          v23 -= 4;
        }

        while (v22 != v8);
      }
    }

    else
    {
      if (a3 == 180)
      {
        if (v8)
        {
          v17 = 0;
          v18 = &v10[4 * v8 * v9 - 4];
          do
          {
            v19 = v18;
            for (j = v9; j; --j)
            {
              v21 = *v7++;
              *v19-- = v21;
            }

            ++v17;
            v18 -= 4 * v9;
          }

          while (v17 != v8);
        }

        goto LABEL_34;
      }

      if (v8)
      {
        v11 = 0;
        v12 = &v10[4 * (v9 - 1) * v8];
        do
        {
          v13 = v12;
          for (k = v9; k; --k)
          {
            v15 = *v7++;
            *v13 = v15;
            v13 -= 4 * v8;
          }

          ++v11;
          v12 += 4;
        }

        while (v11 != v8);
      }
    }

    *a2 = v8;
    a2[1] = v9;
LABEL_34:
    a2[2] = v10;
    return 1;
  }

  result = ramrod_load_png(a1, a2, a2 + 1, a2 + 2);
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1A25C(uint64_t result, int a2)
{
  v2 = *(result + 8) * *result;
  if (v2)
  {
    for (i = *(result + 16); ; ++i)
    {
      result = HIBYTE(*i);
      if (result != 255)
      {
        break;
      }

      if (a2)
      {
        result = dword_1C65CC;
LABEL_10:
        *i = result;
      }

      if (!--v2)
      {
        return result;
      }
    }

    if (a2)
    {
      v5 = dword_1C65CC;
    }

    else
    {
      v5 = *i;
    }

    result = sub_1B684(result, v5);
    goto LABEL_10;
  }

  return result;
}

void sub_1A2D4(__IOSurface *a1, uint64_t *a2)
{
  v4 = (xmmword_1C6578 - *a2) >> 1;
  v5 = (*(&xmmword_1C6578 + 1) - a2[1]) >> 1;
  sub_1B808(a1);

  sub_1B880(a1, a2, v4, v5);
}

uint64_t sub_1A344()
{
  if (qword_1C6608)
  {
    v0 = dword_1C46E0 == -1;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    if ((dword_1C65C4 & 1) == 0)
    {
      sub_1B808(*(&stru_1C6538 + dword_1C46E0 + 20));
    }

    IOMobileFramebufferSwapBegin();
    if (byte_1C65FC == 1)
    {
      IOMobileFramebufferSwapSetLayer();
    }

    IOMobileFramebufferSwapSetLayer();
    if (byte_1C65FC == 1)
    {
      IOMobileFramebufferSwapSetLayer();
      byte_1C65FC = 0;
    }

    result = IOMobileFramebufferSwapEnd();
    dword_1C46E0 = 1 - dword_1C46E0;
  }

  return result;
}

uint64_t ramrod_display_set_background_color(char a1, char a2, char a3)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  BYTE2(dword_1C65C4) = a1;
  HIBYTE(dword_1C65C4) = a2;
  byte_1C65C8 = a3;
  sub_19ACC();

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t ramrod_clear_ui()
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (qword_1C6658)
  {
    qword_1C6648 = 0;
    *&dword_1C6650 = 0;
    free(qword_1C6658);
    qword_1C6658 = 0;
  }

  off_1C6620();
  sub_1B808(qword_1C65E8);
  sub_1A5C8();

  return pthread_mutex_unlock(&stru_1C6538);
}

void sub_1A5C8()
{
  if (qword_1C6658)
  {
    v0 = 0;
    if (dword_1C6588 > 179)
    {
      if (dword_1C6588 == 180)
      {
        v0 = (xmmword_1C6578 - qword_1C6648) / 2;
        v1 = dword_1C65A4 - 2 * dword_1C6650;
        goto LABEL_13;
      }

      v1 = 0;
      if (dword_1C6588 == 270)
      {
        v0 = dword_1C65A0 + 2 * qword_1C6648;
        goto LABEL_10;
      }
    }

    else
    {
      if (!dword_1C6588)
      {
        v0 = (xmmword_1C6578 - qword_1C6648) / 2;
        v1 = dword_1C65A4 + 2 * dword_1C6650;
        goto LABEL_13;
      }

      v1 = 0;
      if (dword_1C6588 == 90)
      {
        v0 = dword_1C65A0 - 2 * qword_1C6648;
LABEL_10:
        v1 = (DWORD2(xmmword_1C6578) - dword_1C6650) / 2;
      }
    }
  }

  else
  {
    v0 = 0;
    v1 = 0;
  }

LABEL_13:
  for (i = 0; i != 16; i += 8)
  {
    v3 = *(&stru_1C6538 + i + 160);
    if (v3)
    {
      sub_1B808(v3);
      if (qword_1C6670)
      {
        sub_1B880(*(&stru_1C6538 + i + 160), &qword_1C6660, dword_1C6598, unk_1C659C);
      }

      if (qword_1C6658)
      {
        sub_1B880(*(&stru_1C6538 + i + 160), &qword_1C6648, v0, v1);
      }
    }
  }
}

uint64_t ramrod_display_set_aux_image_path(const __CFString *a1, CFErrorRef *a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (qword_1C6658)
  {
    qword_1C6648 = 0;
    *&dword_1C6650 = 0;
    free(qword_1C6658);
    qword_1C6658 = 0;
  }

  if (a1)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetFileSystemRepresentation(a1, buffer, 1024);
    v4 = sub_1A074(buffer, &qword_1C6648, dword_1C6588);
    v5 = v4;
    if (v4)
    {
      sub_1A25C(&qword_1C6648, 0);
    }

    else
    {
      ramrod_log_msg("failed to load image %s\n", buffer);
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 3, 0, @"%s: unable to load image file %@", v6, v7, v8, "ramrod_display_set_aux_image_path");
    }
  }

  else
  {
    v5 = 1;
  }

  sub_1A5C8();
  ramrod_set_progress_UI(1, *&qword_1C46D8);
  pthread_mutex_unlock(&stru_1C6538);
  return v5 & 1;
}

BOOL ramrod_display_retry_framebuffer_create()
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  sub_1A990();
  pthread_mutex_unlock(&stru_1C6538);
  return dword_1C6600 > 0;
}

void sub_1A990()
{
  if (dword_1C6600 <= 0)
  {
    DisplayList = IOMobileFramebufferCreateDisplayList();
    if (DisplayList)
    {
      goto LABEL_3;
    }

    v10 = dword_1C46F8;
    if (dword_1C46F8 < 1)
    {
      goto LABEL_27;
    }

    v11 = dword_1C46F8 + 1;
    do
    {
      dword_1C46F8 = v10 - 1;
      v12 = 100000 * (v11 - v10);
      if (v12 >= 1000000)
      {
        v13 = 1000000;
      }

      else
      {
        v13 = v12;
      }

      usleep(v13);
      v14 = IOMobileFramebufferCreateDisplayList();
      v10 = dword_1C46F8;
    }

    while (dword_1C46F8 >= 1 && v14 == 0);
    DisplayList = v14;
    if (v14)
    {
LABEL_3:
      v1 = qword_1C6610;
      if (qword_1C6610)
      {
        if (dword_1C6600 >= 1)
        {
          v2 = 0;
          v3 = 72;
          do
          {
            CFRelease(*&v1[v3]);
            v1 = qword_1C6610;
            *(qword_1C6610 + v3) = 0;
            ++v2;
            v3 += 80;
          }

          while (v2 < dword_1C6600);
        }

        free(v1);
        qword_1C6610 = 0;
      }

      dword_1C6600 = 0;
      Count = CFArrayGetCount(DisplayList);
      qword_1C6610 = calloc(Count, 0x50uLL);
      if (qword_1C6610)
      {
        sub_1C38C(DisplayList, 0);
        if (!qword_1C6608)
        {
          sub_1C38C(DisplayList, 1);
          if (dword_1C6600 >= 1 && (*(qword_1C6610 + 80 * dword_1C6600 - 80) & 1) == 0)
          {
            ramrod_log_msg("attempting to power on display port\n");
            v5 = __IOAVClassMatching();
            if (v5)
            {
              v6 = wait_for_io_service_matching_dict(v5, 0xAu);
              if (v6)
              {
                v7 = v6;
                v8 = IOAVControllerCreateWithService();
                IOObjectRelease(v7);
                if (v8)
                {
                  v9 = IOAVControllerSetPower();
                  CFRelease(v8);
                  if (v9)
                  {
                    ramrod_log_msg("unable to power on DisplayPort: 0x%x\n");
                  }
                }

                else
                {
                  ramrod_log_msg("Unable to create IOAVController from service");
                }
              }

              else
              {
                ramrod_log_msg("timed out waiting for IOAVController service\n");
              }
            }

            else
            {
              ramrod_log_msg("IOAVClassMatching returned no matching class for IOAVController\n");
            }
          }

          if (!qword_1C6608)
          {
            ramrod_log_msg("unable to find a usable display\n");
          }
        }
      }

      else
      {
        ramrod_log_msg("unable to allocate framebuffer display\n");
      }

      CFRelease(DisplayList);
    }

    else
    {
LABEL_27:
      ramrod_log_msg("unable to get display list\n");
    }

    if (!dword_1C6600)
    {
      ramrod_log_msg("unable to get framebuffer\n");
LABEL_50:
      sub_1C314();
      return;
    }

    off_1C6638(v16);
    if (!qword_1C6608)
    {
      if (*qword_1C6610 != 1)
      {
        goto LABEL_48;
      }

      qword_1C6608 = qword_1C6610;
      ramrod_log_msg("%s: Will use %s\n", "create_framebuffer", (qword_1C6610 + 2));
      if (!qword_1C6608)
      {
        goto LABEL_48;
      }
    }

    v22[0] = 0;
    v22[1] = 0;
    DisplaySize = IOMobileFramebufferGetDisplaySize();
    if (DisplaySize)
    {
      ramrod_log_msg("unable to get display size: 0x%x\n", DisplaySize);
    }

    else
    {
      xmmword_1C6578 = vcvtq_u64_f64(*v22);
    }

    off_1C6618(dword_1C658C, dword_1C6588);
    v18 = qword_1C6608;
    if (!qword_1C6608 || *qword_1C6608 != 1 || (*(qword_1C6608 + 1) & 1) == 0 && (*(qword_1C6610 + 80 * dword_1C6600 - 80) & 1) == 0)
    {
LABEL_48:
      v22[0] = 0;
      if (pthread_create(v22, 0, sub_1BA68, 0))
      {
        ramrod_log_msg("unable to create hot plug thread\n");
        goto LABEL_50;
      }

      pthread_detach(v22[0]);
      v18 = qword_1C6608;
      if (!qword_1C6608)
      {
        goto LABEL_50;
      }
    }

    v19 = sub_1BBC8(*(v18 + 9), *v18);
    if ((*qword_1C6608 & 1) == 0)
    {
      v20 = off_1C6618(dword_1C658C, dword_1C6588);
      off_1C6628(v20);
      sub_1A5C8();
    }

    if (*(qword_1C6610 + 80 * dword_1C6600 - 80) == 1 && v19 != 0)
    {
      goto LABEL_50;
    }
  }
}

void sub_1ADA8()
{
  v0 = MGGetSInt32Answer();
  if (v0 == 3)
  {
    v2 = dword_1C658C;
    v1 = 80 * dword_1C658C;
    v3 = 239;
  }

  else if (v0 == 9)
  {
    v1 = (*(&xmmword_1C6578 + 1) * -0.06 + *(&xmmword_1C6578 + 1) * 0.5 + -45.0 + -2.0);
    v2 = dword_1C658C;
    v3 = 234;
  }

  else
  {
    v2 = dword_1C658C;
    v1 = 56 * dword_1C658C;
    v3 = 189;
  }

  v4 = v2 * v3;
  if (byte_1C6594)
  {
    v5 = MGGetSInt32Answer();
    dword_1C6590 = v5;
    if (v5 == 11)
    {
      v6 = 286;
    }

    else
    {
      v6 = 224;
    }

    if (v5 == 20)
    {
      v1 = 254;
    }

    else
    {
      v1 = v6;
    }
  }

  else
  {
    v5 = dword_1C6590;
  }

  ramrod_log_msg("Progress Bar Y offset at %d, display class %d\n", v1, v5);
  if (dword_1C6588 > 179)
  {
    if (dword_1C6588 == 180)
    {
      dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
      unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
      dword_1C65A0 = (v4 + xmmword_1C6578) / 2;
      v7 = (*(&xmmword_1C6578 + 1) >> 1) - v1;
      v8 = xmmword_10A6B0;
    }

    else
    {
      if (dword_1C6588 != 270)
      {
        return;
      }

      dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
      unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
      dword_1C65A0 = v1 + (xmmword_1C6578 >> 1);
      v7 = (v4 + DWORD2(xmmword_1C6578)) / 2;
      v8 = xmmword_10A6A0;
    }
  }

  else if (dword_1C6588)
  {
    if (dword_1C6588 != 90)
    {
      return;
    }

    dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
    unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
    dword_1C65A0 = (xmmword_1C6578 >> 1) - v1;
    v7 = (DWORD2(xmmword_1C6578) - v4) / 2;
    v8 = xmmword_10A6C0;
  }

  else
  {
    dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
    unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
    dword_1C65A0 = (xmmword_1C6578 - v4) / 2;
    v7 = v1 + (*(&xmmword_1C6578 + 1) >> 1);
    v8 = xmmword_10A6D0;
  }

  dword_1C65A4 = v7;
  *&dword_1C65A8 = v8;
  dword_1C65B8 = v4 - 4;
}

uint64_t sub_1B080(int a1, int a2)
{
  bzero(v5, 0x400uLL);
  if (sub_19DF8("/usr/share/progressui", "applelogo", a1, v5))
  {
    ramrod_log_msg("found applelogo at %s\n", v5);
    sub_1A074(v5, &qword_1C6660, a2);
  }

  else
  {
    ramrod_log_msg("unable to find a suitable applelogo for this hardware\n");
  }

  return sub_1A25C(&qword_1C6660, 1);
}

void sub_1B154()
{
  pthread_once(&stru_1C46C0, sub_19798);
  if (qword_1C6670)
  {
    qword_1C6660 = 0;
    *&dword_1C6668 = 0;
    free(qword_1C6670);
    qword_1C6670 = 0;
  }
}

void sub_1B1AC(double a1)
{
  v1 = a1 - *&qword_1C6678;
  if (a1 - *&qword_1C6678 < 0.0)
  {
    v1 = 0.0;
  }

  if (*&qword_1C6678 > 0.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = a1;
  }

  if (byte_1C6640 == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (v3 * dword_1C65B8 / 100.0 >= dword_1C65B8)
  {
    v4 = dword_1C65B8;
  }

  else
  {
    v4 = v3 * dword_1C65B8 / 100.0;
  }

  if ((dword_1C46E0 & 0x80000000) == 0)
  {
    v5 = *(&stru_1C6538 + dword_1C46E0 + 20);
    if (*(&stru_1C6538 + dword_1C46E0 + 46))
    {
      IOMobileFramebufferSwapWaitWithTimeout();
    }

    if ((dword_1C65C4 & 0x100) != 0)
    {
      v6 = IOSurfaceGetBytesPerRow(v5) >> 2;
      v7 = IOSurfaceGetBaseAddress(v5) + 4 * (dword_1C65A4 * v6);
      v8 = dword_1C658C;
      if (dword_1C658C < 5)
      {
        if (dword_1C658C <= 0)
        {
          ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X1 as a fallback.\n", dword_1C658C, 4);
          v8 = 1;
        }
      }

      else
      {
        ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X%d as a fallback.\n", dword_1C658C, 4, 4);
        v8 = 4;
      }

      v9 = 0;
      v10 = 0;
      v27 = (4 * v8);
      v29 = *(&off_1A90F8 + 3 * (v8 - 1));
      v11 = *v29;
      v12 = -1;
      v30 = v11;
      while (1)
      {
        v13 = &dword_1C65CC;
        if (v3 <= 0.0)
        {
          v14 = *(v29 + 2);
          if (v14)
          {
            v13 = &dword_1C65CC;
            goto LABEL_28;
          }

          v13 = &dword_1C65D0;
        }

        v14 = *(v29 + 1);
LABEL_28:
        v28 = v7;
        v15 = &v7[4 * dword_1C65A0];
        if (v11)
        {
          v16 = *v13;
          v17 = (v14 + v9);
          do
          {
            v18 = *v17++;
            *v15 = sub_1B684(v18, v16);
            v15 += (*algn_1C65AC * v6) + dword_1C65A8;
            --v11;
          }

          while (v11);
        }

        if (dword_1C65B8 < 1)
        {
          v20 = v30;
        }

        else
        {
          v19 = 0;
          v20 = v30;
          do
          {
            v21 = &dword_1C65CC;
            if (v19 >= v4)
            {
              v21 = &dword_1C65D0;
            }

            *v15 = *v21;
            v15 += (*algn_1C65AC * v6) + dword_1C65A8;
            ++v19;
          }

          while (v19 < dword_1C65B8);
        }

        v22 = &dword_1C65CC;
        if (v3 < 100.0)
        {
          v23 = *(v29 + 2);
          if (v23)
          {
            v22 = &dword_1C65CC;
            if (v20)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          v22 = &dword_1C65D0;
        }

        v23 = *(v29 + 1);
        if (v20)
        {
LABEL_44:
          v24 = *v22;
          v25 = v23 + v12;
          v26 = v30;
          do
          {
            *v15 = sub_1B684(*(v25 + v26), v24);
            v15 += (*algn_1C65AC * v6) + dword_1C65A8;
            --v26;
          }

          while (v26);
        }

LABEL_46:
        v7 = &v28[4 * *algn_1C65B4 * v6 + 4 * dword_1C65B0];
        ++v10;
        v11 = v30;
        v9 += v30;
        v12 += v30;
        if (v10 == v27)
        {
          goto LABEL_47;
        }
      }
    }

    ramrod_log_msg("Not updating screen progress since showprogress is set to false\n");
LABEL_47:

    sub_1A344();
  }
}

void sub_1B530(double a1)
{
  MGGetFloat32Answer();
  dword_1C658C = v1;
  MGGetFloat32Answer();
  v3 = v2;
  dword_1C6590 = MGGetSInt32Answer();
  v4 = MGGetSInt32Answer();
  ramrod_log_msg("display-boot-rotation = %d\n", v4);
  v5 = v3 * 57.2957795;
  dword_1C6588 = (v4 - llroundf(v5) + 360) % 360;
  ramrod_log_msg("display-scale = %d\n", dword_1C658C);
  ramrod_log_msg("display-rotation = %d\n", dword_1C6588);
  if (dword_1C6588 > 179)
  {
    if (dword_1C6588 != 180 && dword_1C6588 != 270)
    {
      goto LABEL_7;
    }
  }

  else if (dword_1C6588 && dword_1C6588 != 90)
  {
LABEL_7:
    ramrod_log_msg("display-rotation value (%d) unsupported, not rotating images\n", dword_1C6588);
    dword_1C6588 = 0;
  }
}

void sub_1B708()
{
  if (byte_1C6640 == 1)
  {
    v1 = dispatch_time(0, 1000000000);
    global_queue = dispatch_get_global_queue(2, 0);

    dispatch_after(v1, global_queue, &stru_1AD5F8);
  }
}

void sub_1B778(id a1)
{
  sub_1B708();
  v1 = pthread_mutex_lock(&stru_1C6538);
  v2 = *&qword_1C46D8;
  off_1C6630(v1, v2);
  v3 = 1.0;
  if (*&qword_1C6678 == 0.0 || (v4 = *&qword_1C6678 + -1.0, v3 = 0.0, *&qword_1C6678 + -1.0 < 0.0))
  {
    v4 = v3;
  }

  qword_1C6678 = *&v4;

  pthread_mutex_unlock(&stru_1C6538);
}

void sub_1B808(__IOSurface *a1)
{
  if (a1)
  {
    v2 = BYTE2(dword_1C65C4);
    v3 = *(&dword_1C65C4 + 3);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    AllocSize = IOSurfaceGetAllocSize(a1);
    __pattern4 = (__PAIR64__(v2, bswap32(v3)) >> 16) | 0xFF000000;
    memset_pattern4(BaseAddress, &__pattern4, AllocSize);
  }
}

void sub_1B880(__IOSurface *a1, uint64_t *a2, int a3, int a4)
{
  v8 = xmmword_1C6578;
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  v11 = *a2;
  if (*a2)
  {
    v12 = a2[1];
    if ((v12 + a4) > *(&v8 + 1) || v11 + a3 > v8)
    {
      dword_1C6680 = a3;
      dword_1C6688 = a4;
      qword_1C6698 = v11;
      qword_1C6690 = v12;

      pthread_once(&stru_1C46E8, sub_1B9CC);
    }

    else if (v12)
    {
      v14 = 0;
      v15 = a2[2];
      do
      {
        v16 = &BaseAddress[4 * a3 + ((v14 + a4) * BytesPerRow)];
        v17 = v11;
        do
        {
          v18 = *v15++;
          *v16 = v18;
          v16 += 4;
          --v17;
        }

        while (v17);
        ++v14;
      }

      while (v14 != v12);
    }
  }

  else
  {
    ramrod_log_msg("%s: can't blit - image x offset greater that width [%d > %zu]\n", "display_blit_raw_image_to_buffer_limit", 0, 0);
  }
}

void sub_1B9CC()
{
  ramrod_log_msg("Can't blit image into display buffer since it overflows the display size!\n");
  ramrod_log_msg("Here is some image and display information to debug your overflow issue:\n");
  ramrod_log_msg("Display Info: width=%zu height=%zu\n", xmmword_1C6578, *(&xmmword_1C6578 + 1));
  ramrod_log_msg("Image Info: xoff=%d yoff=%d height=%zu width=%zu\n", dword_1C6680, dword_1C6688, qword_1C6690, qword_1C6698);

  ramrod_log_msg("This message will only be logged once for all failed blits!\n");
}

uint64_t sub_1BA68()
{
  Current = CFRunLoopGetCurrent();
  ramrod_log_msg("starting display hot plug thread\n");
  if (dword_1C6600 < 1)
  {
    goto LABEL_13;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  do
  {
    if ((*(qword_1C6610 + v1) & 1) == 0)
    {
      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      if (RunLoopSource)
      {
        CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        v5 = IOMobileFramebufferEnableHotPlugDetectNotifications();
        if (v5)
        {
          ramrod_log_msg("unable to register for hot plug notifications on %s: 0x%x\n", (qword_1C6610 + v1 + 2), v5);
        }

        else
        {
          ++v3;
        }
      }
    }

    ++v2;
    v1 += 80;
  }

  while (v2 < dword_1C6600);
  if (v3 <= 0)
  {
LABEL_13:
    ramrod_log_msg("no external displays registered for hot plug notifications\n");
  }

  else
  {
    v6 = "s";
    if (v3 == 1)
    {
      v6 = "";
    }

    ramrod_log_msg("listening for hot plug notifications from %d display%s\n", v3, v6);
    CFRunLoopRun();
  }

  ramrod_log_msg("display hot plug thread exiting\n");
  return 0;
}

uint64_t sub_1BBC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    v18 = 0;
    if (IOMobileFramebufferSetDisplayDevice())
    {
      ramrod_log_msg("unable to set display device: 0x%x\n");
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = 0;
      if (IOMobileFramebufferGetSupportedDigitalOutModes())
      {
        ramrod_log_msg("unable to get color and timing modes: 0x%x\n");
      }

      else
      {
        ramrod_log_msg("NULL timing (%p) modes\n");
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (IOMobileFramebufferGetDisplaySize())
  {
    ramrod_log_msg("unable to get display size: 0x%x\n");
    return 0xFFFFFFFFLL;
  }

  xmmword_1C6578 = vcvtq_u64_f64(0);
  byte_1C65FC = 1;
  ramrod_log_msg("display: %zu x %zu\n", xmmword_1C6578, *(&xmmword_1C6578 + 1));
  off_1C6628(v2);
  for (i = 0; i != 3; ++i)
  {
    v4 = xmmword_1C6578;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      *(&stru_1C6538 + i + 20) = 0;
LABEL_20:
      ramrod_log_msg("unable to create display buffer %i\n");
      return 0xFFFFFFFFLL;
    }

    v6 = Mutable;
    sub_1CA58(Mutable, kIOSurfaceBytesPerRow, (4 * v4 + 63) & 0xFFFFFFC0);
    sub_1CA58(v6, kIOSurfaceWidth, v4);
    sub_1CA58(v6, kIOSurfaceHeight, SDWORD2(v4));
    sub_1CA58(v6, kIOSurfacePixelFormat, 1111970369);
    sub_1CA58(v6, kIOSurfaceBytesPerElement, 4);
    if ((_get_cpu_capabilities() & 0x800) != 0)
    {
      v7 = 1792;
    }

    else
    {
      v7 = 1024;
    }

    sub_1CA58(v6, kIOSurfaceCacheMode, v7);
    v8 = IOSurfaceCreate(v6);
    CFRelease(v6);
    *(&stru_1C6538 + i + 20) = v8;
    if (!v8)
    {
      goto LABEL_20;
    }

    if (IOSurfaceLock(v8, 0, 0))
    {
      ramrod_log_msg("unable to lock display buffer %i: 0x%x\n");
      return 0xFFFFFFFFLL;
    }
  }

  sub_1B808(qword_1C65E8);
  sub_1A5C8();
  v17[0] = 128;
  v9 = sysctlbyname("hw.target", byte_1C66A0, v17, 0, 0);
  ramrod_log_msg("%s: HW.target returned: %s\n", "skip_display_poweron_for_device", byte_1C66A0);
  if (!v9)
  {
    v10 = MGCopyAnswer();
    if (v10)
    {
      v11 = v10;
      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      ramrod_log_msg("%s: DeviceName is: %s\n", "skip_display_poweron_for_device", CStringPtr);
      v13 = CFStringCompare(@"Apple Display", v11, 1uLL);
      CFRelease(v11);
      if (v13 == kCFCompareEqualTo)
      {
        ramrod_log_msg("Display-less device detected. Skipping poweron entirely\n", v15, v16);
        return 0xFFFFFFFFLL;
      }
    }
  }

  ramrod_log_msg("powering on display\n");
  if (IOMobileFramebufferRequestPowerChange())
  {
    ramrod_log_msg("IOMobileFramebufferRequestPowerChange failed: %x\n");
    return 0xFFFFFFFFLL;
  }

  IOMobileFramebufferSwapWait();
  result = 0;
  dword_1C46E0 = 0;
  return result;
}

void sub_1C314()
{
  v0 = 0;
  xmmword_1C6578 = 0uLL;
  do
  {
    v1 = (&stru_1C6538 + v0);
    v2 = *(&stru_1C6538 + v0 + 160);
    if (v2)
    {
      IOSurfaceUnlock(v2, 0, 0);
      CFRelease(v1[20]);
      v1[20] = 0;
    }

    v0 += 8;
  }

  while (v0 != 24);
  dword_1C46E0 = -1;
}

CFIndex sub_1C38C(const __CFArray *a1, int a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (*(ValueAtIndex + 2) == a2)
      {
        v7 = (qword_1C6610 + 80 * dword_1C6600);
        if (!CFStringGetCString(*ValueAtIndex, v7 + 2, 64, 0x8000100u))
        {
          __strlcpy_chk();
        }

        ramrod_log_msg("found display: %s\n", v7 + 2);
        if (IOMobileFramebufferOpenByName())
        {
          ramrod_log_msg("unable to open framebuffer: 0x%x\n");
        }

        else
        {
          ++dword_1C6600;
          v7[1] = 0;
          *v7 = a2 == 0;
          if (!a2)
          {
            v9 = 1;
LABEL_13:
            v7[1] = v9 == 1;
            if (v9 == 1 && !qword_1C6608)
            {
              qword_1C6608 = v7;
              ramrod_log_msg("Will use display %s\n", v7 + 2);
            }

            ramrod_log_msg("Display state is %d\n");
            goto LABEL_17;
          }

          DigitalOutState = IOMobileFramebufferGetDigitalOutState();
          if (!DigitalOutState)
          {
            v9 = 0;
            goto LABEL_13;
          }

          ramrod_log_msg("%s: Failed to query digital out state %08x\n", "get_display_state", DigitalOutState);
          ramrod_log_msg("Unable to get state of %s\n");
        }
      }

LABEL_17:
      result = CFArrayGetCount(a1);
    }
  }

  return result;
}

uint64_t sub_1C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = (a3 + 2);
  v7 = "attached";
  if (!a2)
  {
    v7 = "detached";
  }

  ramrod_log_msg("%s: display %s %s\n", "display_hot_plug", (a3 + 2), v7);
  v8 = pthread_mutex_lock(&stru_1C6538);
  v9 = qword_1C6608;
  if (!a2)
  {
    *(v3 + 1) = 0;
    if (v9 == v3)
    {
      ramrod_log_msg("%s: %s was active", "display_hot_plug", v6);
    }

    else if (v9)
    {
      goto LABEL_20;
    }

    v10 = dword_1C6600;
    v3 = qword_1C6610;
    if (dword_1C6600 < 1)
    {
LABEL_15:
      if (*qword_1C6610 != 1)
      {
        v9 = 0;
        goto LABEL_20;
      }

      v6 = (qword_1C6610 + 2);
    }

    else
    {
      v6 = (qword_1C6610 + 2);
      while (*(v6 - 1) != 1)
      {
        v6 += 80;
        if (!--v10)
        {
          goto LABEL_15;
        }
      }

      v3 = (v6 - 2);
    }

    goto LABEL_19;
  }

  *(v3 + 1) = 1;
  if (!v9 || (v9[1] & 1) == 0)
  {
LABEL_19:
    ramrod_log_msg("%s: Will use %s\n", "display_hot_plug", v6);
    v9 = v3;
  }

LABEL_20:
  if (qword_1C6608 != v9)
  {
    if (qword_1C6608)
    {
      if (*qword_1C6608 == 1 && dword_1C46E0 != -1)
      {
        v12 = *(&stru_1C6538 + dword_1C46E0 + 20);
        if (v12)
        {
          sub_1B808(v12);
          sub_1A344();
        }
      }

      sub_1C314();
    }

    qword_1C6608 = v9;
    if (v9)
    {
      v13 = *v9;
      if (v13 == 1)
      {
        off_1C6638(v8);
        v13 = *qword_1C6608;
      }

      if (!sub_1BBC8(a1, v13))
      {
        v14 = off_1C6618(dword_1C658C, dword_1C6588);
        off_1C6628(v14);
        sub_1A5C8();
        if (*&qword_1C46D8 != -1.0)
        {
          off_1C6630(v15, *&qword_1C46D8);
        }
      }
    }
  }

  return pthread_mutex_unlock(&stru_1C6538);
}

const __CFNumber *sub_1C764(const __CFDictionary *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  v11 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (Value)
  {
    v12 = CFDictionaryGetValue(Value, @"Active");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v13, kCFNumberIntType, a2);
      }
    }
  }

  if (v11)
  {
    valuePtr = 0;
    v15 = CFDictionaryGetValue(v11, @"Active");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberIntType, a3);
      }
    }

    v18 = CFDictionaryGetValue(v11, @"SyncRate");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
        *a4 = ((valuePtr * 0.000015259) + 0.5);
      }
    }
  }

  result = CFDictionaryGetValue(a1, @"Score");
  if (result)
  {
    v22 = result;
    v23 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v23 == result)
    {
      return CFNumberGetValue(v22, kCFNumberIntType, a5);
    }
  }

  return result;
}

uint64_t sub_1C90C(const __CFString *a1, SInt32 *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = ramrod_copy_NVRAM_variable(a1);
      if (v3)
      {
        v4 = v3;
        valuePtr = -1;
        v5 = CFGetTypeID(v3);
        if (v5 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v4);
        }

        else if (v5 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
          IntValue = valuePtr;
        }

        else
        {
          if (v5 != CFDataGetTypeID())
          {
            ramrod_log_msg("can't convert unsupported CFType to int\n");
            goto LABEL_18;
          }

          BytePtr = CFDataGetBytePtr(v4);
          if (!BytePtr)
          {
            goto LABEL_18;
          }

          v9 = BytePtr;
          Length = CFDataGetLength(v4);
          v11 = CFStringCreateWithBytes(kCFAllocatorDefault, v9, Length, 0x8000100u, 0);
          if (!v11)
          {
            goto LABEL_18;
          }

          v12 = v11;
          IntValue = CFStringGetIntValue(v11);
          CFRelease(v12);
        }

        if (IntValue != -1)
        {
          v7 = 0;
          *a2 = IntValue;
LABEL_19:
          CFRelease(v4);
          return v7;
        }

LABEL_18:
        v7 = 3;
        goto LABEL_19;
      }
    }

    else
    {
      ramrod_log_msg("can't load nil pointer with NVRAM value\n", 0);
    }
  }

  else
  {
    ramrod_log_msg("can't fetch NVRAM value with NULL key\n", a2);
  }

  return 2;
}

void sub_1CA58(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t create_bound_socket(sockaddr *a1, int a2, int a3, int a4, int a5)
{
  v13 = 1;
  v8 = socket(a1->sa_family, a2, a3);
  v9 = v8;
  if (v8 == -1)
  {
    perror("unable to create socket");
    return v9;
  }

  if (a4)
  {
    setsockopt(v8, 0xFFFF, 4, &v13, 4u);
  }

  if (bind(v9, a1, a1->sa_len) == -1)
  {
    v11 = "bind failed";
LABEL_11:
    perror(v11);
    close(v9);
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    sa_len = a1->sa_len;
    if (getsockname(v9, a1, &sa_len) == -1)
    {
      v11 = "getsockname failed";
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t create_listen_socket_sigpipe(_WORD *a1, int a2)
{
  v4 = *a1;
  v5 = *a1 != 0;
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v9 = 7708;
  v10 = __rev16(v4);
  bound_socket = create_bound_socket(&v9, 1, 0, v5, v4 == 0);
  if (bound_socket == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = bound_socket;
  if (listen(bound_socket, 128) == -1)
  {
    perror("listen failed");
    close(v7);
    return 0xFFFFFFFFLL;
  }

  if (qword_1C6768 != -1)
  {
    sub_D64AC();
  }

  ramrod_socket_set_idle_timeouts_passive(v7, qword_1C6760);
  ramrod_socket_set_nosigpipe(v7, a2 ^ 1);
  bzero(v14, 0x401uLL);
  ramrod_socket_sockaddr_to_string(v14, 0x401uLL, &v9, "<unknown>");
  ramrod_log_msg("sock %3d: listening on %s\n", v7, v14);
  if (!v4)
  {
    *a1 = bswap32(v10) >> 16;
  }

  return v7;
}

uint64_t accept_socket_connection(int a1, char a2, void *a3)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0;
  v24 = 0u;
  v12 = 128;
  v6 = accept(a1, &v23, &v12);
  if (v6 == -1)
  {
    perror("accept failed");
    return v6;
  }

  if (a3)
  {
    arc4random_buf(a3, 8uLL);
    resume_socket_guard(v6, a3);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0;
  v16 = 0u;
  v11 = 128;
  getsockname(v6, &v15, &v11);
  bzero(v14, 0x401uLL);
  bzero(v13, 0x401uLL);
  ramrod_socket_sockaddr_to_string(v14, 0x401uLL, &v23, "<unknown>");
  ramrod_socket_sockaddr_to_string(v13, 0x401uLL, &v15, "<unknown>");
  ramrod_log_msg("sock %3d: accepted %s <- %s (from %d)\n", v6, v13, v14, a1);
  if (qword_1C6768 != -1)
  {
    sub_D64AC();
  }

  ramrod_socket_set_idle_timeouts_active(v6, qword_1C6760);
  v7 = a2 & 3;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      return v6;
    }

    v8 = 2;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (sub_1E490(&v23))
  {
    ramrod_log_msg("sock %3d: shutdown(%s) skipped for loopback address\n");
  }

  else if (shutdown(v6, v8))
  {
    v9 = __error();
    strerror(*v9);
    ramrod_log_msg("sock %3d: shutdown(%s) failed: %s (%d)\n");
  }

  else
  {
    ramrod_log_msg("sock %3d: shutdown(%s) complete\n");
  }

  return v6;
}

void resume_socket_guard(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (change_fdguard_np() == -1)
    {
      sub_D64D4();
    }
  }
}

unint64_t register_main_connection(dispatch_source_t source)
{
  v1 = source;
  if (source)
  {
    dispatch_source_get_handle(source);
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1C6720, &v2, v1);
    if (v2)
    {
      v3 = v2 == v1;
      v1 = v2 == v1;
      if (v3)
      {
        ramrod_log_msg("sock %3d: already main connection\n");
      }

      else
      {
        ramrod_log_msg("sock %3d: rejected duplicate main connection\n");
      }
    }

    else
    {
      dispatch_retain(v1);
      v1 = 1;
      ramrod_log_msg("sock %3d: became main connection\n");
    }
  }

  return v1;
}

void suspend_socket_guard(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (change_fdguard_np() == -1)
    {
      sub_D64D4();
    }
  }
}

uint64_t close_socket_with_message(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v6 = a1;
  if (a4)
  {
    ramrod_socket_log_statistics(a1);
  }

  ramrod_log_msg("sock %3d: %s\n", v6, a3);
  if (a2)
  {
    result = guarded_close_np();
    if (result == -1)
    {
      sub_D64D4();
      return 0xFFFFFFFFLL;
    }
  }

  else
  {

    return close(v6);
  }

  return result;
}

uint64_t close_socket_with_result(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ramrod_socket_reset_on_close(a1);
    v5 = "closed with explicit RST";
  }

  else
  {
    v5 = "closed";
  }

  return close_socket_with_message(a1, a2, v5, 1);
}

uint64_t init_ramdisk_sysctls()
{
  if (sub_1D284("vm.shared_region_trace_level", 0))
  {
    checkpoint_monitor_step(517, "region_spew_failed", 0xFFFFFFFFLL, 0);
  }

  sub_1D284("net.inet.log_restricted", 1);
  sub_1D284("net.inet.tcp.disable_access_to_stats", 0);
  if (qword_1C6768 != -1)
  {
    sub_D64F4();
  }

  v0 = qword_1C6760;
  sub_1D284("net.inet.tcp.keepinit", 1000 * *qword_1C6760);
  sub_1D284("net.inet.tcp.keepidle", 1000 * v0[1]);
  sub_1D284("net.inet.tcp.keepintvl", 1000 * v0[2]);
  sub_1D284("net.inet.tcp.keepcnt", v0[3]);
  sub_1D284("net.inet.tcp.always_keepalive", 1);
  return 0;
}

uint64_t sub_1D284(const char *a1, int a2)
{
  v8 = 0;
  v9 = a2;
  v7 = 4;
  if (sysctlbyname(a1, &v8, &v7, &v9, 4uLL))
  {
    v3 = __error();
    v4 = *v3;
    v5 = strerror(*v3);
    ramrod_log_msg("%s: %s (%d)\n", a1, v5, v4);
  }

  else
  {
    ramrod_log_msg("%s: %d -> %d\n", a1, v8, v9);
    return 0;
  }

  return v4;
}

void log_ramdisk_network_stats()
{
  bzero(v2, 0x390uLL);
  v1 = 912;
  if (sysctlbyname("net.inet.tcp.stats", v2, &v1, 0, 0))
  {
    v0 = __error();
    strerror(*v0);
    ramrod_log_msg("%s: %s (%d)");
  }

  else
  {
    ramrod_log_msg("\n");
    ramrod_log_msg("TCP connection statistics:\n    connected: %u\n    accepted: %u\n    dropped: %u\n    rxmit timeouts: %u\n    keepalive timeouts: %u\n\n", v4, v3, v5, v6, v7);
    ramrod_log_msg("TCP packet statistics:\n    total pkts in/out: %u/%u\n    seq pkts in/out: %u/%u\n    ack pkts in/out: %u/%u\n    ooo pkts in: %u (%u bytes)\n    rxmit pkts out: %u (%u bytes)\n    rcvbadsum: %u\n    rcvbadoff: %u\n    rcvmemdrop: %u\n    rcvshort: %u\n    rcvduppack: %u\n    rcvpartduppack: %u\n    fcholdpacket: %u\n    reordered_pkts: %u\n    recovered_pkts: %u\n\n", v11, v8, v12, v9, v13, v10);
  }
}

uint64_t sub_1D4C4(const char **a1, const char *a2)
{
  ramrod_kickstart_usbcretimer();
  ramrod_kickstart_aces();
  if (ramrod_execute_command(a1))
  {
    ramrod_log_msg("unable to %s - exiting\n", a2);
    exit(1);
  }

  ramrod_log_msg("%s in progress, hanging\n", a2);

  return select(0, 0, 0, 0, 0);
}

id usb_speed_in_mbps_for_service(io_registry_entry_t a1)
{
  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"CurrentState", 0, 3u);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:@"OnBus"];
  v3 = [v1 objectForKeyedSubscript:@"DeviceState"];
  v4 = [v1 objectForKeyedSubscript:@"SelectedConfiguration"];
  v5 = [v1 objectForKeyedSubscript:@"ConnectionSpeed"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v2 BOOLValue], result))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v3 integerValue]) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v4 integerValue]) != 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v5 integerValue];
          if (v7 + 1 > 4)
          {
            return &loc_2710;
          }

          else
          {
            return dword_10A7A0[v7 + 1];
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t enable_usb_connections(int a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a1)
  {
    v3 = @"standardRestore";
  }

  else
  {
    v3 = @"emptyComposite";
  }

  v4 = " (async)";
  if (a2)
  {
    v4 = " (blocking)";
  }

  ramrod_log_msg_cf(@"enabling USB%s with description: %@\n", v4, v3);
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D8AC;
  block[3] = &unk_1A9210;
  block[4] = v3;
  dispatch_sync(qword_1C6770, block);
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_1DC68;
    v7[3] = &unk_1AD618;
    v7[4] = &v9;
    dispatch_sync(qword_1C6748, v7);
  }

  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1D8AC(uint64_t a1)
{
  v1 = qword_1C6728;
  v2 = dword_1C6730;
  notification = dword_1C6730;
  if (!dword_1C6730)
  {
    v3 = a1;
    v4 = IOServiceMatching("IOUSBDeviceController");
    a1 = IOServiceAddMatchingNotification(v1, "IOServiceFirstMatch", v4, sub_1D94C, 0, &notification);
    v2 = notification;
    dword_1C6730 = notification;
    qword_1C6738 = *(v3 + 32);
  }

  dword_1C6740 = 0;
  sub_1D94C(a1, v2);
}

void sub_1D94C(uint64_t a1, io_iterator_t a2)
{
  if (qword_1C6778 != -1)
  {
    sub_D6530();
  }

  dispatch_assert_queue_V2(qword_1C6770);
  v22 = qword_1C6758;
  v3 = +[NSMutableArray array];
  v23 = +[NSMutableArray array];
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = sub_1EB80(v5, "appeared");
      refCon = 0;
      v7 = IOUSBDeviceControllerCreateWithService();
      if (v7)
      {
        v8 = v7;
        v9 = mach_error_string(v7);
        ramrod_log_msg("[%#llx] unable to create USB device controller: %s (%#x)\n", v6, v9, v8);
      }

      else
      {
        ramrod_log_msg_cf(@"[%#llx] created %@\n", v6, refCon);
        notification = 0;
        v10 = IOServiceAddInterestNotification(qword_1C6728, v5, "IOGeneralInterest", sub_1EBEC, refCon, &notification);
        if (v10)
        {
          v11 = v10;
          v12 = mach_error_string(v10);
          ramrod_log_msg("[%#llx] unable to register for terminate events: %s (%#x)\n", v6, v12, v11);
        }

        else
        {
          v13 = refCon;
          [v22 addObject:refCon];
          Service = IOUSBDeviceControllerGetService();
          if (IOObjectConformsTo(Service, "AppleUSBVHCIDeviceController"))
          {
            v15 = v23;
          }

          else
          {
            v15 = v3;
          }

          [v15 addObject:v13];
        }

        CFRelease(refCon);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v3);
        }

        sub_1EC98(*(*(&v25 + 1) + 8 * i));
      }

      v17 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v20 = qword_1C6770;
  v21 = qword_1C6780;
  if ([v3 count])
  {
    v21 = dispatch_time(0, 10000000000);
    qword_1C6780 = v21;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_1EF64;
  block[3] = &unk_1AD6B8;
  block[4] = v23;
  dispatch_after(v21, v20, block);
}

uint64_t set_usb_forced_off_bus(char a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_1DD74;
  v4[3] = &unk_1AD648;
  v5 = a1;
  v4[4] = &v6;
  dispatch_sync(qword_1C6770, v4);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

id sub_1DD74(uint64_t a1)
{
  byte_1C6750 = *(a1 + 40);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = sub_1DE80(*(*(&v8 + 1) + 8 * v6), *(a1 + 40));
        if (v7)
        {
          *(*(*(a1 + 32) + 8) + 24) = v7;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1DE80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Service = IOUSBDeviceControllerGetService();
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(Service, &entryID);
  v4 = entryID;
  v5 = IOUSBDeviceControllerForceOffBus();
  v6 = v5;
  if (v5)
  {
    if (v2)
    {
      v7 = "force off";
    }

    else
    {
      v7 = "go on";
    }

    v8 = mach_error_string(v5);
    ramrod_log_msg_cf(@"[%#llx] unable to %s bus: %s", v4, v7, v8);
  }

  return v6;
}

uint64_t stash_USB_debug_log()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_1DFDC;
  block[3] = &unk_1AD618;
  block[4] = &v3;
  dispatch_sync(qword_1C6770, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

char *sub_1DFDC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        Service = IOUSBDeviceControllerGetService();
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(Service, &entryID);
        v8 = entryID;
        v9 = IOUSBDeviceControllerSendCommand();
        if (v9)
        {
          v10 = v9;
          v11 = mach_error_string(v9);
          ramrod_log_msg_cf(@"[%#llx] %@ failed: %s (%#x)\n", v8, @"StoreDriverDebugLog", v11, v10);
          *(*(*(a1 + 32) + 8) + 24) = v10;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

const void *wait_for_physical_disconnect()
{
  result = sub_1E180(0);
  if (result)
  {
    v1 = result;
    do
    {
      usleep(0xFAu);
      CFRelease(v1);
      result = sub_1E180(0);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1E180(_DWORD *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_1F064;
  v4[3] = &unk_1AD6E8;
  v4[4] = &v9;
  v4[5] = &v5;
  dispatch_sync(qword_1C6770, v4);
  v2 = v10[3];
  if (a1 && v2)
  {
    *a1 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

unint64_t bus_speed_in_mbps_for_socket(uint64_t a1)
{
  v1 = a1;
  if (!ramrod_getsockopt_int(a1, 6, 516, 0xFFFFFFFF))
  {
    *&v15.sa_len = 0;
    v3 = sub_1E180(&v15);
    if (v3)
    {
      CFRelease(v3);
      return *&v15.sa_len;
    }

    return 0;
  }

  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0;
  v11 = 128;
  if (getsockname(v1, &v15, &v11) || sub_1E490(&v15))
  {
    return 0;
  }

  if (v15.sa_family == 2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (v15.sa_family != 30)
  {
    return 0;
  }

  v2 = DWORD2(v16);
  if (!DWORD2(v16))
  {
    v5 = 41;
LABEL_12:
    v2 = ramrod_getsockopt_int(v1, v5, 9696, 0);
    *bsdName = 0;
    v13 = 0;
    v14 = 0;
    if (v2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  *bsdName = 0;
  v13 = 0;
  v14 = 0;
LABEL_13:
  if (if_indextoname(v2, bsdName) != bsdName)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  __strlcpy_chk();
  if (ioctl(v1, 0xC02069DEuLL, &v23) || !v24 || ioctl(v1, 0xC020699FuLL, &v23) || v24 != 6 || DWORD2(v24) != 1 || (v7 = IOBSDNameMatching(kIOMasterPortDefault, 0, bsdName), (MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7)) == 0) || (v9 = MatchingService, v4 = usb_speed_in_mbps_for_service(MatchingService), IOObjectRelease(v9), !v4))
  {
    v10 = sub_1E50C(v1, bsdName);
    if (v10)
    {
      return v10;
    }

    return 0;
  }

  return v4;
}

BOOL sub_1E490(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 1)
  {
    return 1;
  }

  if (v1 != 30)
  {
    if (v1 == 2)
    {
      v2 = *(a1 + 4);
      return v2 == 127;
    }

    return 0;
  }

  if (*(a1 + 8) || *(a1 + 12))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4 == -65536)
  {
    LOBYTE(v2) = *(a1 + 20);
    goto LABEL_15;
  }

  if (v4)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    return 0;
  }

  if (v2 != 0x1000000)
  {
LABEL_15:
    v2 = v2;
    return v2 == 127;
  }

  return 1;
}

unint64_t sub_1E50C(int a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  __strlcpy_chk();
  if (ioctl(a1, 0xC0F06992uLL, v6))
  {
    return 0;
  }

  v4 = *(&v8 + 1);
  if (*(&v8 + 1) && *(&v7 + 1))
  {
    if (*(&v8 + 1) >= *(&v7 + 1))
    {
      v4 = *(&v7 + 1);
    }
  }

  else
  {
    if (*(&v7 + 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(&v8 + 1);
    }

    if (*(&v8 + 1))
    {
      v4 = v5;
    }

    else
    {
      v4 = *(&v7 + 1);
    }
  }

  return v4 / 0xF4240;
}

CFPropertyListRef create_dictionary_from_plist(const char *a1, CFErrorRef *a2)
{
  v4 = open(a1, 0, 0);
  if (v4 != -1)
  {
    v5 = v4;
    memset(&v38, 0, sizeof(v38));
    if (fstat(v4, &v38) == -1)
    {
      v18 = __error();
      v19 = strerror(*v18);
      ramrod_log_msg("unable get plist stat information: %s\n", v19);
      v20 = kCFErrorDomainPOSIX;
      v21 = *__error();
      v25 = @"%s: unable to stat plist";
    }

    else
    {
      st_size = v38.st_size;
      v7 = malloc(v38.st_size);
      if (v7)
      {
        v8 = v7;
        if (read(v5, v7, st_size) == st_size)
        {
          v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v8, st_size, kCFAllocatorNull);
          if (v9)
          {
            v10 = v9;
            v11 = CFPropertyListCreateWithData(kCFAllocatorDefault, v9, 0, 0, a2);
            if (!v11)
            {
              ramrod_log_msg("plist is not valid\n");
            }

            CFRelease(v10);
            goto LABEL_16;
          }

          ramrod_log_msg("unable to create data from plist bytes\n");
          ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFData from plist bytes", v34, v35, v36, "create_dictionary_from_plist");
        }

        else
        {
          v28 = __error();
          v29 = strerror(*v28);
          ramrod_log_msg("unable to read plist contents from file: %s\n", v29);
          v30 = *__error();
          ramrod_create_error_cf(a2, kCFErrorDomainPOSIX, v30, 0, @"%s: plist read failed", v31, v32, v33, "create_dictionary_from_plist");
        }

        v11 = 0;
LABEL_16:
        free(v8);
        goto LABEL_17;
      }

      v26 = __error();
      v27 = strerror(*v26);
      ramrod_log_msg("unable to malloc buffer for plist contents: %s\n", v27);
      v20 = kCFErrorDomainPOSIX;
      v21 = *__error();
      v25 = @"%s: malloc failed plist (size = %zd)";
    }

    ramrod_create_error_cf(a2, v20, v21, 0, v25, v22, v23, v24, "create_dictionary_from_plist");
    v11 = 0;
LABEL_17:
    close(v5);
    return v11;
  }

  v12 = __error();
  v13 = strerror(*v12);
  ramrod_log_msg("unable to open %s: %s\n", a1, v13);
  v14 = __error();
  ramrod_create_error_cf(a2, kCFErrorDomainPOSIX, *v14, 0, @"%s: unable to open plist", v15, v16, v17, "create_dictionary_from_plist");
  return 0;
}

uint64_t get_BOOLean_option(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (!a1)
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return v3;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFBooleanGetTypeID())
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *buffer = 0u;
      v12 = 0u;
      CFStringGetCString(a2, buffer, 255, 0x8000100u);
      ramrod_log_msg("%s: option '%s' has non-BOOLean value, using default\n", "get_BOOLean_option", buffer);
    }

    return v3;
  }

  return CFBooleanGetValue(v6);
}

void sub_1EA1C(id a1)
{
  qword_1C6760 = "\b";
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if (!sysctlbyname("hw.target", __big, &v1, 0, 0) && (strcasestr(__big, "fpga") || strcasestr(__big, "sim")))
  {
    qword_1C6760 = &RAMROD_SOCKET_TIMEOUTS_FPGA;
  }
}

void sub_1EAE4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1C6770 = dispatch_queue_create("com.apple.ramrod.IOUSBDeviceController.queue", v1);
  qword_1C6758 = objc_alloc_init(NSMutableArray);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  qword_1C6748 = dispatch_queue_create_with_target_V2("com.apple.ramrod.IOUSBDeviceController.await", initially_inactive, qword_1C6770);
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  IONotificationPortSetDispatchQueue(v3, qword_1C6770);
  qword_1C6728 = v3;
}

uint64_t sub_1EB80(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  if (a2)
  {
    v4 = IORegistryEntryCopyPath(a1, "IOService");
    ramrod_log_msg_cf(@"[%#llx] USB controller %s: %@\n", entryID, a2, v4);
  }

  return entryID;
}

id sub_1EBEC(id result, io_registry_entry_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v4 = result;
    sub_1EB80(a2, "terminated");
    AssociatedObject = objc_getAssociatedObject(v4, sub_1EBEC);
    if (AssociatedObject)
    {
      objc_setAssociatedObject(v4, sub_1EBEC, 0, 0);
      IOObjectRelease(AssociatedObject);
    }

    v6 = qword_1C6758;

    return [v6 removeObject:v4];
  }

  return result;
}

void sub_1EC98(uint64_t a1)
{
  Service = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(Service, entryID);
  v3 = entryID[0];
  v4 = byte_1C6750;
  v5 = qword_1C6738;
  if (!qword_1C6738)
  {
    goto LABEL_17;
  }

  v6 = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(v6, entryID);
  v7 = entryID[0];
  v8 = IOUSBDeviceDescriptionCreateFromControllerWithType();
  if (v8)
  {
    v9 = v8;
    if (IOUSBDeviceDescriptionGetProductID() - 4864 <= 0xFFFFFEFF)
    {
      IOUSBDeviceDescriptionSetProductID();
    }

    udid_string = ramrod_create_udid_string();
    IOUSBDeviceDescriptionSetSerialString();
    CFRelease(udid_string);
    v11 = IOUSBDeviceControllerSetDescription();
    v5 = v11;
    if (v11)
    {
      v12 = mach_error_string(v11);
      ramrod_log_msg("[%llx] unable to set USB description: %s (%#x)\n", v7, v12, v5);
    }

    else
    {
      IOServiceWaitQuiet(v6, 0);
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg_cf(@"[%#llx] unable to find USB configuration: %@\n", v7, v5);
    v5 = 3758097090;
  }

  v13 = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(v13, entryID);
  v14 = entryID[0];
  v25[0] = @"IOParentMatch";
  v25[1] = @"IOProviderClass";
  entryID[0] = [NSNumber numberWithUnsignedLongLong:entryID[0]];
  entryID[1] = @"AppleUSBDeviceMux";
  v15 = [NSDictionary dictionaryWithObjects:entryID forKeys:v25 count:2];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v16);
  if (MatchingService)
  {
    v18 = MatchingService;
    v23 = @"DebugLevel";
    v24 = [NSNumber numberWithInt:7];
    v19 = IORegistryEntrySetCFProperties(v18, [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1]);
    if (v19)
    {
      v20 = v19;
      v21 = mach_error_string(v19);
      ramrod_log_msg("[%#llx] unable to set mux debug level: %s (%#x)\n", v14, v21, v20);
    }

    IOObjectRelease(v18);
LABEL_17:
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ramrod_log_msg("[%#llx] unable to find AppleUSBDeviceMux service\n", v14);
  if (v4)
  {
LABEL_18:
    sub_1DE80(a1, 1);
  }

LABEL_19:
  if (v5)
  {
    dword_1C6740 = v5;
    v22 = mach_error_string(v5);
  }

  else
  {
    v22 = "success";
  }

  ramrod_log_msg_cf(@"[%#llx] enabling USB finished: %s (%#x)\n", v3, v22, v5);
  dispatch_activate(qword_1C6748);
}

id sub_1EF64(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        sub_1EC98(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

CFTypeRef sub_1F064(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        Service = IOUSBDeviceControllerGetService();
        v9 = usb_speed_in_mbps_for_service(Service);
        if (v9)
        {
          v10 = v9;
          result = CFRetain(v7);
          *(*(*(a1 + 32) + 8) + 24) = result;
          *(*(*(a1 + 40) + 8) + 24) = v10;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1F18C(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_1F1DC(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

double ramrod_execute_config_alloc()
{
  v0 = calloc(1uLL, 0x30uLL);
  v0[18] = 0;
  result = NAN;
  *(v0 + 5) = 0x7FFFFFFF000000B4;
  return result;
}

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

void ramrod_execute_config_set_file_actions_block(const void **a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*a1);
  *a1 = v3;
}

void ramrod_execute_config_set_input_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 8));
  *(a1 + 8) = v3;
}

void ramrod_execute_config_set_output_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 16));
  *(a1 + 16) = v3;
}

void ramrod_execute_config_set_process_launched_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 24));
  *(a1 + 24) = v3;
}

uint64_t ramrod_execute_config_set_jetsam_properties(uint64_t result, __int16 a2, int a3, int a4)
{
  *(result + 36) = a2;
  *(result + 40) = a3;
  *(result + 44) = a4;
  return result;
}

void ramrod_execute_config_set_log_output(const void **a1)
{
  v2 = _Block_copy(&stru_1AD718);
  _Block_release(*a1);
  *a1 = v2;
  v3 = _Block_copy(&stru_1AD738);
  _Block_release(a1[2]);
  a1[2] = v3;
}

uint64_t ramrod_execute_command_with_config(const char **a1, void *a2)
{
  v37 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", *a1);
  *v43 = -1;
  *v44 = -1;
  ramrod_log_msg("executing %s", *a1);
  v4 = a1[1];
  if (v4)
  {
    v5 = a1 + 2;
    v6 = 1;
    do
    {
      ramrod_log_msg(" %s", v4);
      if (v6 > 8)
      {
        break;
      }

      ++v6;
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
  }

  ramrod_log_msg("\n");
  if (pipe(v44) == -1)
  {
    v13 = *a1;
    v14 = __error();
    v15 = strerror(*v14);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v13, v15);
    v16 = 0;
    v17 = -1;
    goto LABEL_46;
  }

  if (pipe(v43) == -1)
  {
    v18 = *a1;
    v19 = __error();
    v20 = strerror(*v19);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v18, v20);
    v11 = 0xFFFFFFFFLL;
    v12 = -1;
  }

  else
  {
    fcntl(v43[1], 73, 1);
    v39 = 0;
    posix_spawn_file_actions_init(&v39);
    posix_spawn_file_actions_adddup2(&v39, v43[0], 0);
    posix_spawn_file_actions_adddup2(&v39, v44[1], 1);
    posix_spawn_file_actions_adddup2(&v39, 2, 2);
    v38 = 0;
    posix_spawnattr_init(&v38);
    posix_spawnattr_setflags(&v38, 0x4000);
    if (dword_1C6A38 == 2 && sub_D5200(2, 16, 0, 0))
    {
      posix_spawnattr_set_crash_behavior_np();
    }

    posix_spawnattr_setjetsam();
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v39);
    }

    v8 = posix_spawn(&v37, *a1, &v39, &v38, a1, 0);
    if (v8)
    {
      v9 = *a1;
      v10 = strerror(v8);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v9, v10);
      close(v44[0]);
      close(v43[1]);
      v11 = 0xFFFFFFFFLL;
      v12 = -1;
    }

    else
    {
      v11 = v43[1];
      v12 = v44[0];
      v22 = v37;
      if (v37 != -1)
      {
        v23 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v23)
        {
          v24 = v23;
          bzero(v46, 0x400uLL);
          v25 = basename_r(v24, v46);
          if (v25 && ((v26 = v25, v42 = 256, byte_1C6A3C) || !sysctlbyname("kern.bootargs", &byte_1C6A3C, &v42, 0, 0)) && (bzero(__str, 0x400uLL), v40 = 0, v41 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v26), sub_25A70(&byte_1C6A3C, v42, __str, &v41, &v40)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v26, v40, v41);
            v27 = strtol(v41, 0, 0);
            free(v24);
            v28 = v27 & 0x1F;
            if ((v27 & 0x1F) != 0)
            {
              v29 = (v27 >> 8);
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v28, v22, v29);
              usleep(1000 * v29);
              if (kill(v22, v28) == -1)
              {
                v30 = __error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v28, v22, *v30);
              }
            }
          }

          else
          {
            free(v24);
          }
        }

        v36 = a2[3];
        if (v36)
        {
          (*(v36 + 16))(v36, v37);
        }
      }
    }

    posix_spawnattr_destroy(&v38);
    posix_spawn_file_actions_destroy(&v39);
    close(v43[0]);
  }

  close(v44[1]);
  v16 = 0;
  v17 = -1;
  if (v12 != -1 && v11 != -1)
  {
    bzero(v46, 0x400uLL);
    v21 = a2[1];
    if (v21)
    {
      v16 = (*(v21 + 16))(v21, v11) != 0;
    }

    else
    {
      v16 = 0;
    }

    close(v11);
    v31 = read(v12, v46, 0x3FFuLL);
    if (v31 >= 1)
    {
      for (i = v31; i > 0; i = read(v12, v46, 0x3FFuLL))
      {
        v46[i] = 0;
        v33 = a2[2];
        if (v33)
        {
          (*(v33 + 16))(v33, v46);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n");
    *__str = 0;
    if (waitpid(v37, __str, 0) == -1)
    {
      v34 = __error();
      strerror(*v34);
      ramrod_log_msg("waitpid failed for %s: %s\n");
    }

    else
    {
      ramrod_log_msg("child exited\n");
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n");
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", __str[1]);
          v17 = __str[1];
LABEL_45:
          close(v12);
          goto LABEL_46;
        }

        ramrod_log_msg("%s was terminated by signal %d\n");
      }
    }

    v17 = -1;
    goto LABEL_45;
  }

LABEL_46:
  if (v17 == 0 && v16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v17;
  }
}

uint64_t ramrod_execute_command_with_callback(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FBB4;
  v5[3] = &unk_1A9298;
  v5[4] = a2;
  v5[5] = a4;
  return sub_1FA58(a1, 0, 0, a3, v5);
}

uint64_t sub_1FA58(const char **a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_28164;
  aBlock[3] = &unk_1A9340;
  v18 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2819C;
  v16[3] = &unk_1A9360;
  v16[4] = a2;
  v16[5] = a3;
  v12 = _Block_copy(v16);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v14 = ramrod_execute_command_with_config(a1, v10);
  ramrod_execute_config_free(v10);
  return v14;
}

uint64_t ramrod_execute_command_with_input_data_callback(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FC3C;
  v7[3] = &unk_1A9298;
  v7[4] = a4;
  v7[5] = a6;
  return sub_1FA58(a1, a2, a3, a5, v7);
}

uint64_t ramrod_execute_command(const char **a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1FBB4;
  v2[3] = &unk_1A9298;
  v2[4] = sub_1FCD4;
  v2[5] = 0;
  return sub_1FA58(a1, 0, 0, 1, v2);
}

uint64_t ramrod_execute_command_with_input_data(const char **a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1FC3C;
  v4[3] = &unk_1A9298;
  v4[4] = sub_1FCD4;
  v4[5] = 0;
  return sub_1FA58(a1, a2, a3, 1, v4);
}

uint64_t sub_1FD94(const char **a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = a6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3254779904;
  v11[2] = sub_28224;
  v11[3] = &unk_1AD7E8;
  v11[4] = &v12;
  v11[5] = &v16;
  v8 = sub_1FA58(a1, a2, a3, a4, v11);
  if (a6)
  {
    v9 = v17[3];
    if (!v13[3])
    {
      v17[3] = --v9;
    }

    do
    {
      *v9 = 0;
      v9 = (v17[3] - 1);
      v17[3] = v9;
    }

    while (v9 >= a5 && *v9 == 10);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

void sub_1FEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

CFTypeRef copy_property_from_registry_defaults(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    IOObjectRelease(v3);
    return CFProperty;
  }

  else
  {
    ramrod_log_msg("unable to find /defaults node\n");
    return 0;
  }
}

id has_non_restore_bundle_overrides(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"BundleOverrides");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = a2;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [Value countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(Value);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 hasPrefix:@"Restore"] & 1) == 0 && (objc_msgSend(v9, "hasSuffix:", @"RamDisk") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iBSS") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iBEC") & 1) == 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [Value countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  result = [v4 count];
  if (result)
  {
    [v4 sortUsingSelector:"caseInsensitiveCompare:"];
    ramrod_log_msg_cf(@"BundleOverrides detected for %s: %@\n", v11, [v4 componentsJoinedByString:{@", "}]);
    return &dword_0 + 1;
  }

  return result;
}

uint64_t ramrod_wait_for_internal_media()
{
  iterator = 0;
  memset(name, 0, 128);
  memset(v12, 0, sizeof(v12));
  ramrod_log_msg("Searching for NAND service\n");
  if (IORegistryCreateIterator(kIOMasterPortDefault, "IOService", 1u, &iterator))
  {
    ramrod_log_msg("Failed to create registry iterator\n");
    v0 = 0;
    v1 = 0;
  }

  else
  {
    while (1)
    {
      IOIteratorReset(iterator);
      v2 = IOIteratorNext(iterator);
      if (v2)
      {
        break;
      }

LABEL_7:
      ramrod_log_msg("Waiting for NAND service to publish\n");
      sleep(3u);
    }

    v0 = v2;
    while (1)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v0, @"AppleNANDStatus", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        break;
      }

      IOObjectRelease(v0);
      v0 = IOIteratorNext(iterator);
      if (!v0)
      {
        goto LABEL_7;
      }
    }

    v1 = CFProperty;
    IORegistryEntryGetName(v0, name);
    ramrod_log_msg("Found NAND service: %s\n", name);
    while (CFStringCompare(v1, @"Ready", 0) && CFStringCompare(v1, @"Error", 0))
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0);
      ramrod_log_msg("NAND Status: %s. Waiting...\n", CStringPtr);
      sleep(3u);
      CFRelease(v1);
      v1 = IORegistryEntryCreateCFProperty(v0, @"AppleNANDStatus", kCFAllocatorDefault, 0);
      if (!v1)
      {
        ramrod_log_msg("NAND status property missing\n", v9);
        goto LABEL_20;
      }
    }

    if (CFStringCompare(v1, @"Error", 0))
    {
      ramrod_log_msg("NAND initialized. Waiting for devnode.\n");
      if (wait_for_device("EmbeddedDeviceTypeRoot", v12, 0x20uLL, 0))
      {
        v5 = 0;
        goto LABEL_21;
      }

      ramrod_log_msg("Unable to find storage device node for service named: %s");
    }

    else
    {
      memcpy(__dst, "No additional error message.", sizeof(__dst));
      v6 = IORegistryEntryCreateCFProperty(v0, @"AppleNANDFailureData", kCFAllocatorDefault, 0);
      if (v6)
      {
        v7 = v6;
        CFStringGetCString(v6, __dst, 1024, 0x8000100u);
        CFRelease(v7);
      }

      ramrod_log_msg("NAND failed to initialize: %s\n");
    }
  }

LABEL_20:
  v5 = 1;
LABEL_21:
  off_1C6788 = ramrod_probe_media;
  if (!sub_208DC(3, 0))
  {
    ramrod_log_msg("ramrod_probe_media failed!\n");
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v0)
  {
    IOObjectRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v5;
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s: '%s'\n", "wait_for_device", a1);
  if (!a1)
  {
    sub_D6614(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  if (!a2)
  {
    sub_D65CC(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    sub_D6590(a4, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v23 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v23)
  {
    sub_D6544(a4, a1, v24, v25, v26, v27, v28, v29);
    return 0;
  }

  v30 = v23;
  v68 = a4;
  IOObjectRetain(v23);
  v31 = v30;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v31, "IOService", &iterator))
    {
      ramrod_log_msg("Could not create child iterator\n");
LABEL_30:
      st_dev = v31;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v56, v57, v58, "wait_for_device");
      v59 = 0;
      goto LABEL_36;
    }

    v32 = IOIteratorNext(iterator.st_dev);
    v33 = 0;
    if (!v32)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      ramrod_log_msg("Found %d child nodes (expected 1)\n");
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v32);
      }

      else
      {
        st_dev = v32;
      }

      v32 = IOIteratorNext(iterator.st_dev);
      ++v33;
    }

    while (v32);
    IOObjectRelease(iterator.st_dev);
    if (v33 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v31);
    v31 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v36 = CFProperty;
  if (!CFProperty)
  {
    ramrod_log_msg("Did not find Whole property on IOMedia class\n");
LABEL_34:
    CFRelease(v36);
    goto LABEL_35;
  }

  v37 = CFGetTypeID(CFProperty);
  if (v37 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("Expected Whole to be BOOLean\n");
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v36))
  {
    ramrod_log_msg("Expected Whole=true\n");
    goto LABEL_34;
  }

  CFRelease(v36);
  v38 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v38)
  {
    v42 = v38;
    v43 = CFGetTypeID(v38);
    if (v43 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v47 = strlen(a2);
      if (CFStringGetCString(v42, &a2[v47], a3 - v47, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", a2, a1);
        v51 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v59 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v51++, 1))
          {
            goto LABEL_43;
          }
        }

        v61 = __error();
        v62 = strerror(*v61);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", a2, v62);
        v63 = *__error();
        v64 = __error();
        strerror(*v64);
        ramrod_create_error_cf(v68, kCFErrorDomainPOSIX, v63, 0, @"%s: stat error while waiting for device '%s': %s", v65, v66, v67, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v52, v53, v54, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v48, v49, v50, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v44, v45, v46, "wait_for_device");
    }

    v59 = 0;
LABEL_45:
    CFRelease(v42);
  }

  else
  {
    ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v39, v40, v41, "wait_for_device");
    v59 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v30);
  return v59;
}

uint64_t sub_208DC(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", "ramrod_probe_media_internal");
  byte_1C6790 = 0;
  byte_1C67B0 = 0;
  byte_1C6910 = 0;
  byte_1C67D0 = 0;
  byte_1C67F0 = 0;
  byte_1C6810 = 0;
  byte_1C6830 = 0;
  byte_1C6850 = 0;
  byte_1C6870 = 0;
  byte_1C6890 = 0;
  byte_1C68B0 = 0;
  byte_1C68D0 = 0;
  byte_1C68F0 = 0;
  byte_1C6930 = 0;
  byte_1C6970 = 0;
  byte_1C6950 = 0;
  byte_1C6990 = 0;
  byte_1C69B0 = 0;
  byte_1C69D0 = 0;
  if (qword_1C69F8)
  {
    CFRelease(qword_1C69F8);
    qword_1C69F8 = 0;
  }

  if (qword_1C69F0)
  {
    CFRelease(qword_1C69F0);
    qword_1C69F0 = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_D6698(&cf, v4, v5, v6, v7, v8, v9, v10);
    v19 = 0;
    goto LABEL_12;
  }

  v19 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v19)
  {
    sub_D665C(&cf, v12, v13, v14, v15, v16, v17, v18);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &byte_1C6790, 0x20uLL, &cf))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", "EmbeddedDeviceTypeRoot");
LABEL_12:
    v27 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_1C6795);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
  v22 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", byte_1C6795);
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v23 = IORegistryEntryCreateIterator(v22, "IOService", 1u, &iterator);
  if (v23)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v23, 0, @"%s: unable to create child iterator", v24, v25, v26, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v95 = a1;
  v31 = IOIteratorNext(iterator);
  if (v31)
  {
    v27 = v31;
    LOBYTE(v32) = 0;
    v96 = 0;
    v33 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v27, "IOMedia"))
      {
        if (IOObjectConformsTo(v27, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v27, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v86 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v27, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v61, v62, v63, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v85 = "Preboot";
            v86 = "Scratch";
            v83 = "Recovery";
            v84 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v34 = IORegistryEntryGetName(v27, name);
      if (v34)
      {
        v75 = kCFErrorDomainMach;
        v76 = v34;
        v77 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v75, v76, 0, v77, v35, v36, v37, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v38 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
      if (v38)
      {
        v75 = kCFErrorDomainMach;
        v76 = v38;
        v77 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v32)
      {
        v32 = 1;
      }

      else
      {
        *buffer = 0u;
        v101 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v32 = Value && (v40 = Value, v41 = CFGetTypeID(Value), v41 == CFStringGetTypeID()) && CFStringGetCString(v40, buffer, 32, 0x600u) && (v42 = strlen(byte_1C6795), !strncmp(buffer, byte_1C6795, v42)) && strcmp("s1s1", &buffer[v42]) == 0;
      }

      v43 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v43 || (v44 = v43, !CFEqual(v43, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v44, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v32)
          {
            ramrod_log_msg("found system volume not at %ss1s1: %s\n");
          }

          goto LABEL_84;
        }

        if (v93 && !strcmp(name, v93))
        {
          v50 = &byte_1C67F0;
          goto LABEL_85;
        }

        if (v92 && !strcmp(name, v92))
        {
          v50 = &byte_1C6810;
          goto LABEL_85;
        }

        if (v91 && !strcmp(name, v91))
        {
          v50 = &byte_1C6830;
          goto LABEL_85;
        }

        if (v90 && !strcmp(name, v90))
        {
          v50 = &byte_1C6850;
          goto LABEL_85;
        }

        if (v89 && !strcmp(name, v89))
        {
          v50 = &byte_1C6870;
          goto LABEL_85;
        }

        if (v88 && !strcmp(name, v88))
        {
          if (!byte_1C6890 || !ramrod_should_have_xart_partition())
          {
            v51 = 0;
            theArray = &byte_1C6890;
            goto LABEL_87;
          }

          v79 = kCFErrorDomainMach;
LABEL_178:
          v80 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v79, -536870911, 0, v80, v47, v48, v49, "ramrod_probe_media_internal");
LABEL_173:
          v78 = 0;
LABEL_174:
          v28 = 0;
          if (v95 >= 1 && v78)
          {
            sleep(1u);
            v28 = sub_208DC(v95 - 1, 0);
          }

LABEL_14:
          v29 = cf;
          if (a2 && !v28 && cf)
          {
            v28 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v87 && !strcmp(name, v87))
        {
          v50 = &byte_1C68B0;
          goto LABEL_85;
        }

        if (v86 && !strcmp(name, v86))
        {
          v50 = &byte_1C68D0;
          goto LABEL_85;
        }

        if (v85 && !strcmp(name, v85))
        {
          if (v96 != 1)
          {
            if (v96 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", 2);
              v50 = &byte_1C68F0;
            }

            else
            {
              if (v96 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", 3);
              v50 = &byte_1C6950;
            }

            goto LABEL_85;
          }

          v71 = 1;
        }

        else
        {
          if (!v84 || strcmp(name, v84))
          {
            if (v83 && !strcmp(name, v83))
            {
              v50 = &byte_1C6930;
            }

            else
            {
              if (!v32 || byte_1C67D0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", name);
LABEL_155:
                theArray = 0;
                v51 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n");
LABEL_84:
              LOBYTE(v32) = 1;
              v50 = &byte_1C67D0;
            }

LABEL_85:
            if (*v50)
            {
              v79 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v50;
            v51 = 0;
LABEL_87:
            while (1)
            {
              v52 = CFDictionaryGetValue(properties, @"Leaf");
              if (v52)
              {
                if (CFBooleanGetValue(v52) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v27);
              CFRelease(properties);
              v53 = IOIteratorNext(iterator);
              if (!v53)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v54, v55, v56, "ramrod_probe_media_internal");
                v27 = 0;
                goto LABEL_173;
              }

              v27 = v53;
              while (!IOObjectConformsTo(v27, "IOMedia"))
              {
                IOObjectRelease(v27);
                v27 = IOIteratorNext(iterator);
                if (!v27)
                {
                  goto LABEL_172;
                }
              }

              v57 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
              if (v57)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v57, 0, @"%s: unable to get properties for media registry entry", v58, v59, v60, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v51)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v64 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v64)
                {
                  v65 = v64;
                  *buffer = 0;
                  v66 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v66)
                  {
                    CFNumberGetValue(v66, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v67 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v67 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v68 = Mutable;
                  }

                  else
                  {
                    v68 = v19;
                  }

                  theArraya = v68;
                  ramrod_log_msg_cf(v67, v65);
                  v69 = CFStringCreateWithFormat(0, 0, @"%s%@", "/dev/", v65);
                  CFArrayAppendValue(theArraya, v69);
                  CFRelease(v69);
                }
              }
            }

            else
            {
              v70 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v70)
              {
                v79 = kCFErrorDomainMach;
                v80 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v101 = 0u;
              CFStringGetCString(v70, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v27);
            goto LABEL_73;
          }

          v71 = v96;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v71);
        v50 = &byte_1C6990;
        goto LABEL_85;
      }

      v45 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v45)
      {
        ramrod_log_msg("APFS Container object with no bsd name");
        goto LABEL_173;
      }

      *buffer = 0u;
      v101 = 0u;
      CFStringGetCString(v45, buffer, 32, 0x8000100u);
      if (CFEqual(v44, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v96 = 3;
          v33 = &byte_1C6910;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v33 = &byte_1C67B0;
          }

          else
          {
            v33 = &byte_1C6970;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v46 = 2;
          }

          else
          {
            v46 = 1;
          }

          v96 = v46;
        }

        snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
        ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
LABEL_70:
        if (!*v33)
        {
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
        }

        goto LABEL_72;
      }

      if (CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v33 && *v33)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", buffer, v33);
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          v33 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n");
      }

      if (v33)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v27);
      CFRelease(properties);
LABEL_73:
      v27 = IOIteratorNext(iterator);
    }

    while (v27);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v72, v73, v74, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_170:
    v78 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v19) >= 1)
  {
    qword_1C69F8 = CFRetain(v19);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v27 = 0;
  qword_1C69F0 = CFRetain(Mutable);
LABEL_20:
  v28 = 1;
LABEL_21:
  v29 = cf;
LABEL_22:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v27)
  {
    IOObjectRelease(v27);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v22)
  {
    IOObjectRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v28;
}