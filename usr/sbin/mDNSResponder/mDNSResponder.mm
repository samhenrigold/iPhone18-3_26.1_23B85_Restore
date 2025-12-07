int main(int argc, const char **argv, const char **envp)
{
  _set_user_dir_suffix();
  mDNSLogCategory_Default = os_log_create("com.apple.mDNSResponder", "Default");
  v5 = os_log_create("com.apple.mDNSResponder", "Default_redacted");
  mDNSLogCategory_Default_redacted = v5;
  if (mDNSLogCategory_Default)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the Default log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_Default = &_os_log_default;
  }

  mDNSLogCategory_State = os_log_create("com.apple.mDNSResponder", "State");
  v7 = os_log_create("com.apple.mDNSResponder", "State_redacted");
  mDNSLogCategory_State_redacted = v7;
  if (!mDNSLogCategory_State || !v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the State log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_State = &_os_log_default;
  }

  mDNSLogCategory_mDNS = os_log_create("com.apple.mDNSResponder", "mDNS");
  v8 = os_log_create("com.apple.mDNSResponder", "mDNS_redacted");
  mDNSLogCategory_mDNS_redacted = v8;
  if (!mDNSLogCategory_mDNS || !v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the mDNS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_mDNS = &_os_log_default;
  }

  mDNSLogCategory_uDNS = os_log_create("com.apple.mDNSResponder", "uDNS");
  v9 = os_log_create("com.apple.mDNSResponder", "uDNS_redacted");
  mDNSLogCategory_uDNS_redacted = v9;
  if (!mDNSLogCategory_uDNS || !v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the uDNS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_uDNS = &_os_log_default;
  }

  mDNSLogCategory_SPS = os_log_create("com.apple.mDNSResponder", "SPS");
  v10 = os_log_create("com.apple.mDNSResponder", "SPS_redacted");
  mDNSLogCategory_SPS_redacted = v10;
  if (!mDNSLogCategory_SPS || !v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the SPS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_SPS = &_os_log_default;
  }

  mDNSLogCategory_NAT = os_log_create("com.apple.mDNSResponder", "NAT");
  v11 = os_log_create("com.apple.mDNSResponder", "NAT_redacted");
  mDNSLogCategory_NAT_redacted = v11;
  if (!mDNSLogCategory_NAT || !v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the NAT log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_NAT = &_os_log_default;
  }

  mDNSLogCategory_D2D = os_log_create("com.apple.mDNSResponder", "D2D");
  v12 = os_log_create("com.apple.mDNSResponder", "D2D_redacted");
  mDNSLogCategory_D2D_redacted = v12;
  if (!mDNSLogCategory_D2D || !v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the D2D log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_D2D = &_os_log_default;
  }

  mDNSLogCategory_XPC = os_log_create("com.apple.mDNSResponder", "XPC");
  v13 = os_log_create("com.apple.mDNSResponder", "XPC_redacted");
  mDNSLogCategory_XPC_redacted = v13;
  if (!mDNSLogCategory_XPC || !v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the XPC log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_XPC = &_os_log_default;
  }

  mDNSLogCategory_Analytics = os_log_create("com.apple.mDNSResponder", "Analytics");
  v14 = os_log_create("com.apple.mDNSResponder", "Analytics_redacted");
  mDNSLogCategory_Analytics_redacted = v14;
  if (!mDNSLogCategory_Analytics || !v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the Analytics log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_Analytics = &_os_log_default;
  }

  mDNSLogCategory_DNSSEC = os_log_create("com.apple.mDNSResponder", "DNSSEC");
  v15 = os_log_create("com.apple.mDNSResponder", "DNSSEC_redacted");
  mDNSLogCategory_DNSSEC_redacted = v15;
  if (!mDNSLogCategory_DNSSEC || !v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the DNSSEC log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_DNSSEC = &_os_log_default;
  }

  mDNSMacOSXSystemBuildNumber(0);
  v16 = "OSXVers";
  if (OSXVers)
  {
    v17 = OSXVers;
  }

  else
  {
    v16 = "iOSVers";
    v17 = iOSVers;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s starting %s %d", "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)", v16, v17);
  if (geteuid())
  {
    v18 = &unk_10016D000;
    if (argc >= 2)
    {
      v19 = "-NoMulticastAdvertisements";
      v20 = "-DebugLogging";
      v21 = "-UnicastPacketLogging";
      v22 = 1;
      do
      {
        v23 = argv[v22];
        if (!strcasecmp(v23, v19))
        {
          NoMulticastAdvertisements = 1;
        }

        if (!strcasecmp(v23, v20))
        {
          v18[208] = 1;
        }

        if (!strcasecmp(v23, v21))
        {
          mDNS_PacketLoggingEnabled = 1;
        }

        v24 = v22;
        if (!strcasecmp(v23, "-OfferSleepProxyService"))
        {
          v25 = v21;
          v26 = v20;
          v27 = v19;
          v28 = v22 + 1;
          if (v22 + 1 >= argc)
          {
            v30 = 100;
          }

          else
          {
            v29 = argv[v28];
            if (*v29 - 48 > 9 || *(v29 + 1) - 48 > 9 || v29[2])
            {
              v30 = 100;
            }

            else
            {
              v30 = atoi(argv[v28]);
              v23 = v29;
              v24 = ++v22;
            }

            v18 = &unk_10016D000;
          }

          OfferSleepProxyService = v30;
          v19 = v27;
          v20 = v26;
          v21 = v25;
        }

        if (!strcasecmp(v23, "-UseInternalSleepProxy"))
        {
          if (v22 + 1 >= argc || (v31 = argv[v22 + 1], *v31 - 48 > 9) || v31[1])
          {
            v32 = 1;
          }

          else
          {
            v32 = atoi(v31);
            ++v22;
          }

          UseInternalSleepProxy = v32;
          v24 = v22;
          v23 = argv[v22];
        }

        if (!strcasecmp(v23, "-StrictUnicastOrdering"))
        {
          StrictUnicastOrdering = 1;
          v23 = argv[v24];
        }

        if (!strcasecmp(v23, "-AlwaysAppendSearchDomains"))
        {
          AlwaysAppendSearchDomains = 1;
          v23 = argv[v24];
        }

        if (!strcasecmp(v23, "-DisableAllowExpired"))
        {
          EnableAllowExpired = 0;
        }

        ++v22;
      }

      while (v22 < argc);
    }

    v18[208] = 1;
    mDNS_PacketLoggingEnabled = 1;
    NoMulticastAdvertisements = PreferencesGetValueBool(@"NoMulticastAdvertisements", NoMulticastAdvertisements);
    StrictUnicastOrdering = PreferencesGetValueBool(@"StrictUnicastOrdering", StrictUnicastOrdering);
    AlwaysAppendSearchDomains = PreferencesGetValueBool(@"AlwaysAppendSearchDomains", AlwaysAppendSearchDomains);
    EnableAllowExpired = PreferencesGetValueBool(@"EnableAllowExpired", EnableAllowExpired);
    OfferSleepProxyService = PreferencesGetValueInt(@"OfferSleepProxyService", OfferSleepProxyService);
    UseInternalSleepProxy = PreferencesGetValueInt(@"UseInternalSleepProxy", UseInternalSleepProxy);
    PQWorkaroundThreshold = PreferencesGetValueInt(@"PQWorkaroundThreshold", PQWorkaroundThreshold);
    v33 = mdns_managed_defaults_create("com.apple.mDNSResponder", 0);
    if (v33)
    {
      v34 = v33;
      v35 = PQWorkaroundThreshold;
      Value = CFDictionaryGetValue(v33, @"PQWorkaroundThreshold");
      if (Value)
      {
        v37 = Value;
        v38 = CFGetTypeID(Value);
        if (v38 == CFNumberGetTypeID() && !CFNumberIsFloatType(v37))
        {
          *valuePtr = 0;
          if (CFNumberGetValue(v37, kCFNumberSInt64Type, valuePtr))
          {
            v39 = *valuePtr;
            if (*valuePtr >= 0x7FFFFFFF)
            {
              v39 = 0x7FFFFFFFLL;
            }

            if (v39 <= 0xFFFFFFFF80000000)
            {
              v35 = 0x80000000;
            }

            else
            {
              v35 = v39;
            }
          }
        }
      }

      PQWorkaroundThreshold = v35;
      CFRelease(v34);
    }

    if (NoMulticastAdvertisements)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-NoMulticastAdvertisements is set: Administratively prohibiting multicast advertisements");
    }

    if (AlwaysAppendSearchDomains)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-AlwaysAppendSearchDomains is set");
    }

    if (StrictUnicastOrdering)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-StrictUnicastOrdering is set");
    }

    signal(1, HandleSIG);
    signal(2, HandleSIG);
    signal(13, 1);
    signal(15, HandleSIG);
    signal(29, HandleSIG);
    signal(30, HandleSIG);
    signal(31, HandleSIG);
    signal(27, HandleSIG);
    signal(18, HandleSIG);
    signal(28, HandleSIG);
    mDNSStorage[0] = &PlatformStorage;
    KQueueFD = kqueue();
    if (KQueueFD == -1)
    {
      v41 = *__error();
      v44 = mDNSLogCategory_Default;
      v45 = strerror(v41);
      LogMsgWithLevel(v44, OS_LOG_TYPE_DEFAULT, "kqueue() failed errno %d (%s)", v41, v45);
      v46 = &unk_100178000;
      v47 = &unk_100178000;
      if (v41)
      {
        goto LABEL_190;
      }

LABEL_182:
      CFRunLoopRun();
      v87 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == v47[435])
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          *valuePtr = 0;
          goto LABEL_188;
        }
      }

      else
      {
        v87 = *(v46 + 436);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          *valuePtr = 0;
LABEL_188:
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "ERROR: CFRunLoopRun Exiting.", valuePtr, 2u);
        }
      }

      mDNS_StartExit();
      mDNS_FinalExit();
      v41 = 0;
      goto LABEL_190;
    }

    v40 = pthread_mutex_init(&stru_100164CC8, 0);
    if (v40)
    {
      v41 = v40;
      v42 = mDNSLogCategory_Default;
      v43 = strerror(v40);
      LogMsgWithLevel(v42, OS_LOG_TYPE_DEFAULT, "pthread_mutex_init() failed error %d (%s)", v41, v43);
LABEL_190:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s exiting", "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
      goto LABEL_191;
    }

    pthread_mutex_lock(&stru_100164CC8);
    *v219 = 0;
    if (socketpair(1, 1, 0, v219) == -1)
    {
      v41 = *__error();
      v51 = mDNSLogCategory_Default;
      v52 = strerror(v41);
      LogMsgWithLevel(v51, OS_LOG_TYPE_DEFAULT, "socketpair() failed errno %d (%s)", v41, v52);
      v46 = &unk_100178000;
      v47 = &unk_100178000;
      goto LABEL_181;
    }

    dword_100164D0C = v219[0];
    KQueueSet(v219[1], 1u, -1, &main_wakeKQEntry);
    getpid();
    v48 = sandbox_check();
    switch(v48)
    {
      case -1:
        v48 = *__error();
        break;
      case 0:
        v53 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *valuePtr = 0;
          v50 = "mDNSResponder is not sandboxed (check for com.apple.private.sandbox.profile:embedded entitlement)";
        }

        else
        {
          v53 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *valuePtr = 0;
          v50 = "mDNSResponder is not sandboxed (check for com.apple.private.sandbox.profile:embedded entitlement)";
        }

        v56 = v53;
        v57 = OS_LOG_TYPE_FAULT;
LABEL_141:
        v58 = 2;
LABEL_142:
        _os_log_impl(&_mh_execute_header, v56, v57, v50, valuePtr, v58);
LABEL_143:
        mDNSStorage[0] = &PlatformStorage;
        dword_10016D220 = 0;
        byte_10016D224 = 0;
        byte_10016D225[0] = NoMulticastAdvertisements == 0;
        byte_10016D226 = 0;
        dword_10016D228 = 1;
        *&word_10016D22C = 0;
        word_10016D234 = 0;
        *(mDNSStorage + &loc_100009420) = 0;
        dword_10016D264 = 0;
        qword_10016D240 = 0;
        *&dword_10016D248 = 0;
        off_10016D238 = mDNS_StatusCallback;
        *(&dword_10016D24C + 3) = 0;
        *valuePtr = 0;
        v59 = mach_timebase_info(valuePtr);
        if (v59)
        {
          v41 = v59;
LABEL_179:
          v46 = &unk_100178000;
          v47 = &unk_100178000;
LABEL_180:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: mDNS_Init failed %d", v41);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: mDNSDaemonInitialize failed");
          goto LABEL_181;
        }

        mDNSPlatformClockDivisor = 1000000 * *&valuePtr[4] / *valuePtr;
        dword_10016D254 = arc4random();
        v60 = dword_10016D254 + mDNSPlatformRawTime();
        dword_10016D258 = 0;
        dword_10016D25C = v60;
        dword_10016D260 = v60;
        LODWORD(qword_10016D268) = v60;
        HIDWORD(qword_10016D268) = v60;
        v61 = v60 + 939524096;
        *&dword_10016D270 = vdupq_n_s32(v60 + 939524096);
        dword_10016D280 = v60 + 939524096;
        dword_10016D284 = v60 + 939524096;
        dword_10016D2D0 = v60 + 939524096;
        *&dword_10016D288 = (v60 + 939524096);
        byte_10016D290[0] = 0;
        qword_10016D2AC = 0;
        unk_10016D2C0 = 0;
        dword_10016D2C8 = 0;
        qword_10016D294 = 0;
        unk_10016D29C = 0;
        dword_10016D2A4 = 0;
        *&qword_10016D300 = 0u;
        *(&xmmword_10016D2D8 + 12) = 0u;
        unk_10016D2F4 = 0u;
        unk_10016D2D4 = 0u;
        qword_10016D314 = 0xA00000000;
        bzero(&qword_10016D320, 0xFA0uLL);
        v62 = (&dword_10016D254 + "/System/Library/Frameworks/Security.framework/Security");
        v63 = xmmword_10010D310;
        v64 = xmmword_10010D320;
        v65 = 500;
        v66 = vdupq_n_s64(0x1F3uLL);
        v67 = vdupq_n_s64(4uLL);
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v66, v64)), *v63.i8).u8[0])
          {
            *(v62 - 3) = v61;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1F3uLL), *&v64)), *&v63).i8[2])
          {
            *(v62 - 2) = v61;
          }

          if (vuzp1_s16(*&v63, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1F3uLL), *&v63))).i32[1])
          {
            *(v62 - 1) = v61;
            *v62 = v61;
          }

          v63 = vaddq_s64(v63, v67);
          v64 = vaddq_s64(v64, v67);
          v62 += 4;
          v65 -= 4;
        }

        while (v65);
        v68 = xmmword_10010D320;
        v69 = vdupq_n_s64(1uLL);
        v70 = vdupq_n_s64(2uLL);
        v71 = 146;
        v72 = rrcachestorage;
        do
        {
          v73 = vaddq_s64(v68, v69);
          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), v68)).u8[0])
          {
            *v72 = &rrcachestorage[28 * v73.i64[0]];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), *&v68)).i32[1])
          {
            v72[28] = &rrcachestorage[28 * v73.i64[1]];
          }

          v68 = vaddq_s64(v68, v70);
          v72 += 56;
          v71 -= 2;
        }

        while (v71);
        qword_10016CD40 = 0;
        qword_10016D320 = rrcachestorage;
        dword_10016D308 += 146;
        *(&dword_10016D308 + &loc_100002774 + 4) = 0;
        *(&dword_10016D308 + &loc_1000027B4 + 4) = 0;
        *(&dword_10016D308 + &loc_1000028B8) = 0;
        *(&dword_10016D308 + &loc_1000029C0) = 0;
        *(&dword_10016D308 + &loc_100002AC0) = 0;
        bzero(&dword_10016D308 + &loc_100001798, 0xFA1uLL);
        v74 = &dword_10016D308 + &loc_100003054 + 4;
        v74[32] = 0;
        *v74 = 0u;
        *(v74 + 1) = 0u;
        xmmword_100170388 = 0u;
        dword_100170398 = 0;
        dword_1001703A0 = v60 + 939524096;
        dword_1001703A4 = v60 + 939524096;
        *(&dword_10016D308 + &loc_100003668) = 0;
        *(&dword_10016D308 + &loc_100003768) = 0;
        qword_1001703F0 = 0;
        v75 = (&dword_10016D308 + &loc_1000030A8);
        *v75 = 0u;
        v75[1] = 0u;
        v75[2] = 0u;
        *(v75 + 44) = 0u;
        *(&dword_10016D308 + &loc_100004CCC) = 0;
        *(&dword_10016D308 + &loc_100004CD4) = 0;
        *(&dword_10016D308 + &loc_100003868) = 0u;
        dword_1001704CC = -1;
        dword_100170B80 = 0;
        xmmword_100170B98 = 0u;
        dword_100170BA8 = 0;
        dword_100170BAC = v60 + 939524096;
        dword_100170BB0 = 0;
        dword_100170BB4 = arc4random();
        dword_100170BB8 = arc4random();
        dword_100170BBC = arc4random();
        qword_100170BC0 = 0;
        dword_100170BC8 = 0;
        dword_100170BCC = v60;
        *(&dword_10016D308 + &loc_1000038C8) = 0;
        v76 = &dword_10016D308 + &loc_1000039B8;
        *v76 = 0u;
        v76[16] = 0;
        *(&dword_10016D308 + &loc_1000039C8 + 2) = 0;
        *(&dword_10016D308 + &loc_1000039D8) = 0;
        *(&dword_10016D308 + &loc_100004CC0) = 0;
        qword_100170CD8 = 0;
        xmmword_100170CE8 = 0u;
        xmmword_100170CF8 = 0u;
        qword_100170D08 = 0;
        dword_100170D18 = 0;
        *(&dword_10016D30C + &loc_100003A10) = 0;
        *(&dword_10016D308 + &loc_100003A18) = 0u;
        *valuePtr = 0;
        v77 = malloc_type_calloc(1uLL, 0x18uLL, 0xB7BBD98FuLL);
        if (!v77)
        {
          goto LABEL_401;
        }

        v79 = v77;
        v80 = &_dnssec_obj_trust_anchor_manager_kind;
        v77[1] = &_dnssec_obj_trust_anchor_manager_kind;
        do
        {
          v81 = v80[2];
          if (v81)
          {
            v81(v79);
          }

          v80 = *v80;
        }

        while (v80);
        ++*v79;
        *valuePtr = 0;
        v82 = dnssec_obj_trust_anchor_create_with_ds_data(&unk_10010DE30, 20326, 8, &unk_10010DE32, 1485993600, 3633477247, valuePtr, v78);
        v83 = *valuePtr;
        if (!*valuePtr)
        {
          v84 = dnssec_obj_trust_anchor_manager_add_anchor(v79, v82);
          *valuePtr = v84;
          if (!v84)
          {
            if (is_apple_internal_build_s_once != -1)
            {
              dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
            }

            if (is_apple_internal_build_is_internal)
            {
              v86 = dnssec_obj_trust_anchor_create_with_ds_data("\x06dnssec\x04test", 36815, 14, &unk_10010DE52, 1645819915, 3793303562, valuePtr, v85);
              v83 = *valuePtr;
              if (!*valuePtr)
              {
                v83 = dnssec_obj_trust_anchor_manager_add_anchor(v79, v86);
                *valuePtr = v83;
                if (!v82)
                {
                  goto LABEL_175;
                }

                goto LABEL_174;
              }
            }

            else
            {
              v86 = 0;
              v83 = *valuePtr;
            }

            if (!v82)
            {
              goto LABEL_175;
            }

            goto LABEL_174;
          }

          v83 = v84;
        }

        v86 = 0;
        if (!v82)
        {
LABEL_175:
          if (v86)
          {
            ref_count_obj_release(v86);
          }

          qword_100172038 = v79;
          if (v83)
          {
            v41 = -65537;
            goto LABEL_179;
          }

          v88 = v60 + 1800000;
          if ((v60 + 1800000) <= 1)
          {
            v88 = 1;
          }

          dword_10016D2BC = v88;
          v77 = malloc_type_calloc(1uLL, 0x130uLL, 0x547C59EAuLL);
          if (v77)
          {
            v89 = v77;
            v90 = "\x05local";
            do
            {
              if (!v90)
              {
                break;
              }

              v91 = *v90;
              if (v91 > 0x3F)
              {
                break;
              }

              if (!*v90)
              {
                v92 = v90 - "\x05local" + 1;
                if (v92 <= 0x100u)
                {
                  memcpy(v77, "\x05local", v92);
                  goto LABEL_204;
                }

                break;
              }

              v90 += v91 + 1;
            }

            while (v90 - "\x05local" <= 255);
            *v77 = 0;
LABEL_204:
            *&byte_10016D225[&loc_100003740 + 3] = v89;
            byte_10016D226 = byte_10016D225[0] == 0;
            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v227 = 0u;
            v228 = 0u;
            v225 = 0u;
            v226 = 0u;
            v223 = 0u;
            v224 = 0u;
            *__s = 0u;
            v222 = 0u;
            mDNSMacOSXSystemBuildNumber(__s);
            if (MEMORY[0xFFFFFC021])
            {
              SameDomainLabelPointer = vectorSameDomainLabel;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "setSameDomainLabelPointer: using vector code");
            }

            else
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "setSameDomainLabelPointer: using scalar code");
            }

            HelperQueue = dispatch_queue_create("com.apple.mDNSResponder.HelperQueue", 0);
            if (!HelperQueue)
            {
              v41 = -65539;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "dispatch_queue_create: Helper queue NULL");
              goto LABEL_290;
            }

            if (iOSVers)
            {
              v93 = 2;
            }

            else
            {
              v93 = 4;
            }

            if (OSXVers)
            {
              v94 = 1;
            }

            else
            {
              v94 = v93;
            }

            byte_10017039C = v94;
            v95 = 100;
            do
            {
              memset(valuePtr, 0, 64);
              GetUserSpecifiedLocalHostName(valuePtr);
              if (valuePtr[0])
              {
                break;
              }

              usleep(0xC350u);
              --v95;
            }

            while (v95);
            LOBYTE(xmmword_10016FA80) = 0;
            GetRandomUUIDLocalHostname(byte_10016FBC0);
            *v220 = 0x200000006;
            v218 = 32;
            v96 = HINFO_HWstring_buffer;
            if (sysctl(v220, 2u, HINFO_HWstring_buffer, &v218, 0, 0))
            {
              v96 = HINFO_HWstring;
            }

            else
            {
              HINFO_HWstring = HINFO_HWstring_buffer;
            }

            if (strchr(HINFO_HWstring_buffer, 44))
            {
              v97 = strcspn(v96, "0123456789");
            }

            else
            {
              v97 = strlen(v96);
            }

            HINFO_HWstring_prefixlen = v97;
            v98 = socket(2, 2, 17);
            v99 = v98;
            if (v98 > 2)
            {
              *valuePtr = 0xE9140000uLL;
              valuePtr[1] = 2;
              v104 = bind(v98, valuePtr, 0x10u);
              close(v99);
              if (!v104)
              {
                byte_10016D224 = 1;
LABEL_228:
                v105 = strlen(HINFO_HWstring);
                v106 = strlen(__s);
                v107 = v106;
                if (v106 + v105 <= 0xFD)
                {
                  byte_10016FCC8 = v105;
                  byte_10016FDC8 = v106;
                  memcpy(&unk_10016FCC9, HINFO_HWstring, v105);
                  memcpy(&unk_10016FDC9, __s, v107);
                }

                v108 = mDNSStorage[0];
                *(mDNSStorage[0] + 8) = -5868;
                v108 += 8;
                *(v108 + 8) = mDNSStorage;
                *(v108 + 16) = -1;
                *(v108 + 24) = myKQSocketCallBack;
                *(v108 + 32) = v108;
                *(v108 + 40) = "IPv4 UDP packet reception";
                *(v108 + 48) = -1;
                *(v108 + 56) = myKQSocketCallBack;
                *(v108 + 64) = v108;
                *(v108 + 72) = "IPv6 UDP packet reception";
                v109 = SetupSocket(v108, 59668, 2, 0);
                if (v109)
                {
                  v110 = v109;
                  v111 = mDNSLogCategory_Default;
                  v112 = *__error();
                  v113 = __error();
                  v114 = strerror(*v113);
                  LogMsgWithLevel(v111, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: SetupSocket(AF_INET) failed error %d errno %d (%s)", v110, v112, v114);
                }

                v115 = SetupSocket(mDNSStorage[0] + 8, 59668, 30, 0);
                if (v115)
                {
                  v116 = v115;
                  v117 = mDNSLogCategory_Default;
                  v118 = *__error();
                  v119 = __error();
                  v120 = strerror(*v119);
                  LogMsgWithLevel(v117, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: SetupSocket(AF_INET6) failed error %d errno %d (%s)", v116, v118, v120);
                }

                *&v247.sa_len = 0;
                *&v247.sa_data[6] = 0;
                v217 = 16;
                if (getsockname(*(mDNSStorage[0] + 24), &v247, &v217) < 0)
                {
                  v121 = mDNSLogCategory_Default;
                  v122 = *__error();
                  v123 = __error();
                  v124 = strerror(*v123);
                  LogMsgWithLevel(v121, OS_LOG_TYPE_DEFAULT, "getsockname v4 error %d (%s)", v122, v124);
                }

                else
                {
                  word_10016D22C = *v247.sa_data;
                }

                v125 = mDNSStorage[0];
                v126 = *(mDNSStorage[0] + 56);
                if ((v126 & 0x80000000) == 0)
                {
                  memset(valuePtr, 0, 28);
                  v214[0] = 28;
                  if (getsockname(v126, valuePtr, v214) < 0)
                  {
                    v127 = mDNSLogCategory_Default;
                    v128 = *__error();
                    v129 = __error();
                    v130 = strerror(*v129);
                    LogMsgWithLevel(v127, OS_LOG_TYPE_DEFAULT, "getsockname v6 error %d (%s)", v128, v130);
                  }

                  else
                  {
                    word_10016D22E = *&valuePtr[2];
                  }

                  v125 = mDNSStorage[0];
                }

                *v125 = 0;
                *(v125 + 108) = 0;
                *(v125 + 172) = 0;
                *(v125 + 364) = 0;
                *(v125 + 428) = 0;
                *(v125 + 236) = 0;
                *(v125 + 300) = 0;
                *(v125 + 492) = 0;
                *(v125 + 500) = 0;
                *(v125 + 600) = 0;
                *(v125 + 608) = 0;
                *(v125 + 688) = 257;
                *(v125 + 692) = 0;
                *(v125 + 696) = 0;
                NetworkChangedKey_IPv4 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
                NetworkChangedKey_IPv6 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv6);
                NetworkChangedKey_Hostnames = SCDynamicStoreKeyCreateHostNames(0);
                NetworkChangedKey_Computername = SCDynamicStoreKeyCreateComputerName(0);
                NetworkChangedKey_DNS = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
                NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, &stru_1001541B8, 0);
                NetworkChangedKey_StateInterfacePrefix = NetworkInterfaceEntity;
                if (!NetworkChangedKey_IPv4 || !NetworkChangedKey_IPv6 || !NetworkChangedKey_Hostnames || !NetworkChangedKey_Computername || !NetworkChangedKey_DNS || !NetworkInterfaceEntity)
                {
                  v41 = -65539;
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SCDynamicStore string setup failed");
                  v46 = &unk_100178000;
                  v47 = &unk_100178000;
                  goto LABEL_291;
                }

                *valuePtr = 0;
                memset(&valuePtr[16], 0, 24);
                *&valuePtr[8] = mDNSStorage;
                v132 = SCDynamicStoreCreate(0, @"mDNSResponder:WatchForNetworkChanges", NetworkChanged, valuePtr);
                Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                v134 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
                v135 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
                v136 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                v137 = v136;
                if (v132)
                {
                  if (Mutable && v134 && v135 && v136)
                  {
                    CFArrayAppendValue(Mutable, NetworkChangedKey_IPv4);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_IPv6);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_Hostnames);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_Computername);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_DNS);
                    CFArrayAppendValue(Mutable, @"Setup:/Network/DynamicDNS");
                    CFArrayAppendValue(Mutable, @"State:/IOKit/PowerManagement/CurrentSettings");
                    CFArrayAppendValue(v137, v134);
                    CFArrayAppendValue(v137, v135);
                    CFArrayAppendValue(v137, @"State:/Network/Interface/[^/]+/AirPort");
                    if (SCDynamicStoreSetNotificationKeys(v132, Mutable, v137))
                    {
                      RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v132, 0);
                      *(mDNSStorage[0] + 512) = RunLoopSource;
                      v139 = &unk_100178000;
                      if (RunLoopSource)
                      {
                        Main = CFRunLoopGetMain();
                        CFRunLoopAddSource(Main, *(mDNSStorage[0] + 512), kCFRunLoopDefaultMode);
                        SCDynamicStoreSetDisconnectCallBack();
                        *(mDNSStorage[0] + 504) = v132;
                        v141 = 1;
LABEL_264:
                        CFRelease(v137);
                        v150 = v141;
LABEL_265:
                        if (v135)
                        {
                          CFRelease(v135);
                        }

                        if (v134)
                        {
                          CFRelease(v134);
                        }

                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if ((v150 & 1) == 0)
                        {
                          v41 = -1;
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: WatchForNetworkChanges failed %d", -1);
                          goto LABEL_290;
                        }

                        v151 = socket(32, 3, 1);
                        v152 = v151;
                        *(mDNSStorage[0] + 528) = v151;
                        if (v151 < 0)
                        {
                          v163 = -65539;
                          v164 = mDNSLogCategory_Default;
                          v165 = *__error();
                          v166 = __error();
                          v167 = strerror(*v166);
                          LogMsgWithLevel(v164, OS_LOG_TYPE_DEFAULT, "WatchForSysEvents: socket failed error %d errno %d (%s)", v152, v165, v167);
                        }

                        else
                        {
                          *&valuePtr[8] = 2;
                          *valuePtr = 0x100000001;
                          v153 = ioctl(v151, 0x800C6502uLL, valuePtr);
                          if ((v153 & 0x80000000) == 0)
                          {
                            v154 = mDNSStorage[0];
                            *(mDNSStorage[0] + 536) = SysEventCallBack;
                            *(v154 + 544) = mDNSStorage;
                            *(v154 + 552) = "System Event Notifier";
                            KQueueSet(*(v154 + 528), 1u, -1, (v154 + 536));
                            v155 = time(0);
                            SystemWakeForNetworkAccess();
                            HIBYTE(dword_10016D2A4) = 0;
                            myGetIfAddrs();
                            UpdateInterfaceList(v155);
                            SetupActiveInterfaces(v155);
                            mDNS_Lock_(mDNSStorage, "mDNSPlatformInit_setup", 8267);
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: SetDomainSecrets: no keychain support");
                            SetLocalDomains();
                            mDNS_Unlock_(mDNSStorage, "mDNSPlatformInit_setup", 8270);
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: Compiled without SnowLeopard Fine-Grained Power Management support");
                            v156 = IORegisterForSystemPower(mDNSStorage, (mDNSStorage[0] + 560), PowerChanged, (mDNSStorage[0] + 572));
                            *(mDNSStorage[0] + 568) = v156;
                            if (v156)
                            {
                              v157 = CFRunLoopGetMain();
                              v158 = IONotificationPortGetRunLoopSource(*(mDNSStorage[0] + 560));
                              CFRunLoopAddSource(v157, v158, kCFRunLoopDefaultMode);
                              v159 = HINFO_HWstring;
                              if (!strncasecmp(HINFO_HWstring, "Xserve", 6uLL) || !strncasecmp(v159, "RackMac", 7uLL))
                              {
                                v160 = 85;
                                v161 = 84;
                                v162 = 25;
                              }

                              else
                              {
                                if (!strncasecmp(v159, "MacPro", 6uLL))
                                {
                                  v160 = 85;
                                  v161 = 84;
                                }

                                else
                                {
                                  if (strncasecmp(v159, "PowerMac", 8uLL))
                                  {
                                    if (!strncasecmp(v159, "iMac", 4uLL))
                                    {
                                      v160 = 78;
                                      v161 = 77;
                                      v162 = 30;
                                    }

                                    else if (!strncasecmp(v159, "Macmini", 7uLL))
                                    {
                                      v160 = 74;
                                      v161 = 73;
                                      v162 = 33;
                                    }

                                    else if (!strncasecmp(v159, "TimeCapsule", 0xBuLL))
                                    {
                                      v160 = 70;
                                      v161 = 10;
                                      v162 = 34;
                                    }

                                    else if (!strncasecmp(v159, "AirPort", 7uLL))
                                    {
                                      v160 = 70;
                                      v161 = 10;
                                      v162 = 35;
                                    }

                                    else
                                    {
                                      if (strncasecmp(v159, "MacBook", 7uLL))
                                      {
                                        v46 = &unk_100178000;
                                        v47 = &unk_100178000;
                                        if (strncasecmp(v159, "PowerBook", 9uLL))
                                        {
                                          goto LABEL_352;
                                        }

                                        v160 = 72;
                                        v161 = 71;
                                        v162 = 37;
LABEL_351:
                                        SPMetricPortability = v162;
                                        SPMetricMarginalPower = v161;
                                        SPMetricTotalPower = v160;
LABEL_352:
                                        if (mDNS_LoggingEnabled == 1)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HW_MODEL: %.*s (%s) Portability %d Marginal Power %d Total Power %d Features %d", HINFO_HWstring_prefixlen, v159, v159, SPMetricPortability, SPMetricMarginalPower, SPMetricTotalPower, 1);
                                        }

                                        SSLqueue = dispatch_get_global_queue(0, 0);
                                        if (!SSLqueue)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "dispatch_queue_create: SSL queue NULL");
                                        }

                                        v216 = 16777343;
                                        RegisterLocalOnlyAddressRecord("\tlocalhost", 1, &v216, 4u);
                                        *v214 = 0;
                                        v215 = 0x100000000000000;
                                        RegisterLocalOnlyAddressRecord("\tlocalhost", 28, v214, 0x10u);
                                        if (is_apple_internal_build_s_once != -1)
                                        {
                                          dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
                                        }

                                        if (is_apple_internal_build_is_internal)
                                        {
                                          mDNSMacOSXUpdateEtcHosts_internal(v196, v197, v198, v199, v200, v201, v202, v203);
                                        }

                                        else
                                        {
                                          RegisterLocalOnlyAddressRecord("\rbroadcasthost", 1, &onesIPv4Addr, 4u);
                                        }

                                        v245 = 0u;
                                        v246 = 0u;
                                        v243 = 0u;
                                        v244 = 0u;
                                        v241 = 0u;
                                        v242 = 0u;
                                        v239 = 0u;
                                        v240 = 0u;
                                        v238 = 0u;
                                        memset(valuePtr, 0, sizeof(valuePtr));
                                        AppendDNSNameString(valuePtr, "1.0.0.127.in-addr.arpa.");
                                        CreatePTRRecord(valuePtr);
                                        valuePtr[0] = 0;
                                        AppendDNSNameString(valuePtr, "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.");
                                        CreatePTRRecord(valuePtr);
                                        if (dnssd_analytics_init_sInitAnalyticsOnce != -1)
                                        {
                                          dispatch_once(&dnssd_analytics_init_sInitAnalyticsOnce, &__block_literal_global_7376);
                                        }

                                        if (_os_feature_enabled_impl() && mdns_trust_checks_init_s_once != -1)
                                        {
                                          dispatch_once(&mdns_trust_checks_init_s_once, &__block_literal_global_7662);
                                        }

                                        v213[0] = _NSConcreteStackBlock;
                                        v213[1] = 0x40000000;
                                        v213[2] = __mDNSPlatformInit_setup_block_invoke;
                                        v213[3] = &__block_descriptor_tmp_414;
                                        v213[4] = mDNSStorage;
                                        v204 = v213;
                                        *valuePtr = _NSConcreteStackBlock;
                                        *&valuePtr[8] = 3221225472;
                                        *&valuePtr[16] = __util_managed_network_change_handler_block_invoke;
                                        *&valuePtr[24] = &unk_100153DE8;
                                        *&valuePtr[32] = v204;
                                        v205 = v204;
                                        dispatch_async(&_dispatch_main_q, valuePtr);

                                        if (unicast_assist_init_s_once != -1)
                                        {
                                          dispatch_once(&unicast_assist_init_s_once, &__block_literal_global_267);
                                        }

                                        dword_10016D228 = 0;
                                        if (off_10016D238)
                                        {
                                          mDNS_Lock_(mDNSStorage, "mDNSCoreInitComplete", 19355);
                                          mDNS_VerifyLockState("Drop Lock", 0, dword_10016D248, ++dword_10016D24C, "mDNSCoreInitComplete", 19356);
                                          off_10016D238(mDNSStorage, 0);
                                          mDNS_VerifyLockState("Reclaim Lock", 0, dword_10016D248, dword_10016D24C, "mDNSCoreInitComplete", 19358);
                                          --dword_10016D24C;
                                          mDNS_Unlock_(mDNSStorage, "mDNSCoreInitComplete", 19359);
                                        }

                                        if (!&_D2DInitialize)
                                        {
                                          goto LABEL_387;
                                        }

                                        CFRunLoopGetMain();
                                        v206 = D2DInitialize();
                                        v207 = mDNSLogCategory_D2D;
                                        if (mDNS_SensitiveLoggingEnableCount)
                                        {
                                          v208 = mDNSLogCategory_D2D == v47[435];
                                        }

                                        else
                                        {
                                          v208 = 1;
                                        }

                                        v209 = v208;
                                        if (v206)
                                        {
                                          v210 = v206;
                                          if (v209)
                                          {
                                            if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
                                            {
                                              *valuePtr = 67109120;
                                              *&valuePtr[4] = v210;
LABEL_386:
                                              _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_ERROR, "D2DInitialiize failed: %u", valuePtr, 8u);
                                            }
                                          }

                                          else
                                          {
                                            v207 = mDNSLogCategory_D2D_redacted;
                                            if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
                                            {
                                              *valuePtr = 67109120;
                                              *&valuePtr[4] = v210;
                                              goto LABEL_386;
                                            }
                                          }

LABEL_387:
                                          v41 = 0;
                                          goto LABEL_291;
                                        }

                                        if (v209)
                                        {
                                          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *valuePtr = 0;
LABEL_390:
                                            _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "D2DInitialize succeeded", valuePtr, 2u);
                                          }
                                        }

                                        else
                                        {
                                          v207 = mDNSLogCategory_D2D_redacted;
                                          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *valuePtr = 0;
                                            goto LABEL_390;
                                          }
                                        }

                                        v41 = 0;
LABEL_291:
                                        uDNS_SetupDNSConfig();
                                        if (DPCFeatureEnabled_sOnce != -1)
                                        {
                                          dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
                                        }

                                        if (DPCFeatureEnabled_sEnabled)
                                        {
                                          bzero(&DPCBrowse, 0x2B8uLL);
                                          mDNS_StartBrowse_internal(&DPCBrowse, "\x06_local\t_dnssd-dp\x04_tcp", "\x05local", 0, 0, 0, 0, DPCBrowseHandler, 0);
                                          dword_10016256C = -1;
                                        }

                                        if (v41)
                                        {
                                          goto LABEL_180;
                                        }

                                        if (_os_feature_enabled_impl())
                                        {
                                          v173 = 31;
                                          do
                                          {
                                            mDNS_StatusCallback(mDNSStorage, -65790);
                                            --v173;
                                          }

                                          while (v173);
                                        }

                                        v174 = CFMachPortCreate(0, SignalCallback, 0, 0);
                                        v175 = CFMachPortCreateRunLoopSource(0, v174, 0);
                                        signal_port = CFMachPortGetPort(v174);
                                        v176 = CFRunLoopGetMain();
                                        CFRunLoopAddSource(v176, v175, kCFRunLoopDefaultMode);
                                        if (v175)
                                        {
                                          CFRelease(v175);
                                        }

                                        if (!init_log_utility_service_log_utility_listener)
                                        {
                                          mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder.log_utility", 0, 1uLL);
                                          init_log_utility_service_log_utility_listener = mach_service;
                                          if (mach_service && xpc_get_type(mach_service) == &_xpc_type_connection)
                                          {
                                            log_utility_server_queue = dispatch_queue_create("com.apple.mDNSResponder.log_utility_server_queue", 0);
                                            xpc_connection_set_event_handler(init_log_utility_service_log_utility_listener, &__block_literal_global_7545);
                                            xpc_connection_resume(init_log_utility_service_log_utility_listener);
                                          }

                                          else
                                          {
                                            v186 = mDNSLogCategory_XPC;
                                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == v47[435])
                                            {
                                              if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_302;
                                              }

                                              *valuePtr = 0;
                                            }

                                            else
                                            {
                                              v186 = mDNSLogCategory_XPC_redacted;
                                              if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_302;
                                              }

                                              *valuePtr = 0;
                                            }

                                            _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_ERROR, "Error Creating XPC Listener for Log Utility Server!", valuePtr, 2u);
                                          }
                                        }

LABEL_302:
                                        v177 = launch_activate_socket("Listeners", &launchd_fds, &launchd_fds_count);
                                        if (v177)
                                        {
                                          v178 = v177;
                                          v179 = mDNSLogCategory_Default;
                                          v180 = strerror(v177);
                                          LogMsgWithLevel(v179, OS_LOG_TYPE_DEFAULT, "launch_activate_socket() failed error %d (%s)", v178, v180);
                                        }

                                        v181 = launchd_fds;
                                        v182 = launchd_fds_count;
                                        memset(valuePtr, 0, 106);
                                        if (launchd_fds)
                                        {
                                          if (launchd_fds_count)
                                          {
                                            do
                                            {
                                              v184 = *v181++;
                                              v183 = v184;
                                              if ((v184 & 0x80000000) == 0 && !uds_socket_setup(v183))
                                              {
                                                goto LABEL_344;
                                              }
                                            }

                                            while (--v182);
                                          }

LABEL_322:
                                          memset(__s, 0, sizeof(__s));
                                          if (getrlimit(8, __s) < 0)
                                          {
                                            goto LABEL_334;
                                          }

                                          if (setrlimit(8, __s) < 0)
                                          {
                                            my_perror("ERROR: Unable to set maximum file descriptor limit");
                                          }

                                          if (getrlimit(8, __s) < 0)
                                          {
                                            goto LABEL_334;
                                          }

                                          v190 = vdupq_n_s64(0x2800uLL);
                                          v247 = vbslq_s8(vcgtq_u64(*__s, v190), *__s, v190);
                                          v191 = *&__s[8] >> 11 >= 5uLL && *__s >> 11 > 4uLL;
                                          if (!v191 && setrlimit(8, &v247) < 0)
                                          {
                                            my_perror("ERROR: Unable to set maximum file descriptor limit");
                                          }

                                          if (getrlimit(8, __s) < 0)
                                          {
LABEL_334:
                                            my_perror("ERROR: Unable to get file descriptor limit");
                                          }

                                          else
                                          {
                                            mDNS_GetDomains(mDNSStorage + &loc_100003494 + 4, 2, 0, -2, AutomaticBrowseDomainChange, 0);
                                            RegisterLocalOnlyDomainEnumPTR(mDNSStorage, "\x05local", 3);
                                            RegisterLocalOnlyDomainEnumPTR(mDNSStorage, "\x05local", 0);
                                            AddAutoBrowseDomain(0, "\x05local");
                                            udsserver_handle_configchange(mDNSStorage);
                                          }

                                          mDNSMacOSXNetworkChanged();
                                          UpdateDebugState();
                                          v212 = 0;
                                          v192 = pthread_create(&v212, 0, KQueueLoop, mDNSStorage);
                                          v41 = v192;
                                          if (v192)
                                          {
                                            v193 = mDNSLogCategory_Default;
                                            v194 = strerror(v192);
                                            LogMsgWithLevel(v193, OS_LOG_TYPE_DEFAULT, "pthread_create() failed error %d (%s)", v41, v194);
                                          }

LABEL_181:
                                          pthread_mutex_unlock(&stru_100164CC8);
                                          if (v41)
                                          {
                                            goto LABEL_190;
                                          }

                                          goto LABEL_182;
                                        }

                                        listenfd = socket(1, 1, 0);
                                        if (listenfd < 0)
                                        {
                                          v195 = "ERROR: socket(AF_DNSSD, SOCK_STREAM, 0); failed";
                                        }

                                        else
                                        {
                                          memset(&valuePtr[2], 0, 104);
                                          v187 = umask(0);
                                          unlink("/var/run/mDNSResponder");
                                          v188 = 0;
                                          *valuePtr = 362;
                                          while (1)
                                          {
                                            valuePtr[v188 + 2] = aVarRunMdnsresp[v188];
                                            if (v188 == 22)
                                            {
                                              break;
                                            }

                                            ++v188;
                                          }

                                          v189 = bind(listenfd, valuePtr, 0x6Au);
                                          umask(v187);
                                          if ((v189 & 0x80000000) == 0)
                                          {
                                            if (uds_socket_setup(listenfd))
                                            {
                                              goto LABEL_322;
                                            }

LABEL_344:
                                            my_perror("ERROR: udsserver_init");
                                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: udsserver_init failed");
                                            v41 = -1;
                                            goto LABEL_181;
                                          }

                                          v195 = "ERROR: bind(listenfd, (struct sockaddr *) &laddr, sizeof(laddr)); failed";
                                        }

                                        my_perror(v195);
                                        goto LABEL_344;
                                      }

                                      v160 = 72;
                                      v161 = 71;
                                      v162 = 37;
                                    }

                                    v46 = &unk_100178000;
                                    v47 = &unk_100178000;
                                    goto LABEL_351;
                                  }

                                  v160 = 83;
                                  v161 = 82;
                                }

                                v162 = 27;
                              }

                              v46 = &unk_100178000;
                              v47 = &unk_100178000;
                              goto LABEL_351;
                            }

                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: IORegisterForSystemPower failed");
                            v41 = -1;
LABEL_290:
                            v46 = &unk_100178000;
                            v47 = &unk_100178000;
                            goto LABEL_291;
                          }

                          v168 = v153;
                          v169 = mDNSLogCategory_Default;
                          v170 = *__error();
                          v171 = __error();
                          v172 = strerror(*v171);
                          LogMsgWithLevel(v169, OS_LOG_TYPE_DEFAULT, "WatchForSysEvents: SIOCSKEVFILT failed error %d errno %d (%s)", v168, v170, v172);
                          close(*(mDNSStorage[0] + 528));
                          *(mDNSStorage[0] + 528) = -1;
                          v163 = -65537;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: WatchForSysEvents failed %d", v163);
                        v41 = v163;
                        goto LABEL_290;
                      }

                      v145 = v132;
                      v146 = "SCDynamicStoreCreateRunLoopSource failed: %s";
                    }

                    else
                    {
                      v145 = v132;
                      v146 = "SCDynamicStoreSetNotificationKeys failed: %s";
                      v139 = &unk_100178000;
                    }

                    v147 = *(v139 + 434);
                    v148 = SCError();
                    v149 = SCErrorString(v148);
                    LogMsgWithLevel(v147, OS_LOG_TYPE_DEFAULT, v146, v149);
                    v132 = v145;
                  }

                  CFRelease(v132);
                }

                else
                {
                  v142 = mDNSLogCategory_Default;
                  v143 = SCError();
                  v144 = SCErrorString(v143);
                  LogMsgWithLevel(v142, OS_LOG_TYPE_DEFAULT, "SCDynamicStoreCreate failed: %s", v144);
                }

                v141 = 0;
                v150 = 0;
                if (!v137)
                {
                  goto LABEL_265;
                }

                goto LABEL_264;
              }
            }

            else
            {
              v100 = mDNSLogCategory_Default;
              v101 = *__error();
              v102 = __error();
              v103 = strerror(*v102);
              LogMsgWithLevel(v100, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_CanReceiveUnicast: socket error %d errno %d (%s)", v99, v101, v103);
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "No unicast UDP responses");
            goto LABEL_228;
          }

LABEL_401:
          __break(1u);
          return v77;
        }

LABEL_174:
        ref_count_obj_release(v82);
        goto LABEL_175;
      case 1:
        v49 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_143;
          }

          *valuePtr = 0;
          v50 = "mDNSResponder is sandboxed via com.apple.private.sandbox.profile:embedded entitlement";
        }

        else
        {
          v49 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_143;
          }

          *valuePtr = 0;
          v50 = "mDNSResponder is sandboxed via com.apple.private.sandbox.profile:embedded entitlement";
        }

        v56 = v49;
        v57 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_141;
    }

    v54 = v48;
    v55 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_143;
      }

      *valuePtr = 134217984;
      *&valuePtr[4] = v54;
      v50 = "Couldn't determine if mDNSResponder is sandboxed because of sandbox_check() error: %{mdns:err}ld";
    }

    else
    {
      v55 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_143;
      }

      *valuePtr = 134217984;
      *&valuePtr[4] = v54;
      v50 = "Couldn't determine if mDNSResponder is sandboxed because of sandbox_check() error: %{mdns:err}ld";
    }

    v56 = v55;
    v57 = OS_LOG_TYPE_FAULT;
    v58 = 12;
    goto LABEL_142;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSResponder cannot be run as root !! Exiting..");
  v41 = -1;
LABEL_191:
  LODWORD(v77) = v41;
  return v77;
}

void LogMsgWithLevel(NSObject *a1, os_log_type_t a2, char *a3, ...)
{
  va_start(va, a3);
  memset(__b, 0, sizeof(__b));
  mDNS_vsnprintf(__b, 512, a3, va);
  if (!a1)
  {
    a1 = mDNSLogCategory_Default;
  }

  if (os_log_type_enabled(a1, a2))
  {
    *buf = 136380675;
    v6 = __b;
    _os_log_impl(&_mh_execute_header, a1, a2, "%{private}s", buf, 0xCu);
  }
}

uint64_t mDNS_vsnprintf(char *__b, int a2, char *a3, int *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (a2 - 1);
  if (a2 == 1)
  {
    v7 = 0;
    goto LABEL_310;
  }

  v6 = a3;
  v7 = 0;
  v8 = *a3;
  v99 = a2 - 2;
  while (2)
  {
    if (v8 != 37)
    {
      if (!v8)
      {
        goto LABEL_310;
      }

      *__b++ = v8;
      v7 = (v7 + 1);
      if (v7 >= v5)
      {
        goto LABEL_310;
      }

      goto LABEL_224;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(v103, 0, sizeof(v103));
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = *++v6;
          v12 = *v6;
          if (v12 <= 0x2A)
          {
            break;
          }

          switch(v12)
          {
            case '+':
              v13 = 2;
              break;
            case '-':
              v13 = 1;
              break;
            case '0':
              v13 = 4;
              break;
            default:
              goto LABEL_26;
          }

          v11 |= v13;
        }

        if (v12 != 32)
        {
          break;
        }

        v9 = 32;
      }

      if (v12 != 35)
      {
        break;
      }

      ++v10;
    }

    if (v12 != 42)
    {
LABEL_26:
      if (v12 - 48 > 9)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v16 = v8 + 10 * v16 - 48;
          v17 = *++v6;
          v8 = v17;
        }

        while ((v17 - 48) < 0xA);
      }

      goto LABEL_31;
    }

    v14 = a4;
    a4 += 2;
    v15 = *v14;
    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    v11 |= v15 >> 31;
    v8 = *++v6;
LABEL_31:
    if (v8 == 46)
    {
      v18 = v6 + 1;
      v8 = v6[1];
      if (v8 == 42)
      {
        v19 = a4;
        a4 += 2;
        v20 = *v19;
        v8 = v6[2];
        v18 = v6 + 2;
      }

      else if ((v8 - 48) > 9)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v20 = v8 + 10 * v20 - 48;
          v21 = *++v18;
          v8 = v21;
        }

        while ((v21 - 48) < 0xA);
      }

      LOBYTE(v11) = v11 | 8;
      v6 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v11)
    {
      v22 = v11 & 0xFB;
    }

    else
    {
      v22 = v11;
    }

    while (1)
    {
      v23 = 32;
      if (v8 <= 104)
      {
        break;
      }

      if (v8 > 109)
      {
        if (v8 <= 114)
        {
          if (v8 == 110)
          {
            v43 = a4;
            a4 += 2;
            v44 = *v43;
            if ((v22 & 0x10) != 0)
            {
              *v44 = v7;
            }

            else if ((v22 & 0x20) != 0)
            {
              *v44 = v7;
            }

            else
            {
              *v44 = v7;
            }

            goto LABEL_225;
          }

          if (v8 == 111)
          {
            v39 = a4;
            a4 += 2;
            if ((v22 & 0x20) != 0)
            {
              v40 = *v39;
            }

            else
            {
              v40 = *v39;
            }

            if ((v22 & 0x10) != 0)
            {
              v52 = v40;
            }

            else
            {
              v52 = v40;
            }

            if ((v22 & 4) != 0)
            {
              v53 = v16;
            }

            else
            {
              v53 = v20;
            }

            if (v53 <= 1)
            {
              v53 = 1;
            }

            if ((v22 & 8) != 0)
            {
              v53 = v20;
            }

            if (v53 >= 0x12B)
            {
              v20 = 299;
            }

            else
            {
              v20 = v53;
            }

            if (v52)
            {
              v54 = -1;
              v55 = v105;
              do
              {
                v56 = v52;
                *(v55 - 2) = v52 & 7 | 0x30;
                v31 = v55 - 2;
                v57 = v54++;
                --v55;
                v58 = v52 > 7;
                v52 >>= 3;
              }

              while (v58);
              LODWORD(v28) = v57 + 2;
              if (v10 && (v56 & 7) != 0)
              {
                *(v55 - 2) = 48;
                LODWORD(v28) = v54 + 2;
                v31 = v55 - 2;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              v31 = &v104;
            }

            if (v28 >= v20)
            {
              v29 = 1;
              v8 = 111;
            }

            else
            {
              v78 = v20 + ~v28;
              v31 += ~v78;
              memset(v31, 48, v78 + 1);
              v29 = 1;
              v8 = 111;
              LODWORD(v28) = v20;
            }

            goto LABEL_180;
          }

          if (v8 != 112)
          {
            goto LABEL_133;
          }

          v22 |= 0x28u;
          v20 = 16;
LABEL_76:
          v25 = "0123456789ABCDEF";
          if ((v22 & 0x20) == 0)
          {
LABEL_77:
            v34 = a4;
            a4 += 2;
            v27 = *v34;
            goto LABEL_78;
          }

LABEL_64:
          v26 = a4;
          a4 += 2;
          v27 = *v26;
LABEL_78:
          if ((v22 & 0x10) != 0)
          {
            v27 = v27;
          }

          v35 = v16 - 2;
          if (!v10)
          {
            v35 = v16;
          }

          if ((v22 & 4) == 0)
          {
            v35 = v20;
          }

          if (v35 <= 1)
          {
            v35 = 1;
          }

          if ((v22 & 8) != 0)
          {
            v35 = v20;
          }

          if (v35 >= 0x12B)
          {
            v20 = 299;
          }

          else
          {
            v20 = v35;
          }

          LODWORD(v28) = 0;
          if (v27)
          {
            v31 = &v104;
            do
            {
              *--v31 = v25[v27 & 0xF];
              LODWORD(v28) = v28 + 1;
              v36 = v27 >= 0x10;
              v27 >>= 4;
            }

            while (v36);
          }

          else
          {
            v31 = &v104;
          }

          if (v28 < v20)
          {
            v37 = v20 + ~v28;
            v31 += ~v37;
            v38 = v10;
            memset(v31, 48, v37 + 1);
            v10 = v38;
            LODWORD(v28) = v20;
          }

          if (v10)
          {
            *(v31 - 2) = 48;
            v31 -= 2;
            v31[1] = v8;
            LODWORD(v28) = v28 + 2;
          }

          goto LABEL_179;
        }

        if (v8 != 115)
        {
          if (v8 == 117)
          {
            v41 = a4;
            a4 += 2;
            if ((v22 & 0x20) != 0)
            {
              v42 = *v41;
            }

            else
            {
              v42 = *v41;
            }

            v47 = 0;
            if ((v22 & 0x10) != 0)
            {
              v42 = v42;
            }

            v8 = 117;
            goto LABEL_161;
          }

          if (v8 != 120)
          {
            goto LABEL_133;
          }

          v25 = "0123456789abcdef";
          if ((v22 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_64;
        }

        v45 = a4;
        a4 += 2;
        v31 = *v45;
        if (!*v45)
        {
          LODWORD(v28) = 8;
          v31 = "<<NULL>>";
          goto LABEL_290;
        }

        if (v10)
        {
          if (v10 == 1)
          {
            v80 = *v31++;
            LODWORD(v28) = v80;
            goto LABEL_290;
          }

          if (v10 == 2)
          {
            if (*v31)
            {
              v28 = v103;
              goto LABEL_278;
            }

            v103[0] = 46;
            v28 = &v103[1];
            if (*v31)
            {
              while (1)
              {
LABEL_278:
                memset(v102, 0, 253);
                if (*v31 >= 0x40u)
                {
                  v95 = mDNS_snprintf(v28, &v104 - v28, "<<INVALID LABEL LENGTH %u>>");
                  goto LABEL_288;
                }

                if (&v28[*v31] >= &v103[254])
                {
                  break;
                }

                ConvertDomainLabelToCString_withescape(v31, v102, 92);
                v28 += mDNS_snprintf(v28, &v104 - v28, "%s.", v102);
                v93 = &v31[*v31];
                v94 = v93[1];
                v31 = v93 + 1;
                if (!v94)
                {
                  goto LABEL_289;
                }
              }

              v95 = mDNS_snprintf(v28, &v104 - v28, "<<NAME TOO LONG>>");
LABEL_288:
              LODWORD(v28) = v28 + v95;
            }

LABEL_289:
            v31 = v103;
            LODWORD(v28) = v28 - v103;
LABEL_290:
            v29 = 1;
            v8 = 115;
            if ((v22 & 8) == 0 || v28 <= v20)
            {
              goto LABEL_180;
            }

            if (!v20)
            {
              LODWORD(v28) = 0;
              goto LABEL_180;
            }

            LODWORD(v28) = v20;
            while ((v31[v28] & 0xC0) == 0x80)
            {
              v29 = 1;
              v8 = 115;
              LODWORD(v28) = v28 - 1;
              if (!v28)
              {
                goto LABEL_180;
              }
            }
          }

          else
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          if ((v22 & 8) == 0)
          {
            LODWORD(v28) = -1;
            do
            {
              LODWORD(v28) = v28 + 1;
            }

            while (v31[v28]);
            goto LABEL_290;
          }

          if (v20)
          {
            v92 = 0;
            while (v31[v92])
            {
              if (v20 == ++v92)
              {
                LODWORD(v92) = v20;
                break;
              }
            }
          }

          else
          {
            LODWORD(v92) = 0;
          }

          v28 = v92;
          while (v28)
          {
            v96 = v28--;
            v97 = v96[v31 - 1];
            if ((v97 & 0xFFFFFFC0) != 0xFFFFFF80)
            {
              if (v97 < 0xFFFFFFC0)
              {
                LODWORD(v28) = v96;
              }

              else if ((v92 - v28) <= 6 && (v97 >> (7 - (v92 - v28))) == 254)
              {
                LODWORD(v28) = v92;
              }

              goto LABEL_290;
            }
          }
        }

        v29 = 1;
        v8 = 115;
        goto LABEL_180;
      }

      if (v8 != 108)
      {
        if (v8 != 105)
        {
          goto LABEL_133;
        }

        goto LABEL_73;
      }

LABEL_54:
      v22 |= v23;
      v24 = *++v6;
      v8 = v24;
    }

    if (v8 > 96)
    {
      if (v8 <= 103)
      {
        if (v8 != 97)
        {
          if (v8 == 99)
          {
            v46 = a4;
            a4 += 2;
            v103[299] = *v46;
            LODWORD(v28) = 1;
            v31 = &v103[299];
            goto LABEL_179;
          }

          if (v8 != 100)
          {
LABEL_133:
            if ((v8 - 32) >= 0x5F)
            {
              v51 = 32;
            }

            else
            {
              v51 = v8;
            }

            v31 = v103;
            LODWORD(v28) = mDNS_snprintf(v103, 300, "<<UNKNOWN FORMAT CONVERSION CODE %%%c>>", v51);
            goto LABEL_179;
          }

LABEL_73:
          v32 = a4;
          a4 += 2;
          if ((v22 & 0x20) != 0)
          {
            v33 = *v32;
          }

          else
          {
            v33 = *v32;
          }

          if ((v22 & 0x10) != 0)
          {
            v33 = v33;
          }

          if ((v22 & 2) != 0)
          {
            v9 = 43;
          }

          if (v33 < 0)
          {
            v47 = 45;
          }

          else
          {
            v47 = v9;
          }

          if (v33 >= 0)
          {
            v42 = v33;
          }

          else
          {
            v42 = -v33;
          }

LABEL_161:
          v59 = v16 - (v47 != 0);
          if ((v22 & 4) == 0)
          {
            v59 = v20;
          }

          if (v59 <= 1)
          {
            v59 = 1;
          }

          if ((v22 & 8) != 0)
          {
            v59 = v20;
          }

          if (v59 >= 0x12B)
          {
            v20 = 299;
          }

          else
          {
            v20 = v59;
          }

          LODWORD(v28) = 0;
          if (v42)
          {
            v31 = &v104;
            do
            {
              *--v31 = (v42 % 0xA) | 0x30;
              LODWORD(v28) = v28 + 1;
              v36 = v42 >= 0xA;
              v42 /= 0xAuLL;
            }

            while (v36);
          }

          else
          {
            v31 = &v104;
          }

          if (v28 < v20)
          {
            v60 = v20 + ~v28;
            v31 += ~v60;
            v61 = v47;
            memset(v31, 48, v60 + 1);
            v47 = v61;
            LODWORD(v28) = v20;
          }

          if (v47)
          {
            *--v31 = v47;
            LODWORD(v28) = v28 + 1;
          }

LABEL_179:
          v29 = 1;
LABEL_180:
          if (v28 < v16 && (v22 & 1) == 0)
          {
            LODWORD(v62) = v16 + ~v28;
            if (v5 <= v7 + 1)
            {
              v63 = v7 + 1;
            }

            else
            {
              v63 = v5;
            }

            v100 = v20;
            v64 = v22;
            v65 = v5;
            v66 = v29;
            v67 = v63 + ~v7;
            if (v62 >= v67)
            {
              v62 = v67;
            }

            else
            {
              v62 = v62;
            }

            memset(__b, 32, v62 + 1);
            v29 = v66;
            v5 = v65;
            v22 = v64;
            v20 = v100;
            do
            {
              ++__b;
              v7 = (v7 + 1);
              if (v7 >= v5)
              {
                goto LABEL_310;
              }
            }

            while (v28 < --v16);
          }

          v68 = v5 - v7;
          if (v29)
          {
            if (v28 <= v68)
            {
              if (v28)
              {
                goto LABEL_214;
              }

              v68 = 0;
            }

            else if (v68)
            {
              while ((v31[v68] & 0xC0) == 0x80)
              {
                if (!--v68)
                {
                  goto LABEL_216;
                }
              }

              LODWORD(v28) = v68;
LABEL_214:
              v73 = 0;
              v68 = v28;
              do
              {
                *__b++ = v31[v73++];
              }

              while (v28 != v73);
            }
          }

          else
          {
            v69 = __b;
            if ((v22 & 8) != 0)
            {
              v69 = __b;
              if (v20)
              {
                v70 = &__b[v68];
                v69 = __b;
                if (__b < v70)
                {
                  v71 = 0;
                  v69 = __b;
                  do
                  {
                    v72 = v31[v71];
                    if (v71)
                    {
                      *v69++ = 32;
                    }

                    if (v69 < v70)
                    {
                      *v69++ = a0123456789abcd[v72 >> 4];
                    }

                    if (v69 < v70)
                    {
                      *v69++ = a0123456789abcd[v72 & 0xF];
                    }

                    ++v71;
                  }

                  while (v71 < v20 && v69 < v70);
                }
              }
            }

            v68 = v69 - __b;
            __b = v69;
          }

LABEL_216:
          v7 = v68 + v7;
          if (v7 >= v5)
          {
            goto LABEL_310;
          }

          v74 = v16 - v68;
          if (v16 > v68)
          {
            LODWORD(v75) = v16 + ~v68;
            if (v75 >= v99 - v7)
            {
              v75 = (v99 - v7);
            }

            else
            {
              v75 = v75;
            }

            memset(__b, 32, v75 + 1);
            do
            {
              ++__b;
              v7 = (v7 + 1);
              if (v7 >= v5)
              {
                goto LABEL_310;
              }
            }

            while (--v74);
          }

LABEL_224:
          v76 = v8;
          v8 = 0;
          if (v76)
          {
LABEL_225:
            v77 = *++v6;
            v8 = v77;
          }

          continue;
        }

        v48 = a4;
        a4 += 2;
        v49 = *v48;
        if (!v49)
        {
          v29 = 1;
          LODWORD(v28) = 8;
          v8 = 97;
          v31 = "<<NULL>>";
          goto LABEL_180;
        }

        if (v10)
        {
          v50 = *v49;
          if (!*v49)
          {
            v31 = v103;
            v91 = mDNS_snprintf(v103, 300, "<<UNSPECIFIED IP ADDRESS>>");
            goto LABEL_271;
          }

          if (v50 != 6)
          {
            if (v50 == 4)
            {
              v49 += 4;
LABEL_245:
              v31 = v103;
              LODWORD(v28) = mDNS_snprintf(v103, 300, "%d.%d.%d.%d", *v49, v49[1], v49[2], v49[3]);
              v29 = 1;
              v20 = 4;
              v8 = 97;
              goto LABEL_180;
            }

            v31 = v103;
            v91 = mDNS_snprintf(v103, 300, "<<ERROR: %%#a used with unsupported type: %d>>");
LABEL_271:
            LODWORD(v28) = v91;
            v20 = 0;
LABEL_284:
            v29 = 1;
LABEL_285:
            v8 = 97;
            goto LABEL_180;
          }

          v49 += 4;
LABEL_247:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = v49 + 1;
          v87 = 7;
          while (1)
          {
            if (__rev16(*(v86 - 1)))
            {
              if (v87 <= v83)
              {
                goto LABEL_257;
              }

              v85 = 0;
            }

            else
            {
              if (!v85)
              {
                v84 = v81;
              }

              if (v85 + 1 > v83)
              {
                v83 = v85 + 1;
                v82 = v84;
              }

              ++v85;
            }

            v86 += 2;
            --v87;
            ++v81;
            if (v87 == -1)
            {
LABEL_257:
              v88 = 7;
              v31 = &v104;
              while (1)
              {
                if (v83 >= 2 && v83 + v82 - 1 == v88)
                {
                  if (v83 + v82 == 8)
                  {
                    *--v31 = 58;
                  }

                  --v31;
                  v88 = v82;
                }

                else
                {
                  v89 = v49[2 * v88 + 1] | (v49[2 * v88] << 8);
                  do
                  {
                    v90 = v31;
                    *--v31 = a0123456789abcd[v89 & 0xF];
                    v58 = v89 > 0xF;
                    v89 >>= 4;
                  }

                  while (v58);
                  if (!v88)
                  {
LABEL_268:
                    LODWORD(v28) = &v104 - v31;
                    v29 = 1;
                    v20 = 16;
                    goto LABEL_285;
                  }

                  v31 = v90 - 2;
                }

                *v31 = 58;
                if (--v88 < 0)
                {
                  goto LABEL_268;
                }
              }
            }
          }
        }

        switch(v20)
        {
          case 4u:
            goto LABEL_245;
          case 6u:
            v31 = v103;
            v79 = mDNS_snprintf(v103, 300, "%02X:%02X:%02X:%02X:%02X:%02X", *v49);
            break;
          case 0x10u:
            goto LABEL_247;
          default:
            v31 = v103;
            v79 = mDNS_snprintf(v103, 300, "%s");
            break;
        }

        LODWORD(v28) = v79;
        goto LABEL_284;
      }

      v23 = 16;
      goto LABEL_54;
    }

    break;
  }

  if (v8 > 75)
  {
    if (v8 != 76)
    {
      if (v8 != 88)
      {
        goto LABEL_133;
      }

      goto LABEL_76;
    }

    goto LABEL_54;
  }

  if (v8 != 37)
  {
    if (v8 != 72)
    {
      goto LABEL_133;
    }

    LODWORD(v28) = 0;
    v29 = 0;
    v30 = a4;
    a4 += 2;
    v31 = *v30;
    goto LABEL_180;
  }

  *__b++ = 37;
  v7 = (v7 + 1);
  if (v7 < v5)
  {
    LODWORD(v28) = 0;
    v29 = 1;
    v31 = &v104;
    goto LABEL_180;
  }

LABEL_310:
  *__b = 0;
  return v7;
}

uint64_t KQueueSet(int a1, uint16_t a2, int16_t a3, void *a4)
{
  v6.ident = a1;
  v6.filter = a3;
  v6.flags = a2;
  v6.fflags = 0;
  v6.data = 0;
  v6.udata = a4;
  v4 = kevent(KQueueFD, &v6, 1, 0, 0, 0);
  result = 0;
  if (v4 < 0)
  {
    return *__error();
  }

  return result;
}

void mDNSMacOSXSystemBuildNumber(char *a1)
{
  v9 = 0;
  v8 = 0;
  buffer[0] = *"<Unknown>";
  memset(&buffer[1], 0, 240);
  v26[0] = *"<Unknown>";
  memset(&v26[1], 0, 240);
  v22 = xmmword_10010D82C;
  v23 = unk_10010D83C;
  v24 = xmmword_10010D84C;
  v25 = unk_10010D85C;
  v18 = xmmword_10010D7EC;
  v19 = unk_10010D7FC;
  v20 = xmmword_10010D80C;
  v21 = unk_10010D81C;
  v14 = xmmword_10010D7AC;
  v15 = unk_10010D7BC;
  v16 = xmmword_10010D7CC;
  v17 = unk_10010D7DC;
  *v10 = *"<Unknown>";
  v11 = unk_10010D77C;
  v12 = xmmword_10010D78C;
  v13 = unk_10010D79C;
  v2 = _CFCopySystemVersionDictionary();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, _kCFSystemVersionProductNameKey);
  v5 = CFDictionaryGetValue(v3, _kCFSystemVersionProductVersionKey);
  v6 = CFDictionaryGetValue(v3, _kCFSystemVersionBuildVersionKey);
  if (Value)
  {
    CFStringGetCString(Value, buffer, 256, 0x8000100u);
  }

  if (v5)
  {
    CFStringGetCString(v5, v26, 256, 0x8000100u);
  }

  if (v6 && CFStringGetCString(v6, v10, 256, 0x8000100u))
  {
    sscanf(v10, "%d%c%d", &v9 + 4, &v8, &v9);
  }

  CFRelease(v3);
  if (!HIDWORD(v9))
  {
LABEL_10:
    HIDWORD(v9) = 13;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: No Major Build Version number found; assuming 13");
  }

  if (a1)
  {
    mDNS_snprintf(a1, 256, "%s %s (%s), %s", buffer, v26, v10, "mDNSResponder-2881.40.18");
  }

  if ((buffer[0] & 0xDF) == 0x4D)
  {
    v7 = &OSXVers;
  }

  else
  {
    v7 = &iOSVers;
  }

  *v7 = HIDWORD(v9);
}

uint64_t mDNSPlatformRawTime()
{
  if (mDNSPlatformClockDivisor)
  {
    v0 = mach_absolute_time();
    if ((v0 - mDNSPlatformRawTime_last_mach_absolute_time) < 0)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime: last_mach_absolute_time %08X%08X", mDNSPlatformRawTime_last_mach_absolute_time, v2);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime: this_mach_absolute_time %08X%08X", v0, v3);
      mDNSPlatformRawTime_last_mach_absolute_time = v0;
      NotifyOfElusiveBug("mach_absolute_time went backwards!", "This error occurs from time to time, often on newly released hardware, and usually the exact cause is different in each instance.\r\rPlease file a new Radar bug report with the title “mach_absolute_time went backwards” and assign it to Radar Component “Kernel” Version “X”.");
    }

    mDNSPlatformRawTime_last_mach_absolute_time = v0;
    return v0 / mDNSPlatformClockDivisor;
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime called before mDNSPlatformTimeInit");
    return 0;
  }
}

void GetUserSpecifiedLocalHostName(_BYTE *a1)
{
  v2 = SCDynamicStoreCopyLocalHostName(0);
  if (v2)
  {
    v3 = v2;
    mDNSDomainLabelFromCFString(v2, a1);

    CFRelease(v3);
  }
}

uint64_t SetupSocket(uint64_t a1, uint64_t a2, int a3, _WORD *a4)
{
  if (a3 == 2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 48;
  }

  v60 = 255;
  v61 = 1;
  if (a3 == 2)
  {
    v9 = 24;
  }

  else
  {
    v9 = 56;
  }

  v59 = 0;
  *(a1 + 80) = 0;
  v10 = socket(a3, 2, 17);
  v11 = v10;
  if ((v10 & 0x80000000) == 0)
  {
    *v62 = 900;
    setsockopt(v10, 0xFFFF, 4230, v62, 4u);
    if (a2 == 59668)
    {
      v12 = setsockopt(v11, 0xFFFF, 4356, &v61, 4u);
      if (v12 < 0)
      {
        v24 = v12;
        v25 = "setsockopt - SO_RECV_ANYIF";
        goto LABEL_77;
      }

      v13 = setsockopt(v11, 0xFFFF, 512, &v61, 4u);
      if ((v13 & 0x80000000) == 0)
      {
        *v62 = 1;
        if (setsockopt(v11, 0xFFFF, 0x10000, v62, 4u) == -1 && mDNS_LoggingEnabled)
        {
          v14 = mDNSLogCategory_Default;
          v15 = __error();
          v16 = strerror(*v15);
          LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "SetupSocket: SO_NOWAKEFROMSLEEP failed %s", v16);
        }

        *v62 = xmmword_10010D380;
        if (!setsockopt(v11, 0xFFFF, 4360, v62, 0x10u))
        {
          goto LABEL_28;
        }

        v17 = *__error();
        v18 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_27:
            v26 = strerror(v17);
            *buf = 136446210;
            v65 = v26;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SetupSocket: Attributing mDNS traffic to com.apple.datausage.dns.multicast failed: %{public}s", buf, 0xCu);
          }
        }

        else
        {
          v18 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }
        }

LABEL_28:
        v23 = 0;
LABEL_29:
        if (!setsockopt(v11, 0xFFFF, 0x40000, &v61, 4u))
        {
          goto LABEL_36;
        }

        v27 = *__error();
        v28 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }
        }

        v29 = strerror(v27);
        *v62 = 136446210;
        *&v62[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SetupSocket: setting SO_TIMESTAMP_CONTINUOUS failed: %{public}s", v62, 0xCu);
LABEL_36:
        if (a3 == 2)
        {
          v30 = setsockopt(v11, 0, 7, &v61, 4u);
          if (v30 < 0)
          {
            v24 = v30;
            v25 = "setsockopt - IP_RECVDSTADDR";
          }

          else
          {
            v31 = setsockopt(v11, 0, 20, &v61, 4u);
            if (v31 < 0)
            {
              v24 = v31;
              v25 = "setsockopt - IP_RECVIF";
            }

            else
            {
              v32 = setsockopt(v11, 0, 24, &v61, 4u);
              if (v32 < 0)
              {
                v24 = v32;
                v25 = "setsockopt - IP_RECVTTL";
              }

              else
              {
                v33 = setsockopt(v11, 0, 4, &v60, 4u);
                if (v33 < 0)
                {
                  v24 = v33;
                  v25 = "setsockopt - IP_TTL";
                }

                else
                {
                  v34 = setsockopt(v11, 0, 10, &v60, 4u);
                  if ((v34 & 0x80000000) == 0)
                  {
                    *v62 = 512;
                    *&v62[8] = 0;
                    *&v62[2] = a2;
                    if (v23)
                    {
                      v35 = 16777440;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    *&v62[4] = v35;
                    v36 = v11;
                    v37 = 16;
LABEL_46:
                    v38 = bind(v36, v62, v37);
                    if (v38)
                    {
                      v24 = v38;
                      v25 = "bind";
                      goto LABEL_77;
                    }

                    if (a4)
                    {
                      *a4 = *&v62[2];
                    }

                    goto LABEL_71;
                  }

                  v24 = v34;
                  v25 = "setsockopt - IP_MULTICAST_TTL";
                }
              }
            }
          }
        }

        else
        {
          if (a3 != 30)
          {
LABEL_71:
            v51 = (a1 + v9);
            v52 = fcntl(v11, 3, 0);
            fcntl(v11, 4, v52 | 4u);
            fcntl(v11, 2, 1);
            *(a1 + v8) = v11;
            *v51 = myKQSocketCallBack;
            v51[1] = a1;
            v51[2] = "UDP packet reception";
            KQueueSet(v11, 1u, -1, (a1 + v9));
            return 0;
          }

          if (v23)
          {
            if (a4)
            {
              *a4 = 0;
            }

            close(v11);
            return 0;
          }

          v39 = setsockopt(v11, 41, 61, &v61, 4u);
          if (v39 < 0)
          {
            v24 = v39;
            v25 = "setsockopt - IPV6_RECVPKTINFO";
          }

          else
          {
            v40 = setsockopt(v11, 41, 37, &v61, 4u);
            if (v40 < 0)
            {
              v24 = v40;
              v25 = "setsockopt - IPV6_RECVHOPLIMIT";
            }

            else
            {
              v41 = setsockopt(v11, 41, 27, &v61, 4u);
              if (v41 < 0)
              {
                v24 = v41;
                v25 = "setsockopt - IPV6_V6ONLY";
              }

              else
              {
                v42 = setsockopt(v11, 41, 4, &v60, 4u);
                if (v42 < 0)
                {
                  v24 = v42;
                  v25 = "setsockopt - IPV6_UNICAST_HOPS";
                }

                else
                {
                  v43 = setsockopt(v11, 41, 10, &v60, 4u);
                  if (v43 < 0)
                  {
                    v24 = v43;
                    v25 = "setsockopt - IPV6_MULTICAST_HOPS";
                  }

                  else
                  {
                    v44 = setsockopt(v11, 41, 11, &v61, 4u);
                    if ((v44 & 0x80000000) == 0)
                    {
                      v45 = setsockopt(v11, 41, 42, &v59, 4u);
                      if (v45 < 0)
                      {
                        v46 = v45;
                        v47 = mDNSLogCategory_Default;
                        v48 = *__error();
                        v49 = __error();
                        v50 = strerror(*v49);
                        LogMsgWithLevel(v47, OS_LOG_TYPE_DEFAULT, "SetupSocket: setsockopt - IPV6_USE_MIN_MTU: IP6PO_MINMTU_DISABLE socket %d err %d errno %d (%s)", v11, v46, v48, v50);
                      }

                      *v62 = 7708;
                      *&v62[2] = a2;
                      *&v62[4] = 0;
                      *&v62[8] = in6addr_any;
                      v63 = 0;
                      v36 = v11;
                      v37 = 28;
                      goto LABEL_46;
                    }

                    v24 = v44;
                    v25 = "setsockopt - IPV6_MULTICAST_LOOP";
                  }
                }
              }
            }
          }
        }

LABEL_77:
        v53 = *__error();
        if (strcmp(v25, "bind") || !a2 || a2 == 59668)
        {
          v54 = mDNSLogCategory_Default;
          v55 = strerror(v53);
          LogMsgWithLevel(v54, OS_LOG_TYPE_DEFAULT, "%s skt %d port %d error %d errno %d (%s)", v25, v11, bswap32(a2) >> 16, v24, v53, v55);
        }

        v56 = strcmp(v25, "bind") == 0 && v53 == 48;
        if (v56)
        {
          v57 = 48;
        }

        else
        {
          v57 = v24;
        }

        if (a2 == 59668 && v56)
        {
          NotifyOfElusiveBug("Setsockopt SO_REUSEPORT failed", "Congratulations, you've reproduced an elusive bug.\rPlease contact the current assignee of <rdar://problem/3814904>.\rAlternatively, you can send email to radar-3387020@group.apple.com. (Note number is different.)\rIf possible, please leave your machine undisturbed so that someone can come to investigate the problem.");
          v57 = 48;
        }

        close(v11);
        return v57;
      }
    }

    else
    {
      if (a2 != 58900)
      {
        goto LABEL_28;
      }

      v13 = setsockopt(v11, 0xFFFF, 512, &v61, 4u);
      if ((v13 & 0x80000000) == 0)
      {
        v23 = 1;
        goto LABEL_29;
      }
    }

    v24 = v13;
    v25 = "setsockopt - SO_REUSEPORT";
    goto LABEL_77;
  }

  if (*__error() != 47)
  {
    v19 = mDNSLogCategory_Default;
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "SetupSocket: socket error %d errno %d (%s)", v11, v20, v22);
  }

  return v11;
}

void SystemWakeForNetworkAccess()
{
  v0 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v1 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = 0;
    v2 = &v5;
    goto LABEL_10;
  }

  v0 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEBUG))
  {
    v4 = 0;
    v2 = &v4;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "SystemWakeForNetworkAccess: compile-time disabled", v2, 2u);
  }
}

__n128 UpdateInterfaceList(int a1)
{
  v1 = myGetIfAddrs_ifa;
  if (!myGetIfAddrs_ifa)
  {
    getifaddrs(&myGetIfAddrs_ifa);
    v1 = myGetIfAddrs_ifa;
  }

  memset(v182, 0, sizeof(v182));
  v2 = socket(30, 2, 0);
  v3 = &unk_100178000;
  if ((v2 & 0x80000000) != 0 && *__error() != 47)
  {
    v4 = mDNSLogCategory_Default;
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: InfoSocket error %d errno %d (%s)", v2, v5, v7);
  }

  if (BYTE1(dword_10016D2A4) != 2 && v1 != 0)
  {
    v174 = v2;
    do
    {
      if (!*(v1 + 24))
      {
        goto LABEL_96;
      }

      v12 = *(v1 + 8);
      if (*v12 == 108 && v12[1] == 108 && v12[2] == 119)
      {
        v13 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
        {
          nameEncoding[0] = 136446210;
          *&nameEncoding[1] = v12;
          v14 = v13;
          v15 = "isExcludedInterface: excluding %{public}s";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, nameEncoding, 0xCu);
        }
      }

      else
      {
        if ((v2 & 0x80000000) != 0)
        {
          v19 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
          {
            nameEncoding[0] = 67109120;
            nameEncoding[1] = v2;
            v20 = v19;
            v21 = "isExcludedInterface: invalid socket FD passed: %d";
            goto LABEL_36;
          }

LABEL_37:
          v25 = *(v1 + 24);
          if (*(v25 + 1) == 18)
          {
            if (*(v25 + 4) == 6)
            {
              v26 = *(v25 + 6) == 6 && dword_10016D230 == 0;
              v27 = v26 && HIWORD(dword_10016D230) == 0;
              if (v27 && word_10016D234 == 0)
              {
                v29 = v25 + *(v25 + 5);
                v30 = *(v29 + 8);
                word_10016D234 = *(v29 + 12);
                dword_10016D230 = v30;
              }
            }

            if ((getExtendedFlags(*(v1 + 8)) & 0x100000) != 0 && (!AWDLInterfaceID || !WiFiAwareInterfaceID))
            {
              *nameEncoding = @"IOInterfaceName";
              *&values = 0;
              *&values = CFStringCreateWithCString(kCFAllocatorDefault, *(v1 + 8), 0x8000100u);
              *v185 = 0;
              *v185 = CFDictionaryCreate(kCFAllocatorDefault, nameEncoding, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              *nameEncoding = @"IOPropertyMatch";
              v31 = CFDictionaryCreate(kCFAllocatorDefault, nameEncoding, v185, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v31);
              if (values)
              {
                CFRelease(values);
                *&values = 0;
              }

              if (*v185)
              {
                CFRelease(*v185);
                *v185 = 0;
              }

              v2 = v174;
              if (MatchingService)
              {
                CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IO80211VirtualInterfaceRole", kCFAllocatorDefault, 0);
                if (CFProperty)
                {
                  v34 = CFProperty;
                  v35 = CFGetTypeID(CFProperty);
                  if (v35 == CFStringGetTypeID())
                  {
                    if (!AWDLInterfaceID && CFStringCompare(v34, @"AirLink", 0) == kCFCompareEqualTo)
                    {
                      v171 = *(v25 + 2);
                      AWDLInterfaceID = v171;
                      v36 = *(v3 + 434);
                      if (!mDNS_SensitiveLoggingEnableCount || v36 == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(*(v3 + 434), OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v36 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_68:
                          *buf = 134217984;
                          *&buf[4] = v171;
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: AWDLInterfaceID = %lu", buf, 0xCu);
                        }
                      }
                    }

                    if (!WiFiAwareInterfaceID && CFStringCompare(v34, @"WiFi-Aware Discovery+Data", 0) == kCFCompareEqualTo)
                    {
                      v37 = *(v25 + 2);
                      WiFiAwareInterfaceID = v37;
                      v38 = *(v3 + 434);
                      if (!mDNS_SensitiveLoggingEnableCount || v38 == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(*(v3 + 434), OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v38 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_76:
                          *buf = 134217984;
                          *&buf[4] = v37;
                          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: WiFiAwareInstanceID = %lu", buf, 0xCu);
                        }
                      }
                    }
                  }

                  CFRelease(v34);
                }

                IOObjectRelease(MatchingService);
              }
            }
          }

          if ((*(v1 + 16) & 1) == 0)
          {
            goto LABEL_96;
          }

          v39 = *(v1 + 24);
          v40 = *(v39 + 1);
          if (v40 != 30 && v40 != 2)
          {
            goto LABEL_96;
          }

          v42 = *(v1 + 32);
          if (v42)
          {
            v43 = *(v42 + 1);
            if (v43 == v40 || !v43)
            {
              if (if_nametoindex(*(v1 + 8)) <= 0)
              {
                v49 = *(v3 + 434);
                if_nametoindex(*(v1 + 8));
                LogMsgWithLevel(v49, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: if_nametoindex returned zero/negative value for %5s(%d)");
              }

              else
              {
                v46 = *(v1 + 24);
                v47 = *(v1 + 32);
                v48 = *(v46 + 1);
                *(v47 + 1) = v48;
                if (v48 != 30)
                {
                  if (v48 == 2 && *(v47 + 4) == -1)
                  {
                    goto LABEL_96;
                  }

LABEL_109:
                  v172 = if_nametoindex(*(v1 + 8));
                  v56 = *(v1 + 8);
                  *&buf[4] = 0;
                  *buf = 0;
                  v57 = CFStringCreateWithFormat(0, 0, @"State:/Network/Interface/%s/AirPort", v56);
                  if (v57)
                  {
                    v58 = v57;
                    v59 = SCDynamicStoreCopyValue(0, v57);
                    if (v59)
                    {
                      v60 = v59;
                      Value = CFDictionaryGetValue(v59, @"BSSID");
                      if (Value)
                      {
                        v62 = Value;
                        if (CFDataGetLength(Value) == 6)
                        {
                          v186.location = 0;
                          v186.length = 6;
                          CFDataGetBytes(v62, v186, buf);
                        }
                      }

                      CFRelease(v60);
                    }

                    CFRelease(v58);
                  }

                  v63 = *&buf[4];
                  v64 = *buf;
                  ExtendedFlags = getExtendedFlags(*(v1 + 8));
                  memset(nameEncoding, 0, sizeof(nameEncoding));
                  LODWORD(v176) = 0;
                  values = 0uLL;
                  v184 = 0;
                  if (SetupAddr(nameEncoding, *(v1 + 24)) || SetupAddr(&values, *(v1 + 32)))
                  {
                    goto LABEL_298;
                  }

                  v66 = v64 | (v63 << 32);
                  v168 = ExtendedFlags;
                  v169 = v66 >> 16;
                  v67 = mDNSStorage[0];
                  v68 = *mDNSStorage[0];
                  if (*mDNSStorage[0])
                  {
                    v69 = HIDWORD(v66);
                    v70 = v172;
                    while (1)
                    {
                      if (v70 == *(v68 + 3720))
                      {
                        v71 = mDNSSameAddress(nameEncoding, (v68 + 3560));
                        v70 = v172;
                        if (v71 && *(v68 + 3724) == v64 && *(v68 + 3726) == v169 && v69 == *(v68 + 3728))
                        {
                          break;
                        }
                      }

                      v67 = v68 + 3680;
                      v68 = *(v68 + 3680);
                      if (!v68)
                      {
                        goto LABEL_126;
                      }
                    }

                    if (*(v68 + 3696))
                    {
                      v124 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_253;
                        }
                      }

                      else
                      {
                        v124 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_253:
                          v132 = *(v1 + 8);
                          *buf = 136446979;
                          *&buf[4] = v132;
                          *&buf[12] = 2160;
                          *&buf[14] = 1752392040;
                          *&buf[22] = 1045;
                          *&buf[24] = 20;
                          *&buf[28] = 2101;
                          *&buf[30] = nameEncoding;
                          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to re-add interface (%{public}s, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P) already marked as existing", buf, 0x26u);
                        }
                      }

LABEL_298:
                      v3 = &unk_100178000;
                      goto LABEL_96;
                    }

                    v125 = *(v1 + 8);
                    if (!v125)
                    {
                      goto LABEL_328;
                    }

                    v126 = (v68 + 3606);
                    v127 = 64;
                    while (1)
                    {
                      v128 = *v125;
                      *v126 = v128;
                      if (!v128)
                      {
                        break;
                      }

                      ++v126;
                      ++v125;
                      if (--v127 <= 1)
                      {
                        *v126 = 0;
                        break;
                      }
                    }

                    v129 = *v67;
                    v130 = *(*(*v67 + 3688) + 120);
                    if (*(*(*v67 + 3688) + 120))
                    {
                      v131 = *(v129 + 3712);
                      if ((v131 & 0x8000) != 0)
                      {
                        if ((v131 & 0x10) == 0 || (v130 = *(v129 + 3778), *(v129 + 3778)))
                        {
                          v130 = 1;
                        }
                      }

                      else
                      {
                        v130 = 0;
                      }
                    }

                    if (*(v129 + 3671) == v130)
                    {
                      v133 = 1;
                    }

                    else
                    {
                      *(v129 + 3671) = v130;
                      v133 = 2;
                    }

                    *(v129 + 3696) = v133;
                    if (*(v129 + 3744) == 3)
                    {
                      v134 = util_is_managed_network(v129 + 3606);
                      v129 = *v67;
                    }

                    else
                    {
                      v134 = 0;
                    }

                    if (*(v129 + 3777) != v134)
                    {
                      v135 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_269;
                        }
                      }

                      else
                      {
                        v135 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                        {
LABEL_269:
                          v136 = *(v129 + 3552);
                          *buf = 136446722;
                          *&buf[4] = v129 + 3606;
                          *&buf[12] = 1024;
                          *&buf[14] = v136;
                          *&buf[18] = 1024;
                          *&buf[20] = v134;
                          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEBUG, "AddInterfaceToList: Updating for privacy risk -- ifname: %{public}s, ifid: %d, risk: %{mdns:yesno}d", buf, 0x18u);
                        }
                      }

                      v129 = *v67;
                      *(v129 + 3777) = v134;
                      *(v129 + 3696) = 2;
                    }

                    if (*(v129 + 3704) != a1)
                    {
                      *(v129 + 3700) = a1;
                    }

                    v137 = NetWakeInterface(v129);
                    v138 = *v67;
                    if (*(*v67 + 3672) == v137)
                    {
                      v139 = v168;
                    }

                    else
                    {
                      *(v138 + 3672) = v137;
                      v139 = v168;
                      if (*(v138 + 3768))
                      {
                        mDNS_Lock_(mDNSStorage, "AddInterfaceToList", 3984);
                        mDNS_Unlock_(mDNSStorage, "AddInterfaceToList", 3987);
                        v138 = *v67;
                      }
                    }

                    *(v138 + 3674) = (v139 & 0x800) == 0;
                    if (*(v138 + 3671) && !*(v138 + 3673) && *(v138 + 3748) == 3 && !*(v138 + 8))
                    {
                      *(*v67 + 8) = mdns_multicast_delay_histogram_create();
                    }

                    goto LABEL_298;
                  }

LABEL_126:
                  v72 = malloc_type_calloc(1uLL, 0xEC8uLL, 0xE3BF5675uLL);
                  if (!v72 || (v73 = v72, v74 = v172, *(v72 + 444) = v172, *(v72 + 894) = v176, *(v72 + 3560) = *nameEncoding, *(v72 + 899) = v184, *(v72 + 3580) = values, (v75 = *(v1 + 8)) == 0))
                  {
LABEL_328:
                    __break(1u);
                  }

                  v76 = v72 + 3606;
                  v77 = 64;
                  v78 = v72 + 3606;
                  while (1)
                  {
                    v79 = *v75;
                    *v78 = v79;
                    if (!v79)
                    {
                      break;
                    }

                    ++v78;
                    ++v75;
                    if (--v77 <= 1)
                    {
                      *v78 = 0;
                      break;
                    }
                  }

                  v72[3669] = 0;
                  if (byte_10016D226)
                  {
                    v80 = (*(v1 + 16) >> 3) & 1;
                    v81 = v80;
                  }

                  else
                  {
                    v81 = byte_10016D225[0];
                    v80 = (*(v1 + 16) >> 3) & 1;
                  }

                  v72[3670] = v81;
                  v72[3673] = v80;
                  v72[3674] = (v168 & 0x800) == 0;
                  if ((v168 & 0x20100000) != 0 || *v76 == 112 && v72[3607] == 50 && v72[3608] == 112)
                  {
                    v82 = 1;
                  }

                  else
                  {
                    v82 = util_is_car_play((v72 + 3606));
                    v74 = v172;
                  }

                  *(v73 + 3676) = v82;
                  if (v82 && mDNS_LoggingEnabled)
                  {
                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: DirectLink set for %s", *(v1 + 8));
                    v74 = v172;
                  }

                  *(v73 + 3680) = 0;
                  *(v73 + 3688) = mDNSStorage;
                  v83 = 1;
                  *(v73 + 3696) = 1;
                  *(v73 + 3698) = 0;
                  if ((v168 & 0x20000) != 0)
                  {
LABEL_148:
                    *(v73 + 3699) = v83;
                    if (v83 && mDNS_LoggingEnabled)
                    {
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: D2DInterface set for %s", *(v1 + 8));
                      v74 = v172;
                    }
                  }

                  else
                  {
                    if (*v76 == 112 && *(v73 + 3607) == 50)
                    {
                      v83 = *(v73 + 3608) == 112;
                      goto LABEL_148;
                    }

                    *(v73 + 3699) = 0;
                  }

                  *(v73 + 3776) = (v168 & 0x100000) >> 20;
                  *(v73 + 3677) = (v168 & 0x100000) == 0;
                  *(v73 + 3700) = a1;
                  *(v73 + 3704) = a1;
                  *(v73 + 3712) = *(v1 + 16);
                  *(v73 + 3720) = v74;
                  *(v73 + 3724) = v64;
                  *(v73 + 3726) = v169;
                  *(v73 + 3728) = v63;
                  *(v73 + 3730) = *(*(v1 + 24) + 1);
                  *(v73 + 3768) = 0;
                  *(v73 + 3732) = xmmword_10010D2B0;
                  v84 = socket(2, 2, 0);
                  if (v84 != -1)
                  {
                    v85 = v84;
                    v86 = 0;
                    memset(buf, 0, 32);
                    while (1)
                    {
                      v87 = v76[v86];
                      buf[v86] = v87;
                      if (!v87)
                      {
                        break;
                      }

                      if (++v86 == 15)
                      {
                        buf[15] = 0;
                        break;
                      }
                    }

                    if (ioctl(v84, 0xC020699FuLL, buf) != -1)
                    {
                      v88 = *&buf[20];
                      *(v73 + 3744) = *&buf[24];
                      goto LABEL_177;
                    }

                    v94 = mDNSLogCategory_Default;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v95 = mDNSLogCategory_Default == mDNSLogCategory_State;
                    }

                    else
                    {
                      v95 = 1;
                    }

                    if (v95)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v94 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_175:
                        v99 = __error();
                        v100 = strerror(*v99);
                        *v185 = 136446210;
                        *&v185[4] = v100;
                        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "GetIFTFamily: SIOCGIFTYPE failed: %{public}s", v185, 0xCu);
                      }
                    }

                    v88 = 0;
LABEL_177:
                    close(v85);
LABEL_178:
                    *(v73 + 3708) = v88;
                    v101 = socket(30, 2, 0);
                    if (v101 == -1)
                    {
                      v105 = 0;
                    }

                    else
                    {
                      v102 = v101;
                      v103 = 0;
                      memset(buf, 0, 32);
                      while (1)
                      {
                        v104 = v76[v103];
                        buf[v103] = v104;
                        if (!v104)
                        {
                          break;
                        }

                        if (++v103 == 15)
                        {
                          buf[15] = 0;
                          break;
                        }
                      }

                      if (ioctl(v101, 0xC02069ADuLL, buf) == -1)
                      {
                        v105 = 0;
                      }

                      else
                      {
                        v105 = *&buf[16];
                      }

                      close(v102);
                    }

                    *(v73 + 3748) = v105;
                    if ((*(v73 + 3712) & 0x10) == 0)
                    {
                      goto LABEL_214;
                    }

                    v106 = socket(2, 2, 0);
                    if (v106 < 0)
                    {
                      if (*__error())
                      {
                        v111 = *__error();
                        if (!v111)
                        {
                          goto LABEL_190;
                        }
                      }

                      else
                      {
                        v111 = -6700;
                      }

                      *(v73 + 3778) = 0;
                      v112 = &unk_100178000;
                      v113 = v111;
                    }

                    else
                    {
LABEL_190:
                      v107 = 0;
                      memset(buf, 0, 32);
                      while (1)
                      {
                        v108 = v76[v107];
                        buf[v107] = v108;
                        if (!v108)
                        {
                          break;
                        }

                        if (++v107 == 15)
                        {
                          buf[15] = 0;
                          break;
                        }
                      }

                      if (strcmp((v73 + 3606), buf))
                      {
                        v109 = 0;
                        v110 = -6744;
                        goto LABEL_196;
                      }

                      if (ioctl(v106, 0xC020695FuLL, buf) == -1)
                      {
                        if (*__error())
                        {
                          v170 = *__error();
                          if (!v170)
                          {
                            goto LABEL_202;
                          }

                          v109 = 0;
                          if (v106 < 0)
                          {
                            goto LABEL_204;
                          }
                        }

                        else
                        {
                          v109 = 0;
                          v110 = -6700;
LABEL_196:
                          v170 = v110;
                          if (v106 < 0)
                          {
                            goto LABEL_204;
                          }
                        }

LABEL_203:
                        close(v106);
                        goto LABEL_204;
                      }

LABEL_202:
                      v170 = 0;
                      v109 = *&buf[16] != 0;
                      if ((v106 & 0x80000000) == 0)
                      {
                        goto LABEL_203;
                      }

LABEL_204:
                      *(v73 + 3778) = v109;
                      v112 = &unk_100178000;
                      v113 = v170;
                      if (!v170)
                      {
                        goto LABEL_214;
                      }
                    }

                    v114 = *(v112 + 434);
                    if (!mDNS_SensitiveLoggingEnableCount || v114 == mDNSLogCategory_State)
                    {
                      if (!os_log_type_enabled(*(v112 + 434), OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_214;
                      }
                    }

                    else
                    {
                      v114 = mDNSLogCategory_Default_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_214;
                      }
                    }

                    *buf = 136446466;
                    *&buf[4] = v73 + 3606;
                    *&buf[12] = 2048;
                    *&buf[14] = v113;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "AddInterfaceToList: Failed to determine if point-to-point interface allows mDNS -- ifname: %{public}s, error: %{mdns:err}ld", buf, 0x16u);
LABEL_214:
                    v115 = *(*(v73 + 3688) + 120);
                    if (v115)
                    {
                      v116 = *(v73 + 3712);
                      if ((v116 & 0x8000) != 0)
                      {
                        if ((v116 & 0x10) == 0 || (v115 = *(v73 + 3778)) != 0)
                        {
                          v115 = 1;
                        }
                      }

                      else
                      {
                        v115 = 0;
                      }
                    }

                    *(v73 + 3671) = v115;
                    if (*(v73 + 3744) == 3)
                    {
                      v117 = util_is_managed_network(v73 + 3606);
                    }

                    else
                    {
                      v117 = 0;
                    }

                    *(v73 + 3777) = v117;
                    v118 = mDNSLogCategory_mDNS;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_228;
                      }
                    }

                    else
                    {
                      v118 = mDNSLogCategory_mDNS_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                      {
LABEL_228:
                        v119 = *(v73 + 3552);
                        *buf = 136446722;
                        *&buf[4] = v73 + 3606;
                        *&buf[12] = 1024;
                        *&buf[14] = v119;
                        *&buf[18] = 1024;
                        *&buf[20] = v117;
                        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEBUG, "AddInterfaceToList: Privacy risk -- ifname: %{public}s, ifid: %d, risk: %{mdns:yesno}d", buf, 0x18u);
                      }
                    }

                    v120 = (v168 & 0x4000) == 0 && NetWakeInterface(v73);
                    v121 = v172;
                    *(v73 + 3672) = v120;
                    v122 = (v73 + 3600);
                    v123 = myGetIfAddrs_ifa;
                    if (!myGetIfAddrs_ifa)
                    {
                      getifaddrs(&myGetIfAddrs_ifa);
                      v121 = v172;
                      v123 = &myGetIfAddrs_ifa;
                      goto LABEL_282;
                    }

                    do
                    {
                      v140 = v123[3];
                      if (v140 && *(v140 + 1) == 18 && *(v140 + 2) == v121)
                      {
                        v141 = v140 + *(v140 + 5);
                        v142 = *(v141 + 8);
                        *(v73 + 3604) = *(v141 + 12);
                        *v122 = v142;
                        goto LABEL_288;
                      }

LABEL_282:
                      v123 = *v123;
                    }

                    while (v123);
                    *(v73 + 3604) = 0;
                    *v122 = 0;
LABEL_288:
                    if (*(v73 + 3672) && !*v122)
                    {
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: Bad MAC address %.6a for %d %s %#a", COERCE_DOUBLE(v73 + 3600), v121, (v73 + 3606), COERCE_DOUBLE(nameEncoding));
                    }

                    if (*(v73 + 3671) && !*(v73 + 3673) && *(v73 + 3748) == 3)
                    {
                      v143 = *(v73 + 8);
                      if (v143)
                      {
                        os_release(v143);
                        *(v73 + 8) = 0;
                      }

                      *(v73 + 8) = mdns_multicast_delay_histogram_create();
                    }

                    *v67 = v73;
                    goto LABEL_298;
                  }

                  v89 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                    {
                      v96 = __error();
                      v97 = strerror(*v96);
                      *buf = 136446210;
                      *&buf[4] = v97;
                      v93 = v89;
LABEL_172:
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "GetIFTFamily: socket() failed: %{public}s", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v90 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                    {
                      v91 = __error();
                      v92 = strerror(*v91);
                      *buf = 136446210;
                      *&buf[4] = v92;
                      v93 = v90;
                      goto LABEL_172;
                    }
                  }

                  v88 = 0;
                  goto LABEL_178;
                }

                if ((v2 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                memset(v181, 0, sizeof(v181));
                v180 = 0u;
                memset(buf, 0, sizeof(buf));
                v50 = *(v1 + 8);
                if (!v50)
                {
                  goto LABEL_328;
                }

                v51 = 0;
                while (1)
                {
                  v52 = *(v50 + v51);
                  buf[v51] = v52;
                  if (!v52)
                  {
                    break;
                  }

                  if (++v51 == 15)
                  {
                    buf[15] = 0;
                    break;
                  }
                }

                v53 = *v46;
                *&buf[28] = *(v46 + 12);
                *&buf[16] = v53;
                v54 = ioctl(v2, 0xC1206949uLL, buf);
                if ((buf[16] & 0x9A) == 0 || v54 == -1)
                {
                  goto LABEL_109;
                }
              }
            }

            else
            {
              memset(buf, 0, 20);
              SetupAddr(buf, v39);
              v44 = *(v3 + 434);
              if_nametoindex(*(v1 + 8));
              LogMsgWithLevel(v44, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: ifa_netmask for %5s(%d) Flags %04X Family %2d %#a has different family: %d");
            }
          }

          else
          {
            memset(buf, 0, 20);
            SetupAddr(buf, v39);
            v45 = *(v3 + 434);
            if_nametoindex(*(v1 + 8));
            LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: ifa_netmask is NULL for %5s(%d) Flags %04X Family %2d %#a");
          }

          goto LABEL_96;
        }

        v16 = 0;
        memset(buf, 0, 32);
        while (1)
        {
          v17 = v12[v16];
          buf[v16] = v17;
          if (!v17)
          {
            break;
          }

          if (++v16 == 15)
          {
            buf[15] = 0;
            break;
          }
        }

        if (ioctl(v2, 0xC02069ADuLL, buf) == -1)
        {
          v22 = __error();
          v23 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
          {
            v24 = *v22;
            nameEncoding[0] = 67109120;
            nameEncoding[1] = v24;
            v20 = v23;
            v21 = "isExcludedInterface: SIOCGIFFUNCTIONALTYPE failed -- error: %{darwin.errno}d";
LABEL_36:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, nameEncoding, 8u);
          }

          goto LABEL_37;
        }

        if (*&buf[16] != 6)
        {
          goto LABEL_37;
        }

        v18 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
        {
          nameEncoding[0] = 136446210;
          *&nameEncoding[1] = v12;
          v14 = v18;
          v15 = "isExcludedInterface: excluding coprocessor interface %{public}s";
          goto LABEL_31;
        }
      }

LABEL_96:
      v1 = *v1;
    }

    while (v1);
  }

  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  mDNS_snprintf(v182, 64, "%.*s-%02X%02X%02X%02X%02X%02X", HINFO_HWstring_prefixlen, HINFO_HWstring, dword_10016D230, BYTE1(dword_10016D230), BYTE2(dword_10016D230), HIBYTE(dword_10016D230), word_10016D234, HIBYTE(word_10016D234));
  v180 = 0u;
  memset(buf, 0, sizeof(buf));
  nameEncoding[0] = 134217984;
  v9 = SCDynamicStoreCopyComputerName(0, nameEncoding);
  if (v9)
  {
    v10 = v9;
    mDNSDomainLabelFromCFString(v9, buf);
    CFRelease(v10);
    v11 = &unk_10016D000;
    if (buf[0])
    {
      goto LABEL_308;
    }
  }

  else
  {
    v11 = &unk_10016D000;
  }

  v144 = &buf[1];
  v145 = v182[0];
  if (LOBYTE(v182[0]))
  {
    v146 = v182 + 1;
    do
    {
      *v144++ = v145;
      v147 = *v146++;
      v145 = v147;
      if (v147)
      {
        v148 = v144 >= v181;
      }

      else
      {
        v148 = 1;
      }
    }

    while (!v148);
  }

  buf[0] = v144 + ~buf;
LABEL_308:
  v177 = 0u;
  v178 = 0u;
  *nameEncoding = 0u;
  v176 = 0u;
  GetUserSpecifiedLocalHostName(nameEncoding);
  v149 = LOBYTE(nameEncoding[0]);
  if (!LOBYTE(nameEncoding[0]))
  {
    v150 = nameEncoding + 1;
    v151 = v182[0];
    if (LOBYTE(v182[0]))
    {
      v152 = v182 + 1;
      do
      {
        *v150++ = v151;
        v153 = *v152++;
        v151 = v153;
        if (v153)
        {
          v154 = v150 >= buf;
        }

        else
        {
          v154 = 1;
        }
      }

      while (!v154);
    }

    v155 = v150 + ~nameEncoding;
    v149 = v155;
    LOBYTE(nameEncoding[0]) = v155;
  }

  v156 = v11[67];
  v157 = *(v156 + 172);
  if (*(v156 + 172) != buf[0] || memcmp((v156 + 173), &buf[1], v157))
  {
    if (v157)
    {
      LogMsgWithLevel(*(v3 + 434), OS_LOG_TYPE_DEFAULT, "User updated Computer Name from “%#s” to “%#s”", (v156 + 172), buf);
      v156 = v11[67];
      v149 = LOBYTE(nameEncoding[0]);
    }

    v158 = *&buf[16];
    xmmword_10016FA40 = *buf;
    *algn_10016FA50 = *&buf[16];
    v159 = *&buf[32];
    v160 = v180;
    xmmword_10016FA60 = *&buf[32];
    unk_10016FA70 = v180;
    *(v156 + 172) = *buf;
    *(v156 + 188) = v158;
    *(v156 + 204) = v159;
    *(v156 + 220) = v160;
  }

  v161 = *(v156 + 108);
  if (v161 != v149 || memcmp((v156 + 109), nameEncoding + 1, v149))
  {
    if (v161)
    {
      LogMsgWithLevel(*(v3 + 434), OS_LOG_TYPE_DEFAULT, "User updated Local Hostname from “%#s” to “%#s”", (v156 + 108), nameEncoding);
      v156 = v11[67];
    }

    v163 = (mDNSStorage + &loc_100002868);
    v164 = *nameEncoding;
    v165 = v176;
    *v163 = *nameEncoding;
    v163[1] = v165;
    v166 = v177;
    v167 = v178;
    v163[2] = v177;
    v163[3] = v167;
    *(v156 + 108) = v164;
    *(v156 + 124) = v165;
    *(v156 + 140) = v166;
    *(v156 + 156) = v167;
    mDNS_SetFQDN(mDNSStorage);
  }

  return result;
}

uint64_t myGetIfAddrs()
{
  if (myGetIfAddrs_ifa)
  {
    freeifaddrs(myGetIfAddrs_ifa);
    myGetIfAddrs_ifa = 0;
  }

  getifaddrs(&myGetIfAddrs_ifa);
  return myGetIfAddrs_ifa;
}

uint64_t SetupAddr(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 1);
    if (v2 == 30)
    {
      *a1 = 6;
      *(a1 + 4) = *(a2 + 8);
      if (*(a2 + 8) == 254 && (*(a2 + 9) & 0xC0) == 0x80)
      {
        v3 = 0;
        *(a1 + 6) = 0;
      }

      else
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      v3 = 0;
      v4 = *(a2 + 4);
      *a1 = 4;
      *(a1 + 4) = v4;
    }

    else
    {
      v3 = 4294901747;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupAddr invalid sa_family %d");
    }
  }

  else
  {
    v3 = 4294901747;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupAddr ERROR: NULL sockaddr");
  }

  return v3;
}

BOOL NetWakeInterface(uint64_t a1)
{
  if (*(*(a1 + 3688) + 120))
  {
    v2 = *(a1 + 3712);
    if ((v2 & 0x8000) != 0 && ((v2 & 0x10) == 0 || *(a1 + 3778)) && (v2 & 8) == 0 && !*(a1 + 3699))
    {
      v10 = a1 + 3606;
      if (!strcmp((a1 + 3606), "ap1"))
      {
        v12 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136446210;
          *v26 = v10;
          v5 = "NetWakeInterface: returning false for %{public}s";
        }

        else
        {
          v12 = mDNSLogCategory_SPS_redacted;
          result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136446210;
          *v26 = v10;
          v5 = "NetWakeInterface: returning false for %{public}s";
        }

        v7 = v12;
        v8 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      }

      if (CheckInterfaceSupport(a1, "mDNS_Keepalive"))
      {
        v11 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v26 = v10;
            goto LABEL_41;
          }
        }

        else
        {
          v11 = mDNSLogCategory_SPS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v26 = v10;
LABEL_41:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NetWakeInterface: interface supports TCP Keepalive -- ifname: %{public}s", buf, 0xCu);
          }
        }

        return 1;
      }

      v13 = socket(2, 2, 0);
      v14 = v13;
      if (v13 < 0)
      {
        v19 = *__error();
        v20 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v20 = mDNSLogCategory_SPS_redacted;
          result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        *buf = 67109634;
        *v26 = v14;
        *&v26[4] = 2082;
        *&v26[6] = v10;
        *&v26[14] = 1024;
        *&v26[16] = v19;
        v5 = "NetWakeInterface: socket failed -- socket: %d, ifname: %{public}s, error: %{darwin.errno}d";
        v7 = v20;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 24;
        goto LABEL_18;
      }

      v15 = 0;
      v32 = 0u;
      v33 = 0u;
      while (1)
      {
        v16 = *(v10 + v15);
        *(&v32 + v15) = v16;
        if (!v16)
        {
          break;
        }

        if (++v15 == 15)
        {
          HIBYTE(v32) = 0;
          break;
        }
      }

      if ((ioctl(v13, 0xC0206988uLL, &v32) & 0x80000000) == 0)
      {
LABEL_60:
        close(v14);
        v22 = mDNSLogCategory_SPS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v23 = mDNSLogCategory_SPS == mDNSLogCategory_State;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
          {
            return v33 & 1;
          }
        }

        else
        {
          v22 = mDNSLogCategory_SPS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return v33 & 1;
          }
        }

        *buf = 136447235;
        *v26 = a1 + 3606;
        *&v26[8] = 2160;
        *&v26[10] = 1752392040;
        *&v26[18] = 1045;
        v27 = 20;
        v28 = 2101;
        v29 = a1 + 3560;
        v30 = 1024;
        v31 = v33 & 1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NetWakeInterface: interface -- ifname: %{public}s, address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, supports Wake-On-Lan: %{mdns:yesno}d", buf, 0x2Cu);
        return v33 & 1;
      }

      v17 = *__error();
      if (v17 == 102)
      {
        if (!*(a1 + 3724))
        {
          v18 = *(*(a1 + 3688) + 143) != 0;
LABEL_59:
          LODWORD(v33) = v18;
          goto LABEL_60;
        }

LABEL_58:
        v18 = 0;
        goto LABEL_59;
      }

      v21 = mDNSLogCategory_SPS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = mDNSLogCategory_SPS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      *buf = 136446466;
      *v26 = a1 + 3606;
      *&v26[8] = 1024;
      *&v26[10] = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NetWakeInterface: SIOCGIFWAKEFLAGS failed -- ifname: %{public}s, error: %{darwin.errno}d", buf, 0x12u);
      goto LABEL_58;
    }
  }

  v3 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *v26 = a1 + 3606;
    v5 = "NetWakeInterface: returning false for %{public}s";
    goto LABEL_16;
  }

  v3 = mDNSLogCategory_SPS_redacted;
  result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    *v26 = a1 + 3606;
    v5 = "NetWakeInterface: returning false for %{public}s";
LABEL_16:
    v7 = v3;
    v8 = OS_LOG_TYPE_DEBUG;
LABEL_17:
    v9 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v7, v8, v5, buf, v9);
    return 0;
  }

  return result;
}

void mDNS_SetFQDN(void *a1)
{
  memset(v7, 0, sizeof(v7));
  if (AppendDomainLabel(v7, a1 + 10344) && AppendLiteralLabelString(v7, "local"))
  {
    mDNS_Lock_(a1, "mDNS_SetFQDN", 16835);
    if (!SameDomainNameCS(a1 + 10408, v7))
    {
      v2 = v7;
      do
      {
        if (!v2)
        {
          break;
        }

        v3 = *v2;
        if (v3 > 0x3F)
        {
          break;
        }

        if (!*v2)
        {
          v4 = v2 - v7 + 1;
          if (v4 <= 0x100u)
          {
            memcpy(a1 + 1301, v7, v4);
            goto LABEL_14;
          }

          break;
        }

        v2 += v3 + 1;
      }

      while (v2 - v7 <= 255);
      *(a1 + 10408) = 0;
LABEL_14:
      DeadvertiseAllInterfaceRecords(a1, 1);
      AdvertiseNecessaryInterfaceRecords(a1);
    }

    for (i = a1[1577]; i; i = *i)
    {
      if (*(i + 120))
      {
        D2D_stop_advertising_record(i);
        SetTargetToHostName(a1, i);
        D2D_start_advertising_record(i);
      }
    }

    for (j = a1[1578]; j; j = *j)
    {
      if (*(j + 120))
      {
        D2D_stop_advertising_record(j);
        SetTargetToHostName(a1, j);
        D2D_start_advertising_record(j);
      }
    }

    mDNS_Unlock_(a1, "mDNS_SetFQDN", 16849);
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNS_SetFQDN: Cannot create MulticastHostname");
  }
}

_BYTE *AppendDomainLabel(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = 257;
  v3 = a1;
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      break;
    }

    if (!*v3)
    {
      v2 = (v3 - a1 + 1);
      break;
    }

    v3 += v4 + 1;
  }

  while (v3 - a1 < 256);
  v5 = &a1[v2];
  v6 = *a2;
  if (v6 > 0x3F || &v5[v6 + 1] > a1 + 256)
  {
    return 0;
  }

  v9 = -1;
  do
  {
    v5[v9] = a2[v9 + 1];
    ++v9;
  }

  while (v9 < *a2);
  result = &v5[v9 + 1];
  v5[v9] = 0;
  return result;
}

_BYTE *AppendLiteralLabelString(_BYTE *a1, char *a2)
{
  v2 = 257;
  v3 = a1;
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      break;
    }

    if (!*v3)
    {
      v2 = (v3 - a1 + 1);
      break;
    }

    v3 += v4 + 1;
  }

  while (v3 - a1 < 256);
  v5 = &a1[v2];
  v6 = v5 + 63;
  if (a1 + 255 < v5 + 63)
  {
    v6 = a1 + 255;
  }

  v7 = *a2;
  v8 = v5;
  if (*a2)
  {
    v9 = v5 >= v6;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      *v8++ = v7;
      v10 = *++a2;
      v7 = v10;
      if (v10)
      {
        v11 = v8 >= v6;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  *(v5 - 1) = v8 - v5;
  *v8 = 0;
  v12 = v8 + 1;
  if (*a2)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void mDNS_Lock_(unsigned int *a1, unsigned __int8 *a2, int a3)
{
  mDNS_VerifyLockState("Lock", 0, a1[12], a1[13], a2, a3);
  v5 = a1[12];
  v6 = a1[16];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    v9 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v16 = a1[15] + mDNSPlatformRawTime();
    v21 = 136446722;
    v22 = a2;
    v23 = 1024;
    v24 = v6;
    v25 = 1024;
    v26 = v16;
    v12 = "%{public}s: mDNS_Lock: m->timenow already set (%d/%d)";
    v13 = v9;
    v14 = 24;
    goto LABEL_22;
  }

  if (v6)
  {
    goto LABEL_27;
  }

  v7 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      v21 = 136446466;
      v22 = a2;
      v23 = 1024;
      v24 = v5;
      v12 = "%{public}s: mDNS_Lock: m->mDNS_busy is %u but m->timenow not set";
      v13 = v7;
      v14 = 18;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v21, v14);
    }
  }

  else
  {
    v7 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }
  }

LABEL_23:
  v17 = a1[15] + mDNSPlatformRawTime();
  if (v17 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v17;
  }

  a1[16] = v6;
LABEL_27:
  v18 = a1[17] - v6;
  if (v18 >= 1)
  {
    v19 = a1[15] + v18;
    a1[15] = v19;
    v20 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:
        v21 = 136446722;
        v22 = a2;
        v23 = 1024;
        v24 = v18;
        v25 = 1024;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: mDNSPlatformRawTime went backwards by %d ticks; setting correction factor to %d", &v21, 0x18u);
      }
    }

    else
    {
      v20 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    v6 = a1[17];
    a1[16] = v6;
  }

  a1[17] = v6;
  ++a1[12];
}

BOOL SameDomainNameCS(_BYTE *a1, _BYTE *a2)
{
  v2 = a1;
  while (1)
  {
    if (!v2 || (v3 = *v2, v3 > 0x3F))
    {
LABEL_6:
      v4 = 257;
      goto LABEL_8;
    }

    if (!*v2)
    {
      break;
    }

    v2 += v3 + 1;
    if (v2 - a1 >= 256)
    {
      goto LABEL_6;
    }
  }

  v4 = v2 - a1 + 1;
LABEL_8:
  v5 = a2;
  while (1)
  {
    if (!v5 || (v6 = *v5, v6 > 0x3F))
    {
LABEL_13:
      v7 = 257;
      goto LABEL_15;
    }

    if (!*v5)
    {
      break;
    }

    v5 += v6 + 1;
    if (v5 - a2 >= 256)
    {
      goto LABEL_13;
    }
  }

  v7 = v5 - a2 + 1;
LABEL_15:
  v8 = 0;
  if (v4 <= 0x100u && v4 == v7)
  {
    return memcmp(a1, a2, v4) == 0;
  }

  return v8;
}

void mDNS_Unlock_(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = *(a1 + 52);
  v7 = *(a1 + 48) - 1;
  *(a1 + 48) = v7;
  mDNS_VerifyLockState("Unlock", 0, v7, v6, a2, a3);
  if (!*(a1 + 48))
  {
    v8 = *(a1 + 64);
    v9 = v8 + 939524096;
    if (*(a1 + 16))
    {
      v10 = v8 + 939524096;
    }

    else
    {
      v11 = *(a1 + 200);
      if (!v11 || (v9 = *(v11 + 204), v10 = *(a1 + 64), v9))
      {
        v10 = *(a1 + 64);
        if (!*(a1 + 224))
        {
          v12 = *(a1 + 12632);
          if (v12)
          {
            while (*(v12 + 8) == 2)
            {
              v12 = *v12;
              if (!v12)
              {
                goto LABEL_10;
              }
            }

            v10 = *(a1 + 64);
          }

          else
          {
LABEL_10:
            v10 = *(a1 + 64);
            if (!*(a1 + 12648))
            {
              v10 = *(a1 + 64);
              if (!*(a1 + 15112))
              {
                v10 = *(a1 + 64);
                if (!*(a1 + 140))
                {
                  if (v9 - *(a1 + 12680) > 0)
                  {
                    v9 = *(a1 + 12680);
                  }

                  if (v9 - *(a1 + 104) > 0)
                  {
                    v9 = *(a1 + 104);
                  }

                  v13 = *(a1 + 12684);
                  if (v9 - v13 > 0 && v13 != 0)
                  {
                    v9 = *(a1 + 12684);
                  }

                  if (v9 - *(a1 + 88) > 0)
                  {
                    v9 = *(a1 + 88);
                  }

                  if (v9 - *(a1 + 108) > 0)
                  {
                    v9 = *(a1 + 108);
                  }

                  v15 = *(a1 + 116);
                  if (v9 - *(a1 + 112) > 0)
                  {
                    v9 = *(a1 + 112);
                  }

                  if (v9 - v15 <= 0 || v15 == 0)
                  {
                    v17 = v9;
                  }

                  else
                  {
                    v17 = *(a1 + 116);
                  }

                  for (i = *(a1 + 14160); i; i = *(i + 296))
                  {
                    for (j = 0; j != 40; j += 8)
                    {
                      v20 = *(i + 256 + j);
                      if (v20)
                      {
                        if (*(v20 + 704) == 2)
                        {
                          v21 = *(v20 + 712);
                          if (v17 - v21 > 0)
                          {
                            v17 = v21;
                          }
                        }
                      }
                    }
                  }

                  next_scheduled_event = resolver_discovery_get_next_scheduled_event();
                  if (v17 - next_scheduled_event <= 0 || next_scheduled_event == 0)
                  {
                    v24 = v17;
                  }

                  else
                  {
                    v24 = next_scheduled_event;
                  }

                  v25 = *(a1 + 148);
                  if (!v25 && *(a1 + 152) && v24 - *(a1 + 180) > 0)
                  {
                    v24 = *(a1 + 180);
                  }

                  if (v24 - v25 > 0 && v25 != 0)
                  {
                    v24 = *(a1 + 148);
                  }

                  v27 = *(a1 + 80);
                  if (v27)
                  {
                    if (v24 - v27 > 0)
                    {
                      v24 = *(a1 + 80);
                    }
                  }

                  else
                  {
                    if (v24 - *(a1 + 92) > 0)
                    {
                      v24 = *(a1 + 92);
                    }

                    if (v24 - *(a1 + 96) > 0)
                    {
                      v24 = *(a1 + 96);
                    }
                  }

                  v31 = *(a1 + 84);
                  if (!v31)
                  {
                    v31 = *(a1 + 100);
                  }

                  if (v24 - v31 > 0)
                  {
                    v24 = v31;
                  }

                  v32 = *(a1 + 188);
                  if (v24 - *(a1 + 184) > 0)
                  {
                    v24 = *(a1 + 184);
                  }

                  if (v24 - v32 > 0 && v32 != 0)
                  {
                    v24 = *(a1 + 188);
                  }

                  v34 = *(a1 + 160);
                  v35 = *(a1 + 164);
                  if (v24 - v34 > 0 && v34 != 0)
                  {
                    v24 = *(a1 + 160);
                  }

                  if (v24 - v35 <= 0 || v35 == 0)
                  {
                    v10 = v24;
                  }

                  else
                  {
                    v10 = *(a1 + 164);
                  }
                }
              }
            }
          }
        }
      }
    }

    *(a1 + 72) = v10;
    if (v8)
    {
      goto LABEL_73;
    }

    v28 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v29 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
LABEL_73:
        *(a1 + 64) = 0;
        return;
      }

      v38 = 136446210;
      v39 = a2;
    }

    else
    {
      v28 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      v38 = 136446210;
      v39 = a2;
    }

    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: mDNS_Unlock: ERROR! m->timenow aready zero", &v38, 0xCu);
    goto LABEL_73;
  }
}

void SetupActiveInterfaces(int a1)
{
  dword_100170398 = 0;
  v1 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    do
    {
      if (!v1[462].i8[0])
      {
        goto LABEL_173;
      }

      v2 = SearchForInterfaceByName(&v1[450] + 6, 0);
      v3 = v2;
      v4 = v1[471];
      if (v4)
      {
        v5 = *&v4 == v2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (v4)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v6 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v66 = v4;
          *&v66[8] = 2048;
          *&v66[10] = v3;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SetupActiveInterfaces ERROR! n->Registered %p != primary %p", buf, 0x16u);
        }
      }

      v1[471] = v3;
      v8 = (v1[464].i8[0] & 8) == 0 && (v1[463].i32[0] - a1) > 0xFFFFFFC4;
      v1[462].i8[2] = v8;
      if (v1[450].i8[6] == 112 && v1[450].i8[7] == 50 && v1[451].i8[0] == 112 || v1[459].i8[4])
      {
        v9 = mDNSLogCategory_State;
        v10 = 1;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *v66 = v1 + 3606;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SetupActiveInterfaces: %{public}s DirectLink interface registering", buf, 0xCu);
        }
      }

      else
      {
        v10 = 0;
      }

      if (v1[444])
      {
        v11 = v1[447].i32[1];
        if (v11 == 6)
        {
          if (vorr_s8(v1[448], *&vextq_s8(*v1[448].i8, *v1[448].i8, 8uLL)))
          {
            goto LABEL_26;
          }
        }

        else if (v11 == 4 && v1[448].i32[0])
        {
LABEL_26:
          mDNS_Lock_(mDNSStorage, "mDNS_RegisterInterface", 17083);
          v1[2].i8[0] = 1;
          v12 = v1[445].i32[0];
          if (v12 == 4)
          {
            v13 = 0;
            v14 = 0;
            v1[2].i8[1] = v1[458].i8[7] != 0;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v1[2].i8[1] = 0;
            if (v12 == 6)
            {
              v14 = v1[458].i8[7] != 0;
              v13 = 1;
            }
          }

          v1[2].i8[2] = v14;
          v20 = xmmword_100170388;
          if (xmmword_100170388)
          {
            v21 = 1;
            v22 = 1;
            while (v20 != v1)
            {
              v23 = v20;
              if (*(v20 + 444) == *&v1[444])
              {
                v1[2].i8[0] = 0;
                if (v12 == *(v20 + 890))
                {
                  v22 = 0;
                }

                if (v12 == 4 && v1[458].i8[7])
                {
                  *(v20 + 17) = 1;
                }

                if (v13)
                {
                  v21 = v1[458].u8[7];
                  if (v1[458].i8[7])
                  {
                    v21 = 0;
                    *(v20 + 18) = 1;
                  }
                }

                else
                {
                  v21 = 0;
                }
              }

              v20 = *v20;
              if (!*v23)
              {
                v24 = v22 == 0;
                goto LABEL_60;
              }
            }

            v31 = mDNSLogCategory_mDNS;
            if (mDNS_SensitiveLoggingEnableCount)
            {
              v32 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_85;
              }
            }

            else
            {
              v31 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
              {
LABEL_85:
                *buf = 136446979;
                *v66 = v1 + 3606;
                *&v66[8] = 2160;
                *&v66[10] = 1752392040;
                *&v66[18] = 1045;
                *&v66[20] = 20;
                v67 = 2101;
                *v68 = v1 + 445;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Tried to register a NetworkInterfaceInfo that's already in the list - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
              }
            }

            v34 = 17101;
LABEL_152:
            mDNS_Unlock_(mDNSStorage, "mDNS_RegisterInterface", v34);
            goto LABEL_153;
          }

          v24 = 0;
          v21 = 1;
          v23 = &xmmword_100170388;
LABEL_60:
          *v1 = 0;
          *v23 = v1;
          if (v1[458].i8[6])
          {
            AdvertiseInterfaceIfNeeded(mDNSStorage, v1);
            v21 = v1[2].u8[0];
          }

          v25 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v26 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
          }

          else
          {
            v26 = 1;
          }

          v27 = v26;
          if (v21)
          {
            if (v27)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_71;
              }

LABEL_90:
              if (!v1[458].i8[7] || v24 && !v1[2].i8[0])
              {
                goto LABEL_140;
              }

              if (v10)
              {
                v36 = mDNSLogCategory_mDNS;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_100;
                  }
                }

                else
                {
                  v36 = mDNSLogCategory_mDNS_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_100:
                    *buf = 136446979;
                    *v66 = v1 + 3606;
                    *&v66[8] = 2160;
                    *&v66[10] = 1752392040;
                    *&v66[18] = 1045;
                    *&v66[20] = 20;
                    v67 = 2101;
                    *v68 = v1 + 445;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Using fast activation for DirectLink interface - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
                  }
                }

                v37 = 0;
              }

              else
              {
                v37 = 500;
              }

              v38 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_107;
                }
              }

              else
              {
                v38 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_107:
                  *buf = 136447235;
                  *v66 = v1 + 3606;
                  *&v66[8] = 2160;
                  *&v66[10] = 1752392040;
                  *&v66[18] = 1045;
                  *&v66[20] = 20;
                  v67 = 2101;
                  *v68 = v1 + 445;
                  *&v68[8] = 1024;
                  *&v68[10] = v37;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Interface probe will be delayed - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, probe delay: %d", buf, 0x2Cu);
                }
              }

              if (v10)
              {
                v39 = 0;
                qword_10016D268 = 0;
                goto LABEL_110;
              }

              if (!qword_10016D268)
              {
                v40 = dword_10016D258;
                do
                {
                  v41 = arc4random() & 0x1FF;
                }

                while (v41 > 0x14E);
                v42 = v41 + v40;
                if (v42 <= 1)
                {
                  v42 = 1;
                }

                LODWORD(qword_10016D268) = v42;
              }

              v39 = dword_10016D258 + v37;
              if ((dword_10016D258 + v37) <= 1)
              {
                v39 = 1;
              }

              if (!dword_100170398 || dword_100170398 - v39 < 0)
              {
LABEL_110:
                dword_100170398 = v39;
              }

              ++*(&xmmword_10016D2D8 + &loc_100004D40);
              v43 = xmmword_10016D2D8;
              if (xmmword_10016D2D8)
              {
                while (2)
                {
                  if (*(v43 + 340))
                  {
                    goto LABEL_131;
                  }

                  v44 = *(v43 + 136);
                  if (v44)
                  {
                    if (v44 != *&v1[444])
                    {
                      goto LABEL_131;
                    }
                  }

                  else if (!mDNSPlatformValidQuestionForInterface(v43, v1))
                  {
                    goto LABEL_131;
                  }

                  v45 = *(v43 + 212);
                  if (!v45 || v45 >= 335)
                  {
                    v45 = 334;
                    *(v43 + 212) = 334;
                    *(v43 + 352) = 2;
                  }

                  *(v43 + 208) = dword_10016D258 - v45;
                  *(v43 + 224) = 0;
                  *(v43 + 689) = 0;
                  SetNextQueryTime(mDNSStorage, v43);
LABEL_131:
                  v43 = *(v43 + 8);
                  if (!v43)
                  {
                    break;
                  }

                  continue;
                }
              }

              v46 = xmmword_100170360;
              if (!xmmword_100170360)
              {
LABEL_140:
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RestartRecordGetZoneData: ResourceRecords");
                }

                for (i = xmmword_100170360; i; i = *i)
                {
                  if (!*(i + 32) && !*(i + 122) && !IsLocalDomain(*(i + 40)) && *(i + 344) != 8)
                  {
                    v50 = *(i + 376);
                    if (v50)
                    {
                      *(i + 358) = 0;
                      CancelGetZoneData(mDNSStorage, v50);
                    }

                    *(i + 376) = StartGetZoneData(mDNSStorage, *(i + 40), RecordRegistrationGotZoneData, i);
                  }
                }

                mDNS_UpdateAllowSleep(mDNSStorage);
                v34 = 17275;
                goto LABEL_152;
              }

              while (2)
              {
                v47 = v1[444];
                v48 = v46[4];
                if (v48)
                {
                  if (v48 == v47)
                  {
                    goto LABEL_135;
                  }
                }

                else if (mDNSPlatformValidRecordForInterface(v46, v47))
                {
LABEL_135:
                  mDNSCoreRestartRegistration(mDNSStorage, v46, 4);
                }

                v46 = *v46;
                if (!v46)
                {
                  goto LABEL_140;
                }

                continue;
              }
            }

            v25 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_90;
            }

LABEL_71:
            v28 = v1[444];
            *buf = 67110147;
            *v66 = v28.i32[0];
            *&v66[4] = 2082;
            *&v66[6] = v1 + 3606;
            *&v66[14] = 2160;
            *&v66[16] = 1752392040;
            v67 = 1045;
            *v68 = 20;
            *&v68[4] = 2101;
            *&v68[6] = v1 + 445;
            v29 = v25;
            v30 = "Interface not represented in list; marking active and retriggering queries - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
          }

          else
          {
            if (v27)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_90;
              }
            }

            else
            {
              v25 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_90;
              }
            }

            v35 = v1[444];
            *buf = 67110147;
            *v66 = v35.i32[0];
            *&v66[4] = 2082;
            *&v66[6] = v1 + 3606;
            *&v66[14] = 2160;
            *&v66[16] = 1752392040;
            v67 = 1045;
            *v68 = 20;
            *&v68[4] = 2101;
            *&v68[6] = v1 + 445;
            v29 = v25;
            v30 = "Interface already represented in list - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
          }

          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0x2Cu);
          goto LABEL_90;
        }

        v16 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            *buf = 141559043;
            *v66 = 1752392040;
            *&v66[8] = 1045;
            *&v66[10] = 20;
            *&v66[14] = 2101;
            *&v66[16] = v1 + 445;
            v67 = 1042;
            *v68 = 20;
            *&v68[4] = 2098;
            *&v68[6] = v1 + 3580;
            v17 = v16;
            v18 = "Tried to register a NetworkInterfaceInfo with invalid mask - ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, ifmask: %{public, mdnsresponder:ip_addr}.20P";
            v19 = 44;
            goto LABEL_41;
          }
        }

        else
        {
          v16 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v15 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            *buf = 141558531;
            *v66 = 1752392040;
            *&v66[8] = 1045;
            *&v66[10] = 20;
            *&v66[14] = 2101;
            *&v66[16] = v1 + 445;
            v17 = v15;
            v18 = "Tried to register a NetworkInterfaceInfo with zero InterfaceID - ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
            v19 = 28;
LABEL_41:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
          }
        }

        else
        {
          v15 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }
        }
      }

LABEL_153:
      v51 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v1[465].i32[0];
        v53 = CountMaskBits(&v1[447] + 1);
        v54 = " (Flashing)";
        if (!v1[462].i8[1])
        {
          v54 = "";
        }

        v55 = " (Occulting)";
        if (!v1[462].i8[2])
        {
          v55 = "";
        }

        v56 = " (Primary)";
        if (!v1[2].i8[0])
        {
          v56 = "";
        }

        *buf = 136449539;
        *v66 = v1 + 3606;
        *&v66[8] = 1024;
        *&v66[10] = v52;
        *&v66[14] = 2160;
        *&v66[16] = 1752392040;
        v67 = 1045;
        *v68 = 6;
        *&v68[4] = 2101;
        *&v68[6] = v1 + 3724;
        v69 = 2048;
        v70 = v1;
        v71 = 2048;
        v72 = v3;
        v73 = 2160;
        v74 = 1752392040;
        v75 = 1045;
        v76 = 20;
        v77 = 2101;
        v78 = v1 + 445;
        v79 = 1024;
        v80 = v53;
        v81 = 2082;
        v82 = v54;
        v83 = 2082;
        v84 = v55;
        v85 = 2082;
        v86 = v56;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "SetupActiveInterfaces: Registered %{public}s (%u) BSSID %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P Struct addr %p, primary %p, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d%{public}s%{public}s%{public}s", buf, 0x7Eu);
      }

      v57 = v1[466].u16[1];
      if (v1[458].i8[7])
      {
        if (v57 != 30 && v57 != 2)
        {
          goto LABEL_173;
        }

        v58 = 56;
        if (v57 == 2)
        {
          v58 = 24;
        }

        v59 = *(mDNSStorage[0] + v58);
        if (SearchForInterfaceByName(&v1[450] + 6, v1[466].u16[1]) == v1)
        {
          mDNSGroupJoinOrLeave(v59, v1, 0);
        }

        v60 = v59;
        v61 = v1;
        v62 = 1;
      }

      else
      {
        if (v57 != 30 && v57 != 2 || SearchForInterfaceByName(&v1[450] + 6, v1[466].u16[1]) != v1)
        {
          goto LABEL_173;
        }

        v63 = 56;
        if (v57 == 2)
        {
          v63 = 24;
        }

        v60 = *(mDNSStorage[0] + v63);
        v61 = v1;
        v62 = 0;
      }

      mDNSGroupJoinOrLeave(v60, v61, v62);
LABEL_173:
      v1 = v1[460];
    }

    while (v1);
  }
}

uint64_t SearchForInterfaceByName(char *__s2, int a2)
{
  for (i = *mDNSStorage[0]; i; i = *(i + 3680))
  {
    if (*(i + 3696) && !strcmp((i + 3606), __s2))
    {
      switch(a2)
      {
        case 2:
          if (*(i + 3560) == 4)
          {
            return i;
          }

          break;
        case 30:
          if (*(i + 3560) == 6)
          {
            return i;
          }

          break;
        case 0:
          return i;
      }
    }
  }

  return i;
}

void AdvertiseInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + 3552);
  if (AWDLInterfaceID)
  {
    v6 = AWDLInterfaceID == v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    if (WiFiAwareInterfaceID)
    {
      v7 = WiFiAwareInterfaceID == v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  v9 = v8 | a3;
  if (v8 | a3)
  {
    v10 = mDNS_RandomizedHostNameCallback;
  }

  else
  {
    v10 = mDNS_HostNameCallback;
  }

  if (v9)
  {
    v11 = 10664;
  }

  else
  {
    v11 = 10408;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1;
  }

  FirstAddressRecord = (a2 + 24);
  if (v12)
  {
    v14 = a2 + 24;
  }

  else
  {
    v14 = a2 + 2376;
  }

  if (*(v14 + 8))
  {
    return;
  }

  v36 = v12;
  v15 = v9 | *(a2 + 3676);
  memset(v41, 0, 74);
  if (v15)
  {
    v16 = 32;
  }

  else
  {
    v16 = 2;
  }

  v34 = v16;
  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v18 = "randomized";
      if (!v9)
      {
        v18 = "normal";
      }

      goto LABEL_37;
    }
  }

  else
  {
    v17 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v18 = "randomized";
      if (!v9)
      {
        v18 = "normal";
      }

LABEL_37:
      *buf = 136446466;
      v38 = v18;
      v39 = 2082;
      v40 = a2 + 3606;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "AdvertiseInterface: Advertising %{public}s hostname on interface %{public}s", buf, 0x16u);
    }
  }

  v19 = (a1 + v11);
  mDNS_SetupResourceRecord(v14, 0, *(a2 + 3552), 1, 0x1194u, v34, 0, v10, a2);
  if (v36)
  {
    mDNS_SetupResourceRecord(a2 + 1200, 0, *(a2 + 3552), 12, 0x1194u, 32, 0, 0, 0);
  }

  v20 = (a1 + v11);
  do
  {
    if (!v20)
    {
      break;
    }

    v21 = *v20;
    if (v21 > 0x3F)
    {
      break;
    }

    if (!*v20)
    {
      v22 = v20 - v19 + 1;
      if (v22 <= 0x100u)
      {
        memcpy((v14 + 652), v19, v22);
        goto LABEL_49;
      }

      break;
    }

    v20 += v21 + 1;
  }

  while (v20 - v19 <= 255);
  *(v14 + 652) = 0;
LABEL_49:
  v23 = *(a2 + 3560);
  if (v23 == 6)
  {
    v24 = 0;
    *(v14 + 12) = 28;
    *(*(v14 + 48) + 4) = *(a2 + 3564);
    v25 = v41 + 3;
    do
    {
      v26 = *(a2 + 3579 + v24);
      *(v25 - 3) = a0123456789abcd_0[v26 & 0xF];
      LOBYTE(v26) = a0123456789abcd_0[v26 >> 4];
      *(v25 - 2) = 46;
      *(v25 - 1) = v26;
      *v25 = 46;
      v25 += 4;
      --v24;
    }

    while (v24 != -16);
    mDNS_snprintf(&v41[4], 10, "ip6.arpa.");
  }

  else if (v23 == 4)
  {
    *(v14 + 12) = 1;
    *(*(v14 + 48) + 4) = *(a2 + 3564);
    mDNS_snprintf(v41, 74, "%d.%d.%d.%d.in-addr.arpa.");
  }

  if (!v36 || (*(a2 + 1852) = 0, AppendDNSNameString((a2 + 1852), v41), *(a2 + 1320) = 1, *(a2 + 1322) = 1, (v8 & 1) == 0))
  {
    FirstAddressRecord = GetFirstAddressRecordEx(*(a1 + 12656), v3);
  }

  if (FirstAddressRecord)
  {
    v27 = FirstAddressRecord;
  }

  else
  {
    v27 = v14;
  }

  *(v14 + 96) = v27;
  mDNS_Register_internal(a1, v14);
  v28 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
LABEL_66:
      GetRRDisplayString_rdb((v14 + 8), (*(v14 + 48) + 4), (a1 + 47032));
      *buf = 141558275;
      v38 = 1752392040;
      v39 = 2085;
      v40 = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Initialized RRSet for %{sensitive, mask.hash}s", buf, 0x16u);
    }
  }

  else
  {
    v28 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_66;
    }
  }

  v29 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_74;
    }

    v31 = *(v14 + 96);
    *buf = 134217984;
    v38 = v31;
  }

  else
  {
    v29 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_74;
    }

    v30 = *(v14 + 96);
    *buf = 134217984;
    v38 = v30;
  }

  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "RRSet:                %lx", buf, 0xCu);
LABEL_74:
  if (v36)
  {
    mDNS_Register_internal(a1, a2 + 1200);
  }

  v32 = *(a2 + 3552);
  if (v32 == AWDLInterfaceID || v32 == WiFiAwareInterfaceID)
  {
    if (!*(a2 + 32) && !*(a2 + 1208))
    {
      goto LABEL_87;
    }

    v33 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v38 = a2 + 3606;
        goto LABEL_86;
      }
    }

    else
    {
      v33 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v38 = a2 + 3606;
LABEL_86:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "D2D_start_advertising_interface - ifname: %{public}s", buf, 0xCu);
      }
    }

LABEL_87:
    if (*(a2 + 32))
    {
      internal_start_advertising_service(a2 + 32, 0, 0);
    }

    if (*(a2 + 1208))
    {
      internal_start_advertising_service(a2 + 1208, 0, 0);
    }
  }
}

double mDNS_SetupResourceRecord(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5, char a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a3 != -2 || a7 == 4)
  {
    if (a3 != -3 || a7 == 5)
    {
      if (a3 || (a7 & 0xFFFFFFFE) != 4)
      {
        goto LABEL_32;
      }

      v17 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v17 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      v26 = 134218240;
      v27 = 0;
      v28 = 1024;
      v29 = a7;
      v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch InterfaceAny record InterfaceID %p called with artype %u";
    }

    else
    {
      v17 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v20 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v17 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      v26 = 134218240;
      v27 = -3;
      v28 = 1024;
      v29 = a7;
      v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch P2P record InterfaceID %p called with artype %u";
    }
  }

  else
  {
    v17 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v18 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    v26 = 134218240;
    v27 = -2;
    v28 = 1024;
    v29 = a7;
    v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch LocalOnly record InterfaceID %p called with artype %u";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, &v26, 0x12u);
LABEL_32:
  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = 4500;
  }

  *(a1 + 8) = a6;
  if (a5 <= 0x20C49B)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2147483;
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a1 + 652;
  *(a1 + 12) = a4;
  *(a1 + 14) = 1;
  *(a1 + 16) = v24;
  *(a1 + 56) = 0;
  if (!a2)
  {
    a2 = a1 + 908;
    *(a1 + 908) = 264;
  }

  *(a1 + 48) = a2;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a8;
  *(a1 + 112) = a9;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = a7;
  *(a1 + 120) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = 0;
  *(a1 + 358) = 0;
  *(a1 + 368) = a1 + 652;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 596) = 0;
  *(a1 + 652) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 577) = 0u;
  return result;
}

_BYTE *AppendDNSNameString(_BYTE *a1, const char *a2)
{
  v2 = 257;
  v3 = a1;
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      break;
    }

    if (!*v3)
    {
      v2 = (v3 - a1 + 1);
      break;
    }

    v3 += v4 + 1;
  }

  while (v3 - a1 < 256);
  v5 = &a1[v2 - 1];
  v6 = a1 + 255;
  v7 = *a2;
  v8 = a2;
  if (v7 == 46)
  {
    if (a2[1])
    {
      v7 = 46;
    }

    else
    {
      v7 = 0;
    }

    if (a2[1])
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 + 1);
    }
  }

  if (v7)
  {
    v9 = v5 >= v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    i = v5;
LABEL_44:
    *i = 0;
    v17 = i + 1;
    if (*v8)
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    while (v7 != 46)
    {
      for (i = (v5 + 1); v7 && v7 != 46 && i < v6; ++i)
      {
        v11 = v8 + 1;
        if (v7 == 92)
        {
          v7 = *v11;
          if (!*v11)
          {
            goto LABEL_35;
          }

          v11 = v8 + 2;
          if ((v7 - 48) <= 9)
          {
            v12 = *v11;
            if ((v12 - 48) <= 9)
            {
              v13 = v8[3] - 48;
              if (v13 <= 9)
              {
                v14 = v8 + 4;
                if (((10 * v12 + 32) & 0xFE) + 100 * (v7 - 48) + v13 < 0x100)
                {
                  LOBYTE(v7) = ((10 * v12 + 32) & 0xFE) + 100 * (v7 - 48) + v13;
                  v11 = v14;
                }
              }
            }
          }
        }

        *i = v7;
        LOBYTE(v7) = *v11;
        v8 = v11;
      }

      v11 = v8;
LABEL_35:
      v15 = &i[~v5];
      if (v15 > 63)
      {
        return 0;
      }

      if (v7 == 46)
      {
        v8 = v11 + 1;
      }

      else
      {
        v8 = v11;
      }

      *v5 = v15;
      LOBYTE(v7) = *v8;
      if (*v8)
      {
        v16 = i >= v6;
      }

      else
      {
        v16 = 1;
      }

      v5 = i;
      if (v16)
      {
        goto LABEL_44;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AppendDNSNameString: Illegal empty label in name %s", a2);
    return 0;
  }
}

size_t mDNS_Register_internal(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 12);
  if (v5 <= 0x27)
  {
    if (((1 << v5) & 0x1000248000) != 0)
    {
      v6 = 6;
    }

    else if (((1 << v5) & 0x8000001024) != 0)
    {
      v6 = 4;
    }

    else
    {
      if (v5 != 33)
      {
        goto LABEL_9;
      }

      v6 = 10;
    }

    v4 = (*(a2 + 48) + v6);
  }

LABEL_9:
  v7 = *(a2 + 16);
  if (v7 <= 0)
  {
    v12 = mDNSLogCategory_State;
    v9 = 4294901756;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v13 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v13);
    *__n_6 = 67109635;
    *&__n_6[4] = v7;
    *&__n_6[8] = 2160;
    *&__n_6[10] = 1752392040;
    *&__n_6[18] = 2085;
    *&__n_6[20] = v13;
    v11 = "mDNS_Register_internal: TTL %X should be 1 - 0x7FFFFFFF %{sensitive, mask.hash}s";
    v14 = v12;
    v15 = 28;
    goto LABEL_19;
  }

  if (!*(a2 + 8))
  {
    v8 = mDNSLogCategory_State;
    v9 = 4294901756;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v16 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v16);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v16;
    v11 = "mDNS_Register_internal: RecordType must be non-zero %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  if (*(a1 + 76))
  {
    v8 = mDNSLogCategory_State;
    v9 = 4294901733;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v10 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v10);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v10;
    v11 = "mDNS_Register_internal: Shutting down, can't register %{sensitive, mask.hash}s";
LABEL_18:
    v14 = v8;
    v15 = 22;
    goto LABEL_19;
  }

  v17 = (a1 + 12616);
  if (*(a1 + 14))
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      if (*(a2 + 122))
      {
        *(a2 + 32) = -2;
        *(a2 + 172) = 4;
LABEL_28:
        v19 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
          *__n_6 = 141558275;
          *&__n_6[4] = 1752392040;
          *&__n_6[12] = 2085;
          *&__n_6[14] = a1 + 47032;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: Diverting record to local-only %{sensitive, mask.hash}s", __n_6, 0x16u);
        }

        goto LABEL_30;
      }

      if (!IsLocalDomain(*(a2 + 40)))
      {
        goto LABEL_30;
      }

      v18 = *(a2 + 32);
    }

    switch(v18)
    {
      case -3:
        goto LABEL_25;
      case -2:
        goto LABEL_30;
      case 0:
LABEL_25:
        *(a2 + 32) = -2;
        *(a2 + 172) = 4;
        goto LABEL_28;
    }

    v48 = (a1 + 12656);
    while (1)
    {
      v48 = *v48;
      if (!v48)
      {
        break;
      }

      if (v48[444] == v18)
      {
        if (*(v48 + 3670))
        {
          break;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_30:
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v20 = AuthGroupForName(a1 + 6264, *(a2 + 24), *(a2 + 40));
    v21 = (a1 + 12616);
    if (v20)
    {
      v22 = v20 + 2;
      while (1)
      {
        v22 = *v22;
        if (!v22)
        {
          break;
        }

        if (v22 == a2)
        {
          v23 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a2 + 40);
            if (v24)
            {
              v25 = *(a2 + 40);
              while (1)
              {
                if (!v25 || (v26 = *v25, v26 > 0x3F))
                {
LABEL_42:
                  v27 = 257;
                  goto LABEL_132;
                }

                if (!*v25)
                {
                  break;
                }

                v25 += v26 + 1;
                if (&v25[-v24] >= 256)
                {
                  goto LABEL_42;
                }
              }

              v27 = (v25 - v24 + 1);
            }

            else
            {
              v27 = 0;
            }

LABEL_132:
            v62 = DNSTypeName(*(a2 + 12));
            *__n_6 = 134219011;
            *&__n_6[4] = a2;
            *&__n_6[12] = 2160;
            *&__n_6[14] = 1752392040;
            *&__n_6[22] = 1040;
            *&__n_6[24] = v27;
            *&__n_6[28] = 2101;
            *&__n_6[30] = v24;
            *&__n_6[38] = 2082;
            *&__n_6[40] = v62;
            v60 = "mDNS_Register_internal: ERROR!! Tried to register LocalOnly AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the list";
            goto LABEL_133;
          }

          return 4294901749;
        }
      }

      v21 = (a1 + 12616);
    }
  }

  else
  {
    v28 = (a1 + 12616);
    do
    {
      v21 = v28;
      v28 = *v28;
      if (v28)
      {
        v29 = v28 == a2;
      }

      else
      {
        v29 = 1;
      }
    }

    while (!v29);
    if (v28)
    {
      v23 = mDNSLogCategory_State;
      if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        return 4294901749;
      }

      v30 = *(a2 + 40);
      if (v30)
      {
        v31 = *(a2 + 40);
        do
        {
          if (!v31)
          {
            break;
          }

          v32 = *v31;
          if (v32 > 0x3F)
          {
            break;
          }

          if (!*v31)
          {
            v33 = (v31 - v30 + 1);
            goto LABEL_129;
          }

          v31 += v32 + 1;
        }

        while (&v31[-v30] < 256);
        v33 = 257;
      }

      else
      {
        v33 = 0;
      }

LABEL_129:
      v61 = DNSTypeName(*(a2 + 12));
      *__n_6 = 134219011;
      *&__n_6[4] = a2;
      *&__n_6[12] = 2160;
      *&__n_6[14] = 1752392040;
      *&__n_6[22] = 1040;
      *&__n_6[24] = v33;
      *&__n_6[28] = 2101;
      *&__n_6[30] = v30;
      *&__n_6[38] = 2082;
      *&__n_6[40] = v61;
      v60 = "mDNS_Register_internal: ERROR!! Tried to register AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the list";
      goto LABEL_133;
    }
  }

  v34 = (a1 + 12624);
  do
  {
    v35 = v34;
    v34 = *v34;
    if (v34)
    {
      v36 = v34 == a2;
    }

    else
    {
      v36 = 1;
    }
  }

  while (!v36);
  if (v34)
  {
    v23 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a2 + 40);
      if (v37)
      {
        v38 = *(a2 + 40);
        while (1)
        {
          if (!v38 || (v39 = *v38, v39 > 0x3F))
          {
LABEL_73:
            v40 = 257;
            goto LABEL_127;
          }

          if (!*v38)
          {
            break;
          }

          v38 += v39 + 1;
          if (&v38[-v37] >= 256)
          {
            goto LABEL_73;
          }
        }

        v40 = (v38 - v37 + 1);
      }

      else
      {
        v40 = 0;
      }

LABEL_127:
      v59 = DNSTypeName(*(a2 + 12));
      *__n_6 = 134219011;
      *&__n_6[4] = a2;
      *&__n_6[12] = 2160;
      *&__n_6[14] = 1752392040;
      *&__n_6[22] = 1040;
      *&__n_6[24] = v40;
      *&__n_6[28] = 2101;
      *&__n_6[30] = v37;
      *&__n_6[38] = 2082;
      *&__n_6[40] = v59;
      v60 = "mDNS_Register_internal: ERROR!! Tried to register AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the Duplicate list";
LABEL_133:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v60, __n_6, 0x30u);
    }

    return 4294901749;
  }

  v41 = *(a2 + 88);
  if (v41)
  {
    v42 = *(a2 + 8);
    if (v42 != 32)
    {
      if (v42 != 2)
      {
        v9 = 4294901747;
        v49 = mDNSLogCategory_State;
        if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          return v9;
        }

        v50 = *(a2 + 40);
        if (v50)
        {
          v51 = *(a2 + 40);
          while (1)
          {
            if (!v51 || (v52 = *v51, v52 > 0x3F))
            {
LABEL_116:
              v53 = 257;
              goto LABEL_191;
            }

            if (!*v51)
            {
              break;
            }

            v51 += v52 + 1;
            if (&v51[-v50] >= 256)
            {
              goto LABEL_116;
            }
          }

          v53 = (v51 - v50 + 1);
        }

        else
        {
          v53 = 0;
        }

LABEL_191:
        v89 = DNSTypeName(*(a2 + 12));
        *__n_6 = 141558787;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v53;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v50;
        *&__n_6[28] = 2082;
        *&__n_6[30] = v89;
        v11 = "mDNS_Register_internal: ERROR! %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s): rr->DependentOn && RecordType != kDNSRecordTypeUnique or kDNSRecordTypeKnownUnique";
        v14 = v49;
        v15 = 38;
        goto LABEL_19;
      }

      *(a2 + 8) = 16;
    }

    if ((*(v41 + 8) & 0x32) != 0)
    {
      goto LABEL_79;
    }

    v9 = 4294901747;
    v54 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v55 = *(a2 + 40);
    if (v55)
    {
      v56 = *(a2 + 40);
      while (1)
      {
        if (!v56 || (v57 = *v56, v57 > 0x3F))
        {
LABEL_124:
          v58 = 257;
          goto LABEL_199;
        }

        if (!*v56)
        {
          break;
        }

        v56 += v57 + 1;
        if (&v56[-v55] >= 256)
        {
          goto LABEL_124;
        }
      }

      v58 = (v56 - v55 + 1);
    }

    else
    {
      v58 = 0;
    }

LABEL_199:
    v94 = DNSTypeName(*(a2 + 12));
    v95 = *(*(a2 + 88) + 8);
    *__n_6 = 141559043;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 1040;
    *&__n_6[14] = v58;
    *&__n_6[18] = 2101;
    *&__n_6[20] = v55;
    *&__n_6[28] = 2082;
    *&__n_6[30] = v94;
    *&__n_6[38] = 1024;
    *&__n_6[40] = v95;
    v11 = "mDNS_Register_internal: ERROR! %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s): rr->DependentOn->RecordType bad type %X";
    v14 = v54;
    v15 = 44;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v11, __n_6, v15);
    return v9;
  }

LABEL_79:
  *a2 = 0;
  v43 = *(a2 + 120);
  if (*(a2 + 120) && v4)
  {
    *v4 = 0;
    v43 = *(a2 + 120);
  }

  *(a2 + 188) = 0;
  if (*(a2 + 8) == 2)
  {
    v44 = 3;
  }

  else
  {
    v44 = 0;
  }

  *(a2 + 190) = v44;
  *(a2 + 191) = 4;
  *(a2 + 192) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 256) = 0;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0;
  if (!v43)
  {
    InitializeLastAPTime(a1, a2);
  }

  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 10;
  *(a2 + 336) = 0;
  if (*(a2 + 126) && !*(a2 + 144))
  {
    *(a2 + 191) = 2;
  }

  *(a2 + 344) = 0;
  *(a2 + 348) = 0;
  *(a2 + 352) = 0;
  *(a2 + 356) = 0;
  *(a2 + 358) = 0;
  v45 = *(a2 + 40);
  *(a2 + 360) = 0;
  *(a2 + 368) = v45;
  *(a2 + 616) = 0;
  *(a2 + 620) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 624) = 0;
  *(a2 + 640) = 0;
  *(a2 + 632) = 0;
  if (*(a2 + 12) == 16 && !*(a2 + 20))
  {
    *(a2 + 20) = 1;
    *(*(a2 + 48) + 4) = 0;
  }

  if (!*(a2 + 120))
  {
    *(a2 + 20) = GetRDLength(a2 + 8, 0);
    *(a2 + 22) = GetRDLength(a2 + 8, 1);
    goto LABEL_142;
  }

  SetTargetToHostName(a1, a2);
  if (*(a2 + 344) != 8)
  {
    goto LABEL_142;
  }

  v46 = *(a2 + 12);
  if (v46 <= 0x27)
  {
    if (((1 << v46) & 0x1000248000) != 0)
    {
      v47 = 6;
    }

    else if (((1 << v46) & 0x8000001024) != 0)
    {
      v47 = 4;
    }

    else
    {
      if (v46 != 33)
      {
        goto LABEL_140;
      }

      v47 = 10;
    }

    *(*(a2 + 48) + v47) = 0;
  }

LABEL_140:
  v64 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    *__n_6 = 136446210;
    *&__n_6[4] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: record %{public}s in NoTarget state", __n_6, 0xCu);
  }

LABEL_142:
  v65 = *(a2 + 40);
  v66 = v65;
  while (1)
  {
    if (!v66)
    {
      goto LABEL_152;
    }

    v67 = *v66;
    if (v67 > 0x3F)
    {
      goto LABEL_152;
    }

    if (!*v66)
    {
      break;
    }

    v66 += v67 + 1;
    if (&v66[-v65] > 255)
    {
      goto LABEL_152;
    }
  }

  if ((v66 - v65 + 1) >= 0x101u)
  {
LABEL_152:
    v9 = 4294901747;
    v8 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v70 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v70);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v70;
    v11 = "Attempt to register record with invalid name: %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  v68 = *(a2 + 48);
  if (!ValidateRData(*(a2 + 12), *(a2 + 20), v68))
  {
    v9 = 4294901747;
    v8 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v71 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (v68 + 4), v71);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v71;
    v11 = "Attempt to register record with invalid rdata: %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  *(a2 + 24) = DomainNameHashValue(v65);
  if (v4)
  {
    v69 = DomainNameHashValue(v4);
  }

  else
  {
    v69 = RDataHashValue(a2 + 8);
  }

  *(a2 + 28) = v69;
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4 && (*(a2 + 8) & 0x32) != 0 && CheckAuthRecordConflict(a1 + 6264, a2))
  {
    v72 = mDNSLogCategory_State;
    v9 = 4294901748;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    v73 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v73);
    v74 = *(a2 + 32);
    *__n_6 = 141558787;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v73;
    *&__n_6[22] = 2048;
    *&__n_6[24] = a2;
    *&__n_6[32] = 2048;
    *&__n_6[34] = v74;
    v11 = "mDNS_Register_internal: Name conflict %{sensitive, mask.hash}s (%p), InterfaceID %p";
    v14 = v72;
    v15 = 42;
    goto LABEL_19;
  }

  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    if (!*(a1 + 12632))
    {
      *(a1 + 12632) = a2;
    }

    do
    {
      v110 = v21;
      v21 = *v21;
    }

    while (v21);
    *v110 = a2;
    if (*(a2 + 8) == 2)
    {
      *(a2 + 8) = 16;
    }

    v9 = 0;
    *(a2 + 189) = 0;
    *(a2 + 191) = 0;
    if (*(a2 + 344) == 8)
    {
      return v9;
    }

    ActivateUnicastRegistration(a1, a2);
    return 0;
  }

  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    *(a2 + 189) = 0;
    *(a2 + 191) = 0;
    v75 = CheckAuthIdenticalRecord(a1 + 6264, a2);
    v76 = *(a2 + 40);
    v77 = mDNS_DomainNameFNV1aHash(v76);
    if (v75)
    {
      goto LABEL_168;
    }

LABEL_188:
    result = *(a2 + 20);
    if (result >= 0x201)
    {
      result = malloc_type_malloc(result, 0xD6683CF4uLL);
      if (!result)
      {
        goto LABEL_306;
      }

      v86 = result;
      LODWORD(result) = *(a2 + 20);
      v88 = result;
      v87 = v86;
    }

    else
    {
      v86 = 0;
      v87 = &word_1001787D0;
      v88 = 512;
    }

    if (!result)
    {
      v96 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        if (v76)
        {
          v97 = v76;
          while (1)
          {
            if (!v97 || (v98 = *v97, v98 > 0x3F))
            {
LABEL_207:
              v99 = 257;
              goto LABEL_254;
            }

            if (!*v97)
            {
              break;
            }

            v97 += v98 + 1;
            if (v97 - v76 >= 256)
            {
              goto LABEL_207;
            }
          }

          v99 = (v97 - v76 + 1);
        }

        else
        {
          v99 = 0;
        }

LABEL_254:
        v115 = *(a2 + 12);
        *__n_6 = 141559043;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v99;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v76;
        *&__n_6[28] = 1024;
        *&__n_6[30] = v77;
        *&__n_6[34] = 1024;
        *&__n_6[36] = v115;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to active record list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>", __n_6, 0x28u);
      }

      goto LABEL_264;
    }

    __n_2 = 0;
    __n = 0;
    RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v87, v88, &__n, &__n_2);
    if (__n_2)
    {
LABEL_264:
      if (v86)
      {
        free(v86);
      }

      if ((*(a2 + 172) & 0xFFFFFFFE) != 4)
      {
        if (!*(a1 + 12632))
        {
          *(a1 + 12632) = a2;
        }

        *v21 = a2;
        goto LABEL_292;
      }

      inserted = InsertAuthRecord(a1 + 6264, a2);
      if (inserted && !inserted[5])
      {
        *(a1 + 12648) = 1;
        inserted[5] = a2;
      }

      if (*(a2 + 8) == 2)
      {
        *(a2 + 8) = 16;
      }

      AcknowledgeRecord(a1, a2);
      return 0;
    }

    __src = RDataBytesPointer;
    v133 = v77;
    if (__n < 0x1FFuLL)
    {
      v91 = 0;
      v92 = 512;
      v93 = word_1001789D0;
LABEL_224:
      v106 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v130 = v91;
        if (v76)
        {
          v107 = v76;
          while (1)
          {
            if (!v107 || (v108 = *v107, v108 > 0x3F))
            {
LABEL_231:
              v109 = 257;
              goto LABEL_257;
            }

            if (!*v107)
            {
              break;
            }

            v107 += v108 + 1;
            if (v107 - v76 >= 256)
            {
              goto LABEL_231;
            }
          }

          v109 = (v107 - v76 + 1);
LABEL_257:
          v128 = v109;
        }

        else
        {
          v128 = 0;
        }

        v116 = *(a2 + 12);
        v117 = __n;
        v118 = __n + 2;
        if (v118 <= v92)
        {
          *v93 = __rev16(v116);
          memcpy(v93 + 1, __src, v117);
        }

        else
        {
          v93 = 0;
        }

        *__n_6 = 141559811;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v128;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v76;
        *&__n_6[28] = 1024;
        *&__n_6[30] = v133;
        *&__n_6[34] = 1024;
        *&__n_6[36] = v116;
        *&__n_6[40] = 2160;
        *&__n_6[42] = 1752392040;
        v138 = 1040;
        v139 = v118;
        v140 = 2101;
        v141 = v93;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to active record list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", __n_6, 0x42u);
        v91 = v130;
      }

      if (v91)
      {
        free(v91);
      }

      goto LABEL_264;
    }

    v92 = __n + 2;
    result = malloc_type_malloc(__n + 2, 0xD6683CF4uLL);
    if (result)
    {
      v93 = result;
      v91 = result;
      goto LABEL_224;
    }

LABEL_306:
    __break(1u);
    return result;
  }

  v75 = *v17;
  if (!*v17)
  {
LABEL_187:
    v76 = *(a2 + 40);
    v77 = mDNS_DomainNameFNV1aHash(v76);
    goto LABEL_188;
  }

  while (1)
  {
    if (*(v75 + 32) != *(a2 + 32))
    {
      goto LABEL_186;
    }

    v81 = *(v75 + 8);
    v82 = *(a2 + 8);
    v83 = v82 == 1 || v81 == 1;
    v84 = v83 || v81 == v82;
    v85 = v84 || (v82 | v81) == 18;
    if (!v85 || !IdenticalResourceRecord(v75 + 8, a2 + 8))
    {
      goto LABEL_186;
    }

    if (*(v75 + 8) != 1)
    {
      break;
    }

    *(v75 + 191) = 0;
LABEL_186:
    v75 = *v75;
    if (!v75)
    {
      goto LABEL_187;
    }
  }

  v76 = *(a2 + 40);
  v77 = mDNS_DomainNameFNV1aHash(v76);
LABEL_168:
  result = *(a2 + 20);
  if (result < 0x201)
  {
    v78 = 0;
    v79 = &word_1001787D0;
    v80 = 512;
    goto LABEL_210;
  }

  result = malloc_type_malloc(result, 0xA2C11154uLL);
  if (!result)
  {
    goto LABEL_306;
  }

  v78 = result;
  LODWORD(result) = *(a2 + 20);
  v80 = result;
  v79 = v78;
LABEL_210:
  if (!result)
  {
    v102 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      if (v76)
      {
        v103 = v76;
        while (1)
        {
          if (!v103 || (v104 = *v103, v104 > 0x3F))
          {
LABEL_221:
            v105 = 257;
            goto LABEL_278;
          }

          if (!*v103)
          {
            break;
          }

          v103 += v104 + 1;
          if (v103 - v76 >= 256)
          {
            goto LABEL_221;
          }
        }

        v105 = (v103 - v76 + 1);
      }

      else
      {
        v105 = 0;
      }

LABEL_278:
      v120 = *(a2 + 12);
      *__n_6 = 141559043;
      *&__n_6[4] = 1752392040;
      *&__n_6[12] = 1040;
      *&__n_6[14] = v105;
      *&__n_6[18] = 2101;
      *&__n_6[20] = v76;
      *&__n_6[28] = 1024;
      *&__n_6[30] = v77;
      *&__n_6[34] = 1024;
      *&__n_6[36] = v120;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to duplicate list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>", __n_6, 0x28u);
    }

    goto LABEL_287;
  }

  __n_2 = 0;
  __n = 0;
  v100 = ResourceRecordGetRDataBytesPointer(a2 + 8, v79, v80, &__n, &__n_2);
  if (__n_2)
  {
    goto LABEL_287;
  }

  v101 = v100;
  v134 = v77;
  if (__n < 0x1FFuLL)
  {
    v129 = word_1001789D0;
    __srca = 0;
    v127 = 512;
    goto LABEL_242;
  }

  v127 = __n + 2;
  result = malloc_type_malloc(__n + 2, 0xA2C11154uLL);
  __srca = result;
  if (!result)
  {
    goto LABEL_306;
  }

  v129 = result;
LABEL_242:
  v111 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    if (v76)
    {
      v112 = v76;
      while (1)
      {
        if (!v112 || (v113 = *v112, v113 > 0x3F))
        {
LABEL_249:
          v114 = 257;
          goto LABEL_280;
        }

        if (!*v112)
        {
          break;
        }

        v112 += v113 + 1;
        if (v112 - v76 >= 256)
        {
          goto LABEL_249;
        }
      }

      v114 = (v112 - v76 + 1);
LABEL_280:
      v126 = v114;
    }

    else
    {
      v126 = 0;
    }

    v121 = *(a2 + 12);
    v122 = __n;
    v123 = __n + 2;
    if (v123 <= v127)
    {
      *v129 = __rev16(v121);
      memcpy(v129 + 1, v101, v122);
    }

    else
    {
      v129 = 0;
    }

    *__n_6 = 141559811;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 1040;
    *&__n_6[14] = v126;
    *&__n_6[18] = 2101;
    *&__n_6[20] = v76;
    *&__n_6[28] = 1024;
    *&__n_6[30] = v134;
    *&__n_6[34] = 1024;
    *&__n_6[36] = v121;
    *&__n_6[40] = 2160;
    *&__n_6[42] = 1752392040;
    v138 = 1040;
    v139 = v123;
    v140 = 2101;
    v141 = v129;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to duplicate list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", __n_6, 0x42u);
  }

  if (__srca)
  {
    free(__srca);
  }

LABEL_287:
  if (v78)
  {
    free(v78);
  }

  *v35 = a2;
  if (*(a2 + 8) == 2 && *(v75 + 8) == 16)
  {
    *(a2 + 190) = 0;
  }

LABEL_292:
  if (*(a2 + 32) || *(a2 + 122) || IsLocalDomain(*(a2 + 40)))
  {
    IncrementAutoTargetServices(a1, a2);
    if (*(a2 + 8) - 1 >= 2)
    {
      AcknowledgeRecord(a1, a2);
    }

    mDNS_UpdateAllowSleep(a1);
  }

  if (!*(a2 + 126) && *(a2 + 12) == 10)
  {
    v124 = *(a2 + 40);
    if (*v124)
    {
      v125 = *v124 + 1;
    }

    else
    {
      v125 = 0;
    }

    if (SameDomainLabelPointer(&v124[v125], "\n_keepalive"))
    {
      memset(__n_6, 0, 20);
      *(a2 + 8) = 32;
      *(a2 + 191) = 0;
      getKeepaliveRaddr(a1, a2, __n_6);
      mDNSPlatformGetRemoteMacAddr(__n_6);
    }
  }

  v9 = 0;
  *(a2 + 648) = *(a1 + 64);
  return v9;
}

void InitializeLastAPTime(char *a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (v4)
  {
    v5 = 1000;
  }

  else
  {
    if ((*(a2 + 8) & 0x30) != 0)
    {
      v6 = 500;
    }

    else
    {
      v6 = 0;
    }

    if ((*(a2 + 8) & 2) != 0)
    {
      v7 = 250;
    }

    else
    {
      v7 = v6;
    }

    if ((*(a2 + 8) & 0xC) != 0)
    {
      v5 = 500;
    }

    else
    {
      v5 = v7;
    }
  }

  *(a2 + 280) = v5;
  if (!*(a2 + 190))
  {
    v16 = *(a2 + 8);
    if (v16 == 8 || v16 == 32 || (v17 = *(a1 + 3168)) == 0 || (v9 = *(a1 + 16), (v17 - v9) < 0))
    {
      v9 = *(a1 + 16);
      v18 = v9 - v5;
    }

    else
    {
      v18 = v17 - v5 + (v5 >> 1) + 750;
    }

    *(a2 + 284) = v18;
    if (v4)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  *(a2 + 180) = 0;
  v8 = *(a1 + 3168);
  v9 = *(a1 + 16);
  if (!v8 || ((v8 - v9) & 0x80000000) != 0)
  {
    do
    {
      v10 = arc4random() & 0x7F;
    }

    while (v10 > 0x7D);
    v8 = v9 + v10 + 125;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    *(a1 + 3168) = v8;
    v11 = *(a1 + 24);
    if ((v8 - v11) >= 0)
    {
      if (v11 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 24);
      }

      *(a1 + 3168) = v8;
    }

    v9 = *(a1 + 16);
    if ((v8 - v9) < 0)
    {
      *(a1 + 3168) = v9;
      v8 = v9;
    }

    v12 = *(a1 + 23);
    if ((v8 - v12) >= 0)
    {
      if (v12 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 23);
      }

      *(a1 + 3168) = v8;
    }

    if ((v8 - v9) < 0)
    {
      *(a1 + 3168) = v9;
      v8 = v9;
    }

    v13 = *(a1 + 20);
    if (v13 && ((v8 - v13) & 0x80000000) != 0)
    {
      *(a1 + 3168) = v13;
      v8 = v13;
    }

    v14 = v8 - v9;
    if ((v8 - v9) >= 8001)
    {
      v15 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }
      }

      v21[0] = 67110144;
      v21[1] = v14;
      v22 = 1024;
      v23 = v11 - v9;
      v24 = 1024;
      v25 = v12 - v9;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v13 - v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "InitializeLastAPTime ERROR m->SuppressProbes %d m->NextScheduledProbe %d m->NextScheduledQuery %d m->SuppressQueries %d %d", v21, 0x20u);
LABEL_50:
      v19 = *(a1 + 16);
      do
      {
        v20 = arc4random() & 0x7F;
      }

      while (v20 > 0x7D);
      v8 = v19 + v20 + 125;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      *(a1 + 3168) = v8;
      v9 = *(a1 + 16);
    }
  }

  *(a2 + 284) = v8 - *(a2 + 280);
  if (*(a2 + 144))
  {
LABEL_56:
    *(a2 + 284) = v9;
  }

LABEL_57:
  *(a2 + 288) = v9;
  *(a2 + 296) = -1;
  SetNextAnnounceProbeTime(a1, a2);
}

void SetNextAnnounceProbeTime(char *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5 == 2)
  {
    v6 = *(a2 + 280) + *(a2 + 284) - *(a1 + 16);
    if (v6 < 10001)
    {
      goto LABEL_25;
    }

    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:
        v13 = *(a2 + 190);
        GetRRDisplayString_rdb(v4, (*(a2 + 48) + 4), a1 + 47032);
        v20 = 67109891;
        v21 = v13;
        v22 = 1024;
        v23 = v6;
        v24 = 2160;
        v25 = 1752392040;
        v26 = 2085;
        v27 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetNextAnnounceProbeTime: ProbeCount %d Next in %d %{sensitive, mask.hash}s", &v20, 0x22u);
      }
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    v14 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        v15 = *(a1 + 3168);
        v16 = *(a1 + 16);
        v20 = 67109632;
        v21 = v15;
        v22 = 1024;
        v23 = v16;
        v24 = 1024;
        LODWORD(v25) = v15 - v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SetNextAnnounceProbeTime: m->SuppressProbes %d m->timenow %d diff %d", &v20, 0x14u);
      }
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v17 = *(a1 + 24);
    v18 = *(a2 + 280) + *(a2 + 284);
    if (v17 - v18 >= 0)
    {
      *(a1 + 24) = v18;
      v17 = v18;
    }

    v19 = *(a1 + 16);
    if (v17 - v19 < 0)
    {
      *(a1 + 24) = v19;
    }

    return;
  }

  if (*(a2 + 191))
  {
    IsValidAnswer = ResourceRecordIsValidAnswer(a2);
    if (v5 == 1 || IsValidAnswer)
    {
      v11 = *(a2 + 280) + *(a2 + 284);
      if (*(a1 + 25) - v11 >= 0)
      {
        *(a1 + 25) = v11;
      }
    }
  }
}

uint64_t GetRDLength(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 6) == 255)
  {
    return *(a1 + 12);
  }

  else
  {
    v5 = *(a1 + 4);
    v6 = 4;
    v7 = *(a1 + 40);
    v8 = v7 + 4;
    switch(v5)
    {
      case 1:
        return v6;
      case 2:
      case 5:
      case 12:
      case 39:

        return CompressedDomainNameLength(v8, v4);
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 16:
      case 19:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 34:
      case 35:
      case 37:
      case 38:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 48:
      case 49:
        return *(a1 + 12);
      case 6:
        v16 = CompressedDomainNameLength(v8, v4);
        return (v16 + CompressedDomainNameLength(v7 + 260, v4) + 20);
      case 13:
        LOWORD(v14) = *v8 + v8[*v8 + 1];
        return (v14 + 2);
      case 14:
      case 17:
        v10 = CompressedDomainNameLength(v8, v4);
        return (CompressedDomainNameLength(v7 + 260, v4) + v10);
      case 15:
      case 18:
      case 21:
      case 36:
        return (CompressedDomainNameLength(v7 + 6, v4) + 2);
      case 26:
        v15 = CompressedDomainNameLength(v7 + 6, v4);
        v14 = v15 + CompressedDomainNameLength(v7 + 262, v4);
        return (v14 + 2);
      case 28:
        return 16;
      case 33:
        return (CompressedDomainNameLength(v7 + 10, v4) + 6);
      case 47:
        v11 = v7 + 4;
        break;
      default:
        if (v5 == 65323)
        {
          return v6;
        }

        return *(a1 + 12);
    }

    while (1)
    {
      if (!v11 || (v12 = *v11, v12 > 0x3F))
      {
LABEL_22:
        v13 = -255;
        goto LABEL_28;
      }

      if (!*v11)
      {
        break;
      }

      v11 += v12 + 1;
      if (v11 - v8 >= 256)
      {
        goto LABEL_22;
      }
    }

    v13 = v8 - v11 + 1;
LABEL_28:
    v17 = RRAssertsExistence(a1, 0x2Fu);
    v6 = *(a1 + 12);
    if (a2)
    {
      v18 = v13;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + v6;
    if (!v17)
    {
      return v19;
    }
  }

  return v6;
}

BOOL ValidateRData(int a1, unsigned int a2, _BYTE *a3)
{
  result = 1;
  if (a1 <= 11)
  {
    if ((a1 - 2) >= 4 && (a1 - 7) >= 3)
    {
      return a1 != 1 || a2 == 4;
    }

    goto LABEL_12;
  }

  if (a1 <= 15)
  {
    if ((a1 - 13) >= 2)
    {
      if (a1 == 12)
      {
LABEL_12:
        v9 = DomainNameBytesLength(a3 + 4, &a3[a2 + 4]);
        return v9 < 0x101 && v9 == a2;
      }

      if (a1 != 15)
      {
        return result;
      }

      v6 = DomainNameBytesLength(a3 + 6, &a3[a2 + 4]);
      v7 = v6 >= 0x101u;
      v8 = v6 + 2;
      return !v7 && v8 == a2;
    }

LABEL_26:
    if (!a2)
    {
      return 0;
    }

    v12 = a3 + 4;
    v13 = &a3[a2 + 4];
    while (v12 < v13)
    {
      v12 += *v12 + 1;
    }

    return v12 == v13;
  }

  if (a1 == 16)
  {
    goto LABEL_26;
  }

  if (a1 != 28)
  {
    if (a1 != 33)
    {
      return result;
    }

    v11 = DomainNameBytesLength(a3 + 10, &a3[a2 + 4]);
    v7 = v11 >= 0x101u;
    v8 = v11 + 6;
    return !v7 && v8 == a2;
  }

  return a2 == 16;
}

unint64_t DomainNameHashValue(unint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  for (i = (v2 + 2); ; i += 2)
  {
    v4 = *(i - 1);
    if ((v1 - 65) < 0x1A)
    {
      v1 += 32;
    }

    v5 = v1 << 8;
    if (!*(i - 1))
    {
      break;
    }

    if ((v4 - 65) < 0x1A)
    {
      v4 += 32;
    }

    HIDWORD(v6) = v5 + result + v4;
    LODWORD(v6) = HIDWORD(v6);
    result = (v6 >> 29);
    v7 = *i;
    v1 = v7;
    if (!v7)
    {
      return result;
    }
  }

  return (v5 + result);
}

unint64_t RDataHashValue(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 12);
  v4 = *(a1 + 40);
  v5 = v4 + 4;
  switch(*(a1 + 4))
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xC:
    case 0x17:
    case 0x27:
      v6 = v4 + 4;
      goto LABEL_6;
    case 6:
      v18 = *(v4 + 516);
      v12 = *(v4 + 532);
      v13 = DomainNameHashValue(v4 + 4);
      return vaddvq_s32(v18) + v12 + DomainNameHashValue(v4 + 260) + v13;
    case 0xE:
    case 0x11:
      v7 = DomainNameHashValue(v4 + 4);
      v8 = v4 + 260;
      return DomainNameHashValue(v8) + v7;
    case 0xF:
    case 0x12:
    case 0x15:
    case 0x24:
      v6 = v4 + 6;
      goto LABEL_6;
    case 0x1A:
      v7 = DomainNameHashValue(v4 + 6);
      v8 = v4 + 262;
      return DomainNameHashValue(v8) + v7;
    case 0x21:
      v6 = v4 + 10;
LABEL_6:

      return DomainNameHashValue(v6);
    case 0x29:
      return result;
    case 0x2F:
      v9 = (v4 + 4);
      break;
    default:
      goto LABEL_20;
  }

  while (1)
  {
    if (!v9 || (v10 = *v9, v10 > 0x3F))
    {
LABEL_14:
      v11 = 257;
      goto LABEL_19;
    }

    if (!*v9)
    {
      break;
    }

    v9 += v10 + 1;
    if (&v9[-v5] >= 256)
    {
      goto LABEL_14;
    }
  }

  v11 = v9 - v5 + 1;
LABEL_19:
  result = DomainNameHashValue(v5);
  v5 += v11;
  v3 -= v11;
LABEL_20:
  if (v3 < 2)
  {
    v17 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      HIDWORD(v15) = result + (bswap32(*(v5 + v14)) >> 16);
      LODWORD(v15) = HIDWORD(v15);
      result = (v15 >> 29);
      v16 = v14 + 3;
      v14 += 2;
    }

    while (v16 < v3);
    v17 = v3 & 0x7FFFFFFE;
  }

  if (v17 < v3)
  {
    return result + (*(v5 + v17) << 8);
  }

  return result;
}

void SetTargetToHostName(char *a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 12);
  if (v5 <= 0x27)
  {
    if (((1 << v5) & 0x1000248000) != 0)
    {
      v6 = 6;
    }

    else if (((1 << v5) & 0x8000001024) != 0)
    {
      v6 = 4;
    }

    else
    {
      if (v5 != 33)
      {
        goto LABEL_9;
      }

      v6 = 10;
    }

    v4 = (*(a2 + 48) + v6);
  }

LABEL_9:
  v7 = *(a2 + 32);
  if (v7 == -2)
  {
    v9 = "\tlocalhost";
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else if ((*(a2 + 172) & 0xFFFFFFFE) == 2 || (AWDLInterfaceID ? (v8 = AWDLInterfaceID == v7) : (v8 = 0), v8 || WiFiAwareInterfaceID && WiFiAwareInterfaceID == v7))
  {
    v9 = a1 + 10664;
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v9 = a1 + 10408;
    if (v4)
    {
      goto LABEL_30;
    }
  }

  v10 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:
      v26 = 136446210;
      v27 = DNSTypeName(v5);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SetTargetToHostName: Don't know how to set the target of rrtype %{public}s", &v26, 0xCu);
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  if (!*(a2 + 122) && (*(a2 + 172) & 0xFFFFFFFE) != 4 && !IsLocalDomain((a2 + 652)))
  {
    if (*(a2 + 120))
    {
      *(a2 + 120) = 2;
    }

    ServiceTarget = GetServiceTarget(a1, a2);
    if (ServiceTarget)
    {
      v9 = ServiceTarget;
      if (*ServiceTarget)
      {
        v16 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v24 = v9;
          while (1)
          {
            if (!v24 || (v25 = *v24, v25 > 0x3F))
            {
LABEL_77:
              v19 = 257;
              goto LABEL_80;
            }

            if (!*v24)
            {
              break;
            }

            v24 += v25 + 1;
            if (v24 - v9 >= 256)
            {
              goto LABEL_77;
            }
          }

          v19 = (v24 - v9 + 1);
        }

        else
        {
          v16 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v17 = v9;
          while (1)
          {
            if (!v17 || (v18 = *v17, v18 > 0x3F))
            {
LABEL_53:
              v19 = 257;
              goto LABEL_80;
            }

            if (!*v17)
            {
              break;
            }

            v17 += v18 + 1;
            if (v17 - v9 >= 256)
            {
              goto LABEL_53;
            }
          }

          v19 = (v17 - v9 + 1);
        }

LABEL_80:
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), a1 + 47032);
        v26 = 141558787;
        v27 = 1752392040;
        v28 = 1040;
        *v29 = v19;
        *&v29[4] = 2101;
        *&v29[6] = v9;
        v30 = 2082;
        v31 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SetUnicastTargetToHostName target %{sensitive, mask.hash, mdnsresponder:domain_name}.*P for resource record %{public}s", &v26, 0x26u);
        goto LABEL_33;
      }
    }

    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_67:
        v23 = a1 + 47032;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v23);
        v26 = 141558275;
        v27 = 1752392040;
        v28 = 2085;
        *v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SetUnicastTargetToHostName No target for %{sensitive, mask.hash}s", &v26, 0x16u);
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    *(a2 + 344) = 8;
    if (v4)
    {
      *v4 = 0;
    }

    SetNewRData(a2 + 8, 0, 0);
    return;
  }

LABEL_33:
  if (v4)
  {
    SameDomainNameBytes(v4, v9);
    if (!SameDomainNameBytes(v4, v9))
    {
      v13 = v9;
      do
      {
        if (!v13)
        {
          break;
        }

        v14 = *v13;
        if (v14 > 0x3F)
        {
          break;
        }

        if (!*v13)
        {
          v20 = v13 - v9 + 1;
          if (v20 <= 0x100u)
          {
            memcpy(v4, v9, v20);
            goto LABEL_57;
          }

          break;
        }

        v13 += v14 + 1;
      }

      while (v13 - v9 <= 255);
      *v4 = 0;
LABEL_57:
      SetNewRData(a2 + 8, 0, 0);
      if (*(a2 + 8) == 2)
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      *(a2 + 190) = v21;
      *(a2 + 191) = 4;
      *(a2 + 189) = 0;
      InitializeLastAPTime(a1, a2);
    }
  }
}

unint64_t SetNewRData(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (a2)
  {
    *(a1 + 40) = a2;
    *(a1 + 12) = a3;
  }

  *(a1 + 12) = GetRDLength(a1, 0);
  *(a1 + 14) = GetRDLength(a1, 1);
  result = RDataHashValue(a1);
  *(a1 + 20) = result;
  return result;
}

uint64_t CompressedDomainNameLength(unsigned __int8 *a1, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = a1;
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      return (v4 - a1 + 1);
    }

    if (v5 > 0x3F)
    {
      return 257;
    }

    if (v3)
    {
      break;
    }

LABEL_12:
    v4 += v5 + 1;
    if (v4 - a1 > 255)
    {
      return 257;
    }
  }

  if (!SameDomainNameBytes(v4, v3))
  {
    v5 = *v4;
    goto LABEL_12;
  }

  return (v4 - a1 + 2);
}

void AcknowledgeRecord(uint64_t result, uint64_t a2)
{
  if (*(a2 + 104))
  {
    *(a2 + 188) = 1;
    v4 = *(result + 48);
    v5 = *(result + 52) + 1;
    *(result + 52) = v5;
    mDNS_VerifyLockState("Drop Lock", 0, v4, v5, "AcknowledgeRecord", 1372);
    (*(a2 + 104))(result, a2, 0);
    mDNS_VerifyLockState("Reclaim Lock", 0, *(result + 48), *(result + 52), "AcknowledgeRecord", 1374);
    --*(result + 52);
  }
}

uint64_t mDNS_StartBrowse_internal(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, int a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 136) = a4;
  *(a1 + 324) = a5;
  *(a1 + 342) = 65548;
  *(a1 + 632) = 1;
  *(a1 + 634) = a6;
  *(a1 + 635) = (a5 & 0x1000) != 0;
  *(a1 + 636) = 0;
  *(a1 + 641) = 0;
  *(a1 + 639) = 0;
  *(a1 + 640) = a7;
  *(a1 + 653) = 0;
  *(a1 + 152) = a8;
  v10 = (a1 + 376);
  *(a1 + 176) = a9;
  if (!ConstructServiceName((a1 + 376), 0, a2, a3))
  {
    return 4294901756;
  }

  v11 = *(a1 + 252);
  if (v11)
  {
    v12 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v10;
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_19:
            v15 = 257;
            goto LABEL_22;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (v17 - v10 >= 256)
          {
            goto LABEL_19;
          }
        }

        v15 = (v17 - v10 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v10;
        while (1)
        {
          if (!v13 || (v14 = *v13, v14 > 0x3F))
          {
LABEL_11:
            v15 = 257;
            goto LABEL_22;
          }

          if (!*v13)
          {
            break;
          }

          v13 += v14 + 1;
          if (v13 - v10 >= 256)
          {
            goto LABEL_11;
          }
        }

        v15 = (v13 - v10 + 1);
LABEL_22:
        v19[0] = 67110147;
        v19[1] = v11;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 1040;
        v23 = v15;
        v24 = 2101;
        v25 = v10;
        v26 = 1024;
        v27 = mDNS_DomainNameFNV1aHash(v10);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse -> SubBrowser START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x)", v19, 0x28u);
      }
    }
  }

  return mDNS_StartQuery_internal(mDNSStorage, a1);
}

_BYTE *ConstructServiceName(_BYTE *a1, const char *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v5 = a3;
  v7 = &unk_100162000;
  v8 = &unk_100178000;
  v9 = &unk_100178000;
  if (a2)
  {
    v10 = a2;
    v11 = *a2;
    if (*a2)
    {
      if (v11 > 0x3F)
      {
        v12 = "Service instance name too long";
LABEL_112:
        v57 = *(v8 + 434);
        if (!v7[256] || v57 == v9[435])
        {
          if (os_log_type_enabled(*(v8 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v58 = *v10 + 1;
            if (v5)
            {
              v62 = v5;
              while (1)
              {
                if (!v62 || (v63 = *v62, v63 > 0x3F))
                {
LABEL_130:
                  v61 = 257;
                  if (a4)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_147;
                }

                if (!*v62)
                {
                  break;
                }

                v62 += v63 + 1;
                if (v62 - v5 >= 256)
                {
                  goto LABEL_130;
                }
              }

              v61 = (v62 - v5 + 1);
              if (a4)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v61 = 0;
              if (a4)
              {
LABEL_133:
                v64 = a4;
                while (1)
                {
                  if (!v64 || (v65 = *v64, v65 > 0x3F))
                  {
LABEL_138:
                    v66 = 257;
                    goto LABEL_152;
                  }

                  if (!*v64)
                  {
                    break;
                  }

                  v64 += v65 + 1;
                  if (v64 - a4 >= 256)
                  {
                    goto LABEL_138;
                  }
                }

                v66 = (v64 - a4 + 1);
                goto LABEL_152;
              }
            }

LABEL_147:
            v66 = 0;
            goto LABEL_152;
          }
        }

        else
        {
          v57 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v58 = *v10 + 1;
            if (v5)
            {
              v59 = v5;
              while (1)
              {
                if (!v59 || (v60 = *v59, v60 > 0x3F))
                {
LABEL_121:
                  v61 = 257;
                  if (a4)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_150;
                }

                if (!*v59)
                {
                  break;
                }

                v59 += v60 + 1;
                if (v59 - v5 >= 256)
                {
                  goto LABEL_121;
                }
              }

              v61 = (v59 - v5 + 1);
              if (a4)
              {
                goto LABEL_140;
              }
            }

            else
            {
              v61 = 0;
              if (a4)
              {
LABEL_140:
                v67 = a4;
                while (1)
                {
                  if (!v67 || (v68 = *v67, v68 > 0x3F))
                  {
LABEL_145:
                    v66 = 257;
                    goto LABEL_152;
                  }

                  if (!*v67)
                  {
                    break;
                  }

                  v67 += v68 + 1;
                  if (v67 - a4 >= 256)
                  {
                    goto LABEL_145;
                  }
                }

                v66 = (v67 - a4 + 1);
                goto LABEL_152;
              }
            }

LABEL_150:
            v66 = 0;
LABEL_152:
            *buf = 136448515;
            v71 = v12;
            v72 = 2160;
            *v73 = 1752392040;
            *&v73[8] = 1040;
            *&v73[10] = v58;
            v74 = 2101;
            v75 = v10;
            v76 = 2160;
            *v77 = 1752392040;
            *&v77[8] = 1040;
            *&v77[10] = v61;
            v78 = 2101;
            v79 = v5;
            v80 = 2160;
            *v81 = 1752392040;
            *&v81[8] = 1040;
            *&v81[10] = v66;
            v82 = 2101;
            v83 = a4;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ConstructServiceName: %{public}s: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P.%{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x5Au);
          }
        }

        return 0;
      }

      v20 = v11 + 1;
      v19 = a1;
      v21 = a2;
      do
      {
        v22 = *v21++;
        *v19++ = v22;
        --v20;
      }

      while (v20);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v13 = *a3;
  if ((v13 - 1) <= 0x3E)
  {
    v14 = a3[v13 + 1];
    if ((v14 - 1) <= 0x3E)
    {
      v15 = &a3[v13 + 1 + v14];
      v18 = v15[1];
      v16 = v15 + 1;
      v17 = v18;
      if (v18 - 1 <= 0x3E && !v16[v17 + 1])
      {
        v35 = v13 + 1;
        v36 = a1;
        v37 = a3;
        do
        {
          v38 = *v37++;
          *v36++ = v38;
          --v35;
        }

        while (v35);
        v36[4] = 98;
        *v36 = 1970495236;
        v39 = SameDomainNameBytes(a3, "\t_services\a_dns-sd\x04_udp");
        v40 = -5;
        if (!v39)
        {
          v40 = 0;
        }

        v19 = &a1[v13 + 6 + v40];
        v10 = "";
        v5 += v13 + 1;
        goto LABEL_12;
      }
    }

LABEL_9:
    v10 = "";
    v19 = a1;
LABEL_12:
    LODWORD(v13) = *v5;
    goto LABEL_14;
  }

  v10 = "";
  v19 = a1;
LABEL_14:
  if ((v13 - 17) <= 0xFFFFFFF0)
  {
    v23 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v10 + 1;
        v31 = v5;
        do
        {
          if (!v31)
          {
            break;
          }

          v32 = *v31;
          if (v32 > 0x3F)
          {
            break;
          }

          if (!*v31)
          {
            v27 = (v31 - v5 + 1);
            if (!a4)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          v31 += v32 + 1;
        }

        while (v31 - v5 < 256);
        v27 = 257;
        if (!a4)
        {
LABEL_44:
          v30 = 0;
          goto LABEL_54;
        }

LABEL_37:
        v33 = a4;
        while (1)
        {
          if (!v33 || (v34 = *v33, v34 > 0x3F))
          {
LABEL_42:
            v30 = 257;
            goto LABEL_54;
          }

          if (!*v33)
          {
            break;
          }

          v33 += v34 + 1;
          if (v33 - a4 >= 256)
          {
            goto LABEL_42;
          }
        }

        v30 = (v33 - a4 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v10 + 1;
        v25 = v5;
        do
        {
          if (!v25)
          {
            break;
          }

          v26 = *v25;
          if (v26 > 0x3F)
          {
            break;
          }

          if (!*v25)
          {
            v27 = (v25 - v5 + 1);
            if (!a4)
            {
              goto LABEL_46;
            }

            goto LABEL_24;
          }

          v25 += v26 + 1;
        }

        while (v25 - v5 < 256);
        v27 = 257;
        if (!a4)
        {
LABEL_46:
          v30 = 0;
          goto LABEL_54;
        }

LABEL_24:
        v28 = a4;
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_29:
            v30 = 257;
            goto LABEL_54;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (v28 - a4 >= 256)
          {
            goto LABEL_29;
          }
        }

        v30 = (v28 - a4 + 1);
LABEL_54:
        *buf = 141560067;
        v71 = 1752392040;
        v72 = 1040;
        *v73 = v24;
        *&v73[4] = 2101;
        *&v73[6] = v10;
        v74 = 2160;
        v75 = 1752392040;
        v76 = 1040;
        *v77 = v27;
        *&v77[4] = 2101;
        *&v77[6] = v5;
        v78 = 2160;
        v79 = 1752392040;
        v80 = 1040;
        *v81 = v30;
        *&v81[4] = 2101;
        *&v81[6] = a4;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Bad service type in %{sensitive, mask.hash, mdnsresponder:domain_label}.*P.%{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash, mdnsresponder:domain_name}.*P Application protocol name must be underscore plus 1-15 characters. See <http://www.dns-sd.org/ServiceTypes.html>", buf, 0x50u);
      }
    }

    if ((v13 - 64) < 0xFFFFFFC2 || v13 >= 0x11 && !SameDomainNameBytes(a4, "\x05local"))
    {
      return 0;
    }
  }

  if (v5[1] != 95)
  {
    v12 = "Application protocol name must begin with underscore";
    goto LABEL_112;
  }

  v41 = 0;
  v42 = v13;
  v43 = (v13 + 1);
  v44 = 2;
  v12 = "Application protocol name must contain only letters, digits, and hyphens";
  do
  {
    v45 = v5[v44];
    if ((v45 - 48) < 0xA || (v45 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      goto LABEL_93;
    }

    if (v45 != 45)
    {
      if (v44 >= v42 || v44 < 3 || v45 != 95)
      {
LABEL_103:
        v9 = &unk_100178000;
        v7 = &unk_100162000;
        v8 = &unk_100178000;
        goto LABEL_112;
      }

      if (v41)
      {
        goto LABEL_92;
      }

      v47 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v5;
          while (1)
          {
            if (!v51 || (v52 = *v51, v52 > 0x3F))
            {
LABEL_88:
              v50 = 257;
              goto LABEL_91;
            }

            if (!*v51)
            {
              break;
            }

            v51 += v52 + 1;
            if (v51 - v5 >= 256)
            {
              goto LABEL_88;
            }
          }

          v50 = (v51 - v5 + 1);
          goto LABEL_91;
        }
      }

      else
      {
        v47 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v5;
          while (1)
          {
            if (!v48 || (v49 = *v48, v49 > 0x3F))
            {
LABEL_81:
              v50 = 257;
              goto LABEL_91;
            }

            if (!*v48)
            {
              break;
            }

            v48 += v49 + 1;
            if (v48 - v5 >= 256)
            {
              goto LABEL_81;
            }
          }

          v50 = (v48 - v5 + 1);
LABEL_91:
          *buf = 141558531;
          v71 = 1752392040;
          v72 = 1040;
          *v73 = v50;
          *&v73[4] = 2101;
          *&v73[6] = v5;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "ConstructServiceName: Service type with non-leading underscore %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
        }
      }

LABEL_92:
      v41 = 1;
      goto LABEL_93;
    }

    if (v44 < 3 || v44 >= v42)
    {
      goto LABEL_103;
    }

LABEL_93:
    ++v44;
  }

  while (v44 != v43);
  v53 = 0;
  do
  {
    v19[v53] = v5[v53];
    ++v53;
  }

  while (v43 != v53);
  v8 = &unk_100178000;
  if (v5[v53] != 4)
  {
    v12 = "Transport protocol name must be _udp or _tcp";
    v9 = &unk_100178000;
    v7 = &unk_100162000;
    goto LABEL_112;
  }

  v54 = &v5[v53];
  v9 = &unk_100178000;
  v7 = &unk_100162000;
  if (v5[v53 + 1] != 95)
  {
    goto LABEL_111;
  }

  v55 = v54[2] & 0xDF;
  if (v55 == 84)
  {
    if ((v54[3] & 0xDF) != 0x43)
    {
      goto LABEL_111;
    }
  }

  else if (v55 != 85 || (v54[3] & 0xDF) != 0x44)
  {
LABEL_111:
    v12 = "Transport protocol name must be _udp or _tcp";
    goto LABEL_112;
  }

  if ((v54[4] & 0xDF) != 0x50)
  {
    goto LABEL_111;
  }

  v56 = 0;
  do
  {
    v19[v56 + v53] = v5[v56 + v53];
    ++v56;
  }

  while (v56 != 5);
  if (v5[v53 + v56])
  {
    v12 = "Service type must have only two labels";
    goto LABEL_112;
  }

  v19[v53 + v56] = 0;
  if (!*a4)
  {
    v12 = "Service domain must be non-empty";
    goto LABEL_112;
  }

  if (SameDomainNameBytes(a4, "\x05local\x04arpa"))
  {
    v12 = "Illegal domain local.arpa. Use local. (or empty string)";
    goto LABEL_112;
  }

  result = AppendDomainName(a1, a4);
  if (!result)
  {
    v12 = "Service domain too long";
    goto LABEL_112;
  }

  return result;
}