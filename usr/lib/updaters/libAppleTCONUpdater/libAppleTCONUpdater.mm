uint64_t AppleTCONDevice::getIORegPropertyValue(AppleTCONDevice *this, const __CFString *a2, unsigned __int8 *a3, int a4)
{
  v4 = 3758097084;
  v5 = *(this + 6);
  if (!v5)
  {
    return 3758097088;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v5, a2, *MEMORY[0x29EDB8ED8], 0);
  v10 = CFProperty;
  if (!CFProperty)
  {
    v15 = 0;
    v4 = 3758097086;
LABEL_9:
    AMSupportSafeRelease();
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    AppleTCONLoggingLogMsg("IOReg (%s) error: %s\n", CStringPtr, v15);
    return v4;
  }

  v11 = CFGetTypeID(CFProperty);
  if (v11 != CFDataGetTypeID())
  {
    v15 = "invalid type";
    goto LABEL_9;
  }

  Length = CFDataGetLength(v10);
  if (Length != a4)
  {
    v15 = "invalid length";
    goto LABEL_9;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(v10);
  if (!BytePtr)
  {
    v15 = "invalid data pointer";
    goto LABEL_9;
  }

  memcpy(a3, BytePtr, v13);
  AMSupportSafeRelease();
  return 0;
}

uint64_t AppleTCONDP835Device::eraseDeviceEEPROM(AppleTCONDP835Device *this, int a2, unsigned int a3)
{
  while (a3)
  {
    if (a3 >= 0x1000)
    {
      v4 = 4096;
    }

    else
    {
      v4 = a3;
    }

    v8 = v4;
    v5 = IOAVDisplayMemoryWrite();
    a3 -= v8;
    if (v5)
    {
      v6 = v5;
      AppleTCONLoggingLogMsg("erase eeprom error (0x%08x): %s\n", v5, "failed to erase");
      return v6;
    }
  }

  return 0;
}

uint64_t AppleTCONDP835Device::writeDeviceEEPROM(AppleTCONDP835Device *this, int a2, const unsigned __int8 *a3, unsigned int a4)
{
  while (a4)
  {
    if (a4 >= 0x1000)
    {
      v5 = 4096;
    }

    else
    {
      v5 = a4;
    }

    v6 = IOAVDisplayMemoryWrite();
    a4 -= v5;
    if (v6)
    {
      v7 = v6;
      AppleTCONLoggingLogMsg("write eeprom error (0x%08x): %s\n", v6, "failed to write");
      return v7;
    }
  }

  return 0;
}

uint64_t AppleTCONDP835Device::waitForDeviceReady(AppleTCONDP835Device *this)
{
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getOptionsValue(AppleTCONDP835Device *this, const __CFDictionary *a2, const __CFString *a3, uint64_t Value)
{
  v5 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.%@", a3);
  if (v5)
  {
    v6 = v5;
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      v8 = ValueForKeyPathInDict;
      v9 = CFGetTypeID(ValueForKeyPathInDict);
      if (v9 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v8);
      }
    }

    CFRelease(v6);
  }

  return Value;
}

void AppleTCONDP835Device::AppleTCONDP835Device(AppleTCONDP835Device *this, int a2)
{
  *this = &unk_2A20229E8;
  v7 = 0;
  *(this + 2) = 257;
  *(this + 69) = 0;
  *(this + 6) = a2;
  v3 = IOServiceMatching("AppleTCONControl");
  if (v3)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v3);
    *(this + 10) = MatchingService;
    if (MatchingService)
    {
      v5 = IOAVDisplayMemoryCreateWithName();
      *(this + 2) = v5;
      if (v5)
      {
        v6 = IOAVDisplayMemoryCreateWithName();
        *(this + 4) = v6;
        if (v6)
        {
          if (AppleTCONDP835Device::getPRODStatus(this, &v7 + 3))
          {
            AppleTCONLoggingLogMsg("Failed to get Prod status\n");
          }

          else
          {
            *(this + 9) = HIBYTE(v7) == 1;
            if (AppleTCONDP835Device::getSDOMStatus(this, &v7 + 3))
            {
              AppleTCONLoggingLogMsg("Failed to get SDOM status\n");
            }

            else
            {
              *(this + 8) = HIBYTE(v7) == 1;
              if (IOAVDisplayMemoryRead())
              {
                AppleTCONLoggingLogMsg("Failed to get boot status\n");
              }

              else
              {
                *(this + 22) = 0;
                *(this + 46) = 0;
                if ((~HIBYTE(v7) & 7) != 0)
                {
                  AppleTCONLoggingLogMsg("Unexpected boot status: 0x%02x\n", HIBYTE(v7));
                }

                else if (AppleTCONDP835Device::getBundleVer(this, &v7))
                {
                  AppleTCONLoggingLogMsg("Failed to get bundle version\n");
                }

                else
                {
                  *(this + 44) = v7;
                  *(this + 45) = *(&v7 + 1);
                }

                *(this + 47) = 0;
                *(this + 49) = 0;
                *(this + 11) = 1;
              }
            }
          }
        }

        else
        {
          AppleTCONLoggingLogMsg("Failed to get eepromRef handle\n");
        }
      }

      else
      {
        AppleTCONLoggingLogMsg("Failed to get memoryRef handle\n");
      }
    }

    else
    {
      AppleTCONLoggingLogMsg("Failed to find AppleTCONControl service\n");
    }
  }

  else
  {
    AppleTCONLoggingLogMsg("Failed to create AppleTCONControl matching dictionary\n");
  }

  AppleTCONLoggingLogMsg("AppleTconDev:(%d:%d:%d:0x%02x:0x%02x:0x%02x)\n", *(this + 11), *(this + 8), *(this + 9), *(this + 44), *(this + 45), *(this + 46));
}

void AppleTCONDP835Device::~AppleTCONDP835Device(AppleTCONDP835Device *this)
{
  *this = &unk_2A20229E8;
  v2 = *(this + 6);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  *this = &unk_2A2022A40;
}

{
  AppleTCONDP835Device::~AppleTCONDP835Device(this);

  JUMPOUT(0x29C2B3CF0);
}

uint64_t AppleTCONDP835Device::eventCmdQueryInfo(AppleTCONDP835Device *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  *v34 = 0;
  v35 = 0;
  *bytes = 0;
  *&bytes[8] = 0;
  valuePtr = 0;
  v31 = 0;
  OptionsValue = AppleTCONDP835Device::getOptionsValue(this, a2, @"FuseSDOM", 0);
  *(this + 64) = OptionsValue;
  v7 = AppleTCONDP835Device::getOptionsValue(OptionsValue, a2, @"FusePROD", 0);
  *(this + 65) = v7;
  v8 = AppleTCONDP835Device::getOptionsValue(v7, a2, @"RestoreInternal", 0);
  *(this + 66) = v8;
  v9 = AppleTCONDP835Device::getOptionsValue(v8, a2, @"SkipSameVersion", 1);
  v10 = 0;
  *(this + 67) = v9;
  if (*(this + 11))
  {
    if (AppleTCONDP835Device::getBoardID(this, &v31))
    {
      v29 = "getBoardID failed";
    }

    else
    {
      *(this + 15) = v31;
      v32 = 0;
      v12 = IOAVDisplayMemoryRead();
      if (v12)
      {
        v10 = v12;
        v29 = "getHWCID failed";
        goto LABEL_30;
      }

      v13 = 0;
      v14 = v32;
      if ((v32 > 0xDu || ((1 << v32) & 0x23FF) == 0) && v32 - 256 >= 6)
      {
        v13 = 1;
      }

      if (*(this + 8))
      {
        v13 = 1;
      }

      else if (!*(this + 64))
      {
        v13 = 1;
      }

      v10 = 3758097085;
      v15 = *(this + 69) | v13;
      *(this + 69) = v15;
      AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdQueryInfo: boardID=0x%08x HWCID=0x%08x personalize=%u\n", *(this + 15), v14, v15);
      v16 = *MEMORY[0x29EDB8ED8];
      v17 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, this + 60);
      if (!v17)
      {
        v29 = "boardID alloc failed";
        goto LABEL_30;
      }

      v18 = v17;
      v19 = AppleTCONDP835DeviceRestoreTagForBoardID(3, *(this + 15));
      CFDictionaryAddValue(a3, v19, v18);
      CFRelease(v18);
      if (AppleTCONDP835Device::getChipID(this, &valuePtr))
      {
        v29 = "getChipID failed";
      }

      else
      {
        v20 = CFNumberCreate(v16, kCFNumberIntType, &valuePtr);
        if (!v20)
        {
          v29 = "chipID alloc failed";
          goto LABEL_30;
        }

        v21 = v20;
        v22 = AppleTCONDP835DeviceRestoreTagForBoardID(2, *(this + 15));
        CFDictionaryAddValue(a3, v22, v21);
        CFRelease(v21);
        if (!*(this + 69))
        {
LABEL_21:
          AppleTCONDP835DeviceRestoreTagForBoardID(5, *(this + 15));
          AMSupportCFDictionarySetBoolean();
          AppleTCONDP835DeviceRestoreTagForBoardID(7, *(this + 15));
          AMSupportCFDictionarySetInteger32();
          return 0;
        }

        *bytes = AppleTCONDP835Device::getNonce(unsigned char *,unsigned int)::nonceData;
        v23 = CFDataCreate(v16, bytes, 16);
        if (!v23)
        {
          v29 = "nonce alloc failed";
          goto LABEL_30;
        }

        v24 = v23;
        v25 = AppleTCONDP835DeviceRestoreTagForBoardID(8, *(this + 15));
        CFDictionaryAddValue(a3, v25, v24);
        CFRelease(v24);
        if (!AppleTCONDP835Device::getECID(this, v34))
        {
          v26 = CFDataCreate(v16, v34, 16);
          if (v26)
          {
            v27 = v26;
            v28 = AppleTCONDP835DeviceRestoreTagForBoardID(10, *(this + 15));
            CFDictionaryAddValue(a3, v28, v27);
            CFRelease(v27);
            goto LABEL_21;
          }

          v29 = "ecid alloc failed";
LABEL_30:
          AppleTCONLoggingLogMsg("Dev:CmdQueryInfo failure %s\n", v29);
          return v10;
        }

        v29 = "getECID failed";
      }
    }

    v10 = 15;
    goto LABEL_30;
  }

  return v10;
}

uint64_t AppleTCONDP835Device::isFWComponentsUpdateRequired(AppleTCONDP835Device *this, CFDictionaryRef theDict)
{
  v20 = 0;
  *buffer = 0;
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  v4 = Value;
  if (!Value || (v5 = CFGetTypeID(Value), v5 != CFDataGetTypeID()))
  {
    v15 = "firmware data type invalid ";
    goto LABEL_25;
  }

  v6 = *MEMORY[0x29EDB8ED8];
  v7 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v4, 0, 0, 0);
  if (!v7 || (v8 = CFGetTypeID(v7), v8 != CFDictionaryGetTypeID()))
  {
    v15 = "fw dict create failed";
    goto LABEL_25;
  }

  if (!CFStringCreateWithFormat(v6, 0, @"%u.%s.%s", *(this + 15), "nvm_image", "Payload"))
  {
    v15 = "nvm ver string create failed";
    goto LABEL_25;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict || (v10 = ValueForKeyPathInDict, v11 = CFGetTypeID(ValueForKeyPathInDict), v11 != CFDataGetTypeID()))
  {
    v15 = "bundle payload type invalid";
    goto LABEL_25;
  }

  v21.location = 3006464;
  v21.length = 3;
  CFDataGetBytes(v10, v21, buffer);
  *(this + 49) = v20;
  *(this + 47) = buffer[1];
  *(this + 48) = buffer[0];
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: internal:%u skipSameVersion:%u\n", *(this + 66), *(this + 67));
  v12 = buffer[1] & 0x3E;
  v13 = *(this + 44) & 0x3E;
  if (v12 < v13)
  {
    v15 = "bundle major ver < current major ver";
    goto LABEL_25;
  }

  if (v12 == v13)
  {
    v14 = *(this + 45);
    if (buffer[0] < v14)
    {
      v15 = "bundle minor ver < current minor ver";
      goto LABEL_25;
    }

    if (buffer[0] == v14)
    {
      if (*(this + 66) && !*(this + 67))
      {
        if (v20 < *(this + 46))
        {
          v15 = "bundle extent ver < current extent ver";
          goto LABEL_25;
        }
      }

      else if (v20 <= *(this + 46))
      {
        v15 = "bundle extent ver <= current extent ver";
LABEL_25:
        AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: %s\n", v15);
        v17 = 0;
        v16 = "Skipping";
        goto LABEL_18;
      }
    }
  }

  v16 = "Performing";
  v17 = 1;
LABEL_18:
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: %s update to 0x%02x:0x%02x:0x%02x\n", v16, *(this + 47), *(this + 48), *(this + 49));
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v17;
}

uint64_t AppleTCONDP835Device::updateFWComponent(AppleTCONDP835Device *this, int a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::updateFWComponent: component=0x%02x, componentDataLength=0x%08x\n", a2, Length);
  v7 = 0;
  v8 = &unk_299E888FC;
  v9 = 25;
  while (1)
  {
    if (a2 == 4)
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = v10 + *(this + 14);
      v13 = AppleTCONDP835Device::eraseDeviceEEPROM(this, v12, *v8);
      if (v13)
      {
        v16 = v13;
        v18 = "eraseDeviceEEPROM failed";
        goto LABEL_15;
      }

      if (!v7)
      {
        v7 = v10;
      }

      v14 = v11 >= Length ? Length : v11;
      v15 = AppleTCONDP835Device::writeDeviceEEPROM(this, *(this + 14) + v10, &BytePtr[v12], v14);
      if (v15)
      {
        break;
      }
    }

    v8 += 4;
    if (!--v9)
    {
      return 0;
    }
  }

  v16 = v15;
  v18 = "writeDeviceEEPROM failed";
LABEL_15:
  AppleTCONLoggingLogMsg("update fw component error:%s\n", v18);
  return v16;
}

uint64_t AppleTCONDP835Device::eventCmdPerformNextStage(AppleTCONDP835Device *this, const __CFDictionary *a2, CFDictionaryRef theDict, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  *v23 = 0;
  *v22 = 0;
  isFWComponentsUpdateRequired = AppleTCONDP835Device::isFWComponentsUpdateRequired(this, theDict);
  v8 = *(this + 64);
  if (*(this + 8))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  v10 = !v9;
  AppleTCONLoggingLogMsg("Fuse SDOM (%d:%d)\n", *(this + 8), v8);
  if (*(this + 10))
  {
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: update done\n");
LABEL_43:
    v18 = 0;
    v17 = 0;
    goto LABEL_37;
  }

  if (isFWComponentsUpdateRequired)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if ((v11 & 1) == 0)
  {
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: update not required\n");
    goto LABEL_43;
  }

  if (!*(this + 8) && !*(this + 64))
  {
    goto LABEL_51;
  }

  v12 = v10 ^ 1;
  if (!*(this + 69))
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0 && AppleTCONDP835Device::updateOTP(this) || AppleTCONDP835Device::startFWUpdate(this))
  {
    goto LABEL_51;
  }

  if (AppleTCONDP835Device::readFWPointer(this, &v23[1], v23))
  {
    v13 = 3145728;
    v14 = 0x100000;
    v23[0] = 0x100000;
    v23[1] = 3145728;
  }

  else
  {
    v14 = v23[0];
    v13 = v23[1];
  }

  *(this + 13) = v13;
  *(this + 14) = v14;
  if (!AppleTCONDevice::getIORegPropertyValue(this, @"enforce-pcds-valid", v22, 4))
  {
    if (*v22)
    {
      v24 = 256;
      if (sysctlbyname("kern.bootargs", &__s1, &v24, 0, 0) || !strstr(&__s1, "enforce-pcds-valid=0"))
      {
        if (!IOAVDisplayMemoryRead())
        {
          *(this + 68) = 0;
          if (!IOAVDisplayMemoryRead())
          {
            *(this + 68) = 0;
          }
        }

        goto LABEL_51;
      }
    }
  }

  if (AppleTCONDP835Device::updateFWComponents(this, theDict) || AppleTCONDP835Device::writeAndVerifyFWPointer(this, *(this + 14), &v23[1], v23))
  {
LABEL_51:
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure %s\n");
LABEL_52:
    v17 = 0;
    v16 = 1;
    v18 = 11;
    goto LABEL_39;
  }

  v15 = v23[0];
  *(this + 13) = v23[1];
  *(this + 14) = v15;
  if (AppleTCONDP835Device::endFWUpdate(this))
  {
    v20 = "end update failed";
    goto LABEL_49;
  }

  if (AppleTCONDP835Device::getBundleVer(this, &__s1))
  {
    v20 = "failed to read bundle version after update";
    goto LABEL_49;
  }

  AppleTCONLoggingLogMsg("expected bundle version: 0x%02x:0x%02x:0x%02x, actual bundle version: 0x%02x:0x%02x:0x%02x\n", *(this + 47), *(this + 48), *(this + 49), __s1, v26, v27);
  if (__s1 != *(this + 47) || v26 != *(this + 48) || v27 != *(this + 49))
  {
    v20 = "bundle version after update differs from update bundle version";
LABEL_49:
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure %s\n", v20);
    if (!AppleTCONDP835Device::startFWUpdate(this))
    {
      if (!AppleTCONDP835Device::writeAndVerifyFWPointer(this, *(this + 14), &v23[1], v23))
      {
        v21 = v23[0];
        *(this + 13) = v23[1];
        *(this + 14) = v21;
      }

      AppleTCONDP835Device::endFWUpdate(this);
    }

    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure: attempt to revert FW pointer %s\n");
    goto LABEL_52;
  }

  v16 = *(this + 69);
  v17 = 1;
  v18 = 0;
  if (!v16)
  {
    *(this + 69) = 1;
    goto LABEL_39;
  }

LABEL_37:
  v16 = 1;
LABEL_39:
  *(this + 10) = v16;
  *a4 = v16;
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: didUpdate=%u personalize=%u updateDone=%u\n", v17, *(this + 69), *(this + 10));
  return v18;
}

void AppleTCONDevice::~AppleTCONDevice(AppleTCONDevice *this)
{
  *this = &unk_2A2022A40;
}

{
  *this = &unk_2A2022A40;
  JUMPOUT(0x29C2B3CF0);
}

void OUTLINED_FUNCTION_3(int a1@<W8>)
{
  *(v1 - 20) = a1;
  *(v1 - 21) = 17;
  *(v1 - 22) = 0;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return IOAVDisplayMemoryRead();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{

  return IOAVDisplayMemoryRead();
}

uint64_t AppleTCONUpdaterCreate(const __CFDictionary *a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  AppleTCONLoggingRegisterLogSink(a2, a3);
  if (AppleTCONUpdaterCreate::only_once != -1)
  {
    AppleTCONUpdaterCreate_cold_1();
  }

  if (AppleTCONUpdaterTypeID)
  {
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 32) = AppleTCONUpdaterTypeID;
      *(Instance + 16) = 0;
      operator new();
    }

    CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterCreate - failed to create AppleTCONUpdater", 3u, a1, @"AppleTCONUpdaterErrorDomain");
  }

  else
  {
    CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterCreate - failed to register kLibAppleTCONUpdaterClass", 3u, a1, @"AppleTCONUpdaterErrorDomain");
  }

  if (CFErrorWithDomain)
  {
    v9 = CFErrorCopyDescription(CFErrorWithDomain);
    CStringPtr = CFStringGetCStringPtr(v9, 0);
    AppleTCONLoggingLogMsg("%s [error]: %s\n", "AppleTCONUpdaterCreate", CStringPtr);
    CFRelease(v9);
    if (a4)
    {
      *a4 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
    AMSupportSafeRelease();
  }

  return 0;
}

uint64_t __AppleTCONUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  AppleTCONUpdaterTypeID = result;
  return result;
}

void AppleTCONUpdaterDestroy(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      free(v1);
    }
  }
}

CFStringRef AppleTCONUpdaterDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libAppleTCONUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t AppleTCONUpdaterExecCommand(uint64_t a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4, uint64_t *a5)
{
  if (!a1 || !a2)
  {
    v10 = "AppleTCONUpdaterExecCommand - invalid input";
    v11 = 2;
LABEL_8:
    v12 = 0;
    goto LABEL_10;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v10 = "AppleTCONUpdaterExecCommand - no AppleTCON controller instance";
    v11 = 16;
    goto LABEL_8;
  }

  v8 = AppleTCONUpdateController::execCommand(v6, a2, a3, a4);
  if (!v8)
  {
    return 1;
  }

  v11 = v8;
  v10 = "AppleTCONUpdaterExecCommand - execCommand error";
  v12 = a3;
LABEL_10:
  CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain(v10, v11, v12, @"AppleTCONUpdaterErrorDomain");
  if (CFErrorWithDomain)
  {
    v14 = CFErrorCopyDescription(CFErrorWithDomain);
    CStringPtr = CFStringGetCStringPtr(v14, 0);
    AppleTCONLoggingLogMsg("%s [error]: %s\n", "AppleTCONUpdaterExecCommand", CStringPtr);
    CFRelease(v14);
    if (a5)
    {
      *a5 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
  }

  return 0;
}

const char *AppleTCONLoggingLogMsg(const char *a1, ...)
{
  va_start(va, a1);
  result = MEMORY[0x2A1C7C4A8](a1);
  v3 = *MEMORY[0x29EDCA608];
  if (logSinkFunc)
  {
    vsnprintf(__str, 0x1000uLL, result, va);
    return logSinkFunc(logSinkContext, __str);
  }

  return result;
}

const char *AppleTCONLoggingRegisterLogSink(const char *result, uint64_t a2)
{
  logSinkFunc = result;
  logSinkContext = a2;
  if (result)
  {
    if ((AppleTCONPrintVersion(void)::version_displayed & 1) == 0)
    {
      result = AppleTCONLoggingLogMsg("AppleTCONRestoreLib Version %d.%d\n", 2, 0);
      AppleTCONPrintVersion(void)::version_displayed = 1;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::computeCRC(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return 255;
  }

  v3 = 0;
  v4 = a2 + 3;
  LOBYTE(result) = -1;
  do
  {
    result = AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 3) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 2) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 1) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[(*v4 ^ result)]]]];
    v3 += 4;
    v4 += 4;
  }

  while (v3 < a3);
  return result;
}

uint64_t AppleTCONDP855Device::waitForDeviceReady(AppleTCONDP855Device *this)
{
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t AppleTCONDP855Device::waitForCompletion(AppleTCONDP855Device *this)
{
  result = AppleTCONDP855Device::waitForDeviceReady(this);
  if (!result)
  {
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      IOAVDisplayMemoryRead();
      AppleTCONLoggingLogMsg("Wait Code: 0x%02x 0x%02x\n", 0, 0);
      return 3758097084;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getDeviceID(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 6)
  {
    return 3758097090;
  }

  result = AppleTCONDevice::getIORegPropertyValue(this, @"device-id", a2, 6);
  if (result)
  {

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getBundleVer(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  result = AppleTCONDP855Device::getBundleVerFromIOReg(this, a2);
  if (result)
  {

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getBundleVerFromIOReg(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  *v4 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"bundle-ver", v4, 4);
  if (!result)
  {
    *a2 = *v4;
  }

  return result;
}

uint64_t AppleTCONDP855Device::getFirmwareVer(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  result = AppleTCONDP855Device::getFirmwareVerFromIOReg(this, a2);
  if (result)
  {

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getFirmwareVerFromIOReg(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  *v4 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"firmware-ver", v4, 4);
  if (!result)
  {
    *a2 = *v4;
  }

  return result;
}

uint64_t AppleTCONDP855Device::sendDataBuffer(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 0x10)
  {
    return 3758097090;
  }

  result = IOAVDisplayMemoryWrite();
  if (a3 >= 9 && !result)
  {

    return IOAVDisplayMemoryWrite();
  }

  return result;
}

uint64_t AppleTCONDP855Device::readDataBuffer(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 0x10)
  {
    return 3758097090;
  }

  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    result = IOAVDisplayMemoryRead();
    if (a3 >= 9 && !result)
    {
      return IOAVDisplayMemoryRead();
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::submitCmd(AppleTCONDP855Device *this)
{
  usleep(0x1388u);
  result = IOAVDisplayMemoryWrite();
  if (!result)
  {
    usleep(0x1388u);
    return AppleTCONDP855Device::waitForCompletion(this);
  }

  return result;
}

uint64_t AppleTCONDP855Device::sendCmd(AppleTCONDP855Device *a1, __int32 *a2, const unsigned __int8 *a3, unsigned int a4, uint8x8_t a5)
{
  result = AppleTCONDP855Device::waitForDeviceReady(a1);
  if (!result)
  {
    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      if (!a4 || (*a2 & 0x80000000) == 0 || (result = AppleTCONDP855Device::sendDataBuffer(a1, a3, a4), !result))
      {
        result = IOAVDisplayMemoryWrite();
        if (!result)
        {
          result = AppleTCONDP855Device::submitCmd(a1);
          if (!result)
          {
            usleep(0x2710u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getSDOMStatus(AppleTCONDP855Device *this, BOOL *a2)
{
  *v6 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"sdom-status", v6, 4);
  if (result)
  {
    return AppleTCONDP855Device::getSDOMStatusFromDevice(this, a2, v5);
  }

  *a2 = v6[0];
  return result;
}

uint64_t AppleTCONDP855Device::getSDOMStatusFromDevice(AppleTCONDP855Device *this, BOOL *a2, uint8x8_t a3)
{
  v6 = 69378;
  result = AppleTCONDP855Device::sendCmd(this, &v6, 0, 0, a3);
  if (!result)
  {
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      if (*a2 == 32)
      {
        v5 = "OTP_STATUS_PROGRAMMED";
      }

      else
      {
        v5 = "OTP_STATUS_UNPROGRAMMED";
      }

      AppleTCONLoggingLogMsg("SDOM status %s\n", v5);
      result = 0;
      *a2 = *a2 == 32;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getPRODStatus(AppleTCONDP855Device *this, BOOL *a2)
{
  *v6 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"prod-status", v6, 4);
  if (result)
  {
    return AppleTCONDP855Device::getPRODStatusFromDevice(this, a2, v5);
  }

  *a2 = v6[0];
  return result;
}

uint64_t AppleTCONDP855Device::getPRODStatusFromDevice(AppleTCONDP855Device *this, BOOL *a2, uint8x8_t a3)
{
  v6 = 134914;
  result = AppleTCONDP855Device::sendCmd(this, &v6, 0, 0, a3);
  if (!result)
  {
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      if (*a2 == 32)
      {
        v5 = "OTP_STATUS_PROGRAMMED";
      }

      else
      {
        v5 = "OTP_STATUS_UNPROGRAMMED";
      }

      AppleTCONLoggingLogMsg("PROD status %s\n", v5);
      result = 0;
      *a2 = *a2 == 32;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::setSdom(AppleTCONDP855Device *this, uint8x8_t a2)
{
  v7 = 1118083;
  v2 = AppleTCONDP855Device::sendCmd(this, &v7, 0, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v5 = IOAVDisplayMemoryRead();
    if (v5)
    {
      v3 = v5;
      v4 = 1;
    }

    else
    {
      AppleTCONLoggingLogMsg("setSdom: update (getDeviceStatus) error:0x%x\n", 0);
      v4 = 1;
      v3 = 3758097098;
    }
  }

  AppleTCONLoggingLogMsg("setSdom: update failed:0x%x phase:%d\n", v3, v4);
  return v3;
}

uint64_t AppleTCONDP855Device::setProd(AppleTCONDP855Device *this, uint8x8_t a2)
{
  v7 = 1183619;
  v2 = AppleTCONDP855Device::sendCmd(this, &v7, 0, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v5 = IOAVDisplayMemoryRead();
    if (v5)
    {
      v3 = v5;
      v4 = 1;
    }

    else
    {
      AppleTCONLoggingLogMsg("setProd: update (getDeviceStatus) error:0x%x\n", 0);
      v4 = 1;
      v3 = 3758097098;
    }
  }

  AppleTCONLoggingLogMsg("setProd: update failed:0x%x phase:%d\n", v3, v4);
  return v3;
}

uint64_t AppleTCONDP855Device::getECID(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  result = AppleTCONDevice::getIORegPropertyValue(this, @"ecid", a2, a3);
  if (result)
  {

    return AppleTCONDP855Device::getECIDFromDevice(this, a2, a3, v7);
  }

  return result;
}

uint64_t AppleTCONDP855Device::getECIDFromDevice(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3, uint8x8_t a4)
{
  v8 = 27;
  result = AppleTCONDP855Device::sendCmd(this, &v8, 0, 0, a4);
  if (!result)
  {

    return AppleTCONDP855Device::readDataBuffer(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::displayECID(AppleTCONDP855Device *this, const unsigned __int8 *a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v3 = a3;
    v5 = 0;
    v6 = 64;
    while (1)
    {
      v7 = snprintf(v10 + v5, v6, "%02x", *a2);
      if (v7 < 0)
      {
        break;
      }

      v8 = __OFSUB__(v6, v7);
      v6 -= v7;
      if ((v6 < 0) ^ v8 | (v6 == 0))
      {
        break;
      }

      ++a2;
      v5 += v7;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    AppleTCONLoggingLogMsg("displayECID: Avoid buffer overflow %d\n", v7);
    return 3758097084;
  }

  else
  {
LABEL_6:
    AppleTCONLoggingLogMsg("AppleTconDev:ECID: 0x%s\n", v10);
    return 0;
  }
}

uint64_t AppleTCONDP855Device::getNonce(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  result = AppleTCONDevice::getIORegPropertyValue(this, @"nonce", a2, a3);
  if (result)
  {

    return AppleTCONDP855Device::getNonceFromDevice(this, a2, a3, v7);
  }

  return result;
}

uint64_t AppleTCONDP855Device::getNonceFromDevice(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3, uint8x8_t a4)
{
  v8 = 29;
  result = AppleTCONDP855Device::sendCmd(this, &v8, 0, 0, a4);
  if (!result)
  {

    return AppleTCONDP855Device::readMultiPacketData(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::readMultiPacketData(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    result = IOAVDisplayMemoryRead();
    if (result)
    {
      return result;
    }

    for (i = 0; i < 0x61A81; i += 100)
    {
      usleep(0x64u);
      result = IOAVDisplayMemoryRead();
      if (result)
      {
        return result;
      }
    }

    AppleTCONLoggingLogMsg("Timeout Error: out status : %x\n", 0);
  }

  return AppleTCONDP855Device::waitForCompletion(this);
}

uint64_t AppleTCONDP855Device::getProdFuseValue(AppleTCONDP855Device *this, BOOL *a2)
{
  *v5 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"prod-fuse-value", v5, 4);
  if (result)
  {
    return AppleTCONDP855Device::getProdFuseValueFromDevice(this, a2);
  }

  *a2 = v5[0];
  return result;
}

uint64_t AppleTCONDP855Device::getProdFuseValueFromDevice(AppleTCONDP855Device *this, BOOL *a2)
{
  result = IOAVDisplayMemoryRead();
  *a2 = 0;
  return result;
}

uint64_t AppleTCONDP855Device::writeMultiPacketData(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return AppleTCONDP855Device::waitForCompletion(this);
  }

  v4 = a3;
  while (1)
  {
    result = AppleTCONDP855Device::waitForDeviceReady(this);
    if (result)
    {
      break;
    }

    v7 = v4 >= 0x10 ? 16 : v4;
    result = AppleTCONDP855Device::sendDataBuffer(this, a2, v7);
    if (result)
    {
      break;
    }

    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      a2 += v7;
      v4 -= v7;
      if (v4)
      {
        continue;
      }
    }

    if (result)
    {
      return result;
    }

    return AppleTCONDP855Device::waitForCompletion(this);
  }

  return result;
}

uint64_t AppleTCONDP855Device::downloadComponentBlock(AppleTCONDP855Device *a1, int a2, char a3, char a4, unsigned __int8 *a5, unsigned int a6)
{
  v12 = 0;
  if (a2)
  {
    v9 = -104;
  }

  else
  {
    BYTE2(v12) = a3;
    v9 = -102;
  }

  LOBYTE(v12) = v9;
  BYTE1(v12) = a4;
  HIBYTE(v12) = AppleTCONDP855Device::computeCRC(a1, a5, a6);
  result = AppleTCONDP855Device::sendCmd(a1, &v12, 0, 0, v10);
  if (!result)
  {
    result = AppleTCONDP855Device::writeMultiPacketData(a1, a5, a6);
    if (!result)
    {
      LODWORD(result) = IOAVDisplayMemoryRead();
      if (result)
      {
        return result;
      }

      else
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::downloadComponentImage(AppleTCONDP855Device *a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v5 = a5;
  v7 = a3;
  v10 = a5 + 4095;
  v11 = (a5 + 4095) >> 12;
  AppleTCONLoggingLogMsg("Download comp:0x%04x NumBlocks:%d\n", a3, v11);
  if (v10 < 0x1000)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v5 >= 0x1000 ? 4096 : v5;
    v15 = AppleTCONDP855Device::downloadComponentBlock(a1, a2, v7, v12, (a4 + v13), v14);
    if (v15)
    {
      break;
    }

    v13 += v14;
    v5 -= v14;
    if (v11 == ++v12)
    {
      return 0;
    }
  }

  v16 = v15;
  AppleTCONLoggingLogMsg("Component Download Failed:Block:%d:length:%d!\n", v12, v14);
  if (IOAVDisplayMemoryRead())
  {
    AppleTCONLoggingLogMsg("Could not read error code\n");
  }

  else
  {
    AppleTCONLoggingLogMsg("Error code 0x%02x!\n");
  }

  return v16;
}

uint64_t AppleTCONDP855Device::getLifeCycle(AppleTCONDP855Device *this, const __CFDictionary *a2, unsigned int *a3)
{
  if (!CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.LifeCycle"))
  {
    v6 = "memory alloc failed";
    v7 = 3;
LABEL_11:
    AMSupportSafeRelease();
    AppleTCONLoggingLogMsg("getLifeCycle %s\n", v6);
    return v7;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (ValueForKeyPathInDict)
  {
    v5 = CFGetTypeID(ValueForKeyPathInDict);
    if (v5 == CFNumberGetTypeID())
    {
      if (AMSupportGetUInt32())
      {
        v6 = "conversion error";
        v7 = 11;
      }

      else
      {
        v6 = "out of range";
        v7 = 2;
      }
    }

    else
    {
      v6 = "invalid type";
      v7 = 17;
    }

    goto LABEL_11;
  }

  *a3 = 15;
  AMSupportSafeRelease();
  return 0;
}

const __CFBoolean *AppleTCONDP855Device::getOptionsValue(AppleTCONDP855Device *this, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.%@", a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  Value = ValueForKeyPathInDict;
  if (ValueForKeyPathInDict)
  {
    v7 = CFGetTypeID(ValueForKeyPathInDict);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(Value);
    }

    else
    {
      Value = 0;
    }
  }

  CFRelease(v4);
  return Value;
}

uint64_t AppleTCONDP855Device::isOTPUpdateRequired(AppleTCONDP855Device *this, const __CFDictionary *a2)
{
  OptionsValue = AppleTCONDP855Device::getOptionsValue(this, a2, @"FuseSDOM");
  v4 = *(this + 8);
  if (OptionsValue)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  AppleTCONLoggingLogMsg("Fuse SDOM (%d:%d)\n", v4, OptionsValue);
  return v6;
}

void AppleTCONDP855Device::AppleTCONDP855Device(AppleTCONDP855Device *this, int a2)
{
  *this = &unk_2A2022AF0;
  v8 = 0;
  *v7 = 0;
  *(this + 2) = 257;
  *(this + 6) = a2;
  if (!a2)
  {
    AppleTCONLoggingLogMsg("Failed to getIORegRootNode. Will Attempt fallback.\n");
  }

  v3 = IOAVDisplayMemoryCreateWithName();
  *(this + 2) = v3;
  if (v3)
  {
    if (AppleTCONDP855Device::getPRODStatus(this, &v8))
    {
      AppleTCONLoggingLogMsg("Failed to get Prod status\n");
    }

    else
    {
      v4 = v8 == 1;
      *(this + 9) = v4;
      if (v4)
      {
        if (AppleTCONDP855Device::getProdFuseValue(this, &v8))
        {
          AppleTCONLoggingLogMsg("Failed to get Prod value\n");
          goto LABEL_18;
        }

        v5 = v8;
      }

      else
      {
        v5 = 0;
      }

      *(this + 30) = v5;
      if (AppleTCONDP855Device::getSDOMStatus(this, &v8))
      {
        AppleTCONLoggingLogMsg("Failed to get SDOM status\n");
      }

      else
      {
        *(this + 8) = v8 == 1;
        if (AppleTCONDP855Device::getBundleVer(this, v7))
        {
          AppleTCONLoggingLogMsg("Failed to get bundle version\n");
        }

        else
        {
          *(this + 14) = *v7;
          if (!AppleTCONDP855Device::getFirmwareVer(this, v7))
          {
            v6 = __rev16(*v7);
            *(this + 11) = v6 > 0x10B;
            goto LABEL_19;
          }

          AppleTCONLoggingLogMsg("Failed to get Firmware version\n");
        }
      }
    }
  }

  else
  {
    AppleTCONLoggingLogMsg("Failed to get memoryRef handle\n");
  }

LABEL_18:
  v6 = 0;
LABEL_19:
  AppleTCONLoggingLogMsg("AppleTconDev(v2):(%d:%d:%d:%d:0x%02x:0x%02x(0x%04x))\n", *(this + 11), *(this + 8), *(this + 9), *(this + 30), *(this + 28), *(this + 29), v6);
}

void AppleTCONDP855Device::~AppleTCONDP855Device(AppleTCONDP855Device *this)
{
  *this = &unk_2A2022AF0;
  v2 = *(this + 6);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  *this = &unk_2A2022A40;
}

{
  AppleTCONDP855Device::~AppleTCONDP855Device(this);

  JUMPOUT(0x29C2B3CF0);
}

uint64_t AppleTCONDP855Device::eventCmdQueryInfo(AppleTCONDP855Device *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  *v22 = 0;
  v23 = 0;
  *bytes = 0u;
  v21 = 0u;
  v19 = 0;
  ECID = AppleTCONDP855Device::getECID(this, v22, 0x10u);
  v7 = ECID;
  if (!ECID)
  {
    ECID = AppleTCONDP855Device::displayECID(ECID, v22, 16);
  }

  if (!*(this + 8) && !AppleTCONDP855Device::getOptionsValue(ECID, a2, @"FuseSDOM"))
  {
    AppleTCONLoggingLogMsg("Dev:CmdQueryInfo SDOM not fused. No Fusing option. Bailing.\n");
    v8 = 0;
    *(this + 10) = 1;
    return v8;
  }

  if (*(this + 11))
  {
    if (AppleTCONDP855Device::getNonce(this, bytes, 0x20u))
    {
      v18 = "getNonce failed";
    }

    else
    {
      v8 = 3758097085;
      v9 = *MEMORY[0x29EDB8ED8];
      v10 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 32);
      if (!v10)
      {
        v18 = "nonce alloc failed";
        goto LABEL_22;
      }

      v11 = v10;
      CFDictionaryAddValue(a3, @"Baobab,UpdateNonce", v10);
      CFRelease(v11);
      if (!v7)
      {
        v12 = CFDataCreate(v9, v22, 16);
        if (v12)
        {
          v13 = v12;
          CFDictionaryAddValue(a3, @"Baobab,ECID", v12);
          CFRelease(v13);
          AppleTCONDP855Device::getOptionsValue(v14, a2, @"FusePROD");
          AMSupportCFDictionarySetBoolean();
          v15 = AMSupportCFDictionarySetInteger32();
          LifeCycle = AppleTCONDP855Device::getLifeCycle(v15, a2, &v19);
          v8 = LifeCycle;
          if (!LifeCycle)
          {
            AMSupportCFDictionarySetInteger32();
            return v8;
          }

          v18 = "getLifeCycle failed";
        }

        else
        {
          v18 = "ecid alloc failed";
        }

LABEL_22:
        AppleTCONLoggingLogMsg("Dev:CmdQueryInfo failure %s\n", v18);
        return v8;
      }

      v18 = "getECID failed";
    }

    v8 = 15;
    goto LABEL_22;
  }

  return 0;
}

uint64_t AppleTCONDP855Device::isFWComponentsUpdateRequired(AppleTCONDP855Device *this, const __CFDictionary *a2, CFDictionaryRef theDict, unsigned __int8 *a4)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  v8 = Value;
  if (!Value || (v9 = CFGetTypeID(Value), v9 != CFDataGetTypeID()))
  {
    v21 = "firmware data type invalid ";
    goto LABEL_19;
  }

  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v8, 0, 0, 0);
  if (!v11 || (v12 = CFGetTypeID(v11), v12 != CFDictionaryGetTypeID()))
  {
    v21 = "fw dict create failed";
LABEL_19:
    AppleTCONLoggingLogMsg("FW component update :%s\n", v21);
    v19 = 0;
    goto LABEL_13;
  }

  if (!CFStringCreateWithFormat(v10, 0, @"1.%s.%s.%s.%s", "device_id", a4, "NVM_IMAGE", "Version"))
  {
    v21 = "nvm ver string create failed";
    goto LABEL_19;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict || (v14 = ValueForKeyPathInDict, v15 = CFGetTypeID(ValueForKeyPathInDict), v15 != CFNumberGetTypeID()))
  {
    v21 = "bundle version type invalid";
    goto LABEL_19;
  }

  v16 = CFNumberGetValue(v14, kCFNumberSInt16Type, &valuePtr);
  if (!v16)
  {
    v21 = "bundle ver: num: invalid";
    goto LABEL_19;
  }

  OptionsValue = AppleTCONDP855Device::getOptionsValue(v16, a2, @"RestoreInternal");
  v18 = AppleTCONDP855Device::getOptionsValue(OptionsValue, a2, @"SkipSameVersion");
  AppleTCONLoggingLogMsg("FW Update Options I:%d S:%d\n", OptionsValue, v18);
  if (__PAIR64__(*(this + 29), *(this + 28)) != __PAIR64__(valuePtr, HIBYTE(valuePtr)) || (v19 = 0, OptionsValue) && !v18)
  {
    AppleTCONLoggingLogMsg("Update to 0x%02x:0x%02x\n", HIBYTE(valuePtr), valuePtr);
    v19 = 1;
  }

LABEL_13:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v19;
}

uint64_t AppleTCONDP855Device::updateFWComponents(AppleTCONDP855Device *this, const __CFDictionary *a2, unsigned __int8 *a3)
{
  v4 = 3758097088;
  v5 = *MEMORY[0x29EDB8ED8];
  AMSupportGetValueForKeyPathInDict();
  v6 = AMSupportSafeRetain();
  if (!v6)
  {
    v27 = "ticket missing";
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a2, @"FirmwareData");
  if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFDataGetTypeID()))
  {
    v27 = "firmware missing";
    goto LABEL_25;
  }

  v10 = CFPropertyListCreateWithData(v5, v8, 0, 0, 0);
  v11 = v10;
  if (!v10 || (v12 = CFGetTypeID(v10), v12 != CFDictionaryGetTypeID()))
  {
    v27 = "firmware dict: create failed";
    goto LABEL_25;
  }

  if (!CFStringCreateWithFormat(v5, 0, @"1.firmware.Payload"))
  {
    v27 = "comp: key create failed";
    goto LABEL_25;
  }

  AMSupportGetValueForKeyPathInDict();
  v13 = AMSupportSafeRetain();
  v14 = v13;
  if (!v13)
  {
    v27 = "comp: data missing";
    goto LABEL_25;
  }

  v15 = CFDataGetLength(v13) + 4096;
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  v17 = v16;
  if (!v16)
  {
    v4 = 3;
    v27 = "alloc: failed";
    goto LABEL_25;
  }

  memset(v16, 255, v15);
  v30.length = CFDataGetLength(v6);
  v30.location = 0;
  CFDataGetBytes(v6, v30, v17);
  v31.length = CFDataGetLength(v14);
  v31.location = 0;
  CFDataGetBytes(v14, v31, v17 + 4096);
  if (AppleTCONDP855Device::downloadComponentImage(this, 1, 0, v17, v15))
  {
    v4 = 11;
    v27 = "download fw failed";
    goto LABEL_25;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  v18 = &off_2A14F2070;
  v19 = 11;
  while (1)
  {
    if (!CFStringCreateWithFormat(v5, 0, @"1.%s.%s.%s.%s", "device_id", a3, *v18, "Payload"))
    {
      v4 = 0;
      v27 = "comp: string create failed";
      goto LABEL_25;
    }

    AMSupportGetValueForKeyPathInDict();
    v20 = AMSupportSafeRetain();
    if (v20)
    {
      break;
    }

LABEL_20:
    AMSupportSafeRelease();
    v18 += 2;
    if (!--v19)
    {
      v4 = 0;
      goto LABEL_22;
    }
  }

  v21 = v20;
  v22 = v11;
  Length = CFDataGetLength(v20);
  v24 = Length;
  if (v15 >= Length)
  {
    v25 = Length;
  }

  else
  {
    free(v17);
    v25 = v24;
    v17 = malloc_type_calloc(1uLL, v24, 0x100004077774924uLL);
    LODWORD(v15) = v24;
    if (!v17)
    {
      v4 = 3;
      v27 = "re alloc failed";
      goto LABEL_25;
    }
  }

  v32.location = 0;
  v32.length = v25;
  CFDataGetBytes(v21, v32, v17);
  if (!AppleTCONDP855Device::downloadComponentImage(this, 0, *(v18 - 2), v17, v24))
  {
    AMSupportSafeRelease();
    v11 = v22;
    goto LABEL_20;
  }

  v4 = 11;
  v27 = "download comp: failed";
LABEL_25:
  AppleTCONLoggingLogMsg("update fw error:%s\n", v27);
LABEL_22:
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v4;
}

uint64_t AppleTCONDP855Device::eventCmdPerformNextStage(AppleTCONDP855Device *this, const __CFDictionary *a2, const __CFDictionary *a3, unsigned __int8 *a4)
{
  *&v16[3] = 0;
  *v16 = 0;
  if (AppleTCONDP855Device::getDeviceID(this, v16, 7u))
  {
    v15 = "get dev:id failed";
LABEL_19:
    *(this + 10) = 1;
    *a4 = 1;
    AppleTCONLoggingLogMsg("Dev:next stage failure %s\n", v15);
    v13 = 11;
    goto LABEL_11;
  }

  AppleTCONLoggingLogMsg("Dev:deviceid %s\n", v16);
  isFWComponentsUpdateRequired = AppleTCONDP855Device::isFWComponentsUpdateRequired(this, a2, a3, v16);
  if (*(this + 10) || !isFWComponentsUpdateRequired)
  {
    goto LABEL_10;
  }

  v17 = 156;
  if (AppleTCONDP855Device::sendCmd(this, &v17, v16, 6u, v9))
  {
    v15 = "submit dev:id failed";
    goto LABEL_19;
  }

  v17 = 151;
  if (AppleTCONDP855Device::sendCmd(this, &v17, 0, 0, v10))
  {
    v15 = "start update failed";
    goto LABEL_19;
  }

  if (AppleTCONDP855Device::updateFWComponents(this, a3, v16))
  {
    v15 = "updates failed";
    goto LABEL_19;
  }

  if (AppleTCONDP855Device::isOTPUpdateRequired(this, a2))
  {
    if (AppleTCONDP855Device::updateOTP(this, a2))
    {
      v15 = "otp update failed";
      goto LABEL_19;
    }

    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v17 = 153;
  BYTE1(v17) = v11;
  AppleTCONLoggingLogMsg("Reset option %d\n", v11);
  if (AppleTCONDP855Device::sendCmd(this, &v17, 0, 0, v12))
  {
    v15 = "end update failed";
    goto LABEL_19;
  }

LABEL_10:
  v13 = 0;
  *(this + 10) = 1;
  *a4 = 1;
LABEL_11:
  AppleTCONLoggingLogMsg("AppleTCONDP855Device::eventCmdPerformNextStage: Finished Personalization\n");
  return v13;
}

__CFString *AppleTCONDP835DeviceRestoreTagForBoardID(int a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (a2 != 3)
    {
      return 0;
    }

    v2 = 1;
  }

  switch(a1)
  {
    case 0:
      v3 = kAppleTCONCommonTagRequestTicket;
      v4 = kAppleTCON2CommonTagRequestTicket;
      break;
    case 1:
      v3 = kAppleTCONCommonTagResponseTicket;
      v4 = kAppleTCON2CommonTagResponseTicket;
      break;
    case 2:
      v3 = kAppleTCONCommonTagDeviceChipID;
      v4 = kAppleTCON2CommonTagDeviceChipID;
      break;
    case 3:
      v3 = kAppleTCONCommonTagDeviceBoardID;
      v4 = kAppleTCON2CommonTagDeviceBoardID;
      break;
    case 4:
      v3 = kAppleTCONCommonTagManifestEpoch;
      v4 = kAppleTCON2CommonTagManifestEpoch;
      break;
    case 5:
      v3 = kAppleTCONCommonTagDeviceProductionMode;
      v4 = kAppleTCON2CommonTagDeviceProductionMode;
      break;
    case 6:
      v3 = kAppleTCONCommonTagDeviceProv;
      v4 = kAppleTCON2CommonTagDeviceProv;
      break;
    case 7:
      v3 = kAppleTCONCommonTagDeviceSDOM;
      v4 = kAppleTCON2CommonTagDeviceSDOM;
      break;
    case 8:
      v3 = kAppleTCONCommonTagDeviceNonce;
      v4 = kAppleTCON2CommonTagDeviceNonce;
      break;
    case 9:
      v3 = kAppleTCONCommonTagDeviceUpdateNonce;
      v4 = kAppleTCON2CommonTagDeviceUpdateNonce;
      break;
    case 10:
      v3 = kAppleTCONCommonTagDeviceECID;
      v4 = kAppleTCON2CommonTagDeviceECID;
      break;
    case 11:
      v3 = kAppleTCONCommonTagDeviceInvariantFirmware;
      v4 = kAppleTCON2CommonTagDeviceInvariantFirmware;
      break;
    case 12:
      v3 = kAppleTCONCommonTagDeviceBacklightControllerFirmware;
      v4 = kAppleTCON2CommonTagDeviceBacklightControllerFirmware;
      break;
    case 13:
      v3 = kAppleTCONCommonTagDeviceCabalFirmware;
      v4 = kAppleTCON2CommonTagDeviceCabalFirmware;
      break;
    case 14:
      v3 = kAppleTCONCommonTagDeviceTrinityFirmware;
      v4 = kAppleTCON2CommonTagDeviceTrinityFirmware;
      break;
    default:
      return 0;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  return *v6;
}

AppleTCONDP855Device *AppleTCONUpdateController::AppleTCONUpdateControllerGetDevice(AppleTCONUpdateController *this)
{
  *buffer = 2133;
  v1 = *MEMORY[0x29EDBB110];
  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/product");
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x29EDB8ED8];
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", *MEMORY[0x29EDB8ED8], 0);
    IOObjectRelease(v3);
    if (CFProperty)
    {
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(CFProperty);
        if (Length)
        {
          v8 = Length;
          v9 = malloc_type_malloc(Length + 14, 0x100004077774924uLL);
          v10 = v9;
          if (v9)
          {
            if (snprintf(v9, v8 + 14, "%s", "IODeviceTree:/") == 14)
            {
              v18.length = CFDataGetLength(CFProperty);
              v18.location = 0;
              CFDataGetBytes(CFProperty, v18, v10 + 14);
              v10[v8 + 13] = 0;
              AppleTCONLoggingLogMsg("Looking for entry under %s\n", v10);
              v11 = IORegistryEntryFromPath(v1, v10);
              if (v11)
              {
                v12 = IORegistryEntryCreateCFProperty(v11, @"chipid", v4, 0);
                v13 = v12;
                if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFDataGetTypeID()) || CFDataGetLength(v13) != 4 || (v19.location = 0, v19.length = 4, CFDataGetBytes(v13, v19, buffer), *buffer == 2133))
                {
                  operator new();
                }

                if (*buffer == 2101)
                {
                  operator new();
                }

                v16 = 0;
              }

              else
              {
                v16 = "tcon device not found";
              }
            }

            else
            {
              v16 = "overflow";
            }
          }

          else
          {
            v16 = "Unable to allocate memory";
          }
        }

        else
        {
          v16 = "Invalid string";
        }
      }

      else
      {
        v16 = "product path type mismatch";
      }
    }

    else
    {
      v16 = "product path not found";
    }
  }

  else
  {
    v16 = "product not found";
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  AppleTCONLoggingLogMsg("AppleTCONUpdateControllerGetDevice failed: %s\n", v16);
  return 0;
}

void AppleTCONUpdateController::AppleTCONUpdateController(AppleTCONUpdateController *this)
{
  *(this + 3) = 0;
  Device = AppleTCONUpdateController::AppleTCONUpdateControllerGetDevice(this);
  *(this + 1) = Device;
  if (Device)
  {
    v3 = *(Device + 11);
  }

  else
  {
    v3 = 0;
  }

  *(this + 17) = v3;
  *(this + 16) = v3 == 0;
}

uint64_t AppleTCONUpdateController::start(const void **this, const __CFDictionary *a2, __CFError **a3)
{
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::start: Dev = (%p) - updateSupported = %d\n", this[1], *(this + 17));
  if (this[1])
  {
    if (!a2)
    {
      return 0;
    }

    v6 = AMSupportSafeRetain();
    this[3] = v6;
    Value = CFDictionaryGetValue(v6, @"Options");
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFDictionaryGetTypeID())
      {
        return 0;
      }
    }
  }

  if (AppleTCONLoggingCreateCFErrorWithDomain("RestoreOptions not a dict?", 2u, a2, @"AppleTCONUpdaterErrorDomain"))
  {
    if (a3)
    {
      *a3 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
  }

  return 19;
}

uint64_t AppleTCONUpdateController::execCmdQueryInfo(AppleTCONUpdateController *this, const __CFDictionary *a2, const __CFDictionary **a3)
{
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Begin Personalization\n");
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v7 = Mutable;
      if (a2)
      {
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Input\n");
        AMSupportSafeRelease();
        v8 = AMSupportSafeRetain();
        *(this + 3) = v8;
      }

      else
      {
        v8 = *(this + 3);
      }

      v9 = (*(**(this + 1) + 16))(*(this + 1), v8, v7);
      if (v9)
      {
        CFRelease(v7);
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: device failure %d\n", v9);
      }

      else
      {
        *a3 = v7;
      }
    }

    else
    {
      AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: create output dict: failed\n");
      return 3;
    }
  }

  else
  {
    AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Output param missing\n");
    return 2;
  }

  return v9;
}

uint64_t AppleTCONUpdateController::execPerformNextStage(AppleTCONUpdateController *this, const __CFDictionary *a2)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1), *(this + 3), a2, this + 16);
  v3 = v2;
  if (v2)
  {
    AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: device failure %d\n", v2);
  }

  return v3;
}

uint64_t AppleTCONDP835Device::writeGPIO(AppleTCONDP835Device *this, uint64_t a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  connect = 0;
  input[0] = a2;
  input[1] = a3;
  v3 = *(this + 10);
  if (!v3)
  {
    return 3758097136;
  }

  v4 = IOServiceOpen(v3, *MEMORY[0x29EDCA6B0], 0, &connect);
  v5 = connect;
  if (!v4)
  {
    if (!connect)
    {
      return 3758097097;
    }

    v4 = IOConnectCallScalarMethod(connect, 1u, input, 2u, 0, 0);
    v5 = connect;
  }

  if (v5)
  {
    IOServiceClose(v5);
  }

  return v4;
}

uint64_t AppleTCONDP835Device::getChipID(AppleTCONDP835Device *this, unsigned int *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6(this);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    *v2 = bswap32(0) >> 16;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getBoardID(AppleTCONDP835Device *this, unsigned int *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  v3 = OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7(v3, v4, v5, v6, v7, v8, v9, v10, v12, *v13, *&v13[4], v13[6], 0);
  if (!result)
  {
    if ((v14 & 0x38) == 8)
    {
      result = 0;
      *v2 = (v14 >> 2) & 3;
    }

    else
    {
      return 3758096385;
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::getBundleVer(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  v7 = 20;
  result = OUTLINED_FUNCTION_10();
  if (v6)
  {
    if (v4 == 3)
    {
      result = AppleTCONDP835Device::sendCmd(this, &v7, 0, 0, 0, v5);
      if (!result)
      {

        return IOAVDisplayMemoryRead();
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::sendCmd(AppleTCONDP835Device *a1, __int32 *a2, uint64_t a3, uint64_t a4, int a5, uint8x8_t a6)
{
  v7 = a4;
  v10 = AppleTCONDP835Device::waitForDeviceReady(a1);
  if (v10)
  {
    return v10;
  }

  v11 = 3758097090;
  if (!a3 || !v7)
  {
LABEL_6:
    v10 = IOAVDisplayMemoryWrite();
    if (!v10)
    {
      v10 = IOAVDisplayMemoryWrite();
      if (!v10)
      {
        v10 = AppleTCONDP835Device::waitForDeviceReady(a1);
        if (!v10)
        {
          v10 = IOAVDisplayMemoryRead();
          if (!v10)
          {
            return 0;
          }
        }
      }
    }

    return v10;
  }

  if ((a5 + v7) <= 0x10)
  {
    v10 = IOAVDisplayMemoryWrite();
    if (v10)
    {
      return v10;
    }

    goto LABEL_6;
  }

  return v11;
}

uint64_t AppleTCONDP835Device::dischargePanel(AppleTCONDP835Device *this)
{
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    OUTLINED_FUNCTION_5();
    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      usleep(0x493E0u);
      return 0;
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::startFWUpdate(AppleTCONDP835Device *this)
{
  v2 = AppleTCONDP835Device::dischargePanel(this);
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryWrite();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  v3 = 3758097129;
  OUTLINED_FUNCTION_2();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_1();
  v2 = IOAVDisplayMemoryWrite();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_2();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_5();
  IOAVDisplayMemoryWrite();
  v4 = usleep(0xC350u);
  v2 = OUTLINED_FUNCTION_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, v14[4], 0);
  if (v2)
  {
    return v2;
  }

  if (v15)
  {
    return v3;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_2();
    v2 = IOAVDisplayMemoryRead();
    if (!v2)
    {
      OUTLINED_FUNCTION_1();
      v2 = IOAVDisplayMemoryWrite();
      if (!v2)
      {
        OUTLINED_FUNCTION_2();
        v2 = IOAVDisplayMemoryRead();
        if (!v2)
        {
          OUTLINED_FUNCTION_1();
          v2 = IOAVDisplayMemoryWrite();
          if (!v2)
          {
            OUTLINED_FUNCTION_2();
            v2 = IOAVDisplayMemoryRead();
            if (!v2)
            {
              OUTLINED_FUNCTION_1();
              v2 = IOAVDisplayMemoryWrite();
              if (!v2)
              {
                return AppleTCONDP835Device::writeGPIO(this, 0x746E766DuLL, 0);
              }
            }
          }
        }
      }
    }

    return v2;
  }

  return v3;
}

uint64_t AppleTCONDP835Device::endFWUpdate(AppleTCONDP835Device *this)
{
  v2 = AppleTCONDP835Device::writeGPIO(this, 0x746E766DuLL, 1u);
  if (v2)
  {
    return v2;
  }

  v2 = AppleTCONDP835Device::dischargePanel(this);
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryWrite();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  v3 = 3758097129;
  OUTLINED_FUNCTION_5();
  IOAVDisplayMemoryWrite();
  v4 = usleep(0x493E0u);
  v2 = OUTLINED_FUNCTION_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, v14[4], 0);
  if (v2)
  {
    return v2;
  }

  if ((~v15 & 7) != 0)
  {
    return v3;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  return v3;
}

uint64_t AppleTCONDP835Device::getSDOMStatus(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  v3 = OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7(v3, v4, v5, v6, v7, v8, v9, v10, v14, *v15, *&v15[4], v15[6], 0);
  if (!result)
  {
    v12 = "OTP_STATUS_PROGRAMMED";
    if (((v16 >> 1) & 1) == 0)
    {
      v12 = "OTP_STATUS_UNPROGRAMMED";
    }

    AppleTCONLoggingLogMsg("SDOM status %s\n", v12);
    result = OUTLINED_FUNCTION_8();
    *v2 = v13;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getPRODStatus(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  v3 = OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7(v3, v4, v5, v6, v7, v8, v9, v10, v14, *v15, *&v15[4], v15[6], 0);
  if (!result)
  {
    v12 = "OTP_STATUS_PROGRAMMED";
    if ((v16 & 1) == 0)
    {
      v12 = "OTP_STATUS_UNPROGRAMMED";
    }

    AppleTCONLoggingLogMsg("PROD status %s\n", v12);
    result = OUTLINED_FUNCTION_8();
    *v2 = v13;
  }

  return result;
}

uint64_t AppleTCONDP835Device::setSdom(AppleTCONDP835Device *this)
{
  OUTLINED_FUNCTION_3(16777315);
  v6 = AppleTCONDP835Device::sendCmd(v1, v2, v3, v4, 0, v5);
  if (v6)
  {
    v9 = v6;
    v7 = 0;
LABEL_9:
    AppleTCONLoggingLogMsg("setSdom: update failed:0x%x phase:%u\n", v9, v7);
    return v9;
  }

  v7 = 1;
  v8 = IOAVDisplayMemoryRead();
  if (v8)
  {
    v9 = v8;
    goto LABEL_9;
  }

  if (v11)
  {
    v9 = 3758097129;
    v7 = 1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t AppleTCONDP835Device::setProd(AppleTCONDP835Device *this)
{
  OUTLINED_FUNCTION_3(33554531);
  v6 = AppleTCONDP835Device::sendCmd(v1, v2, v3, v4, 1, v5);
  if (v6)
  {
    v9 = v6;
    v7 = 0;
LABEL_9:
    AppleTCONLoggingLogMsg("setProd: update failed:0x%x phase:%u\n", v9, v7);
    return v9;
  }

  v7 = 1;
  v8 = IOAVDisplayMemoryRead();
  if (v8)
  {
    v9 = v8;
    goto LABEL_9;
  }

  if (v11)
  {
    v9 = 3758097129;
    v7 = 1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t AppleTCONDP835Device::getECID(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  result = OUTLINED_FUNCTION_10();
  if (v3)
  {
    if (v4 == 16)
    {
      v5 = v3;
      result = IOAVDisplayMemoryRead();
      if (!result)
      {
        v6 = 15;
        v7 = 8;
        do
        {
          v8 = *(v5 + v7);
          *(v5 + v7) = *(v5 + v6);
          *(v5 + v6--) = v8;
          ++v7;
        }

        while (v6 != 11);
        result = 0;
        *v5 = 0;
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::updateOTP(AppleTCONDP835Device *this)
{
  AppleTCONLoggingLogMsg("Fuse Prod (%d:%d)\n", *(this + 9), *(this + 65));
  if (!*(this + 9) && *(this + 65))
  {
    result = AppleTCONDP835Device::setProd(this);
    if (result)
    {
      return result;
    }

    *(this + 9) = 1;
  }

  result = AppleTCONDP835Device::setSdom(this);
  if (!result)
  {
    *(this + 8) = 1;
  }

  return result;
}

uint64_t AppleTCONDP835Device::updateFWComponents(AppleTCONDP835Device *this, const __CFDictionary *a2)
{
  v4 = 3758097088;
  AppleTCONDP835DeviceRestoreTagForBoardID(1, *(this + 15));
  v5 = *MEMORY[0x29EDB8ED8];
  AMSupportGetValueForKeyPathInDict();
  v6 = AMSupportSafeRetain();
  if (!v6)
  {
    OUTLINED_FUNCTION_4();
    v20 = "ticket missing";
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a2, @"FirmwareData");
  v8 = Value;
  if (!Value || (v9 = CFGetTypeID(Value), v9 != CFDataGetTypeID()))
  {
    OUTLINED_FUNCTION_4();
    v20 = "firmware missing";
    goto LABEL_25;
  }

  v10 = CFPropertyListCreateWithData(v5, v8, 0, 0, 0);
  if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFDictionaryGetTypeID()))
  {
    OUTLINED_FUNCTION_4();
    v20 = "firmware dict: create failed";
    goto LABEL_25;
  }

  BytePtr = CFDataGetBytePtr(v6);
  v4 = 3758097090;
  if (BytePtr)
  {
    Length = CFDataGetLength(v6);
    if (Length <= 0x3000)
    {
      v14 = AppleTCONDP835Device::eraseDeviceEEPROM(this, *(this + 14), 0x3000u);
      if (v14)
      {
        v4 = v14;
        OUTLINED_FUNCTION_4();
        v20 = "failed to erase personalization manifest from EEPROM";
      }

      else
      {
        v15 = AppleTCONDP835Device::writeDeviceEEPROM(this, *(this + 14), BytePtr, Length);
        if (v15)
        {
          v4 = v15;
          OUTLINED_FUNCTION_4();
          v20 = "failed to write personalization manifest to EEPROM";
        }

        else
        {
          v16 = CFStringCreateWithFormat(v5, 0, @"%u.%s.Payload", *(this + 15), "nvm_image");
          if (v16)
          {
            AMSupportGetValueForKeyPathInDict();
            v17 = AMSupportSafeRetain();
            if (v17)
            {
              updated = AppleTCONDP835Device::updateFWComponent(this, 4, v17);
              if (updated)
              {
                v4 = updated;
                v20 = "failed to update fw component";
              }

              else
              {
                v4 = doPCDSUpdate();
                if (!v4)
                {
                  CFRelease(v16);
                  CFRelease(v17);
                  goto LABEL_15;
                }

                v20 = "failed to update pcds component";
              }
            }

            else
            {
              v4 = 0;
              v20 = "comp: data missing";
            }
          }

          else
          {
            v4 = 0;
            v20 = "comp: key create failed";
          }
        }
      }

LABEL_25:
      AppleTCONLoggingLogMsg("update fw error:%s\n", v20);
    }
  }

LABEL_15:
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v4;
}

uint64_t AppleTCONDP835Device::readFWPointer(AppleTCONDP835Device *this, int *a2, int *a3)
{
  if (!(a2 | a3))
  {
    return OUTLINED_FUNCTION_10();
  }

  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    v6 = bswap32(0);
    if ((v6 & 0xFFDFFFFF) != 0x100000)
    {
      return 3758096385;
    }

    if (a2)
    {
      *a2 = v6;
    }

    if (a3)
    {
      *a3 = 0x100000;
    }

    if (a2)
    {
      v7 = *a2;
      if (a3)
      {
LABEL_10:
        v8 = *a3;
LABEL_13:
        AppleTCONLoggingLogMsg("AppleTCONDP835Device::readFWPointer: activeFWPointer:0x%08x inactiveFWPointer:0x%08x\n", v7, v8);
        return 0;
      }
    }

    else
    {
      v7 = 0;
      if (a3)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  return result;
}

uint64_t AppleTCONDP835Device::writeFWPointer(AppleTCONDP835Device *this, unsigned int a2)
{
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::writeFWPointer: fWPointer:0x%08x\n", a2);
  if ((a2 & 0xFFDFFFFF) != 0x100000)
  {
    return OUTLINED_FUNCTION_10();
  }

  *v5 = a2 >> 8;
  result = AppleTCONDP835Device::eraseDeviceEEPROM(this, 0, 4u);
  if (!result)
  {
    return AppleTCONDP835Device::writeDeviceEEPROM(this, 0, v5, 4u);
  }

  return result;
}

uint64_t AppleTCONDP835Device::writeAndVerifyFWPointer(AppleTCONDP835Device *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::writeAndVerifyFWPointer: fWPointer:0x%08x\n", a2);
  result = AppleTCONDP835Device::writeFWPointer(this, a2);
  if (!result)
  {
    result = AppleTCONDP835Device::readFWPointer(this, a3, a4);
    if (!result)
    {
      if (*a3 == a2)
      {
        return 0;
      }

      else
      {
        return 3758097129;
      }
    }
  }

  return result;
}

CFErrorRef AppleTCONUpdaterIsDone(CFErrorRef result, uint64_t *a2)
{
  if (result)
  {
    v2 = *(result + 3);
    if (v2)
    {
      return *(v2 + 16);
    }

    else
    {
      result = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterIsDone - no controller instance", 0x10u, 0, @"AppleTCONUpdaterErrorDomain");
      if (result)
      {
        v4 = CFErrorCopyDescription(result);
        CStringPtr = CFStringGetCStringPtr(v4, 0);
        AppleTCONLoggingLogMsg("%s [error]: %s\n", "AppleTCONUpdaterIsDone", CStringPtr);
        CFRelease(v4);
        if (a2)
        {
          *a2 = AMSupportSafeRetain();
        }

        AMSupportSafeRelease();
        return 0;
      }
    }
  }

  return result;
}

CFErrorRef AppleTCONLoggingCreateCFErrorWithDomain(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v9 = CFStringCreateWithFormat(v7, 0, @"%@: %s", a4, a1);
    if (v9)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v9);
      v10 = CFErrorCreate(v7, a4, a2, Mutable);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v10;
}

uint64_t AppleTCONDP855Device::updateOTP(AppleTCONDP855Device *this, const __CFDictionary *a2)
{
  OptionsValue = AppleTCONDP855Device::getOptionsValue(this, a2, @"FusePROD");
  AppleTCONLoggingLogMsg("Fuse Prod (%d:%d)\n", *(this + 9), OptionsValue);
  if (!OptionsValue || *(this + 9) || (result = AppleTCONDP855Device::setProd(this, v4), !result))
  {

    return AppleTCONDP855Device::setSdom(this, v4);
  }

  return result;
}

uint64_t AppleTCONUpdateController::execCommand(AppleTCONUpdateController *this, CFStringRef theString, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!theString)
  {
    return 2;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Entering execCommand: command = %s\n", CStringPtr);
  v9 = 0;
  if (!*(this + 16))
  {
    if (CFStringCompare(theString, @"queryInfo", 0))
    {
      if (CFStringCompare(theString, @"performNextStage", 0))
      {
        v10 = CFStringGetCStringPtr(theString, 0);
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Unsupported command: %s\n", v10);
        v9 = 2;
        goto LABEL_9;
      }

      Stage = AppleTCONUpdateController::execPerformNextStage(this, a3);
    }

    else
    {
      Stage = AppleTCONUpdateController::execCmdQueryInfo(this, a3, a4);
    }

    v9 = Stage;
  }

LABEL_9:
  v12 = CFStringGetCStringPtr(theString, 0);
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Exiting execCommand: command = %s, result = 0x%X\n", v12, v9);
  return v9;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}