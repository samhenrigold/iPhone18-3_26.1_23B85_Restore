uint64_t eapaka_reauthentication(uint64_t a1, _BYTE *a2, unsigned __int8 ***a3, int *a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = TLVBufferSizeof();
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12, v13, v14, v15, v84, v85, v86, v87);
  v18 = &v84 - v17;
  if ((v19 & 0x7FFFFFE00) != 0)
  {
    v20 = 512;
  }

  else
  {
    v20 = v16;
  }

  bzero(&v84 - v17, v20);
  v21 = TLVListSizeof();
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25, v26, v27, v28, v84, v85, v86, v87);
  v31 = (&v84 - v30);
  if ((v32 & 0x7FFFFFE00) != 0)
  {
    v33 = 512;
  }

  else
  {
    v33 = v29;
  }

  bzero(&v84 - v30, v33);
  v34 = TLVBufferSizeof();
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38, v39, v40, v41, v84, v85, v86, v87);
  v44 = &v84 - v43;
  if ((v45 & 0x7FFFFFE00) != 0)
  {
    v46 = 512;
  }

  else
  {
    v46 = v42;
  }

  bzero(&v84 - v43, v46);
  TLVListInit(v31);
  if ((*(a1 + 200) & 1) == 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v68 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v68))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v69 = "eapaka: Reauthentication but no key info available";
LABEL_40:
    _os_log_impl(&dword_249EFB000, LogHandle, v68, v69, buf, 2u);
    goto LABEL_41;
  }

  if (!EAPSIMAKAPersistentStateGetReauthID(*(a1 + 208)))
  {
    LogHandle = EAPLogGetLogHandle();
    v68 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v68))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v69 = "eapaka: received Reauthentication but don't have reauth id";
    goto LABEL_40;
  }

  *(a1 + 8) = 0x300000000;
  EAPSIMAKAPersistentStateSetReauthID(*(a1 + 208), 0);
  v47 = TLVListLookupAttribute(a3, 11);
  if (!v47)
  {
    LogHandle = EAPLogGetLogHandle();
    v68 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v68))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v69 = "eapaka: Reauthentication is missing AT_MAC";
    goto LABEL_40;
  }

  if (!EAPSIMAKAKeyInfoVerifyMAC(a1 + 40, a2, v47 + 4, 0, 0))
  {
    LogHandle = EAPLogGetLogHandle();
    v68 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v68))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v69 = "eapaka: Reauthentication AT_MAC not valid";
    goto LABEL_40;
  }

  v48 = TLVListLookupAttribute(a3, 130);
  v49 = TLVListLookupAttribute(a3, 129);
  v50 = v49;
  if (!v48 || !v49)
  {
    if (!v48)
    {
      v71 = EAPLogGetLogHandle();
      v72 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v71, v72))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v71, v72, "eapaka:  Reauthentication missing AT_ENCR_DATA", buf, 2u);
      }
    }

    if (v50)
    {
      goto LABEL_41;
    }

    LogHandle = EAPLogGetLogHandle();
    v68 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v68))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v69 = "eapaka:  Reauthentication missing AT_IV";
    goto LABEL_40;
  }

  v51 = EAPSIMAKAKeyInfoDecryptTLVList((a1 + 40), v48, v49, v31);
  if (v51)
  {
    v87 = v51;
    v52 = TLVListCopyDescription(v31);
    v53 = EAPLogGetLogHandle();
    v54 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v53, v54))
    {
      *buf = 138412290;
      v91 = v52;
      _os_log_impl(&dword_249EFB000, v53, v54, "Decrypted TLVs:\n%@", buf, 0xCu);
    }

    CFRelease(v52);
    v55 = TLVListLookupAttribute(v31, 21);
    v56 = TLVListLookupAttribute(v31, 19);
    v57 = v56;
    if (!v55 || !v56)
    {
      if (!v55)
      {
        v73 = EAPLogGetLogHandle();
        v74 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v73, v74))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v73, v74, "eapaka: Reauthentication AT_ENCR_DATA missing AT_NONCE_S", buf, 2u);
        }
      }

      if (!v57)
      {
        v75 = EAPLogGetLogHandle();
        v76 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v75, v76))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v75, v76, "eapaka: Reauthentication AT_ENCR_DATA missing AT_COUNTER", buf, 2u);
        }
      }

      v65 = 0;
      v77 = 17;
      goto LABEL_66;
    }

    v86 = v56;
    v58 = bswap32(*(v56 + 2)) >> 16;
    Counter = EAPSIMAKAPersistentStateGetCounter(*(a1 + 208));
    v60 = Counter;
    if (v58 >= Counter)
    {
      HIDWORD(v85) = Counter;
      StringFromAttribute = TLVListCreateStringFromAttribute(v31, 133);
      if (StringFromAttribute)
      {
        v62 = StringFromAttribute;
        EAPSIMAKAPersistentStateSetReauthID(*(a1 + 208), StringFromAttribute);
        CFRelease(v62);
      }

      EAPSIMAKAPersistentStateSetCounter(*(a1 + 208), v58 + 1);
      v60 = HIDWORD(v85);
    }

    TLVBufferInit(v44, a1 + 280, 1492);
    *(a1 + 272) = 2;
    *(a1 + 273) = a2[1];
    *(a1 + 276) = 3351;
    TLVBufferInit(v18, buf, 16);
    if (TLVBufferAddCounter(v18, v58))
    {
      if (v58 >= v60 || TLVBufferAddCounterTooSmall(v18))
      {
        if (!EAPSIMAKAKeyInfoEncryptTLVs((a1 + 40), v44, v18))
        {
          goto LABEL_65;
        }

        TLV = TLVBufferAllocateTLV(v44, 11, 0x14u);
        if (TLV)
        {
          v64 = TLV;
          v65 = a1 + 272;
          *(TLV + 1) = 0;
          v66 = TLVBufferUsed(v44);
          EAPPacketSetLength(a1 + 272, (v66 + 8));
          EAPSIMAKAKeyInfoSetMAC(a1 + 40, (a1 + 272), v64 + 4, (v55 + 4), 16);
          if (v58 >= v60)
          {
            *(a1 + 12) = 4;
            eapaka_compute_reauth_key(a1, v86, v55);
            *(a1 + 200) = 1;
            *(a1 + 216) = 1;
          }

          else
          {
            *(a1 + 200) = 0;
          }

          goto LABEL_67;
        }

        v78 = EAPLogGetLogHandle();
        v79 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v78, v79))
        {
          goto LABEL_65;
        }

        v83 = TLVBufferErrorString(v44);
        *v88 = 136315138;
        v89 = v83;
        v81 = "eapaka: failed allocating AT_MAC, %s";
        goto LABEL_64;
      }

      v78 = EAPLogGetLogHandle();
      v79 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v78, v79))
      {
        v82 = TLVBufferErrorString(v44);
        *v88 = 136315138;
        v89 = v82;
        v81 = "eapaka: failed allocating AT_COUNTER_TOO_SMALL, %s";
        goto LABEL_64;
      }
    }

    else
    {
      v78 = EAPLogGetLogHandle();
      v79 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = TLVBufferErrorString(v44);
        *v88 = 136315138;
        v89 = v80;
        v81 = "eapaka: failed allocating AT_COUNTER, %s";
LABEL_64:
        _os_log_impl(&dword_249EFB000, v78, v79, v81, v88, 0xCu);
      }
    }

LABEL_65:
    v65 = 0;
    v77 = 8;
LABEL_66:
    *a4 = v77;
LABEL_67:
    free(v87);
    goto LABEL_42;
  }

  LogHandle = EAPLogGetLogHandle();
  v68 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v68))
  {
    *buf = 0;
    v69 = "eapaka: failed to decrypt Reauthentication AT_ENCR_DATA";
    goto LABEL_40;
  }

LABEL_41:
  v65 = 0;
  *a4 = 17;
LABEL_42:
  TLVListFree(v31);
  return v65;
}

uint64_t make_client_error_packet(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = TLVBufferSizeof();
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8, v9, v10, v11, buf, *(&buf + 1), v25, v26);
  v14 = &buf - v13;
  if ((v15 & 0x7FFFFFE00) != 0)
  {
    v16 = 512;
  }

  else
  {
    v16 = v12;
  }

  bzero(&buf - v13, v16);
  TLVBufferInit(v14, a1 + 280, 1492);
  *(a1 + 272) = 2;
  *(a1 + 273) = *(a2 + 1);
  *(a1 + 276) = 3607;
  TLV = TLVBufferAllocateTLV(v14, 22, 4u);
  if (TLV)
  {
    v18 = a1 + 272;
    *(TLV + 1) = 0;
    v19 = TLVBufferUsed(v14);
    EAPPacketSetLength(v18, (v19 + 8));
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v21))
    {
      v22 = TLVBufferErrorString(v14);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_249EFB000, LogHandle, v21, "eapaka: failed allocating AT_CLIENT_ERROR_CODE, %s", &buf, 0xCu);
    }

    return 0;
  }

  return v18;
}

BOOL eapaka_challenge_process_encr_data(uint64_t a1, unsigned __int8 ***a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = TLVListSizeof();
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8, v9, v10, v11, buf, *(&buf + 1), v34, v35);
  v14 = (&buf - v13);
  if ((v15 & 0x7FFFFFE00) != 0)
  {
    v16 = 512;
  }

  else
  {
    v16 = v12;
  }

  bzero(&buf - v13, v16);
  TLVListInit(v14);
  v17 = TLVListLookupAttribute(a2, 130);
  if (!v17)
  {
    return 1;
  }

  v18 = v17;
  v19 = TLVListLookupAttribute(a2, 129);
  if (!v19)
  {
    LogHandle = EAPLogGetLogHandle();
    v31 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v31);
    if (!result)
    {
      return result;
    }

    LOWORD(buf) = 0;
    v32 = "eapaka: Challenge missing AT_IV";
    goto LABEL_19;
  }

  v20 = EAPSIMAKAKeyInfoDecryptTLVList((a1 + 40), v18, v19, v14);
  if (v20)
  {
    v21 = v20;
    v22 = TLVListCopyDescription(v14);
    v23 = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_249EFB000, v23, v24, "Decrypted TLVs:\n%@", &buf, 0xCu);
    }

    CFRelease(v22);
    StringFromAttribute = TLVListCreateStringFromAttribute(v14, 133);
    if (StringFromAttribute)
    {
      v26 = StringFromAttribute;
      EAPSIMAKAPersistentStateSetReauthID(*(a1 + 208), StringFromAttribute);
      CFRelease(v26);
    }

    v27 = TLVListCreateStringFromAttribute(v14, 132);
    if (v27)
    {
      v28 = v27;
      EAPSIMAKAPersistentStateSetPseudonym(*(a1 + 208), v27);
      CFRelease(v28);
    }

    free(v21);
    TLVListFree(v14);
    return 1;
  }

  LogHandle = EAPLogGetLogHandle();
  v31 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(LogHandle, v31);
  if (result)
  {
    LOWORD(buf) = 0;
    v32 = "eapaka: Challenge decrypt AT_ENCR_DATA failed";
LABEL_19:
    _os_log_impl(&dword_249EFB000, LogHandle, v31, v32, &buf, 2u);
    return 0;
  }

  return result;
}

double eapaka_compute_reauth_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(*(a1 + 32));
  }

  else
  {
    BytePtr = *(*a1 + 40);
    Length = *(*a1 + 48);
  }

  v9 = *(a1 + 208);

  return EAPSIMAKAKeyInfoComputeReauthKey((a1 + 40), v9, BytePtr, Length, a2, a3);
}

os_log_t EAPLogGetLogHandle()
{
  result = S_eap_logger;
  if (!S_eap_logger)
  {
    result = os_log_create("com.apple.eapol", "Framework");
    S_eap_logger = result;
  }

  return result;
}

os_log_t EAPLogInit(os_log_t result)
{
  if (result <= 3)
  {
    result = os_log_create("com.apple.eapol", S_eap_os_log_categories[result]);
    S_eap_logger = result;
  }

  return result;
}

void EAPOLControlPrefsSynchronize()
{
  if (S_prefs)
  {
    SCPreferencesSynchronize(S_prefs);
    v0 = vars8;
  }

  v1 = S_managed_prefs;
  if (S_managed_prefs)
  {

    SCPreferencesSynchronize(v1);
  }
}

const __SCPreferences *EAPOLControlPrefsInit(__CFRunLoop *a1, uint64_t (*a2)(void))
{
  result = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"com.apple.eapolclient.plist");
  S_prefs = result;
  if (a1)
  {
    if (a2)
    {
      S_callback = a2;
      SCPreferencesSetCallback(result, EAPOLControlPrefsChanged, 0);
      v5 = *MEMORY[0x277CBF048];
      SCPreferencesScheduleWithRunLoop(S_prefs, a1, *MEMORY[0x277CBF048]);
      memset(&context, 0, 72);
      context.perform = prefs_changed;
      v6 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &context);
      CFRunLoopAddSource(a1, v6, v5);
      dispatch_get_global_queue(0, 0);
      _scprefs_observer_watch();
      return S_prefs;
    }
  }

  return result;
}

uint64_t EAPOLControlPrefsChanged()
{
  if (S_callback)
  {
    return S_callback(S_prefs);
  }

  return result;
}

uint64_t EAPOLControlPrefsGetLogFlags()
{
  valuePtr = 0;
  v0 = S_managed_prefs;
  if (!S_managed_prefs)
  {
    v0 = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.eapol.control.plist");
    S_managed_prefs = v0;
  }

  Value = SCPreferencesGetValue(v0, @"LogFlags");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v3 = S_prefs;
    if (!S_prefs)
    {
      v3 = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"com.apple.eapolclient.plist");
      S_prefs = v3;
    }

    Value = SCPreferencesGetValue(v3, @"LogFlags");
    v4 = CFNumberGetTypeID();
    if (!Value || CFGetTypeID(Value) != v4)
    {
      return 0;
    }
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

uint64_t prefs_get_BOOLean(CFStringRef key)
{
  v2 = S_managed_prefs;
  if (!S_managed_prefs)
  {
    v2 = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.eapol.control.plist");
    S_managed_prefs = v2;
  }

  Value = SCPreferencesGetValue(v2, key);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v5 = S_prefs;
    if (!S_prefs)
    {
      v5 = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"com.apple.eapolclient.plist");
      S_prefs = v5;
    }

    Value = SCPreferencesGetValue(v5, key);
    v6 = CFBooleanGetTypeID();
    if (!Value || CFGetTypeID(Value) != v6)
    {
      return 1;
    }
  }

  return CFBooleanGetValue(Value);
}

uint64_t EAPOLControlPrefsSetLogFlags(int a1)
{
  valuePtr = a1;
  if (a1)
  {
    v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    prefs_set_number(v2);
    my_CFRelease(&v2);
  }

  else
  {
    prefs_set_number(0);
  }

  return EAPOLControlPrefsSave();
}

SCPreferencesRef prefs_set_number(const void *a1)
{
  v2 = S_prefs;
  if (S_prefs || (result = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"com.apple.eapolclient.plist"), v2 = result, (S_prefs = result) != 0))
  {
    TypeID = CFNumberGetTypeID();
    if (a1 && CFGetTypeID(a1) == TypeID)
    {

      return SCPreferencesSetValue(v2, @"LogFlags", a1);
    }

    else
    {

      return SCPreferencesRemoveValue(v2, @"LogFlags");
    }
  }

  return result;
}

uint64_t EAPOLControlPrefsSave()
{
  result = S_prefs;
  if (S_prefs)
  {
    v1 = SCPreferencesCommitChanges(S_prefs);
    SCPreferencesSynchronize(S_prefs);
    return v1;
  }

  return result;
}

uint64_t EAPOLControlPrefsSetUseBoringSSL(int a1)
{
  v1 = MEMORY[0x277CBED28];
  if (!a1)
  {
    v1 = MEMORY[0x277CBED10];
  }

  prefs_set_BOOLean(@"UseBoringSSL", *v1);

  return EAPOLControlPrefsSave();
}

SCPreferencesRef prefs_set_BOOLean(const __CFString *a1, const void *a2)
{
  v4 = S_prefs;
  if (S_prefs || (result = SCPreferencesCreate(0, @"EAPOLControlPrefs", @"com.apple.eapolclient.plist"), v4 = result, (S_prefs = result) != 0))
  {
    TypeID = CFBooleanGetTypeID();
    if (a2 && CFGetTypeID(a2) == TypeID)
    {

      return SCPreferencesSetValue(v4, a1, a2);
    }

    else
    {

      return SCPreferencesRemoveValue(v4, a1);
    }
  }

  return result;
}

uint64_t EAPOLControlPrefsSetRevocationCheck(int a1)
{
  v1 = MEMORY[0x277CBED28];
  if (!a1)
  {
    v1 = MEMORY[0x277CBED10];
  }

  prefs_set_BOOLean(@"EnableRevocationCheck", *v1);

  return EAPOLControlPrefsSave();
}

uint64_t prefs_changed()
{
  if (S_callback)
  {
    return S_callback(S_prefs);
  }

  return result;
}

void __enable_prefs_observer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRunLoopSourceSignal(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      CFRunLoopWakeUp(v3);
    }
  }
}

BOOL EAPTLSSecTrustSaveExceptionsBinding(__SecTrust *a1, const __CFString *a2, const void *a3, void *a4)
{
  v7 = SecTrustCopyExceptions(a1);
  v8 = v7;
  v25 = v7;
  if (v7)
  {
    keys = a4;
    *buf = a3;
    values = v7;
    exceptions_change_check();
    v9 = *MEMORY[0x277CBF040];
    v10 = *MEMORY[0x277CBF010];
    v11 = CFPreferencesCopyValue(a2, @"com.apple.network.eapclient.tls.TrustExceptions", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v27 = v11;
    if (v11)
    {
      v12 = v11;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v12) == TypeID)
      {
        Value = CFDictionaryGetValue(v12, a3);
        v15 = CFDictionaryGetTypeID();
        if (Value && CFGetTypeID(Value) == v15)
        {
          cf = Value;
          v16 = CFDictionaryGetValue(Value, a4);
          v17 = CFDataGetTypeID();
          if (v16 && CFGetTypeID(v16) == v17 && CFEqual(v16, v8))
          {
            goto LABEL_17;
          }

          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
          CFDictionarySetValue(MutableCopy, a4, v8);
        }

        else
        {
          MutableCopy = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        cf = MutableCopy;
        v23 = CFDictionaryCreateMutableCopy(0, 0, v12);
        CFDictionarySetValue(v23, a3, MutableCopy);
        CFRelease(v12);
LABEL_16:
        v27 = v23;
        CFRelease(MutableCopy);
        CFPreferencesSetValue(a2, v23, @"com.apple.network.eapclient.tls.TrustExceptions", v9, v10);
        CFPreferencesSynchronize(@"com.apple.network.eapclient.tls.TrustExceptions", v9, v10);
        exceptions_change_notify();
LABEL_17:
        my_CFRelease(&v27);
        my_CFRelease(&v25);
        return v8 != 0;
      }

      CFRelease(v12);
    }

    v21 = MEMORY[0x277CBF138];
    v22 = MEMORY[0x277CBF150];
    cf = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v23 = CFDictionaryCreate(0, buf, &cf, 1, v21, v22);
    MutableCopy = cf;
    goto LABEL_16;
  }

  LogHandle = EAPLogGetLogHandle();
  v20 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v20))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, LogHandle, v20, "failed to copy exceptions", buf, 2u);
  }

  return v8 != 0;
}

const void *EAPTLSTrustExceptionsCopy(const __CFString *a1, const void *a2, const void *a3)
{
  exceptions_change_check();
  v6 = CFPreferencesCopyValue(a1, @"com.apple.network.eapclient.tls.TrustExceptions", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v13 = v6;
  TypeID = CFDictionaryGetTypeID();
  if (!v6)
  {
    goto LABEL_8;
  }

  if (CFGetTypeID(v6) != TypeID)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v6, a2);
  v9 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v9)
  {
    goto LABEL_8;
  }

  v10 = CFDictionaryGetValue(Value, a3);
  v11 = CFDataGetTypeID();
  if (v10)
  {
    if (CFGetTypeID(v10) == v11)
    {
      CFRetain(v10);
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:
  my_CFRelease(&v13);
  return v10;
}

void exceptions_change_check()
{
  v10 = *MEMORY[0x277D85DE8];
  check = 0;
  if ((exceptions_change_check_token_valid & 1) == 0)
  {
    v0 = notify_register_check("com.apple.network.eapclient.tls.TrustExceptions", &exceptions_change_check_token);
    if (v0)
    {
      v1 = v0;
      LogHandle = EAPLogGetLogHandle();
      v3 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v3))
      {
        return;
      }

      *buf = 67109120;
      v9 = v1;
      v4 = "notify_register_check returned %d";
LABEL_9:
      _os_log_impl(&dword_249EFB000, LogHandle, v3, v4, buf, 8u);
      return;
    }

    exceptions_change_check_token_valid = 1;
  }

  v5 = notify_check(exceptions_change_check_token, &check);
  if (v5)
  {
    v6 = v5;
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v3))
    {
      return;
    }

    *buf = 67109120;
    v9 = v6;
    v4 = "notify_check returned %d";
    goto LABEL_9;
  }

  if (check)
  {
    CFPreferencesSynchronize(@"com.apple.network.eapclient.tls.TrustExceptions", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }
}

uint64_t EAPTLSSecTrustApplyExceptionsBinding(__SecTrust *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v5 = EAPTLSTrustExceptionsCopy(a2, a3, a4);
  v11 = v5;
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  if (!SecTrustSetExceptions(a1, v5))
  {
    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v8, "SecTrustSetExceptions failed", v10, 2u);
    }

    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:
  my_CFRelease(&v11);
  return v6;
}

void EAPTLSRemoveTrustExceptionsBindings(const __CFString *a1, const void *a2)
{
  if (my_CFEqual(a1, @"WirelessSSID"))
  {
    EAPSIMAKAPersistentStateForgetSSID(a2);
  }

  exceptions_change_check();
  v4 = *MEMORY[0x277CBF010];
  v5 = CFPreferencesCopyValue(a1, @"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v6) == TypeID && CFDictionaryGetValue(v6, a2))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
      CFDictionaryRemoveValue(MutableCopy, a2);
      CFPreferencesSetValue(a1, MutableCopy, @"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", v4);
      CFPreferencesSynchronize(@"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", v4);
      exceptions_change_notify();
      CFRelease(MutableCopy);
    }

    CFRelease(v6);
  }
}

void exceptions_change_notify()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = notify_post("com.apple.network.eapclient.tls.TrustExceptions");
  if (v0)
  {
    v1 = v0;
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_249EFB000, LogHandle, v3, "notify_post returned %d", v4, 8u);
    }
  }
}

const void *EAPTLSCopyTrustExceptionBindings(const __CFString *a1, const void *a2)
{
  exceptions_change_check();
  v4 = CFPreferencesCopyValue(a1, @"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", *MEMORY[0x277CBF010]);
  v9 = v4;
  TypeID = CFDictionaryGetTypeID();
  if (!v4 || CFGetTypeID(v4) != TypeID)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v4, a2);
  v7 = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v7)
    {
      CFRetain(Value);
      goto LABEL_7;
    }

LABEL_6:
    Value = 0;
  }

LABEL_7:
  my_CFRelease(&v9);
  return Value;
}

void EAPTLSSetTrustExceptionBindings(const __CFString *a1, void *a2, void *a3)
{
  values = a3;
  keys = a2;
  exceptions_change_check();
  v6 = *MEMORY[0x277CBF010];
  v7 = CFPreferencesCopyValue(a1, @"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", *MEMORY[0x277CBF010]);
  cf = v7;
  if (v7 && ((v8 = v7, TypeID = CFDictionaryGetTypeID(), CFGetTypeID(v8) == TypeID) || (my_CFRelease(&cf), (v8 = cf) != 0)))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    CFDictionarySetValue(MutableCopy, a2, a3);
    CFRelease(cf);
  }

  else
  {
    MutableCopy = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  cf = MutableCopy;
  CFPreferencesSetValue(a1, MutableCopy, @"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", v6);
  CFPreferencesSynchronize(@"com.apple.network.eapclient.tls.TrustExceptions", @"mobile", v6);
  exceptions_change_notify();
  my_CFRelease(&cf);
}

uint64_t eapolcontroller_start(int a1, __int128 *a2, uint64_t a3, int a4, int a5, int a6, _DWORD *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  v9 = a2[1];
  v20 = *a2;
  *&msg_4[20] = 3;
  *&msg_4[24] = a3;
  *&msg_4[32] = 16777472;
  *&msg_4[36] = a4;
  *&msg_4[40] = a5;
  *&msg_4[48] = 1245184;
  *&msg_4[52] = a6;
  v18 = 1245184;
  v19 = *MEMORY[0x277D85EF8];
  v21 = v9;
  v22 = a4;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = -2147478253;
  *&msg_4[12] = 0x55F100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    v11 = *&msg_4[8];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x70u, 0x30u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      return v13;
    }

    if (*&msg_4[16] == 71)
    {
      v13 = 4294966988;
    }

    else if (*&msg_4[16] == 22101)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 40)
        {
          if (!*&msg_4[4])
          {
            v13 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a7 = *&msg_4[32];
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v14 = 1;
          }

          else
          {
            v14 = *&msg_4[28] == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(*&msg_4[8]);
  return v13;
}

uint64_t eapolcontroller_stop(mach_port_t a1, __int128 *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D85EF8];
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x55F200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x40u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v9;
    }

    if (msg.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (msg.msgh_id == 22102)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v9 = v14;
            if (!v14)
            {
              *a3 = DWORD1(v14);
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v14;
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v9;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v9;
}

uint64_t eapolcontroller_update(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v20 = *a2;
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x277D85EF8];
  v21 = v7;
  v22 = a4;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 2147489043;
  v14.msgh_remote_port = a1;
  v14.msgh_local_port = reply_port;
  *&v14.msgh_voucher_port = 0x55F300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    msgh_local_port = v14.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v14, 3, 0x58u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v11;
    }

    if (v14.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (v14.msgh_id == 22103)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v11 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              return v11;
            }

            goto LABEL_24;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = HIDWORD(v16) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v14);
    return v11;
  }

  mig_put_reply_port(v14.msgh_local_port);
  return v11;
}

uint64_t eapolcontroller_retry(mach_port_t a1, __int128 *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D85EF8];
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x55F400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x40u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v9;
    }

    if (msg.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (msg.msgh_id == 22104)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v9 = v14;
            if (!v14)
            {
              *a3 = DWORD1(v14);
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v14;
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v9;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v9;
}

uint64_t eapolcontroller_provide_user_input(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v20 = *a2;
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x277D85EF8];
  v21 = v7;
  v22 = a4;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 2147489043;
  v14.msgh_remote_port = a1;
  v14.msgh_local_port = reply_port;
  *&v14.msgh_voucher_port = 0x55F700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    msgh_local_port = v14.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v14, 3, 0x58u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v11;
    }

    if (v14.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (v14.msgh_id == 22107)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v11 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              return v11;
            }

            goto LABEL_24;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = HIDWORD(v16) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v14);
    return v11;
  }

  mig_put_reply_port(v14.msgh_local_port);
  return v11;
}

uint64_t eapolcontroller_start_system(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v20 = *a2;
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x277D85EF8];
  v21 = v7;
  v22 = a4;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 2147489043;
  v14.msgh_remote_port = a1;
  v14.msgh_local_port = reply_port;
  *&v14.msgh_voucher_port = 0x55F800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    msgh_local_port = v14.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v14, 3, 0x58u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v11;
    }

    if (v14.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (v14.msgh_id == 22108)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v11 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              return v11;
            }

            goto LABEL_24;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = HIDWORD(v16) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v14);
    return v11;
  }

  mig_put_reply_port(v14.msgh_local_port);
  return v11;
}

uint64_t eapolcontroller_client_get_session(mach_port_t a1, __int128 *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D85EF8];
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x55FB00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0x40u, 0x3Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 22111)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (v15 == 2 && msg.msgh_size == 52 && !msg.msgh_remote_port && WORD3(v16) << 16 == 1114112 && WORD1(v17) << 16 == 1114112)
          {
            v11 = 0;
            v12 = DWORD2(v16);
            *a3 = HIDWORD(v15);
            *a4 = v12;
            return v11;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v11 = 4294966996;
          if (v16)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = v16;
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v11;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v11;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}