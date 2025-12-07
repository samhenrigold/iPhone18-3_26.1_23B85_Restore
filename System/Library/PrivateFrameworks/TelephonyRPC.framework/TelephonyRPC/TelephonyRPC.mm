uint64_t NanoPhoneVoicemailMetaReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v56 & 0x7F) << v5;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v56) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v56 & 0x7F) << v13;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_91:
            v51 = 32;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_91;
      case 3u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 136) |= 2u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v56 & 0x7F) << v23;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v25;
        }

LABEL_87:
        v51 = 16;
        goto LABEL_96;
      case 4u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 136) |= 4u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v56 & 0x7F) << v31;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_95;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v33;
        }

LABEL_95:
        v51 = 24;
LABEL_96:
        *(a1 + v51) = v19;
        goto LABEL_108;
      case 5u:
        *(a1 + 136) |= 1u;
        v56 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v56;
        goto LABEL_108;
      case 6u:
        v20 = PBReaderReadString();
        v21 = 104;
        goto LABEL_83;
      case 7u:
        v20 = PBReaderReadString();
        v21 = 48;
        goto LABEL_83;
      case 8u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 136) |= 8u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v56 & 0x7F) << v37;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_100:
        v52 = 72;
        goto LABEL_105;
      case 9u:
        v20 = PBReaderReadString();
        v21 = 64;
        goto LABEL_83;
      case 0xAu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 136) |= 0x10u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v56 & 0x7F) << v44;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v46;
        }

LABEL_104:
        v52 = 76;
LABEL_105:
        *(a1 + v52) = v43;
        goto LABEL_108;
      case 0xBu:
        v22 = objc_alloc_init(NanoPhoneVoicemailBody);
        objc_storeStrong((a1 + 120), v22);
        v56 = 0;
        v57 = 0;
        if (PBReaderPlaceMark() && NanoPhoneVoicemailBodyReadFrom(v22, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_110;
      case 0xCu:
        v22 = objc_alloc_init(NanoPhoneVoicemailTranscript);
        objc_storeStrong((a1 + 128), v22);
        v56 = 0;
        v57 = 0;
        if (PBReaderPlaceMark() && NanoPhoneVoicemailTranscriptReadFrom(v22, a2))
        {
LABEL_72:
          PBReaderRecallMark();

LABEL_108:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_110:

        return 0;
      case 0xDu:
        v20 = PBReaderReadString();
        v21 = 96;
        goto LABEL_83;
      case 0xEu:
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_83;
      case 0xFu:
        v20 = PBReaderReadString();
        v21 = 88;
        goto LABEL_83;
      case 0x10u:
        v20 = PBReaderReadString();
        v21 = 56;
        goto LABEL_83;
      case 0x11u:
        v20 = PBReaderReadString();
        v21 = 40;
        goto LABEL_83;
      case 0x12u:
        v20 = PBReaderReadString();
        v21 = 112;
LABEL_83:
        v50 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_108;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_108;
    }
  }
}

id CTSUServerQueue(uint64_t a1)
{
  if (CTSUServerQueue_onceToken != -1)
  {
    CTSUServerQueue_cold_1();
  }

  v2 = CTSUServerQueue_sCTServerQueue;

  return v2;
}

void __CTSUServerQueue_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_create("com.apple.bridge.nanophone.ctserverqueue", 0);
  v1 = CTSUServerQueue_sCTServerQueue;
  CTSUServerQueue_sCTServerQueue = v0;

  if (!CTSUServerQueue_sCTServerQueue)
  {
    v3 = nph_general_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "dispatch_queue_t CTSUServerQueue(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerQueue", &v4, 0xCu);
    }
  }
}

uint64_t CTSUServerConnectionRef(uint64_t a1, uint64_t a2)
{
  if (CTSUServerConnectionRef_onceToken != -1)
  {
    CTSUServerConnectionRef_cold_1();
  }

  return CTSUServerConnectionRef_sCTServerConnectionRef;
}

void __CTSUServerConnectionRef_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _CTServerConnectionAddIdentifierException();
  v1 = CTSUServerQueue(v0);
  CTSUServerConnectionRef_sCTServerConnectionRef = _CTServerConnectionCreateOnTargetQueue();

  if (!CTSUServerConnectionRef_sCTServerConnectionRef)
  {
    v3 = nph_general_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerConnectionRef", &v4, 0xCu);
    }
  }
}

void __CTSUServerConnectionRef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke_2";
    v8 = 2112;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s notification:%@ info:%@", &v6, 0x20u);
  }
}

uint64_t NPHDeviceOSIsInternalInstall(uint64_t a1, uint64_t a2)
{
  if (NPHDeviceOSIsInternalInstall_onceToken != -1)
  {
    NPHDeviceOSIsInternalInstall_cold_1();
  }

  return __NPHInternalOS;
}

uint64_t __NPHDeviceOSIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  __NPHInternalOS = result;
  return result;
}

uint64_t NPHDeviceHasBaseband(uint64_t a1, uint64_t a2)
{
  if (NPHDeviceHasBaseband_onceToken != -1)
  {
    NPHDeviceHasBaseband_cold_1();
  }

  return NPHDeviceHasBaseband_isCellularDevice;
}

uint64_t __NPHDeviceHasBaseband_block_invoke()
{
  result = MGGetBoolAnswer();
  NPHDeviceHasBaseband_isCellularDevice = result;
  return result;
}

uint64_t NPHIsCerberusEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"cerberusEnabled"];

  return v1;
}

uint64_t NPHIsWalkaboutEnabled(uint64_t a1, uint64_t a2)
{
  if (NPHIsWalkaboutEnabled_onceToken != -1)
  {
    NPHIsWalkaboutEnabled_cold_1();
  }

  return __NPHWalkaboutEnabled;
}

uint64_t __NPHIsWalkaboutEnabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v0)
  {
    v2 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        if (NPHDeviceOSIsInternalInstall_onceToken != -1)
        {
          NPHDeviceOSIsInternalInstall_cold_1();
        }

        __NPHWalkaboutEnabled = __NPHInternalOS;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

id NPHWiFiStringKey(void *a1)
{
  v1 = a1;
  if (MGGetBoolAnswer())
  {
    v2 = @"_WLAN";
  }

  else
  {
    v2 = @"_WIFI";
  }

  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

uint64_t NPHDeriveProgramName(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  programName = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return MEMORY[0x2821F96F8]();
}

void NPHSetTmpDirPrefix()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  v2 = _set_user_dir_suffix();

  if ((v2 & 1) == 0)
  {
    v4 = nph_general_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      NPHSetTmpDirPrefix_cold_1(v4);
    }
  }
}

id NPHSharedUtilitiesAppendBuildVersion(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = @"unknown";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.", v1, v5];

  return v6;
}

__CFString *NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x1A && ((0x3EFFFFFu >> a1) & 1) != 0)
  {
    v2 = off_279D960D0[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unhadled TUCallDisconnectedReason in %s", "NSString *NSStringFromTUCallDisconnectedReason(TUCallDisconnectedReason)"];
  }

  return v2;
}

double mach_time_elapsed_to_seconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

void nph_ensure_on_main_queue(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

id ListOfVoicemailsToSyncWithManager(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [a1 allVoicemail];
  if (v1)
  {
    v2 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          memset(&v14, 0, sizeof(v14));
          v10 = [v9 dataPath];
          v11 = lstat([v10 fileSystemRepresentation], &v14);

          if (!v11)
          {
            st_size = v14.st_size;
            if (MaxVoicemailTotalBytes_onceToken != -1)
            {
              ListOfVoicemailsToSyncWithManager_cold_1();
            }

            if (st_size + v6 > MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes)
            {
              goto LABEL_14;
            }

            v6 += v14.st_size;
          }

          [v2 addObject:v9];
          ++v8;
        }

        while (v5 != v8);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

LABEL_14:
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MaxVoicemailCount(uint64_t a1, uint64_t a2)
{
  if (MaxVoicemailCount_onceToken != -1)
  {
    MaxVoicemailCount_cold_1();
  }

  return MaxVoicemailCount_sMaxVoicemailCount;
}

void __MaxVoicemailCount_block_invoke()
{
  MaxVoicemailCount_sMaxVoicemailCount = 20;
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"SYNC_MAX_VOICEMAIL_COUNT"];

  v1 = v2;
  if (v2)
  {
    MaxVoicemailCount_sMaxVoicemailCount = [v2 integerValue];
    v1 = v2;
  }
}

void __MaxVoicemailTotalBytes_block_invoke()
{
  MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes = 5000000;
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"SYNC_MAX_VOICEMAIL_TOTAL_SIZE"];

  v1 = v2;
  if (v2)
  {
    MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes = [v2 integerValue];
    v1 = v2;
  }
}

uint64_t NanoPhoneVoicemailBodyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __deviceUnlockedSinceBoot_block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = dispatch_semaphore_create(0);
  v1 = deviceUnlockedSinceBoot_semaphore;
  deviceUnlockedSinceBoot_semaphore = v0;

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __deviceUnlockedSinceBoot_block_invoke_2;
  handler[3] = &unk_279D96260;
  handler[4] = &v10;
  v3 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v13, v2, handler);

  if (v3)
  {
    v5 = nph_general_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __deviceUnlockedSinceBoot_block_invoke_cold_1(v5);
    }

    dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
  }

  else
  {
    v6 = MKBGetDeviceLockState();
    if (v6 == 3 || (v6 = MKBDeviceUnlockedSinceBoot(), v6 == 1))
    {
      v7 = nph_general_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
        _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_INFO, "%s: already first unlocked", buf, 0xCu);
      }

      dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
      notify_cancel(*(v11 + 6));
    }

    else
    {
      v8 = nph_general_log(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
        _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s: waiting for first unlock", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v10, 8);
}

void sub_26D2750D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __deviceUnlockedSinceBoot_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke_2";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_INFO, "%s: first unlocked", &v5, 0xCu);
  }

  dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
  return notify_cancel(*(*(*(a1 + 32) + 8) + 24));
}

os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_general_log(uint64_t a1)
{
  if (nph_general_log_onceToken != -1)
  {
    nph_general_log_cold_1();
  }

  v2 = nph_general_log_logger;

  return v2;
}

uint64_t __nph_general_log_block_invoke()
{
  nph_general_log_logger = os_log_create("com.apple.NanoPhone", "general");

  return MEMORY[0x2821F96F8]();
}

id nph_sos_general_log(uint64_t a1)
{
  if (nph_sos_general_log_onceToken != -1)
  {
    nph_sos_general_log_cold_1();
  }

  v2 = nph_sos_general_log_logger;

  return v2;
}

uint64_t __nph_sos_general_log_block_invoke()
{
  nph_sos_general_log_logger = os_log_create("com.apple.NanoPhone", "sos_general");

  return MEMORY[0x2821F96F8]();
}

id nph_sos_newton_log(uint64_t a1)
{
  if (nph_sos_newton_log_onceToken != -1)
  {
    nph_sos_newton_log_cold_1();
  }

  v2 = nph_sos_newton_log_logger;

  return v2;
}

uint64_t __nph_sos_newton_log_block_invoke()
{
  nph_sos_newton_log_logger = os_log_create("com.apple.NanoPhone", "sos_newton");

  return MEMORY[0x2821F96F8]();
}

uint64_t NanoPhoneVoicemailTranscriptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_26D2760F4()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F6DE0);
  v1 = __swift_project_value_buffer(v0, qword_2804F6DE0);
  if (qword_2804F6E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2804F7990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26D2761CC@<X0>(void *a1@<X8>)
{
  result = [*v1 identifier];
  *a1 = result;
  return result;
}

void sub_26D276200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - v3;
  v45 = sub_26D2870A8();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D2870E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v13 = sub_26D276948();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v10, v7);
  [v12 setVoicemailNumber_];
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v17 = sub_26D276C50();
  v16(v10, v7);
  [v12 setIdentifier_];
  [v12 setRemoteUID_];
  sub_26D287168();
  sub_26D2870B8();
  v16(v10, v7);
  v18 = sub_26D2873F8();

  [v12 setConversationIDString_];

  sub_26D2871B8();
  sub_26D2870B8();
  v16(v10, v7);
  v19 = sub_26D2873F8();

  [v12 setCallUUIDString_];

  sub_26D287198();
  if (v20)
  {
    v21 = sub_26D2873F8();
  }

  else
  {
    v21 = 0;
  }

  v22 = v46;
  [v12 setSimID_];

  sub_26D287148();
  sub_26D287098();
  v24 = v23;
  (*(v4 + 8))(v6, v45);
  [v12 setDate_];
  sub_26D287188();
  v25 = sub_26D2873F8();

  [v12 setSender_];

  sub_26D287188();
  v26 = sub_26D2873F8();

  [v12 setCallbackNumber_];

  sub_26D2871E8();
  if (v27)
  {
    v28 = sub_26D2873F8();
  }

  else
  {
    v28 = 0;
  }

  [v12 setReceiverDestinationID_];

  sub_26D2871C8();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v29 <= -2147483650.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v29 >= 2147483650.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v12 setDuration_];
  sub_26D27E55C(v22);
  v30 = sub_26D287048();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v22, 1, v30) == 1)
  {
    sub_26D27CBA8(v22, &qword_2804F6EA8, &qword_26D28AF70);
    v32 = 0;
  }

  else
  {
    sub_26D287018();
    (*(v31 + 8))(v22, v30);
    v32 = sub_26D2873F8();
  }

  [v12 setDataPath_];

  sub_26D2871D8();
  v33 = sub_26D2873F8();

  [v12 setProviderID_];

  [v12 setFlags_];
  v34 = [objc_allocWithZone(NanoPhoneVoicemailBody) init];
  [v12 setVoicemailBody_];

  v35 = [v12 voicemailBody];
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = v35;
  v37 = [v12 voicemailNumber];

  [v36 setVoicemailNumber_];
  sub_26D27E788();
  if (!v38)
  {
LABEL_19:

    return;
  }

  v39 = [objc_allocWithZone(NanoPhoneVoicemailTranscript) init];
  [v12 setVoicemailTranscript_];

  v40 = [v12 voicemailTranscript];
  if (!v40)
  {
    goto LABEL_25;
  }

  v41 = v40;
  [v40 setVoicemailNumber_];

  v42 = [v12 voicemailTranscript];
  if (v42)
  {
    v43 = v42;
    v44 = sub_26D2873F8();

    [v43 setTranscriptionString_];

    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_26D276948()
{
  v0 = sub_26D2870D8();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v39 = HIBYTE(v0);
  v40 = v2 >> 8;
  v41 = v2 >> 16;
  v42 = v2 >> 24;
  v43 = HIDWORD(v2);
  v44 = v2 >> 40;
  v45 = HIWORD(v2);
  v46 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D28AD70;
  *(v10 + 32) = v1;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v7;
  *(v10 + 37) = v8;
  *(v10 + 38) = v9;
  *(v10 + 39) = v39;
  v11 = sub_26D27B938(v10);
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D28AD70;
  *(v14 + 32) = v3;
  *(v14 + 33) = v40;
  *(v14 + 34) = v41;
  *(v14 + 35) = v42;
  *(v14 + 36) = v43;
  *(v14 + 37) = v44;
  *(v14 + 38) = v45;
  *(v14 + 39) = v46;
  v15 = sub_26D27B938(v14);
  v17 = v16;

  v18 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    v19 = v11;
    if (!v18)
    {
      goto LABEL_14;
    }

    if (v11 > v11 >> 32)
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = sub_26D286F68();
    if (!v20)
    {
LABEL_36:
      sub_26D286F78();
      __break(1u);
      goto LABEL_37;
    }

    v21 = v20;
    v22 = sub_26D286F88();
    if (__OFSUB__(v11, v22))
    {
      goto LABEL_30;
    }

    v23 = (v11 - v22 + v21);
    sub_26D286F78();
    if (v23)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v18 == 2)
  {
    v24 = *(v11 + 16);
    v25 = sub_26D286F68();
    if (!v25)
    {
LABEL_32:
      sub_26D286F78();
      goto LABEL_33;
    }

    v26 = v25;
    v27 = sub_26D286F88();
    if (!__OFSUB__(v24, v27))
    {
      v23 = (v24 - v27 + v26);
      sub_26D286F78();
      if (!v23)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_12:
      v19 = *v23;
      goto LABEL_14;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = 0;
LABEL_14:
  v28 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v28)
  {
    goto LABEL_25;
  }

  if (v15 > v15 >> 32)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = sub_26D286F68();
  if (v29)
  {
    v30 = v29;
    v31 = sub_26D286F88();
    if (__OFSUB__(v15, v31))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v32 = v15 - v31 + v30;
    sub_26D286F78();
    if (v32)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_21:
    if (v28 == 2)
    {
      v33 = *(v15 + 16);
      v34 = sub_26D286F68();
      if (!v34)
      {
LABEL_34:
        sub_26D286F78();
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v35 = v34;
      v36 = sub_26D286F88();
      if (!__OFSUB__(v33, v36))
      {
        v37 = v33 - v36 + v35;
        sub_26D286F78();
        if (v37)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      goto LABEL_29;
    }

LABEL_25:
    sub_26D27C7D8(v15, v17);
    sub_26D27C7D8(v11, v13);
    return v19;
  }

LABEL_37:
  result = sub_26D286F78();
  __break(1u);
  return result;
}

uint64_t sub_26D276C50()
{
  v0 = sub_26D2870D8();
  v1 = v0;
  v2 = v0 >> 8;
  v3 = v0 >> 16;
  v4 = v0 >> 24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D28AD70;
  *(v5 + 32) = v1;
  *(v5 + 33) = v2;
  *(v5 + 34) = v3;
  *(v5 + 35) = v4;
  *(v5 + 36) = 0;
  v6 = sub_26D27B938(v5);
  v8 = v7;

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
LABEL_8:
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v15 = *(v6 + 16);
    v16 = sub_26D286F68();
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v16;
    v18 = sub_26D286F88();
    if (!__OFSUB__(v15, v18))
    {
      v14 = (v15 - v18 + v17);
      sub_26D286F78();
      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = v6;
  if (!v9)
  {
LABEL_14:
    sub_26D27C7D8(v6, v8);
    return v10;
  }

  if (v6 > v6 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = sub_26D286F68();
  if (v11)
  {
    v12 = v11;
    v13 = sub_26D286F88();
    if (__OFSUB__(v6, v13))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_26D286F78();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v14 = (v6 - v13 + v12);
    sub_26D286F78();
    if (v14)
    {
LABEL_12:
      v10 = *v14;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_26D286F78();
  __break(1u);
  return result;
}

uint64_t sub_26D276DB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = (&v73 - v5);
  v6 = sub_26D286FC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D287048();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  v79 = v19;
  MEMORY[0x28223BE20](v16);
  v21 = &v73 - v20;
  v82 = objc_opt_self();
  v22 = [v82 defaultManager];
  v23 = [v22 temporaryDirectory];

  sub_26D287008();
  v88 = [v1 voicemailNumber];
  v88 = sub_26D287718();
  v89 = v24;
  v25 = *(v7 + 104);
  v74 = *MEMORY[0x277CC91D8];
  v75 = v7 + 104;
  v73 = v25;
  v25(v9);
  sub_26D27C8B8();
  sub_26D287038();
  v26 = *(v7 + 8);
  v76 = v9;
  v77 = v6;
  v26(v9, v6);
  v27 = v87;

  v28 = v86;
  v29 = *(v86 + 8);
  v80 = v15;
  v29(v15, v27);
  sub_26D286FF8();
  v30 = v18;
  v29(v18, v27);
  v31 = [v1 voicemailBody];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 voicemailRecording];
    if (v33)
    {
      v85 = v29;
      v34 = v27;
      v35 = v33;
      v36 = sub_26D287078();
      v38 = v37;

      sub_26D287088();
      sub_26D27C7D8(v36, v38);

      v27 = v34;
LABEL_10:
      v29 = v85;
      goto LABEL_11;
    }
  }

  v39 = [v1 dataPath];
  if (!v39)
  {
LABEL_11:
    v47 = sub_26D287018();
    v48 = v21;
    v41 = v47;
    v29(v48, v27);
    return v41;
  }

  v85 = v29;
  v81 = v21;
  v40 = v39;
  v41 = sub_26D287428();

  sub_26D287478();
  v42 = sub_26D2874C8();

  if ((v42 & 1) == 0)
  {
    v43 = [v82 defaultManager];
    v44 = v81;
    sub_26D287018();
    v45 = sub_26D2873F8();

    v46 = [v43 fileExistsAtPath_];

    if ((v46 & 1) == 0)
    {
      v50 = v28;
      (*(v28 + 56))(v78, 1, 1, v27);
      v73(v76, v74, v77);
      v51 = v83;
      sub_26D287028();
      v78 = dispatch_semaphore_create(0);
      v52 = swift_allocObject();
      v53 = v27;
      v77 = v52;
      *(v52 + 16) = 0;
      v82 = (v52 + 16);
      v54 = v84;
      sub_26D287558();
      v55 = sub_26D287578();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      v56 = *(v50 + 16);
      v57 = v30;
      v56(v30, v51, v53);
      v58 = v80;
      v56(v80, v44, v53);
      v59 = *(v50 + 80);
      v60 = (v59 + 32) & ~v59;
      v61 = (v79 + v59 + v60) & ~v59;
      v62 = (v79 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v64 = *(v50 + 32);
      v65 = v63 + v60;
      v66 = v57;
      v67 = v77;
      v68 = v87;
      v64(v65, v66, v87);
      v64(v63 + v61, v58, v68);
      *(v63 + v62) = v67;
      v69 = v78;
      *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;

      v70 = v69;
      v71 = v84;
      sub_26D279724(0, 0, v84, &unk_26D28AF90, v63);

      sub_26D27CBA8(v71, &qword_2804F6E68, &qword_26D28AEE8);
      sub_26D287608();

      v29 = v85;
      v85(v83, v68);
      v72 = v82;
      swift_beginAccess();
      if (*v72)
      {
        v29(v81, v68);

        return 0;
      }

      v27 = v68;
      v21 = v81;
      goto LABEL_11;
    }

    v21 = v44;
    goto LABEL_10;
  }

  v85(v81, v27);
  return v41;
}

uint64_t sub_26D277778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_26D287048();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D27783C, 0, 0);
}

uint64_t sub_26D27783C()
{
  sub_26D277ED0(*(v0 + 40), *(v0 + 88));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_26D277AF8;
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);

  return sub_26D2787A8(v2, v3, 0, 0);
}

uint64_t sub_26D277AF8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26D277C90;
  }

  else
  {
    v2 = sub_26D277C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26D277C0C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_26D287618();

  v1 = v0[1];

  return v1();
}

uint64_t sub_26D277C90()
{
  v16 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6DE0);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_26D285EE0(0x5061746144726D61, 0xED00002928687461, &v15);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: conversion error: %@", v6, 0x16u);
    sub_26D27CBA8(v7, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6B92B0](v8, -1, -1);
    MEMORY[0x26D6B92B0](v6, -1, -1);
  }

  v11 = v0[7];
  swift_beginAccess();
  v12 = *(v11 + 16);
  *(v11 + 16) = v1;

  sub_26D287618();

  v13 = v0[1];

  return v13();
}

id sub_26D277ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v90[2] = *MEMORY[0x277D85DE8];
  v3 = sub_26D286FC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26D287048();
  v89 = *(v86 - 8);
  v7 = MEMORY[0x28223BE20](v86);
  v83 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v82 = v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v79 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v79 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = [v19 temporaryDirectory];

  sub_26D287008();
  v88 = a1;
  v90[0] = sub_26D286FD8();
  v90[1] = v21;
  (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);
  sub_26D27C8B8();
  sub_26D287038();
  (*(v4 + 8))(v6, v3);
  v22 = v86;

  v23 = (v89 + 8);
  v24 = v15;
  v25 = v17;
  v26 = v18;
  v27 = &__block_descriptor_32_e41_v24__0____CFString__8____CFDictionary__16l;
  v87 = *(v89 + 8);
  v87(v24, v22);
  v28 = [v26 defaultManager];
  sub_26D287018();
  v29 = sub_26D2873F8();

  LODWORD(v19) = [v28 fileExistsAtPath_];

  if (!v19)
  {
    goto LABEL_10;
  }

  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v30 = sub_26D287338();
  v31 = __swift_project_value_buffer(v30, qword_2804F6DE0);
  v32 = v84;
  v79[0] = *(v89 + 16);
  v79[1] = v89 + 16;
  (v79[0])(v84, v25, v22);
  v80 = v31;
  v33 = sub_26D287318();
  v34 = sub_26D2875B8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v81 = v25;
    v36 = v35;
    v37 = v23;
    v38 = v22;
    v39 = swift_slowAlloc();
    v90[0] = v39;
    *v36 = 136315138;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v40 = sub_26D287718();
    v41 = v32;
    v43 = v42;
    v87(v41, v38);
    v44 = sub_26D285EE0(v40, v43, v90);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_26D269000, v33, v34, "A file already exists at outputURL %s! Checking if it's equal", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v45 = v39;
    v22 = v38;
    v23 = v37;
    v27 = &__block_descriptor_32_e41_v24__0____CFString__8____CFDictionary__16l;
    MEMORY[0x26D6B92B0](v45, -1, -1);
    v46 = v36;
    v25 = v81;
    MEMORY[0x26D6B92B0](v46, -1, -1);
  }

  else
  {

    v87(v32, v22);
  }

  v47 = [v26 v27[148]];
  sub_26D287018();
  v48 = v26;
  v49 = sub_26D2873F8();

  sub_26D287018();
  v50 = sub_26D2873F8();

  v51 = [v47 contentsEqualAtPath:v49 andPath:v50];

  v26 = v48;
  if (v51)
  {
    v84 = v23;
    v52 = v82;
    v53 = v79[0];
    (v79[0])(v82, v88, v22);
    v54 = v83;
    v53(v83, v25, v22);
    v55 = sub_26D287318();
    v56 = sub_26D2875B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v25;
      v88 = v58;
      v90[0] = v58;
      *v57 = 136315394;
      sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      LODWORD(v80) = v56;
      v59 = sub_26D287718();
      v60 = v22;
      v62 = v61;
      v63 = v87;
      v87(v52, v60);
      v64 = sub_26D285EE0(v59, v62, v90);
      v22 = v60;

      *(v57 + 4) = v64;
      *(v57 + 12) = 2080;
      v65 = v83;
      v66 = sub_26D287718();
      v68 = v67;
      v63(v65, v22);
      v69 = sub_26D285EE0(v66, v68, v90);

      *(v57 + 14) = v69;
      _os_log_impl(&dword_26D269000, v55, v80, "%s and %s have the same contents!", v57, 0x16u);
      v70 = v88;
      swift_arrayDestroy();
      v25 = v81;
      MEMORY[0x26D6B92B0](v70, -1, -1);
      MEMORY[0x26D6B92B0](v57, -1, -1);
    }

    else
    {

      v78 = v87;
      v87(v54, v22);
      v78(v52, v22);
    }

    return (*(v89 + 32))(v85, v25, v22);
  }

  else
  {
LABEL_10:
    v71 = [v26 v27[148]];
    v72 = sub_26D286FE8();
    v73 = sub_26D286FE8();
    v90[0] = 0;
    v74 = [v71 copyItemAtURL:v72 toURL:v73 error:v90];

    v75 = v90[0];
    if (v74)
    {
      (*(v89 + 32))(v85, v25, v22);
      return v75;
    }

    else
    {
      v77 = v90[0];
      sub_26D286FA8();

      swift_willThrow();
      return (v87)(v25, v22);
    }
  }
}

uint64_t sub_26D2787A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v6 = sub_26D287048();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  if (a3)
  {
    swift_getObjectType();
    v7 = sub_26D287528();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[12] = v7;
  v4[13] = v9;

  return MEMORY[0x2822009F8](sub_26D2788B0, v7, v9);
}

uint64_t sub_26D2788B0()
{
  v53 = v0;
  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = sub_26D287338();
  v0[14] = __swift_project_value_buffer(v5, qword_2804F6DE0);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_26D287318();
  v8 = sub_26D2875B8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v49 = v8;
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v13 = 136315394;
    *(v13 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v51);
    *(v13 + 12) = 2080;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_26D287718();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_26D285EE0(v14, v16, &v51);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_26D269000, v7, v49, "%s: MOV to AMR conversion started for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v50, -1, -1);
    MEMORY[0x26D6B92B0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[17] = v17;
  v19 = sub_26D286FE8();
  v20 = [objc_opt_self() assetWithURL_];
  v0[18] = v20;

  v21 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v20 presetName:*MEMORY[0x277CE5C48]];
  v0[19] = v21;
  if (v21)
  {
    v22 = v21;
    v23 = v0 + 2;
    v24 = [v21 supportedFileTypes];
    type metadata accessor for AVFileType(0);
    v26 = v25;
    v27 = sub_26D2874F8();

    v28 = sub_26D287318();
    v29 = sub_26D2875B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v51);
      *(v30 + 12) = 2080;
      v32 = MEMORY[0x26D6B87D0](v27, v26);
      v34 = sub_26D285EE0(v32, v33, &v51);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_26D269000, v28, v29, "%s: Supported file types: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v31, -1, -1);
      v35 = v30;
      v23 = v0 + 2;
      MEMORY[0x26D6B92B0](v35, -1, -1);
    }

    v36 = *MEMORY[0x277CE5D60];
    v0[20] = *MEMORY[0x277CE5D60];
    v0[2] = v36;
    v37 = swift_task_alloc();
    *(v37 + 16) = v23;
    v38 = sub_26D27B5CC(sub_26D27CF20, v37, v27);

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EE0, &qword_26D28AFB8);
      v39 = sub_26D2870F8();
      v0[21] = v39;
      v40 = swift_task_alloc();
      v0[22] = v40;
      *v40 = v0;
      v40[1] = sub_26D278F20;
      v41 = v0[6];
      v42 = v0[7];

      return MEMORY[0x2821FAF00](v0 + 3, v39, v41, v42);
    }

    sub_26D27CE6C();
    swift_allocError();
    *v46 = 0xD00000000000002CLL;
    v46[1] = 0x800000026D28A900;
    swift_willThrow();
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_26D287668();
    MEMORY[0x26D6B8770](0xD00000000000001BLL, 0x800000026D28A8A0);
    MEMORY[0x26D6B8770](0xD00000000000003DLL, 0x800000026D28A8C0);
    v43 = v51;
    v44 = v52;
    sub_26D27CE6C();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    swift_willThrow();
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_26D278F20()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26D279634;
  }

  else
  {
    v5 = sub_26D279074;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26D279074()
{
  v18 = v0;
  v1 = v0[19];
  sub_26D27CF40(0, &qword_2804F6EE8, 0x277CE6520);
  v2 = sub_26D2874E8();

  [v1 setMetadata_];

  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D2875B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v17);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: Set exportSession properties %@", v7, 0x16u);
    sub_26D27CBA8(v8, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6B92B0](v9, -1, -1);
    MEMORY[0x26D6B92B0](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_26D2792A0;
  v12 = v0[20];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];

  return MEMORY[0x2821FAED0](v15, v12, v13, v14);
}

uint64_t sub_26D2792A0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26D2796AC;
  }

  else
  {
    v5 = sub_26D2793DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26D2793DC()
{
  v20 = v0;
  (*(v0 + 120))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  v1 = sub_26D287318();
  v2 = sub_26D2875B8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  if (v3)
  {
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v16 = v5;
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v19);
    *(v8 + 12) = 2080;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v10 = sub_26D287718();
    v12 = v11;
    v16(v6, v7);
    v13 = sub_26D285EE0(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_26D269000, v1, v2, "%s: MOV to AMR conversion finished for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v9, -1, -1);
    MEMORY[0x26D6B92B0](v8, -1, -1);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26D279634()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D2796AC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D279724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26D27CC54(a3, v25 - v10);
  v12 = sub_26D287578();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26D27CBA8(v11, &qword_2804F6E68, &qword_26D28AEE8);
  }

  else
  {
    sub_26D287568();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26D287528();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26D287488() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26D279A4C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v3 = sub_26D27B704(&v9, &v10);
  v9 = a2;
  v4 = sub_26D27B704(&v9, &v10);
  v5 = v3[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = v4;

  v7 = v6[2];
  if (!v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v7 < 3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 == 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7 < 5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 == 5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v7 < 7)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v7 == 7)
  {
    goto LABEL_33;
  }

  return sub_26D2870C8();
}

uint64_t sub_26D279C30()
{
  result = sub_26D2873F8();
  qword_2804F7958 = result;
  return result;
}

uint64_t sub_26D279C68()
{
  result = sub_26D2873F8();
  qword_2804F7960 = result;
  return result;
}

uint64_t sub_26D279CA0()
{
  if (qword_2804F6DF8 != -1)
  {
    swift_once();
  }

  result = sub_26D287428();
  qword_2804F7968 = result;
  unk_2804F7970 = v1;
  return result;
}

uint64_t sub_26D279D24()
{
  if (qword_2804F6E00 != -1)
  {
    swift_once();
  }

  result = sub_26D287428();
  qword_2804F7978 = result;
  unk_2804F7980 = v1;
  return result;
}

id sub_26D279DA8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_26D2873F8();

  return v6;
}

id sub_26D279E0C()
{
  result = [objc_allocWithZone(type metadata accessor for VoicemailManager_ObjC()) init];
  qword_2804F7988 = result;
  return result;
}

void sub_26D279FC0()
{
  v1 = sub_26D286F48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  if (qword_2804F6DF8 != -1)
  {
    swift_once();
  }

  v6 = qword_2804F7958;
  v10[3] = type metadata accessor for VoicemailManager_ObjC();
  v10[0] = v0;
  v7 = v6;
  v8 = v0;
  sub_26D286F38();
  v9 = sub_26D286F28();
  (*(v2 + 8))(v4, v1);
  [v5 postNotification_];
}

char *sub_26D27A134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E78, &qword_26D28AF28);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E80, &unk_26D28AF30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  *&v0[OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail] = 0;
  *&v0[OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_cancellables] = MEMORY[0x277D84FA0];
  v9 = type metadata accessor for VoicemailManager_ObjC();
  v15.receiver = v0;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = qword_2804F6E30;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  sub_26D287388();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E90, &qword_26D28AF40);
  sub_26D27C82C(&qword_2804F6E98, &qword_2804F6E78, &qword_26D28AF28, MEMORY[0x277CBCEC8]);
  sub_26D2873C8();
  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  v14[1] = v12;
  sub_26D27C82C(&qword_2804F6EA0, &qword_2804F6E80, &unk_26D28AF30, MEMORY[0x277CBCC08]);
  sub_26D2873E8();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  return v12;
}

unint64_t *sub_26D27A47C@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    v5 = 0;
LABEL_13:
    *a2 = v5;
    return result;
  }

  if (v3 >> 62)
  {
    result = sub_26D2876E8();
    v4 = result;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_13;
  }

  v8 = MEMORY[0x277D84F90];
  result = sub_26D2876B8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_26D27CF40(0, &qword_2804F6E48, off_279D95C58);
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6B8940](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v6 = (v6 + 1);
      sub_26D276200(v7);
      sub_26D287698();
      sub_26D2876C8();
      sub_26D2876D8();
      result = sub_26D2876A8();
    }

    while (v4 != v6);
    v5 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_26D27A5D0(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail) = *a1;

  sub_26D279FC0();
}

uint64_t sub_26D27A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v5[2] = swift_task_alloc();
  v5[3] = sub_26D287548();
  v5[4] = sub_26D287538();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_26D27A71C;

  return sub_26D27BA14(a5);
}

uint64_t sub_26D27A71C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D27A860, v3, v2);
}

uint64_t sub_26D27A860()
{
  v1 = v0[6];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = sub_26D287578();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = v2;
    v6 = sub_26D287538();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *(v7 + 32) = 1;
    *(v7 + 40) = v5;
    sub_26D27E180(0, 0, v3, &unk_26D28AF20, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_26D27A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v5[2] = swift_task_alloc();
  v5[3] = sub_26D287548();
  v5[4] = sub_26D287538();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_26D27AA98;

  return sub_26D27BA14(a5);
}

uint64_t sub_26D27AA98(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D27ABDC, v3, v2);
}

uint64_t sub_26D27ABDC()
{
  v1 = v0[6];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = sub_26D287578();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = v2;
    v6 = sub_26D287538();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *(v7 + 32) = 1;
    *(v7 + 40) = v5;
    sub_26D27E180(0, 0, v3, &unk_26D28AF08, v7);
  }

  v9 = v0[1];

  return v9();
}

void sub_26D27AD30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26D287578();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26D287548();
  v12 = a3;
  v13 = a1;
  v14 = v12;
  v15 = sub_26D287538();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  sub_26D27E180(0, 0, v10, a5, v16);
}

id sub_26D27AE7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VoicemailManager_ObjC();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26D27AF28(uint64_t a1)
{
  result = sub_26D27AF50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D27AF50()
{
  result = qword_2804F6E40;
  if (!qword_2804F6E40)
  {
    sub_26D27CF40(255, &qword_2804F6E48, off_279D95C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6E40);
  }

  return result;
}

uint64_t sub_26D27B004(uint64_t a1, id *a2)
{
  result = sub_26D287408();
  *a2 = 0;
  return result;
}

uint64_t sub_26D27B07C(uint64_t a1, id *a2)
{
  v3 = sub_26D287418();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26D27B0FC@<X0>(uint64_t *a2@<X8>)
{
  sub_26D287428();
  v3 = sub_26D2873F8();

  *a2 = v3;
  return result;
}

uint64_t sub_26D27B140(void *a1, uint64_t *a2)
{
  v2 = sub_26D287428();
  v4 = v3;
  if (v2 == sub_26D287428() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26D287728();
  }

  return v7 & 1;
}

uint64_t sub_26D27B1DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26D2873F8();

  *a2 = v3;
  return result;
}

uint64_t sub_26D27B224@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D287428();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D27B2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D27A9B4(a1, v4, v5, v7, v6);
}

uint64_t sub_26D27B378(uint64_t a1)
{
  v2 = sub_26D27C3E4(&qword_2804F6F18, type metadata accessor for AVFileType, &unk_26D28B0E8);
  v3 = sub_26D27C3E4(&qword_2804F6F20, type metadata accessor for AVFileType, &unk_26D28B088);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26D27B434()
{
  v0 = sub_26D287428();
  v1 = MEMORY[0x26D6B87A0](v0);

  return v1;
}

uint64_t sub_26D27B470(uint64_t a1)
{
  sub_26D287428();
  sub_26D287498();
}

uint64_t sub_26D27B4C4(uint64_t a1)
{
  sub_26D287428();
  sub_26D287778();
  sub_26D287498();
  v1 = sub_26D287788();

  return v1;
}

_BYTE *sub_26D27B538@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26D27B780(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26D27B838(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26D27B8B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26D27B5CC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26D27B674(void *a1, uint64_t *a2)
{
  v2 = sub_26D287428();
  v4 = v3;
  if (v2 == sub_26D287428() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26D287728();
  }

  return v7 & 1;
}

void *sub_26D27B704(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_26D286320(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D27B780(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_26D27B838(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26D286F98();
  swift_allocObject();
  result = sub_26D286F58();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D287068();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26D27B8B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26D286F98();
  swift_allocObject();
  result = sub_26D286F58();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26D27B938(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB8, &qword_26D28AF80);
  v10 = sub_26D27C82C(&qword_2804F6EC0, &qword_2804F6EB8, &qword_26D28AF80, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26D27B538(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_26D27BA14(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26D2870E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_26D287548();
  v1[7] = sub_26D287538();
  v4 = sub_26D287528();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_26D27BB14, v4, v3);
}

uint64_t sub_26D27BB14()
{
  sub_26D279A4C([*(v0 + 16) voicemailNumber], objc_msgSend(*(v0 + 16), sel_remoteUID));
  if (qword_2804F6E30 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_2804F79A8;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26D27BC28;
  v2 = *(v0 + 48);

  return sub_26D27F01C(v2);
}

uint64_t sub_26D27BC28(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26D27BD50, v4, v3);
}

uint64_t sub_26D27BD50()
{
  v33 = v0;
  if (*(v0 + 96))
  {
    (*(*(v0 + 32) + 8))(*(v0 + 48), *(v0 + 24));

    v1 = *(v0 + 96);
LABEL_13:

    v29 = *(v0 + 8);

    return v29(v1);
  }

  v2 = [*(v0 + 16) identifier];
  if (HIDWORD(v2))
  {

    if (qword_2804F6DD8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = sub_26D287338();
    __swift_project_value_buffer(v8, qword_2804F6DE0);
    (*(v6 + 16))(v3, v4, v5);
    v9 = v7;
    v10 = sub_26D287318();
    v11 = sub_26D287598();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);
    if (v12)
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v18 = 136315650;
      *(v18 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xED0000293A726F66, &v32);
      *(v18 + 12) = 2080;
      sub_26D27C3E4(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_26D287718();
      v30 = v14;
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v13, v15);
      v23 = sub_26D285EE0(v19, v21, &v32);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2048;
      v24 = [v17 identifier];

      *(v18 + 24) = v24;
      _os_log_impl(&dword_26D269000, v10, v11, "%s: no Message with recordUUID: %s or voicemailID: %lld", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v31, -1, -1);
      MEMORY[0x26D6B92B0](v18, -1, -1);

      v22(v30, v15);
    }

    else
    {

      v28 = *(v16 + 8);
      v28(v13, v15);
      v28(v14, v15);
    }

    v1 = 0;
    goto LABEL_13;
  }

  v25 = v2;
  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  *v26 = v0;
  v26[1] = sub_26D27C120;

  return sub_26D27D8AC(v25);
}

uint64_t sub_26D27C120(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26D27C248, v4, v3);
}

uint64_t sub_26D27C248()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);
  v4 = v0[14];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26D27C2E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D2814F0(a1, v4, v5, v6, v7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D27C3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D27C4D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27C598;

  return sub_26D27A638(a1, v4, v5, v7, v6);
}

uint64_t sub_26D27C598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D27C6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D27FABC(a1, v4, v5, v6, v7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D27C7D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D27C82C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D27C8B8()
{
  result = qword_2804F6EC8;
  if (!qword_2804F6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6EC8);
  }

  return result;
}

uint64_t sub_26D27C90C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D27C944()
{
  v1 = sub_26D287048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_26D27CA5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26D287048() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_26D27D10C;

  return sub_26D277778(a1, v11, v12, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_26D27CBA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26D27CC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D27CCC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D27CCFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D27D10C;

  return sub_26D285C3C(a1, v4);
}

uint64_t sub_26D27CDB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D27C598;

  return sub_26D285C3C(a1, v4);
}

unint64_t sub_26D27CE6C()
{
  result = qword_2804F6ED8;
  if (!qword_2804F6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6ED8);
  }

  return result;
}

void sub_26D27CED4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26D27CF40(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D27CF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D27CFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D27D110()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D27D174()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F7990);
  __swift_project_value_buffer(v0, qword_2804F7990);
  return sub_26D287328();
}

uint64_t sub_26D27D208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F28, &qword_26D28B210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D27D278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F28, &qword_26D28B210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D27D2E0()
{
  result = qword_2804F6F30;
  if (!qword_2804F6F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F6F30);
  }

  return result;
}

unint64_t sub_26D27D32C()
{
  result = qword_2804F6F48;
  if (!qword_2804F6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F6F40, &qword_26D28B220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6F48);
  }

  return result;
}

uint64_t sub_26D27D390(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26D27D408(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  a8();
  sub_26D27D208(a5, v22);
  sub_26D27D208(v22, &v19);
  v16[0] = v19;
  v16[1] = v20;
  v17 = v21;
  if (*(&v20 + 1))
  {
    sub_26D27D390(v16, v18);
    v10 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_26D27D74C(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_26D27D74C((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    sub_26D27D390(v18, &v10[5 * v12 + 4]);
  }

  else
  {
    sub_26D27D278(v16);
    v10 = MEMORY[0x277D84F90];
  }

  sub_26D27D278(v22);
  sub_26D27D2E0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_26D287718();
  v13 = sub_26D287638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F38, &qword_26D28B218);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D28B200;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F40, &qword_26D28B220);
  *(v14 + 64) = sub_26D27D32C();
  *(v14 + 32) = v10;
  sub_26D287308();
}

uint64_t os_log_type_t.description.getter(unsigned __int8 a1)
{
  if (sub_26D287598() == a1)
  {
    return 0x524F525245;
  }

  if (sub_26D2875A8() == a1)
  {
    return 0x544C554146;
  }

  if (sub_26D287588() == a1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

uint64_t sub_26D27D6BC()
{
  v1 = *v0;
  if (v1 == sub_26D287598())
  {
    return 0x524F525245;
  }

  if (v1 == sub_26D2875A8())
  {
    return 0x544C554146;
  }

  if (sub_26D287588() == v1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

void *sub_26D27D74C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F38, &qword_26D28B218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F50, &unk_26D28B280);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D27D8AC(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 104) = a1;
  v3 = sub_26D287108();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  sub_26D287548();
  *(v2 + 56) = sub_26D287538();
  v5 = sub_26D287528();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_26D27D9A4, v5, v4);
}

uint64_t sub_26D27D9A4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 104);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7050, &qword_26D28B5E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26D28B200;
  *(v6 + 32) = v4;
  *(v5 + 16) = v6;
  *v1 = v5;
  v7 = *MEMORY[0x277D07E50];
  v8 = sub_26D2872B8();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  (*(v2 + 104))(v1, *MEMORY[0x277D07E10], v3);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_26D27DB28;
  v10 = *(v0 + 48);

  return MEMORY[0x28215DDC0](v10, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_26D27DB28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 72);
  v9 = *(v3 + 64);
  if (v1)
  {
    v10 = sub_26D27DF58;
  }

  else
  {
    v10 = sub_26D27DCC8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26D27DCC8()
{
  v17 = v0;
  v1 = *(v0 + 88);

  if (v1 >> 62)
  {
    result = sub_26D2876E8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D6B8940](0, *(v0 + 88));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 88) + 32);
  }

LABEL_9:
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v4 = sub_26D287338();
  __swift_project_value_buffer(v4, qword_2804F6F58);
  v5 = v3;
  v6 = sub_26D287318();
  v7 = sub_26D2875B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28ABB0, &v16);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v8;
    *(v9 + 18) = 2080;
    *(v0 + 16) = v3;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7028, &qword_26D28B5A8);
    v12 = sub_26D287468();
    v14 = sub_26D285EE0(v12, v13, &v16);

    *(v9 + 20) = v14;
    _os_log_impl(&dword_26D269000, v6, v7, "%s: %d message: %s", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v10, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15(v3);
}

uint64_t sub_26D27DF58()
{
  v17 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28ABB0, &v16);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v8;
    *(v9 + 18) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 20) = v13;
    *v10 = v13;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: %d error: %@)", v9, 0x1Cu);
    sub_26D27CBA8(v10, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6B92B0](v11, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_26D27E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26D27CC54(a3, v25 - v10);
  v12 = sub_26D287578();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26D27CBA8(v11, &qword_2804F6E68, &qword_26D28AEE8);
  }

  else
  {
    sub_26D287568();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26D287528();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26D287488() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26D27CBA8(a3, &qword_2804F6E68, &qword_26D28AEE8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26D27CBA8(a3, &qword_2804F6E68, &qword_26D28AEE8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26D27E474(uint64_t a1)
{
  result = sub_26D27E514(&qword_2804F6F70, MEMORY[0x277D07E18], &protocol conformance descriptor for Message);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26D27E514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D27E55C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_26D287118();
  v6 = sub_26D2872F8();

  if (v6)
  {
    v7 = sub_26D287048();
    v8 = *(v7 - 8);
    v9 = *(v8 + 56);
    v9(v4, 1, 1, v7);
    sub_26D27E514(&qword_2804F7060, MEMORY[0x277CC9260], MEMORY[0x277CC9288]);
    sub_26D287708();

    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v10 = a1;
      v11 = 1;
    }

    else
    {
      (*(v8 + 32))(a1, v4, v7);
      v10 = a1;
      v11 = 0;
    }

    return (v9)(v10, v11, 1, v7);
  }

  else
  {
    v12 = sub_26D287048();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

void *sub_26D27E788()
{
  v0 = sub_26D287458();
  MEMORY[0x28223BE20](v0 - 8);
  v37[1] = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = sub_26D287048();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7058, &qword_26D28B608);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v37 - v13;
  v15 = sub_26D2872D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D287138();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    v31 = sub_26D2872C8();
    (*(v16 + 8))(v18, v15);
    return v31;
  }

  sub_26D27CBA8(v14, &qword_2804F7058, &qword_26D28B608);
  result = sub_26D287178();
  if (result)
  {
    v20 = result;
    v21 = sub_26D2872F8();

    if (!v21)
    {
      return 0;
    }

    v22 = v5;
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_26D27E514(&qword_2804F7060, MEMORY[0x277CC9260], MEMORY[0x277CC9288]);
    sub_26D287708();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return 0;
    }

    v23 = *(v6 + 32);
    v23(v9, v4, v5);
    v23(v11, v9, v5);
    v24 = sub_26D287058();
    v26 = v25;
    sub_26D27CF40(0, &qword_2804F7068, 0x277CCAAC8);
    sub_26D2875C8();
    if (v40)
    {
      sub_26D286934(v39, v41);
      sub_26D28657C(v41, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7078, &unk_26D28B610);
      if (swift_dynamicCast())
      {
        v27 = objc_opt_self();
        sub_26D27CF40(0, &unk_2804F7080, 0x277D6EE40);
        v28 = sub_26D2874E8();

        v29 = [v27 combinedStringFromCaptions_];

        v30 = sub_26D287428();
        sub_26D27C7D8(v24, v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        (*(v6 + 8))(v11, v22);
        return v30;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    else
    {
      sub_26D27CBA8(v39, &qword_2804F7008, &qword_26D28B550);
    }

    sub_26D2875C8();
    if (v40)
    {
      sub_26D286934(v39, v41);
      sub_26D28657C(v41, v39);
      sub_26D27CF40(0, &qword_2804F7070, 0x277D79780);
      if (swift_dynamicCast())
      {
        v32 = v38;
        v33 = [v38 confidenceRating];
        if (v33 > 3 || v33 == 1)
        {
          sub_26D27C7D8(v24, v26);

          v35 = 0;
        }

        else
        {
          v34 = [v32 transcriptionString];
          v35 = sub_26D287428();
          sub_26D27C7D8(v24, v26);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        (*(v6 + 8))(v11, v5);
        return v35;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    else
    {
      sub_26D27CBA8(v39, &qword_2804F7008, &qword_26D28B550);
    }

    sub_26D287448();
    v36 = sub_26D287438();
    sub_26D27C7D8(v24, v26);
    (*(v6 + 8))(v11, v5);
    return v36;
  }

  return result;
}

uint64_t sub_26D27F01C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26D2870E8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_26D287548();
  v2[9] = sub_26D287538();
  v5 = sub_26D287528();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_26D27F11C, v5, v4);
}

uint64_t sub_26D27F11C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_26D28B200;
  v6 = *(v2 + 16);
  v0[13] = v6;
  v0[14] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v4, v3, v1);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_26D27F240;

  return MEMORY[0x28215DDB8](v5);
}

uint64_t sub_26D27F240(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_26D27F6D8;
  }

  else
  {

    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_26D27F35C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26D27F35C()
{
  v31 = v0;
  v1 = v0[16];

  if (v1 >> 62)
  {
    result = sub_26D2876E8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D6B8940](0, v0[16]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[16] + 32);
  }

LABEL_9:
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[3];
  v8 = sub_26D287338();
  __swift_project_value_buffer(v8, qword_2804F6F58);
  v4(v5, v7, v6);
  v9 = v3;
  v10 = sub_26D287318();
  v11 = sub_26D2875B8();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v16 = 136315650;
    *(v16 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xEE00293A64697575, &v30);
    *(v16 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = v3;
    v18 = sub_26D287718();
    v28 = v11;
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = v18;
    v3 = v17;
    v22 = sub_26D285EE0(v21, v20, &v30);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    v0[2] = v17;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7028, &qword_26D28B5A8);
    v24 = sub_26D287468();
    v26 = sub_26D285EE0(v24, v25, &v30);

    *(v16 + 24) = v26;
    _os_log_impl(&dword_26D269000, v10, v28, "%s: %s message: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v29, -1, -1);
    MEMORY[0x26D6B92B0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v27 = v0[1];

  return v27(v3);
}

uint64_t sub_26D27F6D8()
{
  v27 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_26D287338();
  __swift_project_value_buffer(v6, qword_2804F6F58);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_26D287318();
  v9 = sub_26D287598();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315650;
    *(v15 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xEE00293A64697575, &v26);
    *(v15 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_26D287718();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_26D285EE0(v16, v18, &v26);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    *v24 = v21;
    _os_log_impl(&dword_26D269000, v8, v9, "%s: %s error: %@)", v15, 0x20u);
    sub_26D27CBA8(v24, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v25, -1, -1);
    MEMORY[0x26D6B92B0](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_26D27F9F4()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F6F58);
  v1 = __swift_project_value_buffer(v0, qword_2804F6F58);
  if (qword_2804F6E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2804F7990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26D27FABC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 200) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7010, &qword_26D28B568);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v6 = sub_26D2870E8();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_26D287548();
  *(v5 + 128) = sub_26D287538();
  v8 = sub_26D287528();
  *(v5 + 136) = v8;
  *(v5 + 144) = v7;

  return MEMORY[0x2822009F8](sub_26D27FC78, v8, v7);
}

uint64_t sub_26D27FC78()
{
  if (*(v0 + 200) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_26D27FF38;

    return sub_26D28091C();
  }

  else
  {
    if (qword_2804F6E30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    *(v0 + 168) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
    v8 = swift_allocObject();
    *(v0 + 176) = v8;
    *(v8 + 16) = xmmword_26D28B290;

    _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
    v9 = *(v3 + 56);
    v9(v4, 1, 1, v5);
    v9(v6, 1, 1, v5);
    v10 = sub_26D287048();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = objc_allocWithZone(sub_26D287228());
    *(v8 + 32) = sub_26D287218();
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_26D2803E4;

    return MEMORY[0x28215DDD0](v8);
  }
}

uint64_t sub_26D27FF38(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_26D280060, v4, v3);
}

uint64_t sub_26D280060()
{
  v1 = v0[20];

  if (v1)
  {
    v2 = v0[20];
    v27 = v2;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D2876E8())
    {
      v4 = 0;
      v24 = i;
      v5 = v0[20];
      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v26)
        {
          v6 = MEMORY[0x26D6B8940](v4, v27);
        }

        else
        {
          if (v4 >= *(v25 + 16))
          {
            goto LABEL_20;
          }

          v6 = *(v27 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = v0[14];
        v10 = v0[13];
        v11 = sub_26D287578();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v9, 1, 1, v11);
        v13 = v7;
        v14 = sub_26D287538();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = MEMORY[0x277D85700];
        *(v15 + 32) = 0;
        *(v15 + 40) = v13;
        sub_26D27CC54(v9, v10);
        LODWORD(v9) = (*(v12 + 48))(v10, 1, v11);

        v16 = v0[13];
        if (v9 == 1)
        {
          sub_26D27CBA8(v0[13], &qword_2804F6E68, &qword_26D28AEE8);
        }

        else
        {
          sub_26D287568();
          (*(v12 + 8))(v16, v11);
        }

        v17 = *(v15 + 16);
        swift_unknownObjectRetain();

        if (v17)
        {
          swift_getObjectType();
          v18 = sub_26D287528();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_26D27CBA8(v0[14], &qword_2804F6E68, &qword_26D28AEE8);
        v21 = swift_allocObject();
        *(v21 + 16) = &unk_26D28AF20;
        *(v21 + 24) = v15;
        if (v20 | v18)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v18;
          v0[5] = v20;
        }

        swift_task_create();

        ++v4;
        if (v8 == v24)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26D2803E4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D2806C0;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D280508;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26D280508()
{
  v9 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = sub_26D287338();
  __swift_project_value_buffer(v1, qword_2804F6F58);
  v2 = sub_26D287318();
  v3 = sub_26D2875B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_26D285EE0(0xD000000000000014, 0x800000026D28ABD0, &v8);
    _os_log_impl(&dword_26D269000, v2, v3, "%s: success", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6B92B0](v5, -1, -1);
    MEMORY[0x26D6B92B0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26D2806C0()
{
  v16 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_26D285EE0(0xD000000000000014, 0x800000026D28ABD0, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: error: %@", v8, 0x16u);
    sub_26D27CBA8(v9, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    MEMORY[0x26D6B92B0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26D28091C()
{
  v1[2] = v0;
  v2 = sub_26D2870E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2809DC, 0, 0);
}

uint64_t sub_26D2809DC()
{
  *(v0 + 48) = sub_26D287548();
  *(v0 + 56) = sub_26D287538();
  v2 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D280A74, v2, v1);
}

uint64_t sub_26D280A74()
{

  if (qword_2804F6E30 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_26D280B0C, 0, 0);
}

uint64_t sub_26D280B0C()
{
  *(v0 + 64) = sub_26D287538();
  v2 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D280B98, v2, v1);
}

uint64_t sub_26D280B98()
{

  *(v0 + 72) = qword_2804F79A8;

  return MEMORY[0x2822009F8](sub_26D280C0C, 0, 0);
}

uint64_t sub_26D280C0C(uint64_t a1)
{
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_26D280CB0;
  v3 = *(v1 + 40);

  return sub_26D27F01C(v3);
}

uint64_t sub_26D280CB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[11] = a1;

  v6 = *(v4 + 8);
  v2[12] = v6;
  v2[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return MEMORY[0x2822009F8](sub_26D280E1C, 0, 0);
}

uint64_t sub_26D280E1C()
{
  v26 = v0;
  v1 = v0[11];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26D28B290;
    *(v2 + 32) = v1;

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v5 = v0[2];
    v6 = sub_26D287338();
    __swift_project_value_buffer(v6, qword_2804F6F58);
    v7 = v5;
    v8 = sub_26D287318();
    v9 = sub_26D287598();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[5];
      v11 = v0[3];
      v23 = v0[12];
      v12 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v12 = 136315650;
      *(v12 + 4) = sub_26D285EE0(0x6569726575716572, 0xEB00000000292864, &v25);
      *(v12 + 12) = 2080;
      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_26D287718();
      v15 = v14;
      v23(v10, v11);
      v16 = sub_26D285EE0(v13, v15, &v25);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2080;
      sub_26D287168();
      v17 = sub_26D287718();
      v19 = v18;
      v23(v10, v11);
      v20 = sub_26D285EE0(v17, v19, &v25);

      *(v12 + 24) = v20;
      _os_log_impl(&dword_26D269000, v8, v9, "%s: rdar://117099230: previously vended recordUUID: %s missing, falling back to conversationUUID: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v24, -1, -1);
      MEMORY[0x26D6B92B0](v12, -1, -1);
    }

    v0[14] = sub_26D287538();
    v22 = sub_26D287528();

    return MEMORY[0x2822009F8](sub_26D281180, v22, v21);
  }
}

uint64_t sub_26D281180()
{

  return MEMORY[0x2822009F8](sub_26D2811E8, 0, 0);
}

uint64_t sub_26D2811E8()
{
  *(v0 + 120) = sub_26D287538();
  v2 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D281274, v2, v1);
}

uint64_t sub_26D281274()
{

  return MEMORY[0x2822009F8](sub_26D2812DC, 0, 0);
}

uint64_t sub_26D2812DC(uint64_t a1)
{
  sub_26D287168();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_26D281380;
  v3 = *(v1 + 40);

  return sub_26D282804(v3);
}

uint64_t sub_26D281380(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v8 = *v1;

  v3(v4, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_26D2814F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 232) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7010, &qword_26D28B568);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v6 = sub_26D2870E8();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_26D287548();
  *(v5 + 128) = sub_26D287538();
  v8 = sub_26D287528();
  *(v5 + 136) = v8;
  *(v5 + 144) = v7;

  return MEMORY[0x2822009F8](sub_26D2816AC, v8, v7);
}

uint64_t sub_26D2816AC()
{
  if (*(v0 + 232) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_26D281AA8;

    return sub_26D28091C();
  }

  else
  {
    sub_26D287158();
    v3 = sub_26D2872E8();
    if (v3 == sub_26D2872E8())
    {
      if (qword_2804F6E30 != -1)
      {
        swift_once();
      }

      *(v0 + 168) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
      v4 = swift_allocObject();
      *(v0 + 176) = v4;
      *(v4 + 16) = xmmword_26D28B200;

      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      v5 = swift_task_alloc();
      *(v0 + 184) = v5;
      *v5 = v0;
      v5[1] = sub_26D281F54;

      return MEMORY[0x28215DDC8](v4);
    }

    else
    {
      if (qword_2804F6E30 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 88);
      v7 = *(v0 + 72);
      v8 = *(v0 + 80);
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      *(v0 + 200) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
      v11 = swift_allocObject();
      *(v0 + 208) = v11;
      *(v11 + 16) = xmmword_26D28B290;

      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      v12 = *(v6 + 56);
      v12(v7, 1, 1, v8);
      v12(v9, 1, 1, v8);
      v13 = sub_26D287048();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = objc_allocWithZone(sub_26D287228());
      *(v11 + 32) = sub_26D287218();
      v15 = swift_task_alloc();
      *(v0 + 216) = v15;
      *v15 = v0;
      v15[1] = sub_26D282230;

      return MEMORY[0x28215DDD0](v11);
    }
  }
}

uint64_t sub_26D281AA8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_26D281BD0, v4, v3);
}

uint64_t sub_26D281BD0()
{
  v1 = v0[20];

  if (v1)
  {
    v2 = v0[20];
    v27 = v2;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D2876E8())
    {
      v4 = 0;
      v24 = i;
      v5 = v0[20];
      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v26)
        {
          v6 = MEMORY[0x26D6B8940](v4, v27);
        }

        else
        {
          if (v4 >= *(v25 + 16))
          {
            goto LABEL_20;
          }

          v6 = *(v27 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = v0[14];
        v10 = v0[13];
        v11 = sub_26D287578();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v9, 1, 1, v11);
        v13 = v7;
        v14 = sub_26D287538();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = MEMORY[0x277D85700];
        *(v15 + 32) = 0;
        *(v15 + 40) = v13;
        sub_26D27CC54(v9, v10);
        LODWORD(v9) = (*(v12 + 48))(v10, 1, v11);

        v16 = v0[13];
        if (v9 == 1)
        {
          sub_26D27CBA8(v0[13], &qword_2804F6E68, &qword_26D28AEE8);
        }

        else
        {
          sub_26D287568();
          (*(v12 + 8))(v16, v11);
        }

        v17 = *(v15 + 16);
        swift_unknownObjectRetain();

        if (v17)
        {
          swift_getObjectType();
          v18 = sub_26D287528();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_26D27CBA8(v0[14], &qword_2804F6E68, &qword_26D28AEE8);
        v21 = swift_allocObject();
        *(v21 + 16) = &unk_26D28AF08;
        *(v21 + 24) = v15;
        if (v20 | v18)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v18;
          v0[5] = v20;
        }

        swift_task_create();

        ++v4;
        if (v8 == v24)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26D281F54()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D282354;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D282078;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26D282078()
{
  v9 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = sub_26D287338();
  __swift_project_value_buffer(v1, qword_2804F6F58);
  v2 = sub_26D287318();
  v3 = sub_26D2875B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v8);
    _os_log_impl(&dword_26D269000, v2, v3, "%s: success", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6B92B0](v5, -1, -1);
    MEMORY[0x26D6B92B0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26D282230()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D2825AC;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26D286960;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26D282354()
{
  v14 = v0;
  v1 = *(v0 + 192);

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: error: %@", v6, 0x16u);
    sub_26D27CBA8(v7, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6B92B0](v8, -1, -1);
    MEMORY[0x26D6B92B0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26D2825AC()
{
  v14 = v0;
  v1 = *(v0 + 224);

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: error: %@", v6, 0x16u);
    sub_26D27CBA8(v7, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6B92B0](v8, -1, -1);
    MEMORY[0x26D6B92B0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26D282804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26D2870E8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_26D287108();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_26D287548();
  v2[11] = sub_26D287538();
  v6 = sub_26D287528();
  v2[12] = v6;
  v2[13] = v5;

  return MEMORY[0x2822009F8](sub_26D282960, v6, v5);
}

uint64_t sub_26D282960()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26D28B200;
  v10 = *(v5 + 16);
  v0[14] = v10;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v9 + v8, v6, v4);
  *(v7 + 16) = v9;
  *v1 = v7;
  v11 = *MEMORY[0x277D07E58];
  v12 = sub_26D2872B8();
  (*(*(v12 - 8) + 104))(v1, v11, v12);
  (*(v2 + 104))(v1, *MEMORY[0x277D07E10], v3);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_26D282B38;
  v14 = v0[10];

  return MEMORY[0x28215DDC0](v14, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_26D282B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 104);
  v9 = *(v3 + 96);
  if (v1)
  {
    v10 = sub_26D282FC8;
  }

  else
  {
    v10 = sub_26D282CD8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26D282CD8()
{
  v29 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_26D287338();
  __swift_project_value_buffer(v5, qword_2804F6F58);
  v1(v2, v4, v3);

  v6 = sub_26D287318();
  v7 = sub_26D2875B8();

  if (os_log_type_enabled(v6, v7))
  {
    v27 = v0[17];
    v8 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28AB70, &v28);
    *(v11 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_26D287718();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_26D285EE0(v13, v15, &v28);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = sub_26D2871F8();
    v18 = MEMORY[0x26D6B87D0](v27, v17);
    v20 = sub_26D285EE0(v18, v19, &v28);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_26D269000, v6, v7, "%s: %s messages: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v12, -1, -1);
    MEMORY[0x26D6B92B0](v11, -1, -1);
  }

  else
  {
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    (*(v23 + 8))(v21, v22);
  }

  v24 = v0[17];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_26D282FC8()
{
  v27 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_26D287338();
  __swift_project_value_buffer(v6, qword_2804F6F58);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_26D287318();
  v9 = sub_26D287598();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315650;
    *(v15 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28AB70, &v26);
    *(v15 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_26D287718();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_26D285EE0(v16, v18, &v26);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    *v24 = v21;
    _os_log_impl(&dword_26D269000, v8, v9, "%s: %s error: %@)", v15, 0x20u);
    sub_26D27CBA8(v24, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v25, -1, -1);
    MEMORY[0x26D6B92B0](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_26D283300()
{
  v1 = sub_26D2873F8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26D287648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_26D27CBA8(v7, &qword_2804F7008, &qword_26D28B550);
    return 2;
  }
}

uint64_t sub_26D2833F8(void *a1)
{
  v1 = a1;
  v2 = sub_26D283300();

  return v2 & 1;
}

void sub_26D28342C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = sub_26D287518();
  v4 = sub_26D2873F8();
  [v5 setObject:v3 forKey:v4];
}

void *sub_26D2834BC()
{
  type metadata accessor for VoicemailManager(0);
  v0 = swift_allocObject();
  result = sub_26D283938();
  qword_2804F79A8 = v0;
  return result;
}

void sub_26D2834FC()
{
  v1 = v0;
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);

  oslog = sub_26D287318();
  v3 = sub_26D2875B8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315650;

    v6 = sub_26D287468();
    v8 = sub_26D285EE0(v6, v7, &v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_26D285EE0(0x69616D6563696F76, 0xEA0000000000736CLL, &v13);
    *(v4 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D287398();

    if (v1)
    {
      if (v1 >> 62)
      {
        sub_26D2876E8();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FF8, &unk_26D28B500);
    v9 = sub_26D287468();
    v11 = sub_26D285EE0(v9, v10, &v13);

    *(v4 + 24) = v11;
    _os_log_impl(&dword_26D269000, oslog, v3, "%s.%s: count: %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v5, -1, -1);
    MEMORY[0x26D6B92B0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26D2837C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D287398();

  return v1;
}

uint64_t sub_26D283838@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D287398();

  *a2 = v4;
  return result;
}

void sub_26D2838B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D2873A8();
  sub_26D2834FC();
}

void *sub_26D283938()
{
  v1 = v0;
  v40[1] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7030, &qword_26D28B5B0);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = v40 - v3;
  v41 = sub_26D2875E8();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7000, &qword_26D28B548);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - v13;
  v15 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__voicemails;
  v46[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FB8, &qword_26D28B368);
  sub_26D287378();
  (*(v12 + 32))(v1 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__accounts;
  v46[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FC8, &qword_26D28B370);
  sub_26D287378();
  (*(v8 + 32))(v1 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store;
  sub_26D2872A8();
  *(v1 + v17) = sub_26D287288();
  *(v1 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_cancellables) = MEMORY[0x277D84FA0];
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v20 = sub_26D287428();
    v22 = v21;

    if (v20 == 0xD000000000000014 && 0x800000026D28AB90 == v22 || (sub_26D287728() & 1) != 0 || v20 == 0xD000000000000013 && 0x800000026D28A980 == v22)
    {

      v23 = 0;
    }

    else
    {
      v39 = sub_26D287728();

      v23 = v39 ^ 1;
    }
  }

  else
  {
    v23 = 1;
  }

  v24 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent;
  *(v1 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent) = v23 & 1;

  sub_26D287298();

  v25 = [objc_opt_self() defaultCenter];
  sub_26D2875F8();

  sub_26D27E514(&qword_2804F7038, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);

  v26 = v41;
  sub_26D2873D8();

  (*(v4 + 8))(v6, v26);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  v27 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  v28 = v42;
  sub_26D286FB8();

  sub_26D286894();

  v29 = v44;
  sub_26D2873D8();

  (*(v43 + 8))(v28, v29);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  if (*(v1 + v24))
  {
    sub_26D28432C();
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v30 = sub_26D287338();
    __swift_project_value_buffer(v30, qword_2804F6F58);

    v31 = sub_26D287318();
    v32 = sub_26D287588();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v1;
      v46[0] = v34;
      *v33 = 136315394;

      v35 = sub_26D287468();
      v37 = sub_26D285EE0(v35, v36, v46);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_26D285EE0(0x292874696E69, 0xE600000000000000, v46);
      _os_log_impl(&dword_26D269000, v31, v32, "%s: %s: needsContent: false ⇒ skipping accounts, voicemails", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v34, -1, -1);
      MEMORY[0x26D6B92B0](v33, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_26D2840EC(uint64_t a1, uint64_t *a2)
{
  sub_26D27E514(&qword_2804F7048, type metadata accessor for VoicemailManager, &unk_26D28B410);
  sub_26D287358();
  sub_26D287368();
}

void sub_26D284190()
{
  v1 = *v0;
  v2 = sub_26D286F48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_2804F6E00 != -1)
  {
    swift_once();
  }

  v9[3] = v1;
  v9[0] = v0;
  v7 = qword_2804F7960;

  sub_26D286F38();
  v8 = sub_26D286F28();
  (*(v3 + 8))(v5, v2);
  [v6 postNotification_];
}

void sub_26D28432C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  if (*(v0 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent) == 1)
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v5 = sub_26D287338();
    __swift_project_value_buffer(v5, qword_2804F6F58);

    v6 = sub_26D287318();
    v7 = sub_26D2875B8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v1;
      v28 = v9;
      *v8 = 136315394;

      v10 = sub_26D287468();
      v12 = sub_26D285EE0(v10, v11, &v28);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v28);
      _os_log_impl(&dword_26D269000, v6, v7, "%s: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v9, -1, -1);
      MEMORY[0x26D6B92B0](v8, -1, -1);
    }

    v13 = sub_26D287578();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_26D287548();

    v14 = sub_26D287538();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v1;
    sub_26D27E180(0, 0, v4, &unk_26D28B490, v15);
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v17 = sub_26D287338();
    __swift_project_value_buffer(v17, qword_2804F6F58);

    v26 = sub_26D287318();
    v18 = sub_26D287588();

    if (os_log_type_enabled(v26, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v1;
      v28 = v20;
      *v19 = 136315394;

      v21 = sub_26D287468();
      v23 = sub_26D285EE0(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v28);
      _os_log_impl(&dword_26D269000, v26, v18, "%s: %s: needsContent: false ⇒ skipping voicemails", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v20, -1, -1);
      MEMORY[0x26D6B92B0](v19, -1, -1);
    }

    else
    {
      v24 = v26;
    }
  }
}

uint64_t sub_26D284798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_26D287108();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_26D287548();
  v4[7] = sub_26D287538();
  v7 = sub_26D287528();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_26D28488C, v7, v6);
}

uint64_t sub_26D28488C()
{
  v1 = v0[6];
  v34 = v0[5];
  v35 = v0[4];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 providerManager];

  v4 = [v3 telephonyProvider];
  v5 = [v4 identifier];

  v6 = sub_26D287428();
  v32 = v7;
  v33 = v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FE0, &qword_26D28B498);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v11 = *MEMORY[0x277D07E20];
  v12 = sub_26D287208();
  (*(*(v12 - 8) + 104))(v1, v11, v12);
  v13 = *MEMORY[0x277D07E28];
  v14 = sub_26D287238();
  (*(*(v14 - 8) + 104))(v1 + v9, v13, v14);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FE8, &qword_26D28B4A0);
  v16 = sub_26D2872B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26D28B2A0;
  v21 = (v20 + v19);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FF0, &qword_26D28B4A8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26D28B200;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;
  *(v22 + 16) = v23;
  *v21 = v22;
  v24 = *(v17 + 104);
  v24(v21, *MEMORY[0x277D07E70], v16);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_287EA40D8;
  *(v21 + v18) = v25;
  v24((v21 + v18), *MEMORY[0x277D07E68], v16);
  *(v15 + 16) = v20;
  *(v1 + v10) = v15;
  v24((v1 + v10), *MEMORY[0x277D07E60], v16);
  v26 = (*(v34 + 104))(v1, *MEMORY[0x277D07E08], v35);
  v28 = MaxVoicemailCount(v26, v27);
  v29 = swift_task_alloc();
  v0[10] = v29;
  *v29 = v0;
  v29[1] = sub_26D284C68;
  v30 = v0[6];

  return MEMORY[0x28215DDC0](v30, v28, 0);
}

uint64_t sub_26D284C68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 72);
  v9 = *(v3 + 64);
  if (v1)
  {
    v10 = sub_26D28503C;
  }

  else
  {
    v10 = sub_26D284E08;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26D284E08()
{
  v12 = v0;

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = sub_26D287338();
  __swift_project_value_buffer(v1, qword_2804F6F58);

  v2 = sub_26D287318();
  v3 = sub_26D2875B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v11);
    *(v6 + 12) = 2048;
    if (v5 >> 62)
    {
      v8 = sub_26D2876E8();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_26D269000, v2, v3, "%s: count: %ld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6B92B0](v7, -1, -1);
    MEMORY[0x26D6B92B0](v6, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v5;

  sub_26D2873A8();
  sub_26D2834FC();

  v9 = v0[1];

  return v9();
}

uint64_t sub_26D28503C()
{

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26D269000, v4, v5, "error loading voicemail: %@", v8, 0xCu);
    sub_26D27CBA8(v9, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v9, -1, -1);
    MEMORY[0x26D6B92B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26D2851F0()
{
  v1 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__voicemails;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__accounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7000, &qword_26D28B548);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_26D28532C(uint64_t a1)
{
  sub_26D285448(319, &qword_2804F6FB0, &qword_2804F6FB8, &qword_26D28B368);
  if (v1 <= 0x3F)
  {
    sub_26D285448(319, &qword_2804F6FC0, &qword_2804F6FC8, &qword_26D28B370);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26D285448(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26D2873B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D28549C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26D287358();
  *a2 = result;
  return result;
}

uint64_t sub_26D2854EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D285584, v6, v5);
}

uint64_t sub_26D285584()
{

  sub_26D28432C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26D285608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D286964, v6, v5);
}

uint64_t sub_26D285700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D285798, v6, v5);
}

uint64_t sub_26D285798()
{

  sub_26D284190();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26D28581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_26D287578();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26D287548();
  swift_retain_n();
  v11 = sub_26D287538();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  sub_26D27E180(0, 0, v9, a5, v12);
}

uint64_t sub_26D285948()
{
  v1 = OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_uuid;
  v2 = sub_26D2870E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26D285A6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D285AA4(uint64_t a1)
{
  result = sub_26D2870E8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D285B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285700(a1, v4, v5, v6);
}

uint64_t sub_26D285C3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26D285D34;

  return v6(a1);
}

uint64_t sub_26D285D34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D285E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

unint64_t sub_26D285EE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D285FAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D28657C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26D285FAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D2860B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D287688();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26D2860B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26D286104(a1, a2);
  sub_26D286234(&unk_287EA40B0);
  return v3;
}

void *sub_26D286104(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D286320(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D287688();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D2874B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D286320(v10, 0);
        result = sub_26D287658();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D286234(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D286394(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D286320(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D286394(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26D286488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27C598;

  return sub_26D284798(a1, v4, v5, v6);
}

uint64_t sub_26D28653C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D28657C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D2865D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

uint64_t sub_26D28668C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D286780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D2854EC(a1, v4, v5, v6);
}

id sub_26D286848@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCloudSyncAvailableOverride];
  *a2 = result;
  return result;
}

unint64_t sub_26D286894()
{
  result = qword_2804F7040;
  if (!qword_2804F7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7030, &qword_26D28B5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7040);
  }

  return result;
}

uint64_t sub_26D2868FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_26D286934(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_26D286980()
{
  result = [objc_allocWithZone(MEMORY[0x277D79778]) initWithStateSync:1 mailSync:0 delegate:0 delegateQueue:0];
  qword_2804F7A10 = result;
  return result;
}

id sub_26D2869C4()
{
  if (qword_2804F6E38 != -1)
  {
    swift_once();
  }

  v1 = qword_2804F7A10;

  return v1;
}

void NPHSetTmpDirPrefix_cold_1(NSObject *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = 136315394;
  v4 = "void NPHSetTmpDirPrefix(void)";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_26D269000, a1, OS_LOG_TYPE_ERROR, "%s: failed, errno: %d", &v3, 0x12u);
}

void __deviceUnlockedSinceBoot_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
}