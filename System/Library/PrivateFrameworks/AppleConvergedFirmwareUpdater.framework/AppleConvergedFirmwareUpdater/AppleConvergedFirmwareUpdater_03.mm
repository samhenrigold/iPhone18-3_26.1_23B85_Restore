void ACFUDataAccess::createPersonalizedFirmwarePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create path to firmware directory\n", "ACFUDataAccess", "createPersonalizedFirmwarePath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get firmware root path\n", "ACFUDataAccess", "createPersonalizedFirmwarePath");
}

void RTKitFirmware::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base object\n", "RTKitFirmware", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create manifest\n", "RTKitFirmware", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create firmware\n", "RTKitFirmware", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to initialize base object\n", "RTKitFirmware", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No save path specified\n", "RTKitFirmware", "init");
}

void RTKitFirmware::setFirmwareNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Bad parameter\n", "RTKitFirmware", "setFirmwareNonce");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid firmware file\n", "RTKitFirmware", "setFirmwareNonce");
}

void RTKitFirmware::openFirmwareInRestoreOptions(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Unrecognized CF object!\n", "RTKitFirmware", "openFirmwareInRestoreOptions");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to open firmware in restore options\n", "RTKitFirmware", "openFirmwareInRestoreOptions");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to find firmware in restore options\n", "RTKitFirmware", "openFirmwareInRestoreOptions");
}

void RTKitFirmware::saveFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to set ftab validity\n", "RTKitFirmware", "saveFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No manifest provided with firmware. Manifest is required!\n", "RTKitFirmware", "saveFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid firmware file\n", "RTKitFirmware", "saveFirmware");
}

void ACFULogging::getLogInstance()
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    ACFULogging::ACFULogging(&unk_2814622C8);
    __cxa_atexit(ACFULogging::~ACFULogging, &unk_2814622C8, &dword_2402B0000);

    __cxa_guard_release(_MergedGlobals_0);
  }
}

void ACFUACIPCTransport::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init ACFUTransport\n", "ACFUACIPCTransport", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dispatch queue\n", "ACFUACIPCTransport", "init");
}

void ACFUACIPCTransport::processWriteCommand(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unexpected (too many) amount of bytes were received from device, bailing\n", "ACFUACIPCTransport", "processWriteCommand");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to send response to device error: 0x%x\n", "ACFUACIPCTransport", "processWriteCommand", v1);
}

void ACFUACIPCTransport::processDoneCommand(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: file transfer session still not closed\n", "ACFUACIPCTransport", "processDoneCommand");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to send response to device error: 0x%x\n\n", "ACFUACIPCTransport", "processDoneCommand", v1);
}

void ACFUACIPCTransport::processCommandFromDevice(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to process read command\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to process close command\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to process open command for write\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to process open command for read\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid parameter (done)\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid parameter (acipcInterface)\n", "ACFUACIPCTransport", "processCommandFromDevice");
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

void ACFURTKitROM::init(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void ACFURTKitROM::gatherPersonalizationParameters(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to reset chip (%d)\n", v2, v3, v4);
}

void ACFURTKitROM::updateFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: could not find firmware in restore options (%d)\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read boot nonce from firmware\n", "ACFURTKitROM", "updateFirmware");

  CFRelease(a1);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to reset chip (%d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to ping device after firmware push (%d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to perform preSave actions (%d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to save firmware (%d)\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read boot nonce from firmware\n", "ACFURTKitROM", "updateFirmware");
}

uint64_t ACFURTKitROM::updateFirmware(ACFULogging *a1, uint64_t a2, ACFUFirmware **a3)
{
  v5 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to boot firmware (%d)\n", "ACFURTKitROM", "updateFirmware", v5);
  v7 = *(a2 + 40);
  v9 = ACFUFirmware::copyFWContainer(*a3, v8);
  return ACFUDiagnostics::addItem(v7, @"ftab.bin", v9, 1);
}

void ACFURTKitROM::bootFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: firmware not present to boot\n", "ACFURTKitROM", "bootFirmware");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to set the boot nonce (%d)\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: boot nonce missing\n", "ACFURTKitROM", "bootFirmware");
}

void ACFURTKitROM::copyManifestSigCert(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to decode manifest: %d\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: sig cert start falls before start of manifest\n", "ACFURTKitROM", "copyManifestSigCert");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: sig cert start falls after end of manifest\n", "ACFURTKitROM", "copyManifestSigCert");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid sig cert length\n", "ACFURTKitROM", "copyManifestSigCert");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manifest length\n", "ACFURTKitROM", "copyManifestSigCert");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manifest start\n", "ACFURTKitROM", "copyManifestSigCert");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: no manifest\n", "ACFURTKitROM", "copyManifestSigCert");
}

const void *ACFURestoreHost::copyDataFromFileDictionary(ACFULogging *key, CFDictionaryRef theDict, int a3)
{
  if (!key)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: key value not provided\n");
    return 0;
  }

  if (!theDict)
  {
    v8 = ACFULogging::getLogInstance(key);
    ACFULogging::handleMessage(v8, 2, "%s::%s: firmware file dictionary not provided\n");
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v5 = Value;
  if (a3)
  {
    if (Value)
    {
      AMSupportSafeRetain();
    }
  }

  else
  {
    AMSupportCreateDataFromFileURL();
    return 0;
  }

  return v5;
}

void ACFURestoreHost::getTags(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device info list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create response tag list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create build identity tag list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate output dictionary\n", "ACFURestoreHost", "getTags");
}

void ACFURestoreHost::copyFirmware(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: updater failed to find firmware data with bundleData\n", "ACFURestoreHost", "copyFirmware");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: copyFirmware: failed to create src rooted FW URL\n", "ACFURestoreHost", "copyFirmware");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create personalized rooted FW URL (status: %d)\n", v2, v3, v4);
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get src bundle URL\n", "ACFURestoreHost", "copyFirmware");
}

void ACFURestoreHost::copyFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create mutable copy of source device firmware data dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed due to incompatible bundle data dictionary\n", "ACFURestoreHost", "copyFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate source bundle firmware path dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 0);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate bundle firmware path dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 0);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate data for personalized path\n", "ACFURestoreHost", "copyFirmware");
}

void ACFURestoreHost::getPathFromBuildID(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = CFGetTypeID(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: path has wrong type %lu\n", "ACFURestoreHost", "getPathFromBuildID", v3);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get dict entry\n", "ACFURestoreHost", "getPathFromBuildID");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create build ID key path\n", "ACFURestoreHost", "getPathFromBuildID");
}

void ACFURestoreHost::copyToPersonalizedBundlePath(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create destination path URL (status: %d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create directory @ dstPathURL (status: %d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to copy data to dstPathURL (status: %d)\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: destination path does not exist after creation attempt (status: %d)\n", "ACFURestoreHost", "copyToPersonalizedBundlePath", 0);
}

void ACFURestoreHost::createRequest(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to validate device identity tags\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to build parameters out of build identity\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to build parameters out of device identity\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: production mode not present in device info. This is fatal!\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: security mode not present in device info. This is fatal!\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid FDR trust object hash in updater options override\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid FDR trust object hash in client updater override\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create empty trust object hash\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get build identity dict from options\n", "ACFURestoreHost", "createRequest");
}

BOOL ACFURestoreHost::createRequest(uint64_t a1, ACFUError *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to allocate output dictionary\n", "ACFURestoreHost", "createRequest");
  return ACFUError::hasError(a2);
}

void ACFURestoreHost::createNum64Num32FromData(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: data length %ld is not within range\n", v2, v3, v4);
}

void ACFUMachO32::createMachoHeaderData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to allocate buffer for macho header data\n", "ACFUMachO32", "createMachoHeaderData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: numberOfSections is 0\n", "ACFUMachO32", "createMachoHeaderData");
}

void ACFUMachO64::createMachoHeaderData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to allocate buffer for macho header data\n", "ACFUMachO64", "createMachoHeaderData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: numberOfSections is 0\n", "ACFUMachO64", "createMachoHeaderData");
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_1();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (OUTLINED_FUNCTION_1_0(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_0();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_1();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_0();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_1();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        a4[2] = a2 | 0xE000000000000000;
        a4[5] = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v11[7] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      return;
    }

    v10 = OUTLINED_FUNCTION_0_2();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v11, v10))
    {
      a3 = **(a4 + 32);
      v6 = v11;
      v7 = a2;
      goto LABEL_15;
    }
  }
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        return 7;
      }

      else if (*(a1 + 1) == 1)
      {
        OUTLINED_FUNCTION_6(a1, (a1 + 328));
        return 0;
      }

      else
      {
        v6 = OUTLINED_FUNCTION_0_2();
        v10 = v9(v8, *(v7 + 32), v12, a3, v6);
        v4 = v10;
        if (!v10)
        {
          OUTLINED_FUNCTION_6(v10, v12);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1, uint64_t a2)
{
  v7[20] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5_0(a1, a2);
  result = 6;
  if (v2)
  {
    v6 = *(v3 + 8);
    v5 = v3 + 8;
    if (v6)
    {
      result = DERImg4DecodePayloadWithProperties(v5, v7);
      if (!result)
      {
        *v2 = v7[12] != 0;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5_0(a1, a2);
  result = 6;
  if (v2)
  {
    v6 = *(v3 + 8);
    v5 = v3 + 8;
    if (v6)
    {
      result = DERImg4DecodePayloadWithProperties(v5, v8);
      if (!result)
      {
        if (v9)
        {
          result = 0;
          v7 = v10;
          *v2 = v9;
          v2[1] = v7;
          return result;
        }

        return 6;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v10[7] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      return 7;
    }

    else if (a4 && *a4)
    {
      v7 = OUTLINED_FUNCTION_0_2();
      result = v9(*v8, v8[1], v10, a3, v7);
      if (!result)
      {
        OUTLINED_FUNCTION_6(result, v10);
        return 0;
      }
    }
  }

  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeGetPayloadPropertiesBoolean()
{
  OUTLINED_FUNCTION_0_2();
  _Img4DecodePayloadPropertyExistsWithValue(v0, v1, 1uLL, v5, 0);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_3_0();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_0();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_0();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0_2();
  _Img4DecodePayloadPropertyExistsWithValue(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  OUTLINED_FUNCTION_0_2();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_3_0();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_1(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_0(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_1(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_0(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = OUTLINED_FUNCTION_2_0(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17[26] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v16, 0x100uLL);
        v10[0] = Img4DecodeDigestInit;
        v10[1] = Img4DecodeDigestUpdate;
        v10[2] = Img4DecodeDigestReturnHash;
        *&v13 = &default_manifest_property_exclude;
        *(&v13 + 1) = 156;
        v14 = a3;
        v15 = v10;
        Img4DecodeEvaluateCertificatePropertiesInternal(a1, &v13);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v11[0] = &v13;
              v11[1] = a2;
              v11[2] = a1;
              v12 = v17;
              if (!(*v15)(*(v14 + 32), &v12) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, _Img4DecodeValidateManifestPropertyInterposer, v11))
              {
                v9 = (v15[2])(*(v14 + 32), &v12, 48, v16);
                if (!v9)
                {
                  OUTLINED_FUNCTION_6(v9, v16);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v24[10] = *MEMORY[0x277D85DE8];
  bzero(v19, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (Img4DecodeInitManifestCommon(a3, a4, 1, v19, 1229796419) || (*a9)(v20, v21, v24, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v22, v23, v24, **(a9 + 32), a9, a10))
    {
      return 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v20, v21, a7, a8, a5, a6))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[325] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v12 = *v11;
                    if (a2 != 2592 || v12 != a6)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    if (!MEMORY[0x28223BE30])
                    {
                      return 4;
                    }

                    ccmldsa87();
                    bzero(v14, 0xA28uLL);
                    if (!MEMORY[0x28223BE38])
                    {
                      return 4;
                    }

                    result = ccmldsa_import_pubkey();
                    if (result)
                    {
                      return result;
                    }

                    if (!MEMORY[0x28223BE40])
                    {
                      return 4;
                    }

                    return ccmldsa_verify();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      OUTLINED_FUNCTION_0_3();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        OUTLINED_FUNCTION_0_3();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  OUTLINED_FUNCTION_0_3();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1, void *a2)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}