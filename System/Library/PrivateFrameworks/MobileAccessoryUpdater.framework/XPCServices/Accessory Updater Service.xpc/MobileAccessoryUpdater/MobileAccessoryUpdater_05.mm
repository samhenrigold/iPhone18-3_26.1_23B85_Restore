uint64_t AMAuthInstallBundlePersonalizeWithRecoveryOS(void *a1, char *a2, int a3, const __CFString *a4, char *a5, const __CFString *a6)
{
  v36 = 0;
  if (a1)
  {
    v13 = sub_100067298(a1, a2, a4, a5, a6, &v36, 0);
    if (v13)
    {
      v31 = v13;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeWithRecoveryOS", "failed to generate personalization entries");
      sub_10000C708();
    }

    else
    {
      v14 = sub_10000C8E0();
      v17 = sub_10000BC74(v14, v15, a4, v16);
      if (a5)
      {
        sub_10000C80C();
        sub_10000BC74(v18, v19, v20, v21);
      }

      v22 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v22, 0, &kCFTypeArrayCallBacks);
      v23 = CFGetAllocator(a1);
      v7 = CFArrayCreateMutable(v23, 0, &kCFTypeArrayCallBacks);
      if (a1[6])
      {
        AMAuthInstallBasebandPersonalizationEnabled(a1);
      }

      if (AMAuthInstallApPersonalizationEnabled(a1))
      {
        CFArrayAppendValue(Mutable, @"OS");
        if (!AMAuthInstallApIsImg4(a1))
        {
          CFArrayAppendValue(Mutable, @"Diags");
        }

        v24 = 1;
        v25 = @"Restore.plist";
        v26 = @"BuildManifest.plist";
      }

      else
      {
        CFArrayAppendValue(Mutable, @"RestoreRamDisk");
        CFArrayAppendValue(Mutable, @"OSRamdisk");
        CFArrayAppendValue(Mutable, @"KernelCache");
        if (!v17)
        {
          CFArrayAppendValue(Mutable, @"OS");
        }

        CFArrayAppendValue(v7, @"BuildManifest.plist");
        CFArrayAppendValue(v7, @"Restore.plist");
        v24 = 0;
        v25 = @"Firmware/all_flash";
        v26 = @"Firmware/dfu";
      }

      CFArrayAppendValue(v7, v26);
      CFArrayAppendValue(v7, v25);
      CFArrayAppendValue(v7, @"Firmware/device_map.txt");
      CFArrayAppendValue(v7, @"Firmware/device_map.plist");
      CFArrayAppendValue(v7, @"Firmware/SE");
      if (a5)
      {
        sub_10000C80C();
        if (!AMAuthInstallBundleShouldPersonalizeOSImage(v27, v28, v29, v30))
        {
          CFArrayAppendValue(Mutable, @"RecoveryOSOS");
        }
      }

      v31 = 2;
      if (Mutable && v7)
      {
        v32 = sub_10000C8E0();
        v31 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(v32, v33, a3, a4, a5, a6, v34, Mutable, v7, v24);
      }
    }
  }

  else
  {
    sub_10000C708();
    v31 = 1;
  }

  SafeRelease(v36);
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(0);
  return v31;
}

void AMAuthInstallBundleCopyURLForKey(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, int a17, __int16 a18, char a19, char a20, CFStringRef pathComponent, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_10000C938();
  a32 = v38;
  a33 = v41;
  v42 = 0;
  pathComponent = 0;
  a20 = 0;
  if (!v43 || (v44 = v39) == 0 || (v45 = v40) == 0)
  {
    sub_10000C7F4();
    goto LABEL_18;
  }

  sub_10000C7F4();
  if (v48)
  {
    v49 = v46;
    v81 = v48;
    v50 = v47;
    Value = sub_100009AD8(v46, v47);
    v51 = sub_10000C8E0();
    if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53))
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to create receipt dict");
      v42 = 0;
      v34 = 0;
      v35 = 0;
      v37 = 0;
      sub_10000C890();
      goto LABEL_18;
    }

    Value = CFBooleanGetValue(Value);
    v54 = CFGetAllocator(v49);
    if (Value)
    {
      Copy = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v54, v44);
    }

    else
    {
      Copy = CFStringCreateCopy(v54, v44);
    }

    v36 = Copy;
    v56 = CFGetAllocator(v49);
    v42 = CFStringCreateWithFormat(v56, 0, @"%@.%@.%@.");
    if (v42)
    {
      CFGetAllocator(v49);
      sub_10000C830();
      MutableCopy = CFStringCreateMutableCopy(v57, v58, v59);
      v34 = MutableCopy;
      if (MutableCopy)
      {
        CFStringAppend(MutableCopy, @"PersonalizedPath");
        v61 = CFGetAllocator(v49);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v61, 0, v34);
        if (ValueForKeyPathInDict)
        {
          v63 = ValueForKeyPathInDict;
          Value = v36;
          v35 = 0;
          v36 = 0;
LABEL_13:
          v64 = CFGetAllocator(v49);
          v65 = CFURLCreateCopyAppendingPathComponent(v64, v45, v63, 0);
          v37 = v65;
          if (!v65)
          {
            goto LABEL_18;
          }

          v66 = CFRetain(v65);
          goto LABEL_17;
        }

        v67 = CFDictionaryGetValue(*v49[16], v44);
        if (v67)
        {
          CFRetain(v67);
          v35 = 0;
          sub_10000C7AC();
LABEL_17:
          *v81 = v66;
          goto LABEL_18;
        }

        v68 = sub_10000C8E0();
        if (AMAuthInstallBundleCopyBuildIdentityForVariant(v68, v69, v50, v70))
        {
          AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to copy variant");
          v35 = 0;
          v37 = 0;
          Value = v36;
          goto LABEL_37;
        }

        CFGetAllocator(v49);
        sub_10000C830();
        v74 = CFStringCreateMutableCopy(v71, v72, v73);
        v35 = v74;
        if (v74)
        {
          CFStringAppend(v74, @"Path");
          v75 = CFGetAllocator(v49);
          v76 = AMAuthInstallSupportGetValueForKeyPathInDict(v75, 0, v35);
          if (!v76)
          {
            sub_10000C7AC();
            goto LABEL_18;
          }

          v77 = v76;
          v78 = CFGetAllocator(v49);
          Value = v36;
          if (!AMAuthInstallSupportCreatePrependedFilePath(v78, v36, v77, &pathComponent))
          {
            v79 = CFGetAllocator(v49);
            v80 = CFURLCreateCopyAppendingPathComponent(v79, v45, pathComponent, 0);
            v36 = v80;
            if (!v80)
            {
              v37 = 0;
              goto LABEL_18;
            }

            if (AMAuthInstallSupportFileURLExists(v80, &a20))
            {
              v37 = 0;
              goto LABEL_18;
            }

            if (a20)
            {
              v63 = pathComponent;
            }

            else
            {
              v63 = v77;
            }

            goto LABEL_13;
          }

          AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to prepend entry name to path");
          v37 = 0;
LABEL_37:
          v36 = 0;
          goto LABEL_18;
        }

LABEL_32:
        sub_10000C7AC();
        goto LABEL_18;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = 0;
    goto LABEL_32;
  }

LABEL_18:
  SafeRelease(pathComponent);
  SafeRelease(0);
  SafeRelease(Value);
  SafeRelease(v42);
  SafeRelease(v34);
  SafeRelease(v35);
  SafeRelease(0);
  SafeRelease(v37);
  SafeRelease(v36);
  sub_10000C91C();
}

uint64_t AMAuthInstallBundlePersonalizeRestoreLocalPolicy(const void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v8 = CFGetAllocator(a1);
  cf = 0;
  v17 = 0;
  theDict = 0;
  v15 = 0;
  v13 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/LocalPolicy.restore.img4", 0, &v15);
  if (ServerRequest || (ServerRequest = sub_10000BD9C(a1, a2, a3, &v17), ServerRequest) || (ServerRequest = AMAuthInstallRestoreLocalPolicyCreateServerRequest(a1, v17, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v13), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v13, &cf), ServerRequest))
  {
    v11 = ServerRequest;
  }

  else
  {
    v10 = AMAuthInstallSupportWriteDataToFileURL(v8, cf, v15, 1);
    if (v10)
    {
      v11 = v10;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRestoreLocalPolicy", "failed to write local policy to %@", v15);
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        *a4 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v13);
  SafeRelease(theDict);
  SafeRelease(v15);
  SafeRelease(cf);
  SafeRelease(v17);
  SafeRelease(0);
  return v11;
}

CFTypeRef _CreateRelativePathForManifestEntry(const void *a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  v23 = 0;
  if (a1 && a3 && a5)
  {
    if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &v23))
    {
      AMAuthInstallLog(3, "_CreateRelativePathForManifestEntry", "failed to create receipt dict");
    }

    else
    {
      v9 = CFGetAllocator(a1);
      ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v9, v23, @"%@.%@.%@.%@", v10, v11, v12, v13, v14, @"Manifest", a5, @"Info", @"PersonalizedPath");
      if (ValueForKeyWithFormat || (v16 = CFGetAllocator(a1), (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v16, a4, @"%@.%@.%@", v17, v18, v19, v20, v21, a5, @"Info", @"Path")) != 0))
      {
        v5 = CFRetain(ValueForKeyWithFormat);
        goto LABEL_8;
      }
    }

    v5 = 0;
  }

LABEL_8:
  SafeRelease(v23);
  return v5;
}

uint64_t AMAuthInstallBundleSetEntryEnabled(uint64_t a1, const void *a2, int a3)
{
  result = 1;
  if (a1 && a2)
  {
    Mutable = *(a1 + 528);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a1 + 528) = Mutable) != 0))
    {
      _CFDictionarySetBoolean(Mutable, a2, a3);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntry", "overriding entry: %@", a2);
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntry", "override path: %@", a3);
      sub_10000C7DC();
      sub_10000C80C();
      CFDictionarySetValue(v6, v7, v8);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideBuildManifest(void *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
    if (DictionaryFromFileURL)
    {
      v2 = DictionaryFromFileURL;
      AMAuthInstallLog(3, "AMAuthInstallBundleOverrideBuildManifest", "failed to read build identity override file");
    }

    else if (*(a1[16] + 16))
    {
      return 0;
    }

    else
    {
      v2 = 14;
      AMAuthInstallLog(3, "AMAuthInstallBundleOverrideBuildManifest", "failed to create build identity override");
    }
  }

  return v2;
}

uint64_t AMAuthInstallBundleOverrideRecoveryOSBuildManifest(void *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
    if (DictionaryFromFileURL)
    {
      v2 = DictionaryFromFileURL;
      AMAuthInstallLog(3, "AMAuthInstallBundleOverrideRecoveryOSBuildManifest", "failed to read recoveryOS build identity override file");
    }

    else if (*(a1[16] + 24))
    {
      return 0;
    }

    else
    {
      v2 = 14;
      AMAuthInstallLog(3, "AMAuthInstallBundleOverrideRecoveryOSBuildManifest", "failed to create recoveryOS build identity override");
    }
  }

  return v2;
}

CFIndex _AMAuthInstallBundleApplyMeasurements(void *a1, CFStringRef theString1, const __CFURL *a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  v52 = theString1;
  err = 0;
  if (!a1)
  {
    sub_10000C714();
    Code = 1;
    goto LABEL_40;
  }

  ValueForKeyWithFormat = 0;
  Code = 1;
  if (!theString1 || (v9 = a3) == 0)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v6 = 0;
  if (!a5)
  {
    goto LABEL_40;
  }

  if (CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo)
  {
    v24 = sub_10000C7DC();
    Value = CFDictionaryGetValue(v24, @"VinylFirmware");
    v26 = Value;
    if (Value)
    {
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", @"VinylFirmware", Value);
    }

    Measurements = AMAuthInstallBasebandCreateMeasurements(a1, v9, v26, &theDict);
    if (Measurements)
    {
      Code = Measurements;
      goto LABEL_39;
    }

    v28 = a1[6];
    if (v28 && *(v28 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v28 + 8));
      v30 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v30 = kAMAuthInstallTagBbPsi2PartialDigest;
      }

      v31 = *v30;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v32 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v32 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(theDict, v31);
      v33 = *v32;
      CFDictionaryRemoveValue(theDict, v33);
      CFDictionaryRemoveValue(*a5, v31);
      CFDictionaryRemoveValue(*a5, v33);
    }

    a4 = 0;
    goto LABEL_26;
  }

  if (CFStringCompare(theString1, @"eUICC,Main", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"eUICC,Gold", 0) == kCFCompareEqualTo)
  {
    v20 = sub_10000C7DC();
    v21 = CFDictionaryGetValue(v20, @"VinylFirmware");
    if (v21)
    {
      v22 = v21;
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", @"VinylFirmware", v21);
      v9 = v22;
    }

    Code = AMAuthInstallVinylCreateMeasurements(a1, v9, &theDict, &v52);
    a4 = 0;
    sub_10000C714();
    if (v23)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  v13 = CFGetAllocator(a1);
  v6 = @"Info";
  ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v13, a4, @"%@.%@", v14, v15, v16, v17, v18, @"Info", @"Img4PayloadType");
  valid = AMAuthInstallApImg4ValidImage(v9, &err);
  if (err)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to check file %@ with error: %@", theString1, err);
    Code = CFErrorGetCode(err);
LABEL_39:
    sub_10000C714();
    goto LABEL_40;
  }

  if (valid)
  {
    v39 = *(a1[2] + 128);
    goto LABEL_50;
  }

  v40 = CFGetAllocator(a1);
  v46 = AMAuthInstallSupportGetValueForKeyWithFormat(v40, a4, @"%@.%@", v41, v42, v43, v44, v45, @"Info", @"HashMethod");
  if (!v46 || (v6 = v46, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    v39 = 256;
    goto LABEL_50;
  }

  v48 = *(a1[2] + 112);
  if (CFStringCompare(v6, @"sha1", 0))
  {
    if (CFStringCompare(v6, @"sha2-256", 0))
    {
      if (CFStringCompare(v6, @"sha2-384", 0))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "digest type in the build manifest is not supported");
        sub_10000C714();
        Code = 7;
        goto LABEL_40;
      }

      v39 = 384;
    }

    else
    {
      v39 = 256;
    }
  }

  else
  {
    v39 = 1;
  }

  if (v48)
  {
LABEL_50:
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(a1, v9, ValueForKeyWithFormat, v39, 0, 0, &theDict);
    if (MeasurementsWithTag)
    {
      Code = MeasurementsWithTag;
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@", theString1);
      goto LABEL_39;
    }

LABEL_26:
    v34 = theDict;
    if (!theDict)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed find measurementsDict for entry %@", v52);
      sub_10000C714();
      Code = 8;
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v34 = AMAuthInstallApMeasureBinary(v9, 0x100000, v39, &err);
  theDict = v34;
  if (!v34)
  {
    Code = CFErrorGetCode(err);
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@ with error: %@", theString1, err);
    sub_10000C714();
    goto LABEL_40;
  }

LABEL_27:
  Count = CFDictionaryGetCount(v34);
  if (Count < 1)
  {
    Code = 0;
    goto LABEL_39;
  }

  v36 = Count;
  ValueForKeyWithFormat = calloc(8uLL, Count);
  v6 = calloc(8uLL, v36);
  CFDictionaryGetKeysAndValues(theDict, &ValueForKeyWithFormat->isa, &v6->isa);
  for (i = 0; i != v36; ++i)
  {
    if (!a4 || CFDictionaryContainsKey(a4, *(&ValueForKeyWithFormat->isa + i)) || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"MemoryMap", 0) == kCFCompareEqualTo || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"RawDataDigest", 0) == kCFCompareEqualTo)
    {
      CFDictionarySetValue(*a5, *(&ValueForKeyWithFormat->isa + i), *(&v6->isa + i));
    }
  }

  Code = 0;
LABEL_40:
  SafeRelease(theDict);
  SafeFree(ValueForKeyWithFormat);
  SafeFree(v6);
  SafeRelease(err);
  return Code;
}

uint64_t _AMAuthInstallBundleSetObjectPropertyOverrides(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v11 = a3;
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = *(a1 + 424);
        if (result)
        {
          result = CFDictionaryGetValue(result, @"ObjectRequestEntries");
          if (result)
          {
            result = CFDictionaryGetValue(result, a2);
            if (result)
            {
              v7 = sub_10000C8A8();
              v8 = CFGetAllocator(v7);
              result = AMAuthInstallSupportApplyDictionaryOverrides(v8, v3, &v11, 0);
              if (result)
              {
                v10 = a2;
                v9 = result;
                AMAuthInstallLog(3, "_AMAuthInstallBundleSetObjectPropertyOverrides", "failed to set override object properties for %@", v10, v11);
                return v9;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleAllowLinks(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 432) = a2 == 0;
  return result;
}

uint64_t AMAuthInstallBundleInstallFile(_BYTE *a1, const __CFURL *a2, CFURLRef url)
{
  SoftLink = 1;
  if (a2 && a1 && url)
  {
    if (a1[432])
    {
      v12 = 0;
      v7 = AMAuthInstallSupportFileURLExists(url, &v12);
      if (v7)
      {
        SoftLink = v7;
        v11 = "AMAuthInstallSupportFileURLExists failed.";
      }

      else
      {
        if (v12 != 1)
        {
          return 0;
        }

        v8 = CFGetAllocator(a1);
        v9 = AMAuthInstallSupportCopyFile(v8, url, a2);
        if (!v9)
        {
          return 0;
        }

        SoftLink = v9;
        v11 = "AMAuthInstallSupportCopyFile failed.";
      }

      AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", v11);
      return SoftLink;
    }

    SoftLink = AMAuthInstallPlatformCreateSoftLink(a2, url);
    if (SoftLink)
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", "AMAuthInstallPlatformCreateSoftLink failed.");
    }
  }

  return SoftLink;
}

uint64_t AMAuthInstallBundleRequestTicketWithoutNonce(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 433) = a2;
  return result;
}

uint64_t _AMAuthInstallBundleGetValueForReservedKey(uint64_t a1, uint64_t a2, CFBooleanRef *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3 && a2 && *(a1 + 16))
  {
    v6 = sub_10000C83C(1, @"ApRawProductionMode");
    if (v6)
    {
      v7 = sub_10000C83C(v6, @"ApRawSecurityMode");
      if (v7)
      {
        v8 = sub_10000C83C(v7, @"ApInRomDFU");
        if (v8)
        {
          v9 = sub_10000C83C(v8, @"ApCurrentSecurityMode");
          if (v9)
          {
            v10 = sub_10000C83C(v9, @"ApCurrentProductionMode");
            if (v10)
            {
              v11 = sub_10000C83C(v10, @"ApRequiresImage4");
              if (v11)
              {
                if (sub_10000C83C(v11, @"ApDemotionPolicyOverride"))
                {
                  return 8;
                }

                v14 = *(*(a1 + 16) + 104);
                goto LABEL_22;
              }

              IsImg4 = AMAuthInstallApIsImg4(a1);
              v13 = &kCFBooleanTrue;
              if (!IsImg4)
              {
                v13 = &kCFBooleanFalse;
              }

LABEL_21:
              v14 = *v13;
LABEL_22:
              result = 0;
              *a3 = v14;
              return result;
            }

            v12 = *(*(a1 + 16) + 97);
          }

          else
          {
            v12 = *(*(a1 + 16) + 98);
          }
        }

        else
        {
          v12 = *(*(a1 + 16) + 96);
        }
      }

      else
      {
        v12 = *(*(a1 + 16) + 88);
      }
    }

    else
    {
      v12 = *(*(a1 + 16) + 20);
    }

    if (v12)
    {
      v13 = &kCFBooleanTrue;
    }

    else
    {
      v13 = &kCFBooleanFalse;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForCondition(uint64_t a1, uint64_t a2, const __CFString *a3, CFBooleanRef *a4)
{
  cf = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    if (_AMAuthInstallBundleGetValueForReservedKey(a1, a2, &cf))
    {
      DefaultResult = _AMAuthInstallBundleGetDefaultResult(a3);
LABEL_16:
      result = 0;
      *a4 = DefaultResult;
      return result;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFBooleanGetTypeID())
    {
      v10 = &kCFBooleanTrue;
      if (cf != a3)
      {
        v10 = &kCFBooleanFalse;
      }
    }

    else
    {
      v11 = CFGetTypeID(cf);
      if (v11 != CFStringGetTypeID())
      {
        DefaultResult = 0;
        goto LABEL_16;
      }

      if (CFStringCompare(cf, a3, 0))
      {
        v10 = &kCFBooleanFalse;
      }

      else
      {
        v10 = &kCFBooleanTrue;
      }
    }

    DefaultResult = *v10;
    goto LABEL_16;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForAction(uint64_t a1, uint64_t a2, const __CFBoolean *cf, CFBooleanRef *a4)
{
  v9 = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    v7 = cf;
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID() && !_AMAuthInstallBundleGetValueForReservedKey(a1, v7, &v9))
    {
      v7 = v9;
    }

    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t _AMAuthInstallBundleCheckCondition(uint64_t a1, CFDictionaryRef theDict, char *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v7 = malloc(8 * Count);
      if (v7)
      {
        CFDictionaryGetKeysAndValues(theDict, v3, v7);
        if (Count < 1)
        {
          v11 = 1;
LABEL_12:
          v4 = 0;
          if (Count)
          {
            v14 = v11;
          }

          else
          {
            v14 = 1;
          }

          *a3 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          while (1)
          {
            v12 = v3[v10];
            v13 = v7[v10];
            BOOLean = 0;
            if (_AMAuthInstallBundleGetValueForCondition(a1, v12, v13, &BOOLean))
            {
              break;
            }

            v11 &= CFBooleanGetValue(BOOLean);
            if (Count == ++v10)
            {
              goto LABEL_12;
            }
          }

          v4 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_16:
  SafeFree(v3);
  SafeFree(v7);
  return v4;
}

uint64_t _AMAuthInstallBundleApplyActions(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v6 = malloc(8 * Count);
      if (v6)
      {
        v9 = sub_10000C740();
        CFDictionaryGetKeysAndValues(v9, v10, v6);
        if (Count < 1)
        {
LABEL_10:
          v4 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = v3[v11];
            v13 = v6[v11];
            value = 0;
            if (_AMAuthInstallBundleGetValueForAction(a1, v12, v13, &value))
            {
              break;
            }

            CFDictionarySetValue(a3, v12, value);
            if (Count == ++v11)
            {
              goto LABEL_10;
            }
          }

          v4 = 1;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 2;
  }

LABEL_11:
  SafeFree(v3);
  SafeFree(v6);
  return v4;
}

uint64_t AMAuthInstallBundleProcessRulesWithEntryDict(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Info");
    if (Value)
    {
      result = CFDictionaryGetValue(Value, @"RestoreRequestRules");
      if (result)
      {

        return AMAuthInstallBundleProcessRules(a1, result, theDict);
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleProcessRules(uint64_t a1, const __CFArray *a2, __CFDictionary *a3)
{
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v7 = sub_10000C8A8();
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        v18 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
        if (!ValueAtIndex)
        {
          break;
        }

        v12 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Conditions");
        if (Value)
        {
          v15 = _AMAuthInstallBundleCheckCondition(v3, Value, &v18);
          if (v15)
          {
            v4 = v15;
            AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", "failed to check conditions");
            return v4;
          }
        }

        if (v18)
        {
          v14 = CFDictionaryGetValue(v12, @"Actions");
          if (v14)
          {
            v16 = _AMAuthInstallBundleApplyActions(v3, v14, a3);
            if (v16)
            {
              v4 = v16;
              AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", "failed to apply actions");
              return v4;
            }
          }
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      return 7;
    }
  }

  return v4;
}

uint64_t AMAuthInstallBundleFDRSupported(uint64_t a1, char *a2, const __CFString *a3, char *a4)
{
  v16 = 0;
  if (a1)
  {
    v5 = 1;
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v7 = *(a1 + 128);
          if (v7)
          {
            v8 = *(v7 + 32);
            if (!v8)
            {
              v15 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v16);
              if (v15)
              {
                v5 = v15;
                goto LABEL_15;
              }

              v8 = *(*(a1 + 128) + 32);
            }

            Value = CFDictionaryGetValue(v8, @"Info");
            if (Value && (v10 = CFDictionaryGetValue(Value, @"FDRSupport")) != 0)
            {
              v11 = v10;
              v12 = CFGetTypeID(v10);
              if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11))
              {
                AMAuthInstallLog(6, "AMAuthInstallBundleFDRSupported", "FDR is supported for this device");
                v13 = 1;
              }

              else
              {
                v13 = 0;
              }

              v5 = 0;
              *a4 = v13;
            }

            else
            {
              v5 = 8;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_15:
  SafeRelease(v16);
  return v5;
}

void sub_1000695F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, CFStringRef filePath, const __CFString *a14, CFURLRef anURL, void *value, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10000C938();
  a27 = v28;
  a28 = v37;
  v38 = 0;
  anURL = 0;
  value = 0;
  a14 = 0;
  if (!v29 || (v39 = v30) == 0 || (v40 = v32) == 0 || (v41 = v33) == 0)
  {
    v43 = 0;
    goto LABEL_25;
  }

  v42 = v36;
  v43 = 0;
  if (!v36)
  {
    goto LABEL_25;
  }

  v44 = v29;
  v45 = v29[16];
  if (!v45 || !*v45)
  {
LABEL_32:
    v38 = 0;
    goto LABEL_33;
  }

  v46 = v35;
  v47 = v34;
  v48 = CFDictionaryGetValue(v31, @"Info");
  if (!v48)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "build manifest lacks info for %@");
LABEL_30:
    v38 = 0;
    v43 = 0;
    goto LABEL_25;
  }

  v71 = v42;
  v49 = CFDictionaryGetValue(v48, @"Path");
  if (!v49)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "build manifest lacks relative path for %@");
    goto LABEL_30;
  }

  v50 = v49;
  if (v46)
  {
    v51 = CFGetAllocator(v44);
    v52 = CFStringCreateWithFormat(v51, 0, @"RecoveryOS%@");
    v53 = sub_10000C7DC();
    v54 = CFDictionaryGetValue(v53, v52);
    SafeRelease(v52);
  }

  else
  {
    v55 = sub_10000C7DC();
    v54 = CFDictionaryGetValue(v55, v39);
  }

  value = v54;
  if (v54)
  {
    CFRetain(v54);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCopyEntryURLs", "using override: %@ = %@");
  }

  else
  {
    v56 = CFGetAllocator(v44);
    v57 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v56, v40, v50, 0, &value);
    if (v57)
    {
LABEL_27:
      AMAuthInstallGetLocalizedStatusString(0, v57);
      AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "failed to construct working URL: %@");
      goto LABEL_32;
    }
  }

  v58 = CFGetAllocator(v44);
  if (AMAuthInstallSupportCreatePrependedFilePath(v58, v39, v50, &a14))
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "could not prepend entryName to destination path : %@");
    goto LABEL_32;
  }

  v59 = CFGetAllocator(v44);
  v57 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v59, v41, a14, 0, &anURL);
  if (v57)
  {
    goto LABEL_27;
  }

  if (v47)
  {
    v38 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (!v38)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "could not copy path from %@");
      v43 = 0;
      goto LABEL_25;
    }

    sub_10000C904();
    PersonalizedPathWithKey = AMAuthInstallBundleCreatePersonalizedPathWithKey(v60, v61, v62, v63);
    if (!PersonalizedPathWithKey)
    {
      v43 = 0;
      goto LABEL_25;
    }

    AMAuthInstallGetLocalizedStatusString(0, PersonalizedPathWithKey);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "failed to construct working URL: %@");
LABEL_33:
    v43 = 0;
    goto LABEL_25;
  }

  v38 = 0;
  sub_10000C824();
  if (AMAuthInstallBundleCreatePersonalizedPathWithKey(v65, v66, v67, v68))
  {
    goto LABEL_33;
  }

  v69 = CFGetAllocator(v44);
  Mutable = CFDictionaryCreateMutable(v69, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v43 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"SourceURL", value);
    CFDictionarySetValue(v43, @"DestURL", anURL);
    CFDictionarySetValue(v43, @"RelativeSrcPath", v50);
    CFDictionarySetValue(v43, @"RelativeDestPath", 0);
    *v71 = CFRetain(v43);
  }

LABEL_25:
  SafeRelease(value);
  SafeRelease(anURL);
  SafeRelease(v38);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(v43);
  SafeRelease(a14);
  sub_10000C91C();
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA256(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 32);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 32);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA256(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA384(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 48);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 48);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA384(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t _AMAuthInstallFusingProgramCreateRequest(const __CFAllocator *a1, const __CFURL *a2, CFDataRef XMLData, const __CFDictionary *cf, CFTypeRef *a5)
{
  if (cf)
  {
    v9 = cf;
    CFRetain(cf);
  }

  else
  {
    v10 = sub_10000CA10();
    v9 = CFDictionaryCreate(v10, v11, 0, v12, v13, v14);
    if (!v9)
    {
      v20 = 0;
LABEL_13:
      XMLData = 0;
      goto LABEL_14;
    }
  }

  if (!XMLData)
  {
    v20 = 0;
    Request = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_9;
  }

  v15 = sub_10000CA10();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"Action", XMLData);
  CFDictionarySetValue(v20, @"Parameters", v9);
  XMLData = CFPropertyListCreateXMLData(a1, v20);
  if (!XMLData)
  {
LABEL_14:
    Request = 0;
    v25 = 0;
    v26 = 2;
    goto LABEL_9;
  }

  Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, kCFHTTPVersion1_1);
  if (Request)
  {
    Length = CFDataGetLength(XMLData);
    v22 = sub_10000CA10();
    v25 = CFStringCreateWithFormat(v22, v23, v24, Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v25);
    CFHTTPMessageSetBody(Request, XMLData);
    v26 = 0;
    *a5 = CFRetain(Request);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

LABEL_9:
  SafeRelease(v20);
  SafeRelease(XMLData);
  SafeRelease(Request);
  SafeRelease(v9);
  SafeRelease(v25);
  SafeRelease(0);
  return v26;
}

uint64_t _AMAuthInstallFusingProgramCopyResponseParameters(const __CFAllocator *a1, const __CFData *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  errorString = 0;
  v10 = CFPropertyListCreateFromXMLData(a1, a2, 0, &errorString);
  v11 = v10;
  if (errorString)
  {
    v12 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "CFPropertyListCreateFromXMLData() error: %@", errorString);
    cf = 0;
    URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot();
    AMAuthInstallSupportCopyURLWithAppendedComponent(a1, URLForTempDirectoryRoot, @"badresponse.bin", 0, &cf);
    AMAuthInstallSupportWriteDataToFileURL(a1, a2, cf, 1);
    SafeRelease(cf);
    CFRelease(errorString);
    errorString = 0;
  }

  else if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"Status");
    if (Value)
    {
      v15 = Value;
      v16 = CFDictionaryGetValue(v11, @"Message");
      v17 = CFDictionaryGetValue(v11, @"Data");
      if (CFNumberGetValue(v15, kCFNumberIntType, a3))
      {
        *a4 = SafeRetain(v16);
        v12 = 0;
        *a5 = SafeRetain(v17);
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 17;
    }
  }

  else
  {
    Length = CFDataGetLength(a2);
    v12 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "can't parse response (%u bytes of apparent garbage)", Length);
  }

  SafeRelease(v11);
  SafeRelease(errorString);
  return v12;
}

uint64_t AMAuthInstallFusingProgramRequestInternal(const __CFAllocator *a1, const __CFURL *a2, const void *a3, CFTypeRef *a4, const __CFDictionary *a5)
{
  v5 = 0;
  v35 = 0;
  valuePtr = 0;
  v33 = 0;
  v34 = 0;
  v6 = 1;
  errorString = 0;
  if (!a2 || !a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ProfileSpecifier", a3);
      v16 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"GetFusingProgram", v10, &v35);
      if (v16)
      {
        v6 = v16;
        v5 = 0;
        v11 = 0;
        v9 = v35;
        goto LABEL_32;
      }

      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "requesting fusing program from %@", a2);
      Value = CFDictionaryGetValue(a3, @"ChipID");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "Chiup ID: %u", valuePtr);
      v18 = sub_10000CA10();
      v11 = CFDataCreateMutable(v18, v19);
      v9 = v35;
      if (v11)
      {
        v20 = AMAuthInstallHttpMessageSendSync(v35, v11, a5);
        if (valuePtr == 938209 || valuePtr == 1327329 || valuePtr == 1515745 || valuePtr == 1700065 || valuePtr == 2044129 || valuePtr == 2814177 || valuePtr == 2089185)
        {
          v27 = CFPropertyListCreateFromXMLData(a1, v11, 0, &errorString);
          v33 = v27;
          if (errorString)
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "Failed to get fusing response data from CFPropertyListCreateFromXMLData() error: %@", errorString);
            v5 = 0;
            goto LABEL_44;
          }

          v28 = v27;
          v5 = 0;
        }

        else
        {
          v31 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v11, &valuePtr + 4, &v34, &v33);
          if (v31)
          {
            v6 = v31;
            v5 = v34;
            goto LABEL_32;
          }

          if (HIDWORD(valuePtr))
          {
            v5 = v34;
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server error: %@ (%d)", v34, HIDWORD(valuePtr));
            v6 = 99;
            goto LABEL_32;
          }

          v28 = v33;
          v5 = v34;
        }

        AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "httpStatus=%u, status=%d, message=%@", v20, 0, v5);
        if (v28)
        {
          v29 = CFGetTypeID(v28);
          if (v29 == CFDictionaryGetTypeID())
          {
            AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "data=%@", v28);
            v6 = 0;
            *a4 = CFRetain(v28);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "fusing program type mismatch");
            v6 = 17;
          }

          goto LABEL_32;
        }

        AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server failed to provide a fusing program");
LABEL_44:
        v6 = 14;
        goto LABEL_32;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v11 = 0;
    }

    v6 = 2;
  }

LABEL_32:
  SafeRelease(v10);
  SafeRelease(v9);
  SafeRelease(v11);
  SafeRelease(v5);
  SafeRelease(v33);
  return v6;
}

CFTypeRef AMAuthInstallFusingCreateProfileName(__CFString *cf)
{
  v1 = cf;
  v27.location = 0;
  v27.length = 0;
  *values = *off_1000AA338;
  if (!cf)
  {
    v17 = 0;
LABEL_58:
    v20 = 0;
    goto LABEL_59;
  }

  if (!cf[5].info)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", "no fusing profile specified", v27.location, v27.length, values[0], values[1]);
LABEL_56:
    v17 = 0;
LABEL_57:
    v1 = 0;
    goto LABEL_58;
  }

  data = cf->data;
  if (!data)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", "ap parameters are not set", v27.location, v27.length, values[0], values[1]);
    goto LABEL_56;
  }

  v3 = *(cf[1].data + 1);
  if (v3 != 241889 && v3 != 520417 && v3 != 938209 && v3 != 1327329 && v3 != 1515745 && v3 != 1700065 && v3 != 2044129 && v3 != 2089185 && v3 != 2814177 && v3 != 8343777 && v3 != 9781473 && v3 != 9572577)
  {
    goto LABEL_48;
  }

  if (!*(data + 15))
  {
    AMAuthInstallLog(4, "AMAuthInstallFusingCreateProfileName", "hardware model is not set, fusing profile name will not be updated.");
LABEL_48:
    v17 = 0;
    v20 = 0;
    goto LABEL_49;
  }

  v15 = CFGetAllocator(cf);
  MutableCopy = CFStringCreateMutableCopy(v15, 0, *(v1->data + 15));
  v17 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_57;
  }

  CFStringLowercase(MutableCopy, 0);
  v18 = CFGetAllocator(v1);
  v19 = CFArrayCreate(v18, values, 2, &kCFTypeArrayCallBacks);
  v20 = v19;
  if (!v19)
  {
    v1 = 0;
    goto LABEL_59;
  }

  if (CFArrayGetCount(v19) >= 1)
  {
    v21 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      v29.length = CFStringGetLength(v17);
      v29.location = 0;
      if (CFStringFindWithOptions(v17, ValueAtIndex, v29, 4uLL, &v27))
      {
        break;
      }

      if (++v21 >= CFArrayGetCount(v20))
      {
        goto LABEL_49;
      }
    }

    CFStringDelete(v17, v27);
    v25 = CFGetAllocator(v1);
    v26 = CFStringCreateMutableCopy(v25, 0, v1[5].info);
    v1 = v26;
    if (v26)
    {
      CFStringAppend(v26, @"-");
      CFStringAppend(v1, v17);
      v23 = CFRetain(v1);
      goto LABEL_50;
    }

LABEL_59:
    v23 = 0;
    goto LABEL_50;
  }

LABEL_49:
  v23 = CFRetain(v1[5].info);
  v1 = 0;
LABEL_50:
  SafeRelease(v17);
  SafeRelease(v1);
  SafeRelease(v20);
  return v23;
}

uint64_t AMAuthInstallFusingProgramRequest(_DWORD *cf)
{
  valuePtr = 0;
  v24 = 0;
  if (!cf)
  {
    goto LABEL_39;
  }

  if (!*(cf + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "no fusing server specified");
LABEL_39:
    sub_10000C9FC();
    ProfileName = 0;
    v9 = 1;
    goto LABEL_36;
  }

  if (!*(cf + 21))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "no fusing profile specified");
    goto LABEL_39;
  }

  v6 = *(cf + 6);
  v7 = *v6;
  LODWORD(valuePtr) = v6[1];
  HIDWORD(valuePtr) = v7;
  v24 = v6[24];
  ProfileName = AMAuthInstallFusingCreateProfileName(cf);
  if (!ProfileName)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "failed to create fusing profile name");
    sub_10000C9FC();
LABEL_47:
    v9 = 99;
    goto LABEL_36;
  }

  if (*(cf + 22))
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequest", "fusing program already exists");
    v9 = 0;
    sub_10000C9FC();
    ProfileName = 0;
    goto LABEL_36;
  }

  v10 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v10, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v2 = 0;
    goto LABEL_42;
  }

  v11 = CFGetAllocator(cf);
  v2 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr + 4);
  if (!v2)
  {
LABEL_42:
    v3 = 0;
    goto LABEL_43;
  }

  v12 = CFGetAllocator(cf);
  v3 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
LABEL_43:
    v4 = 0;
    goto LABEL_44;
  }

  v13 = CFGetAllocator(cf);
  v4 = CFNumberCreate(v13, kCFNumberSInt32Type, &v24);
  if (!v4)
  {
LABEL_44:
    ProfileName = 0;
    v9 = 2;
    goto LABEL_36;
  }

  CFDictionarySetValue(Mutable, @"VendorID", v2);
  CFDictionarySetValue(Mutable, @"ChipID", v3);
  CFDictionarySetValue(Mutable, @"ProfileName", ProfileName);
  CFDictionarySetValue(Mutable, @"FusingStatus", v4);
  if (valuePtr != 938209 && valuePtr != 1327329 && valuePtr != 1515745 && valuePtr != 1700065 && valuePtr != 2044129 && valuePtr != 2814177 && valuePtr != 2089185)
  {
    ProfileName = 0;
    goto LABEL_34;
  }

  if (!*(cf + 24))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to get fusing server root CA!");
    ProfileName = 0;
    goto LABEL_47;
  }

  v20 = CFGetAllocator(cf);
  v21 = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  ProfileName = v21;
  if (!v21)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to create option Dictionary for SSL connection!");
    goto LABEL_47;
  }

  CFDictionarySetValue(v21, kAMSupportHttpOptionTrustedServerCAs, *(cf + 24));
LABEL_34:
  v22 = CFGetAllocator(cf);
  v9 = AMAuthInstallFusingProgramRequestInternal(v22, *(cf + 20), Mutable, cf + 22, ProfileName);
  if (!v9)
  {
    AMAuthInstallDebugWriteObject(cf, *(cf + 22), @"fusingprogram", 2);
  }

LABEL_36:
  SafeRelease(Mutable);
  SafeRelease(v2);
  SafeRelease(v3);
  SafeRelease(v4);
  SafeRelease(ProfileName);
  return v9;
}

uint64_t AMAuthInstallHttpCreatePostBody(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = 1;
  if (!a2)
  {
    sub_10000CAE8();
    goto LABEL_17;
  }

  sub_10000CAE8();
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    Mutable = CFStringCreateMutable(v10, 0);
    if (Mutable)
    {
      Count = CFDictionaryGetCount(v13);
      v4 = malloc(8 * Count);
      v16 = malloc(8 * Count);
      v5 = v16;
      if (v4)
      {
        if (v16)
        {
          CFDictionaryGetKeysAndValues(v13, v4, v16);
          if (Count >= 1)
          {
            v17 = 0;
            while (1)
            {
              v18 = v4[v17];
              if (!v18)
              {
                AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "invalid requestDictKeysBuffer array");
                goto LABEL_20;
              }

              if (!v5[v17])
              {
                break;
              }

              CFStringAppend(Mutable, v18);
              CFStringAppend(Mutable, @"=");
              CFStringAppend(Mutable, v5[v17]);
              if (v17 < Count - 1)
              {
                CFStringAppend(Mutable, @"&");
              }

              if (Count == ++v17)
              {
                goto LABEL_13;
              }
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "invalid requestDictValuesBuffer array");
LABEL_20:
            v7 = 0;
            v6 = 0;
            v8 = 14;
            goto LABEL_17;
          }

LABEL_13:
          AMAuthInstallLog(8, "AMAuthInstallHttpCreatePostBody", "postString=%@", Mutable);
          Length = CFStringGetLength(Mutable);
          v6 = malloc(Length + 1);
          if (v6)
          {
            if (!CFStringGetCString(Mutable, v6, Length + 1, 0x8000100u))
            {
              v8 = 3;
              AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "conversion of postString to c-string failed");
              v7 = 0;
              goto LABEL_17;
            }

            v20 = CFDataCreate(v14, v6, Length);
            v7 = v20;
            if (v20)
            {
              v8 = 0;
              *a3 = CFRetain(v20);
              goto LABEL_17;
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "postData allocation failed");
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "tmpStringBuffer allocation failure");
            v7 = 0;
          }

LABEL_30:
          v8 = 2;
          goto LABEL_17;
        }

        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "requestDictValuesBuffer allocation failed");
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "requestDictKeysBuffer allocation failed");
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_30;
  }

LABEL_17:
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeFree(v4);
  SafeFree(v5);
  SafeFree(v6);
  return v8;
}

uint64_t AMAuthInstallHttpSetUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFStringRef theString)
{
  value = 0;
  v4 = 1;
  if (a2 && a3 && theString)
  {
    v7 = AMAuthInstallHttpUriEscapeString(a1, theString, &value);
    if (v7)
    {
      v4 = v7;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", "AMAuthInstallHttpUriEscapeString failed");
    }

    else if (value)
    {
      CFDictionarySetValue(a2, a3, value);
      v4 = 0;
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", "escapedValue is NULL");
    }
  }

  SafeRelease(value);
  return v4;
}

uint64_t AMAuthInstallHttpCreatePostRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, CFTypeRef *a4)
{
  Request = 0;
  theData = 0;
  v5 = 1;
  if (a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      PostBody = AMAuthInstallHttpCreatePostBody(a1, a3, &theData);
      if (PostBody)
      {
        v5 = PostBody;
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostRequest", "AMAuthInstallHttpCreatePostBody failed");
        Request = 0;
        v7 = 0;
      }

      else if (theData)
      {
        Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, kCFHTTPVersion1_1);
        if (Request)
        {
          Length = CFDataGetLength(theData);
          v7 = CFStringCreateWithFormat(a1, 0, @"%ld", Length);
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v7);
          CFHTTPMessageSetBody(Request, theData);
          v5 = 0;
          *a4 = CFRetain(Request);
        }

        else
        {
          v7 = 0;
          v5 = 0;
        }
      }

      else
      {
        Request = 0;
        v7 = 0;
        v5 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(theData);
  SafeRelease(Request);
  SafeRelease(v7);
  SafeRelease(0);
  return v5;
}

uint64_t AMAuthInstallHttpSetBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDataRef theData)
{
  theString = 0;
  v4 = 1;
  if (a2 && a3 && theData)
  {
    v8 = AMAuthInstallSupportBase64Encode(a1, theData, &theString);
    if (v8)
    {
      v4 = v8;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", "Base64Encode failed");
    }

    else if (theString)
    {
      v4 = AMAuthInstallHttpSetUriEscapedValue(a1, a2, a3, theString);
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", "encodedValue is NULL");
    }
  }

  SafeRelease(theString);
  return v4;
}

uint64_t AMAuthInstallRestoreLocalPolicyCreateServerRequest(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  theDict = 0;
  if (sub_10006B870(a1, a2, &theDict) || (v5 = *(*(a1 + 16) + 24)) == 0)
  {
    v6 = 1;
  }

  else
  {
    CFDictionarySetValue(theDict, @"ApNonce", v5);
    CFDictionarySetValue(theDict, @"Ap,LocalBoot", kCFBooleanFalse);
    v6 = 0;
    if (a3)
    {
      *a3 = CFRetain(theDict);
    }
  }

  SafeRelease(theDict);
  return v6;
}

uint64_t sub_10006B870(uint64_t **a1, const void *a2, CFTypeRef *a3)
{
  if (a1 && (v6 = CFGetAllocator(a1), a1[2]))
  {
    v7 = v6;
    IsImg4 = AMAuthInstallApIsImg4(a1);
    v9 = 0;
    v10 = 1;
    v11 = 0;
    v12 = 0;
    if (a2 && IsImg4)
    {
      if (CFDataGetLength(a2) == 48)
      {
        v9 = sub_10000D4CC();
        v11 = CFDataCreate(v7, byte_1000848E8, 48);
        CFDictionarySetValue(v9, @"Digest", v11);
        CFDictionarySetValue(v9, @"Trusted", kCFBooleanTrue);
        v12 = sub_10000D4CC();
        CFDictionarySetValue(v12, @"@ApImg4Ticket", kCFBooleanTrue);
        _CFDictionarySetInteger32(v12, @"ApChipID", *(a1[2] + 2));
        _CFDictionarySetInteger32(v12, @"ApBoardID", *(a1[2] + 3));
        _CFDictionarySetInteger64(v12, @"ApECID", *a1[2]);
        _CFDictionarySetBoolean(v12, @"ApProductionMode", *(a1[2] + 20));
        _CFDictionarySetInteger32(v12, @"ApSecurityDomain", *(a1[2] + 4));
        _CFDictionarySetBoolean(v12, @"ApSecurityMode", *(a1[2] + 88));
        CFDictionarySetValue(v12, @"Ap,LocalPolicy", v9);
        CFDictionarySetValue(v12, @"Ap,NextStageIM4MHash", a2);
        v10 = 0;
        if (a3)
        {
          *a3 = CFRetain(v12);
        }
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v12 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 1;
  }

  SafeRelease(v12);
  SafeRelease(v11);
  SafeRelease(v9);
  return v10;
}

uint64_t AMAuthInstallLocalPolicyStitchTicketData(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = CFGetAllocator(a1);
  if (!a2)
  {
LABEL_9:
    v10 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a2, @"ApImg4Ticket");
  if (!Value)
  {
LABEL_8:
    a2 = 0;
    goto LABEL_9;
  }

  v8 = Value;
  a2 = CFDataCreate(v6, byte_1000848D2, 22);
  if (a2)
  {
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v6, a2, v8);
    v10 = StitchTicket;
    if (StitchTicket)
    {
      v11 = 0;
      if (a3)
      {
        *a3 = CFRetain(StitchTicket);
      }
    }

    else
    {
      v11 = 3;
      AMAuthInstallLog(3, "AMAuthInstallLocalPolicyStitchTicketData", "failed to stitch local policy object");
    }
  }

  else
  {
    v10 = 0;
    v11 = 2;
  }

LABEL_10:
  SafeRelease(v10);
  SafeRelease(a2);
  return v11;
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigest(CFNumberRef a1, __CFDictionary *a2, const __CFData *a3, CFDataRef theData, const void *a5, unsigned int a6, int a7, const void *a8, const void *a9)
{
  v13 = a3;
  memset(v34, 0, sizeof(v34));
  v16 = a3 + a6;
  v17 = *(v16 + 2);
  valuePtr = *(v16 + 1);
  Length = CFDataGetLength(theData);
  sub_10000FBE0(Length, v19, "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x");
  sub_10000FBE0(v20, v21, "version=0x%x, personalizationOffset=0x%x");
  *bytes = a7 - v17;
  v33 = v17 + 80;
  *&v34[20] = v17 + a6;
  sub_10000FBE0(v22, v23, "reservationLength=0x%x, codeBytesHashed=0x%x (%s), downloadBytesHashed=0x%x (%s)");
  v24 = CFDataGetLength(theData);
  sub_10000FBE0(v24, v25, "personalization area=0x%x");
  if ((((v17 + 80) | (v17 + a6)) & 0x3F) == 0)
  {
    sub_100009230(a5, v17 + 80, v34);
    sub_100009230(v13, *&v34[20], &v34[24]);
    v27 = CFGetAllocator(a1);
    v13 = CFDataCreate(v27, bytes, 52);
    if (v13)
    {
      v28 = CFGetAllocator(a1);
      a1 = CFNumberCreate(v28, kCFNumberSInt32Type, &valuePtr);
      if (a1)
      {
        CFDictionarySetValue(a2, a8, a1);
        CFDictionarySetValue(a2, a9, v13);
        v26 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      a1 = 0;
    }

    v26 = 2;
    goto LABEL_6;
  }

  sub_10000FC28();
  v26 = 10;
LABEL_6:
  SafeRelease(a1);
  SafeRelease(v13);
  return v26;
}

uint64_t AMAuthInstallMonetMeasureEBootLoader(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  *bytes = 0;
  v30 = 0uLL;
  v31 = 0;
  valuePtr = 0;
  if (CFDataGetLength(theData) >= 0x28)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v11 = BytePtr;
    if (!BytePtr)
    {
      v22 = 0;
      goto LABEL_6;
    }

    if (*(BytePtr + 4) <= CFDataGetLength(theData))
    {
      theDict = a3;
      Length = CFDataGetLength(theData);
      v13 = *(v11 + 5);
      v14 = (Length - *(v11 + 4));
      valuePtr = *(v11 + v14 + 4);
      v15 = *(v11 + v14 + 8);
      v16 = CFDataGetLength(theData);
      sub_10000FBE0(v16, v17, "%@: fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x");
      sub_10000FBE0(v18, v19, "%@: version=0x%x, personalizationOffset=0x%x");
      *bytes = v13 - v15;
      *&bytes[4] = v15 + v14;
      sub_10000FBE0(v20, v21, "%@: reservationLength=0x%x, codeBytesHashed=0x%x (%s)");
      if (((v15 + v14) & 0x3F) == 0)
      {
        sub_100009230(v11, v15 + v14, &v30);
        v24 = CFGetAllocator(a1);
        v11 = CFDataCreate(v24, bytes, 28);
        if (v11)
        {
          v25 = CFGetAllocator(a1);
          v22 = CFNumberCreate(v25, kCFNumberSInt32Type, &valuePtr);
          if (v22)
          {
            CFDictionarySetValue(theDict, a4, v22);
            CFDictionarySetValue(theDict, a5, v11);
            v23 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = 2;
        goto LABEL_10;
      }
    }
  }

  v22 = 0;
  v11 = 0;
LABEL_6:
  v23 = 10;
LABEL_10:
  SafeRelease(v22);
  SafeRelease(v11);
  return v23;
}

uint64_t AMAuthInstallMonetMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_43;
  }

  v6 = 0;
  v7 = 1;
  if (a4 && a3 && a2 && *(a1 + 48))
  {
    sub_10000FBF8();
    if (v12)
    {
      goto LABEL_39;
    }

    sub_10000FBB0();
    v12 = v12 || v11 == 938209;
    if (v12 || v11 == 1327329 || v11 == 1515745 || v11 == 1700065 || v11 == 2044129 || v11 == 2089185 || v11 == 2814177)
    {
      v19 = CFGetAllocator(v10);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA384(v19, a2, &value);
      goto LABEL_40;
    }

    sub_100008870();
    v23 = v21 || v22 == 9781473;
    if (v23 || v22 == 9572577)
    {
LABEL_39:
      v25 = CFGetAllocator(v9);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA256(v25, a2, &value);
    }

    else
    {
      v27 = CFGetAllocator(v9);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData(v27, a2, &value);
    }

LABEL_40:
    v6 = value;
    if (DigestForData_SHA384)
    {
      v7 = DigestForData_SHA384;
    }

    else if (value)
    {
      CFDictionarySetValue(a3, a4, value);
      v7 = 0;
      v6 = value;
    }

    else
    {
      v7 = 2;
    }
  }

LABEL_43:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallMonetMeasureElf(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  if (CFDataGetLength(theData) > 0x33 && (BytePtr = CFDataGetBytePtr(theData), *BytePtr == 1179403647))
  {
    v11 = *(BytePtr + 22);
    if (*(BytePtr + 22))
    {
      v12 = 0;
      v13 = 0;
      v14 = &BytePtr[*(BytePtr + 7)];
      do
      {
        if (*(v14 + 3) > v13 && (*(v14 + 6) & 0x7000000) != 0x5000000)
        {
          v13 = *(v14 + 3);
          v12 = v14;
        }

        v14 += 32;
        --v11;
      }

      while (v11);
      if (v12)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v15, 0);
        if (Mutable)
        {
          v17 = CFGetAllocator(a1);
          v18 = CFDataCreateMutable(v17, 0);
          if (v18)
          {
            sub_10000FBF8();
            if (!v20)
            {
              sub_10000FBB0();
              v20 = v20 || v19 == 938209;
              if (v20 || v19 == 1327329 || v19 == 1515745 || v19 == 1700065 || v19 == 2044129 || v19 == 2089185 || v19 == 2814177)
              {
                CFDataSetLength(Mutable, 48);
                CFDataGetBytePtr(theData);
                sub_10000FBC0();
                v27 = sub_10000FC18();
                CC_SHA384(v27, v28, v29);
                CFDataSetLength(v18, 48);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v18);
                v30 = sub_10000FC08();
                CC_SHA384(v30, v31, v32);
LABEL_48:
                CFDictionarySetValue(a3, a5, v18);
                CFDictionarySetValue(a3, a4, Mutable);
                v33 = 0;
                goto LABEL_49;
              }

              sub_100008870();
              if (v34)
              {
                v36 = 1;
              }

              else
              {
                v36 = v35 == 9781473;
              }

              if (!v36 && v35 != 9572577)
              {
                CFDataSetLength(Mutable, 20);
                CFDataGetBytePtr(theData);
                sub_10000FBC0();
                v45 = sub_10000FC18();
                CC_SHA1(v45, v46, v47);
                CFDataSetLength(v18, 20);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v18);
                v48 = sub_10000FC08();
                CC_SHA1(v48, v49, v50);
                goto LABEL_48;
              }
            }

            CFDataSetLength(Mutable, 32);
            CFDataGetBytePtr(theData);
            sub_10000FBC0();
            v38 = sub_10000FC18();
            CC_SHA256(v38, v39, v40);
            CFDataSetLength(v18, 32);
            CFDataGetBytePtr(theData);
            CFDataGetLength(theData);
            CFDataGetMutableBytePtr(v18);
            v41 = sub_10000FC08();
            CC_SHA256(v41, v42, v43);
            goto LABEL_48;
          }
        }

        else
        {
          v18 = 0;
        }

        v33 = 2;
        goto LABEL_49;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", "file lacks a hash section");
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", "invalid file format");
  }

  Mutable = 0;
  v18 = 0;
  v33 = 10;
LABEL_49:
  SafeRelease(v18);
  SafeRelease(Mutable);
  return v33;
}

uint64_t AMAuthInstallMonetMeasureBootSbl(const void *a1, CFDataRef theData, __CFDictionary *a3, uint64_t a4, const void *a5)
{
  BytePtr = CFDataGetBytePtr(theData);
  v11 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", 0);
LABEL_3:
    AMAuthInstallLog(3, "_FindSbl1HeaderInFileData", "this file lacks sufficient magic", v22);
    return 10;
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v17 = Length >> 2;
  v18 = v11 - 4;
  do
  {
    if (*(v18 + 1) == 1943474228)
    {
      v15 = (v15 + 1);
      v16 = v18;
      if (*(v18 + 2) != 2097890138)
      {
        sub_10000FBE0(Length, v13, "found SBL header");
        v22 = v15;
        sub_10000FBE0(v19, v20, "foundMagic=%d");
        v16 = v18;
        goto LABEL_12;
      }
    }

    v18 += 4;
    --v17;
  }

  while (v17);
  AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v15);
  if (!v16)
  {
    goto LABEL_3;
  }

LABEL_12:
  if (CFDataGetLength(theData) < 0x50 || *(v16 + 7) > CFDataGetLength(theData))
  {
    return 10;
  }

  v21 = *(v16 + 5);
  if (v16 + 80 != &BytePtr[v21])
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureBootSbl", "junk following sbl1 header", v22);
    return 10;
  }

  return AMAuthInstallMonetSetVersionAndPartialDigestForSBL(a1, a3, BytePtr, theData, v16, v21, *(v16 + 8), a4, a5);
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigestForSBL(const void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int a6, int a7, uint64_t a8, const void *a9)
{
  v58 = 0;
  v60 = 0;
  v59 = 0uLL;
  v57 = 0;
  *bytes = 0u;
  v56 = 0u;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_10000FBB0();
  v18 = v18 || v17 == 938209;
  if (v18 || v17 == 1327329 || v17 == 1515745 || v17 == 1700065 || v17 == 2044129 || v17 == 2089185 || v17 == 2814177)
  {
    v50 = 128;
  }

  else
  {
    v50 = 64;
  }

  v25 = 0;
  valuePtr = 0;
  v26 = 1;
  if (!a2 || !v14 || !v15 || !a5 || !v16)
  {
    v27 = 0;
    goto LABEL_73;
  }

  v27 = 0;
  if (a9)
  {
    key = v16;
    v28 = v14 + a6;
    v29 = *(v28 + 8);
    valuePtr = *(v28 + 4);
    Length = CFDataGetLength(v15);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", Length, a6, a7);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "version=0x%x, personalizationOffset=0x%x", valuePtr, v29);
    LODWORD(v58) = a7 - v29;
    HIDWORD(v58) = v29 + 80;
    v31 = (v29 + 80) & (v50 - 1);
    if (v31)
    {
      v32 = "NOT REQUIRED BYTE MULTIPLE";
    }

    else
    {
      v32 = "ok";
    }

    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "reservationLength=0x%x, codeBytesHashed=0x%x (%s) byte_multiple=%d", a7 - v29, v29 + 80, v32, v50);
    if (v31)
    {
      v25 = 0;
      v27 = 0;
      v26 = 10;
      goto LABEL_73;
    }

    sub_10000FBF8();
    if (v18)
    {
      goto LABEL_69;
    }

    sub_10000FBB0();
    if (v18 || v33 == 938209 || v33 == 1327329 || v33 == 1515745 || v33 == 1700065 || v33 == 2044129 || v33 == 2089185 || v33 == 2814177)
    {
      *bytes = a7 - v29;
      *&bytes[4] = v29 + 80;
      sub_10000EA30(a5, 0, v53 + 8);
      v41 = CFGetAllocator(a1);
      v42 = v53;
      v43 = 72;
      goto LABEL_70;
    }

    sub_100008870();
    v46 = v44 || v45 == 9781473;
    if (v46 || v45 == 9572577)
    {
LABEL_69:
      *bytes = a7 - v29;
      *&bytes[4] = v29 + 80;
      sub_10000F65C(a5, v29 + 80, &bytes[8]);
      v41 = CFGetAllocator(a1);
      v42 = bytes;
      v43 = 40;
    }

    else
    {
      sub_100009230(a5, v29 + 80, &v59);
      v41 = CFGetAllocator(a1);
      v42 = &v58;
      v43 = 28;
    }

LABEL_70:
    v27 = CFDataCreate(v41, v42, v43);
    if (v27)
    {
      v48 = CFGetAllocator(a1);
      v25 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
      if (v25)
      {
        CFDictionarySetValue(a2, key, v25);
        CFDictionarySetValue(a2, a9, v27);
        v26 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 2;
  }

LABEL_73:
  SafeRelease(v25);
  SafeRelease(v27);
  return v26;
}

uint64_t AMAuthInstallMonetStitchCopyIfPersonalized(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return sub_10000FBA0(v3);
}

uint64_t AMAuthInstallMonetMeasurePartitionTable(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  memset(&v13, 0, sizeof(v13));
  v5 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v5, 20);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v13);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v13, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    CC_SHA1_Final(MutableBytePtr, &v13);
    CFDictionarySetValue(a3, @"PartitionTable-Digest", v7);
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  SafeRelease(v7);
  return v11;
}

uint64_t AMAuthInstallMonetStitchPartitionTable(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return sub_10000FBA0(v3);
}

uint64_t AMAuthInstallMonetFuseIfNecessary(const __CFDictionary **a1, const void **a2, __CFDictionary *a3)
{
  v4 = a1;
  v49 = 0;
  error = 0;
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (!a1[6])
  {
LABEL_25:
    sub_10000FC28();
LABEL_26:
    v22 = 0;
    v32 = 1;
    goto LABEL_36;
  }

  v3 = a2;
  IsFused = AMAuthInstallBasebandIsFused(a1, &v49);
  if (IsFused)
  {
LABEL_37:
    v32 = IsFused;
    goto LABEL_35;
  }

  if (v49 && *(v4[6] + 24) != 2)
  {
    if (v4[22])
    {
      v14 = CFGetAllocator(v4);
      v22 = sub_10000FC34(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v46, 0);
      if (v22)
      {
        CFDictionarySetValue(a3, @"fusingprogram.plist", v22);
LABEL_22:
        v32 = 0;
LABEL_23:
        sub_10000FC28();
        goto LABEL_36;
      }

      v42 = "failed to convert fusing program to xml";
LABEL_41:
      v32 = 3;
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", v42, v44);
      goto LABEL_23;
    }

    v32 = 0;
LABEL_35:
    sub_10000FC28();
    v22 = 0;
    goto LABEL_36;
  }

  if (v4[53])
  {
    v7 = CFGetAllocator(v4);
    v43 = @"BbRequestEntries";
    v45 = @"BbFactoryDebugEnable";
    ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v7, v4[53], @"%@.%@", v8, v9, v10, v11, v12);
    if (!ValueForKeyWithFormat)
    {
      goto LABEL_24;
    }
  }

  else
  {
    ValueForKeyWithFormat = kCFBooleanFalse;
    if (!kCFBooleanFalse)
    {
LABEL_24:
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "baseband fusing is being attempted but the Factory Debug entitlement was not requested. Please enable Factory Debug to fuse.");
      goto LABEL_25;
    }
  }

  if (!CFBooleanGetValue(ValueForKeyWithFormat))
  {
    goto LABEL_24;
  }

  if (!*(v4 + 185))
  {
    if (*(v4 + 184))
    {
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "fusing program request prohibited");
      goto LABEL_46;
    }

    IsFused = AMAuthInstallFusingProgramRequest(v4);
    if (IsFused)
    {
      goto LABEL_37;
    }
  }

  if (!v4[22])
  {
LABEL_46:
    sub_10000FC28();
    v22 = 0;
    v32 = 14;
    goto LABEL_36;
  }

  v23 = CFGetAllocator(v4);
  v22 = sub_10000FC34(v23, v24, v25, v26, v27, v28, v29, v30, v43, v45, v46, 0);
  if (!v22)
  {
    v44 = error;
    v42 = "failed to convert fusing program to xml %@";
    goto LABEL_41;
  }

  CFDictionarySetValue(a3, @"fusingprogram.plist", v22);
  SafeRelease(error);
  v31 = v4[6];
  if (*(v31 + 3) && *(v31 + 2))
  {
    AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and booted; will provide fusing program and fully personalized stack");
    goto LABEL_22;
  }

  v33 = CFGetAllocator(v4);
  DictionaryFromURL = BbfwCreateDictionaryFromURL(v33, v3, &theDict);
  if (DictionaryFromURL)
  {
    v32 = DictionaryFromURL;
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v3 = malloc(8 * Count);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  v4 = malloc(8 * Count);
  if (!v4)
  {
LABEL_44:
    v32 = 2;
    goto LABEL_36;
  }

  CFDictionaryGetKeysAndValues(theDict, v3, v4);
  if (Count >= 1)
  {
    v36 = v3;
    v37 = v4;
    do
    {
      v39 = *v36++;
      v38 = v39;
      v40 = *v37++;
      CFDictionarySetValue(a3, v38, v40);
      --Count;
    }

    while (Count);
  }

  AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and unbootable; will provide fusing program and unpersonalized stack");
  v32 = 0;
LABEL_36:
  SafeRelease(v22);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(error);
  return v32;
}

uint64_t AMAuthInstallMonetCopyNextComponentName(uint64_t a1)
{
  v6 = 0;
  if (!a1 || !*(a1 + 48))
  {
    return 1;
  }

  result = AMAuthInstallBasebandIsFused(a1, &v6);
  if (!result)
  {
    if (v6)
    {
      v3 = @"boot.bbfw";
    }

    else
    {
      v3 = @"preflash.bbfw";
    }

    if (*(*(a1 + 48) + 24))
    {
      v4 = @"stack.bbfw";
    }

    else
    {
      v4 = v3;
    }

    v5 = CFRetain(v4);
    return sub_10000FBA0(v5);
  }

  return result;
}

uint64_t AMAuthInstallMonetCreateReversedMEID(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  Length = CFDataGetLength(theData);
  v7 = 0;
  v8 = 1;
  if (theData && Length == 7)
  {
    v9 = 0;
    v10 = 6;
    do
    {
      bytes[v10--] = CFDataGetBytePtr(theData)[v9++];
    }

    while (v9 != 7);
    v11 = CFDataCreate(a1, bytes, 7);
    v7 = v11;
    if (v11)
    {
      v8 = 0;
      *a3 = CFRetain(v11);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    bzero(&v6, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v6);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningCopyResponse(CFNumberFormatterRef a1, CFDataRef theData, const __CFNumber *NumberFromString, CFTypeRef *a4)
{
  theDataa = 0;
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  *buffer = 0u;
  v54 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = CFStringCreateWithBytes(a1, BytePtr, Length, 0x8000100u, 0);
  v11 = v10;
  if (!v10)
  {
    v14 = 0;
    sub_1000104EC();
    Mutable = 0;
    v44 = 3;
    goto LABEL_52;
  }

  AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Response:%@", v10);
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v14 = 0;
    goto LABEL_65;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v11, @"&");
  v14 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    v46 = "responseParts is NULL";
    goto LABEL_62;
  }

  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (!Count)
  {
    v46 = "arrayCount is 0";
    goto LABEL_62;
  }

  v16 = Count;
  theDict = Mutable;
  alloc = a1;
  v47 = a4;
  valuePtr = NumberFromString;
  v49 = v11;
  if (Count >= 1)
  {
    a1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, a1);
      location = CFStringFind(ValueAtIndex, @"=", 0).location;
      if (location == -1)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "could not split parameter: %@", ValueAtIndex);
      }

      else
      {
        v19 = location;
        v20 = CFStringGetLength(ValueAtIndex);
        NumberFromString = alloc;
        v58.location = 0;
        v58.length = v19;
        v21 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v58);
        v59.location = v19 + 1;
        v59.length = v20 + ~v19;
        v22 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v59);
        v23 = v22;
        if (v21 && v22)
        {
          CFDictionarySetValue(theDict, v21, v22);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to create key(%@) or value (%@)", v21, v22);
        }

        SafeRelease(v21);
        SafeRelease(v23);
      }

      a1 = (a1 + 1);
    }

    while (v16 != a1);
  }

  Mutable = theDict;
  Value = CFDictionaryGetValue(theDict, @"MEID");
  if (Value)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "MEID:%@", Value);
  }

  v25 = CFDictionaryGetValue(theDict, @"IMEI");
  if (v25)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI:%@", v25);
  }

  v26 = CFDictionaryGetValue(theDict, @"IMEI2");
  if (v26)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI2:%@", v26);
  }

  v27 = CFDictionaryGetValue(theDict, @"EID");
  v11 = v49;
  if (v27)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "EID:%@", v27);
  }

  v28 = CFDictionaryGetValue(theDict, @"WIFI_MAC");
  if (v28)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC:%@", v28);
  }

  v29 = CFDictionaryGetValue(theDict, @"BT_MAC");
  if (v29)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC:%@", v29);
  }

  v30 = CFDictionaryGetValue(theDict, @"USB_ETHER_MAC");
  if (v30)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "USB_ETHER_MAC:%@", v30);
  }

  v31 = CFDictionaryGetValue(theDict, @"WIFI_MAC2");
  if (v31)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC2:%@", v31);
  }

  v32 = CFDictionaryGetValue(theDict, @"BT_MAC2");
  if (v32)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC2:%@", v32);
  }

  v33 = CFDictionaryGetValue(theDict, @"ETH_MAC");
  if (v33)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETH_MAC:%@", v33);
  }

  v34 = CFDictionaryGetValue(theDict, @"ETHER_MAC2");
  if (v34)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC2:%@", v34);
  }

  v35 = CFDictionaryGetValue(theDict, @"T_MAC");
  if (v35)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "T_MAC:%@", v35);
  }

  v36 = CFDictionaryGetValue(theDict, @"ETHER_MAC3");
  if (v36)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC3:%@", v36);
  }

  v37 = CFDictionaryGetValue(theDict, @"B64_SECDATA");
  if (v37)
  {
    v38 = AMAuthInstallSupportBase64Decode(kCFAllocatorDefault, v37, &theDataa);
    if (v38)
    {
      v44 = v38;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "AMAuthInstallSupportBase64Decode failed");
LABEL_63:
      sub_1000104EC();
      goto LABEL_52;
    }

    if (theDataa)
    {
      if (CFDataGetLength(theDataa) > 0x4B)
      {
        v57.location = 0;
        v57.length = 76;
        CFDataGetBytes(theDataa, v57, buffer);
        if (!v56[6])
        {
          goto LABEL_49;
        }

        v39 = CFDataGetBytePtr(theDataa);
        v40 = CFDataCreate(alloc, v39 + 76, v56[6]);
        if (v40)
        {
          v41 = v40;
          CFDictionarySetValue(theDict, @"MANIFESTDATA", v40);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Found secure manifest in response: '%@'", v41);
          CFRelease(v41);
          goto LABEL_49;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "tempData is NULL");
LABEL_65:
        sub_1000104EC();
        v44 = 2;
        goto LABEL_52;
      }

      v46 = "decodedData is too small";
    }

    else
    {
      v46 = "decodedData is NULL";
    }

LABEL_62:
    v44 = 3;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", v46);
    goto LABEL_63;
  }

  AMAuthInstallLog(6, "AMAuthInstallProvisioningCopyResponse", "B64_SECDATA not found in response");
LABEL_49:
  v42 = CFDictionaryGetValue(theDict, @"STATUS");
  if (v42)
  {
    v43 = v42;
    a1 = CFNumberFormatterCreate(alloc, 0, kCFNumberFormatterNoStyle);
    NumberFromString = CFNumberFormatterCreateNumberFromString(alloc, a1, v43, 0, 1uLL);
    if (CFNumberGetValue(NumberFromString, kCFNumberSInt32Type, valuePtr))
    {
      v44 = 0;
      *v47 = CFRetain(theDict);
    }

    else
    {
      v44 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to convert statusNumber");
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "statusString is NULL");
    sub_1000104EC();
    v44 = 17;
  }

LABEL_52:
  SafeRelease(v11);
  SafeRelease(Mutable);
  SafeRelease(theDataa);
  SafeRelease(0);
  SafeRelease(v14);
  SafeRelease(NumberFromString);
  SafeRelease(a1);
  return v44;
}

uint64_t AMAuthInstallProvisioningPopulateRequestDict(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v7 = 0;
  theData = 0;
  ReversedMEIDFromString = 1;
  if (!a2 || !a1)
  {
    sub_1000104D8();
    goto LABEL_125;
  }

  sub_1000104D8();
  if (v12)
  {
    if (*(a1 + 320))
    {
      v13 = v11;
      v14 = CFGetAllocator(a1);
      v15 = AMAuthInstallHttpSetUriEscapedValue(v14, v13, @"COMMAND_CODE", a3);
      if (v15)
      {
        goto LABEL_131;
      }

      if (CFStringCompare(a3, @"100", 0) == kCFCompareEqualTo)
      {
        CFDictionaryRemoveValue(*(a1 + 320), @"PINECRESTID");
      }

      v16 = CFGetAllocator(a1);
      v15 = AMAuthInstallHttpSetUriEscapedValue(v16, v13, @"TICKET_VERSION", @"2");
      if (v15)
      {
LABEL_131:
        ReversedMEIDFromString = v15;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting COMMAND_CODE failed");
      }

      else
      {
        v17 = *(a1 + 48);
        if (!v17)
        {
          v7 = 0;
LABEL_45:
          if (!*(a1 + 96) || (v50 = CFGetAllocator(a1), v51 = AMAuthInstallHttpSetUriEscapedValue(v50, v13, @"CLIENT_ID", *(a1 + 96)), !v51))
          {
            Count = CFDictionaryGetCount(*(a1 + 320));
            v3 = malloc(8 * Count);
            v53 = malloc(8 * Count);
            v4 = v53;
            v5 = 0;
            ReversedMEIDFromString = 2;
            if (!v3 || !v53)
            {
              Mutable = 0;
              goto LABEL_125;
            }

            CFDictionaryGetKeysAndValues(*(a1 + 320), v3, v53);
            if (Count >= 1)
            {
              v54 = 0;
              while (v3[v54])
              {
                v55 = v4[v54];
                if (!v55)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "invalid provisioningInfoValuesBuffer array");
                  goto LABEL_128;
                }

                v56 = CFGetTypeID(v55);
                CFDataGetTypeID();
                v57 = sub_1000104C0();
                v58 = v3[v54];
                v59 = v4[v54];
                if (v56 == ReversedMEIDFromString)
                {
                  v60 = AMAuthInstallHttpSetBase64EncodedValue(v57, v13, v58, v59);
                }

                else
                {
                  v60 = AMAuthInstallHttpSetUriEscapedValue(v57, v13, v58, v59);
                }

                ReversedMEIDFromString = v60;
                if (v60)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting %@ failed", v3[v54]);
                  v5 = 0;
                  Mutable = 0;
                  goto LABEL_125;
                }

                if (Count == ++v54)
                {
                  goto LABEL_58;
                }
              }

              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "invalid provisioningInfoKeysBuffer array");
LABEL_128:
              v5 = 0;
              Mutable = 0;
              ReversedMEIDFromString = 99;
              goto LABEL_125;
            }

LABEL_58:
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            CFArrayAppendValue(Mutable, @"1.2.0");
            LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
            if (CFStringGetLength(LibraryVersionString))
            {
              v62 = LibraryVersionString;
            }

            else
            {
              v62 = @"libauthinstall-???";
            }

            CFArrayAppendValue(Mutable, v62);
            v5 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, Mutable, @"-");
            v63 = CFGetAllocator(a1);
            v64 = AMAuthInstallHttpSetUriEscapedValue(v63, v13, @"VERSION", v5);
            if (v64)
            {
              ReversedMEIDFromString = v64;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting VERSION (%@) failed", v5);
              goto LABEL_125;
            }

            v65 = *(a1 + 312);
            if (!v65)
            {
              goto LABEL_120;
            }

            Value = CFDictionaryGetValue(v65, @"MEID");
            if (Value)
            {
              if (sub_100010474(Value, v67, v68, v69, v70, v71, v72, v73, v138, v139, cf) || !cf)
              {
                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid, adding original string to response");
                SafeRelease(cf);
                v77 = CFGetAllocator(a1);
                sub_1000104A8(v77, v78, @"MEID");
              }

              else
              {
                v74 = CFGetAllocator(a1);
                AMAuthInstallHttpSetBase64EncodedValue(v74, v13, @"B64_MEID", cf);
                CFRelease(cf);
                v75 = *(a1 + 48);
                if (v75)
                {
                  v76 = *(v75 + 32) != 0;
LABEL_73:
                  v79 = CFDictionaryGetValue(*(a1 + 312), @"IMEI");
                  if (v79)
                  {
                    if (sub_100010474(v79, v80, v81, v82, v83, v84, v85, v86, v138, v139, cf) || !cf)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei, adding original string to response");
                      SafeRelease(cf);
                      v89 = CFGetAllocator(a1);
                      sub_1000104A8(v89, v90, @"IMEI");
                    }

                    else
                    {
                      v87 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v87, v13, @"B64_IMEI", cf);
                      CFRelease(cf);
                      v88 = *(a1 + 48);
                      if (v88)
                      {
                        if (*(v88 + 40))
                        {
                          v76 = v76 | 0x100;
                        }

                        else
                        {
                          v76 = v76;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI");
                    CFDictionaryRemoveValue(v13, @"IMEI");
                  }

                  v91 = CFDictionaryGetValue(*(a1 + 312), @"IMEI2");
                  if (v91)
                  {
                    if (sub_100010474(v91, v92, v93, v94, v95, v96, v97, v98, v138, v139, cf) || !cfa)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2, adding original string to response");
                      SafeRelease(cfa);
                      v101 = CFGetAllocator(a1);
                      sub_1000104A8(v101, v102, @"IMEI2");
                    }

                    else
                    {
                      v99 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v99, v13, @"B64_IMEI2", cfa);
                      CFRelease(cfa);
                      v100 = *(a1 + 48);
                      if (v100)
                      {
                        if (*(v100 + 48))
                        {
                          v76 = v76 | 0x200;
                        }

                        else
                        {
                          v76 = v76;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI2");
                    CFDictionaryRemoveValue(v13, @"IMEI2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC"))
                  {
                    v103 = sub_1000104C0();
                    sub_1000104A8(v103, v104, @"WIFI_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC"))
                  {
                    v105 = sub_1000104C0();
                    sub_1000104A8(v105, v106, @"BT_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"USB_ETHER_MAC"))
                  {
                    v107 = sub_1000104C0();
                    sub_1000104A8(v107, v108, @"USB_ETHER_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC2"))
                  {
                    v109 = sub_1000104C0();
                    sub_1000104A8(v109, v110, @"WIFI_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC2"))
                  {
                    v111 = sub_1000104C0();
                    sub_1000104A8(v111, v112, @"BT_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETH_MAC"))
                  {
                    v113 = sub_1000104C0();
                    sub_1000104A8(v113, v114, @"ETH_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC2"))
                  {
                    v115 = sub_1000104C0();
                    sub_1000104A8(v115, v116, @"ETHER_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"T_MAC"))
                  {
                    v117 = sub_1000104C0();
                    sub_1000104A8(v117, v118, @"T_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC3"))
                  {
                    v119 = sub_1000104C0();
                    sub_1000104A8(v119, v120, @"ETHER_MAC3");
                  }

                  v121 = CFDictionaryGetValue(*(a1 + 312), @"PAICHUSUO");
                  if (v121)
                  {
                    AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO:%@", v121);
                    v122 = CFDictionaryGetValue(*(a1 + 312), @"SN");
                    if (v122)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO SN:%@", v122);
                      v123 = CFGetAllocator(a1);
                      sub_1000104A8(v123, v124, @"SN");
                    }

                    v125 = CFDictionaryGetValue(*(a1 + 312), @"RGN");
                    if (v125)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO RGN:%@", v125);
                      v126 = CFGetAllocator(a1);
                      sub_1000104A8(v126, v127, @"RGN");
                    }

                    v128 = CFDictionaryGetValue(*(a1 + 312), @"MPN");
                    if (v128)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MPN:%@", v128);
                      v129 = CFGetAllocator(a1);
                      sub_1000104A8(v129, v130, @"MPN");
                    }

                    v131 = CFDictionaryGetValue(*(a1 + 312), @"MLB");
                    if (v131)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MLB:%@", v131);
                      v132 = CFGetAllocator(a1);
                      sub_1000104A8(v132, v133, @"MLB");
                    }
                  }

                  v134 = CFGetAllocator(a1);
                  v135 = CFStringCreateWithFormat(v134, 0, @"0x%X", v76);
                  if (!v135)
                  {
                    ReversedMEIDFromString = 2;
                    goto LABEL_125;
                  }

                  v136 = v135;
                  CFDictionarySetValue(v13, @"STATUS1", v135);
                  CFRelease(v136);
LABEL_120:
                  ReversedMEIDFromString = 0;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              CFDictionaryRemoveValue(v13, @"B64_MEID");
              CFDictionaryRemoveValue(v13, @"MEID");
            }

            v76 = 0;
            goto LABEL_73;
          }

          ReversedMEIDFromString = v51;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting CLIENT_ID failed");
LABEL_124:
          v5 = 0;
          Mutable = 0;
          v3 = 0;
          v4 = 0;
          goto LABEL_125;
        }

        if (*(v17 + 16) && (v18 = CFGetAllocator(a1), v19 = AMAuthInstallHttpSetBase64EncodedValue(v18, v13, @"B64_BB_SNUM", *(*(a1 + 48) + 16)), v19))
        {
          ReversedMEIDFromString = v19;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_BB_SNUM failed");
        }

        else
        {
          if (*(a1 + 312))
          {
            goto LABEL_18;
          }

          if (*(*(a1 + 48) + 72) && (v20 = CFGetAllocator(a1), v21 = AMAuthInstallHttpSetBase64EncodedValue(v20, v13, @"B64_SESS_KEY", *(*(a1 + 48) + 72)), v21))
          {
            ReversedMEIDFromString = v21;
            AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SESS_KEY failed, '%@'", *(*(a1 + 48) + 72));
          }

          else
          {
            KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &theData);
            if (KeyHash)
            {
              ReversedMEIDFromString = KeyHash;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "AMAuthInstallBasebandGetKeyHash failed");
            }

            else
            {
              if (!theData || (v23 = CFGetAllocator(a1), v24 = AMAuthInstallHttpSetBase64EncodedValue(v23, v13, @"B64_SKEY_HASH", theData), !v24))
              {
LABEL_18:
                v25 = CFGetAllocator(a1);
                v7 = CFDataCreate(v25, (*(a1 + 48) + 4), 4);
                if (!v7)
                {
                  ReversedMEIDFromString = 3;
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "chipID failed to convert to data");
                  goto LABEL_124;
                }

                v26 = CFGetAllocator(a1);
                v27 = AMAuthInstallHttpSetBase64EncodedValue(v26, v13, @"B64_BB_CHIPID", v7);
                if (v27)
                {
                  ReversedMEIDFromString = v27;
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_BB_CHIPID failed");
                  goto LABEL_124;
                }

                v28 = *(a1 + 48);
                if (v28[8])
                {
                  v29 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetUriEscapedValue(v29, v13, @"ICCID", *(*(a1 + 48) + 64));
                  v28 = *(a1 + 48);
                }

                if (v28[13])
                {
                  v30 = CFGetAllocator(a1);
                  v31 = AMAuthInstallHttpSetUriEscapedValue(v30, v13, @"BB_CARRIERID", *(*(a1 + 48) + 104));
                  if (v31)
                  {
                    ReversedMEIDFromString = v31;
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting BB_CARRIERID failed");
                    goto LABEL_124;
                  }

                  v28 = *(a1 + 48);
                }

                if (v28[14])
                {
                  v32 = CFGetAllocator(a1);
                  v33 = AMAuthInstallHttpSetBase64EncodedValue(v32, v13, @"MANIFESTDATA", *(*(a1 + 48) + 112));
                  if (v33)
                  {
                    ReversedMEIDFromString = v33;
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting MANIFESTDATA failed");
                    goto LABEL_124;
                  }

                  v28 = *(a1 + 48);
                }

                if (v28[4])
                {
                  v34 = sub_100010498();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v34, v35, v36);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid");
                    goto LABEL_123;
                  }

                  v37 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v37, v13, @"B64_MEID", cf);
                  CFRelease(cf);
                  v28 = *(a1 + 48);
                }

                if (v28[5])
                {
                  v38 = sub_100010498();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v38, v39, v40);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei");
                    goto LABEL_123;
                  }

                  v41 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v41, v13, @"B64_IMEI", cf);
                  CFRelease(cf);
                  v28 = *(a1 + 48);
                }

                if (v28[6])
                {
                  v42 = sub_100010498();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v42, v43, v44);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2");
                    goto LABEL_123;
                  }

                  v45 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v45, v13, @"B64_IMEI2", cf);
                  CFRelease(cf);
                  v28 = *(a1 + 48);
                }

                if (!v28[7])
                {
                  goto LABEL_45;
                }

                v46 = sub_100010498();
                ReversedMEIDFromString = AMAuthInstallSupportCopyDataFromHexString(v46, v47, v48);
                if (!ReversedMEIDFromString && cf)
                {
                  v49 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v49, v13, @"B64_EID", cf);
                  CFRelease(cf);
                  goto LABEL_45;
                }

                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to create euiccEID data");
LABEL_123:
                SafeRelease(cf);
                goto LABEL_124;
              }

              ReversedMEIDFromString = v24;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SKEY_HASH failed");
            }
          }
        }
      }
    }

    v7 = 0;
    goto LABEL_124;
  }

LABEL_125:
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(Mutable);
  return ReversedMEIDFromString;
}

uint64_t AMAuthInstallProvisioningServerSendSyncRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, void *a4)
{
  theData = 0;
  *v14 = 0;
  v11 = 0;
  v12 = 0;
  v4 = 1;
  if (a3 && a4)
  {
    if (!a2)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "provisioning server url is NULL");
      goto LABEL_11;
    }

    PostRequest = AMAuthInstallHttpCreatePostRequest(a1, a2, a3, v14);
    if (!PostRequest)
    {
      PostRequest = AMAuthInstallHttpMessageSendSyncNew(a1, *v14, &theData, &v11 + 1, 0, 15.0);
      if (!PostRequest)
      {
        if (!theData)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "no response data (httpStatus=%u)");
          goto LABEL_17;
        }

        PostRequest = AMAuthInstallProvisioningCopyResponse(a1, theData, &v11, &v12);
        if (!PostRequest)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningServerSendSyncRequest", "httpStatus=%u, status=%d", HIDWORD(v11), v11);
          if (v11)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server error: %d", v11);
            v4 = 24;
            goto LABEL_11;
          }

          v8 = v12;
          if (v12)
          {
            AMAuthInstallLog(6, "AMAuthInstallProvisioningServerSendSyncRequest", "data=%@", v12);
            v9 = CFRetain(v8);
            v4 = 0;
            *a4 = v9;
            goto LABEL_11;
          }

          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server failed to provide response data");
LABEL_17:
          v4 = 17;
          goto LABEL_11;
        }
      }
    }

    v4 = PostRequest;
  }

LABEL_11:
  SafeRelease(0);
  SafeRelease(*v14);
  SafeRelease(theData);
  SafeRelease(v12);
  return v4;
}

uint64_t AMAuthInstallProvisioningSendAck(uint64_t cf, uint64_t a2)
{
  theDict = 0;
  if (!cf)
  {
    Mutable = 0;
    v6 = 1;
    goto LABEL_13;
  }

  if (*(cf + 312))
  {
    v4 = @"200";
  }

  else
  {
    if (*(cf + 304) == 8)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "Provisioning failed, ack already sent.");
      Mutable = 0;
      v6 = 19;
      goto LABEL_13;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningSendAck", "No provisioning info to ack, sending ping.");
    v4 = @"1";
  }

  v7 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v8 = AMAuthInstallProvisioningPopulateRequestDict(cf, Mutable, v4);
    if (v8)
    {
      v6 = v8;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningPopulateRequestDict failed status=%d", v8);
    }

    else
    {
      v9 = CFGetAllocator(cf);
      v10 = CFStringCreateWithFormat(v9, 0, @"0x%X", a2);
      CFDictionarySetValue(Mutable, @"STATUS", v10);
      CFRelease(v10);
      v11 = CFGetAllocator(cf);
      v12 = AMAuthInstallProvisioningServerSendSyncRequest(v11, *(cf + 296), Mutable, &theDict);
      if (v12)
      {
        v6 = v12;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningServerSendSyncRequest failed status=%d", v12);
      }

      else
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"STATUS");
          AMAuthInstallLog(6, "AMAuthInstallProvisioningSendAck", "Server returned STATUS=%@", Value);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "responseDict is NULL", v15);
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_13:
  SafeRelease(Mutable);
  SafeRelease(theDict);
  return v6;
}

uint64_t AMAuthInstallProvisioningSendRequest(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = AMAuthInstallProvisioningPopulateRequestDict(a1, Mutable, a2);
      if (v9)
      {
        v4 = v9;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "AMAuthInstallProvisioningPopulateRequestDict failed");
      }

      else
      {
        v10 = CFGetAllocator(a1);
        v11 = AMAuthInstallProvisioningServerSendSyncRequest(v10, *(a1 + 296), Mutable, a3);
        if (v11)
        {
          v4 = v11;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "AMAuthInstallProvisioningServerSendSyncRequest failed");
        }

        else if (*a3)
        {
          SafeRelease(*(a1 + 312));
          v4 = 0;
          *(a1 + 312) = CFRetain(*a3);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "*outResponseDict is NULL");
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestInfoPlist(void *a1, CFDataRef *a2)
{
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    v4 = 1;
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 1;
  if (!a2 || !a1[6])
  {
    goto LABEL_20;
  }

  v6 = a1[39];
  if (!v6)
  {
    v4 = AMAuthInstallProvisioningSendRequest(a1, @"100", &theDict);
    if (v4)
    {
      v3 = 0;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "AMAuthInstallProvisioningSendRequest failed");
      goto LABEL_20;
    }

    v7 = theDict;
    if (theDict)
    {
      goto LABEL_6;
    }

LABEL_23:
    v3 = 0;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "responseDict is NULL");
    goto LABEL_20;
  }

  v7 = CFRetain(v6);
  theDict = v7;
  v4 = 99;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_6:
  Value = CFDictionaryGetValue(v7, @"MEID");
  v9 = CFDictionaryGetValue(theDict, @"IMEI");
  if (!(Value | v9))
  {
    v3 = 0;
    v4 = 17;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "both imei and meid are NULL, provisioning failed.");
    goto LABEL_20;
  }

  v10 = v9;
  if (*(a1[6] + 48))
  {
    v11 = CFDictionaryGetValue(theDict, @"IMEI2");
    if (!v11)
    {
      v3 = 0;
      v4 = 17;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "imei2 is NULL. provisioning failed.");
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v12, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = Mutable;
  if (Mutable)
  {
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"MEID", Value);
    }

    if (v10)
    {
      CFDictionarySetValue(v3, @"IMEI", v10);
    }

    if (v11)
    {
      CFDictionarySetValue(v3, @"IMEI2", v11);
    }

    v14 = CFGetAllocator(a1);
    XMLData = CFPropertyListCreateXMLData(v14, v3);
    *a2 = XMLData;
    if (XMLData)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "CFPropertyListCreateXMLData failed.");
    }
  }

  else
  {
    v4 = 2;
  }

LABEL_20:
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestManifest(uint64_t a1, void *a2)
{
  v7 = 0;
  v2 = 1;
  if (a1 && a2)
  {
    if (*(a1 + 312))
    {
      v4 = CFRetain(*(a1 + 312));
      v7 = v4;
      v2 = 99;
      if (v4)
      {
LABEL_5:
        Value = CFDictionaryGetValue(v4, @"MANIFESTDATA");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
          v2 = 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "*manifestData is NULL");
        }

        goto LABEL_7;
      }
    }

    else
    {
      v2 = AMAuthInstallProvisioningSendRequest(a1, @"100", &v7);
      if (v2)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "AMAuthInstallProvisioningSendRequest failed");
        goto LABEL_7;
      }

      v4 = v7;
      if (v7)
      {
        goto LABEL_5;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "responseDict is NULL");
  }

LABEL_7:
  SafeRelease(v7);
  return v2;
}

uint64_t AMAuthInstallProvisioningProvisionIfNecessary(uint64_t a1, __CFDictionary *a2)
{
  value = 0;
  v42 = 0;
  v40 = 0;
  if (!a1)
  {
    v29 = 1;
    goto LABEL_75;
  }

  SubjectPublicKeyInfoForKey = 1;
  if (a2)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(a1 + 304);
      if (v6 > 0xB)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Unexpected provisioning state = %d", *(a1 + 304));
        SubjectPublicKeyInfoForKey = 99;
        goto LABEL_72;
      }

      v7 = 1 << v6;
      if ((v7 & 0xF81) != 0)
      {
        goto LABEL_71;
      }

      if ((v7 & 0x26) != 0)
      {
        v8 = *(v5 + 88);
        if (v8 && CFBooleanGetValue(v8) == 1)
        {
          if (*(a1 + 328) || *(a1 + 329))
          {
            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Force provisioning is enabled; provisioning anyway.");
          }

          else
          {
            v36 = AMAuthInstallProvisioningSendAck(a1, 0);
            if (v36 != 24)
            {
              SubjectPublicKeyInfoForKey = v36;
              if (!v36)
              {
                *(a1 + 304) = 7;
                AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Not attempting to provision.");
                goto LABEL_72;
              }

              v37 = "Provisioning server failed to respond, cannot provision.";
              goto LABEL_105;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "provisioning ack failed, enabling force provisioning.");
            *(a1 + 328) = 1;
          }
        }

        v9 = *(*(a1 + 48) + 80);
        if (v9)
        {
          if (CFBooleanGetValue(v9) == 1)
          {
            v39 = 0;
            v10 = AMAuthInstallCryptoRegisterKeys();
            if (v10)
            {
              SubjectPublicKeyInfoForKey = v10;
              goto LABEL_72;
            }

            if (!*(a1 + 328))
            {
              v31 = *(a1 + 48);
              if (v31[4] || v31[5] || v31[6])
              {
                AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Local re-locking enabled. Forcing use of P1 provisioning key.");
                SubjectPublicKeyInfoForKey = AMAuthInstallCryptoCreateSubjectPublicKeyInfoForKey();
LABEL_83:
                v11 = value;
LABEL_84:
                if (v11)
                {
                  CFDictionarySetValue(a2, @"provisioning/puk.pem", v11);
                  AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Mature baseband found, doing two stage provisioning");
                  SubjectPublicKeyInfoForKey = 0;
                  *(a1 + 304) = 2;
                  goto LABEL_72;
                }

                goto LABEL_110;
              }
            }

            if (_AMAuthInstallSupportsECProvision(a1))
            {
              AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "ECDH Server based provisioning enabled. Creating empty puk.pem file for BBUpdater");
              *bytes = -272716322;
              v11 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
              SubjectPublicKeyInfoForKey = 0;
              value = v11;
              goto LABEL_84;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "LEGACY Server based provisioning enabled. Reading provisioning key from settings.");
            KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &v39);
            if (KeyHash)
            {
              SubjectPublicKeyInfoForKey = KeyHash;
            }

            else if (v39)
            {
              SubjectPublicKeyInfoForKey = AMAuthInstallCryptoCreateSubjectPublicKeyInfoForKeyFromHash();
              if (!SubjectPublicKeyInfoForKey)
              {
                goto LABEL_83;
              }
            }

            else
            {
              SubjectPublicKeyInfoForKey = 0;
            }

LABEL_110:
            sub_1000104F8();
LABEL_105:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", v37);
            goto LABEL_72;
          }

          v28 = *(a1 + 48);
          if (v28[4] || v28[5] || v28[6])
          {
            if (!*(a1 + 328))
            {
              *(a1 + 304) = 7;
              v27 = "Device already has MEID and/or IMEI and/or IMEI2. Bringup provisioning complete. Not attempting to provision.";
LABEL_70:
              AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", v27);
LABEL_71:
              SubjectPublicKeyInfoForKey = 0;
              goto LABEL_72;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Device already has MEID and/or IMEI and/or IMEI2. Force provisioning is enabled requesting new values.");
          }

          v35 = AMAuthInstallProvisioningRequestInfoPlist(a1, &v42);
          *(a1 + 304) = 5;
          if (v35)
          {
            SubjectPublicKeyInfoForKey = v35;
            v37 = "AMAuthInstallProvisioningRequestInfoPlist failed";
            goto LABEL_105;
          }

          if (!v42)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "info.plist is NULL");
            goto LABEL_71;
          }

          CFDictionarySetValue(a2, @"provisioning/info.plist", v42);
          v27 = "Bringup baseband found, doing single stage provisioning";
          goto LABEL_70;
        }

        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        if (!Mutable)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "emptyData is NULL");
          SubjectPublicKeyInfoForKey = 2;
          goto LABEL_72;
        }

        v26 = Mutable;
        CFDictionarySetValue(a2, @"provisioning/", Mutable);
        CFRelease(v26);
        v27 = "Baseband not reporting manifest status, not attempting to provision yet.";
        goto LABEL_70;
      }

      if (*(v5 + 72))
      {
        v12 = *(v5 + 4);
        if (v12 != 94)
        {
          v13 = v12 == 104 || v12 == 241889;
          v14 = v13 || v12 == 520417;
          v15 = v14 || v12 == 938209;
          v16 = v15 || v12 == 1327329;
          v17 = v16 || v12 == 1515745;
          v18 = v17 || v12 == 1700065;
          v19 = v18 || v12 == 2044129;
          v20 = v19 || v12 == 2089185;
          v21 = v20 || v12 == 2814177;
          v22 = v21 || v12 == 8343777;
          v23 = v22 || v12 == 9572577;
          v24 = v23 || v12 == 9781473;
          if (!v24 && !*(a1 + 328) && (*(v5 + 32) || *(v5 + 40) || *(v5 + 48)))
          {
            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Performing local re-lock");
            v33 = AMAuthInstallBasebandLocalProvisionDevice(a1, &v40);
            if (v33)
            {
              SubjectPublicKeyInfoForKey = v33;
              sub_1000104F8();
              v37 = "AMAuthInstallMonetLocalProvisionDevice failed";
              goto LABEL_105;
            }

            if (v40)
            {
              *(a1 + 304) = 6;
LABEL_95:
              CFDictionaryRemoveAllValues(a2);
              CFDictionarySetValue(a2, @"provisioning/manifest.bin", v40);
              goto LABEL_71;
            }

            sub_1000104F8();
LABEL_119:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "manifestData is NULL");
            SubjectPublicKeyInfoForKey = 14;
            goto LABEL_72;
          }
        }

        if (*(v5 + 96) == 3)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Requesting manifest from server (%@)", *(a1 + 296));
          v34 = AMAuthInstallProvisioningRequestManifest(a1, &v40);
          *(a1 + 304) = 4;
          if (v34)
          {
            SubjectPublicKeyInfoForKey = v34;
            v37 = "AMAuthInstallProvisioningRequestManifest failed";
            goto LABEL_105;
          }

          if (v40)
          {
            goto LABEL_95;
          }

          goto LABEL_119;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Cannot provision unfused boards");
      }

      else
      {
        sub_1000104F8();
        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "encryptedSessionKey is NULL");
      }

      SubjectPublicKeyInfoForKey = 19;
    }
  }

LABEL_72:
  if (*(a1 + 304) == 8)
  {
    v29 = 19;
  }

  else
  {
    v29 = SubjectPublicKeyInfoForKey;
  }

LABEL_75:
  SafeRelease(0);
  SafeRelease(v42);
  SafeRelease(value);
  SafeRelease(v40);
  return v29;
}

uint64_t AMAuthInstallBasebandMAV25MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (v7)
    {
      v9 = sub_1000092CC(v7, v8, @"acdb.mbn");
      if (!v9)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV25MeasureFirmware", "missing acdb or failed to measure image");
      }

      v11 = sub_1000092CC(v9, v10, @"restorexbl_sc.elf");
      if (v11 && (v13 = sub_1000092CC(v11, v12, @"Info.plist"), v13) && (v15 = sub_1000092CC(v13, v14, @"xbl_sc.elf"), v15) && (v17 = sub_1000092CC(v15, v16, @"multi_image.mbn"), v17) && (v19 = sub_1000092CC(v17, v18, @"signed_firmware_soc_view.elf"), v19) && (v21 = sub_1000092CC(v19, v20, @"Info.plist"), v21))
      {
        sub_1000092CC(v21, v22, @"bbcfg.mbn");
        AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, a1, @"pt.mbn", AMAuthInstallMonetMeasurePT, v3, a3);
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV25StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = sub_1000093DC(v7, @"aop_devcfg.mbn");
      v9 = sub_1000093DC(v8, @"aop.mbn");
      v10 = sub_1000093DC(v9, @"apdp.mbn");
      v11 = sub_1000093DC(v10, @"apps.mbn");
      v12 = sub_1000093DC(v11, @"bbcfg.mbn");
      v13 = sub_1000093DC(v12, @"cpucp.elf");
      v14 = sub_1000093DC(v13, @"devcfg.mbn");
      sub_1000093DC(v14, @"hyp.mbn");
      v15 = sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      sub_1000093DC(v15, @"mdmddr.mbn");
      v16 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v17 = sub_1000093DC(v16, @"multi_image_qti.mbn");
      v18 = sub_1000093DC(v17, @"qdsp6sw.mbn");
      v19 = sub_1000093DC(v18, @"qdsp6sw_dtbs.elf");
      sub_1000093DC(v19, @"qupv3fw.elf");
      v20 = sub_1000093A4(a1, @"restorexbl_sc.elf", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093DC(v20, @"sec.elf");
      v21 = sub_1000093A4(a1, @"sequencer_ram.elf", AMAuthInstallBasebandStitchCopyFile);
      sub_1000093DC(v21, @"shrm.elf");
      v22 = sub_1000093A4(a1, @"signed_firmware_soc_view.elf", AMAuthInstallMonetStitchTme);
      v23 = sub_1000093DC(v22, @"tz.mbn");
      v24 = sub_1000093DC(v23, @"uefi.elf");
      sub_1000093DC(v24, @"xbl_cfg.elf");
      v25 = sub_1000093A4(a1, @"xbl_sc.elf", AMAuthInstallMonetStitchSbl1);
      v26 = sub_1000093DC(v25, @"xbl_support.elf");
      sub_1000093DC(v26, @"pt.mbn");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallRembrandtMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          if ((*(v9 + 4) - 94) <= 0xA)
          {
            sub_100010578();
            if (!v12)
            {
              v13 = CFGetAllocator(v10);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA256(v13, a2, &value);
              goto LABEL_11;
            }

            if ((v11 & 0x401) != 0)
            {
              v15 = CFGetAllocator(v10);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA384(v15, a2, &value);
LABEL_11:
              v7 = DigestForData_SHA256;
              v6 = value;
              if (!DigestForData_SHA256)
              {
                if (value)
                {
                  CFDictionarySetValue(a3, a4, value);
                  v7 = 0;
                  v6 = value;
                }

                else
                {
                  v7 = 2;
                }
              }

              goto LABEL_14;
            }
          }

          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootImage", "Unknown chipid");
          v6 = 0;
          v7 = 99;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallRembrandtMeasureElf(void *a1, const __CFData *a2, __CFDictionary *a3, const void *a4, void *a5)
{
  memset(&c, 0, sizeof(c));
  bzero(&v32, 0xD0uLL);
  if (CFDataGetLength(a2) <= 0x33 || (BytePtr = CFDataGetBytePtr(a2), *BytePtr != 1179403647))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "invalid file format");
LABEL_16:
    Mutable = 0;
    v18 = 0;
    v29 = 10;
    goto LABEL_13;
  }

  v11 = BytePtr;
  v12 = &BytePtr[*(BytePtr + 7)];
  if ((*(v12 + 6) & 0x7000000) == 0x4000000)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "file lacks a hash section");
    goto LABEL_16;
  }

  v13 = CFDataGetBytePtr(a2);
  v14 = *(v12 + 1);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallRembrandtMeasureElf", "hash section", &v13[v14], *(v12 + 4));
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    v18 = 0;
    goto LABEL_18;
  }

  key = a5;
  v17 = CFGetAllocator(a1);
  v18 = CFDataCreateMutable(v17, 0);
  if (!v18)
  {
LABEL_18:
    v29 = 2;
    goto LABEL_13;
  }

  if ((*(a1[6] + 4) - 94) > 0xA)
  {
    goto LABEL_11;
  }

  sub_100010578();
  if (v20)
  {
    if ((v19 & 0x401) != 0)
    {
      CFDataSetLength(Mutable, 48);
      CC_SHA384_Init(&v32);
      CC_SHA384_Update(&v32, v11, v11[20]);
      CC_SHA384_Update(&v32, v12, v11[21] * v11[22]);
      CC_SHA384_Update(&v32, &v13[v14], *(v12 + 4));
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      CC_SHA384_Final(MutableBytePtr, &v32);
      CFDataSetLength(v18, 48);
      v26 = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      v28 = CFDataGetMutableBytePtr(v18);
      CC_SHA384(v26, Length, v28);
      goto LABEL_12;
    }

LABEL_11:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "Unknown chipid");
    goto LABEL_12;
  }

  CFDataSetLength(Mutable, 32);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v11, v11[20]);
  CC_SHA256_Update(&c, v12, v11[21] * v11[22]);
  CC_SHA256_Update(&c, &v13[v14], *(v12 + 4));
  v21 = CFDataGetMutableBytePtr(Mutable);
  CC_SHA256_Final(v21, &c);
  CFDataSetLength(v18, 32);
  v22 = CFDataGetBytePtr(a2);
  v23 = CFDataGetLength(a2);
  v24 = CFDataGetMutableBytePtr(v18);
  CC_SHA256(v22, v23, v24);
LABEL_12:
  CFDictionarySetValue(a3, key, v18);
  CFDictionarySetValue(a3, a4, Mutable);
  v29 = 0;
LABEL_13:
  SafeRelease(v18);
  SafeRelease(Mutable);
  return v29;
}

uint64_t AMAuthInstallRembrandtMeasureBootPSI(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const __CFString *a5)
{
  v5 = 0;
  valuePtr = 0;
  v40 = 0;
  bytes = 0u;
  v39 = 0u;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v6 = 1;
  if (!a1 || !theData)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v9 = 0;
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v14 = BytePtr[4];
    v15 = BytePtr[5];
    v17 = BytePtr[9];
    v16 = BytePtr[10];
    Length = CFDataGetLength(theData);
    v19 = *(a1[6] + 4);
    if (v19 == 96)
    {
      if (Length <= v15)
      {
        AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk_offset %d >= sizeToMeasure %lld");
LABEL_44:
        v6 = 0;
        v5 = 0;
        v9 = 0;
        goto LABEL_36;
      }
    }

    else if (Length <= v17)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk2_offset %d >= sizeToMeasure %lld");
      goto LABEL_44;
    }

    if (Length <= v16)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "signature_offset %d >= sizeToMeasure %lld");
      goto LABEL_44;
    }

    if (Length != v14)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "size %d != sizeToMeasure %lld");
      goto LABEL_44;
    }

    v20 = v19 == 104 || v19 == 94;
    if (v20)
    {
      v21 = 36;
    }

    else
    {
      v21 = 52;
    }

    if (v20)
    {
      v22 = 127;
    }

    else
    {
      v22 = 63;
    }

    if (v20)
    {
      v23 = -92;
    }

    else
    {
      v23 = -76;
    }

    if ((v19 - 94) <= 0xA)
    {
      v24 = v16 + v23 - ((v16 + v21) & v22);
      sub_100010578();
      if (!v20)
      {
        goto LABEL_32;
      }

      if ((v25 & 0x401) != 0)
      {
        if (CFStringCompare(@"PSI2-PartialDigest", a5, 0) && CFStringCompare(@"RestorePSI2-PartialDigest", a5, 0))
        {
          AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA384 to hash %@", a4);
          v26 = CFDataGetBytePtr(theData);
          bzero(&c, 0xD0uLL);
          CC_SHA384_Init(&c);
          CC_SHA384_Update(&c, v26, v24);
          for (i = 0; i != 64; i += 16)
          {
            *&v36[i / 4 + 2] = vrev64q_s8(*&c.hash[i / 8]);
          }

          v36[0] = v16 - v24;
          v36[1] = v24;
          v28 = CFGetAllocator(a1);
          p_bytes = v36;
          v30 = 72;
LABEL_33:
          v9 = CFDataCreate(v28, p_bytes, v30);
          if (v9)
          {
            CFDictionarySetValue(a3, a5, v9);
            valuePtr = *(CFDataGetBytePtr(theData) + 1024);
            AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "%@: version=0x%x", a4, valuePtr);
            v32 = CFGetAllocator(a1);
            v5 = CFNumberCreate(v32, kCFNumberSInt32Type, &valuePtr);
            if (v5)
            {
              CFDictionarySetValue(a3, a4, v5);
              v6 = 0;
              goto LABEL_36;
            }

LABEL_39:
            v6 = 2;
            goto LABEL_36;
          }

LABEL_38:
          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "%s CFDataCreate failed", "AMAuthInstallRembrandtMeasureBootPSI");
          v5 = 0;
          v9 = 0;
          goto LABEL_39;
        }

        AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA256 to hash %@", a4);
LABEL_32:
        v31 = CFDataGetBytePtr(theData);
        sub_10000F65C(v31, v24, (&bytes + 8));
        LODWORD(bytes) = v16 - v24;
        DWORD1(bytes) = v24;
        v28 = CFGetAllocator(a1);
        p_bytes = &bytes;
        v30 = 40;
        goto LABEL_33;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "Unknown chipid");
    goto LABEL_38;
  }

LABEL_36:
  SafeRelease(v9);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallRembrandtLocalCreateSigningResponse(_DWORD *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  valuePtr = 0;
  v66 = 0;
  value = 0;
  v64 = 0;
  v65 = 0;
  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "Failed to allocate responseDict");
    sub_100010778();
LABEL_61:
    v17 = 2;
    goto LABEL_48;
  }

  v11 = AMAuthInstallRembrandtLocalRegisterKeys(a1);
  if (v11)
  {
    v17 = v11;
    sub_100010778();
    goto LABEL_48;
  }

  v12 = CFDictionaryGetValue(a2, @"BbSNUM");
  if (!v12 || (v3 = v12, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing SNUM");
    goto LABEL_36;
  }

  v13 = CFDictionaryGetValue(a2, @"BbChipID");
  if (!v13 || (v3 = v13, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing chipid");
    goto LABEL_36;
  }

  if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "failed to read chipid");
LABEL_36:
    sub_100010778();
LABEL_37:
    v17 = 1;
    goto LABEL_48;
  }

  v14 = CFDictionaryGetValue(a2, @"BbGoldCertId");
  if (!v14 || (v3 = v14, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing certid");
    goto LABEL_36;
  }

  v15 = CFDictionaryGetValue(a2, @"BasebandFirmware");
  if (!v15 || (v5 = v15, v3 = CFDictionaryGetTypeID(), v3 != CFGetTypeID(v5)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing baseband firmware dict");
    goto LABEL_36;
  }

  v16 = CFGetAllocator(a1);
  v17 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v16, a2, 2uLL);
  v3 = DeepCopy;
  if (!DeepCopy)
  {
    v5 = 0;
    TypeID = 0;
    goto LABEL_48;
  }

  v19 = CFDictionaryGetValue(DeepCopy, @"BasebandFirmware");
  v20 = CFGetAllocator(a1);
  TypeID = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!TypeID)
  {
    v5 = 0;
    goto LABEL_61;
  }

  theDict = v19;
  CFDictionarySetValue(Mutable, @"BasebandFirmware", TypeID);
  v21 = CFDictionaryGetValue(v5, @"PSI-PartialDigest");
  if (v21)
  {
    v22 = CFDataGetTypeID();
    if (v22 != CFGetTypeID(v21))
    {
      goto LABEL_53;
    }

    v23 = sub_1000712C4(a1, v21, &value);
    if (v23)
    {
LABEL_56:
      v17 = v23;
      v5 = 0;
      goto LABEL_48;
    }

    CFDictionarySetValue(TypeID, @"PSI-Blob", value);
  }

  v24 = CFDictionaryGetValue(v5, @"RestorePSI-PartialDigest");
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v24;
  v26 = CFDataGetTypeID();
  if (v26 != CFGetTypeID(v25))
  {
LABEL_53:
    v5 = 0;
    goto LABEL_37;
  }

  v23 = sub_1000712C4(a1, v25, &v66);
  if (v23)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI-Blob", v66);
LABEL_22:
  v27 = CFDictionaryGetValue(v5, @"PSI2-PartialDigest");
  if (v21)
  {
    v28 = CFDataGetTypeID();
    if (v28 != CFGetTypeID(v21))
    {
      goto LABEL_53;
    }
  }

  if (v27)
  {
    v23 = sub_1000712C4(a1, v27, &v65);
    if (v23)
    {
      goto LABEL_56;
    }

    CFDictionarySetValue(TypeID, @"PSI2-Blob", v65);
  }

  v29 = CFDictionaryGetValue(v5, @"RestorePSI2-PartialDigest");
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = CFDataGetTypeID();
  if (v31 != CFGetTypeID(v30))
  {
    goto LABEL_53;
  }

  v23 = sub_1000712C4(a1, v30, &v64);
  if (v23)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI2-Blob", v64);
LABEL_29:
  v5 = 0;
  sub_100010764();
  if (!(!v33 & v32))
  {
    sub_100010578();
    if (!v33)
    {
      v35 = value;
      memset(&c, 0, 104);
      v36 = CFGetAllocator(a1);
      v37 = CFDataCreateMutable(v36, 32);
      v38 = v37;
      if (v37)
      {
        v61 = TypeID;
        v39 = Mutable;
        v40 = v3;
        v41 = a3;
        CFDataSetLength(v37, 32);
        BytePtr = CFDataGetBytePtr(v21);
        v43 = *(BytePtr + 1);
        CC_SHA256_Init(&c);
        for (i = 8; i != 40; i += 4)
        {
          *(c.count + i) = bswap32(*&BytePtr[i]);
        }

        c.count[0] = v43;
        v45 = CFDataGetBytePtr(v35);
        Length = CFDataGetLength(v35);
        CC_SHA256_Update(&c, v45, Length);
        MutableBytePtr = CFDataGetMutableBytePtr(v38);
        CC_SHA256_Final(MutableBytePtr, &c);
        v5 = CFRetain(v38);
        v17 = 0;
        a3 = v41;
        v3 = v40;
        Mutable = v39;
        TypeID = v61;
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if ((v34 & 0x401) != 0)
    {
      v48 = value;
      bzero(&c, 0xD0uLL);
      v49 = CFGetAllocator(a1);
      v50 = CFDataCreateMutable(v49, 48);
      v38 = v50;
      if (v50)
      {
        v62 = a3;
        CFDataSetLength(v50, 48);
        v51 = CFDataGetBytePtr(v21);
        v52 = (v51 + 8);
        v53 = *(v51 + 1);
        CC_SHA384_Init(&c);
        for (j = 2; j != 10; ++j)
        {
          v55 = *v52++;
          c.count[j] = bswap64(v55);
        }

        c.count[0] = v53;
        c.count[1] = 0;
        v56 = CFDataGetBytePtr(v48);
        v57 = CFDataGetLength(v48);
        CC_SHA384_Update(&c, v56, v57);
        v58 = CFDataGetMutableBytePtr(v38);
        CC_SHA384_Final(v58, &c);
        v5 = CFRetain(v38);
        v17 = 0;
        a3 = v62;
LABEL_43:
        SafeRelease(v38);
        CFDictionarySetValue(theDict, @"PSI-DownloadDigest", v5);
        if (!v38)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }

LABEL_62:
      v5 = 0;
      v17 = 2;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (CFDictionaryContainsKey(a2, @"@BBTicket"))
  {
    RootTicket = AMAuthInstallMaverickLocalCreateRootTicket();
    if (RootTicket)
    {
      v17 = RootTicket;
      goto LABEL_48;
    }

    CFDictionarySetValue(Mutable, @"BBTicket", 0);
  }

  *a3 = CFRetain(Mutable);
  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request-bb-local", 2);
  AMAuthInstallDebugWriteObject(a1, Mutable, @"tss-response-bb-local", 2);
  v17 = 0;
LABEL_48:
  SafeRelease(TypeID);
  SafeRelease(value);
  SafeRelease(v66);
  SafeRelease(v65);
  SafeRelease(v64);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(Mutable);
  SafeRelease(v5);
  SafeRelease(0);
  return v17;
}

uint64_t sub_1000712C4(void *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&c, 0, sizeof(c));
  bzero(&v73, 0xD0uLL);
  v72 = 0;
  v71 = 0;
  sub_100010764();
  if (!(!v7 & v6))
  {
    sub_100010578();
    if (!v7)
    {
      v9 = 256;
      goto LABEL_6;
    }

    if ((v8 & 0x401) != 0)
    {
      v9 = 104;
LABEL_6:
      v71 = v9;
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
  if (!a1[6])
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai->bbParameters is NULL");
    goto LABEL_52;
  }

  v9 = 0;
  if (!a3)
  {
LABEL_14:
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "outPsiStitchDataData is NULL");
LABEL_52:
    v13 = 0;
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_53;
  }

LABEL_7:
  v10 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v10, 0);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is NULL");
    v13 = 0;
    goto LABEL_55;
  }

  theData = 0;
  v12 = *(a1[6] + 4) - 94;
  if (v12 < 0xB && ((0x685u >> v12) & 1) != 0)
  {
    v17 = sub_100071AB8(a1, off_1000AA5F8[v12], &theData);
    if (v17)
    {
      v15 = v17;
      v13 = 0;
      MutableCopy = 0;
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v19 = sub_1000034C0();
    CFDataAppendBytes(v19, BytePtr, v20);
    bytes[0] = xmmword_100084BB7;
    bytes[1] = algn_100084BC7;
    CFDataAppendBytes(Mutable, bytes, 32);
    sub_100010764();
    if (!(!v7 & v6))
    {
      sub_100010578();
      if (!v7)
      {
        v22 = CFDataGetBytePtr(a2);
        v23 = v22;
        v24 = 0;
LABEL_21:
        v25 = *v22;
LABEL_22:
        v26 = v25;
        Length = CFDataGetLength(Mutable);
        if (CFDataGetLength(Mutable) + 12 > v25)
        {
          v68 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "masteredReservationLength %d < CFDataGetLength(stitchData) %lld + snumLength %d", v25, v68, 12);
          v13 = 0;
          goto LABEL_59;
        }

        v28 = v25 - Length - 12;
        if (v26 - Length == 12)
        {
          v13 = 0;
          goto LABEL_27;
        }

        v29 = malloc(v26 - Length - 12);
        v13 = v29;
        if (v29)
        {
          memset(v29, 255, v28);
          CFDataAppendBytes(Mutable, v13, v28);
LABEL_27:
          v30 = CFDataGetBytePtr(*(a1[6] + 16));
          CFDataGetLength(*(a1[6] + 16));
          v31 = sub_1000034C0();
          CFDataAppendBytes(v31, v30, v32);
          v33 = CFDataGetLength(*(a1[6] + 16));
          v34 = a1[6];
          if (v33 != 12)
          {
            CFDataGetLength(*(v34 + 16));
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(amai->bbParameters->snum) %lld != snumLength %d");
            goto LABEL_59;
          }

          if ((*(v34 + 4) - 94) > 0xA)
          {
            goto LABEL_39;
          }

          sub_100010578();
          if (!v7)
          {
            v36 = *(v23 + 1);
            CC_SHA256_Init(&c);
            for (i = 2; i != 10; ++i)
            {
              c.count[i] = bswap32(*&v23[i * 4]);
            }

            c.count[0] = v36;
            c.count[1] = 0;
            v38 = CFDataGetBytePtr(Mutable);
            v39 = CFDataGetLength(Mutable);
            CC_SHA256_Update(&c, v38, v39);
            CC_SHA256_Final(md, &c);
            AMAuthInstallCryptoCreateRsaSignatureWithSHA256();
            if (CFDataGetLength(v72) != v9)
            {
              CFDataGetLength(v72);
              AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(signatureData) %lld != signatureLength %d");
LABEL_59:
              MutableCopy = 0;
              goto LABEL_53;
            }

            goto LABEL_40;
          }

          if ((v35 & 0x401) != 0)
          {
            v40 = (v24 + 8);
            v41 = *(v24 + 1);
            CC_SHA384_Init(&v73);
            for (j = 2; j != 10; ++j)
            {
              v43 = *v40++;
              v73.count[j] = bswap64(v43);
            }

            v73.count[0] = v41;
            v73.count[1] = 0;
            v44 = CFDataGetBytePtr(Mutable);
            v45 = CFDataGetLength(Mutable);
            CC_SHA384_Update(&v73, v44, v45);
            LODWORD(v44) = *CFDataGetBytePtr(Mutable);
            v46 = CFDataGetLength(Mutable);
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "STITCH ptr 0x%x STITCH data 0x%x", v44, v46);
            CC_SHA384_Final(md, &v73);
            AMAuthInstallCryptoCreateEcdsaSignatureWithSHA384();
          }

          else
          {
LABEL_39:
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
          }

LABEL_40:
          if (!v72)
          {
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai is NULL");
            goto LABEL_59;
          }

          v47 = 0;
          MutableCopy = 0;
          switch(*(a1[6] + 4))
          {
            case '^':
            case 'h':
              v48 = CFDataGetBytePtr(v72);
              CFDataGetLength(v72);
              v49 = sub_1000034C0();
              CFDataAppendBytes(v49, v48, v50);
              CFDataAppendBytes(Mutable, byte_10008577D, 463);
              CFDataAppendBytes(Mutable, byte_10008594C, 450);
              LODWORD(v48) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 5231);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              memset(&MutableBytePtr[v48], 255, 0x146FuLL);
              v52 = CFDataGetLength(v72);
              MutableCopy = 0;
              v53 = 6144;
              goto LABEL_44;
              v58 = CFGetAllocator(a1);
              MutableCopy = CFDataCreateMutableCopy(v58, 0, v72);
              v59 = CFDataGetMutableBytePtr(MutableCopy);
              v60 = CFDataGetLength(MutableCopy);
              if ((v60 & 0xFFFFFFFE) != 0)
              {
                v61 = v60 >> 1;
                v62 = v60 - 1;
                v63 = v59;
                do
                {
                  v64 = v59[v62];
                  v59[v62] = *v63;
                  *v63++ = v64;
                  --v62;
                  --v61;
                }

                while (v61);
              }

              v65 = CFDataGetBytePtr(MutableCopy);
              CFDataGetLength(MutableCopy);
              v66 = sub_1000034C0();
              CFDataAppendBytes(v66, v65, v67);
              CFDataAppendBytes(Mutable, byte_100084BD7, 540);
              CFDataAppendBytes(Mutable, byte_100084DF3, 796);
              v47 = v26 + CFDataGetLength(MutableCopy) + 1336;
              break;
            case 'e':
            case 'g':
              v54 = CFDataGetBytePtr(v72);
              CFDataGetLength(v72);
              v55 = sub_1000034C0();
              CFDataAppendBytes(v55, v54, v56);
              CFDataAppendBytes(Mutable, byte_10008510F, 818);
              CFDataAppendBytes(Mutable, byte_100085441, 828);
              LODWORD(v54) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 4490);
              v57 = CFDataGetMutableBytePtr(Mutable);
              memset(&v57[v54], 255, 0x118AuLL);
              v52 = CFDataGetLength(v72);
              MutableCopy = 0;
              v53 = 6136;
LABEL_44:
              v47 = v26 + v53 + v52;
              break;
            default:
              break;
          }

          if (v47 == CFDataGetLength(Mutable))
          {
            v15 = 0;
            *a3 = CFRetain(Mutable);
            goto LABEL_11;
          }

          v69 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is %lld, expected size is %d", v69, v47);
LABEL_53:
          v15 = 1;
          goto LABEL_11;
        }

        AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "paddingBytes is NULL");
LABEL_55:
        MutableCopy = 0;
        v15 = 2;
        goto LABEL_11;
      }

      if ((v21 & 0x401) != 0)
      {
        v22 = CFDataGetBytePtr(a2);
        v24 = v22;
        v23 = 0;
        goto LABEL_21;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
    v25 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
  v13 = 0;
  MutableCopy = 0;
  v15 = 99;
LABEL_11:
  SafeRelease(Mutable);
  SafeRelease(v72);
  SafeRelease(MutableCopy);
  SafeFree(v13);
  return v15;
}

uint64_t sub_100071AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  if (!a1 || !a2 || !a3)
  {
    return v5;
  }

  if ((*(*(a1 + 48) + 4) - 94) > 0xA)
  {
    goto LABEL_13;
  }

  sub_100010578();
  v4 = v6;
  if (!v8)
  {

    return AMAuthInstallCryptoCreateDigestForKey_SHA256();
  }

  if ((v7 & 0x401) == 0)
  {
LABEL_13:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateDigestForKey", "Unknown chipid", v3, v4);
    return 99;
  }

  return AMAuthInstallCryptoCreateDigestForOnlyKeySha384();
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v58 = 0;
  cf = 0;
  v57 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v11);
  }

  v12 = (a1 + 120);
  v13 = *(a1 + 120);
  v14 = v13;
  if (!v13)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.");
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.");
    v14 = *v12;
    if (!*v12)
    {
      v15 = *(a1 + 104);
      v16 = CFGetAllocator(a1);
      v17 = v15(a1, v16, a1 + 120, &v57);
      if (v17)
      {
        v9 = v17;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v57);
        Data = 0;
        goto LABEL_13;
      }

      v14 = *v12;
      if (!*v12)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.");
        Data = 0;
        v19 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(kCFAllocatorDefault, v14, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v12);
  if (!v13)
  {
    SafeRelease(*v12);
    *v12 = 0;
  }

LABEL_15:
  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_21;
  }

  if (*(v20 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, sub_100010788, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v20 = *(a1 + 16);
      if (!v20)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure");
    Data = 0;
    v9 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v21 = *(v20 + 152);
  if (v21)
  {
    CFDictionaryApplyFunction(v21, sub_100010900, theDict);
  }

LABEL_21:
  v22 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v22, @"@HostPlatformInfo", SimplePlatformInfoString);
  v24 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v24, @"@VersionInfo", LibraryVersionString);
  v26 = *(a1 + 16);
  if (!v26 || !*(v26 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", kCFBooleanTrue);
  }

  v27 = *(a1 + 96);
  if (v27)
  {
    CFDictionarySetValue(theDict, @"@UUID", v27);
  }

  v28 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v28)
  {
    v9 = v28;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v28);
LABEL_28:
    Data = 0;
    v19 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_1000ABB18, *(a1 + 72));
  v19 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v19 + 24) = CFRetain(theDict);
  *(v19 + 16) = *(a1 + 80);
  *(v19 + 80) = *(a1 + 488);
  *(v19 + 88) = *(a1 + 512);
  if (*(v19 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorMalloc, 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  *(v19 + 32) = Mutable;
  v34 = *(a1 + 16);
  if (v34 && !*(v34 + 160))
  {
    sub_100010984(Mutable, @"x-intnt-apchipid", *(v34 + 8));
    v35 = *(v19 + 32);
    v36 = *(*(a1 + 16) + 64);
    context = 0;
    if (v35 && v36 && CFNumberGetValue(v36, kCFNumberSInt64Type, &context))
    {
      sub_100010984(v35, @"x-intnt-certcepo", context);
    }

    sub_100010984(*(v19 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v37 = *(v19 + 32);
    if (v37)
    {
      v38 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v37, @"x-intnt-apsecuritymode", v38);
      v37 = *(v19 + 32);
      if (v37)
      {
        if (*(*(a1 + 16) + 20))
        {
          v39 = @"yes";
        }

        else
        {
          v39 = @"no";
        }

        CFDictionarySetValue(v37, @"x-intnt-approductionmode", v39);
        v37 = *(v19 + 32);
      }
    }

    sub_100010984(v37, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    sub_100010984(*(v19 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v40 = *(v19 + 32);
      if (v40)
      {
        CFDictionarySetValue(v40, @"x-intnt-authuserid", @"yes");
      }
    }

    v41 = *(*(a1 + 16) + 72);
    if (v41)
    {
      CFDictionarySetValue(*(v19 + 32), @"x-intnt-usbserialstr", v41);
    }

    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v19 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v43 = tss_submit(v19, v32, v33);
  v44 = v43;
  if (!v43)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v43 <= 0x2710)
  {
    v45 = *(v19 + 72);
    if (v45)
    {
      v9 = v43 + 3100;
      LODWORD(context) = v43 + 3100;
      if (v43 < 0x384)
      {
        v46 = CFGetAllocator(a1);
        v47 = CFNumberCreate(v46, kCFNumberIntType, &context);
        if (v47)
        {
          CFDictionarySetValue(*(a1 + 352), v47, v45);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", context, v45);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", context, v45);
        }

        SafeRelease(v47);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v43 + 3100);
    }
  }

  SafeRelease(0);
  if (v44 > 9999)
  {
    if ((v44 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_100085B10[v44 - 10000];
    }
  }

  else
  {
    v9 = (v44 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", LocalizedStatusString);
LABEL_77:
  v49 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v49, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v50 = CFGetAllocator(a1);
    v51 = AMAuthInstallSupportBase64Encode(v50, Data, &v58);
    if (v44)
    {
      if (!v51)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v58);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>");
      }
    }

    else
    {
      if (!v51)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v58);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>");
      }

      Value = CFDictionaryGetValue(*(v19 + 40), @"@ServerVersion");
      v53 = @"unavailable";
      if (Value)
      {
        v53 = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v53);
      AMAuthInstallDebugWriteObject(a1, *(v19 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v19 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v58);
  SafeRelease(0);
  if (v19)
  {
    tss_close_session(v19);
  }

  return v9;
}

uint64_t AMAuthInstallSsoEnable(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (qword_1000C87A0)
  {
    result = 0;
    *(a1 + 104) = sub_100010B50;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSsoEnable", "ACMobile dylib not loaded", v1, v2);
    return 99;
  }

  return result;
}

uint64_t AMAuthInstallSsoSetStealthMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

uint64_t sub_1000723D8(void *a1, CFStringRef *a2)
{
  result = 0;
  if (!a1)
  {
    v5 = 0;
    v6 = 0;
LABEL_25:
    v15 = 1;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (!Mutable)
  {
    v6 = 0;
    goto LABEL_23;
  }

  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  v6 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, "APPLECONNECT.APPLE.COM", 22, kCFAllocatorNull);
  if (!v6)
  {
LABEL_23:
    v15 = 2;
    goto LABEL_20;
  }

  CFDictionarySetValue(v5, kSecAttrGeneric, v6);
  CFDictionarySetValue(v5, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v5, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionarySetValue(v5, kSecReturnAttributes, kCFBooleanTrue);
  v7 = SecItemCopyMatching(v5, &result);
  if (v7 == -25300)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Credentials not found");
    v15 = 8;
    goto LABEL_20;
  }

  if (v7)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "unexpected error: %d", v7);
    v15 = 14;
    goto LABEL_20;
  }

  if (!result)
  {
    SafeRelease(0);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Username not found");
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(result, kSecAttrAccount);
  *a1 = Value;
  CFRetain(Value);
  SafeRelease(0);
  if (a2 && ((v19 = 0, !result) ? (v16 = 0, v10 = 0, v15 = 1) : (MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, result), (v10 = MutableCopy) == 0) ? (v16 = 0, v15 = 2) : (CFDictionarySetValue(MutableCopy, kSecReturnData, kCFBooleanTrue), CFDictionarySetValue(v10, kSecClass, kSecClassGenericPassword), v11 = SecItemCopyMatching(v10, &v19), v11 == -25300) ? (AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "password not found in keychain response"), v16 = 0, v15 = 8) : v11 ? (AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "unexpected error: %d", v11), v16 = 0, v15 = 14) : (CFDictionaryRemoveValue(v10, kSecReturnData), BytePtr = CFDataGetBytePtr(v19), Length = CFDataGetLength(v19), v14 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0), (*a2 = v14) == 0) ? (v15 = 3, AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "Failed to convert password"), v16 = 0) : (v15 = 0, v16 = 1), SafeRelease(v19), SafeRelease(v10), (v16 & 1) == 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Password not found");
  }

  else
  {
    AMAuthInstallLog(6, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Found Credentials for username=%@ ", *a1);
    v15 = 0;
  }

LABEL_20:
  SafeRelease(v5);
  SafeRelease(result);
  SafeRelease(v6);
  return v15;
}

uint64_t sub_10007279C(const void *a1)
{
  result = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = Mutable;
  if (!Mutable)
  {
    MutableCopy = 0;
    v4 = 0;
LABEL_11:
    v5 = 0;
    v9 = 2;
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  v4 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, "APPLECONNECT.APPLE.COM", 22, kCFAllocatorNull);
  if (!v4)
  {
    MutableCopy = 0;
    goto LABEL_11;
  }

  CFDictionarySetValue(v3, kSecAttrGeneric, v4);
  CFDictionarySetValue(v3, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v3, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionarySetValue(v3, kSecReturnAttributes, kCFBooleanTrue);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v5, kSecAttrAccount, a1);
  CFDictionarySetValue(v5, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  if (!SecItemCopyMatching(v3, &result))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, result);
    CFDictionarySetValue(MutableCopy, kSecClass, kSecClassGenericPassword);
    v8 = SecItemUpdate(MutableCopy, v5);
    if (!v8)
    {
      goto LABEL_7;
    }

    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemUpdate ret=%d", v8);
LABEL_14:
    v9 = 14;
    goto LABEL_8;
  }

  CFDictionarySetValue(v5, kSecClass, kSecClassGenericPassword);
  CFDictionarySetValue(v5, kSecAttrGeneric, v4);
  v6 = SecItemAdd(v5, 0);
  if (v6)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemAdd ret=%d", v6);
    MutableCopy = 0;
    goto LABEL_14;
  }

  MutableCopy = 0;
LABEL_7:
  v9 = 0;
LABEL_8:
  SafeRelease(result);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(0);
  SafeRelease(v4);
  SafeRelease(v5);
  return v9;
}

uint64_t sub_100072A48()
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoSUSSOInit", "copyPersonalizationSSOToken symbol not found");
  result = dlclose(qword_1000C87B0);
  qword_1000C87B0 = 0;
  return result;
}

uint64_t sub_100072A8C()
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoACMobileInit", "ACMobileShimGetTicket symbol not found");
  result = dlclose(qword_1000C87A0);
  qword_1000C87A0 = 0;
  return result;
}

uint64_t _CFDictionaryGetBoolean(const void *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict is NULL");
    return a3;
  }

  if (!a2)
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "key is NULL");
    return a3;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict is not CFDictionary");
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v8 = Value;
  v9 = CFBooleanGetTypeID();
  if (v9 != CFGetTypeID(v8))
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict value is not CFBoolean");
    return a3;
  }

  return CFBooleanGetValue(v8);
}

char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = a0123456789abcd[v9 >> 4];
        result[(v8 + 1)] = a0123456789abcd[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000730A8(const __CFAllocator *a1, uint64_t a2, CFTypeRef cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v6 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 0);
    if (v6)
    {
      v4 = v6;
      AMAuthInstallLog(3, "_AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.");
    }

    else
    {
      if (a4)
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL();
      }

      else
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromFileURL();
      }

      v4 = DataFromMappedFileURL;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyDataFromHexString(uint64_t a1, CFStringRef theString, uint64_t *a3)
{
  v3 = 1;
  if (theString)
  {
    if (a3)
    {
      v3 = 3;
      if (CFStringGetCString(theString, buffer, 512, 0x8000100u))
      {
        v5 = AMSupportCopyDataFromAsciiEncodedHex();
        *a3 = v5;
        if (v5)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v3;
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, uint64_t a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v6 = AMAuthInstallSupportRemoveFile(cf);
    if (v6)
    {
LABEL_8:
      v4 = v6;
      goto LABEL_9;
    }

LABEL_7:
    v6 = AMSupportPlatformWriteDataToFileURL();
    goto LABEL_8;
  }

  v5 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v5)
  {
    goto LABEL_7;
  }

  v4 = v5;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.");
LABEL_9:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

CFIndex AMAuthInstallSupportApplyDictionaryOverrides(int a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, const __CFString *a4)
{
  Count = 1;
  if (theDict && a3 && *a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = malloc(8 * Count);
    v9 = malloc(8 * Count);
    v10 = v9;
    if (v8 && v9)
    {
      CFDictionaryGetKeysAndValues(theDict, v8, v9);
      if (Count < 1)
      {
        Count = 0;
        goto LABEL_17;
      }

      v11 = "invalid overridesKey";
      v12 = v8;
      v13 = v10;
      while (1)
      {
        v14 = *v12;
        if (!*v12)
        {
LABEL_22:
          AMAuthInstallLog(3, "AMAuthInstallSupportApplyDictionaryOverrides", v11);
          Count = 99;
          goto LABEL_17;
        }

        v15 = *v13;
        if (!*v13)
        {
          v11 = "invalid overridesValue";
          goto LABEL_22;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (CFStringFind(*v12, a4, 0).location != -1)
        {
          break;
        }

LABEL_14:
        ++v13;
        ++v12;
        if (!--Count)
        {
          goto LABEL_17;
        }
      }

      v14 = *v12;
      v15 = *v13;
LABEL_13:
      CFDictionarySetValue(*a3, v14, v15);
      goto LABEL_14;
    }

    Count = 2;
    if (v8)
    {
LABEL_17:
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }
  }

  return Count;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyWithFormat(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a3)
  {
    return 0;
  }

  v10 = CFStringCreateWithFormatAndArguments(a1, 0, a3, va);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(a1, a2, v10);
  CFRelease(v11);
  return ValueForKeyPathInDict;
}

uint64_t AMAuthInstallSupportCopyFile(uint64_t a1, const void *a2, const __CFURL *a3)
{
  cf = 0;
  v3 = 1;
  if (a2 && a3)
  {
    DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(a3);
    if (DirectoryForURL)
    {
      v3 = DirectoryForURL;
      AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportMakeDirectory failed.");
    }

    else
    {
      v7 = sub_1000730A8(kCFAllocatorDefault, &cf, a2, 1);
      if (v7)
      {
        v3 = v7;
        AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportCreateDataFromFileURL failed.");
      }

      else
      {
        v3 = AMAuthInstallSupportWriteDataToFileURL(kCFAllocatorDefault, cf, a3, 1);
        if (v3)
        {
          AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportWriteDataToFileURL failed.");
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v3;
}

uint64_t AMAuthInstallSupportCopyStringReplacingLastComponent(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3, const void *a4, CFTypeRef *a5)
{
  v5 = 1;
  if (a2 && a4 && a5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, a3);
    if (!ArrayBySeparatingStrings)
    {
      return 3;
    }

    v11 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
    if (!MutableCopy)
    {
      v5 = 3;
      v16 = v11;
LABEL_9:
      CFRelease(v16);
      return v5;
    }

    v13 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    CFArraySetValueAtIndex(v13, Count - 1, a4);
    v15 = CFStringCreateByCombiningStrings(a1, v13, a3);
    v16 = v15;
    if (v15)
    {
      v5 = 0;
      *a5 = CFRetain(v15);
    }

    else
    {
      v5 = 3;
    }

    CFRelease(v11);
    CFRelease(v13);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t AMAuthInstallSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    v4 = 2;
    goto LABEL_22;
  }

  v26 = a1;
  v27 = a4;
  v28 = v11;
  if (Count < 1)
  {
LABEL_20:
    v4 = 0;
    *v27 = CFRetain(MutableCopy);
    goto LABEL_21;
  }

  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = *v15;
    v18 = *v16;
    v19 = CFDictionaryGetValue(a2, *v15);
    if (v18)
    {
      v20 = v19;
      v21 = CFGetTypeID(v18);
      if (v21 == CFDictionaryGetTypeID() && v20 != 0)
      {
        v23 = CFGetTypeID(v20);
        if (v23 == CFDictionaryGetTypeID())
        {
          break;
        }
      }
    }

    CFDictionarySetValue(MutableCopy, v17, v18);
LABEL_16:
    ++v16;
    ++v15;
    if (!--Count)
    {
      goto LABEL_20;
    }
  }

  value = 0;
  MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v26, v20, v18, &value);
  if (!MergedDictionary)
  {
    CFDictionarySetValue(MutableCopy, v17, value);
    CFRelease(value);
    goto LABEL_16;
  }

  v4 = MergedDictionary;
LABEL_21:
  v11 = v28;
LABEL_22:
  free(v11);
  free(v13);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreatePrependedFilePath(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, void *a4)
{
  v4 = 1;
  if (!a1 || !a2 || !theString || !a4)
  {
    return v4;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  if (ValueAtIndex)
  {
    v18 = ValueAtIndex;
    v11 = sub_100012214();
    v14 = CFStringCreateWithFormat(v11, v12, v13, a2, v18);
    v15 = v14;
    if (v14)
    {
      if (Count > 1)
      {
        CFArraySetValueAtIndex(ArrayBySeparatingStrings, Count - 1, v14);
        v16 = CFStringCreateByCombiningStrings(a1, ArrayBySeparatingStrings, @"/");
      }

      else
      {
        v16 = CFRetain(v14);
      }

      v4 = 0;
      *a4 = v16;
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v4 = 2;
  if (ArrayBySeparatingStrings)
  {
LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_12:
  if (v15)
  {
    CFRelease(v15);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyTagAndFileURL(const __CFAllocator *a1, CFURLRef anURL, CFTypeRef *a3, CFTypeRef *a4)
{
  if (!anURL)
  {
    return 2;
  }

  v8 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  if (CFStringFind(v8, @"=", 0).location != -1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v9, @"=");
    if (!ArrayBySeparatingStrings)
    {
      v18 = 2;
      goto LABEL_15;
    }

    v11 = ArrayBySeparatingStrings;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (ValueAtIndex && (v13 = ValueAtIndex, (v14 = CFArrayGetValueAtIndex(v11, 1)) != 0))
    {
      v15 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v14, kCFURLPOSIXPathStyle, 0);
      if (v15)
      {
        v16 = v15;
        if (!a3)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v17 = 2;
    }

    else
    {
      v17 = 8;
    }

    CFRelease(v9);
    v16 = 0;
LABEL_13:
    CFRelease(v11);
    v18 = v17;
    goto LABEL_14;
  }

  v16 = CFRetain(anURL);
  v13 = 0;
  v11 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = CFRetain(v13);
  }

LABEL_10:
  if (a4)
  {
    *a4 = CFRetain(v16);
  }

  CFRelease(v9);
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = v16;
  if (v16)
  {
LABEL_15:
    CFRelease(v9);
  }

  return v18;
}

BOOL AMAuthInstallVinylCheckVinylFwLdrVerLegacy(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3.location = 0;
  v3.length = 2;
  CFDataGetBytes(a1, v3, buffer);
  return (buffer[1] | ((buffer[0] & 0x7F) << 8)) < 0x301u;
}

uint64_t AMAuthInstallVinylIsLegacyChipId(CFTypeRef cf, BOOL *a2)
{
  if (cf && (v3 = *(cf + 6)) != 0 && *(v3 + 160))
  {
    v5 = CFGetAllocator(cf);
    v6 = CFNumberCreate(v5, kCFNumberSInt8Type, &kAMAuthInstallVinylLegacyChipIdCutoff);
    if (v6)
    {
      v7 = CFNumberCompare(*(*(cf + 6) + 160), v6, 0);
      v8 = 0;
      *a2 = v7 == kCFCompareLessThan;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  SafeRelease(v6);
  return v8;
}

uint64_t AMAuthInstallVinylCreateMeasurements(CFTypeRef cf, const void *a2, CFDictionaryRef *a3, const void **a4)
{
  v28 = 0;
  if (!cf)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 1;
  if (a3 && a2 && *(cf + 6))
  {
    IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v28);
    if (IsLegacyChipId)
    {
      v6 = IsLegacyChipId;
      v5 = 0;
      goto LABEL_26;
    }

    v11 = *a3;
    v12 = CFGetAllocator(cf);
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, *a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v12, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v5 = MutableCopy;
    if (!MutableCopy)
    {
      v6 = 2;
      goto LABEL_26;
    }

    if (v28)
    {
      Measurements = AMAuthInstallBasebandVinylCreateMeasurements(cf, a2, MutableCopy);
      if (!Measurements)
      {
        goto LABEL_22;
      }

      v6 = Measurements;
      goto LABEL_26;
    }

    theData = 0;
    v15 = __dst;
    memcpy(__dst, off_1000AAD90, sizeof(__dst));
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (!sub_100074CD0(cf, a2, (v15 + 16), &theData) && theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        AMAuthInstallLogDumpMemory(7, "_AMAuthInstallVinylCreateMeasurementsInternal", "eUICC IM4P", BytePtr, Length);
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateMeasurementsInternal", "failed to compute digest");
LABEL_21:
          SafeRelease(theData);
LABEL_22:
          Value = v5;
          if (a4 && (Value = CFDictionaryGetValue(v5, *a4)) == 0)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            *a3 = CFRetain(Value);
          }

          break;
        }

        SafeRelease(theData);
        theData = 0;
        v20 = CFGetAllocator(cf);
        v21 = CFDataCreate(v20, bytes, 32);
        if (!v21)
        {
          goto LABEL_21;
        }

        v22 = v21;
        v23 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v23, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          goto LABEL_21;
        }

        v25 = Mutable;
        CFDictionarySetValue(Mutable, *(v15 + 1), v22);
        CFDictionarySetValue(v5, *v15, v25);
        SafeRelease(v22);
        SafeRelease(v25);
      }

      v16 = 0;
      v15 = &__dst[80];
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_26:
  SafeRelease(0);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallVinylServerRequestAddRequiredTags(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  if (!v4 || !v4[15] || !v4[20] || !v4[16] || !v4[17] || !v4[18])
  {
    return 1;
  }

  result = 1;
  if (theDict && v4[19])
  {
    Value = CFDictionaryGetValue(theDict, @"eUICC,Gold");
    v9 = CFDictionaryGetValue(theDict, @"eUICC,Main");
    if (Value | v9)
    {
      v10 = v9;
      CFDictionarySetValue(theDict, @"eUICC,EID", *(*(a1 + 48) + 120));
      CFDictionarySetValue(theDict, @"eUICC,ChipID", *(*(a1 + 48) + 160));
      if (Value)
      {
        CFDictionarySetValue(Value, @"Nonce", *(*(a1 + 48) + 136));
      }

      if (v10)
      {
        CFDictionarySetValue(v10, @"Nonce", *(*(a1 + 48) + 128));
      }

      CFDictionarySetValue(theDict, @"@eUICC,Ticket", kCFBooleanTrue);
      CFDictionarySetValue(theDict, @"eUICC,RootKeyIdentifier", *(*(a1 + 48) + 152));
      if (a3)
      {
        v11 = CFDictionaryGetValue(a3, @"UniqueBuildID");
        if (v11)
        {
          CFDictionarySetValue(theDict, @"UniqueBuildID", v11);
        }
      }

      v12 = *(a1 + 16);
      if (v12)
      {
        _CFDictionarySetBoolean(theDict, @"eUICC,ApProductionMode", *(v12 + 20));
      }

      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallVinylServerRequestAddRequiredTags", "Neither main nor gold vinyl fw found!");
      return 8;
    }
  }

  return result;
}

uint64_t AMAuthInstallVinylPersonalizeFirmware(void *cf, const void *a2, const void *a3, CFDictionaryRef *a4, const __CFDictionary *a5)
{
  v71 = 0;
  v70 = 0;
  if (!cf || (v6 = cf[6]) == 0)
  {
    v13 = 1;
    goto LABEL_67;
  }

  if (!*(v6 + 160))
  {
    AMAuthInstallLog(3, "AMAuthInstallVinylPersonalizeFirmware", "No eUICC ChipID specified. Not personalizing VinylFirmware at this time.", a4, a5);
    v13 = 0;
    goto LABEL_67;
  }

  IsLegacyChipId = AMAuthInstallVinylCreateMeasurements(cf, a2, &v71, 0);
  if (IsLegacyChipId || (IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v70), IsLegacyChipId))
  {
    v13 = IsLegacyChipId;
    goto LABEL_67;
  }

  v12 = v71;
  if (v70)
  {
    v13 = 1;
    if (!a4 || !v71)
    {
      goto LABEL_21;
    }

    if (!*a4)
    {
      v13 = 14;
      goto LABEL_21;
    }

    if (!a3)
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "No dstURL provided. Running in restore environment?");
      v13 = 0;
      goto LABEL_21;
    }

    v14 = BbfwWriterCreate(a3);
    if (v14)
    {
      v15 = v14;
      v16 = BbfwReaderOpen(a2);
      if (v16)
      {
        v17 = v16;
        Value = CFDictionaryGetValue(*a4, @"EuiccMainTicket");
        if (Value)
        {
          v19 = Value;
          TypeID = CFDataGetTypeID();
          if (TypeID != CFGetTypeID(v19))
          {
            goto LABEL_79;
          }

          if (BbfwWriterAddFile(v15, @"vinyl/update/main/ticket.der", v19))
          {
            goto LABEL_80;
          }
        }

        v21 = CFDictionaryGetValue(*a4, @"EuiccGoldTicket");
        if (!v21)
        {
LABEL_19:
          v13 = 0;
LABEL_20:
          BbfwWriterFinalize(v15);
          BbfwReaderClose(v17);
LABEL_21:
          SafeRelease(0);
          SafeRelease(0);
          v24 = 0;
          goto LABEL_66;
        }

        v22 = v21;
        v23 = CFDataGetTypeID();
        if (v23 == CFGetTypeID(v22))
        {
          if (!BbfwWriterAddFile(v15, @"vinyl/update/gold/ticket.der", v22))
          {
            goto LABEL_19;
          }

LABEL_80:
          v13 = 4;
          goto LABEL_20;
        }

LABEL_79:
        v13 = 17;
        goto LABEL_20;
      }

      BbfwWriterFinalize(v15);
    }

    else
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "failed to create output file");
    }

    v13 = 4;
    goto LABEL_21;
  }

  cfa = a3;
  StitchTicket = 0;
  v72[0] = 0;
  v73[0] = @"euig";
  v73[1] = @"update/gold/profile.bin";
  v73[2] = @"update/gold/info.plist";
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v77 = @"vinyl/update/gold/ticket.der";
  v79 = 0;
  v80 = 0;
  v78 = @"EuiccGoldTicket";
  v81[0] = @"euim";
  v81[1] = @"update/main/profile.bin";
  v81[2] = @"update/main/info.plist";
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v85 = @"vinyl/update/main/ticket.der";
  v87 = 0;
  v88 = 0;
  v13 = 1;
  v86 = @"EuiccMainTicket";
  if (!a4 || !a2)
  {
    v26 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  if (!v71)
  {
LABEL_92:
    SafeRelease(StitchTicket);
    Mutable = v26;
    goto LABEL_65;
  }

  if (*a4 && CFDictionaryGetValue(*a4, @"eUICC,Ticket"))
  {
    v27 = *a4;
  }

  else
  {
    AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Vinyl server signing is enabled...");
    v62 = AMAuthInstallVinylServerRequestAddRequiredTags(cf, v12, a5);
    if (v62)
    {
      v13 = v62;
      if (v62 == 8)
      {
        AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Nothing to sign, skipping..");
        v13 = 0;
      }

      goto LABEL_78;
    }

    v63 = AMAuthInstallRequestSendSync(cf, v12, v72);
    if (v63)
    {
      v13 = v63;
      goto LABEL_78;
    }

    v27 = v72[0];
    if (!v72[0])
    {
      v13 = 14;
LABEL_78:
      SafeRelease(0);
      Mutable = 0;
      goto LABEL_65;
    }
  }

  v28 = CFDictionaryGetValue(v27, @"eUICC,Ticket");
  v29 = v28;
  if (!v28)
  {
    v13 = 17;
    goto LABEL_78;
  }

  v30 = CFGetTypeID(v28);
  if (v30 != CFDataGetTypeID())
  {
    StitchTicket = 0;
    v26 = 0;
    v13 = 17;
    goto LABEL_92;
  }

  v64 = a4;
  BytePtr = CFDataGetBytePtr(v29);
  v65 = v29;
  Length = CFDataGetLength(v29);
  AMAuthInstallLogDumpMemory(8, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "EUICC,Ticket:", BytePtr, Length);
  v69 = 0;
  Mutable = 0;
  v34 = 0;
  StitchTicket = 0;
  v35 = v73;
  v36 = 1;
  do
  {
    v37 = v36;
    v38 = cf[6];
    v35[4] = *(v38 + 152);
    v35[5] = *(v38 + 168);
    sub_10001235C();
    v40 = BbfwReaderStart(a2, v39, v35);
    if (v40 || (sub_100012348(), v40 = BbfwReaderStart(a2, v41, v35), v40))
    {
      v13 = v40;
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to read zip file", v64);
      goto LABEL_63;
    }

    v35[4] = 0;
    v35[5] = 0;
    if (!v35[3])
    {
      goto LABEL_34;
    }

    v42 = sub_100074CD0(cf, a2, v35, v35 + 10);
    if (v42)
    {
      v13 = v42;
      goto LABEL_63;
    }

    SafeRelease(StitchTicket);
    v43 = CFGetAllocator(cf);
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v43, v35[10], v65);
    if (!StitchTicket)
    {
      v13 = 3;
      goto LABEL_63;
    }

    v67 = v34;
    v68 = Mutable;
    v44 = v35[3];
    memset(&v72[1] + 4, 0, 12);
    v45 = CFGetAllocator(cf);
    v46 = CFDataGetLength(StitchTicket);
    v47 = CFDataGetLength(v44);
    MutableCopy = CFDataCreateMutableCopy(v45, v47 + v46, StitchTicket);
    if (!MutableCopy)
    {
      v53 = 0;
      goto LABEL_54;
    }

    v49 = CFDataGetBytePtr(v44);
    v50 = CFDataGetLength(v44);
    CFDataAppendBytes(MutableCopy, v49, v50);
    if (!DEREncoderCreate())
    {
      goto LABEL_52;
    }

    CFDataGetBytePtr(MutableCopy);
    CFDataGetLength(MutableCopy);
    DEREncoderAddData();
    if (DEREncoderCreateEncodedBuffer())
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylStitchImg4Vad", "failed to encode img4/vad sequence");
      goto LABEL_42;
    }

    v51 = CFGetAllocator(cf);
    v52 = CFDataCreate(v51, v72[2], HIDWORD(v72[1]));
    v35[11] = v52;
    if (!v52)
    {
LABEL_52:
      v53 = 0;
LABEL_54:
      v13 = 2;
      goto LABEL_43;
    }

LABEL_42:
    v13 = 0;
    v53 = 1;
LABEL_43:
    DEREncoderDestroy();
    SafeFree(v72[2]);
    SafeRelease(MutableCopy);
    if (!v53)
    {
      v34 = v67;
      Mutable = v68;
      goto LABEL_63;
    }

    v34 = v67;
    Mutable = v68;
    v54 = v69;
    if (v69)
    {
      v55 = cfa;
    }

    else
    {
      v55 = cfa;
      if (cfa)
      {
        v34 = BbfwWriterCreate(cfa);
        if (!v34)
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to create output file");
          v13 = 4;
          v26 = v68;
          goto LABEL_92;
        }
      }

      v56 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v56, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v54 = 0;
    }

    v69 = v54 + 1;
    CFDictionaryAddValue(Mutable, v35[9], v35[11]);
    if (v55 && BbfwWriterAddFile(v34, v35[8], v35[11]))
    {
      v13 = 4;
      goto LABEL_63;
    }

LABEL_34:
    v36 = 0;
    v35 = v81;
  }

  while ((v37 & 1) != 0);
  if (!v69)
  {
    v57 = CFDataGetBytePtr(*(cf[6] + 152));
    v58 = CFDataGetLength(*(cf[6] + 152));
    AMAuthInstallLogDumpMemory(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Error finding profile matching certId", v57, v58);
  }

  if (Mutable)
  {
    SafeRelease(*v64);
    v59 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v59, Mutable);
    *v64 = Copy;
    if (Copy)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_63:
  SafeRelease(StitchTicket);
  if (v34)
  {
    BbfwWriterFinalize(v34);
  }

LABEL_65:
  SafeRelease(v74);
  SafeRelease(v79);
  SafeRelease(v80);
  SafeRelease(v82);
  SafeRelease(v87);
  SafeRelease(v88);
  SafeRelease(v72[0]);
  v24 = Mutable;
LABEL_66:
  SafeRelease(v24);
LABEL_67:
  SafeRelease(v71);
  return v13;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t sub_100074CD0(const void *a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  memset(&buffer[5], 0, 12);
  bytesDeallocator = AMAuthInstallSupportCopyAllocator();
  Payload = 1;
  if (!a1 || !a2 || !a3)
  {
    sub_1000123A4();
    goto LABEL_26;
  }

  sub_1000123A4();
  if (a4)
  {
    v11 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v11, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100012370();
      v31 = 0;
      sub_10000C714();
      goto LABEL_44;
    }

    v13 = CFGetAllocator(a1);
    v14 = CFArrayCreateMutable(v13, 0, &kCFTypeArrayCallBacks);
    v15 = v14;
    v31 = Mutable;
    if (!v14)
    {
      v30 = 0;
      sub_10000C714();
      goto LABEL_44;
    }

    values[0] = Mutable;
    values[1] = v14;
    v16 = CFGetAllocator(a1);
    Payload = 2;
    v17 = CFArrayCreate(v16, values, 2, &kCFTypeArrayCallBacks);
    *(a3 + 48) = v17;
    v30 = v15;
    if (v17)
    {
      sub_10001235C();
      v19 = BbfwReaderStart(a2, v18, a3);
      if (!v19)
      {
        if (!*(a3 + 56))
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "Failed to build vinyl info.plist dictionary");
          goto LABEL_40;
        }

        sub_100012348();
        v19 = BbfwReaderStart(a2, v20, a3);
        if (!v19)
        {
          Count = CFArrayGetCount(Mutable);
          if (Count <= 0)
          {
            v29 = *a3;
            v28 = "No sources found for %@";
          }

          else
          {
            v4 = Count;
            if (Count == CFArrayGetCount(v15))
            {
              v6 = malloc(8 * v4);
              v5 = malloc(8 * v4);
              v37.location = 0;
              v37.length = v4;
              CFArrayGetValues(Mutable, v37, v6);
              v38.location = 0;
              v38.length = v4;
              CFArrayGetValues(v15, v38, v5);
              DEREncoderCreate();
              DEREncoderCreate();
              v22 = 0;
              while (1)
              {
                DEREncoderCreate();
                CFDataGetBytePtr(v6[v22]);
                Length = CFDataGetLength(v6[v22]);
                if (sub_10001237C(Length))
                {
                  break;
                }

                CFDataGetBytePtr(v5[v22]);
                v24 = CFDataGetLength(v5[v22]);
                if (sub_10001237C(v24))
                {
                  v27 = "failed to add VAD";
                  goto LABEL_30;
                }

                if (DEREncoderAddSequenceFromEncoder())
                {
                  v27 = "failed to add certId-VAD sequence";
                  goto LABEL_30;
                }

                DEREncoderDestroy();
                if (v4 == ++v22)
                {
                  if (DEREncoderAddSequenceFromEncoder())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to add top-level sequence");
                    goto LABEL_26;
                  }

                  DEREncoderDestroy();
                  if (DEREncoderCreateEncodedBuffer())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to encode DER buffer");
                    sub_100012370();
                    goto LABEL_26;
                  }

                  v25 = CFGetAllocator(a1);
                  v4 = CFDataCreateWithBytesNoCopy(v25, *&buffer[9], *&buffer[5], bytesDeallocator);
                  if (v4)
                  {
                    if (CFStringGetCString(*a3, buffer, 5, 0x8000100u) && CFStringGetCString(@"1.0", v34, 5, 0x8000100u))
                    {
                      Payload = AMAuthInstallApImg4CreatePayload(buffer, v34, v4, 0, 0, a4);
                      if (Payload)
                      {
                        AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to create im4p");
                      }

                      sub_100012370();
                    }

                    else
                    {
                      sub_100012370();
                      Payload = 3;
                    }

                    goto LABEL_26;
                  }

                  sub_100012370();
LABEL_44:
                  Payload = 2;
                  goto LABEL_26;
                }
              }

              v27 = "failed to add certId";
LABEL_30:
              Payload = 3;
              AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", v27);
              goto LABEL_26;
            }

            v28 = "Count of certID != hashVad";
          }

          AMAuthInstallLog(4, "_AMAuthInstallVinylCreateIm4p", v28, v29);
LABEL_40:
          sub_100012370();
          sub_10000C714();
          Payload = 0;
          goto LABEL_26;
        }
      }

      Payload = v19;
      AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to read zip file");
    }

    sub_100012370();
    sub_10000C714();
  }

LABEL_26:
  SafeFree(v6);
  SafeFree(v5);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v31);
  SafeRelease(v30);
  SafeRelease(*(a3 + 48));
  SafeRelease(*(a3 + 56));
  SafeRelease(v4);
  SafeRelease(bytesDeallocator);
  return Payload;
}

uint64_t sub_100075198(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  cf1 = 0;
  theData = 0;
  if (!a1 || !theString)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  v8 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || (ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), AMAuthInstallSupportCopyDataFromHexString(0, ValueAtIndex, &cf1)))
  {
    v4 = 0;
LABEL_44:
    MutableCopy = 0;
    goto LABEL_45;
  }

  v13 = *(a1 + 8);
  if (!v13 || !CFStringHasSuffix(theString, v13))
  {
    v4 = 0;
    sub_10000C714();
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  v4 = sub_100075614(theString);
  if (!v4)
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(*(a1 + 56), v4);
  if (!Value)
  {
    goto LABEL_44;
  }

  v16 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v16;
  if (!v16)
  {
    goto LABEL_45;
  }

  if (CFArrayGetCount(v16) >= 1 && (v17 = CFArrayGetValueAtIndex(MutableCopy, 0)) != 0)
  {
    v9 = CFStringCreateArrayBySeparatingStrings(0, v17, @".");
    if (CFArrayGetCount(v9) == 2)
    {
      v18 = CFArrayGetValueAtIndex(v9, 0);
      IntValue = CFStringGetIntValue(v18);
      v20 = CFArrayGetValueAtIndex(v9, 1);
      v21 = ((CFStringGetIntValue(v20) | (IntValue << 8)) & 0x7FFFu) > 0x300;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v9 = 0;
  }

  SafeRelease(v9);
  v22 = *(a1 + 32);
  if (!v22)
  {
    sub_10000C714();
    goto LABEL_35;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (v21 || CFArrayGetCount(MutableCopy) < 1 || (v23 = CFArrayGetValueAtIndex(MutableCopy, 0)) == 0 || (MutableCopy = CFStringCreateArrayBySeparatingStrings(0, v23, @"."), CFArrayGetCount(MutableCopy) != 2) || (v24 = CFDataGetBytePtr(v9)) == 0 || (v25 = v24, v26 = *v24, v27 = CFArrayGetValueAtIndex(MutableCopy, 0), CFStringGetIntValue(v27) != v26) || (v9 = v25[1], v28 = CFArrayGetValueAtIndex(MutableCopy, 1), CFStringGetIntValue(v28) != v9))
  {
    MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 32));
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(*(a1 + 40));
      Length = CFDataGetLength(*(a1 + 40));
      CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
      CFDataGetBytePtr(MutableCopy);
      CFDataGetLength(MutableCopy);
      if (!AMSupportDigestSha256())
      {
        SafeRelease(0);
        v9 = CFDataCreate(0, bytes, 32);
        v29 = CFEqual(cf1, v9);
        goto LABEL_33;
      }

      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest");
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  v22 = *(a1 + 32);
LABEL_28:
  CFEqual(cf1, v22);
  sub_10000C714();
LABEL_33:
  if (v29 && BbfwReaderFindAndCopyFileData(a3, theString, (a1 + 24)))
  {
    goto LABEL_49;
  }

LABEL_35:
  v32 = *(a1 + 48);
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = CFArrayGetValueAtIndex(v32, 0);
  v34 = CFArrayGetValueAtIndex(*(a1 + 48), 1);
  v3 = 0;
  if (v33)
  {
    v35 = v34;
    if (v34)
    {
      if (!cf1)
      {
        goto LABEL_46;
      }

      CFArrayAppendValue(v33, cf1);
      if (!BbfwReaderFindAndCopyFileData(a3, theString, &theData))
      {
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest");
        }

        else
        {
          SafeRelease(v9);
          v9 = CFDataCreate(0, bytes, 32);
          if (v9)
          {
            CFArrayAppendValue(v35, v9);
            goto LABEL_9;
          }
        }

LABEL_46:
        v3 = 0;
        goto LABEL_10;
      }

LABEL_49:
      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to find and/or copy data");
      goto LABEL_46;
    }
  }

LABEL_10:
  SafeRelease(theData);
  SafeRelease(cf1);
  SafeRelease(v9);
  SafeRelease(v8);
  SafeRelease(MutableCopy);
  SafeRelease(v4);
  return v3;
}

CFStringRef sub_100075614(CFStringRef filePath)
{
  if (!filePath)
  {
    Copy = 0;
    v1 = 0;
LABEL_8:
    v3 = 0;
    goto LABEL_5;
  }

  v1 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    Copy = 0;
    goto LABEL_8;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(kCFAllocatorDefault, v1);
  v3 = PathComponent;
  if (PathComponent)
  {
    v4 = CFURLGetString(PathComponent);
    Copy = CFStringCreateCopy(kCFAllocatorDefault, v4);
  }

  else
  {
    Copy = 0;
  }

LABEL_5:
  SafeRelease(v1);
  SafeRelease(v3);
  return Copy;
}

uint64_t AMAuthInstallBasebandMAV22StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = sub_1000093DC(v7, @"aop.mbn");
      v9 = sub_1000093DC(v8, @"apdp.mbn");
      v10 = sub_1000093DC(v9, @"apps.mbn");
      v11 = sub_1000093DC(v10, @"bbcfg.mbn");
      v12 = sub_1000093DC(v11, @"devcfg.mbn");
      v13 = sub_1000093DC(v12, @"hyp.mbn");
      v14 = sub_1000093DC(v13, @"qdsp6sw.mbn");
      sub_1000093DC(v14, @"sec.elf");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v15 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v16 = sub_1000093DC(v15, @"multi_image_qti.mbn");
      sub_1000093DC(v16, @"tz.mbn");
      v17 = sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v18 = sub_1000093DC(v17, @"xbl_cfg.elf");
      v19 = sub_1000093DC(v18, @"uefi.elf");
      sub_1000093DC(v19, @"xbl_support.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV22StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

void *BbfwReaderOpen(CFTypeRef cf)
{
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(kCFAllocatorDefault, cf, &url, 0))
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "%s: failed to get new URL");
    goto LABEL_5;
  }

  if (!sub_1000126BC(0, v1, v2, v3, v4, v5, v6, v7, v10, v11, url))
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = amai_unzOpen(v13);
  if (!v8)
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "failed to open bbfw archive for reading");
    AMAuthInstallLog(7, "BbfwReaderOpen", "Bbfw url: %@", url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v8;
}

uint64_t BbfwReaderClose(uint64_t a1)
{
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t BbfwReaderFindFile(uint64_t a1, CFStringRef theString)
{
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    return 4 * (amai_unzLocateFile(a1, buffer, 0) != 0);
  }

  else
  {
    return 99;
  }
}

uint64_t BbfwReaderFindAndCopyFileData(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  File = BbfwReaderFindFile(a1, a2);
  if (File)
  {
    v7 = File;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, File);
    AMAuthInstallLog(7, "BbfwReaderFindAndCopyFileData", "failed to find bbfw item %@: %@", a2, LocalizedStatusString);
    v9 = 0;
  }

  else
  {
    v11 = BbfwReaderCopyFileData(a1, &cf);
    if (v11)
    {
      v7 = v11;
      v12 = AMAuthInstallGetLocalizedStatusString(0, v11);
      AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: %@", a2, v12);
      v9 = cf;
    }

    else
    {
      v9 = cf;
      if (cf)
      {
        v7 = 0;
        *a3 = CFRetain(cf);
      }

      else
      {
        AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: fileData is NULL", a2);
        v7 = 0;
      }
    }
  }

  SafeRelease(v9);
  return v7;
}

uint64_t BbfwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  bzero(v11, 0x88uLL);
  v4 = AMAuthInstallSupportCopyAllocator();
  if (sub_100012698(a1, v11, v13))
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = malloc(__size);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (amai_unzOpenCurrentFile(a1))
  {
    goto LABEL_10;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_8;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
LABEL_10:
    v8 = 0;
    v9 = 15;
    goto LABEL_8;
  }

  v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, __size, v4);
  v8 = v7;
  if (!v7)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_8;
  }

  v5 = 0;
  v9 = 0;
  *a2 = CFRetain(v7);
LABEL_8:
  SafeRelease(v8);
  SafeRelease(v4);
  SafeFree(v5);
  return v9;
}

uint64_t BbfwReaderStart(const void *a1, uint64_t (*a2)(uint64_t, CFStringRef, void *), uint64_t a3)
{
  v5 = BbfwReaderOpen(a1);
  if (!v5)
  {
    AMAuthInstallLog(3, "BbfwReaderStart", "failed to open bbfw archive for reading");
    return 4;
  }

  v6 = v5;
  bzero(v12, 0x88uLL);
  while (1)
  {
    if (sub_100012698(v6, v12, cStr))
    {
      v10 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v6))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v7)
  {
    v8 = v7;
    v9 = a2(a3, v7, v6);
    CFRelease(v8);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 3;
LABEL_9:
  amai_unzClose(v6);
  return v10;
}

uint64_t BbfwCreateDictionaryFromURL(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = BbfwReaderStart(a2, sub_100075E88, Mutable);
    if (!v6)
    {
      *a3 = CFRetain(Mutable);
    }
  }

  else
  {
    v6 = 2;
  }

  SafeRelease(Mutable);
  return v6;
}

BOOL sub_100075E88(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  v6 = value;
  if (!v5)
  {
    CFDictionarySetValue(a1, a2, value);
  }

  SafeRelease(v6);
  return v5 == 0;
}

void *BbfwWriterCreate(CFTypeRef cf)
{
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(kCFAllocatorDefault, cf, &url, 1))
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "%s: failed to get new URL");
    goto LABEL_5;
  }

  if (!sub_1000126BC(0, v1, v2, v3, v4, v5, v6, v7, v10, v11, url))
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = amai_zipOpen(v13, 0);
  if (!v8)
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "failed to open bbfw archive for writing");
    AMAuthInstallLog(7, "BbfwWriterCreate", "Bbfw url: %@", url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v8;
}

uint64_t AMAuthInstallSsoSetAppleConnectInfo(void *a1, const __CFString *cf, const void *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFStringGetTypeID();
      Mutable = 0;
      if (a3)
      {
        if (v8 == TypeID)
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CFDataGetTypeID())
          {
            v11 = CFGetAllocator(a1);
            Mutable = CFDataCreateMutable(v11, 0);
            if (Mutable)
            {
              Length = CFStringGetLength(cf);
              CFDataSetLength(Mutable, Length + 1);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              v14 = CFDataGetLength(Mutable);
              if (CFStringGetCString(cf, MutableBytePtr, v14, 0x8000100u))
              {
                BytePtr = CFDataGetBytePtr(a3);
                v16 = CFDataGetLength(a3);
                CFDataAppendBytes(Mutable, BytePtr, v16);
                v4 = AMAuthInstallSsoSetToken(a1, Mutable);
              }

              else
              {
                v4 = 3;
              }
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            Mutable = 0;
          }
        }
      }
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallSsoSetToken(void *a1, CFTypeRef cf)
{
  result = 1;
  if (a1 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = a1[15];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = CFGetAllocator(a1);
      Copy = CFDataCreateCopy(v7, cf);
      result = 0;
      a1[15] = Copy;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMRAuthInstallEnablePersonalization(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (!a1 || !theDict)
  {
    return result;
  }

  Value = CFDictionaryGetValue(theDict, @"UpdateBaseband");
  if (CFDictionaryContainsKey(theDict, @"AuthInstallVariant"))
  {
    v12 = 0;
  }

  else
  {
    v12 = CFDictionaryContainsKey(theDict, @"AuthInstallRestoreBehavior") == 0;
  }

  v13 = 1;
  if (!v12 && Value)
  {
    v13 = CFBooleanGetValue(Value) == 0;
  }

  if (v12)
  {
    AMRLog(6, @"Ap personalization disabled.", v6, v7, v8, v9, v10, v11);
    v14 = AMAuthInstallApEnablePersonalization(a1, 0);
  }

  else
  {
    v14 = AMAuthInstallApEnablePersonalization(a1, 1);
    v15 = CFDictionaryGetValue(theDict, @"AuthInstallForceServerSigning");
    if (v15)
    {
      v16 = v15;
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v16) && CFBooleanGetValue(v16) == 1)
      {
        AMAuthInstallApImg4ForceServerSigning(a1);
      }
    }
  }

  if (v14)
  {
    v36 = @"%s: AMAuthInstallApEnablePersonalization failed";
LABEL_38:
    v37 = AMAuthInstallToRestoreError(v14);
    AMRLog(3, v36, v38, v39, v40, v41, v42, v43, "AMRAuthInstallEnablePersonalization");
    return v37;
  }

  v18 = CFDictionaryGetValue(theDict, @"AuthInstallRequestTicketWithoutNonce");
  v21 = v18 && (v19 = v18, v20 = CFGetTypeID(v18), v20 == CFBooleanGetTypeID()) && CFBooleanGetValue(v19) == 1;
  v22 = CFDictionaryGetValue(theDict, @"SkipNoncesForAPSEP");
  v31 = v22 && (v29 = v22, v30 = CFGetTypeID(v22), v30 == CFBooleanGetTypeID()) && CFBooleanGetValue(v29) == 1;
  if (v31 || v21)
  {
    v32 = AMAuthInstallBundleRequestTicketWithoutNonce(a1, 1);
    if (v32)
    {
      v14 = v32;
      v36 = @"%s: AMAuthInstallBundleRequestTicketWithoutNonce failed";
      goto LABEL_38;
    }
  }

  if (v13)
  {
    AMRLog(6, @"Baseband personalization is disabled", v23, v24, v25, v26, v27, v28);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = AMAuthInstallBasebandEnablePersonalization(a1, v33);
  if (v34)
  {
    v14 = v34;
    v36 = @"%s: AMAuthInstallBasebandEnablePersonalization failed";
    goto LABEL_38;
  }

  if (CFDictionaryGetValue(theDict, @"AuthInstallLocalPolicyHactivate") != kCFBooleanTrue)
  {
    return 0;
  }

  result = AMAuthInstallApEnableLocalPolicyHactivation(a1, v35);
  if (result)
  {
    v14 = result;
    v36 = @"%s: AMAuthInstallApEnableLocalPolicyHactivation failed";
    goto LABEL_38;
  }

  return result;
}

uint64_t AMRAuthInstallCopyBuildIdentity(const void *a1, CFDictionaryRef theDict, const __CFString *a3, void *a4)
{
  v4 = 1;
  if (a1 && theDict && a4)
  {
    Value = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
    if (!Value)
    {
      AMRLog(3, @"kAMRestoreOptionsRestoreBundlePath not found in options dictionary", v9, v10, v11, v12, v13, v14);
      return v4;
    }

    v15 = Value;
    v16 = CFGetAllocator(a1);
    v17 = sub_10002CA48(v16, v15);
    if (!v17)
    {
      AMRLog(3, @"failed to create bundleURL from '%@'", v18, v19, v20, v21, v22, v23, v15);
      return 18;
    }

    v24 = v17;
    v25 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v17, a3, a4);
    if (v25)
    {
      v4 = AMAuthInstallToRestoreError(v25);
      v33 = @"AMAuthInstallBundleCopyBuildIdentityForVariant failed";
    }

    else
    {
      if (*a4)
      {
        v4 = 0;
LABEL_9:
        CFRelease(v24);
        return v4;
      }

      v4 = 3014;
      v33 = @"AMAuthInstallBundleCopyBuildIdentityForVariant failed to create buildIdentity";
    }

    AMRLog(3, v33, v26, v27, v28, v29, v30, v31);
    goto LABEL_9;
  }

  return v4;
}

const __CFString *AMRAuthInstallCopyVariant(const void *a1, CFDictionaryRef theDict)
{
  v2 = 0;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"AuthInstallVariant");
    if (Value)
    {
      v2 = Value;
      AMRLog(6, @"requested variant: %@", v6, v7, v8, v9, v10, v11, Value);
LABEL_7:
      CFRetain(v2);
      return v2;
    }

    v12 = CFDictionaryGetValue(theDict, @"AuthInstallRestoreBehavior");
    if (v12)
    {
      v2 = v12;
      AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(a1, 1);
      AMRLog(6, @"requested restore behavior: %@", v13, v14, v15, v16, v17, v18, v2);
      goto LABEL_7;
    }

    v2 = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
    if (v2)
    {
      v26 = CFGetAllocator(a1);
      v27 = sub_10002CA48(v26, v2);
      if (v27)
      {
        v34 = v27;
        v2 = @"Internal Development";
        v35 = sub_10002CA38();
        if (AMRAuthInstallCopyBuildIdentity(v35, v36, @"Internal Development", v37) && (v2 = @"Factory - Software Download", v44 = sub_10002CA38(), AMRAuthInstallCopyBuildIdentity(v44, v45, @"Factory - Software Download", v46)) && (v47 = sub_10002CA38(), v2 = 0, AMRAuthInstallCopyBuildIdentity(v47, v48, 0, v49)))
        {
          AMRLog(3, @"AMRAuthInstallCopyBuildIdentity failed", v38, v39, v40, v41, v42, v43);
          v2 = 0;
        }

        else
        {
          AMRLog(3, @"AMRAuthInstallCopyBuildIdentity failed to create buildIdentity", v38, v39, v40, v41, v42, v43);
        }

        CFRelease(v34);
      }

      else
      {
        AMRLog(3, @"failed to create bundleURL from '%@'", v28, v29, v30, v31, v32, v33, v2);
        return 0;
      }
    }

    else
    {
      AMRLog(3, @"kAMRestoreOptionsRestoreBundlePath not found in options dictionary", v20, v21, v22, v23, v24, v25);
    }
  }

  return v2;
}

const void *AMRAuthInstallCopyRecoveryOSVariant(const void *a1, CFDictionaryRef theDict)
{
  ValueForKeyPathInDict = 0;
  cf = 0;
  if (!a1 || !theDict)
  {
    return ValueForKeyPathInDict;
  }

  Value = CFDictionaryGetValue(theDict, @"AuthInstallVariant");
  if (!Value)
  {
    ValueForKeyPathInDict = CFDictionaryGetValue(theDict, @"AuthInstallRecoveryOSVariant");
    if (!ValueForKeyPathInDict)
    {
      v14 = @"Failed to create recovery OS variant , no recovery variant in options nor restore variant.";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  AMRAuthInstallCopyBuildIdentity(a1, theDict, Value, &cf);
  v20 = CFDictionaryGetValue(theDict, @"AuthInstallRecoveryOSVariant");
  if (v20)
  {
    ValueForKeyPathInDict = v20;
LABEL_5:
    AMRLog(6, @"requested recovery OS variant: %@", v6, v7, v8, v9, v10, v11, ValueForKeyPathInDict);
    goto LABEL_6;
  }

  if (!cf)
  {
    goto LABEL_32;
  }

  v21 = CFGetAllocator(a1);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v21, cf, @"Info.RecoveryVariant");
LABEL_6:
  v12 = CFDictionaryGetValue(theDict, @"MacOSVariantPresent");
  if (v12 && v12 == kCFBooleanTrue)
  {
    v13 = @"MacOS variant present, using MacOS restore path";
LABEL_19:
    AMRLog(6, v13, v6, v7, v8, v9, v10, v11, v22);
    goto LABEL_20;
  }

  if (!Value)
  {
    v22 = "AMRAuthInstallCopyRecoveryOSVariant";
    v13 = @"%s: Couldn't find variant in restoreOptions ,continue to check if recoveryOS variant present.";
    goto LABEL_19;
  }

  if (!cf)
  {
LABEL_32:
    v18 = @"AMRAuthInstallCopyBuildIdentity failed to create buildIdentity.";
    goto LABEL_33;
  }

  v15 = CFGetAllocator(a1);
  v16 = AMAuthInstallSupportGetValueForKeyPathInDict(v15, cf, @"Info.MacOSVariant");
  if (!v16)
  {
LABEL_20:
    if (ValueForKeyPathInDict)
    {
      goto LABEL_21;
    }

    v14 = @"no recovery OS variant found in BuildManifest.plist";
LABEL_10:
    AMRLog(3, v14, v6, v7, v8, v9, v10, v11);
    goto LABEL_23;
  }

  if (!ValueForKeyPathInDict)
  {
    v17 = v16;
    AMRLog(6, @"%s: Found MacOSVariant - setting as recovery variant: %@", v6, v7, v8, v9, v10, v11, "AMRAuthInstallCopyRecoveryOSVariant", v16);
    ValueForKeyPathInDict = v17;
  }

  if (AMAuthInstallSetMacOSVariantIsPresent(a1, 1))
  {
    v18 = @"AMAuthInstallSetMacOSVariantIsPresent failed to set Mac OS variantlibusbrestore/AMRAuthInstall.c is present.";
    goto LABEL_33;
  }

LABEL_21:
  if (!AMAuthInstallSetRecoveryOSVariant(a1, ValueForKeyPathInDict))
  {
    CFRetain(ValueForKeyPathInDict);
    goto LABEL_23;
  }

  v18 = @"AMAuthInstallSetRecoveryOSVariant failed to set  recovery OS variant.";
LABEL_33:
  AMRLog(3, v18, v6, v7, v8, v9, v10, v11);
  ValueForKeyPathInDict = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return ValueForKeyPathInDict;
}

uint64_t AMRAuthInstallCopyFileSystemPathForKeyInBundle(int a1, int a2, uint64_t a3, const __CFBoolean *a4, CFStringRef *a5)
{
  if (!a5)
  {
    return 1;
  }

  v7 = AMRAuthInstallCopyURLForKeyInBundle(a1, a2, a3, a4);
  if (v7)
  {
    v14 = v7;
    AMRLog(3, @"Failed to get URL for key: %@", v8, v9, v10, v11, v12, v13, a3);
  }

  else
  {
    v15 = CFURLCopyFileSystemPath(0, kCFURLPOSIXPathStyle);
    if (v15)
    {
      v14 = 0;
      *a5 = v15;
    }

    else
    {
      AMRLog(3, @"Failed to convert URL to filesytem path", v16, v17, v18, v19, v20, v21);
      return 31;
    }
  }

  return v14;
}

uint64_t AMRAuthInstallConfigureUsingOptions(void *a1, const __CFDictionary *a2, __CFDictionary *a3, char *a4)
{
  cf = 0;
  v7 = sub_100029CB0(a2, a3, 0, &cf);
  if (!v7)
  {
    v8 = AMAuthInstallSetSigningServerURL(a1, cf);
    if (!v8)
    {
      v10 = sub_10002CA60(v8, v9, @"AuthInstallEnableSso");
      v12 = v10;
      if (v10)
      {
        v10 = AMRAuthInstallSsoEnable(a1);
        if (v10)
        {
          goto LABEL_22;
        }
      }

      if (!sub_10002CA60(v10, v11, @"AuthInstallEnableSsoStealthMode") || (v13 = AMAuthInstallSsoSetStealthMode(a1, 1), !v13))
      {
        TypeID = CFStringGetTypeID();
        v15 = sub_10002BE6C(a2, 0, @"AppleConnectUser", TypeID);
        v16 = CFDataGetTypeID();
        v13 = sub_10002BE6C(a2, 0, @"AppleConnectData", v16);
        if (!v13)
        {
LABEL_13:
          v13 = sub_10002CA60(v13, v17, @"SkipNoncesForAPSEP");
          if (!v13 || (v13 = AMAuthInstallBundleRequestTicketWithoutNonce(a1, 1), !v13))
          {
            v19 = sub_10002CA60(v13, v18, @"ImageDecryptionKeysEnableSso");
            sub_10002CA60(v19, v20, @"FDREnableSso");
            v21 = 0;
            goto LABEL_16;
          }

          goto LABEL_21;
        }

        if (v15)
        {
          v13 = AMAuthInstallSsoSetAppleConnectInfo(a1, v15, v13);
          if (v13)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v13 = AMAuthInstallSsoSetToken(a1, v13);
        if (!v13)
        {
LABEL_12:
          v12 = 1;
          goto LABEL_13;
        }
      }

LABEL_21:
      v10 = AMAuthInstallToRestoreError(v13);
LABEL_22:
      v21 = v10;
      goto LABEL_16;
    }

    v7 = AMAuthInstallToRestoreError(v8);
  }

  v21 = v7;
  v12 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v12;
  }

  return v21;
}

void sub_100076FAC(const __CFURL *a1, _BYTE *a2, uint64_t a3, _DWORD *a4)
{
  v8 = AMAuthInstallSupportFileURLExists(a1, a2);
  if (v8)
  {
    v19 = v8;
  }

  else if (*a2)
  {
    v19 = AMAuthInstallSupportRemoveDirectory(a1);
    if (v19)
    {
      v20 = @"failed to remove personalized bundle";
      v21 = 3;
    }

    else
    {
      v20 = @"removed personalized bundle";
      v21 = 8;
    }

    AMRLogWithFilePath(v21, a3, v20, v14, v15, v16, v17, v18);
  }

  else
  {
    AMRLogWithFilePath(7, a3, @"personalized bundle does not exist, skipping removal", v9, v10, v11, v12, v13);
    v19 = 0;
  }

  *a4 = AMAuthInstallToRestoreError(v19);
  CFRelease(a1);
}

void sub_100077288(const void *a1, const __CFDictionary *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = AMRAuthInstallCopyVariant(a1, a2);
  if (v12)
  {
    v19 = v12;
    Value = CFDictionaryGetValue(a2, @"SourceRestoreBundlePath");
    if (Value || (Value = CFDictionaryGetValue(a2, @"RestoreBundlePath")) != 0)
    {
      v27 = Value;
      v28 = CFGetAllocator(a1);
      v29 = sub_10002CA48(v28, v27);
      if (AMAuthInstallBundleFDRSupported(a1, v29, v19, a3))
      {
        AMRLog(4, @"failed to find key FDRSupport in variant", v30, v31, v32, v33, v34, v35);
      }

      CFRelease(v19);
      if (v29)
      {
        CFRelease(v29);
      }
    }

    else
    {
      AMRLog(3, @"failed to get restore bundle path", v21, v22, v23, v24, v25, v26);

      CFRelease(v19);
    }
  }

  else
  {

    AMRLog(3, @"failed to copy variant", v13, v14, v15, v16, v17, v18);
  }
}

uint64_t AMRLazyExtractorAddFile(const __CFDictionary *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  result = CFDictionaryGetValue(a1, @"__ExtractionRoot__");
  if (result)
  {
    result = CFDictionaryGetValue(a1, @"__ArchiveFiles__");
    if (result)
    {
      v11 = result;
      result = sub_10002D684(a2, 0);
      if (result)
      {
        v12 = result;
        valuePtr = a3;
        v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        *keys = off_1000AB390;
        v18 = off_1000AB3A0;
        values[0] = a4;
        values[1] = a5;
        values[2] = v12;
        values[3] = v13;
        v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v11, v12, v14);
        CFRelease(v12);
        if (v13)
        {
          CFRelease(v13);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        return 1;
      }
    }
  }

  return result;
}

void *AMRLazyExtractorOpenArchive(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = qword_1000C9098;
  Value = CFDictionaryGetValue(a1, @"__ArchiveScheme__");
  v4 = sub_10002DB00(v2, Value);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v4;
  v7 = CFDictionaryGetValue(a1, @"__ArchiveArgs__");
  v8 = v6(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_10002DCF8();
  v12 = malloc_type_calloc(v10, 0x20uLL, v11);
  *v12 = CFRetain(a1);
  v12[1] = v9;
  v12[2] = v5;
  *(v12 + 24) = 0;
  return v12;
}

uint64_t AMRLazyArchiveExtractToPath(CFDictionaryRef *a1, const __CFString *a2)
{
  bzero(buffer, 0x400uLL);
  bzero(v17, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(a2, buffer, 1024))
  {
    return 0;
  }

  v4 = AMRLazyArchiveOpenFile(a1, a2, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringGetFileSystemRepresentation(v4[4], v17, 1024) && (v6 = v5[5], (v7 = fopen(buffer, "wb")) != 0))
  {
    v8 = v7;
    v9 = malloc_type_calloc(1uLL, 0x20000uLL, 0x70306B37uLL);
    if (!v9)
    {
LABEL_13:
      AMRLazyFileClose(v5);
      fclose(v8);
      v14 = 0;
      if (!v9)
      {
        return v14;
      }

      goto LABEL_17;
    }

    v10 = v6;
    while (v10)
    {
      if (v10 >= 0x20000)
      {
        v11 = 0x20000;
      }

      else
      {
        v11 = v10;
      }

      v12 = sub_1000092F0();
      if (AMRLazyFileRead(v12, v13, v11))
      {
        v10 -= v11;
        if (fwrite(v9, 1uLL, v11, v8) == v11)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    fclose(v8);
    Value = CFDictionaryGetValue(*a1, @"__ArchiveFiles__");
    CFDictionaryRemoveValue(Value, v5[4]);
    v14 = AMRLazyExtractorAddFileFromPathRange(*a1, v17, buffer, v6, 0);
  }

  else
  {
    v14 = 0;
    v9 = 0;
  }

  AMRLazyFileClose(v5);
  if (v9)
  {
LABEL_17:
    free(v9);
  }

  return v14;
}

void *AMRLazyArchiveOpenFile(uint64_t a1, const __CFString *a2, char a3)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v5 = sub_100077A80(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = qword_1000C90A0;
  Value = CFDictionaryGetValue(v5, @"__FileScheme__");
  v9 = sub_10002DB00(v7, Value);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if ((a3 & 1) != 0 && !v9[3])
  {
    v23 = sub_1000092F0();
    if (!AMRLazyArchiveExtractToPath(v23, v24))
    {
      return 0;
    }

    v25 = sub_1000092F0();
    v27 = sub_100077A80(v25, v26);
    if (!v27)
    {
      return 0;
    }

    v6 = v27;
    v28 = qword_1000C90A0;
    v29 = CFDictionaryGetValue(v27, @"__FileScheme__");
    v30 = sub_10002DB00(v28, v29);
    if (!v30)
    {
      return 0;
    }

    v10 = v30;
    if (!v30[3])
    {
      return 0;
    }
  }

  v11 = *v10;
  v12 = *(a1 + 8);
  v13 = CFDictionaryGetValue(v6, @"__FileArgs__");
  v14 = v11(v12, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_10002DCF8();
  v18 = malloc_type_calloc(v16, 0x40uLL, v17);
  v19 = *(a1 + 8);
  *v18 = a1;
  v18[1] = v19;
  v18[2] = v15;
  v18[3] = v10;
  v20 = CFDictionaryGetValue(v6, @"__FileSubPath__");
  v18[4] = CFRetain(v20);
  valuePtr = 0;
  v21 = CFDictionaryGetValue(v6, @"__FileSize__");
  CFNumberGetValue(v21, kCFNumberSInt64Type, &valuePtr);
  v18[5] = valuePtr;
  v18[6] = 0;
  *(v18 + 56) = 0;
  *(a1 + 24) = 1;
  return v18;
}

uint64_t AMRLazyExtractorAddFileFromPathRange(const __CFDictionary *a1, const char *a2, const char *a3, uint64_t a4, unint64_t a5)
{
  pthread_once(&stru_1000C8558, sub_10002DAE4);
  bzero(&v17, 0x90uLL);
  if (stat(a3, &v17))
  {
    return 0;
  }

  if (v17.st_size < a5 || a5 + a4 > v17.st_size)
  {
    return 0;
  }

  v11 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, a3);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  valuePtr = a5;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  *keys = off_1000AB3B0;
  values[0] = v12;
  values[1] = v13;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = AMRLazyExtractorAddFile(a1, a2, a4, @"__DiskFileScheme__", v14);
  CFRelease(v12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

const void *sub_100077A80(CFDictionaryRef *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(*a1, @"__ExtractionRoot__");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(*a1, @"__ArchiveFiles__");
  if (v6)
  {
    Length = CFStringGetLength(v5);
    bzero(buffer, 0x400uLL);
    if (!CFStringGetFileSystemRepresentation(a2, buffer, 1024))
    {
      return 0;
    }

    v8 = sub_10002D684(buffer, 0);
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    if (CFStringHasPrefix(v8, v5))
    {
      v17.length = CFStringGetLength(v9) - Length;
      v17.location = Length;
      PathComponent = CFStringCreateWithSubstring(kCFAllocatorDefault, v9, v17);
    }

    else
    {
      v11 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v9, kCFURLPOSIXPathStyle, 0);
      if (!v11)
      {
        CFRelease(v9);
        return 0;
      }

      PathComponent = CFURLCopyLastPathComponent(v11);
    }

    v12 = PathComponent;
    CFRelease(v9);
    if (v12)
    {
      v13 = sub_1000092F0();
      v6 = CFDictionaryGetValue(v13, v14);
      CFRelease(v12);
      return v6;
    }

    return 0;
  }

  return v6;
}

void *AMRLazyArchiveOpenFromOptions(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"__Extractor__");

  return AMRLazyExtractorOpenArchive(Value);
}

uint64_t taDFU_Library_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, void *a3, NSObject *a4)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (!*a3 || !a3[1])
  {
    return 4294967274;
  }

  if (qword_1000C90F0 != -1)
  {
    dispatch_once(&qword_1000C90F0, &stru_1000AB8C0);
  }

  v8 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  *v8 = *a3;
  CFDictionarySetValue(qword_1000C90E0, (a2 | (a1 << 16)), v8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_1000493A4;
  v14[3] = &unk_1000AB900;
  v14[4] = a4;
  if (qword_1000C90F8 != -1)
  {
    dispatch_once(&qword_1000C90F8, v14);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *"";
  block[2] = sub_1000488EC;
  block[3] = &unk_1000AB860;
  v12 = a1;
  v13 = a2;
  block[4] = v9;
  dispatch_async(a4, block);
  return 0;
}

uint64_t iokitUtils_startDiscovery(const void *a1, void (__cdecl *a2)(void *, io_iterator_t), void *a3, void (__cdecl *a4)(void *, io_iterator_t), void *a5, uint64_t a6)
{
  result = 4294967274;
  if (a1 && a2 && a3 && a4 && a5 && a6)
  {
    sub_100049EF0(a6);
    v12 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v12)
    {
      v13 = v12;
      *(v12 + 1) = qword_1000C9110;
      qword_1000C9110 = v12;
      v14 = qword_1000C9118;
      v15 = CFRetain(a1);
      IOServiceAddMatchingNotification(v14, "IOServiceFirstMatch", v15, a2, a3, v13);
      v16 = qword_1000C9118;
      v17 = CFRetain(a1);
      IOServiceAddMatchingNotification(v16, "IOServiceTerminate", v17, a4, a5, v13 + 1);
      block[0] = _NSConcreteStackBlock;
      block[1] = *"";
      block[2] = sub_100049F78;
      block[3] = &unk_1000AB920;
      block[4] = a2;
      block[5] = a3;
      block[6] = v13;
      block[7] = a4;
      block[8] = a5;
      dispatch_async(qword_1000C9120, block);
      return 0;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t iokitUtils_setDeviceForService(io_registry_entry_t entry, const void *a2)
{
  result = 4294967274;
  if (entry && a2)
  {
    if (qword_1000C9100 || (qword_1000C9100 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0)) != 0)
    {
      entryID = 0;
      if (IORegistryEntryGetRegistryEntryID(entry, &entryID))
      {
        return 4294967274;
      }

      else
      {
        CFDictionarySetValue(qword_1000C9100, entryID, a2);
        return 0;
      }
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

const void *iokitUtils_popDeviceForService(io_registry_entry_t a1)
{
  if (!a1)
  {
    return 0;
  }

  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(a1, &entryID) || !qword_1000C9100)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(qword_1000C9100, entryID);
  CFDictionaryRemoveValue(qword_1000C9100, entryID);
  return Value;
}

uint64_t serialize_pcr(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 < 0xCu)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(a1 + 6);
  v6 = *(a1 + 4);
  v7 = *(a1 + 2);
  LOBYTE(a1) = *a1;
  *a2 = v7;
  *(a2 + 2) = -96;
  *(a2 + 3) = a1;
  *(a2 + 4) = 0;
  *(a2 + 5) = v6;
  *(a2 + 6) = (v6 | (v5 << 10)) >> 8;
  *(a2 + 7) = v5 >> 6;
  *(a2 + 8) = 0;
  *a3 = 12;
  return result;
}

uint64_t serialize_pcw(char *a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 3);
  if (4 * v3 + 12 > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 2);
  v7 = *a1;
  *a2 = *(a1 + 1);
  *(a2 + 2) = -96;
  *(a2 + 3) = v7;
  *(a2 + 4) = 1;
  *(a2 + 5) = v6;
  *(a2 + 6) = (v6 | (v3 << 10)) >> 8;
  *(a2 + 7) = v3 >> 6;
  *(a2 + 8) = __PAIR16__((4 * v3) >> 24, 4 * v3);
  *(a2 + 10) = v3 >> 14;
  *(a2 + 11) = 0;
  memcpy((a2 + 12), *(a1 + 1), 4 * *(a1 + 3));
  result = 0;
  *a3 = 4 * *(a1 + 3) + 12;
  return result;
}

uint64_t serialize_paw(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((*(a1 + 16) + 24) > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10004A0A4(a1, a2);
  sub_10004A088(v5, v6);
  *(v7 + 8) = v8;
  *(v7 + 9) = v9;
  *(v7 + 10) = v10;
  *(v7 + 11) = v11;
  *(v7 + 12) = *(v12 + 8);
  *(v7 + 14) = BYTE2(*(v12 + 8));
  *(v7 + 15) = BYTE3(*(v12 + 8));
  *(v7 + 16) = WORD2(*(v12 + 8));
  *(v7 + 18) = *(v12 + 14);
  *(v7 + 19) = *(v12 + 15);
  *(v7 + 20) = *(v12 + 16);
  *(v7 + 22) = *(v12 + 18);
  *(v7 + 23) = *(v12 + 19);
  memcpy((v7 + 24), *(v12 + 24), *(v12 + 16));
  result = 0;
  *a3 = *(a1 + 16) + 24;
  return result;
}

uint64_t usbDFU_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  if (!a3 || !*a3)
  {
    return 4294967274;
  }

  result = 4294967274;
  if (a4 && a3[1])
  {
    if (sub_10004A384(a1, a2))
    {
      sub_10004A31C();
      started = iokitUtils_startDiscovery(v8, v9, v10, sub_10004A8FC, v11, a4);
      CFRelease(v4);
      return started;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t usbDFU_downloadBlock(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294967287;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return 4294967287;
  }

  if (a3)
  {
    if (!a4)
    {
      return 4294967287;
    }

    v5 = *(v4 + 32);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 5);
    }

    if (v5 < a3)
    {
      return 4294967287;
    }
  }

  sub_10004A364();
  v6 = sub_10004A338();
  result = v7(v6);
  if (!result)
  {
    *(v4 + 40) = 0;
  }

  return result;
}

void usbDFU_release(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        (*(*v3 + 24))(v3);
        *(v2 + 8) = 0;
      }

      if (*v2)
      {
        IOObjectRelease(*v2);
        *v2 = 0;
      }

      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      free(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

char *usbDFU_copyStringDescriptor(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 1664;
  v11[2] = a2 | 0x300;
  v12 = 132105;
  v13 = v11;
  v14 = 0;
  sub_10004A34C();
  v3 = 0;
  if (v2())
  {
    return v3;
  }

  v4 = LOBYTE(v11[0]);
  if (!LOBYTE(v11[0]))
  {
    return v3;
  }

  bzero(v15, 0x100uLL);
  HIWORD(v12) = v4;
  v13 = v15;
  sub_10004A34C();
  if (v5())
  {
    return 0;
  }

  v6 = (LOBYTE(v11[0]) - 2) >> 1;
  v7 = CFStringCreateWithCharacters(0, v16, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v6, 0x8000100u);
  v3 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v3)
  {
    CFStringGetCString(v8, v3, MaximumSizeForEncoding, 0x8000100u);
  }

  CFRelease(v8);
  return v3;
}

uint64_t usbDFU_appendSuffix(uint64_t a1, FILE *a2)
{
  memset(v17, 0, sizeof(v17));
  v2 = 4294967287;
  if (!a1)
  {
    return v2;
  }

  if (!a2)
  {
    return v2;
  }

  v4 = fileno(a2);
  if (v4 == -1)
  {
    return v2;
  }

  v5 = v4;
  bzero(&v16, 0x90uLL);
  v14 = 0;
  v15 = 0;
  lseek(v5, -16, 2);
  if (read(v5, &v14, 0x10uLL) != 16)
  {
    goto LABEL_24;
  }

  v6 = v15 - 68;
  if (v6 <= 0x11 && ((1 << v6) & 0x20005) != 0 || BYTE3(v15) == 16)
  {
    v2 = 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    return v2;
  }

  if (lseek(v5, 0, 0) == -1 || fstat(v5, &v16) < 0)
  {
    goto LABEL_24;
  }

  if (!v16.st_size)
  {
    v7 = -1;
LABEL_21:
    LOWORD(v14) = -1;
    HIDWORD(v12) = *(a1 + 36);
    LODWORD(v12) = HIDWORD(v12);
    *(&v14 + 2) = v12 >> 16;
    HIWORD(v14) = 256;
    LODWORD(v15) = 272909909;
    HIDWORD(v15) = v7;
    if (write(v5, &v14, 0x10uLL) == -1)
    {
      v2 = 4294967287;
    }

    else
    {
      v2 = 0;
    }

LABEL_24:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    return v2;
  }

  v7 = -1;
  while (1)
  {
    v8 = read(v5, v17, 0x40uLL);
    if (v8)
    {
      break;
    }

LABEL_18:
    v16.st_size -= v8;
    if (!v16.st_size)
    {
      goto LABEL_21;
    }
  }

  if (v8 != -1)
  {
    v9 = v17;
    v10 = v8;
    do
    {
      v11 = *v9++;
      v7 = dword_100086858[(v11 ^ v7)] ^ (v7 >> 8);
      --v10;
    }

    while (v10);
    goto LABEL_18;
  }

  v2 = 4294967287;
  if (v5 < 0)
  {
    return v2;
  }

LABEL_25:
  close(v5);
  return v2;
}

uint64_t usbDFU_getStatus(uint64_t a1, uint64_t a2)
{
  result = 4294967287;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v22 = 0;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, &__tp);
        tv_nsec = __tp.tv_nsec;
        v7 = *(v5 + 56);
        if (__tp.tv_nsec < v7)
        {
          tv_nsec = __tp.tv_nsec + 1000000000;
        }

        v8 = (tv_nsec - v7) / 1000000 + 1000 * (__tp.tv_sec - *(v5 + 48) - (__tp.tv_nsec < v7));
        v9 = *(v5 + 40);
        if (v8 < v9)
        {
          usleep(1000 * (v9 - v8));
        }

        v18 = 929;
        v19 = *(*(v5 + 24) + 3);
        v20 = 8;
        v21 = &v12;
        if (*(a1 + 40))
        {
          sub_10004A34C();
          result = v10();
          if (!result)
          {
            v11 = v13 | (v14 << 16);
            *a2 = v12;
            *(a2 + 4) = v11;
            *(a2 + 8) = v15;
            *(a2 + 12) = v16;
            *(v5 + 40) = v11;
            clock_gettime(_CLOCK_REALTIME, (v5 + 48));
            return 0;
          }
        }

        else
        {
          return 4294967287;
        }
      }
    }
  }

  return result;
}

uint64_t usbDFU_clearStatus(uint64_t a1)
{
  if (!a1)
  {
    return 4294967287;
  }

  if (!*(a1 + 40))
  {
    return 4294967287;
  }

  v5 = 0;
  v6 = 0;
  result = usbDFU_getStatus(a1, &v5);
  if (result || !v5 || v6 == 2)
  {
    return result;
  }

  sub_10004A364();
  if (!*(a1 + 40))
  {
    return 4294967287;
  }

  sub_10004A34C();
  result = v3();
  if (!result)
  {
    result = usbDFU_getStatus(a1, &v5);
    if (!result)
    {
      if (v6 == 2 && v5 == 0)
      {
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }
  }

  return result;
}

uint64_t debug_usb_init_for_service(io_service_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0xB0uLL, 0x10A004051715284uLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *v2 = a1;
  bzero(v2 + 2, 0xA1uLL);
  v93 = 0;
  theInterface = 0;
  theScore[0] = 0;
  v4 = sub_10004A370();
  v5 = CFUUIDGetConstantUUIDWithBytes(v4, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], 0x61u);
  v13 = sub_10004A9E8(v5, v6, v7, v8, v9, v10, v11, v12, byte7b, byte7_4, byte15b, v81, v83);
  if (IOCreatePlugInInterfaceForService(a1, v5, v13, &theInterface, theScore))
  {
    goto LABEL_43;
  }

  v14 = theInterface;
  if (!theInterface)
  {
    goto LABEL_43;
  }

  QueryInterface = (*theInterface)->QueryInterface;
  v16 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x56u, 0xADu, 8u, 0x9Du, 0x87u, 0x8Du, 0x4Bu, 0xEAu, 0xA1u, 0xF5u, 0x2Cu, 0x8Du, 0xC4u, 0x3Eu, 0x8Au, 0x98u);
  v17 = CFUUIDGetUUIDBytes(v16);
  v18 = (QueryInterface)(v14, *&v17.byte0, *&v17.byte8, &v93);
  IODestroyPlugInInterface(theInterface);
  if (v18)
  {
    goto LABEL_43;
  }

  v19 = v93;
  if (!v93)
  {
    goto LABEL_43;
  }

  *(v3 + 8) = v93;
  BYTE4(v92) = 0;
  if ((*(*v19 + 176))(v19, &v92 + 4))
  {
    goto LABEL_43;
  }

  if (BYTE4(v92) != 1)
  {
    v21 = 0;
    __rqtp.tv_sec = 0;
    __rqtp.tv_nsec = 0;
    *&v20 = 67109120;
    *v85 = v20;
    v87 = xmmword_100086C70;
    while (1)
    {
      v22 = sub_10004AA70();
      v24 = (*(v23 + 64))(v22);
      if (v24 != -536870203)
      {
        break;
      }

      v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        v96 = v85[0];
        v97 = v21;
        sub_10004AA34();
      }

      sub_10004AA94(v25, v26, v27, v28, v29, v30, v31, v32, byte7a, byte15, v85[0], v85[1], v87, v89, v90, *theScore, v92, v93, theInterface, __rqtp);
      if (++v21 == 5)
      {
        goto LABEL_43;
      }
    }

    if (v24)
    {
      goto LABEL_43;
    }

    v33 = sub_10004AA70();
    v35 = (*(v34 + 184))(v33, 1);
    v36 = sub_10004AA70();
    (*(v37 + 72))(v36);
    if (v35)
    {
      goto LABEL_43;
    }
  }

  *theScore = -1;
  HIDWORD(v90) = 0;
  v38 = sub_10004AA70();
  if ((*(v39 + 224))(v38, theScore, &v90 + 4))
  {
LABEL_43:
    debug_usb_free(v3);
    return 0;
  }

  if (!HIDWORD(v90))
  {
    return v3;
  }

  v40 = IOIteratorNext(HIDWORD(v90));
  if (!v40)
  {
    IOObjectRelease(HIDWORD(v90));
    goto LABEL_43;
  }

  v42 = v40;
  v43 = 0;
  v44 = 0;
  *&v41 = 67109120;
  *v86 = v41;
  v88 = xmmword_100086C70;
  do
  {
    if (v44)
    {
      v44 = 1;
      goto LABEL_38;
    }

    v93 = 0;
    theInterface = 0;
    HIDWORD(v92) = 0;
    v45 = sub_10004A370();
    v46 = CFUUIDGetConstantUUIDWithBytes(v45, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, byte7a, BYTE1(byte7a), BYTE2(byte7a), BYTE3(byte7a), BYTE4(byte7a), BYTE5(byte7a), BYTE6(byte7a), HIBYTE(byte7a), 0x61u);
    v54 = sub_10004A9E8(v46, v47, v48, v49, v50, v51, v52, v53, byte7c, byte7_4a, byte15c, v82, v84);
    v55 = IOCreatePlugInInterfaceForService(v42, v46, v54, &theInterface, &v92 + 1);
    if (v55)
    {
      v43 = v55;
LABEL_36:
      sub_10004A9AC(v3);
      goto LABEL_37;
    }

    v56 = theInterface;
    v43 = -536870212;
    if (!theInterface)
    {
      goto LABEL_36;
    }

    v57 = (*theInterface)->QueryInterface;
    v58 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au);
    v59 = CFUUIDGetUUIDBytes(v58);
    v43 = (v57)(v56, *&v59.byte0, *&v59.byte8, &v93);
    IODestroyPlugInInterface(theInterface);
    if (v43)
    {
      goto LABEL_36;
    }

    v43 = -536870212;
    if (!v93)
    {
      goto LABEL_36;
    }

    v60 = 0;
    *(v3 + 16) = v93;
    __rqtp.tv_sec = 0;
    __rqtp.tv_nsec = 0;
    while (1)
    {
      v61 = (*(**(v3 + 16) + 64))(*(v3 + 16));
      v43 = v61;
      if (v61 != -536870203)
      {
        break;
      }

      v62 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v62)
      {
        v96 = v86[0];
        v97 = v60;
        sub_10004AA34();
      }

      sub_10004AA94(v62, v63, v64, v65, v66, v67, v68, v69, byte7a, byte15a, v86[0], v86[1], v88, v89, v90, *theScore, v92, v93, theInterface, __rqtp);
      if (++v60 == 5)
      {
        goto LABEL_36;
      }
    }

    if (v61)
    {
      goto LABEL_36;
    }

    *(v3 + 168) = 1;
LABEL_37:
    v44 = v43 == 0;
LABEL_38:
    IOObjectRelease(v42);
    v42 = IOIteratorNext(HIDWORD(v90));
  }

  while (v42);
  IOObjectRelease(HIDWORD(v90));
  if (!v44 || v43)
  {
    goto LABEL_43;
  }

  return v3;
}

void debug_usb_free(void *a1)
{
  if (a1)
  {
    for (i = 3; i != 21; ++i)
    {
      v3 = a1[i];
      if (v3)
      {
        free(v3);
        a1[i] = 0;
      }
    }

    sub_10004A9AC(a1);
    v4 = a1[1];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    free(a1);
  }
}

uint64_t debug_usb_set_endpoint_for_portal(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 3758097084;
  if (a3 > 0x12)
  {
    return 3758097090;
  }

  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v7 = (*(**(a1 + 16) + 152))(*(a1 + 16), &v19 + 1);
  if (v7)
  {
    return v7;
  }

  v8 = malloc_type_malloc(6uLL, 0x1000040274DC3F3uLL);
  if (!v8)
  {
    return 3758097085;
  }

  v9 = v8;
  if (HIBYTE(v19))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = sub_10004AA88();
      v15 = (*(v14 + 208))(v13, v10, &v19, &v18 + 1, &v18, &v20, &v17);
      if (v15)
      {
        v3 = v15;
        goto LABEL_17;
      }

      if (HIBYTE(v18) == a2)
      {
        if (v19 == 1)
        {
          v9[5] = v10;
          *(v9 + 1) = v20;
          v12 = 1;
        }

        else if (!v19)
        {
          v9[4] = v10;
          *v9 = v20;
          v11 = 1;
        }
      }

      ++v10;
    }

    while (HIBYTE(v19) > v10);
    if ((v12 & v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    v3 = 0;
    *(a1 + 8 * a3 + 24) = v9;
  }

  else
  {
LABEL_17:
    free(v9);
  }

  return v3;
}

uint64_t debug_usb_read(uint64_t a1)
{
  result = sub_10004AA5C();
  if (!(!v7 & v6))
  {
    v8 = *(a1 + 8 * (v3 & 0x1F) + 24);
    if (v8)
    {
      v9 = v5;
      v10 = v4;
      v11 = sub_10004AA88();
      result = (*(v12 + 248))(v11, *(v8 + 5));
      if (result == -536850432)
      {
        v13 = sub_10004AA88();
        (*(v14 + 240))(v13, *(v8 + 5));
        v15 = sub_10004AA88();
        v17 = *(v16 + 248);
        v18 = *(v8 + 5);

        return v17(v15, v18, v10, v9);
      }
    }
  }

  return result;
}

uint64_t debug_usb_write(uint64_t a1)
{
  result = sub_10004AA5C();
  if (!(!v7 & v6))
  {
    v8 = *(a1 + 8 * (v3 & 0x1F) + 24);
    if (v8)
    {
      v9 = v5;
      v10 = v4;
      v11 = sub_10004AA7C();
      result = (*(v12 + 256))(v11, *(v8 + 4));
      if (result == -536850432)
      {
        v13 = sub_10004AA7C();
        (*(v14 + 240))(v13, *(v8 + 4));
        v15 = sub_10004AA7C();
        result = (*(v16 + 256))(v15, *(v8 + 4), v10, v9);
      }

      if (!result)
      {
        if (v9 % *v8)
        {
          return 0;
        }

        else
        {
          v17 = sub_10004AA7C();
          v19 = *(v18 + 256);
          v20 = *(v8 + 4);

          return v19(v17, v20, v10, 0);
        }
      }
    }
  }

  return result;
}

uint64_t taDFU_deviceinterfaced_startDeviceDiscoveryForVIDPID(int a1, int a2, uint64_t a3, NSObject *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B730();
    _os_log_impl(v8, v9, v10, v11, v12, 0x2Cu);
  }

  result = 4294967274;
  if (a3)
  {
    if (a4)
    {
      sub_10004AB0C();
      result = 4294967274;
      if (qword_1000C9138)
      {
        if (qword_1000C9140)
        {
          v14 = sub_10004ABE8(a1, a2);
          return taDFU_deviceinterfaced_startDeviceDiscoveryGeneric(qword_1000C9138, qword_1000C9140, v14, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t taDFU_deviceinterfaced_startDeviceDiscoveryGeneric(__CFDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, NSObject *a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    *buf = 136316418;
    if (a2)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
    v22 = 2080;
    if (a4)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v23 = v10;
    if (a5)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v24 = 2080;
    v25 = v11;
    v26 = 2048;
    v27 = a3;
    v28 = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s callbacksMap %s unclaimedDevicesMap %s deviceKey %lu callbacks %s queue %s", buf, 0x3Eu);
  }

  result = 4294967274;
  if (a4 && a1 && a2 && a5 && *a4 && *(a4 + 8))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s callbacks->discoveryCallback and callbacks->terminationCallback provided", buf, 0xCu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_1000C9128)
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *buf = 136315394;
      v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
      v22 = 2080;
      v23 = v16;
      sub_10004B7D4(&_mh_execute_header, &_os_log_default, v15, "%s globalDeviceDiscoveryClient %s", buf);
    }

    if (qword_1000C9128)
    {
      v17 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
      if (v17)
      {
        v18 = v17;
        *v17 = *a4;
        CFDictionarySetValue(a1, a3, v17);
        block[0] = _NSConcreteStackBlock;
        block[1] = *"";
        block[2] = sub_10004ACC0;
        block[3] = &unk_1000AB980;
        block[4] = a2;
        block[5] = a3;
        block[6] = v18;
        dispatch_async(a5, block);
        return 0;
      }

      else
      {
        return 4294967284;
      }
    }

    else
    {
      return 4294967274;
    }
  }

  return result;
}

char *cfstring_to_c_string(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B6F4();
    sub_10004B730();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding == -2)
  {
    return 0;
  }

  v9 = MaximumSizeForEncoding + 2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B730();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
  }

  v15 = malloc_type_malloc(v9, 0x446D057EuLL);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B6F4();
    sub_10004B730();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
  }

  if (v15)
  {
    CString = CFStringGetCString(a1, v15, v9, 0x8000100u);
    v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (CString)
    {
      if (v22)
      {
        sub_10004B704();
        sub_10004B730();
        _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B704();
        sub_10004B730();
        _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      }

      return v15;
    }

    if (v22)
    {
      sub_10004B704();
      sub_10004B730();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    }

    free(v15);
    return 0;
  }

  return v15;
}

uint64_t taDFU_AppleKIS_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  if (!a3 || !*a3 || !a3[1])
  {
    return 4294967274;
  }

  v5 = sub_10004DA20(a1, a2);
  if (!v5)
  {
    return 4294967284;
  }

  v6 = v5;
  sub_10004D9D8();
  started = iokitUtils_startDiscovery(v7, v8, v9, sub_10004DE90, v10, a4);
  CFRelease(v6);
  return started;
}

uint64_t libDFU_startDeviceDiscoveryForVIDPID(int a1, int a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109376;
    v15[1] = a1;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting Device Discovery for DFU devices with VID 0x%x PID 0x%x", v15, 0xEu);
  }

  if (!a3 || !*a3 || !a3[1])
  {
    return 4294967287;
  }

  libDFU_setDispatchQueueForDiscovery(0);
  v6 = sub_10004E414();
  result = usbDFU_startDeviceDiscoveryForVIDPID(v6, v7, v8, v9);
  if (!result)
  {
    v11 = sub_10004E414();
    return taDFU_startDeviceDiscoveryForVIDPID(v11, v12, v13, v14);
  }

  return result;
}

void libDFU_release(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        v3(a1);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      free(v4);
      a1[1] = 0;
    }

    v5 = a1[2];
    if (v5)
    {
      free(v5);
      a1[2] = 0;
    }

    v6 = a1[3];
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }
}

uint64_t stmDFU_parseConfiguration(uint64_t a1)
{
  if (!a1)
  {
    return 4294967277;
  }

  v1 = a1;
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 4294967277;
  }

  *a1 = 2;
  *(a1 + 48) = off_1000ABA68;
  v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *(v2 + 72) = v3;
  if (!v3)
  {
    return 4294967277;
  }

  *v3 = 0;
  v4 = *(v2 + 16);
  v5 = &v4[*v4];
  v6 = *(v4 + 1);
  v7 = &v4[v6];
  if (v5 < &v4[v6])
  {
    v22 = &v4[v6];
    v23 = v1;
    do
    {
      if (v5[1] == 4)
      {
        if (v5[5] != 254 || v5[6] != 1 || v5[7] != 2)
        {
          return 4294967277;
        }

        v25 = usbDFU_copyStringDescriptor(v1, v5[8]);
        if (v25)
        {
          v24 = v5;
          v31 = 0;
          v8 = *(v1 + 40);
          if (v8)
          {
            v26 = *(v8 + 72);
            if (v26)
            {
              if (*v25 == 64)
              {
                v30 = 0;
                v29 = 0;
                v28 = 0;
                v27 = 0;
                if (sscanf(v25, "@%[^/]%n", __s1, &v27) == 1)
                {
                  v9 = &v25[v27];
LABEL_16:
                  if (sscanf(v9, "/0x%lx%n", &v31, &v27) == 1)
                  {
                    v10 = malloc_type_malloc(0x30uLL, 0x10B00404BB0F7C9uLL);
                    if (v10)
                    {
                      v11 = v10;
                      v12 = strdup(__s1);
                      *v11 = v12;
                      if (v12)
                      {
                        v11[3] = 0;
                        v11[1] = v31;
                        *(v11 + 4) = 0;
                        v13 = *v26;
                        v11[4] = (v11 + 3);
                        v11[5] = v13;
                        *v26 = v11;
                        v9 += v27;
                        while (1)
                        {
                          v14 = malloc_type_malloc(0x20uLL, 0x10200401537AB1CuLL);
                          if (!v14)
                          {
                            goto LABEL_29;
                          }

                          v15 = v14;
                          v14[3] = 0;
                          *v11[4] = v14;
                          v11[4] = (v14 + 3);
                          if (sscanf(v9, "%c%u*%u%c%c%n", &v28, &v30 + 4, &v30, &v29 + 1, &v29, &v27) != 5)
                          {
                            goto LABEL_29;
                          }

                          v16 = v30;
                          if (HIBYTE(v29) == 75)
                          {
                            goto LABEL_25;
                          }

                          if (HIBYTE(v29) == 77)
                          {
                            break;
                          }

LABEL_26:
                          v17 = v31;
                          *v15 = v31;
                          v18 = HIDWORD(v30);
                          *(v15 + 4) = WORD2(v30);
                          v19 = v29 & 0xF;
                          *(v15 + 3) = v16;
                          *(v15 + 4) = v19;
                          v20 = (v18 * v16);
                          v31 = &v17[v20];
                          *(v11 + 4) += v20;
                          v9 += v27;
                          if (*v9 != 44)
                          {
                            goto LABEL_16;
                          }
                        }

                        v16 = v30 << 10;
LABEL_25:
                        v16 <<= 10;
                        LODWORD(v30) = v16;
                        goto LABEL_26;
                      }

                      free(v11);
                    }
                  }
                }
              }
            }
          }

LABEL_29:
          free(v25);
          v1 = v23;
          v5 = v24;
          v7 = v22;
        }
      }

      v5 += *v5;
    }

    while (v5 < v7);
  }

  return 0;
}

void releaseMemoryRegions(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 72);
      if (v2)
      {
        v3 = *v2;
        if (*v2)
        {
          do
          {
            v5 = v3 + 24;
            v4 = *(v3 + 24);
            v6 = *(v3 + 40);
            if (v4)
            {
              do
              {
                free(v4);
                v4 = *(*v5 + 24);
                *v5 = v4;
              }

              while (v4);
              *(v3 + 32) = v5;
            }

            free(*v3);
            free(v3);
            v3 = v6;
          }

          while (v6);
        }
      }
    }
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}