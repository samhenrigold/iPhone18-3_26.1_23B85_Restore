uint64_t SCNetworkSetEstablishDefaultInterfaceConfiguration(CFTypeRef cf, const void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_9:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_9;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_9;
  }

  v6 = CFArrayCreate(0, v10, 1, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    SCNetworkSetEstablishDefaultInterfaceConfiguration_cold_2();
  }

  v7 = v6;
  v8 = __SCNetworkSetEstablishDefaultConfigurationForInterfaces(cf, v6, 0);
  CFRelease(v7);
  return v8;
}

__CFArray *SCNetworkSetCopySelectedVPNService(CFTypeRef cf, uint64_t a2)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_27:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_27;
    }
  }

  v3 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v3)
  {
    goto LABEL_27;
  }

  v4 = SCNetworkSetCopyServices(cf);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = Count;
  v8 = 0;
  Mutable = 0;
  v10 = MEMORY[0x1E695E9C0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    if (SCNetworkServiceGetEnabled(ValueAtIndex) && _SCNetworkServiceIsVPN(ValueAtIndex))
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, v10);
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v8;
  }

  while (v7 != v8);
  CFRelease(v5);
  if (Mutable)
  {
    v12 = CFArrayGetCount(Mutable);
    if (v12 < 2)
    {
      MutableCopy = Mutable;
    }

    else
    {
      v13 = v12;
      ServiceOrder = SCNetworkSetGetServiceOrder(cf);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Mutable);
      v21.length = CFArrayGetCount(MutableCopy);
      v21.location = 0;
      CFArraySortValues(MutableCopy, v21, _SCNetworkServiceCompare, ServiceOrder);
      CFRelease(Mutable);
      CFPreferencesAppSynchronize(@"com.apple.mobilevpn");
      v16 = CFPreferencesCopyAppValue(@"activeVPNID", @"com.apple.mobilevpn");
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        while (1)
        {
          Mutable = CFArrayGetValueAtIndex(MutableCopy, v18);
          ServiceID = SCNetworkServiceGetServiceID(Mutable);
          if (CFEqual(ServiceID, v17))
          {
            break;
          }

          if (v13 == ++v18)
          {
            CFRelease(v17);
            goto LABEL_22;
          }
        }

        CFRetain(Mutable);
        CFRelease(v17);
        if (Mutable)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_22:
    Mutable = CFArrayGetValueAtIndex(MutableCopy, 0);
    CFRetain(Mutable);
LABEL_23:
    CFRelease(MutableCopy);
  }

  return Mutable;
}

uint64_t SCNetworkSetSetSelectedVPNService(CFTypeRef cf, const void *a2)
{
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_21:
    _SCErrorSet(1002);
    LOBYTE(v10) = 0;
    return v10;
  }

  if (!cf)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_21;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !_SCNetworkServiceIsVPN(a2))
  {
    goto LABEL_21;
  }

  v6 = SCNetworkSetCopyServices(cf);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    v15.location = 0;
    v15.length = Count;
    if (CFArrayContainsValue(v7, v15, a2))
    {
      if (Count < 1)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v9 = 1;
        v10 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9 - 1);
          if (_SCNetworkServiceIsVPN(ValueAtIndex))
          {
            v12 = CFEqual(a2, ValueAtIndex);
            v10 = SCNetworkServiceSetEnabled(ValueAtIndex, v12);
          }

          if (!v10)
          {
            break;
          }
        }

        while (v9++ < Count);
      }
    }

    else
    {
      _SCErrorSet(1002);
      LOBYTE(v10) = 0;
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

uint64_t _SCNetworkSetSetSetID(uint64_t cf, const void *a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_13:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_13;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_13;
  }

  if (!__SCNetworkSetExists(cf))
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v7, v8))
    {
      v9 = _os_log_pack_size();
      v15 = v39 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "_SCNetworkSetSetSetID() w/removed set\n  set = %@\n  setID = %@");
      *v17 = 138412546;
      *(v17 + 4) = cf;
      *(v17 + 12) = 2112;
      *(v17 + 14) = a2;
      __SC_log_send(3, v7, v8, v15);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "_SCNetworkSetSetSetID() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, *(cf + 16)))
  {
    return 1;
  }

  Set = SCPreferencesPathKeyCreateSet(0, a2);
  Value = SCPreferencesPathGetValue(*(cf + 24), Set);
  v21 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v21)
  {
    v22 = SCPreferencesPathKeyCreateSet(0, *(cf + 16));
    v23 = SCPreferencesPathGetValue(*(cf + 24), v22);
    v24 = CFDictionaryGetTypeID();
    if (v23 && CFGetTypeID(v23) == v24)
    {
      if (SCPreferencesPathSetValue(*(cf + 24), Set, v23))
      {
        v6 = SCPreferencesPathRemoveValue(*(cf + 24), v22);
        if (v6)
        {
          v25 = SCNetworkSetCopyCurrent(*(cf + 24));
          if (v25)
          {
            v26 = v25;
            v27 = CFEqual(*(v25 + 2), *(cf + 16)) == 0;
            CFRelease(v26);
          }

          else
          {
            v27 = 1;
          }

          v28 = __log_SCNetworkConfiguration();
          v29 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v28, v29))
          {
            v30 = _os_log_pack_size();
            v39[1] = v39;
            v36 = v39 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
            v37 = __error();
            v38 = _os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "_SCNetworkSetSetID(): %@ --> %@");
            *v38 = 138412546;
            *(v38 + 4) = cf;
            *(v38 + 12) = 2112;
            *(v38 + 14) = a2;
            __SC_log_send(7, v28, v29, v36);
          }

          CFRetain(a2);
          CFRelease(*(cf + 16));
          *(cf + 16) = a2;
          if (!v27)
          {
            SCNetworkSetSetCurrent(cf);
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      _SCErrorSet(1004);
    }

    v6 = 0;
LABEL_26:
    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_28;
  }

  _SCErrorSet(1005);
  v6 = 0;
LABEL_28:
  if (Set)
  {
    CFRelease(Set);
  }

  return v6;
}

uint64_t _serviceOrder(const __SCNetworkService *a1)
{
  v2 = 100000;
  Interface = SCNetworkServiceGetInterface(a1);
  if (Interface)
  {
    v4 = Interface;
    if (!_SCNetworkServiceIsVPN(a1))
    {
      return __SCNetworkInterfaceOrder(v4);
    }
  }

  return v2;
}

uint64_t _serviceOrder_clear(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    if (CFEqual(ValueAtIndex, a2))
    {
      CFArrayRemoveValueAtIndex(a1, v7);
      --v5;
      ++v6;
    }

    else
    {
      ++v7;
    }
  }

  while (v7 < v5);
  return v6;
}

uint64_t __copy_default_set_name_block_invoke()
{
  result = _SC_CFBundleGet();
  if (result)
  {
    result = CFBundleCopyLocalizedStringForLocalization();
    copy_default_set_name_non_localized = result;
  }

  return result;
}

__CFBundle *__copy_default_set_name_block_invoke_2()
{
  result = _SC_CFBundleGet();
  if (result)
  {
    result = CFBundleCopyLocalizedString(result, @"DEFAULT_SET_NAME", @"Automatic", 0);
    copy_default_set_name_localized = result;
  }

  return result;
}

void __SCNetworkSetDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

BOOL __SCNetworkSetEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return CFEqual(*(a1 + 16), *(a2 + 16)) != 0;
  }

  return 0;
}

CFHashCode __SCNetworkSetHash(uint64_t a1)
{
  v1 = *(a1 + 16);

  return CFHash(v1);
}

__CFString *__SCNetworkSetCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkSet %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", *(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 24));
  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", new");
  }

  if (!__SCNetworkSetExists(a1))
  {
    CFStringAppendFormat(Mutable, 0, @", REMOVED");
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

__CFArray *_SCNetworkConfigurationCopyMigrationPaths()
{
  v5[1] = *MEMORY[0x1E69E9840];
  value = 0;
  v5[0] = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(0, &value, v5);
  v1 = value;
  CFArrayAppendValue(Mutable, value);
  v2 = v5[0];
  CFArrayAppendValue(Mutable, v5[0]);
  CFRelease(v1);
  CFRelease(v2);
  return Mutable;
}

void _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(const __CFURL *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    CFRetain(a1);
  }

  else
  {
    v5 = CFURLCreateFromFileSystemRepresentation(0, "/Library/Preferences/SystemConfiguration", 40, 1u);
  }

  *a2 = MEMORY[0x1B26F44F0](0, "preferences.plist", 17, 0, v5);
  *a3 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 23, 0, v5);

  CFRelease(v5);
}

__CFArray *_SCNetworkConfigurationPerformMigration(const __CFURL *a1, uint64_t a2, const __CFURL *a3, __CFString *a4)
{
  v142[1] = *MEMORY[0x1E69E9840];
  v8 = __log_SCNetworkConfiguration();
  v9 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v8, v9))
  {
    v10 = _os_log_pack_size();
    v16 = v142 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "Perform Migration%s\n  sourceDir  = %@\n  currentDir = %@\n  targetDir  = %@\n  options    = %@");
    isInstallEnvironment = _SC_isInstallEnvironment();
    v20 = " (INSTALLER ENVIRONMENT)";
    *v18 = 136316162;
    if (!isInstallEnvironment)
    {
      v20 = "";
    }

    *(v18 + 4) = v20;
    *(v18 + 12) = 2112;
    *(v18 + 14) = a1;
    v21 = @"None";
    *(v18 + 22) = 2112;
    if (a4)
    {
      v21 = a4;
    }

    *(v18 + 24) = a2;
    *(v18 + 32) = 2112;
    *(v18 + 34) = a3;
    *(v18 + 42) = 2112;
    *(v18 + 44) = v21;
    __SC_log_send(6, v8, v9, v16);
  }

  if (a1 && !CFURLHasDirectoryPath(a1))
  {
    v32 = __log_SCNetworkConfiguration();
    v33 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v32, v33))
    {
      v34 = _os_log_pack_size();
      v40 = v142 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v40, v34, *v41, &dword_1AD2AD000, "Migration source is not a directory: %@");
      *v42 = 138412290;
      *(v42 + 4) = a1;
      v43 = v32;
      v44 = v33;
LABEL_25:
      __SC_log_send(5, v43, v44, v40);
      return 0;
    }

    return 0;
  }

  if (a2 && !CFURLHasDirectoryPath(a2))
  {
    v48 = __log_SCNetworkConfiguration();
    v49 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v48, v49))
    {
      v50 = _os_log_pack_size();
      v40 = v142 - ((MEMORY[0x1EEE9AC00](v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = __error();
      v57 = _os_log_pack_fill(v40, v50, *v56, &dword_1AD2AD000, "Migration current is not a directory: %@");
      *v57 = 138412290;
      *(v57 + 4) = a2;
LABEL_24:
      v43 = v48;
      v44 = v49;
      goto LABEL_25;
    }

    return 0;
  }

  if (a3 && !CFURLHasDirectoryPath(a3))
  {
    v48 = __log_SCNetworkConfiguration();
    v49 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v48, v49))
    {
      v58 = _os_log_pack_size();
      v40 = v142 - ((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
      v64 = __error();
      v65 = _os_log_pack_fill(v40, v58, *v64, &dword_1AD2AD000, "Migration target is not a directory: %@");
      *v65 = 138412290;
      *(v65 + 4) = a3;
      goto LABEL_24;
    }

    return 0;
  }

  if (!(a1 | a2))
  {
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v22, v23))
    {
      v24 = _os_log_pack_size();
      v30 = v142 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      *_os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "Both migration source and current are NULL") = 0;
      __SC_log_send(5, v22, v23, v30);
    }

    return 0;
  }

  v45 = CFURLCreateWithString(0, @"/Library/Preferences/SystemConfiguration", 0);
  v46 = v45;
  if (a1)
  {
    v47 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a1);
  }

  else
  {
    v47 = CFRetain(v45);
  }

  v68 = v47;
  if (a2)
  {
    a2 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a2);
  }

  if (a3)
  {
    v69 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a3);
  }

  else
  {
    v69 = CFRetain(v46);
  }

  v70 = v69;
  if (CFEqual(v68, v69))
  {
    v71 = __log_SCNetworkConfiguration();
    v72 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v71, v72))
    {
      goto LABEL_38;
    }

    v73 = _os_log_pack_size();
    v79 = v142 - ((MEMORY[0x1EEE9AC00](v73, v74, v75, v76, v77, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = *__error();
    v81 = _os_log_pack_fill(v79, v73, v80, &dword_1AD2AD000, "Source directory cannot be the same as target directory");
    goto LABEL_37;
  }

  v82 = a2 == 0;
  if (a2 && CFEqual(a2, v70))
  {
    v82 = 1;
LABEL_58:
    if (CFEqual(v68, a2))
    {
      v109 = __log_SCNetworkConfiguration();
      v110 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v109, v110))
      {
        v111 = _os_log_pack_size();
        v117 = v142 - ((MEMORY[0x1EEE9AC00](v111, v112, v113, v114, v115, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
        v118 = __error();
        *_os_log_pack_fill(v117, v111, *v118, &dword_1AD2AD000, "No migration needed, source and current configurations have the same path") = 0;
        __SC_log_send(5, v109, v110, v117);
      }

LABEL_62:
      v119 = __log_SCNetworkConfiguration();
      v120 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v119, v120))
      {
        v121 = _os_log_pack_size();
        v127 = v142 - ((MEMORY[0x1EEE9AC00](v121, v122, v123, v124, v125, v126) + 15) & 0xFFFFFFFFFFFFFFF0);
        v128 = __error();
        *_os_log_pack_fill(v127, v121, *v128, &dword_1AD2AD000, "Migration complete") = 0;
        __SC_log_send(5, v119, v120, v127);
      }

      v66 = _SCNetworkConfigurationCopyMigrationPaths();
      if (!a2)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_61;
  }

  if (!_SCNetworkConfigurationMakePathIfNeeded(v70))
  {
    v71 = __log_SCNetworkConfiguration();
    v72 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v71, v72))
    {
      v102 = _os_log_pack_size();
      v79 = v142 - ((MEMORY[0x1EEE9AC00](v102, v103, v104, v105, v106, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
      v108 = *__error();
      v81 = _os_log_pack_fill(v79, v102, v108, &dword_1AD2AD000, "Could not create target directory");
LABEL_37:
      *v81 = 0;
      __SC_log_send(5, v71, v72, v79);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (!SCNetworkConfigurationCopyConfigurationFiles(a2, v70, v83, v84, v85, v86))
  {
    v91 = __log_SCNetworkConfiguration();
    v92 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v91, v92))
    {
      v93 = _os_log_pack_size();
      v99 = v142 - ((MEMORY[0x1EEE9AC00](v93, v94, v95, v96, v97, v98) + 15) & 0xFFFFFFFFFFFFFFF0);
      v100 = __error();
      v101 = _os_log_pack_fill(v99, v93, *v100, &dword_1AD2AD000, "Could not copy configuration files from %@ to %@");
      *v101 = 138412546;
      *(v101 + 4) = a2;
      *(v101 + 12) = 2112;
      *(v101 + 14) = v70;
      __SC_log_send(5, v91, v92, v99);
    }

    v82 = 1;
  }

  if (a2)
  {
    goto LABEL_58;
  }

LABEL_61:
  if (_SCNetworkConfigurationMigrateConfiguration(v68, v70, v87, v88, v89, v90))
  {
    goto LABEL_62;
  }

  v129 = __log_SCNetworkConfiguration();
  v130 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v129, v130))
  {
    v131 = _os_log_pack_size();
    v137 = v142 - ((MEMORY[0x1EEE9AC00](v131, v132, v133, v134, v135, v136) + 15) & 0xFFFFFFFFFFFFFFF0);
    v138 = __error();
    v139 = _os_log_pack_fill(v137, v131, *v138, &dword_1AD2AD000, "Migration failed: %s", v142[0]);
    v140 = SCError();
    v141 = SCErrorString(v140);
    *v139 = 136315138;
    *(v139 + 4) = v141;
    __SC_log_send(5, v129, v130, v137);
  }

  if (!v82)
  {
    _SCNetworkConfigurationRemoveConfigurationFiles(v70);
  }

LABEL_38:
  v66 = 0;
  if (a2)
  {
LABEL_39:
    CFRelease(a2);
  }

LABEL_40:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  return v66;
}

uint64_t _SCNetworkConfigurationMakePathIfNeeded(const __CFURL *a1)
{
  v42[128] = *MEMORY[0x1E69E9840];
  v2 = CFURLGetFileSystemRepresentation(a1, 1u, v42, 1024);
  v3 = __log_SCNetworkConfiguration();
  if (v2)
  {
    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v42[-1] - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "creating path: %s", v41);
      *v13 = 136315138;
      *(v13 + 4) = v42;
      __SC_log_send(6, v3, v4, v11);
    }

    for (i = LOBYTE(v42[0]) == 47; ; ++i)
    {
      if (*(v42 + i))
      {
        if (*(v42 + i) != 47)
        {
          continue;
        }

        v15 = 0;
        *(v42 + i) = 0;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        v15 = 1;
      }

      if (mkdir(v42, 0x1EDu) && *__error() != 17 && *__error() != 21)
      {
        v27 = __log_SCNetworkConfiguration();
        v28 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v27, v28))
        {
          v29 = _os_log_pack_size();
          v35 = &v42[-1] - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
          v36 = __error();
          v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "mkdir(%s) failed: %s", v41, v42[0]);
          v38 = __error();
          v39 = strerror(*v38);
          *v37 = 136315394;
          *(v37 + 4) = v42;
          *(v37 + 12) = 2080;
          *(v37 + 14) = v39;
          __SC_log_send(5, v27, v28, v35);
        }

        return v15;
      }

      *(v42 + i) = 47;
      if (!v16)
      {
        return 1;
      }
    }
  }

  v17 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v17))
  {
    v18 = _os_log_pack_size();
    v24 = &v42[-1] - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
    *v26 = 138412290;
    *(v26 + 4) = a1;
    __SC_log_send(5, v3, v17, v24);
  }

  return 0;
}

uint64_t SCNetworkConfigurationCopyConfigurationFiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v80 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v75 = 0;
  url = 0;
  v73 = 0;
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(v7, &url, &v73);
  v10 = url;
  if (!CFURLGetFileSystemRepresentation(url, 1u, v76, 1024))
  {
    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v28, v29))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = v73;
  if (!CFURLGetFileSystemRepresentation(v73, 1u, v77, 1024))
  {
    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v28, v29))
    {
LABEL_12:
      v30 = _os_log_pack_size();
      v36 = &v71 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = *__error();
      v38 = _os_log_pack_fill(v36, v30, v37, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v38 = 138412290;
      *(v38 + 4) = v10;
      __SC_log_send(5, v28, v29, v36);
    }

LABEL_13:
    v39 = 0;
    goto LABEL_28;
  }

  if (!v9)
  {
    v11 = 0;
    v39 = 1;
    goto LABEL_26;
  }

  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(v9, &v74, &v75);
  v11 = v74;
  if (!CFURLGetFileSystemRepresentation(v74, 1u, v78, 1024))
  {
    v40 = __log_SCNetworkConfiguration();
    v41 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v40, v41))
    {
      v42 = _os_log_pack_size();
      v48 = &v71 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = __error();
      v50 = _os_log_pack_fill(v48, v42, *v49, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v50 = 138412290;
      *(v50 + 4) = v11;
      __SC_log_send(5, v40, v41, v48);
    }

LABEL_19:
    v39 = 0;
    if (!v11)
    {
      goto LABEL_28;
    }

LABEL_27:
    CFRelease(v11);
    goto LABEL_28;
  }

  v12 = v75;
  if (!CFURLGetFileSystemRepresentation(v75, 1u, v79, 1024))
  {
    v51 = __log_SCNetworkConfiguration();
    v52 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v51, v52))
    {
      v53 = _os_log_pack_size();
      v59 = &v71 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = __error();
      v61 = _os_log_pack_fill(v59, v53, *v60, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v61 = 138412290;
      *(v61 + 4) = v12;
      __SC_log_send(5, v51, v52, v59);
    }

    goto LABEL_19;
  }

  v13 = copyfile_state_alloc();
  if (copyfile(v78, v76, v13, 0xFu))
  {
    v14 = __log_SCNetworkConfiguration();
    v15 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v14, v15))
    {
      v16 = _os_log_pack_size();
      v22 = &v71 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "copyFile(%s, %s, ...) failed: %s", v71, url, v73);
      v25 = __error();
      v26 = strerror(*v25);
      *v24 = 136315650;
      *(v24 + 4) = v78;
      *(v24 + 12) = 2080;
      v27 = v76;
LABEL_24:
      *(v24 + 14) = v27;
      *(v24 + 22) = 2080;
      *(v24 + 24) = v26;
      __SC_log_send(5, v14, v15, v22);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  copyfile_state_free(v13);
  chmod(v76, 0x1EDu);
  v13 = copyfile_state_alloc();
  if (copyfile(v79, v77, v13, 0xFu))
  {
    v14 = __log_SCNetworkConfiguration();
    v15 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v14, v15))
    {
      v62 = _os_log_pack_size();
      v22 = &v71 - ((MEMORY[0x1EEE9AC00](v62, v63, v64, v65, v66, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
      v68 = __error();
      v24 = _os_log_pack_fill(v22, v62, *v68, &dword_1AD2AD000, "copyFile(%s, %s, ...) failed: %s", v71, url, v73);
      v69 = __error();
      v26 = strerror(*v69);
      *v24 = 136315650;
      *(v24 + 4) = v79;
      *(v24 + 12) = 2080;
      v27 = v77;
      goto LABEL_24;
    }

LABEL_25:
    copyfile_state_free(v13);
    v39 = 0;
LABEL_26:
    _SCNetworkConfigurationRemoveConfigurationFiles(v8);
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  copyfile_state_free(v13);
  chmod(v77, 0x1EDu);
  v39 = 1;
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v75)
  {
    CFRelease(v75);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  return v39;
}

uint64_t _SCNetworkConfigurationMigrateConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  ValueAtIndex = v6;
  v311 = *MEMORY[0x1E69E9840];
  v304 = 0;
  theArray = 0;
  if (!__SCNetworkConfigurationMigrateConfigurationFilesPresent(v6, &theArray, 1))
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      v32 = _os_log_pack_size();
      v38 = &v288 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      v40 = _os_log_pack_fill(v38, v32, v39, &dword_1AD2AD000, "sourceDir: (%@) missing configuration files");
LABEL_16:
      *v40 = 138412290;
      *(v40 + 4) = ValueAtIndex;
      __SC_log_send(5, v30, v31, v38);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v10 = theArray;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v309, 1024))
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v10, 1);
  if (!CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v310, 1024))
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
LABEL_15:
      v41 = _os_log_pack_size();
      v38 = &v288 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      v40 = _os_log_pack_fill(v38, v41, v47, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      goto LABEL_16;
    }

LABEL_17:
    Mutable = 0;
    v48 = 0;
    v297 = 0;
    v298 = 0;
    Companion = 0;
    v300 = 0;
    v301 = 0;
    v302 = 0;
    v299 = 0;
LABEL_18:
    ServiceMappingUsingBSDNameMapping = 0;
    v51 = 0;
    v15 = 0;
    v52 = 0;
LABEL_19:
    v53 = 0;
LABEL_20:
    BSDNameMapping = 0;
    goto LABEL_21;
  }

  v11 = CFStringCreateWithCString(0, v309, 0x8000100u);
  v12 = CFStringCreateWithCString(0, v310, 0x8000100u);
  v300 = v11;
  v13 = __SCPreferencesCreateForMigration(@"System Migration", v11);
  v299 = v12;
  v14 = __SCPreferencesCreateForMigration(@"System Migration", v12);
  v15 = 0;
  Mutable = 0;
  v301 = v13;
  v302 = v14;
  if (!v13 || (v17 = v14) == 0)
  {
    v48 = 0;
    v297 = 0;
    v298 = 0;
    Companion = 0;
    ServiceMappingUsingBSDNameMapping = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    BSDNameMapping = 0;
    goto LABEL_21;
  }

  v18 = __SCNetworkConfigurationMigrateConfigurationFilesPresent(v8, &v304, 0);
  v19 = v304;
  if (!v18 && !v304)
  {
    v20 = __log_SCNetworkConfiguration();
    v21 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = &v288 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      *_os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "targetConfigurationFiles is NULL") = 0;
      __SC_log_send(5, v20, v21, v28);
    }

    goto LABEL_67;
  }

  v58 = CFArrayGetValueAtIndex(v304, 0);
  if (!CFURLGetFileSystemRepresentation(v58, 1u, v307, 1024))
  {
    v73 = __log_SCNetworkConfiguration();
    v74 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v73, v74))
    {
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  v58 = CFArrayGetValueAtIndex(v19, 1);
  if (!CFURLGetFileSystemRepresentation(v58, 1u, v308, 1024))
  {
    v73 = __log_SCNetworkConfiguration();
    v74 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v73, v74))
    {
LABEL_66:
      v75 = _os_log_pack_size();
      v81 = &v288 - ((MEMORY[0x1EEE9AC00](v75, v76, v77, v78, v79, v80) + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = *__error();
      v83 = _os_log_pack_fill(v81, v75, v82, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v83 = 138412290;
      *(v83 + 4) = v58;
      __SC_log_send(5, v73, v74, v81);
    }

LABEL_67:
    Mutable = 0;
    v48 = 0;
    v297 = 0;
    v298 = 0;
    Companion = 0;
    goto LABEL_18;
  }

  v59 = CFStringCreateWithCString(0, v307, 0x8000100u);
  v60 = CFStringCreateWithCString(0, v308, 0x8000100u);
  v298 = v59;
  v61 = __SCPreferencesCreateForMigration(@"System Migration", v59);
  v48 = v61;
  v297 = v60;
  if (v18)
  {
    v62 = __SCPreferencesCreateForMigration(@"System Migration", v60);
    Companion = v62;
    if (!v48 || !v62)
    {
      v63 = __log_SCNetworkConfiguration();
      v64 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v63, v64))
      {
        v65 = _os_log_pack_size();
        v71 = &v288 - ((MEMORY[0x1EEE9AC00](v65, v66, v67, v68, v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
        v72 = __error();
        *_os_log_pack_fill(v71, v65, *v72, &dword_1AD2AD000, "Could not open target prefs/ni_prefs") = 0;
        __SC_log_send(5, v63, v64, v71);
      }

      Mutable = 0;
      goto LABEL_18;
    }
  }

  else
  {
    __SCNetworkPopulateDefaultPrefs(v61);
    Companion = SCPreferencesCreateCompanion(v48, @"NetworkInterfaces.plist");
    __SCNetworkPopulateDefaultNIPrefs(Companion);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v84 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, @"ConfigurationRepair", *MEMORY[0x1E695E4D0]);
  _SCNetworkConfigurationSetBypassSystemInterfaces(v13, 1);
  _SCNetworkConfigurationSetBypassSystemInterfaces(v48, 1);
  v295 = v84;
  if (!hasSameModel(v13, v48))
  {
    v85 = "model change (preferences)";
    goto LABEL_75;
  }

  if (!hasSameModel(v17, Companion))
  {
    v85 = "model change (interfaces)";
    goto LABEL_75;
  }

  if (hasInterfaceConflict(v17, Companion))
  {
    v85 = "interface conflicts";
LABEL_75:
    v86 = __log_SCNetworkConfiguration();
    v87 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v86, v87))
    {
      v88 = _os_log_pack_size();
      v296 = &v288;
      v94 = &v288 - ((MEMORY[0x1EEE9AC00](v88, v89, v90, v91, v92, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
      v95 = __error();
      v96 = _os_log_pack_fill(v94, v88, *v95, &dword_1AD2AD000, "Migrating network configuration: %s", v288);
      *v96 = 136315138;
      *(v96 + 4) = v85;
      __SC_log_send(5, v86, v87, v94);
      v97 = 1;
LABEL_77:
      v13 = v301;
      v17 = v302;
      goto LABEL_79;
    }

    v97 = 1;
    goto LABEL_79;
  }

  v179 = __log_SCNetworkConfiguration();
  v180 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v179, v180))
  {
    v181 = _os_log_pack_size();
    v296 = &v288;
    v187 = &v288 - ((MEMORY[0x1EEE9AC00](v181, v182, v183, v184, v185, v186) + 15) & 0xFFFFFFFFFFFFFFF0);
    v188 = __error();
    *_os_log_pack_fill(v187, v181, *v188, &dword_1AD2AD000, "Upgrading network configuration") = 0;
    __SC_log_send(5, v179, v180, v187);
    v97 = 0;
    goto LABEL_77;
  }

  v97 = 0;
LABEL_79:
  v98 = __log_SCNetworkConfiguration();
  v99 = _SC_syslog_os_log_mapping(6);
  v100 = __SC_log_enabled(6, v98, v99);
  LODWORD(v296) = v97;
  if (v100)
  {
    v101 = _os_log_pack_size();
    v107 = &v288 - ((MEMORY[0x1EEE9AC00](v101, v102, v103, v104, v105, v106) + 15) & 0xFFFFFFFFFFFFFFF0);
    v108 = __error();
    v109 = v101;
    v13 = v301;
    v110 = _os_log_pack_fill(v107, v109, *v108, &dword_1AD2AD000, "  sourcePrefs                 = %@\n  sourceNetworkInterfacePrefs = %@\n  targetPrefs                 = %@%s\n  targetNetworkInterfacePrefs = %@%s");
    *v110 = 138413570;
    v111 = ", new";
    *(v110 + 4) = v13;
    if (v18)
    {
      v111 = "";
    }

    *(v110 + 12) = 2112;
    *(v110 + 14) = v302;
    *(v110 + 22) = 2112;
    *(v110 + 24) = v48;
    *(v110 + 32) = 2080;
    *(v110 + 34) = v111;
    *(v110 + 42) = 2112;
    *(v110 + 44) = Companion;
    *(v110 + 52) = 2080;
    *(v110 + 54) = v111;
    v112 = v107;
    v17 = v302;
    __SC_log_send(6, v98, v99, v112);
    v97 = v296;
  }

  if (v97)
  {
    v113 = "migration";
  }

  else
  {
    v113 = "upgrade";
  }

  v114 = CFStringCreateWithFormat(0, 0, @"pre-%s-source", v113);
  __SCNetworkConfigurationBackup(v13, v114, v48);
  __SCNetworkConfigurationBackup(v17, v114, v48);
  CFRelease(v114);
  v115 = "new-";
  if (v18)
  {
    v115 = "";
  }

  v116 = CFStringCreateWithFormat(0, 0, @"pre-%s-%starget", v113, v115);
  __SCNetworkConfigurationBackup(v48, v116, v48);
  __SCNetworkConfigurationBackup(Companion, v116, v48);
  CFRelease(v116);
  __SCNetworkConfigurationReport(5, "Source", v13, v17);
  __SCNetworkConfigurationReport(5, "Target", v48, Companion);
  _SCNetworkConfigurationCreateBuiltinInterfaceServices(v13, v17);
  if (!_SCNetworkConfigurationCheckValidityWithPreferences(v13, v17, Mutable))
  {
    v131 = __log_SCNetworkConfiguration();
    v132 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v131, v132))
    {
      goto LABEL_120;
    }

    v133 = _os_log_pack_size();
    v139 = &v288 - ((MEMORY[0x1EEE9AC00](v133, v134, v135, v136, v137, v138) + 15) & 0xFFFFFFFFFFFFFFF0);
    v140 = *__error();
    v141 = _os_log_pack_fill(v139, v133, v140, &dword_1AD2AD000, "Source configuration not valid");
    goto LABEL_119;
  }

  if (v18)
  {
    _SCNetworkConfigurationCreateBuiltinInterfaceServices(v48, Companion);
    if (!_SCNetworkConfigurationCheckValidityWithPreferences(v48, Companion, Mutable))
    {
      v131 = __log_SCNetworkConfiguration();
      v132 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v131, v132))
      {
        goto LABEL_120;
      }

      v189 = _os_log_pack_size();
      v139 = &v288 - ((MEMORY[0x1EEE9AC00](v189, v190, v191, v192, v193, v194) + 15) & 0xFFFFFFFFFFFFFFF0);
      v195 = *__error();
      v141 = _os_log_pack_fill(v139, v189, v195, &dword_1AD2AD000, "Target configuration not valid");
LABEL_119:
      *v141 = 0;
      __SC_log_send(5, v131, v132, v139);
LABEL_120:
      BSDNameMapping = 0;
      v53 = 0;
      v52 = 0;
      v51 = 0;
      ServiceMappingUsingBSDNameMapping = 0;
      ServiceSetMapping = 0;
      v294 = 0;
      if (!v97)
      {
        goto LABEL_137;
      }

      goto LABEL_121;
    }
  }

  if ((v97 & 1) == 0)
  {
    v303 = 0;
    v142 = __SCPreferencesCreateForMigration(@"Upgrade Source Prefs", 0);
    v143 = __SCPreferencesCreateForMigration(@"Upgrade Source NI Prefs", @"NetworkInterfaces.plist");
    _SCNetworkConfigurationSetBypassSystemInterfaces(v142, 1);
    v144 = __log_SCNetworkConfiguration();
    v145 = _SC_syslog_os_log_mapping(6);
    v146 = __SC_log_enabled(6, v144, v145);
    v292 = v142;
    if (v146)
    {
      v147 = _os_log_pack_size();
      v153 = &v288 - ((MEMORY[0x1EEE9AC00](v147, v148, v149, v150, v151, v152) + 15) & 0xFFFFFFFFFFFFFFF0);
      v154 = __error();
      v155 = _os_log_pack_fill(v153, v147, *v154, &dword_1AD2AD000, "Upgrading network configuration:\n  upgradeSourcePrefs [temp]   = %@\n  upgradeSourceNIPrefs [temp] = %@\n  Copying target --> upgrade, source --> target");
      *v155 = 138412546;
      *(v155 + 4) = v292;
      *(v155 + 12) = 2112;
      *(v155 + 14) = v143;
      v156 = v153;
      v17 = v302;
      __SC_log_send(6, v144, v145, v156);
      v142 = v292;
    }

    Value = SCPreferencesPathGetValue(v48, @"/");
    v158 = SCPreferencesPathGetValue(Companion, @"/");
    SCPreferencesPathSetValue(v142, @"/", Value);
    SCPreferencesPathSetValue(v143, @"/", v158);
    v159 = SCPreferencesPathGetValue(v301, @"/");
    v160 = SCPreferencesPathGetValue(v17, @"/");
    SCPreferencesPathSetValue(v48, @"/", v159);
    SCPreferencesPathSetValue(Companion, @"/", v160);
    v291 = v143;
    v161 = _SCNetworkConfigurationCopyExternalInterfaceMapping(v143, Companion);
    v52 = v161;
    if (v161)
    {
      v306[0] = 6;
      v306[1] = "Upgrading, external interface mapping";
      CFDictionaryApplyFunction(v161, logMapping_one, v306);
    }

    v51 = _SCNetworkMigrationCreateNetworkInterfaceArray(Companion, v52, &v303);
    v162 = __log_SCNetworkConfiguration();
    v163 = _SC_syslog_os_log_mapping(6);
    v164 = __SC_log_enabled(6, v162, v163);
    v97 = v296;
    if (v164)
    {
      v165 = _os_log_pack_size();
      v294 = &v288;
      v171 = &v288 - ((MEMORY[0x1EEE9AC00](v165, v166, v167, v168, v169, v170) + 15) & 0xFFFFFFFFFFFFFFF0);
      v172 = __error();
      v173 = v165;
      v97 = v296;
      v174 = _os_log_pack_fill(v171, v173, *v172, &dword_1AD2AD000, "Upgrading, %s new interfaces", v288);
      if (v303)
      {
        v175 = "found";
      }

      else
      {
        v175 = "no";
      }

      *v174 = 136315138;
      *(v174 + 4) = v175;
      v176 = v171;
      v142 = v292;
      __SC_log_send(6, v162, v163, v176);
    }

    if (!v303)
    {
      ServiceSetMapping = 0;
      v294 = 0;
      ServiceMappingUsingBSDNameMapping = 0;
      BSDNameMapping = 0;
      goto LABEL_128;
    }

    if (v51)
    {
      if (__SCNetworkInterfaceSaveStoredWithPreferences(Companion, v51))
      {
        BSDNameMapping = _SCNetworkMigrationCreateBSDNameMapping(0, v52);
        ServiceMappingUsingBSDNameMapping = _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(v142, v48, BSDNameMapping);
        SetMapping = _SCNetworkMigrationCreateSetMapping(v142, v48);
        ServiceSetMapping = _SCNetworkMigrationCreateServiceSetMapping(v292);
        v294 = SetMapping;
        v178 = SetMapping;
        v142 = v292;
        _SCNetworkMigrationDoServiceMigration(v292, v48, ServiceMappingUsingBSDNameMapping, BSDNameMapping, v178, ServiceSetMapping);
LABEL_128:
        CFRelease(v142);
        CFRelease(v291);
        v53 = 0;
        goto LABEL_137;
      }

      v227 = __log_SCNetworkConfiguration();
      v228 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v227, v228))
      {
        v272 = _os_log_pack_size();
        v296 = &v288;
        v235 = &v288 - ((MEMORY[0x1EEE9AC00](v272, v273, v274, v275, v276, v277) + 15) & 0xFFFFFFFFFFFFFFF0);
        v278 = *__error();
        v237 = _os_log_pack_fill(v235, v272, v278, &dword_1AD2AD000, "Upgrading, failed to update NetworkInterfaces.plist");
        goto LABEL_162;
      }
    }

    else
    {
      v227 = __log_SCNetworkConfiguration();
      v228 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v227, v228))
      {
        v229 = _os_log_pack_size();
        v296 = &v288;
        v235 = &v288 - ((MEMORY[0x1EEE9AC00](v229, v230, v231, v232, v233, v234) + 15) & 0xFFFFFFFFFFFFFFF0);
        v236 = *__error();
        v237 = _os_log_pack_fill(v235, v229, v236, &dword_1AD2AD000, "Upgrading, failed w/no new interface list");
LABEL_162:
        *v237 = 0;
        __SC_log_send(5, v227, v228, v235);
        v142 = v292;
      }
    }

    CFRelease(v142);
    CFRelease(v291);
    ServiceMappingUsingBSDNameMapping = 0;
    v15 = 0;
    goto LABEL_19;
  }

  v53 = _SCNetworkConfigurationCopyBuiltinMapping(v17, Companion);
  v52 = _SCNetworkConfigurationCopyExternalInterfaceMapping(v17, Companion);
  NetworkInterfaceArray = _SCNetworkMigrationCreateNetworkInterfaceArray(Companion, v52, 0);
  if (!NetworkInterfaceArray)
  {
    v206 = __log_SCNetworkConfiguration();
    v207 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v206, v207))
    {
      v208 = _os_log_pack_size();
      v296 = &v288;
      v214 = &v288 - ((MEMORY[0x1EEE9AC00](v208, v209, v210, v211, v212, v213) + 15) & 0xFFFFFFFFFFFFFFF0);
      v215 = __error();
      *_os_log_pack_fill(v214, v208, *v215, &dword_1AD2AD000, "Migrating, failed w/no new interface list") = 0;
      __SC_log_send(5, v206, v207, v214);
    }

    ServiceMappingUsingBSDNameMapping = 0;
    v51 = 0;
    goto LABEL_132;
  }

  v51 = NetworkInterfaceArray;
  if (!__SCNetworkInterfaceSaveStoredWithPreferences(Companion, NetworkInterfaceArray))
  {
    v216 = __log_SCNetworkConfiguration();
    v217 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v216, v217))
    {
      v218 = _os_log_pack_size();
      v296 = &v288;
      v224 = MEMORY[0x1EEE9AC00](v218, v219, v220, v221, v222, v223);
      v295 = v216;
      v225 = &v288 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
      v226 = __error();
      *_os_log_pack_fill(v225, v218, *v226, &dword_1AD2AD000, "Migrating, failed to update NetworkInterfaces.plist") = 0;
      __SC_log_send(5, v295, v217, v225);
    }

    ServiceMappingUsingBSDNameMapping = 0;
LABEL_132:
    v15 = 0;
    goto LABEL_20;
  }

  BSDNameMapping = _SCNetworkMigrationCreateBSDNameMapping(v53, v52);
  v118 = v301;
  ServiceMappingUsingBSDNameMapping = _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(v301, v48, BSDNameMapping);
  if (!ServiceMappingUsingBSDNameMapping)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v294 = _SCNetworkMigrationCreateSetMapping(v118, v48);
  v119 = _SCNetworkMigrationCreateServiceSetMapping(v118);
  v120 = v118;
  v121 = v294;
  ServiceSetMapping = v119;
  if (!_SCNetworkMigrationDoServiceMigration(v120, v48, ServiceMappingUsingBSDNameMapping, BSDNameMapping, v294, v119))
  {
    v279 = __log_SCNetworkConfiguration();
    LODWORD(v295) = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v279, v295))
    {
      goto LABEL_154;
    }

    v280 = _os_log_pack_size();
    v291 = v279;
    v281 = v280;
    v292 = &v288;
    v296 = &v288 - ((MEMORY[0x1EEE9AC00](v280, v282, v283, v284, v285, v286) + 15) & 0xFFFFFFFFFFFFFFF0);
    v287 = __error();
    *_os_log_pack_fill(v296, v281, *v287, &dword_1AD2AD000, "SCNetworkMigrationDoServiceMigration(): service migration failed") = 0;
    goto LABEL_153;
  }

  if (!_SCNetworkMigrationDoServiceOrderMigration(v121))
  {
    v122 = __log_SCNetworkConfiguration();
    v123 = _SC_syslog_os_log_mapping(5);
    v291 = v122;
    LODWORD(v290) = v123;
    if (__SC_log_enabled(5, v122, v123))
    {
      v124 = _os_log_pack_size();
      v289 = &v288;
      v292 = (&v288 - ((MEMORY[0x1EEE9AC00](v124, v125, v126, v127, v128, v129) + 15) & 0xFFFFFFFFFFFFFFF0));
      v130 = __error();
      *_os_log_pack_fill(v292, v124, *v130, &dword_1AD2AD000, "SCNetworkMigrationDoServiceMigration(): service order migration failed") = 0;
      __SC_log_send(5, v291, v290, v292);
    }
  }

  v97 = v296;
LABEL_121:
  if (!_SCNetworkMigrationDoSystemMigration(v301, v48))
  {
    v196 = __log_SCNetworkConfiguration();
    v197 = _SC_syslog_os_log_mapping(5);
    v291 = v196;
    LODWORD(v290) = v197;
    if (__SC_log_enabled(5, v196, v197))
    {
      v198 = _os_log_pack_size();
      v289 = &v288;
      v292 = (&v288 - ((MEMORY[0x1EEE9AC00](v198, v199, v200, v201, v202, v203) + 15) & 0xFFFFFFFFFFFFFFF0));
      v204 = __error();
      v205 = v198;
      v97 = v296;
      *_os_log_pack_fill(v292, v205, *v204, &dword_1AD2AD000, "SCNetworkMigrationDoServiceMigration(): system setting migration failed") = 0;
      __SC_log_send(5, v291, v290, v292);
    }

    else
    {
      v97 = v296;
    }
  }

LABEL_137:
  CFDictionaryAddValue(Mutable, @"ConfigurationRepairModel", v295);
  if (!_SCNetworkConfigurationCheckValidityWithPreferences(v48, Companion, Mutable))
  {
    v239 = __log_SCNetworkConfiguration();
    v240 = _SC_syslog_os_log_mapping(5);
    v292 = v239;
    LODWORD(v291) = v240;
    if (__SC_log_enabled(5, v239, v240))
    {
      v241 = _os_log_pack_size();
      v290 = &v288;
      v295 = &v288 - ((MEMORY[0x1EEE9AC00](v241, v242, v243, v244, v245, v246) + 15) & 0xFFFFFFFFFFFFFFF0);
      v247 = __error();
      v248 = _os_log_pack_fill(v295, v241, *v247, &dword_1AD2AD000, "%s configuration not valid", v288);
      v249 = "Upgraded";
      if (v296)
      {
        v249 = "Migrated";
      }

      *v248 = 136315138;
      *(v248 + 4) = v249;
      __SC_log_send(5, v292, v291, v295);
    }

    goto LABEL_154;
  }

  if (SCPreferencesCommitChanges(v48))
  {
    if (SCPreferencesCommitChanges(Companion))
    {
      if (v97)
      {
        v238 = "Migrated";
      }

      else
      {
        v238 = "Upgraded";
      }

      __SCNetworkConfigurationReport(5, v238, v48, Companion);
      v15 = 1;
      goto LABEL_155;
    }

    v260 = __log_SCNetworkConfiguration();
    LODWORD(v295) = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v260, v295))
    {
      v261 = _os_log_pack_size();
      v291 = v260;
      v262 = v261;
      v292 = &v288;
      v296 = &v288 - ((MEMORY[0x1EEE9AC00](v261, v263, v264, v265, v266, v267) + 15) & 0xFFFFFFFFFFFFFFF0);
      v268 = *__error();
      v259 = _os_log_pack_fill(v296, v262, v268, &dword_1AD2AD000, "SCPreferencesCommitChanges(target NetworkInterfaces.plist) failed: %s");
      goto LABEL_152;
    }
  }

  else
  {
    v250 = __log_SCNetworkConfiguration();
    LODWORD(v295) = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v250, v295))
    {
      v251 = _os_log_pack_size();
      v291 = v250;
      v252 = v251;
      v292 = &v288;
      v296 = &v288 - ((MEMORY[0x1EEE9AC00](v251, v253, v254, v255, v256, v257) + 15) & 0xFFFFFFFFFFFFFFF0);
      v258 = *__error();
      v259 = _os_log_pack_fill(v296, v252, v258, &dword_1AD2AD000, "SCPreferencesCommitChanges(target preferences.plist) failed: %s");
LABEL_152:
      v269 = v259;
      v270 = SCError();
      v271 = SCErrorString(v270);
      *v269 = 136315138;
      *(v269 + 4) = v271;
LABEL_153:
      __SC_log_send(5, v291, v295, v296);
    }
  }

LABEL_154:
  v15 = 0;
LABEL_155:
  if (v294)
  {
    CFRelease(v294);
  }

  if (ServiceSetMapping)
  {
    CFRelease(ServiceSetMapping);
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v304)
  {
    CFRelease(v304);
  }

  if (v300)
  {
    CFRelease(v300);
  }

  if (v299)
  {
    CFRelease(v299);
  }

  if (v298)
  {
    CFRelease(v298);
  }

  if (v297)
  {
    CFRelease(v297);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  v55 = v301;
  if (v52)
  {
    CFRelease(v52);
  }

  if (BSDNameMapping)
  {
    CFRelease(BSDNameMapping);
  }

  v56 = v302;
  if (ServiceMappingUsingBSDNameMapping)
  {
    CFRelease(ServiceMappingUsingBSDNameMapping);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

void _SCNetworkConfigurationRemoveConfigurationFiles(const __CFURL *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v48 = 0;
  url = 0;
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(a1, &url, &v48);
  v1 = url;
  if (!CFURLGetFileSystemRepresentation(url, 1u, v51, 1024))
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_9;
    }

    v16 = _os_log_pack_size();
    v11 = &v47 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v11, v16, *v22, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
    *v23 = 138412290;
    *(v23 + 4) = v1;
    goto LABEL_8;
  }

  if (remove(v51, v2) && *__error() != 2)
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v47 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "remove(%s) failed: %s", v47, v48);
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315394;
      *(v13 + 4) = v51;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v15;
LABEL_8:
      __SC_log_send(5, v3, v4, v11);
    }
  }

LABEL_9:
  CFRelease(v1);
  v24 = v48;
  if (CFURLGetFileSystemRepresentation(v48, 1u, v50, 1024))
  {
    if (remove(v50, v25) && *__error() != 2)
    {
      v26 = __log_SCNetworkConfiguration();
      v27 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v26, v27))
      {
        v28 = _os_log_pack_size();
        v34 = &v47 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = __error();
        v36 = _os_log_pack_fill(v34, v28, *v35, &dword_1AD2AD000, "remove(%s) failed: %s", v47, v48);
        v37 = __error();
        v38 = strerror(*v37);
        *v36 = 136315394;
        *(v36 + 4) = v50;
        *(v36 + 12) = 2080;
        *(v36 + 14) = v38;
LABEL_16:
        __SC_log_send(5, v26, v27, v34);
      }
    }
  }

  else
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v26, v27))
    {
      v39 = _os_log_pack_size();
      v34 = &v47 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = __error();
      v46 = _os_log_pack_fill(v34, v39, *v45, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v46 = 138412290;
      *(v46 + 4) = v24;
      goto LABEL_16;
    }
  }

  CFRelease(v24);
}

uint64_t _SCNetworkConfigurationCheckValidityWithPreferences(const __SCPreferences *a1, const __SCPreferences *a2, const __CFDictionary *a3)
{
  v300 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 1;
  v291 = 1;
  TypeID = CFDictionaryGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID)
  {
    Value = CFDictionaryGetValue(a3, @"ConfigurationRepair");
    v9 = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      LODWORD(v290) = CFBooleanGetValue(Value);
    }

    else
    {
      LODWORD(v290) = 0;
    }

    v132 = CFDictionaryGetValue(a3, @"ConfigurationRepairModel");
    v133 = CFBooleanGetTypeID();
    if (v132 && CFGetTypeID(v132) == v133)
    {
      LODWORD(v6) = CFBooleanGetValue(v132) == 0;
    }
  }

  else
  {
    LODWORD(v290) = 0;
  }

  v297 = 0;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v292 = 0u;
  v10 = __log_SCNetworkConfiguration();
  v11 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v10, v11))
  {
    v12 = _os_log_pack_size();
    v289 = &v280;
    v18 = &v280 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Configuration validity check%s%s%s\n  prefs    = %@\n  ni_prefs = %@");
    if (v6)
    {
      v21 = "";
    }

    else
    {
      v21 = ", w/repair-model";
    }

    v22 = v6;
    v6 = a2;
    if (v290)
    {
      v23 = ", w/repair-configuration";
    }

    else
    {
      v23 = "";
    }

    v24 = _SCNetworkConfigurationBypassSystemInterfaces(a1);
    *v20 = 136316162;
    v25 = ", bypass system interfaces";
    *(v20 + 4) = v21;
    if (!v24)
    {
      v25 = "";
    }

    *(v20 + 12) = 2080;
    *(v20 + 14) = v23;
    a2 = v6;
    LOBYTE(v6) = v22;
    *(v20 + 22) = 2080;
    *(v20 + 24) = v25;
    *(v20 + 32) = 2112;
    *(v20 + 34) = a1;
    *(v20 + 42) = 2112;
    *(v20 + 44) = a2;
    __SC_log_send(6, v10, v11, v18);
  }

  v26 = _SCNetworkConfigurationBypassSystemInterfaces(a1);
  if (!v26)
  {
    _SCNetworkConfigurationSetBypassSystemInterfaces(a1, 1);
  }

  v27 = SCPreferencesGetValue(a1, @"Model");
  v28 = SCPreferencesGetValue(a2, @"Model");
  v29 = CFStringGetTypeID();
  if (!v27 || CFGetTypeID(v27) != v29)
  {
    if ((v6 & 1) == 0)
    {
      v30 = CFStringGetTypeID();
      if (v28)
      {
        if (CFGetTypeID(v28) == v30)
        {
          v31 = __log_SCNetworkConfiguration();
          v32 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v31, v32))
          {
            v33 = _os_log_pack_size();
            v39 = &v280 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = __error();
            *_os_log_pack_fill(v39, v33, *v40, &dword_1AD2AD000, "  updating Model property in preferences.plist") = 0;
            __SC_log_send(6, v31, v32, v39);
          }

          SCPreferencesSetValue(a1, @"Model", v28);
          v41 = CFStringGetTypeID();
          v27 = v28;
LABEL_31:
          v53 = v27;
          if (CFGetTypeID(v28) == v41)
          {
            goto LABEL_41;
          }

          goto LABEL_32;
        }
      }
    }

    v42 = __log_SCNetworkConfiguration();
    v43 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v42, v43))
    {
      v44 = _os_log_pack_size();
      LODWORD(v288) = v26;
      v50 = &v280 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = __error();
      *_os_log_pack_fill(v50, v44, *v51, &dword_1AD2AD000, "  no Model property in preferences.plist") = 0;
      __SC_log_send(6, v42, v43, v50);
      v26 = v288;
    }
  }

  v52 = CFStringGetTypeID();
  if (v28)
  {
    v41 = v52;
    goto LABEL_31;
  }

LABEL_32:
  if ((v6 & 1) == 0)
  {
    v54 = CFStringGetTypeID();
    if (v27)
    {
      if (CFGetTypeID(v27) == v54)
      {
        v55 = __log_SCNetworkConfiguration();
        v56 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v55, v56))
        {
          v57 = _os_log_pack_size();
          v63 = &v280 - ((MEMORY[0x1EEE9AC00](v57, v58, v59, v60, v61, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
          v64 = __error();
          *_os_log_pack_fill(v63, v57, *v64, &dword_1AD2AD000, "  updating Model property in NetworkInterfaces.plist") = 0;
          __SC_log_send(6, v55, v56, v63);
        }

        SCPreferencesSetValue(a2, @"Model", v27);
        v65 = CFStringGetTypeID();
        v53 = v27;
        goto LABEL_43;
      }
    }
  }

  v66 = __log_SCNetworkConfiguration();
  v67 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v66, v67))
  {
    v68 = _os_log_pack_size();
    v74 = &v280 - ((MEMORY[0x1EEE9AC00](v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = __error();
    *_os_log_pack_fill(v74, v68, *v75, &dword_1AD2AD000, "  no Model property in NetworkInterfaces.plist") = 0;
    __SC_log_send(6, v66, v67, v74);
  }

  v53 = v27;
LABEL_41:
  v76 = CFStringGetTypeID();
  if (!v53)
  {
    goto LABEL_47;
  }

  v65 = v76;
  v27 = v28;
LABEL_43:
  if (CFGetTypeID(v53) == v65)
  {
    v77 = CFStringGetTypeID();
    if (v27)
    {
      if (CFGetTypeID(v27) == v77 && !CFEqual(v53, v27))
      {
        v291 = 0;
        v153 = __log_SCNetworkConfiguration();
        v154 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v153, v154))
        {
          v155 = _os_log_pack_size();
          v161 = &v280 - ((MEMORY[0x1EEE9AC00](v155, v156, v157, v158, v159, v160) + 15) & 0xFFFFFFFFFFFFFFF0);
          v162 = __error();
          v163 = _os_log_pack_fill(v161, v155, *v162, &dword_1AD2AD000, "Configuration validity check: model names do not match!\n  %@\n  %@");
          *v163 = 138412546;
          *(v163 + 4) = a1;
          *(v163 + 12) = 2112;
          *(v163 + 14) = a2;
          __SC_log_send(5, v153, v154, v161);
        }

        goto LABEL_76;
      }
    }
  }

LABEL_47:
  v78 = __SCNetworkInterfaceCopyStoredWithPreferences(a2);
  if (v78)
  {
    v79 = v78;
    MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v78);
    CFRelease(v79);
    v81 = CFDictionaryGetTypeID();
    if (!MappingUsingBSDName || CFGetTypeID(MappingUsingBSDName) != v81)
    {
      v291 = 0;
      v92 = __log_SCNetworkConfiguration();
      v93 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v92, v93))
      {
        v94 = _os_log_pack_size();
        v100 = &v280 - ((MEMORY[0x1EEE9AC00](v94, v95, v96, v97, v98, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
        v101 = __error();
        v102 = _os_log_pack_fill(v100, v94, *v101, &dword_1AD2AD000, "Configuration validity check: no BSD name to network interface mapping!\n  %@");
        *v102 = 138412290;
        *(v102 + 4) = a2;
        __SC_log_send(5, v92, v93, v100);
      }

      v103 = 0;
      v84 = 0;
      v289 = 0;
      v90 = 0;
      v88 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      if (!MappingUsingBSDName)
      {
        goto LABEL_59;
      }

      goto LABEL_141;
    }

    v82 = __SCNetworkServiceCopyAllInterfaces(a1);
    if (v82)
    {
      v83 = v82;
      logInterfaces("interfaces", v82, 1);
      v84 = __SCNetworkInterfaceCreateMappingUsingBSDName(v83);
      CFRelease(v83);
      if (v84)
      {
        context = 7;
        v299 = "mappingServiceBSDNameToInterface";
        CFDictionaryApplyFunction(v84, logMapping_one, &context);
        v85 = v290;
        if (v290)
        {
          v86 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v88 = CFArrayCreateMutable(0, 0, v86);
          v89 = v86;
          v85 = v290;
          v90 = CFArrayCreateMutable(0, 0, v89);
          v91 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v91 = 0;
          v90 = 0;
          v88 = 0;
          Mutable = 0;
        }

        *&v294 = &v291;
        *(&v294 + 1) = Mutable;
        v287 = Mutable;
        *&v295 = v88;
        *(&v295 + 1) = v90;
        *&v293 = 0;
        *(&v293 + 1) = MappingUsingBSDName;
        v292 = 0uLL;
        LOBYTE(v297) = v85;
        *&v296 = v91;
        *(&v296 + 1) = a1;
        v289 = v91;
        CFDictionaryApplyFunction(v84, _SCNetworkConfigurationValidateInterface, &v292);
        v285 = v88;
        v286 = v90;
        if (!v291)
        {
          v228 = __log_SCNetworkConfiguration();
          v229 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v228, v229))
          {
            v230 = _os_log_pack_size();
            v236 = &v280 - ((MEMORY[0x1EEE9AC00](v230, v231, v232, v233, v234, v235) + 15) & 0xFFFFFFFFFFFFFFF0);
            v237 = __error();
            v238 = v230;
            v85 = v290;
            v239 = _os_log_pack_fill(v236, v238, *v237, &dword_1AD2AD000, "Configuration validity check: mismatched interface names between NetworkInterfaces.plist and preferences.plist!\n  %@\n  %@");
            *v239 = 138412546;
            *(v239 + 4) = a1;
            *(v239 + 12) = 2112;
            *(v239 + 14) = a2;
            v240 = v236;
            v90 = v286;
            __SC_log_send(5, v228, v229, v240);
            v88 = v285;
          }

          if (!v85)
          {
            v106 = 0;
            v105 = 0;
            v103 = 0;
LABEL_140:
            v104 = v287;
LABEL_141:
            CFRelease(MappingUsingBSDName);
            if (v84)
            {
              CFRelease(v84);
            }

LABEL_59:
            if (v106)
            {
              CFRelease(v106);
            }

            if (v105)
            {
              CFRelease(v105);
            }

            if (v103)
            {
              CFRelease(v103);
            }

            if (v104)
            {
              CFRelease(v104);
            }

            if (v88)
            {
              CFRelease(v88);
            }

            v107 = v289;
            if (v90)
            {
              CFRelease(v90);
            }

            if (v107)
            {
              CFRelease(v107);
            }

            goto LABEL_76;
          }

          v241 = *(&v294 + 1);
          v242 = v295;
          Count = CFArrayGetCount(*(&v294 + 1));
          v244 = CFArrayGetCount(v242);
          if (!(Count | v244))
          {
            v106 = 0;
            v105 = 0;
            v103 = 0;
            v291 = 0;
            v90 = v286;
            v104 = v287;
            goto LABEL_141;
          }

          v257 = v244;
          __SCNetworkConfigurationBackup(a1, @"pre-repair", a1);
          __SCNetworkConfigurationBackup(a2, @"pre-repair", a1);
          __SCNetworkConfigurationReport(7, "pre-repair", a1, a2);
          if (v241)
          {
            logInterfaces("Interfaces to be removed", v241, 0);
          }

          v258 = a2;
          v90 = v286;
          if (v242)
          {
            logInterfaces("Interfaces to be replaced", v242, 0);
          }

          v259 = SCNetworkServiceCopyAll(a1);
          v304.length = CFArrayGetCount(v259);
          v304.location = 0;
          CFArrayApplyFunction(v259, v304, create_bsd_name_service_protocol_mapping, &v292);
          if (v296)
          {
            context = 7;
            v299 = "BSD name / Service Protocol mapping";
            CFDictionaryApplyFunction(v296, logMapping_one, &context);
          }

          v305.length = CFArrayGetCount(v259);
          v305.location = 0;
          CFArrayApplyFunction(v259, v305, remove_service, &v292);
          v306.location = 0;
          v306.length = v257;
          CFArrayApplyFunction(v242, v306, add_service, &v292);
          CFRelease(v259);
          a2 = v258;
          __SCNetworkConfigurationReport(7, "post-repair", a1, v258);
          v291 = 1;
          if (!SCPreferencesCommitChanges(a1))
          {
            v260 = __log_SCNetworkConfiguration();
            v261 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v260, v261))
            {
              v262 = _os_log_pack_size();
              v268 = &v280 - ((MEMORY[0x1EEE9AC00](v262, v263, v264, v265, v266, v267) + 15) & 0xFFFFFFFFFFFFFFF0);
              v269 = __error();
              *_os_log_pack_fill(v268, v262, *v269, &dword_1AD2AD000, "SCPreferencesCommitChanges() failed") = 0;
              v270 = v268;
              v90 = v286;
              __SC_log_send(5, v260, v261, v270);
              v88 = v285;
            }
          }
        }

        v284 = a2;
        v106 = SCNetworkServiceCopyAll(a1);
        v164 = CFArrayGetTypeID();
        if (!v106 || CFGetTypeID(v106) != v164)
        {
          v216 = v26;
          v291 = 0;
          v217 = __log_SCNetworkConfiguration();
          v218 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v217, v218))
          {
            v219 = _os_log_pack_size();
            v225 = &v280 - ((MEMORY[0x1EEE9AC00](v219, v220, v221, v222, v223, v224) + 15) & 0xFFFFFFFFFFFFFFF0);
            v226 = __error();
            v227 = _os_log_pack_fill(v225, v219, *v226, &dword_1AD2AD000, "Configuration validity check: no services!\n  %@");
            *v227 = 138412290;
            *(v227 + 4) = a1;
            __SC_log_send(5, v217, v218, v225);
            v90 = v286;
          }

          v105 = 0;
          v103 = 0;
          v26 = v216;
          v104 = v287;
          v88 = v285;
          goto LABEL_141;
        }

        v105 = SCNetworkSetCopyAll(a1);
        v165 = CFArrayGetTypeID();
        if (v105 && CFGetTypeID(v105) == v165)
        {
          v103 = 0;
          if (CFArrayGetCount(v105) >= 1 && v291)
          {
            v167 = 0;
            *&v166 = 138412546;
            v282 = v166;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v105, v167);
              v169 = SCNetworkSetCopyServices(ValueAtIndex);
              if (v169)
              {
                v103 = v169;
                v290 = v167;
                v170 = CFArrayGetCount(v169);
                v288 = ValueAtIndex;
                if (v170 >= 1)
                {
                  v171 = 0;
                  while (1)
                  {
                    v172 = CFArrayGetValueAtIndex(v103, v171);
                    v301.length = CFArrayGetCount(v106);
                    v301.location = 0;
                    if (!CFArrayContainsValue(v106, v301, v172))
                    {
                      break;
                    }

                    if (++v171 >= CFArrayGetCount(v103))
                    {
                      goto LABEL_115;
                    }
                  }

                  v291 = 0;
                  v187 = __log_SCNetworkConfiguration();
                  v188 = _SC_syslog_os_log_mapping(5);
                  if (__SC_log_enabled(5, v187, v188))
                  {
                    v189 = _os_log_pack_size();
                    v283 = &v280;
                    v195 = MEMORY[0x1EEE9AC00](v189, v190, v191, v192, v193, v194);
                    v281 = v187;
                    v196 = &v280 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v197 = __error();
                    v198 = v189;
                    ValueAtIndex = v288;
                    *_os_log_pack_fill(v196, v198, *v197, &dword_1AD2AD000, "All network services in the network set are not present in SCNetworkService array") = 0;
                    __SC_log_send(5, v281, v188, v196);
                  }
                }

LABEL_115:
                if (!v291)
                {
                  break;
                }

                ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
                if (ServiceOrder)
                {
                  v200 = ServiceOrder;
                  if (CFArrayGetCount(ServiceOrder) >= 1)
                  {
                    v201 = 0;
                    while (1)
                    {
                      v202 = CFArrayGetValueAtIndex(v200, v201);
                      v302.length = CFArrayGetCount(v200);
                      v302.location = 0;
                      if (!CFArrayContainsValue(v200, v302, v202))
                      {
                        v303.length = CFArrayGetCount(v106);
                        v303.location = 0;
                        if (!CFArrayContainsValue(v106, v303, v202))
                        {
                          break;
                        }
                      }

                      if (++v201 >= CFArrayGetCount(v200))
                      {
                        goto LABEL_122;
                      }
                    }

                    v203 = __log_SCNetworkConfiguration();
                    v204 = _SC_syslog_os_log_mapping(5);
                    if (__SC_log_enabled(5, v203, v204))
                    {
                      v205 = _os_log_pack_size();
                      LODWORD(v281) = v204;
                      v206 = v205;
                      v283 = &v280;
                      v212 = MEMORY[0x1EEE9AC00](v205, v207, v208, v209, v210, v211);
                      v280 = v203;
                      v213 = &v280 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
                      v214 = __error();
                      v215 = _os_log_pack_fill(v213, v206, *v214, &dword_1AD2AD000, "Service: %@ is not present in the service order for set %@");
                      *v215 = v282;
                      *(v215 + 4) = v202;
                      *(v215 + 12) = 2112;
                      *(v215 + 14) = v288;
                      __SC_log_send(5, v280, v281, v213);
                    }
                  }
                }

LABEL_122:
                CFRelease(v103);
                v167 = v290;
              }

              else
              {
                v173 = __log_SCNetworkConfiguration();
                v174 = _SC_syslog_os_log_mapping(5);
                if (__SC_log_enabled(5, v173, v174))
                {
                  v175 = _os_log_pack_size();
                  v290 = v167;
                  v176 = v175;
                  v283 = &v280;
                  v182 = MEMORY[0x1EEE9AC00](v175, v177, v178, v179, v180, v181);
                  v288 = ValueAtIndex;
                  v183 = &v280 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v184 = __error();
                  v185 = v176;
                  v167 = v290;
                  v186 = _os_log_pack_fill(v183, v185, *v184, &dword_1AD2AD000, "Configuration validity check: set w/no services!\n  %@\n  %@");
                  *v186 = v282;
                  *(v186 + 4) = a1;
                  *(v186 + 12) = 2112;
                  *(v186 + 14) = v288;
                  __SC_log_send(5, v173, v174, v183);
                }
              }

              ++v167;
              v103 = 0;
            }

            while (v167 < CFArrayGetCount(v105) && v291);
          }

          v271 = v26;
          v272 = SCBridgeInterfaceCopyAll(a1);
          if (v272)
          {
            v273 = v272;
            v307.length = CFArrayGetCount(v272);
            v307.location = 0;
            CFArrayApplyFunction(v273, v307, validate_bridge, v284);
            CFRelease(v273);
          }

          v274 = SCVLANInterfaceCopyAll(a1);
          if (v274)
          {
            v275 = v274;
            v276 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004045F868BCuLL);
            v277 = v284;
            *v276 = a1;
            v276[1] = v277;
            v278 = *MEMORY[0x1E695E738];
            v276[2] = *MEMORY[0x1E695E738];
            v308.length = CFArrayGetCount(v275);
            v308.location = 0;
            CFArrayApplyFunction(v275, v308, validate_vlan, v276);
            v279 = v276[2];
            if (v279 && v279 != v278)
            {
              CFRelease(v279);
            }

            free(v276);
            CFRelease(v275);
          }

          v26 = v271;
          v90 = v286;
          v104 = v287;
          v88 = v285;
          goto LABEL_141;
        }

        LODWORD(v288) = v26;
        v291 = 0;
        v245 = __log_SCNetworkConfiguration();
        v246 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v245, v246))
        {
          v247 = _os_log_pack_size();
          v253 = &v280 - ((MEMORY[0x1EEE9AC00](v247, v248, v249, v250, v251, v252) + 15) & 0xFFFFFFFFFFFFFFF0);
          v254 = __error();
          v255 = _os_log_pack_fill(v253, v247, *v254, &dword_1AD2AD000, "Configuration validity check: no sets!\n  %@");
          *v255 = 138412290;
          *(v255 + 4) = a1;
          v256 = v253;
          v90 = v286;
          __SC_log_send(5, v245, v246, v256);
          v88 = v285;
        }

        v103 = 0;
        v26 = v288;
        goto LABEL_140;
      }

      v134 = v26;
      v291 = 0;
      v135 = __log_SCNetworkConfiguration();
      v136 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v135, v136))
      {
        v146 = _os_log_pack_size();
        v143 = &v280 - ((MEMORY[0x1EEE9AC00](v146, v147, v148, v149, v150, v151) + 15) & 0xFFFFFFFFFFFFFFF0);
        v152 = *__error();
        v145 = _os_log_pack_fill(v143, v146, v152, &dword_1AD2AD000, "Configuration validity check: no BSD name to service interface mapping!\n  %@");
        goto LABEL_92;
      }
    }

    else
    {
      v134 = v26;
      v291 = 0;
      v135 = __log_SCNetworkConfiguration();
      v136 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v135, v136))
      {
        v137 = _os_log_pack_size();
        v143 = &v280 - ((MEMORY[0x1EEE9AC00](v137, v138, v139, v140, v141, v142) + 15) & 0xFFFFFFFFFFFFFFF0);
        v144 = *__error();
        v145 = _os_log_pack_fill(v143, v137, v144, &dword_1AD2AD000, "Configuration validity check: no service interfaces!\n  %@");
LABEL_92:
        *v145 = 138412290;
        *(v145 + 4) = a1;
        __SC_log_send(5, v135, v136, v143);
      }
    }

    v106 = 0;
    v105 = 0;
    v104 = 0;
    v88 = 0;
    v289 = 0;
    v84 = 0;
    v103 = 0;
    v26 = v134;
    v90 = 0;
    goto LABEL_141;
  }

  v108 = __log_SCNetworkConfiguration();
  v109 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v108, v109))
  {
    v110 = _os_log_pack_size();
    v116 = &v280 - ((MEMORY[0x1EEE9AC00](v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
    v117 = __error();
    v118 = _os_log_pack_fill(v116, v110, *v117, &dword_1AD2AD000, "Configuration validity check: no network interfaces!\n  %@");
    *v118 = 138412290;
    *(v118 + 4) = a2;
    __SC_log_send(5, v108, v109, v116);
  }

  v291 = 0;
LABEL_76:
  if (!v26)
  {
    _SCNetworkConfigurationSetBypassSystemInterfaces(a1, 0);
  }

  v119 = __log_SCNetworkConfiguration();
  v120 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v119, v120))
  {
    v121 = _os_log_pack_size();
    v127 = &v280 - ((MEMORY[0x1EEE9AC00](v121, v122, v123, v124, v125, v126) + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = __error();
    v129 = _os_log_pack_fill(v127, v121, *v128, &dword_1AD2AD000, "  configuration is %svalid", v280);
    if (v291)
    {
      v130 = "";
    }

    else
    {
      v130 = "not ";
    }

    *v129 = 136315138;
    *(v129 + 4) = v130;
    __SC_log_send(6, v119, v120, v127);
  }

  return v291;
}

void logInterfaces(const char *a1, const __CFArray *a2, int a3)
{
  v54 = a1;
  v59 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v4, v5))
    {
      v6 = _os_log_pack_size();
      v12 = &v54 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "%s = ", v54);
      *v14 = 136315138;
      *(v14 + 4) = v54;
      __SC_log_send(7, v4, v5, v12);
    }

    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v18 = Count;
    v19 = 0;
    v55 = @"UserDefinedName";
    *&v17 = 138412546;
    v56 = v17;
    v57 = Mutable;
    v58 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
      TypeID = SCNetworkInterfaceGetTypeID();
      if (!ValueAtIndex)
      {
        CFDictionaryGetTypeID();
LABEL_19:
        v28 = 0;
        v23 = @"?";
        if (!Mutable)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (CFGetTypeID(ValueAtIndex) == TypeID)
      {
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        if (BSDName)
        {
          v23 = BSDName;
          UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(ValueAtIndex);
LABEL_17:
          v28 = UserDefinedName;
          if (!Mutable)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v25 = CFDictionaryGetTypeID();
        if (CFGetTypeID(ValueAtIndex) != v25)
        {
          goto LABEL_19;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        if (Value)
        {
          v23 = Value;
          v27 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo");
          if (v27)
          {
            UserDefinedName = CFDictionaryGetValue(v27, v55);
            goto LABEL_17;
          }

          v28 = 0;
          if (!Mutable)
          {
LABEL_22:
            v29 = __log_SCNetworkConfiguration();
            v30 = _SC_syslog_os_log_mapping(7);
            if (__SC_log_enabled(7, v29, v30))
            {
              v31 = _os_log_pack_size();
              v32 = a2;
              v38 = &v54 - ((MEMORY[0x1EEE9AC00](v31, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
              v39 = __error();
              v40 = _os_log_pack_fill(v38, v31, *v39, &dword_1AD2AD000, "  %@ (%@)");
              *v40 = v56;
              if (v28)
              {
                v41 = v28;
              }

              else
              {
                v41 = @"?";
              }

              *(v40 + 4) = v23;
              *(v40 + 12) = 2112;
              *(v40 + 14) = v41;
              __SC_log_send(7, v29, v30, v38);
              a2 = v32;
              Mutable = v57;
              v18 = v58;
            }

            goto LABEL_27;
          }

LABEL_20:
          CFArrayAppendValue(Mutable, v23);
        }
      }

LABEL_27:
      ++v19;
    }

    while (v18 != v19);
  }

  if (Mutable)
  {
    v42 = CFStringCreateByCombiningStrings(0, Mutable, @", ");
    v43 = __log_SCNetworkConfiguration();
    v44 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v43, v44))
    {
      v45 = _os_log_pack_size();
      v51 = &v54 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = __error();
      v53 = _os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "%s = %@");
      *v53 = 136315394;
      *(v53 + 4) = v54;
      *(v53 + 12) = 2112;
      *(v53 + 14) = v42;
      __SC_log_send(7, v43, v44, v51);
    }

    CFRelease(v42);
    CFRelease(Mutable);
  }
}

void _SCNetworkConfigurationValidateInterface(void *key, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 80);
  if (**(a3 + 32) | v3)
  {
    v8 = *a3;
    v7 = *(a3 + 8);
    v9 = *(a3 + 40);
    v60 = *(a3 + 48);
    v10 = *(a3 + 56);
    v11 = *(a3 + 16);
    Value = CFDictionaryGetValue(*(a3 + 24), key);
    if (Value)
    {
      v13 = Value;
      UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(Value);
      v15 = __SCNetworkInterfaceGetUserDefinedName(a2);
      if (!__SCNetworkConfigurationInterfaceNameIsEquiv(UserDefinedName, v15))
      {
        v16 = __log_SCNetworkConfiguration();
        v17 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v16, v17))
        {
          v18 = _os_log_pack_size();
          v58 = &v58;
          v24 = MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23);
          v59 = v9;
          v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = __error();
          v27 = _os_log_pack_fill(v25, v18, *v26, &dword_1AD2AD000, "Configuration validity check: interface user defined name %@ doesn't match service/interface user defined name %@");
          *v27 = 138412546;
          *(v27 + 4) = UserDefinedName;
          *(v27 + 12) = 2112;
          *(v27 + 14) = v15;
          v28 = v25;
          v9 = v59;
          __SC_log_send(5, v16, v17, v28);
        }

        **(a3 + 32) = 0;
        TypeID = CFArrayGetTypeID();
        if (v10 && CFGetTypeID(v10) == TypeID && __SCNetworkInterfaceMatchesName(UserDefinedName, v15))
        {
          v30 = __log_SCNetworkConfiguration();
          v31 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v30, v31))
          {
            v32 = _os_log_pack_size();
            v59 = &v58;
            v38 = v9;
            v39 = &v58 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = __error();
            v41 = _os_log_pack_fill(v39, v32, *v40, &dword_1AD2AD000, "Configuration validity check: serviceInterfaceUserDefinedName: %@ is the localized key for interface name %@");
            *v41 = 138412546;
            *(v41 + 4) = v15;
            *(v41 + 12) = 2112;
            *(v41 + 14) = UserDefinedName;
            v42 = v39;
            v9 = v38;
            __SC_log_send(5, v30, v31, v42);
          }

          CFArrayAppendValue(v10, a2);
        }

        v43 = CFArrayGetTypeID();
        v44 = v60;
        if (v60 && CFGetTypeID(v60) == v43)
        {
          CFArrayAppendValue(v44, v13);
        }

        v45 = CFArrayGetTypeID();
        if (v9)
        {
          if (CFGetTypeID(v9) == v45)
          {
            CFArrayAppendValue(v9, a2);
          }
        }
      }
    }

    else if (v8 && !CFDictionaryContainsKey(v8, key) && v7 && !CFDictionaryContainsKey(v7, key) && v11 && !CFDictionaryContainsKey(v11, key))
    {
      v46 = v9;
      v47 = __log_SCNetworkConfiguration();
      v48 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v47, v48))
      {
        v49 = _os_log_pack_size();
        v55 = &v58 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
        v56 = __error();
        v57 = _os_log_pack_fill(v55, v49, *v56, &dword_1AD2AD000, "Configuration validity check: no interface with BSD name %@ present for service");
        *v57 = 138412290;
        *(v57 + 4) = key;
        __SC_log_send(5, v47, v48, v55);
      }

      if (v3)
      {
        CFArrayAppendValue(v46, a2);
      }

      **(a3 + 32) = 0;
    }
  }
}

void validate_bridge(const __SCNetworkInterface *a1, const __SCPreferences *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(a1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(MemberInterfaces) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MemberInterfaces, v6);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        v9 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, a2, BSDName);
        if (v9)
        {
          v10 = v9;
          CFArrayAppendValue(Mutable, v9);
          CFRelease(v10);
        }
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(MemberInterfaces));
  }

  if (CFArrayGetCount(Mutable))
  {
    SCBridgeInterfaceSetMemberInterfaces(a1, Mutable);
  }

  else
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = v22 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "Removing bridge w/no member interfaces: %@");
      *v21 = 138412290;
      *(v21 + 4) = a1;
      __SC_log_send(5, v11, v12, v19);
    }

    SCBridgeInterfaceRemove(a1);
  }

  CFRelease(Mutable);
}

void validate_vlan(const __SCNetworkInterface *a1, const __SCPreferences **a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(a1);
  BSDName = SCNetworkInterfaceGetBSDName(PhysicalInterface);
  if (!BSDName)
  {
    goto LABEL_16;
  }

  v6 = BSDName;
  v7 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, a2[1], BSDName);
  if (v7)
  {

    CFRelease(v7);
    return;
  }

  v8 = a2[2];
  if (v8 == *MEMORY[0x1E695E738])
  {
    v8 = SCBridgeInterfaceCopyAll(*a2);
    a2[2] = v8;
    if (!v8)
    {
LABEL_16:
      v14 = __log_SCNetworkConfiguration();
      v15 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v14, v15))
      {
        v16 = _os_log_pack_size();
        v22 = v25 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "Removing VLAN w/no physical interface: %@");
        *v24 = 138412290;
        *(v24 + 4) = a1;
        __SC_log_send(5, v14, v15, v22);
      }

      SCVLANInterfaceRemove(a1);
      return;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }

  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    goto LABEL_16;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    v13 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (v13 == v6 || v13 && CFEqual(v6, v13))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_16;
    }
  }
}

uint64_t _SCNetworkConfigurationCheckValidity(uint64_t a1, const __CFDictionary *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a1);
    v4 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v3);
    v5 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v3);
    if (CFURLGetFileSystemRepresentation(v4, 1u, v43, 1024))
    {
      if (CFURLGetFileSystemRepresentation(v5, 1u, v44, 1024))
      {
        v6 = CFStringCreateWithFormat(0, 0, @"%s", v43);
        v7 = CFStringCreateWithFormat(0, 0, @"%s", v44);
        v8 = __SCPreferencesCreateForMigration(@"System Migration", v6);
        v9 = __SCPreferencesCreateForMigration(@"System Migration", v7);
        v10 = v9;
        v11 = 0;
        if (v8 && v9)
        {
          v11 = _SCNetworkConfigurationCheckValidityWithPreferences(v8, v9, a2);
        }

        goto LABEL_16;
      }

      v23 = __log_SCNetworkConfiguration();
      v24 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v23, v24))
      {
        v34 = _os_log_pack_size();
        v31 = &v43[-((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v40 = __error();
        v41 = _os_log_pack_fill(v31, v34, *v40, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
        *v41 = 138412290;
        *(v41 + 4) = v5;
        goto LABEL_14;
      }
    }

    else
    {
      v23 = __log_SCNetworkConfiguration();
      v24 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v23, v24))
      {
        v25 = _os_log_pack_size();
        v31 = &v43[-((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v32 = __error();
        v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
        *v33 = 138412290;
        *(v33 + 4) = v4;
LABEL_14:
        __SC_log_send(5, v23, v24, v31);
      }
    }

    v11 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v7 = 0;
LABEL_16:
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    return v11;
  }

  v12 = __log_SCNetworkConfiguration();
  v13 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v12, v13))
  {
    v14 = _os_log_pack_size();
    v20 = &v43[-((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "Migration files not found in directory: %@");
    *v22 = 138412290;
    *(v22 + 4) = @"NULL";
    __SC_log_send(5, v12, v13, v20);
  }

  return 0;
}

uint64_t __SCPreferencesCreateForMigration(const __CFString *a1, const __CFString *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"allow-model-conflict";
  values = *MEMORY[0x1E695E4D0];
  v4 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = SCPreferencesCreateWithOptions(0, a1, a2, 0, v4);
  CFRelease(v4);
  return v5;
}

uint64_t _SCNetworkMigrationAreConfigurationsIdentical(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6);
  v8 = 0;
  v203 = *MEMORY[0x1E69E9840];
  if (!v6)
  {
    return v8;
  }

  v9 = v7;
  if (!v7)
  {
    return v8;
  }

  v10 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, v6);
  v11 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v10);
  if (!CFURLResourceIsReachable(v11, 0))
  {
    v23 = __log_SCNetworkConfiguration();
    v24 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v23, v24))
    {
      v25 = _os_log_pack_size();
      v31 = &v179 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "No preferences.plist file: %@");
      *v33 = 138412290;
      *(v33 + 4) = v11;
      __SC_log_send(5, v23, v24, v31);
    }

    v190 = 0;
    v191 = 0;
    v189 = 0;
    v194 = 0;
    v14 = 0;
    v34 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v12 = 0;
    goto LABEL_24;
  }

  v12 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v10);
  if (CFURLResourceIsReachable(v12, 0))
  {
    if (CFURLGetFileSystemRepresentation(v11, 1u, v198, 1024))
    {
      if (CFURLGetFileSystemRepresentation(v12, 1u, v200, 1024))
      {
        v13 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, v9);
        v14 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v13);
        if (!CFURLResourceIsReachable(v14, 0))
        {
          v92 = __log_SCNetworkConfiguration();
          v93 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v92, v93))
          {
            v94 = v13;
            v95 = v12;
            v96 = _os_log_pack_size();
            v196 = &v179;
            v102 = &v179 - ((MEMORY[0x1EEE9AC00](v96, v97, v98, v99, v100, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
            v103 = __error();
            v104 = v96;
            v12 = v95;
            v13 = v94;
            *_os_log_pack_fill(v102, v104, *v103, &dword_1AD2AD000, "No expected preferences.plist file") = 0;
            __SC_log_send(5, v92, v93, v102);
          }

          v190 = 0;
          v191 = 0;
          v189 = 0;
          v194 = 0;
          v34 = 0;
          goto LABEL_72;
        }

        v15 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v13);
        v186 = v15;
        if (CFURLResourceIsReachable(v15, 0))
        {
          if (CFURLGetFileSystemRepresentation(v14, 1u, v197, 1024))
          {
            if (CFURLGetFileSystemRepresentation(v15, 1u, v199, 1024))
            {
              v16 = CFStringCreateWithFormat(0, 0, @"%s", v198);
              v194 = CFStringCreateWithFormat(0, 0, @"%s", v200);
              v17 = CFStringCreateWithFormat(0, 0, @"%s", v197);
              v18 = CFStringCreateWithFormat(0, 0, @"%s", v199);
              v190 = v16;
              v195 = __SCPreferencesCreateForMigration(@"System Migration", v16);
              v191 = v17;
              v19 = __SCPreferencesCreateForMigration(@"System Migration", v17);
              v20 = __SCPreferencesCreateForMigration(@"System Migration", v194);
              v21 = v195;
              v189 = v18;
              v22 = __SCPreferencesCreateForMigration(@"System Migration", v18);
LABEL_79:
              v34 = v186;
              goto LABEL_25;
            }

            v128 = __log_SCNetworkConfiguration();
            v129 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v128, v129))
            {
              v184 = v13;
              v130 = v12;
              v131 = _os_log_pack_size();
              v196 = &v179;
              v137 = MEMORY[0x1EEE9AC00](v131, v132, v133, v134, v135, v136);
              v187 = v14;
              v138 = &v179 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
              v139 = __error();
              v140 = v131;
              v12 = v130;
              v13 = v184;
              v141 = _os_log_pack_fill(v138, v140, *v139, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
              *v141 = 138412290;
              v142 = v186;
              v14 = v187;
              *(v141 + 4) = v186;
              v143 = v128;
              v34 = v142;
              __SC_log_send(5, v143, v129, v138);
              v190 = 0;
              v191 = 0;
              v189 = 0;
              v194 = 0;
LABEL_72:
              v22 = 0;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              goto LABEL_25;
            }

LABEL_78:
            v190 = 0;
            v191 = 0;
            v189 = 0;
            v194 = 0;
            v22 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            goto LABEL_79;
          }

          v105 = __log_SCNetworkConfiguration();
          v106 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v105, v106))
          {
            goto LABEL_78;
          }

          v184 = v13;
          v118 = v12;
          v119 = _os_log_pack_size();
          v196 = &v179;
          v115 = &v179 - ((MEMORY[0x1EEE9AC00](v119, v120, v121, v122, v123, v124) + 15) & 0xFFFFFFFFFFFFFFF0);
          v125 = __error();
          v126 = v119;
          v12 = v118;
          v13 = v184;
          v127 = _os_log_pack_fill(v115, v126, *v125, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
          *v127 = 138412290;
          *(v127 + 4) = v14;
        }

        else
        {
          v105 = __log_SCNetworkConfiguration();
          v106 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v105, v106))
          {
            goto LABEL_78;
          }

          v107 = v13;
          v108 = v12;
          v109 = _os_log_pack_size();
          v196 = &v179;
          v115 = &v179 - ((MEMORY[0x1EEE9AC00](v109, v110, v111, v112, v113, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
          v116 = __error();
          v117 = v109;
          v12 = v108;
          v13 = v107;
          *_os_log_pack_fill(v115, v117, *v116, &dword_1AD2AD000, "No expected NetworkInterfaces.plist file") = 0;
        }

        __SC_log_send(5, v105, v106, v115);
        goto LABEL_78;
      }

      v35 = __log_SCNetworkConfiguration();
      v36 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v35, v36))
      {
        goto LABEL_23;
      }

      v37 = v12;
      v38 = _os_log_pack_size();
      v44 = &v179 - ((MEMORY[0x1EEE9AC00](v38, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = "Cannot get file system representation for url: %@";
      goto LABEL_21;
    }

    v35 = __log_SCNetworkConfiguration();
    v36 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v35, v36))
    {
      v47 = v12;
      v48 = _os_log_pack_size();
      v44 = &v179 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = __error();
      v55 = v48;
      v12 = v47;
      v56 = _os_log_pack_fill(v44, v55, *v54, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
      *v56 = 138412290;
      *(v56 + 4) = v11;
LABEL_22:
      __SC_log_send(5, v35, v36, v44);
    }
  }

  else
  {
    v35 = __log_SCNetworkConfiguration();
    v36 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v35, v36))
    {
      v37 = v12;
      v38 = _os_log_pack_size();
      v44 = &v179 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = "No NetworkInterfaces.plist file: %@";
LABEL_21:
      v62 = v38;
      v12 = v37;
      v63 = _os_log_pack_fill(v44, v62, v45, &dword_1AD2AD000, v46);
      *v63 = 138412290;
      *(v63 + 4) = v37;
      goto LABEL_22;
    }
  }

LABEL_23:
  v190 = 0;
  v191 = 0;
  v189 = 0;
  v194 = 0;
  v14 = 0;
  v34 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_24:
  v13 = 0;
LABEL_25:
  v192 = v22;
  v193 = v20;
  v195 = v21;
  v196 = v19;
  if (!v21 || !v19 || !v20 || !v22)
  {
    v70 = __log_SCNetworkConfiguration();
    v71 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v70, v71))
    {
      v72 = v34;
      v73 = v13;
      v74 = v12;
      v75 = v11;
      v76 = _os_log_pack_size();
      v187 = v14;
      v188 = &v179;
      v82 = v10;
      v83 = &v179 - ((MEMORY[0x1EEE9AC00](v76, v77, v78, v79, v80, v81) + 15) & 0xFFFFFFFFFFFFFFF0);
      v84 = __error();
      v85 = v76;
      v11 = v75;
      v12 = v74;
      v13 = v73;
      v34 = v72;
      *_os_log_pack_fill(v83, v85, *v84, &dword_1AD2AD000, "One of the preferences is NULL") = 0;
      v86 = v83;
      v10 = v82;
      __SC_log_send(5, v70, v71, v86);
      v14 = v187;
    }

    v8 = 0;
    goto LABEL_40;
  }

  v188 = v11;
  Value = SCPreferencesGetValue(v21, @"NetworkServices");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFDictionaryGetCount(Value), v67 = SCPreferencesGetValue(v196, @"NetworkServices"), v68 = CFDictionaryGetTypeID(), !v67) || CFGetTypeID(v67) != v68 || Count != CFDictionaryGetCount(v67))
  {
    v8 = 0;
    v11 = v188;
    goto LABEL_40;
  }

  v185 = v67;
  v186 = v34;
  v184 = v13;
  v187 = v14;
  if (Count < 0x41)
  {
    v69 = v201;
  }

  else
  {
    v69 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
  }

  v182 = v10;
  memset(v202, 0, sizeof(v202));
  memset(v201, 0, sizeof(v201));
  v144 = v69;
  CFDictionaryGetKeysAndValues(Value, 0, v69);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count)
  {
    v146 = Mutable;
    v147 = 0;
    v148 = v144;
    do
    {
      v149 = v148[v147];
      v150 = CFDictionaryGetTypeID();
      if (v149 && CFGetTypeID(v149) == v150)
      {
        CFArrayAppendValue(v146, v149);
      }

      ++v147;
      v148 = v144;
    }

    while (Count != v147);
    v183 = CFArrayGetCount(v146);
    if (Count > 0x40)
    {
      v151 = MEMORY[0x1B26F3AA0](0, Count, 2987671282, 0);
      goto LABEL_93;
    }
  }

  else
  {
    v146 = Mutable;
    v183 = CFArrayGetCount(Mutable);
  }

  v151 = v202;
LABEL_93:
  v152 = v151;
  CFDictionaryGetKeysAndValues(v185, 0, v151);
  v185 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count)
  {
    v153 = v152;
    do
    {
      v154 = *v153;
      v155 = CFDictionaryGetTypeID();
      if (v154 && CFGetTypeID(v154) == v155)
      {
        CFArrayAppendValue(v185, v154);
      }

      ++v153;
      --Count;
    }

    while (Count);
  }

  v156 = CFArrayGetCount(v185);
  v157 = 1;
  if (v183 == v156)
  {
    v11 = v188;
    if (v156 >= 1)
    {
      v158 = 0;
      while (1)
      {
        v159 = v158;
        ValueAtIndex = CFArrayGetValueAtIndex(v185, v158);
        v161 = CFArrayGetCount(v146);
        v157 = v161 < 1;
        if (v161 < 1)
        {
          break;
        }

        v162 = v161;
        v163 = 0;
        while (1)
        {
          v164 = CFArrayGetValueAtIndex(v146, v163);
          if (CFEqual(ValueAtIndex, v164))
          {
            break;
          }

          if (v162 == ++v163)
          {
            v157 = 1;
            goto LABEL_109;
          }
        }

        v158 = v159 + 1;
        v11 = v188;
        if ((v159 + 1) == v183)
        {
          goto LABEL_110;
        }
      }

      v157 = 1;
    }
  }

  else
  {
LABEL_109:
    v11 = v188;
  }

LABEL_110:
  if (v144 != v201)
  {
    CFAllocatorDeallocate(0, v144);
  }

  v87 = v193;
  if (v152 != v202)
  {
    CFAllocatorDeallocate(0, v152);
  }

  if (v157)
  {
    v8 = 0;
    v10 = v182;
    v34 = v186;
    v14 = v187;
    v13 = v184;
    if (!v182)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v165 = SCPreferencesGetValue(v87, @"Interfaces");
  v166 = CFArrayGetTypeID();
  if (!v165 || CFGetTypeID(v165) != v166)
  {
    v8 = 0;
    v10 = v182;
    v34 = v186;
    v14 = v187;
    v13 = v184;
    goto LABEL_40;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v165);
  v168 = CFArrayGetCount(MutableCopy);
  v169 = SCPreferencesGetValue(v192, @"Interfaces");
  v170 = CFArrayGetTypeID();
  v10 = v182;
  if (!v169)
  {
    v8 = 0;
    v14 = v187;
LABEL_134:
    v13 = v184;
    goto LABEL_135;
  }

  v171 = v170;
  v172 = CFGetTypeID(v169);
  v14 = v187;
  if (v172 != v171)
  {
    v8 = 0;
    goto LABEL_134;
  }

  v183 = v169;
  v173 = CFArrayGetCount(v169);
  v8 = 0;
  v13 = v184;
  if (v168 != v173)
  {
LABEL_135:
    v34 = v186;
LABEL_136:
    if (!MutableCopy)
    {
      goto LABEL_40;
    }

    goto LABEL_137;
  }

  v180 = v168;
  v34 = v186;
  if (v173 < 1)
  {
    goto LABEL_136;
  }

  v174 = 0;
  while (1)
  {
    v181 = v174;
    v185 = CFArrayGetValueAtIndex(v183, v174);
    v175 = CFArrayGetCount(MutableCopy);
    if (v175 < 1)
    {
      break;
    }

    v176 = v175;
    v177 = 0;
    while (1)
    {
      v178 = CFArrayGetValueAtIndex(v165, v177);
      if (CFEqual(v185, v178))
      {
        break;
      }

      if (v176 == ++v177)
      {
        goto LABEL_139;
      }
    }

    v174 = v181 + 1;
    v8 = 1;
    v11 = v188;
    if (v181 + 1 == v180)
    {
      goto LABEL_136;
    }
  }

LABEL_139:
  v8 = 0;
  v11 = v188;
  if (MutableCopy)
  {
LABEL_137:
    CFRelease(MutableCopy);
  }

LABEL_40:
  v87 = v193;
  if (v10)
  {
LABEL_41:
    CFRelease(v10);
  }

LABEL_42:
  v88 = v196;
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v89 = v194;
  if (v14)
  {
    CFRelease(v14);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v190)
  {
    CFRelease(v190);
  }

  v90 = v191;
  if (v89)
  {
    CFRelease(v89);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v192)
  {
    CFRelease(v192);
  }

  return v8;
}

__CFArray *_SCNetworkConfigurationCopyMigrationRemovePaths(const __CFArray *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    *&v5 = 138412290;
    v22 = v5;
    v23 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v24, 1024))
      {
        v8 = strnlen(v24, 0x400uLL);
        v9 = MEMORY[0x1B26F44F0](0, v24, v8, 0, a2);
        if (!CFURLResourceIsReachable(v9, 0))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        CFRelease(v9);
      }

      else
      {
        v10 = __log_SCNetworkConfiguration();
        v11 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v10, v11))
        {
          v12 = _os_log_pack_size();
          v18 = &v22 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
          v19 = __error();
          v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Cannot get file system representation for url: %@");
          *v20 = v22;
          *(v20 + 4) = ValueAtIndex;
          __SC_log_send(5, v10, v11, v18);
          a2 = v23;
        }
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void logMapping_one(const __SCNetworkService *a1, const __SCNetworkService *a2, int *a3)
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 1))
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(*a3);
    if (__SC_log_enabled(*a3, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v49 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s =", v49[0]);
      v17 = *(a3 + 1);
      *v16 = 136315138;
      *(v16 + 4) = v17;
      __SC_log_send(*a3, v6, v7, v14);
    }

    *(a3 + 1) = 0;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!a1)
  {
    SCNetworkSetGetTypeID();
    SCNetworkInterfaceGetTypeID();
    goto LABEL_14;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    ServiceID = SCNetworkServiceGetServiceID(a1);
  }

  else
  {
    v20 = SCNetworkSetGetTypeID();
    if (CFGetTypeID(a1) == v20)
    {
      ServiceID = SCNetworkSetGetSetID(a1);
    }

    else
    {
      v21 = SCNetworkInterfaceGetTypeID();
      if (CFGetTypeID(a1) != v21)
      {
        goto LABEL_14;
      }

      ServiceID = SCNetworkInterfaceGetBSDName(a1);
    }
  }

  a1 = ServiceID;
LABEL_14:
  v22 = SCNetworkServiceGetTypeID();
  if (!a2)
  {
    SCNetworkSetGetTypeID();
    SCNetworkInterfaceGetTypeID();
    CFBooleanGetTypeID();
    CFArrayGetTypeID();
    Mutable = 0;
LABEL_21:
    v26 = 1;
    goto LABEL_22;
  }

  if (CFGetTypeID(a2) == v22)
  {
    SetID = SCNetworkServiceGetServiceID(a2);
LABEL_20:
    Mutable = SetID;
    goto LABEL_21;
  }

  v25 = SCNetworkSetGetTypeID();
  if (CFGetTypeID(a2) == v25)
  {
    SetID = SCNetworkSetGetSetID(a2);
    goto LABEL_20;
  }

  v38 = SCNetworkInterfaceGetTypeID();
  if (CFGetTypeID(a2) == v38)
  {
    BSDName = SCNetworkInterfaceGetBSDName(a2);
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(a2);
    v41 = @"?";
    if (UserDefinedName)
    {
      v41 = UserDefinedName;
    }

    Mutable = CFStringCreateWithFormat(0, 0, @"%@ (%@)", BSDName, v41);
LABEL_31:
    v26 = 0;
    goto LABEL_22;
  }

  v42 = CFBooleanGetTypeID();
  if (CFGetTypeID(a2) == v42)
  {
    Mutable = @"None";
    goto LABEL_21;
  }

  v43 = CFArrayGetTypeID();
  if (CFGetTypeID(a2) == v43)
  {
    Count = CFArrayGetCount(a2);
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendFormat(Mutable, 0, @"( ");
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v47 = SCNetworkSetGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v47)
        {
          ValueAtIndex = SCNetworkSetGetSetID(ValueAtIndex);
        }

        v48 = ", ";
        if (!i)
        {
          v48 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@", v48, ValueAtIndex);
      }
    }

    CFStringAppendFormat(Mutable, 0, @""));
    goto LABEL_31;
  }

  v26 = 1;
  Mutable = a2;
LABEL_22:
  v27 = __log_SCNetworkConfiguration();
  v28 = _SC_syslog_os_log_mapping(*a3);
  if (__SC_log_enabled(*a3, v27, v28))
  {
    v29 = _os_log_pack_size();
    v35 = v49 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = __error();
    v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "  %@ --> %@");
    *v37 = 138412546;
    *(v37 + 4) = a1;
    *(v37 + 12) = 2112;
    *(v37 + 14) = Mutable;
    __SC_log_send(*a3, v27, v28, v35);
  }

  if ((v26 & 1) == 0)
  {
    CFRelease(Mutable);
  }
}

uint64_t __SCNetworkConfigurationInterfaceNameIsEquiv(const __CFString *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  v5 = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != v5)
  {
    return 0;
  }

  if (!CFEqual(a1, a2) && (!CFEqual(a1, @"AirPort") && !CFEqual(a1, @"Wi-Fi") || !CFEqual(a2, @"AirPort") && !CFEqual(a2, @"Wi-Fi")) && (!CFEqual(a1, @"Ethernet") && !CFEqual(a1, @"Ethernet 1") || !CFEqual(a2, @"Ethernet") && !CFEqual(a2, @"Ethernet 1")))
  {
    v6 = interfaceNameCreateWithoutPortSuffix(a1);
    if (v6)
    {
      v7 = v6;
      v8 = a2;
    }

    else
    {
      v6 = interfaceNameCreateWithoutPortSuffix(a2);
      if (!v6)
      {
        goto LABEL_21;
      }

      v7 = v6;
      v8 = a1;
    }

    v10 = CFEqual(v6, v8);
    CFRelease(v7);
    if (v10)
    {
      return 1;
    }

LABEL_21:
    v11 = 0;
    while (1)
    {
      v12 = off_1E79BEB50[v11];
      if ((CFEqual(a1, v12) || __SCNetworkInterfaceMatchesName(a1, v12)) && (CFEqual(a2, v12) || __SCNetworkInterfaceMatchesName(a2, v12)))
      {
        break;
      }

      result = 0;
      if (++v11 == 6)
      {
        return result;
      }
    }
  }

  return 1;
}

CFStringRef interfaceNameCreateWithoutPortSuffix(const __CFString *a1)
{
  v2 = CFStringFind(a1, @", Port ", 4uLL);
  if (v2.location == -1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v4 = v2.location + v2.length;
  if (v2.location + v2.length < Length)
  {
    v5 = Length;
    while (CFStringGetCharacterAtIndex(a1, v4) - 48 < 0xA)
    {
      if (++v4 >= v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6.location = 0;
  v6.length = v2.location;

  return CFStringCreateWithSubstring(0, a1, v6);
}

void create_bsd_name_service_protocol_mapping(const __SCNetworkService *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  Interface = SCNetworkServiceGetInterface(a1);
  if (Interface)
  {
    v6 = Interface;
    v27.length = CFArrayGetCount(v4);
    v27.location = 0;
    if (CFArrayContainsValue(v4, v27, v6))
    {
      BSDName = SCNetworkInterfaceGetBSDName(v6);
      TypeID = CFStringGetTypeID();
      if (BSDName)
      {
        if (CFGetTypeID(BSDName) == TypeID)
        {
          v9 = SCNetworkServiceCopyProtocols(a1);
          if (v9)
          {
            v10 = v9;
            v24 = BSDName;
            v25 = v3;
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            Count = CFArrayGetCount(v10);
            if (Count >= 1)
            {
              v13 = Count;
              v14 = 0;
              v15 = *MEMORY[0x1E695E4D0];
              v16 = *MEMORY[0x1E695E4C0];
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
                Configuration = SCNetworkProtocolGetConfiguration(ValueAtIndex);
                ProtocolType = SCNetworkProtocolGetProtocolType(ValueAtIndex);
                Enabled = SCNetworkProtocolGetEnabled(ValueAtIndex);
                if (Configuration && ProtocolType)
                {
                  v21 = Enabled;
                  v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionaryAddValue(v22, @"Protocol Type", ProtocolType);
                  CFDictionaryAddValue(v22, @"Protocol Configuration", Configuration);
                  if (v21)
                  {
                    v23 = v15;
                  }

                  else
                  {
                    v23 = v16;
                  }

                  CFDictionaryAddValue(v22, @"Protocol Enabled", v23);
                  CFArrayAppendValue(Mutable, v22);
                  CFRelease(v22);
                }

                ++v14;
              }

              while (v13 != v14);
            }

            CFDictionaryAddValue(v25, v24, Mutable);
            CFRelease(v10);

            CFRelease(Mutable);
          }
        }
      }
    }
  }
}

SCNetworkInterfaceRef remove_service(const __SCNetworkService *a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  result = SCNetworkServiceGetInterface(a1);
  if (result)
  {
    v5 = result;
    v24.length = CFArrayGetCount(v3);
    v24.location = 0;
    result = CFArrayContainsValue(v3, v24, v5);
    if (result)
    {
      ServiceID = SCNetworkServiceGetServiceID(a1);
      Name = SCNetworkServiceGetName(a1);
      BSDName = SCNetworkInterfaceGetBSDName(v5);
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v9, v10))
      {
        if (Name)
        {
          v11 = Name;
        }

        else
        {
          v11 = &stru_1F22591E8;
        }

        v12 = _os_log_pack_size();
        v18 = v23 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Removing service : %@ (%@%s%@)");
        v21 = ", ";
        *v20 = 138413058;
        *(v20 + 4) = ServiceID;
        *(v20 + 12) = 2112;
        if (!BSDName)
        {
          v21 = "";
        }

        *(v20 + 14) = v11;
        if (BSDName)
        {
          v22 = BSDName;
        }

        else
        {
          v22 = &stru_1F22591E8;
        }

        *(v20 + 22) = 2080;
        *(v20 + 24) = v21;
        *(v20 + 32) = 2112;
        *(v20 + 34) = v22;
        __SC_log_send(6, v9, v10, v18);
      }

      return SCNetworkServiceRemove(a1);
    }
  }

  return result;
}

void add_service(const __SCNetworkInterface *a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName && CFGetTypeID(BSDName) == TypeID)
  {
    Value = CFDictionaryGetValue(v3, BSDName);
  }

  else
  {
    Value = 0;
  }

  v8 = SCNetworkServiceCreate(v4, a1);
  if (v8)
  {
    v9 = v8;
    if (SCNetworkServiceEstablishDefaultConfiguration(v8))
    {
      v77 = BSDName;
      v78 = v4;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v11 = Count;
          for (i = 0; i != v11; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v14 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Configuration");
            v15 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Type");
            v16 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Enabled");
            if (v16)
            {
              v17 = CFBooleanGetValue(v16);
            }

            else
            {
              v17 = 0;
            }

            __SCNetworkServiceAddProtocolToService(v9, v15, v14, v17);
          }
        }
      }

      v18 = SCNetworkSetCopyCurrent(v78);
      if (v18)
      {
        v19 = v18;
        if (SCNetworkSetAddService(v18, v9))
        {
          ServiceID = SCNetworkServiceGetServiceID(v9);
          Name = SCNetworkServiceGetName(v9);
          v22 = __log_SCNetworkConfiguration();
          v23 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v22, v23))
          {
            if (Name)
            {
              v24 = Name;
            }

            else
            {
              v24 = &stru_1F22591E8;
            }

            v25 = _os_log_pack_size();
            v31 = &v76 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
            v32 = __error();
            v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "Adding service : %@ (%@%s%@)");
            v34 = ", ";
            *v33 = 138413058;
            *(v33 + 4) = ServiceID;
            *(v33 + 12) = 2112;
            v35 = v77;
            if (!v77)
            {
              v34 = "";
            }

            *(v33 + 14) = v24;
            if (v35)
            {
              v36 = v35;
            }

            else
            {
              v36 = &stru_1F22591E8;
            }

            *(v33 + 22) = 2080;
            *(v33 + 24) = v34;
            *(v33 + 32) = 2112;
            *(v33 + 34) = v36;
            __SC_log_send(6, v22, v23, v31);
          }
        }

        else
        {
          v66 = __log_SCNetworkConfiguration();
          v67 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v66, v67))
          {
            v68 = _os_log_pack_size();
            v74 = &v76 - ((MEMORY[0x1EEE9AC00](v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
            v75 = __error();
            *_os_log_pack_fill(v74, v68, *v75, &dword_1AD2AD000, "Could not add service to current set") = 0;
            __SC_log_send(5, v66, v67, v74);
          }

          SCNetworkServiceRemove(v9);
        }

        CFRelease(v9);
        v65 = v19;
        goto LABEL_38;
      }

      v47 = __log_SCNetworkConfiguration();
      v48 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v47, v48))
      {
        v58 = _os_log_pack_size();
        v55 = &v76 - ((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
        v64 = *__error();
        v57 = _os_log_pack_fill(v55, v58, v64, &dword_1AD2AD000, "Could not find current set");
        goto LABEL_32;
      }
    }

    else
    {
      v47 = __log_SCNetworkConfiguration();
      v48 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v47, v48))
      {
        v49 = _os_log_pack_size();
        v55 = &v76 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
        v56 = *__error();
        v57 = _os_log_pack_fill(v55, v49, v56, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration() failed");
LABEL_32:
        *v57 = 0;
        __SC_log_send(5, v47, v48, v55);
      }
    }

    SCNetworkServiceRemove(v9);
    v65 = v9;
LABEL_38:
    CFRelease(v65);
    return;
  }

  v37 = __log_SCNetworkConfiguration();
  v38 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v37, v38))
  {
    v39 = _os_log_pack_size();
    v45 = &v76 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = __error();
    *_os_log_pack_fill(v45, v39, *v46, &dword_1AD2AD000, "Could not create new service") = 0;
    __SC_log_send(5, v37, v38, v45);
  }
}

BOOL __SCNetworkConfigurationMigrateConfigurationFilesPresent(const __CFURL *a1, CFArrayRef *a2, int a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v40 = 0;
    v41[0] = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(a1, &v40, v41);
    v7 = v40;
    CFArrayAppendValue(Mutable, v40);
    v8 = v41[0];
    CFArrayAppendValue(Mutable, v41[0]);
    CFRelease(v7);
    CFRelease(v8);
    *a2 = Mutable;
    Count = CFArrayGetCount(Mutable);
    if (Count < 1)
    {
      return 1;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v11);
      if (!_SCNetworkConfigurationMigrateIsFilePresent(ValueAtIndex))
      {
        break;
      }

      if (v10 == ++v11)
      {
        return 1;
      }
    }

    if (!a3)
    {
      return 0;
    }

    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(6);
    result = __SC_log_enabled(6, v28, v29);
    if (!result)
    {
      return result;
    }

    v30 = _os_log_pack_size();
    v36 = &v39 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = __error();
    v38 = _os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "Expected migration file not present: %@");
    *v38 = 138412290;
    *(v38 + 4) = ValueAtIndex;
    v24 = 6;
    v25 = v28;
    v26 = v29;
    v27 = v36;
  }

  else
  {
    v14 = __log_SCNetworkConfiguration();
    v15 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v14, v15);
    if (!result)
    {
      return result;
    }

    v16 = _os_log_pack_size();
    v22 = &v39 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    *_os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "No base migration URL") = 0;
    v24 = 5;
    v25 = v14;
    v26 = v15;
    v27 = v22;
  }

  __SC_log_send(v24, v25, v26, v27);
  return 0;
}

void __SCNetworkPopulateDefaultPrefs(const __SCPreferences *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = __log_SCNetworkConfiguration();
  v3 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v2, v3))
  {
    v4 = _os_log_pack_size();
    v10 = &v16 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "Populating preferences.plist\n  %@");
    *v12 = 138412290;
    *(v12 + 4) = a1;
    __SC_log_send(6, v2, v3, v10);
  }

  Default = SCNetworkSetCopyCurrent(a1);
  if (!Default)
  {
    Default = _SCNetworkSetCreateDefault(a1);
  }

  SCNetworkSetEstablishDefaultConfiguration(Default);
  CFRelease(Default);
  if (!SCPreferencesGetValue(a1, @"Model"))
  {
    v14 = _SC_hw_model(0);
    SCPreferencesSetValue(a1, @"Model", v14);
  }

  if (!SCPreferencesGetValue(a1, @"__VERSION__"))
  {
    HIDWORD(v16) = 20191120;
    v15 = CFNumberCreate(0, kCFNumberIntType, &v16 + 4);
    SCPreferencesSetValue(a1, @"__VERSION__", v15);
    CFRelease(v15);
  }
}

void __SCNetworkPopulateDefaultNIPrefs(const __SCPreferences *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(a1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v4, v5))
    {
      v6 = _os_log_pack_size();
      v12 = &v43 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "Populating NetworkInterfaces.plist\n  %@");
      *v14 = 138412290;
      *(v14 + 4) = a1;
      __SC_log_send(6, v4, v5, v12);
    }

    v15 = __SCNetworkInterfaceCopyAll_IONetworkInterface(1);
    if (v15)
    {
      v16 = v15;
      v43 = a1;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (CFArrayGetCount(v16) >= 1)
      {
        v18 = 0;
        v44 = v16;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
          v20 = __SCNetworkInterfaceCopyStorageEntity(ValueAtIndex);
          if (v20)
          {
            v21 = v20;
            IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
            IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(ValueAtIndex);
            if (IOInterfaceType)
            {
              v24 = IOInterfaceUnit;
              if (IOInterfaceUnit)
              {
                if (CFArrayGetCount(Mutable) < 1)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = 0;
                  do
                  {
                    v26 = CFArrayGetValueAtIndex(Mutable, v25);
                    v27 = CFDictionaryGetValue(v26, @"IOInterfaceType");
                    v28 = CFDictionaryGetValue(v26, @"IOInterfaceUnit");
                    v29 = CFNumberCompare(IOInterfaceType, v27, 0);
                    if (v29 == kCFCompareEqualTo)
                    {
                      v29 = CFNumberCompare(v24, v28, 0);
                    }

                    if (v29 == kCFCompareLessThan)
                    {
                      break;
                    }

                    ++v25;
                  }

                  while (v25 < CFArrayGetCount(Mutable));
                }

                CFArrayInsertValueAtIndex(Mutable, v25, v21);
                v16 = v44;
              }
            }

            CFRelease(v21);
          }

          ++v18;
        }

        while (v18 < CFArrayGetCount(v16));
      }

      v30 = v43;
      SCPreferencesSetValue(v43, @"Interfaces", Mutable);
      CFRelease(Mutable);
      if (!SCPreferencesGetValue(v30, @"Model"))
      {
        v31 = _SC_hw_model(0);
        SCPreferencesSetValue(v30, @"Model", v31);
      }

      if (!SCPreferencesGetValue(v30, @"__VERSION__"))
      {
        valuePtr = 20191120;
        v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        SCPreferencesSetValue(v30, @"__VERSION__", v32);
        CFRelease(v32);
      }

      CFRelease(v16);
    }

    else
    {
      v33 = __log_SCNetworkConfiguration();
      v34 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v33, v34))
      {
        v35 = _os_log_pack_size();
        v41 = &v43 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __error();
        *_os_log_pack_fill(v41, v35, *v42, &dword_1AD2AD000, "Cannot populate NetworkInterfaces.plist, no network interfaces") = 0;
        __SC_log_send(5, v33, v34, v41);
      }
    }
  }
}

BOOL hasSameModel(const __SCPreferences *a1, const __SCPreferences *a2)
{
  Value = SCPreferencesGetValue(a1, @"Model");
  v4 = SCPreferencesGetValue(a2, @"Model");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (v6 = CFStringGetTypeID(), v4) && CFGetTypeID(v4) == v6)
  {
    return CFEqual(Value, v4) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t hasInterfaceConflict(const __SCPreferences *a1, const __SCPreferences *a2)
{
  cf2[1] = *MEMORY[0x1E69E9840];
  v3 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (v3)
  {
    v4 = v3;
    MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v3);
    CFRelease(v4);
  }

  else
  {
    MappingUsingBSDName = 0;
  }

  v6 = __SCNetworkInterfaceCopyStoredWithPreferences(a2);
  if (!v6)
  {
    v13 = 0;
    if (!MappingUsingBSDName)
    {
      return v13;
    }

    goto LABEL_17;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      cf2[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        if (!MappingUsingBSDName || !CFDictionaryGetValueIfPresent(MappingUsingBSDName, BSDName, cf2) || !CFEqual(ValueAtIndex, cf2[0]))
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    v13 = 1;
  }

  CFRelease(v7);
  if (MappingUsingBSDName)
  {
LABEL_17:
    CFRelease(MappingUsingBSDName);
  }

  return v13;
}

void _SCNetworkConfigurationCreateBuiltinInterfaceServices(const __SCPreferences *a1, const __SCPreferences *cf)
{
  v55 = *MEMORY[0x1E69E9840];
  context = 0;
  v54 = 0;
  v3 = __SCNetworkInterfaceCopyStoredWithPreferences(cf);
  if (!v3)
  {
    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v28, v29))
    {
      v30 = _os_log_pack_size();
      v36 = &v49 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      *_os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "No interfaces") = 0;
      __SC_log_send(5, v28, v29, v36);
    }

    return;
  }

  v4 = v3;
  MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v3);
  CFRelease(v4);
  TypeID = CFDictionaryGetTypeID();
  if (!MappingUsingBSDName)
  {
    return;
  }

  if (CFGetTypeID(MappingUsingBSDName) != TypeID)
  {
    goto LABEL_19;
  }

  v7 = __SCNetworkServiceCopyAllInterfaces(a1);
  if (!v7)
  {
    v38 = __log_SCNetworkConfiguration();
    v39 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v38, v39))
    {
      v40 = _os_log_pack_size();
      v46 = &v49 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      *_os_log_pack_fill(v46, v40, *v47, &dword_1AD2AD000, "No [service] interfaces") = 0;
      __SC_log_send(5, v38, v39, v46);
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = __SCNetworkInterfaceCreateMappingUsingBSDName(v7);
  CFRelease(v8);
  v10 = CFDictionaryGetTypeID();
  if (!v9)
  {
LABEL_19:
    v48 = MappingUsingBSDName;
LABEL_20:
    CFRelease(v48);
    return;
  }

  if (CFGetTypeID(v9) == v10)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    context = v9;
    v54 = Mutable;
    CFDictionaryApplyFunction(MappingUsingBSDName, _SCNetworkConfigurationCollectMissingService, &context);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v14 = Count;
      v50 = v9;
      v15 = 0;
      *&v13 = 138412290;
      v51 = v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v15);
        if (!__SCNetworkInterfaceIsBusyMember(a1, ValueAtIndex, 0) && !__SCNetworkServiceCreate(a1, ValueAtIndex, 0))
        {
          v17 = __log_SCNetworkConfiguration();
          v18 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v17, v18))
          {
            v19 = _os_log_pack_size();
            v52 = &v49;
            v25 = &v49 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = __error();
            v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "Could not create service for interface: %@");
            *v27 = v51;
            *(v27 + 4) = ValueAtIndex;
            __SC_log_send(5, v17, v18, v25);
          }
        }

        ++v15;
      }

      while (v14 != v15);
      v9 = v50;
    }
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(MappingUsingBSDName);
  CFRelease(v9);
  if (Mutable)
  {
    v48 = Mutable;
    goto LABEL_20;
  }
}

__CFDictionary *_SCNetworkConfigurationCopyExternalInterfaceMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v3 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 0);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v5 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a2, 0);
      v6 = CFArrayGetTypeID();
      if (v5 && CFGetTypeID(v5) == v6)
      {
        v7 = _SCNetworkInterfaceStorageCopyMaxUnitPerInterfaceType(a2);
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        Companion = SCPreferencesCreateCompanion(a2, 0);
        if (Count >= 1)
        {
          v64 = Mutable;
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
            v12 = CFArrayGetCount(v5);
            if (v12 < 1)
            {
LABEL_18:
              if (!_SCNetworkInterfaceIsHiddenInterface(ValueAtIndex))
              {
                v20 = *(ValueAtIndex + 36);
                v21 = CFNumberGetTypeID();
                if (!v20 || CFGetTypeID(v20) != v21 || (valuePtr = 0, !CFNumberGetValue(*(ValueAtIndex + 36), kCFNumberIntType, &valuePtr)) || valuePtr != 1452 || (v22 = *(ValueAtIndex + 4), v22 != @"iBridge") && (!v22 || !CFEqual(v22, @"iBridge")))
                {
                  IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
                  Value = CFDictionaryGetValue(v7, IOInterfaceType);
                  if (Value)
                  {
                    CFNumberGetValue(Value, kCFNumberIntType, &v66 + 4);
                    v25 = HIDWORD(v66) + 1;
                  }

                  else
                  {
                    v25 = 0;
                  }

                  LODWORD(v66) = v25;
                  v28 = CFNumberCreate(0, kCFNumberIntType, &v66);
                  CFDictionarySetValue(v7, IOInterfaceType, v28);
                  Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, Companion, 0);
                  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(Copy);
                  v31 = CFNumberGetTypeID();
                  if (!IOInterfaceUnit || CFGetTypeID(IOInterfaceUnit) != v31 || !CFEqual(IOInterfaceUnit, v28))
                  {
                    __SCNetworkInterfaceSetIOInterfaceUnit(Copy, v28);
                  }

                  CFDictionaryAddValue(v64, ValueAtIndex, Copy);
                  CFRelease(Copy);
                  CFRelease(v28);
                }
              }
            }

            else
            {
              v13 = v12;
              for (j = 0; j != v13; ++j)
              {
                v15 = CFArrayGetValueAtIndex(v5, j);
                HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(ValueAtIndex);
                v17 = _SCNetworkInterfaceGetHardwareAddress(v15);
                if (HardwareAddress == v17 || HardwareAddress && v17 && CFEqual(HardwareAddress, v17))
                {
                  CFDictionaryAddValue(v64, ValueAtIndex, v15);
                  v26 = v5;
                  v27 = j;
                  goto LABEL_29;
                }
              }

              v18 = 0;
              while (1)
              {
                v19 = CFArrayGetValueAtIndex(v5, v18);
                if (_SCNetworkConfigurationIsInterfaceNamerMappable(ValueAtIndex, v19))
                {
                  break;
                }

                if (v13 == ++v18)
                {
                  goto LABEL_18;
                }
              }

              CFDictionaryAddValue(v64, ValueAtIndex, v19);
              v26 = v5;
              v27 = v18;
LABEL_29:
              CFArrayRemoveValueAtIndex(v26, v27);
            }
          }

          Mutable = v64;
        }

        goto LABEL_55;
      }

      v43 = __log_SCNetworkConfiguration();
      v44 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v43, v44))
      {
        v45 = _os_log_pack_size();
        v51 = &v63 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = __error();
        *_os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "No target external interfaces") = 0;
        __SC_log_send(6, v43, v44, v51);
      }
    }

    else
    {
      v53 = __log_SCNetworkConfiguration();
      v54 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v53, v54))
      {
        Mutable = 0;
        v7 = 0;
        v5 = 0;
        goto LABEL_54;
      }

      v55 = _os_log_pack_size();
      v61 = &v63 - ((MEMORY[0x1EEE9AC00](v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = __error();
      *_os_log_pack_fill(v61, v55, *v62, &dword_1AD2AD000, "No source external interfaces") = 0;
      __SC_log_send(6, v53, v54, v61);
      v5 = 0;
    }

    Mutable = 0;
    v7 = 0;
LABEL_54:
    Companion = 0;
LABEL_55:
    CFRelease(v3);
    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_44;
  }

  v32 = __log_SCNetworkConfiguration();
  v33 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v32, v33))
  {
    v34 = _os_log_pack_size();
    v40 = &v63 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = __error();
    *_os_log_pack_fill(v40, v34, *v41, &dword_1AD2AD000, "No source external interfaces") = 0;
    __SC_log_send(6, v32, v33, v40);
  }

  Companion = 0;
  v5 = 0;
  v7 = 0;
  Mutable = 0;
  if (v3)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (v7)
  {
    CFRelease(v7);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  return Mutable;
}

__CFArray *_SCNetworkMigrationCreateNetworkInterfaceArray(const __SCPreferences *a1, const __CFDictionary *a2, _BYTE *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v47 = 0;
  if (!a1)
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v26, v27))
    {
      v37 = _os_log_pack_size();
      v34 = &context - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = *__error();
      v36 = _os_log_pack_fill(v34, v37, v43, &dword_1AD2AD000, "No NetworkInterfaces.plist");
      goto LABEL_23;
    }

    return 0;
  }

  Value = SCPreferencesGetValue(a1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFArrayGetCount(Value)) == 0)
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v26, v27))
    {
      v28 = _os_log_pack_size();
      v34 = &context - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill(v34, v28, v35, &dword_1AD2AD000, "No interfaces");
LABEL_23:
      *v36 = 0;
      __SC_log_send(5, v26, v27, v34);
      return 0;
    }

    return 0;
  }

  v9 = Count;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      v13 = CFDictionaryGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v13)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  v14 = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == v14)
  {
    v15 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 0);
    context = v15;
    v46 = Mutable;
    LOBYTE(v47) = 0;
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &context - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      *_os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "Updating network interface list", context, v46) = 0;
      __SC_log_send(7, v16, v17, v24);
    }

    logInterfaces("  externalInterfaceList", v15, 0);
    logInterfaces("  networkInterfaceList", Mutable, 0);
    CFDictionaryApplyFunction(a2, _SCNetworkConfigurationCollectInterfaceStorageEntity, &context);
    if (a3)
    {
      *a3 = v47;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return Mutable;
}

CFMutableDictionaryRef _SCNetworkMigrationCreateBSDNameMapping(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1 | a2)
  {
    if (a1)
    {
      CFDictionaryApplyFunction(a1, SCNetworkMigrationMapSourceToTargetName, Mutable);
    }

    if (a2)
    {
      CFDictionaryApplyFunction(a2, SCNetworkMigrationMapSourceToTargetName, Mutable);
    }
  }

  return Mutable;
}

CFDictionaryRef _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(const __SCPreferences *a1, const __SCPreferences *a2, const __CFDictionary *a3)
{
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (a3)
  {
    v5 = SCNetworkServiceCopyAll(a1);
    TypeID = CFArrayGetTypeID();
    if (v5 && CFGetTypeID(v5) == TypeID)
    {
      v7 = SCNetworkServiceCopyAll(a2);
      v8 = CFArrayGetTypeID();
      if (!v7 || CFGetTypeID(v7) != v8)
      {
        v165 = __log_SCNetworkConfiguration();
        v166 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v165, v166))
        {
          v167 = _os_log_pack_size();
          v173 = &v175 - ((MEMORY[0x1EEE9AC00](v167, v168, v169, v170, v171, v172) + 15) & 0xFFFFFFFFFFFFFFF0);
          v174 = __error();
          *_os_log_pack_fill(v173, v167, *v174, &dword_1AD2AD000, "No target network services") = 0;
          __SC_log_send(5, v165, v166, v173);
        }

        v13 = 0;
        MutableCopy = 0;
        v10 = 0;
        goto LABEL_96;
      }

      Count = CFArrayGetCount(v5);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v5);
      v10 = CFArrayCreateMutableCopy(0, 0, v7);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = Mutable;
      v186 = Count;
      if (Count < 1)
      {
        goto LABEL_96;
      }

      v178 = v5;
      v179 = a3;
      v188 = Mutable;
      v177 = v7;
      v14 = 0;
      v190 = @"VPN";
      v185 = @"PPP";
      v187 = @"Bond";
      v183 = @"Bridge";
      v182 = @"VLAN";
      v180 = @"IPSec";
      v176 = @"6to4";
      v175 = @"Loopback";
      v181 = *MEMORY[0x1E695E4C0];
      *&v12 = 138412290;
      v191 = v12;
      v15 = MutableCopy;
      v192 = v10;
      v16 = v186;
      while (1)
      {
        value[0] = 0;
        v17 = CFArrayGetCount(v10);
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v14);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        if (!Interface)
        {
          v79 = __log_SCNetworkConfiguration();
          v80 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v79, v80))
          {
            goto LABEL_70;
          }

          v81 = _os_log_pack_size();
          v87 = &v175 - ((MEMORY[0x1EEE9AC00](v81, v82, v83, v84, v85, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
          v88 = *__error();
          v89 = _os_log_pack_fill(v87, v81, v88, &dword_1AD2AD000, "source service with no interface, should never happen", v175);
LABEL_68:
          *v89 = 0;
          v102 = 5;
          v103 = v79;
          v104 = v80;
          v105 = v87;
          goto LABEL_69;
        }

        v20 = Interface;
        EntityType = __SCNetworkInterfaceGetEntityType(Interface);
        v22 = CFStringGetTypeID();
        if (EntityType && CFGetTypeID(EntityType) == v22 && (CFEqual(EntityType, v190) || CFEqual(EntityType, v185)))
        {
          EntitySubType = __SCNetworkInterfaceGetEntitySubType(v20);
          v24 = CFStringGetTypeID();
          if (!EntitySubType || CFGetTypeID(EntitySubType) != v24)
          {
            v79 = __log_SCNetworkConfiguration();
            v80 = _SC_syslog_os_log_mapping(5);
            if (!__SC_log_enabled(5, v79, v80))
            {
              goto LABEL_70;
            }

            v95 = _os_log_pack_size();
            v87 = &v175 - ((MEMORY[0x1EEE9AC00](v95, v96, v97, v98, v99, v100) + 15) & 0xFFFFFFFFFFFFFFF0);
            v101 = *__error();
            v89 = _os_log_pack_fill(v87, v95, v101, &dword_1AD2AD000, "source service with VPN/PPP interface missing SubType", v175);
            goto LABEL_68;
          }

          v184 = EntitySubType;
          v189 = ValueAtIndex;
          v25 = 1;
        }

        else if ((v26 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v26) && (InterfaceType = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(InterfaceType, v187)) || (v28 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v28) && (v29 = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(v29, v183)) || (v30 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v30) && (v31 = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(v31, v182)))
        {
          BSDName = SCNetworkInterfaceGetBSDName(v20);
          v33 = CFStringGetTypeID();
          if (!BSDName || CFGetTypeID(BSDName) != v33)
          {
            goto LABEL_70;
          }

          v189 = ValueAtIndex;
          v184 = 0;
          v25 = 0;
          value[0] = BSDName;
        }

        else
        {
          v90 = CFStringGetTypeID();
          if (EntityType && CFGetTypeID(EntityType) == v90 && (CFEqual(EntityType, v180) || CFEqual(EntityType, v176) || CFEqual(EntityType, v175)))
          {
            goto LABEL_70;
          }

          v91 = SCNetworkInterfaceGetBSDName(v20);
          v92 = CFStringGetTypeID();
          if (!v91 || CFGetTypeID(v91) != v92)
          {
            goto LABEL_70;
          }

          v189 = ValueAtIndex;
          if (!CFDictionaryGetValueIfPresent(v179, v91, value) || (v93 = value[0], v94 = CFStringGetTypeID(), !v93) || CFGetTypeID(v93) != v94)
          {
            v106 = __log_SCNetworkConfiguration();
            v107 = _SC_syslog_os_log_mapping(6);
            if (!__SC_log_enabled(6, v106, v107))
            {
              goto LABEL_70;
            }

            v108 = _os_log_pack_size();
            v114 = &v175 - ((MEMORY[0x1EEE9AC00](v108, v109, v110, v111, v112, v113) + 15) & 0xFFFFFFFFFFFFFFF0);
            v115 = __error();
            v116 = _os_log_pack_fill(v114, v108, *v115, &dword_1AD2AD000, "No BSD name mapping for %@");
            *v116 = v191;
            *(v116 + 4) = v91;
            v102 = 6;
            v103 = v106;
            v104 = v107;
            v105 = v114;
            v16 = v186;
LABEL_69:
            __SC_log_send(v102, v103, v104, v105);
            goto LABEL_70;
          }

          v184 = 0;
          v25 = 0;
        }

        if (v17 < 1)
        {
          goto LABEL_51;
        }

        v34 = 0;
        v194 = EntityType;
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(v10, v34);
          v36 = SCNetworkServiceGetInterface(v35);
          if (v36)
          {
            break;
          }

          v43 = __log_SCNetworkConfiguration();
          v44 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v43, v44))
          {
            v45 = _os_log_pack_size();
            v51 = &v175 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
            v52 = __error();
            *_os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "target service with no interface, should never happen") = 0;
            v53 = v43;
            v54 = v44;
            v55 = v51;
            goto LABEL_49;
          }

LABEL_50:
          if (v17 == ++v34)
          {
            goto LABEL_51;
          }
        }

        v37 = v36;
        if (v25)
        {
          break;
        }

        v56 = SCNetworkInterfaceGetBSDName(v36);
        v57 = CFStringGetTypeID();
        if (!v56 || CFGetTypeID(v56) != v57 || !CFEqual(v56, value[0]))
        {
          goto LABEL_50;
        }

        v117 = __log_SCNetworkConfiguration();
        v118 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v117, v118))
        {
          v120 = _os_log_pack_size();
          v126 = &v175 - ((MEMORY[0x1EEE9AC00](v120, v121, v122, v123, v124, v125) + 15) & 0xFFFFFFFFFFFFFFF0);
          v127 = __error();
          v128 = _os_log_pack_fill(v126, v120, *v127, &dword_1AD2AD000, "Removing target service: %@");
          *v128 = v191;
          *(v128 + 4) = v56;
          v129 = v117;
          v130 = v118;
          v131 = v126;
          v10 = v192;
LABEL_76:
          __SC_log_send(5, v129, v130, v131);
        }

LABEL_77:
        CFDictionaryAddValue(v188, v189, v35);
        CFArrayRemoveValueAtIndex(v10, v34);
LABEL_51:
        v77 = v189;
        v78 = CFDictionaryContainsKey(v188, v189);
        v15 = MutableCopy;
        v16 = v186;
        if (!v78)
        {
          CFDictionaryAddValue(v188, v77, v181);
        }

LABEL_70:
        if (++v14 == v16)
        {
          v7 = v177;
          v5 = v178;
          v13 = v188;
          if (!v178)
          {
            goto LABEL_83;
          }

LABEL_96:
          CFRelease(v5);
          if (!v7)
          {
            goto LABEL_85;
          }

LABEL_84:
          CFRelease(v7);
          goto LABEL_85;
        }
      }

      v38 = __SCNetworkInterfaceGetEntityType(v36);
      v39 = CFStringGetTypeID();
      if (v38 && CFGetTypeID(v38) == v39 && (CFEqual(v38, v190) || CFEqual(v38, v185)))
      {
        v40 = __SCNetworkInterfaceGetEntitySubType(v37);
        v41 = CFStringGetTypeID();
        if (v40 && CFGetTypeID(v40) == v41)
        {
          v42 = CFEqual(v38, EntityType);
          v10 = v192;
          if (v42 && CFEqual(v40, v184))
          {
            v132 = __log_SCNetworkConfiguration();
            v133 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v132, v133))
            {
              v135 = _os_log_pack_size();
              v141 = &v175 - ((MEMORY[0x1EEE9AC00](v135, v136, v137, v138, v139, v140) + 15) & 0xFFFFFFFFFFFFFFF0);
              v142 = __error();
              v143 = _os_log_pack_fill(v141, v135, *v142, &dword_1AD2AD000, "Removing target service: %@ for VPN");
              *v143 = v191;
              *(v143 + 4) = 0;
              v129 = v132;
              v130 = v133;
              v131 = v141;
              goto LABEL_76;
            }

            goto LABEL_77;
          }
        }

        else
        {
          v58 = __log_SCNetworkConfiguration();
          v59 = _SC_syslog_os_log_mapping(5);
          v69 = __SC_log_enabled(5, v58, v59);
          v10 = v192;
          if (v69)
          {
            v70 = _os_log_pack_size();
            v66 = &v175 - ((MEMORY[0x1EEE9AC00](v70, v71, v72, v73, v74, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
            v76 = *__error();
            v68 = _os_log_pack_fill(v66, v70, v76, &dword_1AD2AD000, "No target interface SubType: %@", v175);
LABEL_48:
            *v68 = v191;
            *(v68 + 4) = v37;
            v53 = v58;
            v54 = v59;
            v55 = v66;
            v10 = v192;
LABEL_49:
            __SC_log_send(5, v53, v54, v55);
            EntityType = v194;
            goto LABEL_50;
          }
        }
      }

      else
      {
        v58 = __log_SCNetworkConfiguration();
        v59 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v58, v59))
        {
          v60 = _os_log_pack_size();
          v66 = &v175 - ((MEMORY[0x1EEE9AC00](v60, v61, v62, v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
          v67 = *__error();
          v68 = _os_log_pack_fill(v66, v60, v67, &dword_1AD2AD000, "Unexpected target interface Type: %@", v175);
          goto LABEL_48;
        }
      }

      goto LABEL_50;
    }

    v144 = __log_SCNetworkConfiguration();
    v145 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v144, v145))
    {
      v146 = _os_log_pack_size();
      v152 = &v175 - ((MEMORY[0x1EEE9AC00](v146, v147, v148, v149, v150, v151) + 15) & 0xFFFFFFFFFFFFFFF0);
      v153 = __error();
      *_os_log_pack_fill(v152, v146, *v153, &dword_1AD2AD000, "No source network services") = 0;
      __SC_log_send(5, v144, v145, v152);
    }

    v10 = 0;
    v7 = 0;
    MutableCopy = 0;
    v13 = 0;
    if (v5)
    {
      goto LABEL_96;
    }

LABEL_83:
    if (v7)
    {
      goto LABEL_84;
    }

LABEL_85:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v154 = __log_SCNetworkConfiguration();
    v155 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v154, v155))
    {
      v156 = _os_log_pack_size();
      v162 = &v175 - ((MEMORY[0x1EEE9AC00](v156, v157, v158, v159, v160, v161) + 15) & 0xFFFFFFFFFFFFFFF0);
      v163 = __error();
      *_os_log_pack_fill(v162, v156, *v163, &dword_1AD2AD000, "No BSD name mappings") = 0;
      __SC_log_send(5, v154, v155, v162);
    }

    return 0;
  }

  return v13;
}

__CFDictionary *_SCNetworkMigrationCreateSetMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = SCNetworkSetCopyAll(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SCNetworkSetCopyAll(a2);
  if (!v6)
  {
    Mutable = 0;
    v11 = v5;
LABEL_23:
    CFRelease(v11);
    return Mutable;
  }

  v7 = v6;
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
  Count = CFArrayGetCount(MutableCopy);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = SCNetworkSetCopyCurrent(a1);
  if (!v11)
  {
    goto LABEL_6;
  }

  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
    Name = SCNetworkSetGetName(v11);
    SCNetworkSetSetName(ValueAtIndex, Name);
    CFDictionaryAddValue(Mutable, v11, ValueAtIndex);
    SCNetworkSetSetCurrent(ValueAtIndex);
    CFRelease(ValueAtIndex);
LABEL_6:
    if (CFArrayGetCount(v5) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = CFArrayGetValueAtIndex(v5, v14);
        v16 = v15;
        if (!v11 || !CFEqual(v15, v11))
        {
          v17 = CFArrayGetCount(MutableCopy);
          v18 = SCNetworkSetGetName(v16);
          if (v17 < 1)
          {
            v19 = SCNetworkSetCreate(a2);
          }

          else
          {
            v19 = CFArrayGetValueAtIndex(MutableCopy, 0);
            CFRetain(v19);
            CFArrayRemoveValueAtIndex(MutableCopy, 0);
          }

          SCNetworkSetSetName(v19, v18);
          CFDictionaryAddValue(Mutable, v16, v19);
          CFRelease(v19);
        }

        ++v14;
      }

      while (v14 < CFArrayGetCount(v5));
    }

    goto LABEL_20;
  }

  v20 = __log_SCNetworkConfiguration();
  v21 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v20, v21))
  {
    v22 = _os_log_pack_size();
    v32[0] = v32;
    v28 = v32 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "Number of sets in the target should be at least 1, but is found to be %ld", v32[0]);
    *v30 = 134217984;
    *(v30 + 4) = Count;
    __SC_log_send(5, v20, v21, v28);
  }

LABEL_20:
  CFRelease(v5);
  CFRelease(v7);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v11)
  {
    goto LABEL_23;
  }

  return Mutable;
}

__CFDictionary *_SCNetworkMigrationCreateServiceSetMapping(const __SCPreferences *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = SCNetworkServiceCopyAll(a1);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      v6 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        v8 = CFArrayCreateMutable(0, 0, v6);
        CFDictionaryAddValue(Mutable, ValueAtIndex, v8);
        CFRelease(v8);
        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
    v9 = SCNetworkSetCopyAll(a1);
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = CFArrayGetValueAtIndex(v10, v11);
          v13 = SCNetworkSetCopyServices(v12);
          if (CFArrayGetCount(v13) >= 1)
          {
            v14 = 0;
            do
            {
              v15 = CFArrayGetValueAtIndex(v13, v14);
              Value = CFDictionaryGetValue(Mutable, v15);
              if (Value)
              {
                CFArrayAppendValue(Value, v12);
              }

              ++v14;
            }

            while (v14 < CFArrayGetCount(v13));
          }

          CFRelease(v13);
          ++v11;
        }

        while (v11 < CFArrayGetCount(v10));
      }

      CFRelease(v10);
    }
  }

  return Mutable;
}

BOOL _SCNetworkMigrationDoServiceMigration(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  if (a1 && a2 && (TypeID = CFDictionaryGetTypeID(), a3) && CFGetTypeID(a3) == TypeID && (v12 = CFDictionaryGetTypeID(), a4) && CFGetTypeID(a4) == v12)
  {
    context = 6;
    v47 = "BSD name mapping";
    CFDictionaryApplyFunction(a4, logMapping_one, &context);
    context = 6;
    v47 = "SCNetworkService mapping";
    CFDictionaryApplyFunction(a3, logMapping_one, &context);
    if (a5)
    {
      context = 6;
      v47 = "SCNetworkSet mapping";
      CFDictionaryApplyFunction(a5, logMapping_one, &context);
    }

    else
    {
      v24 = __log_SCNetworkConfiguration();
      v25 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v24, v25))
      {
        v26 = _os_log_pack_size();
        v32 = &v44 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = __error();
        *_os_log_pack_fill(v32, v26, *v33, &dword_1AD2AD000, "No SCNetworkSet mapping", v44, v45) = 0;
        __SC_log_send(5, v24, v25, v32);
      }
    }

    if (a6)
    {
      context = 6;
      v47 = "SCNetworkService/SCNetworkSet mapping";
      CFDictionaryApplyFunction(a6, logMapping_one, &context);
    }

    else
    {
      v34 = __log_SCNetworkConfiguration();
      v35 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v34, v35))
      {
        v36 = _os_log_pack_size();
        v42 = &v44 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = __error();
        *_os_log_pack_fill(v42, v36, *v43, &dword_1AD2AD000, "No SCNetworkService/SCNetworkSet mapping") = 0;
        __SC_log_send(5, v34, v35, v42);
      }
    }

    *&v44 = a2;
    *(&v44 + 1) = a4;
    *&v45 = a5;
    *(&v45 + 1) = a6;
    CFDictionaryApplyFunction(a3, ServiceMigrationAddOrReplace, &v44);
    return 1;
  }

  else
  {
    v13 = __log_SCNetworkConfiguration();
    v14 = _SC_syslog_os_log_mapping(6);
    result = __SC_log_enabled(6, v13, v14);
    if (result)
    {
      v16 = _os_log_pack_size();
      v22 = &v44 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      *_os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "No sourcePrefs, targetPrefs, serviceMapping, or bsdNameMapping", v44, v45) = 0;
      __SC_log_send(6, v13, v14, v22);
      return 0;
    }
  }

  return result;
}

__CFDictionary *_SCNetworkConfigurationCopyBuiltinMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 1);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    Count = CFArrayGetCount(v3);
    v6 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a2, 1);
    v7 = CFArrayGetTypeID();
    if (v6 && CFGetTypeID(v6) == v7)
    {
      if (Count >= 1)
      {
        Mutable = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          v11 = CFArrayGetCount(v6);
          if (v11 >= 1)
          {
            v12 = v11;
            v13 = 0;
            while (1)
            {
              v14 = CFArrayGetValueAtIndex(v6, v13);
              HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(ValueAtIndex);
              v16 = _SCNetworkInterfaceGetHardwareAddress(v14);
              if (HardwareAddress == v16 || HardwareAddress && v16 && CFEqual(HardwareAddress, v16))
              {
                break;
              }

              if (v12 == ++v13)
              {
                v13 = 0;
                while (1)
                {
                  v14 = CFArrayGetValueAtIndex(v6, v13);
                  if (_SCNetworkConfigurationIsInterfaceNamerMappable(ValueAtIndex, v14))
                  {
                    goto LABEL_18;
                  }

                  if (v12 == ++v13)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }

LABEL_18:
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            CFDictionaryAddValue(Mutable, ValueAtIndex, v14);
            CFArrayRemoveValueAtIndex(v6, v13);
          }

LABEL_21:
          ;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v28 = __log_SCNetworkConfiguration();
      v29 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v28, v29))
      {
        v30 = _os_log_pack_size();
        v36 = v38 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        *_os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "No target built-in interfaces") = 0;
        __SC_log_send(6, v28, v29, v36);
      }
    }

    Mutable = 0;
LABEL_32:
    CFRelease(v3);
    if (v6)
    {
      CFRelease(v6);
    }

    return Mutable;
  }

  v18 = __log_SCNetworkConfiguration();
  v19 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v18, v19))
  {
    v20 = _os_log_pack_size();
    v26 = v38 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = __error();
    *_os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "No source built-in interfaces") = 0;
    __SC_log_send(6, v18, v19, v26);
  }

  v6 = 0;
  Mutable = 0;
  if (v3)
  {
    goto LABEL_32;
  }

  return Mutable;
}

uint64_t _SCNetworkMigrationDoServiceOrderMigration(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  context = 1;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  CFDictionaryApplyFunction(a1, preserve_service_order, &context);
  return context;
}

uint64_t _SCNetworkMigrationDoSystemMigration(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = &v50[-((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v13 = __error();
    *_os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "Copying system settings") = 0;
    __SC_log_send(5, v4, v5, v12);
  }

  if (!a2)
  {
    return 0;
  }

  HostName = SCPreferencesGetHostName(a1);
  if (HostName)
  {
    SCPreferencesSetHostName(a2, HostName);
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v15, v16))
    {
      v17 = _os_log_pack_size();
      v23 = &v50[-((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v24 = __error();
      *_os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "  copied HostName") = 0;
      __SC_log_send(5, v15, v16, v23);
    }
  }

  v25 = _SCPreferencesCopyLocalHostName(a1);
  if (v25)
  {
    v26 = v25;
    SCPreferencesSetLocalHostName(a2, v25);
    CFRelease(v26);
    v27 = __log_SCNetworkConfiguration();
    v28 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v27, v28))
    {
      v29 = _os_log_pack_size();
      v35 = &v50[-((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v36 = __error();
      *_os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "  copied LocalHostName") = 0;
      __SC_log_send(5, v27, v28, v35);
    }
  }

  v37 = _SCPreferencesCopyComputerName(a1, &v51);
  if (!v37)
  {
    return 1;
  }

  v38 = v37;
  SCPreferencesSetComputerName(a2, v37, v51);
  CFRelease(v38);
  v39 = __log_SCNetworkConfiguration();
  v40 = _SC_syslog_os_log_mapping(5);
  if (!__SC_log_enabled(5, v39, v40))
  {
    return 1;
  }

  v41 = _os_log_pack_size();
  v47 = &v50[-((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __error();
  *_os_log_pack_fill(v47, v41, *v48, &dword_1AD2AD000, "  copied ComputerName") = 0;
  __SC_log_send(5, v39, v40, v47);
  return 1;
}

uint64_t _SCNetworkConfigurationMigrateIsFilePresent(const __CFURL *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  memset(&v54, 0, sizeof(v54));
  if (!a1)
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &v54 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      *_os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "_SCNetworkConfigurationMigrateIsFilePresent: No path", *&v54.st_dev, *&v54.st_uid, *&v54.st_atimespec, *&v54.st_mtimespec, *&v54.st_ctimespec, *&v54.st_birthtimespec) = 0;
      __SC_log_send(5, v16, v17, v24);
    }

    return 0;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, v55, 1024))
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v26, v27))
    {
      v28 = _os_log_pack_size();
      v34 = &v54 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill(v34, v28, v35, &dword_1AD2AD000, "Cannot get file system representation for url: %@", *&v54.st_dev, *&v54.st_uid, *&v54.st_atimespec, *&v54.st_mtimespec, *&v54.st_ctimespec, *&v54.st_birthtimespec);
LABEL_14:
      *v36 = 138412290;
      *(v36 + 4) = a1;
      v37 = 5;
LABEL_15:
      __SC_log_send(v37, v26, v27, v34);
    }

    return 0;
  }

  if (stat(v55, &v54))
  {
    return 0;
  }

  if (!v54.st_size)
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v26, v27))
    {
      return 0;
    }

    v39 = _os_log_pack_size();
    v34 = &v54 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = __error();
    v46 = _os_log_pack_fill(v34, v39, *v45, &dword_1AD2AD000, "_SCNetworkConfigurationMigrateIsFilePresent: empty .plist: %@", *&v54.st_dev, *&v54.st_uid, *&v54.st_atimespec, *&v54.st_mtimespec, *&v54.st_ctimespec, *&v54.st_birthtimespec);
    *v46 = 138412290;
    *(v46 + 4) = a1;
    v37 = 6;
    goto LABEL_15;
  }

  v2 = CFStringCreateWithCString(0, v55, 0x8000100u);
  v3 = __SCPreferencesCreateForMigration(@"System Migration", v2);
  CFRelease(v2);
  if (!v3)
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v26, v27))
    {
      return 0;
    }

    v47 = _os_log_pack_size();
    v34 = &v54 - ((MEMORY[0x1EEE9AC00](v47, v48, v49, v50, v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = *__error();
    v36 = _os_log_pack_fill(v34, v47, v53, &dword_1AD2AD000, "_SCNetworkConfigurationMigrateIsFilePresent: bad .plist: %@", *&v54.st_dev, *&v54.st_uid, *&v54.st_atimespec, *&v54.st_mtimespec, *&v54.st_ctimespec, *&v54.st_birthtimespec);
    goto LABEL_14;
  }

  if (__SCPreferencesIsEmpty(v3))
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v4, v5))
    {
      v6 = _os_log_pack_size();
      v12 = &v54 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "_SCNetworkConfigurationMigrateIsFilePresent: effectively empty .plist: %@", *&v54.st_dev, *&v54.st_uid, *&v54.st_atimespec, *&v54.st_mtimespec, *&v54.st_ctimespec, *&v54.st_birthtimespec);
      *v14 = 138412290;
      *(v14 + 4) = a1;
      __SC_log_send(5, v4, v5, v12);
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  CFRelease(v3);
  return v15;
}

void _SCNetworkConfigurationCollectMissingService(const void *a1, void *a2, const __CFDictionary **a3)
{
  v6 = *a3;
  v5 = a3[1];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && _SCNetworkInterfaceIsBuiltin(a2) && !CFDictionaryContainsKey(v6, a1))
  {

    CFArrayAppendValue(v5, a2);
  }
}

__CFArray *_SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(const __SCPreferences *a1, int a2)
{
  v4 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    Mutable = 0;
    Companion = v5;
LABEL_11:
    CFRelease(Companion);
    return Mutable;
  }

  v7 = Count;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Companion = SCPreferencesCreateCompanion(a1, 0);
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
    if (_SCNetworkInterfaceIsBuiltin(ValueAtIndex) == a2)
    {
      Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, Companion, 0);
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(Copy);
    }
  }

  CFRelease(v5);
  if (Companion)
  {
    goto LABEL_11;
  }

  return Mutable;
}

const __CFDictionary *_SCNetworkInterfaceStorageCopyMaxUnitPerInterfaceType(const __SCPreferences *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        TypeID = SCNetworkInterfaceGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == TypeID)
        {
          IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
          v10 = CFNumberGetTypeID();
          if (IOInterfaceType && CFGetTypeID(IOInterfaceType) == v10)
          {
            if (CFDictionaryContainsKey(Mutable, IOInterfaceType) || (valuePtr = 0, Value = CFNumberCreate(0, kCFNumberIntType, &valuePtr), CFDictionaryAddValue(Mutable, IOInterfaceType, Value), CFRelease(Value), !Value))
            {
              Value = CFDictionaryGetValue(Mutable, IOInterfaceType);
            }

            IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(ValueAtIndex);
            v23 = CFNumberGetTypeID();
            if (IOInterfaceUnit && CFGetTypeID(IOInterfaceUnit) == v23 && CFNumberCompare(IOInterfaceUnit, Value, 0) == kCFCompareGreaterThan)
            {
              CFDictionarySetValue(Mutable, IOInterfaceType, IOInterfaceUnit);
            }
          }

          else
          {
            v12 = __log_SCNetworkConfiguration();
            v13 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v12, v13))
            {
              v14 = _os_log_pack_size();
              v20 = &v35[-((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0)];
              v21 = __error();
              *_os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "No interface type") = 0;
              __SC_log_send(6, v12, v13, v20);
            }
          }
        }
      }
    }

    CFRelease(v2);
  }

  else
  {
    v24 = __log_SCNetworkConfiguration();
    v25 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v24, v25))
    {
      v26 = _os_log_pack_size();
      v32 = &v35[-((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v33 = __error();
      *_os_log_pack_fill(v32, v26, *v33, &dword_1AD2AD000, "No interfaces") = 0;
      __SC_log_send(6, v24, v25, v32);
    }

    return 0;
  }

  return Mutable;
}

uint64_t _SCNetworkConfigurationIsInterfaceNamerMappable(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  IsBuiltin = _SCNetworkInterfaceIsBuiltin(a1);
  if (IsBuiltin != _SCNetworkInterfaceIsBuiltin(a2))
  {
    return 0;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  v6 = SCNetworkInterfaceGetInterfaceType(a2);
  if (InterfaceType == v6 || (v7 = v6, result = 0, InterfaceType) && v7 && (result = CFEqual(InterfaceType, v7), result))
  {
    IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix(a1);
    v10 = _SCNetworkInterfaceGetIOInterfaceNamePrefix(a2);
    if (IOInterfaceNamePrefix == v10 || (v11 = v10, result = 0, IOInterfaceNamePrefix) && v11 && (result = CFEqual(IOInterfaceNamePrefix, v11), result))
    {
      LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(a1);
      v13 = SCNetworkInterfaceGetLocalizedDisplayName(a2);
      if (LocalizedDisplayName == v13)
      {
        return 1;
      }

      v14 = v13;
      if (LocalizedDisplayName)
      {
        if (v13 && CFEqual(LocalizedDisplayName, v13))
        {
          return 1;
        }
      }

      return IsBuiltin && __SCNetworkConfigurationInterfaceNameIsEquiv(LocalizedDisplayName, v14);
    }
  }

  return result;
}

void _SCNetworkConfigurationCollectInterfaceStorageEntity(uint64_t a1, void *a2, uint64_t a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v48.length = CFArrayGetCount(*a3);
  v48.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v48, a2);
  if (FirstIndexOfValue != -1)
  {
    v7 = FirstIndexOfValue;
    ValueAtIndex = CFArrayGetValueAtIndex(*a3, FirstIndexOfValue);
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(ValueAtIndex);
    v10 = __SCNetworkInterfaceGetUserDefinedName(a2);
    if (UserDefinedName == v10 || (UserDefinedName ? (v11 = v10 == 0) : (v11 = 1), !v11 && CFEqual(UserDefinedName, v10)))
    {
      v12 = __log_SCNetworkConfiguration();
      v13 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v12, v13))
      {
        v14 = _os_log_pack_size();
        v20 = v47 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "Target interface already exists, not updating NetworkInterfaces.plist\n   %@");
        *v22 = 138412290;
        *(v22 + 4) = a2;
        __SC_log_send(7, v12, v13, v20);
      }

      return;
    }

    v23 = __log_SCNetworkConfiguration();
    v24 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v23, v24))
    {
      v25 = _os_log_pack_size();
      v31 = v47 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "Current interface morphed, replacing\n   %@");
      *v33 = 138412290;
      *(v33 + 4) = ValueAtIndex;
      __SC_log_send(7, v23, v24, v31);
    }

    CFArrayRemoveValueAtIndex(*a3, v7);
  }

  *(a3 + 16) = 1;
  v34 = __SCNetworkInterfaceCopyStorageEntity(a2);
  if (v34)
  {
    v35 = v34;
    v36 = __log_SCNetworkConfiguration();
    v37 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v36, v37))
    {
      v38 = _os_log_pack_size();
      v44 = v47 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = __error();
      v46 = _os_log_pack_fill(v44, v38, *v45, &dword_1AD2AD000, "adding network interface entity\n%@");
      *v46 = 138412290;
      *(v46 + 4) = v35;
      __SC_log_send(7, v36, v37, v44);
    }

    CFArrayAppendValue(*(a3 + 8), v35);
    CFRelease(v35);
  }
}

void SCNetworkMigrationMapSourceToTargetName(const __SCNetworkInterface *a1, const __SCNetworkInterface *a2, __CFDictionary *a3)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName)
  {
    if (CFGetTypeID(BSDName) == TypeID)
    {
      v7 = SCNetworkInterfaceGetBSDName(a2);
      v8 = CFStringGetTypeID();
      if (v7)
      {
        if (CFGetTypeID(v7) == v8 && !CFDictionaryContainsKey(a3, BSDName))
        {

          CFDictionaryAddValue(a3, BSDName, v7);
        }
      }
    }
  }
}

void ServiceMigrationAddOrReplace(SCNetworkServiceRef service, const __SCNetworkService *a2, const __SCPreferences **a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  if (*(a3 + 1) != 0)
  {
    TypeID = SCNetworkServiceGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        SCNetworkServiceGetName(a2);
        v10 = __log_SCNetworkConfiguration();
        v11 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v10, v11))
        {
          v12 = _os_log_pack_size();
          v43[0] = v43;
          v18 = v43 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
          v19 = __error();
          v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Removing [target] service: %@");
          *v20 = 138412290;
          *(v20 + 4) = a2;
          __SC_log_send(6, v10, v11, v18);
        }

        SCNetworkServiceRemove(a2);
      }
    }
  }

  SCNetworkServiceGetName(service);
  v21 = __log_SCNetworkConfiguration();
  v22 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v21, v22))
  {
    v23 = _os_log_pack_size();
    v29 = v43 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "Adding [source] service: %@");
    *v31 = 138412290;
    *(v31 + 4) = service;
    __SC_log_send(6, v21, v22, v29);
  }

  if (!__SCNetworkServiceMigrateNew(v5, service, v4, v6, v7))
  {
    SCNetworkServiceGetName(service);
    v32 = __log_SCNetworkConfiguration();
    v33 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v32, v33))
    {
      v34 = _os_log_pack_size();
      v40 = v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v40, v34, *v41, &dword_1AD2AD000, "*** adding [source] service failed: %@");
      *v42 = 138412290;
      *(v42 + 4) = service;
      __SC_log_send(6, v32, v33, v40);
    }
  }
}

void preserve_service_order(const __SCNetworkSet *a1, const __SCNetworkSet *a2, _BYTE *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    context = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v8 = CFArrayCreateMutable(0, 0, v6);
    ServiceOrder = SCNetworkSetGetServiceOrder(a1);
    if (ServiceOrder)
    {
      v10 = ServiceOrder;
      v11 = SCNetworkSetGetServiceOrder(a2);
      if (v11)
      {
        v12 = v11;
        *&context = 0;
        *(&context + 1) = v11;
        *&v43 = Mutable;
        *(&v43 + 1) = a3;
        v45.length = CFArrayGetCount(v10);
        v45.location = 0;
        CFArrayApplyFunction(v10, v45, create_migrated_order, &context);
        if (*a3)
        {
          *&v40 = *(a2 + 3);
          *(&v40 + 1) = v8;
          *&v41 = Mutable;
          *(&v41 + 1) = a3;
          v46.length = CFArrayGetCount(v12);
          v46.location = 0;
          CFArrayApplyFunction(v12, v46, create_non_migrated_service_list, &v40);
          if (CFArrayGetCount(v8) >= 1)
          {
            v13 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
              SCNetworkSetRemoveService(a2, ValueAtIndex);
              ++v13;
            }

            while (v13 < CFArrayGetCount(v8));
          }

          SCNetworkSetSetServiceOrder(a2, Mutable);
          if (CFArrayGetCount(v8) >= 1)
          {
            v16 = 0;
            *&v15 = 136315650;
            v37 = v15;
            do
            {
              v17 = CFArrayGetValueAtIndex(v8, v16);
              if (!SCNetworkSetAddService(a2, v17))
              {
                Interface = SCNetworkServiceGetInterface(v17);
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                v20 = __log_SCNetworkConfiguration();
                v21 = _SC_syslog_os_log_mapping(5);
                if (__SC_log_enabled(5, v20, v21))
                {
                  v22 = _os_log_pack_size();
                  v39 = &v37;
                  v28 = MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27);
                  v38 = v20;
                  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v30 = __error();
                  v31 = _os_log_pack_fill(v29, v22, *v30, &dword_1AD2AD000, "preserve_service_order():  could not add service: %s\n  serviceID = %@, interface = %@");
                  v32 = SCError();
                  v33 = Mutable;
                  v34 = SCErrorString(v32);
                  ServiceID = SCNetworkServiceGetServiceID(v17);
                  *v31 = v37;
                  v36 = @"?";
                  if (BSDName)
                  {
                    v36 = BSDName;
                  }

                  *(v31 + 4) = v34;
                  Mutable = v33;
                  *(v31 + 12) = 2112;
                  *(v31 + 14) = ServiceID;
                  *(v31 + 22) = 2112;
                  *(v31 + 24) = v36;
                  __SC_log_send(5, v38, v21, v29);
                }
              }

              ++v16;
            }

            while (v16 < CFArrayGetCount(v8));
          }
        }
      }
    }

    CFRelease(Mutable);
    CFRelease(v8);
  }
}

void create_migrated_order(const void *a1, uint64_t a2)
{
  if (**(a2 + 24))
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
    if (CFArrayGetCount(v4) >= 1)
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        if (CFEqual(a1, ValueAtIndex))
        {
          break;
        }

        if (++v5 >= CFArrayGetCount(v4))
        {
          return;
        }
      }

      CFArrayAppendValue(v3, a1);
    }
  }
}

void create_non_migrated_service_list(const __CFString *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*v2)
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    v6 = *(a2 + 16);
    v10.length = CFArrayGetCount(v6);
    v10.location = 0;
    if (CFArrayGetFirstIndexOfValue(v6, v10, a1) == -1)
    {
      v7 = SCNetworkServiceCopy(v5, a1);
      if (v7)
      {
        v8 = v7;
        CFArrayAppendValue(v4, v7);

        CFRelease(v8);
      }

      else
      {
        *v2 = 0;
      }
    }
  }
}

BOOL _SCHelperOpen(const __CFData *a1, mach_port_name_t *a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  *a2 = 0;
  v4 = _helper_server;
  v5 = MEMORY[0x1E69E9A60];
  if (!_helper_server)
  {
    do
    {
LABEL_3:
      pthread_mutex_lock(&_helper_lock);
      v7 = _helper_server;
      if (_helper_server)
      {
        if (v4 != _helper_server)
        {
          goto LABEL_8;
        }

        mach_port_deallocate(*v5, v4);
      }

      v8 = __SCHelperServerPort(v42 + 1);
      _helper_server = v8;
      if (!v8)
      {
        LODWORD(v42[0]) = HIDWORD(v42[0]);
        pthread_mutex_unlock(&_helper_lock);
        goto LABEL_13;
      }

      v7 = v8;
LABEL_8:
      pthread_mutex_unlock(&_helper_lock);
      v4 = v7;
    }

    while (!v7);
  }

  v6 = helperinit(v4, a2, v42);
  HIDWORD(v42[0]) = v6;
  if (v6 == 268435459)
  {
    goto LABEL_3;
  }

  if (v6)
  {
    LODWORD(v42[0]) = v6;
  }

LABEL_13:
  v9 = *a2;
  if (!v9)
  {
    v22 = __log_SCPreferences();
    v23 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v22, v23);
    if (!result)
    {
      return result;
    }

    v25 = _os_log_pack_size();
    v31 = v42 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "could not contact SCHelper: %s", v42[0]);
    v34 = SCErrorString(v42[0]);
    *v33 = 136315138;
    *(v33 + 4) = v34;
    __SC_log_send(5, v22, v23, v31);
    return 0;
  }

  if (!_SCHelperExec(v9, 1, a1, v42, 0))
  {
    v10 = __log_SCPreferences();
    v11 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v10, v11))
    {
      goto LABEL_23;
    }

    v35 = _os_log_pack_size();
    v18 = v42 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = __error();
    *_os_log_pack_fill(v18, v35, *v41, &dword_1AD2AD000, "could not send authorization") = 0;
LABEL_22:
    __SC_log_send(5, v10, v11, v18);
LABEL_23:
    if (*a2)
    {
      mach_port_deallocate(*v5, *a2);
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  if (LODWORD(v42[0]))
  {
    v10 = __log_SCPreferences();
    v11 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v10, v11))
    {
      goto LABEL_23;
    }

    v12 = _os_log_pack_size();
    v18 = v42 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "could not start SCHelper, status = %u", LODWORD(v42[0]));
    v21 = v42[0];
    *v20 = 67109120;
    v20[1] = v21;
    goto LABEL_22;
  }

  return 1;
}

uint64_t __SCHelperServerPort(_DWORD *a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  HIDWORD(v28[0]) = 0;
  getenv("SCHELPER_SERVER");
  v2 = bootstrap_look_up2();
  *a1 = v2;
  if (v2)
  {
    if (__SCHelperServerPort_once != -1)
    {
      __SCHelperServerPort_cold_1();
    }

    getpid();
    v3 = sandbox_check();
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = __log_SCPreferences();
        v5 = _SC_syslog_os_log_mapping(5);
        result = __SC_log_enabled(5, v4, v5);
        if (result)
        {
          v7 = _os_log_pack_size();
          v13 = v28 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = __error();
          *_os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "sandbox restricting SCHelper access") = 0;
          __SC_log_send(5, v4, v5, v13);
          return 0;
        }

        return result;
      }

      v15 = __log_SCPreferences();
      v16 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v15, v16))
      {
        v17 = _os_log_pack_size();
        v23 = v28 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = __error();
        v25 = _os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "sandbox_check() failed: %s", v28[0]);
        v26 = __error();
        v27 = strerror(*v26);
        *v25 = 136315138;
        *(v25 + 4) = v27;
        __SC_log_send(5, v15, v16, v23);
      }
    }
  }

  if (*a1)
  {
    return 0;
  }

  else
  {
    return HIDWORD(v28[0]);
  }
}

void _SCHelperClose(mach_port_name_t *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!_SCHelperExec(*a1, 9999, 0, 0, 0))
  {
    v2 = __log_SCPreferences();
    v3 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v2, v3))
    {
      v4 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      *_os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "could not send exit request") = 0;
      __SC_log_send(6, v2, v3, v10);
    }
  }

  if (*a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *a1);
    *a1 = 0;
  }
}

const void *SCNetworkSignatureCopyActiveIdentifierForAddress(uint64_t a1, uint64_t a2)
{
  cf[1] = *MEMORY[0x1E69E9840];
  NetworkServiceEntity = 0;
  cf[0] = 0;
  if (!a2 || *(a2 + 1) != 2 || *a2 != 16 || *(a2 + 4))
  {
    _SCErrorSet(1002);
    v2 = 0;
    v3 = 0;
LABEL_6:
    _SCErrorSet(1001);
    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  cf[0] = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"IPv4");
  v7 = MEMORY[0x1E695E9C0];
  v2 = CFArrayCreate(0, cf, 1, MEMORY[0x1E695E9C0]);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv4");
  v3 = CFArrayCreate(0, &NetworkServiceEntity, 1, v7);
  v8 = SCDynamicStoreCopyMultiple(0, v2, v3);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (!CFDictionaryGetCount(v8) || (Value = CFDictionaryGetValue(v9, cf[0]), TypeID = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID || (v12 = CFDictionaryGetValue(Value, @"PrimaryService"), v13 = CFStringGetTypeID(), !v12) || CFGetTypeID(v12) != v13)
  {
    v5 = 0;
LABEL_31:
    _SCErrorSet(1001);
    v4 = 0;
    goto LABEL_32;
  }

  v5 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", v12, @"IPv4");
  v14 = CFDictionaryGetValue(v9, v5);
  v15 = CFDictionaryGetTypeID();
  if (!v14)
  {
    goto LABEL_31;
  }

  if (CFGetTypeID(v14) != v15)
  {
    goto LABEL_31;
  }

  if (!CFDictionaryGetCount(v14))
  {
    goto LABEL_31;
  }

  v4 = CFDictionaryGetValue(v14, @"NetworkSignature");
  v16 = CFStringGetTypeID();
  if (!v4 || CFGetTypeID(v4) != v16)
  {
    goto LABEL_31;
  }

  CFRetain(v4);
LABEL_32:
  CFRelease(v9);
LABEL_7:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v4;
}

__CFArray *SCNetworkSignatureCopyActiveIdentifiers()
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *v44 = 0u;
  v0 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  values = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"Setup:", @"IPv4");
  v2 = CFArrayCreate(0, &values, 1, v0);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv4");
  CFArrayAppendValue(Mutable, NetworkServiceEntity);
  v4 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv6");
  CFArrayAppendValue(Mutable, v4);
  v5 = SCDynamicStoreCopyMultiple(0, v2, Mutable);
  if (!v5)
  {
    v26 = 0;
    v13 = 0;
    goto LABEL_42;
  }

  MutableCopy = v5;
  if (CFDictionaryGetCount(v5))
  {
    v40 = v2;
    v36 = Mutable;
    v7 = MutableCopy;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
    CFDictionaryRemoveValue(MutableCopy, values);
    cf = v7;
    Value = CFDictionaryGetValue(v7, values);
    TypeID = CFDictionaryGetTypeID();
    v42 = v4;
    if (Value && CFGetTypeID(Value) == TypeID && (v10 = CFDictionaryGetValue(Value, @"ServiceOrder"), v11 = CFArrayGetTypeID(), v10) && CFGetTypeID(v10) == v11)
    {
      Count = CFArrayGetCount(v10);
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v39 = Count;
      if (Count >= 1)
      {
        v14 = 0;
        range = 0;
        v37 = v10;
        v38 = NetworkServiceEntity;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
          v16 = CFStringGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v16)
          {
            v17 = 1;
            v18 = @"IPv4";
            do
            {
              v19 = v17;
              v20 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", ValueAtIndex, v18);
              v21 = CFDictionaryGetValue(MutableCopy, v20);
              v22 = CFDictionaryGetTypeID();
              if (v21 && CFGetTypeID(v21) == v22)
              {
                v23 = CFDictionaryGetValue(v21, @"NetworkSignature");
                v24 = CFStringGetTypeID();
                if (v23)
                {
                  if (CFGetTypeID(v23) == v24)
                  {
                    v50.location = 0;
                    v50.length = range;
                    if (!CFArrayContainsValue(v13, v50, v23))
                    {
                      CFArrayAppendValue(v13, v23);
                      ++range;
                    }
                  }
                }

                CFDictionaryRemoveValue(MutableCopy, v20);
              }

              CFRelease(v20);
              v17 = 0;
              v18 = @"IPv6";
            }

            while ((v19 & 1) != 0);
          }

          ++v14;
          NetworkServiceEntity = v38;
          v4 = v42;
          v10 = v37;
        }

        while (v14 != v39);
        v25 = range;
LABEL_25:
        v27 = CFDictionaryGetCount(MutableCopy);
        v2 = v40;
        if (!v27)
        {
          v26 = 0;
          goto LABEL_40;
        }

        v28 = v27;
        if (v27 < 11)
        {
          v26 = v44;
          CFDictionaryGetKeysAndValues(MutableCopy, 0, v44);
          if (v28 < 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v26 = malloc_type_malloc(8 * v27, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(MutableCopy, 0, v26);
        }

        for (i = 0; i != v28; ++i)
        {
          v30 = v26[i];
          v31 = CFDictionaryGetTypeID();
          if (v30)
          {
            if (CFGetTypeID(v30) == v31)
            {
              v32 = CFDictionaryGetValue(v30, @"NetworkSignature");
              v33 = CFStringGetTypeID();
              if (v32)
              {
                if (CFGetTypeID(v32) == v33)
                {
                  v51.location = 0;
                  v51.length = v25;
                  if (!CFArrayContainsValue(v13, v51, v32))
                  {
                    CFArrayAppendValue(v13, v32);
                    ++v25;
                  }
                }
              }
            }
          }
        }

        v2 = v40;
        v4 = v42;
LABEL_40:
        CFRelease(cf);
        Mutable = v36;
        if (!MutableCopy)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    v25 = 0;
    goto LABEL_25;
  }

  v26 = 0;
  v13 = 0;
LABEL_41:
  CFRelease(MutableCopy);
LABEL_42:
  if (values)
  {
    CFRelease(values);
  }

  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v26 && v26 != v44)
  {
    free(v26);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v13)
  {
    goto LABEL_58;
  }

  if (!CFArrayGetCount(v13))
  {
    CFRelease(v13);
LABEL_58:
    _SCErrorSet(1001);
    return 0;
  }

  return v13;
}

CFTypeRef SCNetworkSignatureCopyIdentifierForConnectedSocket(uint64_t a1, uint64_t a2)
{
  values[6] = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *keys = 0u;
  if (copyconninfo())
  {
    goto LABEL_2;
  }

  if ((MEMORY[0] & 2) == 0)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v7 = 1001;
    freeconninfo();
    goto LABEL_5;
  }

  v3 = MEMORY[8];
  if (MEMORY[8])
  {
    v9 = *(MEMORY[8] + 1);
    if (v9 == 2)
    {
      v10 = &kSCPropNetIPv4Addresses;
      v11 = 4;
    }

    else
    {
      if (v9 != 30)
      {
LABEL_2:
        v2 = 0;
        v3 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 1002;
        goto LABEL_3;
      }

      v10 = &kSCPropNetIPv6Addresses;
      v11 = 8;
    }

    v12 = *v10;
    v13 = &kSCEntNetIPv6;
    if (v9 == 2)
    {
      v13 = &kSCEntNetIPv4;
    }

    values[0] = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", *v13);
    v14 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values[0]);
    v6 = SCDynamicStoreCopyMultiple(0, 0, v14);
    CFRelease(v14);
    if (v6 && inet_ntop(v9, v3 + v11, values, 0x2Eu))
    {
      v4 = CFStringCreateWithCString(0, values, 0x600u);
      if (v4)
      {
        if (MEMORY[4] && if_indextoname(MEMORY[4], values))
        {
          v2 = CFStringCreateWithCString(0, values, 0x600u);
        }

        else
        {
          v2 = 0;
        }

        Count = CFDictionaryGetCount(v6);
        v16 = Count;
        if (Count >= 11)
        {
          v3 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(v6, v3, 0);
          goto LABEL_39;
        }

        v3 = keys;
        CFDictionaryGetKeysAndValues(v6, keys, 0);
        if (v16 >= 1)
        {
LABEL_39:
          v28 = v12;
          v17 = 0;
          while (1)
          {
            Value = CFDictionaryGetValue(v6, v3[v17]);
            TypeID = CFDictionaryGetTypeID();
            if (Value)
            {
              if (CFGetTypeID(Value) == TypeID)
              {
                v20 = CFDictionaryGetValue(Value, @"NetworkSignature");
                v21 = CFStringGetTypeID();
                if (v20)
                {
                  if (CFGetTypeID(v20) == v21)
                  {
                    if (!v2 || (v22 = CFDictionaryGetValue(Value, @"InterfaceName"), v23 = CFStringGetTypeID(), v22) && CFGetTypeID(v22) == v23 && CFEqual(v22, v2) && ((v24 = CFDictionaryGetValue(Value, @"ConfirmedInterfaceName"), v25 = CFStringGetTypeID(), !v24) || CFGetTypeID(v24) != v25 || CFEqual(v24, v2)))
                    {
                      v26 = CFDictionaryGetValue(Value, v28);
                      v27 = CFArrayGetTypeID();
                      if (v26)
                      {
                        if (CFGetTypeID(v26) == v27)
                        {
                          v35.length = CFArrayGetCount(v26);
                          v35.location = 0;
                          if (CFArrayContainsValue(v26, v35, v4))
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v17;
            v7 = 1001;
            if (v16 == v17)
            {
              v5 = 0;
              goto LABEL_3;
            }
          }

          v5 = CFRetain(v20);
          v7 = 0;
          goto LABEL_3;
        }
      }

      else
      {
        v2 = 0;
        v3 = 0;
      }
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
    }

    v5 = 0;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v7 = 1001;
LABEL_3:
  if (v2)
  {
    CFRelease(v2);
  }

LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3 && v3 != keys)
  {
    free(v3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    _SCErrorSet(v7);
  }

  return v5;
}

Boolean CNSetSupportedSSIDs(CFArrayRef ssidArray)
{
  v2 = CNSetSupportedSSIDs_dyfunc;
  if (!CNSetSupportedSSIDs_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNSetSupportedSSIDs");
      CNSetSupportedSSIDs_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNSetSupportedSSIDs_dyfunc;
      if (CNSetSupportedSSIDs_dyfunc)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:

  return (v2)(ssidArray);
}

Boolean CNMarkPortalOnline(CFStringRef interfaceName)
{
  v2 = CNMarkPortalOnline_dyfunc;
  if (!CNMarkPortalOnline_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNMarkPortalOnline");
      CNMarkPortalOnline_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNMarkPortalOnline_dyfunc;
      if (CNMarkPortalOnline_dyfunc)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:

  return (v2)(interfaceName);
}

Boolean CNMarkPortalOffline(CFStringRef interfaceName)
{
  v2 = CNMarkPortalOffline_dyfunc;
  if (!CNMarkPortalOffline_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNMarkPortalOffline");
      CNMarkPortalOffline_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNMarkPortalOffline_dyfunc;
      if (CNMarkPortalOffline_dyfunc)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:

  return (v2)(interfaceName);
}

CFArrayRef CNCopySupportedInterfaces(void)
{
  v0 = CNCopySupportedInterfaces_dyfunc;
  if (!CNCopySupportedInterfaces_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v0 = dlsym(__loadCaptiveNetwork_image, "__CNCopySupportedInterfaces");
      CNCopySupportedInterfaces_dyfunc = v0;
      if (v0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v0 = CNCopySupportedInterfaces_dyfunc;
      if (CNCopySupportedInterfaces_dyfunc)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:

  return (v0)();
}

CFDictionaryRef CNCopyCurrentNetworkInfo(CFStringRef interfaceName)
{
  v2 = CNCopyCurrentNetworkInfo_dyfunc;
  if (!CNCopyCurrentNetworkInfo_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNCopyCurrentNetworkInfo");
      CNCopyCurrentNetworkInfo_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNCopyCurrentNetworkInfo_dyfunc;
      if (CNCopyCurrentNetworkInfo_dyfunc)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:

  return (v2)(interfaceName);
}

void *____loadCaptiveNetwork_block_invoke()
{
  result = _SC_dlopen("/System/Library/PrivateFrameworks/CaptiveNetwork.framework/CaptiveNetwork");
  __loadCaptiveNetwork_image = result;
  return result;
}

uint64_t VPNTunnelSetStatus(uint64_t (**a1)(void))
{
  v1 = *a1;

  return v1();
}

uint64_t VPNTunnelSetPersistentData(uint64_t a1)
{
  v1 = *(a1 + 8);

  return v1();
}

uint64_t VPNTunnelFetchCredentialComplete(uint64_t a1)
{
  v1 = *(a1 + 24);

  return v1();
}

uint64_t VPNTunnelCopyPersistentData(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1();
}

uint64_t VPNTunnelAuthenticate(uint64_t a1)
{
  v1 = *(a1 + 32);

  return v1();
}

uint64_t VPNTunnelDisplayBanner(uint64_t a1)
{
  v1 = *(a1 + 40);

  return v1();
}

uint64_t VPNTunnelSetConfigurationEntities(uint64_t a1)
{
  v1 = *(a1 + 48);

  return v1();
}

uint64_t VPNTunnelSetTunnelSocket(uint64_t a1)
{
  v1 = *(a1 + 56);

  return v1();
}

uint64_t VPNTunnelCryptoEnable(uint64_t a1)
{
  v1 = *(a1 + 64);

  return v1();
}

uint64_t VPNTunnelCryptoDisable(uint64_t a1)
{
  v1 = *(a1 + 72);

  return v1();
}

uint64_t VPNTunnelCryptoAddConfigurations(uint64_t a1)
{
  v1 = *(a1 + 80);

  return v1();
}

uint64_t VPNTunnelCryptoRemoveConfigurations(uint64_t a1)
{
  v1 = *(a1 + 88);

  return v1();
}

uint64_t VPNTunnelCryptoGenerateIndex(uint64_t a1)
{
  v1 = *(a1 + 96);

  return v1();
}

uint64_t VPNTunnelCryptoStopDataTraffic(uint64_t a1)
{
  v1 = *(a1 + 104);

  return v1();
}

uint64_t VPNTunnelCryptoStartDataTraffic(uint64_t a1)
{
  v1 = *(a1 + 112);

  return v1();
}

uint64_t VPNTunnelClearConfiguration(uint64_t a1)
{
  v1 = *(a1 + 120);

  return v1();
}

uint64_t VPNTunnelIPCSendMessage(uint64_t a1)
{
  v1 = *(a1 + 128);

  return v1();
}

uint64_t VPNTunnelUpdatePlugin(uint64_t a1)
{
  v1 = *(a1 + 136);

  return v1();
}

uint64_t VPNTunnelEnvironmentEventComplete(uint64_t a1)
{
  v1 = *(a1 + 144);

  return v1();
}

uint64_t VPNTunnelCopySocketInfo(uint64_t a1)
{
  v1 = *(a1 + 160);

  return v1();
}

uint64_t VPNTunnelIncrementDataSent(uint64_t a1)
{
  v1 = *(a1 + 192);

  return v1();
}

uint64_t VPNTunnelIncrementDataReceived(uint64_t a1)
{
  v1 = *(a1 + 200);

  return v1();
}

void VPNTunnelLog(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a3)
  {
    v10 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, va);
    (*(a1 + 152))(a1, a2, v10);
    CFRelease(v10);
  }
}

uint64_t VPNTunnelCopySavedConfiguration(uint64_t a1)
{
  v1 = *(a1 + 168);

  return v1();
}

uint64_t VPNTunnelCopySavedVendorData(uint64_t a1)
{
  v1 = *(a1 + 176);

  return v1();
}

uint64_t VPNTunnelCopySavedConfigurationName(uint64_t a1)
{
  v1 = *(a1 + 184);

  return v1();
}

uint64_t SCBridgeInterfaceCopyAll(const __SCPreferences *a1)
{
  context[3] = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUsingDefaultPrefs(a1))
  {
    Companion = 0;
  }

  else
  {
    Companion = SCPreferencesCreateCompanion(a1, @"NetworkInterfaces.plist");
  }

  context[1] = Companion;
  context[2] = a1;
  context[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"VirtualNetworkInterfaces", @"Bridge");
  Value = SCPreferencesPathGetValue(a1, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v6 = CFGetAllocator(Value);
    Copy = CFDictionaryCreateCopy(v6, Value);
    CFDictionaryApplyFunction(Copy, add_configured_interface, context);
    CFRelease(Copy);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  return context[0];
}

void add_configured_interface(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  theArray[1] = *MEMORY[0x1E69E9840];
  theArray[0] = 0;
  Private = _SCBridgeInterfaceCreatePrivate(0, a1);
  if (!Private)
  {
    add_configured_interface_cold_1();
  }

  v6 = Private;
  *(Private + 80) = CFRetain(*(a3 + 16));
  Value = CFDictionaryGetValue(a2, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          v13 = CFStringGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v13)
          {
            add_interface(theArray, ValueAtIndex, *(a3 + 8));
          }
        }

        v14 = theArray[0];
        if (theArray[0])
        {
          __SCBridgeInterfaceSetMemberInterfaces(v6, theArray[0]);
          CFRelease(v14);
        }
      }
    }
  }

  v15 = CFDictionaryGetValue(a2, @"Options");
  v16 = CFDictionaryGetTypeID();
  if (v15)
  {
    if (CFGetTypeID(v15) == v16)
    {
      SCBridgeInterfaceSetOptions(v6, v15);
      v15 = CFDictionaryGetValue(v15, @"__AUTO__");
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = CFDictionaryGetValue(a2, @"UserDefinedName");
  v18 = CFStringGetTypeID();
  if (v17 && CFGetTypeID(v17) == v18)
  {
    SCBridgeInterfaceSetLocalizedDisplayName(v6, v17);
  }

  else
  {
    v19 = CFStringGetTypeID();
    if (v15)
    {
      if (CFGetTypeID(v15) == v19)
      {
        v6[6] = v15;
        v20 = v6[7];
        if (v20)
        {
          CFRelease(v20);
          v6[7] = 0;
        }
      }
    }
  }

  CFArrayAppendValue(*a3, v6);

  CFRelease(v6);
}

void __SCBridgeInterfaceListCollectMembers(const __CFArray *a1, __CFSet *a2, int a3)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v10 = ValueAtIndex;
      if (!a3 || !SCBridgeInterfaceGetAllowConfiguredMembers(ValueAtIndex))
      {
        MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v10);
        if (MemberInterfaces)
        {
          v12 = MemberInterfaces;
          v13 = CFArrayGetCount(MemberInterfaces);
          if (v13 >= 1)
          {
            v14 = v13;
            for (j = 0; j != v14; ++j)
            {
              v16 = CFArrayGetValueAtIndex(v12, j);
              CFSetAddValue(a2, v16);
            }
          }
        }
      }
    }
  }
}

uint64_t SCBridgeInterfaceGetAllowConfiguredMembers(void *a1)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")))
  {
    _SCErrorSet(1002);
    return 0;
  }

  v4 = a1[45];
  if (!v4)
  {
    CFBooleanGetTypeID();
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"AllowConfiguredMembers");
  v6 = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != v6)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

uint64_t SCBridgeInterfaceGetMemberInterfaces(const __SCNetworkInterface *a1)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
      if (CFEqual(InterfaceType, @"Bridge"))
      {
        return *(a1 + 44);
      }
    }
  }

  _SCErrorSet(1002);
  return 0;
}

__CFArray *SCBridgeInterfaceCopyAvailableMemberInterfaces(const __SCPreferences *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v4 = SCBridgeInterfaceCopyAll(a1);
  if (v4)
  {
    v5 = v4;
    __SCBridgeInterfaceListCollectMembers(v4, v3, 0);
    CFRelease(v5);
  }

  v6 = SCVLANInterfaceCopyAll(a1);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(ValueAtIndex);
        CFSetAddValue(v3, PhysicalInterface);
      }
    }

    CFRelease(v7);
  }

  v13 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v13)
  {
    v14 = v13;
    v15 = CFArrayGetCount(v13);
    if (v15 >= 1)
    {
      v16 = v15;
      for (j = 0; j != v16; ++j)
      {
        v18 = CFArrayGetValueAtIndex(v14, j);
        if (v18[344])
        {
          v19 = v18;
          if (!CFSetContainsValue(v3, v18))
          {
            CFArrayAppendValue(Mutable, v19);
          }
        }
      }
    }

    CFRelease(v14);
  }

  CFRelease(v3);
  return Mutable;
}

char *_SCBridgeInterfaceCopyActive()
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = 0;
  if (getifaddrs(&v53) == -1)
  {
    v18 = __error();
    _SCErrorSet(*v18);
    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v27 = &v50 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "getifaddrs() failed: %s", v50);
      v30 = __error();
      v31 = strerror(*v30);
      *v29 = 136315138;
      *(v29 + 4) = v31;
      __SC_log_send(5, v19, v20, v27);
    }

    return 0;
  }

  v0 = inet_dgram_socket();
  if (v0 == -1)
  {
    v32 = __error();
    _SCErrorSet(*v32);
    Mutable = 0;
    goto LABEL_33;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = v53;
  if (!v53)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v52 = 0;
    ifa_data = v3->ifa_data;
    if (ifa_data)
    {
      if (v3->ifa_addr->sa_family == 18 && *ifa_data == 209)
      {
        ifa_name = v3->ifa_name;
        v6 = strlen(ifa_name);
        if (v6 < 4 || (v7 = &ifa_name[v6], (ifa_name[v6 - 1] - 48) > 9) || (*(v7 - 2) - 48) > 9 || (*(v7 - 3) - 48) >= 0xA)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
          __strlcpy_chk();
          *&v55 = 6;
          v8 = malloc_type_malloc(0x50CuLL, 0xCB74951BuLL);
          if (v8)
          {
            v9 = v8;
            v10 = 1280;
            v11 = 1292;
            while (1)
            {
              bzero(v9, v11);
              *v9 = v10;
              *(v9 + 1) = v9 + 3;
              *(&v55 + 1) = 12;
              v56 = v9;
              if (ioctl(v1, 0xC028697BuLL, &v54) == -1)
              {
                free(v9);
                goto LABEL_18;
              }

              if (*v9 + 80 < v10)
              {
                break;
              }

              v10 *= 2;
              v11 = v10 | 0xC;
              v9 = reallocf(v9, v11);
              if (!v9)
              {
                goto LABEL_18;
              }
            }

            v12 = CFStringCreateWithCString(0, v3->ifa_name, 0x600u);
            Private = _SCBridgeInterfaceCreatePrivate(0, v12);
            CFRelease(v12);
            if (*v9 >= 0x50u)
            {
              v51 = Mutable;
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = CFStringCreateWithCString(0, (*(v9 + 1) + v14), 0x600u);
                add_interface(&v52, v16, 0);
                CFRelease(v16);
                ++v15;
                v14 += 80;
              }

              while (v15 < *v9 / 0x50uLL);
              v17 = v52;
              free(v9);
              Mutable = v51;
              if (v17)
              {
                __SCBridgeInterfaceSetMemberInterfaces(Private, v17);
                CFRelease(v17);
              }
            }

            else
            {
              free(v9);
            }

            CFArrayAppendValue(Mutable, Private);
            CFRelease(Private);
            goto LABEL_27;
          }

LABEL_18:
          if (*__error() != 16)
          {
            break;
          }
        }
      }
    }

LABEL_27:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v34 = __error();
  _SCErrorSet(*v34);
  v35 = __log_SCNetworkConfiguration();
  v36 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v35, v36))
  {
    v38 = _os_log_pack_size();
    v44 = &v50 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = __error();
    v46 = _os_log_pack_fill(v44, v38, *v45, &dword_1AD2AD000, "ifbifconf_copy(%s) failed: %s", v50, v51);
    v47 = v3->ifa_name;
    v48 = __error();
    v49 = strerror(*v48);
    *v46 = 136315394;
    *(v46 + 4) = v47;
    *(v46 + 12) = 2080;
    *(v46 + 14) = v49;
    __SC_log_send(5, v35, v36, v44);
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_28:
  close(v1);
LABEL_33:
  MEMORY[0x1B26F4BC0](v53);
  return Mutable;
}

uint64_t inet_dgram_socket()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = socket(2, 2, 0);
  if (v0 == -1)
  {
    v1 = __log_SCNetworkConfiguration();
    v2 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v1, v2))
    {
      v3 = _os_log_pack_size();
      v9 = v15 - ((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v3, *v10, &dword_1AD2AD000, "socket() failed: %s", v15[0]);
      v12 = __error();
      v13 = strerror(*v12);
      *v11 = 136315138;
      *(v11 + 4) = v13;
      __SC_log_send(3, v1, v2, v9);
    }
  }

  return v0;
}

void add_interface(CFMutableArrayRef *a1, const __CFString *a2, const __SCPreferences *cf)
{
  if (*a1)
  {
    if (!cf)
    {
LABEL_6:
      v6 = _SCNetworkInterfaceCreateWithBSDName(0, a2, 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *a1 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v6 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, cf, a2);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = v6;
  CFArrayAppendValue(*a1, v6);

  CFRelease(v7);
}

uint64_t __SCBridgeInterfaceSetMemberInterfaces(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (!*(a1 + 80))
  {
    v13 = 1;
LABEL_16:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, *(a1 + 80), *(a1 + 96));
        CFArrayAppendValue(Mutable, Copy);
        CFRelease(Copy);
      }
    }

    CFRelease(*(a1 + 352));
    *(a1 + 352) = Mutable;
    return v13;
  }

  v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
  Value = SCPreferencesPathGetValue(*(a1 + 80), v5);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    CFRelease(v5);
    _SCErrorSet(1001);
    return 0;
  }

  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      v10 = CFArrayGetValueAtIndex(theArray, j);
      BSDName = SCNetworkInterfaceGetBSDName(v10);
      CFArrayAppendValue(v8, BSDName);
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  CFDictionarySetValue(MutableCopy, @"Interfaces", v8);
  CFRelease(v8);
  if (CFEqual(Value, MutableCopy))
  {
    v13 = 1;
  }

  else
  {
    v13 = SCPreferencesPathSetValue(*(a1 + 80), v5, MutableCopy);
  }

  CFRelease(MutableCopy);
  CFRelease(v5);
  if (v13)
  {
    goto LABEL_16;
  }

  return v13;
}

uint64_t SCBridgeInterfaceCreate(const void *a1)
{
  if (!a1)
  {
    _SCErrorSet(1002);
    return 0;
  }

  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"bridge%ld", 0);
  v4 = CFStringCreateWithFormat(v2, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", v3);
  if (SCPreferencesPathGetValue(a1, v4))
  {
    v5 = 1;
    do
    {
      CFRelease(v4);
      CFRelease(v3);
      v3 = CFStringCreateWithFormat(v2, 0, @"bridge%ld", v5);
      v4 = CFStringCreateWithFormat(v2, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", v3);
      ++v5;
    }

    while (SCPreferencesPathGetValue(a1, v4));
  }

  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreate(v2, 0, 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"Interfaces", v7);
  CFRelease(v7);
  v8 = SCPreferencesPathSetValue(a1, v4, Mutable);
  CFRelease(Mutable);
  CFRelease(v4);
  if (!v8)
  {
    CFRelease(v3);
    return 0;
  }

  Private = _SCBridgeInterfaceCreatePrivate(v2, v3);
  CFRelease(v3);
  *(Private + 80) = CFRetain(a1);
  return Private;
}

uint64_t SCBridgeInterfaceRemove(SCPreferencesRef *a1)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")) && a1[10])
  {
    BSDName = SCNetworkInterfaceGetBSDName(a1);
    v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", BSDName);
    v6 = SCPreferencesPathRemoveValue(a1[10], v5);
    CFRelease(v5);
    return v6;
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t SCBridgeInterfaceGetOptions(const __SCNetworkInterface *a1)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
      if (CFEqual(InterfaceType, @"Bridge"))
      {
        return *(a1 + 45);
      }
    }
  }

  _SCErrorSet(1002);
  return 0;
}

uint64_t SCBridgeInterfaceSetMemberInterfaces(const __SCPreferences **a1, const void *a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1)
  {
    goto LABEL_15;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_15;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (!CFEqual(InterfaceType, @"Bridge"))
  {
    goto LABEL_15;
  }

  AllowConfiguredMembers = SCBridgeInterfaceGetAllowConfiguredMembers(a1);
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = CFArrayGetTypeID();
  if (CFGetTypeID(a2) != v6)
  {
LABEL_15:
    v15 = 1002;
LABEL_16:
    _SCErrorSet(v15);
    return 0;
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      v11 = SCNetworkInterfaceGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v11 || !SCNetworkInterfaceGetBSDName(ValueAtIndex))
      {
        goto LABEL_15;
      }
    }

    while (v8 != ++v9);
  }

LABEL_12:
  if (!a1[10])
  {
    goto LABEL_44;
  }

  MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(a1);
  v13 = MemberInterfaces;
  if (MemberInterfaces)
  {
    v14 = CFArrayGetCount(MemberInterfaces);
  }

  else
  {
    v14 = 0;
  }

  v17 = SCBridgeInterfaceCopyAvailableMemberInterfaces(a1[10]);
  v18 = v17;
  if (v17)
  {
    v19 = CFArrayGetCount(v17);
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v19 = 0;
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  v20 = CFArrayGetCount(a2);
  if (v20 >= 1)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = CFArrayGetValueAtIndex(a2, v22);
      if (!v13)
      {
        break;
      }

      v29.location = 0;
      v29.length = v14;
      v25 = CFArrayContainsValue(v13, v29, v24);
      if (v18 && !v25)
      {
        goto LABEL_30;
      }

      if (!v25)
      {
        v26 = 1002;
        if (v18)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

LABEL_35:
      if (v21 == ++v22)
      {
        goto LABEL_38;
      }
    }

    if (!v18)
    {
      v26 = 1002;
      goto LABEL_40;
    }

LABEL_30:
    v30.location = 0;
    v30.length = v19;
    if (!CFArrayContainsValue(v18, v30, v24))
    {
      v26 = 1002;
      goto LABEL_39;
    }

    if (!AllowConfiguredMembers && (v23 || (v23 = __SCNetworkServiceCopyAllEnabled(a1[10])) != 0))
    {
      if (__SCNetworkServiceExistsForInterface(v23, v24))
      {
        v26 = 1005;
        goto LABEL_39;
      }
    }

    goto LABEL_35;
  }

LABEL_37:
  v23 = 0;
LABEL_38:
  v26 = 0;
  if (v18)
  {
LABEL_39:
    CFRelease(v18);
  }

LABEL_40:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v26)
  {
    v15 = v26;
    goto LABEL_16;
  }

LABEL_44:

  return __SCBridgeInterfaceSetMemberInterfaces(a1, a2);
}

uint64_t SCBridgeInterfaceSetLocalizedDisplayName(uint64_t a1, const __CFString *a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")) || a2 && (v6 = CFStringGetTypeID(), CFGetTypeID(a2) != v6))
  {
    v12 = 1002;
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
    Value = SCPreferencesPathGetValue(*(a1 + 80), v7);
    v9 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      v11 = MutableCopy;
      if (a2)
      {
        CFDictionarySetValue(MutableCopy, @"UserDefinedName", a2);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
      }

      if (CFEqual(Value, v11))
      {
        v13 = 1;
      }

      else
      {
        v13 = SCPreferencesPathSetValue(*(a1 + 80), v7, v11);
      }

      CFRelease(v11);
      CFRelease(v7);
      if (!v13)
      {
        return v13;
      }

      goto LABEL_21;
    }

    CFRelease(v7);
    v12 = 1001;
LABEL_12:
    _SCErrorSet(v12);
    return 0;
  }

  v13 = 1;
LABEL_21:
  v15 = *(a1 + 40);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 40) = 0;
  }

  if (a2)
  {
    *(a1 + 40) = CFStringCreateCopy(0, a2);
  }

  return v13;
}

uint64_t SCBridgeInterfaceSetOptions(const void *a1, const __CFDictionary *a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")) && (!a2 || (v6 = CFDictionaryGetTypeID(), CFGetTypeID(a2) == v6)))
  {

    return __SCBridgeInterfaceSetOptions(a1, a2);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t __SCBridgeInterfaceSetOptions(uint64_t a1, CFDictionaryRef theDict)
{
  value[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    v20 = 1;
LABEL_15:
    v21 = *(a1 + 360);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 360) = 0;
    }

    if (theDict)
    {
      value[0] = 0;
      *(a1 + 360) = CFDictionaryCreateCopy(0, theDict);
      if (!*(a1 + 40))
      {
        if (CFDictionaryGetValueIfPresent(theDict, @"__AUTO__", value))
        {
          v23 = value[0];
          TypeID = CFStringGetTypeID();
          if (v23)
          {
            if (CFGetTypeID(v23) == TypeID)
            {
              *(a1 + 48) = value[0];
              v25 = *(a1 + 56);
              if (v25)
              {
                CFRelease(v25);
                *(a1 + 56) = 0;
              }
            }
          }
        }
      }
    }

    return v20;
  }

  v4 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
  v5 = SCPreferencesPathGetValue(*(a1 + 80), v4);
  v6 = CFDictionaryGetTypeID();
  if (v5 && CFGetTypeID(v5) == v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
    v8 = MutableCopy;
    if (theDict)
    {
      CFDictionarySetValue(MutableCopy, @"Options", theDict);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Options");
    }

    if (CFEqual(v5, v8))
    {
      v20 = 1;
    }

    else
    {
      v20 = SCPreferencesPathSetValue(*(a1 + 80), v4, v8);
    }

    CFRelease(v8);
    CFRelease(v4);
    if (!v20)
    {
      return v20;
    }

    goto LABEL_15;
  }

  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v9, v10))
  {
    v11 = _os_log_pack_size();
    v17 = value - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "%s: bad preferences", value[0]);
    *v19 = 136315138;
    *(v19 + 4) = "__SCBridgeInterfaceSetOptions";
    __SC_log_send(5, v9, v10, v17);
  }

  CFRelease(v4);
  _SCErrorSet(1001);
  return 0;
}

uint64_t __SCBridgeInterfaceSetAutoConfigure(uint64_t a1, int a2)
{
  v4 = *(a1 + 360);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = 1;
    if (a2)
    {
LABEL_3:
      CFDictionaryRemoveValue(MutableCopy, @"AutoConfigure");
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CFDictionarySetValue(MutableCopy, @"AutoConfigure", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
LABEL_4:
    v6 = CFEqual(v4, MutableCopy) == 0;
  }

LABEL_5:
  if (v6)
  {
    v7 = __SCBridgeInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v7 = 1;
  }

  CFRelease(MutableCopy);
  return v7;
}

uint64_t __SCBridgeInterfaceGetAutoConfigure(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    CFBooleanGetTypeID();
    return 1;
  }

  Value = CFDictionaryGetValue(v1, @"AutoConfigure");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 1;
  }

  return CFBooleanGetValue(Value);
}

uint64_t SCBridgeInterfaceSetAllowConfiguredMembers(CFDictionaryRef *a1, int a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")))
  {
    _SCErrorSet(1002);
    return 0;
  }

  v6 = a1[45];
  if (v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1[45]);
    v8 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_13:
    CFDictionaryRemoveValue(MutableCopy, @"AllowConfiguredMembers");
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = 1;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_6:
  CFDictionarySetValue(MutableCopy, @"AllowConfiguredMembers", *MEMORY[0x1E695E4D0]);
  if (v6)
  {
LABEL_7:
    v8 = CFEqual(v6, MutableCopy) == 0;
  }

LABEL_8:
  if (v8)
  {
    v9 = __SCBridgeInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v9 = 1;
  }

  CFRelease(MutableCopy);
  return v9;
}

uint64_t _SCBridgeInterfaceUpdateConfiguration(const __SCPreferences *a1)
{
  if (!a1)
  {
    _SCErrorSet(1002);
    return 0;
  }

  v2 = SCBridgeInterfaceCopyAll(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v6 = _SCBridgeInterfaceCopyActive();
  v61 = v3;
  v62 = Count;
  v63 = a1;
  theArray = v6;
  if (!v6)
  {
    v60 = 0;
    v67 = 0;
LABEL_34:
    v5 = 1;
    v9 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v7 = v6;
  v67 = CFArrayGetCount(v6);
  if (v67 < 1)
  {
    v60 = 0;
    goto LABEL_34;
  }

  v8 = 0;
  v9 = 0xFFFFFFFFLL;
  v5 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (Count >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = CFArrayGetValueAtIndex(v3, v12);
        v14 = SCNetworkInterfaceGetBSDName(v13);
        if (CFEqual(BSDName, v14))
        {
          break;
        }

        if (Count == ++v12)
        {
          goto LABEL_13;
        }
      }

      MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v13);
      v17 = MemberInterfaces;
      if (MemberInterfaces)
      {
        v18 = CFArrayGetCount(MemberInterfaces);
      }

      else
      {
        v18 = 0;
      }

      v19 = SCBridgeInterfaceGetMemberInterfaces(ValueAtIndex);
      if (v19)
      {
        v20 = v19;
        v21 = CFArrayGetCount(v19);
        if (v21 >= 1)
        {
          v22 = v21;
          v23 = 0;
          while (1)
          {
            v24 = CFArrayGetValueAtIndex(v20, v23);
            if (!v18 || (v69.location = 0, v69.length = v18, !CFArrayContainsValue(v17, v69, v24)))
            {
              if (v9 == -1)
              {
                v9 = inet_dgram_socket();
                if (v9 == -1)
                {
                  goto LABEL_92;
                }
              }

              v25 = SCNetworkInterfaceGetBSDName(v24);
              if (!__bridge_remove_interface(v9, BSDName, v25))
              {
                v5 = 0;
              }
            }

            if (v22 == ++v23)
            {
              goto LABEL_30;
            }
          }
        }
      }

      goto LABEL_30;
    }

LABEL_13:
    if (v9 == -1)
    {
      v9 = inet_dgram_socket();
      if (v9 == -1)
      {
        break;
      }
    }

    if (!__destroyInterface(v9, BSDName))
    {
      v15 = __error();
      _SCErrorSet(*v15);
      v5 = 0;
    }

LABEL_30:
    ++v8;
    v7 = theArray;
    v3 = v61;
    Count = v62;
    if (v8 == v67)
    {
      v60 = 1;
LABEL_35:
      if (Count < 1)
      {
        goto LABEL_93;
      }

      v26 = 0;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v3, v26);
        AllowConfiguredMembers = SCBridgeInterfaceGetAllowConfiguredMembers(v27);
        v29 = SCNetworkInterfaceGetBSDName(v27);
        v30 = SCBridgeInterfaceGetMemberInterfaces(v27);
        v31 = v30;
        v64 = v26;
        v65 = AllowConfiguredMembers;
        if (v30)
        {
          v32 = CFArrayGetCount(v30);
        }

        else
        {
          v32 = 0;
        }

        if (!v60)
        {
LABEL_47:
          if (v9 == -1)
          {
            v9 = inet_dgram_socket();
            if (v9 == -1)
            {
              goto LABEL_92;
            }
          }

          if (__createInterface(v9, v29))
          {
            if (v32 >= 1)
            {
              v39 = 0;
              v40 = v65 == 0;
              do
              {
                v41 = CFArrayGetValueAtIndex(v31, v39);
                if (*(v41 + 344))
                {
                  v42 = v41;
                  if (v40)
                  {
                    HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(v41);
                    if (!__bridge_set_mac(v9, v29, HardwareAddress))
                    {
                      v5 = 0;
                    }
                  }

                  v44 = SCNetworkInterfaceGetBSDName(v42);
                  v40 = 0;
                  if (!__bridge_add_interface(v63, v9, v29, v44))
                  {
                    v5 = 0;
                  }
                }

                ++v39;
              }

              while (v32 != v39);
            }
          }

          else
          {
            v45 = __error();
            _SCErrorSet(*v45);
            v5 = 0;
          }

          goto LABEL_89;
        }

        v33 = 0;
        while (1)
        {
          v34 = CFArrayGetValueAtIndex(theArray, v33);
          v35 = SCNetworkInterfaceGetBSDName(v34);
          v36 = SCBridgeInterfaceGetMemberInterfaces(v34);
          v37 = v36;
          v38 = v36 ? CFArrayGetCount(v36) : 0;
          if (CFEqual(v29, v35))
          {
            break;
          }

          if (v67 == ++v33)
          {
            goto LABEL_47;
          }
        }

        if (v31 == v37 || v31 && v37 && CFEqual(v31, v37))
        {
          goto LABEL_90;
        }

        if (v9 == -1)
        {
          v9 = inet_dgram_socket();
          if (v9 == -1)
          {
            goto LABEL_92;
          }
        }

        v46 = v65;
        if (!v65 && v32 >= 1 && v38 >= 1)
        {
          v47 = CFArrayGetValueAtIndex(v31, 0);
          v48 = CFArrayGetValueAtIndex(v37, 0);
          if (CFEqual(v47, v48))
          {
            v49 = 0;
LABEL_79:
            v53 = 0;
            v66 = v49;
            v54 = v46 == 0 && v49;
            do
            {
              v55 = CFArrayGetValueAtIndex(v31, v53);
              if (v66 || (v71.location = 0, v71.length = v38, !CFArrayContainsValue(v37, v71, v55)))
              {
                if (*(v55 + 344))
                {
                  if (v54)
                  {
                    v56 = _SCNetworkInterfaceGetHardwareAddress(v55);
                    if (!__bridge_set_mac(v9, v29, v56))
                    {
                      v5 = 0;
                    }
                  }

                  v57 = SCNetworkInterfaceGetBSDName(v55);
                  v54 = 0;
                  if (!__bridge_add_interface(v63, v9, v29, v57))
                  {
                    v5 = 0;
                  }
                }
              }

              ++v53;
            }

            while (v32 != v53);
            goto LABEL_89;
          }

          for (i = 0; i != v38; ++i)
          {
            v51 = CFArrayGetValueAtIndex(v37, i);
            v70.location = 0;
            v70.length = v32;
            if (CFArrayContainsValue(v31, v70, v51))
            {
              v52 = SCNetworkInterfaceGetBSDName(v51);
              if (!__bridge_remove_interface(v9, v35, v52))
              {
                v5 = 0;
              }
            }
          }

          v38 = 0;
          v46 = 0;
        }

        v49 = v38 == 0;
        if (v32 >= 1)
        {
          goto LABEL_79;
        }

LABEL_89:
        v3 = v61;
LABEL_90:
        v26 = v64 + 1;
        if (v64 + 1 == v62)
        {
          goto LABEL_93;
        }
      }
    }
  }

LABEL_92:
  v58 = __error();
  _SCErrorSet(*v58);
  v5 = 0;
  LODWORD(v9) = -1;
  v3 = v61;
LABEL_93:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v9 != -1)
  {
    close(v9);
  }

  return v5;
}

BOOL __bridge_remove_interface(int a1, const __CFString *a2, const __CFString *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  _SC_cfstring_to_cstring(a2, &v32, 16, 0x600u);
  v33 = xmmword_1AD3297C0;
  v34 = v35;
  memset(v35, 0, sizeof(v35));
  _SC_cfstring_to_cstring(a3, v35, 16, 0x600u);
  if (ioctl(a1, 0x8028697BuLL, &v32) == -1)
  {
    v18 = __error();
    _SCErrorSet(*v18);
    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v19, v20);
    if (result)
    {
      v21 = _os_log_pack_size();
      v27 = &v32 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "could not remove interface %@ from bridge %@: %s");
      v30 = __error();
      v31 = strerror(*v30);
      *v29 = 138412802;
      *(v29 + 4) = a3;
      *(v29 + 12) = 2112;
      *(v29 + 14) = a2;
      *(v29 + 22) = 2080;
      *(v29 + 24) = v31;
      __SC_log_send(3, v19, v20, v27);
      return 0;
    }
  }

  else
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v32 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%@: removed bridge member: %@");
      *v16 = 138412546;
      *(v16 + 4) = a2;
      *(v16 + 12) = 2112;
      *(v16 + 14) = a3;
      __SC_log_send(6, v6, v7, v14);
    }

    return 1;
  }

  return result;
}

BOOL __bridge_set_mac(int a1, const __CFString *a2, const __CFData *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  _SC_cfstring_to_cstring(a2, &v42, 16, 0x600u);
  Length = CFDataGetLength(a3);
  LOBYTE(v43) = Length;
  if (Length >= 0xFuLL)
  {
    _SCErrorSet(1002);
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v7, v8);
    if (!result)
    {
      return result;
    }

    v10 = _os_log_pack_size();
    v16 = &v42 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "%@: maformed MAC address (%d > %lu)");
    v19 = v43;
    *v18 = 138412802;
    *(v18 + 4) = a2;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v19;
    *(v18 + 18) = 2048;
    *(v18 + 20) = 14;
LABEL_10:
    __SC_log_send(3, v7, v8, v16);
    return 0;
  }

  v45.location = 0;
  v45.length = Length;
  CFDataGetBytes(a3, v45, &v43 + 2);
  if (ioctl(a1, 0x8020693CuLL, &v42) == -1)
  {
    v31 = __error();
    _SCErrorSet(*v31);
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v7, v8);
    if (!result)
    {
      return result;
    }

    v32 = _os_log_pack_size();
    v16 = &v42 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = __error();
    v39 = _os_log_pack_fill(v16, v32, *v38, &dword_1AD2AD000, "%@: could not set MAC address: %s");
    v40 = __error();
    v41 = strerror(*v40);
    *v39 = 138412546;
    *(v39 + 4) = a2;
    *(v39 + 12) = 2080;
    *(v39 + 14) = v41;
    goto LABEL_10;
  }

  v20 = __log_SCNetworkConfiguration();
  v21 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v20, v21))
  {
    v22 = _os_log_pack_size();
    v28 = &v42 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "%@: updated MAC address: %{ private }@");
    *v30 = 138412547;
    *(v30 + 4) = a2;
    *(v30 + 12) = 2113;
    *(v30 + 14) = a3;
    __SC_log_send(6, v20, v21, v28);
  }

  return 1;
}

BOOL __bridge_add_interface(const __SCPreferences *a1, uint64_t a2, const __CFString *a3, const __CFString *a4)
{
  v6 = a2;
  v37 = *MEMORY[0x1E69E9840];
  set_configured_mtu(a1, a2, a4);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  _SC_cfstring_to_cstring(a3, &v33, 16, 0x600u);
  v34 = xmmword_1AD3297D0;
  v35 = v36;
  memset(v36, 0, sizeof(v36));
  _SC_cfstring_to_cstring(a4, v36, 16, 0x600u);
  if (ioctl(v6, 0x8028697BuLL, &v33) == -1)
  {
    v19 = __error();
    _SCErrorSet(*v19);
    v20 = __log_SCNetworkConfiguration();
    v21 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v20, v21);
    if (result)
    {
      v22 = _os_log_pack_size();
      v28 = &v33 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "could not add interface %@ to bridge %@: %s");
      v31 = __error();
      v32 = strerror(*v31);
      *v30 = 138412802;
      *(v30 + 4) = a4;
      *(v30 + 12) = 2112;
      *(v30 + 14) = a3;
      *(v30 + 22) = 2080;
      *(v30 + 24) = v32;
      __SC_log_send(3, v20, v21, v28);
      return 0;
    }
  }

  else
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v7, v8))
    {
      v9 = _os_log_pack_size();
      v15 = &v33 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "%@: added bridge member: %@");
      *v17 = 138412546;
      *(v17 + 4) = a3;
      *(v17 + 12) = 2112;
      *(v17 + 14) = a4;
      __SC_log_send(6, v7, v8, v15);
    }

    return 1;
  }

  return result;
}