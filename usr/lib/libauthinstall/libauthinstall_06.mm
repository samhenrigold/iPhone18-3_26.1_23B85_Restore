CFMutableDictionaryRef AMAuthInstallApMeasureBinary(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  Digest = AMAuthInstallApCreateDigest(a1, a2, a3, a4);
  if (!Digest)
  {
    return 0;
  }

  v5 = Digest;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v7 = OUTLINED_FUNCTION_7_0();
    CFDictionarySetValue(v7, v8, v9);
  }

  else
  {
    AMSupportCreateErrorInternal();
  }

  CFRelease(v5);
  return Mutable;
}

uint64_t AMAuthInstallApCreatePersonalizedResponse(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = CFDictionaryContainsKey(theDict, @"Ap,LocalPolicy");
  v7 = 0;
  v29 = 0;
  v27 = 0;
  value = 0;
  v8 = 1;
  if (a1 && theDict && a3)
  {
    v9 = v6;
    if (AMAuthInstallApSupportsLocalSigning(a1, &v29 + 1))
    {
      goto LABEL_31;
    }

    v10 = AMAuthInstallApSupportsGlobalSigning(a1, &v29);
    if (v10 != 13)
    {
      v8 = v10;
      if (v10)
      {
        goto LABEL_31;
      }
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(v11 + 94) != 0;
      if (HIBYTE(v29) && *(v11 + 94))
      {
        AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Forcing server signing\n");
        LOBYTE(v12) = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    if (HIBYTE(v29) && !v12)
    {
      if (!*(a1 + 505))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (!v9 || !*(a1 + 505))
    {
      if (v29 != 0 && !v12)
      {
        v19 = CFRetain(*(a1 + 40));
        value = v19;
        if (v19)
        {
          v20 = v19;
          v21 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v7 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, *(a1 + 88), v20);
            *a3 = CFRetain(v7);
            AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Using global signing");
            v8 = 0;
            goto LABEL_32;
          }

          goto LABEL_37;
        }

        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "global ticketData is NULL");
LABEL_36:
        v7 = 0;
        goto LABEL_37;
      }

      v23 = CFGetAllocator(a1);
      v24 = AMAuthInstallApRemoveInfoDict(v23, theDict, &v27);
      if (v24)
      {
        v8 = v24;
        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "could not remove info dicts from request");
      }

      else
      {
        v8 = AMAuthInstallRequestSendSync(a1, v27, a3);
        if (v8)
        {
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v8);
          AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "server request error: %@", LocalizedStatusString);
        }
      }

LABEL_31:
      v7 = 0;
      goto LABEL_32;
    }

    v11 = *(a1 + 16);
LABEL_19:
    *(v11 + 84) = 1;
    *(v11 + 128) = 384;
LABEL_20:
    v13 = OUTLINED_FUNCTION_3_0();
    SignedManifest = AMAuthInstallApImg4LocalCreateSignedManifest(v13, v14, 0, 0, 0, v15);
    if (!SignedManifest)
    {
      if (value)
      {
        v17 = CFGetAllocator(a1);
        v18 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v7 = v18;
        if (v18)
        {
          CFDictionaryAddValue(v18, *(a1 + 88), value);
          v8 = 0;
          *a3 = CFRetain(v7);
          goto LABEL_32;
        }

LABEL_37:
        v8 = 2;
        goto LABEL_32;
      }

      AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "ticketData is NULL");
      goto LABEL_36;
    }

    v8 = SignedManifest;
    AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "failed to create a %s Img4 ticket");
    goto LABEL_31;
  }

LABEL_32:
  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(v27);
  return v8;
}

uint64_t AMAuthInstallApGetImageType(const __CFAllocator *a1, CFDataRef a2)
{
  theData = 0;
  if (!a2 || (v2 = a1, DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &theData, a2), a2 = theData, DataFromMappedFileURL))
  {
    v5 = 0;
  }

  else
  {
    v4 = AMAuthInstallApImg4IsImg4Payload(v2, theData);
    a2 = theData;
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = AMAuthInstallApImg3IsImg3Payload(theData) != 0;
      a2 = theData;
    }
  }

  SafeRelease(a2);
  return v5;
}

CFStringRef AMAuthInstallApCopyImageTag(const __CFAllocator *a1, CFURLRef anURL)
{
  theData = 0;
  v7 = 0;
  v5 = 0;
  if (anURL)
  {
    v7 = 0;
    v3 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (v3)
    {
      if (!AMAuthInstallApImg4CreateRequestTagFromFileURL(a1, v3, @"=", &v7, &v5) && !AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &theData, v5))
      {
        if (AMAuthInstallApImg3IsImg3Payload(theData))
        {
          SafeRelease(v7);
          if (AMAuthInstallApImg3CopyRequestTag(a1, theData, &v7))
          {
            AMAuthInstallLog(3, "AMAuthInstallApCopyImageTag", "failed to copy img3 tag");
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  SafeRelease(theData);
  SafeRelease(v3);
  SafeRelease(v5);
  return v7;
}

uint64_t AMAuthInstallApCopyDeviceEntryFromDeviceMap(const void *a1, uint64_t a2)
{
  cf = 0;
  v24 = 0;
  if (a2)
  {
    v21 = OUTLINED_FUNCTION_7_0();
    v19 = _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v21, v22, v23);
    goto LABEL_14;
  }

  v3 = getenv("PLATFORM_DIR");
  if (v3)
  {
    v4 = CFGetAllocator(a1);
    v5 = CFStringCreateWithFormat(v4, 0, @"%s/%@", v3, @"/usr/local/standalone/firmware/device_map.plist");
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = CFGetAllocator(a1);
    v7 = CFURLCreateWithFileSystemPath(v6, v5, kCFURLPOSIXPathStyle, 0);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_18;
    }

    MEMORY[0x29C28AEE0](v7, &v24);
    if (v24)
    {
      v9 = CFGetAllocator(a1);
      DataFromMappedFileURL = AMAuthInstallPlatformCreateDataFromMappedFileURL(v9, &cf, v8);
      if (DataFromMappedFileURL)
      {
LABEL_17:
        v19 = DataFromMappedFileURL;
        AMAuthInstallLog(3, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Failed to read devicemap from %@", v8);
        goto LABEL_14;
      }

      v11 = OUTLINED_FUNCTION_7_0();
      if (!_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v11, v12, v13))
      {
        AMAuthInstallLog(6, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Found matching entry in SDK-specific devicemap. (via PLATFORM_DIR)");
        v19 = 0;
        goto LABEL_14;
      }

      AMAuthInstallLog(4, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Failed to find match in SDK-specific devicemap (via PLATFORM_DIR), falling back to system devicemap.");
    }

    CFRelease(v8);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v14 = CFGetAllocator(a1);
  v8 = CFURLCreateWithFileSystemPath(v14, @"/usr/local/standalone/firmware/device_map.plist", kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
LABEL_18:
    v19 = 2;
    goto LABEL_14;
  }

  v15 = CFGetAllocator(a1);
  DataFromMappedFileURL = AMAuthInstallPlatformCreateDataFromMappedFileURL(v15, &cf, v8);
  if (DataFromMappedFileURL)
  {
    goto LABEL_17;
  }

  v16 = OUTLINED_FUNCTION_7_0();
  v19 = _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v16, v17, v18);
LABEL_14:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v19;
}

uint64_t _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(void *cf, const __CFData *a2, CFDictionaryRef *a3)
{
  v3 = 0;
  v4 = @"SecurityDomain";
  error = 0;
  v5 = @"BoardID";
  v6 = 1;
  v7 = @"ChipID";
  if (!cf || !a2)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0;
  if (a3)
  {
    if (!*(cf[2] + 160))
    {
      goto LABEL_8;
    }

    v13 = *MEMORY[0x29EDB8ED8];
    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,%@", *(cf[2] + 160), @"ChipID");
    if (v7)
    {
      v5 = CFStringCreateWithFormat(v13, 0, @"%@,%@", *(cf[2] + 160), @"BoardID");
      if (v5)
      {
        v4 = CFStringCreateWithFormat(v13, 0, @"%@,%@", *(cf[2] + 160), @"SecurityDomain");
        if (v4)
        {
LABEL_8:
          v14 = CFGetAllocator(cf);
          v15 = CFPropertyListCreateWithData(v14, a2, 0, 0, &error);
          v3 = v15;
          if (!v15)
          {
            v6 = 3;
            AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed to create dictionary from device_map (Not plist/xml data?): %@", error);
            v10 = 0;
            v11 = 0;
            goto LABEL_22;
          }

          Count = CFDictionaryGetCount(v15);
          v17 = malloc(8 * Count);
          if (!v17)
          {
            v10 = 0;
            v11 = 0;
            v6 = 2;
            goto LABEL_22;
          }

          v18 = v17;
          v11 = malloc(8 * Count);
          if (!v11)
          {
            v6 = 2;
            v10 = v18;
            goto LABEL_22;
          }

          v19 = a3;
          v26 = v18;
          CFDictionaryGetKeysAndValues(v3, v18, v11);
          if (Count >= 1)
          {
            v20 = 0;
            while (1)
            {
              v21 = v11[v20];
              if (AMAuthInstallSupportCompareStringToInt32(v21, v7, *(cf[2] + 8)))
              {
                if (AMAuthInstallSupportCompareStringToInt32(v21, v5, *(cf[2] + 12)) && AMAuthInstallSupportCompareStringToInt32(v21, v4, *(cf[2] + 16)))
                {
                  break;
                }
              }

              if (Count == ++v20)
              {
                goto LABEL_20;
              }
            }

            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(v21))
            {
              v6 = 14;
              goto LABEL_21;
            }

            v23 = CFGetAllocator(cf);
            Copy = CFDictionaryCreateCopy(v23, v21);
            *v19 = Copy;
            if (!Copy)
            {
              v6 = 0;
              goto LABEL_21;
            }
          }

LABEL_20:
          v6 = 8 * (*v19 == 0);
LABEL_21:
          v10 = v26;
          goto LABEL_22;
        }

        AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed secdomKey allocation");
      }

      else
      {
        AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed boardKey allocation");
      }
    }

    else
    {
      AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed chipKey allocation");
    }

    v3 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 99;
  }

LABEL_22:
  SafeRelease(v3);
  SafeFree(v10);
  SafeFree(v11);
  SafeRelease(error);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(v4);
  return v6;
}

uint64_t AMAuthInstallApApplyRequestRules(uint64_t a1, uint64_t a2, const __CFURL *a3, __CFDictionary *a4)
{
  v6 = 0;
  v7 = 1;
  if (a1 && a3)
  {
    OUTLINED_FUNCTION_8();
    if (a4)
    {
      v11 = v9;
      v12 = AMAuthInstallApCopyDeviceEntryFromDeviceMap(v9, v10);
      if (v12)
      {
        v7 = v12;
        v6 = 0;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
        v13 = CFGetAllocator(v11);
        v6 = AMAuthInstallApCopyImageTag(v13, a3);
        if (v6)
        {
          Value = CFDictionaryGetValue(0, @"Manifest");
          if (Value)
          {
            v15 = Value;
            Count = CFDictionaryGetCount(Value);
            v4 = calloc(8uLL, Count);
            v17 = calloc(8uLL, Count);
            v5 = v17;
            v7 = 2;
            if (v4 && v17)
            {
              v29 = v11;
              v30 = v4;
              CFDictionaryGetKeysAndValues(v15, v4, v17);
              if (Count < 1)
              {
LABEL_21:
                AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find RestoreRequestRules property", v29);
                v7 = 8;
              }

              else
              {
                v18 = 0;
                while (1)
                {
                  v19 = CFDictionaryGetValue(v5[v18], v6);
                  if (v19)
                  {
                    v20 = v19;
                    v21 = CFDictionaryGetValue(v19, @"RequiresPartialDigest");
                    if (v21)
                    {
                      v22 = v21;
                      TypeID = CFBooleanGetTypeID();
                      if (TypeID == CFGetTypeID(v22) && !CFBooleanGetValue(v22))
                      {
                        CFDictionaryRemoveValue(a4, @"PartialDigest");
                      }
                    }

                    v24 = CFDictionaryGetValue(v20, @"Trusted");
                    if (v24)
                    {
                      v25 = v24;
                      v26 = CFBooleanGetTypeID();
                      if (v26 == CFGetTypeID(v25))
                      {
                        CFDictionarySetValue(a4, @"Trusted", v25);
                      }
                    }

                    v27 = CFDictionaryGetValue(v20, @"RestoreRequestRules");
                    if (v27)
                    {
                      break;
                    }
                  }

                  if (Count == ++v18)
                  {
                    goto LABEL_21;
                  }
                }

                v7 = AMAuthInstallBundleProcessRules(v29, v27, a4);
              }

              v4 = v30;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find manifest entry");
            OUTLINED_FUNCTION_6_0();
            v7 = 8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_0();
          v7 = 3;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
  }

  SafeRelease(0);
  SafeRelease(v6);
  SafeFree(v4);
  SafeFree(v5);
  return v7;
}

uint64_t AMAuthInstallApExtractZippedDeviceMap(uint64_t a1, void *a2)
{
  v13 = 0;
  CFAllocatorGetDefault();
  v4 = AMAuthInstallPlatformCopyURLToNewTempDirectory();
  if (v4)
  {
    v11 = v4;
    AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to create temp dir");
    v6 = 0;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v6 = CFURLCreateCopyAppendingPathComponent(Default, 0, @"device_map", 0);
    if (v6)
    {
      v7 = CFAllocatorGetDefault();
      v8 = AMAuthInstallSupportWriteDataToFileURL(v7, a1, v6, 1);
      if (v8)
      {
        v11 = v8;
        AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to write data to %@", v6);
      }

      else
      {
        v9 = BbfwReaderOpen(v6);
        if (v9)
        {
          v10 = v9;
          v11 = BbfwReaderCopyFileData(v9, &v13);
          if (v11)
          {
            AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to copy data from %@", v6);
          }

          else
          {
            *a2 = v13;
          }

          BbfwReaderClose(v10);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to unzip file");
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 2;
    }
  }

  SafeRelease(v6);
  SafeRelease(0);
  return v11;
}

uint64_t AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped(void *a1, const __CFURL *a2, CFTypeRef cf, int a4, int a5, CFDictionaryRef *a6)
{
  v6 = 0;
  v25 = 0;
  theDict = 0;
  v7 = 1;
  if (a1 && a2 && a6)
  {
    if (cf && a4)
    {
      v12 = AMAuthInstallApExtractZippedDeviceMap(cf, &v25);
      if (v12)
      {
        v7 = v12;
        AMAuthInstallLog(3, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "failed to extract zipped device map");
        v6 = 0;
        goto LABEL_24;
      }
    }

    else if (cf && (a4 & 1) == 0)
    {
      v25 = CFRetain(cf);
    }

    v13 = OUTLINED_FUNCTION_3_0();
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(v13, v14, 0, v15, 0, a5, v16);
    v6 = theDict;
    if (MeasurementsWithTag)
    {
      v7 = MeasurementsWithTag;
    }

    else if (theDict)
    {
      if (AMAuthInstallApApplyRequestRules(a1, v25, a2, theDict))
      {
        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Could not retrieve image properties from devicemap.");
        if (!*(a1[2] + 168))
        {
          v18 = *MEMORY[0x29EDB8F00];
          CFDictionarySetValue(theDict, @"Trusted", *MEMORY[0x29EDB8F00]);
          v19 = *MEMORY[0x29EDB8EF8];
          if (*(a1[2] + 20))
          {
            v20 = v18;
          }

          else
          {
            v20 = *MEMORY[0x29EDB8EF8];
          }

          CFDictionarySetValue(theDict, @"EPRO", v20);
          if (*(a1[2] + 88))
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          CFDictionarySetValue(theDict, @"ESEC", v21);
          AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Consider setting alternate device_map, ie in a device-specific SDK path.  Setting default RestoreRequestRules to: %@", theDict);
        }

        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Note: This default behavior may change in the future into a hard error.");
      }

      v22 = CFGetAllocator(a1);
      Copy = CFDictionaryCreateCopy(v22, theDict);
      *a6 = Copy;
      v7 = 2 * (Copy == 0);
      v6 = theDict;
    }

    else
    {
      v7 = 14;
    }
  }

LABEL_24:
  SafeRelease(v6);
  SafeRelease(v25);
  return v7;
}

uint64_t AMAuthInstallApSoftwareCoprocessorSetParameters(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 24));
  v4 = SafeRetain(a2);
  result = 0;
  *(a1 + 24) = v4;
  return result;
}

CFIndex AMAuthInstallApFtabIsValid(const __CFData *a1, int a2)
{
  if (a1)
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 0x30)
    {
      OUTLINED_FUNCTION_1_2();
      v9 = "Encoded header is larger than data.";
    }

    else if (*(BytePtr + 4) == 0x62617466736F6B72)
    {
      v6 = *(BytePtr + 10);
      if (16 * v6 + 48 > Length)
      {
        OUTLINED_FUNCTION_1_2();
        v9 = "Encoded metadata is larger than data.";
      }

      else if (v6)
      {
        v7 = (*&BytePtr[16 * (v6 - 1) + 56] + *&BytePtr[16 * (v6 - 1) + 52]);
        v8 = Length < v7;
        v6 = Length >= v7;
        v9 = "FTAB data is smaller than last payload";
        if (!v8)
        {
          v9 = 0;
        }

        Length = v6;
      }

      else
      {
        Length = 0;
        v9 = "FTAB contains no payloads";
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_2();
      v9 = "FTAB contains invalid magic";
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "ftabData is NULL");
    OUTLINED_FUNCTION_1_2();
  }

  if (!a2 && (v6 & 1) == 0)
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "FTAB Error: %s", v9);
  }

  return Length;
}

uint64_t AMAuthInstallApFtabCreateMeasurementsWithTag(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, int a4, CFTypeRef *a5)
{
  value = 0;
  v5 = 1;
  if (a2 && theString && a5)
  {
    v28 = 0;
    if (CFStringGetLength(theString) == 4)
    {
      v11 = _AMAuthInstallApFtabCopyFtabFromFile(a1, a2, &v28);
      v12 = v11;
      if (v11)
      {
        Length = CFDataGetLength(v11);
        BytePtr = CFDataGetBytePtr(v12);
        if (CFStringGetCString(theString, buffer, 5, 0x8000100u))
        {
          v15 = v28;
          if (*(v28 + 10))
          {
            v16 = 0;
            v17 = 0;
            while (1)
            {
              AMAuthInstallLog(7, "AMAuthInstallApFtabCopyDataForTag", "Payload %2d: [%.4s], %7u bytes.", v17, &v15[v16 + 48], *&v15[v16 + 56]);
              v15 = v28;
              v18 = &v28[v16];
              if (*&v28[v16 + 48] == *buffer)
              {
                break;
              }

              ++v17;
              v16 += 16;
              if (v17 >= *(v28 + 10))
              {
                goto LABEL_11;
              }
            }

            v20 = *(v18 + 13);
            v19 = *(v18 + 14);
            if (Length < (v19 + v20))
            {
              AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "Encoded payload is larger than data.");
            }

            else
            {
              v21 = CFDataCreate(a1, &BytePtr[v20], v19);
              if (v21)
              {
                v22 = v21;
                AMSupportSafeRelease();
                AMAuthInstallCryptoCreateDigestForDataType(a1, v22, &value, a4);
                if (value)
                {
                  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  v24 = Mutable;
                  if (Mutable)
                  {
                    CFDictionarySetValue(Mutable, @"Digest", value);
                    v5 = 0;
                    *a5 = CFRetain(v24);
                    goto LABEL_18;
                  }

                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "failed to create mutable dict measurementDict");
                }

                else
                {
                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "created digest is NULL");
                }

                v5 = 2;
                goto LABEL_18;
              }

              AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "payload is NULL");
            }

            goto LABEL_25;
          }

LABEL_11:
          v5 = 8;
LABEL_12:
          AMSupportSafeRelease();
          AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "AMAuthInstallApFtabCopyDataForTag returned %d", v5);
          goto LABEL_18;
        }

        AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "CFStringGetCString failed.");
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "ftabData is NULL");
      }

LABEL_25:
      v5 = 99;
      goto LABEL_12;
    }

    AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "payloadTag is not 4 bytes");
    v5 = 1;
    goto LABEL_12;
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

uint64_t AMAuthInstallApFtabStitchTicketData(const void **a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4)
{
  v24 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 1;
  if (a2 && a3 && a4)
  {
    v10 = v8;
    Value = CFDictionaryGetValue(a4, a1[11]);
    if (Value)
    {
      v12 = Value;
      Length = CFDataGetLength(Value);
      if (Length > 0)
      {
        v14 = Length;
        v15 = _AMAuthInstallApFtabCopyFtabFromFile(v10, a2, &v24);
        v16 = v15;
        if (v15)
        {
          v17 = CFDataGetLength(v15);
          BytePtr = CFDataGetBytePtr(v12);
          CFDataAppendBytes(v16, BytePtr, v14);
          v19 = v24;
          *(v24 + 4) = v17;
          *(v19 + 5) = v14;
          v20 = CFDataGetLength(v16);
          CFDataIncreaseLength(v16, -v20 & 0xFFFLL);
          v21 = AMAuthInstallSupportWriteDataToFileURL(v10, v16, a3, 1);
          if (v21)
          {
            v23 = v21;
            AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: Failed to copy FTAB file to personalized bundle.", "AMAuthInstallApFtabStitchTicketData");
            v9 = v23;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "ftabData is NULL");
          v9 = 99;
        }

        goto LABEL_9;
      }

      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict has an empty ticket.");
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict doesn't contain a %@ ticket.", "AMAuthInstallApFtabStitchTicketData", a1[11]);
    }

    v9 = 17;
  }

LABEL_9:
  AMSupportSafeRelease();
  return v9;
}

CFIndex AMAuthInstallApImg3CreateServerRequestDictionary(void *a1, const void *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v5 = 0;
  v6 = 1;
  if (a1 && a2 && a3 && a5)
  {
    v12 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v5 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, a2, a3);
      v6 = AMAuthInstallApServerRequestAddRequiredTags(a1, v5, a4);
      if (!v6)
      {
        *a5 = CFRetain(v5);
      }
    }

    else
    {
      v6 = 2;
    }
  }

  SafeRelease(v5);
  return v6;
}

CFIndex AMAuthInstallApImg3ServerRequestAddRequiredTags(void *a1, __CFDictionary *a2, int a3, int a4)
{
  v22 = a2;
  if (!a1)
  {
    return 1;
  }

  v5 = 1;
  if (a2)
  {
    v7 = a1[2];
    if (v7)
    {
      if (*v7)
      {
        _CFDictionarySetInteger64(a2, @"ApECID", *v7);
        v7 = a1[2];
      }

      _CFDictionarySetInteger32(a2, @"ApChipID", *(v7 + 8));
      _CFDictionarySetInteger32(a2, @"ApBoardID", *(a1[2] + 12));
      v10 = a1[2];
      if (!*(v10 + 132))
      {
        _CFDictionarySetBoolean(a2, @"ApProductionMode", *(v10 + 20));
        v10 = a1[2];
      }

      _CFDictionarySetInteger32(a2, @"ApSecurityDomain", *(v10 + 16));
      if (a3)
      {
        v11 = *MEMORY[0x29EDB8F00];
        CFDictionarySetValue(a2, @"@APTicket", *MEMORY[0x29EDB8F00]);
        v12 = a1[2];
        v13 = *(v12 + 24);
        if (v13 && !*(v12 + 132))
        {
          CFDictionarySetValue(a2, @"ApNonce", v13);
          v12 = a1[2];
        }

        if (*(v12 + 80))
        {
          CFDictionarySetValue(a2, @"ApRelaxedImageVerification", v11);
        }
      }

      v14 = a1[53];
      if (!a4 && v14)
      {
        Value = CFDictionaryGetValue(v14, @"ApRequestEntries");
        if (Value)
        {
          v16 = Value;
          v17 = CFGetAllocator(a1);
          v5 = AMAuthInstallSupportApplyDictionaryOverrides(v17, v16, &v22, 0);
          if (v5)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg3ServerRequestAddRequiredTags", "failed to set Ap entitlements");
          }

          return v5;
        }

        return 0;
      }

      v5 = 0;
      if (!a4 || !v14)
      {
        return v5;
      }

      v18 = CFDictionaryGetValue(v14, @"RecoveryRequestEntries");
      if (!v18)
      {
        return 0;
      }

      v19 = v18;
      v20 = CFGetAllocator(a1);
      v5 = AMAuthInstallSupportApplyDictionaryOverrides(v20, v19, &v22, 0);
      if (v5)
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg3ServerRequestAddRequiredTags", "failed to set recovery entitlements");
      }
    }
  }

  return v5;
}

uint64_t AMAuthInstallApImg3CreateMeasurementsFromURL(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, char a4)
{
  v4 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v5 = 1;
  if (!a2)
  {
    v7 = 0;
    Mutable = 0;
    goto LABEL_11;
  }

  v7 = 0;
  Mutable = 0;
  if (a3)
  {
    DataFromFileURL = AMAuthInstallPlatformCreateDataFromFileURL();
    if (DataFromFileURL)
    {
      v5 = DataFromFileURL;
      v4 = 0;
      v7 = 0;
      Mutable = 0;
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      if (tss_get_partial_hash(BytePtr, Length, 64, bytes))
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute partial digest for img3 object");
        v4 = 0;
        v7 = 0;
LABEL_8:
        v5 = 5;
        goto LABEL_11;
      }

      v7 = CFDataCreate(a1, bytes, 28);
      if (v7)
      {
        CFDictionarySetValue(Mutable, @"PartialDigest", v7);
        if (a4)
        {
          v4 = 0;
LABEL_15:
          v5 = 0;
          *a3 = CFRetain(Mutable);
          goto LABEL_11;
        }

        v15 = CFDataGetBytePtr(0);
        v16 = CFDataGetLength(0);
        if (tss_get_hash(v15, v16, v17))
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute digest for img3 object");
          v4 = 0;
          goto LABEL_8;
        }

        v4 = CFDataCreate(a1, v17, 20);
        if (v4)
        {
          CFDictionarySetValue(Mutable, @"Digest", v4);
          goto LABEL_15;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v7 = 0;
    }

    v5 = 2;
  }

LABEL_11:
  SafeRelease(0);
  SafeRelease(v4);
  SafeRelease(v7);
  SafeRelease(Mutable);
  return v5;
}

uint64_t AMAuthInstallApImg3CopyPersonalizedData(void *a1, const __CFURL *a2, CFStringRef a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6, char a7)
{
  v10 = a4;
  v29 = 0;
  theDict = a5;
  v27 = 0;
  v28 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[2])
  {
    v16 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v26 = 0;
  v24 = CFGetAllocator(a1);
  v25 = AMAuthInstallApImg3CreateMeasurementsFromURL(v24, a2, &v26, a7);
  if (v25)
  {
    v16 = v25;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v26;
  if (!a3)
  {
LABEL_5:
    v14 = CFGetAllocator(a1);
    a3 = AMAuthInstallApCopyImageTag(v14, a2);
    if (!a3)
    {
      v16 = 0;
      goto LABEL_10;
    }
  }

LABEL_6:
  if (!a5)
  {
    DataFromFileURL = AMAuthInstallApImg3CreateServerRequestDictionary(a1, a3, v10, 0, &v29);
    if (DataFromFileURL)
    {
      goto LABEL_8;
    }

    DataFromFileURL = AMAuthInstallRequestSendSync(a1, v29, &theDict);
    if (DataFromFileURL)
    {
      goto LABEL_8;
    }
  }

  CFGetAllocator(a1);
  DataFromFileURL = AMAuthInstallPlatformCreateDataFromFileURL();
  if (DataFromFileURL)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, a3);
  if (!Value)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyPersonalizedData", "response missing entry %@", a3);
LABEL_24:
    v23 = &v28;
LABEL_25:
    v16 = 0;
    *a6 = CFRetain(*v23);
    goto LABEL_10;
  }

  v19 = Value;
  v20 = CFDictionaryGetValue(Value, @"Blob");
  if (!v20)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyPersonalizedData", "response missing personalization data for %@", a3);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = CFDictionaryGetValue(v19, @"PartialDigest");
  if (!v22)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyPersonalizedData", "response missing partial digest for %@", a3);
    goto LABEL_24;
  }

  v23 = &v27;
  DataFromFileURL = AMAuthInstallApImg3CreatePersonalizedData(a1, v28, v21, v22, &v27);
  if (!DataFromFileURL)
  {
    goto LABEL_25;
  }

LABEL_8:
  v16 = DataFromFileURL;
LABEL_10:
  SafeRelease(v29);
  SafeRelease(v10);
  SafeRelease(theDict);
  SafeRelease(v28);
  SafeRelease(v27);
  return v16;
}

uint64_t AMAuthInstallApImg3CreateSignatureStrippedImage3(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  v3 = 0;
  length = 0;
  v4 = 1;
  if (theData && a3)
  {
    MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
    v3 = MutableCopy;
    if (MutableCopy)
    {
      length = CFDataGetLength(MutableCopy);
      BytePtr = CFDataGetBytePtr(v3);
      if (tss_strip_img3_signature(BytePtr, &length))
      {
        v4 = 9;
      }

      else
      {
        CFDataSetLength(v3, length);
        v4 = 0;
        *a3 = CFRetain(v3);
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallApImg3WriteSignatureStrippedImage3(const void *a1, const __CFURL *a2)
{
  *v7 = 0;
  theData = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(*MEMORY[0x29EDB8ED8], &theData, a1);
  if (!DataFromFileURL)
  {
    DataFromFileURL = AMAuthInstallApImg3CreateSignatureStrippedImage3(v3, theData, v7);
    if (!DataFromFileURL)
    {
      DataFromFileURL = AMAuthInstallSupportWriteDataToFileURL(v3, *v7, a2, 1);
    }
  }

  v5 = DataFromFileURL;
  SafeRelease(theData);
  SafeRelease(*v7);
  return v5;
}

const __CFData *AMAuthInstallApImg3IsImg3Payload(const __CFData *result)
{
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    return (tss_image_is_img3(BytePtr) == 0);
  }

  return result;
}

uint64_t AMAuthInstallApImg3IsFinalized(const __CFAllocator *a1, const void *a2, BOOL *a3)
{
  theData = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (!DataFromFileURL)
  {
    BytePtr = CFDataGetBytePtr(theData);
    *a3 = tss_image_is_finalized(BytePtr) == 0;
  }

  SafeRelease(theData);
  return DataFromFileURL;
}

uint64_t AMAuthInstallApImg3Finalize(const __CFAllocator *a1, const void *a2, const __CFURL *a3)
{
  v16 = 0;
  v17 = 0;
  theData = 0;
  v15 = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v12 = DataFromFileURL;
    v8 = 0;
    v11 = 0;
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
    v8 = MutableCopy;
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(MutableCopy);
      Length = CFDataGetLength(v8);
      if (image3InstantiateFromBuffer(&v15, BytePtr, Length, 1))
      {
        v11 = 0;
        v12 = 9;
        AMAuthInstallLog(3, "AMAuthInstallApImg3Finalize", "%s: invalid image 3 object");
      }

      else if (image3Finalize(v15, &v17, &v16, 1, 0))
      {
        v11 = 0;
        v12 = 14;
        AMAuthInstallLog(3, "AMAuthInstallApImg3Finalize", "%s: failed to finalize image");
      }

      else
      {
        v11 = CFDataCreate(a1, v17, v16);
        if (v11)
        {
          v12 = AMAuthInstallSupportWriteDataToFileURL(a1, v11, a3, 1);
          if (v12)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg3Finalize", "%s: failed to write finalized image3");
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 2;
    }
  }

  if (v15)
  {
    image3Discard(&v15);
  }

  if (v12)
  {
    AMAuthInstallLog(8, "AMAuthInstallApImg3Finalize", "%s: %@", "AMAuthInstallApImg3Finalize", a2);
  }

  SafeRelease(theData);
  SafeRelease(v8);
  SafeRelease(v11);
  return v12;
}

uint64_t AMAuthInstallApImg3CopyRequestTag(int a1, CFDataRef theData, void *a3)
{
  v15 = 0;
  v13 = 0;
  v3 = 1;
  if (!theData || !a3)
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (image3InstantiateFromBuffer(&v13, BytePtr, Length, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: invalid image 3 object");
  }

  else
  {
    if (!image3GetTagSignedNumber(v13, 1415139397, &v15, 0))
    {
      __s1 = bswap32(v15);
      v15 = __s1;
      v8 = off_29EE99850;
      v9 = 28;
      do
      {
        if (CFStringGetCString(*v8, buffer, 5, 0x8000100u) && !memcmp(&__s1, buffer, 5uLL))
        {
          v11 = CFRetain(*(v8 - 1));
          *a3 = v11;
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_15;
        }

        v8 += 2;
        --v9;
      }

      while (v9);
      if (*a3)
      {
LABEL_10:
        v3 = 0;
        goto LABEL_11;
      }

LABEL_15:
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "failed to find entry for %@", 0);
      v3 = 8;
      goto LABEL_11;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: failed to get tag");
  }

  v3 = 9;
LABEL_11:
  if (v13)
  {
    image3Discard(&v13);
  }

LABEL_13:
  SafeRelease(0);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateRequestTagFromFileURL(const __CFAllocator *a1, CFStringRef theString, CFStringRef stringToFind, CFStringRef *a4, CFURLRef *a5)
{
  v5 = 0;
  cf = 0;
  v6 = 1;
  if (!theString || !stringToFind || !a4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  if (a5)
  {
    location = CFStringFind(theString, stringToFind, 0).location;
    if (location == -1)
    {
      v17 = CFURLCreateWithFileSystemPath(a1, theString, kCFURLPOSIXPathStyle, 0);
      *a5 = v17;
      if (v17)
      {
        DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, v17);
        if (DataFromMappedFileURL)
        {
          v6 = DataFromMappedFileURL;
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to create file from %@", theString, cf);
          v5 = 0;
        }

        else
        {
          v19 = AMAuthInstallApImg4CopyPayloadType(a1, cf);
          v5 = v19;
          if (v19)
          {
            EntryNameForType = AMAuthInstallApImg4GetEntryNameForType(v19);
            *a4 = EntryNameForType;
            if (!EntryNameForType)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "entry not found for %@", v5);
              v9 = 0;
              v6 = 8;
              goto LABEL_16;
            }

            CFRetain(EntryNameForType);
            v9 = 0;
LABEL_15:
            v6 = 0;
            goto LABEL_16;
          }

          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to get payload type from %@", theString);
        }

        v9 = 0;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_4_0();
    }

    else
    {
      v13 = location;
      v14 = location + 1;
      v23.length = CFStringGetLength(theString) - (location + 1);
      v23.location = v14;
      v9 = CFStringCreateWithSubstring(a1, theString, v23);
      if (v9)
      {
        v15 = CFURLCreateWithFileSystemPath(a1, v9, kCFURLPOSIXPathStyle, 0);
        *a5 = v15;
        if (v15)
        {
          v24.location = 0;
          v24.length = v13;
          v16 = CFStringCreateWithSubstring(a1, theString, v24);
          v5 = 0;
          *a4 = v16;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }

      v5 = 0;
    }

LABEL_20:
    v6 = 2;
  }

LABEL_16:
  SafeRelease(cf);
  SafeRelease(v5);
  SafeRelease(0);
  SafeRelease(v9);
  return v6;
}

const __CFData *AMAuthInstallApImg4IsImg4Payload(int a1, CFDataRef theData)
{
  v2 = theData;
  v43[0] = 0;
  v43[1] = 0;
  v41 = 0;
  v42 = 0;
  HIDWORD(v40) = 0;
  if (!theData)
  {
    goto LABEL_13;
  }

  Length = CFDataGetLength(theData);
  HIDWORD(v42) = Length;
  BytePtr = CFDataGetBytePtr(v2);
  v5 = DERDecoderInitialize(v43, BytePtr, &v42 + 1, Length);
  if (v5 || (v13 = OUTLINED_FUNCTION_6_1(v5, v6, v7, v8, v9, v10, v11, v12, v38, v40, v41, v42, v43[0]), DERDecoderGetDataWithTag(v13, v14, 0x10u, 1, v15, v16, v17)) || (v18 = DERDecoderInitialize(v43, v41, &v40 + 1, HIDWORD(v40)), v18) || (LODWORD(v42) = 0, v26 = OUTLINED_FUNCTION_6_1(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43[0]), DERDecoderGetDataWithTag(v26, v27, 0x16u, 0, v28, v29, v30)))
  {
    v2 = 0;
LABEL_13:
    v36 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_1();
  v35 = CFStringCreateWithBytes(v31, v32, v33, v34, 0);
  v36 = v35;
  v2 = (v35 && (CFStringCompare(v35, @"IMG4", 0) == kCFCompareEqualTo || CFStringCompare(v36, @"IM4P", 0) == kCFCompareEqualTo));
LABEL_11:
  SafeRelease(v36);
  return v2;
}

uint64_t AMAuthInstallApImg4CopyPayload(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a2 && a3)
  {
    v5 = a1;
    DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, a2);
    if (DataFromMappedFileURL)
    {
      v3 = DataFromMappedFileURL;
    }

    else if (AMAuthInstallApImg4IsImg4Payload(v5, cf))
    {
      v3 = 0;
      *a3 = CFRetain(cf);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayload", "object is not a valid img4/im4p type");
      v3 = 23;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateMeasurementsWithTag(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  HIDWORD(v76) = a4;
  v93 = *MEMORY[0x29EDCA608];
  value = 0;
  cf = 0;
  v79 = 0;
  v80 = 0;
  v5 = 1;
  if (!a2)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_12();
  if (v10)
  {
    v11 = v9;
    v12 = v8;
    v13 = v7;
    v14 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_77;
    }

    if (CFStringFind(v14, @"=", 0).location == -1)
    {
      v22 = CFRetain(v12);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v13, v15, @"=");
    v17 = ArrayBySeparatingStrings;
    if (!ArrayBySeparatingStrings)
    {
      goto LABEL_77;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    v19 = ValueAtIndex;
    if (ValueAtIndex)
    {
      if (!v11)
      {
        TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(ValueAtIndex);
        if (!TypeForEntryName)
        {
          goto LABEL_75;
        }

        v11 = TypeForEntryName;
        if (CFStringCompare(TypeForEntryName, v19, 0) == kCFCompareEqualTo)
        {
          v45 = OUTLINED_FUNCTION_14(0, @"ftap");
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_14(v45, @"rfta");
            if (v46)
            {
              v47 = OUTLINED_FUNCTION_14(v46, @"ftsp");
              if (v47)
              {
                if (OUTLINED_FUNCTION_14(v47, @"rfts"))
                {
                  v11 = 0;
                }
              }
            }
          }
        }
      }

      v21 = CFArrayGetValueAtIndex(v17, 1);
      if (v21)
      {
        v22 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v21, kCFURLPOSIXPathStyle, 0);
        if (!v22)
        {
          goto LABEL_77;
        }

        if (v11)
        {
LABEL_13:
          OUTLINED_FUNCTION_3_1();
          CFStringGetCString(v23, v24, v25, v26);
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
          if (DataFromMappedFileURL)
          {
            v5 = DataFromMappedFileURL;
            goto LABEL_42;
          }

          v33 = OUTLINED_FUNCTION_8_0(v90, v28, cf, v29, v30, v31, v32, &v80);
          if (v33)
          {
            v5 = v33;
            v40 = "failed to create im4p with override tag";
          }

          else
          {
            AMSupportSafeRelease();
            cf = 0;
            if (AMAuthInstallCryptoCreateDigestForDataType(v13, v80, &value, SHIDWORD(v76)) != 1)
            {
              v34 = AMSupportSafeRetain();
              AMSupportSafeRelease();
              v80 = 0;
              goto LABEL_17;
            }

            v5 = 1;
            v40 = "Unsupported digestType";
          }

LABEL_27:
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", v40, v70, v72);
          goto LABEL_42;
        }

LABEL_25:
        v39 = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
        if (!v39)
        {
          v34 = AMAuthInstallApImg4CopyPayloadType(v13, cf);
          AMAuthInstallCryptoCreateDigestForDataType(v13, cf, &value, SHIDWORD(v76));
          if (!value)
          {
            v5 = 3;
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create digest for %@ with error %d", v22, 3);
            goto LABEL_42;
          }

          AMSupportSafeRelease();
          cf = 0;
LABEL_17:
          if (value)
          {
            Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v36 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"Digest", value);
              if (!v34)
              {
LABEL_41:
                v5 = 0;
                *a5 = CFRetain(v36);
                goto LABEL_42;
              }

              v38 = OUTLINED_FUNCTION_15(v37, @"sepi");
              if (v38)
              {
                if (OUTLINED_FUNCTION_15(v38, @"rsep"))
                {
                  goto LABEL_33;
                }

                if (AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 2, &v79))
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbmr property, status:%d\n");
                  goto LABEL_33;
                }
              }

              else if (AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 1, &v79))
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbms property, status:%d\n");
                goto LABEL_33;
              }

              CFDictionarySetValue(v36, @"TBMDigests", v79);
LABEL_33:
              v88 = 0;
              theData = 0;
              BytePtr = 0;
              bzero(v90, 0xA0uLL);
              v86 = 0;
              if (!v22)
              {
                v43 = 0;
                v5 = 1;
                goto LABEL_40;
              }

              v41 = AMAuthInstallApImg4CopyPayload(v13, v22, &theData);
              if (v41)
              {
                v5 = v41;
                v43 = 0;
                goto LABEL_40;
              }

              BytePtr = CFDataGetBytePtr(theData);
              v88 = CFDataGetLength(theData);
              bzero(v90, 0xA0uLL);
              v42 = DERImg4DecodePayloadWithProperties(&BytePtr, v90);
              if (v42)
              {
                AMAuthInstallLog(7, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "failed to decode img4 payload with properties (error=%d), assuming no properties", v42);
LABEL_38:
                v43 = 0;
LABEL_39:
                v5 = 0;
                goto LABEL_40;
              }

              if (!v91)
              {
                goto LABEL_38;
              }

              *bytes = 0u;
              *length = 0u;
              v83 = 0u;
              v48 = OUTLINED_FUNCTION_15(v42, @"sepi");
              if (v48)
              {
                v50 = OUTLINED_FUNCTION_15(v48, @"rsep");
                if (v50)
                {
                  goto LABEL_59;
                }

                if (OUTLINED_FUNCTION_9(0, 1952607602, v51, v52, v53, v54, v55, v56, v70, v72, v74, v76, v79, v80, value, cf) || (v49 = bytes[1]) == 0)
                {
                  AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbmr payload property, status:%d\n");
                  goto LABEL_59;
                }
              }

              else if (AMAuthInstallApImg4DecodePayloadProperty(&BytePtr, 0xE000000074626D73, &v83) || (v49 = bytes[1]) == 0)
              {
                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbms payload property, status:%d\n");
                goto LABEL_59;
              }

              v57 = CFDataCreate(v13, v49, length[0]);
              if (!v57)
              {
                goto LABEL_84;
              }

              v58 = v57;
              CFDictionarySetValue(v36, @"TBMDigests", v57);
              SafeRelease(v58);
LABEL_59:
              v59 = OUTLINED_FUNCTION_9(v50, 1835884912, v51, v52, v53, v54, v55, v56, v70, v72, v74, v76, v79, v80, value, cf);
              if (!v59 && bytes[1])
              {
                v66 = CFDataCreate(v13, bytes[1], length[0]);
                if (!v66)
                {
                  goto LABEL_84;
                }

                v67 = v66;
                CFDictionarySetValue(v36, @"MemoryMap", v66);
                SafeRelease(v67);
              }

              if (OUTLINED_FUNCTION_9(v59, 1919181927, v60, v61, v62, v63, v64, v65, v71, v73, v75, v77, v79, v80, value, cf) || !bytes[1])
              {
                goto LABEL_67;
              }

              v68 = CFDataCreate(v13, bytes[1], length[0]);
              if (v68)
              {
                v69 = v68;
                CFDictionarySetValue(v36, @"RawDataDigest", v68);
                SafeRelease(v69);
LABEL_67:
                v43 = CFDataCreate(v13, v91, v92);
                AMAuthInstallCryptoCreateDigestForDataType(v13, v43, &v86, v78);
                if (v86)
                {
                  CFDictionarySetValue(v36, @"ObjectPayloadPropertyDigest", v86);
                  goto LABEL_39;
                }

                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "created digest is NULL");
                goto LABEL_86;
              }

LABEL_84:
              v43 = 0;
LABEL_86:
              v5 = 2;
LABEL_40:
              SafeRelease(v86);
              SafeRelease(v43);
              SafeRelease(0);
              SafeRelease(theData);
              if (v5)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to copy payload properties to measurement dictionary.");
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create mutable dict measurementDict");
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "created digest is NULL");
          }

LABEL_77:
          v5 = 2;
          goto LABEL_42;
        }

        v5 = v39;
        v70 = v22;
        v72 = v39;
        v40 = "Failed to read file %@: error=%d";
        goto LABEL_27;
      }
    }

LABEL_75:
    v5 = 8;
  }

LABEL_42:
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
  return v5;
}

CFIndex AMAuthInstallApImg4CreateServerRequestDictionary(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a1 && a2 && a3)
  {
    v7 = CFGetAllocator(a1);
    cf = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (cf)
    {
      v8 = CFGetAllocator(a1);
      v9 = AMAuthInstallSupportApplyDictionaryOverrides(v8, a2, &cf, 0);
      if (v9)
      {
        v3 = v9;
        AMAuthInstallLog(3, "AMAuthInstallApImg4CreateServerRequestDictionary", "failed to apply measurements override");
      }

      else
      {
        v3 = AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(a1, cf, 1, 0);
        if (!v3)
        {
          *a3 = CFRetain(cf);
        }
      }
    }

    else
    {
      v3 = 2;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4SetSepNonce(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (cf && *(a1 + 16))
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(cf) == 20)
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v6 = CFRetain(cf);
      return OUTLINED_FUNCTION_11(v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetSepNonceSlotID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  CFRetain(cf);
  SafeRelease(*(*(a1 + 16) + 56));
  result = 0;
  *(*(a1 + 16) + 56) = cf;
  return result;
}

uint64_t AMAuthInstallApImg4ServerRequestAddUIDMode(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (theDict)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 184);
      if (CFDictionaryContainsKey(theDict, @"UniqueBuildID") || CFDictionaryContainsKey(theDict, @"UID_MODE"))
      {
        return 0;
      }

      v7 = *MEMORY[0x29EDB8EF8];
      if (v6)
      {
        v8 = v6 == v7;
      }

      else
      {
        v8 = 1;
      }

      if (!v8 || (v9 = *(*(a1 + 16) + 192), v10 = *MEMORY[0x29EDB8F00], v9 == *MEMORY[0x29EDB8F00]) || (result = CFDictionaryContainsKey(theDict, @"SepNonce"), !v10) || result)
      {
        if (v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v7;
        }

        CFDictionarySetValue(theDict, @"UID_MODE", v11);
        return 0;
      }
    }
  }

  return result;
}

CFIndex AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(void *a1, __CFDictionary *a2, int a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v7 = a1[2];
    if (v7)
    {
      v10 = *(v7 + 132);
      v11 = *(v7 + 88);
      v12 = kAMAuthInstallTagX86SecurityMode;
      if (!v10)
      {
        v12 = kAMAuthInstallTagApSecurityMode;
      }

      _CFDictionarySetBoolean(a2, *v12, v11);
      v14 = a1[2];
      if (*(v14 + 90))
      {
        if (*(v14 + 132))
        {
          v15 = kAMAuthInstallTagX86AllowMixAndMatch;
        }

        else
        {
          v15 = kAMAuthInstallTagApAllowMixAndMatch;
        }

        CFDictionarySetValue(a2, *v15, *MEMORY[0x29EDB8F00]);
      }

      v16 = a1[2];
      if (v16[91])
      {
        OUTLINED_FUNCTION_10(v13, @"Ap,InternalUseOnlySW");
        v16 = a1[2];
      }

      if (v16[132])
      {
        _CFDictionarySetBoolean(a2, @"x86,ProductionMode", v16[20]);
        if (*(a1[2] + 95))
        {
          _CFDictionarySetInteger32(a2, @"x86,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }

        v18 = *(a1[2] + 24);
        if (v18)
        {
          CFDictionarySetValue(a2, @"x86,Nonce", v18);
        }

        OUTLINED_FUNCTION_10(v17, @"@x86,Ticket");
      }

      else
      {
        if (v16[95])
        {
          _CFDictionarySetInteger32(a2, @"Ap,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }
      }

      v19 = a1[2];
      if (!*(v19 + 132))
      {
        OUTLINED_FUNCTION_10(v13, @"@ApImg4Ticket");
        v19 = a1[2];
      }

      v20 = *(v19 + 24);
      if (v20)
      {
        CFDictionarySetValue(a2, @"ApNonce", v20);
        v19 = a1[2];
      }

      v21 = *(v19 + 48);
      if (v21)
      {
        CFDictionarySetValue(a2, @"SepNonce", v21);
        v19 = a1[2];
      }

      v22 = *(v19 + 40);
      if (v22)
      {
        CFDictionarySetValue(a2, @"Ap,SoftwareNonceForUpdateFreshness", v22);
        v19 = a1[2];
      }

      v23 = *(v19 + 136);
      if (v23)
      {
        CFDictionarySetValue(a2, @"@BCert", v23);
        OUTLINED_FUNCTION_10(v24, @"@Managed");
        v19 = a1[2];
      }

      v25 = *(v19 + 144);
      if (v25)
      {
        CFDictionarySetValue(a2, @"@BCert", v25);
        OUTLINED_FUNCTION_10(v26, @"@AlternateSU");
        v19 = a1[2];
      }

      v27 = *(v19 + 176);
      if (v27)
      {
        CFDictionarySetValue(a2, @"Ap,SikaFuse", v27);
        v19 = a1[2];
      }

      v28 = *(v19 + 208);
      if (v28)
      {
        CFDictionarySetValue(a2, @"Ap,DisablePlatformOnlyCode", v28);
      }

LABEL_39:
      result = AMAuthInstallApImg3ServerRequestAddRequiredTags(a1, a2, 0, a4);
      if (!result)
      {

        return AMAuthInstallApImg4ServerRequestAddUIDMode(a1, a2);
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4StitchData(const void **a1, uint64_t a2, const void *a3, uint64_t a4, CFDictionaryRef theDict, int a6)
{
  v6 = 0;
  v31 = 0;
  v32 = 0;
  v7 = 1;
  if (a3 && a4)
  {
    if (a6)
    {
      Value = 0;
    }

    else
    {
      if (!theDict)
      {
LABEL_20:
        v6 = 0;
        goto LABEL_14;
      }

      Value = CFDictionaryGetValue(theDict, a1[11]);
      if (!Value)
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "%s: could not find ticket %@ data in response.", "AMAuthInstallApImg4StitchData", a1[11]);
        v6 = 0;
        v7 = 8;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_3_1();
      CFStringGetCString(v13, v14, v15, v16);
      v17 = CFGetAllocator(a1);
      DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v17, &v32, a3);
      if (DataFromMappedFileURL)
      {
        v7 = DataFromMappedFileURL;
      }

      else
      {
        v24 = OUTLINED_FUNCTION_8_0(&v30, v19, v32, v20, v21, v22, v23, &v31);
        if (!v24)
        {
          SafeRelease(v32);
          v32 = 0;
          CFGetAllocator(a1);
          Length = CFDataGetLength(v31);
          v7 = _AMAuthInstallApImg4StitchToURL(a4, Value, Length, v31, _WriteCFDataIntoFile);
          v6 = 0;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_17:
          AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to write stitched data to %@", a4);
          goto LABEL_14;
        }

        v7 = v24;
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to recreate");
      }

      goto LABEL_20;
    }

    v6 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v6)
    {
      bzero(&v30, 0x90uLL);
      v26 = fileno(v6);
      fstat(v26, &v30);
      CFGetAllocator(a1);
      v7 = _AMAuthInstallApImg4StitchToURL(a4, Value, v30.st_size, v6, _WriteStreamIntoFile);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v28 = __error();
    v29 = strerror(*v28);
    AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to open file %@, error=%s", a3, v29);
    v7 = 4;
  }

LABEL_14:
  SafeRelease(v32);
  SafeRelease(v31);
  if (v6)
  {
    fclose(v6);
  }

  return v7;
}

uint64_t AMAuthInstallApImg4PersonalizeFile(uint64_t a1, CFURLRef anURL, const void *a3, const void *a4)
{
  *v25 = 0;
  key = 0;
  v23 = 0;
  value = 0;
  theDict = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_4_0();
    PersonalizedResponse = 1;
    goto LABEL_24;
  }

  v4 = 0;
  PersonalizedResponse = 1;
  if (!a3 || !anURL)
  {
    TypeForEntryName = 0;
    goto LABEL_24;
  }

  TypeForEntryName = 0;
  if (*(a1 + 16))
  {
    v4 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (!v4)
    {
      TypeForEntryName = 0;
      goto LABEL_30;
    }

    v10 = CFGetAllocator(a1);
    RequestTagFromFileURL = AMAuthInstallApImg4CreateRequestTagFromFileURL(v10, v4, @"=", &key, v25);
    if (RequestTagFromFileURL)
    {
      PersonalizedResponse = RequestTagFromFileURL;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not get request tag from path %@", v4);
    }

    else
    {
      TypeForEntryName = 0;
      PersonalizedResponse = 14;
      if (!key || !*v25)
      {
        goto LABEL_24;
      }

      if (a4)
      {
        value = CFRetain(a4);
        goto LABEL_13;
      }

      TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(key);
      if (!TypeForEntryName)
      {
        goto LABEL_34;
      }

      v12 = CFGetAllocator(a1);
      MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v12, *v25, TypeForEntryName, *(*(a1 + 16) + 128), &value);
      if (!MeasurementsWithTag)
      {
LABEL_13:
        v14 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        TypeForEntryName = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, key, value);
          ServerRequestDictionary = AMAuthInstallApImg4CreateServerRequestDictionary(a1, TypeForEntryName, &v23);
          if (ServerRequestDictionary)
          {
            PersonalizedResponse = ServerRequestDictionary;
            AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to create request dict");
            goto LABEL_24;
          }

          PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v23, &theDict);
          if (PersonalizedResponse || !theDict)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to create response dict");
            goto LABEL_24;
          }

          if (CFDictionaryGetValue(theDict, *(a1 + 88)))
          {
            v17 = AMAuthInstallApImg4GetTypeForEntryName(key);
            if (v17)
            {
              v18 = v17;
              if (CFStringCompare(v17, key, 0))
              {
                v19 = v18;
              }

              else
              {
                v19 = 0;
              }

              v20 = AMAuthInstallApImg4StitchData(a1, v19, *v25, a3, theDict, 0);
              if (v20)
              {
                PersonalizedResponse = v20;
                AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to stitch ticket to %@", a3);
              }

              else
              {
                PersonalizedResponse = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(key, a3, theDict, 0, a1);
                if (PersonalizedResponse)
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to stitch restore info to %@", a3);
                }
              }

              goto LABEL_24;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "Ap ticket not found in response");
          }

LABEL_34:
          PersonalizedResponse = 8;
          goto LABEL_24;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to create mutable dict measurementDict");
LABEL_30:
        PersonalizedResponse = 2;
        goto LABEL_24;
      }

      PersonalizedResponse = MeasurementsWithTag;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not measure %@", v4);
    }

    TypeForEntryName = 0;
  }

LABEL_24:
  SafeRelease(v4);
  SafeRelease(key);
  SafeRelease(*v25);
  SafeRelease(value);
  SafeRelease(TypeForEntryName);
  SafeRelease(v23);
  SafeRelease(theDict);
  return PersonalizedResponse;
}

uint64_t AMAuthInstallApImg4ForceLocalSigning(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  result = 1;
  if (v1)
  {
    *(v1 + 92) = 1;
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4ForceServerSigning(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  result = 1;
  if (v1)
  {
    *(v1 + 94) = 1;
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetParameters(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4SetParameters", "%s: make sure to call AMAuthInstallApSetParameters first", "AMAuthInstallApImg4SetParameters");
    return 1;
  }

  if (!theDict)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"ApCertificateEpoch");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
      {
        *(*(a1 + 16) + 84) = valuePtr;
      }
    }
  }

  v7 = CFDictionaryGetValue(theDict, @"ApLeafCertStatus");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 89) = CFBooleanGetValue(v8);
    }
  }

  v10 = CFDictionaryGetValue(theDict, @"ApAllowMixAndMatch");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 90) = CFBooleanGetValue(v11);
    }
  }

  result = CFDictionaryGetValue(theDict, @"SepNonce");
  if (result)
  {
    v14 = result;
    v15 = CFGetTypeID(result);
    if (v15 == CFDataGetTypeID())
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v16 = CFRetain(v14);
      return OUTLINED_FUNCTION_11(v16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4DecodeRestoreInfo(const __CFData *a1, CFMutableDictionaryRef *a2)
{
  v38[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*a2)
  {
    return 1;
  }

  bzero(v37, 0x1C8uLL);
  v36[0] = 0;
  v36[1] = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = Img4DecodeInit(BytePtr, Length, v37);
  if (v7)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6);
  }

  else
  {
    if (!DERDecodeSeqContentInit(v38, v36))
    {
      v8 = *MEMORY[0x29EDB8ED8];
      v9 = *MEMORY[0x29EDB8EF8];
      v10 = *MEMORY[0x29EDB8F00];
      while (1)
      {
        do
        {
          while (1)
          {
            v11 = DERDecodeSeqNext(v36, &v34);
            if (!v11)
            {
              break;
            }

            if (v11 == 1)
            {
              return 0;
            }
          }

          v32 = 0;
          v33[0] = 0;
          v33[1] = 0;
          v31[0] = 0;
          v31[1] = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
        }

        while (DERDecodeItem(v35, &v32) || DERDecodeSeqContentInit(v33, v31) || DERDecodeSeqNext(v31, &v28) || v28 != 22);
        OUTLINED_FUNCTION_3_1();
        v16 = CFStringCreateWithBytes(v12, v13, v14, v15, 0);
        if (v16)
        {
          if (!DERDecodeSeqNext(v31, &v28))
          {
            break;
          }
        }

LABEL_35:
        SafeRelease(v16);
      }

      if (v28 == 1)
      {
        LOBYTE(v27) = 0;
        if (DERParseBoolean(&v29, &v27))
        {
          return 23;
        }

        if (v27)
        {
          v23 = v9;
        }

        else
        {
          v23 = v10;
        }

        if (!v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v28 != 2)
        {
          if (v28 == 4)
          {
            v21 = CFDataCreate(v8, v29, v30);
          }

          else
          {
            if (v28 != 22)
            {
              goto LABEL_35;
            }

            OUTLINED_FUNCTION_3_1();
            v21 = CFStringCreateWithBytes(v17, v18, v19, v20, 0);
          }

          v24 = v21;
          if (v21)
          {
            CFDictionarySetValue(*a2, v16, v21);
          }

          v25 = v24;
          goto LABEL_34;
        }

        v27 = 0;
        if (DERParseInteger64(&v29, &v27))
        {
          return 23;
        }

        v22 = CFNumberCreate(v8, kCFNumberSInt64Type, &v27);
        if (!v22)
        {
LABEL_33:
          v25 = 0;
LABEL_34:
          SafeRelease(v25);
          goto LABEL_35;
        }

        v23 = v22;
      }

      CFDictionarySetValue(*a2, v16, v23);
      goto LABEL_33;
    }

    AMSupportLogInternal(3, "AMAuthInstallApImg4DecodeRestoreInfo", "can't parse top-level restoreinfo sequence");
  }

  return 99;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v32 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_7_1();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_7_1();
  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = v5;
  v8 = DEREncoderCreate();
  if (!v8)
  {
    v4 = 0;
    v3 = 0;
    goto LABEL_40;
  }

  Count = CFDictionaryGetCount(v7);
  v10 = 8 * Count;
  v4 = malloc(v10);
  v11 = malloc(v10);
  v3 = v11;
  if (!v4 || !v11)
  {
    goto LABEL_40;
  }

  CFDictionaryGetKeysAndValues(v7, v4, v11);
  if (Count)
  {
    v12 = 0;
    v13 = 8 * Count;
    v14 = "%s: unexpected restore property type";
    while (1)
    {
      v15 = v4[v12 / 8];
      if (!v15 || (v16 = CFGetTypeID(v4[v12 / 8]), v16 != CFStringGetTypeID()))
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "invalid overridesKey");
        goto LABEL_40;
      }

      v17 = v3[v12 / 8];
      if (!v17)
      {
        break;
      }

      v18 = CFGetTypeID(v17);
      if (v18 == CFDataGetTypeID())
      {
        if (AMAuthInstallApImg4AddDataProperty(v8, v15, v3[v12 / 8]))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v19 = CFGetTypeID(v3[v12 / 8]);
        TypeID = CFBooleanGetTypeID();
        v21 = v3[v12 / 8];
        if (v19 == TypeID)
        {
          Value = CFBooleanGetValue(v21);
          if (AMAuthInstallApImg4AddBooleanProperty(v8, v15, Value))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v23 = CFGetTypeID(v21);
          if (v23 != CFNumberGetTypeID())
          {
            goto LABEL_38;
          }

          v24 = v3[v12 / 8];
          if (CFNumberGetType(v24) == kCFNumberSInt32Type)
          {
            if (AMAuthInstallApImg4AddInteger32Property(v8, v15, v24))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (CFNumberGetType(v24) != kCFNumberSInt64Type)
            {
              v14 = "%s: unexpected integer type";
LABEL_38:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v14, "AMAuthInstallApImg4EncodeRestoreDict");
LABEL_39:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore property");
              goto LABEL_40;
            }

            if (AMAuthInstallApImg4AddInteger64Property(v8, v4[v12 / 8], v24))
            {
              goto LABEL_39;
            }
          }
        }
      }

      v12 += 8;
      if (v13 == v12)
      {
        goto LABEL_25;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "invalid overridesValue");
    goto LABEL_40;
  }

LABEL_25:
  if (!DEREncoderCreate())
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_3_1();
  if (CFStringGetCString(v25, v26, v27, v28))
  {
    strlen(__s);
    OUTLINED_FUNCTION_5_1();
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to add %@ string", @"IM4M");
      goto LABEL_40;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info properties as set");
    goto LABEL_40;
  }

  if (!DEREncoderCreate())
  {
LABEL_47:
    v29 = 2;
    goto LABEL_36;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info sequence");
    goto LABEL_40;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_40:
    v29 = 3;
    goto LABEL_36;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_47;
  }

  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_40;
  }

  v29 = 0;
LABEL_36:
  SafeFree(v4);
  SafeFree(v3);
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  return v29;
}

uint64_t AMAuthInstallApImg4CopyURLAddingExtension(const __CFAllocator *a1, CFURLRef url, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (!url)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  if (a3)
  {
    v3 = CFURLCopyPathExtension(url);
    v6 = CFURLCreateCopyDeletingPathExtension(a1, url);
    if (v6)
    {
      v10 = CFURLCreateCopyAppendingPathExtension(a1, v6, @"img4");
      v7 = v10;
      if (v10)
      {
        v4 = 0;
        *a3 = CFRetain(v10);
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_6:
  SafeRelease(v3);
  SafeRelease(v6);
  SafeRelease(v7);
  return v4;
}

uint64_t AMAuthInstallApImg4ReCreatePayloadWithProperties()
{
  v4 = 0;
  v39 = *MEMORY[0x29EDCA608];
  BytePtr = 0;
  Length = 0;
  PayloadWithProperties = 1;
  v6 = 0;
  OUTLINED_FUNCTION_1_3();
  if (v9 && v14)
  {
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v1 = v11;
    v2 = v12;
    v3 = v13;
    v0 = v14;
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v15);
    bzero(&v30, 0x90uLL);
    v19 = DERImg4DecodePayload(&BytePtr, &v30);
    if (v19)
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload, error:%d", v19);
      v4 = 0;
      v6 = 0;
      OUTLINED_FUNCTION_1_3();
      PayloadWithProperties = 99;
      goto LABEL_45;
    }

    if (v17 && !_DERItemEqualsCString(__s1, v17))
    {
      v4 = strdup(v17);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!__s1[0])
      {
        v4 = 0;
        goto LABEL_16;
      }

      v4 = strndup(__s1[0], __s1[1]);
      LOBYTE(PayloadWithProperties) = 0;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (!v16 || _DERItemEqualsCString(v32, v16))
    {
      if (!v32[0])
      {
        goto LABEL_16;
      }

      v20 = strndup(v32[0], v32[1]);
      if (!v20)
      {
        goto LABEL_16;
      }

LABEL_18:
      if (v18)
      {
        v21 = CFRetain(v18);
        LOBYTE(PayloadWithProperties) = 1;
        if (!v21)
        {
LABEL_31:
          OUTLINED_FUNCTION_1_3();
          PayloadWithProperties = 2;
LABEL_44:
          v6 = v20;
          goto LABEL_45;
        }
      }

      else
      {
        if (!v33)
        {
          goto LABEL_31;
        }

        v21 = OUTLINED_FUNCTION_13(0, v33, v34);
        if (!v21)
        {
          goto LABEL_31;
        }
      }

      v22 = v1;
      if (v1)
      {
        v22 = CFRetain(v1);
        v1 = v22;
        LOBYTE(PayloadWithProperties) = 1;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      else if (v35)
      {
        v22 = OUTLINED_FUNCTION_13(0, v35, v36);
        v1 = v22;
        if (!v22)
        {
          v2 = 0;
          goto LABEL_51;
        }

        if (!v2)
        {
LABEL_33:
          if (!v37)
          {
            v2 = 0;
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

          v2 = OUTLINED_FUNCTION_13(v22, v37, v38);
          if (v2)
          {
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

LABEL_51:
          v3 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v1 = 0;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      v2 = CFRetain(v2);
      LOBYTE(PayloadWithProperties) = 1;
      if (!v3)
      {
LABEL_36:
        bzero(v27, 0xA0uLL);
        v23 = DERImg4DecodePayloadWithProperties(&BytePtr, v27);
        if (v23)
        {
          AMAuthInstallLog(7, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload with properties (error=%d), assuming no properties", v23);
LABEL_38:
          v3 = 0;
          goto LABEL_41;
        }

        if (!v28)
        {
          goto LABEL_38;
        }

        v3 = OUTLINED_FUNCTION_13(v23, v28, v29);
        if (v3)
        {
LABEL_41:
          if ((PayloadWithProperties & 1) == 0)
          {
            PayloadWithProperties = 0;
            *v0 = CFRetain(v15);
LABEL_43:
            v0 = v21;
            goto LABEL_44;
          }

LABEL_48:
          PayloadWithProperties = AMAuthInstallApImg4CreatePayloadWithProperties(v4, v20, v21, v1, v2, v3, v0);
          goto LABEL_43;
        }

LABEL_52:
        PayloadWithProperties = 2;
        goto LABEL_43;
      }

LABEL_47:
      v3 = CFRetain(v3);
      goto LABEL_48;
    }

    v20 = strdup(v16);
    LOBYTE(PayloadWithProperties) = 1;
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_16:
    v6 = 0;
    OUTLINED_FUNCTION_1_3();
    PayloadWithProperties = 2;
  }

LABEL_45:
  SafeFree(v4);
  SafeFree(v6);
  SafeRelease(v0);
  SafeRelease(v1);
  SafeRelease(v2);
  SafeRelease(v3);
  return PayloadWithProperties;
}

uint64_t AMAuthInstallApImg4CreatePayloadWithProperties(const char *a1, const char *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6, CFDataRef *a7)
{
  v7 = 1;
  if (a1 && a2 && a3 && a7)
  {
    if (strlen(a1) != 4)
    {
      OUTLINED_FUNCTION_4_0();
      goto LABEL_21;
    }

    if (DEREncoderCreate() && DEREncoderCreate())
    {
      OUTLINED_FUNCTION_5_1();
      if (DEREncoderAddData())
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload tag to DER file", 0);
      }

      else
      {
        OUTLINED_FUNCTION_5_1();
        if (DEREncoderAddData())
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload type to DER file", 0);
        }

        else
        {
          strlen(a2);
          OUTLINED_FUNCTION_2_2();
          if (DEREncoderAddData())
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload version to DER file", 0);
          }

          else
          {
            CFDataGetBytePtr(a3);
            CFDataGetLength(a3);
            OUTLINED_FUNCTION_2_2();
            if (DEREncoderAddDataNoCopy())
            {
              goto LABEL_23;
            }

            if (a4)
            {
              CFDataGetBytePtr(a4);
              CFDataGetLength(a4);
              OUTLINED_FUNCTION_2_2();
              if (DEREncoderAddData())
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payloadKeybag to DER file", 0);
                goto LABEL_33;
              }
            }

            if (a5)
            {
              CFDataGetBytePtr(a5);
              CFDataGetLength(a5);
              OUTLINED_FUNCTION_2_2();
              if (DEREncoderAddData())
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payloadCompression to DER file", 0);
                goto LABEL_33;
              }
            }

            if (a6 && (CFDataGetBytePtr(a6), CFDataGetLength(a6), DEREncoderAddData()))
            {
LABEL_23:
              AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload data to DER file", 0);
            }

            else if (DEREncoderAddDataFromEncoderNoCopy())
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload to sequence", 0);
            }

            else
            {
              if (!DEREncoderCreateEncodedBuffer())
              {
                v7 = 0;
                *a7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], 0, 0, *MEMORY[0x29EDB8EE0]);
                goto LABEL_21;
              }

              AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to create DER encoded buffer: sequenceEncoder", 0);
            }
          }
        }
      }
    }

LABEL_33:
    v7 = 2;
  }

LABEL_21:
  DEREncoderDestroy();
  DEREncoderDestroy();
  return v7;
}

uint64_t AMAuthInstallApImg4GetPayloadPropertiesData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, CFDictionaryRef theDict)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "dstData cannot be NULL", theDict);
LABEL_35:
    OUTLINED_FUNCTION_4_0();
    goto LABEL_31;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "imageTag cannot be NULL", theDict);
    OUTLINED_FUNCTION_4_0();
LABEL_31:
    v14 = 1;
    goto LABEL_30;
  }

  if (!theDict)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "requestDict cannot be NULL", 0);
    goto LABEL_35;
  }

  Count = CFDictionaryGetCount(theDict);
  if (Count < 1)
  {
    OUTLINED_FUNCTION_4_0();
LABEL_29:
    v14 = 0;
  }

  else
  {
    v11 = Count;
    v12 = DEREncoderCreate();
    if (v12)
    {
      v4 = malloc(8 * v11);
      v5 = malloc(8 * v11);
      CFDictionaryGetKeysAndValues(theDict, v4, v5);
      if (CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]))
      {
        v13 = 0;
        v14 = 99;
        while (1)
        {
          v15 = v4[v13];
          if (!v15)
          {
            goto LABEL_31;
          }

          v16 = CFGetTypeID(v4[v13]);
          if (v16 != CFStringGetTypeID())
          {
            goto LABEL_31;
          }

          v17 = v5[v13];
          if (!v17)
          {
            goto LABEL_31;
          }

          v18 = CFGetTypeID(v17);
          if (v18 == CFDataGetTypeID())
          {
            break;
          }

          v20 = CFGetTypeID(v5[v13]);
          TypeID = CFBooleanGetTypeID();
          v22 = v5[v13];
          if (v20 == TypeID)
          {
            Value = CFBooleanGetValue(v22);
            v19 = AMAuthInstallApImg4AddBooleanProperty(v12, v15, Value);
            goto LABEL_17;
          }

          v24 = CFGetTypeID(v22);
          if (v24 == CFNumberGetTypeID())
          {
            v19 = AMAuthInstallApImg4AddInteger64Property(v12, v15, v5[v13]);
            goto LABEL_17;
          }

LABEL_18:
          if (v11 == ++v13)
          {
            if (!DEREncoderCreate())
            {
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_3_1();
            if (CFStringGetCString(v25, v26, v27, v28))
            {
              strlen(__s);
              OUTLINED_FUNCTION_5_1();
              if (DEREncoderAddData())
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "failed to add %@ string", a3);
                goto LABEL_30;
              }
            }

            if (DEREncoderAddSetFromEncoder())
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "failed to encode properties list as set");
              goto LABEL_30;
            }

            if (!DEREncoderCreate())
            {
              goto LABEL_37;
            }

            if (DEREncoderAddSequenceFromEncoder())
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "failed to encode restore info sequence");
              goto LABEL_30;
            }

            if (DEREncoderCreateEncodedBuffer())
            {
              v14 = 3;
              goto LABEL_30;
            }

            v29 = CFDataCreate(0, 0, 0);
            *a2 = v29;
            if (v29)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          }
        }

        v19 = AMAuthInstallApImg4AddDataProperty(v12, v15, v5[v13]);
LABEL_17:
        v14 = v19;
        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
    }

LABEL_37:
    v14 = 2;
  }

LABEL_30:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(v4);
  SafeFree(v5);
  return v14;
}

uint64_t AMAuthInstallApImg4DecodePayloadProperty(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 0uLL;
  v10 = 0uLL;
  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(a1, 0x2000000000000010, &v13);
  if (ItemWithTag)
  {
    return ItemWithTag;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v13, 0xA000000000000000, &v12);
  if (ItemWithTag)
  {
    return ItemWithTag;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v12, 0x2000000000000010, &v11);
  if (ItemWithTag)
  {
    return ItemWithTag;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v11, 0x2000000000000011, &v10);
  if (ItemWithTag)
  {
    return ItemWithTag;
  }

  v15 = 0uLL;
  v14 = 0;
  v6 = AMAuthInstallApImg4FindItemWithTag(&v10, a2, &v15);
  if (v6)
  {
    v8 = v6;
    AMSupportLogInternal(3, "AMAuthInstallApImg4FindProperty", "failed to find property tag 0x%016llx");
    return v8;
  }

  v16 = xmmword_29855C670;
  v17 = 0;
  v18 = xmmword_29855C680;
  v19 = 0;
  v7 = DERParseSequence(&v15, 2u, &v16, a3, 0);
  if (v7)
  {
    v8 = v7;
    AMSupportLogInternal(3, "AMAuthInstallApImg4FindProperty", "malformed Img4 Property (sequence parse fail)");
    return v8;
  }

  ItemWithTag = DERParseInteger(a3, &v14);
  if (ItemWithTag)
  {
    return ItemWithTag;
  }

  if ((v14 | 0xE000000000000000) != a2)
  {
    return 2;
  }

  v8 = 0;
  *(a3 + 16) = a2 | 0xE000000000000000;
  *(a3 + 40) = 4;
  return v8;
}

void _AMAuthInstallApImg4StitchToURL_cold_4(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", a1, v3);
  perror("error:");
}

void _AMAuthInstallApImg4StitchToURL_cold_5(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", "failed to open file %@, error=%s", a1, v3);
}

void _WriteStreamIntoFile_cold_1()
{
  v0 = __error();
  v1 = strerror(*v0);
  AMAuthInstallLog(3, "_WriteStreamIntoFile", "failed to stitch payload to file: %s", v1);

  perror("error:");
}

uint64_t AMAuthInstallApImg4LocalAddImages(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!theDict)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "requestDict cannot be NULL");
LABEL_23:
    v7 = 0;
    v8 = 0;
    Mutable = 0;
LABEL_24:
    v18 = 1;
    goto LABEL_18;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "dstEncoder cannot be NULL");
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v7 = malloc(8 * Count);
  v8 = malloc(8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v7, v8);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    v18 = 2;
    goto LABEL_18;
  }

  if (Count >= 1)
  {
    v10 = 0;
    do
    {
      v11 = v7[v10];
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = v8[v10];
      v13 = CFGetTypeID(v7[v10]);
      if (v13 != CFStringGetTypeID() || v12 == 0)
      {
        goto LABEL_24;
      }

      v15 = CFGetTypeID(v12);
      if (v15 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(v12, @"Digest"))
        {
          v20.length = CFArrayGetCount(Mutable);
          v20.location = 0;
          if (CFArrayGetFirstIndexOfValue(Mutable, v20, v11) == -1)
          {
            CFArrayAppendValue(Mutable, v11);
            TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(v11);
            if (!TypeForEntryName)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "did not find a matching tag for requestTag %@", v11);
              goto LABEL_24;
            }

            v17 = AMAuthInstallApImg4LocalAddImageProperties(TypeForEntryName, a3, TypeForEntryName, v12);
            if (v17)
            {
              v18 = v17;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "failed to add %@ image to the ticket body", v11);
              goto LABEL_18;
            }
          }
        }
      }
    }

    while (Count != ++v10);
  }

  v18 = 0;
LABEL_18:
  SafeFree(v7);
  SafeFree(v8);
  SafeRelease(Mutable);
  return v18;
}

uint64_t AMAuthInstallApImg4LocalRegisterKeys(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  if (*(v1 + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "local signing is not available for production fused devices.");
    return 14;
  }

  if (!*(a1 + 392))
  {
    if (*(v1 + 88) || *(v1 + 16))
    {
      if (*(v1 + 89))
      {
        v3 = *(v1 + 8);
        if (v3 == 32784)
        {
          v4 = @"ap.ticket.insec.rsa4k.key.private";
        }

        else
        {
          if (v3 != 35168)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "unrecognized chipid: 0x%08X", v3);
            return 1;
          }

          v4 = @"ap.ticket.insec.rsa1k.key.private";
        }
      }

      else
      {
        v4 = @"ap.ticket.localpolicy.hacktivation.key.private";
        if (!*(a1 + 505))
        {
          v4 = @"ap.ticket.dev.key.private";
        }
      }
    }

    else
    {
      v4 = @"ap.ticket.unfused.key.private";
    }

    *(a1 + 392) = v4;
  }

  v5 = CFDictionaryContainsKey(*(a1 + 376), @"ap.ticket.dev.key.private");
  if (v5)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_4(v5, @"ap.ticket.insec.rsa1k.key", &kImg4TicketInsecureRsa1kPrivateKey);
  v20 = v6;
  v19 = OUTLINED_FUNCTION_1_4(v6, @"ap.ticket.insec.rsa4k.key", &kImg4TicketInsecureRsa4kPrivateKey);
  v7 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v8 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v9 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_1_4(v9, @"ap.ticket.dev.key", &kImg4TicketDevPrivateKey);
  v12 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_1_4(v12, @"ap.ticket.unfused.key", &kImg4TicketUnfusedPrivatekey);
  v15 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v16 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v17 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v18 = v17;
  result = OUTLINED_FUNCTION_1_4(v17, @"ap.ticket.localpolicy.hacktivation.key.private", &kImg4TicketLocalPolicyHacktivationKey);
  if ((!v20 || !v19 || !v11 || !v14 || !result) && (!v7 || !v8 || !v10 || !v13 || !v15 || !v16 || !v18))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available");
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFTypeRef *a2)
{
  bytes = 0;
  if (!a1 || !a2)
  {
    Mutable = 0;
    v7 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  if (!Mutable)
  {
    v7 = 2;
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  if (!*(v6 + 20))
  {
    if (!*(a1 + 400))
    {
      if (*(a1 + 505))
      {
        v8 = @"ap.ticket.localpolicy.hacktivation.leaf.cert";
      }

      else if (*(v6 + 88) || *(v6 + 16))
      {
        if (*(v6 + 89))
        {
          v17 = *(v6 + 8);
          switch(v17)
          {
            case 32770:
              v8 = @"ap.ticket.8002.insec.cert";
              break;
            case 35168:
              if (!*(a1 + 408))
              {
                *(a1 + 408) = @"ap.ticket.ca.cert";
              }

              v13 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
              if (v13)
              {
                goto LABEL_46;
              }

              BytePtr = CFDataGetBytePtr(0);
              Length = CFDataGetLength(0);
              CFDataAppendBytes(Mutable, BytePtr, Length);
              v8 = @"ap.ticket.8960.insec.cert";
              break;
            case 32784:
              v8 = @"ap.ticket.8010.insec.cert";
              break;
            default:
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "unrecognized chipid: 0x%08X");
              goto LABEL_42;
          }
        }

        else
        {
          v8 = @"ap.ticket.8960.dev.cert";
        }
      }

      else
      {
        v8 = @"ap.ticket.8960.unfused.cert";
      }

      *(a1 + 400) = v8;
    }

    if (!*(a1 + 505))
    {
      v9 = *(a1 + 16);
      if (!*(v9 + 93))
      {
        v10 = *(v9 + 8);
        v11 = v10 == 32770 || v10 == 35168;
        if (!v11 && v10 != 32784)
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "chipid: 0x%08X unsupported for img4 local signing");
LABEL_42:
          v7 = 1;
          goto LABEL_6;
        }
      }
    }

    v13 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    if (!v13)
    {
      v14 = CFDataGetBytePtr(0);
      v15 = CFDataGetLength(0);
      CFDataAppendBytes(Mutable, v14, v15);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(Mutable);
        CFDataGetLength(Mutable);
        if (DEREncoderAddData())
        {
          v7 = 3;
          goto LABEL_6;
        }

        if (!DEREncoderCreateEncodedBuffer())
        {
          v7 = 0;
          *a2 = CFDataCreate(0, 0, 0);
          goto LABEL_26;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "%s: failed to create buffer", "AMAuthInstallApImg4LocalCreateEncodedCertificateChain");
      }

      v7 = 0;
      goto LABEL_26;
    }

LABEL_46:
    v7 = v13;
    goto LABEL_6;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "local signing is not available for production fused devices.");
  v7 = 14;
LABEL_6:
  SafeRelease(*a2);
LABEL_26:
  SafeRelease(Mutable);
  SafeFree(bytes);
  DEREncoderDestroy();
  return v7;
}

uint64_t AMAuthInstallApImg4LocalAddImageProperties(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "toEncoder cannot be NULL", a4);
LABEL_28:
    v11 = 1;
    goto LABEL_24;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "imageTag cannot be NULL", a4);
    goto LABEL_28;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "requestDict cannot be NULL", 0);
    goto LABEL_28;
  }

  v7 = DEREncoderCreate();
  if (!v7)
  {
    v11 = 2;
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"Digest");
  if (Value)
  {
    v9 = Value;
    if (CFDataGetLength(Value) < 1)
    {
      AMAuthInstallLog(6, "AMAuthInstallApImg4LocalAddImageProperties", "'%@' has zero length digest - skipping digest", a3);
    }

    else
    {
      v10 = AMAuthInstallApImg4AddDataProperty(v7, @"DGST", v9);
      if (v10)
      {
        v11 = v10;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add Digest property for '%@'", a3);
        goto LABEL_24;
      }
    }
  }

  v12 = CFDictionaryGetValue(a4, @"Trusted");
  if (v12 && (v13 = CFBooleanGetValue(v12), v14 = AMAuthInstallApImg4AddBooleanProperty(v7, @"EKEY", v13), v14))
  {
    v11 = v14;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EKEY property for '%@'", a3);
  }

  else
  {
    v15 = CFDictionaryGetValue(a4, @"DPRO");
    if (v15 && (v16 = CFBooleanGetValue(v15), v17 = AMAuthInstallApImg4AddBooleanProperty(v7, @"DPRO", v16), v17))
    {
      v11 = v17;
      AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DPRO property for '%@'", a3);
    }

    else
    {
      v18 = CFDictionaryGetValue(a4, @"DSEC");
      if (v18 && (v19 = CFBooleanGetValue(v18), v20 = AMAuthInstallApImg4AddBooleanProperty(v7, @"DSEC", v19), v20))
      {
        v11 = v20;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DSEC property for '%@'", a3);
      }

      else
      {
        v21 = CFDictionaryGetValue(a4, @"ESEC");
        if (v21 && (v22 = CFBooleanGetValue(v21), v23 = AMAuthInstallApImg4AddBooleanProperty(v7, @"ESEC", v22), v23))
        {
          v11 = v23;
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add ESEC property for '%@'", a3);
        }

        else
        {
          v24 = CFDictionaryGetValue(a4, @"EPRO");
          if (v24 && (v25 = CFBooleanGetValue(v24), v26 = AMAuthInstallApImg4AddBooleanProperty(v7, @"EPRO", v25), v26))
          {
            v11 = v26;
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EPRO property for '%@'", a3);
          }

          else
          {
            v27 = CFDictionaryGetValue(a4, @"TBMDigests");
            if (v27 && (v28 = AMAuthInstallApImg4AddDataProperty(v7, @"tbms", v27), v28))
            {
              v11 = v28;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add %@ property for '%@'", @"tbms", a3);
            }

            else
            {
              v11 = AMAuthInstallApImg4AddDictionaryProperty(v7, a2, a3);
              if (v11)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "AMAuthInstallApImg4LocalAddDictionaryProperty failed for '%@'", a3);
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  DEREncoderDestroy();
  return v11;
}

uint64_t AMAuthInstallBasebandServerRequestAddRequiredTags(uint64_t a1, __CFDictionary *a2, const void **a3)
{
  theDict = a2;
  if (!a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai is NULL");
LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters is NULL");
    goto LABEL_40;
  }

  if (!*(v4 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters->snum is NULL");
    goto LABEL_40;
  }

  v5 = a2;
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict is NULL", "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_41:
    a3 = 0;
LABEL_42:
    v23 = 1;
    goto LABEL_31;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v5))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict mistyped");
    goto LABEL_40;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: bbfwURL is NULL", "AMAuthInstallBasebandServerRequestAddRequiredTags");
    v5 = 0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_20();
  v11 = AMAuthInstallBasebandApplyTssOverrides(v8, v9, v10);
  if (v11)
  {
    v23 = v11;
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: failed to apply tss overrides");
LABEL_46:
    v5 = 0;
    a3 = 0;
    goto LABEL_31;
  }

  CFDictionarySetValue(v5, @"BbSNUM", *(*(a1 + 48) + 16));
  _CFDictionarySetInteger32(v5, @"BbChipID", *(*(a1 + 48) + 4));
  _CFDictionarySetInteger32(v5, @"BbGoldCertId", *(*(a1 + 48) + 8));
  v12 = *(*(a1 + 48) + 24);
  if (v12)
  {
    CFDictionarySetValue(v5, @"BbNonce", v12);
    CFDictionarySetValue(v5, @"@BBTicket", *MEMORY[0x29EDB8F00]);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    CFDictionarySetValue(v5, @"BbVendorData", v13);
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    CFDictionarySetValue(v5, @"BbAntennaType", v14);
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    CFDictionarySetValue(v5, @"BbBehavior", v15);
  }

  v16 = *(a1 + 424);
  if (v16)
  {
    Value = CFDictionaryGetValue(v16, @"BbRequestEntries");
    if (Value)
    {
      v18 = Value;
      v19 = CFGetAllocator(a1);
      v20 = AMAuthInstallSupportApplyDictionaryOverrides(v19, v18, &theDict, 0);
      if (v20)
      {
        v23 = v20;
        AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "failed to set Bb entitlements");
        goto LABEL_46;
      }
    }
  }

  Count = CFDictionaryGetCount(*(a1 + 200));
  v5 = malloc(8 * Count);
  v22 = malloc(8 * Count);
  a3 = v22;
  v23 = 2;
  if (v5 && v22)
  {
    OUTLINED_FUNCTION_20();
    CFDictionaryGetKeysAndValues(v24, v25, v26);
    if (Count < 1)
    {
LABEL_27:
      v31 = 0;
      if (!AMAuthInstallVinylIsLegacyChipId(a1, &v31) && v31 && (TagForKeyHashName = AMAuthInstallBasebandVinylAddMeasurementTags(a1, theDict), TagForKeyHashName))
      {
LABEL_32:
        v23 = TagForKeyHashName;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v27 = 0;
      while (1)
      {
        key = 0;
        v28 = *(v5 + v27);
        if (!v28)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "invalid HashKeysBuffer array");
          v23 = 99;
          goto LABEL_31;
        }

        TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(a1, v28, &key);
        if (TagForKeyHashName)
        {
          goto LABEL_32;
        }

        if (!key)
        {
          break;
        }

        CFDictionarySetValue(theDict, key, a3[v27++]);
        if (Count == v27)
        {
          goto LABEL_27;
        }
      }

      v23 = 3;
      AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "keyHashTag not found for %@", *(v5 + v27));
    }
  }

LABEL_31:
  SafeFree(v5);
  SafeFree(a3);
  return v23;
}

uint64_t AMAuthInstallBasebandCreateServerRequestDictionary(void *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4, const void **a5)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: measurementDict is NULL", a4);
LABEL_16:
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: outRequestDict is NULL", 0);
    goto LABEL_16;
  }

  if (!a5)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: bbfwURL is NULL", a4);
    goto LABEL_16;
  }

  v10 = CFGetAllocator(a1);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  v12 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"BasebandFirmware", a2);
    v13 = AMAuthInstallBasebandServerRequestAddRequiredTags(a1, v12, a5);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      if (a1[2])
      {
        AMAuthInstallApServerRequestAddRequiredTags(a1, v12, 0);
      }

      v14 = 0;
      *a4 = CFRetain(v12);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_12:
  SafeRelease(v12);
  return v14;
}

uint64_t AMAuthInstallBasebandCopyAllPersonalizedComponents(void *a1, const void **a2, const void *a3, __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v10 = a4;
  v133 = 0;
  theDict = a5;
  v132 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[6])
  {
    Mutable = 0;
    goto LABEL_188;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v100 = 2;
    goto LABEL_157;
  }

  v16 = *(a1[6] + 4);
  v17 = (v16 - 94) > 0xA || ((1 << (v16 - 94)) & 0x685) == 0;
  if (!v17)
  {
    OUTLINED_FUNCTION_4_1();
    v31 = AMAuthInstallApImg3SupportsLocalSigning();
    if (v31)
    {
      goto LABEL_189;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_12_0();
  if (v17 || v18 == 520417)
  {
LABEL_44:
    OUTLINED_FUNCTION_4_1();
    v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
    if (v31)
    {
      goto LABEL_189;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_14_0();
  if (v17 || v20 == 1327329 || v20 == 1515745 || v20 == 1700065 || v20 == 2044129 || v20 == 2089185 || v20 == 2814177)
  {
    OUTLINED_FUNCTION_4_1();
    v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
    if (v31)
    {
      goto LABEL_189;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_9_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_18();
    if (!v17)
    {
      OUTLINED_FUNCTION_8_1();
      if (v17)
      {
        OUTLINED_FUNCTION_4_1();
        v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
        if (v31)
        {
          goto LABEL_189;
        }

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_7_2();
      if (v17 || v27 == 7282913)
      {
        OUTLINED_FUNCTION_4_1();
        v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
        if (v31)
        {
          goto LABEL_189;
        }

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_11_0();
      if (!v17 && v29 != 9572577)
      {
        OUTLINED_FUNCTION_10_0();
        if (v32)
        {
          OUTLINED_FUNCTION_4_1();
          v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
          if (v31)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_59;
      }
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_1();
  v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
  if (v31)
  {
    goto LABEL_189;
  }

LABEL_59:
  v33 = a1[6];
  if (!*(v33 + 16))
  {
    goto LABEL_156;
  }

  if (v10)
  {
LABEL_61:
    if (*(v33 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v33 + 8));
      v35 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v35 = kAMAuthInstallTagBbPsi2PartialDigest;
        v36 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v36 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(v10, *v35);
      CFDictionaryRemoveValue(v10, *v36);
    }

LABEL_66:
    v37 = theDict;
    if (theDict)
    {
LABEL_67:
      Value = CFDictionaryGetValue(v37, @"BBTicket");
      if (Value)
      {
        v39 = Value;
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(v39);
        AMAuthInstallLogDumpMemory(8, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "BBTicket:", BytePtr, Length);
      }

LABEL_69:
      if ((*(a1[6] + 4) - 80) <= 0x18)
      {
        OUTLINED_FUNCTION_13_0();
        if (!v17)
        {
          v57 = OUTLINED_FUNCTION_1_5();
          v55 = AMAuthInstallBasebandRembrandtStitchFirmware(v57, v58, v59, v60);
          goto LABEL_145;
        }

        if (!v56)
        {
          v73 = OUTLINED_FUNCTION_1_5();
          v55 = AMAuthInstallBasebandICE3StitchFirmware(v73, v74, v75, v76);
          goto LABEL_145;
        }
      }

      OUTLINED_FUNCTION_12_0();
      if (v17 || v42 == 520417)
      {
LABEL_98:
        v51 = OUTLINED_FUNCTION_1_5();
        v55 = AMAuthInstallBasebandMAV10StitchFirmware(v51, v52, v53, v54);
LABEL_145:
        v100 = v55;
        if (v55)
        {
          goto LABEL_142;
        }

        v109 = a1[6];
        if (*(v109 + 24))
        {
          if (*(v109 + 4) != 80)
          {
            v110 = CFDictionaryGetValue(theDict, @"BBTicket");
            if (v110)
            {
              CFDictionaryAddValue(Mutable, @"bbticket.der", v110);
            }
          }
        }

        v111 = CFRetain(theDict);
        v133 = v111;
        if (a3 && *(a1[6] + 160))
        {
          v112 = AMAuthInstallVinylPersonalizeFirmware(a1, a3, 0, &v133, a6);
          if (v112)
          {
            v100 = v112;
            AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to personalize vinyl fw");
            goto LABEL_157;
          }

          v111 = v133;
        }

        v113 = AMAuthInstallBasebandVinylStitchFirmware(a1, a2, a3, v111, Mutable);
        if (v113)
        {
          v100 = v113;
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to stitch vinyl fw");
          goto LABEL_157;
        }

        v114 = AMAuthInstallProvisioningProvisionIfNecessary(a1, Mutable);
        if (v114)
        {
          v100 = v114;
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "AMAuthInstallProvisioningProvisionIfNecessary failed");
          goto LABEL_157;
        }

LABEL_156:
        v100 = 0;
        *a7 = CFRetain(Mutable);
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_14_0();
      if (v17)
      {
        v92 = OUTLINED_FUNCTION_1_5();
        v55 = AMAuthInstallBasebandMAV20StitchFirmware(v92, v93, v94, v95);
        goto LABEL_145;
      }

      if (v44 != 1327329)
      {
        if (v44 == 1515745)
        {
          goto LABEL_101;
        }

        if (v44 != 1700065)
        {
          if (v44 == 2044129)
          {
            v88 = OUTLINED_FUNCTION_1_5();
            v55 = AMAuthInstallBasebandMAV25StitchFirmware(v88, v89, v90, v91);
            goto LABEL_145;
          }

          if (v44 != 2089185 && v44 != 2814177)
          {
            OUTLINED_FUNCTION_9_0();
            if (v17)
            {
              v105 = OUTLINED_FUNCTION_1_5();
              v55 = AMAuthInstallBasebandJ2StitchFirmware(v105, v106, v107, v108);
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_10_0();
            if (v17)
            {
              v96 = OUTLINED_FUNCTION_1_5();
              v55 = AMAuthInstallBasebandN92StitchFirmware(v96, v97, v98, v99);
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_8_1();
            if (v17)
            {
              v101 = OUTLINED_FUNCTION_1_5();
              v55 = AMAuthInstallBasebandN94StitchFirmware(v101, v102, v103, v104);
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_7_2();
            if (v17 || v46 == 7282913)
            {
              v69 = OUTLINED_FUNCTION_1_5();
              v55 = AMAuthInstallBasebandN41StitchFirmware(v69, v70, v71, v72);
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_11_0();
            if (!v17 && v48 != 9572577 && v48 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v48);
              v100 = 13;
LABEL_142:
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to stitch bbfw");
              goto LABEL_157;
            }

            goto LABEL_98;
          }

LABEL_101:
          v61 = OUTLINED_FUNCTION_1_5();
          v55 = AMAuthInstallBasebandMAV22StitchFirmware(v61, v62, v63, v64);
          goto LABEL_145;
        }
      }

      v65 = OUTLINED_FUNCTION_1_5();
      v55 = AMAuthInstallBasebandMAV21StitchFirmware(v65, v66, v67, v68);
      goto LABEL_145;
    }

    LOBYTE(v131) = 0;
    if (!AMAuthInstallBasebandLocalSigningEnabled(a1, &v131))
    {
      v31 = AMAuthInstallBasebandCreateServerRequestDictionary(a1, v10, a6, &v132, a2);
      if (v31)
      {
        goto LABEL_189;
      }

      if (v131)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "this certid specifies local signing");
        v78 = *(a1[6] + 4) - 94;
        if (v78 <= 0xA && ((1 << v78) & 0x685) != 0)
        {
          OUTLINED_FUNCTION_3_2();
          v122 = AMAuthInstallBasebandRembrandtHandleLocalSigningRequest();
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_12_0();
        v87 = v17 || v79 == 520417 || v79 == 938209 || v79 == 1327329 || v79 == 1515745 || v79 == 1700065 || v79 == 2044129 || v79 == 2089185 || v79 == 2814177;
        if (v87 || (OUTLINED_FUNCTION_9_0(), v116 || (OUTLINED_FUNCTION_18(), v17) || (OUTLINED_FUNCTION_8_1(), v17)) || ((OUTLINED_FUNCTION_7_2(), !v17) ? (v118 = v117 == 7282913) : (v118 = 1), v118 || ((OUTLINED_FUNCTION_11_0(), !v17) ? (v120 = v119 == 9572577) : (v120 = 1), v120 || (OUTLINED_FUNCTION_10_0(), v17))))
        {
          v126 = OUTLINED_FUNCTION_3_2();
          v122 = AMAuthInstallBasebandJ2HandleLocalSigningRequest(v126, v127, v128, v129);
LABEL_183:
          v100 = v122;
          if (v122)
          {
            goto LABEL_157;
          }

          OUTLINED_FUNCTION_3_2();
          v31 = AMAuthInstallBasebandVinylLocalHandleRequest();
          if (!v31)
          {
            v37 = theDict;
            if (!theDict)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

LABEL_189:
          v100 = v31;
          goto LABEL_157;
        }

        AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v121);
LABEL_181:
        v100 = 14;
        goto LABEL_157;
      }

      v130 = 0;
      if (!AMAuthInstallBasebandSupportsServerSigning(a1, &v130))
      {
        if (v130 != 1)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "This chipid/certid does not support local or server personalization.");
          v100 = 13;
          goto LABEL_157;
        }

        v123 = OUTLINED_FUNCTION_3_2();
        v31 = AMAuthInstallRequestSendSync(v123, v124, v125);
        if (v31)
        {
          goto LABEL_189;
        }

        v37 = theDict;
        if (theDict)
        {
          goto LABEL_67;
        }

        goto LABEL_181;
      }
    }

LABEL_188:
    v100 = 1;
    goto LABEL_157;
  }

  v131 = 0;
  Measurements = AMAuthInstallBasebandCreateMeasurements(a1, a2, a3, &v131);
  if (!Measurements)
  {
    v10 = v131;
    v33 = a1[6];
    if (!v33)
    {
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  v100 = Measurements;
  v10 = 0;
LABEL_157:
  SafeRelease(v10);
  SafeRelease(v133);
  SafeRelease(theDict);
  SafeRelease(v132);
  SafeRelease(Mutable);
  SafeRelease(0);
  return v100;
}

uint64_t AMAuthInstallBasebandCreateMeasurements(void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v58 = 0;
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v59 = Mutable;
  v10 = a1[6];
  if (v10 && (v11 = *(v10 + 4)) != 0)
  {
    AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using set ChipID 0x%08X to measure", *(v10 + 4));
  }

  else
  {
    if (AMAuthInstallBasebandReadChipIDFromBbfw(a2, &v58))
    {
      if (AMAuthInstallBasebandICE3FirmwareSupported(a2))
      {
        v11 = 80;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using detected ICE3 ChipID 0x%08X to measure");
      }

      else
      {
        v11 = 5243105;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using default ChipID 0x%08X to measure");
      }
    }

    else
    {
      v11 = v58;
      if (!v58)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "chipid 0 read from Info.plist!");
        v43 = 14;
        goto LABEL_63;
      }

      AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using ChipID 0x%08X from Info.plist to measure", v58);
    }

    v55 = calloc(1uLL, 0xB0uLL);
    if (!v55)
    {
      a1[6] = 0;
      v43 = 2;
      goto LABEL_63;
    }

    v56 = v55;
    bzero(v55, 0xB0uLL);
    a1[6] = v56;
    v56[1] = v11;
  }

  if ((v11 - 80) <= 0x18)
  {
    OUTLINED_FUNCTION_16();
    if (!v12)
    {
      v25 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandRembrandtMeasureFirmware(v25, v26, v27);
      goto LABEL_55;
    }

    if (!v24)
    {
      v34 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandICE3MeasureFirmware(v34, v35, v36);
      goto LABEL_55;
    }
  }

  v12 = v11 == 241889 || v11 == 520417;
  if (v12)
  {
    goto LABEL_39;
  }

  switch(v11)
  {
    case 938209:
    case 1327329:
    case 1515745:
    case 1700065:
      goto LABEL_42;
    case 2044129:
      v37 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandMAV25MeasureFirmware(v37, v38, v39);
      goto LABEL_55;
    case 2089185:
    case 2814177:
LABEL_42:
      v28 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandMAV20MeasureFirmware(v28, v29, v30);
      goto LABEL_55;
    case 4587745:
      v47 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandJ2MeasureFirmware(v47, v48, v49);
LABEL_55:
      v43 = v23;
      if (v23)
      {
        goto LABEL_63;
      }

      v57 = 0;
      if (a3)
      {
        if (!AMAuthInstallVinylIsLegacyChipId(a1, &v57) && v57)
        {
          Measurements = AMAuthInstallVinylCreateMeasurements(a1, a3, &v59, 0);
          Mutable = v59;
          if (Measurements)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v51 = OUTLINED_FUNCTION_2_3();
        Measurements = AMAuthInstallBasebandVinylCreateMeasurements(v51, v52, v53);
        if (Measurements)
        {
LABEL_60:
          v43 = Measurements;
          goto LABEL_63;
        }
      }

      v43 = 0;
      *a4 = CFRetain(Mutable);
      Mutable = v59;
      goto LABEL_63;
    case 5243105:
      v40 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandN92MeasureFirmware(v40, v41, v42);
      goto LABEL_55;
    case 5898465:
      v44 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandN94MeasureFirmware(v44, v45, v46);
      goto LABEL_55;
    case 7278817:
    case 7282913:
      v31 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandN41MeasureFirmware(v31, v32, v33);
      goto LABEL_55;
    case 8343777:
    case 9572577:
    case 9781473:
LABEL_39:
      v20 = OUTLINED_FUNCTION_2_3();
      v23 = AMAuthInstallBasebandMAV10MeasureFirmware(v20, v21, v22);
      goto LABEL_55;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "unrecognized chipid: 0x%08X", v11);
  v43 = 13;
LABEL_63:
  SafeRelease(Mutable);
  return v43;
}

uint64_t AMAuthInstallBasebandLocalSigningEnabled(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2 && *(a1 + 48))
  {
    v7 = 0;
    if (AMAuthInstallBasebandSupportsServerSigning(a1, &v7 + 1))
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSigningEnabled", "failed to query is server signing is supported.");
    }

    else
    {
      BooleanValue = AMAuthInstallPreferencesGetBooleanValue(@"AuthInstallEnableLocalSigning", 0, 0);
      if (HIBYTE(v7) && BooleanValue != 1)
      {
        v6 = 0;
LABEL_8:
        result = 0;
        *a2 = v6;
        return result;
      }

      if (!AMAuthInstallBasebandSupportsLocalSigning(a1, &v7))
      {
        v6 = v7;
        goto LABEL_8;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSigningEnabled", "failed to query is local signing is supported.");
    }

    return 1;
  }

  return result;
}

uint64_t AMAuthInstallBasebandSupportsServerSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
LABEL_49:
      v20 = 0;
      goto LABEL_50;
    }

    if ((*(v4 + 4) - 80) > 0x18)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_13_0();
    if (!v6)
    {
      v20 = AMAuthInstallBasebandRembrandtSupportsServerSigning(v18);
LABEL_50:
      v2 = 0;
      *a2 = v20;
      return v2;
    }

    if (v19)
    {
LABEL_5:
      OUTLINED_FUNCTION_12_0();
      v6 = v6 || v5 == 520417;
      if (!v6)
      {
        OUTLINED_FUNCTION_14_0();
        if (!v6)
        {
          v8 = v7 == 1327329 || v7 == 1515745;
          v9 = v8 || v7 == 1700065;
          v10 = v9 || v7 == 2044129;
          v11 = v10 || v7 == 2089185;
          if (!v11 && v7 != 2814177)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v6)
            {
              OUTLINED_FUNCTION_10_0();
              if (!v6)
              {
                OUTLINED_FUNCTION_8_1();
                if (!v6)
                {
                  OUTLINED_FUNCTION_7_2();
                  if (!v6 && v13 != 7282913)
                  {
                    OUTLINED_FUNCTION_11_0();
                    v16 = v6 || v15 == 9572577;
                    if (!v16 && v15 != 9781473)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsServerSigning", "chipID: 0x%x is not supported for server signing", v15);
                      goto LABEL_49;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v20 = AMAuthInstallBasebandICE3SupportsServerSigning();
    goto LABEL_50;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandCopyAllComponents(const void *a1, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v4 = 1;
  v14 = 0;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v3 = Mutable;
    if (Mutable)
    {
      v13[0] = a1;
      v14 = Mutable;
      v10 = BbfwReaderStart(a2, _AddFirmware, v13);
      if (v10)
      {
        v4 = v10;
      }

      else
      {
        v11 = AMAuthInstallProvisioningProvisionIfNecessary(a1, v3);
        v4 = v11;
        if (v11)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllComponents", "AMAuthInstallProvisioningProvisionIfNecessary failed: %d", v11);
        }

        else
        {
          *a3 = CFRetain(v3);
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

CFIndex AMAuthInstallBasebandCopyFirmware(const void *a1, const void *a2, const void *a3)
{
  v7 = 0;
  v4 = AMAuthInstallBasebandCopyAllComponents(a1, a2, &v7);
  if (v4)
  {
    v5 = v4;
    AMAuthInstallLog(3, "AMAuthInstallBasebandCopyFirmware", "AMAuthInstallBasebandCopyAllComponents failed");
  }

  else
  {
    v5 = AMAuthInstallBasebandWriteFilesToBbfw(0, a3, v7);
    if (v5)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandCopyFirmware", "AMAuthInstallBasebandWriteFilesToBbfw failed");
    }
  }

  SafeRelease(v7);
  return v5;
}

CFIndex AMAuthInstallBasebandWriteFilesToBbfw(int a1, CFTypeRef cf, const __CFDictionary *a3)
{
  context = 0;
  v7 = BbfwWriterCreate(cf);
  if (!v7)
  {
    return 4;
  }

  CFDictionaryApplyFunction(a3, _AddToArchive, &context);
  BbfwWriterFinalize(v7);
  if (!context)
  {
    return 0;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandWriteFilesToBbfw", "Error writing bbfw zip: %@", context);
  Code = CFErrorGetCode(context);
  CFRelease(context);
  return Code;
}

uint64_t AMAuthInstallBasebandSetKeyHashRootManifest(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 208))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48)
    {
      OUTLINED_FUNCTION_21(*(v2 + 208));
      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHashRootManifest", "Invalid hash length");
      return 99;
    }
  }

  return result;
}

unint64_t AMAuthInstallBasebandPersonalizationRequired(unint64_t result)
{
  if (result)
  {
    v3 = *(result + 48);
    if (v3)
    {
      v4 = *(v3 + 96);
      v5 = v4 > 3 || v4 == 1;
      return !v5 && *(v3 + 16) || *(result + 168) || *(result + 176) != 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandPersonalizationRequired", "failed to get fusing status", v1, v2);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandSetFusings(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", "missing amai", cf);
    return 1;
  }

  if (!cf)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", "missing snum", 0);
    return 1;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDataGetTypeID())
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", "snum is not CFData", v9);
    return 1;
  }

  if (_AMAuthInstallBasebandCheckSnum(a2, cf))
  {
    return 1;
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  v10 = calloc(1uLL, 0xB0uLL);
  if (v10)
  {
    v11 = v10;
    bzero(v10, 0xB0uLL);
    *(a1 + 48) = v11;
    if ((a2 - 80) > 0x18 || (OUTLINED_FUNCTION_16(), v12) && v29)
    {
      v12 = a2 == 241889 || a2 == 520417;
      if (!v12 && a2 != 938209 && a2 != 1327329 && a2 != 1515745 && a2 != 1700065 && a2 != 2044129 && a2 != 2089185 && a2 != 2814177 && a2 != 4587745 && a2 != 5243105 && a2 != 5898465 && a2 != 7278817 && a2 != 7282913 && a2 != 8343777 && a2 != 9572577 && a2 != 9781473)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", "chipID: 0x%x is not supported", a2);
        v11 = *(a1 + 48);
LABEL_61:
        v11[1] = a2;
        v11[2] = a3;
        CFRetain(cf);
        result = OUTLINED_FUNCTION_17();
        v31 = *(a1 + 48);
        v31[2] = v32;
        v31[4] = 0;
        v31[5] = 0;
        v31[9] = 0;
        v31[10] = 0;
        v31[8] = 0;
        v31[13] = 0;
        v31[14] = 0;
        return result;
      }

      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *v11 = v28;
    goto LABEL_61;
  }

  *(a1 + 48) = 0;
  return 2;
}

uint64_t AMAuthInstallBasebandSetKeyHash(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 216))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      OUTLINED_FUNCTION_21(*(v2 + 216));
      OUTLINED_FUNCTION_21(*(v2 + 200));
      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHash", "Invalid hash length");
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandPersonalizeFirmwareInternal(void *a1, const void **a2, const void *a3, const void *a4, __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7)
{
  v12 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a4 && a2 && a1[6])
    {
      v10 = AMAuthInstallBasebandCopyAllPersonalizedComponents(a1, a2, a3, a5, a6, a7, &v12);
      v8 = v12;
      if (!v10)
      {
        v10 = AMAuthInstallBasebandWriteFilesToBbfw(0, a4, v12);
      }

      v9 = v10;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  SafeRelease(0);
  return v9;
}

uint64_t AMAuthInstallBasebandReadChipIDFromBbfw(const void *a1, _DWORD *a2)
{
  data = 0;
  v16 = 0;
  error = 0;
  if (!a1)
  {
    v4 = 0;
    v7 = 0;
    v10 = 1;
    goto LABEL_9;
  }

  v3 = BbfwReaderOpen(a1);
  v4 = v3;
  if (!v3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", "failed to open bbfw archive for reading");
    v7 = 0;
    v10 = 4;
    goto LABEL_9;
  }

  v5 = BbfwReaderFindAndCopyFileData(v3, @"Info.plist", &data);
  if (v5)
  {
    v10 = v5;
    v7 = 0;
    goto LABEL_9;
  }

  v6 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
  v7 = v6;
  if (!v6)
  {
    v13 = @"Info.plist";
    v14 = error;
    v12 = "failed to parse %@: %@";
LABEL_17:
    v10 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", v12, v13, v14);
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v6, @"com.apple.EmbeddedSoftwareRestore.Baseband.ChipId");
  if (!Value)
  {
    v13 = @"Info.plist";
    v12 = "failed to find ChipId in %@";
    goto LABEL_17;
  }

  v9 = Value;
  if (!_CFStringToUInt32(Value, &v16))
  {
    v13 = v9;
    v12 = "failed to convert ChipId(%@) to int";
    goto LABEL_17;
  }

  if (!v16)
  {
    v12 = "ChipId is 0 (invalid)";
    goto LABEL_17;
  }

  v10 = 0;
  *a2 = v16;
LABEL_9:
  BbfwReaderClose(v4);
  SafeRelease(data);
  SafeRelease(v7);
  SafeRelease(error);
  return v10;
}

uint64_t AMAuthInstallBasebandReadVersionFromBbfw(CFDataRef data, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  valuePtr = 0;
  error = 0;
  v4 = 1;
  if (!data || !a2)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  if (a3)
  {
    v8 = *MEMORY[0x29EDB8ED8];
    v9 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
    v3 = v9;
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, a2);
      v7 = Value;
      if (!Value)
      {
        v4 = 3;
        AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "failed to find VersionStr in %@", @"Info.plist");
        goto LABEL_10;
      }

      if (_CFStringToUInt32(Value, &valuePtr))
      {
        if (valuePtr)
        {
          v11 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
          v7 = v11;
          if (v11)
          {
            v4 = 0;
            *a3 = CFRetain(v11);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "Failed to create versionNumber");
            v4 = 2;
          }

          goto LABEL_10;
        }

        v13 = "Version is 0 (invalid)";
      }

      else
      {
        v14 = v7;
        v13 = "failed to convert VersionStr(%@) to int";
      }
    }

    else
    {
      v14 = @"Info.plist";
      v15 = error;
      v13 = "failed to parse %@: %@";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", v13, v14, v15);
    v7 = 0;
  }

LABEL_10:
  SafeRelease(v7);
  SafeRelease(v3);
  SafeRelease(error);
  return v4;
}

uint64_t AMAuthInstallBasebandSetFusingProfileName(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 168));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 168) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandCopyNextComponentName(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    if ((*(v2 + 4) - 80) > 0x18)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_13_0();
    if (v6)
    {
      if (v27)
      {
LABEL_4:
        OUTLINED_FUNCTION_12_0();
        v5 = v4;
        v6 = v6 || v3 == 520417;
        if (!v6 && v3 != 938209 && v3 != 1327329 && v3 != 1515745 && v3 != 1700065 && v3 != 2044129 && v3 != 2089185 && v3 != 2814177)
        {
          OUTLINED_FUNCTION_9_0();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_10_0();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_8_1();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_7_2();
          if (v6 || v18 == 7282913)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_11_0();
          v5 = v21;
          if (!v6 && v20 != 9572577 && v20 != 9781473)
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandCopyNextComponentName", "chipID: 0x%x is not supported", v20);
            return 99;
          }
        }

        return AMAuthInstallBasebandJ2CopyNextComponentName();
      }

      return AMAuthInstallBasebandICE3CopyNextComponentName(v24, v25);
    }

    else
    {

      return AMAuthInstallBasebandRembrandtCopyNextComponentName();
    }
  }

  else
  {
    *a2 = 0;
    return 99;
  }
}

uint64_t AMAuthInstallBasebandCreateUpdaterStateInfo(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    Mutable = 0;
    v10 = 0;
    v11 = 0;
    v2 = 0;
    OUTLINED_FUNCTION_6_2();
    v8 = 1;
    goto LABEL_25;
  }

  Mutable = 0;
  v8 = 1;
  if (!a2)
  {
    v10 = 0;
    v11 = 0;
    OUTLINED_FUNCTION_19();
    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_19();
  if (v12)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v13 = CFGetAllocator(a1);
      v10 = CFNumberCreate(v13, kCFNumberSInt32Type, *(a1 + 48));
      if (v10)
      {
        v14 = CFGetAllocator(a1);
        v11 = CFNumberCreate(v14, kCFNumberSInt32Type, (*(a1 + 48) + 4));
        if (v11)
        {
          v15 = CFGetAllocator(a1);
          v2 = CFNumberCreate(v15, kCFNumberSInt32Type, (*(a1 + 48) + 8));
          CFDictionarySetValue(Mutable, @"VendorID", v10);
          CFDictionarySetValue(Mutable, @"ChipID", v11);
          CFDictionarySetValue(Mutable, @"CertID", v2);
          v16 = *(a1 + 48);
          v17 = *(v16 + 16);
          if (v17)
          {
            CFDictionarySetValue(Mutable, @"ChipSerialNo", v17);
            v16 = *(a1 + 48);
          }

          v18 = *(v16 + 24);
          if (v18)
          {
            CFDictionarySetValue(Mutable, @"Nonce", v18);
          }

          v19 = *(a1 + 208);
          if (!v19)
          {
            OUTLINED_FUNCTION_6_2();
            v8 = 14;
            goto LABEL_25;
          }

          Value = CFDictionaryGetValue(v19, @"BbProvisioningManifestKeyHash");
          v20 = CFDictionaryGetValue(*(a1 + 208), @"BbCalibrationManifestKeyHash");
          if (!(Value | v20))
          {
            OUTLINED_FUNCTION_6_2();
LABEL_24:
            v8 = 0;
            *a2 = CFRetain(Mutable);
            goto LABEL_25;
          }

          v21 = v20;
          v22 = CFGetAllocator(a1);
          v23 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v3 = v23;
          if (v23)
          {
            if (Value)
            {
              CFDictionarySetValue(v23, @"SKeyHash", Value);
              AMAuthInstallLog(6, "AMAuthInstallBasebandCreateUpdaterStateInfo", "provisioning key status=%d", 0);
              v24 = 0;
            }

            else
            {
              v24 = 3;
              AMAuthInstallLog(3, "AMAuthInstallBasebandCreateUpdaterStateInfo", "provisioning key hash not found");
            }

            valuePtr = v24;
            if (v21)
            {
              CFDictionarySetValue(v3, @"CKeyHash", v21);
              AMAuthInstallLog(6, "AMAuthInstallBasebandCreateUpdaterStateInfo", "calibration key status=%d", 0);
              v25 = 0;
            }

            else
            {
              v25 = 3;
              AMAuthInstallLog(3, "AMAuthInstallBasebandCreateUpdaterStateInfo", "calibration key hash not found");
            }

            v30 = v25;
            v26 = CFGetAllocator(a1);
            v4 = CFNumberCreate(v26, kCFNumberSInt32Type, &valuePtr);
            if (v4)
            {
              CFDictionarySetValue(v3, @"SKeyStatus", v4);
              v27 = CFGetAllocator(a1);
              v28 = CFNumberCreate(v27, kCFNumberSInt32Type, &v30);
              if (v28)
              {
                Value = v28;
                CFDictionarySetValue(v3, @"CKeyStatus", v28);
                CFDictionarySetValue(Mutable, @"ManifestInfo", v3);
                goto LABEL_24;
              }
            }
          }

          else
          {
            v4 = 0;
          }

          Value = 0;
LABEL_34:
          v8 = 2;
          goto LABEL_25;
        }

LABEL_30:
        v2 = 0;
        OUTLINED_FUNCTION_6_2();
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

LABEL_25:
  SafeRelease(Mutable);
  SafeRelease(v10);
  SafeRelease(v11);
  SafeRelease(v2);
  SafeRelease(v4);
  SafeRelease(Value);
  SafeRelease(v3);
  return v8;
}

uint64_t AMAuthInstallBasebandSupportsLocalSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 4);
      v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
      if (!v6)
      {
        v21 = AMAuthInstallBasebandICE3SupportsServerSigning();
LABEL_50:
        v2 = 0;
        *a2 = v21;
        return v2;
      }

      OUTLINED_FUNCTION_12_0();
      if (v6 || v7 == 520417)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_14_0();
      v10 = v6 || v9 == 1327329;
      v11 = v10 || v9 == 1515745;
      v12 = v11 || v9 == 1700065;
      v13 = v12 || v9 == 2044129;
      v14 = v13 || v9 == 2089185;
      if (v14 || v9 == 2814177)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_9_0();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_18();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_8_1();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_7_2();
      if (v6 || v17 == 7282913)
      {
        v21 = AMAuthInstallBasebandN41SupportsLocalSigning(v16);
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_11_0();
      v20 = v6 || v19 == 9572577;
      if (v20 || (OUTLINED_FUNCTION_10_0(), v22))
      {
LABEL_44:
        v21 = AMAuthInstallBasebandJ2SupportsLocalSigning();
        goto LABEL_50;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsLocalSigning", "chipID: 0x%x is not supported for local signing", v23);
    }

    v21 = 0;
    goto LABEL_50;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandSetKeyHashInternal(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 200))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      OUTLINED_FUNCTION_21(*(v2 + 200));
      return 0;
    }

    else
    {
      Length = CFDataGetLength(v1);
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHashInternal", "Invalid hash length %d", Length);
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandMeasureFirmwareFromBbfw(int a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t), uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v11 = BbfwReaderFindAndCopyFileData(a5, a3, &v16);
  if (!a1 && v11)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "%@ absent; but ignoring", a3);
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  if (!v11)
  {
    v12 = a4(a2, v16, a6);
    if (!v12)
    {
      goto LABEL_8;
    }

    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, v12);
    AMAuthInstallLog(3, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "failed to measure %@: %@;", a3, LocalizedStatusString);
  }

  v14 = 0;
LABEL_9:
  SafeRelease(v16);
  return v14;
}

uint64_t AMAuthInstallBasebandStitchCopyFile(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 1;
  }

  CFRetain(cf);
  result = OUTLINED_FUNCTION_17();
  *a4 = v6;
  return result;
}

uint64_t AMAuthInstallBasebandStitchFirmwareFromBbfw(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **), uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  value = 0;
  v16 = 0;
  if (!BbfwReaderFindAndCopyFileData(a4, a2, &v16))
  {
    v11 = a3(a1, v16, a5, &value);
    if (v11)
    {
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, v11);
      AMAuthInstallLog(4, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "failed to stitch %@: %@; continuing anyway", a2, LocalizedStatusString);
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(a6, a2, value);
        v13 = 1;
        goto LABEL_7;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "stitch function returned NULL for %@; continuing anyway", a2);
    }
  }

  v13 = 0;
LABEL_7:
  SafeRelease(v16);
  SafeRelease(value);
  return v13;
}

uint64_t AMAuthInstallBasebandLocalProvisionDevice(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return v3;
  }

  v5 = *(v4 + 4);
  v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
  if (!v6)
  {

    return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  }

  OUTLINED_FUNCTION_12_0();
  v12 = v9;
  if (v6 || v11 == 520417)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_14_0();
  if (v6 || v14 == 1327329 || v14 == 1515745 || v14 == 1700065 || v14 == 2044129 || v14 == 2089185 || v14 == 2814177)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_0();
  if (v6)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_18();
  v12 = v9;
  if (v6)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_8_1();
  if (v6)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 || v21 == 7282913)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_11_0();
  v12 = v9;
  if (v6 || v23 == 9572577)
  {
LABEL_44:

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_10_0();
  if (!v26)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalProvisionDevice", "chipID: 0x%x is not supported for local provisioning", v29);
    return 13;
  }

  return AMAuthInstallBasebandN92LocalProvisionDevice(v27);
}

uint64_t AMAuthInstallBasebandSetAntennaType(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 144));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 144) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandSetBehavior(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 152));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 152) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandIsFused(uint64_t a1, _BYTE *a2)
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

  result = 0;
  v4 = *(v2 + 16);
  v5 = (*(v2 + 96) < 4u) & (0xDu >> (*(v2 + 96) & 0xF));
  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t AMAuthInstallBasebandGetChipID(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 4);
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandGetVersion(uint64_t a1, CFDataRef data, __CFDictionary *a3, const void *a4, const void *a5)
{
  value = 0;
  result = 1;
  if (a1 && data && a3 && a4)
  {
    if (AMAuthInstallBasebandReadVersionFromBbfw(data, a4, &value) || !value)
    {
      return 14;
    }

    else
    {
      CFDictionarySetValue(a3, a5, value);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandSupportsFDR(int a1, char *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 1;
  if (((a1 - 94) > 0xA || ((1 << (a1 - 94)) & 0x685) == 0) && a1 != 241889 && a1 != 520417 && a1 != 938209 && a1 != 1327329 && a1 != 1515745 && a1 != 1700065 && a1 != 2044129 && a1 != 2089185 && a1 != 2814177 && a1 != 8343777 && a1 != 9572577 && a1 != 9781473)
  {
    v2 = 0;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t AMAuthInstallBasebandGetRFSelfTestTicket(const void *a1, const __CFData *a2, int a3, int a4, int a5, CFDataRef *a6, int a7, uint64_t a8, char a9)
{
  theDict = 0;
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "Entering RF Self Test LAI API to get a signed ticket");
  if (!a1)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inSnum is NULL");
LABEL_30:
    v19 = 0;
LABEL_38:
    a2 = 0;
    goto LABEL_44;
  }

  if (!a2)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inNonce is NULL");
    v19 = 0;
    goto LABEL_44;
  }

  if (!a6)
  {
    goto LABEL_30;
  }

  v17 = *MEMORY[0x29EDB8ED8];
  v18 = AMAuthInstallCreate(*MEMORY[0x29EDB8ED8]);
  v19 = v18;
  if (!v18)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "amai is NULL");
    a2 = 0;
    goto LABEL_33;
  }

  v20 = AMAuthInstallBasebandSetFusings(v18, a3, a4, a1);
  if (v20)
  {
    v29 = v20;
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "invalid baseband fusings");
    a2 = 0;
    goto LABEL_28;
  }

  if (AMAuthInstallBasebandSetNonce(v19, a2))
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "invalid baseband fusings");
    goto LABEL_38;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "will check signing support now");
  v33 = 0;
  v21 = AMAuthInstallBasebandSupportsServerSigning(v19, &v33);
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing support check completed");
  if (v21)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing support check failed");
    goto LABEL_38;
  }

  if (v33 != 1)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing NOT supported");
    goto LABEL_38;
  }

  v22 = CFGetAllocator(v19);
  Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  a2 = Mutable;
  if (!Mutable)
  {
    goto LABEL_33;
  }

  v24 = v19[6];
  if (!v24)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "amai->bbParameters is NULL");
    goto LABEL_44;
  }

  v25 = *(v24 + 24);
  if (v25)
  {
    CFDictionarySetValue(Mutable, @"BbNonce", v25);
    v24 = v19[6];
  }

  v26 = *(v24 + 16);
  if (v26)
  {
    CFDictionarySetValue(a2, @"BbSNUM", v26);
    v24 = v19[6];
  }

  v27 = *(v24 + 4);
  if (v27)
  {
    _CFDictionarySetInteger32(a2, @"BbChipID", v27);
    v24 = v19[6];
  }

  v28 = *(v24 + 8);
  if (v28)
  {
    _CFDictionarySetInteger64(a2, @"BbGoldCertId", v28);
  }

  _CFDictionarySetInteger32(a2, @"BbFieldDiagsEnable", a5);
  if (a9)
  {
    if (a8)
    {
      if (a7)
      {
        _CFDictionarySetInteger64(a2, @"ApECID", a8);
        _CFDictionarySetInteger32(a2, @"ApChipID", a7);
        goto LABEL_23;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inApChipID is zero");
    }

    else
    {
      AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inApECID is zero");
    }

LABEL_44:
    v29 = 1;
    goto LABEL_28;
  }

LABEL_23:
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "will start signing now");
  v29 = AMAuthInstallRequestSendSync(v19, a2, &theDict);
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing done");
  if (!v29)
  {
    if (!theDict)
    {
      v29 = 14;
      goto LABEL_28;
    }

    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "returning the ticket content");
    if (!CFDictionaryContainsKey(theDict, @"BBTicket"))
    {
      v29 = 8;
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(theDict, @"BBTicket");
    Copy = CFDataCreateCopy(v17, Value);
    *a6 = Copy;
    if (Copy)
    {
      v29 = 0;
      goto LABEL_28;
    }

LABEL_33:
    v29 = 2;
  }

LABEL_28:
  SafeRelease(a2);
  SafeRelease(theDict);
  SafeRelease(v19);
  return v29;
}

uint64_t AMAuthInstallBasebandICE3MeasureRamPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  OUTLINED_FUNCTION_3_3();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_2_4();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyRamPsi(v7, &theData), v10) || (v11 = CFGetAllocator(a1), BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(theData), v10 = _AMAuthInstallCopyPsiMeasurementAndVersion(v11, BytePtr, Length, &v19, &value), v10))
    {
      v17 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_4_2(v10, v14, "Version = %@");
      CFDictionarySetValue(a3, @"RamPSI-Version", value);
      OUTLINED_FUNCTION_4_2(v15, v16, "PartialDigest = %@");
      CFDictionarySetValue(a3, @"RamPSI-PartialDigest", v19);
      v17 = 0;
    }
  }

  else
  {
    v17 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v19);
  return v17;
}

uint64_t AMAuthInstallBasebandICE3StitchRamPsi()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_3();
  v4 = CFGetAllocator(v3);
  v5 = FlsParserCreate(v4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_9_1();
    if (v6 || (v6 = FlsParserCopyRamPsi(v5, &v18), v6))
    {
      v14 = v6;
      v9 = 0;
    }

    else
    {
      AMAuthInstallDebugWriteObject(v2, v18, @"RamPSI-Original", 1);
      v7 = _AMAuthInstallBasebandStitchICE3Psi(v2, v18, v1, @"RamPSI-Blob", &v17);
      v9 = v17;
      if (v7 || (OUTLINED_FUNCTION_8_2(v2, v8, @"RamPSI-Personalized"), v10 = OUTLINED_FUNCTION_2_4(), v7 = FlsParserReplaceRamPsi(v10, v11), v7))
      {
        v14 = v7;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_6_3();
        v14 = FlsParserCopyAsData(v12, v13);
        if (!v14)
        {
          *v0 = CFRetain(cf);
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v14 = 2;
  }

  SafeRelease(v5);
  SafeRelease(v18);
  SafeRelease(v9);
  SafeRelease(cf);
  return v14;
}

uint64_t _AMAuthInstallBasebandStitchICE3Psi(const void **a1, const void *a2, CFDictionaryRef theDict, const void *a4, CFTypeRef *a5)
{
  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", @"BasebandFirmware");
LABEL_8:
    v14 = 0;
    v19 = 8;
    goto LABEL_5;
  }

  v10 = CFDictionaryGetValue(Value, a4);
  if (!v10)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", a4);
    goto LABEL_8;
  }

  v11 = v10;
  AMAuthInstallDebugWriteObject(a1, a2, a4, 1);
  v12 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v12, 0, a2);
  v14 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v16 = CFDataGetLength(v11);
    CFDataSetLength(v14, Length - v16);
    BytePtr = CFDataGetBytePtr(v11);
    v18 = CFDataGetLength(v11);
    CFDataAppendBytes(v14, BytePtr, v18);
    v19 = 0;
    *a5 = CFRetain(v14);
  }

  else
  {
    v19 = 2;
  }

LABEL_5:
  SafeRelease(v14);
  return v19;
}

uint64_t AMAuthInstallBasebandICE3MeasureEbl(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v14 = 0;
  theData = 0;
  v5 = CFGetAllocator(a1);
  v6 = FlsParserCreate(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_9_1();
    if (v7 || (v7 = FlsParserCopyEbl(v6, &theData), v7))
    {
      v11 = v7;
      v12 = 0;
    }

    else
    {
      v8 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v11 = _AMAuthInstallCopyBufferMeasurement(v8, BytePtr, Length, &v14);
      v12 = v14;
      if (!v11)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureEbl", "Digest = %@", v14);
        CFDictionarySetValue(a3, @"EBL-Digest", v12);
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = 2;
  }

  SafeRelease(v6);
  SafeRelease(theData);
  SafeRelease(v12);
  return v11;
}

uint64_t AMAuthInstallBasebandICE3StitchEbl(const void **a1, const __CFData *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  cf = 0;
  theData = 0;
  Value = CFDictionaryGetValue(theDict, @"BBTicket");
  if (!Value)
  {
    v11 = 0;
    v24 = 8;
    goto LABEL_12;
  }

  if (!*(a1[6] + 3))
  {
    v24 = 0;
    v11 = 0;
LABEL_11:
    Value = 0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2(a1, v7, @"BB-Ticket");
  v9 = CFGetAllocator(a1);
  v10 = FlsParserCreate(v9);
  v11 = v10;
  if (!v10)
  {
    Value = 0;
    goto LABEL_16;
  }

  v12 = FlsParserReadFromData(v10, a2);
  if (v12 || (v13 = OUTLINED_FUNCTION_6_3(), v12 = FlsParserCopyEbl(v13, v14), v12))
  {
    v24 = v12;
    goto LABEL_11;
  }

  v15 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v15, 0, Value);
  Value = MutableCopy;
  if (!MutableCopy)
  {
LABEL_16:
    v24 = 2;
    goto LABEL_12;
  }

  Length = CFDataGetLength(MutableCopy);
  CFDataAppendBytes(Value, AMAuthInstallBasebandICE3StitchEbl_kPaddingBytes, -Length & 3);
  BytePtr = CFDataGetBytePtr(theData);
  v19 = CFDataGetLength(theData);
  CFDataAppendBytes(Value, BytePtr, v19);
  OUTLINED_FUNCTION_8_2(a1, v20, @"EBL-Personalized");
  v21 = OUTLINED_FUNCTION_2_4();
  v23 = FlsParserReplaceEbl(v21, v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = FlsParserCopyAsData(v11, &cf);
    if (!v24)
    {
      *a4 = CFRetain(cf);
    }
  }

LABEL_12:
  SafeRelease(v11);
  SafeRelease(theData);
  SafeRelease(cf);
  SafeRelease(Value);
  return v24;
}

uint64_t AMAuthInstallBasebandICE3MeasureFlashPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  theData = 0;
  value = 0;
  OUTLINED_FUNCTION_3_3();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_2_4();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyFlashPsi(v7, &theData, &v28), v10) || (v11 = CFGetAllocator(a1), v12 = CFDataGetBytePtr(theData), v13 = CFDataGetLength(theData), v10 = _AMAuthInstallCopyPsiMeasurementAndVersion(v11, v12, v13, &v27, &value), v10))
    {
      v24 = v10;
      v21 = 0;
    }

    else
    {
      v14 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(v28);
      Length = CFDataGetLength(v28);
      v17 = _AMAuthInstallCopyBufferMeasurement(v14, BytePtr, Length, &v26);
      if (v17)
      {
        v24 = v17;
        v21 = v26;
      }

      else
      {
        OUTLINED_FUNCTION_4_2(v17, v18, "Version = %@");
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        OUTLINED_FUNCTION_4_2(v19, v20, "PartialDigest = %@");
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", v27);
        v21 = v26;
        OUTLINED_FUNCTION_4_2(v22, v23, "SecPack Digest = %@");
        CFDictionarySetValue(a3, @"FlashPSI-SecPackDigest", v21);
        v24 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
    v24 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v28);
  SafeRelease(v27);
  SafeRelease(v21);
  return v24;
}

uint64_t AMAuthInstallBasebandICE3StitchFlashPsi()
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(v3 + 48) + 24))
  {
    OUTLINED_FUNCTION_7_3();
    v5 = CFGetAllocator(v4);
    v6 = FlsParserCreate(v5);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_9_1();
      if (v7 || (v7 = FlsParserCopyFlashPsi(v6, &v19, 0), v7))
      {
        v15 = v7;
        v10 = 0;
      }

      else
      {
        AMAuthInstallDebugWriteObject(v2, v19, @"FlashPsi-Original", 1);
        v8 = _AMAuthInstallBasebandStitchICE3Psi(v2, v19, v1, @"FlashPSI-Blob", &v18);
        v10 = v18;
        if (v8 || (OUTLINED_FUNCTION_8_2(v2, v9, @"FlashPsi-Personalized"), v11 = OUTLINED_FUNCTION_2_4(), v8 = FlsParserReplaceFlashPsi(v11, v12), v8))
        {
          v15 = v8;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_6_3();
          v15 = FlsParserCopyAsData(v13, v14);
          if (!v15)
          {
            *v0 = CFRetain(cf);
          }
        }
      }
    }

    else
    {
      v10 = 0;
      v15 = 2;
    }
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v6 = 0;
  }

  SafeRelease(v6);
  SafeRelease(v19);
  SafeRelease(v10);
  SafeRelease(cf);
  return v15;
}

uint64_t AMAuthInstallBasebandICE3MeasureModemStack(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  v26 = 0;
  theData = 0;
  v24 = 0;
  v25 = 0;
  v6 = CFGetAllocator(a1);
  v7 = FlsParserCreate(v6);
  v8 = v7;
  if (!v7)
  {
    v22 = 0;
    v14 = 0;
    v17 = 0;
LABEL_14:
    v21 = 2;
    goto LABEL_8;
  }

  v9 = FlsParserReadFromData(v7, a2);
  if (v9 || (v9 = FlsParserCopyModemStack(v8, &theData, &v26), v9))
  {
    v21 = v9;
    v22 = 0;
    v14 = 0;
LABEL_12:
    v17 = 0;
    goto LABEL_8;
  }

  v10 = CFGetAllocator(a1);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v13 = _AMAuthInstallCopyBufferMeasurement(v10, BytePtr, Length, &v25);
  v14 = v25;
  if (v13)
  {
    v21 = v13;
    v22 = 0;
    goto LABEL_12;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "Digest = %@", v25);
  CFDictionarySetValue(a3, @"ModemStack-Digest", v14);
  v15 = CFGetAllocator(a1);
  v16 = CFDataGetLength(theData);
  v17 = CFStringCreateWithFormat(v15, 0, @"0x%08lx", v16);
  if (!v17)
  {
    v22 = 0;
    goto LABEL_14;
  }

  CFDictionarySetValue(a3, @"ModemStack-Length", v17);
  v18 = CFGetAllocator(a1);
  v19 = CFDataGetBytePtr(v26);
  v20 = CFDataGetLength(v26);
  v21 = _AMAuthInstallCopyBufferMeasurement(v18, v19, v20, &v24);
  v22 = v24;
  if (!v21)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "SecPack Digest = %@", v24);
    CFDictionarySetValue(a3, @"ModemStack-SecPackDigest", v22);
  }

LABEL_8:
  SafeRelease(v8);
  SafeRelease(theData);
  SafeRelease(v26);
  SafeRelease(v14);
  SafeRelease(v22);
  SafeRelease(v17);
  return v21;
}

uint64_t AMAuthInstallBasebandICE3StitchWorld()
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  OUTLINED_FUNCTION_3_3();
  if (!v0 || (v3 = v0, !v0[6]))
  {
    v7 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v1;
  v6 = CFGetAllocator(v0);
  v7 = FlsParserCreate(v6);
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = OUTLINED_FUNCTION_9_1();
  if (!v8)
  {
    v8 = FlsParserCopyRamPsi(v7, &v25);
    if (!v8)
    {
      if (!*(v3[6] + 24) || (v8 = FlsParserCopyFlashPsi(v7, &v24, 0), !v8) && (v8 = FlsParserCopyEbl(v7, &v23), !v8))
      {
        Value = CFDictionaryGetValue(v5, @"BasebandFirmware");
        v9 = Value;
        if (!Value)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchWorld", "server response doesn't contain personalization data");
          goto LABEL_8;
        }

        v12 = CFDictionaryGetValue(Value, @"RamPSI-Blob");
        v13 = CFDictionaryGetValue(v9, @"FlashPSI-Blob");
        v14 = CFDictionaryGetValue(v5, @"BBTicket");
        if (v25 && v12)
        {
          v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v25, v12, &v22);
          if (v8)
          {
            goto LABEL_6;
          }

          OUTLINED_FUNCTION_5_3(v8, v25, @"rampsi-original");
          v15 = AMAuthInstallDebugWriteObject(v3, v12, @"rampsi-stitch", 1);
          OUTLINED_FUNCTION_5_3(v15, v22, @"rampsi-personalized");
        }

        if (!v24 || !v13)
        {
          goto LABEL_21;
        }

        v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v24, v13, &v21);
        if (!v8)
        {
          OUTLINED_FUNCTION_5_3(v8, v24, @"flashpsi-original");
          v16 = AMAuthInstallDebugWriteObject(v3, v13, @"flashpsi-stitch", 1);
          OUTLINED_FUNCTION_5_3(v16, v21, @"flashpsi-personalized");
LABEL_21:
          if (!v23 || !v14)
          {
LABEL_25:
            if (v22)
            {
              FlsParserReplaceRamPsi(v7, v22);
            }

            if (v21)
            {
              FlsParserReplaceFlashPsi(v7, v21);
            }

            if (v20)
            {
              FlsParserReplaceEbl(v7, v20);
            }

            v17 = OUTLINED_FUNCTION_6_3();
            FlsParserCopyAsData(v17, v18);
            if (cf)
            {
              v9 = 0;
              *v4 = CFRetain(cf);
              goto LABEL_8;
            }

LABEL_33:
            v9 = 2;
            goto LABEL_8;
          }

          v8 = AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(v3, v23, v14, &v20);
          if (!v8)
          {
            OUTLINED_FUNCTION_5_3(v8, v20, @"ticket-plus-ebl");
            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_6:
  v9 = v8;
LABEL_8:
  SafeRelease(v7);
  SafeRelease(v25);
  SafeRelease(v24);
  SafeRelease(v23);
  SafeRelease(v22);
  SafeRelease(v21);
  SafeRelease(v20);
  SafeRelease(cf);
  return v9;
}

uint64_t AMAuthInstallBasebandICE3CopyNextComponentName(uint64_t a1, void *a2)
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

  if (*(v2 + 4) != 80)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "unsupported chipID: 0x%08x");
    return 1;
  }

  if (!*(v2 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "missing snum");
    return 1;
  }

  if (*(v2 + 24))
  {
    v4 = @"stack.bbfw";
  }

  else
  {
    v4 = @"boot.bbfw";
  }

  v5 = CFRetain(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v6 = BbfwReaderOpen(cf);
    v4 = v6;
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_0_0(v6, @"psi_ram.fls");
      v8 = OUTLINED_FUNCTION_0_0(v7, @"ebl.fls");
      v9 = OUTLINED_FUNCTION_0_0(v8, @"psi_flash.fls");
      v10 = OUTLINED_FUNCTION_0_0(v9, @"stack.fls");
      v11 = OUTLINED_FUNCTION_0_0(v10, @"world.fls");
      OUTLINED_FUNCTION_0_0(v11, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandICE3MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (!v5)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
      goto LABEL_10;
    }

    v7 = OUTLINED_FUNCTION_1_6(v5, v6, @"psi_ram.fls");
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"ebl.fls");
      if (v9)
      {
        v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"psi_flash.fls");
        if (v11)
        {
          v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"stack.fls");
          if (v13)
          {
            OUTLINED_FUNCTION_1_6(v13, v14, @"world.fls");
            v4 = 0;
            goto LABEL_10;
          }

          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to measure: stack.fls");
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to measure: psi_flash.fls");
        }
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to measure: ebl.fls");
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to measure: psi_ram.fls");
    }

    v4 = 15;
  }

LABEL_10:
  BbfwReaderClose(v3);
  return v4;
}

BOOL AMAuthInstallBasebandICE3FirmwareSupported(const void *a1)
{
  if (!a1)
  {
    v2 = 0;
LABEL_7:
    v3 = 0;
    goto LABEL_4;
  }

  v1 = BbfwReaderOpen(a1);
  v2 = v1;
  if (!v1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3FirmwareSupported", "failed to open bbfw archive for reading");
    goto LABEL_7;
  }

  v3 = BbfwReaderFindFile(v1, @"psi_ram.fls") == 0;
LABEL_4:
  BbfwReaderClose(v2);
  return v3;
}

uint64_t AMAuthInstallBasebandJ2StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_0_0(v7, @"ENPRG.mbn");
      OUTLINED_FUNCTION_0_0(v8, @"dbl.mbn");
      OUTLINED_FUNCTION_2(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      OUTLINED_FUNCTION_2(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      OUTLINED_FUNCTION_2(a1, @"dsp1.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v9 = OUTLINED_FUNCTION_2(a1, @"dsp2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v10 = OUTLINED_FUNCTION_0_0(v9, @"partition.mbn");
      OUTLINED_FUNCTION_0_0(v10, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandJ2StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandJ2MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_1_6(v5, v6, @"ENPRG.mbn");
      if (v7)
      {
        v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"dbl.mbn");
        if (v9)
        {
          v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"osbl.mbn");
          if (v11)
          {
            v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"amss.mbn");
            if (v13)
            {
              v15 = OUTLINED_FUNCTION_1_6(v13, v14, @"dsp1.mbn");
              if (v15)
              {
                v17 = OUTLINED_FUNCTION_1_6(v15, v16, @"dsp2.mbn");
                if (v17)
                {
                  if (OUTLINED_FUNCTION_1_6(v17, v18, @"partition.mbn"))
                  {
                    v4 = 0;
                  }

                  else
                  {
                    v4 = 15;
                    AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: partition.mbn");
                  }
                }

                else
                {
                  v4 = 15;
                  AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: dsp2.mbn");
                }
              }

              else
              {
                v4 = 15;
                AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: dsp1.mbn");
              }
            }

            else
            {
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: amss.mbn");
            }
          }

          else
          {
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: osbl.mbn");
          }
        }

        else
        {
          v4 = 15;
          AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: dbl.mbn");
        }
      }

      else
      {
        v4 = 15;
        AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to measure: ENPRG.mbn");
      }
    }

    else
    {
      v4 = 4;
      AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", "failed to open bbfw archive for reading");
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV10StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      v7 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"apps.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"dsp3.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"mba.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"qdsp6sw.mbn");
      v12 = OUTLINED_FUNCTION_1_7(v11, @"rpm.mbn");
      v13 = OUTLINED_FUNCTION_1_7(v12, @"tz.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"wdt.mbn");
      OUTLINED_FUNCTION_1_7(v14, @"bbcfg.mbn");
      OUTLINED_FUNCTION_2(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV10MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (!v7)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
      goto LABEL_47;
    }

    v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"acdb.mbn");
    if (!v9)
    {
      AMAuthInstallLog(4, "AMAuthInstallBasebandMAV10MeasureFirmware", "missing acdb or failed to measure image");
    }

    if (!OUTLINED_FUNCTION_1_6(v9, v10, @"apps.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v14 = v14 || v13 == 520417;
    if (!v14 && v13 != 9781473)
    {
      v11 = OUTLINED_FUNCTION_1_6(v11, v12, @"dsp3.mbn");
      if (!v11)
      {
        goto LABEL_48;
      }
    }

    v16 = OUTLINED_FUNCTION_1_6(v11, v12, @"mba.mbn");
    if (!v16 || !OUTLINED_FUNCTION_1_6(v16, v17, @"qdsp6sw.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v21 = v14 || v20 == 9781473;
    v22 = @"restoresbl1.mbn";
    if (v21 || v20 == 520417)
    {
      v18 = OUTLINED_FUNCTION_1_6(v18, v19, @"restoresbl1.mbn");
      if (!v18)
      {
        goto LABEL_48;
      }

      v22 = @"Info.plist";
      v24 = AMAuthInstallBasebandGetRestoreSbl1Version;
    }

    else
    {
      v24 = AMAuthInstallMonetMeasureRestoreSbl1;
    }

    v25 = OUTLINED_FUNCTION_2_5(v18, v19, v22, v24);
    if (!v25 || !OUTLINED_FUNCTION_1_6(v25, v26, @"rpm.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v30 = v14 || v29 == 9781473;
    v31 = @"sbl1.mbn";
    if (v30 || v29 == 520417)
    {
      v27 = OUTLINED_FUNCTION_1_6(v27, v28, @"sbl1.mbn");
      if (!v27)
      {
        goto LABEL_48;
      }

      v31 = @"Info.plist";
      v33 = AMAuthInstallBasebandGetSbl1Version;
    }

    else
    {
      v33 = AMAuthInstallMonetMeasureSbl1;
    }

    v34 = OUTLINED_FUNCTION_2_5(v27, v28, v31, v33);
    if (v34)
    {
      v36 = OUTLINED_FUNCTION_1_6(v34, v35, @"tz.mbn");
      if (v36)
      {
        v38 = *(*(a1 + 48) + 4);
        v39 = AMAuthInstallMonetMeasureWdt;
        if (v38 != 8343777)
        {
          if (v38 != 9572577)
          {
LABEL_46:
            OUTLINED_FUNCTION_1_6(v36, v37, @"bbcfg.mbn");
            v4 = 0;
            goto LABEL_47;
          }

          v39 = AMAuthInstallMonetMeasureWdtElf;
        }

        v36 = AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, a1, @"wdt.mbn", v39, v3, a3);
        if (v36)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_48:
    v4 = 15;
  }

LABEL_47:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV20StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"aop.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"apdp.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"apps.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"bbcfg.mbn");
      v12 = OUTLINED_FUNCTION_1_7(v11, @"devcfg.mbn");
      v13 = OUTLINED_FUNCTION_1_7(v12, @"hyp.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v14, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v15 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v16 = OUTLINED_FUNCTION_1_7(v15, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v16, @"tz.mbn");
      OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV20MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_1_6(v5, v6, @"acdb.mbn");
      if (!v7)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV20MeasureFirmware", "missing acdb or failed to measure image");
      }

      v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"restoresbl1.mbn");
      if (v9 && (v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"Info.plist"), v11) && (v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"sbl1.mbn"), v13) && (v15 = OUTLINED_FUNCTION_1_6(v13, v14, @"multi_image.mbn"), v15) && (v17 = OUTLINED_FUNCTION_1_6(v15, v16, @"Info.plist"), v17))
      {
        OUTLINED_FUNCTION_1_6(v17, v18, @"bbcfg.mbn");
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV21StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"aop.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"apdp.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"apps.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"bbcfg.mbn");
      v12 = OUTLINED_FUNCTION_1_7(v11, @"devcfg.mbn");
      v13 = OUTLINED_FUNCTION_1_7(v12, @"hyp.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v14, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v15 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v16 = OUTLINED_FUNCTION_1_7(v15, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v16, @"tz.mbn");
      v17 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v17, @"xbl_cfg.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV21StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v7 = OUTLINED_FUNCTION_2(a1, @"sbl2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"rpm.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"apps.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"dsp1.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"dsp2.mbn");
      OUTLINED_FUNCTION_1_7(v11, @"dsp3.mbn");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_1_6(v5, v6, @"sbl1.mbn");
      if (v7 && (v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"sbl2.mbn"), v9) && (v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"rpm.mbn"), v11) && (v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"apps.mbn"), v13) && (v15 = OUTLINED_FUNCTION_1_6(v13, v14, @"dsp1.mbn"), v15) && (v17 = OUTLINED_FUNCTION_1_6(v15, v16, @"dsp2.mbn"), v17))
      {
        v19 = OUTLINED_FUNCTION_1_6(v17, v18, @"dsp3.mbn");
        v4 = 15;
        if (v19)
        {
          if (OUTLINED_FUNCTION_1_6(v19, v20, @"restoresbl1.mbn"))
          {
            v4 = 0;
          }

          else
          {
            v4 = 15;
          }
        }
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_0_0(v9, @"ENPRG.mbn");
      OUTLINED_FUNCTION_0_0(v10, @"dbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v11 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v12 = OUTLINED_FUNCTION_0_0(v11, @"partition.mbn");
      OUTLINED_FUNCTION_0_0(v12, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN92StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN92MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_1_6(v5, v6, @"ENPRG.mbn");
      if (v7)
      {
        v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"dbl.mbn");
        if (v9)
        {
          v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"osbl.mbn");
          if (v11)
          {
            v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"amss.mbn");
            if (v13)
            {
              if (OUTLINED_FUNCTION_1_6(v13, v14, @"partition.mbn"))
              {
                v4 = 0;
              }

              else
              {
                v4 = 15;
                AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to measure: partition.mbn");
              }
            }

            else
            {
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to measure: amss.mbn");
            }
          }

          else
          {
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to measure: osbl.mbn");
          }
        }

        else
        {
          v4 = 15;
          AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to measure: dbl.mbn");
        }
      }

      else
      {
        v4 = 15;
        AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to measure: ENPRG.mbn");
      }
    }

    else
    {
      v4 = 4;
      AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", "failed to open bbfw archive for reading");
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92LocalProvisionDevice(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  *(a1 + 256) = 0;

  return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
}

uint64_t AMAuthInstallBasebandN94StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_0_0(v9, @"dbl.mbn");
      OUTLINED_FUNCTION_0_0(v10, @"restoredbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v11 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      OUTLINED_FUNCTION_0_0(v11, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN94StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN94MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_0_2(v5, v6, @"dbl.mbn");
      if (v7)
      {
        v9 = OUTLINED_FUNCTION_0_2(v7, v8, @"restoredbl.mbn");
        if (v9)
        {
          v11 = OUTLINED_FUNCTION_0_2(v9, v10, @"osbl.mbn");
          if (v11)
          {
            if (OUTLINED_FUNCTION_0_2(v11, v12, @"amss.mbn"))
            {
              v4 = 0;
            }

            else
            {
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", "failed to measure: amss.mbn");
            }
          }

          else
          {
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", "failed to measure: osbl.mbn");
          }
        }

        else
        {
          v4 = 15;
          AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", "failed to measure: restoredbl.mbn");
        }
      }

      else
      {
        v4 = 15;
        AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", "failed to measure: dbl.mbn");
      }
    }

    else
    {
      v4 = 4;
      AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", "failed to open bbfw archive for reading");
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicySetInfo(const void **a1, const __CFURL *a2, void *a3, uint64_t a4, const void *a5, void *a6, const void *a7, const void *a8, const __CFUUID *a9, uint64_t a10)
{
  v15 = AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo(a1, a6, a7, a8, a9, a10);
  if (v15)
  {
    v16 = AMAuthInstallUpdaterSetInfo(a1, @"Cryptex1LocalPolicy", v15, a2, a3, a4, a5, 0, 0, a10);
  }

  else
  {
    v16 = 1;
  }

  AMSupportSafeRelease();
  return v16;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicyCopyTicket(const void *a1, const __CFURL *a2, uint64_t a3)
{
  v3 = AMAuthInstallUpdaterCopyResponse(a1, @"Cryptex1LocalPolicy", a2, a3);
  if (v3)
  {
    CFDictionaryGetValue(v3, @"ApImg4Ticket");
    v4 = AMSupportSafeRetain();
    if (!v4)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v4 = 0;
  }

  AMSupportSafeRelease();
  return v4;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicyStitchTicketData(const void *a1, const void *a2, CFTypeRef *a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ApImg4Ticket", a2);
      v3 = AMAuthInstallLocalPolicyStitchTicketData(a1, v8, a3);
    }

    else
    {
      v3 = 2;
    }
  }

  AMSupportSafeRelease();
  return v3;
}

uint64_t AMAuthInstallBasebandRembrandtStitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v5 = 0;
      v8 = *(a1 + 48);
      switch(*(v8 + 4))
      {
        case '^':
          v9 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v9, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v12 = OUTLINED_FUNCTION_2(a1, v10, v11);
          v13 = OUTLINED_FUNCTION_1_7(v12, @"SYS_SW.elf");
          v14 = OUTLINED_FUNCTION_1_7(v13, @"TDSFW.elf");
          v15 = OUTLINED_FUNCTION_1_7(v14, @"LTEFW.elf");
          v16 = OUTLINED_FUNCTION_1_7(v15, @"bbcfg.bin");
          v17 = OUTLINED_FUNCTION_1_7(v16, @"3GFW.elf");
          v18 = OUTLINED_FUNCTION_1_7(v17, @"2GFW.elf");
          v19 = OUTLINED_FUNCTION_1_7(v18, @"RFFW.elf");
          v20 = OUTLINED_FUNCTION_1_7(v19, @"AudioFW.elf");
          v21 = OUTLINED_FUNCTION_1_7(v20, @"Debug_info.elf");
          v22 = OUTLINED_FUNCTION_1_7(v21, @"RPCU.elf");
          v23 = OUTLINED_FUNCTION_1_7(v22, @"DPC.elf");
          v24 = OUTLINED_FUNCTION_1_7(v23, @"CDMA2KFW.elf");
          v25 = @"custpack.elf";
          goto LABEL_15;
          v37 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v37, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v40 = OUTLINED_FUNCTION_2(a1, v38, v39);
          v41 = OUTLINED_FUNCTION_1_7(v40, @"SYS_SW.elf");
          v42 = OUTLINED_FUNCTION_1_7(v41, @"TDSFW.elf");
          v24 = OUTLINED_FUNCTION_1_7(v42, @"LTEFW.elf");
          v25 = @"bbcfg.bin";
          goto LABEL_15;
        case 'e':
          v26 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v26, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v29 = OUTLINED_FUNCTION_2(a1, v27, v28);
          v30 = OUTLINED_FUNCTION_1_7(v29, @"SYS_SW.elf");
          v31 = OUTLINED_FUNCTION_1_7(v30, @"TDSFW.elf");
          v32 = OUTLINED_FUNCTION_1_7(v31, @"LTEFW.elf");
          v33 = OUTLINED_FUNCTION_1_7(v32, @"bbcfg.bin");
          v34 = OUTLINED_FUNCTION_1_7(v33, @"3GFW.elf");
          v35 = OUTLINED_FUNCTION_1_7(v34, @"2GFW.elf");
          v36 = OUTLINED_FUNCTION_1_7(v35, @"RFFW.elf");
          v24 = OUTLINED_FUNCTION_1_7(v36, @"AudioFW.elf");
          v25 = @"Debug_info.elf";
          goto LABEL_15;
        case 'g':
          v43 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v43, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v46 = OUTLINED_FUNCTION_2(a1, v44, v45);
          v47 = OUTLINED_FUNCTION_1_7(v46, @"SYS_SW.elf");
          v48 = OUTLINED_FUNCTION_1_7(v47, @"LTEFW.elf");
          v49 = OUTLINED_FUNCTION_1_7(v48, @"bbcfg.bin");
          v50 = OUTLINED_FUNCTION_1_7(v49, @"3GFW.elf");
          v51 = OUTLINED_FUNCTION_1_7(v50, @"RFFW.elf");
          v52 = OUTLINED_FUNCTION_1_7(v51, @"AudioFW.elf");
          v53 = OUTLINED_FUNCTION_1_7(v52, @"Debug_info.elf");
          v24 = OUTLINED_FUNCTION_1_7(v53, @"GNSS_FW.elf");
          v25 = @"irx_coefficient.elf";
          goto LABEL_15;
        case 'h':
          IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v8 + 8));
          if (IsICE19BBGoldCertIDECDSA)
          {
            v55 = OUTLINED_FUNCTION_2_6(IsICE19BBGoldCertIDECDSA, @"psi_ram.bin");
            v56 = @"restorepsi.bin";
            v57 = AMAuthInstallRembrandtCreateStitchedRestorePSI;
          }

          else
          {
            v55 = OUTLINED_FUNCTION_10_1(IsICE19BBGoldCertIDECDSA, @"psi_ram2.bin", AMAuthInstallRembrandtCreateStitchedPSI2);
            v56 = @"restorepsi2.bin";
            v57 = AMAuthInstallRembrandtCreateStitchedRestorePSI2;
          }

          OUTLINED_FUNCTION_10_1(v55, v56, v57);
          OUTLINED_FUNCTION_0_3();
          v60 = OUTLINED_FUNCTION_2(a1, v58, v59);
          v61 = OUTLINED_FUNCTION_1_7(v60, @"SYS_SW.elf");
          v62 = OUTLINED_FUNCTION_1_7(v61, @"bbcfg.bin");
          v63 = OUTLINED_FUNCTION_1_7(v62, @"RFFW.elf");
          v64 = OUTLINED_FUNCTION_1_7(v63, @"custpack.elf");
          v65 = OUTLINED_FUNCTION_1_7(v64, @"TPCU.elf");
          v66 = OUTLINED_FUNCTION_1_7(v65, @"upc.elf");
          v24 = OUTLINED_FUNCTION_1_7(v66, @"legacy_rat_fw.elf");
          v25 = @"ant_cfg_data.elf";
LABEL_15:
          OUTLINED_FUNCTION_1_7(v24, v25);
          v5 = 0;
          break;
        default:
          break;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtStitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandRembrandtMeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v6 = BbfwReaderOpen(cf);
    v3 = v6;
    if (v6)
    {
      v4 = 0;
      switch(*(*(a1 + 48) + 4))
      {
        case '^':
          v8 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v8)
          {
            goto LABEL_72;
          }

          v10 = OUTLINED_FUNCTION_4_4(v8, v9, @"restorepsi.bin");
          if (!v10)
          {
            goto LABEL_72;
          }

          v12 = OUTLINED_FUNCTION_3_4(v10, v11, @"ebl.bin");
          if (!v12)
          {
            goto LABEL_72;
          }

          v14 = OUTLINED_FUNCTION_1_8(v12, v13, @"SYS_SW.elf");
          if (!v14)
          {
            goto LABEL_74;
          }

          v16 = OUTLINED_FUNCTION_1_6(v14, v15, @"TDSFW.elf");
          if (!v16)
          {
            goto LABEL_78;
          }

          v18 = OUTLINED_FUNCTION_1_6(v16, v17, @"LTEFW.elf");
          if (!v18)
          {
            goto LABEL_76;
          }

          v20 = OUTLINED_FUNCTION_6_4(v18, v19, @"bbcfg.bin");
          if (!v20)
          {
            goto LABEL_75;
          }

          v22 = OUTLINED_FUNCTION_1_6(v20, v21, @"3GFW.elf");
          if (!v22)
          {
            goto LABEL_79;
          }

          v24 = OUTLINED_FUNCTION_1_6(v22, v23, @"2GFW.elf");
          if (!v24)
          {
            goto LABEL_82;
          }

          v26 = OUTLINED_FUNCTION_1_6(v24, v25, @"RFFW.elf");
          if (!v26)
          {
            goto LABEL_77;
          }

          v28 = OUTLINED_FUNCTION_1_6(v26, v27, @"AudioFW.elf");
          if (!v28)
          {
            goto LABEL_80;
          }

          v30 = OUTLINED_FUNCTION_1_6(v28, v29, @"Debug_info.elf");
          if (!v30)
          {
            goto LABEL_81;
          }

          v32 = OUTLINED_FUNCTION_1_6(v30, v31, @"RPCU.elf");
          if (v32)
          {
            v34 = OUTLINED_FUNCTION_1_6(v32, v33, @"DPC.elf");
            if (v34)
            {
              v36 = OUTLINED_FUNCTION_1_6(v34, v35, @"CDMA2KFW.elf");
              if (v36)
              {
                if (OUTLINED_FUNCTION_1_6(v36, v37, @"custpack.elf"))
                {
                  goto LABEL_70;
                }

                goto LABEL_83;
              }

              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: CDMA2KFW.elf");
            }

            else
            {
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: DPC.elf");
            }
          }

          else
          {
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: RPCU.elf");
          }

          break;
          v60 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v60)
          {
            goto LABEL_72;
          }

          v62 = OUTLINED_FUNCTION_4_4(v60, v61, @"restorepsi.bin");
          if (!v62)
          {
            goto LABEL_72;
          }

          v64 = OUTLINED_FUNCTION_3_4(v62, v63, @"ebl.bin");
          if (!v64)
          {
            goto LABEL_72;
          }

          v66 = OUTLINED_FUNCTION_1_8(v64, v65, @"SYS_SW.elf");
          if (!v66)
          {
            goto LABEL_74;
          }

          v68 = OUTLINED_FUNCTION_1_6(v66, v67, @"TDSFW.elf");
          if (!v68)
          {
            goto LABEL_78;
          }

          v70 = OUTLINED_FUNCTION_1_6(v68, v69, @"LTEFW.elf");
          if (!v70)
          {
            goto LABEL_76;
          }

          if (OUTLINED_FUNCTION_6_4(v70, v71, @"bbcfg.bin"))
          {
            goto LABEL_70;
          }

          goto LABEL_75;
        case 'e':
          v38 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v38)
          {
            goto LABEL_72;
          }

          v40 = OUTLINED_FUNCTION_4_4(v38, v39, @"restorepsi.bin");
          if (!v40)
          {
            goto LABEL_72;
          }

          v42 = OUTLINED_FUNCTION_3_4(v40, v41, @"ebl.bin");
          if (!v42)
          {
            goto LABEL_72;
          }

          v44 = OUTLINED_FUNCTION_1_8(v42, v43, @"SYS_SW.elf");
          if (!v44)
          {
            goto LABEL_74;
          }

          v46 = OUTLINED_FUNCTION_1_6(v44, v45, @"TDSFW.elf");
          if (v46)
          {
            v48 = OUTLINED_FUNCTION_1_6(v46, v47, @"LTEFW.elf");
            if (v48)
            {
              v50 = OUTLINED_FUNCTION_6_4(v48, v49, @"bbcfg.bin");
              if (!v50)
              {
                goto LABEL_75;
              }

              v52 = OUTLINED_FUNCTION_1_6(v50, v51, @"3GFW.elf");
              if (v52)
              {
                v54 = OUTLINED_FUNCTION_1_6(v52, v53, @"2GFW.elf");
                if (v54)
                {
                  v56 = OUTLINED_FUNCTION_1_6(v54, v55, @"RFFW.elf");
                  if (!v56)
                  {
                    goto LABEL_77;
                  }

                  v58 = OUTLINED_FUNCTION_1_6(v56, v57, @"AudioFW.elf");
                  if (v58)
                  {
                    if (OUTLINED_FUNCTION_1_6(v58, v59, @"Debug_info.elf"))
                    {
                      goto LABEL_70;
                    }

LABEL_81:
                    v4 = 15;
                    AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: Debug_info.elf");
                  }

                  else
                  {
LABEL_80:
                    v4 = 15;
                    AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: AudioFW.elf");
                  }
                }

                else
                {
LABEL_82:
                  v4 = 15;
                  AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: 2GFW.elf");
                }
              }

              else
              {
LABEL_79:
                v4 = 15;
                AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: 3GFW.elf");
              }
            }

            else
            {
LABEL_76:
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: LTE.elf");
            }
          }

          else
          {
LABEL_78:
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: TDS.elf");
          }

          break;
        case 'g':
          v72 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v72)
          {
            goto LABEL_72;
          }

          v74 = OUTLINED_FUNCTION_4_4(v72, v73, @"restorepsi.bin");
          if (!v74)
          {
            goto LABEL_72;
          }

          v76 = OUTLINED_FUNCTION_3_4(v74, v75, @"ebl.bin");
          if (!v76)
          {
            goto LABEL_72;
          }

          v78 = OUTLINED_FUNCTION_1_8(v76, v77, @"SYS_SW.elf");
          if (!v78)
          {
            goto LABEL_74;
          }

          v80 = OUTLINED_FUNCTION_1_6(v78, v79, @"LTEFW.elf");
          if (!v80)
          {
            goto LABEL_76;
          }

          v82 = OUTLINED_FUNCTION_6_4(v80, v81, @"bbcfg.bin");
          if (!v82)
          {
            goto LABEL_75;
          }

          v84 = OUTLINED_FUNCTION_1_6(v82, v83, @"3GFW.elf");
          if (!v84)
          {
            goto LABEL_79;
          }

          v86 = OUTLINED_FUNCTION_1_6(v84, v85, @"RFFW.elf");
          if (!v86)
          {
            goto LABEL_77;
          }

          v88 = OUTLINED_FUNCTION_1_6(v86, v87, @"AudioFW.elf");
          if (!v88)
          {
            goto LABEL_80;
          }

          v90 = OUTLINED_FUNCTION_1_6(v88, v89, @"Debug_info.elf");
          if (!v90)
          {
            goto LABEL_81;
          }

          v92 = OUTLINED_FUNCTION_1_6(v90, v91, @"GNSS_FW.elf");
          if (v92)
          {
            if (OUTLINED_FUNCTION_1_6(v92, v93, @"irx_coefficient.elf"))
            {
              goto LABEL_70;
            }

            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: irx_coefficient.elf");
          }

          else
          {
            v4 = 15;
            AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: GNSS_FW.elf");
          }

          break;
        case 'h':
          v94 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (v94 && (v96 = OUTLINED_FUNCTION_4_4(v94, v95, @"restorepsi.bin"), v96) && (v98 = OUTLINED_FUNCTION_12_1(v96, v97, @"psi_ram2.bin"), v98) && (v100 = OUTLINED_FUNCTION_12_1(v98, v99, @"restorepsi2.bin"), v100) && (v102 = OUTLINED_FUNCTION_3_4(v100, v101, @"ebl.bin"), v102))
          {
            v104 = OUTLINED_FUNCTION_1_8(v102, v103, @"SYS_SW.elf");
            if (v104)
            {
              v106 = OUTLINED_FUNCTION_6_4(v104, v105, @"bbcfg.bin");
              if (v106)
              {
                v108 = OUTLINED_FUNCTION_1_6(v106, v107, @"RFFW.elf");
                if (v108)
                {
                  v110 = OUTLINED_FUNCTION_1_6(v108, v109, @"custpack.elf");
                  if (v110)
                  {
                    v112 = OUTLINED_FUNCTION_1_6(v110, v111, @"ant_cfg_data.elf");
                    if (v112)
                    {
                      v114 = OUTLINED_FUNCTION_1_6(v112, v113, @"TPCU.elf");
                      if (v114)
                      {
                        v116 = OUTLINED_FUNCTION_1_6(v114, v115, @"upc.elf");
                        if (v116)
                        {
                          if (OUTLINED_FUNCTION_1_6(v116, v117, @"legacy_rat_fw.elf"))
                          {
LABEL_70:
                            v4 = 0;
                          }

                          else
                          {
                            v4 = 15;
                            AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: legacy_rat_fw.elf");
                          }
                        }

                        else
                        {
                          v4 = 15;
                          AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: upc.elf");
                        }
                      }

                      else
                      {
                        v4 = 15;
                        AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: TPCU.elf");
                      }
                    }

                    else
                    {
                      v4 = 15;
                      AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: ant_cfg_data.elf");
                    }
                  }

                  else
                  {
LABEL_83:
                    v4 = 15;
                    AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: custpack.elf");
                  }
                }

                else
                {
LABEL_77:
                  v4 = 15;
                  AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: RFFW.elf");
                }
              }

              else
              {
LABEL_75:
                v4 = 15;
                AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: bbcfg.bin");
              }
            }

            else
            {
LABEL_74:
              v4 = 15;
              AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to measure: SYS_SW.elf");
            }
          }

          else
          {
LABEL_72:
            v4 = 15;
          }

          break;
        default:
          break;
      }
    }

    else
    {
      v4 = 4;
      AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", "failed to open bbfw archive for reading");
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandVinylStitchFirmware(void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a1 || !a1[6])
  {
    return 1;
  }

  MutableCopy = 0;
  v24[1] = a5;
  v25 = 0;
  v24[0] = a1;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 != 0;
  }

  LOBYTE(v25) = v8;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = 1;
  if (!a5 || !a4)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_25;
  }

  v12 = 0;
  v13 = 0;
  if (v9)
  {
    v14 = BbfwReaderStart(v9, _VinylBBFWReaderCB, v24);
    if (v14)
    {
      v10 = v14;
      AMAuthInstallLog(3, "_VinylStitchInternal", "Failed to copy unperso'd Vinyl files");
    }

    else
    {
      if (!*(a1[6] + 160))
      {
        MutableCopy = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_29;
      }

      v23 = 0;
      IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(a1, &v23);
      if (!IsLegacyChipId)
      {
        if (v23)
        {
          MutableCopy = 0;
          v12 = 0;
          v13 = @"vinyl";
          goto LABEL_29;
        }

        v16 = *(a1[6] + 152);
        if (v16)
        {
          v17 = *MEMORY[0x29EDB8ED8];
          MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v16);
          if (MutableCopy)
          {
            v18 = *(a1[6] + 168);
            if (!v18 || AMAuthInstallVinylCheckVinylFwLdrVerLegacy(v18))
            {
              v13 = _CopyHexStringFromData(v17, MutableCopy);
              v12 = 0;
              if (v13)
              {
                goto LABEL_29;
              }

              goto LABEL_24;
            }

            BytePtr = CFDataGetBytePtr(*(a1[6] + 168));
            Length = CFDataGetLength(*(a1[6] + 168));
            CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
            CFDataGetBytePtr(MutableCopy);
            CFDataGetLength(MutableCopy);
            if (!AMSupportDigestSha256())
            {
              v12 = CFDataCreate(v17, bytes, 32);
              v13 = _CopyHexStringFromData(v17, v12);
              if (!v13)
              {
LABEL_24:
                v10 = 2;
                goto LABEL_25;
              }

LABEL_29:
              v22 = _VinylPopulateDstEntry(v13, @"/update/main/ticket.der", a4, @"EuiccMainTicket", a5);
              if (!v22)
              {
                v22 = _VinylPopulateDstEntry(v13, @"/update/gold/ticket.der", a4, @"EuiccGoldTicket", a5);
              }

              v10 = v22;
              goto LABEL_25;
            }

            AMAuthInstallLog(3, "_VinylStitchInternal", "failed to compute digest");
            v10 = 5;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          MutableCopy = 0;
          v10 = 8;
        }

LABEL_39:
        v12 = 0;
        v13 = 0;
        goto LABEL_25;
      }

      v10 = IsLegacyChipId;
    }

    MutableCopy = 0;
    goto LABEL_39;
  }

LABEL_25:
  AMAuthInstallLog(6, "_VinylStitchInternal", "%d", v10);
  SafeRelease(MutableCopy);
  SafeRelease(v13);
  SafeRelease(v12);
  return v10;
}

uint64_t AMAuthInstallBasebandVinylCreateMeasurements(uint64_t a1, CFTypeRef cf, __CFDictionary *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  value = 0;
  v11 = @"EUICCSignedProfileMain";
  v12 = @"vinyl/update/main/signedprofile.der";
  v13 = @"EUICCSignedProfileGold";
  v14 = @"vinyl/update/gold/signedprofile.der";
  if (a1)
  {
    v4 = 0;
    v5 = 1;
    if (a3 && cf && *(a1 + 48))
    {
      v4 = BbfwReaderOpen(cf);
      if (v4)
      {
        v6 = &v11;
        v7 = 1;
        do
        {
          v8 = v7;
          if (!BbfwReaderFindAndCopyFileData(v4, v6[1], &value))
          {
            CFDictionarySetValue(a3, *v6, value);
            SafeRelease(value);
            value = 0;
          }

          v7 = 0;
          v6 = &v13;
        }

        while ((v8 & 1) != 0);
        v5 = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandVinylCreateMeasurements", "failed to open bbfw archive for reading", value, v11, v12, v13, v14, v15);
        v5 = 4;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  BbfwReaderClose(v4);
  SafeRelease(value);
  return v5;
}

uint64_t AMAuthInstallBasebandVinylAddMeasurementTags(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 48))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    LODWORD(Value) = TypeID == CFGetTypeID(Value) && CFDictionaryContainsKey(Value, @"EUICCSignedProfileMain") != 0;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandVinylAddMeasurementTags", "Vinyl Tags %d Measurements %d", *(*(a1 + 48) + 120) != 0, Value);
  v6 = *(a1 + 48);
  v7 = v6[15];
  if (!v7 || !v6[16])
  {
    return 8;
  }

  result = 8;
  if (Value && v6[19])
  {
    CFDictionarySetValue(theDict, @"EUICCCSN", v7);
    v9 = *(a1 + 48);
    v10 = v9[16];
    if (v10)
    {
      CFDictionarySetValue(theDict, @"EUICCMainNonce", v10);
      v9 = *(a1 + 48);
    }

    v11 = v9[17];
    if (v11)
    {
      CFDictionarySetValue(theDict, @"EUICCGoldNonce", v11);
      v9 = *(a1 + 48);
    }

    v12 = v9[18];
    if (v12)
    {
      CFDictionarySetValue(theDict, @"EUICCTicketVersion", v12);
      v9 = *(a1 + 48);
    }

    v13 = v9[19];
    if (v13)
    {
      CFDictionarySetValue(theDict, @"EUICCCertIdentifier", v13);
      v9 = *(a1 + 48);
    }

    v14 = v9[20];
    if (v14)
    {
      CFDictionarySetValue(theDict, @"EUICCChipID", v14);
      v9 = *(a1 + 48);
    }

    v15 = v9[21];
    if (v15)
    {
      CFDictionarySetValue(theDict, @"EUICCFirmwareLoaderVersion", v15);
    }

    CFDictionarySetValue(theDict, @"@EUICCTicket", *MEMORY[0x29EDB8F00]);
    return 0;
  }

  return result;
}

uint64_t _VinylPopulateDstEntry(const __CFString *a1, const __CFString *a2, CFDictionaryRef theDict, void *key, __CFDictionary *a5)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      v11 = Mutable;
      if (Mutable)
      {
        CFStringAppend(Mutable, a1);
        CFStringAppend(v11, a2);
        CFDictionarySetValue(a5, v11, Value);
        SafeRetain(Value);
        v12 = 0;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v11 = 0;
      v12 = 17;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  SafeRelease(v11);
  SafeRelease(Value);
  return v12;
}

uint64_t AMAuthInstallBundleCopyNextBasebandComponentName(const void *a1, CFTypeRef *a2)
{
  v10 = 0;
  v4 = AMAuthInstallBasebandCopyNextComponentName(a1, &v10);
  if (v4)
  {
    v8 = v4;
    v7 = 0;
  }

  else
  {
    v5 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"%s/%@", "amai", v10);
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      *a2 = CFRetain(v6);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v10);
  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallBundleCopyBuildIdentityForVariant(void *a1, const void *a2, CFStringRef theString1, void *a4)
{
  v41 = @"ApBoardID";
  v6 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!a1)
  {
    OUTLINED_FUNCTION_11_1();
    v8 = 1;
    goto LABEL_20;
  }

  v4 = 0;
  v8 = 1;
  if (!a4 || !a2 || (v11 = a1[2]) == 0)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v13 = *(v11 + 160);
  if (v13)
  {
    v36 = v13;
    v14 = OUTLINED_FUNCTION_28();
    v6 = CFStringCreateWithFormat(v14, v15, v16, v36, @"ChipID");
    if (v6)
    {
      OUTLINED_FUNCTION_41();
      v37 = v17;
      v18 = OUTLINED_FUNCTION_28();
      v41 = CFStringCreateWithFormat(v18, v19, v20, v37, @"BoardID");
      if (v41)
      {
        OUTLINED_FUNCTION_41();
        v38 = v21;
        v22 = OUTLINED_FUNCTION_28();
        key = CFStringCreateWithFormat(v22, v23, v24, v38, @"SecurityDomain");
        if (key)
        {
          goto LABEL_9;
        }

        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed secdomKey allocation");
        OUTLINED_FUNCTION_11_1();
        key = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed boardKey allocation");
        OUTLINED_FUNCTION_11_1();
        v41 = 0;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed chipKey allocation");
      OUTLINED_FUNCTION_11_1();
    }

    v8 = 99;
    goto LABEL_20;
  }

LABEL_9:
  IsRecoveryVariant = _AMAuthInstallIsRecoveryVariant(a1, theString1);
  v5 = IsRecoveryVariant;
  v26 = a1[16];
  if (v26 && *(v26 + 32))
  {
    Value = CFBooleanGetValue(IsRecoveryVariant);
    v28 = a1[16];
    if (Value)
    {
      v29 = *(v28 + 40);
      if (!v29)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v29 = *(v28 + 32);
    }

    CFRetain(v29);
    OUTLINED_FUNCTION_11_1();
    v8 = 0;
    *a4 = v33;
    goto LABEL_20;
  }

LABEL_13:
  if (theString1)
  {
    v30 = CFBooleanGetValue(v5);
    AMAuthInstallLog(6, "AMAuthInstallBundleCopyBuildIdentityForVariant", "searching for variant %@ (%d recovery)", theString1, v30);
  }

  else
  {
    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant not specified, will use first variant found for this device in build manifest", v35, v39);
  }

  v31 = CFGetAllocator(a1);
  v32 = AMAuthInstallBundleCopyPublishedVariantsArray(v31, a2);
  if (v32)
  {
    v8 = v32;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray failed");
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL");
    v5 = 0;
    v8 = 7;
  }

LABEL_20:
  SafeRelease(v4);
  SafeRelease(v41);
  SafeRelease(v6);
  SafeRelease(key);
  SafeRelease(v5);
  return v8;
}

uint64_t AMAuthInstallBundleCopyFullPathForBuildIdentityKey(CFDictionaryRef **a1, const void *a2, void *key, const __CFDictionary *a4, CFTypeRef *a5)
{
  RelativePathForEntry = 0;
  v16 = 0;
  v6 = 1;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(*a1[16], key);
    v16 = Value;
    if (Value)
    {
      RelativePathForEntry = Value;
      CFRetain(Value);
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "using override: %@ = %@", key, RelativePathForEntry);
    }

    else
    {
      if (!a4)
      {
        RelativePathForEntry = 0;
        goto LABEL_9;
      }

      RelativePathForEntry = _GetRelativePathForEntry(a4);
      if (!RelativePathForEntry)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "%@ key not found.", key);
        goto LABEL_9;
      }

      v13 = CFGetAllocator(a1);
      v14 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v13, a2, RelativePathForEntry, 0, &v16);
      RelativePathForEntry = v16;
      if (v14)
      {
        v6 = v14;
        goto LABEL_9;
      }
    }

    v6 = 0;
    *a5 = CFRetain(RelativePathForEntry);
    RelativePathForEntry = v16;
  }

LABEL_9:
  SafeRelease(RelativePathForEntry);
  return v6;
}

uint64_t _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(CFDictionaryRef **a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, const void *a5, const void *a6, __CFArray *a7, const __CFDictionary *a8)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  Value = CFDictionaryGetValue(*a1[16], @"VinylFirmware");
  v36 = Value;
  if (Value)
  {
    v17 = Value;
    CFRetain(Value);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using vinyl firmware override: %@ = %@", @"VinylFirmware", v17, v36, v37, v38);
  }

  else
  {
    v29 = CFDictionaryGetValue(a4, @"eUICC,Main");
    v30 = CFDictionaryGetValue(a4, @"eUICC,Gold");
    if (v29)
    {
      v31 = v30;
      if (v30)
      {
        RelativePathForEntry = _GetRelativePathForEntry(v29);
        v33 = _GetRelativePathForEntry(v31);
        if (CFStringCompare(RelativePathForEntry, v33, 0))
        {
LABEL_26:
          v24 = 0;
          v27 = 1;
          goto LABEL_12;
        }

        if (RelativePathForEntry && v33)
        {
          v34 = CFGetAllocator(a1);
          v22 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v34, a5, RelativePathForEntry, 0, &v36);
          if (v22)
          {
            goto LABEL_19;
          }
        }

        else
        {
          AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ OR %@ key not found, but that's okay. Moving along...", @"eUICC,Main", @"eUICC,Gold", v36, v37, v38);
        }
      }
    }
  }

  v18 = CFDictionaryGetValue(*a1[16], @"BasebandFirmware");
  v38 = v18;
  if (v18)
  {
    v35 = v18;
    CFRetain(v18);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using baseband firmware override: %@ = %@", @"BasebandFirmware", v35);
    a2 = 0;
    goto LABEL_6;
  }

  v19 = _GetRelativePathForEntry(a2);
  if (!v19)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ key not found.", @"BasebandFirmware");
    goto LABEL_26;
  }

  v20 = v19;
  v21 = CFGetAllocator(a1);
  v22 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v21, a5, v20, 0, &v38);
  if (v22)
  {
LABEL_19:
    v27 = v22;
    v24 = 0;
    goto LABEL_12;
  }

LABEL_6:
  BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v39);
  v24 = v39;
  if (BasebandComponentName)
  {
    goto LABEL_22;
  }

  if (!v39)
  {
    AMAuthInstallLog(4, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "server provided unneeded baseband data; ignoring it");
    v27 = 0;
    goto LABEL_12;
  }

  v25 = CFGetAllocator(a1);
  BasebandComponentName = AMAuthInstallPlatformCopyURLWithAppendedComponent(v25, a6, v24, 0, &v37);
  if (BasebandComponentName)
  {
LABEL_22:
    v27 = BasebandComponentName;
  }

  else
  {
    DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v37);
    if (DirectoryForURL)
    {
      v27 = DirectoryForURL;
      AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "failed to create output directory");
    }

    else
    {
      v27 = AMAuthInstallBasebandPersonalizeFirmwareInternal(a1, v38, v36, v37, a2, a3, a8);
      if (!v27)
      {
        CFArrayAppendValue(a7, v24);
      }
    }
  }

LABEL_12:
  SafeRelease(v24);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v36);
  return v27;
}

uint64_t AMAuthInstallBundleWriteReceipt(void *a1, const void *a2, const void *a3, const __CFBoolean *a4)
{
  error = 0;
  cf = 0;
  v8 = CFGetAllocator(a1);
  v9 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/receipt.plist", 0, &cf);
  if (!v9)
  {
    v13 = CFGetAllocator(a1);
    v11 = CFPropertyListCreateData(v13, a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (error)
    {
      v12 = CFErrorCopyDescription(error);
      AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "%@", v12);
    }

    else
    {
      if (v11)
      {
        DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(cf);
        if (DirectoryForURL)
        {
          v10 = DirectoryForURL;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, DirectoryForURL);
          AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "failed to create receipt directory: %@", LocalizedStatusString);
          AMAuthInstallLog(8, "AMAuthInstallBundleWriteReceipt", "%@", cf);
        }

        else
        {
          v17 = CFGetAllocator(a1);
          v10 = AMAuthInstallSupportWriteDataToFileURL(v17, v11, cf, 1);
          Value = CFBooleanGetValue(a4);
          v19 = *(a1[16] + 8);
          if (!Value)
          {
            SafeRelease(v19);
            v20 = CFRetain(a3);
            v12 = 0;
            *(a1[16] + 8) = v20;
            goto LABEL_7;
          }

          CFDictionarySetValue(v19, @"RecoveryOS", a3);
        }

        goto LABEL_3;
      }

      v12 = 0;
    }

    v10 = 2;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = 0;
LABEL_3:
  v12 = 0;
LABEL_7:
  SafeRelease(cf);
  SafeRelease(v11);
  SafeRelease(error);
  SafeRelease(v12);
  return v10;
}

uint64_t AMAuthInstallBundlePersonalizePartialWithRecoveryOS(void *a1, const void *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v237 = 0;
  v238 = 0;
  v235 = 0;
  v236 = 0;
  v233 = 0;
  v234 = 0;
  v232 = 0;
  v230 = 0;
  value = 0;
  v228 = 0;
  v229 = 0;
  if (!a1[2])
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)", a4, a5, a6, a7);
    v14 = 0;
    OUTLINED_FUNCTION_7_4();
    v12 = 0;
    MutableCopy = 0;
    v11 = 0;
    v17 = 0;
    v15 = 1;
    goto LABEL_147;
  }

  v14 = 0;
  v15 = 1;
  if (!a2)
  {
    v17 = OUTLINED_FUNCTION_17_0();
    goto LABEL_147;
  }

  v17 = OUTLINED_FUNCTION_17_0();
  if (v18)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    _AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(a1);
    v25 = OUTLINED_FUNCTION_18_0();
    DebugDirectory = _AMAuthInstallBundleCreateDebugDirectory(v25, v26);
    v34 = OUTLINED_FUNCTION_32(DebugDirectory, v28, v29, &v238, v30, v31, v32, v33, theArray, v192, BOOLean, v197, v199, v201, v203, v205, v207, a8, v211, cf, v215, theDict, a5, a4, v223, a2);
    if (v34)
    {
      v15 = v34;
      v14 = 0;
      OUTLINED_FUNCTION_7_4();
      v12 = 0;
      MutableCopy = 0;
    }

    else
    {
      v21 = v238;
      if (!v238)
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        MutableCopy = 0;
        goto LABEL_160;
      }

      v35 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v35, 0, v238);
      if (!MutableCopy)
      {
        v14 = 0;
        OUTLINED_FUNCTION_7_4();
        v12 = 0;
        goto LABEL_162;
      }

      if (!v220)
      {
        OUTLINED_FUNCTION_11_1();
        if (v22)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      v39 = CFGetAllocator(a1);
      v12 = CFURLCreateCopyAppendingPathComponent(v39, v24, @"RecoveryOS", 1u);
      v40 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v220, v23, &v237);
      if (!v40)
      {
        v21 = v237;
        if (v237)
        {
          v41 = CFGetAllocator(a1);
          v14 = CFDictionaryCreateMutableCopy(v41, 0, v237);
          if (!v14)
          {
            OUTLINED_FUNCTION_7_4();
            goto LABEL_162;
          }

          _AMAuthInstallBundleCreateDebugDirectory(a1, v12);
          if (v22)
          {
LABEL_9:
            CFGetAllocator(a1);
            OUTLINED_FUNCTION_30();
            v17 = CFArrayCreateMutableCopy(v36, v37, v38);
            v13 = v17;
            if (!v17)
            {
              v21 = 0;
LABEL_162:
              v11 = 0;
LABEL_164:
              v15 = 2;
              goto LABEL_147;
            }

            goto LABEL_16;
          }

LABEL_15:
          v13 = 0;
LABEL_16:
          v208 = v23;
          v42 = CFGetAllocator(a1);
          if (a9)
          {
            OUTLINED_FUNCTION_44();
            Mutable = CFArrayCreateMutableCopy(v43, v44, v45);
          }

          else
          {
            Mutable = CFArrayCreateMutable(v42, 0, MEMORY[0x29EDB9000]);
          }

          v11 = Mutable;
          if (!Mutable)
          {
            v17 = OUTLINED_FUNCTION_2_7();
            goto LABEL_164;
          }

          v224 = v13;
          if (!a10 || !v13)
          {
            goto LABEL_25;
          }

          v47 = _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v13, Mutable);
          if (!v47)
          {
            if (!v14)
            {
              v159 = OUTLINED_FUNCTION_18_0();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v159, v160, v161);
              if (!IfNecessary)
              {
                goto LABEL_27;
              }

              goto LABEL_119;
            }

            OUTLINED_FUNCTION_42();
            v47 = _AMRAuthInstallBundleModifyFirmwareEntries(v48, v49, v50, v11);
            if (!v47)
            {
LABEL_25:
              v51 = OUTLINED_FUNCTION_18_0();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53);
              if (!IfNecessary)
              {
                if (v14)
                {
                  v55 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v12, &value);
                  if (v55)
                  {
                    v187 = OUTLINED_FUNCTION_19_0(v55);
                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a recovery OS receipt: %@", v187);
                    goto LABEL_182;
                  }

                  CFDictionarySetValue(v232, @"RecoveryOS", value);
                  SafeRelease(value);
                  HIDWORD(v206) = 1;
                  goto LABEL_30;
                }

LABEL_27:
                HIDWORD(v206) = 0;
LABEL_30:
                v56 = _AMAuthInstallBundleCopyOverrideBuildIdentity(a1, v13, v226, v24, MutableCopy, v220);
                if (v56)
                {
                  v15 = v56;
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to create build identity with overrides", theArraya);
                  goto LABEL_182;
                }

                v216 = v14;
                theDicta = MutableCopy;
                v212 = v11;
                cfa = v24;
                if (!a1[6])
                {
                  goto LABEL_74;
                }

                v240[0] = 0;
                v57 = CFGetAllocator(a1);
                v200 = @"BbFDRSecurityKeyHash";
                v202 = 0;
                BOOLeana = @"BbCalibrationManifestKeyHash";
                v198 = @"BbFactoryActivationManifestKeyHash";
                v193 = @"BbActivationManifestKeyHash";
                v65 = _CFArrayCreateWithObjects(v57, v58, v59, v60, v61, v62, v63, v64, @"BbProvisioningManifestKeyHash");
                v72 = v65;
                if (!v65)
                {
                  v15 = 2;
                  goto LABEL_55;
                }

                v73 = OUTLINED_FUNCTION_32(v65, v66, v67, v240, v68, v69, v70, v71, theArrayb, @"BbActivationManifestKeyHash", @"BbCalibrationManifestKeyHash", @"BbFactoryActivationManifestKeyHash", @"BbFDRSecurityKeyHash", 0, v204, v206, v23, v210, v11, cfa, v14, MutableCopy, v220, v222, v13, v226);
                if (v73)
                {
                  v15 = v73;
                  goto LABEL_55;
                }

                Count = CFArrayGetCount(v72);
                if (Count < 1)
                {
                  v15 = 0;
                  MutableCopy = theDicta;
                  goto LABEL_55;
                }

                v75 = Count;
                v204 = v12;
                v76 = 0;
                v22 = "_AMAuthInstallBundleSetBasebandKeyHashes";
                while (1)
                {
                  v239 = 0;
                  ValueAtIndex = CFArrayGetValueAtIndex(v72, v76);
                  if (!ValueAtIndex)
                  {
LABEL_149:
                    v15 = 14;
                    goto LABEL_53;
                  }

                  v78 = ValueAtIndex;
                  if (CFDictionaryGetValue(a1[27], ValueAtIndex))
                  {
                    v79 = OUTLINED_FUNCTION_40();
                    AMAuthInstallLog(v79, v80, "setting (from PR2 document/Override): %@ = %@");
                    v81 = OUTLINED_FUNCTION_14_1();
                    if (AMAuthInstallBasebandSetKeyHashInternal(v81))
                    {
                      v82 = OUTLINED_FUNCTION_20_0();
                      AMAuthInstallLog(v82, v83, "Failed setting (from PR2 document/Override) %@ = %@");
                    }
                  }

                  else
                  {
                    v84 = CFDictionaryGetValue(a1[26], v78);
                    if (v84)
                    {
                      v85 = v84;
                      v86 = CFDictionaryGetValue(a1[25], v78);
                      if (v86 && !CFEqual(v86, v85))
                      {
                        AMAuthInstallLog(4, "_AMAuthInstallBundleSetBasebandKeyHashes", "key hash mismatch, triggering bbfw re-personalization");
                        *(a1 + 224) = 1;
                      }

                      v193 = v85;
                      AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandKeyHashes", "setting (from hash baseband returned): %@ = %@", v78);
                      v87 = OUTLINED_FUNCTION_14_1();
                      if (AMAuthInstallBasebandSetKeyHashInternal(v87))
                      {
                        v88 = OUTLINED_FUNCTION_20_0();
                        AMAuthInstallLog(v88, v89, "Failed setting (from hash baseband returned) %@ = %@");
                      }
                    }

                    else
                    {
                      v90 = OUTLINED_FUNCTION_14_1();
                      TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(v90, v91, v92);
                      if (TagForKeyHashName)
                      {
                        v15 = TagForKeyHashName;
LABEL_53:
                        v14 = v216;
                        MutableCopy = theDicta;
                        v13 = v224;
                        v11 = v212;
LABEL_55:
                        SafeRelease(v72);
                        SafeRelease(v240[0]);
                        if (!v15)
                        {
                          v240[0] = 0;
                          v106 = OUTLINED_FUNCTION_32(v99, v100, v101, v240, v102, v103, v104, v105, theArrayb, v193, BOOLeana, v198, v200, v202, v204, v206, v208, v210, v212, cfa, v216, theDicta, v220, v222, v224, v226);
                          if (v106)
                          {
                            theArrayc = v106;
                            v114 = "Failed to read build identity : error = %d";
LABEL_170:
                            v115 = 3;
                          }

                          else
                          {
                            v107 = CFDictionaryGetValue(v240[0], @"BbFactoryDebugEnable");
                            if (!v107)
                            {
                              goto LABEL_64;
                            }

                            v108 = v107;
                            CFBooleanGetTypeID();
                            v109 = OUTLINED_FUNCTION_39();
                            if (v22 != CFGetTypeID(v109))
                            {
                              goto LABEL_64;
                            }

                            if (CFBooleanGetValue(v108) == 1)
                            {
                              v110 = *MEMORY[0x29EDB8F00];
                              AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", "setting (from build manifest): %@ = %@", @"BbFactoryDebugEnable", *MEMORY[0x29EDB8F00]);
                              v111 = OUTLINED_FUNCTION_14_1();
                              v113 = AMAuthInstallSetBbRequestEntry(v111, v112, v110);
                              if (v113)
                              {
                                theArrayc = @"BbFactoryDebugEnable";
                                v194 = v113;
                                v114 = "Failed setting (from build manifest) %@ : error = %d";
                                goto LABEL_170;
                              }

LABEL_64:
                              SafeRelease(v240[0]);
                              if (*(a1 + 224))
                              {
                                if (!v232)
                                {
                                  v15 = 1;
                                  goto LABEL_151;
                                }

                                v116 = CFDictionaryGetValue(v232, @"Personalized");
                                if (!v116)
                                {
                                  AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized array");
                                  v15 = 14;
                                  goto LABEL_151;
                                }

                                v117 = v116;
                                v13 = v12;
                                v118 = CFArrayGetCount(v116);
                                if (v118 >= 1)
                                {
                                  v119 = v118;
                                  v120 = 0;
                                  while (1)
                                  {
                                    v121 = CFArrayGetValueAtIndex(v117, v120);
                                    if (!v121)
                                    {
                                      break;
                                    }

                                    if (CFStringHasSuffix(v121, @".bbfw"))
                                    {
                                      v122 = OUTLINED_FUNCTION_25();
                                      AMAuthInstallLog(v122, "_AMAuthInstallBundleRemovePersonalizedBbfw", "removing personalizedEntry %@");
                                      CFArrayRemoveValueAtIndex(v117, v120--);
                                      --v119;
                                    }

                                    if (++v120 >= v119)
                                    {
                                      goto LABEL_73;
                                    }
                                  }

                                  AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized entry %d", v120);
                                  v15 = 14;
                                  v14 = v216;
                                  MutableCopy = theDicta;
                                  v11 = v212;
LABEL_151:
                                  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to remove bbfw: %@", LocalizedStatusString);
LABEL_152:
                                  OUTLINED_FUNCTION_7_4();
                                  v17 = v224;
                                  goto LABEL_147;
                                }

LABEL_73:
                                *(a1 + 224) = 0;
                                v14 = v216;
                                MutableCopy = theDicta;
                                v13 = v224;
                              }

LABEL_74:
                              v123 = MEMORY[0x29EDB8EF8];
                              if (!v13)
                              {
                                goto LABEL_132;
                              }

                              v241.length = CFArrayGetCount(v13);
                              v241.location = 0;
                              if (!CFArrayContainsValue(v13, v241, @"BasebandFirmware") || (LOBYTE(v240[0]) = 0, LOBYTE(v239) = 0, v124 = *(a1 + 76), AMAuthInstallBasebandIsFused(a1, v240)) || (!LOBYTE(v240[0]) ? (v125 = AMAuthInstallBasebandPersonalizationRequired(a1) == 0) : (v125 = 1), AMAuthInstallBasebandLocalSigningEnabled(a1, &v239) || (!v239 ? (v126 = v125) : (v126 = 0), v126 && !v124)))
                              {
                                v13 = 0;
                                goto LABEL_121;
                              }

                              v127 = *(a1 + 76);
                              v128 = CFDictionaryGetValue(v232, @"Personalized");
                              if (!v128)
                              {
                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in receiptDict", @"Personalized");
                                v17 = OUTLINED_FUNCTION_2_7();
                                v15 = 8;
                                goto LABEL_187;
                              }

                              v129 = v128;
                              v130 = OUTLINED_FUNCTION_16_0();
                              v132 = CFDictionaryGetValue(v130, v131);
                              if (v132)
                              {
                                v133 = v132;
                                v134 = CFDictionaryGetValue(v132, @"BasebandFirmware");
                                if (v134 | CFDictionaryGetValue(*a1[16], @"BasebandFirmware"))
                                {
                                  _CFArrayRemoveValue(v13, @"BasebandFirmware");
                                  BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v228);
                                  if (BasebandComponentName)
                                  {
                                    v15 = BasebandComponentName;
                                    v17 = OUTLINED_FUNCTION_2_7();
                                  }

                                  else
                                  {
                                    v136 = v228;
                                    if (v228)
                                    {
                                      CFArrayGetCount(v129);
                                      v137 = OUTLINED_FUNCTION_47();
                                      if (CFArrayContainsValue(v137, v242, v136))
                                      {
                                        AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "entry %@ has been previously personalized; skipping it", v136);
                                        if (v127)
                                        {
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "inserting provisioning info (if any) into existing bbfw for %@", v136);
                                          v138 = CFGetAllocator(a1);
                                          v139 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v138, cfa, v136, 0, &v230);
                                          MutableCopy = theDicta;
                                          v140 = v226;
                                          if (!v139)
                                          {
                                            v14 = v216;
                                            if (!v230)
                                            {
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bbfwURL AMAuthInstallPlatformCopyURLWithAppendedComponent failed");
                                              v17 = OUTLINED_FUNCTION_2_7();
                                              v15 = 2;
                                              goto LABEL_116;
                                            }

                                            v141 = AMAuthInstallBasebandCopyFirmware(a1, v230, v230);
                                            if (v141)
                                            {
                                              v15 = v141;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandCopyFirmware failed");
                                            }

                                            else
                                            {
                                              v142 = AMAuthInstallBasebandCopyAllComponents(a1, v230, &v229);
                                              if (!v142)
                                              {
                                                v143 = AMAuthInstallBasebandWriteFilesToBbfw(a1, v230, v229);
                                                if (!v143)
                                                {
                                                  v13 = 0;
                                                  goto LABEL_122;
                                                }

                                                v15 = v143;
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandWriteFilesToBbfw failed");
                                                v21 = 0;
LABEL_114:
                                                v13 = 0;
LABEL_115:
                                                v17 = v224;
LABEL_116:
                                                v11 = v212;
                                                goto LABEL_147;
                                              }

                                              v15 = v142;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandCopyAllComponents failed");
                                            }

                                            v17 = OUTLINED_FUNCTION_2_7();
                                            goto LABEL_116;
                                          }

                                          v15 = v139;
                                          v17 = OUTLINED_FUNCTION_2_7();
LABEL_187:
                                          v14 = v216;
                                          goto LABEL_116;
                                        }

                                        v13 = 0;
                                        v14 = v216;
                                        MutableCopy = theDicta;
LABEL_121:
                                        v140 = v226;
LABEL_122:
                                        v163 = _AMAuthInstallBundleCreateServerRequestDictionary(a1, v224, MutableCopy, v232, v140, v14, &v236, &v235);
                                        if (v163)
                                        {
                                          v15 = v163;
                                          goto LABEL_113;
                                        }

                                        v164 = CFDictionaryGetValue(v232, @"CumulativeResponse");
                                        if (!(v164 | v236))
                                        {
                                          v21 = v13;
                                          v13 = 0;
                                          v15 = 0;
                                          goto LABEL_115;
                                        }

                                        if (v236)
                                        {
                                          v165 = AMAuthInstallApCreatePersonalizedResponse(a1, v236, &v234);
                                          if (v165)
                                          {
                                            v15 = v165;
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to create ap ticket", theArraya);
                                            goto LABEL_113;
                                          }

                                          v166 = HIDWORD(v206);
                                          if (!v235)
                                          {
                                            v166 = 0;
                                          }

                                          if (v166 == 1)
                                          {
                                            PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v235, &v233);
                                            if (PersonalizedResponse)
                                            {
                                              v15 = PersonalizedResponse;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to create ap ticket for recovery OS", theArraya);
                                              goto LABEL_113;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v234 = CFRetain(v164);
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "This is an install/stitch-only request.");
                                        }

LABEL_132:
                                        *v227 = v13;
                                        v168 = CFDictionaryGetValue(v232, @"Updaters");
                                        if (v168)
                                        {
                                          v169 = v168;
                                          v170 = CFDictionaryGetCount(v168);
                                          v13 = malloc(8 * v170);
                                          if (v13)
                                          {
                                            CFDictionaryGetKeysAndValues(v169, v13, 0);
                                            if (v170 >= 1)
                                            {
                                              v171 = v13;
                                              do
                                              {
                                                v172 = *v171++;
                                                v173 = CFDictionaryGetValue(v169, v172);
                                                CFDictionaryRemoveValue(v173, @"RequestTags");
                                                --v170;
                                              }

                                              while (v170);
                                            }

                                            v174 = *v123;
                                            v175 = AMAuthInstallBundleWriteReceipt(a1, cfa, v232, *v123);
                                            if (!v175)
                                            {
                                              v14 = v216;
                                              MutableCopy = theDicta;
                                              goto LABEL_140;
                                            }

                                            v15 = v175;
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v175);
                                            v14 = v216;
                                            MutableCopy = theDicta;
                                          }

                                          else
                                          {
                                            v15 = 2;
                                          }

                                          v17 = v224;
                                          v11 = v212;
                                        }

                                        else
                                        {
                                          v13 = 0;
                                          v174 = *v123;
LABEL_140:
                                          v11 = v212;
                                          v176 = OUTLINED_FUNCTION_18_0();
                                          v181 = _AMAuthInstallBundlePopulatePersonalizedBundle(v176, v177, v178, v222, MutableCopy, v179, v180, v224, v210, v212, v174);
                                          if (v181)
                                          {
                                            v186 = OUTLINED_FUNCTION_19_0(v181);
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize bundle", v186);
                                          }

                                          else if (v235)
                                          {
                                            v15 = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, v220, v12, v208, v14, v233, v232, v224, v210, v212, *MEMORY[0x29EDB8F00]);
                                            if (v15)
                                            {
                                              v182 = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize recovery OS bundle", v182);
                                            }
                                          }

                                          else
                                          {
                                            v15 = 0;
                                          }

                                          v17 = v224;
                                        }

                                        v21 = *v227;
                                        goto LABEL_147;
                                      }

                                      AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "performing separate baseband firmware personalization of %@", v136);
                                      v144 = CFDictionaryGetValue(theDicta, @"UniqueBuildID");
                                      if (!v144)
                                      {
                                        AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks UniqueBuildID");
                                        v13 = 0;
                                        goto LABEL_104;
                                      }

                                      v145 = v144;
                                      v146 = CFGetAllocator(a1);
                                      v147 = CFDictionaryCreateMutable(v146, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                      v13 = v147;
                                      if (!v147)
                                      {
                                        goto LABEL_193;
                                      }

                                      CFDictionarySetValue(v147, @"UniqueBuildID", v145);
LABEL_104:
                                      v148 = a1[2];
                                      if (*(v148 + 136) || *(v148 + 144))
                                      {
                                        v149 = CFDictionaryGetValue(theDicta, @"ProductMarketingVersion");
                                        if (v149)
                                        {
                                          v150 = v149;
                                          if (v13 || (v151 = CFGetAllocator(a1), (v13 = CFDictionaryCreateMutable(v151, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020])) != 0))
                                          {
                                            CFDictionarySetValue(v13, @"ProductMarketingVersion", v150);
                                            goto LABEL_110;
                                          }

LABEL_193:
                                          v21 = 0;
                                          v15 = 2;
                                          v14 = v216;
LABEL_197:
                                          MutableCopy = theDicta;
                                          goto LABEL_115;
                                        }

                                        AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks ProductMarketingVersion");
                                      }

LABEL_110:
                                      v152 = _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(a1, v134, 0, v133, v226, cfa, v129, v13);
                                      v14 = v216;
                                      if (!v152)
                                      {
                                        v153 = OUTLINED_FUNCTION_14_1();
                                        v157 = AMAuthInstallBundleWriteReceipt(v153, v154, v155, v156);
                                        MutableCopy = theDicta;
                                        if (!v157)
                                        {
                                          goto LABEL_121;
                                        }

                                        v158 = OUTLINED_FUNCTION_19_0(v157);
                                        AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to write receipt: %@", v158);
LABEL_113:
                                        v21 = v13;
                                        goto LABEL_114;
                                      }

                                      v15 = v152;
                                      v21 = v13;
                                      v13 = 0;
                                      goto LABEL_197;
                                    }

                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "nextBbfwComponentStr is NULL");
                                    v17 = OUTLINED_FUNCTION_2_7();
                                    v15 = 14;
                                  }

LABEL_177:
                                  v14 = v216;
                                  MutableCopy = theDicta;
                                  goto LABEL_116;
                                }

                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in manifestDict", @"BasebandFirmware");
                              }

                              else
                              {
                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in buildIdentity", @"Manifest");
                              }

                              v17 = OUTLINED_FUNCTION_2_7();
                              v15 = 8;
                              goto LABEL_177;
                            }

                            theArrayc = @"BbFactoryDebugEnable";
                            v114 = "%@ (from build manifest) is not true. Not setting it";
                            v115 = 6;
                          }

                          AMAuthInstallLog(v115, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", v114, theArrayc, v194);
                          goto LABEL_64;
                        }

LABEL_182:
                        v17 = OUTLINED_FUNCTION_2_7();
                        goto LABEL_147;
                      }

                      if (!v239)
                      {
                        goto LABEL_149;
                      }

                      if (CFDictionaryGetValue(v240[0], v239))
                      {
                        v94 = OUTLINED_FUNCTION_40();
                        AMAuthInstallLog(v94, v95, "setting (from build manifest): %@ = %@");
                        v96 = OUTLINED_FUNCTION_14_1();
                        if (AMAuthInstallBasebandSetKeyHashInternal(v96))
                        {
                          v97 = OUTLINED_FUNCTION_20_0();
                          AMAuthInstallLog(v97, v98, "Failed setting (from build manifest) %@ = %@");
                        }
                      }
                    }
                  }

                  if (v75 == ++v76)
                  {
                    v15 = 0;
                    goto LABEL_53;
                  }
                }
              }

LABEL_119:
              v162 = OUTLINED_FUNCTION_19_0(IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a receipt: %@", v162);
              goto LABEL_152;
            }
          }

          v15 = v47;
          goto LABEL_182;
        }

        v14 = 0;
        v13 = 0;
LABEL_160:
        v11 = 0;
        v17 = 0;
        v15 = 14;
        goto LABEL_147;
      }

      v15 = v40;
      v14 = 0;
      OUTLINED_FUNCTION_7_4();
    }

    v11 = 0;
    v17 = 0;
  }

LABEL_147:
  v183 = v21;
  SafeRelease(v17);
  SafeRelease(v11);
  SafeRelease(v238);
  SafeRelease(MutableCopy);
  SafeRelease(v236);
  SafeRelease(v235);
  SafeRelease(v234);
  SafeRelease(v233);
  SafeRelease(v232);
  SafeRelease(v183);
  SafeRelease(v230);
  SafeRelease(v229);
  SafeRelease(v228);
  SafeFree(v13);
  SafeRelease(v12);
  SafeRelease(v237);
  SafeRelease(v14);
  return v15;
}