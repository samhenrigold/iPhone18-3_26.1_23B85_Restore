CFStringRef __SC_IORegistryEntryCopyPath(uint64_t a1)
{
  v1 = a1;
  v12 = *MEMORY[0x1E69E9840];
  memset(cStr, 0, sizeof(cStr));
  v2 = MEMORY[0x1B26F4670](a1, "IOService", cStr);
  if (v2 != -536870206)
  {
    if (!v2)
    {
      return CFStringCreateWithCString(0, cStr, 0x8000100u);
    }

    return 0;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
  {
    return 0;
  }

  v5 = __SC_IORegistryEntryCopyPath(parent);
  if (v5)
  {
    v6 = v5;
    memset(name, 0, sizeof(name));
    if (IORegistryEntryGetNameInPlane(v1, "IOService", name))
    {
      v3 = 0;
    }

    else
    {
      memset(location, 0, sizeof(location));
      if (IORegistryEntryGetLocationInPlane(v1, "IOService", location))
      {
        v7 = CFStringCreateWithFormat(0, 0, @"%@/%s", v6, name);
      }

      else
      {
        v7 = CFStringCreateWithFormat(0, 0, @"%@/%s@%s", v6, name, location);
      }

      v3 = v7;
    }

    CFRelease(v6);
  }

  else
  {
    v3 = 0;
  }

  IOObjectRelease(parent);
  return v3;
}

BOOL processNetworkInterface(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, io_object_t a4, const __CFDictionary *a5, io_registry_entry_t a6, const __CFDictionary *a7)
{
  v95 = *MEMORY[0x1E69E9840];
  v93 = 0;
  valuePtr = -1;
  Value = CFDictionaryGetValue(theDict, @"IOInterfaceType");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(6);
    result = __SC_log_enabled(6, v18, v19);
    if (!result)
    {
      return result;
    }

    v21 = _os_log_pack_size();
    v27 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "no interface type: %@");
    *v29 = 138412290;
    *(v29 + 4) = theDict;
    __SC_log_send(6, v18, v19, v27);
    return 0;
  }

  *(a1 + 248) = CFRetain(Value);
  if (valuePtr != 6)
  {
    if (valuePtr != 144)
    {
      if (valuePtr == 255)
      {
        *(a1 + 16) = @"Cellular";
        *(a1 + 128) = @"Cellular";
        *(a1 + 176) = 1;
        *(a1 + 312) = 22;
        v16 = @"cellular";
LABEL_8:
        *(a1 + 48) = v16;
        v17 = IODictionaryCopyBSDName(theDict);
LABEL_9:
        *(a1 + 56) = v17;
        goto LABEL_85;
      }

      v38 = __log_SCNetworkConfiguration();
      v39 = _SC_syslog_os_log_mapping(6);
      result = __SC_log_enabled(6, v38, v39);
      if (!result)
      {
        return result;
      }

      v40 = _os_log_pack_size();
      v46 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v40, *v47, &dword_1AD2AD000, "unknown interface type = %d", v91);
      v49 = valuePtr;
      *v48 = 67109120;
      v48[1] = v49;
      __SC_log_send(6, v38, v39, v46);
      return 0;
    }

    *(a1 + 16) = @"FireWire";
    *(a1 + 128) = @"FireWire";
    v30 = isBuiltin(a2);
    *(a1 + 176) = v30;
    *(a1 + 312) = 11;
    if (v30)
    {
      v31 = @"firewire";
LABEL_84:
      *(a1 + 48) = v31;
      goto LABEL_85;
    }

    v91 = 0;
    *parent = 0;
    if (update_interface_name(a1, a2, 0) || !pci_slot_info(a2, valuePtr, &v91, parent))
    {
      goto LABEL_85;
    }

    v50 = isThunderbolt(a2);
    v51 = *parent;
    if (v50)
    {
      if (*parent)
      {
        v52 = v91;
        v53 = @"thunderbolt-multifirewire";
LABEL_38:
        *(a1 + 48) = v53;
        *(a1 + 56) = v52;
        *(a1 + 64) = v51;
        goto LABEL_85;
      }

      v54 = v91;
      v55 = @"thunderbolt-firewire";
    }

    else
    {
      if (*parent)
      {
        v52 = v91;
        v53 = @"pci-multifirewire";
        goto LABEL_38;
      }

      v54 = v91;
      v55 = @"pci-firewire";
    }

    *(a1 + 48) = v55;
    *(a1 + 56) = v54;
    goto LABEL_85;
  }

  if (IOObjectConformsTo(a4, "IO80211Controller") || IOObjectConformsTo(a4, "AirPortPCI") || IOObjectConformsTo(a4, "AirPortDriver"))
  {
    *(a1 + 16) = @"IEEE80211";
    *(a1 + 128) = @"Ethernet";
    v32 = 12;
LABEL_19:
    *(a1 + 312) = v32;
    goto LABEL_20;
  }

  if (IOObjectConformsTo(a4, "AppleThunderboltIPPort"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v32 = 13;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "IOBluetoothBNEPDriver"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v32 = 18;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "AppleUSBEthernetHost"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v32 = 15;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "AppleUSBCDCECMData"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v32 = 17;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "IOUserEthernetController"))
  {
    *(a1 + 243) = 1;
  }

LABEL_20:
  v33 = *(a1 + 16);
  if (v33)
  {
    goto LABEL_63;
  }

  v34 = IORegistryEntrySearchCFProperty(a2, "IOService", @"InterfaceRole", 0, 3u);
  if (v34)
  {
    v35 = v34;
    v36 = CFStringGetTypeID();
    if (CFGetTypeID(v35) == v36)
    {
      if (CFEqual(v35, @"Bluetooth PAN"))
      {
        v37 = 18;
LABEL_54:
        *(a1 + 16) = @"Ethernet";
        *(a1 + 128) = @"Ethernet";
        *(a1 + 312) = v37;
        goto LABEL_55;
      }

      if (CFEqual(v35, @"Bluetooth PAN-NAP"))
      {
        v37 = 19;
        goto LABEL_54;
      }

      if (CFEqual(v35, @"Bluetooth P2P"))
      {
        v37 = 20;
        goto LABEL_54;
      }

      if (CFEqual(v35, @"CarPlay"))
      {
        v37 = 21;
        goto LABEL_54;
      }

      if (CFEqual(v35, @"VMNET"))
      {
        v37 = 23;
        goto LABEL_54;
      }
    }

LABEL_55:
    CFRelease(v35);
  }

  v33 = *(a1 + 16);
  if (!v33)
  {
    v56 = CFDictionaryGetValue(a7, @"name");
    v57 = IOCopyCFStringValue(v56);
    if (v57)
    {
      v58 = v57;
      if (CFEqual(v57, @"radio"))
      {
        *(a1 + 16) = @"Ethernet";
        *(a1 + 128) = @"Ethernet";
        *(a1 + 312) = 14;
      }

      CFRelease(v58);
    }

    v33 = *(a1 + 16);
    if (!v33)
    {
      v33 = @"Ethernet";
      *(a1 + 16) = @"Ethernet";
      *(a1 + 128) = @"Ethernet";
      *(a1 + 312) = 7;
      *(a1 + 316) = 1;
    }
  }

LABEL_63:
  if (!CFEqual(v33, @"IEEE80211"))
  {
    *(a1 + 344) = 1;
  }

  v59 = CFDictionaryGetValue(theDict, @"IOBuiltin");
  v60 = CFBooleanGetTypeID();
  if (v59 && CFGetTypeID(v59) == v60 || (v59 = CFDictionaryGetValue(theDict, @"IOPrimaryInterface"), v61 = CFBooleanGetTypeID(), v59) && CFGetTypeID(v59) == v61)
  {
    v62 = CFBooleanGetValue(v59);
  }

  else
  {
    v62 = isBuiltin(a2);
  }

  *(a1 + 176) = v62;
  if (!v62 && CFEqual(*(a1 + 16), @"IEEE80211"))
  {
    *(a1 + 176) = 1;
  }

  v63 = CFDictionaryGetValue(theDict, @"IsEphemeral");
  *(a1 + 241) = getBooleanValue(v63);
  v64 = CFDictionaryGetValue(theDict, @"SupportsVMNETBridgedMode");
  *(a1 + 244) = getBooleanValue(v64);
  v65 = CFDictionaryGetValue(theDict, @"IOLocation");
  v66 = IOCopyCFStringValue(v65);
  *(a1 + 200) = v66;
  if (v66 && !CFStringGetLength(v66))
  {
    CFRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }

  v67 = CFDictionaryGetValue(a5, @"IOFeatures");
  v68 = CFNumberGetTypeID();
  if (v67 && CFGetTypeID(v67) == v68 && CFNumberGetValue(v67, kCFNumberIntType, &v93) && (v93 & 6) != 0)
  {
    *(a1 + 368) = 1;
  }

  if (CFEqual(*(a1 + 16), @"IEEE80211"))
  {
    v31 = @"airport";
    goto LABEL_84;
  }

  v75 = *(a1 + 312);
  if (v75 <= 17)
  {
    if (v75 == 13)
    {
      v77 = *(a1 + 200);
      if (!v77 || !CFStringGetLength(v77))
      {
        v31 = @"thunderbolt";
        goto LABEL_84;
      }

      v78 = @"multithunderbolt";
      goto LABEL_114;
    }

    if (v75 == 14)
    {
      *(a1 + 48) = @"wireless";
      v76 = &stru_1F22591E8;
LABEL_115:
      v17 = CFRetain(v76);
      goto LABEL_9;
    }
  }

  else
  {
    switch(v75)
    {
      case 18:
        v31 = @"bluetooth-pan-gn";
        goto LABEL_84;
      case 19:
        v31 = @"bluetooth-pan-nap";
        goto LABEL_84;
      case 20:
        v31 = @"bluetooth-pan-u";
        goto LABEL_84;
    }
  }

  if (*(a1 + 176))
  {
    v79 = *(a1 + 200);
    if (!v79 || !CFStringGetLength(v79))
    {
      v31 = @"ether";
      goto LABEL_84;
    }

    v78 = @"multiether";
LABEL_114:
    *(a1 + 48) = v78;
    v76 = *(a1 + 200);
    goto LABEL_115;
  }

  parent[0] = 0;
  v80 = IORegistryEntrySearchCFProperty(a2, "IOService", @"IOProviderClass", 0, 3u);
  if (v80)
  {
    v81 = v80;
    v82 = a2;
    while (CFEqual(v81, @"IOSkywalkEthernetInterface"))
    {
      CFRelease(v81);
      if (!IORegistryEntryGetParentEntry(v82, "IOService", parent))
      {
        v82 = parent[0];
        parent[0] = 0;
        v81 = IORegistryEntrySearchCFProperty(v82, "IOService", @"IOProviderClass", 0, 3u);
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_157;
    }

    if (CFEqual(v81, @"IOPCIDevice"))
    {
      v91 = 0;
      *parent = 0;
      if (update_interface_name(a1, a2, 0) || !pci_slot_info(a2, valuePtr, &v91, parent))
      {
        goto LABEL_156;
      }

      v83 = isThunderbolt(a2);
      v84 = *parent;
      if (v83)
      {
        if (*parent)
        {
          v85 = v91;
          v86 = @"thunderbolt-multiether";
LABEL_152:
          *(a1 + 48) = v86;
          *(a1 + 56) = v85;
          *(a1 + 64) = v84;
LABEL_156:
          CFRelease(v81);
          goto LABEL_157;
        }

        v89 = v91;
        v90 = @"thunderbolt-ether";
      }

      else
      {
        if (*parent)
        {
          v85 = v91;
          v86 = @"pci-multiether";
          goto LABEL_152;
        }

        v89 = v91;
        v90 = @"pci-ether";
      }

      *(a1 + 48) = v90;
      *(a1 + 56) = v89;
      goto LABEL_156;
    }

    v87 = a2;
    while (!CFEqual(v81, @"IOUSBDevice") && !CFEqual(v81, @"IOUSBInterface") && !CFEqual(v81, @"IOUSBHostInterface"))
    {
      if (_SC_isAppleInternal_once_3 != -1)
      {
        processNetworkInterface_cold_1();
      }

      if (_SC_isAppleInternal_isInternal_3 && IOObjectConformsTo(v87, "IOUserEthernetController"))
      {
        break;
      }

      v88 = a4;
      if (v87 == a2 || (v88 = a6, v87 == a4))
      {
        CFRelease(v81);
        v81 = IORegistryEntrySearchCFProperty(v88, "IOService", @"IOProviderClass", 0, 3u);
        v87 = v88;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_144;
    }

    processUSBInterface(a1, a2);
    if (!update_interface_name(a1, a2, 1))
    {
      *(a1 + 48) = @"usb-ether";
      *(a1 + 56) = IODictionaryCopyBSDName(theDict);
    }

LABEL_144:
    if (!*(a1 + 48))
    {
      update_interface_name(a1, a2, 0);
    }

    if (v81)
    {
      goto LABEL_156;
    }
  }

LABEL_157:
  if (!*(a1 + 48))
  {
    v16 = @"generic-ether";
    goto LABEL_8;
  }

LABEL_85:
  *(a1 + 112) = IODictionaryCopyBSDName(theDict);
  v69 = CFDictionaryGetValue(a5, @"IOMACAddress");
  v70 = CFDataGetTypeID();
  if (v69 && CFGetTypeID(v69) == v70)
  {
    *(a1 + 160) = CFRetain(v69);
  }

  v71 = CFDictionaryGetValue(theDict, @"IOInterfaceNamePrefix");
  v72 = CFStringGetTypeID();
  if (v71 && CFGetTypeID(v71) == v72)
  {
    *(a1 + 232) = CFRetain(v71);
  }

  v73 = CFDictionaryGetValue(theDict, @"IOInterfaceUnit");
  v74 = CFNumberGetTypeID();
  if (v73 && CFGetTypeID(v73) == v74)
  {
    if (CFNumberGetValue(v73, kCFNumberIntType, &v93))
    {
      *(a1 + 256) = CFRetain(v73);
    }
  }

  merge_override(a1, a2, @"PPP");
  return 1;
}

CFStringRef IOCopyCFStringValue(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFDataGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {

    return CFStringCreateCopy(0, a1);
  }

  v4 = CFDataGetTypeID();
  if (CFGetTypeID(a1) != v4)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);

  return CFStringCreateWithCString(0, BytePtr, 0x8000100u);
}

uint64_t update_interface_name(void *a1, io_registry_entry_t entry, int a3)
{
  v5 = IORegistryEntrySearchCFProperty(entry, "IOService", @"Product Name", 0, 3u);
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = a1[35];
    if (!v7)
    {
      return 0;
    }

    v6 = CFRetain(v7);
  }

  if (!v6)
  {
    return v6;
  }

  v8 = IOCopyCFStringValue(v6);
  CFRelease(v6);
  if (!v8)
  {
    return 0;
  }

  if (CFStringGetLength(v8) < 1)
  {
    v6 = 0;
  }

  else
  {
    v9 = a1[4];
    if (v9)
    {
      CFRelease(v9);
    }

    a1[4] = CFRetain(v8);
    v10 = a1[5];
    if (v10)
    {
      CFRelease(v10);
      a1[5] = 0;
    }

    v6 = 1;
    if (bundle)
    {
      a1[5] = copy_interface_string(bundle, v8, 1);
    }
  }

  CFRelease(v8);
  return v6;
}

CFStringRef IODictionaryCopyBSDName(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"BSD Name");
  if (Value)
  {

    return IOCopyCFStringValue(Value);
  }

  else
  {
    v4 = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
    v5 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
    TypeID = CFStringGetTypeID();
    if (v4 && CFGetTypeID(v4) == TypeID && (v7 = CFNumberGetTypeID(), v5) && CFGetTypeID(v5) == v7)
    {
      return CFStringCreateWithFormat(0, 0, @"%@%@", v4, v5);
    }

    else
    {
      return 0;
    }
  }
}

void merge_override(uint64_t a1, io_registry_entry_t a2, const void *a3)
{
  v6 = CFStringCreateWithFormat(0, 0, @"Device%@Overrides", a3);
  v7 = IORegistryEntrySearchCFProperty(a2, "IOService", v6, 0, 3u);
  CFRelease(v6);
  if (v7)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v7) == TypeID)
    {
      Mutable = *(a1 + 224);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a1 + 224) = Mutable;
      }

      CFDictionarySetValue(Mutable, a3, v7);
    }

    CFRelease(v7);
  }
}

void __SCNetworkInterfaceCacheAdd(const void *a1, const void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = __SCGetThreadSpecificData();
  if (a1)
  {
    v5 = v4[1];
    if (v5)
    {
      if (!a2)
      {
        a2 = *MEMORY[0x1E695E738];
      }

      v6 = __log_SCNetworkConfiguration();
      v7 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v6, v7))
      {
        v8 = _os_log_pack_size();
        v14 = v17 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = __error();
        v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCNetworkInterface cache (%p): add %@");
        *v16 = 134218242;
        *(v16 + 4) = v5;
        *(v16 + 12) = 2112;
        *(v16 + 14) = a1;
        __SC_log_send(7, v6, v7, v14);
      }

      CFDictionaryAddValue(v5, a1, a2);
    }
  }
}

CFIndex _SCNetworkInterfaceIsThunderbolt(CFTypeRef cf)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    return 0;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
  if (!CFEqual(InterfaceType, @"Bridge"))
  {
    return *(cf + 78) == 13;
  }

  result = SCBridgeInterfaceGetMemberInterfaces(cf);
  if (result)
  {
    v5 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v6 = result;
      if (result < 1)
      {
        return 1;
      }

      v7 = 0;
      while (*(CFArrayGetValueAtIndex(v5, v7) + 78) == 13)
      {
        ++v7;
        result = 1;
        if (v6 == v7)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

CFNumberRef update_ift_family(CFNumberRef interface)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(interface + 33))
  {
    v1 = interface;
    if (!*(interface + 34))
    {
      BSDName = SCNetworkInterfaceGetBSDName(interface);
      v5 = 0u;
      v6 = 0u;
      if (BSDName)
      {
        if (_SC_cfstring_to_cstring(BSDName, &v5, 16, 0x600u))
        {
          v3 = socket(2, 2, 0);
          if (v3 != -1)
          {
            v4 = v3;
            if (ioctl(v3, 0xC020699FuLL, &v5) == -1)
            {
              *(&v6 + 4) = 0;
            }

            close(v4);
          }
        }
      }

      *(v1 + 33) = CFNumberCreate(0, kCFNumberSInt32Type, &v6 + 4);
      interface = CFNumberCreate(0, kCFNumberSInt32Type, &v6 + 8);
      *(v1 + 34) = interface;
    }
  }

  return interface;
}

uint64_t _SCNetworkInterfaceGetFamilySubType(const __CFNumber *interface)
{
  result = *(interface + 34);
  if (!result)
  {
    update_ift_family(interface);
    return *(interface + 34);
  }

  return result;
}

uint64_t getNameEncoding(const __CFDictionary *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, @"ComputerNameEncoding", &value) && (v1 = value, TypeID = CFNumberGetTypeID(), v1) && CFGetTypeID(v1) == TypeID && CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return CFStringGetSystemEncoding();
  }
}

CFStringRef SCDynamicStoreCopyLocalHostName(SCDynamicStoreRef store)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", @"Setup:", @"Network", @"HostNames");
  v3 = __SCDynamicStoreCopyValueCommon(store, v2, 0);
  CFRelease(v2);
  if (v3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) == TypeID)
    {
      Value = CFDictionaryGetValue(v3, @"LocalHostName");
      v6 = CFStringGetTypeID();
      if (!Value)
      {
LABEL_9:
        v7 = 1004;
LABEL_10:
        _SCErrorSet(v7);
        CFRelease(v3);
        return Value;
      }

      if (CFGetTypeID(Value) == v6)
      {
        CFRetain(Value);
        if (SCError() == 10100)
        {
          report_missing_entitlement("SCDynamicStoreCopyLocalHostName");
        }

        v7 = 0;
        goto LABEL_10;
      }
    }

    Value = 0;
    goto LABEL_9;
  }

  v8 = SCError();
  if (v8 == 10003)
  {
    block = MEMORY[0x1E69E9820];
    v11 = 0x40000000;
    v12 = ___SC_crash_once_block_invoke_1;
    v13 = &__block_descriptor_tmp_9;
    v15 = 0;
    v16 = 0;
    v14 = "SCDynamicStoreCopyLocalHostName() access denied, missing entitlement";
    if (_SC_crash_once_once_1 == -1)
    {
      return 0;
    }

LABEL_21:
    dispatch_once(&_SC_crash_once_once_1, &block);
    return 0;
  }

  if (v8 == 1003)
  {
    block = MEMORY[0x1E69E9820];
    v11 = 0x40000000;
    v12 = ___SC_crash_once_block_invoke_1;
    v13 = &__block_descriptor_tmp_9;
    v15 = 0;
    v16 = 0;
    v14 = "SCDynamicStoreCopyLocalHostName() access denied by policy";
    if (_SC_crash_once_once_1 == -1)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return _SCPreferencesCopyLocalHostName(0);
}

SCNetworkReachabilityRef SCNetworkReachabilityCreateWithOptions(const __CFAllocator *a1, const void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    goto LABEL_52;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_52;
  }

  Value = CFDictionaryGetValue(a2, @"nodename");
  if (Value)
  {
    v6 = CFStringGetTypeID();
    if (CFGetTypeID(Value) != v6 || !CFStringGetLength(Value))
    {
      goto LABEL_52;
    }
  }

  v7 = CFDictionaryGetValue(a2, @"local-address");
  if (v7)
  {
    v8 = v7;
    v9 = CFDataGetTypeID();
    if (CFGetTypeID(v8) != v9 || CFDataGetLength(v8) <= 0xF)
    {
      goto LABEL_52;
    }

    BytePtr = CFDataGetBytePtr(v8);
  }

  else
  {
    BytePtr = 0;
  }

  v11 = CFDictionaryGetValue(a2, @"ptr-address");
  if (v11)
  {
    v12 = v11;
    v13 = CFDataGetTypeID();
    if (CFGetTypeID(v12) != v13 || CFDataGetLength(v12) <= 0xF)
    {
      goto LABEL_52;
    }

    v14 = CFDataGetBytePtr(v12);
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(a2, @"remote-address");
  if (v15)
  {
    v16 = v15;
    v17 = CFDataGetTypeID();
    if (CFGetTypeID(v16) != v17 || CFDataGetLength(v16) <= 0xF)
    {
      goto LABEL_52;
    }

    v18 = CFDataGetBytePtr(v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(a2, @"interface");
  if (v19)
  {
    v20 = CFStringGetTypeID();
    if (CFGetTypeID(v19) != v20 || !CFStringGetLength(v19))
    {
      goto LABEL_52;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"ResolverBypass");
  if (v21)
  {
    v22 = CFBooleanGetTypeID();
    if (CFGetTypeID(v21) != v22)
    {
      goto LABEL_52;
    }
  }

  v23 = CFDictionaryGetValue(a2, @"SourceAppAuditToken");
  if (v23)
  {
    v24 = CFDataGetTypeID();
    if (CFGetTypeID(v23) != v24 || CFDataGetLength(v23) != 32)
    {
      goto LABEL_52;
    }
  }

  v25 = CFDictionaryGetValue(a2, @"SourceAppBundleIdentifier");
  if (v25)
  {
    v26 = CFStringGetTypeID();
    if (CFGetTypeID(v25) != v26 || !CFStringGetLength(v25))
    {
      goto LABEL_52;
    }
  }

  if (!Value)
  {
    if (v14)
    {
      if (BytePtr | v18)
      {
LABEL_52:
        _SCErrorSet(1002);
        return 0;
      }

      v29 = __SCNetworkReachabilityCreateWithPTR(v14);
      goto LABEL_46;
    }

    if (BytePtr && v18)
    {
      v30 = BytePtr;
      v31 = v18;
    }

    else
    {
      if (v18)
      {
        v29 = SCNetworkReachabilityCreateWithAddress(0, v18);
        goto LABEL_46;
      }

      if (!BytePtr)
      {
        goto LABEL_52;
      }

      v30 = BytePtr;
      v31 = 0;
    }

    v29 = SCNetworkReachabilityCreateWithAddressPair(0, v30, v31);
LABEL_46:
    v28 = v29;
    goto LABEL_47;
  }

  if (BytePtr || v18 || v14)
  {
    goto LABEL_52;
  }

  v27 = _SC_cfstring_to_cstring(Value, 0, 0, 0x8000100u);
  v28 = SCNetworkReachabilityCreateWithName(a1, v27);
  CFAllocatorDeallocate(0, v27);
LABEL_47:
  if (v28)
  {
    if (v19)
    {
      if (!_SC_cfstring_to_cstring(v19, v65, 16, 0x600u) || (v32 = if_nametoindex(v65)) == 0)
      {
        CFRelease(v28);
        goto LABEL_52;
      }
    }

    else
    {
      v32 = 0;
    }

    if (!*(v28 + 29))
    {
      *(v28 + 29) = MEMORY[0x1B26F5100]();
    }

    if (v32)
    {
      v34 = nw_interface_create_with_index();
      nw_parameters_require_interface(*(v28 + 29), v34);
      nw_release(v34);
      v35 = 1;
    }

    else
    {
      v35 = 0;
    }

    if (v21)
    {
      *(v28 + 192) = CFBooleanGetValue(v21);
      v35 = 1;
    }

    if (v23)
    {
      *buffer = 0u;
      v64 = 0u;
      v67.length = CFDataGetLength(v23);
      v67.location = 0;
      CFDataGetBytes(v23, v67, buffer);
      v62[0] = *buffer;
      v62[1] = v64;
      nw_parameters_set_source_application();
    }

    else if (v25)
    {
      v49 = _SC_cfstring_to_cstring(v25, 0, 0, 0x8000100u);
      if (v49)
      {
        v50 = v49;
        nw_parameters_set_source_application_by_bundle_id();
        CFAllocatorDeallocate(0, v50);
      }

      else
      {
        v51 = __log_SCNetworkReachability_log;
        if (!__log_SCNetworkReachability_log)
        {
          v51 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
          __log_SCNetworkReachability_log = v51;
        }

        v52 = _SC_syslog_os_log_mapping(4);
        if (__SC_log_enabled(4, v51, v52))
        {
          v53 = _os_log_pack_size();
          v59 = v62 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
          v60 = __error();
          v61 = _os_log_pack_fill(v59, v53, *v60, &dword_1AD2AD000, "failed to convert %@ to a C string");
          *v61 = 138412290;
          *(v61 + 4) = v25;
          __SC_log_send(4, v51, v52, v59);
        }
      }
    }

    else if (!v35)
    {
      return v28;
    }

    v36 = *(v28 + 20);
    if (v36 > 3)
    {
      v37 = 0;
    }

    else
    {
      v37 = off_1E79BDB30[v36];
    }

    v38 = __log_SCNetworkReachability_log;
    if (!__log_SCNetworkReachability_log)
    {
      v38 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
      __log_SCNetworkReachability_log = v38;
    }

    v39 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v38, v39))
    {
      v40 = _os_log_pack_size();
      v46 = v62 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v40, *v47, &dword_1AD2AD000, "%s%s %@");
      *v48 = 136315650;
      *(v48 + 4) = v28 + 193;
      *(v48 + 12) = 2080;
      *(v48 + 14) = v37;
      *(v48 + 22) = 2112;
      *(v48 + 24) = v28;
      __SC_log_send(7, v38, v39, v46);
    }
  }

  return v28;
}

uint64_t _SCHelperExec(uint64_t a1, uint64_t a2, const __CFData *Length, _DWORD *a4, void *a5)
{
  v8 = a2;
  v9 = a1;
  v43[1] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43[0] = 0;
  if (_SCHelperExecCopyBacktrace_once != -1)
  {
    _SCHelperExec_cold_1();
  }

  if (_SCHelperExecCopyBacktrace_loggingEnabled != 1)
  {
    v11 = 0;
    if (Length)
    {
      goto LABEL_7;
    }

LABEL_10:
    BytePtr = 0;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v10 = _SC_copyBacktrace();
  v11 = v10;
  if (v10)
  {
    _SCSerializeString(v10, v43, 0, 0);
    CFRelease(v11);
    v11 = v43[0];
  }

  if (!Length)
  {
    goto LABEL_10;
  }

LABEL_7:
  BytePtr = CFDataGetBytePtr(Length);
  LODWORD(Length) = CFDataGetLength(Length);
  if (v11)
  {
LABEL_8:
    v13 = CFDataGetBytePtr(v11);
    v14 = CFDataGetLength(v11);
    v15 = helperexec(v9, v8, BytePtr, Length, v13, v14, &v40, &v41, &v40 + 1);
    CFRelease(v11);
    goto LABEL_12;
  }

LABEL_11:
  v15 = helperexec(v9, v8, BytePtr, Length, 0, 0, &v40, &v41, &v40 + 1);
LABEL_12:
  if (v15)
  {
    if (v41)
    {
      MEMORY[0x1B26F57E0](*MEMORY[0x1E69E9A60], v41, HIDWORD(v40));
    }

    if (v15 != 268435459)
    {
      v16 = __log_SCPreferences();
      v17 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v16, v17))
      {
        v18 = _os_log_pack_size();
        v24 = &v39 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "_SCHelperExec() failed: %s", v39);
        v27 = mach_error_string(v15);
        *v26 = 136315138;
        *(v26 + 4) = v27;
        __SC_log_send(5, v16, v17, v24);
      }
    }

    _SCErrorSet(v15);
    return 0;
  }

  else if (!v41 || (result = _SCUnserializeData(&v42, v41, HIDWORD(v40)), result))
  {
    if (a4)
    {
      __SCPreferencesHandleInternalStatus(&v40);
      *a4 = v40;
    }

    if (a5)
    {
      *a5 = v42;
    }

    else if (v42)
    {
      v29 = __log_SCPreferences();
      v30 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v29, v30))
      {
        v31 = _os_log_pack_size();
        v37 = &v39 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = __error();
        *_os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "data available with no place to go") = 0;
        __SC_log_send(6, v29, v30, v37);
      }

      CFRelease(v42);
    }

    return 1;
  }

  return result;
}

uint64_t helperexec(mach_port_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int *a7, uint64_t *a8, int *a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = 2;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = a5;
  v24 = 16777472;
  v25 = a6;
  v26 = *MEMORY[0x1E69E99E0];
  v27 = a2;
  v28 = a4;
  v29 = a6;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x55F100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x50u, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 22101)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == v25)
            {
              v15 = 0;
              *a7 = v24;
              *a8 = v20;
              *a9 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

CFDataRef SCPreferencesGetSignature(SCPreferencesRef prefs)
{
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    return *(prefs + 18);
  }

  else
  {
    _SCErrorSet(3001);
    return 0;
  }
}

void __SCPreferencesHandleInternalStatus(int *result)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *result;
  if (*result == 10003)
  {
    v3 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_17;
    }

    v21 = _os_log_pack_size();
    v11 = v28 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v13 = _os_log_pack_fill(v11, v21, v27, &dword_1AD2AD000, "SCPreferences read access denied, no entitlement");
    goto LABEL_16;
  }

  if (v2 == 10002)
  {
    v3 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_17;
    }

    v14 = _os_log_pack_size();
    v11 = v28 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v13 = _os_log_pack_fill(v11, v14, v20, &dword_1AD2AD000, "SCPreferences write access denied, no entitlement");
    goto LABEL_16;
  }

  if (v2 != 10001)
  {
    return;
  }

  v3 = __log_SCPreferences_log;
  if (!__log_SCPreferences_log)
  {
    v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
    __log_SCPreferences_log = v3;
  }

  v4 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v4))
  {
    v5 = _os_log_pack_size();
    v11 = v28 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *__error();
    v13 = _os_log_pack_fill(v11, v5, v12, &dword_1AD2AD000, "SCPreferences access denied, not authorized");
LABEL_16:
    *v13 = 0;
    __SC_log_send(5, v3, v4, v11);
  }

LABEL_17:
  *result = 1003;
}

uint64_t SCNetworkCategoryGetTypeID()
{
  if (__SCNetworkCategoryInitialize_initialized != -1)
  {
    SCNetworkCategoryGetTypeID_cold_1();
  }

  return __kSCNetworkCategoryTypeID;
}

uint64_t SCNetworkCategoryCopyAll(const __SCPreferences *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Categories = SCPreferencesPathKeyCreateCategories(0);
  Value = SCPreferencesPathGetValue(a1, Categories);
  CFRelease(Categories);
  if (Value)
  {
    context = a1;
    v6 = 0;
    CFDictionaryApplyFunction(Value, copyAllApplier, &context);
    return v6;
  }

  else
  {
    _SCErrorSet(1004);
    return 0;
  }
}

void copyAllApplier(const __CFString *a1, const void *a2, const void **a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    v7 = __SCNetworkCategoryCreate(*a3, a1);
    Mutable = a3[1];
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      a3[1] = Mutable;
    }

    CFArrayAppendValue(Mutable, v7);

    CFRelease(v7);
  }
}

uint64_t SCNetworkCategoryCreate(const void *a1, const __CFString *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = __SCNetworkCategoryCreate(a1, a2);
  if (v2)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = v15 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "%s(): %@");
      *v13 = 136315394;
      *(v13 + 4) = "SCNetworkCategoryCreate";
      *(v13 + 12) = 2112;
      *(v13 + 14) = v2;
      __SC_log_send(7, v3, v4, v11);
    }
  }

  return v2;
}

uint64_t __SCNetworkCategoryCreate(const void *a1, const __CFString *a2)
{
  if (__SCNetworkCategoryInitialize_initialized != -1)
  {
    SCNetworkCategoryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a2);
    *(Instance + 24) = CFRetain(a1);
  }

  return Instance;
}

uint64_t SCNetworkCategoryAddService(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, ServiceID);
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryService);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    _SCErrorSet(1005);
    v9 = 0;
  }

  else
  {
    v10 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = SCPreferencesPathSetValue(*(a1 + 24), CategoryService, v10);
    CFRelease(v10);
  }

  CFRelease(CategoryService);
  return v9;
}

uint64_t SCNetworkCategoryRemoveService(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, ServiceID);
  v8 = SCPreferencesPathRemoveValue(*(a1 + 24), CategoryService);
  SCNetworkServiceRemove(service);
  CFRelease(CategoryService);
  return v8;
}

uint64_t SCNetworkCategoryCopyServices(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, 0);
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryService);
  CFRelease(CategoryService);
  if (Value)
  {
    context = *(a1 + 24);
    v7 = 0;
    CFDictionaryApplyFunction(Value, copyServicesApplier, &context);
    return v7;
  }

  else
  {
    _SCErrorSet(1004);
    return 0;
  }
}

void copyServicesApplier(const __CFString *a1, const void *a2, SCPreferencesRef *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      v7 = SCNetworkServiceCopy(*a3, a1);
      if (v7)
      {
        v8 = v7;
        Mutable = a3[1];
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          a3[1] = Mutable;
        }

        CFArrayAppendValue(Mutable, v8);

        CFRelease(v8);
      }
    }
  }
}

uint64_t SCNetworkCategoryCopyValues(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  Category = SCPreferencesPathKeyCreateCategory(0, *(a1 + 16));
  Value = SCPreferencesPathGetValue(*(a1 + 24), Category);
  CFRelease(Category);
  if (Value)
  {
    v5[0] = 0;
    CFDictionaryApplyFunction(Value, copyValuesApplier, v5);
    return v5[0];
  }

  else
  {
    _SCErrorSet(1004);
    return 0;
  }
}

void copyValuesApplier(const void *a1, const void *a2, __CFArray **a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, a1);
  }
}

uint64_t SCNetworkCategorySetServiceQoSMarkingPolicy(uint64_t a1, uint64_t a2, SCNetworkServiceRef service, const __CFDictionary *a4)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryServiceEntity = SCPreferencesPathKeyCreateCategoryServiceEntity(0, *(a1 + 16), a2, ServiceID, @"QoSMarkingPolicy");
  v9 = *(a1 + 24);
  if (a4)
  {
    v10 = SCPreferencesPathSetValue(v9, CategoryServiceEntity, a4);
  }

  else
  {
    v10 = SCPreferencesPathRemoveValue(v9, CategoryServiceEntity);
  }

  v11 = v10;
  CFRelease(CategoryServiceEntity);
  return v11;
}

CFDictionaryRef SCNetworkCategoryGetServiceQoSMarkingPolicy(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryServiceEntity = SCPreferencesPathKeyCreateCategoryServiceEntity(0, *(a1 + 16), a2, ServiceID, @"QoSMarkingPolicy");
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryServiceEntity);
  CFRelease(CategoryServiceEntity);
  if (!Value)
  {
    _SCErrorSet(1004);
  }

  return Value;
}

void __SCNetworkCategoryDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

uint64_t __SCNetworkCategoryEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);

  return CFEqual(v2, v3);
}

CFHashCode __SCNetworkCategoryHash(uint64_t a1)
{
  v1 = *(a1 + 16);

  return CFHash(v1);
}

__CFString *__SCNetworkCategoryCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p [%p]> { ID = %@ }", "SCNetworkCategory", a1, v2, a1[2]);
  return Mutable;
}

const void *isA_CFString(const void *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

CFComparisonResult compare_CFString(const __CFString *a1, const __CFString *a2)
{

  return CFStringCompare(a1, a2, 0);
}

const void *isA_CFNumber(const void *a1)
{
  TypeID = CFNumberGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

CFComparisonResult compare_CFNumber(const __CFNumber *a1, const __CFNumber *a2)
{

  return CFNumberCompare(a1, a2, 0);
}

const void *isA_CFDate(const void *a1)
{
  TypeID = CFDateGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

CFComparisonResult compare_CFDate(const __CFDate *a1, const __CFDate *a2)
{

  return CFDateCompare(a1, a2, 0);
}

uint64_t _SC_isInstallEnvironment()
{
  if (_SC_isInstallEnvironment_once != -1)
  {
    _SC_isInstallEnvironment_cold_1();
  }

  return _SC_isInstallEnvironment_is_install;
}

os_log_t _SC_LOG_DEFAULT()
{
  result = _SC_LOG_DEFAULT_log;
  if (!_SC_LOG_DEFAULT_log)
  {
    result = os_log_create("com.apple.SystemConfiguration", "");
    _SC_LOG_DEFAULT_log = result;
  }

  return result;
}

void __SC_Log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_sc_log < 1)
  {
    goto LABEL_4;
  }

  if (_sc_log >= 2)
  {
    os_log_with_args();
LABEL_4:
    __SCPrint(*MEMORY[0x1E69E9858], a2, &a9, _sc_log == 2, 1);
    return;
  }

  os_log_with_args();
}

void SCLog(int a1, int a2, CFStringRef theString, ...)
{
  va_start(va, theString);
  v7 = 0;
  if (!a1)
  {
    return;
  }

  if (_sc_log < 1)
  {
    va_copy(v7, va);
LABEL_12:
    v6 = MEMORY[0x1E69E9848];
    if ((~a2 & 6) != 0)
    {
      v6 = MEMORY[0x1E69E9858];
    }

    __SCPrint(*v6, theString, v7, _sc_log == 2, 1);
    return;
  }

  v5 = _sc_log;
  if (_sc_log >= 2)
  {
    va_copy(v7, va);
  }

  if (CFStringGetCStringPtr(theString, 0x8000100u))
  {
    _SC_syslog_os_log_mapping(a2);
    if (!_SC_LOG_DEFAULT_log)
    {
      _SC_LOG_DEFAULT_log = os_log_create("com.apple.SystemConfiguration", "");
    }

    os_log_with_args();
  }

  if (v5 >= 2)
  {
    goto LABEL_12;
  }
}

CFErrorRef SCCopyLastError(void)
{
  v0 = *__SCGetThreadSpecificData();
  v1 = &off_1E79BD128;
  v2 = 20;
  while (*(v1 - 2) != v0)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = MEMORY[0x1E695E630];
      if ((v0 - 1) < 0x6B)
      {
        v3 = MEMORY[0x1E695E640];
      }

      v4 = *v3;

      return CFErrorCreate(0, v4, v0, 0);
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v7 = CFStringCreateWithCString(0, *v1, 0x600u);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E620], v7);
  CFRelease(v7);
  v8 = CFErrorCreate(0, @"com.apple.SystemConfiguration", v0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

const char *__cdecl SCErrorString(int status)
{
  v2 = &off_1E79BD128;
  v3 = 20;
  do
  {
    if (*(v2 - 2) == status)
    {
      return *v2;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  if ((status - 1) <= 0x6A)
  {
LABEL_5:

    return strerror(status);
  }

  if (status > 0x451)
  {
    result = mach_error_string(status);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  return bootstrap_strerror(status);
}

void *_SC_dlopen(char *__path)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_SC_dlopen_once != -1)
  {
    _SC_dlopen_cold_1();
  }

  if (!_SC_dlopen_suffix || (memset(&v5, 0, sizeof(v5)), __strlcpy_chk(), __strlcat_chk(), stat(v4, &v5) < 0))
  {
    v2 = __path;
  }

  else
  {
    v2 = v4;
  }

  return dlopen(v2, 5);
}

uint64_t _SC_hw_model(int a1)
{
  if (_SC_hw_model_once != -1)
  {
    _SC_hw_model_cold_1();
  }

  v2 = &_SC_hw_model_model_trimmed;
  if (!a1)
  {
    v2 = &_SC_hw_model_model;
  }

  return *v2;
}

CFPropertyListRef _SCCreatePropertyListFromResource(const __CFURL *a1)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  propertyValueTypeRefPtr = 0;
  valuePtr[0] = 0;
  if (CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EAF0], &propertyValueTypeRefPtr, 0))
  {
    v2 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v33 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "CFURLCopyResourcePropertyForKey() size not available: %@");
      *v13 = 138412290;
      *(v13 + 4) = a1;
      v14 = 5;
LABEL_15:
      __SC_log_send(v14, v3, v4, v11);
    }

    return 0;
  }

  Value = CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, valuePtr);
  CFRelease(propertyValueTypeRefPtr);
  if (Value)
  {
    v16 = valuePtr[0] == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v17 = _os_log_pack_size();
      v11 = &v33 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v11, v17, *v23, &dword_1AD2AD000, "_SCCreatePropertyListFromResource() improper size: %@");
      *v24 = 138412290;
      *(v24 + 4) = a1;
      v14 = 6;
      goto LABEL_15;
    }

    return 0;
  }

  v27 = CFReadStreamCreateWithFile(0, a1);
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  if (CFReadStreamOpen(v27))
  {
    v29 = MEMORY[0x1B26F3AA0](0, valuePtr[0], 152347730, 0);
    v30 = CFReadStreamRead(v28, v29, valuePtr[0]);
    if (v30 == valuePtr[0] && (v31 = CFDataCreateWithBytesNoCopy(0, v29, v30, *MEMORY[0x1E695E498])) != 0)
    {
      v32 = v31;
      v25 = CFPropertyListCreateWithData(0, v31, 0, 0, 0);
      CFRelease(v32);
    }

    else
    {
      v25 = 0;
    }

    CFAllocatorDeallocate(0, v29);
    CFReadStreamClose(v28);
  }

  else
  {
    v25 = 0;
  }

  CFRelease(v28);
  return v25;
}

uint64_t _SC_unschedule(const void *a1, const void *a2, const void *a3, CFArrayRef theArray, int a5)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v11 = Count;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13), !CFEqual(a1, ValueAtIndex)) || a2 && (v15 = CFArrayGetValueAtIndex(theArray, v13 + 1), !CFEqual(a2, v15)) || a3 && (v16 = CFArrayGetValueAtIndex(theArray, v13 + 2), !CFEqual(a3, v16)))
      {
        v13 += 3;
      }

      else
      {
        CFArrayRemoveValueAtIndex(theArray, v13 + 2);
        CFArrayRemoveValueAtIndex(theArray, v13 + 1);
        CFArrayRemoveValueAtIndex(theArray, v13);
        v12 = 1;
        if (!a5)
        {
          return v12;
        }

        v11 -= 3;
      }
    }

    while (v13 < v11);
  }

  return v12;
}

uint64_t _SC_CFBundleGet()
{
  v32 = *MEMORY[0x1E69E9840];
  if (!_SC_CFBundleGet_bundle)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.SystemConfiguration");
    _SC_CFBundleGet_bundle = BundleWithIdentifier;
    if (BundleWithIdentifier)
    {
      CFRetain(BundleWithIdentifier);
    }

    else
    {
      v1 = _SC_LOG_DEFAULT();
      v2 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v1, v2))
      {
        v3 = _os_log_pack_size();
        v9 = &v30[-((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v3, *v10, &dword_1AD2AD000, "could not get CFBundle for %@. Trying harder...");
        *v11 = 138412290;
        *(v11 + 4) = @"com.apple.SystemConfiguration";
        __SC_log_send(5, v1, v2, v9);
      }

      v12 = getenv("DYLD_FRAMEWORK_PATH");
      if (v12)
      {
        v13 = v12;
        v14 = strlen(v12);
        if (v14)
        {
          v15 = v14;
          if (v14 != 1)
          {
            while (v13[v15 - 1] == 47)
            {
              if (--v15 <= 1)
              {
                goto LABEL_16;
              }
            }

            if (v15 >= 5 && !strncmp(&v13[v15 - 4], "~sym", 4uLL) && v15 + 56 <= 0x3FF)
            {
              __strlcpy_chk();
              strlcpy(&v30[v15 + 4], "~dst", 1028 - v15);
              strlcat(&v31[v15], "/System/Library/Frameworks/SystemConfiguration.framework", 1024 - v15);
              v16 = CFURLCreateFromFileSystemRepresentation(0, v31, v15 + 56, 1u);
              _SC_CFBundleGet_bundle = CFBundleCreate(0, v16);
              CFRelease(v16);
            }
          }
        }
      }

LABEL_16:
      if (!_SC_CFBundleGet_bundle)
      {
        v17 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/SystemConfiguration.framework", kCFURLPOSIXPathStyle, 1u);
        _SC_CFBundleGet_bundle = CFBundleCreate(0, v17);
        CFRelease(v17);
        if (!_SC_CFBundleGet_bundle)
        {
          v18 = _SC_LOG_DEFAULT();
          v19 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v18, v19))
          {
            v20 = _os_log_pack_size();
            v26 = &v30[-((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0)];
            v27 = __error();
            v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "could not get CFBundle for %@");
            *v28 = 138412290;
            *(v28 + 4) = @"com.apple.SystemConfiguration";
            __SC_log_send(3, v18, v19, v26);
          }
        }
      }
    }
  }

  return _SC_CFBundleGet_bundle;
}

void _SC_crash(const char *a1, const __CFString *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_SC_isAppleInternal_once_0 != -1)
  {
    _SC_crash_cold_1();
  }

  if (_SC_isAppleInternal_isInternal_0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = "_SC_crash() called w/o crash_info";
    }

    qword_1EB591738 = v6;
    v7 = _SC_LOG_DEFAULT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1AD2AD000, v7, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    if (a2 && a3 && (_SC_ReportCrash_warned & 1) == 0)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%@\n\nPlease collect the crash report and file a Radar.", a3);
      CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, a2, v8, 0);
      CFRelease(v8);
      _SC_ReportCrash_warned = 1;
    }

    qword_1EB591738 = 0;
  }
}

void _SC_logMachPortStatus()
{
  *&v33[13] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v0 = _SC_LOG_DEFAULT();
  v1 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v0, v1))
  {
    v2 = _os_log_pack_size();
    v8 = &v28 - ((MEMORY[0x1EEE9AC00](v2, v3, v4, v5, v6, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    *_os_log_pack_fill(v8, v2, *v9, &dword_1AD2AD000, "----------", v28) = 0;
    __SC_log_send(7, v0, v1, v8);
  }

  if (!MEMORY[0x1B26F4E10](*MEMORY[0x1E69E9A60], &v30, &v28 + 4, &v29, &v28))
  {
    Mutable = CFStringCreateMutable(0, 0);
    if (HIDWORD(v28))
    {
      for (i = 0; i < HIDWORD(v28); ++i)
      {
        v12 = v29;
        if (!*(v29 + 4 * i))
        {
          v15 = &v31;
          goto LABEL_15;
        }

        v31 = 10272;
        v13 = *(v29 + 4 * i);
        v14 = &v32;
        if ((v13 & 0x10000) != 0)
        {
          v32 = 83;
          v13 = *(v29 + 4 * i);
          v14 = v33;
          if ((v13 & 0x20000) == 0)
          {
LABEL_9:
            if ((v13 & 0x40000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_19;
          }
        }

        else if ((v13 & 0x20000) == 0)
        {
          goto LABEL_9;
        }

        *v14++ = 82;
        v13 = *(v12 + 4 * i);
        if ((v13 & 0x40000) == 0)
        {
LABEL_10:
          if ((v13 & 0x80000) != 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

LABEL_19:
        *v14++ = 79;
        v13 = *(v29 + 4 * i);
        if ((v13 & 0x80000) != 0)
        {
LABEL_20:
          *v14++ = 80;
          if ((*(v29 + 4 * i) & 0x100000) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v14++ = 68;
          goto LABEL_13;
        }

LABEL_11:
        if ((v13 & 0x100000) != 0)
        {
          goto LABEL_12;
        }

LABEL_13:
        *v14 = 41;
        v15 = (v14 + 1);
LABEL_15:
        *v15 = 0;
        CFStringAppendFormat(Mutable, 0, @" %u%s", *(v30 + 4 * i), &v31);
      }
    }

    v16 = _SC_LOG_DEFAULT();
    v17 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &v28 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "Task ports (n=%u):%@");
      v27 = HIDWORD(v28);
      *v26 = 67109378;
      *(v26 + 4) = v27;
      *(v26 + 8) = 2112;
      *(v26 + 10) = Mutable;
      __SC_log_send(7, v16, v17, v24);
    }

    CFRelease(Mutable);
  }
}

BOOL _SC_checkMachPortReceive(uint64_t a1, uint64_t name)
{
  v8 = *MEMORY[0x1E69E9840];
  ptype = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  if (_SC_getMachPortReferences(name, &ptype, 0, &v4, v5, 0, 0, 0, a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = v4 == 0;
  }

  return !v2;
}

uint64_t _SC_getMachPortReferences(uint64_t name, mach_port_type_t *ptype, uint64_t a3, uint64_t a4, integer_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v82 = a9;
  v84 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E69E9A60];
  v18 = mach_port_type(*MEMORY[0x1E69E9A60], name, ptype);
  if (v18)
  {
    v19 = v18;
    v20 = _SC_LOG_DEFAULT();
    v21 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = &v81 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      v30 = _os_log_pack_fill(v28, v22, v29, &dword_1AD2AD000, "%smach_port_type(..., 0x%x): %s");
LABEL_4:
      v31 = v30;
      v32 = mach_error_string(v19);
      *v31 = 136315650;
      *(v31 + 4) = v82;
      *(v31 + 12) = 1024;
      *(v31 + 14) = name;
      *(v31 + 18) = 2080;
      *(v31 + 20) = v32;
      __SC_log_send(7, v20, v21, v28);
    }
  }

  else
  {
    if (a3)
    {
      if (*(ptype + 2))
      {
        v34 = MEMORY[0x1B26F4DE0](*v17, name, 0, a3);
        if (v34)
        {
          v19 = v34;
          v20 = _SC_LOG_DEFAULT();
          v21 = _SC_syslog_os_log_mapping(7);
          if (!__SC_log_enabled(7, v20, v21))
          {
            return v19;
          }

          v35 = _os_log_pack_size();
          v28 = &v81 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
          v41 = *__error();
          v30 = _os_log_pack_fill(v28, v35, v41, &dword_1AD2AD000, "%smach_port_get_refs(..., 0x%x, MACH_PORT_RIGHT_SEND): %s");
          goto LABEL_4;
        }
      }
    }

    if (a4 && a5 && (*(ptype + 2) & 2) != 0)
    {
      v58 = MEMORY[0x1B26F4DE0](*v17, name, 1, a4);
      if (v58)
      {
        v19 = v58;
        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v20, v21))
        {
          return v19;
        }

        v59 = _os_log_pack_size();
        v28 = &v81 - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
        v65 = *__error();
        v30 = _os_log_pack_fill(v28, v59, v65, &dword_1AD2AD000, "%smach_port_get_refs(..., 0x%x, MACH_PORT_RIGHT_RECEIVE): %s");
        goto LABEL_4;
      }

      port_info_outCnt = 10;
      attributes = mach_port_get_attributes(*v17, name, 2, a5, &port_info_outCnt);
      if (attributes)
      {
        v19 = attributes;
        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v20, v21))
        {
          return v19;
        }

        v74 = _os_log_pack_size();
        v28 = &v81 - ((MEMORY[0x1EEE9AC00](v74, v75, v76, v77, v78, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
        v80 = *__error();
        v30 = _os_log_pack_fill(v28, v74, v80, &dword_1AD2AD000, "%smach_port_get_attributes(..., 0x%x, MACH_PORT_RECEIVE_STATUS): %s");
        goto LABEL_4;
      }
    }

    if (a6)
    {
      if ((*(ptype + 2) & 4) != 0)
      {
        v42 = MEMORY[0x1B26F4DE0](*v17, name, 2, a6);
        if (v42)
        {
          v19 = v42;
          v20 = _SC_LOG_DEFAULT();
          v21 = _SC_syslog_os_log_mapping(7);
          if (!__SC_log_enabled(7, v20, v21))
          {
            return v19;
          }

          v43 = _os_log_pack_size();
          v28 = &v81 - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
          v49 = *__error();
          v30 = _os_log_pack_fill(v28, v43, v49, &dword_1AD2AD000, "%smach_port_get_refs(..., 0x%x, MACH_PORT_RIGHT_SEND_ONCE): %s");
          goto LABEL_4;
        }
      }
    }

    if (a7)
    {
      if ((*(ptype + 2) & 8) != 0)
      {
        v50 = MEMORY[0x1B26F4DE0](*v17, name, 3, a7);
        if (v50)
        {
          v19 = v50;
          v20 = _SC_LOG_DEFAULT();
          v21 = _SC_syslog_os_log_mapping(7);
          if (!__SC_log_enabled(7, v20, v21))
          {
            return v19;
          }

          v51 = _os_log_pack_size();
          v28 = &v81 - ((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
          v57 = *__error();
          v30 = _os_log_pack_fill(v28, v51, v57, &dword_1AD2AD000, "%smach_port_get_refs(..., 0x%x, MACH_PORT_RIGHT_PORT_SET): %s");
          goto LABEL_4;
        }
      }
    }

    if (!a8 || (*(ptype + 2) & 0x10) == 0)
    {
      return 0;
    }

    v19 = MEMORY[0x1B26F4DE0](*v17, name, 4, a8);
    if (v19)
    {
      v20 = _SC_LOG_DEFAULT();
      v21 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v20, v21))
      {
        v66 = _os_log_pack_size();
        v28 = &v81 - ((MEMORY[0x1EEE9AC00](v66, v67, v68, v69, v70, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
        v72 = *__error();
        v30 = _os_log_pack_fill(v28, v66, v72, &dword_1AD2AD000, "%smach_port_get_refs(..., 0x%x, MACH_PORT_RIGHT_DEAD_NAME): %s");
        goto LABEL_4;
      }
    }
  }

  return v19;
}

BOOL _SC_checkMachPortSend(uint64_t a1, uint64_t name)
{
  v7 = *MEMORY[0x1E69E9840];
  ptype = 0;
  v5 = 0;
  v4 = 0;
  MachPortReferences = _SC_getMachPortReferences(name, &ptype, &v5, 0, 0, &v4 + 4, 0, &v4, a1);
  result = 0;
  if (!MachPortReferences)
  {
    return (v5 | HIDWORD(v4) | v4) != 0;
  }

  return result;
}

void _SC_logMachPortReferences(uint64_t a1, uint64_t name)
{
  v27 = *MEMORY[0x1E69E9840];
  ptype[0] = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  LOBYTE(ptype[1]) = 0;
  if (a1)
  {
    __strlcpy_chk();
    __strlcat_chk();
    if (!(v25 ^ 0x2020 | v26))
    {
      LOBYTE(v25) = 58;
    }
  }

  if (!_SC_getMachPortReferences(name, ptype, &v20 + 4, &v20, &v21, &v19 + 4, &v19, &v18, &ptype[1]))
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v16 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "%smach port 0x%x (%u): send=%u, receive=%u, send once=%u, port set=%u, dead name=%u%s%s", v16, v17, v19, v20, v21, DWORD2(v21), v22, DWORD2(v22), v23, *ptype);
      if (v23)
      {
        v14 = ", no more senders";
      }

      else
      {
        v14 = "";
      }

      if ((ptype[0] & 0x100000) != 0)
      {
        v15 = ", dead name request";
      }

      else
      {
        v15 = "";
      }

      __os_log_helper_1_2_10_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_8_32_8_32(v13, &ptype[1], name, name, SHIDWORD(v20), v20, SHIDWORD(v19), v19, v18, v14, v15);
      __SC_log_send(7, v3, v4, v11);
    }
  }
}

double __os_log_helper_1_2_10_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_8_32_8_32(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  *&result = 136317442;
  *a1 = 136317442;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  *(a1 + 36) = 1024;
  *(a1 + 38) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a9;
  *(a1 + 54) = 2080;
  *(a1 + 56) = a10;
  *(a1 + 64) = 2080;
  *(a1 + 66) = a11;
  return result;
}

__CFString *_SC_copyBacktrace()
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v0 = backtrace(v22, 64);
  if (v0 == -1)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = v22 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "backtrace() failed: %s", *&v22[0]);
      v19 = __error();
      v20 = strerror(*v19);
      *v18 = 136315138;
      *(v18 + 4) = v20;
      __SC_log_send(5, v8, v9, v16);
    }

    return 0;
  }

  else
  {
    v1 = v0;
    Mutable = CFStringCreateMutable(0, 0);
    v3 = backtrace_symbols(v22, v1);
    if (v3)
    {
      v4 = v3;
      if (v1 >= 1)
      {
        v5 = v1;
        v6 = v3;
        do
        {
          v7 = *v6++;
          CFStringAppendFormat(Mutable, 0, @"%s\n", v7);
          --v5;
        }

        while (v5);
      }

      free(v4);
    }
  }

  return Mutable;
}

BOOL _SC_getconninfo(int a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (a2)
  {
    a2[6] = 0uLL;
    a2[7] = 0uLL;
    a2[4] = 0uLL;
    a2[5] = 0uLL;
    a2[2] = 0uLL;
    a2[3] = 0uLL;
    *a2 = 0uLL;
    a2[1] = 0uLL;
    *&v22 = a2;
    DWORD2(v22) = 128;
  }

  if (a3)
  {
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    *a3 = 0uLL;
    a3[1] = 0uLL;
    *&v23 = a3;
    DWORD2(v23) = 128;
  }

  if (ioctl(a1, 0xC0407398uLL))
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v7, v8);
    if (result)
    {
      v10 = _os_log_pack_size();
      v16 = &v21 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "SIOCGCONNINFO failed: %s", v21);
      v19 = __error();
      v20 = strerror(*v19);
      *v18 = 136315138;
      *(v18 + 4) = v20;
      __SC_log_send(5, v7, v8, v16);
      return 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = DWORD2(v21);
    }

    if (a5)
    {
      *a5 = DWORD1(v21);
    }

    return 1;
  }

  return result;
}

CFStringRef _SC_copyInterfaceUUID(const __CFString *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  v4[0] = 0;
  v4[1] = 0;
  _SC_cfstring_to_cstring_ext(a1, v4, 16, 0x8000100u, 0, 0);
  *md = 0u;
  v7 = 0u;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v4, 0x10u);
  CC_SHA256_Final(md, &c);
  v1 = CFUUIDCreateFromUUIDBytes(0, *md);
  v2 = CFUUIDCreateString(0, v1);
  CFRelease(v1);
  return v2;
}

uint64_t SC_create_file_safely(char *a1, int a2, const char *a3, __n128 a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = -1;
  }

  v6 = 5;
  a4.n128_u64[0] = 136315138;
  v52 = a4;
  v50 = a3;
  a4.n128_u64[0] = 136315394;
  v51 = a4;
  while (1)
  {
    if (unlink(a1))
    {
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v8, v9))
      {
        v10 = _os_log_pack_size();
        v16 = &v49 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "unlink(%s) failed: %s", v49, v50);
        v19 = __error();
        v20 = strerror(*v19);
        *v18 = v51.n128_u32[0];
        *(v18 + 4) = a1;
        *(v18 + 12) = 2080;
        *(v18 + 14) = v20;
        __SC_log_send(7, v8, v9, v16);
      }
    }

    v21 = v5 == -1 ? open(a1, 1793, v50) : open_dprotected_np(a1, 1793, v5, 0, a3);
    v22 = v21;
    if ((v21 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      v23 = _SC_LOG_DEFAULT();
      v24 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v23, v24))
      {
        v25 = _os_log_pack_size();
        v31 = &v49 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v32 = __error();
        v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "open(%s) failed with ELOOP", v49);
        *v33 = v52.n128_u32[0];
        *(v33 + 4) = a1;
        __SC_log_send(7, v23, v24, v31);
      }

      if (--v6)
      {
        continue;
      }
    }

    if (v22 == -1)
    {
      v34 = __error();
      _SCErrorSet(*v34);
      v35 = _SC_LOG_DEFAULT();
      v36 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v35, v36))
      {
        v37 = _os_log_pack_size();
        v43 = &v49 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = __error();
        v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "open(%s) failed: %s", v49, v50);
        v46 = __error();
        v47 = strerror(*v46);
        *v45 = v51.n128_u32[0];
        *(v45 + 4) = a1;
        *(v45 + 12) = 2080;
        *(v45 + 14) = v47;
        __SC_log_send(5, v35, v36, v43);
      }
    }

    return v22;
  }

  return v22;
}

void _SCDPluginExecInit()
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *byte_1F2255718;
  childReaped = CFMachPortCreate(0, childrenReaped, &v4, 0);
  LODWORD(v5.__sigaction_u.__sa_handler) = 1;
  v0 = *MEMORY[0x1E69E9A60];
  Port = CFMachPortGetPort(childReaped);
  if (MEMORY[0x1B26F4E30](v0, Port, 1, &v5, 1))
  {
    perror("mach_port_set_attributes");
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(0, childReaped, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x1E695E8E0]);
  CFRelease(RunLoopSource);
  v5.__sigaction_u.__sa_handler = reaper;
  *&v5.sa_mask = 0xA00000000;
  if (sigaction(20, &v5, 0) == -1)
  {
    perror("sigaction");
  }
}

CFStringRef childReapedMPCopyDescription()
{

  return CFStringCreateWithFormat(0, 0, @"<SIGCHLD MP>");
}

void childrenReaped()
{
  v17 = *MEMORY[0x1E69E9840];
  if (initializeLock_initialized != -1)
  {
    childrenReaped_cold_1();
  }

  v0 = 0;
  do
  {
    memset(&v16, 0, sizeof(v16));
    v15 = 0;
    v1 = wait4(-1, &v15, 1, &v16);
    if (!v1)
    {
      break;
    }

    v2 = v1;
    if (v1 == -1)
    {
      if (*__error() != 10)
      {
        perror("wait4");
      }

      break;
    }

    pthread_mutex_lock(&lock_0);
    v3 = activeChildren;
    if (activeChildren)
    {
      if (*activeChildren == v2)
      {
        v4 = 0;
LABEL_12:
        *(v3 + 24) = v15;
        ru_stime = v16.ru_stime;
        *(v3 + 32) = v16.ru_utime;
        v8 = *&v16.ru_idrss;
        v7 = *&v16.ru_minflt;
        v9 = *&v16.ru_maxrss;
        *(v3 + 48) = ru_stime;
        *(v3 + 64) = v9;
        v10 = *&v16.ru_nvcsw;
        v12 = *&v16.ru_oublock;
        v11 = *&v16.ru_msgrcv;
        *(v3 + 112) = *&v16.ru_nswap;
        *(v3 + 128) = v12;
        *(v3 + 144) = v11;
        *(v3 + 160) = v10;
        *(v3 + 80) = v8;
        *(v3 + 96) = v7;
        if (v4)
        {
          v13 = (v4 + 176);
        }

        else
        {
          v13 = &activeChildren;
        }

        *v13 = *(v3 + 176);
        *(v3 + 176) = v0;
        v0 = v3;
      }

      else
      {
        v5 = activeChildren;
        while (1)
        {
          v3 = *(v5 + 176);
          if (!v3)
          {
            break;
          }

          v4 = v5;
          v5 = *(v5 + 176);
          if (*v3 == v2)
          {
            goto LABEL_12;
          }
        }
      }
    }

    pthread_mutex_unlock(&lock_0);
  }

  while (v2 > 0);
  LODWORD(v16.ru_utime.tv_sec) = 0x80000;
  if (sigprocmask(2, &v16, 0) == -1)
  {
    perror("sigprocmask(SIG_UNBLOCK)");
    if (!v0)
    {
      return;
    }
  }

  else if (!v0)
  {
    return;
  }

  do
  {
    v14 = *(v0 + 22);
    (*(v0 + 1))(*v0, v0[6], v0 + 8, *(v0 + 2));
    CFAllocatorDeallocate(0, v0);
    v0 = v14;
  }

  while (v14);
}

void reaper()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0x80000;
  if (sigprocmask(1, &v1, 0) == -1)
  {
    perror("sigprocmask(SIG_BLOCK)");
  }

  Port = CFMachPortGetPort(childReaped);
  _SC_sendMachMessage(Port, 0);
}

uint64_t _SCDPluginSpawnCommand(uint64_t a1, uint64_t a2, const char *a3, char *const *a4, void (*a5)(posix_spawn_file_actions_t *, posix_spawnattr_t *, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v12 = *_NSGetEnviron();
  v17 = 0;
  if (initializeLock_initialized != -1)
  {
    childrenReaped_cold_1();
  }

  pthread_mutex_lock(&lock_0);
  if (!childReaped)
  {
    _SCDPluginExecInit();
  }

  posix_spawnattr_init(&v18);
  posix_spawn_file_actions_init(&v19);
  posix_spawnattr_setflags(&v18, 0x4000);
  if (a5)
  {
    a5(&v19, &v18, a6);
  }

  else
  {
    posix_spawn_file_actions_addopen(&v19, 0, "/dev/null", 2, 0);
    posix_spawn_file_actions_adddup2(&v19, 0, 1);
    posix_spawn_file_actions_adddup2(&v19, 0, 2);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = a3;
    _os_log_impl(&dword_1AD2AD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "spawn: %s", buf, 0xCu);
  }

  v13 = posix_spawn(&v17, a3, &v19, &v18, a4, v12);
  posix_spawnattr_destroy(&v18);
  posix_spawn_file_actions_destroy(&v19);
  if (v13 || !v17)
  {
    v15 = *__error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _SCDPluginSpawnCommand_cold_2(v15);
    }

    *__error() = v15;
    v17 = -1;
  }

  else if (a1)
  {
    v14 = MEMORY[0x1B26F3AA0](0, 184, 0x10A00405301709ALL, 0);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 176) = 0;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *v14 = v17;
    *(v14 + 8) = a1;
    *(v14 + 16) = a2;
    *(v14 + 176) = activeChildren;
    activeChildren = v14;
  }

  pthread_mutex_unlock(&lock_0);
  return v17;
}

uint64_t _SCDPluginExecCommand2(uint64_t a1, uint64_t a2, uid_t a3, gid_t a4, const char *a5, char *const *a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v36 = *MEMORY[0x1E69E9840];
  v16 = getegid();
  v17 = geteuid();
  v31 = 0;
  if (!a7 && v17 == a3 && v16 == a4)
  {

    return _SCDPluginSpawnCommand(a1, a2, a5, a6, 0, 0);
  }

  else
  {
    if (initializeLock_initialized != -1)
    {
      childrenReaped_cold_1();
    }

    memset(&v32, 0, sizeof(v32));
    pthread_mutex_lock(&lock_0);
    pw_name = 0;
    if (!getpwuid_r(a3, &v32, v35, 0x400uLL, &v31) && v31)
    {
      pw_name = v31->pw_name;
    }

    if (!childReaped)
    {
      _SCDPluginExecInit();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v34 = a5;
      _os_log_impl(&dword_1AD2AD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "fork/exec: %s", buf, 0xCu);
    }

    v20 = fork();
    v21 = v20;
    if (v20 == -1)
    {
      v23 = *__error();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _SCDPluginExecCommand2_cold_3(v23);
      }

      *__error() = v23;
    }

    else
    {
      if (!v20)
      {
        if (a7)
        {
          a7(0, a8);
        }

        else
        {
          v24 = getdtablesize();
          if (v24 >= 1)
          {
            v25 = v24 + 1;
            do
            {
              close(v25 - 2);
              --v25;
            }

            while (v25 > 1);
          }

          v26 = open("/dev/null", 2, 0);
          if (v26 != -1)
          {
            v27 = v26;
            dup2(v26, 0);
            dup2(v27, 1);
            dup2(v27, 2);
            if (v27 >= 3)
            {
              close(v27);
            }
          }
        }

        v28 = getegid();
        v29 = geteuid();
        if (v28 != a4)
        {
          setgid(a4);
        }

        if (v29 == a3)
        {
          if (v28 != a4 && pw_name)
          {
            initgroups(pw_name, a4);
          }
        }

        else
        {
          if (pw_name)
          {
            initgroups(pw_name, a4);
          }

          setuid(a3);
        }

        if (setenv("PATH", "/bin:/sbin:/usr/bin:/usr/sbin", 0) == -1)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _SCDPluginExecCommand2_cold_2();
          }

          exit(71);
        }

        execv(a5, a6);
        v30 = __error();
        _exit(*v30);
      }

      if (a7)
      {
        a7(v20, a8);
      }

      if (a1)
      {
        v22 = MEMORY[0x1B26F3AA0](0, 184, 0x10A00405301709ALL, 0);
        *v22 = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0u;
        *(v22 + 80) = 0u;
        *(v22 + 96) = 0u;
        *(v22 + 112) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 160) = 0u;
        *v22 = v21;
        *(v22 + 8) = a1;
        *(v22 + 16) = a2;
        *(v22 + 176) = activeChildren;
        activeChildren = v22;
      }
    }

    pthread_mutex_unlock(&lock_0);
    return v21;
  }
}

uint64_t _SCDPluginExecCommand(uint64_t a1, uint64_t a2, uid_t a3, gid_t a4, const char *a5, char *const *a6)
{

  return _SCDPluginExecCommand2(a1, a2, a3, a4, a5, a6, 0, 0);
}

uint64_t __initializeLock_block_invoke()
{

  return pthread_mutex_init(&lock_0, 0);
}

uint64_t _SCDynamicStoreSetSessionWatchLimit(uint64_t result)
{
  _sc_store_max = result;
  _sc_store_advise = result;
  return result;
}

uint64_t __SCDynamicStoreReconnectNotifications(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 5)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      dispatch_retain(*(a1 + 136));
    }

    Copy = 0;
  }

  else
  {
    if (v2 == 4 && (v3 = *(a1 + 56)) != 0)
    {
      Copy = CFArrayCreateCopy(0, v3);
    }

    else
    {
      Copy = 0;
    }

    v5 = 0;
  }

  if (!SCDynamicStoreNotifyCancel(a1))
  {
    v6 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v84 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCDynamicStoreNotifyCancel() failed: %s", v84);
      v17 = SCError();
      v18 = SCErrorString(v17);
      *v16 = 136315138;
      *(v16 + 4) = v18;
      __SC_log_send(5, v6, v7, v14);
    }
  }

  if (*(a1 + 168) == 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = SCDynamicStoreSetNotificationKeys(a1, *(a1 + 168), *(a1 + 176));
    if (!v19)
    {
      v41 = SCError();
      if (v41 != 1102)
      {
        v42 = v41;
        v43 = __log_SCDynamicStore_log;
        if (!__log_SCDynamicStore_log)
        {
          v43 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          __log_SCDynamicStore_log = v43;
        }

        v44 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v43, v44))
        {
          v45 = _os_log_pack_size();
          v51 = &v84 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = __error();
          v53 = _os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "SCDynamicStoreSetNotificationKeys() failed: %s", v84);
          v54 = SCErrorString(v42);
          *v53 = 136315138;
          *(v53 + 4) = v54;
          __SC_log_send(5, v43, v44, v51);
        }
      }

      goto LABEL_39;
    }
  }

  if (v2 == 5)
  {
    v19 = SCDynamicStoreSetDispatchQueue(a1, v5);
    if (!v19)
    {
      v27 = SCError();
      if (v27 != 1102)
      {
        v28 = v27;
        v29 = __log_SCDynamicStore_log;
        if (!__log_SCDynamicStore_log)
        {
          v29 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          __log_SCDynamicStore_log = v29;
        }

        v30 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v29, v30))
        {
          v31 = _os_log_pack_size();
          v37 = &v84 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
          v38 = __error();
          v39 = _os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "SCDynamicStoreSetDispatchQueue() failed: %s", v84);
          v40 = SCErrorString(v28);
          *v39 = 136315138;
          *(v39 + 4) = v40;
          __SC_log_send(5, v29, v30, v37);
        }
      }

      v19 = 0;
    }

LABEL_44:
    if (v5)
    {
      dispatch_release(v5);
    }

    goto LABEL_53;
  }

  if (v2 != 4)
  {
    _SCErrorSet(1001);
LABEL_39:
    v19 = 0;
    goto LABEL_40;
  }

  RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, a1, 0);
  if (RunLoopSource)
  {
    v21 = RunLoopSource;
    if (Copy)
    {
      Count = CFArrayGetCount(Copy);
      if (Count >= 1)
      {
        v23 = Count;
        for (i = 0; i < v23; i += 3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, i + 1);
          v26 = CFArrayGetValueAtIndex(Copy, i + 2);
          CFRunLoopAddSource(ValueAtIndex, v21, v26);
        }
      }
    }

    CFRelease(v21);
LABEL_40:
    if (v2 != 5)
    {
      if (v2 != 4 || !Copy)
      {
        goto LABEL_53;
      }

LABEL_52:
      CFRelease(Copy);
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v55 = SCError();
  if (v55 != 1102)
  {
    v56 = v55;
    v57 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v57 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v57;
    }

    v58 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v57, v58))
    {
      v59 = _os_log_pack_size();
      v65 = &v84 - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
      v66 = __error();
      v67 = _os_log_pack_fill(v65, v59, *v66, &dword_1AD2AD000, "SCDynamicStoreCreateRunLoopSource() failed: %s", v84);
      v68 = SCErrorString(v56);
      *v67 = 136315138;
      *(v67 + 4) = v68;
      __SC_log_send(5, v57, v58, v65);
    }
  }

  v19 = 0;
  if (Copy)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (!v19)
  {
    v69 = SCError();
    v70 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v70 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v70;
    }

    v71 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v70, v71))
    {
      v72 = _os_log_pack_size();
      v78 = &v84 - ((MEMORY[0x1EEE9AC00](v72, v73, v74, v75, v76, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
      v79 = __error();
      v80 = _os_log_pack_fill(v78, v72, *v79, &dword_1AD2AD000, "SCDynamicStore server %s, notification (%s) not restored", v84, v85);
      v81 = "failed";
      v82 = *(&notifyType + v2);
      if (v69 == 1102)
      {
        v81 = "shutdown";
      }

      *v80 = 136315394;
      *(v80 + 4) = v81;
      *(v80 + 12) = 2080;
      *(v80 + 14) = v82;
      __SC_log_send(5, v70, v71, v78);
    }
  }

  pushDisconnect(a1);
  return v19;
}

uint64_t pushDisconnect(uint64_t result)
{
  v1 = result;
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 152);
  if (v2)
  {
    v4 = *(result + 88);
    v3 = *(result + 96);
    if (v3)
    {
      v4 = v3(*(result + 88));
      v5 = *(v1 + 104);
    }

    else
    {
      v5 = 0;
    }

    v6 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v16 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      *_os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "exec SCDynamicStore disconnect callout") = 0;
      __SC_log_send(7, v6, v7, v14);
    }

    result = v2(v1, v4);
    if (v5)
    {
      return v5(v4);
    }
  }

  else
  {
    *(result + 160) = 1;
  }

  return result;
}

uint64_t SCDynamicStoreSetDisconnectCallBack(void *cf, uint64_t a2)
{
  if (__SCDynamicStoreInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCDynamicStoreCreateInternal_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v4 = __kSCDynamicStoreTypeID;
  if (CFGetTypeID(cf) == v4)
  {
    cf[19] = a2;
    return 1;
  }

LABEL_6:
  _SCErrorSet(2001);
  return 0;
}

void addSessionReference(uint64_t a1, const __CFDictionary *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2)
  {
    valuePtr = 0;
    value = 0;
    MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
    v6 = *(a1 + 168);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), 0);
        CFStringAppendFormat(MutableCopy, 0, @":k[0/%ld]=%@", v8, ValueAtIndex);
      }
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      v11 = CFArrayGetCount(v10);
      if (v11 >= 1)
      {
        v12 = v11;
        v13 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
        CFStringAppendFormat(MutableCopy, 0, @":p[0/%ld]=%@", v12, v13);
      }
    }

    if (CFDictionaryGetValueIfPresent(a2, MutableCopy, &value) && CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
    {
      v14 = valuePtr + 1;
    }

    else
    {
      v14 = 1;
    }

    valuePtr = v14;
    value = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, MutableCopy, value);
    CFRelease(value);
    CFRelease(MutableCopy);
  }
}

void logSessionReference(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCDynamicStore_log;
  if (!__log_SCDynamicStore_log)
  {
    v4 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
    __log_SCDynamicStore_log = v4;
  }

  v5 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = v15 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "  %@ sessions w/name = %@");
    *v14 = 138412546;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2112;
    *(v14 + 14) = a1;
    __SC_log_send(3, v4, v5, v12);
  }
}

BOOL get_sysctl_val(const char *a1, _DWORD *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 4;
  if (sysctlbyname(a1, &v32, &v31, 0, 0))
  {
    v4 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v4;
    }

    v5 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v4, v5);
    if (result)
    {
      v7 = _os_log_pack_size();
      v13 = &v30 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "sysctl %s failed, %s", v30, v31);
      v16 = __error();
      v17 = strerror(*v16);
      *v15 = 136315394;
      *(v15 + 4) = a1;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
      __SC_log_send(5, v4, v5, v13);
      return 0;
    }
  }

  else
  {
    *a2 = v32;
    v18 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v18 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v18;
    }

    v19 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v18, v19))
    {
      v20 = _os_log_pack_size();
      v26 = &v30 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "sysctl %s %d", v30, v31);
      v29 = v32;
      *v28 = 136315394;
      *(v28 + 4) = a1;
      *(v28 + 12) = 1024;
      *(v28 + 14) = v29;
      __SC_log_send(6, v18, v19, v26);
    }

    return 1;
  }

  return result;
}

__CFString *__SCDynamicStoreCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCDynamicStore %p [%p]> {", a1, v2);
  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @"server port = 0x%x", *(a1 + 40));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"server not (no longer) available", v7);
  }

  if (*(a1 + 152))
  {
    CFStringAppendFormat(Mutable, 0, @", disconnect = %p", *(a1 + 152));
  }

  v4 = *(a1 + 48);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      CFStringAppendFormat(Mutable, 0, @", waiting for a notification", v8);
      goto LABEL_22;
    }

    if (v4 == 2)
    {
      CFStringAppendFormat(Mutable, 0, @", mach port notifications", v8);
      goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        CFStringAppendFormat(Mutable, 0, @", FD notifications", v8);
        goto LABEL_22;
      case 4:
        CFStringAppendFormat(Mutable, 0, @", runloop notifications");
        CFStringAppendFormat(Mutable, 0, @" {callout = %p", *(a1 + 72));
        CFStringAppendFormat(Mutable, 0, @", info = %p", *(a1 + 88));
        CFStringAppendFormat(Mutable, 0, @", rls = %p", *(a1 + 64));
        CFStringAppendFormat(Mutable, 0, @", notify rls = %@", *(a1 + 128));
        goto LABEL_16;
      case 5:
        CFStringAppendFormat(Mutable, 0, @", dispatch notifications");
        CFStringAppendFormat(Mutable, 0, @" {callout = %p", *(a1 + 72));
        CFStringAppendFormat(Mutable, 0, @", info = %p", *(a1 + 88));
        CFStringAppendFormat(Mutable, 0, @", queue = %p", *(a1 + 136));
        CFStringAppendFormat(Mutable, 0, @", source = %p", *(a1 + 144));
LABEL_16:
        CFStringAppendFormat(Mutable, 0, @"}", v9);
        goto LABEL_22;
    }
  }

  if (*(a1 + 72))
  {
    v5 = " (yet)";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @", notification delivery not requested%s", v5);
LABEL_22:
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

CFArrayRef SCDynamicStoreCopyKeyList(SCDynamicStoreRef store, CFStringRef pattern)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = store;
  v11 = 0;
  cf = 0;
  bytes = 0;
  v10 = 0;
  v7 = 0;
  length = 0;
  if (!__SCDynamicStoreNormalize(v13, 1))
  {
    return 0;
  }

  if (_SCSerializeString(pattern, &cf, &v11, &v10))
  {
    v3 = v13[0];
    do
    {
      v4 = configlist(*(v3 + 40), v11, v10, 1u, &bytes, &length + 1, &length);
    }

    while (__SCDynamicStoreCheckRetryAndHandleError(v13[0], v4, &length, "SCDynamicStoreCopyKeyList configlist()"));
    CFRelease(cf);
    v5 = length;
    if (length)
    {
      if (bytes)
      {
        MEMORY[0x1B26F57E0](*MEMORY[0x1E69E9A60], bytes, HIDWORD(length));
        v5 = length;
      }

      goto LABEL_11;
    }

    if (_SCUnserialize(&v7, 0, bytes, HIDWORD(length)))
    {
      return v7;
    }
  }

  v5 = 1001;
LABEL_11:
  _SCErrorSet(v5);
  return 0;
}

Boolean SCDynamicStoreAddTemporaryValue(SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = store;
  v15 = 0;
  cf = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (!__SCDynamicStoreNormalize(v17, 0))
  {
    return 0;
  }

  if (!_SCSerializeString(key, &cf, &v15, &v14))
  {
    goto LABEL_8;
  }

  if (!_SCSerialize(value, &v13, &v12, &v11))
  {
    CFRelease(cf);
LABEL_8:
    v8 = 1001;
LABEL_9:
    _SCErrorSet(v8);
    return 0;
  }

  do
  {
    v6 = configadd_s(*(store + 10), v15, v14, v12, v11, &v10 + 1, &v10);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v17[0], v6, &v10, "SCDynamicStoreAddTemporaryValue configadd_s()"));
  CFRelease(cf);
  CFRelease(v13);
  v7 = 1;
  v8 = __SCDynamicStoreMapInternalStatus(v10, 1);
  LODWORD(v10) = v8;
  if (v8)
  {
    goto LABEL_9;
  }

  return v7;
}

Boolean SCDynamicStoreAddValue(SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17[0] = store;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  cf = 0;
  v10 = 0;
  v11 = 0;
  if (!__SCDynamicStoreNormalize(v17, 1))
  {
    return 0;
  }

  if (!_SCSerializeString(key, &v16, &v15, &v14))
  {
    goto LABEL_9;
  }

  if (!_SCSerialize(value, &cf, &v12, &v11))
  {
    CFRelease(v16);
LABEL_9:
    v8 = 1001;
LABEL_10:
    _SCErrorSet(v8);
    return 0;
  }

  v5 = v17[0];
  do
  {
    v6 = configadd(*(v5 + 40), v15, v14, v12, v11, &v10 + 1, &v10);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v17[0], v6, &v10, "SCDynamicStoreAddValue configadd()"));
  CFRelease(v16);
  CFRelease(cf);
  v7 = 1;
  v8 = __SCDynamicStoreMapInternalStatus(v10, 1);
  LODWORD(v10) = v8;
  if (v8)
  {
    goto LABEL_10;
  }

  return v7;
}

Boolean SCDynamicStoreNotifyValue(SCDynamicStoreRef store, CFStringRef key)
{
  v13[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v13[0] = store;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if (!__SCDynamicStoreNormalize(v13, 1))
  {
    return 0;
  }

  v3 = v13[0];
  if (!*(v13[0] + 200))
  {
    if (_SCSerializeString(key, &cf, &v11, &v10))
    {
      do
      {
        v6 = confignotify(*(v3 + 40), v11, v10, &v9);
      }

      while (__SCDynamicStoreCheckRetryAndHandleError(v13[0], v6, &v9, "SCDynamicStoreNotifyValue confignotify()"));
      CFRelease(cf);
      v5 = 1;
      v7 = __SCDynamicStoreMapInternalStatus(v9, 1);
      v9 = v7;
      if (!v7)
      {
        return v5;
      }
    }

    else
    {
      v7 = 1001;
    }

    _SCErrorSet(v7);
    return 0;
  }

  Mutable = *(v13[0] + 232);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(v3 + 232) = Mutable;
  }

  v14.length = CFArrayGetCount(Mutable);
  v14.location = 0;
  if (!CFArrayContainsValue(Mutable, v14, key))
  {
    CFArrayAppendValue(*(v3 + 232), key);
  }

  return 1;
}

uint64_t SCDynamicStoreAddWatchedKey(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v14[0] = a1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = __SCDynamicStoreNormalize(v14, 0);
  if (!result)
  {
    return result;
  }

  if (!_SCSerializeString(a2, &cf, &v12, &v11))
  {
    v8 = 1001;
LABEL_8:
    _SCErrorSet(v8);
    return 0;
  }

  do
  {
    v7 = notifyadd(*(a1 + 40), v12, v11, v3, &v10);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v14[0], v7, &v10, "SCDynamicStoreAddWatchedKey notifyadd()"));
  CFRelease(cf);
  v8 = v10;
  if (v10)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v9 = (a1 + 176);
  }

  else
  {
    v9 = (a1 + 168);
  }

  addKey(v9, a2);
  return 1;
}

void addKey(__CFArray **a1, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

uint64_t SCDynamicStoreRemoveWatchedKey(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v14[0] = a1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = __SCDynamicStoreNormalize(v14, 0);
  if (!result)
  {
    return result;
  }

  if (!_SCSerializeString(a2, &cf, &v12, &v11))
  {
    v8 = 1001;
LABEL_8:
    _SCErrorSet(v8);
    return 0;
  }

  do
  {
    v7 = notifyremove(*(a1 + 40), v12, v11, v3, &v10);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v14[0], v7, &v10, "SCDynamicStoreRemoveWatchedKey notifyremove()"));
  CFRelease(cf);
  v8 = v10;
  if (v10)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v9 = *(a1 + 176);
  }

  else
  {
    v9 = *(a1 + 168);
  }

  removeKey(v9, a2);
  return 1;
}

void removeKey(const __CFArray *a1, const void *a2)
{
  if (a1)
  {
    v6.length = CFArrayGetCount(a1);
    v6.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

uint64_t SCDynamicStoreNotifyWait(mach_port_context_t a1)
{
  guard[1] = *MEMORY[0x1E69E9840];
  guard[0] = a1;
  v8 = 0;
  result = __SCDynamicStoreNormalize(guard, 0);
  if (result)
  {
    if (*(a1 + 48))
    {
      v4 = 2003;
      goto LABEL_4;
    }

    result = __SCDynamicStoreAddNotificationPort(guard[0], v3);
    if (result)
    {
      v5 = result;
      *(a1 + 48) = 1;
      v6 = waitForMachMessage(result);
      *(a1 + 48) = 0;
      if (v6 != 70)
      {
        if (v6 != -1)
        {
          v7 = notifycancel(*(a1 + 40), &v8);
          if (__SCDynamicStoreCheckRetryAndHandleError(guard[0], v7, &v8, "SCDynamicStoreNotifyWait notifycancel()"))
          {
            v8 = 0;
          }

          __SCDynamicStoreRemoveNotificationPort(guard[0], v5);
          v4 = v8;
          if (!v8)
          {
            return 1;
          }

          goto LABEL_4;
        }

        mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 1u, -1);
      }

      v4 = 2002;
LABEL_4:
      _SCErrorSet(v4);
      return 0;
    }
  }

  return result;
}

uint64_t waitForMachMessage(mach_port_name_t rcv_name)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(msg, 0, sizeof(msg));
  v1 = mach_msg(msg, 2, 0, 0x64u, rcv_name, 0, 0);
  if (!v1)
  {
    return *&msg[20];
  }

  v2 = v1;
  v3 = __log_SCDynamicStore();
  v4 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v4))
  {
    v5 = _os_log_pack_size();
    v11 = &msg[-((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "mach_msg() failed: %s", *msg);
    v14 = mach_error_string(v2);
    *v13 = 136315138;
    *(v13 + 4) = v14;
    __SC_log_send(5, v3, v4, v11);
  }

  return 0xFFFFFFFFLL;
}

uint64_t __SCDynamicStoreRemoveNotificationPort(mach_port_context_t guard, mach_port_name_t a2)
{
  v3 = *MEMORY[0x1E69E9A60];

  return mach_port_destruct(v3, a2, 0, guard);
}

__CFString *rlsCopyDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCDynamicStore RLS> {");
  CFStringAppendFormat(Mutable, 0, @"store = %p", a1);
  if (*(a1 + 48) == 4)
  {
    CFStringAppendFormat(Mutable, 0, @", callout = %p", *(a1 + 72));
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = *(a1 + 112);
      if (v4)
      {
        v5 = v4();
        if (v5)
        {
LABEL_8:
          v6 = v5;
          CFStringAppendFormat(Mutable, 0, @", context = %@", v5);
          CFRelease(v6);
          goto LABEL_9;
        }

        v3 = *(a1 + 88);
      }
    }

    v5 = CFStringCreateWithFormat(0, 0, @"<SCDynamicStore context %p>", v3);
    if (!v5)
    {
      v5 = CFRetain(@"<no description>");
    }

    goto LABEL_8;
  }

LABEL_9:
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

void rlsCancel(mach_port_context_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 128) && _SC_unschedule(a1, a2, a3, *(a1 + 56), 0))
  {
    if (CFArrayGetCount(*(a1 + 56)))
    {
      if (!_SC_isScheduled(a1, a2, a3, *(a1 + 56)))
      {
        v6 = *(a1 + 128);

        CFRunLoopRemoveSource(a2, v6, a3);
      }

      return;
    }

    CFRunLoopRemoveSource(a2, *(a1 + 128), a3);
  }

  v15 = 0;
  v7 = *(a1 + 120);
  if (v7)
  {
    Port = CFMachPortGetPort(v7);
  }

  else
  {
    Port = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFRunLoopSourceInvalidate(v11);
    CFRelease(*(a1 + 128));
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    CFMachPortInvalidate(v12);
    CFRelease(*(a1 + 120));
    *(a1 + 120) = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = notifycancel(v13, &v15);
    if (__SCDynamicStoreCheckRetryAndHandleError(a1, v14, &v15, "rlsCancel notifycancel()"))
    {
      v15 = 0;
    }
  }

  if (Port)
  {
    mach_port_destruct(*MEMORY[0x1E69E9A60], Port, 0, a1);
  }

  if (!v15)
  {
    *(a1 + 48) = 0;
  }
}

uint64_t SCDynamicStoreNotifyFileDescriptor(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v33 = a1;
  *v34 = -1;
  v32 = 0;
  result = __SCDynamicStoreNormalize(&v33, 0);
  if (result)
  {
    if (*(a1 + 48))
    {
      _SCErrorSet(2003);
      return 0;
    }

    if (pipe(v34) == -1)
    {
      v9 = __error();
      _SCErrorSet(*v9);
      v10 = __log_SCDynamicStore();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
        v12 = _os_log_pack_size();
        v18 = &v32 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = *__error();
        v20 = _os_log_pack_fill(v18, v12, v19, &dword_1AD2AD000, "pipe() failed: %s");
LABEL_13:
        v29 = v20;
        v30 = __error();
        v31 = strerror(*v30);
        *v29 = 136315138;
        *(v29 + 4) = v31;
        __SC_log_send(3, v10, v11, v18);
      }
    }

    else
    {
      HIDWORD(v32) = 0;
      if ((fileport_makeport() & 0x80000000) == 0)
      {
        do
        {
          v7 = notifyviafd(*(a1 + 40), SHIDWORD(v32), v4, &v32);
        }

        while (__SCDynamicStoreCheckRetryAndHandleError(v33, v7, &v32, "SCDynamicStoreNotifyFileDescriptor notifyviafd()"));
        if (v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v32;
          if (!v32)
          {
            close(v34[1]);
            *a3 = v34[0];
            *(a1 + 48) = 3;
            return 1;
          }
        }

        _SCErrorSet(v8);
        goto LABEL_16;
      }

      v21 = __error();
      _SCErrorSet(*v21);
      v10 = __log_SCDynamicStore();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
        v22 = _os_log_pack_size();
        v18 = &v32 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = *__error();
        v20 = _os_log_pack_fill(v18, v22, v28, &dword_1AD2AD000, "fileport_makeport() failed: %s");
        goto LABEL_13;
      }
    }

LABEL_16:
    if (v34[0] != -1)
    {
      close(v34[0]);
    }

    if (v34[1] != -1)
    {
      close(v34[1]);
    }

    return 0;
  }

  return result;
}

_xpc_connection_s *CategoryManagerConnectionCreate(dispatch_queue_t targetq, uint64_t a2)
{
  handler[6] = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.NetworkCategoryManager", targetq, 2uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __CategoryManagerConnectionCreate_block_invoke;
  handler[3] = &unk_1E79BD568;
  handler[4] = a2;
  handler[5] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_activate(mach_service);
  return mach_service;
}

uint64_t __CategoryManagerConnectionCreate_block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  CategoryManagerHandleResponse(a2, 1, &v4);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), v4);
  }

  return result;
}

size_t CategoryManagerHandleResponse(void *a1, int a2, int *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1B26F5920]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    if (a2)
    {
      result = xpc_dictionary_get_count(a1);
      if (!result)
      {
        v45 = 3;
        goto LABEL_31;
      }

      v21 = _SC_LOG_DEFAULT();
      v22 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v21, v22);
      if (result)
      {
        v23 = _os_log_pack_size();
        v29 = &v78 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = __error();
        v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "%s: unexpected message", v78);
        *v31 = 136315138;
        *(v31 + 4) = "CategoryManagerHandleResponse";
        v20 = v21;
        v32 = v22;
        v33 = v29;
LABEL_28:
        __SC_log_send(5, v20, v32, v33);
        v45 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      if (a1 == MEMORY[0x1E69E9E20])
      {
        int64 = 2;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(a1, "Error");
        if (!int64)
        {
          v45 = 0;
          result = 1;
          goto LABEL_31;
        }
      }

      v35 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v35, v9);
      if (result)
      {
        v69 = _os_log_pack_size();
        v17 = &v78 - ((MEMORY[0x1EEE9AC00](v69, v70, v71, v72, v73, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = __error();
        v76 = _os_log_pack_fill(v17, v69, *v75, &dword_1AD2AD000, "%s: failure code %s (%d)", v78, v79, v80);
        v77 = strerror(int64);
        *v76 = 136315650;
        *(v76 + 4) = "CategoryManagerHandleResponse";
        *(v76 + 12) = 2080;
        *(v76 + 14) = v77;
        *(v76 + 22) = 1024;
        *(v76 + 24) = int64;
        goto LABEL_26;
      }
    }

LABEL_30:
    v45 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  if (v6 != MEMORY[0x1E69E9E98])
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v8, v9);
    if (result)
    {
      v11 = _os_log_pack_size();
      v17 = &v78 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "%s: unknown event type : %p", v78, v79);
      *v19 = 136315394;
      *(v19 + 4) = "CategoryManagerHandleResponse";
      *(v19 + 12) = 2048;
      *(v19 + 14) = v7;
      v20 = v8;
LABEL_27:
      v32 = v9;
      v33 = v17;
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (a1 == MEMORY[0x1E69E9E18])
  {
    v46 = _SC_LOG_DEFAULT();
    v47 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v46, v47);
    if (result)
    {
      v48 = _os_log_pack_size();
      v54 = &v78 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = __error();
      v56 = _os_log_pack_fill(v54, v48, *v55, &dword_1AD2AD000, "%s: connection interrupted", v78);
      *v56 = 136315138;
      *(v56 + 4) = "CategoryManagerHandleResponse";
      __SC_log_send(5, v46, v47, v54);
      v45 = 2;
LABEL_29:
      result = 0;
      goto LABEL_31;
    }

    v45 = 2;
  }

  else
  {
    if (a1 != MEMORY[0x1E69E9E20])
    {
      string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
      v35 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v35, v9);
      if (result)
      {
        v36 = _os_log_pack_size();
        v17 = &v78 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __error();
        v43 = _os_log_pack_fill(v17, v36, *v42, &dword_1AD2AD000, "%s: %s", v78, v79);
        *v43 = 136315394;
        *(v43 + 4) = "CategoryManagerHandleResponse";
        *(v43 + 12) = 2080;
        *(v43 + 14) = string;
LABEL_26:
        v20 = v35;
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v57 = _SC_LOG_DEFAULT();
    v58 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v57, v58);
    if (result)
    {
      v59 = _os_log_pack_size();
      v65 = &v78 - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
      v66 = __error();
      v67 = _os_log_pack_fill(v65, v59, *v66, &dword_1AD2AD000, "%s: connection invalid %s", v78, v79);
      v68 = "[async]";
      if (!a2)
      {
        v68 = "";
      }

      *v67 = 136315394;
      *(v67 + 4) = "CategoryManagerHandleResponse";
      *(v67 + 12) = 2080;
      *(v67 + 14) = v68;
      __SC_log_send(5, v57, v58, v65);
      v45 = 1;
      goto LABEL_29;
    }

    v45 = 1;
  }

LABEL_31:
  if (a3)
  {
    *a3 = v45;
  }

  return result;
}

int64_t CategoryManagerConnectionRegister(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = register_request_create(a2, a3, a4);
  v6 = CategoryManagerSendRequest(a1, v5);
  xpc_release(v5);
  if (v6)
  {
    if (v6 == MEMORY[0x1E69E9E20])
    {
      int64 = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v6, "Error");
      if (!int64)
      {
LABEL_11:
        xpc_release(v6);
        return int64;
      }
    }

    v19 = _SC_LOG_DEFAULT();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v27 = &v32 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "%s: failure code %s (%d)", v32, v33, v34);
      v30 = strerror(int64);
      *v29 = 136315650;
      *(v29 + 4) = "CategoryManagerConnectionRegister";
      *(v29 + 12) = 2080;
      *(v29 + 14) = v30;
      *(v29 + 22) = 1024;
      *(v29 + 24) = int64;
      __SC_log_send(5, v19, v20, v27);
    }

    goto LABEL_11;
  }

  v8 = _SC_LOG_DEFAULT();
  v9 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v8, v9))
  {
    v10 = _os_log_pack_size();
    v16 = &v32 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "%s: no reply?", v32);
    *v18 = 136315138;
    *(v18 + 4) = "CategoryManagerConnectionRegister";
    __SC_log_send(5, v8, v9, v16);
  }

  return 22;
}

xpc_object_t register_request_create(const __CFString *a1, const __CFString *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "Type", 1);
  v7 = getprogname();
  if (v7)
  {
    xpc_dictionary_set_string(v6, "ProcessName", v7);
  }

  if (!a1)
  {
    xpc_dictionary_set_string(v6, "Category", 0);
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v8 = _SC_cfstring_to_cstring(a1, 0, 0, 0x8000100u);
  xpc_dictionary_set_string(v6, "Category", v8);
  if (v8)
  {
    CFAllocatorDeallocate(0, v8);
  }

  if (a2)
  {
LABEL_9:
    v9 = _SC_cfstring_to_cstring(a2, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v6, "InterfaceName", v9);
    if (v9)
    {
      CFAllocatorDeallocate(0, v9);
    }
  }

LABEL_11:
  xpc_dictionary_set_int64(v6, "Flags", a3);
  return v6;
}

xpc_object_t CategoryManagerSendRequest(_xpc_connection_s *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  HIDWORD(v18[0]) = 0;
  v4 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (v4)
  {
    v5 = v4;
    while (!CategoryManagerHandleResponse(v5, 0, v18 + 1) && HIDWORD(v18[0]) == 2)
    {
      xpc_release(v5);
      HIDWORD(v18[0]) = 0;
      v5 = xpc_connection_send_message_with_reply_sync(a1, a2);
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v18 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s: failed to send message", v18[0]);
      *v16 = 136315138;
      *(v16 + 4) = "CategoryManagerSendRequest";
      __SC_log_send(5, v6, v7, v14);
    }

    return 0;
  }

  return v5;
}

void CategoryManagerConnectionSynchronize(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, unsigned int a4, const __CFString *a5)
{
  v7 = register_request_create(a2, a3, a4);
  xpc_connection_send_message(a1, v7);
  xpc_release(v7);
  v8 = activate_request_create(a5);
  xpc_connection_send_message(a1, v8);

  xpc_release(v8);
}

xpc_object_t activate_request_create(const __CFString *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "Type", 2);
  if (a1)
  {
    v3 = _SC_cfstring_to_cstring(a1, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v2, "Value", v3);
    if (v3)
    {
      CFAllocatorDeallocate(0, v3);
    }
  }

  return v2;
}

int64_t CategoryManagerConnectionActivateValue(_xpc_connection_s *a1, const __CFString *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = activate_request_create(a2);
  v4 = CategoryManagerSendRequest(a1, v3);
  xpc_release(v3);
  if (v4)
  {
    if (v4 == MEMORY[0x1E69E9E20])
    {
      int64 = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v4, "Error");
      if (!int64)
      {
LABEL_11:
        xpc_release(v4);
        return int64;
      }
    }

    v17 = _SC_LOG_DEFAULT();
    v18 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v17, v18))
    {
      v19 = _os_log_pack_size();
      v25 = &v30 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "%s: failure code %s (%d)", v30, v31, v32);
      v28 = strerror(int64);
      *v27 = 136315650;
      *(v27 + 4) = "CategoryManagerConnectionActivateValue";
      *(v27 + 12) = 2080;
      *(v27 + 14) = v28;
      *(v27 + 22) = 1024;
      *(v27 + 24) = int64;
      __SC_log_send(5, v17, v18, v25);
    }

    goto LABEL_11;
  }

  v6 = _SC_LOG_DEFAULT();
  v7 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v6, v7))
  {
    v8 = _os_log_pack_size();
    v14 = &v30 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s: no reply?", v30);
    *v16 = 136315138;
    *(v16 + 4) = "CategoryManagerConnectionActivateValue";
    __SC_log_send(5, v6, v7, v14);
  }

  return 22;
}

CFStringRef CategoryManagerConnectionCopyActiveValue(_xpc_connection_s *a1, int *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "Type", 3);
  v5 = CategoryManagerSendRequest(a1, v4);
  xpc_release(v4);
  if (!v5)
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v7, v8))
    {
      v9 = _os_log_pack_size();
      v15 = &v33 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "%s: no reply?", v33);
      *v17 = 136315138;
      *(v17 + 4) = "CategoryManagerConnectionCopyActiveValue";
      __SC_log_send(5, v7, v8, v15);
      int64 = 22;
      v18 = 0;
    }

    else
    {
      v18 = 0;
      int64 = 22;
    }

    goto LABEL_14;
  }

  if (v5 == MEMORY[0x1E69E9E20])
  {
    int64 = 2;
LABEL_8:
    v19 = _SC_LOG_DEFAULT();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v27 = &v33 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "%s: failure code %s (%d)", v33, v34, v35);
      v30 = strerror(int64);
      *v29 = 136315650;
      *(v29 + 4) = "CategoryManagerConnectionCopyActiveValue";
      *(v29 + 12) = 2080;
      *(v29 + 14) = v30;
      *(v29 + 22) = 1024;
      *(v29 + 24) = int64;
      __SC_log_send(5, v19, v20, v27);
    }

    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v5, "Error");
  if (int64)
  {
    goto LABEL_8;
  }

LABEL_10:
  string = xpc_dictionary_get_string(v5, "ActiveValue");
  if (string)
  {
    v18 = CFStringCreateWithCString(0, string, 0x8000100u);
  }

  else
  {
    v18 = 0;
  }

  xpc_release(v5);
LABEL_14:
  *a2 = int64;
  return v18;
}

CFStringRef CategoryManagerConnectionCopyActiveValueNoSession(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "Type", 3);
  if (a2)
  {
    v9 = _SC_cfstring_to_cstring(a2, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v8, "Category", v9);
    if (v9)
    {
      CFAllocatorDeallocate(0, v9);
    }
  }

  if (a3)
  {
    v10 = _SC_cfstring_to_cstring(a3, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v8, "InterfaceName", v10);
    if (v10)
    {
      CFAllocatorDeallocate(0, v10);
    }
  }

  v11 = CategoryManagerSendRequest(a1, v8);
  xpc_release(v8);
  if (!v11)
  {
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      v15 = _os_log_pack_size();
      v21 = &v39 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "%s: no reply?", v39);
      *v23 = 136315138;
      *(v23 + 4) = "CategoryManagerConnectionCopyActiveValueNoSession";
      __SC_log_send(5, v13, v14, v21);
      int64 = 22;
      v24 = 0;
    }

    else
    {
      v24 = 0;
      int64 = 22;
    }

    goto LABEL_20;
  }

  if (v11 == MEMORY[0x1E69E9E20])
  {
    int64 = 2;
LABEL_14:
    v25 = _SC_LOG_DEFAULT();
    v26 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v25, v26))
    {
      v27 = _os_log_pack_size();
      v33 = &v39 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = __error();
      v35 = _os_log_pack_fill(v33, v27, *v34, &dword_1AD2AD000, "%s: failure code %s (%d)", v39, v40, v41);
      v36 = strerror(int64);
      *v35 = 136315650;
      *(v35 + 4) = "CategoryManagerConnectionCopyActiveValueNoSession";
      *(v35 + 12) = 2080;
      *(v35 + 14) = v36;
      *(v35 + 22) = 1024;
      *(v35 + 24) = int64;
      __SC_log_send(5, v25, v26, v33);
    }

    goto LABEL_16;
  }

  int64 = xpc_dictionary_get_int64(v11, "Error");
  if (int64)
  {
    goto LABEL_14;
  }

LABEL_16:
  string = xpc_dictionary_get_string(v11, "ActiveValue");
  if (string)
  {
    v24 = CFStringCreateWithCString(0, string, 0x8000100u);
  }

  else
  {
    v24 = 0;
  }

  xpc_release(v11);
LABEL_20:
  *a4 = int64;
  return v24;
}

uint64_t SCDynamicStoreSnapshot(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v4 = 0;
  result = __SCDynamicStoreNormalize(v5, 1);
  if (result)
  {
    v2 = v5[0];
    do
    {
      v3 = snapshot(*(v2 + 40), &v4);
    }

    while (__SCDynamicStoreCheckRetryAndHandleError(v5[0], v3, &v4, "SCDynamicStoreSnapshot snapshot()"));
    if (v4)
    {
      _SCErrorSet(v4);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __SCPreferencesGetNetworkConfigurationFlags(uint64_t result)
{
  if (result)
  {
    return *(result + 308);
  }

  return result;
}

uint64_t __SCPreferencesSetNetworkConfigurationFlags(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 308) = a2;
  }

  return result;
}

BOOL __SCPreferencesIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    __SCPreferencesIsEmpty_cold_1();
  }

  __SCPreferencesAccess(a1);
  v2 = *(a1 + 280);
  return !v2 || CFDictionaryGetCount(v2) == 0;
}

const __CFData *__SCPreferencesPrefsSize(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return *(CFDataGetBytePtr(result) + 4);
  }

  return result;
}

CFStringRef SCDynamicStoreKeyCreatePreferences(const __CFAllocator *a1, const __CFString *a2, int a3)
{

  return _SCPNotificationKey(a1, a2, a3);
}

uint64_t __SCPreferencesCreate_helper(uint64_t a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v15 = 0;
  valuePtr = getpid();
  v2 = (a1 + 320);
  if (!_SCHelperOpen(*(a1 + 312), (a1 + 320)))
  {
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  v5 = *(a1 + 88);
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"prefsID", v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    CFDictionarySetValue(v4, @"options", v6);
  }

  CFDictionarySetValue(v4, @"name", *(a1 + 80));
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v4, @"PID", v7);
  CFRelease(v7);
  v8 = getprogname();
  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  CFDictionarySetValue(v4, @"PROC_NAME", v9);
  CFRelease(v9);
  v10 = _SCSerialize(v4, cf, 0, 0);
  CFRelease(v4);
  if (!cf[0] || !v10)
  {
    goto LABEL_19;
  }

  v11 = _SCHelperExec(*v2, 100, cf[0], &v15, 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v11)
  {
    v12 = v15;
    if (!v15)
    {
      return 1;
    }
  }

  else
  {
LABEL_19:
    if (*v2)
    {
      _SCHelperClose(v2);
    }

    v12 = 1003;
    v15 = 1003;
  }

  _SCErrorSet(v12);
  return 0;
}

void log_open_error(uint64_t a1, int a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (log_open_error_once != -1)
  {
    log_open_error_cold_1();
  }

  getpid();
  v3 = sandbox_check();
  v4 = __log_SCPreferences_log;
  if (v3 == 1)
  {
    if (!__log_SCPreferences_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v4;
    }

    v19 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v4, v19))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v26 = v38 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = __error();
    *_os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "sandbox restricting file access") = 0;
LABEL_17:
    v16 = v4;
    v17 = v19;
    v18 = v26;
    goto LABEL_18;
  }

  if (v3)
  {
    if (!__log_SCPreferences_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v4;
    }

    v19 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v4, v19))
    {
      return;
    }

    v28 = _os_log_pack_size();
    v26 = v38 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = __error();
    v35 = _os_log_pack_fill(v26, v28, *v34, &dword_1AD2AD000, "sandbox_check() failed: %s", v38[0]);
    v36 = __error();
    v37 = strerror(*v36);
    *v35 = 136315138;
    *(v35 + 4) = v37;
    goto LABEL_17;
  }

  if (!__log_SCPreferences_log)
  {
    v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
    __log_SCPreferences_log = v4;
  }

  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = v38 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "open() failed: %s", v38[0]);
    v15 = strerror(a2);
    *v14 = 136315138;
    *(v14 + 4) = v15;
    v16 = v4;
    v17 = v5;
    v18 = v12;
LABEL_18:
    __SC_log_send(5, v16, v17, v18);
  }
}

void *SCPreferencesCreateCompanion(uint64_t a1, const __CFString *a2)
{
  value[1] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  value[0] = 0;
  if (a2)
  {
    v43.length = CFStringGetLength(a2);
    v43.location = 0;
    if (CFStringFindWithOptions(a2, @"/", v43, 4uLL, 0))
    {
      goto LABEL_13;
    }
  }

  else
  {
    a2 = @"preferences.plist";
  }

  v5 = *(a1 + 88);
  if (!v5)
  {
    if (!CFEqual(a2, @"preferences.plist"))
    {
      v11 = v4;
      goto LABEL_15;
    }

LABEL_13:
    _SCErrorSet(1002);
    return 0;
  }

  Length = CFStringGetLength(v5);
  result.location = 0;
  result.length = 0;
  v44.location = 0;
  v44.length = Length;
  if (!CFStringFindWithOptions(*(a1 + 88), @"/", v44, 4uLL, &result))
  {
    if (CFEqual(*(a1 + 88), a2))
    {
      goto LABEL_13;
    }

    v11 = 0;
LABEL_15:
    MutableCopy = CFStringCreateMutableCopy(v11, 0, a2);
    goto LABEL_16;
  }

  v7.location = result.location + 1;
  result.location = v7.location;
  if (Length <= v7.location)
  {
    goto LABEL_13;
  }

  result.length = Length - v7.location;
  v7.length = Length - v7.location;
  v8 = CFStringCreateWithSubstring(v4, *(a1 + 88), v7);
  v9 = CFEqual(v8, a2);
  CFRelease(v8);
  if (v9)
  {
    goto LABEL_13;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, *(a1 + 88));
  CFStringReplace(MutableCopy, result, a2);
LABEL_16:
  if (!MutableCopy)
  {
    SCPreferencesCreateCompanion_cold_1();
  }

  pthread_mutex_lock((a1 + 16));
  v13 = *(a1 + 296);
  if (v13 && CFDictionaryGetValueIfPresent(v13, MutableCopy, value) && value[0])
  {
    v14 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v14 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v14;
    }

    v15 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v14, v15))
    {
      v16 = _os_log_pack_size();
      v22 = &result - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "create [companion] reference %@");
      v25 = value[0];
      *v24 = 138412290;
      *(v24 + 4) = v25;
      __SC_log_send(7, v14, v15, v22);
    }

    CFRetain(value[0]);
  }

  else
  {
    v26 = __SCPreferencesCreate(v4, *(a1 + 80), MutableCopy, *(a1 + 312), *(a1 + 96));
    value[0] = v26;
    if (v26)
    {
      v27 = v26;
      v28 = __log_SCPreferences_log;
      if (!__log_SCPreferences_log)
      {
        v28 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
        __log_SCPreferences_log = v28;
      }

      v29 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v28, v29))
      {
        v30 = _os_log_pack_size();
        v36 = &result - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        v38 = _os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "create [companion] %@");
        v39 = value[0];
        *v38 = 138412290;
        *(v38 + 4) = v39;
        __SC_log_send(7, v28, v29, v36);
      }

      v27[36] = CFRetain(a1);
      Mutable = *(a1 + 296);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
        *(a1 + 296) = Mutable;
      }

      CFDictionarySetValue(Mutable, MutableCopy, value[0]);
    }
  }

  pthread_mutex_unlock((a1 + 16));
  CFRelease(MutableCopy);
  return value[0];
}

CFTypeID SCPreferencesGetTypeID(void)
{
  if (__SCPreferencesInitialize_initialized != -1)
  {
    __SCPreferencesCreate_cold_1();
  }

  return __kSCPreferencesTypeID;
}

void prefsNotify(int a1, CFArrayRef theArray, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      LODWORD(v8) = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (CFEqual(ValueAtIndex, *(a3 + 184)))
        {
          v8 = v8 | 1;
        }

        else if (CFEqual(ValueAtIndex, *(a3 + 192)))
        {
          v8 = v8 | 2;
        }

        else
        {
          v8 = v8;
        }

        ++v7;
      }

      while (v6 != v7);
      if (v8)
      {
        pthread_mutex_lock((a3 + 16));
        v10 = *(a3 + 216);
        v12 = *(a3 + 232);
        v11 = *(a3 + 240);
        if (v11)
        {
          v12 = v11(*(a3 + 232));
          v13 = *(a3 + 248);
        }

        else
        {
          v13 = 0;
        }

        pthread_mutex_unlock((a3 + 16));
        if (v10)
        {
          v14 = __log_SCPreferences_log;
          if (!__log_SCPreferences_log)
          {
            v14 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
            __log_SCPreferences_log = v14;
          }

          v15 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v14, v15))
          {
            v16 = _os_log_pack_size();
            v22 = &v28 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
            v23 = __error();
            v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "exec SCPreferences callout: %s%s%s", v28, v29, v30);
            v25 = "commit";
            v26 = "";
            if ((v8 & 1) == 0)
            {
              v25 = "";
            }

            v27 = ", ";
            if ((~v8 & 3) != 0)
            {
              v27 = "";
            }

            *v24 = 136315650;
            *(v24 + 4) = v25;
            *(v24 + 12) = 2080;
            *(v24 + 14) = v27;
            if ((v8 & 2) != 0)
            {
              v26 = "apply";
            }

            *(v24 + 22) = 2080;
            *(v24 + 24) = v26;
            __SC_log_send(7, v14, v15, v22);
          }

          v10(a3, v8, v12);
        }

        if (v13)
        {
          v13(v12);
        }
      }
    }
  }
}

void __SCPreferencesUpdateLockedState(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUpdateLockedState_once != -1)
  {
    __SCPreferencesUpdateLockedState_cold_1();
  }

  *(a1 + 112) = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____SCPreferencesUpdateLockedState_block_invoke_41;
  block[3] = &__block_descriptor_tmp_42;
  v5 = a2;
  block[4] = a1;
  dispatch_sync(__SCPreferencesUpdateLockedState_lockedQueue, block);
}

void appendLockedPreferences(int a1, uint64_t a2, __CFString *theString)
{
  Length = CFStringGetLength(theString);
  v6 = "";
  if (Length > 0)
  {
    v6 = "\n";
  }

  CFStringAppendFormat(theString, 0, @"%s%@", v6, a2);
}

Boolean SCPreferencesUnscheduleFromRunLoop(SCPreferencesRef prefs, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (__SCPreferencesInitialize_initialized != -1)
  {
    __SCPreferencesCreate_cold_1();
    if (prefs)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    return 0;
  }

  if (!prefs)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCPreferencesTypeID;
  v7 = CFGetTypeID(prefs);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  return __SCPreferencesUnscheduleFromRunLoop(prefs, runLoop, runLoopMode);
}

void __log_open_error_block_invoke()
{
  log_open_error_sb_type = 1;
  if (_SC_isAppleInternal_once_1 != -1)
  {
    __log_open_error_block_invoke_cold_1();
  }

  if (!_SC_isAppleInternal_isInternal_1)
  {
    log_open_error_sb_type |= *MEMORY[0x1E69E9BD0];
  }
}

__CFString *__SCPreferencesCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCPreferences %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"name = %@", *(a1 + 80));
  v4 = *(a1 + 88);
  if (!v4)
  {
    v4 = @"[default]";
  }

  CFStringAppendFormat(Mutable, 0, @", id = %@", v4);
  CFStringAppendFormat(Mutable, 0, @", path = %s", *(a1 + 104));
  if (*(a1 + 304))
  {
    CFStringAppendFormat(Mutable, 0, @", accessed");
  }

  if (*(a1 + 305))
  {
    CFStringAppendFormat(Mutable, 0, @", changed");
  }

  if (*(a1 + 112))
  {
    CFStringAppendFormat(Mutable, 0, @", locked");
  }

  if (*(a1 + 320))
  {
    CFStringAppendFormat(Mutable, 0, @", helper port = 0x%x", *(a1 + 320));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

Boolean SCPreferencesLock(SCPreferencesRef prefs, Boolean wait)
{
  value[4] = *MEMORY[0x1E69E9840];
  v81 = 0;
  v82 = 0;
  if (!prefs)
  {
    v3 = 3001;
    goto LABEL_5;
  }

  if (*(prefs + 112))
  {
    v3 = 1006;
    goto LABEL_5;
  }

  v6 = wait;
  memset(&v85, 0, sizeof(v85));
  memset(&v84, 0, sizeof(v84));
  if (!*(prefs + 39))
  {
    if (!*(prefs + 306))
    {
      v3 = 1003;
      goto LABEL_5;
    }

    value[0] = 0;
    v10 = *(prefs + 12);
    if (!v10 || !CFDictionaryGetValueIfPresent(v10, @"avoid-deadlock", value) || (v11 = value[0], TypeID = CFBooleanGetTypeID(), !v11) || CFGetTypeID(v11) != TypeID || CFBooleanGetValue(value[0]))
    {
      if (__SCPreferencesUsingDefaultPrefs(prefs) && avoid_SCNetworkConfiguration_deadlock_once != -1)
      {
        SCPreferencesLock_cold_1();
      }
    }

    pthread_mutex_lock((prefs + 16));
    __SCPreferencesAddSessionKeys(prefs);
    if (!*(prefs + 15))
    {
      v13 = *(prefs + 13);
      v14 = strlen(v13);
      v15 = MEMORY[0x1B26F3AA0](0, v14 + 6, 2265605572, 0);
      *(prefs + 15) = v15;
      snprintf(v15, v14 + 6, "%s-lock", v13);
    }

    v83 = 0uLL;
    gettimeofday(&v83, 0);
    if (*(prefs + 22))
    {
LABEL_30:
      if (!lockWithSCDynamicStore(prefs, v6))
      {
        v50 = 1001;
        goto LABEL_83;
      }

LABEL_31:
      gettimeofday(prefs + 8, 0);
      v17 = *(prefs + 16) - v83;
      v81 = v17;
      v18 = *(prefs + 34) - DWORD2(v83);
      LODWORD(v82) = v18;
      if (v18 < 0)
      {
        v81 = --v17;
        LODWORD(v82) = v18 + 1000000;
      }

      if (!*(prefs + 304))
      {
        goto LABEL_38;
      }

      if (stat(*(prefs + 13), &v85) == -1)
      {
        if (*__error() != 2)
        {
          v51 = __log_SCPreferences();
          v52 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v51, v52))
          {
            v53 = _os_log_pack_size();
            v59 = &v80 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
            v60 = __error();
            v61 = _os_log_pack_fill(v59, v53, *v60, &dword_1AD2AD000, "stat() failed: %s", v80);
            v62 = __error();
            v63 = strerror(*v62);
            *v61 = 136315138;
            *(v61 + 4) = v63;
            __SC_log_send(6, v51, v52, v59);
          }

          goto LABEL_73;
        }

        memset(&v85, 0, sizeof(v85));
      }

      v19 = __SCPSignatureFromStatbuf(&v85.st_dev);
      v20 = CFEqual(*(prefs + 18), v19);
      CFRelease(v19);
      if (v20)
      {
LABEL_38:
        if (v17 >= 1)
        {
          reportDelay(prefs, &v81, 0);
        }

        v21 = __log_SCPreferences();
        v22 = _SC_syslog_os_log_mapping(7);
        if (__SC_log_enabled(7, v21, v22))
        {
          v23 = _os_log_pack_size();
          v29 = &v80 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
          v30 = __error();
          v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "SCPreferences() lock: %s", v80);
          v32 = *(prefs + 13);
          *v31 = 136315138;
          *(v31 + 4) = v32;
          __SC_log_send(7, v21, v22, v29);
        }

        v4 = 1;
        __SCPreferencesUpdateLockedState(prefs, 1);
        pthread_mutex_unlock((prefs + 16));
        return v4;
      }

LABEL_73:
      unlink(*(prefs + 15));
      if (v17 >= 1)
      {
        reportDelay(prefs, &v81, 1);
      }

      v50 = 3005;
      goto LABEL_83;
    }

    if (v6)
    {
      v33 = 545;
    }

    else
    {
      v33 = 549;
    }

    *&v16 = 136315138;
    v80 = v16;
    while (1)
    {
      v34 = open(*(prefs + 15), v33, 420);
      *(prefs + 29) = v34;
      if (v34 != -1)
      {
        break;
      }

      v36 = *__error();
      if (v36 <= 34)
      {
        if (v36 != 2)
        {
          goto LABEL_80;
        }

        v37 = *(prefs + 11);
        if (v37 && CFStringHasPrefix(v37, @"/"))
        {
          goto LABEL_81;
        }

        if (createParentDirectory(*(prefs + 15)))
        {
          v36 = *__error();
LABEL_80:
          if (v36 == 30)
          {
            goto LABEL_31;
          }

LABEL_81:
          v50 = *__error();
          v64 = __log_SCPreferences();
          v65 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v64, v65))
          {
            v66 = _os_log_pack_size();
            v72 = &v80 - ((MEMORY[0x1EEE9AC00](v66, v67, v68, v69, v70, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
            v73 = __error();
            v74 = _os_log_pack_fill(v72, v66, *v73, &dword_1AD2AD000, "open() failed: %s", v80);
            v75 = __error();
            v76 = strerror(*v75);
            *v74 = v80;
            *(v74 + 4) = v76;
            __SC_log_send(5, v64, v65, v72);
          }

LABEL_83:
          v77 = *(prefs + 29);
          if (v77 != -1)
          {
            close(v77);
            *(prefs + 29) = -1;
          }

          pthread_mutex_unlock((prefs + 16));
          v3 = v50;
LABEL_5:
          _SCErrorSet(v3);
          return 0;
        }

        v38 = __log_SCPreferences();
        v39 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v38, v39))
        {
          v40 = _os_log_pack_size();
          v46 = &v80 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
          v47 = __error();
          v48 = _os_log_pack_fill(v46, v40, *v47, &dword_1AD2AD000, "created directory for %s", v80);
          v49 = *(prefs + 13);
          *v48 = v80;
          *(v48 + 4) = v49;
          __SC_log_send(6, v38, v39, v46);
        }

        goto LABEL_57;
      }

      if (v36 != 45)
      {
        if (v36 == 35)
        {
          v50 = 3002;
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (has_O_EXLOCK(prefs))
      {
        *__error() = 45;
        goto LABEL_81;
      }

      v35 = _SCPNotificationKey(0, *(prefs + 11), 1);
      *(prefs + 22) = v35;
LABEL_58:
      if (v35)
      {
        goto LABEL_30;
      }
    }

    if (stat(*(prefs + 15), &v85) != -1 && fstat(*(prefs + 29), &v84) != -1 && v85.st_dev == v84.st_dev && v85.st_ino == v84.st_ino)
    {
      v78 = getpid();
      snprintf(value, 0x20uLL, "%d\n", v78);
      v79 = strlen(value);
      write(*(prefs + 29), value, v79);
      goto LABEL_31;
    }

    close(*(prefs + 29));
    *(prefs + 29) = -1;
LABEL_57:
    v35 = *(prefs + 22);
    goto LABEL_58;
  }

  v7 = (prefs + 320);
  v8 = *(prefs + 80);
  if (!v8)
  {
    if (!__SCPreferencesCreate_helper(prefs))
    {
      return 0;
    }

    v8 = *v7;
  }

  LODWORD(value[0]) = 0;
  if (v6)
  {
    v9 = 103;
  }

  else
  {
    v9 = 102;
  }

  if (!_SCHelperExec(v8, v9, *(prefs + 18), value, 0))
  {
    if (*v7)
    {
      _SCHelperClose(prefs + 80);
    }

    v3 = 1003;
    LODWORD(value[0]) = 1003;
    goto LABEL_5;
  }

  v3 = value[0];
  if (LODWORD(value[0]))
  {
    goto LABEL_5;
  }

  v4 = 1;
  __SCPreferencesUpdateLockedState(prefs, 1);
  return v4;
}

uint64_t lockWithSCDynamicStore(uint64_t a1, int a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (!__SCPreferencesAddSession(a1))
  {
    return 0;
  }

  if (!SCDynamicStoreAddWatchedKey(*(a1 + 152), *(a1 + 176), 0))
  {
    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = v53 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill(v19, v13, v20, &dword_1AD2AD000, "SCDynamicStoreAddWatchedKey() failed");
LABEL_11:
      *v21 = 0;
      __SC_log_send(6, v11, v12, v19);
    }

LABEL_12:
    v10 = 0;
    v9 = 1;
    goto LABEL_13;
  }

  v4 = SCDynamicStoreCreate(0, *(a1 + 80), 0, 0);
  *(a1 + 160) = v4;
  if (!v4)
  {
    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
      v22 = _os_log_pack_size();
      v19 = v53 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *__error();
      v21 = _os_log_pack_fill(v19, v22, v28, &dword_1AD2AD000, "SCDynamicStoreCreate() failed");
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(0, Current);
  v7 = SCDynamicStoreAddTemporaryValue(*(a1 + 160), *(a1 + 176), v6);
  CFRelease(v6);
  if (!v7)
  {
    if (!a2)
    {
      v10 = 0;
      v9 = 1;
      v8 = 3002;
      goto LABEL_13;
    }

    while (SCDynamicStoreNotifyWait(*(a1 + 152)))
    {
      v32 = SCDynamicStoreCopyNotifiedKeys(*(a1 + 152));
      if (!v32)
      {
        v43 = __log_SCPreferences();
        v44 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v43, v44))
        {
          v45 = _os_log_pack_size();
          v51 = v53 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = __error();
          *_os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "SCDynamicStoreCopyNotifiedKeys() failed") = 0;
          __SC_log_send(6, v43, v44, v51);
        }

        v8 = 0;
        goto LABEL_12;
      }

      CFRelease(v32);
      v33 = CFAbsoluteTimeGetCurrent();
      v34 = CFDateCreate(0, v33);
      v35 = SCDynamicStoreAddTemporaryValue(*(a1 + 160), *(a1 + 176), v34);
      CFRelease(v34);
      if (v35)
      {
        goto LABEL_5;
      }
    }

    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v11, v12))
    {
      goto LABEL_12;
    }

    v36 = _os_log_pack_size();
    v19 = v53 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = *__error();
    v21 = _os_log_pack_fill(v19, v36, v42, &dword_1AD2AD000, "SCDynamicStoreNotifyWait() failed");
    goto LABEL_11;
  }

LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 1;
LABEL_13:
  SCDynamicStoreRemoveWatchedKey(*(a1 + 152), *(a1 + 176), 0);
  v29 = SCDynamicStoreCopyNotifiedKeys(*(a1 + 152));
  if (v29)
  {
    CFRelease(v29);
  }

  __SCPreferencesRemoveSession(a1);
  if (v9)
  {
    v30 = *(a1 + 160);
    if (v30)
    {
      CFRelease(v30);
      *(a1 + 160) = 0;
    }
  }

  if (v8)
  {
    _SCErrorSet(v8);
  }

  return v10;
}

uint64_t createParentDirectory(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  if (__strlcpy_chk() >= 0x400 || (v2 = strrchr(v67, 47)) == 0 || v2 == v67)
  {
    *__error() = 2;
    return 0xFFFFFFFFLL;
  }

  v4 = v2;
  *v2 = 0;
  v5 = 0x1EB591000uLL;
  *&v3 = 136315138;
  v63 = v3;
  v6 = v67;
LABEL_8:
  v7 = *v4;
  *v4 = 0;
  while (1)
  {
    if (!mkdir(v67, 0x1EDu))
    {
      gr_gid = *(v5 + 1568);
      if (gr_gid == -1)
      {
        memset(&v65, 0, sizeof(v65));
        v64 = 0;
        if (getgrnam_r("wheel", &v65, v66, 0x100uLL, &v64) || !v64)
        {
          v10 = __log_SCPreferences();
          v11 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v10, v11))
          {
            v12 = _os_log_pack_size();
            v18 = &v63 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = __error();
            v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "getgrnam_r() failed: %s", v63);
            v21 = __error();
            v22 = strerror(*v21);
            *v20 = v63;
            *(v20 + 4) = v22;
            v23 = v18;
            v5 = 0x1EB591000uLL;
            __SC_log_send(5, v10, v11, v23);
          }

          gr_gid = 0;
        }

        else
        {
          gr_gid = v64->gr_gid;
        }

        *(v5 + 1568) = gr_gid;
      }

      if (chown(v67, 0xFFFFFFFF, gr_gid) == -1)
      {
        v24 = __log_SCPreferences();
        v25 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v24, v25))
        {
          v26 = _os_log_pack_size();
          v32 = &v63 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
          v33 = __error();
          v34 = _os_log_pack_fill(v32, v26, *v33, &dword_1AD2AD000, "chown() failed: %s", v63);
          v35 = __error();
          v36 = strerror(*v35);
          *v34 = v63;
          *(v34 + 4) = v36;
          v5 = 0x1EB591000;
          __SC_log_send(5, v24, v25, v32);
        }
      }

      if (chmod(v67, 0x1EDu) == -1)
      {
        v37 = __log_SCPreferences();
        v38 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v37, v38))
        {
          v39 = _os_log_pack_size();
          v45 = &v63 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
          v46 = __error();
          v47 = _os_log_pack_fill(v45, v39, *v46, &dword_1AD2AD000, "chmod() failed: %s", v63);
          v48 = __error();
          v49 = strerror(*v48);
          *v47 = v63;
          *(v47 + 4) = v49;
          v5 = 0x1EB591000;
          __SC_log_send(5, v37, v38, v45);
        }
      }

      result = 0;
      if (!v4 || v6 == v67)
      {
        return result;
      }

      goto LABEL_34;
    }

    if (*__error() != 2 || v6 != v67)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_36;
    }

LABEL_34:
    *v4 = v7;
    v4 = strchr(v6 + 1, 47);
    v6 = v4;
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = 0;
  }

  if (*__error() == 30)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = __error();
  if (v4 && *v9 == 17)
  {
    goto LABEL_34;
  }

LABEL_36:
  v50 = __log_SCPreferences();
  v51 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v50, v51))
  {
    v52 = _os_log_pack_size();
    v58 = &v63 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = __error();
    v60 = _os_log_pack_fill(v58, v52, *v59, &dword_1AD2AD000, "mkdir() failed: %s", v63);
    v61 = __error();
    v62 = strerror(*v61);
    *v60 = v63;
    *(v60 + 4) = v62;
    __SC_log_send(5, v50, v51, v58);
    return 0xFFFFFFFFLL;
  }

  return 0xFFFFFFFFLL;
}

BOOL has_O_EXLOCK(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  memset(&v36, 0, 512);
  v2 = open(*(a1 + 120), 513);
  if (v2 == -1)
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v6, v7);
    if (!result)
    {
      return result;
    }

    v8 = _os_log_pack_size();
    v14 = &v35[-1] - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill(v14, v8, v15, &dword_1AD2AD000, "open() failed: %s");
  }

  else
  {
    v3 = v2;
    v4 = fstatfs(v2, &v36);
    unlink(*(a1 + 120));
    close(v3);
    if (v4 == -1)
    {
      v6 = __log_SCPreferences();
      v7 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v6, v7);
      if (!result)
      {
        return result;
      }

      v17 = _os_log_pack_size();
      v14 = &v35[-1] - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = *__error();
      v16 = _os_log_pack_fill(v14, v17, v23, &dword_1AD2AD000, "fstatfs() failed: %s");
    }

    else
    {
      v35[0] = 5;
      v35[1] = 2147614720;
      v35[2] = 0;
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
      if (getattrlist(v36.f_mntonname, v35, &v37, 0x24uLL, 0) != -1)
      {
        return (BYTE9(v37) & 2) != 0 && (BYTE9(v38) & 2) != 0;
      }

      v6 = __log_SCPreferences();
      v7 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v6, v7);
      if (!result)
      {
        return result;
      }

      v24 = _os_log_pack_size();
      v14 = &v35[-1] - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      v16 = _os_log_pack_fill(v14, v24, v30, &dword_1AD2AD000, "getattrlist() failed: %s");
    }
  }

  v31 = v16;
  v32 = __error();
  v33 = strerror(*v32);
  *v31 = 136315138;
  *(v31 + 4) = v33;
  __SC_log_send(5, v6, v7, v14);
  return 0;
}

void reportDelay(uint64_t a1, uint64_t *a2, int a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = __log_SCPreferences();
  v7 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v6, v7))
  {
    v8 = _os_log_pack_size();
    v14 = v22 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCPreferences(%@:%@) lock delayed for %d.%3.3d seconds%s");
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = *a2;
    v20 = *(a2 + 2) / 1000;
    v21 = " (stale)";
    *v16 = 138413314;
    if (!a3)
    {
      v21 = "";
    }

    *(v16 + 4) = v17;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v18;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v19;
    *(v16 + 28) = 1024;
    *(v16 + 30) = v20;
    *(v16 + 34) = 2080;
    *(v16 + 36) = v21;
    __SC_log_send(3, v6, v7, v14);
  }
}

void __wait_for_PreferencesMonitor()
{
  v27[1] = *MEMORY[0x1E69E9840];
  qword_1EB591738 = "Waiting for configd/PreferencesMonitor";
  v0 = SCDynamicStoreCreate(0, @"__wait_for_PreferencesMonitor", 0, 0);
  if (!v0)
  {
    qword_1EB591738 = 0;
    return;
  }

  v1 = v0;
  v2 = CFArrayCreate(0, &kSCDynamicStoreDomainSetup, 1, MEMORY[0x1E695E9C0]);
  v3 = SCDynamicStoreSetNotificationKeys(v1, v2, 0);
  CFRelease(v2);
  if (v3)
  {
    while (1)
    {
      v4 = SCDynamicStoreCopyValue(v1, @"Setup:");
      if (v4)
      {
        CFRelease(v4);
        goto LABEL_14;
      }

      if (!SCDynamicStoreNotifyWait(v1))
      {
        break;
      }

      v5 = SCDynamicStoreCopyNotifiedKeys(v1);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v6, v7))
    {
      goto LABEL_14;
    }

    v17 = _os_log_pack_size();
    v14 = v27 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *__error();
    v16 = _os_log_pack_fill(v14, v17, v23, &dword_1AD2AD000, "SCDynamicStoreNotifyWait() failed: %s");
    goto LABEL_13;
  }

  v6 = __log_SCPreferences();
  v7 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v6, v7))
  {
    v8 = _os_log_pack_size();
    v14 = v27 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill(v14, v8, v15, &dword_1AD2AD000, "SCDynamicStoreSetNotificationKeys() failed: %s");
LABEL_13:
    v24 = v16;
    v25 = SCError();
    v26 = SCErrorString(v25);
    *v24 = 136315138;
    *(v24 + 4) = v26;
    __SC_log_send(5, v6, v7, v14);
  }

LABEL_14:
  qword_1EB591738 = 0;
  CFRelease(v1);
}

Boolean SCPreferencesUnlock(SCPreferencesRef prefs)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v3 = 3001;
    goto LABEL_27;
  }

  if (!*(prefs + 112))
  {
    v3 = 1007;
    goto LABEL_27;
  }

  if (!*(prefs + 39))
  {
    pthread_mutex_lock((prefs + 16));
    v4 = *(prefs + 20);
    if (v4)
    {
      CFRelease(v4);
      *(prefs + 20) = 0;
    }

    v5 = *(prefs + 29);
    if (v5 != -1)
    {
      if (*(prefs + 15))
      {
        unlink(*(prefs + 15));
        v5 = *(prefs + 29);
      }

      close(v5);
      *(prefs + 29) = -1;
    }

    v24 = 0;
    v22.tv_sec = 0;
    *&v22.tv_usec = 0;
    gettimeofday(&v22, 0);
    v6 = v22.tv_sec - *(prefs + 16);
    v23 = v6;
    v7 = v22.tv_usec - *(prefs + 34);
    LODWORD(v24) = v7;
    if (v7 < 0)
    {
      v23 = --v6;
      LODWORD(v24) = v7 + 1000000;
    }

    if (v6 >= 1)
    {
      reportDelay_0(prefs, &v23);
    }

    v8 = __log_SCPreferences();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = &v21 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "SCPreferences() unlock: %s", v21);
      v19 = *(prefs + 13);
      *v18 = 136315138;
      *(v18 + 4) = v19;
      __SC_log_send(7, v8, v9, v16);
    }

    __SCPreferencesUpdateLockedState(prefs, 0);
    pthread_mutex_unlock((prefs + 16));
    return 1;
  }

  LODWORD(v23) = 0;
  v2 = *(prefs + 80);
  if (!v2)
  {
LABEL_26:
    v3 = 1003;
    LODWORD(v23) = 1003;
    goto LABEL_27;
  }

  if (!_SCHelperExec(v2, 106, 0, &v23, 0))
  {
    if (*(prefs + 80))
    {
      _SCHelperClose(prefs + 80);
    }

    goto LABEL_26;
  }

  v3 = v23;
  if (!v23)
  {
    __SCPreferencesUpdateLockedState(prefs, 0);
    return 1;
  }

LABEL_27:
  _SCErrorSet(v3);
  return 0;
}

void reportDelay_0(uint64_t a1, uint64_t *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCPreferences();
  v5 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = v19 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "SCPreferences(%@:%@) lock held for %d.%3.3d seconds");
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *a2;
    v18 = *(a2 + 2) / 1000;
    *v14 = 138413058;
    *(v14 + 4) = v15;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v16;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v17;
    *(v14 + 28) = 1024;
    *(v14 + 30) = v18;
    __SC_log_send(3, v4, v5, v12);
  }
}

CFArrayRef SCPreferencesCopyKeyList(SCPreferencesRef prefs)
{
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    v2 = CFGetAllocator(prefs);
    Count = CFDictionaryGetCount(*(prefs + 35));
    if (Count < 1)
    {
      v8 = MEMORY[0x1E695E9C0];

      return CFArrayCreate(v2, 0, 0, v8);
    }

    else
    {
      v4 = Count;
      v5 = MEMORY[0x1B26F3AA0](v2, 8 * Count, 0x6004044C4A2DFLL, 0);
      CFDictionaryGetKeysAndValues(*(prefs + 35), v5, 0);
      v6 = CFArrayCreate(v2, v5, v4, MEMORY[0x1E695E9C0]);
      CFAllocatorDeallocate(v2, v5);
      return v6;
    }
  }

  else
  {
    _SCErrorSet(3001);
    return 0;
  }
}

uint64_t __SCNetworkConfigurationBackup(const __SCPreferences *a1, const __CFString *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v6 = __log_SCNetworkConfiguration();
  v7 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v6, v7))
  {
    v8 = _os_log_pack_size();
    v14 = &v25 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "creating [%@] backup");
    *v16 = 138412290;
    *(v16 + 4) = a2;
    __SC_log_send(5, v6, v7, v14);
  }

  if (*(a1 + 11))
  {
    v17 = *(a1 + 11);
  }

  else
  {
    v17 = @"preferences.plist";
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v17);
  v29.length = CFStringGetLength(MutableCopy);
  v29.location = 0;
  if (CFStringFindWithOptions(MutableCopy, @"/", v29, 4uLL, &result))
  {
    v28.length = result.location + 1;
    result.location = 0;
    result.length = v28.length;
    v28.location = 0;
    CFStringReplace(MutableCopy, v28, &stru_1F22591E8);
  }

  Length = CFStringGetLength(MutableCopy);
  CFStringInsert(MutableCopy, Length - 6, @"-");
  v20 = CFStringGetLength(MutableCopy);
  CFStringInsert(MutableCopy, v20 - 6, a2);
  Companion = SCPreferencesCreateCompanion(a3, MutableCopy);
  CFRelease(MutableCopy);
  if (!Companion)
  {
    return 0;
  }

  Value = SCPreferencesPathGetValue(a1, @"/");
  SCPreferencesPathSetValue(Companion, @"/", Value);
  v23 = SCPreferencesCommitChanges(Companion);
  CFRelease(Companion);
  return v23;
}

uint64_t __SCNetworkConfigurationSaveModel(const __SCPreferences *a1, const void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = v18 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "creating [per-device] backup: %@");
    *v14 = 138412290;
    *(v14 + 4) = a2;
    __SC_log_send(5, v4, v5, v12);
  }

  v15 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a2);
  v16 = savePreferences(a1, v15, &stru_1F22591E8, @"Model", a2);
  CFRelease(v15);
  return v16;
}

uint64_t savePreferences(const __SCPreferences *a1, const __CFString *a2, uint64_t a3, const __CFString *a4, const void *a5)
{
  v31[7] = *MEMORY[0x1E69E9840];
  v31[0] = @"CurrentSet";
  v31[1] = @"Model";
  v31[2] = @"NetworkServices";
  v31[3] = @"Sets";
  v31[4] = @"System";
  v31[5] = @"__VERSION__";
  v31[6] = @"VirtualNetworkInterfaces";
  v30 = a2;
  Companion = SCPreferencesCreateCompanion(a1, a2);
  for (i = 0; i != 7; ++i)
  {
    v11 = v31[i];
    v12 = CFStringCreateWithFormat(0, 0, @"%@%@", a3, v11);
    Value = SCPreferencesGetValue(a1, v12);
    if (Value)
    {
      SCPreferencesSetValue(Companion, v11, Value);
      SCPreferencesRemoveValue(a1, v12);
    }

    CFRelease(v12);
  }

  if (a4)
  {
    SCPreferencesSetValue(Companion, a4, a5);
  }

  v14 = SCPreferencesCommitChanges(Companion);
  CFRelease(Companion);
  if (!v14)
  {
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v23 = &v29 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "could not save preferences (%@): %s");
      v26 = SCError();
      v27 = SCErrorString(v26);
      *v25 = 138412546;
      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = v27;
      __SC_log_send(3, v15, v16, v23);
    }
  }

  return v14;
}

uint64_t __SCNetworkConfigurationUpgrade(const __SCPreferences **a1, const __SCPreferences **a2, int a3)
{
  v103 = *MEMORY[0x1E69E9840];
  valuePtr = 20191120;
  if (a1)
  {
    Companion = *a1;
  }

  else
  {
    Companion = 0;
  }

  v7 = a2 != 0;
  if (!a2)
  {
    v8 = 0;
LABEL_11:
    if (a1)
    {
      v20 = Companion == 0;
    }

    else
    {
      v20 = 1;
    }

    v23 = !v20 && a2 != 0 && v8 == 0;
    goto LABEL_29;
  }

  v8 = *a2;
  if (!a1 && v8)
  {
    Companion = SCPreferencesCreateCompanion(*a2, 0);
    if (!Companion)
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
        v11 = _os_log_pack_size();
        v17 = &v100 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = *__error();
        v19 = _os_log_pack_fill(v17, v11, v18, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): could not open [preferences.plist]: %s");
LABEL_67:
        v96 = v19;
        v97 = SCError();
        v98 = SCErrorString(v97);
        *v96 = 136315138;
        *(v96 + 4) = v98;
        __SC_log_send(3, v9, v10, v17);
        return 0;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v23 = 0;
  if (a1 && Companion && !v8)
  {
    v24 = SCPreferencesCreateCompanion(Companion, @"NetworkInterfaces.plist");
    if (!v24)
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
        v89 = _os_log_pack_size();
        v17 = &v100 - ((MEMORY[0x1EEE9AC00](v89, v90, v91, v92, v93, v94) + 15) & 0xFFFFFFFFFFFFFFF0);
        v95 = *__error();
        v19 = _os_log_pack_fill(v17, v89, v95, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): could not open [NetworkInterfaces.plist]: %s");
        goto LABEL_67;
      }

      return 0;
    }

    v8 = v24;
    v7 = 0;
    v23 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_29:
  if (needsUpdate(Companion) || needsUpdate(v8))
  {
    v25 = lockWithSync(Companion);
    if (v25)
    {
      if (!v8 || (v25 = lockWithSync(v8), v25))
      {
        v26 = v25;
        __SCNetworkConfigurationClean(Companion, v8);
        v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        SCPreferencesSetValue(Companion, @"__VERSION__", v27);
        CFRelease(v27);
        if (v8)
        {
          v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          SCPreferencesSetValue(v8, @"__VERSION__", v28);
          CFRelease(v28);
        }

        if (!a3)
        {
          goto LABEL_51;
        }

        if (SCPreferencesCommitChanges(Companion))
        {
          v26 = SCPreferencesApplyChanges(Companion);
          if (v26)
          {
            goto LABEL_51;
          }

          v29 = __log_SCNetworkConfiguration();
          v30 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v29, v30))
          {
            v31 = _os_log_pack_size();
            v101 = &v100;
            v37 = &v100 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
            v38 = *__error();
            v39 = _os_log_pack_fill(v37, v31, v38, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): update not applied [preferences.plist]: %s");
LABEL_49:
            v73 = v39;
            v74 = SCError();
            v75 = SCErrorString(v74);
            *v73 = 136315138;
            *(v73 + 4) = v75;
            __SC_log_send(3, v29, v30, v37);
          }
        }

        else
        {
          v29 = __log_SCNetworkConfiguration();
          v30 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v29, v30))
          {
            v66 = _os_log_pack_size();
            v101 = &v100;
            v37 = &v100 - ((MEMORY[0x1EEE9AC00](v66, v67, v68, v69, v70, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
            v72 = *__error();
            v39 = _os_log_pack_fill(v37, v66, v72, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): update not saved [preferences.plist]: %s");
            goto LABEL_49;
          }
        }

        v26 = 0;
LABEL_51:
        SCPreferencesUnlock(Companion);
        if (v8)
        {
          if (a3)
          {
            if (v26)
            {
              v26 = SCPreferencesCommitChanges(v8);
              if (!v26)
              {
                v76 = __log_SCNetworkConfiguration();
                v77 = _SC_syslog_os_log_mapping(3);
                if (__SC_log_enabled(3, v76, v77))
                {
                  v78 = _os_log_pack_size();
                  v84 = &v100 - ((MEMORY[0x1EEE9AC00](v78, v79, v80, v81, v82, v83) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v85 = __error();
                  v86 = _os_log_pack_fill(v84, v78, *v85, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): update not saved [NetworkInterfaces.plist]: %s", v100);
                  v87 = SCError();
                  v88 = SCErrorString(v87);
                  *v86 = 136315138;
                  *(v86 + 4) = v88;
                  __SC_log_send(3, v76, v77, v84);
                }

                v26 = 0;
              }
            }
          }

          SCPreferencesUnlock(v8);
        }

        goto LABEL_59;
      }

      v53 = __log_SCNetworkConfiguration();
      v54 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v53, v54))
      {
        v55 = _os_log_pack_size();
        v61 = &v100 - ((MEMORY[0x1EEE9AC00](v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = __error();
        v63 = _os_log_pack_fill(v61, v55, *v62, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): could not lock [NetworkInterfaces.plist]: %s", v100);
        v64 = SCError();
        v65 = SCErrorString(v64);
        *v63 = 136315138;
        *(v63 + 4) = v65;
        __SC_log_send(3, v53, v54, v61);
      }

      SCPreferencesUnlock(Companion);
    }

    else
    {
      v40 = __log_SCNetworkConfiguration();
      v41 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v40, v41))
      {
        v42 = _os_log_pack_size();
        v48 = &v100 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        v49 = __error();
        v50 = _os_log_pack_fill(v48, v42, *v49, &dword_1AD2AD000, "__SCNetworkConfigurationUpgrade(): could not lock [preferences.plist]: %s", v100);
        v51 = SCError();
        v52 = SCErrorString(v51);
        *v50 = 136315138;
        *(v50 + 4) = v52;
        __SC_log_send(3, v40, v41, v48);
      }
    }
  }

  v26 = 0;
LABEL_59:
  if (v7)
  {
    CFRelease(Companion);
  }

  if (v23)
  {
    if (v26)
    {
      *a2 = CFRetain(v8);
    }

    CFRelease(v8);
  }

  return v26;
}

const __SCPreferences *needsUpdate(const __SCPreferences *result)
{
  v4 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (result)
  {
    Value = SCPreferencesGetValue(result, @"__VERSION__");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      return (valuePtr != 20191120);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t lockWithSync(const __SCPreferences *a1)
{
  if (!a1)
  {
    lockWithSync_cold_1();
  }

  result = SCPreferencesLock(a1, 1u);
  if (!result)
  {
    if (SCError() == 3005)
    {
      SCPreferencesSynchronize(a1);

      return SCPreferencesLock(a1, 1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __SCNetworkConfigurationClean(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v4 = SCPreferencesCopyKeyList(a1);
  if (v4)
  {
    v5 = CFStringCreateWithFormat(0, 0, @" : %@", @"Sets");
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      Mutable = 0;
      v10 = MEMORY[0x1E695E9F8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
        if (CFStringHasSuffix(ValueAtIndex, v5))
        {
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(0, 0, v10);
          }

          MutableCopy = CFStringCreateMutableCopy(0, 0, ValueAtIndex);
          CFStringTrim(MutableCopy, v5);
          CFSetAddValue(Mutable, MutableCopy);
          CFRelease(MutableCopy);
        }

        ++v8;
      }

      while (v7 != v8);
    }

    CFRelease(v5);
    CFRelease(v4);
    if (Mutable)
    {
      CFSetApplyFunction(Mutable, thinInlineBackup, a1);
      CFRelease(Mutable);
      v13 = __log_SCNetworkConfiguration();
      v14 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v13, v14))
      {
        v15 = _os_log_pack_size();
        v21 = v64 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        *_os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "network configuration: unwanted inline backups removed") = 0;
        __SC_log_send(5, v13, v14, v21);
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  v23 = SCPreferencesCopyKeyList(a1);
  if (v23)
  {
    v24 = v23;
    v25 = CFStringCreateWithFormat(0, 0, @":%@", @"Sets");
    v26 = CFArrayGetCount(v24);
    if (v26 < 1)
    {
      v29 = 0;
    }

    else
    {
      v27 = v26;
      v28 = 0;
      v29 = 0;
      v30 = MEMORY[0x1E695E9F8];
      do
      {
        v31 = CFArrayGetValueAtIndex(v24, v28);
        if (CFStringHasSuffix(v31, v25))
        {
          if (!v29)
          {
            v29 = CFSetCreateMutable(0, 0, v30);
          }

          v32 = CFStringCreateMutableCopy(0, 0, v31);
          CFStringTrim(v32, v25);
          CFSetAddValue(v29, v32);
          CFRelease(v32);
        }

        ++v28;
      }

      while (v27 != v28);
    }

    CFRelease(v25);
    CFRelease(v24);
    if (v29)
    {
      CFSetApplyFunction(v29, thinInlineModel, a1);
      CFRelease(v29);
      v33 = __log_SCNetworkConfiguration();
      v34 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v33, v34))
      {
        v4 = 1;
        if (!a2)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      v35 = _os_log_pack_size();
      v41 = v64 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = __error();
      *_os_log_pack_fill(v41, v35, *v42, &dword_1AD2AD000, "network configuration: unwanted device backups removed") = 0;
      __SC_log_send(5, v33, v34, v41);
      v4 = 1;
    }
  }

  if (!a2)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (__SCNetworkConfigurationCleanHiddenInterfaces(a1, a2))
  {
    v43 = __log_SCNetworkConfiguration();
    v44 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v43, v44))
    {
      v45 = _os_log_pack_size();
      v51 = v64 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = __error();
      *_os_log_pack_fill(v51, v45, *v52, &dword_1AD2AD000, "network configuration: hidden interface configurations removed") = 0;
      __SC_log_send(5, v43, v44, v51);
    }

    v4 = 1;
  }

LABEL_38:
  if (__SCNetworkConfigurationCleanServiceOrderIssues(a1))
  {
    v53 = __log_SCNetworkConfiguration();
    v54 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v53, v54))
    {
      v55 = _os_log_pack_size();
      v61 = v64 - ((MEMORY[0x1EEE9AC00](v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = __error();
      *_os_log_pack_fill(v61, v55, *v62, &dword_1AD2AD000, "network configuration: ServiceOrder cleaned") = 0;
      __SC_log_send(5, v53, v54, v61);
    }

    return 1;
  }

  return v4;
}

uint64_t __SCNetworkConfigurationCleanHiddenInterfaces(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v274 = a2;
  v283 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = SCNetworkServiceCopyAll(a1);
  v5 = v4;
  v282 = Mutable;
  v276 = a1;
  v277 = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      *&v7 = 138412546;
      v278 = v7;
      *&v7 = 138412802;
      v272 = v7;
      *&v7 = 138413314;
      v273 = v7;
      v275 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        if (!SCNetworkServiceGetEnabled(ValueAtIndex))
        {
          break;
        }

        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (!BSDName)
        {
          if (_sc_log != 1 && _sc_debug == 0)
          {
            goto LABEL_93;
          }

          v51 = __log_SCNetworkConfiguration();
          v52 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v51, v52))
          {
            goto LABEL_93;
          }

          v63 = _os_log_pack_size();
          v59 = &v272 - ((MEMORY[0x1EEE9AC00](v63, v64, v65, v66, v67, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
          v69 = *__error();
          v61 = _os_log_pack_fill(v59, v63, v69, &dword_1AD2AD000, "skipping service : %@ : %@ (no interface)", v272);
          goto LABEL_59;
        }

        v13 = BSDName;
        IsHiddenConfiguration = _SCNetworkInterfaceIsHiddenConfiguration(Interface);
        v15 = "hidden";
        if (IsHiddenConfiguration)
        {
          goto LABEL_9;
        }

        LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(Interface);
        if (CFStringHasPrefix(LocalizedDisplayName, @"Apple TV"))
        {
          v15 = "effectively hidden";
          goto LABEL_9;
        }

        v75 = -1;
        v76 = off_1E79BD690;
        do
        {
          if (v75 == 3)
          {
            goto LABEL_87;
          }

          v77 = *v76++;
          ++v75;
        }

        while (!CFStringHasPrefix(LocalizedDisplayName, v77));
        if (v75 < 4)
        {
          v15 = "effectively hidden";
          Mutable = v282;
LABEL_9:
          *&v280 = v15;
          v17 = SCNetworkServiceGetInterface(ValueAtIndex);
          *&v281 = v13;
          if (v17)
          {
            v18 = SCNetworkServiceCreate(a1, v17);
            if (v18)
            {
              v19 = v18;
              *&v279 = v9;
              SCNetworkServiceEstablishDefaultConfiguration(v18);
              v20 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              v21 = SCNetworkServiceCopyProtocols(ValueAtIndex);
              if (v21)
              {
                v22 = v21;
                v23 = CFArrayGetCount(v21);
                if (v23 >= 1)
                {
                  v24 = v23;
                  for (i = 0; i != v24; ++i)
                  {
                    v26 = CFArrayGetValueAtIndex(v22, i);
                    ProtocolType = SCNetworkProtocolGetProtocolType(v26);
                    v284.length = CFArrayGetCount(v20);
                    v284.location = 0;
                    if (!CFArrayContainsValue(v20, v284, ProtocolType))
                    {
                      CFArrayAppendValue(v20, ProtocolType);
                    }
                  }
                }

                CFRelease(v22);
              }

              v28 = SCNetworkServiceCopyProtocols(v19);
              if (v28)
              {
                v29 = v28;
                v30 = CFArrayGetCount(v28);
                if (v30 >= 1)
                {
                  v31 = v30;
                  for (j = 0; j != v31; ++j)
                  {
                    v33 = CFArrayGetValueAtIndex(v29, j);
                    v34 = SCNetworkProtocolGetProtocolType(v33);
                    v285.length = CFArrayGetCount(v20);
                    v285.location = 0;
                    if (!CFArrayContainsValue(v20, v285, v34))
                    {
                      CFArrayAppendValue(v20, v34);
                    }
                  }
                }

                CFRelease(v29);
              }

              v35 = CFArrayGetCount(v20);
              v36 = v35 - 1;
              if (v35 >= 1)
              {
                v37 = 0;
                Copy = 0;
                while (1)
                {
                  v39 = CFArrayGetValueAtIndex(v20, v37);
                  v40 = SCNetworkServiceCopyProtocol(ValueAtIndex, v39);
                  v41 = SCNetworkServiceCopyProtocol(v19, v39);
                  v42 = v41;
                  if (v40)
                  {
                    if (v41)
                    {
                      break;
                    }
                  }

                  Copy = CFStringCreateWithFormat(0, 0, @"conflicting %@ enable/disable", v39);
                  v48 = 1;
                  if (v40)
                  {
                    goto LABEL_45;
                  }

                  if (v42)
                  {
                    goto LABEL_37;
                  }

LABEL_38:
                  v50 = v36 == v37++;
                  if (v50)
                  {
                    v49 = 1;
                  }

                  else
                  {
                    v49 = v48;
                  }

                  if (v49 == 1)
                  {
                    goto LABEL_70;
                  }
                }

                Enabled = SCNetworkProtocolGetEnabled(v40);
                v44 = SCNetworkProtocolGetEnabled(v42);
                v45 = @"conflicting %@ enable/disable";
                if (Enabled == v44)
                {
                  Configuration = SCNetworkProtocolGetConfiguration(v40);
                  v47 = SCNetworkProtocolGetConfiguration(v42);
                  if (Configuration == v47)
                  {
                    goto LABEL_34;
                  }

                  if (!Configuration)
                  {
                    goto LABEL_43;
                  }

                  v45 = @"conflicting %@ configuration";
                  if (v47)
                  {
                    if (CFEqual(Configuration, v47))
                    {
LABEL_34:
                      v48 = 0;
                      goto LABEL_45;
                    }

LABEL_43:
                    v45 = @"conflicting %@ configuration";
                  }
                }

                Copy = CFStringCreateWithFormat(0, 0, v45, v39);
                v48 = 1;
LABEL_45:
                CFRelease(v40);
                if (!v42)
                {
                  goto LABEL_38;
                }

LABEL_37:
                CFRelease(v42);
                goto LABEL_38;
              }

              Copy = 0;
LABEL_70:
              SCNetworkServiceRemove(v19);
              CFRelease(v19);
              CFRelease(v20);
              Mutable = v282;
              a1 = v276;
              v5 = v277;
              v8 = v275;
              v9 = v279;
              goto LABEL_71;
            }

            v74 = @"could not create service for interface";
          }

          else
          {
            v74 = @"could not get interface for service";
          }

          Copy = CFStringCreateCopy(0, v74);
LABEL_71:
          v79 = _sc_log == 1 || _sc_debug != 0;
          if (Copy)
          {
            if (v79)
            {
              v80 = __log_SCNetworkConfiguration();
              v81 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v80, v81))
              {
                v82 = _os_log_pack_size();
                v88 = v9;
                v89 = &v272 - ((MEMORY[0x1EEE9AC00](v82, v83, v84, v85, v86, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
                v90 = __error();
                v91 = _os_log_pack_fill(v89, v82, *v90, &dword_1AD2AD000, "skipping service : %@ : %@ : %@ (%s, non-default, %@)");
                ServiceID = SCNetworkServiceGetServiceID(ValueAtIndex);
                Name = SCNetworkServiceGetName(ValueAtIndex);
                *v91 = v273;
                *(v91 + 4) = ServiceID;
                v8 = v275;
                *(v91 + 12) = 2112;
                *(v91 + 14) = Name;
                *(v91 + 22) = 2112;
                *(v91 + 24) = v281;
                *(v91 + 32) = 2080;
                *(v91 + 34) = v280;
                *(v91 + 42) = 2112;
                *(v91 + 44) = Copy;
                Mutable = v282;
                v94 = v89;
                v9 = v88;
                __SC_log_send(6, v80, v81, v94);
                v5 = v277;
              }
            }

            CFRelease(Copy);
          }

          else
          {
            if (v79)
            {
              v95 = __log_SCNetworkConfiguration();
              v96 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v95, v96))
              {
                v97 = _os_log_pack_size();
                v103 = &v272 - ((MEMORY[0x1EEE9AC00](v97, v98, v99, v100, v101, v102) + 15) & 0xFFFFFFFFFFFFFFF0);
                v104 = __error();
                v105 = v97;
                Mutable = v282;
                v106 = _os_log_pack_fill(v103, v105, *v104, &dword_1AD2AD000, "candidate interface : %@ (%s)");
                *v106 = v278;
                *(v106 + 4) = v281;
                *(v106 + 12) = 2080;
                *(v106 + 14) = v280;
                __SC_log_send(6, v95, v96, v103);
              }
            }

            v286.length = CFArrayGetCount(Mutable);
            v286.location = 0;
            v107 = v281;
            if (!CFArrayContainsValue(Mutable, v286, v281))
            {
              CFArrayAppendValue(Mutable, v107);
            }
          }

          goto LABEL_93;
        }

LABEL_87:
        v108 = _sc_log != 1 && _sc_debug == 0;
        Mutable = v282;
        if (!v108)
        {
          v109 = __log_SCNetworkConfiguration();
          v110 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v109, v110))
          {
            v111 = _os_log_pack_size();
            *&v280 = &v272;
            v117 = v13;
            v118 = &v272 - ((MEMORY[0x1EEE9AC00](v111, v112, v113, v114, v115, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
            v119 = __error();
            v120 = _os_log_pack_fill(v118, v111, *v119, &dword_1AD2AD000, "skipping service : %@ : %@ : %@ (not hidden)");
            v121 = v9;
            v122 = SCNetworkServiceGetServiceID(ValueAtIndex);
            v123 = SCNetworkServiceGetName(ValueAtIndex);
            *v120 = v272;
            *(v120 + 4) = v122;
            v9 = v121;
            *(v120 + 12) = 2112;
            *(v120 + 14) = v123;
            *(v120 + 22) = 2112;
            *(v120 + 24) = v117;
            Mutable = v282;
            __SC_log_send(6, v109, v110, v118);
            goto LABEL_60;
          }
        }

LABEL_93:
        if (++v9 == v8)
        {
          goto LABEL_94;
        }
      }

      v50 = _sc_log != 1 && _sc_debug == 0;
      if (v50)
      {
        goto LABEL_93;
      }

      v51 = __log_SCNetworkConfiguration();
      v52 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v51, v52))
      {
        goto LABEL_93;
      }

      v53 = _os_log_pack_size();
      v59 = &v272 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = *__error();
      v61 = _os_log_pack_fill(v59, v53, v60, &dword_1AD2AD000, "skipping service : %@ : %@ (not enabled)", v272);
LABEL_59:
      v70 = v61;
      v71 = v9;
      v72 = SCNetworkServiceGetServiceID(ValueAtIndex);
      v73 = SCNetworkServiceGetName(ValueAtIndex);
      *v70 = v278;
      *(v70 + 4) = v72;
      v9 = v71;
      *(v70 + 12) = 2112;
      *(v70 + 14) = v73;
      Mutable = v282;
      __SC_log_send(6, v51, v52, v59);
LABEL_60:
      v5 = v277;
      goto LABEL_93;
    }
  }

LABEL_94:
  v124 = SCBridgeInterfaceCopyAll(a1);
  if (v124)
  {
    v125 = v124;
    *&v279 = CFArrayGetCount(v124);
    if (v279 >= 1)
    {
      v127 = 0;
      *&v126 = 138412290;
      v280 = v126;
      *&v278 = v125;
      do
      {
        *&v281 = v127;
        v128 = CFArrayGetValueAtIndex(v125, v127);
        MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v128);
        if (MemberInterfaces)
        {
          v130 = MemberInterfaces;
          v131 = CFArrayGetCount(MemberInterfaces);
          if (v131 >= 1)
          {
            v132 = v131;
            for (k = 0; k != v132; ++k)
            {
              v134 = CFArrayGetValueAtIndex(v130, k);
              v135 = SCNetworkInterfaceGetBSDName(v134);
              if (v135)
              {
                v136 = v135;
                if (thinRemove(Mutable, v135))
                {
                  if (_sc_log == 1 || _sc_debug != 0)
                  {
                    v138 = __log_SCNetworkConfiguration();
                    v139 = _SC_syslog_os_log_mapping(6);
                    if (__SC_log_enabled(6, v138, v139))
                    {
                      v140 = _os_log_pack_size();
                      v146 = &v272 - ((MEMORY[0x1EEE9AC00](v140, v141, v142, v143, v144, v145) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v147 = __error();
                      v148 = v140;
                      Mutable = v282;
                      v149 = _os_log_pack_fill(v146, v148, *v147, &dword_1AD2AD000, "skipping interface : %@ (bridge member)");
                      *v149 = v280;
                      *(v149 + 4) = v136;
                      __SC_log_send(6, v138, v139, v146);
                    }
                  }
                }
              }
            }
          }
        }

        v127 = v281 + 1;
        v125 = v278;
      }

      while (v281 + 1 != v279);
    }

    CFRelease(v125);
    a1 = v276;
    v5 = v277;
  }

  v150 = SCVLANInterfaceCopyAll(a1);
  if (v150)
  {
    v151 = v150;
    v152 = CFArrayGetCount(v150);
    if (v152 >= 1)
    {
      v154 = v152;
      v155 = 0;
      *&v153 = 138412290;
      v281 = v153;
      do
      {
        v156 = CFArrayGetValueAtIndex(v151, v155);
        PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v156);
        v158 = SCNetworkInterfaceGetBSDName(PhysicalInterface);
        if (v158)
        {
          v159 = v158;
          if (thinRemove(Mutable, v158))
          {
            if (_sc_log == 1 || _sc_debug != 0)
            {
              v161 = __log_SCNetworkConfiguration();
              v162 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v161, v162))
              {
                v163 = _os_log_pack_size();
                v169 = &v272 - ((MEMORY[0x1EEE9AC00](v163, v164, v165, v166, v167, v168) + 15) & 0xFFFFFFFFFFFFFFF0);
                v170 = __error();
                v171 = v163;
                Mutable = v282;
                v172 = _os_log_pack_fill(v169, v171, *v170, &dword_1AD2AD000, "skipping interface : %@ (vlan physical)");
                *v172 = v281;
                *(v172 + 4) = v159;
                __SC_log_send(6, v161, v162, v169);
              }
            }
          }
        }

        ++v155;
      }

      while (v154 != v155);
    }

    CFRelease(v151);
    v5 = v277;
  }

  if (!v5)
  {
    goto LABEL_149;
  }

  v173 = CFArrayGetCount(v5);
  if (v173 < 1)
  {
    goto LABEL_149;
  }

  v175 = v173;
  v176 = 0;
  v177 = 0;
  v178 = &_sc_log;
  *&v174 = 138412802;
  v279 = v174;
  do
  {
    v179 = CFArrayGetValueAtIndex(v5, v177);
    v180 = SCNetworkServiceGetInterface(v179);
    v181 = SCNetworkInterfaceGetBSDName(v180);
    if (v181)
    {
      v182 = v181;
      v287.length = CFArrayGetCount(Mutable);
      v287.location = 0;
      if (CFArrayContainsValue(Mutable, v287, v182))
      {
        if (*v178 == 1 || _sc_debug != 0 || _sc_verbose != 0)
        {
          v185 = __log_SCNetworkConfiguration();
          v186 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v185, v186))
          {
            v187 = _os_log_pack_size();
            *&v280 = &v272;
            v193 = MEMORY[0x1EEE9AC00](v187, v188, v189, v190, v191, v192);
            LODWORD(v281) = v176;
            v194 = &v272 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
            v195 = __error();
            v196 = _os_log_pack_fill(v194, v187, *v195, &dword_1AD2AD000, "thinned network service : %@ : %@ : %@");
            v197 = v178;
            v198 = SCNetworkServiceGetServiceID(v179);
            v199 = SCNetworkServiceGetName(v179);
            *v196 = v279;
            *(v196 + 4) = v198;
            v178 = v197;
            *(v196 + 12) = 2112;
            *(v196 + 14) = v199;
            *(v196 + 22) = 2112;
            *(v196 + 24) = v182;
            Mutable = v282;
            v200 = v194;
            v176 = v281;
            __SC_log_send(6, v185, v186, v200);
            v5 = v277;
          }
        }

        SCNetworkServiceRemove(v179);
        ++v176;
      }
    }

    ++v177;
  }

  while (v175 != v177);
  if (v176 > 0)
  {
    v201 = *v178 != 1 && _sc_debug == 0;
    if (v201 || (v202 = __log_SCNetworkConfiguration(), v203 = _SC_syslog_os_log_mapping(5), !__SC_log_enabled(5, v202, v203)))
    {
      v214 = 1;
    }

    else
    {
      v204 = _os_log_pack_size();
      v210 = &v272 - ((MEMORY[0x1EEE9AC00](v204, v205, v206, v207, v208, v209) + 15) & 0xFFFFFFFFFFFFFFF0);
      v211 = __error();
      v212 = _os_log_pack_fill(v210, v204, *v211, &dword_1AD2AD000, "Updating preferences.plist (thinned %d service%s)", v272, *(&v272 + 1));
      v213 = "s";
      if (v176 == 1)
      {
        v213 = "";
      }

      *v212 = 67109378;
      *(v212 + 4) = v176;
      *(v212 + 8) = 2080;
      *(v212 + 10) = v213;
      __SC_log_send(5, v202, v203, v210);
      v214 = 1;
    }
  }

  else
  {
LABEL_149:
    v214 = 0;
  }

  Value = SCPreferencesGetValue(v274, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v217 = CFArrayGetCount(Value);
    v218 = v282;
    if (v217 >= 1)
    {
      LODWORD(v278) = v214;
      v219 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v220 = CFArrayGetCount(Value);
      if (v220 >= 1)
      {
        v222 = v220;
        v223 = 0;
        v224 = 0;
        *&v221 = 138412290;
        v279 = v221;
        *&v280 = v219;
        while (1)
        {
          v225 = CFArrayGetValueAtIndex(Value, v224);
          v226 = CFDictionaryGetValue(v225, @"BSD Name");
          v288.length = CFArrayGetCount(v218);
          v288.location = 0;
          if (CFArrayContainsValue(v218, v288, v226))
          {
            v227 = CFDictionaryContainsKey(v225, @"Active");
            v229 = _sc_log == 1 || _sc_debug != 0;
            if (!v227)
            {
              if (_sc_verbose)
              {
                v229 = 1;
              }

              if (v229)
              {
                v244 = __log_SCNetworkConfiguration();
                v245 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v244, v245))
                {
                  v246 = _os_log_pack_size();
                  v252 = v223;
                  v223 = &v272 - ((MEMORY[0x1EEE9AC00](v246, v247, v248, v249, v250, v251) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v253 = __error();
                  v254 = v246;
                  v218 = v282;
                  v255 = _os_log_pack_fill(v223, v254, *v253, &dword_1AD2AD000, "thinned network interface : %@");
                  *v255 = v279;
                  *(v255 + 4) = v226;
                  v256 = v223;
                  LODWORD(v223) = v252;
                  __SC_log_send(6, v244, v245, v256);
                  v219 = v280;
                }
              }

              v223 = (v223 + 1);
              goto LABEL_173;
            }

            if (v229)
            {
              v230 = __log_SCNetworkConfiguration();
              v231 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v230, v231))
              {
                v232 = _os_log_pack_size();
                *&v281 = &v272;
                v238 = v223;
                v239 = &v272 - ((MEMORY[0x1EEE9AC00](v232, v233, v234, v235, v236, v237) + 15) & 0xFFFFFFFFFFFFFFF0);
                v240 = __error();
                v241 = v232;
                v218 = v282;
                v242 = _os_log_pack_fill(v239, v241, *v240, &dword_1AD2AD000, "skipping interface : %@ (active)");
                *v242 = v279;
                *(v242 + 4) = v226;
                v243 = v239;
                v223 = v238;
                v219 = v280;
                __SC_log_send(6, v230, v231, v243);
              }
            }
          }

          CFArrayAppendValue(v219, v225);
LABEL_173:
          if (v222 == ++v224)
          {
            goto LABEL_181;
          }
        }
      }

      LODWORD(v223) = 0;
LABEL_181:
      SCPreferencesSetValue(v274, @"Interfaces", v219);
      CFRelease(v219);
      v5 = v277;
      v214 = v278;
      if (v223 > 0)
      {
        v258 = _sc_log != 1 && _sc_debug == 0;
        if (v258 || (v259 = __log_SCNetworkConfiguration(), v260 = _SC_syslog_os_log_mapping(6), !__SC_log_enabled(6, v259, v260)))
        {
          v214 = 1;
        }

        else
        {
          v261 = _os_log_pack_size();
          v267 = &v272 - ((MEMORY[0x1EEE9AC00](v261, v262, v263, v264, v265, v266) + 15) & 0xFFFFFFFFFFFFFFF0);
          v268 = __error();
          v269 = v261;
          v218 = v282;
          v270 = _os_log_pack_fill(v267, v269, *v268, &dword_1AD2AD000, "Updating NetworkInterfaces.plist (thinned %d interface%s)", v272, *(&v272 + 1));
          v271 = "s";
          if (v223 == 1)
          {
            v271 = "";
          }

          *v270 = 67109378;
          *(v270 + 4) = v223;
          *(v270 + 8) = 2080;
          *(v270 + 10) = v271;
          __SC_log_send(6, v259, v260, v267);
          v214 = 1;
        }
      }
    }
  }

  else
  {
    v218 = v282;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v218);
  return v214;
}

uint64_t __SCNetworkConfigurationCleanServiceOrderIssues(const __SCPreferences *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v67 = a1;
  v1 = SCNetworkSetCopyAll(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count < 1)
    {
      LOBYTE(v6) = 0;
      goto LABEL_47;
    }

    v5 = Count;
    v6 = 0;
    v7 = 0;
    *&v4 = 138412546;
    v65 = v4;
    v60 = Count;
    v61 = v2;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v7);
      SetID = SCNetworkSetGetSetID(ValueAtIndex);
      ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
      if (!ServiceOrder)
      {
        goto LABEL_43;
      }

      v10 = ServiceOrder;
      v11 = CFArrayGetCount(ServiceOrder);
      if (v11 < 1)
      {
        goto LABEL_43;
      }

      v12 = v11;
      v62 = ValueAtIndex;
      v64 = v7;
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
      v15 = 0;
      do
      {
        v16 = CFArrayGetValueAtIndex(MutableCopy, v15);
        if (CFSetContainsValue(Mutable, v16))
        {
          if (_sc_log == 1 || _sc_debug != 0)
          {
            v18 = __log_SCNetworkConfiguration();
            v19 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v18, v19))
            {
              v20 = _os_log_pack_size();
              v26 = &v59 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
              v27 = __error();
              v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "set: %@, removing serviceID %@ (duplicate/removed)");
              *v28 = v65;
              *(v28 + 4) = SetID;
              *(v28 + 12) = 2112;
              *(v28 + 14) = v16;
              v29 = v18;
              v30 = v19;
              v31 = v26;
              goto LABEL_14;
            }
          }

          goto LABEL_24;
        }

        CFSetAddValue(Mutable, v16);
        v32 = SCNetworkServiceCopy(v67, v16);
        if (!v32)
        {
          if (_sc_log == 1 || _sc_debug != 0)
          {
            v35 = __log_SCNetworkConfiguration();
            v36 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v35, v36))
            {
              v37 = _os_log_pack_size();
              v43 = &v59 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
              v44 = __error();
              v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "set: %@, removing serviceID %@ (no service)");
              *v45 = v65;
              *(v45 + 4) = SetID;
              *(v45 + 12) = 2112;
              *(v45 + 14) = v16;
              v29 = v35;
              v30 = v36;
              v31 = v43;
LABEL_14:
              __SC_log_send(5, v29, v30, v31);
            }
          }

LABEL_24:
          CFArrayRemoveValueAtIndex(MutableCopy, v15);
          --v12;
          goto LABEL_25;
        }

        v33 = v32;
        if (__SCNetworkServiceExists(v32))
        {
          CFRelease(v33);
          ++v15;
          continue;
        }

        if (_sc_log == 1 || _sc_debug != 0)
        {
          v47 = __log_SCNetworkConfiguration();
          v48 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v47, v48))
          {
            v49 = _os_log_pack_size();
            v63 = &v59;
            v55 = &v59 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
            v56 = __error();
            v57 = _os_log_pack_fill(v55, v49, *v56, &dword_1AD2AD000, "set: %@, removing serviceID %@ (service already removed)");
            *v57 = v65;
            *(v57 + 4) = SetID;
            *(v57 + 12) = 2112;
            *(v57 + 14) = v16;
            __SC_log_send(5, v47, v48, v55);
          }
        }

        CFArrayRemoveValueAtIndex(MutableCopy, v15);
        --v12;
        CFRelease(v33);
LABEL_25:
        v6 = 1;
      }

      while (v15 < v12);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (MutableCopy)
      {
        v2 = v61;
        if (v6)
        {
          SCNetworkSetSetServiceOrder(v62, MutableCopy);
        }

        CFRelease(MutableCopy);
      }

      else
      {
        v2 = v61;
      }

      v5 = v60;
      v7 = v64;
LABEL_43:
      if (++v7 == v5)
      {
LABEL_47:
        CFRelease(v2);
        return v6;
      }
    }
  }

  LOBYTE(v6) = 0;
  return v6;
}

void thinInlineBackup(const __CFString *a1, const __SCPreferences *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = &v19 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "thinning [inline] backup: %@");
    *v14 = 138412290;
    *(v14 + 4) = a1;
    __SC_log_send(5, v4, v5, v12);
  }

  v15 = CFStringCreateWithFormat(0, 0, @"%@ : ", a1);
  v16 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  memset(&v19, 0, sizeof(v19));
  if (!strptime(v16, "%Y-%m-%d %H:%M:%S", &v19))
  {
    CFAllocatorDeallocate(0, v17);
LABEL_8:
    v18 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a1);
    goto LABEL_9;
  }

  v18 = CFStringCreateWithFormat(0, 0, @"preferences-%4d-%02d-%02d-%02d%02d%02d.plist", (v19.tm_year + 1900), (v19.tm_mon + 1), v19.tm_mday, v19.tm_hour, v19.tm_min, v19.tm_sec);
  CFAllocatorDeallocate(0, v17);
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_9:
  savePreferences(a2, v18, v15, 0, 0);
  CFRelease(v18);
  CFRelease(v15);
}

void thinInlineModel(const void *a1, const __SCPreferences *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = v17 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "thinning [per-model] backup: %@");
    *v14 = 138412290;
    *(v14 + 4) = a1;
    __SC_log_send(5, v4, v5, v12);
  }

  v15 = CFStringCreateWithFormat(0, 0, @"%@:", a1);
  v16 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a1);
  savePreferences(a2, v16, v15, @"Model", a1);
  CFRelease(v16);
  CFRelease(v15);
}

uint64_t thinRemove(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  return 1;
}

Boolean SCPreferencesAddValue(SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value)
{
  if (!prefs)
  {
    v6 = 3001;
    goto LABEL_5;
  }

  __SCPreferencesAccess(prefs);
  if (CFDictionaryContainsKey(*(prefs + 35), key))
  {
    v6 = 1005;
LABEL_5:
    _SCErrorSet(v6);
    return 0;
  }

  CFDictionaryAddValue(*(prefs + 35), key, value);
  result = 1;
  *(prefs + 305) = 1;
  return result;
}

Boolean SCPreferencesSetValue(SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value)
{
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    CFDictionarySetValue(*(prefs + 35), key, value);
    result = 1;
    *(prefs + 305) = 1;
  }

  else
  {
    _SCErrorSet(3001);
    return 0;
  }

  return result;
}

uint64_t SCPreferencesRemoveAllValues(uint64_t a1)
{
  if (a1)
  {
    __SCPreferencesAccess(a1);
    CFDictionaryRemoveAllValues(*(a1 + 280));
    result = 1;
    *(a1 + 305) = 1;
  }

  else
  {
    _SCErrorSet(3001);
    return 0;
  }

  return result;
}

Boolean SCPreferencesRemoveValue(SCPreferencesRef prefs, CFStringRef key)
{
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    if (CFDictionaryContainsKey(*(prefs + 35), key))
    {
      CFDictionaryRemoveValue(*(prefs + 35), key);
      result = 1;
      *(prefs + 305) = 1;
      return result;
    }

    v5 = 1004;
  }

  else
  {
    v5 = 3001;
  }

  _SCErrorSet(v5);
  return 0;
}

Boolean SCPreferencesCommitChanges(SCPreferencesRef prefs)
{
  v212 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
    return 0;
  }

  memset(&v211, 0, sizeof(v211));
  v2 = *(prefs + 112);
  if (!*(prefs + 112) && !SCPreferencesLock(prefs, 1u))
  {
    v19 = __log_SCPreferences();
    v20 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v19, v20))
    {
      v21 = _os_log_pack_size();
      v27 = &v209 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      *_os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "SCPreferencesLock() failed") = 0;
      __SC_log_send(6, v19, v20, v27);
    }

    return 0;
  }

  if (*(prefs + 39))
  {
    if (__SCPreferencesCommitChanges_helper(prefs))
    {
      *(prefs + 305) = 0;
      v3 = 1;
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (!*(prefs + 305))
  {
    goto LABEL_42;
  }

  if (__SCPreferencesIsEmpty(prefs) && (value = 0, (v4 = *(prefs + 12)) != 0) && CFDictionaryGetValueIfPresent(v4, @"remove-when-empty", &value) && (v5 = value, TypeID = CFBooleanGetTypeID(), v5) && CFGetTypeID(v5) == TypeID)
  {
    v7 = CFBooleanGetValue(value);
    v8 = *(prefs + 13);
    if (v7)
    {
      unlink(*(prefs + 13));
      memset(&v211, 0, sizeof(v211));
      goto LABEL_37;
    }
  }

  else
  {
    v8 = *(prefs + 13);
  }

  if (stat(v8, &v211) == -1)
  {
    if (*__error() != 2)
    {
      v72 = __error();
      _SCErrorSet(*v72);
      v73 = __log_SCPreferences();
      v74 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v73, v74))
      {
        v75 = _os_log_pack_size();
        v81 = &v209 - ((MEMORY[0x1EEE9AC00](v75, v76, v77, v78, v79, v80) + 15) & 0xFFFFFFFFFFFFFFF0);
        v82 = __error();
        v83 = _os_log_pack_fill(v81, v75, *v82, &dword_1AD2AD000, "stat() failed: %s", v209);
        v84 = __error();
        v85 = strerror(*v84);
        *v83 = 136315138;
        *(v83 + 4) = v85;
        __SC_log_send(6, v73, v74, v81);
      }

      goto LABEL_74;
    }

    memset(&v211, 0, sizeof(v211));
    v211.st_mode = 420;
    v211.st_uid = geteuid();
    v211.st_gid = getegid();
  }

  v9 = strlen(v8);
  v10 = MEMORY[0x1B26F3AA0](0, v9 + 5, 3558917367, 0);
  snprintf(v10, v9 + 5, "%s-new", v8);
  v12 = *(prefs + 12);
  if (!v12 || (v13 = CFDictionaryGetValue(v12, @"ProtectionClass")) == 0)
  {
    v29 = 0;
    goto LABEL_31;
  }

  v14 = v13;
  v15 = CFStringGetTypeID();
  if (CFGetTypeID(v14) == v15 && CFStringGetLength(v14) == 1)
  {
    CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
    if (CStringPtr)
    {
      v17 = *CStringPtr;
      if ((v17 - 71) >= 0xFFFFFFFA)
      {
        v29 = v17 - 64;
LABEL_31:
        file_safely = SC_create_file_safely(v10, v29, v211.st_mode, v11);
        if (file_safely == -1)
        {
          goto LABEL_73;
        }

        v31 = file_safely;
        fchown(file_safely, v211.st_uid, v211.st_gid);
        fchmod(v31, v211.st_mode);
        Data = CFPropertyListCreateData(0, *(prefs + 35), kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (!Data)
        {
          _SCErrorSet(1001);
          v86 = __log_SCPreferences();
          v87 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v86, v87))
          {
            v88 = _os_log_pack_size();
            v94 = &v209 - ((MEMORY[0x1EEE9AC00](v88, v89, v90, v91, v92, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
            v95 = __error();
            *_os_log_pack_fill(v94, v88, *v95, &dword_1AD2AD000, "CFPropertyListCreateData() failed") = 0;
            __SC_log_send(6, v86, v87, v94);
          }

          v96 = __log_SCPreferences();
          v97 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v96, v97))
          {
            v98 = _os_log_pack_size();
            v104 = &v209 - ((MEMORY[0x1EEE9AC00](v98, v99, v100, v101, v102, v103) + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = __error();
            v106 = _os_log_pack_fill(v104, v98, *v105, &dword_1AD2AD000, "  prefs = %s", v209);
            *v106 = 136315138;
            *(v106 + 4) = v8;
            __SC_log_send(6, v96, v97, v104);
          }

          CFAllocatorDeallocate(0, v10);
          close(v31);
          goto LABEL_74;
        }

        v33 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v33);
        if (writen(v31, BytePtr, Length) == -1)
        {
          v107 = __error();
          _SCErrorSet(*v107);
          v108 = __log_SCPreferences();
          v109 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v108, v109))
          {
            v110 = _os_log_pack_size();
            v116 = &v209 - ((MEMORY[0x1EEE9AC00](v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
            v117 = __error();
            v118 = _os_log_pack_fill(v116, v110, *v117, &dword_1AD2AD000, "writen() failed: %s", v209);
            v119 = __error();
            v120 = strerror(*v119);
            *v118 = 136315138;
            *(v118 + 4) = v120;
            __SC_log_send(6, v108, v109, v116);
          }

          v121 = __log_SCPreferences();
          v122 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v121, v122))
          {
            v123 = _os_log_pack_size();
            v129 = &v209 - ((MEMORY[0x1EEE9AC00](v123, v124, v125, v126, v127, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
            v130 = __error();
            v131 = _os_log_pack_fill(v129, v123, *v130, &dword_1AD2AD000, "  path = %s", v209);
            *v131 = 136315138;
            *(v131 + 4) = v10;
            __SC_log_send(6, v121, v122, v129);
          }

          unlink(v10);
          CFAllocatorDeallocate(0, v10);
          close(v31);
        }

        else
        {
          if (close(v31) != -1)
          {
            CFRelease(v33);
            rename(v10, v8, v36);
            if (v37 != -1)
            {
              CFAllocatorDeallocate(0, v10);
              if (stat(v8, &v211) == -1)
              {
                v184 = __error();
                _SCErrorSet(*v184);
                v185 = __log_SCPreferences();
                v186 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v185, v186))
                {
                  v187 = _os_log_pack_size();
                  v193 = &v209 - ((MEMORY[0x1EEE9AC00](v187, v188, v189, v190, v191, v192) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v194 = __error();
                  v195 = _os_log_pack_fill(v193, v187, *v194, &dword_1AD2AD000, "stat() failed: %s", v209);
                  v196 = __error();
                  v197 = strerror(*v196);
                  *v195 = 136315138;
                  *(v195 + 4) = v197;
                  __SC_log_send(6, v185, v186, v193);
                }

                v198 = __log_SCPreferences();
                v199 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v198, v199))
                {
                  v200 = _os_log_pack_size();
                  v206 = &v209 - ((MEMORY[0x1EEE9AC00](v200, v201, v202, v203, v204, v205) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v207 = __error();
                  v208 = _os_log_pack_fill(v206, v200, *v207, &dword_1AD2AD000, "  path = %s", v209);
                  *v208 = 136315138;
                  *(v208 + 4) = v10;
                  __SC_log_send(6, v198, v199, v206);
                }

                goto LABEL_74;
              }

LABEL_37:
              v38 = *(prefs + 18);
              if (v38)
              {
                CFRelease(v38);
              }

              *(prefs + 18) = __SCPSignatureFromStatbuf(&v211.st_dev);
              if (*(prefs + 305))
              {
                v39 = __log_SCPreferences();
                v40 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v39, v40))
                {
                  v41 = _os_log_pack_size();
                  v47 = &v209 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v48 = __error();
                  v49 = _os_log_pack_fill(v47, v41, *v48, &dword_1AD2AD000, "SCPreferences() commit: %s, size=%lld", v209, value);
                  v50 = *(prefs + 13);
                  v51 = __SCPreferencesPrefsSize(prefs);
                  *v49 = 136315394;
                  *(v49 + 4) = v50;
                  *(v49 + 12) = 2048;
                  *(v49 + 14) = v51;
LABEL_44:
                  __SC_log_send(6, v39, v40, v47);
                  goto LABEL_45;
                }

                goto LABEL_45;
              }

LABEL_42:
              v39 = __log_SCPreferences();
              v40 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v39, v40))
              {
                v52 = _os_log_pack_size();
                v47 = &v209 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
                v58 = __error();
                v59 = _os_log_pack_fill(v47, v52, *v58, &dword_1AD2AD000, "SCPreferences() commit: %s, w/no changes", v209);
                v60 = *(prefs + 13);
                *v59 = 136315138;
                *(v59 + 4) = v60;
                goto LABEL_44;
              }

LABEL_45:
              v61 = SCDynamicStoreNotifyValue(0, *(prefs + 23));
              if (v61)
              {
                v3 = v61;
                *(prefs + 305) = 0;
                goto LABEL_75;
              }

              v62 = __log_SCPreferences();
              v63 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v62, v63))
              {
                v64 = _os_log_pack_size();
                v70 = &v209 - ((MEMORY[0x1EEE9AC00](v64, v65, v66, v67, v68, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
                v71 = __error();
                *_os_log_pack_fill(v70, v64, *v71, &dword_1AD2AD000, "SCDynamicStoreNotifyValue() failed") = 0;
                __SC_log_send(6, v62, v63, v70);
              }

              v18 = 1001;
              goto LABEL_50;
            }

            v157 = __error();
            _SCErrorSet(*v157);
            v158 = __log_SCPreferences();
            v159 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v158, v159))
            {
              v160 = _os_log_pack_size();
              v166 = &v209 - ((MEMORY[0x1EEE9AC00](v160, v161, v162, v163, v164, v165) + 15) & 0xFFFFFFFFFFFFFFF0);
              v167 = __error();
              v168 = _os_log_pack_fill(v166, v160, *v167, &dword_1AD2AD000, "rename() failed: %s", v209);
              v169 = __error();
              v170 = strerror(*v169);
              *v168 = 136315138;
              *(v168 + 4) = v170;
              __SC_log_send(6, v158, v159, v166);
            }

            v171 = __log_SCPreferences();
            v172 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v171, v172))
            {
              v173 = _os_log_pack_size();
              v179 = &v209 - ((MEMORY[0x1EEE9AC00](v173, v174, v175, v176, v177, v178) + 15) & 0xFFFFFFFFFFFFFFF0);
              v180 = __error();
              v181 = _os_log_pack_fill(v179, v173, *v180, &dword_1AD2AD000, "  path = %s --> %s", v209, value);
              *v181 = 136315394;
              *(v181 + 4) = v10;
              *(v181 + 12) = 2080;
              *(v181 + 14) = v8;
              __SC_log_send(6, v171, v172, v179);
            }

LABEL_73:
            CFAllocatorDeallocate(0, v10);
            goto LABEL_74;
          }

          v132 = __error();
          _SCErrorSet(*v132);
          v133 = __log_SCPreferences();
          v134 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v133, v134))
          {
            v135 = _os_log_pack_size();
            v141 = &v209 - ((MEMORY[0x1EEE9AC00](v135, v136, v137, v138, v139, v140) + 15) & 0xFFFFFFFFFFFFFFF0);
            v142 = __error();
            v143 = _os_log_pack_fill(v141, v135, *v142, &dword_1AD2AD000, "close() failed: %s", v209);
            v144 = __error();
            v145 = strerror(*v144);
            *v143 = 136315138;
            *(v143 + 4) = v145;
            __SC_log_send(6, v133, v134, v141);
          }

          v146 = __log_SCPreferences();
          v147 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v146, v147))
          {
            v148 = _os_log_pack_size();
            v154 = &v209 - ((MEMORY[0x1EEE9AC00](v148, v149, v150, v151, v152, v153) + 15) & 0xFFFFFFFFFFFFFFF0);
            v155 = __error();
            v156 = _os_log_pack_fill(v154, v148, *v155, &dword_1AD2AD000, "  path = %s", v209);
            *v156 = 136315138;
            *(v156 + 4) = v10;
            __SC_log_send(6, v146, v147, v154);
          }

          unlink(v10);
          CFAllocatorDeallocate(0, v10);
        }

        CFRelease(v33);
        goto LABEL_74;
      }
    }
  }

  v18 = 1002;
LABEL_50:
  _SCErrorSet(v18);
LABEL_74:
  v3 = 0;
LABEL_75:
  if (!v2)
  {
    v182 = SCError();
    SCPreferencesUnlock(prefs);
    _SCErrorSet(v182);
  }

  return v3;
}

uint64_t __SCPreferencesCommitChanges_helper(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v32[0] = 0;
  v31 = 0;
  v30 = 0;
  v2 = *(a1 + 320);
  if (v2)
  {
    v3 = (a1 + 320);
    if (*(a1 + 305))
    {
      if (!_SCSerialize(*(a1 + 280), v32, 0, 0))
      {
        v31 = 1001;
        if (_sc_verbose)
        {
          v7 = __log_SCPreferences();
          v8 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v7, v8))
          {
            v9 = _os_log_pack_size();
            v15 = &v30 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
            v16 = __error();
            *_os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "_SCSerialize() failed") = 0;
            __SC_log_send(5, v7, v8, v15);
          }

          v17 = __log_SCPreferences();
          v18 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v17, v18))
          {
            v19 = _os_log_pack_size();
            v25 = &v30 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = __error();
            v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "  prefs = %s", v30);
            v28 = *(a1 + 104);
            *v27 = 136315138;
            *(v27 + 4) = v28;
            __SC_log_send(5, v17, v18, v25);
          }
        }

        goto LABEL_22;
      }

      v2 = *v3;
      v4 = v32[0];
    }

    else
    {
      v4 = 0;
    }

    v5 = _SCHelperExec(v2, 104, v4, &v31, &v30);
    if (v32[0])
    {
      CFRelease(v32[0]);
    }

    if (v5)
    {
      if (!v31)
      {
        if (*(a1 + 305))
        {
          v6 = *(a1 + 144);
          if (v6)
          {
            CFRelease(v6);
          }

          *(a1 + 144) = v30;
        }

        else if (v30)
        {
          CFRelease(v30);
        }

        *(a1 + 305) = 0;
        return 1;
      }
    }

    else if (*v3)
    {
      _SCHelperClose((a1 + 320));
    }
  }

  else
  {
    v31 = 1003;
  }

LABEL_22:
  if (v30)
  {
    CFRelease(v30);
  }

  _SCErrorSet(v31);
  return 0;
}

size_t writen(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      v7 = write(__fd, __buf, v6);
      if (v7 == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      __buf += v7;
      v6 -= v7;
    }

    while (v6);
  }

  return v3;
}

uint64_t SCNetworkInterfaceProviderCreate(const void *a1, const void *a2, uint64_t a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (!a1 || !a2 || a3)
  {
    v11 = 1002;
LABEL_11:
    _SCErrorSet(v11);
    return 0;
  }

  v5 = IPMonitorControlCreate();
  if (!v5)
  {
    v11 = 1001;
    goto LABEL_11;
  }

  v6 = v5;
  values[0] = IPMonitorControlCopyInterfaceAdvisoryNotificationKey(@"[^/]+");
  v7 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
  CFRelease(values[0]);
  v8 = dispatch_queue_create("SCNetworkInterfaceProvider", 0);
  if (__SCNetworkInterfaceProviderRegisterClass_once != -1)
  {
    SCNetworkInterfaceProviderCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  v10 = StoreObjectWrapperAllocate(Instance, v7, v8, &v13);
  CFRelease(v7);
  if (!v10)
  {
    dispatch_release(v8);
    CFRelease(Instance);
    CFRelease(v6);
    return 0;
  }

  *(Instance + 16) = v6;
  *(Instance + 24) = v10;
  *(Instance + 32) = v13;
  *(Instance + 40) = v8;
  *(Instance + 56) = CFRetain(a2);
  *(Instance + 64) = CFRetain(a1);
  return Instance;
}

const __SCDynamicStore *StoreObjectWrapperAllocate(uint64_t a1, const __CFArray *a2, NSObject *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  context.version = xmmword_1F22559E0;
  *&context.retain = *off_1F22559F0;
  context.copyDescription = qword_1F2255A00;
  v8 = malloc_type_malloc(0x10uLL, 0x10C0040AE459949uLL);
  *v8 = a1;
  v8[2] = 1;
  context.info = v8;
  v9 = SCDynamicStoreCreate(0, @"SCNetworkInterfaceProvider", StoreHandleChanges, &context);
  if (!v9)
  {
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v22, v23))
    {
      v24 = _os_log_pack_size();
      v30 = &context - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "%@: SCDynamicStoreCreate failed", context.version);
      *v32 = 138412290;
      *(v32 + 4) = @"SCNetworkInterfaceProvider";
      __SC_log_send(5, v22, v23, v30);
    }

    goto LABEL_13;
  }

  v10 = v9;
  if (!SCDynamicStoreSetNotificationKeys(v9, 0, a2))
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
      v33 = _os_log_pack_size();
      v19 = &context - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      v21 = _os_log_pack_fill(v19, v33, v39, &dword_1AD2AD000, "%@: SCDynamicStoreSetNoticationKeys failed", context.version);
      goto LABEL_11;
    }

LABEL_12:
    CFRelease(v10);
LABEL_13:
    ObjectWrapperRelease(v8);
    v10 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  if (a3 && !SCDynamicStoreSetDispatchQueue(v10, a3))
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = &context - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill(v19, v13, v20, &dword_1AD2AD000, "%@: SCDynamicStoreSetDispatchQueue failed", context.version);
LABEL_11:
      *v21 = 138412290;
      *(v21 + 4) = @"SCNetworkInterfaceProvider";
      __SC_log_send(5, v11, v12, v19);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_14:
  *a4 = v8;
  return v10;
}

uint64_t StoreHandleChanges(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *a3;
  if (*a3)
  {

    return SCNetworkInterfaceProviderCheck(result);
  }

  return result;
}

void SCNetworkInterfaceProviderSetEventHandler(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SCNetworkInterfaceProviderSetEventHandler_block_invoke;
    block[3] = &unk_1E79BD6B8;
    block[4] = a2;
    block[5] = a1;
    dispatch_sync(v2, block);
  }
}

void __SCNetworkInterfaceProviderSetEventHandler_block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 72))
  {
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v2, v3))
    {
      return;
    }

    v4 = _os_log_pack_size();
    v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = *__error();
    v7 = _os_log_pack_fill(v5, v4, v6, &dword_1AD2AD000, "%s: call SCNetworkInterfaceSetEventHandler before  SCNetworkInterfaceProviderResume");
LABEL_7:
    *v7 = 136315138;
    *(v7 + 4) = "SCNetworkInterfaceProviderSetEventHandler_block_invoke";
    __SC_log_send(5, v2, v3, v5);
    return;
  }

  if (*(v1 + 48))
  {
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v2, v3))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v5 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *__error();
    v7 = _os_log_pack_fill(v5, v8, v9, &dword_1AD2AD000, "%s: ignoring second invocation of SCNetworkInterfaceSetEventHandler");
    goto LABEL_7;
  }

  *(*(a1 + 40) + 48) = _Block_copy(*(a1 + 32));
}

void SCNetworkInterfaceProviderResume(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __SCNetworkInterfaceProviderResume_block_invoke;
  v2[3] = &__block_descriptor_tmp_3;
  v2[4] = a1;
  dispatch_async(v1, v2);
}

uint64_t __SCNetworkInterfaceProviderResume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 72))
  {
    *(result + 72) = 1;

    return SCNetworkInterfaceProviderCheck(result);
  }

  return result;
}

uint64_t SCNetworkInterfaceProviderCheck(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    if (*(result + 48))
    {
      result = IPMonitorControlAnyInterfaceAdvisoryIsSet(*(result + 16));
      if (*(v1 + 73) != result)
      {
        v2 = result;
        result = (*(*(v1 + 48) + 16))();
        *(v1 + 73) = v2;
      }
    }
  }

  return result;
}

void __SCNetworkInterfaceProviderDeallocate(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ____SCNetworkInterfaceProviderDeallocate_block_invoke;
    v2[3] = &__block_descriptor_tmp_5;
    v2[4] = a1;
    dispatch_sync(v1, v2);
  }

  else
  {

    SCNetworkInterfaceProviderDeallocate(a1);
  }
}

__CFString *__SCNetworkInterfaceProviderCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkInterfaceProvider %@ %@ <%p>", a1[8], a1[7], a1);
  return Mutable;
}

void SCNetworkInterfaceProviderDeallocate(uint64_t a1)
{
  *(a1 + 72) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *v3 = 0;
    ObjectWrapperRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }
}

void ObjectWrapperRelease(atomic_uint *a1)
{
  add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1)
  {

    free(a1);
  }

  else if (add_explicit <= 1)
  {
    ObjectWrapperRelease_cold_1();
  }
}

CFStringRef SCPreferencesPathCreateUniqueChild(SCPreferencesRef prefs, CFStringRef prefix)
{
  theDict[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v4 = 3001;
    goto LABEL_6;
  }

  theDict[0] = 0;
  if (getPath(prefs, prefix, theDict))
  {
    if (CFDictionaryContainsKey(theDict[0], @"__LINK__"))
    {
      v4 = 1001;
LABEL_6:
      _SCErrorSet(v4);
      return 0;
    }
  }

  else if (SCError() != 1004)
  {
    return 0;
  }

  v6 = CFUUIDCreate(0);
  v7 = CFUUIDCreateString(0, v6);
  v5 = CFStringCreateWithFormat(0, 0, @"%@/%@", prefix, v7);
  CFRelease(v7);
  CFRelease(v6);
  v8 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    SCPreferencesPathCreateUniqueChild_cold_1();
  }

  v9 = v8;
  if (!setPath(prefs, v5, v8))
  {
    CFRelease(v5);
    v5 = 0;
  }

  CFRelease(v9);
  return v5;
}

uint64_t getPath(const __SCPreferences *a1, const __CFString *a2, const __CFDictionary **a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = normalizePath(a2);
  if (!v5)
  {
    _SCErrorSet(1004);
    return 0;
  }

  v6 = v5;
  v22[0] = 0;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v18 = v6;
    goto LABEL_22;
  }

  v8 = 0;
  v9 = 0;
  while (2)
  {
    v10 = 0;
    v11 = Count - 1;
    v12 = Count - 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
      if (v10)
      {
        Value = CFDictionaryGetValue(v8, ValueAtIndex);
      }

      else
      {
        v15 = CFArrayGetValueAtIndex(v6, 0);
        Value = SCPreferencesGetValue(a1, v15);
      }

      v8 = Value;
      if (!Value)
      {
        goto LABEL_19;
      }

      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) != TypeID)
      {
        goto LABEL_19;
      }

      if (v10 < v11 && CFDictionaryGetValueIfPresent(v8, @"__LINK__", v22))
      {
        break;
      }

      ++v10;
      if (--v12 == -1)
      {
        *a3 = v8;
        v20 = 1;
        goto LABEL_23;
      }
    }

    if (v9 == 8)
    {
      v19 = 3006;
      goto LABEL_20;
    }

    v17 = normalizePath(v22[0]);
    if (!v17)
    {
LABEL_19:
      v19 = 1004;
LABEL_20:
      _SCErrorSet(v19);
      v20 = 0;
      goto LABEL_23;
    }

    v18 = v17;
    ++v9;
    v23.location = v10 + 1;
    v23.length = v12;
    CFArrayAppendArray(v17, v6, v23);
    CFRelease(v6);
    Count = CFArrayGetCount(v18);
    v6 = v18;
    if (Count >= 1)
    {
      continue;
    }

    break;
  }

LABEL_22:
  __SCPreferencesAccess(a1);
  *a3 = *(a1 + 35);
  v20 = 1;
  v6 = v18;
LABEL_23:
  CFRelease(v6);
  return v20;
}

uint64_t setPath(uint64_t a1, const __CFString *a2, const void *a3)
{
  v3 = a3;
  value[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) != TypeID)
    {
      v22 = 1002;
LABEL_24:
      _SCErrorSet(v22);
      return 0;
    }
  }

  v7 = normalizePath(a2);
  if (!v7)
  {
    v22 = 1004;
    goto LABEL_24;
  }

  v8 = v7;
  value[0] = 0;
  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    v21 = v8;
LABEL_26:
    __SCPreferencesAccess(a1);
    v24 = *(a1 + 280);
    if (v24)
    {
      CFRelease(v24);
    }

    if (v3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    *(a1 + 280) = MutableCopy;
    v23 = 1;
    *(a1 + 305) = 1;
    goto LABEL_54;
  }

  v10 = Count;
  v11 = 0;
  v39 = 0;
  v12 = MEMORY[0x1E695E9C0];
LABEL_6:
  v13 = v10 - 1;
  Mutable = CFArrayCreateMutable(0, v10 - 1, v12);
  v15 = v10 - 2;
  if (v10 < 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v10 - 1);
    v29 = SCPreferencesGetValue(a1, ValueAtIndex);
    goto LABEL_33;
  }

  v16 = 0;
  do
  {
    v17 = CFArrayGetValueAtIndex(v8, v16);
    if (v16)
    {
      v18 = CFDictionaryGetValue(v11, v17);
    }

    else
    {
      v18 = SCPreferencesGetValue(a1, v17);
    }

    v11 = v18;
    if (v18)
    {
      CFArrayAppendValue(Mutable, v18);
      v19 = CFDictionaryGetTypeID();
    }

    else
    {
      v11 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      v19 = CFDictionaryGetTypeID();
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    if (CFGetTypeID(v11) != v19)
    {
      goto LABEL_30;
    }

    if (CFDictionaryGetValueIfPresent(v11, @"__LINK__", value))
    {
      if (v39 == 8)
      {
        v26 = 3006;
LABEL_31:
        _SCErrorSet(v26);
        v23 = 0;
        if (Mutable)
        {
LABEL_52:
          CFRelease(Mutable);
        }

        goto LABEL_53;
      }

      v20 = normalizePath(value[0]);
      if (!v20)
      {
LABEL_30:
        v26 = 1004;
        goto LABEL_31;
      }

      v21 = v20;
      ++v39;
      v41.length = v13 - v16;
      v41.location = v16 + 1;
      CFArrayAppendArray(v20, v8, v41);
      CFRelease(v8);
      CFRelease(Mutable);
      v10 = CFArrayGetCount(v21);
      v8 = v21;
      v12 = MEMORY[0x1E695E9C0];
      if (v10 < 1)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    ++v16;
  }

  while (v13 != v16);
  v27 = CFArrayGetValueAtIndex(v8, v13);
  v28 = CFArrayGetValueAtIndex(Mutable, v15);
  v29 = CFDictionaryGetValue(v28, v27);
LABEL_33:
  v30 = v29;
  if (v29)
  {
    v31 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v30) != v31)
    {
      v26 = 1002;
      goto LABEL_31;
    }
  }

  if (v3)
  {
    v3 = CFRetain(v3);
  }

  while (1)
  {
    v32 = CFArrayGetValueAtIndex(v8, v13);
    if (!v13)
    {
      break;
    }

    v33 = CFArrayGetValueAtIndex(Mutable, --v13);
    v34 = CFDictionaryCreateMutableCopy(0, 0, v33);
    v35 = v34;
    if (v3)
    {
      CFDictionarySetValue(v34, v32, v3);
      CFRelease(v3);
    }

    else
    {
      CFDictionaryRemoveValue(v34, v32);
      if (!CFDictionaryGetCount(v35))
      {
        CFRelease(v35);
        v3 = 0;
        goto LABEL_42;
      }
    }

    v3 = v35;
LABEL_42:
    if (v13 + 1 <= 0)
    {
      v36 = 0;
      v23 = 0;
      if (v3)
      {
LABEL_50:
        CFRelease(v3);
        v23 = v36;
      }

      if (!Mutable)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  if (v3)
  {
    v36 = SCPreferencesSetValue(a1, v32, v3);
    goto LABEL_50;
  }

  v23 = SCPreferencesRemoveValue(a1, v32);
  if (Mutable)
  {
    goto LABEL_52;
  }

LABEL_53:
  v21 = v8;
LABEL_54:
  CFRelease(v21);
  return v23;
}