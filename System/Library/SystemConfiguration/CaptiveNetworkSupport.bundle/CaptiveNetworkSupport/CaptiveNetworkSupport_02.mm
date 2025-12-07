void CNScanListFilterSendClearResults(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    ScanListProcessCommand = createScanListProcessCommand(BSDName, *(a1 + 144));
    if (ScanListProcessCommand)
    {
      v5 = ScanListProcessCommand;
      CommandHandlerListApplyFunction(5u, CNScanListFilterAppendCommandApplier, ScanListProcessCommand);
      CFRelease(v5);
    }

    CFRelease(*(a1 + 144));
    *(a1 + 144) = 0;
  }
}

CFComparisonResult filterDictCompare(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"SSIDString");
  v5 = CFDictionaryGetValue(a2, @"SSIDString");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"BSSID");
    v8 = CFDictionaryGetValue(a2, @"BSSID");

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

void filterDictAnnotate(const __CFDictionary *a1, const void *a2, unsigned int a3)
{
  Value = CFDictionaryGetValue(a1, @"PluginNames");
  v7 = CFDictionaryGetValue(a1, @"__ConfidenceList");
  v8 = MEMORY[0x277CBECE8];
  if (Value)
  {
    Mutable = v7;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = -1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v12);
        if (CFEqual(ValueAtIndex, a2))
        {
          return;
        }

        if (v13 == -1)
        {
          v15 = CFArrayGetValueAtIndex(Mutable, v12);
          if (numberGetConfidence(v15) >= a3)
          {
            v13 = -1;
          }

          else
          {
            v13 = v12;
          }
        }

        if (v11 == ++v12)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = MEMORY[0x277CBF128];
    Value = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    CFDictionarySetValue(a1, @"PluginNames", Value);
    CFRelease(Value);
    Mutable = CFArrayCreateMutable(v16, 0, v17);
    CFDictionarySetValue(a1, @"__ConfidenceList", Mutable);
    CFRelease(Mutable);
  }

  v13 = -1;
LABEL_13:
  valuePtr = a3;
  v18 = CFNumberCreate(*v8, kCFNumberSInt32Type, &valuePtr);
  if (v13 == -1)
  {
    CFArrayAppendValue(Value, a2);
    CFArrayAppendValue(Mutable, v18);
  }

  else
  {
    CFArrayInsertValueAtIndex(Value, v13, a2);
    CFArrayInsertValueAtIndex(Mutable, v13, v18);
  }

  CFRelease(v18);
}

uint64_t NetworkArrayContainsNetwork(const __CFArray *a1, const __CFDictionary *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Value = CFDictionaryGetValue(a2, @"SSIDString");
    v9 = CFDictionaryGetValue(ValueAtIndex, @"SSIDString");
    result = CFEqual(Value, v9);
    if (result == 1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return result;
}

void CNScanListFilterAppendCommandApplier(uint64_t a1, const void *a2)
{
  Information = CommandHandlerGetInformation(a1);
  Value = CFDictionaryGetValue(Information, @"CommandList");
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    CNScanListFilterSetCommandList(a1, Mutable);
    CFRelease(Mutable);
LABEL_14:
    CFArrayAppendValue(Mutable, a2);

    CommandHandlerNotify(a1);
    return;
  }

  Mutable = Value;
  v7 = CFDictionaryGetValue(a2, @"InterfaceName");
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v11);
        v13 = CFDictionaryGetValue(ValueAtIndex, @"InterfaceName");
        if (!v13 || CFEqual(v13, v8))
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_14;
        }
      }

      CFArrayRemoveValueAtIndex(Mutable, v11);
    }

    goto LABEL_14;
  }

  logger = mysyslog_get_logger();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v15))
  {
    *v16 = 0;
    _os_log_impl(&dword_277237000, logger, v15, "if_name is NULL", v16, 2u);
  }
}

void CNScanListFilterSetCommandList(uint64_t a1, const void *a2)
{
  Information = CommandHandlerGetInformation(a1);
  if (Information)
  {
    if (a2)
    {

      CFDictionarySetValue(Information, @"CommandList", a2);
    }

    else
    {

      CFDictionaryRemoveValue(Information, @"CommandList");
    }
  }
}

void HandleInternetAccessProbeResult(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a1 + 224) = 0;
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    if (a2 > 0xA)
    {
      v6 = "<unknown>";
    }

    else
    {
      v6 = off_27A714918[a2];
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_277237000, logger, v5, "Internet Access Probe: result '%s' (%d)", &v7, 0x12u);
  }

  *(a1 + 217) = a2 == 0;
}

void _BrokenBackhaulMonitorComplete(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 4)
  {
    LOBYTE(v9) = (a2 & 2) != 0;
    if (a2)
    {
      CNInfoAuthenticated(a1, 4, &v9);
    }

    else if ((a2 >> 1))
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        NetIFWiFiNetworkSetCaptive(v3, 8u);

        CNInfoUpdateWiFiNetwork(a1);
      }
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v7 = *(a1 + 56);
      if (v7 <= 8)
      {
        v8 = AuthStateString_strings[v7];
      }

      else
      {
        v8 = "<unknown>";
      }

      v9 = 138412546;
      v10 = BSDName;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&dword_277237000, logger, v5, "CNPluginHandler %@: probe completed in %s state, ignoring", &v9, 0x16u);
    }
  }
}

void CNInfoAddExcludedDisplayID(uint64_t a1, void *key)
{
  if (!*(a1 + 96))
  {
    *(a1 + 96) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  v4 = CNPluginStateGet(key);
  if (CNPluginStateIsAuthenticationProvider(v4))
  {
    EvaluationProvider = CNPluginStateGetEvaluationProvider(v4);
    if (EvaluationProvider)
    {
      key = CNPluginStateGetDisplayID(EvaluationProvider);
    }
  }

  v6 = *(a1 + 96);

  CFArrayAppendValue(v6, key);
}

BOOL CNPluginAuthorize(_OWORD *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  *v14 = *a1;
  *&v14[16] = v2;
  if (audit_token_has_BOOLean_entitlement(v14, @"com.apple.developer.CaptiveNetworkPlugin"))
  {
    return 1;
  }

  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    *v14 = 138412290;
    *&v14[4] = @"com.apple.developer.CaptiveNetworkPlugin";
    _os_log_impl(&dword_277237000, logger, v4, "missing '%@' entitlement", v14, 0xCu);
  }

  v5 = a1[1];
  *v14 = *a1;
  *&v14[16] = v5;
  if (audit_token_has_BOOLean_entitlement(v14, @"com.apple.developer.networking.HotspotHelper"))
  {
    return 1;
  }

  v7 = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    *v14 = 138412290;
    *&v14[4] = @"com.apple.developer.networking.HotspotHelper";
    _os_log_impl(&dword_277237000, v7, v8, "missing '%@' entitlement", v14, 0xCu);
  }

  v9 = a1[1];
  *v14 = *a1;
  *&v14[16] = v9;
  if (audit_token_has_entitlement_value(v14, @"com.apple.developer.networking.networkextension", @"hotspot-provider"))
  {
    v10 = a1[1];
    *v14 = *a1;
    *&v14[16] = v10;
    if (!IsProcessHotspotEvaluationProvider(v14))
    {
      v11 = a1[1];
      *v14 = *a1;
      *&v14[16] = v11;
      return IsProcessHotspotAuthenticationProvider(v14) != 0;
    }

    return 1;
  }

  v12 = mysyslog_get_logger();
  v13 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v12, v13);
  if (result)
  {
    *v14 = 138412546;
    *&v14[4] = @"com.apple.developer.networking.networkextension";
    *&v14[12] = 2112;
    *&v14[14] = @"hotspot-provider";
    _os_log_impl(&dword_277237000, v12, v13, "missing '%@'=>'%@' entitlement", v14, 0x16u);
    return 0;
  }

  return result;
}

BOOL CNPluginRegister(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CNPluginStateRegister(a1);
  if (v2)
  {
    v3 = S_CNInfoHeadStorage;
    if (S_CNInfoHeadStorage)
    {
      v4 = v2;
      do
      {
        v5 = *(v3 + 64);
        if (*(v3 + 56) == 2 && v5 != 0)
        {
          CNPluginStateSetEvaluateCommandStatus(v4, 0);
          CNPluginStateIssueCommand(v4, v5);
        }

        if (*(v3 + 112) && !CNPluginStateIsAuthenticationProvider(v4))
        {
          CNPluginStateIssueCommand(v4, *(v3 + 112));
        }

        if (*(v3 + 56) == 3 && CNPluginStateIsAuthenticationProvider(v4) && v4 == *(v3 + 72))
        {
          if (v5)
          {
            CNPluginStateIssueCommand(v4, 0);
          }
        }

        v3 = *v3;
      }

      while (v3);
    }

    return 1;
  }

  else
  {
    logger = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v9);
    if (result)
    {
      PID = CommandHandlerGetPID(*a1);
      v11[0] = 67109120;
      v11[1] = PID;
      _os_log_impl(&dword_277237000, logger, v9, "failed to register pid %d", v11, 8u);
      return 0;
    }
  }

  return result;
}

void CNPluginRemove(uint64_t a1)
{
  Information = CommandHandlerGetInformation(a1);
  v2 = CNPluginStateGet(Information);
  if (v2)
  {

    CNPluginStateSetNotRunning(v2);
  }
}

uint64_t CNPluginProvideCommand(uint64_t *a1)
{
  Information = CommandHandlerGetInformation(*a1);
  v3 = CNPluginStateGet(Information);
  if (v3)
  {
    a1[1] = CNPluginStateCopyCommandList(v3);
  }

  return 1;
}

const void *CNPluginProcessResponse(uint64_t *a1)
{
  Information = CommandHandlerGetInformation(*a1);
  result = CNPluginStateGet(Information);
  if (result)
  {
    v4 = a1[1];

    return CNPluginHandleResponse(result, v4);
  }

  return result;
}

uint64_t CNPluginProcessControl(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  Information = CommandHandlerGetInformation(*a1);
  v3 = CNPluginStateGet(Information);
  if (v3)
  {
    Value = CFDictionaryGetValue(*(a1 + 8), @"Type");
    TypeID = CFNumberGetTypeID();
    if (!Value)
    {
      return 0;
    }

    if (CFGetTypeID(Value) != TypeID)
    {
      return 0;
    }

    valuePtr = 0;
    if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      return 0;
    }

    if (valuePtr == 2)
    {
      IsAuthenticationProvider = CNPluginStateIsAuthenticationProvider(v3);
      if (IsAuthenticationProvider)
      {
        v3 = 0;
      }

      else
      {
        v16 = S_CNInfoHeadStorage;
        if (S_CNInfoHeadStorage)
        {
          Mutable = 0;
          v18 = *MEMORY[0x277CBED28];
          v19 = *MEMORY[0x277CBECE8];
          do
          {
            v30 = 0u;
            v31 = 0u;
            memset(buf, 0, sizeof(buf));
            BSDName = SCNetworkInterfaceGetBSDName(*(v16 + 32));
            if (*(v16 + 72) == v3)
            {
              v21 = NetIFCopyCurrentWiFiNetworkWithSignal(BSDName);
            }

            else
            {
              v21 = NetIFCopyCurrentWiFiNetwork(BSDName);
            }

            v22 = v21;
            networkAttributesInit(buf, v21, 1, 0);
            if (*(v16 + 72) == v3)
            {
              *(&v30 + 1) = v18;
            }

            v23 = SCNetworkInterfaceGetBSDName(*(v16 + 32));
            AuthCommand = createAuthCommand(v23, 0, buf);
            networkAttributesRelease(buf);
            if (v22)
            {
              CFRelease(v22);
            }

            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
            }

            CFArrayAppendValue(Mutable, AuthCommand);
            CFRelease(AuthCommand);
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          Mutable = 0;
        }

        *(a1 + 16) = Mutable;
        v3 = 1;
      }

      logger = mysyslog_get_logger();
      v26 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v26))
      {
        v27 = "is not";
        if (!IsAuthenticationProvider)
        {
          v27 = "is";
        }

        *buf = 138412546;
        *&buf[4] = Information;
        *&buf[12] = 2080;
        *&buf[14] = v27;
        _os_log_impl(&dword_277237000, logger, v26, "[%@] %s authorized to receive supported interfaces", buf, 0x16u);
      }
    }

    else
    {
      if (valuePtr != 1)
      {
        return 0;
      }

      v6 = *(a1 + 8);
      v7 = CFDictionaryGetValue(v6, @"InterfaceName");
      v8 = CFStringGetTypeID();
      if (!v7)
      {
        return 0;
      }

      if (CFGetTypeID(v7) != v8)
      {
        return 0;
      }

      v9 = CNInfoFind(v7);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      if (v9[9] != v3 || *(v9 + 14) != 4)
      {
        return 0;
      }

      v3 = CFDictionaryGetValue(v6, @"Network");
      v11 = CFDictionaryGetTypeID();
      if (v3)
      {
        if (CFGetTypeID(v3) != v11)
        {
          return 0;
        }

        if (!*(v10 + 40))
        {
LABEL_19:
          CNInfoLoggingOff(v10, 0);
          return 1;
        }

        v3 = CFDictionaryGetValue(v3, @"SSID");
        v12 = CFDataGetTypeID();
        if (v3)
        {
          if (CFGetTypeID(v3) == v12)
          {
            SSIDData = WiFiNetworkGetSSIDData();
            if (SSIDData)
            {
              if (CFEqual(v3, SSIDData))
              {
                goto LABEL_19;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return v3;
}

const void *CNPluginProcessAck(uint64_t *a1)
{
  Information = CommandHandlerGetInformation(*a1);
  result = CNPluginStateGet(Information);
  if (result)
  {
    v4 = a1[1];

    return CNPluginStateProcessCmdAck(result, v4);
  }

  return result;
}

uint64_t CNScanListFilterAuthorize(_OWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  has_BOOLean_entitlement = audit_token_has_BOOLean_entitlement(v6, @"com.apple.wifi.manager-access");
  if (!has_BOOLean_entitlement)
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      LODWORD(v6[0]) = 138412290;
      *(v6 + 4) = @"com.apple.wifi.manager-access";
      _os_log_impl(&dword_277237000, logger, v4, "missing '%@' entitlement", v6, 0xCu);
    }
  }

  return has_BOOLean_entitlement;
}

uint64_t CNScanListFilterRegister(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommandHandlerSetInformation(*a1, Mutable);
  CFRelease(Mutable);
  return 1;
}

uint64_t CNScanListFilterProvideCommand(uint64_t *a1)
{
  Information = CommandHandlerGetInformation(*a1);
  Value = CFDictionaryGetValue(Information, @"CommandList");
  if (Value)
  {
    a1[1] = CFRetain(Value);
    v4 = CommandHandlerGetInformation(*a1);
    if (v4)
    {
      CFDictionaryRemoveValue(v4, @"CommandList");
    }
  }

  return 1;
}

uint64_t CNScanListFilterProcessControl(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 8), @"Type");
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    valuePtr = 0;
    result = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    if (!result)
    {
      return result;
    }

    if (valuePtr == 1)
    {
      v5 = 1;
      goto LABEL_10;
    }

    if (valuePtr == 2)
    {
      v5 = 0;
LABEL_10:
      CNScanListFilterSetIsEnabled(*a1, v5);
      return 1;
    }
  }

  return 0;
}

void CNScanListFilterSetIsEnabled(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v6 = "is";
    if (!a2)
    {
      v6 = "is not";
    }

    v22 = 136315138;
    v23 = v6;
    _os_log_impl(&dword_277237000, logger, v5, "CNScanListFilterSetIsEnabled: %s enabled", &v22, 0xCu);
  }

  Information = CommandHandlerGetInformation(a1);
  if (Information)
  {
    v8 = Information;
    if (CFDictionaryContainsKey(Information, @"IsEnabled") != a2)
    {
      v9 = mysyslog_get_logger();
      v10 = _SC_syslog_os_log_mapping();
      v11 = os_log_type_enabled(v9, v10);
      if (a2)
      {
        if (v11)
        {
          PID = CommandHandlerGetPID(a1);
          v22 = 67109120;
          LODWORD(v23) = PID;
          _os_log_impl(&dword_277237000, v9, v10, "ScanListFilter ENABLE [pid %d]", &v22, 8u);
        }

        CFDictionarySetValue(v8, @"IsEnabled", *MEMORY[0x277CBED28]);
        if (!S_filter_request_count)
        {
          v13 = mysyslog_get_logger();
          v14 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v13, v14))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_277237000, v13, v14, "START monitoring scan results", &v22, 2u);
          }

          for (i = S_CNInfoHeadStorage; i; i = *i)
          {
            *(i + 128) = 0;
            BSDName = SCNetworkInterfaceGetBSDName(*(i + 32));
            NetIFEnableScanResults(BSDName);
          }
        }

        ++S_filter_request_count;
      }

      else
      {
        if (v11)
        {
          v17 = CommandHandlerGetPID(a1);
          v22 = 67109120;
          LODWORD(v23) = v17;
          _os_log_impl(&dword_277237000, v9, v10, "ScanListFilter DISABLE [pid %d]", &v22, 8u);
        }

        CFDictionaryRemoveValue(v8, @"IsEnabled");
        if (!--S_filter_request_count)
        {
          v18 = mysyslog_get_logger();
          v19 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v18, v19))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_277237000, v18, v19, "STOP monitoring scan results", &v22, 2u);
          }

          CNPluginStateListStopHotspotEvaluationProviders();
          CNPluginStateListApplyFunction(CNScanListFilterFlushResultsApplier, 0);
          for (j = S_CNInfoHeadStorage; j; j = *j)
          {
            v21 = SCNetworkInterfaceGetBSDName(*(j + 32));
            NetIFDisableScanResults(v21);
            CNInfoFlushFilterCommand(j);
          }
        }
      }
    }
  }
}

void CNInfoFlushFilterCommand(uint64_t a1)
{
  v2 = (a1 + 112);
  v1 = *(a1 + 112);
  if (v1)
  {
    CNPluginStateListRemoveCommand(v1);

    my_FieldSetRetainedCFType(v2, 0);
  }
}

void CNPluginHandlerNetworkInformationChanged()
{
  v51 = *MEMORY[0x277D85DE8];
  v0 = nwi_state_copy();
  if (!v0)
  {
    logger = mysyslog_get_logger();
    v2 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v2))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v2, "nwi_state_copy returned NULL", buf, 2u);
    }
  }

  cf = NetIFCopyAllServiceInformation();
  v3 = S_CNInfoHeadStorage;
  if (S_CNInfoHeadStorage)
  {
    while (1)
    {
      if (v0)
      {
        ifstate = nwi_state_get_ifstate();
        if (ifstate)
        {
          LOBYTE(ifstate) = nwi_ifstate_get_flags();
        }
      }

      else
      {
        LOBYTE(ifstate) = 0;
      }

      v5 = ifstate & 5;
      v6 = ifstate & 6;
      v7 = *(v3 + 232);
      v9 = v5 == 5 || v6 == 6;
      v10 = ~ifstate & 7;
      v11 = mysyslog_get_logger();
      v12 = _SC_syslog_os_log_mapping();
      v13 = os_log_type_enabled(v11, v12);
      if (v10)
      {
        if (v5 == 5)
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, v11, v12, "received nwi state change notification for DNS with IPv4", buf, 2u);
          }

          if (v7 == 1)
          {
LABEL_74:
            v44 = mysyslog_get_logger();
            v45 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v44, v45))
            {
              *buf = 0;
              _os_log_impl(&dword_277237000, v44, v45, "IPv6 Only probe is in progress, setting evaluation retry flag", buf, 2u);
            }

            *(v3 + 104) |= 2u;
            goto LABEL_77;
          }

          goto LABEL_35;
        }

        if (v6 == 6)
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, v11, v12, "received nwi state change notification for DNS with IPv6", buf, 2u);
          }

          if (v7 != 3)
          {
            if (!v7)
            {
              *(v3 + 232) = 1;
            }

LABEL_35:
            BSDName = SCNetworkInterfaceGetBSDName(*(v3 + 32));
            v15 = NetIFCopySignatures(cf, BSDName);
            v16 = 0;
            v17 = 1;
            goto LABEL_37;
          }
        }

        else
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, v11, v12, "received nwi state change notification with no DNS", buf, 2u);
          }

          *(v3 + 104) &= ~2u;
          *(v3 + 232) = 0;
          if (v9)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v11, v12, "received nwi state change notification for DNS with dual stack", buf, 2u);
        }

        if (v7 == 1)
        {
          goto LABEL_74;
        }

        if (v9)
        {
          goto LABEL_35;
        }
      }

      v17 = 0;
      v15 = 0;
      v16 = 1;
LABEL_37:
      v18 = mysyslog_get_logger();
      v19 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = SCNetworkInterfaceGetBSDName(*(v3 + 32));
        *buf = 138412546;
        v21 = "is not active";
        if (v17)
        {
          v21 = "is active";
        }

        v48 = v20;
        v49 = 2080;
        v50 = v21;
        _os_log_impl(&dword_277237000, v18, v19, "interface %@ %s", buf, 0x16u);
      }

      if (!v16)
      {
        v22 = *(v3 + 48);
        v23 = mysyslog_get_logger();
        v24 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = *(v3 + 56);
          v26 = "<unknown>";
          if (v25 <= 8)
          {
            v26 = AuthStateString_strings[v25];
          }

          *buf = 136315138;
          v48 = v26;
          _os_log_impl(&dword_277237000, v23, v24, "current captive state: [%s]", buf, 0xCu);
        }

        v27 = mysyslog_get_logger();
        v28 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v27, v28))
        {
          *buf = 138412290;
          v48 = v22;
          _os_log_impl(&dword_277237000, v27, v28, "old signatures: %@", buf, 0xCu);
        }

        v29 = mysyslog_get_logger();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          *buf = 138412290;
          v48 = v15;
          _os_log_impl(&dword_277237000, v29, v30, "new signatures: %@", buf, 0xCu);
        }

        if (v15)
        {
          if (v22)
          {
            v31 = my_CFArrayContainsAnyArrayValues(v22, v15);
            v32 = v31 == 0;
            v33 = v31 != 0;
LABEL_55:
            if (v32)
            {
              v36 = "starting";
            }

            else
            {
              v36 = "not starting";
            }
          }

          else
          {
            v33 = 0;
            v36 = "starting";
          }

          my_FieldSetRetainedCFType((v3 + 48), v15);
          v37 = mysyslog_get_logger();
          v38 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v37, v38))
          {
            *buf = 136315138;
            v48 = v36;
            _os_log_impl(&dword_277237000, v37, v38, "%s captive state machine", buf, 0xCu);
          }

          if (v33)
          {
            if (*(v3 + 56) <= 1u)
            {
              *(v3 + 232) = 0;
            }
          }

          else
          {
            v39 = *(v3 + 96);
            if (v39)
            {
              CFRelease(v39);
              *(v3 + 96) = 0;
            }

            CNInfoStopBrokenBackhaulMonitor(v3);
            *(v3 + 104) &= ~2u;
            CNInfoNetworkActive(v3);
          }

          goto LABEL_67;
        }

        v34 = *(v3 + 56) > 1u;
        v35 = v22 == 0;
        v33 = v34 && v35;
        v32 = !v34 || !v35;
        goto LABEL_55;
      }

      CNInfoSetWiFiAdvisory(v3, 1);
      CNInfoInactive(v3, 0);
LABEL_67:
      if (v15)
      {
        CFRelease(v15);
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_77;
      }
    }
  }

  v40 = mysyslog_get_logger();
  v41 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v40, v41))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v40, v41, "no Wi-Fi interfaces found", buf, 2u);
  }

  Current = CFRunLoopGetCurrent();
  CFRunLoopPerformBlock(Current, *MEMORY[0x277CBF058], &__block_literal_global_3);
  v43 = CFRunLoopGetCurrent();
  CFRunLoopWakeUp(v43);
LABEL_77:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v0)
  {
    nwi_state_release();
  }
}

void __CNPluginHandlerNetworkInformationChanged_block_invoke()
{
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_277237000, logger, v1, "checking for new Wi-Fi interfaces", v2, 2u);
  }

  NetIFCheckForNewInterfaces();
}

void CNInfoSetWiFiAdvisory(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = @"WiFi is unavailable";
  }

  else
  {
    v2 = @"WiFi is available";
  }

  if (*(a1 + 160) != a2)
  {
    v5 = SCNetworkInterfaceSetAdvisory();
    logger = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v7))
    {
      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v9 = "Set";
      if (!a2)
      {
        v9 = "Clear";
      }

      v11 = 138413058;
      v12 = BSDName;
      v13 = 2080;
      v14 = v9;
      v15 = 2112;
      v16 = v2;
      if (v5)
      {
        v10 = "";
      }

      else
      {
        v10 = " FAILED";
      }

      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_277237000, logger, v7, "%@: %sAdvisory '%@'%s", &v11, 0x2Au);
    }

    *(a1 + 160) = a2;
  }
}

void CNInfoNetworkActive(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v47 = 0;
  v48 = 0;
  BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
  v4 = NetIFCopyCurrentWiFiNetwork(BSDName);
  *(a1 + 40) = v4;
  if (v4 && (SSID = WiFiNetworkGetSSID(), *(a1 + 40)) && (v6 = SSID) != 0)
  {
    v7 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    v8 = networkCopyCaptivePortalAPIURL(v7);
    if (v8)
    {
      v9 = v8;
      NetIFWiFiNetworkSetCaptivePortalAPIURL(*(a1 + 40), v8);
      CFRelease(v9);
    }

    if (!NetIFWiFiNetworkIsCarPlay())
    {
      goto LABEL_14;
    }

    IsCarPlayOnly = NetIFWiFiNetworkIsCarPlayOnly();
    logger = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v12))
    {
      v13 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v14 = "CarPlay Only";
      *buf = 138412802;
      v50 = v13;
      if (!IsCarPlayOnly)
      {
        v14 = "CarPlay And Internet";
      }

      v51 = 2112;
      v52 = v6;
      v53 = 2080;
      v54 = v14;
      _os_log_impl(&dword_277237000, logger, v12, "%@: device is associated to CarPlay network SSID '%@' in %s mode", buf, 0x20u);
    }

    v15 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    NetIFSetCarPlayModeChangeCallBack(v15, CNPluginHandlerCarPlayModeChange, a1);
    if (!IsCarPlayOnly)
    {
LABEL_14:
      CNInfoSetWiFiAdvisory(a1, 0);
      IsProtected = NetIFWiFiNetworkIsProtected(*(a1 + 40));
      v17 = NetIFIsQuickProbeRequired();
      CacheEntry = CNInfoGetCacheEntry(a1);
      if (!CacheEntry)
      {
        v27 = 0;
        v28 = IsProtected;
        if (IsProtected)
        {
          v29 = "protected network";
        }

        else
        {
          v29 = "no cache entry";
        }

        goto LABEL_36;
      }

      v19 = CacheEntry;
      if (!NetCacheEntryGetIsCaptive(CacheEntry))
      {
        v27 = 0;
        v28 = v17 == 0;
        if (v17)
        {
          v29 = "MAC randomization requires a quick probe";
        }

        else
        {
          v29 = "cache indicates network not captive";
        }

        goto LABEL_36;
      }

      EvaluationProvider = CNEvaluatedNetworksGetEvaluationProvider(v6);
      DisplayID = NetCacheEntryGetDisplayID(v19);
      v22 = DisplayID;
      if (DisplayID)
      {
        v23 = CNPluginStateGet(DisplayID);
      }

      else
      {
        v23 = 0;
      }

      if (!CNPluginStateIsAuthenticationProvider(v23) || EvaluationProvider)
      {
        if (v23)
        {
          my_FieldSetRetainedCFType((a1 + 72), v23);
          v28 = 0;
          *(a1 + 80) = 2;
          v27 = 1;
          v29 = "cached captive network";
LABEL_36:
          IsCarPlayAndInternet = NetIFWiFiNetworkIsCarPlayAndInternet();
          v33 = !IsCarPlayAndInternet && v28;
          v34 = mysyslog_get_logger();
          v35 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
            v37 = "Never";
            if (v33)
            {
              v37 = "Default";
            }

            *buf = 138413058;
            v50 = v36;
            v51 = 2112;
            v52 = v6;
            v53 = 2080;
            v54 = v37;
            if (IsCarPlayAndInternet)
            {
              v38 = "CarPlay Wi-Fi network";
            }

            else
            {
              v38 = v29;
            }

            v55 = 2080;
            v56 = v38;
            _os_log_impl(&dword_277237000, v34, v35, "%@: SSID '%@' setting interface rank %s (%s)", buf, 0x2Au);
          }

          v39 = *(a1 + 32);
          if (v33)
          {
            NetIFSetRankDefault(v39);
          }

          else
          {
            NetIFSetRankNever(v39);
          }

          PassiveDetectNewNetwork();
          v47 = *MEMORY[0x277CBED28];
          v48 = 0;
          v40 = *(a1 + 224);
          *(a1 + 162) = 0;
          *(a1 + 164) = 0u;
          *(a1 + 180) = 0u;
          *(a1 + 200) = 0;
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          if (v40)
          {
            captive_agent_abort_probe((a1 + 224));
            *(a1 + 224) = 0;
          }

          if (v27)
          {
            CNInfoMaintaining(a1, 0, &v47);
          }

          else
          {
            v41 = CNEvaluatedNetworksGetEvaluationProvider(v6);
            if (v41)
            {
              v42 = v41;
              v43 = mysyslog_get_logger();
              v44 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v43, v44))
              {
                *buf = 138412546;
                v50 = v6;
                v51 = 2112;
                v52 = v42;
                _os_log_impl(&dword_277237000, v43, v44, "[%@] is pre-evaluated by [%@]", buf, 0x16u);
              }

              v45 = a1;
              v46 = 6;
            }

            else
            {
              v45 = a1;
              v46 = 0;
            }

            CNInfoEvaluating(v45, v46, &v47);
          }

          return;
        }
      }

      else
      {
        v30 = mysyslog_get_logger();
        v31 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v30, v31))
        {
          *buf = 138412546;
          v50 = v22;
          v51 = 2112;
          v52 = v6;
          _os_log_impl(&dword_277237000, v30, v31, "[%@] is no longer maintaining captive network [%@]", buf, 0x16u);
        }
      }

      NetCacheEntryDestroy(v19);
      v28 = 0;
      v27 = 0;
      v29 = "plugin no longer present";
      goto LABEL_36;
    }
  }

  else
  {
    v24 = mysyslog_get_logger();
    v25 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      *buf = 138412290;
      v50 = v26;
      _os_log_impl(&dword_277237000, v24, v25, "%@: WiFi network or SSID is NULL", buf, 0xCu);
    }

    CNInfoInactive(a1, 0);
  }
}

void CNPluginHandlerCarPlayModeChange(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v6 = "CarPlay And Internet";
    if (!a1)
    {
      v6 = "CarPlay Only Mode";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_277237000, logger, v5, "CarPlay mode changed to %s", &v7, 0xCu);
  }

  if (a1)
  {
    CNInfoNetworkActive(a2);
  }

  else
  {
    CNInfoInactive(a2, 0);
  }
}

void *CNInfoGet(const __CFString *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CNInfoFind(a1);
  if (!v2)
  {
    v3 = NetIFCopyNetworkInterface(a1);
    if (v3)
    {
      v4 = v3;
      v2 = malloc_type_malloc(0xF0uLL, 0x10E00408D8FEEA8uLL);
      *v2 = 0u;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *(v2 + 4) = 0u;
      *(v2 + 5) = 0u;
      *(v2 + 6) = 0u;
      *(v2 + 7) = 0u;
      *(v2 + 8) = 0u;
      *(v2 + 9) = 0u;
      *(v2 + 10) = 0u;
      *(v2 + 11) = 0u;
      *(v2 + 12) = 0u;
      *(v2 + 13) = 0u;
      *(v2 + 14) = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 4) = v4;
      CFStringGetCString(a1, v2 + 16, 16, 0x600u);
      v5 = S_CNInfoHeadStorage;
      *v2 = S_CNInfoHeadStorage;
      if (v5)
      {
        *(v5 + 8) = v2;
      }

      S_CNInfoHeadStorage = v2;
      *(v2 + 1) = &S_CNInfoHeadStorage;
      TimerCreate();
      *(v2 + 11) = v6;
      *(v2 + 17) = NetCacheCreate();
    }

    else
    {
      logger = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v8))
      {
        v10 = 138412290;
        v11 = a1;
        _os_log_impl(&dword_277237000, logger, v8, "NetIFCopyNetworkInterface(%@) failed", &v10, 0xCu);
      }

      return 0;
    }
  }

  return v2;
}

BOOL CNPluginStateIsHelperAppRunning(_BOOL8 result)
{
  if (result)
  {
    return *(result + 72) != 0;
  }

  return result;
}

uint64_t CNPluginStateSetEvaluateCommandStatus(uint64_t result, int a2)
{
  if (*(result + 136) != 3)
  {
    *(result + 136) = a2;
  }

  return result;
}

const void *CNPluginStateGet(void *key)
{
  result = S_plugins;
  if (S_plugins)
  {
    return CFDictionaryGetValue(S_plugins, key);
  }

  return result;
}

const void *CNEvaluatedNetworksGetEvaluationProvider(const void *a1)
{
  if (!S_evaluatedNetworks || !CFDictionaryGetCount(S_evaluatedNetworks))
  {
    return 0;
  }

  v2 = S_evaluatedNetworks;

  return CFDictionaryGetValue(v2, a1);
}

void CNPluginStateListInitialize()
{
  v0 = prefs_get();
  if (v0)
  {
    Value = SCPreferencesGetValue(v0, @"Plugins");
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      CFRetain(Value);
      CFDictionaryApplyFunction(Value, CNPluginStateLoadApplier, 0);
      CFRelease(Value);
    }

    Current = CFRunLoopGetCurrent();
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    if (DistributedCenter)
    {
      CFNotificationCenterAddObserver(DistributedCenter, Current, AppUninstallationCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorCoalesce);
    }

    else
    {
      logger = mysyslog_get_logger();
      v6 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v6))
      {
        *v8 = 0;
        _os_log_impl(&dword_277237000, logger, v6, "failed to get the distributed notification center", v8, 2u);
      }
    }

    v7 = CFRunLoopGetCurrent();
    InitHotspotProviderConfigurationChangeMonitor(v7, HandleHotspotProviderConfigurationChange);
  }
}

uint64_t prefs_get()
{
  v6 = *MEMORY[0x277D85DE8];
  if (!prefs_get_S_prefs)
  {
    prefs_get_S_prefs = SCPreferencesCreate(0, @"com.apple.captive.plugins.plist", @"com.apple.captive.plugins.plist");
    if (!prefs_get_S_prefs)
    {
      logger = mysyslog_get_logger();
      v1 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v1))
      {
        v2 = SCError();
        v4 = 136315138;
        v5 = SCErrorString(v2);
        _os_log_impl(&dword_277237000, logger, v1, "SCPreferencesCreate failed: %s", &v4, 0xCu);
      }
    }
  }

  return prefs_get_S_prefs;
}

void HandleHotspotProviderConfigurationChange(const void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, logger, v3, "received hotspot provider configuration change notification", buf, 2u);
  }

  if (a1 && (v4 = CFRetain(a1)) != 0)
  {
    v5 = v4;
    if (CFDictionaryGetCount(v4))
    {
      CFDictionaryApplyFunction(v5, ApplyProviderConfigurationsToPluginList, 0);
      *buf = v5;
      theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      CFDictionaryApplyFunction(S_plugins, UnconfiguredHotspotProviderCollector, buf);
      if (CFArrayGetCount(theArray) >= 1)
      {
        v6 = theArray;
        v26.length = CFArrayGetCount(theArray);
        v26.location = 0;
        CFArrayApplyFunction(v6, v26, UnconfiguredProviderRemovalApplier, 0);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

LABEL_31:
      CFRelease(v5);
      return;
    }

    v20 = v5;
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v19 = 1;
  }

  v7 = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    *v23 = 0;
    _os_log_impl(&dword_277237000, v7, v8, "no hotspot provider configurations found, removing all the provider states", v23, 2u);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(S_plugins, CNPluginStateListProviderListCollector, Mutable);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v11 = Count;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      if (S_plugins)
      {
        Value = CFDictionaryGetValue(S_plugins, ValueAtIndex);
      }

      else
      {
        Value = 0;
      }

      if ((*(Value + 32) & 0xFFFFFFFE) == 2)
      {
        Value[90] = 1;
        v15 = mysyslog_get_logger();
        v16 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v15, v16))
        {
          *v23 = 138412290;
          v24 = ValueAtIndex;
          _os_log_impl(&dword_277237000, v15, v16, "stopping [%@] due to its configuration removal", v23, 0xCu);
        }

        CNPluginStateClearProviderSession(Value, 1);
      }

      else
      {
        v17 = mysyslog_get_logger();
        v18 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v17, v18))
        {
          *v23 = 138412290;
          v24 = ValueAtIndex;
          _os_log_impl(&dword_277237000, v17, v18, "removing state and evaluated SSIDs for [%@] due to its configuration removal", v23, 0xCu);
        }

        if (S_plugins)
        {
          CFDictionaryRemoveValue(S_plugins, ValueAtIndex);
        }

        CNEvaluatedNetworksRemove(ValueAtIndex);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v5 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_31;
  }
}

uint64_t CNPluginStateBuiltinRegister(uint64_t a1)
{
  if (S_plugins && CFDictionaryGetValue(S_plugins, @"__BUILTIN__"))
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      LOWORD(v7.version) = 0;
      _os_log_impl(&dword_277237000, logger, v3, "built-in already registered", &v7, 2u);
    }

    return 0;
  }

  else
  {
    v4 = CNPluginStateAdd(@"__BUILTIN__");
    *(v4 + 16) = 1;
    *(v4 + 32) = CFRetain(@"__NAME__");
    *(v4 + 72) = a1;
    v7.version = 0;
    memset(&v7.retain, 0, 56);
    v7.info = v4;
    v7.perform = CNPluginStateBuiltinProcessSource;
    *(v4 + 80) = CFRunLoopSourceCreate(0, 0, &v7);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, *(v4 + 80), *MEMORY[0x277CBF058]);
  }

  return v4;
}

uint64_t CNPluginStateAdd(const void *a1)
{
  if (!__kCNPluginStateTypeID)
  {
    __kCNPluginStateTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 24) = CFRetain(a1);
  Mutable = S_plugins;
  if (!S_plugins)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    S_plugins = Mutable;
  }

  CFDictionarySetValue(Mutable, a1, Instance);
  CFRelease(Instance);
  return Instance;
}

void CNPluginStateBuiltinProcessSource(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      CNPluginHandleBuiltinEvaluateAck(a1, v2);
      v3 = *(a1 + 104);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 104) = 0;
      }
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      Count = CFArrayGetCount(*(a1 + 96));
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          CFArrayGetValueAtIndex(v4, i);
          CNPluginHandleBuiltinResponse();
        }
      }

      v8 = *(a1 + 96);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 96) = 0;
      }
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = CFArrayGetCount(*(a1 + 56));
      if (v10 >= 1)
      {
        v11 = v10;
        for (j = 0; j != v11; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, j);
          Value = CFDictionaryGetValue(ValueAtIndex, @"UniqueID");
          if (my_CFArrayPointerAddValue((a1 + 88), Value))
          {
            (*(a1 + 72))(ValueAtIndex);
          }
        }
      }
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v16))
    {
      *v17 = 0;
      _os_log_impl(&dword_277237000, logger, v16, "non-builtin trying to be builtin", v17, 2u);
    }
  }
}

void CNPluginStateBuiltinProvideResponse(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    my_CFArrayPointerAddValue((a1 + 96), a2);
    if (*(a1 + 16))
    {
      v3 = *(a1 + 80);
      if (v3)
      {

        CFRunLoopSourceSignal(v3);
      }
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, logger, v5, "non-builtin trying to provide response", v6, 2u);
    }
  }
}

void CNPluginStateBuiltinAckEvaluateCommand(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    my_FieldSetRetainedCFType((a1 + 104), a2);
    if (*(a1 + 16))
    {
      v3 = *(a1 + 80);
      if (v3)
      {

        CFRunLoopSourceSignal(v3);
      }
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, logger, v5, "non-builtin trying to ack", v6, 2u);
    }
  }
}

uint64_t CNPluginStateRegister(uint64_t *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(*a1);
  CommandHandlerGetAuditToken(*a1, &v62);
  v3 = DisplayIDCopy(PID);
  if (v3)
  {
    v4 = v3;
    *buf = v62;
    *&buf[16] = v63;
    v5 = IsProcessHotspotEvaluationProvider(buf);
    *buf = v62;
    *&buf[16] = v63;
    v6 = IsProcessHotspotAuthenticationProvider(buf);
    *buf = v62;
    *&buf[16] = v63;
    has_BOOLean_entitlement = audit_token_has_BOOLean_entitlement(buf, @"com.apple.developer.networking.HotspotHelper");
    v8 = has_BOOLean_entitlement;
    if (v5 && !has_BOOLean_entitlement)
    {
      logger = mysyslog_get_logger();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v10))
      {
        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 1024;
        *&buf[14] = PID;
        v11 = "unable to register evaluation provider [%@] (pid: %d) because of missing entitlement";
LABEL_38:
        _os_log_impl(&dword_277237000, logger, v10, v11, buf, 0x12u);
        goto LABEL_75;
      }

      goto LABEL_75;
    }

    if (v5 | v6)
    {
      v15 = mysyslog_get_logger();
      v16 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 1024;
        *&buf[14] = PID;
        _os_log_impl(&dword_277237000, v15, v16, "app extension [%@] (pid %d) is a valid hotspot provider", buf, 0x12u);
      }
    }

    v17 = a1[1];
    TypeID = CFDictionaryGetTypeID();
    if (v17 && CFGetTypeID(v17) == TypeID && v8 && (Value = CFDictionaryGetValue(a1[1], @"DisplayName"), v20 = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == v20)
    {
      CFRetain(Value);
    }

    else
    {
      Value = _AMCopyLocalizedApplicationNameForDisplayIdentifier(v4);
      if (Value)
      {
        v21 = 1;
      }

      else
      {
        v21 = (v5 | v6) != 0;
      }

      if (!v21)
      {
        logger = mysyslog_get_logger();
        v10 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v10))
        {
          *buf = 138412546;
          *&buf[4] = v4;
          *&buf[12] = 1024;
          *&buf[14] = PID;
          v11 = "can't get application name for %@ (%d)";
          goto LABEL_38;
        }

LABEL_75:
        v14 = 0;
LABEL_76:
        CFRelease(v4);
        return v14;
      }
    }

    if (v5 | v6)
    {
LABEL_23:
      CommandHandlerSetInformation(*a1, v4);
      if (S_plugins)
      {
        v22 = CFDictionaryGetValue(S_plugins, v4);
        v14 = v22;
        if (v22)
        {
          v23 = (v5 | v6) != 0;
        }

        else
        {
          v23 = 0;
        }

        if (!v23 || !v22[89])
        {
          if (v5 | v6)
          {
            if (!v22 || !v22[89])
            {
              goto LABEL_73;
            }
          }

          else if (!v22)
          {
            goto LABEL_56;
          }

          v22[88] = 0;
          if (!*(v22 + 9))
          {
            goto LABEL_80;
          }

          v40 = mysyslog_get_logger();
          v41 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v40, v41))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            v36 = "%@ trying to register again";
LABEL_71:
            v37 = v40;
            v38 = v41;
            v39 = 12;
LABEL_72:
            _os_log_impl(&dword_277237000, v37, v38, v36, buf, v39);
          }

LABEL_73:
          if (Value)
          {
            CFRelease(Value);
          }

          goto LABEL_75;
        }

        v24 = mysyslog_get_logger();
        v25 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v24, v25))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&dword_277237000, v24, v25, "hotspot provider [%@] is registered", buf, 0xCu);
        }

        v26 = *(v14 + 132);
        if (v26 == 12)
        {
          if (!v6)
          {
            v27 = mysyslog_get_logger();
            LOBYTE(v28) = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v27, v28))
            {
              *buf = 138412290;
              *&buf[4] = v4;
              v29 = "[%@] is not valid hotspot authentication provider";
              goto LABEL_86;
            }

LABEL_87:
            v59 = *(v14 + 56);
            if (v59 && CFArrayGetCount(v59))
            {
              CFArrayRemoveAllValues(*(v14 + 56));
            }

            goto LABEL_73;
          }

          goto LABEL_79;
        }

        if (v26 == 11)
        {
          if (!v5)
          {
            v27 = mysyslog_get_logger();
            v28 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v27, v28))
            {
              *buf = 138412290;
              *&buf[4] = v4;
              v29 = "[%@] is not valid hotspot evaluation provider";
LABEL_86:
              _os_log_impl(&dword_277237000, v27, v28, v29, buf, 0xCu);
              goto LABEL_87;
            }

            goto LABEL_87;
          }

LABEL_79:
          *(v14 + 88) = 0;
          goto LABEL_80;
        }
      }

      else if (v5 | v6)
      {
        goto LABEL_73;
      }

LABEL_56:
      v42 = prefs_get();
      *buf = 0;
      if (v42)
      {
        v43 = v42;
        entry_and_plugins = prefs_get_entry_and_plugins(v42, v4, buf);
        Current = CFAbsoluteTimeGetCurrent();
        v46 = CFDateCreate(0, Current);
        if (entry_and_plugins)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, entry_and_plugins);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        v50 = MutableCopy;
        CFDictionaryAddValue(MutableCopy, @"DateFirstRegistered", v46);
        CFDictionarySetValue(v50, @"DisplayIdentifier", v4);
        CFDictionarySetValue(v50, @"DateLastRegistered", v46);
        CFRelease(v46);
        prefs_set_entry(v43, *buf, v4, v50);
        CFRelease(v50);
        if (SCPreferencesCommitChanges(v43))
        {
          v51 = mysyslog_get_logger();
          v52 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v51, v52))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&dword_277237000, v51, v52, "added hotspot helper [%@] to preferences", buf, 0xCu);
          }

          v14 = CNPluginStateAdd(v4);
          v53 = mysyslog_get_logger();
          v54 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v53, v54))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&dword_277237000, v53, v54, "CaptiveNetworkPlugin %@ REGISTERED", buf, 0xCu);
          }

          CNPluginMonitorHandlerPluginListChanged();
          if (!v14)
          {
            goto LABEL_73;
          }

LABEL_80:
          *(v14 + 72) = *a1;
          v56 = *(v14 + 32);
          if (v56)
          {
            CFRelease(v56);
          }

          *(v14 + 32) = Value;
          v57 = mysyslog_get_logger();
          v58 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v57, v58))
          {
            *buf = 138412546;
            *&buf[4] = Value;
            *&buf[12] = 2112;
            *&buf[14] = v4;
            _os_log_impl(&dword_277237000, v57, v58, "CaptiveNetworkPlugin %@ %@ RUNNING", buf, 0x16u);
          }

          goto LABEL_76;
        }
      }

      else
      {
        v48 = mysyslog_get_logger();
        v49 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v48, v49))
        {
          *v60 = 0;
          _os_log_impl(&dword_277237000, v48, v49, "prefs is NULL", v60, 2u);
        }
      }

      v40 = mysyslog_get_logger();
      v41 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v40, v41))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        v36 = "failed to create registration for %@";
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v30 = _AMCopyBackgroundModesForPID(PID);
    if (v30)
    {
      v31 = v30;
      v32 = CFArrayGetTypeID();
      if (CFGetTypeID(v31) == v32)
      {
        v65.length = CFArrayGetCount(v31);
        v65.location = 0;
        v33 = CFArrayContainsValue(v31, v65, @"network-authentication");
        CFRelease(v31);
        if (v33)
        {
          goto LABEL_23;
        }
      }

      else
      {
        CFRelease(v31);
      }
    }

    v34 = mysyslog_get_logger();
    v35 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_73;
    }

    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 1024;
    *&buf[14] = PID;
    v36 = "CaptiveNetworkPlugin %@ [pid=%d] UIBackgroundModes missing network-authentication";
    v37 = v34;
    v38 = v35;
    v39 = 18;
    goto LABEL_72;
  }

  v12 = mysyslog_get_logger();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 67109120;
    *&buf[4] = PID;
    _os_log_impl(&dword_277237000, v12, v13, "can't get display ID for pid %d", buf, 8u);
  }

  return 0;
}

__CFArray *CNPluginStateCopyCommandList(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v5 = (a1 + 64);
    v4 = *(a1 + 64);
    if (!v4)
    {
      if (!Count)
      {
        return Count;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = (a1 + 64);
    v4 = *(a1 + 64);
    if (!v4)
    {
      return 0;
    }

    Count = 0;
  }

  v6 = CFArrayGetCount(v4);
  v7 = v6;
  if (Count)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    Count = CFArrayCreateMutableCopy(0, Count + v6, *(a1 + 56));
    v12.location = 0;
    v12.length = v7;
    CFArrayAppendArray(Count, *(a1 + 64), v12);
    return Count;
  }

  if (!Count)
  {
    if (v6)
    {
      v9 = *v5;
      goto LABEL_14;
    }

    return 0;
  }

LABEL_13:
  v9 = *(a1 + 56);
LABEL_14:

  return CFRetain(v9);
}

void CNPluginStateIssueCommand(uint64_t a1, const void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    my_CFArrayPointerAddValue((a1 + 56), a2);
  }

  if (*(a1 + 16))
  {
    v3 = *(a1 + 80);
    if (v3)
    {

      CFRunLoopSourceSignal(v3);
    }

    return;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    logger = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v16))
    {
      return;
    }

    v17 = *(a1 + 24);
    v24 = 138412290;
    v25 = v17;
    v11 = "No command handler found for application [%@]";
    v12 = logger;
    v13 = v16;
    v14 = 12;
    goto LABEL_27;
  }

  if (!*(a1 + 89) || *(a1 + 120) && *(a1 + 128) == 3)
  {
    if (!CommandHandlerNotify(*(a1 + 72)))
    {
      v21 = mysyslog_get_logger();
      v22 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v21, v22))
      {
        return;
      }

      LOWORD(v24) = 0;
      v11 = "CommandHandlerNotify() failed";
      goto LABEL_26;
    }

    PID = CommandHandlerGetPID(v4);
    if (*(a1 + 16) || *(a1 + 89) || *(a1 + 80))
    {
      return;
    }

    v6 = PID;
    v7 = _AMCreateProcessAssertionForPID(PID);
    *(a1 + 80) = v7;
    v8 = mysyslog_get_logger();
    if (v7)
    {
      v9 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v8, v9))
      {
        return;
      }

      v10 = *(a1 + 24);
      v24 = 138412546;
      v25 = v10;
      v26 = 1024;
      v27 = v6;
      v11 = "Created process assertion for %@ (%d)";
      v12 = v8;
      v13 = v9;
      v14 = 18;
      goto LABEL_27;
    }

    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v23))
    {
      v24 = 67109120;
      LODWORD(v25) = v6;
      _os_log_impl(&dword_277237000, v8, v23, "Failed to create process assertion for pid %d", &v24, 8u);
    }

    v21 = mysyslog_get_logger();
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v21, v22))
    {
      LOWORD(v24) = 0;
      v11 = "CNPluginStateSetProcessAssertion() failed";
LABEL_26:
      v12 = v21;
      v13 = v22;
      v14 = 2;
LABEL_27:
      _os_log_impl(&dword_277237000, v12, v13, v11, &v24, v14);
    }
  }

  else
  {
    v18 = mysyslog_get_logger();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(a1 + 24);
      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&dword_277237000, v18, v19, "unable to issue command since the provider [%@] is not started, starting provider", &v24, 0xCu);
    }

    CNPluginStateStartProviderSession(a1);
  }
}

void CNPluginStateStartProviderSession(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 89) || *(a1 + 16))
  {
    return;
  }

  if ((*(a1 + 128) & 0xFFFFFFFE) == 2)
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v3))
    {
      return;
    }

    v4 = @"Unknown";
    v5 = *(a1 + 128);
    v6 = *(a1 + 132);
    if (v6 == 12)
    {
      v4 = @"Authentication";
    }

    if (v6 == 11)
    {
      v7 = @"Evaluation";
    }

    else
    {
      v7 = v4;
    }

    v23 = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = CNGetHotspotSessionStatusString(v5);
    v8 = "hotspot provider session (type=%@) status is already %@";
    goto LABEL_21;
  }

  v9 = *(a1 + 120);
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  v10 = os_log_type_enabled(logger, v3);
  if (v9)
  {
    if (!v10)
    {
      return;
    }

    v11 = *(a1 + 132);
    v12 = @"Unknown";
    if (v11 == 12)
    {
      v12 = @"Authentication";
    }

    v13 = *(a1 + 24);
    if (v11 == 11)
    {
      v14 = @"Evaluation";
    }

    else
    {
      v14 = v12;
    }

    v23 = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = v13;
    v8 = "hotspot provider session (type=%@) already exists for %@";
LABEL_21:
    _os_log_impl(&dword_277237000, logger, v3, v8, &v23, 0x16u);
    return;
  }

  if (v10)
  {
    v15 = *(a1 + 132);
    v16 = @"Unknown";
    if (v15 == 12)
    {
      v16 = @"Authentication";
    }

    v17 = v15 == 11;
    v18 = *(a1 + 24);
    if (v17)
    {
      v16 = @"Evaluation";
    }

    v23 = 138412546;
    v24 = v16;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_277237000, logger, v3, "starting hotspot provider session (type=%@) for %@", &v23, 0x16u);
  }

  v19 = *(a1 + 112);
  v20 = *(a1 + 132);
  Current = CFRunLoopGetCurrent();
  v22 = _AMStartHotspotProviderSessionWithIdentifier(v19, v20, Current, *MEMORY[0x277CBF058], a1, CNHotspotSessionRequestCompletionHandler);
  *(a1 + 120) = v22;
  if (!v22)
  {
    *(a1 + 88) = 1;
  }
}

void CNPluginStateIssueForegroundCommand(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    my_CFArrayPointerAddValue((a1 + 56), a2);
    if (*(a1 + 16))
    {
      v3 = *(a1 + 80);
      if (v3)
      {

        CFRunLoopSourceSignal(v3);
      }
    }
  }

  else if (*(a1 + 89) && *(a1 + 132) == 12)
  {

    CNPluginStateIssueCommand(a1, a2);
  }

  else
  {
    v4 = *(a1 + 72);
    my_CFArrayPointerAddValue((a1 + 64), a2);
    if (v4)
    {

      CommandHandlerNotify(v4);
    }
  }
}

BOOL CNPluginStateIsAuthenticationProvider(_BOOL8 result)
{
  if (result)
  {
    return !*(result + 16) && *(result + 89) && *(result + 132) == 12;
  }

  return result;
}

void CNPluginStateSetNotRunning(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!*(result + 16))
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      v4 = *(result + 24);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_277237000, logger, v3, "CaptiveNetworkPlugin %@ NOT RUNNING", &v7, 0xCu);
    }

    *(result + 72) = 0;
    v5 = *(result + 56);
    if (v5)
    {
      CFRelease(v5);
      *(result + 56) = 0;
    }

    v6 = *(result + 64);
    if (v6)
    {
      CFRelease(v6);
      *(result + 64) = 0;
    }

    CNPluginStateClearProcessAssertion(result);
    CNPluginStateClearProviderSession(result, 0);
  }
}

void CNPluginStateClearProcessAssertion(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) && !*(a1 + 89) && *(a1 + 80))
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      v4 = *(a1 + 24);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_277237000, logger, v3, "Removing assertion for %@", &v6, 0xCu);
    }

    _AMInvalidateProcessAssertion(*(a1 + 80));
    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }
  }
}

void CNPluginStateClearProviderSession(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 89) && !*(a1 + 16))
  {
    if (a2 && (*(a1 + 128) & 0xFFFFFFFE) == 2)
    {
      logger = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        v5 = *(a1 + 24);
        v6 = *(a1 + 132);
        v7 = @"Unknown";
        if (v6 == 12)
        {
          v7 = @"Authentication";
        }

        if (v6 == 11)
        {
          v8 = @"Evaluation";
        }

        else
        {
          v8 = v7;
        }

        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_277237000, logger, v4, "stopping hotspot provider [%@] (type=%@)", &v15, 0x16u);
      }

      _AMStopHotspotProviderSession(*(a1 + 120));
    }

    else
    {
      v9 = mysyslog_get_logger();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(a1 + 24);
        v12 = *(a1 + 132);
        v13 = @"Unknown";
        if (v12 == 12)
        {
          v13 = @"Authentication";
        }

        if (v12 == 11)
        {
          v14 = @"Evaluation";
        }

        else
        {
          v14 = v13;
        }

        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_277237000, v9, v10, "invalidating hotspot provider [%@] (type=%@)", &v15, 0x16u);
      }

      _AMInvalidateHotspotProviderSession(*(a1 + 120));
      *(a1 + 120) = 0;
      *(a1 + 128) = 1;
    }
  }
}

const __CFDictionary *CNPluginStateGetFilterResults(uint64_t a1, const void *a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void CNPluginStateSetFilterResults(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 40);
  if (Mutable)
  {
    if (!key)
    {
      CFRelease(Mutable);
      *(a1 + 40) = 0;
      return;
    }

    if (!value)
    {

      CFDictionaryRemoveValue(Mutable, key);
      return;
    }
  }

  else
  {
    if (!key || !value)
    {
      return;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 40) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

BOOL CNPluginStateIsProvider(_BOOL8 result)
{
  if (result)
  {
    return !*(result + 16) && *(result + 89) != 0;
  }

  return result;
}

BOOL CNPluginStateIsEvaluationProvider(_BOOL8 result)
{
  if (result)
  {
    return !*(result + 16) && *(result + 89) && *(result + 132) == 11;
  }

  return result;
}

uint64_t CNPluginStateGetApplicationIDOfProvider(uint64_t result)
{
  if (result)
  {
    if (!*(result + 16) && *(result + 89) && *(result + 132) == 11)
    {
      return *(result + 104);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CNPluginStateGetEvaluationProvider(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (!*(result + 16) && *(result + 89) && *(result + 132) == 12)
    {
      v5 = *(result + 112);
      v6 = 0;
      CFDictionaryApplyFunction(S_plugins, SearchEvaluationProviderUsingConfigurationID, &v5);
      if (!v6)
      {
        logger = mysyslog_get_logger();
        v3 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v3))
        {
          v4 = *(v1 + 24);
          *buf = 138412290;
          v8 = v4;
          _os_log_impl(&dword_277237000, logger, v3, "failed to find evaluation provider from authentication provider [%@]", buf, 0xCu);
        }
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchEvaluationProviderUsingConfigurationID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CFEqual(*(a2 + 112), *a3);
  if (result && !*(a2 + 16) && *(a2 + 89) && *(a2 + 132) == 11)
  {
    *(a3 + 8) = a2;
  }

  return result;
}

void *CNPluginStateGetAuthenticationProvider(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    return 0;
  }

  if (!*(a1 + 89))
  {
    return 0;
  }

  v4 = *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  if (S_plugins)
  {
    Value = CFDictionaryGetValue(S_plugins, *(a1 + 96));
    if (Value)
    {
      goto LABEL_11;
    }
  }

  v5 = CNPluginStateAdd(v4);
  Value = v5;
  if (v5)
  {
    *(v5 + 48) = 257;
    *(v5 + 136) = 4;
    *(v5 + 89) = 1;
    *(v5 + 128) = 0xC00000000;
    *(v5 + 96) = CFRetain(v4);
    Value[14] = CFRetain(*(a1 + 112));
LABEL_11:
    *(Value + 90) = 0;
  }

  return Value;
}

void CNPluginStateStartHotspotProvider(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 89))
    {
      CNPluginStateStartProviderSession(a1);
    }
  }
}

void CNPluginStateStopHotspotAuthenticationProvider(uint64_t a1)
{
  if (a1 && !*(a1 + 16) && *(a1 + 89) && *(a1 + 132) == 12 && (*(a1 + 128) & 0xFFFFFFFE) == 2)
  {
    CNPluginStateClearProviderSession(a1, 1);
  }
}

void CNPluginStateStopHotspotEvaluationProvider(uint64_t a1)
{
  if (a1 && !*(a1 + 16) && *(a1 + 89) && *(a1 + 132) == 11)
  {
    CNPluginStateClearProviderSession(a1, 1);
  }
}

void CNPluginStateListEvaluationProviderStopper(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 16) && *(a2 + 89) && *(a2 + 132) == 11 && *(a2 + 120) && *(a2 + 128) == 3)
  {
    CNPluginStateClearProviderSession(a2, 1);
  }
}

const __CFDictionary *CNPluginStateListIssueCommandCommon(uint64_t a1, char a2, char a3, CFArrayRef theArray)
{
  result = S_plugins;
  if (S_plugins)
  {
    v8 = 0;
    v10 = 0u;
    v7 = a1;
    BYTE4(v8) = a2;
    BYTE5(v8) = a3;
    v9 = theArray;
    if (!theArray || (*&v10 = 0, *(&v10 + 1) = CFArrayGetCount(theArray), (result = S_plugins) != 0))
    {
      context = CNPluginStateAddCommandApplier;
      p_theArraya = &v7;
      CFDictionaryApplyFunction(result, CNPluginStateListApplier, &context);
      theArraya = 0;
      if (S_plugins)
      {
        context = CNPluginStateLaunchApplier;
        p_theArraya = &theArraya;
        CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, &context);
        v6 = theArraya;
        if (theArraya)
        {
          v14.length = CFArrayGetCount(theArraya);
          v14.location = 0;
          CFArrayApplyFunction(v6, v14, CNPluginStateRemoveApplier, 0);
          CFRelease(theArraya);
          CNPluginMonitorHandlerPluginListChanged();
        }
      }
    }

    return (v8 != 0);
  }

  return result;
}

void CNPluginStateListRemoveCommand(uint64_t a1)
{
  if (S_plugins)
  {
    v1[0] = CNPluginStateRemoveCommandApplier;
    v1[1] = a1;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, v1);
  }
}

void CNPluginStateListApplyFunction(uint64_t a1, uint64_t a2)
{
  if (S_plugins)
  {
    v2[0] = a1;
    v2[1] = a2;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, v2);
  }
}

void CNPluginStateRemoveCommandApplier(uint64_t a1, CFDictionaryRef theDict)
{
  if (*(a1 + 16))
  {
    Value = CFDictionaryGetValue(theDict, @"UniqueID");
    if (Value)
    {
      CNPluginStateBuiltinRemoveDeliveredCommand(a1, Value);
    }
  }

  v5 = my_CFArrayFindValue(*(a1 + 56), theDict);
  if (v5 == -1)
  {
    v6 = my_CFArrayFindValue(*(a1 + 64), theDict);
    if (v6 != -1)
    {
      v7 = v6;
      v8 = *(a1 + 64);

      CFArrayRemoveValueAtIndex(v8, v7);
    }
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(a1 + 56), v5);
    if (!CFArrayGetCount(*(a1 + 56)))
    {

      CNPluginStateClearProcessAssertion(a1);
    }
  }
}

void CNPluginStateBuiltinFlushAllCommands(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 56);
    if (v2 && CFArrayGetCount(v2))
    {
      CFArrayRemoveAllValues(*(a1 + 56));
    }

    v3 = *(a1 + 88);
    if (v3 && CFArrayGetCount(v3))
    {
      CFArrayRemoveAllValues(*(a1 + 88));
    }

    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, logger, v5, "flushed all the commands for builtin", v6, 2u);
    }
  }
}

void CNPluginStateListSetEvaluateCmdAckTimeoutStatus()
{
  v0 = 3;
  if (S_plugins)
  {
    context[0] = CNPluginStateEvaluateCommandStatusApplier;
    context[1] = &v0;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, context);
  }
}

uint64_t CNPluginStateEvaluateCommandStatusApplier(uint64_t result, _DWORD *a2)
{
  if (!*(result + 136) && *a2 == 3)
  {
    *(result + 136) = 3;
  }

  return result;
}

uint64_t CNPluginStateListIsEvaluateResponsePending()
{
  v1 = 0;
  result = S_plugins;
  if (S_plugins)
  {
    context[0] = CNPluginStateCheckEvaluateResponsesPending;
    context[1] = &v1;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, context);
    return v1 > 0;
  }

  return result;
}

void CNPluginStateCheckEvaluateResponsesPending(uint64_t a1, _DWORD *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) && (*(a1 + 88) || !*(a1 + 72)))
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v11))
    {
      v12 = *(a1 + 24);
      if (*(a1 + 88))
      {
        v13 = "failed to launch";
      }

      else
      {
        v13 = "launched";
      }

      v14 = *(a1 + 72);
      v21 = 138412802;
      v22 = v12;
      v23 = 2080;
      if (v14)
      {
        v15 = "handler registered";
      }

      else
      {
        v15 = "no handler registered";
      }

      v24 = v13;
      v25 = 2080;
      v26 = v15;
      _os_log_impl(&dword_277237000, logger, v11, "[%@] [%s] [%s]", &v21, 0x20u);
    }
  }

  v4 = *(a1 + 136);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = mysyslog_get_logger();
        v6 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = *(a1 + 24);
          v21 = 138412290;
          v22 = v7;
          v8 = "[%@] responded to command";
LABEL_11:
          _os_log_impl(&dword_277237000, v5, v6, v8, &v21, 0xCu);
          return;
        }
      }

      return;
    }

    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(a1 + 24);
      v21 = 138412290;
      v22 = v18;
      v19 = "[%@] acknowledgement is pending";
LABEL_25:
      _os_log_impl(&dword_277237000, v16, v17, v19, &v21, 0xCu);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v4 == 2)
  {
    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      v20 = *(a1 + 24);
      v21 = 138412290;
      v22 = v20;
      v19 = "[%@] acknowledged the command delivery";
      goto LABEL_25;
    }

LABEL_26:
    ++*a2;
    return;
  }

  if (v4 == 3)
  {
    v5 = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v9 = *(a1 + 24);
      v21 = 138412290;
      v22 = v9;
      v8 = "[%@] timed out to acknowledge the command delivery";
      goto LABEL_11;
    }
  }
}

void CNPluginStateListLogPendingCommand(uint64_t a1)
{
  if (S_plugins)
  {
    v1[0] = CNPluginStateListPrintPendingCommand;
    v1[1] = a1;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, v1);
  }
}

void CNPluginStateListPrintPendingCommand(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) && (*(a1 + 88) || !*(a1 + 72)))
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v5))
    {
      return;
    }

    v8 = *(a1 + 24);
    v9 = 138412290;
    v10 = v8;
    v7 = "Skipping %@ (launch failed or command handler not registered)";
    goto LABEL_9;
  }

  if (my_CFArrayFindValue(*(a1 + 56), a2) != -1 || my_CFArrayFindValue(*(a1 + 64), a2) != -1)
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      v6 = *(a1 + 24);
      v9 = 138412290;
      v10 = v6;
      v7 = "%@";
LABEL_9:
      _os_log_impl(&dword_277237000, logger, v5, v7, &v9, 0xCu);
    }
  }
}

void CNPluginStateListHandleUnregistered()
{
  v4 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (S_plugins)
  {
    *&v3 = CNPluginStateFindPluginsWithoutHandlers;
    *(&v3 + 1) = Mutable;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, &v3);
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    logger = mysyslog_get_logger();
    v2 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v2))
    {
      LODWORD(v3) = 138412290;
      *(&v3 + 4) = Mutable;
      _os_log_impl(&dword_277237000, logger, v2, "Forgetting plugins that failed to register %@", &v3, 0xCu);
    }

    v5.length = CFArrayGetCount(Mutable);
    v5.location = 0;
    CFArrayApplyFunction(Mutable, v5, CNPluginStateRemoveApplier, 0);
    CNPluginMonitorHandlerPluginListChanged();
  }

  CFRelease(Mutable);
}

void CNPluginStateFindPluginsWithoutHandlers(uint64_t a1, __CFArray *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) && !*(a1 + 88) && !*(a1 + 72))
  {
    v4 = *(a1 + 24);
    ++*(a1 + 140);
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      v7 = *(a1 + 140);
      v8 = 138412546;
      v9 = v4;
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&dword_277237000, logger, v6, "[%@] was launched but it did not provide command handler [no registration count: %d]", &v8, 0x12u);
    }

    if (*(a1 + 140) >= 5)
    {
      CFArrayAppendValue(a2, v4);
    }
  }
}

const __SCPreferences *CNPluginStateRemoveApplier(const void *a1)
{
  v2 = prefs_get();
  if (S_plugins)
  {
    CFDictionaryRemoveValue(S_plugins, a1);
  }

  return prefs_remove_entry(v2, a1);
}

uint64_t CNPluginStateListShouldSendFilterCommand()
{
  v1 = 0;
  result = S_plugins;
  if (S_plugins)
  {
    context[0] = CNPluginStateShouldSendFilterCommandApplier;
    context[1] = &v1;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, context);
    return v1;
  }

  return result;
}

uint64_t CNPluginStateShouldSendFilterCommandApplier(uint64_t result, _BYTE *a2)
{
  if (!*(result + 16) && !*(result + 48))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t CNPluginStateListIsPreevaluatedSSIDListSet()
{
  result = S_evaluatedNetworks;
  if (S_evaluatedNetworks)
  {
    return CFDictionaryGetCount(S_evaluatedNetworks) > 0;
  }

  return result;
}

CFIndex CNPluginStateListCopyPrevaluatedSSIDs()
{
  result = CFDictionaryGetCount(S_evaluatedNetworks);
  if (result)
  {
    v1 = result;
    v2 = malloc_type_malloc(8 * result, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(S_evaluatedNetworks, v2, 0);
    v3 = CFArrayCreate(0, v2, v1, MEMORY[0x277CBF128]);
    free(v2);
    return v3;
  }

  return result;
}

const void *CNPluginStateProcessResponse(uint64_t a1, CFDictionaryRef theDict)
{
  v18 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"UniqueID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v8))
    {
      return 0;
    }

    v9 = *(a1 + 24);
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = theDict;
    v10 = "CaptiveNetworkPlugin %@ response %@ missing uniqueID";
LABEL_10:
    _os_log_impl(&dword_277237000, logger, v8, v10, &v14, 0x16u);
    return 0;
  }

  if (*(a1 + 16))
  {
    CNPluginStateBuiltinRemoveDeliveredCommand(a1, Value);
  }

  DictWithKeyAndValue = my_CFArrayFindDictWithKeyAndValue(*(a1 + 56), @"UniqueID", Value);
  if (DictWithKeyAndValue == -1)
  {
    v12 = my_CFArrayFindDictWithKeyAndValue(*(a1 + 64), @"UniqueID", Value);
    if (v12 != -1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 64), v12);
      return Value;
    }

    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v8))
    {
      return 0;
    }

    v13 = *(a1 + 24);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = theDict;
    v10 = "CaptiveNetworkPlugin %@ response %@ is stale";
    goto LABEL_10;
  }

  CFArrayRemoveValueAtIndex(*(a1 + 56), DictWithKeyAndValue);
  if (!CFArrayGetCount(*(a1 + 56)))
  {
    CNPluginStateClearProcessAssertion(a1);
  }

  return Value;
}

BOOL CNPluginStateProcessCmdAck(uint64_t a1, CFDictionaryRef theDict)
{
  v27 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"UniqueID");
  v5 = CFDictionaryGetValue(theDict, @"Type");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    logger = mysyslog_get_logger();
    v14 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v14);
    if (!result)
    {
      return result;
    }

    v16 = *(a1 + 24);
    *buf = 138412290;
    v24 = v16;
    v17 = "command acknowledgement from [%@] is missing uniqueID";
LABEL_13:
    _os_log_impl(&dword_277237000, logger, v14, v17, buf, 0xCu);
    return 0;
  }

  v7 = CFNumberGetTypeID();
  if (!v5 || CFGetTypeID(v5) != v7 || !CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr))
  {
    logger = mysyslog_get_logger();
    v14 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v14);
    if (!result)
    {
      return result;
    }

    v18 = *(a1 + 24);
    *buf = 138412290;
    v24 = v18;
    v17 = "command acknowledgement from [%@] is missing commandType";
    goto LABEL_13;
  }

  v8 = *(a1 + 136);
  v9 = mysyslog_get_logger();
  if (v8 == 3)
  {
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 24);
      String = CNPCommandTypeGetString(valuePtr);
      *buf = 138412546;
      v24 = v11;
      v25 = 2080;
      v26 = String;
      _os_log_impl(&dword_277237000, v9, v10, "[%@] acknowledged delivery for command %s after acknowledgement timeout", buf, 0x16u);
    }
  }

  else
  {
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v19))
    {
      v20 = *(a1 + 24);
      v21 = CNPCommandTypeGetString(valuePtr);
      *buf = 138412546;
      v24 = v20;
      v25 = 2080;
      v26 = v21;
      _os_log_impl(&dword_277237000, v9, v19, "[%@] acknowledged delivery for command %s", buf, 0x16u);
    }

    if (valuePtr == 2)
    {
      *(a1 + 136) = 2;
    }
  }

  return 1;
}

CFMutableArrayRef CNPluginStateListCopyDisplayIDs()
{
  if (S_plugins)
  {
    Count = CFDictionaryGetCount(S_plugins);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (S_plugins)
  {
    v3[0] = CNPluginStateAddDisplayIDToArray;
    v3[1] = Mutable;
    CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, v3);
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void CNPluginStateAddDisplayIDToArray(uint64_t a1, CFMutableArrayRef theArray)
{
  if (!*(a1 + 16) && !*(a1 + 89))
  {
    CFArrayAppendValue(theArray, *(a1 + 24));
  }
}

void AppUninstallationCallback(int a1, void *a2, int a3, int a4, CFDictionaryRef theDict)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (theDict)
  {
    if (S_plugins)
    {
      Value = CFDictionaryGetValue(theDict, @"isPlaceholder");
      TypeID = CFBooleanGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID && CFBooleanGetValue(Value) != 1)
        {
          v9 = CFDictionaryGetValue(theDict, @"bundleIDs");
          v18[3] = v9;
          v10 = CFArrayGetTypeID();
          if (v9)
          {
            if (CFGetTypeID(v9) == v10 && CFArrayGetCount(v18[3]))
            {
              v11 = CFGetTypeID(a2);
              if (v11 == CFRunLoopGetTypeID())
              {
                CFRetain(v18[3]);
                v12 = *MEMORY[0x277CBF058];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __AppUninstallationCallback_block_invoke;
                block[3] = &unk_27A7149B0;
                block[4] = &v17;
                CFRunLoopPerformBlock(a2, v12, block);
                CFRunLoopWakeUp(a2);
              }

              else
              {
                logger = mysyslog_get_logger();
                v14 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(logger, v14))
                {
                  *buf = 0;
                  _os_log_impl(&dword_277237000, logger, v14, "observer does not match CFRunLoppRef type", buf, 2u);
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

void __AppUninstallationCallback_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 32) + 8) + 24);
  Count = CFArrayGetCount(v2);
  v4 = Count - 1;
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    while (2)
    {
      v8 = v6;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v8);
        v13 = ValueAtIndex;
        if (S_plugins)
        {
          v14 = 0;
          *&context = CompareAppIDWithPluginID;
          *(&context + 1) = &v13;
          CFDictionaryApplyFunction(S_plugins, CNPluginStateListApplier, &context);
          if (v14 == 1)
          {
            break;
          }
        }

        if (v5 == ++v8)
        {
          if (v7)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      logger = mysyslog_get_logger();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v11))
      {
        LODWORD(context) = 138412290;
        *(&context + 4) = ValueAtIndex;
        _os_log_impl(&dword_277237000, logger, v11, "cleaning up data for app %@", &context, 0xCu);
      }

      NetIFWiFiNetworkForgetAppOwnedNetworks();
      if (S_plugins)
      {
        CFDictionaryRemoveValue(S_plugins, ValueAtIndex);
      }

      v12 = prefs_get();
      prefs_remove_entry(v12, ValueAtIndex);
      v7 = 0;
      v6 = v8 + 1;
      if (v4 != v8)
      {
        continue;
      }

      break;
    }

LABEL_15:
    CNPluginMonitorHandlerPluginListChanged();
  }

LABEL_16:
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

uint64_t CompareAppIDWithPluginID(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    result = CFEqual(*a2, *(result + 24));
    if (result)
    {
      *(a2 + 8) = 1;
    }
  }

  return result;
}

const __SCPreferences *prefs_remove_entry(const __SCPreferences *a1, const void *a2)
{
  theDict = 0;
  result = prefs_get_entry_and_plugins(a1, a2, &theDict);
  if (result)
  {
    prefs_set_entry(a1, theDict, a2, 0);
    return SCPreferencesCommitChanges(a1);
  }

  return result;
}

const __SCPreferences *prefs_get_entry_and_plugins(const __SCPreferences *result, const void *a2, void *a3)
{
  if (!result)
  {
    Value = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_17;
  }

  Value = SCPreferencesGetValue(result, @"Plugins");
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    goto LABEL_16;
  }

  v7 = TypeID;
  v8 = CFGetTypeID(Value);
  result = 0;
  if (v8 == v7)
  {
    v9 = Value;
  }

  else
  {
    v9 = 0;
  }

  if (!a2 || v8 != v7)
  {
    Value = v9;
    if (!a3)
    {
      return result;
    }

    goto LABEL_17;
  }

  v10 = CFDictionaryGetValue(v9, a2);
  v11 = CFDictionaryGetTypeID();
  if (!v10)
  {
LABEL_16:
    result = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (CFGetTypeID(v10) == v11)
  {
    result = v10;
  }

  else
  {
    result = 0;
  }

  if (a3)
  {
LABEL_17:
    *a3 = Value;
  }

  return result;
}

void prefs_set_entry(const __SCPreferences *a1, CFDictionaryRef theDict, const void *a3, const void *a4)
{
  if (!theDict)
  {
    if (!a4)
    {
      return;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_6;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Mutable = MutableCopy;
  if (a4)
  {
LABEL_6:
    CFDictionarySetValue(Mutable, a3, a4);
    goto LABEL_7;
  }

  CFDictionaryRemoveValue(MutableCopy, a3);
LABEL_7:
  SCPreferencesSetValue(a1, @"Plugins", Mutable);

  CFRelease(Mutable);
}

void ApplyProviderConfigurationsToPluginList(const void *a1, CFDictionaryRef theDict)
{
  v44 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"AuthenticationProviderIdentifier");
  v5 = CFDictionaryGetValue(theDict, @"ProviderConfigurationIdentifier");
  if (a1)
  {
    if (Value)
    {
      v6 = v5;
      if (v5)
      {
        v7 = CFDictionaryGetValue(theDict, @"ProviderEvaluatedSSIDs");
        v8 = CFDictionaryGetValue(theDict, @"HotspotApplicationIdentifier");
        if (S_plugins && (v9 = CFDictionaryGetValue(S_plugins, a1)) != 0)
        {
          v10 = v9;
          v11 = "updated existing";
        }

        else
        {
          v12 = CNPluginStateAdd(a1);
          if (!v12)
          {
            return;
          }

          v10 = v12;
          v11 = "created new";
        }

        v13 = v10[12];
        if (v13)
        {
          CFRelease(v13);
          v10[12] = 0;
        }

        v14 = v10[14];
        if (v14)
        {
          CFRelease(v14);
          v10[14] = 0;
        }

        v15 = v10[13];
        if (v15)
        {
          CFRelease(v15);
          v10[13] = 0;
        }

        v16 = v10[4];
        if (v16)
        {
          CFRelease(v16);
          v10[4] = 0;
        }

        *(v10 + 89) = 1;
        v10[16] = 0xB00000000;
        v10[12] = CFRetain(Value);
        v10[14] = CFRetain(v6);
        if (v8)
        {
          v10[13] = CFRetain(v8);
        }

        logger = mysyslog_get_logger();
        v18 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v18))
        {
          v34 = 136316162;
          v35 = v11;
          v36 = 2112;
          v37 = a1;
          v38 = 2112;
          v39 = Value;
          v40 = 2112;
          v41 = v6;
          v42 = 2112;
          v43 = v8;
          _os_log_impl(&dword_277237000, logger, v18, "%s entry in S_plugins for evaluation provider: [%@] \t    authentication provider: [%@] configuration id: [%@] application id: [%@]", &v34, 0x34u);
        }

        if (v7 && CFArrayGetCount(v7) >= 1)
        {
          v19 = mysyslog_get_logger();
          v20 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v19, v20))
          {
            v34 = 138412546;
            v35 = a1;
            v36 = 2112;
            v37 = v7;
            _os_log_impl(&dword_277237000, v19, v20, "evaluated SSIDs for [%@]: %@", &v34, 0x16u);
          }

          v21 = 1;
        }

        else
        {
          v22 = mysyslog_get_logger();
          v23 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v22, v23))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&dword_277237000, v22, v23, "no evaluated SSIDs configured", &v34, 2u);
          }

          v21 = 0;
        }

        *(v10 + 48) = v21;
        *(v10 + 49) = v21;
        if (v8)
        {
          v10[4] = _AMCopyLocalizedApplicationNameForDisplayIdentifier(v8);
          v24 = mysyslog_get_logger();
          v25 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = v10[4];
            v34 = 138412546;
            v35 = v8;
            v36 = 2112;
            v37 = v26;
            _os_log_impl(&dword_277237000, v24, v25, "application name for [%@] is [%@]", &v34, 0x16u);
          }
        }

        CNEvaluatedNetworksRemove(a1);
        if (v7)
        {
          Count = CFArrayGetCount(v7);
          if (Count >= 1)
          {
            v28 = Count;
            v29 = 0;
            v30 = MEMORY[0x277CBF138];
            v31 = MEMORY[0x277CBF150];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v29);
              Mutable = S_evaluatedNetworks;
              if (!S_evaluatedNetworks)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, v30, v31);
                S_evaluatedNetworks = Mutable;
              }

              CFDictionarySetValue(Mutable, ValueAtIndex, a1);
              ++v29;
            }

            while (v28 != v29);
          }
        }
      }
    }
  }
}

void UnconfiguredHotspotProviderCollector(void *key, uint64_t a2, CFDictionaryRef *a3)
{
  if (a2 && !*(a2 + 16) && *(a2 + 89) && *(a2 + 132) == 11 && !CFDictionaryContainsKey(*a3, key))
  {
    CFArrayAppendValue(a3[1], key);
    v6 = a3[1];
    v7 = *(a2 + 96);

    CFArrayAppendValue(v6, v7);
  }
}

void UnconfiguredProviderRemovalApplier(void *key)
{
  v9 = *MEMORY[0x277D85DE8];
  if (S_plugins)
  {
    Value = CFDictionaryGetValue(S_plugins, key);
  }

  else
  {
    Value = 0;
  }

  if ((*(Value + 32) & 0xFFFFFFFE) == 2)
  {
    Value[90] = 1;
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      v7 = 138412290;
      v8 = key;
      _os_log_impl(&dword_277237000, logger, v4, "stopping [%@] due to configuration removal", &v7, 0xCu);
    }

    CNPluginStateClearProviderSession(Value, 1);
  }

  else
  {
    v5 = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = 138412290;
      v8 = key;
      _os_log_impl(&dword_277237000, v5, v6, "removing state for [%@] due to configuration removal", &v7, 0xCu);
    }

    if (S_plugins)
    {
      CFDictionaryRemoveValue(S_plugins, key);
    }
  }
}

void CNPluginStateListProviderListCollector(void *value, uint64_t a2, CFMutableArrayRef theArray)
{
  if (a2 && !*(a2 + 16))
  {
    if (*(a2 + 89))
    {
      CFArrayAppendValue(theArray, value);
    }
  }
}

void CNEvaluatedNetworksRemove(uint64_t a1)
{
  if (S_evaluatedNetworks)
  {
    v5 = a1;
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    CFDictionaryApplyFunction(S_evaluatedNetworks, CNEvaluatedNetworksRemovalApplier, &v5);
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v2 = Count;
      for (i = 0; i != v2; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        CFDictionaryRemoveValue(S_evaluatedNetworks, ValueAtIndex);
      }
    }

    CFRelease(theArray);
  }
}

void CNEvaluatedNetworksRemovalApplier(const void *a1, CFTypeRef cf1, uint64_t a3)
{
  if (CFEqual(cf1, *a3))
  {
    v5 = *(a3 + 8);

    CFArrayAppendValue(v5, a1);
  }
}

void __CNPluginStateDeallocate(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  if (!*(a1 + 16))
  {
    if (*(a1 + 89))
    {
      v13 = *(a1 + 96);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 96) = 0;
      }

      v14 = *(a1 + 112);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 112) = 0;
      }

      v15 = *(a1 + 104);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 104) = 0;
      }

      v16 = *(a1 + 120);
      v11 = a1 + 120;
      _AMInvalidateHotspotProviderSession(v16);
      *(v11 + 12) = 0;
      goto LABEL_28;
    }

    v17 = *(a1 + 80);
    v11 = a1 + 80;
    _AMInvalidateProcessAssertion(v17);
    v10 = *v11;
    if (!*v11)
    {
      return;
    }

LABEL_19:
    CFRelease(v10);
LABEL_28:
    *v11 = 0;
    return;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    CFRelease(*(a1 + 80));
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }

  v12 = *(a1 + 104);
  v11 = a1 + 104;
  v10 = v12;
  if (v12)
  {
    goto LABEL_19;
  }
}

CFStringRef __CNPluginStateCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  if (*(a1 + 16))
  {
    PID = 0;
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      PID = CommandHandlerGetPID(v4);
    }

    else
    {
      PID = 0xFFFFFFFFLL;
    }
  }

  return CFStringCreateWithFormat(v2, 0, @"<CNPluginState %@ pid=%d>", *(a1 + 24), PID);
}

__CFString *CNGetHotspotSessionStatusString(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A7149D0[a1];
  }
}

void CNHotspotSessionRequestCompletionHandler(unsigned int a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      v6 = CNGetHotspotSessionStatusString(a1);
      v7 = *(a2 + 24);
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_277237000, logger, v5, "Hotspot session status changed to %@ for provider [%@]", &v22, 0x16u);
    }

    if (a1 == 1)
    {
      v13 = mysyslog_get_logger();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(a2 + 112);
        v16 = *(a2 + 24);
        v22 = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_277237000, v13, v14, "hotspot provider stopped (configuration:[%@] provider:[%@])", &v22, 0x16u);
      }

      if (*(a2 + 128))
      {
        *(a2 + 128) = 1;
      }

      else
      {
        _AMInvalidateHotspotProviderSession(*(a2 + 120));
        *(a2 + 128) = 0;
      }

      *(a2 + 120) = 0;
      v17 = *(a2 + 56);
      if (v17 && CFArrayGetCount(v17) >= 1)
      {
        CFArrayRemoveAllValues(*(a2 + 56));
      }

      v18 = *(a2 + 64);
      if (v18 && CFArrayGetCount(v18) >= 1)
      {
        CFArrayRemoveAllValues(*(a2 + 64));
      }

      if (*(a2 + 90))
      {
        CNEvaluatedNetworksRemove(*(a2 + 24));
        v19 = mysyslog_get_logger();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = *(a2 + 24);
          v22 = 138412290;
          v23 = v21;
          _os_log_impl(&dword_277237000, v19, v20, "removing provider [%@] due to its configuration removal", &v22, 0xCu);
        }

        if (S_plugins)
        {
          CFDictionaryRemoveValue(S_plugins, *(a2 + 24));
        }
      }
    }

    else if (a1 == 3)
    {
      v8 = mysyslog_get_logger();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(a2 + 112);
        v11 = *(a2 + 24);
        v22 = 138412546;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_277237000, v8, v9, "hotspot provider started (configuration:[%@] provider:[%@])", &v22, 0x16u);
      }

      *(a2 + 128) = 3;
      v12 = *(a2 + 56);
      if (v12)
      {
        if (CFArrayGetCount(v12) >= 1)
        {
          CNPluginStateIssueCommand(a2, 0);
        }
      }
    }

    else if (a1 != 5 || *(a2 + 128))
    {
      *(a2 + 128) = a1;
    }
  }
}

void CNPluginStateAddCommandApplier(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 12) && (*(a1 + 16) || *(a1 + 48)))
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v5))
    {
      return;
    }

    v6 = *(a1 + 24);
    v19 = 138412290;
    v20 = v6;
    v7 = "Not sending filter command to [%@]";
LABEL_10:
    v9 = logger;
    v10 = v5;
LABEL_11:
    _os_log_impl(&dword_277237000, v9, v10, v7, &v19, 0xCu);
    return;
  }

  if (*(a2 + 13))
  {
    if (*(a1 + 49))
    {
      logger = mysyslog_get_logger();
      v5 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(logger, v5))
      {
        return;
      }

      v8 = *(a1 + 24);
      v19 = 138412290;
      v20 = v8;
      v7 = "Not sending evaluate command to [%@]";
      goto LABEL_10;
    }

    *(a1 + 136) = 0;
    v11 = "evaluate";
  }

  else
  {
    v11 = "filter";
  }

  v12 = *(a2 + 16);
  if (v12 && (v13 = *(a1 + 24), v24.location = *(a2 + 24), v24.length = *(a2 + 32), CFArrayContainsValue(v12, v24, v13)))
  {
    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      v19 = 138412290;
      v20 = v13;
      v7 = "Not sending command to excluded plugin %@";
      v9 = v14;
      v10 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(a1 + 24);
      v19 = 136315394;
      v20 = v11;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_277237000, v16, v17, "sending %s command to [%@]", &v19, 0x16u);
    }

    CNPluginStateIssueCommand(a1, *a2);
    ++*(a2 + 8);
  }
}

void CNPluginStateLaunchApplier(uint64_t a1, CFArrayRef *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    return;
  }

  v3 = *(a1 + 24);
  if (*(a1 + 72))
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v5))
    {
      return;
    }

    v14 = 138412290;
    v15 = v3;
    v6 = "Plugin %@ is already running";
    goto LABEL_6;
  }

  if (*(a1 + 89))
  {
    if (!*(a1 + 48) || !*(a1 + 49))
    {

      CNPluginStateStartProviderSession(a1);
    }

    return;
  }

  v8 = mysyslog_get_logger();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_277237000, v8, v9, "Launching %@ in the background", &v14, 0xCu);
  }

  v10 = _AMLaunchApplicationWithIdentifier(v3, 1);
  *(a1 + 88) = 0;
  if (!v10)
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v5))
    {
      return;
    }

    v14 = 138412290;
    v15 = v3;
    v6 = "Launched %@ in the background";
LABEL_6:
    _os_log_impl(&dword_277237000, logger, v5, v6, &v14, 0xCu);
    return;
  }

  v11 = v10;
  if (v10 == 1)
  {
    my_CFArrayPointerAddValue(a2, v3);
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v5))
    {
      return;
    }

    v14 = 138412290;
    v15 = v3;
    v6 = "Application %@ is no longer installed";
    goto LABEL_6;
  }

  v12 = mysyslog_get_logger();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_277237000, v12, v13, "_AMLaunchApplicationWithIdentifier(%@) failed, %d", &v14, 0x12u);
  }

  *(a1 + 88) = 1;
}

void CNPluginStateBuiltinRemoveDeliveredCommand(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 88);
  if (v3)
  {
    Value = my_CFArrayFindValue(v3, a2);
    if (Value != -1)
    {
      v6 = Value;
      logger = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v8))
      {
        v9 = 138412290;
        v10 = a2;
        _os_log_impl(&dword_277237000, logger, v8, "Removing %@", &v9, 0xCu);
      }

      CFArrayRemoveValueAtIndex(*(a1 + 88), v6);
    }
  }
}

void InitHotspotProviderConfigurationChangeMonitor(uint64_t a1, uint64_t (*a2)(void))
{
  v18 = *MEMORY[0x277D85DE8];
  out_token = -1;
  if (S_handler)
  {
    v2 = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v2, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v2, v3, "Hotspot Provider Configuration Change Monitor is already initialized", buf, 2u);
    }
  }

  else
  {
    v6 = dispatch_queue_create("Hotspot Provider Configuration Module", 0);
    v7 = S_queue;
    S_queue = v6;

    v8 = notify_register_dispatch("com.apple.neconfigurationchanged", &out_token, S_queue, &__block_literal_global_4);
    if (v8)
    {
      v9 = v8;
      v10 = mysyslog_get_logger();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 136315394;
        v15 = "com.apple.neconfigurationchanged";
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_277237000, v10, v11, "failed to register for notification for [%s] with status %u", buf, 0x12u);
      }

      v12 = S_queue;
      S_queue = 0;
    }

    else
    {
      S_handler = a2;
      S_token = out_token;
      S_runloop_0 = a1;
      FetchHotspotProviderConfigurations();
    }
  }
}

void __InitHotspotProviderConfigurationChangeMonitor_block_invoke(uint64_t a1, int a2)
{
  v3 = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_277237000, v3, v4, "recived NE configuration change notification", v5, 2u);
  }

  if (S_token == a2)
  {
    FetchHotspotProviderConfigurations();
  }
}

void FetchHotspotProviderConfigurations()
{
  v0 = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  [v0 loadConfigurationsWithCompletionQueue:S_queue handler:&__block_literal_global_5];
}

void DeinitHotspotProviderConfigurationChangeMonitor()
{
  if (S_token)
  {
    notify_cancel(S_token);
    S_token = -1;
  }

  S_handler = 0;
  S_runloop_0 = 0;
  v0 = S_queue;
  S_queue = 0;
}

void __FetchHotspotProviderConfigurations_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = mysyslog_get_logger();
  if (v5)
  {
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_277237000, v6, v7, "failed to load NE configurations with error %@", &buf, 0xCu);
    }
  }

  else
  {
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v8))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "FetchHotspotProviderConfigurations_block_invoke";
      _os_log_impl(&dword_277237000, v6, v8, "%s: loaded NE configurations successfully", &buf, 0xCu);
    }

    v9 = v4;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __CopyHotspotProviderConfigurations_block_invoke;
    v16[3] = &unk_27A714A48;
    v16[4] = &buf;
    [v9 enumerateObjectsUsingBlock:v16];
    v10 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);

    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_277237000, v11, v12, "found hotspot provider configurations: %@", &buf, 0xCu);
    }

    if (S_handler)
    {
      v13 = S_runloop_0;
      if (S_runloop_0)
      {
        v14 = *MEMORY[0x277CBF058];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v18 = __ScheduleConfigurationChangeHandler_block_invoke;
        v19 = &__block_descriptor_40_e5_v8__0l;
        v20 = v10;
        v15 = v10;
        CFRunLoopPerformBlock(v13, v14, &buf);
        CFRunLoopWakeUp(S_runloop_0);
      }
    }
  }
}

void sub_27725F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CopyHotspotProviderConfigurations_block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hotspot];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 hotspot];
    v7 = [v6 isEnabled];

    if (v7)
    {
      v8 = mysyslog_get_logger();
      v9 = _SC_syslog_os_log_mapping();
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [v3 identifier];
        v12 = [v11 UUIDString];
        v13 = [v3 hotspot];
        v14 = [v13 evaluationProviderBundleIdentifier];
        v15 = [v3 hotspot];
        v16 = [v15 authenticationProviderBundleIdentifier];
        v34 = 138412802;
        v35 = v12;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_277237000, v10, v9, "found hotspot provider configuration: [%@] with identifier: [%@] [%@]", &v34, 0x20u);
      }

      if (!*(*(*(a1 + 32) + 8) + 40))
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v18 = *(*(a1 + 32) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = [v3 hotspot];
      v22 = [v21 authenticationProviderBundleIdentifier];
      [v20 setObject:v22 forKeyedSubscript:@"AuthenticationProviderIdentifier"];

      v23 = [v3 identifier];
      v24 = [v23 UUIDString];
      [v20 setObject:v24 forKeyedSubscript:@"ProviderConfigurationIdentifier"];

      v25 = [v3 application];
      [v20 setObject:v25 forKeyedSubscript:@"HotspotApplicationIdentifier"];

      v26 = [v3 hotspot];
      v27 = [v26 evaluatedSSIDs];
      v28 = [v27 count];

      if (v28)
      {
        v29 = [v3 hotspot];
        v30 = [v29 evaluatedSSIDs];
        [v20 setObject:v30 forKeyedSubscript:@"ProviderEvaluatedSSIDs"];
      }

      v31 = *(*(*(a1 + 32) + 8) + 40);
      v32 = [v3 hotspot];
      v33 = [v32 evaluationProviderBundleIdentifier];
      [v31 setObject:v20 forKeyedSubscript:v33];
    }
  }
}

void __ScheduleConfigurationChangeHandler_block_invoke(uint64_t a1)
{
  S_handler(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

void CaptiveAnalyticsSessionPostNonCaptiveEvent(unsigned int *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    v5 = "Event Post Failed";
    if (v2)
    {
      v5 = "Event Posted";
    }

    v6 = *a1;
    if (v6 > 4)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = CaptiveWiFiSecurityTypeGetString_names[v6];
    }

    v8 = "true";
    v9 = *(a1 + 4);
    *buf = 136315906;
    if (!v9)
    {
      v8 = "false";
    }

    v11 = "com.apple.captive.session.non-captive";
    v12 = 2080;
    v13 = v5;
    v14 = 2080;
    v15 = v7;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_277237000, logger, v4, "%s %s \n \t    { \n \t\tWi-Fi Security Type: %s \n \t\tCaptive Bypass: %s \n \t    }", buf, 0x2Au);
  }
}

xpc_object_t __CaptiveAnalyticsSessionPostNonCaptiveEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "CaptiveBypass", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "SecurityType", **(a1 + 32));
  return v2;
}

void CaptiveAnalyticsSessionPostBuiltinEvent(uint64_t *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    v5 = "Event Post Failed";
    if (v2)
    {
      v5 = "Event Posted";
    }

    v6 = *(a1 + 2);
    if (v6 > 3)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = CaptiveDetectionTypeGetString_names[v6];
    }

    v8 = *a1;
    v9 = a1[2];
    v10 = "false";
    if (*(a1 + 24))
    {
      v10 = "true";
    }

    v12 = a1[4];
    v11 = a1[5];
    v13 = *(a1 + 12);
    if (v13 > 4)
    {
      v14 = "<unknown>";
    }

    else
    {
      v14 = CaptiveWiFiSecurityTypeGetString_names[v13];
    }

    *buf = 136317186;
    v16 = "com.apple.captive.session.builtin";
    v17 = 2080;
    v18 = v5;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2080;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    v29 = 2048;
    v30 = v11;
    v31 = 2080;
    v32 = v14;
    _os_log_impl(&dword_277237000, logger, v4, "%s %s \n \t    {\t\n \t\tDetection type: %s, \n \t\tTotal Duration %qu seconds \n \t\tMaintenance Interval: %qu, \n \t\tAuto Login Used: %s \n \t\tCorrect Passive Detection Count: %lld, \n \t\tIncorrect Passive Detection Count: %lld, \n \t\tWi-Fi Security Type: %s \n \t    }", buf, 0x5Cu);
  }
}

xpc_object_t __CaptiveAnalyticsSessionPostBuiltinEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "TotalDuration", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "DetectionType", *(*(a1 + 32) + 8));
  xpc_dictionary_set_BOOL(v2, "AutoLoginUsed", *(*(a1 + 32) + 24) != 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    xpc_dictionary_set_uint64(v2, "MaintenanceInterval", v4);
    xpc_dictionary_set_uint64(v2, "CorrectPassiveDetections", *(*(a1 + 32) + 32));
    xpc_dictionary_set_uint64(v2, "IncorrectPassiveDetections", *(*(a1 + 32) + 40));
    v3 = *(a1 + 32);
  }

  xpc_dictionary_set_uint64(v2, "SecurityType", *(v3 + 48));
  return v2;
}

void CaptiveAnalyticsSessionPostHSHelperEvent(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    v5 = "Event Post Failed";
    v6 = *a1;
    v7 = a1[1];
    v8 = *(a1 + 16);
    if (v2)
    {
      v5 = "Event Posted";
    }

    *buf = 136316162;
    v9 = "false";
    v11 = "com.apple.captive.session.hotspot-helper";
    v12 = 2080;
    if (v8)
    {
      v9 = "true";
    }

    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_277237000, logger, v4, "%s %s \n \t    { \n \t\tTotal Duration %qu seconds \n \t\tBundle Identifier: %@, \n \t\tInternet Access: %s \n \t    }", buf, 0x34u);
  }
}

xpc_object_t __CaptiveAnalyticsSessionPostHSHelperEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "TotalDuration", **(a1 + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
    xpc_dictionary_set_string(v2, "BundleID", CStringPtr);
    v3 = *(a1 + 32);
  }

  xpc_dictionary_set_BOOL(v2, "InternetAccess", *(v3 + 16) != 0);
  return v2;
}

void CaptiveAnalyticsSessionPostIncompleteEvent(unsigned int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    v5 = "Event Post Failed";
    if (v2)
    {
      v5 = "Event Posted";
    }

    if (a1 > 4)
    {
      v6 = "<unknown>";
    }

    else
    {
      v6 = CaptiveIncompleteReasonGetString_names[a1];
    }

    *buf = 136315650;
    v8 = "com.apple.captive.session.incomplete";
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_277237000, logger, v4, "%s %s \n \t    { \n \t\tReason: %s, \n \t    }", buf, 0x20u);
  }
}

xpc_object_t __CaptiveAnalyticsSessionPostIncompleteEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "Reason", *(a1 + 32));
  return v2;
}

void CaptiveAnalyticsSessionPostInconclusiveEvent(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    v5 = "Event Post Failed";
    *buf = 136315650;
    v7 = "com.apple.captive.session.inconclusive";
    if (v2)
    {
      v5 = "Event Posted";
    }

    v8 = 2080;
    v9 = v5;
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&dword_277237000, logger, v4, "%s %s \n \t    { \n \t\terror Code: %qu \n \t    }", buf, 0x20u);
  }
}

xpc_object_t __CaptiveAnalyticsSessionPostInconclusiveEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "ErrorCode", *(a1 + 32));
  return v2;
}

uint64_t CommandHandlerNotify(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    _SC_sendMachMessage();
    return 1;
  }

  return result;
}

uint64_t CNSServerConnectionEstablish(int a1, UInt8 *bytes, int a3, mach_port_name_t a4, _DWORD *a5, int *a6, __int128 *a7)
{
  v82 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a5 = 0;
  v9 = MEMORY[0x277D85F48];
  if (!bytes)
  {
    CFDictionaryGetTypeID();
    v14 = 0;
LABEL_12:
    v21 = 1;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, a3);
  MEMORY[0x277CABBC0](*v9, bytes, a3);
  TypeID = CFDictionaryGetTypeID();
  if (!v14)
  {
    goto LABEL_12;
  }

  if (CFGetTypeID(v14) == TypeID)
  {
    Value = CFDictionaryGetValue(v14, @"Class");
    v17 = CFNumberGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v17 && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        v18 = CFDictionaryGetValue(v14, @"Information");
        v19 = CFDictionaryGetTypeID();
        if (v18)
        {
          if (CFGetTypeID(v18) == v19)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v24 = valuePtr;
        v25 = a7[1];
        v72 = *a7;
        v73 = v25;
        v76 = 0;
        v77 = 0;
        *name = 0;
        if (valuePtr >= 7)
        {
          logger = mysyslog_get_logger();
          v27 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v27))
          {
            *buf = 67109120;
            *&buf[4] = v24;
            _os_log_impl(&dword_277237000, logger, v27, "class %d >= kCommandHandlerClassLast", buf, 8u);
          }

          v22 = 22;
          goto LABEL_58;
        }

        if (!S_class_methods[valuePtr])
        {
          v33 = mysyslog_get_logger();
          v22 = 6;
          v34 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_58;
          }

          v35 = CommandHandlerClassString(v24);
          *buf = 136315138;
          *&buf[4] = v35;
          v36 = "no class handler for %s";
          v37 = v33;
          v38 = v34;
          goto LABEL_47;
        }

        v71 = S_class_methods[valuePtr];
        v28 = a7[1];
        *buf = *a7;
        *&buf[16] = v28;
        pid = audit_token_get_pid(buf);
        if (!S_handlers || (Count = CFDictionaryGetCount(S_handlers)) == 0)
        {
LABEL_43:
          if (!(*v71)(&v72))
          {
            v50 = mysyslog_get_logger();
            v51 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = CommandHandlerClassString(v24);
              *buf = 136315138;
              *&buf[4] = v52;
              _os_log_impl(&dword_277237000, v50, v51, "class handler %s denied registration", buf, 0xCu);
            }

            v22 = 1;
            goto LABEL_58;
          }

          v45 = mach_port_allocate(*v9, 1u, name);
          if (v45)
          {
            v46 = v45;
            v47 = mysyslog_get_logger();
            v48 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v47, v48))
            {
              v22 = 12;
LABEL_58:
              if (a4)
              {
                mach_port_deallocate(*v9, a4);
              }

              goto LABEL_60;
            }

            v49 = mach_error_string(v46);
            *buf = 136315138;
            *&buf[4] = v49;
            v36 = "mach_port_allocate failed, %s";
            v22 = 12;
            v37 = v47;
            v38 = v48;
LABEL_47:
            _os_log_impl(&dword_277237000, v37, v38, v36, buf, 0xCu);
            goto LABEL_58;
          }

          if (!__kCommandHandlerTypeID)
          {
            __kCommandHandlerTypeID = _CFRuntimeRegisterClass();
          }

          Instance = _CFRuntimeCreateInstance();
          *(Instance + 16) = 0u;
          *(Instance + 32) = 0u;
          *(Instance + 48) = 0u;
          *(Instance + 64) = 0u;
          *(Instance + 80) = 0;
          v54 = _SC_CFMachPortCreateWithPort();
          *(Instance + 16) = v54;
          if (v54)
          {
            *(Instance + 24) = CFMachPortCreateRunLoopSource(0, v54, 0);
            Current = CFRunLoopGetCurrent();
            CFRunLoopAddSource(Current, *(Instance + 24), *MEMORY[0x277CBF058]);
            mach_port_insert_right(*v9, name[0], name[0], 0x14u);
            v56 = mach_port_request_notification(*v9, name[0], 70, 1u, name[0], 0x15u, &name[1]);
            if (!v56)
            {
              *(Instance + 32) = a4;
              *(Instance + 36) = v24;
              *(Instance + 40) = pid;
              *buf = v72;
              *&buf[16] = v73;
              *(Instance + 44) = audit_token_get_euid(buf);
              v63 = v73;
              *(Instance + 48) = v72;
              *(Instance + 64) = v63;
              v76 = Instance;
              v77 = v20;
              add_handler(Instance);
              if (v71[1](&v76))
              {
                v64 = mysyslog_get_logger();
                v65 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v64, v65))
                {
                  v66 = CommandHandlerClassString(v24);
                  *buf = 136315394;
                  *&buf[4] = v66;
                  *&buf[12] = 1024;
                  *&buf[14] = pid;
                  _os_log_impl(&dword_277237000, v64, v65, "CommandHandlerServer: %s pid %d registered", buf, 0x12u);
                }

                v22 = 0;
              }

              else
              {
                name[0] = 0;
                remove_handler(Instance);
                v67 = mysyslog_get_logger();
                v68 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v67, v68))
                {
                  v69 = CommandHandlerClassString(v24);
                  *buf = 136315394;
                  *&buf[4] = v69;
                  *&buf[12] = 1024;
                  *&buf[14] = pid;
                  _os_log_impl(&dword_277237000, v67, v68, "Registering %s pid %d FAILED", buf, 0x12u);
                }

                v22 = 22;
              }

              goto LABEL_71;
            }

            v57 = v56;
            name[0] = 0;
            v58 = mysyslog_get_logger();
            v59 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = mach_error_string(v57);
              *buf = 136315138;
              *&buf[4] = v60;
              v22 = 12;
              _os_log_impl(&dword_277237000, v58, v59, "request MACH_NOTIFY_NO_SENDERS failed, %s", buf, 0xCu);
LABEL_71:
              CFRelease(Instance);
LABEL_60:
              *a5 = name[0];
              goto LABEL_15;
            }
          }

          else
          {
            v61 = mysyslog_get_logger();
            v62 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v61, v62))
            {
              *buf = 0;
              _os_log_impl(&dword_277237000, v61, v62, "failed to create session port", buf, 2u);
            }
          }

          v22 = 12;
          goto LABEL_71;
        }

        v31 = Count;
        v70 = v20;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        memset(buf, 0, sizeof(buf));
        if (Count <= 0xA)
        {
          v32 = buf;
          CFDictionaryGetKeysAndValues(S_handlers, 0, buf);
        }

        else
        {
          v32 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(S_handlers, 0, v32);
          if (v31 < 1)
          {
LABEL_36:
            v40 = 0;
            goto LABEL_37;
          }
        }

        v39 = 0;
        while (1)
        {
          v40 = v32[v39];
          if (v40[10] == pid)
          {
            break;
          }

          if (v31 == ++v39)
          {
            goto LABEL_36;
          }
        }

LABEL_37:
        if (v32 != buf)
        {
          free(v32);
        }

        v20 = v70;
        if (v40)
        {
          v41 = mysyslog_get_logger();
          v42 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = CommandHandlerClassString(v40[9]);
            v44 = CommandHandlerClassString(v24);
            *buf = 67109634;
            *&buf[4] = pid;
            *&buf[8] = 2080;
            *&buf[10] = v43;
            *&buf[18] = 2080;
            *&buf[20] = v44;
            _os_log_impl(&dword_277237000, v41, v42, "pid %d class %s trying to register again as class %s", buf, 0x1Cu);
          }

          v22 = 16;
          goto LABEL_58;
        }

        goto LABEL_43;
      }
    }
  }

  v21 = 0;
  if (a4)
  {
LABEL_13:
    mach_port_deallocate(*v9, a4);
  }

LABEL_14:
  v22 = 22;
  if ((v21 & 1) == 0)
  {
LABEL_15:
    CFRelease(v14);
  }

  *a6 = v22;
  return 0;
}

void CNSServerConnectionHandleType(uint64_t a1, int a2, UInt8 *a3, int a4, const __CFData **a5, _DWORD *a6, int *a7)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  handler = get_handler(a1);
  if (!handler)
  {
    v17 = 2;
    goto LABEL_40;
  }

  v14 = handler;
  if (a3)
  {
    v15 = my_CFPropertyListCreateWithBytePtrAndLength(a3, a4);
    MEMORY[0x277CABBC0](*MEMORY[0x277D85F48], a3, a4);
    TypeID = CFDictionaryGetTypeID();
    if (!v15)
    {
      goto LABEL_39;
    }

    if (CFGetTypeID(v15) != TypeID)
    {
      v17 = 22;
LABEL_19:
      CFRelease(v15);
      goto LABEL_40;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v14[9];
  if (v18 > 6 || (v19 = S_class_methods[v18]) == 0)
  {
    v17 = 6;
    goto LABEL_18;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v25 = v14;
      v26 = 0;
      v20 = v19[3](&v25);
      v21 = v26;
      goto LABEL_23;
    }

    if (v15)
    {
      v25 = v14;
      v26 = v15;
      v23 = v19[4](&v25);
      goto LABEL_37;
    }

LABEL_39:
    v17 = 22;
    goto LABEL_40;
  }

  if (a2 == 2)
  {
    if (v15)
    {
      v25 = v14;
      v26 = v15;
      v27 = 0;
      v20 = v19[5](&v25);
      v21 = v27;
LABEL_23:
      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        goto LABEL_27;
      }

LABEL_38:
      v17 = 22;
      goto LABEL_18;
    }

    goto LABEL_39;
  }

  if (!v15)
  {
    goto LABEL_39;
  }

  v25 = v14;
  v26 = v15;
  v24 = v19[6];
  if (v24)
  {
    v23 = v24(&v25);
  }

  else
  {
    v23 = 0;
  }

LABEL_37:
  v22 = 0;
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_27:
  if (v22)
  {
    if (a5)
    {
      *a5 = my_CFPropertyListCreateVMData(v22, a6);
    }

    CFRelease(v22);
  }

  v17 = 0;
LABEL_18:
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_40:
  *a7 = v17;
}

__n128 CommandHandlerGetAuditToken@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 48);
  v3 = *(a1 + 64);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void CommandHandlerListApplyFunction(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (S_handlers)
  {
    context[1] = a2;
    context[0] = a1;
    context[2] = a3;
    CFDictionaryApplyFunction(S_handlers, CommandHandlerListApplier, context);
  }
}

uint64_t CommandHandlerListApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*a3 || *a3 == *(a2 + 36))
  {
    return (*(a3 + 8))(a2, *(a3 + 16));
  }

  return result;
}

void CommandHandlerClassRegister(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v4))
    {
      return;
    }

    v6 = 136315138;
    v7 = CommandHandlerClassString(v2);
    v5 = "Class Handler for %s NOT Registered";
    goto LABEL_7;
  }

  S_class_methods[a1] = a2;
  if (CaptiveIsDebug())
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      v6 = 136315138;
      v7 = CommandHandlerClassString(v2);
      v5 = "Class Handler for %s Registered";
LABEL_7:
      _os_log_impl(&dword_277237000, logger, v4, v5, &v6, 0xCu);
    }
  }
}

void command_handler_server(uint64_t a1, mach_msg_header_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CAA770](*MEMORY[0x277CBECE8], dword_28865D4D8, 641011365, 0);
  if (!CNSServer_server(a2, v3) && a2->msgh_id == 70)
  {
    audit_trailer = os_mach_msg_get_audit_trailer();
    if (audit_trailer)
    {
      v5 = *(audit_trailer + 36);
      *v19 = *(audit_trailer + 20);
      *&v19[16] = v5;
      if (!audit_token_get_pid(v19))
      {
        msgh_local_port = a2->msgh_local_port;
        handler = get_handler(msgh_local_port);
        if (handler)
        {
          v8 = handler;
          v9 = handler[9];
          logger = mysyslog_get_logger();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v11))
          {
            v12 = CommandHandlerClassString(v9);
            v13 = *(v8 + 40);
            *v19 = 136315394;
            *&v19[4] = v12;
            *&v19[12] = 1024;
            *&v19[14] = v13;
            _os_log_impl(&dword_277237000, logger, v11, "CommandHandlerServer: %s pid %d died", v19, 0x12u);
          }

          if (v9 <= 6)
          {
            v14 = S_class_methods[v9];
            if (v14)
            {
              (*(v14 + 16))(v8);
            }
          }

          remove_handler(v8);
          mach_port_mod_refs(*MEMORY[0x277D85F48], msgh_local_port, 1u, -1);
        }
      }
    }

    else
    {
      v15 = mysyslog_get_logger();
      v16 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v15, v16))
      {
        *v19 = 0;
        _os_log_impl(&dword_277237000, v15, v16, "can't get audit token trailer", v19, 2u);
      }
    }
  }

  if ((v3->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v3[1].msgh_remote_port;
    if (msgh_remote_port == -305)
    {
      goto LABEL_24;
    }

    if (msgh_remote_port)
    {
      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }
  }

  if (!v3->msgh_remote_port)
  {
    if ((v3->msgh_bits & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v3->msgh_bits & 0x1F) == 0x12)
  {
    v18 = 1;
  }

  else
  {
    v18 = 17;
  }

  if ((mach_msg(v3, v18, v3->msgh_size, 0, 0, 0, 0) - 268435459) <= 1)
  {
LABEL_23:
    mach_msg_destroy(v3);
  }

LABEL_24:
  CFAllocatorDeallocate(0, v3);
}

void add_handler(CFMachPortRef *a1)
{
  Port = CFMachPortGetPort(a1[2]);
  if (!S_handlers)
  {
    S_handlers = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  valuePtr = Port;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(S_handlers, v3, a1);
  CFRelease(v3);
}

void remove_handler(uint64_t a1)
{
  valuePtr = CFMachPortGetPort(*(a1 + 16));
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionaryRemoveValue(S_handlers, v1);
  CFRelease(v1);
}

void __CommandHandlerDeallocate(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(a1 + 16));
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v4);
  }

  my_FieldSetRetainedCFType((a1 + 80), 0);
}

CFStringRef __CommandHandlerCopyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CommandHandlerClassString(a1[9]);
  return CFStringCreateWithFormat(v2, 0, @"<CommandHandler %s pid %d>", v3, a1[10]);
}

const void *get_handler(int a1)
{
  if (!S_handlers)
  {
    return 0;
  }

  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  Value = CFDictionaryGetValue(S_handlers, v1);
  CFRelease(v1);
  return Value;
}

double TimerCreate()
{
  v0 = malloc_type_malloc(0x28uLL, 0xA00400EBEDA77uLL);
  if (v0)
  {
    v0[4] = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  return result;
}

void TimerRelease(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    TimerCancel(*a1);
    free(v1);
    *a1 = 0;
  }
}

void TimerCancel(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    if (*(a1 + 32))
    {
      logger = mysyslog_get_logger();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v3))
      {
        *v4 = 0;
        _os_log_impl(&dword_277237000, logger, v3, "timer: freeing timer source", v4, 2u);
      }

      CFRunLoopTimerInvalidate(*(a1 + 32));
      CFRelease(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }
}

void TimerSet(CFRunLoopTimerRef *a1, __CFRunLoopTimer *a2, __CFRunLoopTimer *a3, __CFRunLoopTimer *a4, __CFRunLoopTimer *a5, double a6)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  if (a1)
  {
    TimerCancel(a1);
    if (a2)
    {
      *a1 = a2;
      a1[1] = a3;
      a1[2] = a4;
      a1[3] = a5;
      v16.info = a1;
      v12 = CFAbsoluteTimeGetCurrent() + a6;
      a1[4] = CFRunLoopTimerCreate(0, v12, 0.0, 0, 0, TimerProcess, &v16);
      logger = mysyslog_get_logger();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v14))
      {
        *buf = 134218240;
        v18 = a6;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_277237000, logger, v14, "timer: wakeup time is (%0.09g) %0.09g", buf, 0x16u);
      }

      Current = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(Current, a1[4], *MEMORY[0x277CBF058]);
    }
  }
}

uint64_t TimerProcess(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *a2 = 0;
    return v2(*(a2 + 8), *(a2 + 16), *(a2 + 24));
  }

  return result;
}

void ThirdPartyAppRegisterSSIDs(void *key, void *value)
{
  Mutable = S_appID_list;
  if (!S_appID_list)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    S_appID_list = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);

  BuildSSIDLookup();
}

void BuildSSIDLookup()
{
  if (S_ssid_list)
  {
    CFRelease(S_ssid_list);
    S_ssid_list = 0;
  }

  v0 = *MEMORY[0x277CBECE8];
  S_ssid_list = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = S_appID_list;
  if (!S_appID_list)
  {
    Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    S_appID_list = Mutable;
  }

  CFDictionaryApplyFunction(Mutable, AppIDAddSSIDList, 0);
}

const void *ThirdPartyAppCopyIDsForSSID(void *key)
{
  Value = 0;
  v7 = *MEMORY[0x277D85DE8];
  if (key)
  {
    if (S_ssid_list)
    {
      Value = CFDictionaryGetValue(S_ssid_list, key);
      if (Value)
      {
        logger = mysyslog_get_logger();
        v3 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v3))
        {
          v5 = 138412290;
          v6 = Value;
          _os_log_impl(&dword_277237000, logger, v3, "The current ssid is found in ssidLookup: %@", &v5, 0xCu);
        }

        CFRetain(Value);
      }
    }
  }

  return Value;
}

void ThirdPartyAppRemoveSSIDs(void *key)
{
  v8 = *MEMORY[0x277D85DE8];
  Mutable = S_appID_list;
  if (!S_appID_list)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    S_appID_list = Mutable;
  }

  if (CFDictionaryContainsKey(Mutable, key))
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      v6 = 138412290;
      v7 = key;
      _os_log_impl(&dword_277237000, logger, v4, "Removing SSID registrations for %@", &v6, 0xCu);
    }

    v5 = S_appID_list;
    if (!S_appID_list)
    {
      v5 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      S_appID_list = v5;
    }

    CFDictionaryRemoveValue(v5, key);
    BuildSSIDLookup();
  }
}

void AppIDAddSSIDList(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, SSIDAddAppID, a1);
}

void SSIDAddAppID(void *key, const void *a2)
{
  Value = CFDictionaryGetValue(S_ssid_list, key);
  if (!Value)
  {
    Value = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(S_ssid_list, key, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a2);
}

void ThirdPartyAppRemove(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(a1);
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    v5[0] = 67109120;
    v5[1] = PID;
    _os_log_impl(&dword_277237000, logger, v3, "Third party app died %d", v5, 8u);
  }

  v4 = DisplayIDCopy(PID);
  ThirdPartyAppRemoveSSIDs(v4);
  CFRelease(v4);
}

double CCPGetUnwhitelistedNetworkProbeInterval()
{
  v3 = 259200.0;
  Number = CaptivePrefsGetNumber(@"UnwhitelistedNetworkProbeInterval", &v3);
  result = v3;
  if (v3 < 60.0 || Number == 0)
  {
    return 259200.0;
  }

  return result;
}

uint64_t CCPSetUnwhitelistedNetworkProbeInterval(double a1)
{
  if (a1 < 60.0)
  {
    return 0;
  }

  CaptivePrefsSetNumber(@"UnwhitelistedNetworkProbeInterval", a1);
  return 1;
}

double CCPGetWhitelistedNetworkProbeInterval()
{
  v3 = 86400.0;
  Number = CaptivePrefsGetNumber(@"WhitelistedNetworkProbeInterval", &v3);
  result = v3;
  if (v3 < 60.0 || Number == 0)
  {
    return 86400.0;
  }

  return result;
}

uint64_t CCPSetWhitelistedNetworkProbeInterval(double a1)
{
  if (a1 < 60.0)
  {
    return 0;
  }

  CaptivePrefsSetNumber(@"WhitelistedNetworkProbeInterval", a1);
  return 1;
}

double CCPGetBrokenBackhaulProbeInterval()
{
  v1 = 300.0;
  if (!CaptivePrefsGetNumber(@"BrokenBackhaulProbeInterval", &v1))
  {
    return 300.0;
  }

  result = v1;
  if (v1 < 5.0 || v1 > 3600.0)
  {
    return 300.0;
  }

  return result;
}

uint64_t CCPSetBrokenBackhaulProbeInterval(double a1)
{
  result = 0;
  if (a1 >= 5.0 && a1 <= 3600.0)
  {
    CaptivePrefsSetNumber(@"BrokenBackhaulProbeInterval", a1);
    return 1;
  }

  return result;
}

double CCPGetBrokenBackhaulProbeTimeout()
{
  v2 = 20.0;
  if (!CaptivePrefsGetNumber(@"BrokenBackhaulProbeTimeout", &v2))
  {
    return 20.0;
  }

  result = v2;
  if (v2 < 5.0 || v2 > 120.0)
  {
    return 20.0;
  }

  return result;
}

uint64_t CCPSetBrokenBackhaulProbeTimeout(double a1)
{
  if (a1 < 5.0 || a1 > 120.0)
  {
    return 0;
  }

  CaptivePrefsSetNumber(@"BrokenBackhaulProbeTimeout", a1);
  return 1;
}

double CCPGetBrokenBackhaulPromptInterval()
{
  v3 = 86400.0;
  Number = CaptivePrefsGetNumber(@"BrokenBackhaulPromptInterval", &v3);
  result = v3;
  if (v3 < 60.0 || Number == 0)
  {
    return 86400.0;
  }

  return result;
}

uint64_t CCPSetBrokenBackhaulPromptInterval(double a1)
{
  if (a1 < 60.0)
  {
    return 0;
  }

  CaptivePrefsSetNumber(@"BrokenBackhaulPromptInterval", a1);
  return 1;
}

double CCPGetWebSheetLoginValidityInterval()
{
  v1 = 2592000.0;
  if (!CaptivePrefsGetNumber(@"WebSheetLoginValidityInterval", &v1))
  {
    return 2592000.0;
  }

  result = v1;
  if (v1 < 15.0 || v1 > 2592000.0)
  {
    return 2592000.0;
  }

  return result;
}

uint64_t CCPSetWebSheetLoginValidityInterval(double a1)
{
  result = 0;
  if (a1 >= 15.0 && a1 <= 2592000.0)
  {
    CaptivePrefsSetNumber(@"WebSheetLoginValidityInterval", a1);
    return 1;
  }

  return result;
}

double CCPGetWebSheetInSetupDismissalInterval()
{
  v1 = 1800.0;
  if (!CaptivePrefsGetNumber(@"WebSheetInSetupDismissalInterval", &v1))
  {
    return 1800.0;
  }

  result = v1;
  if (v1 < 300.0 || v1 > 3600.0)
  {
    return 1800.0;
  }

  return result;
}

uint64_t CCPSetWebSheetInSetupDismissalInterval(double a1)
{
  result = 0;
  if (a1 >= 300.0 && a1 <= 3600.0)
  {
    CaptivePrefsSetNumber(@"WebSheetInSetupDismissalInterval", a1);
    return 1;
  }

  return result;
}

uint64_t CaptiveSymptomFramework()
{
  result = CaptiveSymptomFramework_framework;
  if (!CaptiveSymptomFramework_framework)
  {
    result = symptom_framework_init();
    CaptiveSymptomFramework_framework = result;
  }

  return result;
}

uint64_t CaptiveSymptomEnablePassiveDetection(int a1, uint64_t a2)
{
  if (!CaptiveSymptomFramework_framework)
  {
    CaptiveSymptomFramework_framework = symptom_framework_init();
  }

  symptom_new();
  result = symptom_send();
  if (a1)
  {
    if (!CaptiveSymptomFramework_framework)
    {
      CaptiveSymptomFramework_framework = symptom_framework_init();
    }

    symptom_new();
    if (a2)
    {
      v5 = _SC_cfstring_to_cstring();
      if (v5)
      {
        v6 = v5;
        strlen(v5);
        symptom_set_additional_qualifier();
        CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v6);
      }
    }

    return symptom_send();
  }

  return result;
}

uint64_t CaptiveSymptomReportCaptiveState(uint64_t a1, int a2)
{
  if (!CaptiveSymptomFramework_framework)
  {
    CaptiveSymptomFramework_framework = symptom_framework_init();
  }

  symptom_new();
  symptom_set_qualifier();
  symptom_set_qualifier();

  return symptom_send();
}

uint64_t CaptiveSymptomReportInconclusiveCaptiveEvaluation()
{
  if (!CaptiveSymptomFramework_framework)
  {
    CaptiveSymptomFramework_framework = symptom_framework_init();
  }

  symptom_new();

  return symptom_send();
}

uint64_t CaptiveSymptomReportBackhaulState(uint64_t a1, unsigned int a2)
{
  if (!CaptiveSymptomFramework_framework)
  {
    CaptiveSymptomFramework_framework = symptom_framework_init();
  }

  symptom_new();
  symptom_set_qualifier();
  symptom_set_qualifier();

  return symptom_send();
}

uint64_t CaptiveSymptomScheduleEventFetch(uint64_t a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  v3 = managed_event_fetch();
  if ((v3 & 1) == 0)
  {
    _Block_release(v2);
  }

  return v3;
}

void __CaptiveSymptomScheduleEventFetch_block_invoke(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      v18 = 67109120;
      LODWORD(v19) = a2;
      _os_log_impl(&dword_277237000, logger, v6, "managed_event_fetch failed %d", &v18, 8u);
    }
  }

  else if (a3)
  {
    v8 = a3[6];
    v9 = a3[4];
    v10 = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      v15 = a3[5];
      v18 = 134219266;
      v19 = v12;
      v20 = 2080;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 2080;
      v25 = v15;
      v26 = 2048;
      v27 = v9;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_277237000, v10, v11, "managed_event_fetch:\nid = %lld\nclass = %s\ntime = %f\ncause = %s\ncode = %lld\nadditional info = %@", &v18, 0x3Eu);
    }

    CFDictionaryGetTypeID();
    if (v8)
    {
      CFGetTypeID(v8);
    }
  }

  else
  {
    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_277237000, v16, v17, "managed_event_fetch returned NULL event", &v18, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
}

const char *CommandHandlerClassString(unsigned int a1)
{
  if (a1 <= 6)
  {
    return CommandHandlerClassString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

void NetIFRetainWiFiAssertion()
{
  if (!S_assertion_refcount++)
  {
    v6 = v0;
    v7 = v1;
    if (getWiFiManagerClient())
    {
      logger = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        *v5 = 0;
        _os_log_impl(&dword_277237000, logger, v4, "NetIFRetainWiFiAssertion", v5, 2u);
      }

      WiFiManagerClientSetType();
    }
  }
}

uint64_t getWiFiManagerClient()
{
  if (!getWiFiManagerClient_client)
  {
    getWiFiManagerClient_client = WiFiManagerClientCreate();
    if (!getWiFiManagerClient_client)
    {
      logger = mysyslog_get_logger();
      v1 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v1))
      {
        *v3 = 0;
        _os_log_impl(&dword_277237000, logger, v1, "Failed to create a WiFiManager client", v3, 2u);
      }
    }
  }

  return getWiFiManagerClient_client;
}

void NetIFReleaseWiFiAssertion()
{
  v0 = S_assertion_refcount;
  if (S_assertion_refcount)
  {
    --S_assertion_refcount;
    if (v0 == 1 && getWiFiManagerClient())
    {
      logger = mysyslog_get_logger();
      v2 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v2))
      {
        *v5 = 0;
        _os_log_impl(&dword_277237000, logger, v2, "NetIFReleaseWiFiAssertion", v5, 2u);
      }

      WiFiManagerClientSetType();
    }
  }

  else
  {
    v3 = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v3, v4, "NetIFReleaseWiFiAssertion: Assertion count is zero!", buf, 2u);
    }
  }
}

void NetIFWiFiSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (getWiFiManagerClient() && !WiFiManagerClientSetNetworkProperty())
  {
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      v6 = 138412290;
      v7 = a2;
      _os_log_impl(&dword_277237000, logger, v5, "WiFiManagerClientSetNetworkProperty returned FALSE for property [%@]", &v6, 0xCu);
    }
  }
}

void NetIFSetRank(const __SCNetworkInterface *a1, uint64_t a2)
{
  v2 = a2;
  v20 = *MEMORY[0x277D85DE8];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (v2 == 3)
  {
    v4 = "Never";
  }

  else
  {
    v4 = "Default";
  }

  if (SCNetworkInterfaceSetPrimaryRank())
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v6))
    {
      return;
    }

    v14 = 138412546;
    v15 = BSDName;
    v16 = 2080;
    v17 = v4;
    v7 = "%@: set Rank%s";
    v8 = logger;
    v9 = v6;
    v10 = 22;
  }

  else
  {
    v11 = SCError();
    v12 = mysyslog_get_logger();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v12, v13))
    {
      return;
    }

    v14 = 138412802;
    v15 = BSDName;
    v16 = 2080;
    v17 = v4;
    v18 = 2080;
    v19 = SCErrorString(v11);
    v7 = "SCNetworkInterfaceSetPrimaryRank(%@, %s) failed, %s";
    v8 = v12;
    v9 = v13;
    v10 = 32;
  }

  _os_log_impl(&dword_277237000, v8, v9, v7, &v14, v10);
}

uint64_t (*NetIFSetNewInterfaceCallBack(uint64_t (*result)(void)))(void)
{
  v1 = result;
  if (!S_store)
  {
    v2 = CFDictionaryCreate(0, MEMORY[0x277CE1658], MEMORY[0x277CBED28], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = SCDynamicStoreCreateWithOptions(0, @"Captive", v2, 0, 0);
    CFRelease(v2);
    S_store = v3;
    result = getWiFiManagerClient();
    if (result)
    {
      CFRunLoopGetCurrent();
      WiFiManagerClientScheduleWithRunLoop();
      Current = CFRunLoopGetCurrent();
      CFRunLoopWakeUp(Current);
      WiFiManagerClientRegisterDeviceAttachmentCallback();
      result = WiFiManagerClientRegisterServerRestartCallback();
    }
  }

  S_new_interface_callback = v1;
  return result;
}

void NetIFCheckForNewInterfaces()
{
  if (getWiFiManagerClient())
  {
    v0 = WiFiManagerClientCopyDevices();
    if (v0)
    {
      v1 = v0;
      Count = CFArrayGetCount(v0);
      if (Count >= 1)
      {
        v3 = Count;
        for (i = 0; i != v3; ++i)
        {
          CFArrayGetValueAtIndex(v1, i);
          if (S_new_interface_callback)
          {
            InterfaceName = WiFiDeviceClientGetInterfaceName();
            S_new_interface_callback(InterfaceName);
          }
        }
      }

      CFRelease(v1);
    }

    else
    {
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v7))
      {
        *v8 = 0;
        _os_log_impl(&dword_277237000, logger, v7, "failed to get the Wi-Fi devices", v8, 2u);
      }
    }
  }
}

void registerForScanResults(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (getWiFiManagerClient())
  {
    if (WiFiManagerClientGetDevice())
    {

      MEMORY[0x2821876B8]();
    }

    else
    {
      logger = mysyslog_get_logger();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v3))
      {
        v4 = 138412290;
        v5 = a1;
        _os_log_impl(&dword_277237000, logger, v3, "WiFiManagerClientGetDevice for %@ returned NULL", &v4, 0xCu);
      }
    }
  }
}

uint64_t NetIFCopyCurrentWiFiNetwork(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!getWiFiManagerClient())
  {
    return 0;
  }

  if (!WiFiManagerClientGetDevice())
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      v5 = 138412290;
      v6 = a1;
      _os_log_impl(&dword_277237000, logger, v4, "WiFiManagerClientGetDevice for %@ returned NULL", &v5, 0xCu);
    }

    return 0;
  }

  return WiFiDeviceClientCopyCurrentNetwork();
}

uint64_t NetIFCopyCurrentWiFiNetworkWithSignal(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!getWiFiManagerClient())
  {
    return 0;
  }

  if (!WiFiManagerClientGetDevice())
  {
    logger = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v7))
    {
      v9 = 138412290;
      v10 = a1;
      _os_log_impl(&dword_277237000, logger, v7, "WiFiManagerClientGetDevice for %@ returned NULL", &v9, 0xCu);
    }

    return 0;
  }

  v2 = WiFiDeviceClientCopyCurrentNetwork();
  if (v2)
  {
    v3 = *MEMORY[0x277D29900];
    v4 = WiFiDeviceClientCopyProperty();
    if (v4)
    {
      v5 = v4;
      NetIFWiFiSetProperty(v2, v3, v4);
      CFRelease(v5);
    }
  }

  return v2;
}

uint64_t NetIFWiFiNetworkWasAutoJoined(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Property = WiFiNetworkGetProperty();
  TypeID = CFBooleanGetTypeID();
  if (!Property || CFGetTypeID(Property) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(Property);
}

void NetIFSetCarPlayModeChangeCallBack(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (S_carplay_mode_change_callback != a2)
  {
    S_carplay_mode_change_callback = a2;
    WiFiManagerClient = getWiFiManagerClient();
    if (a2)
    {
      if (WiFiManagerClient)
      {
        if (WiFiManagerClientGetDevice())
        {
          WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
          logger = mysyslog_get_logger();
          v7 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(logger, v7))
          {
            return;
          }

          v30 = 138412290;
          v31 = a1;
          v8 = "%@: registered callback for carplay mode change";
LABEL_11:
          v9 = logger;
          v10 = v7;
          v11 = 12;
LABEL_27:
          _os_log_impl(&dword_277237000, v9, v10, v8, &v30, v11);
          return;
        }

        v18 = mysyslog_get_logger();
        v19 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_17;
        }

        v30 = 138412290;
        v31 = a1;
        v14 = "WiFiManagerClientGetDevice for %@ returned NULL";
        v15 = v18;
        v16 = v19;
        v17 = 12;
      }

      else
      {
        v12 = mysyslog_get_logger();
        v13 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v12, v13))
        {
LABEL_17:
          v20 = mysyslog_get_logger();
          v21 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v20, v21))
          {
            return;
          }

          LOWORD(v30) = 0;
          v8 = "Failed to register a callback for CarPlay Mode Change";
LABEL_26:
          v9 = v20;
          v10 = v21;
          v11 = 2;
          goto LABEL_27;
        }

        LOWORD(v30) = 0;
        v14 = "Failed to find the WiFiManager instance";
        v15 = v12;
        v16 = v13;
        v17 = 2;
      }

      _os_log_impl(&dword_277237000, v15, v16, v14, &v30, v17);
      goto LABEL_17;
    }

    if (WiFiManagerClient)
    {
      if (WiFiManagerClientGetDevice())
      {
        WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
        logger = mysyslog_get_logger();
        v7 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(logger, v7))
        {
          return;
        }

        v30 = 138412290;
        v31 = a1;
        v8 = "%@: un-registered callback for carplay mode change";
        goto LABEL_11;
      }

      v28 = mysyslog_get_logger();
      v29 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_24;
      }

      v30 = 138412290;
      v31 = a1;
      v24 = "WiFiManagerClientGetDevice for %@ returned NULL";
      v25 = v28;
      v26 = v29;
      v27 = 12;
    }

    else
    {
      v22 = mysyslog_get_logger();
      v23 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v22, v23))
      {
LABEL_24:
        v20 = mysyslog_get_logger();
        v21 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v20, v21))
        {
          return;
        }

        LOWORD(v30) = 0;
        v8 = "Failed to un-register the callback for CarPlay Mode Change";
        goto LABEL_26;
      }

      LOWORD(v30) = 0;
      v24 = "Failed to find the WiFiManager instance";
      v25 = v22;
      v26 = v23;
      v27 = 2;
    }

    _os_log_impl(&dword_277237000, v25, v26, v24, &v30, v27);
    goto LABEL_24;
  }
}

const void *NetIfCopyOwnerApplicationForCurrentNetwork(uint64_t a1)
{
  v1 = NetIFCopyCurrentWiFiNetwork(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  BundleIdentifier = WiFiNetworkGetBundleIdentifier();
  v4 = BundleIdentifier;
  if (BundleIdentifier)
  {
    CFRetain(BundleIdentifier);
  }

  CFRelease(v2);
  return v4;
}

uint64_t NetIFIsQuickProbeRequired()
{
  result = getWiFiManagerClient();
  if (result)
  {

    return MEMORY[0x282187808]();
  }

  return result;
}

uint64_t NetIFReportQuickProbeResult()
{
  result = getWiFiManagerClient();
  if (result)
  {

    return MEMORY[0x282187810]();
  }

  return result;
}

void NetIFTakeWiFiNetworkOffline(uint64_t a1, uint64_t a2, int a3, __CFString *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 && getWiFiManagerClient())
  {
    if (WiFiNetworkGetType() == 2)
    {
      logger = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v8))
      {
        v19 = 138412290;
        SSID = WiFiNetworkGetSSID();
        _os_log_impl(&dword_277237000, logger, v8, "%@: Switching to 'CarPlay Only' mode", &v19, 0xCu);
      }

      WiFiManagerClientRemoveNetwork();
    }

    else
    {
      if (a3)
      {
        if (WiFiManagerClientIsNetworkEnabled())
        {
          v9 = mysyslog_get_logger();
          v10 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = WiFiNetworkGetSSID();
            v12 = @"unknown";
            if (a4)
            {
              v12 = a4;
            }

            v19 = 138412546;
            SSID = v11;
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_277237000, v9, v10, "Disabling AutoJoin for %@ [Reason: %@]", &v19, 0x16u);
          }

          NetIFWiFiSetProperty(a2, *MEMORY[0x277CF7FA8], *MEMORY[0x277CBED28]);
          if (a4)
          {
            NetIFWiFiSetProperty(a2, *MEMORY[0x277CF7FB0], a4);
          }

          WiFiManagerClientDisableNetwork();
        }
      }

      else
      {
        v13 = mysyslog_get_logger();
        v14 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v13, v14))
        {
          v19 = 138412290;
          SSID = WiFiNetworkGetSSID();
          _os_log_impl(&dword_277237000, v13, v14, "Temporarily disabling (blacklisting) %@", &v19, 0xCu);
        }

        WiFiManagerClientTemporarilyDisableNetwork();
      }

      if (WiFiManagerClientGetDevice())
      {
        v15 = WiFiDeviceClientDisassociate();
        if (v15)
        {
          v16 = v15;
          v17 = mysyslog_get_logger();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = 67109120;
            LODWORD(SSID) = v16;
            _os_log_impl(&dword_277237000, v17, v18, "WiFiDeviceClientDisassociate failed: %d", &v19, 8u);
          }
        }
      }
    }
  }
}

uint64_t NetIFWiFiNetworkIsCaptive(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  Property = WiFiNetworkGetProperty();
  TypeID = CFBooleanGetTypeID();
  if (!Property || CFGetTypeID(Property) != TypeID)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return CFBooleanGetValue(Property);
}

uint64_t NetIFGetWiFiNetworkWasCaptive(uint64_t result)
{
  if (result)
  {
    Property = WiFiNetworkGetProperty();
    TypeID = CFBooleanGetTypeID();
    if (!Property || CFGetTypeID(Property) != TypeID || (result = CFBooleanGetValue(Property), !result))
    {
      v3 = WiFiNetworkGetProperty();
      v4 = CFBooleanGetTypeID();
      if (v3 && CFGetTypeID(v3) == v4)
      {

        return CFBooleanGetValue(v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL NetIFWiFiNetworkHasNeverBeenCaptive(_BOOL8 result)
{
  v3 = 0;
  if (result)
  {
    v1 = result;
    IsCaptive = NetIFWiFiNetworkIsCaptive(result, &v3);
    result = 0;
    if (!IsCaptive)
    {
      if (v3)
      {
        return NetIFGetWiFiNetworkWasCaptive(v1) == 0;
      }
    }
  }

  return result;
}

const void *NetIFWiFiNetworkCopyCaptivePortalAPIURL(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Property = WiFiNetworkGetProperty();
  TypeID = CFStringGetTypeID();
  if (Property)
  {
    if (CFGetTypeID(Property) == TypeID)
    {
      CFRetain(Property);
      return Property;
    }

    return 0;
  }

  return Property;
}

void NetIFWiFiNetworkSetCaptivePortalAPIURL(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F48];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptivePortalUserPortalURL(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F88];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptivePortalVenueInfoURL(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F98];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptivePortalCanExtendSession(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFBooleanGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F58];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptivePortalSessionExpiration(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F70];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptivePortalClientAuthURL(uint64_t a1, const void *a2)
{
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        v5 = *MEMORY[0x277CF7F68];

        NetIFWiFiSetProperty(a1, v5, a2);
      }
    }
  }
}

void NetIFWiFiNetworkSetCaptive(uint64_t a1, unsigned int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!getWiFiManagerClient())
  {
    return;
  }

  if (a2)
  {
    if ((~a2 & 0x18) == 0)
    {
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v7))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_277237000, logger, v7, "network marked captive can't also be marked whitelisted", &v32, 2u);
      }
    }

    v5 = 0;
    v4 = 1;
  }

  else
  {
    v4 = (a2 >> 3) & 1;
    v5 = (a2 >> 4) & 1;
  }

  v8 = a2 & 1;
  v9 = MEMORY[0x277CF7F30];
  Property = WiFiNetworkGetProperty();
  TypeID = CFBooleanGetTypeID();
  if (!Property || CFGetTypeID(Property) != TypeID)
  {
    Value = 0;
    if (WiFiNetworkIsEAP())
    {
      v8 = 0;
    }

    goto LABEL_17;
  }

  Value = CFBooleanGetValue(Property);
  if (WiFiNetworkIsEAP())
  {
    v8 = 0;
  }

  if (v4 || Value != v8)
  {
LABEL_17:
    if (Value != v8)
    {
      v13 = MEMORY[0x277CBED10];
      if (Value)
      {
        v13 = MEMORY[0x277CBED28];
      }

      NetIFWiFiSetProperty(a1, *MEMORY[0x277CF7FD0], *v13);
    }

    if (v4)
    {
      v14 = MEMORY[0x277CBED10];
      if (v5)
      {
        v14 = MEMORY[0x277CBED28];
      }

      NetIFWiFiSetProperty(a1, *MEMORY[0x277CF7FB8], *v14);
      v15 = *MEMORY[0x277CF8018];
      Current = CFAbsoluteTimeGetCurrent();
      v17 = CFDateCreate(0, Current);
      NetIFWiFiSetProperty(a1, v15, v17);
      CFRelease(v17);
    }

    if ((a2 & 0x40) == 0)
    {
      v18 = MEMORY[0x277CBED28];
      if (!v8)
      {
        v18 = MEMORY[0x277CBED10];
      }

      NetIFWiFiSetProperty(a1, *v9, *v18);
    }

    Value = v8;
  }

  v19 = MEMORY[0x277CF7FA8];
  v20 = WiFiNetworkGetProperty();
  v21 = CFBooleanGetTypeID();
  if (v20 && CFGetTypeID(v20) == v21 && CFBooleanGetValue(v20) && ((IsNetworkEnabled = WiFiManagerClientIsNetworkEnabled(), v23 = IsNetworkEnabled != 0, !Value) || (a2 & 2) != 0 || IsNetworkEnabled))
  {
    NetIFWiFiSetProperty(a1, *v19, *MEMORY[0x277CBED10]);
    NetIFWiFiSetProperty(a1, *MEMORY[0x277CF7FB0], &stru_28865E0D8);
    if ((a2 & 4) != 0)
    {
LABEL_37:
      v24 = MEMORY[0x277CF7F20];
      if (!NetIFWiFiNetworkGetBoolean(a1, *MEMORY[0x277CF7F20]))
      {
        NetIFWiFiSetProperty(a1, *v24, *MEMORY[0x277CBED28]);
      }
    }
  }

  else
  {
    v23 = 1;
    if ((a2 & 4) != 0)
    {
      goto LABEL_37;
    }
  }

  if ((a2 & 0x20) != 0)
  {
    v25 = CFAbsoluteTimeGetCurrent();
    v26 = CFDateCreate(0, v25);
    v27 = mysyslog_get_logger();
    v28 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v27, v28))
    {
      v32 = 138412290;
      v33 = v26;
      _os_log_impl(&dword_277237000, v27, v28, "Updated WebSheet Login time to [%@]", &v32, 0xCu);
    }

    NetIFWiFiSetProperty(a1, *MEMORY[0x277CF7F38], v26);
    CFRelease(v26);
  }

  if (!v23)
  {
    v29 = mysyslog_get_logger();
    v30 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v29, v30))
    {
      SSID = WiFiNetworkGetSSID();
      v32 = 138412290;
      v33 = SSID;
      _os_log_impl(&dword_277237000, v29, v30, "Re-enabling %@", &v32, 0xCu);
    }

    WiFiManagerClientEnableNetwork();
  }
}

void NetIFDisableWiFiNetworkIfCurrent(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = NetIFCopyCurrentWiFiNetwork(a1);
  if (v4)
  {
    v5 = v4;
    SSID = WiFiNetworkGetSSID();
    if (SSID && CFEqual(a2, SSID))
    {
      if (getWiFiManagerClient())
      {
        WiFiManagerClientDisableNetwork();
      }
    }

    else
    {
      logger = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v8))
      {
        v11 = 138412802;
        v12 = a1;
        v13 = 2112;
        v14 = a2;
        v15 = 2112;
        v16 = SSID;
        _os_log_impl(&dword_277237000, logger, v8, "%@: specified SSID '%@' not current '%@'", &v11, 0x20u);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = 138412290;
      v12 = a1;
      _os_log_impl(&dword_277237000, v9, v10, "Can't get Wi-Fi network for %@", &v11, 0xCu);
    }
  }
}

BOOL NetIFWiFiNetworkIsProtected(_BOOL8 result)
{
  if (result)
  {
    return WiFiNetworkIsWEP() || WiFiNetworkIsWPA() || WiFiNetworkIsEAP() != 0;
  }

  return result;
}

uint64_t NetIFWiFiNetworkGetSecurityType(uint64_t a1)
{
  if (WiFiNetworkIsEAP())
  {
    return 4;
  }

  if (WiFiNetworkIsWPA())
  {
    return 3;
  }

  if (WiFiNetworkIsWEP())
  {
    return 2;
  }

  return 1;
}

BOOL NetIFWiFiNetworkIsProtectedForInterface(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = NetIFCopyCurrentWiFiNetwork(a1);
  if (v2)
  {
    v3 = v2;
    IsProtected = NetIFWiFiNetworkIsProtected(v2);
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      SSID = WiFiNetworkGetSSID();
      v8 = "secure";
      v12 = 138412802;
      v13 = a1;
      if (!IsProtected)
      {
        v8 = "unsecure";
      }

      v14 = 2112;
      v15 = SSID;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_277237000, logger, v6, "%@ Wi-Fi network [%@] is %s", &v12, 0x20u);
    }

    CFRelease(v3);
  }

  else
  {
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = 138412290;
      v13 = a1;
      _os_log_impl(&dword_277237000, v9, v10, "NetIFCopyCurrentWiFiNetwork returned NULL for %@", &v12, 0xCu);
    }

    return 0;
  }

  return IsProtected;
}

uint64_t NetIFWiFiNetworkGetBoolean(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Property = WiFiNetworkGetProperty();
  TypeID = CFBooleanGetTypeID();
  if (!Property || CFGetTypeID(Property) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(Property);
}

const void *NetIFWiFiNetworkGetWhitelistedCaptiveNetworkProbeDate(uint64_t a1)
{
  Property = WiFiNetworkGetProperty();
  TypeID = CFDateGetTypeID();
  if (!Property)
  {
    return 0;
  }

  if (CFGetTypeID(Property) == TypeID)
  {
    return Property;
  }

  return 0;
}

const void *NetIFWiFiNetworkGetLastWebSheetLoginDate(uint64_t a1)
{
  Property = WiFiNetworkGetProperty();
  TypeID = CFDateGetTypeID();
  if (!Property)
  {
    return 0;
  }

  if (CFGetTypeID(Property) == TypeID)
  {
    return Property;
  }

  return 0;
}

uint64_t NetIFWiFiNetworkForgetAppOwnedNetworks()
{
  result = getWiFiManagerClient();
  if (result)
  {

    return MEMORY[0x282187858]();
  }

  return result;
}

uint64_t NetIFUpdateWiFiNetwork()
{
  result = getWiFiManagerClient();
  if (result)
  {

    return MEMORY[0x2821878E8]();
  }

  return result;
}

CFDictionaryRef NetIFCopyAllServiceInformation()
{
  v0 = 0;
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CE1688];
  v9[0] = *MEMORY[0x277CE1668];
  v9[1] = v1;
  v9[2] = *MEMORY[0x277CE1690];
  memset(values, 0, sizeof(values));
  v2 = *MEMORY[0x277CE1648];
  v3 = *MEMORY[0x277CE1628];
  do
  {
    values[v0] = SCDynamicStoreKeyCreateNetworkServiceEntity(0, v2, v3, v9[v0]);
    ++v0;
  }

  while (v0 != 3);
  v4 = CFArrayCreate(0, values, 3, MEMORY[0x277CBF128]);
  for (i = 0; i != 3; ++i)
  {
    CFRelease(values[i]);
  }

  v6 = SCDynamicStoreCopyMultiple(S_store, 0, v4);
  CFRelease(v4);
  return v6;
}

const __CFDictionary *NetIFCopySignatures(const __CFDictionary *result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = 0;
    CFDictionaryApplyFunction(result, append_signature, &v2);
    return v3;
  }

  return result;
}

void append_signature(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE16F0]);
  if (Value)
  {
    if (CFEqual(Value, *a3))
    {
      v6 = CFDictionaryGetValue(theDict, @"NetworkSignature");
      if (v6)
      {
        v7 = v6;
        Mutable = *(a3 + 8);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          *(a3 + 8) = Mutable;
        }

        CFArrayAppendValue(Mutable, v7);
      }
    }
  }
}

const __CFDictionary *NetIFCopyCaptivePortal(const __CFDictionary *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v7 = 0;
    v4 = a2;
    v5 = 0;
    CFDictionaryApplyFunction(result, find_service, &v4);
    v3 = v5;
    if (v5)
    {
      context = v5;
      CFDictionaryApplyFunction(v2, find_portal, &context);
      CFRelease(v3);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t find_service(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3)
{
  result = CFDictionaryGetValue(theDict, *MEMORY[0x277CE16F0]);
  if (result)
  {
    result = CFEqual(result, *a3);
    if (result)
    {
      if (!*(a3 + 8))
      {
        result = copy_service_from_path(a1, 0);
        *(a3 + 8) = result;
      }
    }
  }

  return result;
}

void find_portal(const __CFString *a1, const __CFDictionary *a2, CFStringRef *a3)
{
  theString1 = 0;
  v5 = copy_service_from_path(a1, &theString1);
  v6 = v5;
  if (!v5 || !*a3)
  {
    goto LABEL_11;
  }

  v7 = CFStringCompare(v5, *a3, 0);
  v8 = theString1;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = theString1 == 0;
  }

  if (!v9)
  {
    if (CFStringCompare(theString1, *MEMORY[0x277CE1668], 0) == kCFCompareEqualTo)
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CE16F8]);
LABEL_12:
      v8 = theString1;
      if (!theString1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_11:
    Value = 0;
    goto LABEL_12;
  }

  Value = 0;
  if (theString1)
  {
LABEL_13:
    CFRelease(v8);
    theString1 = 0;
  }

LABEL_14:
  if (v6)
  {
    CFRelease(v6);
  }

  if (!a3[1] && Value)
  {
    if (CFStringHasPrefix(Value, @"https://"))
    {
      a3[1] = CFRetain(Value);
    }
  }
}

void handle_device_attach(uint64_t a1, uint64_t a2)
{
  if (S_new_interface_callback)
  {
    InterfaceName = WiFiDeviceClientGetInterfaceName();
    v3 = S_new_interface_callback;

    v3(InterfaceName);
  }
}

void handle_wifi_manager_restart()
{
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_277237000, logger, v1, "wifi manager restarted", v2, 2u);
  }

  if (S_wifi_manager_restart_callback)
  {
    S_wifi_manager_restart_callback();
  }
}

void handle_scan_results(uint64_t a1, int a2, CFArrayRef theArray)
{
  if (theArray && S_scan_results_callback && CFArrayGetCount(theArray))
  {
    keys[0] = @"SCAN_MAXAGE";
    valuePtr = -1;
    cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v3 = CFDictionaryCreate(0, keys, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(cf);
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&dword_277237000, logger, v5, "received scan results", keys, 2u);
    }

    WiFiDeviceClientScanAsync();
    CFRelease(v3);
  }
}

void handle_cached_scan_results(CFIndex result, CFArrayRef theArray)
{
  if (theArray && S_scan_results_callback && CFArrayGetCount(theArray))
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, logger, v4, "received cached scan results", v6, 2u);
    }

    InterfaceName = WiFiDeviceClientGetInterfaceName();
    S_scan_results_callback(InterfaceName, theArray);
  }
}

void handle_carplay_mode_change(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v6))
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&dword_277237000, logger, v6, "CarPlay mode change was notified with %u", &v10, 8u);
  }

  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v7, v8))
    {
      return;
    }

    v10 = 67109120;
    v11 = a2;
    v9 = "Callback received an invalid CarPlay mode %d";
LABEL_9:
    _os_log_impl(&dword_277237000, v7, v8, v9, &v10, 8u);
    return;
  }

  if (handle_carplay_mode_change_current_type == a2)
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v7, v8))
    {
      return;
    }

    v10 = 67109120;
    v11 = a2;
    v9 = "CarPlay mode change to %d was already handled";
    goto LABEL_9;
  }

  if (S_carplay_mode_change_callback)
  {
    S_carplay_mode_change_callback(a2 == 2, a3);
  }

  handle_carplay_mode_change_current_type = a2;
}

const void *copy_service_from_path(CFStringRef theString, void *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  ValueAtIndex = 0;
  if (Count >= 4)
  {
    v6 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
    CFRetain(ValueAtIndex);
    if (a2)
    {
      if (v6 != 4)
      {
        v7 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 4);
        if (v7)
        {
          v8 = v7;
          CFRetain(v7);
          *a2 = v8;
        }
      }
    }
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  return ValueAtIndex;
}

const char *CNPCommandTypeGetString(unsigned int a1)
{
  if (a1 <= 6)
  {
    return CNPCommandTypeGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPResultGetString(unsigned int a1)
{
  if (a1 <= 6)
  {
    return CNPResultGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPConfidenceGetString(unsigned int a1)
{
  if (a1 <= 2)
  {
    return CNPConfidenceGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPCaptiveDetectionTypeGetString(unsigned int a1)
{
  if (a1 <= 3)
  {
    return CNPCaptiveDetectionTypeGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

BOOL CNAccountsVZWValidate()
{
  v0 = VZWCopyPhoneNumber();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CopyMobileEquipmentInfo();
  v3 = v2 != 0;
  CFRelease(v1);
  if (v2)
  {
    CFRelease(v2);
    return 1;
  }

  return v3;
}

const __CFString *VZWCopyPhoneNumber()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = CopyPhoneNumber();
  if (!v0 || (v1 = v0, Length = CFStringGetLength(v0), Length >= 0xB) && (v12.location = Length - 10, v12.length = 10, v3 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], v1, v12), CFRelease(v1), (v1 = v3) == 0))
  {
    logger = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v7))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_277237000, logger, v7, "failed to obtain the device phone number", &v9, 2u);
    }

    return 0;
  }

  if (CFStringHasPrefix(v1, @"000000"))
  {
    v4 = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v5))
    {
      v9 = 138412290;
      v10 = v1;
      _os_log_impl(&dword_277237000, v4, v5, "ignoring device phone number %@ (cold SIM)", &v9, 0xCu);
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

_OWORD *CNAccountsVZWQueryStart(uint64_t a1, const void *a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = malloc_type_malloc(0x38uLL, 0xE00409C3A2E09uLL);
  v12 = v11;
  if (v11)
  {
    v15.version = 0;
    memset(&v15.retain, 0, 56);
    v15.info = v11;
    v15.perform = VZWQueryDo;
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    *(v11 + 6) = 0;
    *(v11 + 1) = VZWQueryAbort;
    *(v11 + 2) = a6;
    *(v11 + 3) = a7;
    *(v11 + 4) = a2;
    CFRetain(a2);
    if (a4 && CFStringGetLength(a4) >= 1)
    {
      *(v12 + 5) = a4;
      CFRetain(a4);
    }

    *(v12 + 6) = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v15);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, *(v12 + 6), *MEMORY[0x277CBF048]);
    CFRunLoopSourceSignal(*(v12 + 6));
  }

  return v12;
}

void VZWQueryDo(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  CFRunLoopSourceInvalidate(*(a1 + 48));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 48), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  memset(&c, 0, sizeof(c));
  CNAccountsCredentialQueryInvalidate(a1);
  v4 = _CTServerConnectionCreateWithIdentifier();
  theDict[0] = 0;
  LODWORD(valuePtr) = 0;
  v54 = 0;
  v5 = CopyRATSelection();
  v6 = _CTServerConnectionCopySystemCapabilities();
  if (v6)
  {
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    v9 = os_log_type_enabled(logger, v8);
    if (v6 == 2)
    {
      if (!v9)
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      *&buf[4] = "_CTServerConnectionCopySystemCapabilities";
      *&buf[12] = 2080;
      *&buf[14] = mach_error_string(SHIDWORD(v6));
      v10 = "%s failed, %s";
    }

    else
    {
      if (v6 != 1)
      {
        if (!v9)
        {
          goto LABEL_15;
        }

        *buf = 136315138;
        *&buf[4] = "_CTServerConnectionCopySystemCapabilities";
        v10 = "%s failed";
        v11 = logger;
        v12 = v8;
        v13 = 12;
        goto LABEL_14;
      }

      if (!v9)
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      *&buf[4] = "_CTServerConnectionCopySystemCapabilities";
      *&buf[12] = 2080;
      *&buf[14] = strerror(SHIDWORD(v6));
      v10 = "%s failed, %s";
    }

    v11 = logger;
    v12 = v8;
    v13 = 22;
LABEL_14:
    _os_log_impl(&dword_277237000, v11, v12, v10, buf, v13);
  }

LABEL_15:
  if (v5)
  {
    CFRelease(v5);
  }

  v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v15 = CopyMobileEquipmentInfo();
  CFRelease(v4);
  v16 = VZWCopyPhoneNumber();
  Value = CFDictionaryGetValue(*(a1 + 32), @"AuthenticationRealm");
  v18 = @"hds.vzw3g.com";
  if (Value)
  {
    v18 = Value;
  }

  v19 = CFStringCreateWithFormat(0, 0, @"VzW3652987!%@@%@", v16, v18);
  v20 = CFAbsoluteTimeGetCurrent();
  *buf = 0;
  valuePtr = 0;
  theDict[0] = 0;
  v21 = CFCalendarCreateWithIdentifier(0, *MEMORY[0x277CBEE80]);
  CFCalendarDecomposeAbsoluteTime(v21, v20, "yMd", &valuePtr, theDict, buf);
  CFRelease(v21);
  v22 = CFStringCreateWithFormat(0, 0, @"%02d%02d%04d", theDict[0], *buf, valuePtr);
  v23 = v22;
  v24 = 0;
  if (!v15 || !v16 || !v19)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_30;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!v22)
  {
    goto LABEL_30;
  }

  CC_SHA1_Init(&c);
  if (!addCFStringToHash(&c, v23))
  {
    goto LABEL_76;
  }

  v27 = 0;
  if (!addCFStringToHash(&c, v16) || !v14)
  {
    goto LABEL_77;
  }

  *buf = 0;
  if (!CFNumberGetValue(v14, kCFNumberIntType, buf))
  {
    goto LABEL_76;
  }

  if ((*buf - 1) <= 1)
  {
    v28 = MEMORY[0x277CC3B20];
    goto LABEL_54;
  }

  if (*buf != 3)
  {
LABEL_76:
    v27 = 0;
LABEL_77:
    (*(a1 + 16))(*(a1 + 24), 0);
    v26 = 0;
    v25 = 0;
    v24 = 0;
    goto LABEL_78;
  }

  v28 = MEMORY[0x277CC3B18];
LABEL_54:
  v31 = CFDictionaryGetValue(v15, *v28);
  if (!v31)
  {
    goto LABEL_76;
  }

  v27 = v31;
  CFRetain(v31);
  v32 = CFLocaleCopyCurrent();
  if (v32)
  {
    v33 = v32;
    Length = CFStringGetLength(v27);
    MutableCopy = CFStringCreateMutableCopy(0, Length, v27);
    if (MutableCopy)
    {
      v36 = MutableCopy;
      CFStringLowercase(MutableCopy, v33);
      CFRelease(v27);
      v27 = v36;
    }

    CFRelease(v33);
  }

  if (!addCFStringToHash(&c, v27))
  {
    goto LABEL_77;
  }

  CC_SHA1_Final(theDict, &c);
  v37 = dataCopyHexString(theDict, 20);
  if (!v37)
  {
    goto LABEL_77;
  }

  v24 = v37;
  v38 = *(a1 + 40);
  if (!v38)
  {
    v25 = 0;
    goto LABEL_81;
  }

  v39 = stringToUTF8String(v38);
  if (!v39 || (v40 = v39, v41 = if_nametoindex(v39), free(v40), !v41) || (valuePtr = 0, *buf = xmmword_27726ACD0, *&buf[16] = 3, *&buf[20] = v41, sysctl(buf, 6u, 0, &valuePtr, 0, 0) < 0) || (v42 = malloc_type_malloc(valuePtr, 0x100004077774924uLL)) == 0)
  {
LABEL_72:
    v47 = mysyslog_get_logger();
    v48 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v47, v48))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v47, v48, "VZWCopyHardwareAddressHexString: failed to obtain the WiFi interface MAC", buf, 2u);
    }

    v25 = 0;
    goto LABEL_75;
  }

  v43 = v42;
  if (sysctl(buf, 6u, v42, &valuePtr, 0, 0) < 0 || !valuePtr)
  {
LABEL_71:
    free(v43);
    goto LABEL_72;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = &v43[v44];
    if (v46[3] == 14)
    {
      break;
    }

    v44 = v45 + *v46;
    v45 = v44;
    if (valuePtr <= v44)
    {
      goto LABEL_71;
    }
  }

  v25 = dataCopyHexString(&v46[v46[117] + 120], v46[118]);
  free(v43);
  if (!v25)
  {
    goto LABEL_72;
  }

LABEL_81:
  v49 = WISPrCredentialsDictionaryCreate(v19, v24);
  if (!v49)
  {
LABEL_75:
    v26 = 0;
    goto LABEL_30;
  }

  v50 = v49;
  cf = v49;
  Count = CFDictionaryGetCount(v49);
  v26 = CFDictionaryCreateMutableCopy(0, Count + 3, v50);
  CFRelease(cf);
  if (v26)
  {
    CFDictionaryAddValue(v26, @"device-type", v14);
    CFDictionaryAddValue(v26, @"calling-station-id", v25);
    CFDictionaryAddValue(v26, @"device-model-number", @"iOS-devices");
  }

LABEL_30:
  (*(a1 + 16))(*(a1 + 24), v26);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_78:
  CFRelease(v15);
  if (v16)
  {
LABEL_32:
    CFRelease(v16);
  }

LABEL_33:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 32) = 0;
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    CFRelease(v30);
  }

  free(a1);
}

void VZWQueryAbort(uint64_t a1)
{
  CFRunLoopSourceInvalidate(*(a1 + 48));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 48), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

char *addCFStringToHash(CC_SHA1_CTX *a1, CFStringRef theString)
{
  if (CFStringGetLength(theString) < 1)
  {
    return 0;
  }

  result = stringToUTF8String(theString);
  if (result)
  {
    v5 = result;
    v6 = strlen(result);
    CC_SHA1_Update(a1, v5, v6);
    free(v5);
    return 1;
  }

  return result;
}

__CFString *dataCopyHexString(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  Mutable = CFStringCreateMutable(0, 2 * a2);
  if (Mutable && v2)
  {
    do
    {
      v5 = *a1++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v5);
      --v2;
    }

    while (v2);
  }

  return Mutable;
}

char *stringToUTF8String(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  v3 = Length + 1;
  if (Length == -1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v4)
  {
    CFStringGetCString(a1, v4, v3, 0x8000100u);
  }

  return v4;
}

uint64_t CNPluginMonitorHandlerPluginListChanged()
{
  v0 = CNPluginMonitorHandlerCopyCurrentCommand();
  CommandHandlerListApplyFunction(6u, CNPluginMonitorAppendCommand, v0);
  CFRelease(v0);

  return notify_post("com.apple.networking.captive.CNPluginListChanged");
}

CFDictionaryRef CNPluginMonitorHandlerCopyCurrentCommand()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = CNPluginStateListCopyDisplayIDs();
  v1 = 1;
  valuePtr = 1;
  v9 = 0;
  v7 = 0;
  v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  keys = @"EventType";
  values = v2;
  if (v0)
  {
    v9 = @"DisplayIDs";
    v7 = v0;
    v1 = 2;
  }

  v3 = CFDictionaryCreate(0, &keys, &values, v1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v2);
  if (v0)
  {
    CFRelease(v0);
  }

  return v3;
}

uint64_t CNPluginMonitorAuthorize(__int128 *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  if (!audit_token_get_euid(&v7))
  {
    return 1;
  }

  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  result = audit_token_has_BOOLean_entitlement(&v7, @"com.apple.captive.private");
  if (!result)
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v6);
    if (result)
    {
      LODWORD(v7) = 136315138;
      *(&v7 + 4) = "com.apple.captive.private";
      _os_log_impl(&dword_277237000, logger, v6, "CNPluginMonitor requires root or '%s' entitlement", &v7, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t CNPluginMonitorRegister(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommandHandlerSetInformation(*a1, Mutable);
  CFRelease(Mutable);
  return 1;
}

uint64_t CNPluginMonitorProvideCommand(uint64_t *a1)
{
  Information = CommandHandlerGetInformation(*a1);
  Value = CFDictionaryGetValue(Information, @"CommandList");
  if (Value)
  {
    a1[1] = CFRetain(Value);
    v4 = CommandHandlerGetInformation(*a1);
    if (v4)
    {
      CFDictionaryRemoveValue(v4, @"CommandList");
    }
  }

  return 1;
}

uint64_t CNPluginMonitorProcessControl(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 8), @"Type");
  v3 = CFDictionaryGetValue(*(a1 + 8), @"EventType");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  valuePtr = 0;
  result = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (!result)
  {
    return result;
  }

  v6 = CFNumberGetTypeID();
  if (!v3 || CFGetTypeID(v3) != v6)
  {
    return 0;
  }

  v7 = CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr + 4);
  result = 0;
  if (v7 && HIDWORD(valuePtr) == 1)
  {
    if (valuePtr == 1)
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (valuePtr == 2)
    {
      v8 = 0;
LABEL_14:
      CNPluginMonitorSetIsEnabled(*a1, v8);
      return 1;
    }

    return 0;
  }

  return result;
}

void CNPluginMonitorSetIsEnabled(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  Information = CommandHandlerGetInformation(a1);
  if (Information)
  {
    v5 = Information;
    if (CFDictionaryContainsKey(Information, @"IsEnabled") != a2)
    {
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      v8 = os_log_type_enabled(logger, v7);
      if (a2)
      {
        if (v8)
        {
          v11 = 67109120;
          PID = CommandHandlerGetPID(a1);
          _os_log_impl(&dword_277237000, logger, v7, "PluginMonitor ENABLE [pid %d]", &v11, 8u);
        }

        CFDictionarySetValue(v5, @"IsEnabled", *MEMORY[0x277CBED28]);
        v9 = CNPluginMonitorHandlerCopyCurrentCommand();
        CNPluginMonitorAppendCommand(a1, v9);
        CFRelease(v9);
      }

      else
      {
        if (v8)
        {
          v11 = 67109120;
          PID = CommandHandlerGetPID(a1);
          _os_log_impl(&dword_277237000, logger, v7, "PluginMonitor DISABLE [pid %d]", &v11, 8u);
        }

        CFDictionaryRemoveValue(v5, @"IsEnabled");
        v10 = CommandHandlerGetInformation(a1);
        if (v10)
        {
          CFDictionaryRemoveValue(v10, @"CommandList");
        }
      }
    }
  }
}

uint64_t CNPluginMonitorAppendCommand(uint64_t a1, void *a2)
{
  values = a2;
  v3 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  CNScanListFilterSetCommandList(a1, v3);
  CFRelease(v3);
  return CommandHandlerNotify(a1);
}

uint64_t IsProcessHotspotEvaluationProvider(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return CheckAppExtensionPoint(v3, @"com.apple.networkextension.hotspot-evaluation");
}

uint64_t CheckAppExtensionPoint(_OWORD *a1, const void *a2)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = _AMCopyExtensionPointIdentifierForAuditToken(v8);
  TypeID = CFStringGetTypeID();
  if (!v4)
  {
    return 0;
  }

  if (CFGetTypeID(v4) == TypeID)
  {
    v6 = CFEqual(v4, a2);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

uint64_t IsProcessHotspotAuthenticationProvider(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return CheckAppExtensionPoint(v3, @"com.apple.networkextension.hotspot-authentication");
}

uint64_t audit_token_get_pid(_OWORD *a1)
{
  pidp = 0;
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

uint64_t audit_token_get_euid(_OWORD *a1)
{
  euidp = 0;
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
  return euidp;
}

uint64_t audit_token_has_BOOLean_entitlement(_OWORD *a1, const __CFString *a2)
{
  v3 = a1[1];
  *v13.val = *a1;
  *&v13.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v13);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopyValueForEntitlement(v4, a2, 0);
    if (v6)
    {
      v7 = v6;
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(v7) == TypeID)
      {
        Value = CFBooleanGetValue(v7);
      }

      else
      {
        Value = 0;
      }

      CFRelease(v7);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v5);
  }

  else
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v11))
    {
      LOWORD(v13.val[0]) = 0;
      _os_log_impl(&dword_277237000, logger, v11, "SecTaskCreateWithAuditToken failed", &v13, 2u);
    }

    return 0;
  }

  return Value;
}

BOOL audit_token_has_entitlement_value(_OWORD *a1, const __CFString *a2, const void *a3)
{
  v5 = a1[1];
  *v14.val = *a1;
  *&v14.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v14);
  if (!v6)
  {
    logger = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v12))
    {
      LOWORD(v14.val[0]) = 0;
      _os_log_impl(&dword_277237000, logger, v12, "SecTaskCreateWithAuditToken failed", &v14, 2u);
    }

    return 0;
  }

  v7 = v6;
  v8 = SecTaskCopyValueForEntitlement(v6, a2, 0);
  TypeID = CFArrayGetTypeID();
  if (!v8)
  {
    CFRelease(v7);
    return 0;
  }

  if (CFGetTypeID(v8) == TypeID)
  {
    v15.length = CFArrayGetCount(v8);
    v15.location = 0;
    v10 = CFArrayContainsValue(v8, v15, a3) != 0;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v7);
  CFRelease(v8);
  return v10;
}

BOOL isCallingInternalProcEntitled(_OWORD *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (isCallingInternalProcEntitled_once != -1)
  {
    isCallingInternalProcEntitled_cold_1();
  }

  if (isCallingInternalProcEntitled_result != 1)
  {
    return 0;
  }

  logger = mysyslog_get_logger();
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v4;
    v5 = audit_token_to_pid(&atoken);
    proc_name(v5, &atoken, 0x40u);
    v6 = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      v12 = 136315138;
      p_atoken = &atoken;
      _os_log_impl(&dword_277237000, v6, v7, "Process [%s] is requesting current Wi-Fi network information", &v12, 0xCu);
    }
  }

  v8 = xpc_copy_entitlement_for_token();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  value = xpc_BOOL_get_value(v8);
  xpc_release(v9);
  return value;
}

uint64_t __isCallingInternalProcEntitled_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isCallingInternalProcEntitled_result = result;
  return result;
}

uint64_t IsChinaDevice()
{
  v8 = *MEMORY[0x277D85DE8];
  if ((IsChinaDevice_done & 1) == 0)
  {
    IsChinaDevice_done = 1;
    v0 = CPGetDeviceRegionCode();
    v1 = v0;
    if (v0)
    {
      v2 = CFEqual(v0, @"CH") != 0;
    }

    else
    {
      v2 = 0;
    }

    IsChinaDevice_is_china = v2;
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_277237000, logger, v4, "Region code is %@", &v6, 0xCu);
    }
  }

  return IsChinaDevice_is_china;
}

__CFRunLoopSource *my_CFRunLoopSourceCreateForBSDNotification(const char *a1, uint64_t a2, uint64_t a3, _DWORD *a4, __CFMachPort **a5)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *out_token = 0;
  if (notify_register_mach_port(a1, &out_token[1], 0, out_token))
  {
    logger = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v9))
    {
      *v20 = 0;
      _os_log_impl(&dword_277237000, logger, v9, "notify_register_mach_port() failed", v20, 2u);
    }

    return 0;
  }

  *(&v22 + 1) = a3;
  v10 = _SC_CFMachPortCreateWithPort();
  if (!v10)
  {
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      *v20 = 0;
      _os_log_impl(&dword_277237000, v15, v16, "CFMachPortCreateWithPort() failed", v20, 2u);
    }

    goto LABEL_12;
  }

  v11 = v10;
  RunLoopSource = CFMachPortCreateRunLoopSource(0, v10, 0);
  if (!RunLoopSource)
  {
    v17 = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *v20 = 0;
      _os_log_impl(&dword_277237000, v17, v18, "CFMachPortCreateRunLoopSource() failed", v20, 2u);
    }

    CFRelease(v11);
LABEL_12:
    notify_cancel(out_token[0]);
    return 0;
  }

  v13 = RunLoopSource;
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, v13, *MEMORY[0x277CBF048]);
  *a5 = v11;
  *a4 = out_token[0];
  return v13;
}

__CFString *CopyPreferredLanguage(__CFBundle *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF010];
  CFPreferencesSynchronize(@".GlobalPreferences", @"mobile", *MEMORY[0x277CBF010]);
  v3 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", v2);
  TypeID = CFArrayGetTypeID();
  if (!v3 || CFGetTypeID(v3) != TypeID)
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v11))
    {
LABEL_10:
      v6 = 0;
      v8 = 0;
      goto LABEL_11;
    }

    LOWORD(v18) = 0;
    v12 = "No default language";
LABEL_9:
    _os_log_impl(&dword_277237000, logger, v11, v12, &v18, 2u);
    goto LABEL_10;
  }

  v5 = CFBundleCopyBundleLocalizations(a1);
  if (!v5)
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v11))
    {
      goto LABEL_10;
    }

    LOWORD(v18) = 0;
    v12 = "failed to retrieve localizations";
    goto LABEL_9;
  }

  v6 = v5;
  v7 = CFBundleCopyLocalizationsForPreferences(v5, v3);
  v8 = v7;
  if (v7 && CFArrayGetCount(v7))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    goto LABEL_12;
  }

  v16 = mysyslog_get_logger();
  v17 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v16, v17))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_277237000, v16, v17, "failed to retrieve preferred localization", &v18, 2u);
  }

LABEL_11:
  ValueAtIndex = @"en";
LABEL_12:
  v13 = mysyslog_get_logger();
  v14 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v13, v14))
  {
    v18 = 138412290;
    v19 = ValueAtIndex;
    _os_log_impl(&dword_277237000, v13, v14, "Using localization for %@", &v18, 0xCu);
  }

  CFRetain(ValueAtIndex);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return ValueAtIndex;
}

const void *CaptiveCopySettings()
{
  result = CaptiveCopySettings_settingsPlist;
  if (CaptiveCopySettings_settingsPlist)
  {
    goto LABEL_2;
  }

  if (!sBundleRef)
  {
    logger = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v12))
    {
      LOWORD(format[0]) = 0;
      _os_log_impl(&dword_277237000, logger, v12, "CaptiveGetBundle is NULL", format, 2u);
    }

    return 0;
  }

  v1 = CFBundleCopyResourceURL(sBundleRef, @"Settings", @"plist", 0);
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], v1);
    v5 = v4;
    if (v4 && CFReadStreamOpen(v4))
    {
      format[0] = 0;
      v6 = CFPropertyListCreateWithStream(v3, v5, 0, 0, format, 0);
      CaptiveCopySettings_settingsPlist = v6;
      if (v6)
      {
        v7 = v6;
        TypeID = CFDictionaryGetTypeID();
        if (CFGetTypeID(v7) != TypeID)
        {
          v9 = mysyslog_get_logger();
          v10 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v9, v10))
          {
            *v17 = 0;
            _os_log_impl(&dword_277237000, v9, v10, "Settings.plist is not a dictionary", v17, 2u);
          }

          if (CaptiveCopySettings_settingsPlist)
          {
            CFRelease(CaptiveCopySettings_settingsPlist);
            CaptiveCopySettings_settingsPlist = 0;
          }
        }
      }
    }

    else
    {
      v13 = mysyslog_get_logger();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        LOWORD(format[0]) = 0;
        _os_log_impl(&dword_277237000, v13, v14, "Could not read Settings file", format, 2u);
      }

      if (!v5)
      {
        goto LABEL_20;
      }
    }

    CFRelease(v5);
LABEL_20:
    CFRelease(v2);
    goto LABEL_23;
  }

  v15 = mysyslog_get_logger();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v15, v16))
  {
    LOWORD(format[0]) = 0;
    _os_log_impl(&dword_277237000, v15, v16, "Could not locate Settings file", format, 2u);
  }

LABEL_23:
  result = CaptiveCopySettings_settingsPlist;
  if (CaptiveCopySettings_settingsPlist)
  {
LABEL_2:
    CFRetain(result);
    return CaptiveCopySettings_settingsPlist;
  }

  return result;
}

const void *CaptiveCopyProbeSettings()
{
  v0 = CaptiveCopySettings();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"ProbeParameters");
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      CFRetain(Value);
    }

    else
    {
      Value = 0;
    }
  }

  CFRelease(v1);
  return Value;
}

void NetCacheEntryDestroy(uint64_t *a1)
{
  NetCacheEntryLog("Destroy: ", a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void NetCacheEntryLog(const char *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  v7 = os_log_type_enabled(logger, v6);
  if (v4)
  {
    if (!v7)
    {
      return;
    }

    v8 = *(a2 + 16);
    v9 = "";
    v11 = *(a2 + 40);
    v10 = *(a2 + 48);
    if (a1)
    {
      v9 = a1;
    }

    v12 = *(a2 + 32);
    v21 = 136316418;
    v22 = v9;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v11;
    v13 = "%s<%p> %0.09g DisplayID %@ SSID=%@ Signatures=%@";
    v14 = logger;
    v15 = v6;
    v16 = 62;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    v17 = *(a2 + 16);
    v18 = "";
    if (a1)
    {
      v18 = a1;
    }

    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    v21 = 136316162;
    v22 = v18;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v17;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v13 = "%s<%p> %0.09g Not Captive SSID=%@ Signatures=%@";
    v14 = logger;
    v15 = v6;
    v16 = 52;
  }

  _os_log_impl(&dword_277237000, v14, v15, v13, &v21, v16);
}

uint64_t NetCacheEntryGetRedirectionURL(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  result = *(a1 + 64);
  *a2 = *(v3 + 8);
  return result;
}

void *NetCacheCreate()
{
  result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  *result = 0;
  return result;
}

void *NetCacheApplyFunction(void **a1, uint64_t (*a2)(void))
{
  result = *a1;
  do
  {
    if (!result)
    {
      break;
    }

    v4 = *result;
    v5 = a2();
    result = v4;
  }

  while (v5);
  return result;
}

uint64_t *NetCacheLookupEntry(uint64_t **a1, const __CFArray *a2, const void *a3, double a4)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = v4;
          v4 = *v4;
          if (!v8)
          {
            break;
          }

LABEL_5:
          NetCacheEntryDestroy(v9);
          if (!v4)
          {
            return 0;
          }
        }

        if (*(v9 + 2) + 259200.0 <= a4)
        {
          v8 = 1;
          goto LABEL_5;
        }

        if (my_CFEqual(a3, v9[4]) && my_CFArrayContainsAnyArrayValues(v9[5], a2))
        {
          return v9;
        }

        v8 = 0;
      }

      while (v4);
    }
  }

  return 0;
}

void *NetCacheUpdateEntry(uint64_t **a1, CFArrayRef theArray, const void *a3, char a4, const void *a5, double a6)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  v12 = NetCacheLookupEntry(a1, theArray, a3, a6);
  if (v12)
  {
    NetCacheEntryLog("Remove: ", v12);
    v13 = *v12;
    v14 = v12[1];
    if (*v12)
    {
      *(v13 + 8) = v14;
    }

    *v14 = v13;
    v15 = v12;
  }

  else
  {
    v15 = malloc_type_malloc(0x50uLL, 0x10E00407254A7C1uLL);
    *v15 = 0u;
    *(v15 + 1) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 4) = 0u;
    *(v15 + 2) = 0u;
    my_FieldSetRetainedCFType(v15 + 4, a3);
  }

  my_FieldSetRetainedCFType(v15 + 5, theArray);
  *(v15 + 2) = a6;
  *(v15 + 24) = a4;
  my_FieldSetRetainedCFType(v15 + 6, a5);
  v16 = *a1;
  *v15 = *a1;
  if (v16)
  {
    v16[1] = v15;
  }

  *a1 = v15;
  *(v15 + 1) = a1;
  if (v12)
  {
    v17 = "Add: ";
  }

  else
  {
    v17 = "New: ";
  }

  NetCacheEntryLog(v17, v15);
  return v15;
}

uint64_t CNSServer_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 28047727) >= 0xFFFFFFE6)
  {
    return *(&CNSServerCNSServer_subsystem + 5 * (v1 - 28047701) + 5);
  }

  else
  {
    return 0;
  }
}

const char *_XParsePost(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 16453) < 0xFFFFBFFF)
  {
    goto LABEL_28;
  }

  v5 = *(result + 10);
  if (v5 > 0x1000)
  {
    goto LABEL_28;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 68 < v5 || v4 < v6 + 68)
  {
    goto LABEL_28;
  }

  v8 = &result[v6];
  v9 = *(v8 + 12);
  if (v9 > 0x1000)
  {
    goto LABEL_28;
  }

  v10 = v4 - v6;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 - 68 < v9 || v10 < v11 + 68)
  {
    goto LABEL_28;
  }

  v13 = v8 - 4096;
  v14 = &v8[v11 - 4096];
  v15 = *(v14 + 4152);
  if (v15 > 0x1000)
  {
    goto LABEL_28;
  }

  v16 = v10 - v11;
  v17 = (v15 + 3) & 0xFFFFFFFC;
  if (v16 - 68 < v15 || v16 < v17 + 68)
  {
    goto LABEL_28;
  }

  v19 = v14 - 4096;
  v20 = v16 - v17;
  v21 = v14 - 4096 + v17;
  v22 = *(v21 + 8256);
  v23 = v22 <= 0x1000 && v20 - 68 >= v22;
  v24 = ((v22 + 3) & 0x3FFC) + 68;
  if (!v23 || v20 != v24)
  {
    goto LABEL_28;
  }

  v27 = 4140;
  if (v4 < 0x102C)
  {
    v27 = *(result + 1);
  }

  result = memchr((result + 44), 0, v27 - 44);
  if (!result || ((v28 = &v3[v4], v29 = v13 + 4148, &v3[v4] - v29 >= 4096) ? (v30 = 4096) : (v30 = &v3[v4] - v29), (result = memchr(v29, 0, v30)) == 0 || ((v31 = (v19 + 8252), v28 - v31 >= 4096) ? (v32 = 4096) : (v32 = v28 - v31), (result = memchr(v31, 0, v32)) == 0 || ((v33 = (v21 + 8260), v28 - v33 >= 4096) ? (v34 = 4096) : (v34 = v28 - v33), (result = memchr(v33, 0, v34)) == 0))))
  {
LABEL_28:
    v26 = -304;
LABEL_29:
    *(a2 + 32) = v26;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v35 = &v3[(v4 + 3) & 0xFFFC];
  if (*v35 || *(v35 + 1) <= 0x1Fu)
  {
    v26 = -309;
    goto LABEL_29;
  }

  result = CNSServerParsePost(*(v3 + 3), *(v3 + 8), v3 + 44, v29, v31, v33, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XLogoff(const char *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(a1 + 1);
    if ((v6 - 4137) >= 0xFFFFEFFF)
    {
      v7 = *(a1 + 9);
      v8 = v7 <= 0x1000 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0x3FFC) + 40)
      {
        if (memchr((a1 + 40), 0, v6 - 40))
        {
          v9 = &a1[(v6 + 3) & 0x3FFC];
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            result = CNSServerLogoff(*(a1 + 3), *(a1 + 2), a1 + 40);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XForgetNetwork(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = *(result + 4), (v3 - 1061) >= 0xFFFFFBFF) && ((v4 = *(result + 32), v4 <= 0x400) ? (v5 = v3 - 36 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0xFFC) + 36) : (v6 = 0), v6))
  {
    v8 = (((v3 + 3) & 0xFFC) + result);
    if (!*v8 && v8[1] > 0x1Fu)
    {
      result = CNSServerForgetNetwork(*(result + 12), (result + 36), v4);
      *(a2 + 32) = result;
      return result;
    }

    v7 = -309;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XPurgeAccountRecord(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = *(result + 4), (v3 - 1061) >= 0xFFFFFBFF) && ((v4 = *(result + 32), v4 <= 0x400) ? (v5 = v3 - 36 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0xFFC) + 36) : (v6 = 0), v6))
  {
    v8 = (((v3 + 3) & 0xFFC) + result);
    if (!*v8 && v8[1] > 0x1Fu)
    {
      result = CNSServerPurgeAccountRecord(*(result + 12), (result + 36), v4);
      *(a2 + 32) = result;
      return result;
    }

    v7 = -309;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XDebugLaunchWebsheet(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 92);
  v8[0] = *(result + 76);
  v8[1] = v7;
  result = CNSServerDebugLaunchWebsheet(v5, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XDumpState(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = CNSServerDumpState();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XCopySupportedInterfaces(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerCopySupportedInterfaces(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XCopyCurrentNetworkInfo(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 4141) < 0xFFFFEFFF) || ((v5 = result[10], v5 <= 0x1000) ? (v6 = v4 - 44 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FFC) + 44, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 11, 0, v4 - 44)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  v10 = (v3 + ((v4 + 3) & 0x3FFC));
  if (*v10 || v10[1] <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerCopyCurrentNetworkInfo(v3[3], v3[8], (v3 + 11), (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XCopyAccountList(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerCopyAccountList(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

const char *_XAddAccount(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 13377) < 0xFFFFCBFF)
  {
    goto LABEL_41;
  }

  v5 = *(result + 9);
  if (v5 > 0x1000)
  {
    goto LABEL_41;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 64 < v5 || v4 < v6 + 64)
  {
    goto LABEL_41;
  }

  v8 = &result[v6];
  v9 = *(v8 + 10);
  if (v9 > 0x400)
  {
    goto LABEL_41;
  }

  v10 = v4 - v6;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 - 64 < v9 || v10 < v11 + 64)
  {
    goto LABEL_41;
  }

  v13 = v8 - 4096;
  v14 = &v8[v11 - 4096];
  v15 = *(v14 + 4144);
  if (v15 > 0x1000)
  {
    goto LABEL_41;
  }

  v16 = v10 - v11;
  v17 = (v15 + 3) & 0xFFFFFFFC;
  if (v16 - 64 < v15 || v16 < v17 + 64)
  {
    goto LABEL_41;
  }

  v19 = v14 - 1024;
  v20 = v14 - 1024 + v17;
  v21 = *(v20 + 5176);
  if (v21 > 0x1000)
  {
    goto LABEL_41;
  }

  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v16 - v17;
  if (v23 - 64 < v21 || v23 != v22 + 64)
  {
    goto LABEL_41;
  }

  v25 = 4136;
  if (v4 < 0x1028)
  {
    v25 = *(result + 1);
  }

  result = memchr((result + 40), 0, v25 - 40);
  if (!result || ((v26 = &v3[v4], v27 = (v19 + 5172), &v3[v4] - v27 >= 4096) ? (v28 = 4096) : (v28 = &v3[v4] - v27), (result = memchr(v27, 0, v28)) == 0 || ((v29 = v20 - 4096, v30 = (v20 + 5180), v26 - v30 >= 4096) ? (v31 = 4096) : (v31 = v26 - v30), (result = memchr(v30, 0, v31)) == 0)))
  {
LABEL_41:
    v33 = -304;
    goto LABEL_42;
  }

  v32 = &v3[(v4 + 3) & 0x7FFC];
  if (*v32 || *(v32 + 1) <= 0x1Fu)
  {
    v33 = -309;
LABEL_42:
    *(a2 + 32) = v33;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v34 = *(v3 + 3);
  v35 = *(v29 + v22 + 9276);
  v36 = *(v32 + 36);
  v37[0] = *(v32 + 20);
  v37[1] = v36;
  result = CNSServerAddAccount(v34, v3 + 40, v13 + 4140, v9, v27, v30, v35, (a2 + 36), v37);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XResolveAccount(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 4137) < 0xFFFFEFFF) || ((v5 = result[9], v5 <= 0x1000) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v10 = (v3 + ((v4 + 3) & 0x3FFC));
  if (*v10 || v10[1] <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  result = CNSServerResolveAccount(v3[3], (v3 + 10), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XAuthenticateUsing(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 4);
  if (*(result + 24) != 1 || (v4 - 8257) < 0xFFFFDFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1179648)
  {
    v6 = -300;
    goto LABEL_7;
  }

  v7 = *(result + 52);
  if (v7 > 0x1000)
  {
    goto LABEL_6;
  }

  v6 = -304;
  if (v4 - 64 < v7)
  {
    goto LABEL_7;
  }

  v8 = (v7 + 3) & 0xFFFFFFFC;
  if (v4 < v8 + 64)
  {
    goto LABEL_7;
  }

  v9 = v4 - v8;
  v10 = result + v8;
  v11 = *(v10 + 60);
  v12 = v11 <= 0x1000 && v9 - 64 >= v11;
  if (!v12 || v9 != ((v11 + 3) & 0x3FFC) + 64)
  {
    goto LABEL_6;
  }

  v13 = 4152;
  if (v4 < 0x1038)
  {
    v13 = *(result + 4);
  }

  result = memchr((result + 56), 0, v13 - 56);
  if (!result || ((v14 = (v10 + 64), (v3 + v4 - v14) >= 4096) ? (v15 = 4096) : (v15 = v3 + v4 - v14), (result = memchr(v14, 0, v15)) == 0))
  {
LABEL_6:
    v6 = -304;
LABEL_7:
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v16 = (((v4 + 3) & 0x7FFC) + v3);
  if (*v16 || v16[1] <= 0x1Fu)
  {
    v6 = -309;
    goto LABEL_7;
  }

  result = CNSServerAuthenticateUsing(*(v3 + 12), (v3 + 56), v14, (a2 + 36), *(v3 + 28));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XAuthenticateUsingToken(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 4);
  if (*(result + 24) != 1 || v4 - 5181 < 0xFFFFEBFF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1179648)
  {
    v6 = -300;
    goto LABEL_7;
  }

  v7 = *(result + 52);
  if (v7 > 0x1000)
  {
    goto LABEL_6;
  }

  v6 = -304;
  if (v4 - 60 < v7)
  {
    goto LABEL_7;
  }

  v8 = (v7 + 3) & 0xFFFFFFFC;
  if (v4 < v8 + 60)
  {
    goto LABEL_7;
  }

  v9 = v4 - v8;
  v10 = result + v8;
  v11 = *(v10 + 56);
  v12 = v4 - v8 - 60;
  v13 = v11 <= 0x400 && v12 >= v11;
  if (!v13 || v9 != ((v11 + 3) & 0xFFC) + 60 || (v4 >= 0x1038 ? (v14 = 4152) : (v14 = v4), (result = memchr((result + 56), 0, v14 - 56)) == 0))
  {
LABEL_6:
    v6 = -304;
LABEL_7:
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v15 = ((v4 + 3) & 0x3FFC) + v3;
  if (*v15 || *(v15 + 4) <= 0x1Fu)
  {
    v6 = -309;
    goto LABEL_7;
  }

  v16 = *(v3 + 12);
  v17 = *(v3 + 28);
  v18 = *(v15 + 36);
  v19[0] = *(v15 + 20);
  v19[1] = v18;
  result = CNSServerAuthenticateUsingToken(v16, (v3 + 56), (v10 + 60), v11, (a2 + 36), v17, v19);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XConnectionEstablish(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 68)
  {
    v3 = -304;
    goto LABEL_11;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 40) != *(result + 64))
  {
    v3 = -300;
    goto LABEL_11;
  }

  if (*(result + 68) || *(result + 72) <= 0x1Fu)
  {
    v3 = -309;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 104);
  v9[0] = *(result + 88);
  v9[1] = v8;
  result = CNSServerConnectionEstablish(v4, v5, v6, v7, (a2 + 28), (a2 + 48), v9);
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XConnectionGetCommandInfo(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerConnectionGetCommandInfo(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XConnectionProvideResponse(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = CNSServerConnectionProvideResponse(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XConnectionSendCmdAck(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = CNSServerConnectionSendCmdAck(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XCopyLandingPageURL(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerCopyLandingPageURL(result[3], (a2 + 28), (a2 + 52), (a2 + 56), (a2 + 64));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 68;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XConnectionProcessControl(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerConnectionProcessControl(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_XUserInteractionIsRequired(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = CNSServerUserInteractionIsRequired(v5, (a2 + 36), (a2 + 40), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t CNSServer_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 28047727) >= 0xFFFFFFE6 && (v5 = *(&CNSServerCNSServer_subsystem + 5 * (v4 - 28047701) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t LogoffReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047703;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t AuthenticateUsingReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047705;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}