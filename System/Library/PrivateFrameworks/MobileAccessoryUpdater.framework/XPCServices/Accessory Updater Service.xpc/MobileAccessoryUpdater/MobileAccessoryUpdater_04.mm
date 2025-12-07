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
  if (v5 || (v13 = sub_10000716C(v5, v6, v7, v8, v9, v10, v11, v12, v38, v40, v41, v42, v43[0]), DERDecoderGetDataWithTag(v13, v14, 0x10u, 1, v15, v16, v17)) || (v18 = DERDecoderInitialize(v43, v41, &v40 + 1, HIDWORD(v40)), v18) || (LODWORD(v42) = 0, v26 = sub_10000716C(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43[0]), DERDecoderGetDataWithTag(v26, v27, 0x16u, 0, v28, v29, v30)))
  {
    v2 = 0;
LABEL_13:
    v36 = 0;
    goto LABEL_11;
  }

  sub_100007148();
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
  HIDWORD(v72) = a4;
  value = 0;
  cf = 0;
  v75 = 0;
  v76 = 0;
  v5 = 1;
  if (!a2)
  {
    sub_100007208();
    goto LABEL_42;
  }

  sub_100007208();
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
          v41 = sub_100007234(0, @"ftap");
          if (v41)
          {
            v42 = sub_100007234(v41, @"rfta");
            if (v42)
            {
              v43 = sub_100007234(v42, @"ftsp");
              if (v43)
              {
                if (sub_100007234(v43, @"rfts"))
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
        v22 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v21, kCFURLPOSIXPathStyle, 0);
        if (!v22)
        {
          goto LABEL_77;
        }

        if (v11)
        {
LABEL_13:
          sub_100007148();
          CFStringGetCString(v23, v24, v25, v26);
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
          if (DataFromMappedFileURL)
          {
            v5 = DataFromMappedFileURL;
            goto LABEL_42;
          }

          v29 = sub_10000719C(v86, v28, cf);
          if (v29)
          {
            v5 = v29;
            v36 = "failed to create im4p with override tag";
          }

          else
          {
            AMSupportSafeRelease();
            cf = 0;
            if (AMAuthInstallCryptoCreateDigestForDataType(v13, v76, &value, SHIDWORD(v72)) != 1)
            {
              v30 = AMSupportSafeRetain();
              AMSupportSafeRelease();
              v76 = 0;
              goto LABEL_17;
            }

            v5 = 1;
            v36 = "Unsupported digestType";
          }

LABEL_27:
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", v36, v66, v68);
          goto LABEL_42;
        }

LABEL_25:
        v35 = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
        if (!v35)
        {
          v30 = AMAuthInstallApImg4CopyPayloadType(v13, cf);
          AMAuthInstallCryptoCreateDigestForDataType(v13, cf, &value, SHIDWORD(v72));
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
            Mutable = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v32 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"Digest", value);
              if (!v30)
              {
LABEL_41:
                v5 = 0;
                *a5 = CFRetain(v32);
                goto LABEL_42;
              }

              v34 = sub_10000724C(v33, @"sepi");
              if (v34)
              {
                if (sub_10000724C(v34, @"rsep"))
                {
                  goto LABEL_33;
                }

                if (AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 2, &v75))
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbmr property, status:%d\n");
                  goto LABEL_33;
                }
              }

              else if (AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 1, &v75))
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbms property, status:%d\n");
                goto LABEL_33;
              }

              CFDictionarySetValue(v32, @"TBMDigests", v75);
LABEL_33:
              v84 = 0;
              theData = 0;
              BytePtr = 0;
              bzero(v86, 0xA0uLL);
              v82 = 0;
              if (!v22)
              {
                v39 = 0;
                v5 = 1;
                goto LABEL_40;
              }

              v37 = AMAuthInstallApImg4CopyPayload(v13, v22, &theData);
              if (v37)
              {
                v5 = v37;
                v39 = 0;
                goto LABEL_40;
              }

              BytePtr = CFDataGetBytePtr(theData);
              v84 = CFDataGetLength(theData);
              bzero(v86, 0xA0uLL);
              v38 = DERImg4DecodePayloadWithProperties(&BytePtr, v86);
              if (v38)
              {
                AMAuthInstallLog(7, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "failed to decode img4 payload with properties (error=%d), assuming no properties", v38);
LABEL_38:
                v39 = 0;
LABEL_39:
                v5 = 0;
                goto LABEL_40;
              }

              if (!v87)
              {
                goto LABEL_38;
              }

              *bytes = 0u;
              *length = 0u;
              v79 = 0u;
              v44 = sub_10000724C(v38, @"sepi");
              if (v44)
              {
                v46 = sub_10000724C(v44, @"rsep");
                if (v46)
                {
                  goto LABEL_59;
                }

                if (sub_1000071C0(0, 1952607602, v47, v48, v49, v50, v51, v52, v66, v68, v70, v72, v75, v76, value, cf) || (v45 = bytes[1]) == 0)
                {
                  AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbmr payload property, status:%d\n");
                  goto LABEL_59;
                }
              }

              else if (sub_10005BF44(&BytePtr, 0xE000000074626D73, &v79) || (v45 = bytes[1]) == 0)
              {
                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbms payload property, status:%d\n");
                goto LABEL_59;
              }

              v53 = CFDataCreate(v13, v45, length[0]);
              if (!v53)
              {
                goto LABEL_84;
              }

              v54 = v53;
              CFDictionarySetValue(v32, @"TBMDigests", v53);
              SafeRelease(v54);
LABEL_59:
              v55 = sub_1000071C0(v46, 1835884912, v47, v48, v49, v50, v51, v52, v66, v68, v70, v72, v75, v76, value, cf);
              if (!v55 && bytes[1])
              {
                v62 = CFDataCreate(v13, bytes[1], length[0]);
                if (!v62)
                {
                  goto LABEL_84;
                }

                v63 = v62;
                CFDictionarySetValue(v32, @"MemoryMap", v62);
                SafeRelease(v63);
              }

              if (sub_1000071C0(v55, 1919181927, v56, v57, v58, v59, v60, v61, v67, v69, v71, v73, v75, v76, value, cf) || !bytes[1])
              {
                goto LABEL_67;
              }

              v64 = CFDataCreate(v13, bytes[1], length[0]);
              if (v64)
              {
                v65 = v64;
                CFDictionarySetValue(v32, @"RawDataDigest", v64);
                SafeRelease(v65);
LABEL_67:
                v39 = CFDataCreate(v13, v87, v88);
                AMAuthInstallCryptoCreateDigestForDataType(v13, v39, &v82, v74);
                if (v82)
                {
                  CFDictionarySetValue(v32, @"ObjectPayloadPropertyDigest", v82);
                  goto LABEL_39;
                }

                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "created digest is NULL");
                goto LABEL_86;
              }

LABEL_84:
              v39 = 0;
LABEL_86:
              v5 = 2;
LABEL_40:
              SafeRelease(v82);
              SafeRelease(v39);
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

        v5 = v35;
        v66 = v22;
        v68 = v35;
        v36 = "Failed to read file %@: error=%d";
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
    cf = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
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
      return sub_1000071F4(v6);
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

      if (v6)
      {
        v7 = v6 == kCFBooleanFalse;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 || *(*(a1 + 16) + 192) == kCFBooleanTrue || (result = CFDictionaryContainsKey(theDict, @"SepNonce"), !kCFBooleanTrue) || result)
      {
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = kCFBooleanFalse;
        }

        CFDictionarySetValue(theDict, @"UID_MODE", v8);
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

        CFDictionarySetValue(a2, *v15, kCFBooleanTrue);
      }

      v16 = a1[2];
      if (v16[91])
      {
        sub_1000071DC(v13, @"Ap,InternalUseOnlySW");
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

        sub_1000071DC(v17, @"@x86,Ticket");
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
        sub_1000071DC(v13, @"@ApImg4Ticket");
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
        sub_1000071DC(v24, @"@Managed");
        v19 = a1[2];
      }

      v25 = *(v19 + 144);
      if (v25)
      {
        CFDictionarySetValue(a2, @"@BCert", v25);
        sub_1000071DC(v26, @"@AlternateSU");
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
  v27 = 0;
  v28 = 0;
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
      sub_100007148();
      CFStringGetCString(v13, v14, v15, v16);
      v17 = CFGetAllocator(a1);
      DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v17, &v28, a3);
      if (DataFromMappedFileURL)
      {
        v7 = DataFromMappedFileURL;
      }

      else
      {
        v20 = sub_10000719C(&v26, v19, v28);
        if (!v20)
        {
          SafeRelease(v28);
          v28 = 0;
          CFGetAllocator(a1);
          Length = CFDataGetLength(v27);
          v7 = sub_10000596C(a4, Value, Length, v27, sub_100005BBC);
          v6 = 0;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_17:
          AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to write stitched data to %@", a4);
          goto LABEL_14;
        }

        v7 = v20;
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to recreate");
      }

      goto LABEL_20;
    }

    v6 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v6)
    {
      bzero(&v26, 0x90uLL);
      v22 = fileno(v6);
      fstat(v22, &v26);
      CFGetAllocator(a1);
      v7 = sub_10000596C(a4, Value, v26.st_size, v6, sub_100005C18);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v24 = __error();
    v25 = strerror(*v24);
    AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to open file %@, error=%s", a3, v25);
    v7 = 4;
  }

LABEL_14:
  SafeRelease(v28);
  SafeRelease(v27);
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
    sub_100007154();
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
        Mutable = CFDictionaryCreateMutable(v14, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
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
      return sub_1000071F4(v16);
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
  if (!a1 || !*a2)
  {
    return 1;
  }

  bzero(v34, 0x1C8uLL);
  v33[0] = 0;
  v33[1] = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = Img4DecodeInit(BytePtr, Length, v34);
  if (v7)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6);
  }

  else
  {
    if (!DERDecodeSeqContentInit(&v35, v33))
    {
      while (1)
      {
        do
        {
          while (1)
          {
            v8 = DERDecodeSeqNext(v33, &v31);
            if (!v8)
            {
              break;
            }

            if (v8 == 1)
            {
              return 0;
            }
          }

          v29 = 0;
          v30[0] = 0;
          v30[1] = 0;
          v28[0] = 0;
          v28[1] = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        while (DERDecodeItem(v32, &v29) || DERDecodeSeqContentInit(v30, v28) || DERDecodeSeqNext(v28, &v25) || v25 != 22);
        sub_100007148();
        v13 = CFStringCreateWithBytes(v9, v10, v11, v12, 0);
        if (v13)
        {
          if (!DERDecodeSeqNext(v28, &v25))
          {
            break;
          }
        }

LABEL_34:
        SafeRelease(v13);
      }

      if (v25 == 1)
      {
        LOBYTE(v24) = 0;
        if (DERParseBoolean(&v26, &v24))
        {
          return 23;
        }

        if (v24)
        {
          v20 = kCFBooleanFalse;
        }

        else
        {
          v20 = kCFBooleanTrue;
        }

        if (!v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v25 != 2)
        {
          if (v25 == 4)
          {
            v18 = CFDataCreate(kCFAllocatorDefault, v26, v27);
          }

          else
          {
            if (v25 != 22)
            {
              goto LABEL_34;
            }

            sub_100007148();
            v18 = CFStringCreateWithBytes(v14, v15, v16, v17, 0);
          }

          v21 = v18;
          if (v18)
          {
            CFDictionarySetValue(*a2, v13, v18);
          }

          v22 = v21;
          goto LABEL_33;
        }

        v24 = 0;
        if (DERParseInteger64(&v26, &v24))
        {
          return 23;
        }

        v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v24);
        if (!v19)
        {
LABEL_32:
          v22 = 0;
LABEL_33:
          SafeRelease(v22);
          goto LABEL_34;
        }

        v20 = v19;
      }

      CFDictionarySetValue(*a2, v13, v20);
      goto LABEL_32;
    }

    AMSupportLogInternal();
  }

  return 99;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (!a1 || !a2)
  {
    sub_100007184();
    goto LABEL_40;
  }

  sub_100007184();
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

  sub_100007148();
  if (CFStringGetCString(v25, v26, v27, v28))
  {
    strlen(__s);
    sub_100007160();
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
  BytePtr = 0;
  Length = 0;
  PayloadWithProperties = 1;
  v6 = 0;
  sub_100007124();
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
      sub_100007124();
      PayloadWithProperties = 99;
      goto LABEL_45;
    }

    if (v17 && !sub_100006E3C(__s1, v17))
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

    if (!v16 || sub_100006E3C(v32, v16))
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
          sub_100007124();
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

        v21 = sub_10000721C(0, v33, v34);
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
        v22 = sub_10000721C(0, v35, v36);
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

          v2 = sub_10000721C(v22, v37, v38);
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

        v3 = sub_10000721C(v23, v28, v29);
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
    sub_100007124();
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
      sub_100007154();
      goto LABEL_21;
    }

    if (DEREncoderCreate() && DEREncoderCreate())
    {
      sub_100007160();
      if (DEREncoderAddData())
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload tag to DER file", 0);
      }

      else
      {
        sub_100007160();
        if (DEREncoderAddData())
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload type to DER file", 0);
        }

        else
        {
          strlen(a2);
          sub_100007138();
          if (DEREncoderAddData())
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", "failed to add payload version to DER file", 0);
          }

          else
          {
            CFDataGetBytePtr(a3);
            CFDataGetLength(a3);
            sub_100007138();
            if (DEREncoderAddDataNoCopy())
            {
              goto LABEL_23;
            }

            if (a4)
            {
              CFDataGetBytePtr(a4);
              CFDataGetLength(a4);
              sub_100007138();
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
              sub_100007138();
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
                *a7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, 0, 0, kCFAllocatorMalloc);
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

uint64_t sub_10005BF44(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 0uLL;
  v10 = 0uLL;
  v5 = sub_100007058(a1, 0x2000000000000010, &v13);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v13, 0xA000000000000000, &v12);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v12, 0x2000000000000010, &v11);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v11, 0x2000000000000011, &v10);
  if (v5)
  {
    return v5;
  }

  v15 = 0uLL;
  v14 = 0;
  v6 = sub_100007058(&v10, a2, &v15);
  if (v6)
  {
    v8 = v6;
LABEL_14:
    AMSupportLogInternal();
    return v8;
  }

  v16 = xmmword_1000814D0;
  v17 = 0;
  v18 = xmmword_1000814E0;
  v19 = 0;
  v7 = DERParseSequence(&v15, 2u, &v16, a3, 0);
  if (v7)
  {
    v8 = v7;
    goto LABEL_14;
  }

  v5 = DERParseInteger(a3, &v14);
  if (v5)
  {
    return v5;
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

void sub_10005C21C(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", a1, v3);
  perror("error:");
}

void sub_10005C274(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", "failed to open file %@, error=%s", a1, v3);
}

void sub_10005C2EC()
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
  Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
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

  v6 = sub_100008098(v5, @"ap.ticket.insec.rsa1k.key", &unk_1000814F5);
  v20 = v6;
  v19 = sub_100008098(v6, @"ap.ticket.insec.rsa4k.key", &unk_1000814F6);
  v7 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v8 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v9 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v10 = v9;
  v11 = sub_100008098(v9, @"ap.ticket.dev.key", &unk_100082D46);
  v12 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v13 = v12;
  v14 = sub_100008098(v12, @"ap.ticket.unfused.key", &unk_1000833CF);
  v15 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v16 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v17 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v18 = v17;
  result = sub_100008098(v17, @"ap.ticket.localpolicy.hacktivation.key.private", &unk_1000848BE);
  if ((!v20 || !v19 || !v11 || !v14 || !result) && (!v7 || !v8 || !v10 || !v13 || !v15 || !v16 || !v18))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available");
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFDataRef *a2)
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

              CertData = AMAuthInstallCryptoGetCertData();
              if (CertData)
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

    CertData = AMAuthInstallCryptoGetCertData();
    if (!CertData)
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
    v7 = CertData;
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

  sub_1000088FC();
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
    CFDictionarySetValue(v5, @"@BBTicket", kCFBooleanTrue);
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
    sub_1000088FC();
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
    MutableCopy = CFDictionaryCreateMutable(v10, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
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
  v129 = 0;
  theDict = a5;
  v128 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[6])
  {
    Mutable = 0;
    goto LABEL_189;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v14, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v101 = 2;
    goto LABEL_157;
  }

  v16 = *(a1[6] + 4);
  v17 = (v16 - 94) > 0xA || ((1 << (v16 - 94)) & 0x685) == 0;
  if (!v17)
  {
    sub_100008820();
    v31 = AMAuthInstallBasebandRembrandtFuseIfNecessary();
    if (v31)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  sub_100008880();
  if (v17 || v18 == 520417)
  {
LABEL_44:
    sub_100008820();
    v31 = AMAuthInstallBasebandMAV10FuseIfNecessary();
    if (v31)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  sub_1000088A8();
  if (v17 || v20 == 1327329 || v20 == 1515745 || v20 == 1700065 || v20 == 2044129 || v20 == 2089185 || v20 == 2814177)
  {
    sub_100008820();
    v31 = AMAuthInstallBasebandMAV20FuseIfNecessary();
    if (v31)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  sub_100008850();
  if (!v17)
  {
    sub_1000088EC();
    if (!v17)
    {
      sub_100008840();
      if (v17)
      {
        sub_100008820();
        v31 = AMAuthInstallBasebandN94FuseIfNecessary();
        if (v31)
        {
          goto LABEL_190;
        }

        goto LABEL_59;
      }

      sub_100008830();
      if (v17 || v27 == 7282913)
      {
        sub_100008820();
        v31 = AMAuthInstallBasebandN41FuseIfNecessary();
        if (v31)
        {
          goto LABEL_190;
        }

        goto LABEL_59;
      }

      sub_100008870();
      if (!v17 && v29 != 9572577)
      {
        sub_100008860();
        if (v32)
        {
          sub_100008820();
          v31 = AMAuthInstallBasebandN92FuseIfNecessary();
          if (v31)
          {
            goto LABEL_190;
          }
        }

        goto LABEL_59;
      }
    }

    goto LABEL_44;
  }

  sub_100008820();
  v31 = AMAuthInstallBasebandJ2FuseIfNecessary();
  if (v31)
  {
    goto LABEL_190;
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
        sub_100008890();
        if (!v17)
        {
          v57 = sub_1000087EC();
          v55 = AMAuthInstallBasebandRembrandtStitchFirmware(v57, v58, v59, v60);
          goto LABEL_145;
        }

        if (!v56)
        {
          v73 = sub_1000087EC();
          v55 = AMAuthInstallBasebandICE3StitchFirmware(v73, v74, v75, v76);
          goto LABEL_145;
        }
      }

      sub_100008880();
      if (v17 || v42 == 520417)
      {
LABEL_98:
        v51 = sub_1000087EC();
        v55 = AMAuthInstallBasebandMAV10StitchFirmware(v51, v52, v53, v54);
LABEL_145:
        v101 = v55;
        if (v55)
        {
          goto LABEL_142;
        }

        v110 = a1[6];
        if (*(v110 + 24))
        {
          if (*(v110 + 4) != 80)
          {
            v111 = CFDictionaryGetValue(theDict, @"BBTicket");
            if (v111)
            {
              CFDictionaryAddValue(Mutable, @"bbticket.der", v111);
            }
          }
        }

        v112 = CFRetain(theDict);
        v129 = v112;
        if (a3 && *(a1[6] + 160))
        {
          v113 = AMAuthInstallVinylPersonalizeFirmware(a1, a3, 0, &v129, a6);
          if (v113)
          {
            v101 = v113;
            AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to personalize vinyl fw");
            goto LABEL_157;
          }

          v112 = v129;
        }

        v114 = AMAuthInstallBasebandVinylStitchFirmware(a1, a2, a3, v112, Mutable);
        if (v114)
        {
          v101 = v114;
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to stitch vinyl fw");
          goto LABEL_157;
        }

        v115 = AMAuthInstallProvisioningProvisionIfNecessary(a1, Mutable);
        if (v115)
        {
          v101 = v115;
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "AMAuthInstallProvisioningProvisionIfNecessary failed");
          goto LABEL_157;
        }

LABEL_156:
        v101 = 0;
        *a7 = CFRetain(Mutable);
        goto LABEL_157;
      }

      sub_1000088A8();
      if (v17)
      {
        v93 = sub_1000087EC();
        v55 = AMAuthInstallBasebandMAV20StitchFirmware(v93, v94, v95, v96);
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
            v89 = sub_1000087EC();
            v55 = AMAuthInstallBasebandMAV25StitchFirmware(v89, v90, v91, v92);
            goto LABEL_145;
          }

          if (v44 != 2089185 && v44 != 2814177)
          {
            sub_100008850();
            if (v17)
            {
              v106 = sub_1000087EC();
              v55 = AMAuthInstallBasebandJ2StitchFirmware(v106, v107, v108, v109);
              goto LABEL_145;
            }

            sub_100008860();
            if (v17)
            {
              v97 = sub_1000087EC();
              v55 = AMAuthInstallBasebandN92StitchFirmware(v97, v98, v99, v100);
              goto LABEL_145;
            }

            sub_100008840();
            if (v17)
            {
              v102 = sub_1000087EC();
              v55 = AMAuthInstallBasebandN94StitchFirmware(v102, v103, v104, v105);
              goto LABEL_145;
            }

            sub_100008830();
            if (v17 || v46 == 7282913)
            {
              v69 = sub_1000087EC();
              v55 = AMAuthInstallBasebandN41StitchFirmware(v69, v70, v71, v72);
              goto LABEL_145;
            }

            sub_100008870();
            if (!v17 && v48 != 9572577 && v48 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v48);
              v101 = 13;
LABEL_142:
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "failed to stitch bbfw");
              goto LABEL_157;
            }

            goto LABEL_98;
          }

LABEL_101:
          v61 = sub_1000087EC();
          v55 = AMAuthInstallBasebandMAV22StitchFirmware(v61, v62, v63, v64);
          goto LABEL_145;
        }
      }

      v65 = sub_1000087EC();
      v55 = AMAuthInstallBasebandMAV21StitchFirmware(v65, v66, v67, v68);
      goto LABEL_145;
    }

    LOBYTE(v127) = 0;
    if (!AMAuthInstallBasebandLocalSigningEnabled(a1, &v127))
    {
      v31 = AMAuthInstallBasebandCreateServerRequestDictionary(a1, v10, a6, &v128, a2);
      if (v31)
      {
        goto LABEL_190;
      }

      if (v127)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "this certid specifies local signing");
        v78 = *(a1[6] + 4) - 94;
        if (v78 <= 0xA && ((1 << v78) & 0x685) != 0)
        {
          sub_100008810();
          v88 = AMAuthInstallBasebandRembrandtHandleLocalSigningRequest();
          goto LABEL_184;
        }

        sub_100008880();
        if (v17 || v79 == 520417 || v79 == 938209 || v79 == 1327329 || v79 == 1515745 || v79 == 1700065 || v79 == 2044129 || v79 == 2089185 || v79 == 2814177)
        {
          goto LABEL_138;
        }

        sub_100008850();
        if (v117)
        {
          sub_100008810();
          v88 = AMAuthInstallBasebandJ2HandleLocalSigningRequest();
        }

        else
        {
          sub_1000088EC();
          if (v17)
          {
            goto LABEL_138;
          }

          sub_100008840();
          if (v17)
          {
            sub_100008810();
            v88 = AMAuthInstallBasebandN94HandleLocalSigningRequest();
          }

          else
          {
            sub_100008830();
            if (!v17 && v118 != 7282913)
            {
              sub_100008870();
              if (!v17 && v120 != 9572577)
              {
                sub_100008860();
                if (v17)
                {
                  sub_100008810();
                  v88 = AMAuthInstallBasebandN92HandleLocalSigningRequest();
                  goto LABEL_184;
                }

                AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v122);
LABEL_181:
                v101 = 14;
                goto LABEL_157;
              }

LABEL_138:
              sub_100008810();
              v88 = AMAuthInstallBasebandMAV10HandleLocalSigningRequest();
              goto LABEL_184;
            }

            sub_100008810();
            v88 = AMAuthInstallBasebandN41HandleLocalSigningRequest();
          }
        }

LABEL_184:
        v101 = v88;
        if (v88)
        {
          goto LABEL_157;
        }

        sub_100008810();
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

LABEL_190:
        v101 = v31;
        goto LABEL_157;
      }

      v126 = 0;
      if (!AMAuthInstallBasebandSupportsServerSigning(a1, &v126))
      {
        if (v126 != 1)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "This chipid/certid does not support local or server personalization.");
          v101 = 13;
          goto LABEL_157;
        }

        v123 = sub_100008810();
        v31 = AMAuthInstallRequestSendSync(v123, v124, v125);
        if (v31)
        {
          goto LABEL_190;
        }

        v37 = theDict;
        if (theDict)
        {
          goto LABEL_67;
        }

        goto LABEL_181;
      }
    }

LABEL_189:
    v101 = 1;
    goto LABEL_157;
  }

  v127 = 0;
  Measurements = AMAuthInstallBasebandCreateMeasurements(a1, a2, a3, &v127);
  if (!Measurements)
  {
    v10 = v127;
    v33 = a1[6];
    if (!v33)
    {
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  v101 = Measurements;
  v10 = 0;
LABEL_157:
  SafeRelease(v10);
  SafeRelease(v129);
  SafeRelease(theDict);
  SafeRelease(v128);
  SafeRelease(Mutable);
  SafeRelease(0);
  return v101;
}

uint64_t AMAuthInstallBasebandCreateMeasurements(void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v58 = 0;
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
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
    sub_1000088C8();
    if (!v12)
    {
      v25 = sub_100008800();
      v23 = AMAuthInstallBasebandRembrandtMeasureFirmware(v25, v26, v27);
      goto LABEL_55;
    }

    if (!v24)
    {
      v34 = sub_100008800();
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
      v37 = sub_100008800();
      v23 = AMAuthInstallBasebandMAV25MeasureFirmware(v37, v38, v39);
      goto LABEL_55;
    case 2089185:
    case 2814177:
LABEL_42:
      v28 = sub_100008800();
      v23 = AMAuthInstallBasebandMAV20MeasureFirmware(v28, v29, v30);
      goto LABEL_55;
    case 4587745:
      v47 = sub_100008800();
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
        v51 = sub_100008800();
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
      v40 = sub_100008800();
      v23 = AMAuthInstallBasebandN92MeasureFirmware(v40, v41, v42);
      goto LABEL_55;
    case 5898465:
      v44 = sub_100008800();
      v23 = AMAuthInstallBasebandN94MeasureFirmware(v44, v45, v46);
      goto LABEL_55;
    case 7278817:
    case 7282913:
      v31 = sub_100008800();
      v23 = AMAuthInstallBasebandN41MeasureFirmware(v31, v32, v33);
      goto LABEL_55;
    case 8343777:
    case 9572577:
    case 9781473:
LABEL_39:
      v20 = sub_100008800();
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
LABEL_50:
      v18 = 0;
      goto LABEL_51;
    }

    if ((*(v4 + 4) - 80) <= 0x18)
    {
      sub_100008890();
      if (!v6)
      {
        v18 = AMAuthInstallBasebandRembrandtSupportsServerSigning(v19);
        goto LABEL_51;
      }

      if (!v20)
      {
        v18 = AMAuthInstallBasebandICE3SupportsServerSigning();
        goto LABEL_51;
      }
    }

    sub_100008880();
    v6 = v6 || v5 == 520417;
    if (!v6)
    {
      sub_1000088A8();
      if (v6)
      {
        v18 = AMAuthInstallBasebandMAV20SupportsServerSigning();
        goto LABEL_51;
      }

      if (v7 == 1327329 || v7 == 1515745 || v7 == 1700065 || v7 == 2044129 || v7 == 2089185 || v7 == 2814177)
      {
        v18 = AMAuthInstallBasebandMAV21SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008850();
      if (v6)
      {
        v18 = AMAuthInstallBasebandJ2SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008860();
      if (v6)
      {
        v18 = AMAuthInstallBasebandN92SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008840();
      if (v6)
      {
        v18 = AMAuthInstallBasebandN94SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008830();
      if (v6 || v13 == 7282913)
      {
        v18 = AMAuthInstallBasebandN41SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008870();
      if (!v6 && v15 != 9572577 && v15 != 9781473)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsServerSigning", "chipID: 0x%x is not supported for server signing", v15);
        goto LABEL_50;
      }
    }

    v18 = AMAuthInstallBasebandMAV10SupportsServerSigning();
LABEL_51:
    v2 = 0;
    *a2 = v18;
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
    Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = Mutable;
    if (Mutable)
    {
      v13[0] = a1;
      v14 = Mutable;
      v10 = BbfwReaderStart(a2, sub_100008374, v13);
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

  CFDictionaryApplyFunction(a3, sub_100008678, &context);
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

uint64_t AMAuthInstallBasebandSetKeyHash(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = sub_1000088B8();
  if (v5 && v4 && *(v2 + 216))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      sub_100008908(*(v2 + 216));
      sub_100008908(*(v2 + 200));
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

  v6 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &error);
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
    v8 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &error);
    v3 = v8;
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a2);
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
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          v7 = v10;
          if (v10)
          {
            v4 = 0;
            *a3 = CFRetain(v10);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "Failed to create versionNumber");
            v4 = 2;
          }

          goto LABEL_10;
        }

        v12 = "Version is 0 (invalid)";
      }

      else
      {
        v13 = v7;
        v12 = "failed to convert VersionStr(%@) to int";
      }
    }

    else
    {
      v13 = @"Info.plist";
      v14 = error;
      v12 = "failed to parse %@: %@";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", v12, v13, v14);
    v7 = 0;
  }

LABEL_10:
  SafeRelease(v7);
  SafeRelease(v3);
  SafeRelease(error);
  return v4;
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  cfa = 0;
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      if (*(cf + 46))
      {
        AMAuthInstallReleaseRsaKeyData();
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v13 = AMAuthInstallCopyRsaKeyDataForKey();
        if (v13)
        {
          v12 = v13;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v13);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", LocalizedStatusString, 0);
        }

        else
        {
          v15 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v15;
          if (v15)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
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
    v12 = 1;
  }

  SafeRelease(cfa);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    sub_1000088FC();
    AMAuthInstallLog(v2, v3, v4);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *");
    sub_1000088FC();
    AMAuthInstallLog(v5, v6, v7);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v8 = *(a1 + 280);

  SafeRelease(v8);
}

uint64_t AMAuthInstallBasebandCopyNextComponentName(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    *a2 = 0;
    return 99;
  }

  if ((*(v2 + 4) - 80) > 0x18)
  {
    goto LABEL_4;
  }

  sub_100008890();
  if (!v6)
  {

    return AMAuthInstallBasebandRembrandtCopyNextComponentName();
  }

  if (v27)
  {
LABEL_4:
    sub_100008880();
    v5 = v4;
    v6 = v6 || v3 == 520417;
    if (v6 || v3 == 938209 || v3 == 1327329 || v3 == 1515745 || v3 == 1700065 || v3 == 2044129 || v3 == 2089185 || v3 == 2814177)
    {
LABEL_44:

      return AMAuthInstallBasebandMAV10CopyNextComponentName();
    }

    sub_100008850();
    if (v6)
    {

      return AMAuthInstallBasebandJ2CopyNextComponentName();
    }

    else
    {
      sub_100008860();
      if (v6)
      {

        return AMAuthInstallBasebandN92CopyNextComponentName();
      }

      else
      {
        sub_100008840();
        if (v6)
        {

          return AMAuthInstallBasebandN94CopyNextComponentName();
        }

        else
        {
          sub_100008830();
          if (!v6 && v18 != 7282913)
          {
            sub_100008870();
            v5 = v21;
            if (!v6 && v20 != 9572577 && v20 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyNextComponentName", "chipID: 0x%x is not supported", v20);
              return 99;
            }

            goto LABEL_44;
          }

          return AMAuthInstallBasebandN41CopyNextComponentName();
        }
      }
    }
  }

  else
  {

    return AMAuthInstallBasebandICE3CopyNextComponentName(v24, v25);
  }
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
        v21 = AMAuthInstallBasebandRembrandtSupportsLocalSigning();
LABEL_51:
        v2 = 0;
        *a2 = v21;
        return v2;
      }

      sub_100008880();
      if (v6 || v7 == 520417)
      {
        goto LABEL_44;
      }

      sub_1000088A8();
      if (v6 || v9 == 1327329 || v9 == 1515745 || v9 == 1700065 || v9 == 2044129 || v9 == 2089185 || v9 == 2814177)
      {
        v21 = AMAuthInstallBasebandMAV20SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008850();
      if (v6)
      {
        v21 = AMAuthInstallBasebandJ2SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_1000088EC();
      if (v6)
      {
        goto LABEL_44;
      }

      sub_100008840();
      if (v6)
      {
        v21 = AMAuthInstallBasebandN94SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008830();
      if (v6 || v17 == 7282913)
      {
        v21 = AMAuthInstallBasebandN41SupportsLocalSigning(v16);
        goto LABEL_51;
      }

      sub_100008870();
      if (v6 || v19 == 9572577)
      {
LABEL_44:
        v21 = AMAuthInstallBasebandMAV10SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008860();
      if (v22)
      {
        v21 = AMAuthInstallBasebandN92SupportsLocalSigning();
        goto LABEL_51;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsLocalSigning", "chipID: 0x%x is not supported for local signing", v23);
    }

    v21 = 0;
    goto LABEL_51;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandSetKeyHashInternal(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = sub_1000088B8();
  if (v5 && v4 && *(v2 + 200))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      sub_100008908(*(v2 + 200));
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
  result = sub_1000088E0();
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

  sub_100008880();
  v9 = v8;
  if (v6 || v7 == 520417)
  {
    goto LABEL_44;
  }

  sub_1000088A8();
  if (v6 || v12 == 1327329 || v12 == 1515745 || v12 == 1700065 || v12 == 2044129 || v12 == 2089185 || v12 == 2814177)
  {

    return AMAuthInstallBasebandMAV20LocalProvisionDevice();
  }

  sub_100008850();
  if (v6)
  {

    return AMAuthInstallBasebandJ2LocalProvisionDevice();
  }

  sub_1000088EC();
  v9 = v20;
  if (v6)
  {
    goto LABEL_44;
  }

  sub_100008840();
  if (v6)
  {

    return AMAuthInstallBasebandN94LocalProvisionDevice();
  }

  sub_100008830();
  if (v6 || v23 == 7282913)
  {

    return AMAuthInstallBasebandN41LocalProvisionDevice();
  }

  sub_100008870();
  v9 = v26;
  if (v6 || v25 == 9572577)
  {
LABEL_44:

    return AMAuthInstallBasebandMAV10LocalProvisionDevice();
  }

  sub_100008860();
  if (!v29)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalProvisionDevice", "chipID: 0x%x is not supported for local provisioning", v32);
    return 13;
  }

  return AMAuthInstallBasebandN92LocalProvisionDevice(v30);
}

uint64_t AMAuthInstallBasebandSetAntennaType(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 144));
  SafeRetain(a2);
  result = sub_1000088E0();
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
  result = sub_1000088E0();
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

uint64_t AMAuthInstallBasebandICE3MeasureRamPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  sub_1000092FC();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = sub_1000092F0();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyRamPsi(v7, &theData), v10) || (v11 = CFGetAllocator(a1), BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(theData), v10 = sub_100008920(v11, BytePtr, Length, &v19, &value), v10))
    {
      v17 = v10;
    }

    else
    {
      sub_100009308(v10, v14, "Version = %@");
      CFDictionarySetValue(a3, @"RamPSI-Version", value);
      sub_100009308(v15, v16, "PartialDigest = %@");
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
  sub_100009344();
  sub_1000092FC();
  v4 = CFGetAllocator(v3);
  v5 = FlsParserCreate(v4);
  if (v5)
  {
    v6 = sub_100009370();
    if (v6 || (v6 = FlsParserCopyRamPsi(v5, &v18), v6))
    {
      v14 = v6;
      v9 = 0;
    }

    else
    {
      AMAuthInstallDebugWriteObject(v2, v18, @"RamPSI-Original", 1);
      v7 = sub_10005FEC8(v2, v18, v1, @"RamPSI-Blob", &v17);
      v9 = v17;
      if (v7 || (sub_100009358(v2, v8, @"RamPSI-Personalized"), v10 = sub_1000092F0(), v7 = FlsParserReplaceRamPsi(v10, v11), v7))
      {
        v14 = v7;
      }

      else
      {
        v12 = sub_100009338();
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

uint64_t sub_10005FEC8(const void **a1, const void *a2, CFDictionaryRef theDict, const void *a4, CFTypeRef *a5)
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
    v7 = sub_100009370();
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
      v11 = sub_100008AA8(v8, BytePtr, Length, &v14);
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

  sub_100009358(a1, v7, @"BB-Ticket");
  v9 = CFGetAllocator(a1);
  v10 = FlsParserCreate(v9);
  v11 = v10;
  if (!v10)
  {
    Value = 0;
    goto LABEL_16;
  }

  v12 = FlsParserReadFromData(v10, a2);
  if (v12 || (v13 = sub_100009338(), v12 = FlsParserCopyEbl(v13, v14), v12))
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
  CFDataAppendBytes(Value, byte_1000848BF, -Length & 3);
  BytePtr = CFDataGetBytePtr(theData);
  v19 = CFDataGetLength(theData);
  CFDataAppendBytes(Value, BytePtr, v19);
  sub_100009358(a1, v20, @"EBL-Personalized");
  v21 = sub_1000092F0();
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
  sub_1000092FC();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = sub_1000092F0();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyFlashPsi(v7, &theData, &v28), v10) || (v11 = CFGetAllocator(a1), v12 = CFDataGetBytePtr(theData), v13 = CFDataGetLength(theData), v10 = sub_100008920(v11, v12, v13, &v27, &value), v10))
    {
      v24 = v10;
      v21 = 0;
    }

    else
    {
      v14 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(v28);
      Length = CFDataGetLength(v28);
      v17 = sub_100008AA8(v14, BytePtr, Length, &v26);
      if (v17)
      {
        v24 = v17;
        v21 = v26;
      }

      else
      {
        sub_100009308(v17, v18, "Version = %@");
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        sub_100009308(v19, v20, "PartialDigest = %@");
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", v27);
        v21 = v26;
        sub_100009308(v22, v23, "SecPack Digest = %@");
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
  sub_1000092FC();
  if (*(*(v3 + 48) + 24))
  {
    sub_100009344();
    v5 = CFGetAllocator(v4);
    v6 = FlsParserCreate(v5);
    if (v6)
    {
      v7 = sub_100009370();
      if (v7 || (v7 = FlsParserCopyFlashPsi(v6, &v19, 0), v7))
      {
        v15 = v7;
        v10 = 0;
      }

      else
      {
        AMAuthInstallDebugWriteObject(v2, v19, @"FlashPsi-Original", 1);
        v8 = sub_10005FEC8(v2, v19, v1, @"FlashPSI-Blob", &v18);
        v10 = v18;
        if (v8 || (sub_100009358(v2, v9, @"FlashPsi-Personalized"), v11 = sub_1000092F0(), v8 = FlsParserReplaceFlashPsi(v11, v12), v8))
        {
          v15 = v8;
        }

        else
        {
          v13 = sub_100009338();
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
  v13 = sub_100008AA8(v10, BytePtr, Length, &v25);
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
  v21 = sub_100008AA8(v18, v19, v20, &v24);
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
  sub_1000092FC();
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

  v8 = sub_100009370();
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

          sub_100009320(v8, v25, @"rampsi-original");
          v15 = AMAuthInstallDebugWriteObject(v3, v12, @"rampsi-stitch", 1);
          sub_100009320(v15, v22, @"rampsi-personalized");
        }

        if (!v24 || !v13)
        {
          goto LABEL_21;
        }

        v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v24, v13, &v21);
        if (!v8)
        {
          sub_100009320(v8, v24, @"flashpsi-original");
          v16 = AMAuthInstallDebugWriteObject(v3, v13, @"flashpsi-stitch", 1);
          sub_100009320(v16, v21, @"flashpsi-personalized");
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

            v17 = sub_100009338();
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
            sub_100009320(v8, v20, @"ticket-plus-ebl");
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
      v7 = sub_1000092A8(v6, @"psi_ram.fls");
      v8 = sub_1000092A8(v7, @"ebl.fls");
      v9 = sub_1000092A8(v8, @"psi_flash.fls");
      v10 = sub_1000092A8(v9, @"stack.fls");
      v11 = sub_1000092A8(v10, @"world.fls");
      sub_1000092A8(v11, @"Options.plist");
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

    v7 = sub_1000092CC(v5, v6, @"psi_ram.fls");
    if (v7)
    {
      v9 = sub_1000092CC(v7, v8, @"ebl.fls");
      if (v9)
      {
        v11 = sub_1000092CC(v9, v10, @"psi_flash.fls");
        if (v11)
        {
          v13 = sub_1000092CC(v11, v12, @"stack.fls");
          if (v13)
          {
            sub_1000092CC(v13, v14, @"world.fls");
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
      v8 = sub_1000092A8(v7, @"ENPRG.mbn");
      sub_1000092A8(v8, @"dbl.mbn");
      sub_1000093A4(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      sub_1000093A4(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      sub_1000093A4(a1, @"dsp1.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v9 = sub_1000093A4(a1, @"dsp2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v10 = sub_1000092A8(v9, @"partition.mbn");
      sub_1000092A8(v10, @"Options.plist");
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
      v7 = sub_1000092CC(v5, v6, @"ENPRG.mbn");
      if (v7)
      {
        v9 = sub_1000092CC(v7, v8, @"dbl.mbn");
        if (v9)
        {
          v11 = sub_1000092CC(v9, v10, @"osbl.mbn");
          if (v11)
          {
            v13 = sub_1000092CC(v11, v12, @"amss.mbn");
            if (v13)
            {
              v15 = sub_1000092CC(v13, v14, @"dsp1.mbn");
              if (v15)
              {
                v17 = sub_1000092CC(v15, v16, @"dsp2.mbn");
                if (v17)
                {
                  if (sub_1000092CC(v17, v18, @"partition.mbn"))
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
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      v7 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = sub_1000093DC(v7, @"apps.mbn");
      v9 = sub_1000093DC(v8, @"dsp3.mbn");
      v10 = sub_1000093DC(v9, @"mba.mbn");
      v11 = sub_1000093DC(v10, @"qdsp6sw.mbn");
      v12 = sub_1000093DC(v11, @"rpm.mbn");
      v13 = sub_1000093DC(v12, @"tz.mbn");
      v14 = sub_1000093DC(v13, @"wdt.mbn");
      sub_1000093DC(v14, @"bbcfg.mbn");
      sub_1000093A4(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
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

    v9 = sub_1000092CC(v7, v8, @"acdb.mbn");
    if (!v9)
    {
      AMAuthInstallLog(4, "AMAuthInstallBasebandMAV10MeasureFirmware", "missing acdb or failed to measure image");
    }

    if (!sub_1000092CC(v9, v10, @"apps.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v14 = v14 || v13 == 520417;
    if (!v14 && v13 != 9781473)
    {
      v11 = sub_1000092CC(v11, v12, @"dsp3.mbn");
      if (!v11)
      {
        goto LABEL_48;
      }
    }

    v16 = sub_1000092CC(v11, v12, @"mba.mbn");
    if (!v16 || !sub_1000092CC(v16, v17, @"qdsp6sw.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v21 = v14 || v20 == 9781473;
    v22 = @"restoresbl1.mbn";
    if (v21 || v20 == 520417)
    {
      v18 = sub_1000092CC(v18, v19, @"restoresbl1.mbn");
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

    v25 = sub_100009400(v18, v19, v22, v24);
    if (!v25 || !sub_1000092CC(v25, v26, @"rpm.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v30 = v14 || v29 == 9781473;
    v31 = @"sbl1.mbn";
    if (v30 || v29 == 520417)
    {
      v27 = sub_1000092CC(v27, v28, @"sbl1.mbn");
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

    v34 = sub_100009400(v27, v28, v31, v33);
    if (v34)
    {
      v36 = sub_1000092CC(v34, v35, @"tz.mbn");
      if (v36)
      {
        v38 = *(*(a1 + 48) + 4);
        v39 = AMAuthInstallMonetMeasureWdt;
        if (v38 != 8343777)
        {
          if (v38 != 9572577)
          {
LABEL_46:
            sub_1000092CC(v36, v37, @"bbcfg.mbn");
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
      sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
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
      v7 = sub_1000092CC(v5, v6, @"acdb.mbn");
      if (!v7)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV20MeasureFirmware", "missing acdb or failed to measure image");
      }

      v9 = sub_1000092CC(v7, v8, @"restoresbl1.mbn");
      if (v9 && (v11 = sub_1000092CC(v9, v10, @"Info.plist"), v11) && (v13 = sub_1000092CC(v11, v12, @"sbl1.mbn"), v13) && (v15 = sub_1000092CC(v13, v14, @"multi_image.mbn"), v15) && (v17 = sub_1000092CC(v15, v16, @"Info.plist"), v17))
      {
        sub_1000092CC(v17, v18, @"bbcfg.mbn");
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
      sub_1000093DC(v17, @"xbl_cfg.elf");
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
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v7 = sub_1000093A4(a1, @"sbl2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = sub_1000093DC(v7, @"rpm.mbn");
      v9 = sub_1000093DC(v8, @"apps.mbn");
      v10 = sub_1000093DC(v9, @"dsp1.mbn");
      v11 = sub_1000093DC(v10, @"dsp2.mbn");
      sub_1000093DC(v11, @"dsp3.mbn");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
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
      v7 = sub_1000092CC(v5, v6, @"sbl1.mbn");
      if (v7 && (v9 = sub_1000092CC(v7, v8, @"sbl2.mbn"), v9) && (v11 = sub_1000092CC(v9, v10, @"rpm.mbn"), v11) && (v13 = sub_1000092CC(v11, v12, @"apps.mbn"), v13) && (v15 = sub_1000092CC(v13, v14, @"dsp1.mbn"), v15) && (v17 = sub_1000092CC(v15, v16, @"dsp2.mbn"), v17))
      {
        v19 = sub_1000092CC(v17, v18, @"dsp3.mbn");
        v4 = 15;
        if (v19)
        {
          if (sub_1000092CC(v19, v20, @"restoresbl1.mbn"))
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
      v10 = sub_1000092A8(v9, @"ENPRG.mbn");
      sub_1000092A8(v10, @"dbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v11 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v12 = sub_1000092A8(v11, @"partition.mbn");
      sub_1000092A8(v12, @"Options.plist");
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
      v7 = sub_1000092CC(v5, v6, @"ENPRG.mbn");
      if (v7)
      {
        v9 = sub_1000092CC(v7, v8, @"dbl.mbn");
        if (v9)
        {
          v11 = sub_1000092CC(v9, v10, @"osbl.mbn");
          if (v11)
          {
            v13 = sub_1000092CC(v11, v12, @"amss.mbn");
            if (v13)
            {
              if (sub_1000092CC(v13, v14, @"partition.mbn"))
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

  AMAuthInstallMonetLocalSetProvisioningManifestInfo();
  *(a1 + 256) = 0;

  return AMAuthInstallMonetLocalProvisionDevice();
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
      v10 = sub_1000092A8(v9, @"dbl.mbn");
      sub_1000092A8(v10, @"restoredbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v11 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      sub_1000092A8(v11, @"Options.plist");
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
      v7 = sub_100009514(v5, v6, @"dbl.mbn");
      if (v7)
      {
        v9 = sub_100009514(v7, v8, @"restoredbl.mbn");
        if (v9)
        {
          v11 = sub_100009514(v9, v10, @"osbl.mbn");
          if (v11)
          {
            if (sub_100009514(v11, v12, @"amss.mbn"))
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
          v9 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v9, @"restorepsi.bin");
          sub_100009654();
          v12 = sub_1000093A4(a1, v10, v11);
          v13 = sub_1000093DC(v12, @"SYS_SW.elf");
          v14 = sub_1000093DC(v13, @"TDSFW.elf");
          v15 = sub_1000093DC(v14, @"LTEFW.elf");
          v16 = sub_1000093DC(v15, @"bbcfg.bin");
          v17 = sub_1000093DC(v16, @"3GFW.elf");
          v18 = sub_1000093DC(v17, @"2GFW.elf");
          v19 = sub_1000093DC(v18, @"RFFW.elf");
          v20 = sub_1000093DC(v19, @"AudioFW.elf");
          v21 = sub_1000093DC(v20, @"Debug_info.elf");
          v22 = sub_1000093DC(v21, @"RPCU.elf");
          v23 = sub_1000093DC(v22, @"DPC.elf");
          v24 = sub_1000093DC(v23, @"CDMA2KFW.elf");
          v25 = @"custpack.elf";
          goto LABEL_15;
          v37 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v37, @"restorepsi.bin");
          sub_100009654();
          v40 = sub_1000093A4(a1, v38, v39);
          v41 = sub_1000093DC(v40, @"SYS_SW.elf");
          v42 = sub_1000093DC(v41, @"TDSFW.elf");
          v24 = sub_1000093DC(v42, @"LTEFW.elf");
          v25 = @"bbcfg.bin";
          goto LABEL_15;
        case 'e':
          v26 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v26, @"restorepsi.bin");
          sub_100009654();
          v29 = sub_1000093A4(a1, v27, v28);
          v30 = sub_1000093DC(v29, @"SYS_SW.elf");
          v31 = sub_1000093DC(v30, @"TDSFW.elf");
          v32 = sub_1000093DC(v31, @"LTEFW.elf");
          v33 = sub_1000093DC(v32, @"bbcfg.bin");
          v34 = sub_1000093DC(v33, @"3GFW.elf");
          v35 = sub_1000093DC(v34, @"2GFW.elf");
          v36 = sub_1000093DC(v35, @"RFFW.elf");
          v24 = sub_1000093DC(v36, @"AudioFW.elf");
          v25 = @"Debug_info.elf";
          goto LABEL_15;
        case 'g':
          v43 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v43, @"restorepsi.bin");
          sub_100009654();
          v46 = sub_1000093A4(a1, v44, v45);
          v47 = sub_1000093DC(v46, @"SYS_SW.elf");
          v48 = sub_1000093DC(v47, @"LTEFW.elf");
          v49 = sub_1000093DC(v48, @"bbcfg.bin");
          v50 = sub_1000093DC(v49, @"3GFW.elf");
          v51 = sub_1000093DC(v50, @"RFFW.elf");
          v52 = sub_1000093DC(v51, @"AudioFW.elf");
          v53 = sub_1000093DC(v52, @"Debug_info.elf");
          v24 = sub_1000093DC(v53, @"GNSS_FW.elf");
          v25 = @"irx_coefficient.elf";
          goto LABEL_15;
        case 'h':
          IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v8 + 8));
          if (IsICE19BBGoldCertIDECDSA)
          {
            v55 = sub_100009698(IsICE19BBGoldCertIDECDSA, @"psi_ram.bin");
            v56 = @"restorepsi.bin";
            v57 = AMAuthInstallRembrandtCreateStitchedRestorePSI;
          }

          else
          {
            v55 = sub_1000097B8(IsICE19BBGoldCertIDECDSA, @"psi_ram2.bin", AMAuthInstallRembrandtCreateStitchedPSI2);
            v56 = @"restorepsi2.bin";
            v57 = AMAuthInstallRembrandtCreateStitchedRestorePSI2;
          }

          sub_1000097B8(v55, v56, v57);
          sub_100009654();
          v60 = sub_1000093A4(a1, v58, v59);
          v61 = sub_1000093DC(v60, @"SYS_SW.elf");
          v62 = sub_1000093DC(v61, @"bbcfg.bin");
          v63 = sub_1000093DC(v62, @"RFFW.elf");
          v64 = sub_1000093DC(v63, @"custpack.elf");
          v65 = sub_1000093DC(v64, @"TPCU.elf");
          v66 = sub_1000093DC(v65, @"upc.elf");
          v24 = sub_1000093DC(v66, @"legacy_rat_fw.elf");
          v25 = @"ant_cfg_data.elf";
LABEL_15:
          sub_1000093DC(v24, v25);
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
          v8 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v8)
          {
            goto LABEL_72;
          }

          v10 = sub_1000096F8(v8, v9, @"restorepsi.bin");
          if (!v10)
          {
            goto LABEL_72;
          }

          v12 = sub_1000096C8(v10, v11, @"ebl.bin");
          if (!v12)
          {
            goto LABEL_72;
          }

          v14 = sub_100009668(v12, v13, @"SYS_SW.elf");
          if (!v14)
          {
            goto LABEL_74;
          }

          v16 = sub_1000092CC(v14, v15, @"TDSFW.elf");
          if (!v16)
          {
            goto LABEL_78;
          }

          v18 = sub_1000092CC(v16, v17, @"LTEFW.elf");
          if (!v18)
          {
            goto LABEL_76;
          }

          v20 = sub_100009758(v18, v19, @"bbcfg.bin");
          if (!v20)
          {
            goto LABEL_75;
          }

          v22 = sub_1000092CC(v20, v21, @"3GFW.elf");
          if (!v22)
          {
            goto LABEL_79;
          }

          v24 = sub_1000092CC(v22, v23, @"2GFW.elf");
          if (!v24)
          {
            goto LABEL_82;
          }

          v26 = sub_1000092CC(v24, v25, @"RFFW.elf");
          if (!v26)
          {
            goto LABEL_77;
          }

          v28 = sub_1000092CC(v26, v27, @"AudioFW.elf");
          if (!v28)
          {
            goto LABEL_80;
          }

          v30 = sub_1000092CC(v28, v29, @"Debug_info.elf");
          if (!v30)
          {
            goto LABEL_81;
          }

          v32 = sub_1000092CC(v30, v31, @"RPCU.elf");
          if (v32)
          {
            v34 = sub_1000092CC(v32, v33, @"DPC.elf");
            if (v34)
            {
              v36 = sub_1000092CC(v34, v35, @"CDMA2KFW.elf");
              if (v36)
              {
                if (sub_1000092CC(v36, v37, @"custpack.elf"))
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
          v60 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v60)
          {
            goto LABEL_72;
          }

          v62 = sub_1000096F8(v60, v61, @"restorepsi.bin");
          if (!v62)
          {
            goto LABEL_72;
          }

          v64 = sub_1000096C8(v62, v63, @"ebl.bin");
          if (!v64)
          {
            goto LABEL_72;
          }

          v66 = sub_100009668(v64, v65, @"SYS_SW.elf");
          if (!v66)
          {
            goto LABEL_74;
          }

          v68 = sub_1000092CC(v66, v67, @"TDSFW.elf");
          if (!v68)
          {
            goto LABEL_78;
          }

          v70 = sub_1000092CC(v68, v69, @"LTEFW.elf");
          if (!v70)
          {
            goto LABEL_76;
          }

          if (sub_100009758(v70, v71, @"bbcfg.bin"))
          {
            goto LABEL_70;
          }

          goto LABEL_75;
        case 'e':
          v38 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v38)
          {
            goto LABEL_72;
          }

          v40 = sub_1000096F8(v38, v39, @"restorepsi.bin");
          if (!v40)
          {
            goto LABEL_72;
          }

          v42 = sub_1000096C8(v40, v41, @"ebl.bin");
          if (!v42)
          {
            goto LABEL_72;
          }

          v44 = sub_100009668(v42, v43, @"SYS_SW.elf");
          if (!v44)
          {
            goto LABEL_74;
          }

          v46 = sub_1000092CC(v44, v45, @"TDSFW.elf");
          if (v46)
          {
            v48 = sub_1000092CC(v46, v47, @"LTEFW.elf");
            if (v48)
            {
              v50 = sub_100009758(v48, v49, @"bbcfg.bin");
              if (!v50)
              {
                goto LABEL_75;
              }

              v52 = sub_1000092CC(v50, v51, @"3GFW.elf");
              if (v52)
              {
                v54 = sub_1000092CC(v52, v53, @"2GFW.elf");
                if (v54)
                {
                  v56 = sub_1000092CC(v54, v55, @"RFFW.elf");
                  if (!v56)
                  {
                    goto LABEL_77;
                  }

                  v58 = sub_1000092CC(v56, v57, @"AudioFW.elf");
                  if (v58)
                  {
                    if (sub_1000092CC(v58, v59, @"Debug_info.elf"))
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
          v72 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v72)
          {
            goto LABEL_72;
          }

          v74 = sub_1000096F8(v72, v73, @"restorepsi.bin");
          if (!v74)
          {
            goto LABEL_72;
          }

          v76 = sub_1000096C8(v74, v75, @"ebl.bin");
          if (!v76)
          {
            goto LABEL_72;
          }

          v78 = sub_100009668(v76, v77, @"SYS_SW.elf");
          if (!v78)
          {
            goto LABEL_74;
          }

          v80 = sub_1000092CC(v78, v79, @"LTEFW.elf");
          if (!v80)
          {
            goto LABEL_76;
          }

          v82 = sub_100009758(v80, v81, @"bbcfg.bin");
          if (!v82)
          {
            goto LABEL_75;
          }

          v84 = sub_1000092CC(v82, v83, @"3GFW.elf");
          if (!v84)
          {
            goto LABEL_79;
          }

          v86 = sub_1000092CC(v84, v85, @"RFFW.elf");
          if (!v86)
          {
            goto LABEL_77;
          }

          v88 = sub_1000092CC(v86, v87, @"AudioFW.elf");
          if (!v88)
          {
            goto LABEL_80;
          }

          v90 = sub_1000092CC(v88, v89, @"Debug_info.elf");
          if (!v90)
          {
            goto LABEL_81;
          }

          v92 = sub_1000092CC(v90, v91, @"GNSS_FW.elf");
          if (v92)
          {
            if (sub_1000092CC(v92, v93, @"irx_coefficient.elf"))
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
          v94 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (v94 && (v96 = sub_1000096F8(v94, v95, @"restorepsi.bin"), v96) && (v98 = sub_1000097D8(v96, v97, @"psi_ram2.bin"), v98) && (v100 = sub_1000097D8(v98, v99, @"restorepsi2.bin"), v100) && (v102 = sub_1000096C8(v100, v101, @"ebl.bin"), v102))
          {
            v104 = sub_100009668(v102, v103, @"SYS_SW.elf");
            if (v104)
            {
              v106 = sub_100009758(v104, v105, @"bbcfg.bin");
              if (v106)
              {
                v108 = sub_1000092CC(v106, v107, @"RFFW.elf");
                if (v108)
                {
                  v110 = sub_1000092CC(v108, v109, @"custpack.elf");
                  if (v110)
                  {
                    v112 = sub_1000092CC(v110, v111, @"ant_cfg_data.elf");
                    if (v112)
                    {
                      v114 = sub_1000092CC(v112, v113, @"TPCU.elf");
                      if (v114)
                      {
                        v116 = sub_1000092CC(v114, v115, @"upc.elf");
                        if (v116)
                        {
                          if (sub_1000092CC(v116, v117, @"legacy_rat_fw.elf"))
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
  if (!a1 || !a1[6])
  {
    return 1;
  }

  MutableCopy = 0;
  v23[1] = a5;
  v24 = 0;
  v23[0] = a1;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 != 0;
  }

  LOBYTE(v24) = v8;
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
    v14 = BbfwReaderStart(v9, sub_1000097FC, v23);
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

      v22 = 0;
      IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(a1, &v22);
      if (!IsLegacyChipId)
      {
        if (v22)
        {
          MutableCopy = 0;
          v12 = 0;
          v13 = @"vinyl";
          goto LABEL_29;
        }

        v16 = *(a1[6] + 152);
        if (v16)
        {
          MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v16);
          if (MutableCopy)
          {
            v17 = *(a1[6] + 168);
            if (!v17 || AMAuthInstallVinylCheckVinylFwLdrVerLegacy(v17))
            {
              v13 = _CopyHexStringFromData(kCFAllocatorDefault, MutableCopy);
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
              v12 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
              v13 = _CopyHexStringFromData(kCFAllocatorDefault, v12);
              if (!v13)
              {
LABEL_24:
                v10 = 2;
                goto LABEL_25;
              }

LABEL_29:
              v21 = sub_1000634B4(v13, @"/update/main/ticket.der", a4, @"EuiccMainTicket", a5);
              if (!v21)
              {
                v21 = sub_1000634B4(v13, @"/update/gold/ticket.der", a4, @"EuiccGoldTicket", a5);
              }

              v10 = v21;
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
        AMAuthInstallLog(3, "AMAuthInstallBasebandVinylCreateMeasurements", "failed to open bbfw archive for reading", value, v11, v12, v13, v14);
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

    CFDictionarySetValue(theDict, @"@EUICCTicket", kCFBooleanTrue);
    return 0;
  }

  return result;
}

uint64_t sub_1000634B4(const __CFString *a1, const __CFString *a2, CFDictionaryRef theDict, void *key, __CFDictionary *a5)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
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

uint64_t AMAuthInstallBundleCopyBuildIdentityForVariant(uint64_t a1, char *a2, CFStringRef theString1, void *a4)
{
  v116 = 0;
  v115 = @"ApBoardID";
  v6 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!a1)
  {
    sub_10000C708();
    v8 = 1;
    goto LABEL_111;
  }

  v4 = 0;
  v8 = 1;
  if (!a4 || (v9 = a2) == 0 || (v10 = a1, (v11 = *(a1 + 16)) == 0))
  {
    Copy = 0;
    goto LABEL_111;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 12);
  theDict = *(v11 + 16);
  v15 = *(v11 + 160);
  if (v15)
  {
    v100 = v15;
    v16 = sub_10000C818();
    v6 = CFStringCreateWithFormat(v16, v17, v18, v100, @"ChipID");
    if (v6)
    {
      sub_10000C8C8();
      v101 = v19;
      v20 = sub_10000C818();
      v115 = CFStringCreateWithFormat(v20, v21, v22, v101, @"BoardID");
      if (v115)
      {
        sub_10000C8C8();
        v102 = v23;
        v24 = sub_10000C818();
        key = CFStringCreateWithFormat(v24, v25, v26, v102, @"SecurityDomain");
        if (key)
        {
          goto LABEL_9;
        }

        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed secdomKey allocation");
        sub_10000C708();
        key = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed boardKey allocation");
        sub_10000C708();
        v115 = 0;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed chipKey allocation");
      sub_10000C708();
    }

    v8 = 99;
    goto LABEL_111;
  }

LABEL_9:
  v27 = sub_100009AD8(v10, theString1);
  Copy = v27;
  v28 = *(v10 + 128);
  if (!v28 || !*(v28 + 32))
  {
    goto LABEL_13;
  }

  Value = CFBooleanGetValue(v27);
  v30 = *(v10 + 128);
  if (!Value)
  {
    v31 = *(v30 + 32);
    goto LABEL_78;
  }

  v31 = *(v30 + 40);
  if (v31)
  {
LABEL_78:
    CFRetain(v31);
    sub_10000C708();
    v8 = 0;
    *a4 = v66;
    goto LABEL_111;
  }

LABEL_13:
  if (theString1)
  {
    v32 = CFBooleanGetValue(Copy);
    AMAuthInstallLog(6, "AMAuthInstallBundleCopyBuildIdentityForVariant", "searching for variant %@ (%d recovery)", theString1, v32);
  }

  else
  {
    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant not specified, will use first variant found for this device in build manifest", v99, v103);
  }

  v33 = CFGetAllocator(v10);
  v34 = AMAuthInstallBundleCopyPublishedVariantsArray(v33, v9, &v116);
  if (v34)
  {
    v8 = v34;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray failed");
    Copy = 0;
    v4 = v116;
    goto LABEL_111;
  }

  v4 = v116;
  if (!v116)
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL");
LABEL_120:
    Copy = 0;
    v8 = 7;
    goto LABEL_111;
  }

  v35 = CFGetTypeID(v116);
  if (v35 != CFArrayGetTypeID())
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "publishedVariants is not a CFArray");
    goto LABEL_120;
  }

  Count = CFArrayGetCount(v4);
  cf = v10;
  v106 = a4;
  theString2 = theString1;
  BOOLean = Copy;
  if (*(*(v10 + 16) + 112))
  {
LABEL_20:
    Copy = 0;
    v109 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v37 = *(v10 + 48);
  if (!v37)
  {
    AMAuthInstallLog(7, "AMAuthInstallBundleCopyBuildIdentityForVariant", "No baseband chipid reported. Will match Build Identity based on ap chipid, boardid, and secdomain only.");
    goto LABEL_20;
  }

  v109 = *(v37 + 4);
  Copy = 1;
LABEL_23:
  if (Count < 1)
  {
LABEL_48:
    if (CFBooleanGetValue(BOOLean))
    {
LABEL_49:
      v48 = *(cf + 2);
      v49 = v48[2];
      v50 = v48[3];
      v51 = v48[4];
      if (theString2)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant %@ isn't published for this device (chipID=0x%08X boardID=0x%X secDom=%d bbChipId=0x%08X) in build manifest", theString2, v49, v50, v51, v109);
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "no variant published for this device (chipID=0x%08X boardID=0x%X secDom=%d bbChipId=0x%08X) in build manifest");
      }

      Copy = 0;
      v8 = 8;
      goto LABEL_111;
    }

    v52 = *(cf + 3);
    if (v52 && (v53 = CFDictionaryGetCount(v52), v53 >= 1))
    {
      v9 = v53;
      Count = calloc(v53, 8uLL);
      if (Count)
      {
        v54 = calloc(v9, 8uLL);
        if (v54 && (CFDictionaryGetKeysAndValues(*(cf + 3), Count, v54), v55 = CFArrayGetCount(v4), v55 >= 1))
        {
          v56 = v55;
          v104 = v6;
          v57 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v57);
            if (ValueAtIndex)
            {
              theString1 = ValueAtIndex;
              v59 = CFGetTypeID(ValueAtIndex);
              if (v59 == CFDictionaryGetTypeID())
              {
                v10 = 0;
                v60 = 0;
                do
                {
                  v61 = CFDictionaryGetValue(theString1, *(Count + 8 * v10));
                  if (v61)
                  {
                    v62 = v54[v10];
                    if (v62)
                    {
                      v60 = CFEqual(v61, v62);
                    }
                  }

                  if (!v60)
                  {
                    break;
                  }

                  ++v10;
                }

                while (v10 < v9);
                if (v60)
                {
                  v63 = CFDictionaryGetValue(theString1, @"Info");
                  if (v63)
                  {
                    v64 = v63;
                    Copy = CFGetTypeID(v63);
                    if (Copy == CFDictionaryGetTypeID() && !*(cf + 56))
                    {
                      v65 = CFDictionaryGetValue(v64, @"Variant");
                      if (v65)
                      {
                        if (!theString2 || CFStringCompare(v65, theString2, 0) == kCFCompareEqualTo)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }

            if (++v57 == v56)
            {
              theString1 = 0;
              goto LABEL_74;
            }
          }

          v98 = CFDictionaryGetValue(v64, @"Variant");
          AMAuthInstallLog(4, "_AMAuthInstallBundleGetMatchingSoftwareCoprocessorBuildIdentity", "%s: Found variant: %@", "_AMAuthInstallBundleGetMatchingSoftwareCoprocessorBuildIdentity", v98);
LABEL_74:
          v6 = v104;
        }

        else
        {
          theString1 = 0;
        }

LABEL_81:
        SafeFree(Count);
        SafeFree(v54);
        if (theString1)
        {
          goto LABEL_82;
        }

        goto LABEL_49;
      }

      theString1 = 0;
    }

    else
    {
      sub_10000C890();
    }

    v54 = 0;
    goto LABEL_81;
  }

  v9 = 0;
  while (1)
  {
    v38 = CFArrayGetValueAtIndex(v4, v9);
    if (!v38)
    {
      goto LABEL_42;
    }

    theString1 = v38;
    v39 = CFGetTypeID(v38);
    if (v39 != CFDictionaryGetTypeID() || !AMAuthInstallSupportCompareStringToInt32(theString1, v115, v13) || !AMAuthInstallSupportCompareStringToInt32(theString1, v6, v14) || CFDictionaryGetValue(theString1, key) && !AMAuthInstallSupportCompareStringToInt32(theString1, key, theDict))
    {
      goto LABEL_42;
    }

    if (Copy && !AMAuthInstallSupportCompareStringToInt32(theString1, @"BbChipID", v109))
    {
      goto LABEL_42;
    }

    v40 = CFDictionaryGetValue(theString1, @"Info");
    if (!v40)
    {
      goto LABEL_42;
    }

    v41 = v40;
    v10 = v6;
    v42 = CFGetTypeID(v40);
    v43 = v42 == CFDictionaryGetTypeID();
    v6 = v10;
    if (!v43)
    {
      goto LABEL_42;
    }

    if (!*(cf + 56) || CFBooleanGetValue(BOOLean))
    {
      v44 = @"Variant";
      goto LABEL_39;
    }

    v46 = CFDictionaryGetValue(v41, @"Variant");
    if (!v46)
    {
      break;
    }

    v47 = v46;
    if (!CFStringHasPrefix(v46, @"Recovery"))
    {
      break;
    }

    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "Restore Behavior specified - skipping recovery variant: %@", v47);
    v6 = v10;
LABEL_42:
    if (Count == ++v9)
    {
      goto LABEL_48;
    }
  }

  v44 = @"RestoreBehavior";
  v6 = v10;
LABEL_39:
  v45 = CFDictionaryGetValue(v41, v44);
  if (!v45 || theString2 && CFStringCompare(v45, theString2, 0))
  {
    goto LABEL_42;
  }

  v97 = CFDictionaryGetValue(v41, @"Variant");
  AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "%s: Found variant: %@", "AMAuthInstallBundleCopyBuildIdentityForVariant", v97);
LABEL_82:
  v67 = sub_10000C818();
  MutableCopy = CFDictionaryCreateMutableCopy(v67, v68, theString1);
  v70 = CFDictionaryGetValue(MutableCopy, @"Manifest");
  v105 = v6;
  if (!v70)
  {
    sub_10000C87C();
LABEL_131:
    v8 = 7;
    goto LABEL_93;
  }

  v71 = sub_10000C818();
  theDicta = CFDictionaryCreateMutableCopy(v71, v72, v70);
  if (!theDicta)
  {
    sub_10000C87C();
    LOBYTE(v70) = 0;
    goto LABEL_131;
  }

  v110 = MutableCopy;
  v73 = CFDictionaryGetCount(v70);
  v6 = malloc(8 * v73);
  v9 = malloc(8 * v73);
  CFDictionaryGetKeysAndValues(v70, &v6->isa, v9);
  if (v73 < 1)
  {
LABEL_92:
    MutableCopy = v110;
    v10 = theDicta;
    CFDictionarySetValue(v110, @"Manifest", theDicta);
    v80 = CFGetAllocator(v110);
    Copy = CFDictionaryCreateCopy(v80, v110);
    v8 = 0;
    LOBYTE(v70) = 1;
  }

  else
  {
    v74 = 0;
    while (1)
    {
      v75 = *(&v6->isa + v74);
      v76 = *&v9[8 * v74];
      v77 = CFGetTypeID(v76);
      if (v77 != CFDictionaryGetTypeID())
      {
        break;
      }

      if (CFDictionaryGetValue(v76, @"Info"))
      {
        v78 = *(cf + 66);
        if (v78)
        {
          if (!_CFDictionaryGetBoolean(v78, v75, 1))
          {
            v79 = sub_10000C7E8();
            AMAuthInstallLog(v79, "_AMAuthInstallBundleCreateAbridgedEntries", "Removing %@ from the build identity");
            CFDictionaryRemoveValue(theDicta, v75);
          }
        }
      }

      if (v73 == ++v74)
      {
        goto LABEL_92;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateAbridgedEntries", "Unexpected manifest entry structure - should be dictionary.\n");
    Copy = 0;
    v8 = 0;
    LOBYTE(v70) = 1;
    MutableCopy = v110;
    v10 = theDicta;
  }

LABEL_93:
  SafeFree(v6);
  SafeFree(v9);
  SafeRelease(v10);
  SafeRelease(MutableCopy);
  if ((v70 & 1) == 0)
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "unable to abridge the build identity");
    v6 = v105;
    goto LABEL_111;
  }

  v81 = CFBooleanGetValue(BOOLean);
  v82 = *(cf + 16);
  v6 = v105;
  if (!v81)
  {
    SafeRelease(*(v82 + 32));
    v90 = *(cf + 16);
    if (!v90)
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "amai->bundleParameters is NULL");
      v8 = 0;
      goto LABEL_111;
    }

    v91 = *(v90 + 16);
    v92 = CFGetAllocator(cf);
    if (v91)
    {
      MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v92, Copy, *(*(cf + 16) + 16), (*(cf + 16) + 32));
      if (MergedDictionary)
      {
        goto LABEL_133;
      }

      v93 = *(*(cf + 16) + 32);
    }

    else
    {
      v93 = CFDictionaryCreateCopy(v92, Copy);
      *(*(cf + 16) + 32) = v93;
    }

    if (v93)
    {
      v94 = CFGetAllocator(cf);
      ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v94, theString1, @"Info.DeviceClass");
      *(*(cf + 2) + 120) = ValueForKeyPathInDict;
      SafeRetain(ValueForKeyPathInDict);
      v89 = CFRetain(*(*(cf + 16) + 32));
      v86 = v106;
      goto LABEL_110;
    }

LABEL_132:
    v8 = 2;
    goto LABEL_111;
  }

  SafeRelease(*(v82 + 40));
  v83 = *(cf + 16);
  if (!v83 || !*(v83 + 24))
  {
    v88 = CFGetAllocator(cf);
    v87 = CFDictionaryCreateCopy(v88, Copy);
    *(*(cf + 16) + 40) = v87;
    v86 = v106;
LABEL_100:
    if (v87)
    {
      v89 = CFRetain(v87);
LABEL_110:
      v8 = 0;
      *v86 = v89;
      goto LABEL_111;
    }

    goto LABEL_132;
  }

  v84 = CFGetAllocator(cf);
  MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v84, Copy, *(*(cf + 16) + 24), (*(cf + 16) + 40));
  v86 = v106;
  if (!MergedDictionary)
  {
    v87 = *(*(cf + 16) + 40);
    goto LABEL_100;
  }

LABEL_133:
  v8 = MergedDictionary;
  AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed to merge build identities");
LABEL_111:
  SafeRelease(v4);
  SafeRelease(v115);
  SafeRelease(v6);
  SafeRelease(key);
  SafeRelease(Copy);
  return v8;
}

uint64_t AMAuthInstallBundleCopyFullPathForBuildIdentityKey(CFDictionaryRef **a1, const void *a2, void *key, const __CFDictionary *a4, CFTypeRef *a5)
{
  v5 = 0;
  v16 = 0;
  v6 = 1;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(*a1[16], key);
    v16 = Value;
    if (Value)
    {
      v5 = Value;
      CFRetain(Value);
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "using override: %@ = %@", key, v5);
    }

    else
    {
      if (!a4)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v5 = sub_100009B34(a4);
      if (!v5)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "%@ key not found.", key);
        goto LABEL_9;
      }

      v13 = CFGetAllocator(a1);
      v14 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v13, a2, v5, 0, &v16);
      v5 = v16;
      if (v14)
      {
        v6 = v14;
        goto LABEL_9;
      }
    }

    v6 = 0;
    *a5 = CFRetain(v5);
    v5 = v16;
  }

LABEL_9:
  SafeRelease(v5);
  return v6;
}

uint64_t sub_10006420C(CFDictionaryRef **a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, const void *a5, const void *a6, __CFArray *a7, const __CFDictionary *a8)
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
        v32 = sub_100009B34(v29);
        v33 = sub_100009B34(v31);
        if (CFStringCompare(v32, v33, 0))
        {
LABEL_26:
          v24 = 0;
          v27 = 1;
          goto LABEL_12;
        }

        if (v32 && v33)
        {
          v34 = CFGetAllocator(a1);
          v22 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v34, a5, v32, 0, &v36);
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

  v19 = sub_100009B34(a2);
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

uint64_t AMAuthInstallBundlePersonalizePartialWithRecoveryOS(void *a1, char *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v235 = 0;
  v236 = 0;
  v233 = 0;
  v234 = 0;
  v231 = 0;
  v232 = 0;
  v230 = 0;
  v228 = 0;
  value = 0;
  v226 = 0;
  v227 = 0;
  if (!a1[2])
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)", a4, a5, a6, a7);
    v14 = 0;
    sub_10000C6E4();
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
    v17 = sub_10000C758();
    goto LABEL_147;
  }

  v17 = sub_10000C758();
  if (v18)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    sub_10000B538(a1);
    v25 = sub_10000C774();
    DebugDirectory = _AMAuthInstallBundleCreateDebugDirectory(v25, v26);
    v34 = sub_10000C854(DebugDirectory, v28, v29, &v236, v30, v31, v32, v33, theArray, v190, BOOLean, v195, v197, v199, v201, v203, v205, a8, v209, cf, v213, theDict, a5, a4, v221, a2);
    if (v34)
    {
      v15 = v34;
      v14 = 0;
      sub_10000C6E4();
      v12 = 0;
      MutableCopy = 0;
    }

    else
    {
      v21 = v236;
      if (!v236)
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        MutableCopy = 0;
        goto LABEL_160;
      }

      v35 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v35, 0, v236);
      if (!MutableCopy)
      {
        v14 = 0;
        sub_10000C6E4();
        v12 = 0;
        goto LABEL_162;
      }

      if (!v218)
      {
        sub_10000C708();
        if (v22)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      v39 = CFGetAllocator(a1);
      v12 = CFURLCreateCopyAppendingPathComponent(v39, v24, @"RecoveryOS", 1u);
      v40 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v218, v23, &v235);
      if (!v40)
      {
        v21 = v235;
        if (v235)
        {
          v41 = CFGetAllocator(a1);
          v14 = CFDictionaryCreateMutableCopy(v41, 0, v235);
          if (!v14)
          {
            sub_10000C6E4();
            goto LABEL_162;
          }

          _AMAuthInstallBundleCreateDebugDirectory(a1, v12);
          if (v22)
          {
LABEL_9:
            CFGetAllocator(a1);
            sub_10000C830();
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
          v206 = v23;
          v42 = CFGetAllocator(a1);
          if (a9)
          {
            sub_10000C8EC();
            Mutable = CFArrayCreateMutableCopy(v43, v44, v45);
          }

          else
          {
            Mutable = CFArrayCreateMutable(v42, 0, &kCFTypeArrayCallBacks);
          }

          v11 = Mutable;
          if (!Mutable)
          {
            v17 = sub_10000C6A8();
            goto LABEL_164;
          }

          v222 = v13;
          if (!a10 || !v13)
          {
            goto LABEL_25;
          }

          v47 = sub_10000B68C(a1, MutableCopy, v13, Mutable);
          if (!v47)
          {
            if (!v14)
            {
              v157 = sub_10000C774();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v157, v158, v159);
              if (!IfNecessary)
              {
                goto LABEL_27;
              }

              goto LABEL_119;
            }

            sub_10000C8D4();
            v47 = sub_10000B68C(v48, v49, v50, v11);
            if (!v47)
            {
LABEL_25:
              v51 = sub_10000C774();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53);
              if (!IfNecessary)
              {
                if (v14)
                {
                  v55 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v12, &value);
                  if (v55)
                  {
                    v185 = sub_10000C780(v55);
                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a recovery OS receipt: %@", v185);
                    goto LABEL_182;
                  }

                  CFDictionarySetValue(v230, @"RecoveryOS", value);
                  SafeRelease(value);
                  HIDWORD(v204) = 1;
                  goto LABEL_30;
                }

LABEL_27:
                HIDWORD(v204) = 0;
LABEL_30:
                v56 = sub_100065BA8(a1, v13, v224, v24, MutableCopy, v218);
                if (v56)
                {
                  v15 = v56;
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to create build identity with overrides", theArraya);
                  goto LABEL_182;
                }

                v214 = v14;
                theDicta = MutableCopy;
                v210 = v11;
                cfa = v24;
                if (!a1[6])
                {
                  goto LABEL_74;
                }

                v238[0] = 0;
                v57 = CFGetAllocator(a1);
                v198 = @"BbFDRSecurityKeyHash";
                v200 = 0;
                BOOLeana = @"BbCalibrationManifestKeyHash";
                v196 = @"BbFactoryActivationManifestKeyHash";
                v191 = @"BbActivationManifestKeyHash";
                v65 = _CFArrayCreateWithObjects(v57, v58, v59, v60, v61, v62, v63, v64, @"BbProvisioningManifestKeyHash");
                v72 = v65;
                if (!v65)
                {
                  v15 = 2;
                  goto LABEL_55;
                }

                v73 = sub_10000C854(v65, v66, v67, v238, v68, v69, v70, v71, theArrayb, @"BbActivationManifestKeyHash", @"BbCalibrationManifestKeyHash", @"BbFactoryActivationManifestKeyHash", @"BbFDRSecurityKeyHash", 0, v202, v204, v23, v208, v11, cfa, v14, MutableCopy, v218, v220, v13, v224);
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
                v202 = v12;
                v76 = 0;
                v22 = "_AMAuthInstallBundleSetBasebandKeyHashes";
                while (1)
                {
                  v237 = 0;
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
                    v79 = sub_10000C8B4();
                    AMAuthInstallLog(v79, v80, "setting (from PR2 document/Override): %@ = %@");
                    v81 = sub_10000C740();
                    if (AMAuthInstallBasebandSetKeyHashInternal(v81))
                    {
                      v82 = sub_10000C79C();
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

                      v191 = v85;
                      AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandKeyHashes", "setting (from hash baseband returned): %@ = %@", v78);
                      v87 = sub_10000C740();
                      if (AMAuthInstallBasebandSetKeyHashInternal(v87))
                      {
                        v88 = sub_10000C79C();
                        AMAuthInstallLog(v88, v89, "Failed setting (from hash baseband returned) %@ = %@");
                      }
                    }

                    else
                    {
                      v90 = sub_10000C740();
                      TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(v90, v91, v92);
                      if (TagForKeyHashName)
                      {
                        v15 = TagForKeyHashName;
LABEL_53:
                        v14 = v214;
                        MutableCopy = theDicta;
                        v13 = v222;
                        v11 = v210;
LABEL_55:
                        SafeRelease(v72);
                        SafeRelease(v238[0]);
                        if (!v15)
                        {
                          v238[0] = 0;
                          v106 = sub_10000C854(v99, v100, v101, v238, v102, v103, v104, v105, theArrayb, v191, BOOLeana, v196, v198, v200, v202, v204, v206, v208, v210, cfa, v214, theDicta, v218, v220, v222, v224);
                          if (v106)
                          {
                            theArrayc = v106;
                            v113 = "Failed to read build identity : error = %d";
LABEL_170:
                            v114 = 3;
                          }

                          else
                          {
                            v107 = CFDictionaryGetValue(v238[0], @"BbFactoryDebugEnable");
                            if (!v107)
                            {
                              goto LABEL_64;
                            }

                            v108 = v107;
                            CFBooleanGetTypeID();
                            v109 = sub_10000C8A8();
                            if (v22 != CFGetTypeID(v109))
                            {
                              goto LABEL_64;
                            }

                            if (CFBooleanGetValue(v108) == 1)
                            {
                              AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", "setting (from build manifest): %@ = %@", @"BbFactoryDebugEnable", kCFBooleanTrue);
                              v110 = sub_10000C740();
                              v112 = AMAuthInstallSetBbRequestEntry(v110, v111, kCFBooleanTrue);
                              if (v112)
                              {
                                theArrayc = @"BbFactoryDebugEnable";
                                v192 = v112;
                                v113 = "Failed setting (from build manifest) %@ : error = %d";
                                goto LABEL_170;
                              }

LABEL_64:
                              SafeRelease(v238[0]);
                              if (*(a1 + 224))
                              {
                                if (!v230)
                                {
                                  v15 = 1;
                                  goto LABEL_151;
                                }

                                v115 = CFDictionaryGetValue(v230, @"Personalized");
                                if (!v115)
                                {
                                  AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized array");
                                  v15 = 14;
                                  goto LABEL_151;
                                }

                                v116 = v115;
                                v13 = v12;
                                v117 = CFArrayGetCount(v115);
                                if (v117 >= 1)
                                {
                                  v118 = v117;
                                  v119 = 0;
                                  while (1)
                                  {
                                    v120 = CFArrayGetValueAtIndex(v116, v119);
                                    if (!v120)
                                    {
                                      break;
                                    }

                                    if (CFStringHasSuffix(v120, @".bbfw"))
                                    {
                                      v121 = sub_10000C7E8();
                                      AMAuthInstallLog(v121, "_AMAuthInstallBundleRemovePersonalizedBbfw", "removing personalizedEntry %@");
                                      CFArrayRemoveValueAtIndex(v116, v119--);
                                      --v118;
                                    }

                                    if (++v119 >= v118)
                                    {
                                      goto LABEL_73;
                                    }
                                  }

                                  AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized entry %d", v119);
                                  v15 = 14;
                                  v14 = v214;
                                  MutableCopy = theDicta;
                                  v11 = v210;
LABEL_151:
                                  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to remove bbfw: %@", LocalizedStatusString);
LABEL_152:
                                  sub_10000C6E4();
                                  v17 = v222;
                                  goto LABEL_147;
                                }

LABEL_73:
                                *(a1 + 224) = 0;
                                v14 = v214;
                                MutableCopy = theDicta;
                                v13 = v222;
                              }

LABEL_74:
                              if (!v13)
                              {
                                goto LABEL_132;
                              }

                              v239.length = CFArrayGetCount(v13);
                              v239.location = 0;
                              if (!CFArrayContainsValue(v13, v239, @"BasebandFirmware") || (LOBYTE(v238[0]) = 0, LOBYTE(v237) = 0, v122 = *(a1 + 76), AMAuthInstallBasebandIsFused(a1, v238)) || (!LOBYTE(v238[0]) ? (v123 = AMAuthInstallBasebandPersonalizationRequired(a1) == 0) : (v123 = 1), AMAuthInstallBasebandLocalSigningEnabled(a1, &v237) || (!v237 ? (v124 = v123) : (v124 = 0), v124 && !v122)))
                              {
                                v13 = 0;
                                goto LABEL_121;
                              }

                              v125 = *(a1 + 76);
                              v126 = CFDictionaryGetValue(v230, @"Personalized");
                              if (!v126)
                              {
                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in receiptDict", @"Personalized");
                                v17 = sub_10000C6A8();
                                v15 = 8;
                                goto LABEL_187;
                              }

                              v127 = v126;
                              v128 = sub_10000C74C();
                              v130 = CFDictionaryGetValue(v128, v129);
                              if (v130)
                              {
                                v131 = v130;
                                v132 = CFDictionaryGetValue(v130, @"BasebandFirmware");
                                if (v132 | CFDictionaryGetValue(*a1[16], @"BasebandFirmware"))
                                {
                                  sub_10000BA10(v13, @"BasebandFirmware");
                                  BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v226);
                                  if (BasebandComponentName)
                                  {
                                    v15 = BasebandComponentName;
                                    v17 = sub_10000C6A8();
                                  }

                                  else
                                  {
                                    v134 = v226;
                                    if (v226)
                                    {
                                      CFArrayGetCount(v127);
                                      v135 = sub_10000C910();
                                      if (CFArrayContainsValue(v135, v240, v134))
                                      {
                                        AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "entry %@ has been previously personalized; skipping it", v134);
                                        if (v125)
                                        {
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "inserting provisioning info (if any) into existing bbfw for %@", v134);
                                          v136 = CFGetAllocator(a1);
                                          v137 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v136, cfa, v134, 0, &v228);
                                          MutableCopy = theDicta;
                                          v138 = v224;
                                          if (!v137)
                                          {
                                            v14 = v214;
                                            if (!v228)
                                            {
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bbfwURL AMAuthInstallPlatformCopyURLWithAppendedComponent failed");
                                              v17 = sub_10000C6A8();
                                              v15 = 2;
                                              goto LABEL_116;
                                            }

                                            v139 = AMAuthInstallBasebandCopyFirmware(a1, v228, v228);
                                            if (v139)
                                            {
                                              v15 = v139;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandCopyFirmware failed");
                                            }

                                            else
                                            {
                                              v140 = AMAuthInstallBasebandCopyAllComponents(a1, v228, &v227);
                                              if (!v140)
                                              {
                                                v141 = AMAuthInstallBasebandWriteFilesToBbfw(a1, v228, v227);
                                                if (!v141)
                                                {
                                                  v13 = 0;
                                                  goto LABEL_122;
                                                }

                                                v15 = v141;
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandWriteFilesToBbfw failed");
                                                v21 = 0;
LABEL_114:
                                                v13 = 0;
LABEL_115:
                                                v17 = v222;
LABEL_116:
                                                v11 = v210;
                                                goto LABEL_147;
                                              }

                                              v15 = v140;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandCopyAllComponents failed");
                                            }

                                            v17 = sub_10000C6A8();
                                            goto LABEL_116;
                                          }

                                          v15 = v137;
                                          v17 = sub_10000C6A8();
LABEL_187:
                                          v14 = v214;
                                          goto LABEL_116;
                                        }

                                        v13 = 0;
                                        v14 = v214;
                                        MutableCopy = theDicta;
LABEL_121:
                                        v138 = v224;
LABEL_122:
                                        v161 = sub_1000667E4(a1, v222, MutableCopy, v230, v138, v14, &v234, &v233);
                                        if (v161)
                                        {
                                          v15 = v161;
                                          goto LABEL_113;
                                        }

                                        v162 = CFDictionaryGetValue(v230, @"CumulativeResponse");
                                        if (!(v162 | v234))
                                        {
                                          v21 = v13;
                                          v13 = 0;
                                          v15 = 0;
                                          goto LABEL_115;
                                        }

                                        if (v234)
                                        {
                                          v163 = AMAuthInstallApCreatePersonalizedResponse(a1, v234, &v232);
                                          if (v163)
                                          {
                                            v15 = v163;
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to create ap ticket", theArraya);
                                            goto LABEL_113;
                                          }

                                          v164 = HIDWORD(v204);
                                          if (!v233)
                                          {
                                            v164 = 0;
                                          }

                                          if (v164 == 1)
                                          {
                                            PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v233, &v231);
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
                                          v232 = CFRetain(v162);
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "This is an install/stitch-only request.");
                                        }

LABEL_132:
                                        *v225 = v13;
                                        v166 = CFDictionaryGetValue(v230, @"Updaters");
                                        if (v166)
                                        {
                                          v167 = v166;
                                          v168 = CFDictionaryGetCount(v166);
                                          v13 = malloc(8 * v168);
                                          if (v13)
                                          {
                                            CFDictionaryGetKeysAndValues(v167, v13, 0);
                                            if (v168 >= 1)
                                            {
                                              v169 = v13;
                                              do
                                              {
                                                v170 = *v169++;
                                                v171 = CFDictionaryGetValue(v167, v170);
                                                CFDictionaryRemoveValue(v171, @"RequestTags");
                                                --v168;
                                              }

                                              while (v168);
                                            }

                                            v172 = kCFBooleanFalse;
                                            v173 = AMAuthInstallBundleWriteReceipt(a1, cfa, v230, kCFBooleanFalse);
                                            if (!v173)
                                            {
                                              v14 = v214;
                                              MutableCopy = theDicta;
                                              goto LABEL_140;
                                            }

                                            v15 = v173;
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v173);
                                            v14 = v214;
                                            MutableCopy = theDicta;
                                          }

                                          else
                                          {
                                            v15 = 2;
                                          }

                                          v17 = v222;
                                          v11 = v210;
                                        }

                                        else
                                        {
                                          v13 = 0;
                                          v172 = kCFBooleanFalse;
LABEL_140:
                                          v11 = v210;
                                          v174 = sub_10000C774();
                                          v179 = _AMAuthInstallBundlePopulatePersonalizedBundle(v174, v175, v176, v220, MutableCopy, v177, v178, v222, v208, v210, v172);
                                          if (v179)
                                          {
                                            v184 = sub_10000C780(v179);
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize bundle", v184);
                                          }

                                          else if (v233)
                                          {
                                            v15 = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, v218, v12, v206, v14, v231, v230, v222, v208, v210, kCFBooleanTrue);
                                            if (v15)
                                            {
                                              v180 = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize recovery OS bundle", v180);
                                            }
                                          }

                                          else
                                          {
                                            v15 = 0;
                                          }

                                          v17 = v222;
                                        }

                                        v21 = *v225;
                                        goto LABEL_147;
                                      }

                                      AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "performing separate baseband firmware personalization of %@", v134);
                                      v142 = CFDictionaryGetValue(theDicta, @"UniqueBuildID");
                                      if (!v142)
                                      {
                                        AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks UniqueBuildID");
                                        v13 = 0;
                                        goto LABEL_104;
                                      }

                                      v143 = v142;
                                      v144 = CFGetAllocator(a1);
                                      v145 = CFDictionaryCreateMutable(v144, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                      v13 = v145;
                                      if (!v145)
                                      {
                                        goto LABEL_193;
                                      }

                                      CFDictionarySetValue(v145, @"UniqueBuildID", v143);
LABEL_104:
                                      v146 = a1[2];
                                      if (*(v146 + 136) || *(v146 + 144))
                                      {
                                        v147 = CFDictionaryGetValue(theDicta, @"ProductMarketingVersion");
                                        if (v147)
                                        {
                                          v148 = v147;
                                          if (v13 || (v149 = CFGetAllocator(a1), (v13 = CFDictionaryCreateMutable(v149, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0))
                                          {
                                            CFDictionarySetValue(v13, @"ProductMarketingVersion", v148);
                                            goto LABEL_110;
                                          }

LABEL_193:
                                          v21 = 0;
                                          v15 = 2;
                                          v14 = v214;
LABEL_197:
                                          MutableCopy = theDicta;
                                          goto LABEL_115;
                                        }

                                        AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks ProductMarketingVersion");
                                      }

LABEL_110:
                                      v150 = sub_10006420C(a1, v132, 0, v131, v224, cfa, v127, v13);
                                      v14 = v214;
                                      if (!v150)
                                      {
                                        v151 = sub_10000C740();
                                        v155 = AMAuthInstallBundleWriteReceipt(v151, v152, v153, v154);
                                        MutableCopy = theDicta;
                                        if (!v155)
                                        {
                                          goto LABEL_121;
                                        }

                                        v156 = sub_10000C780(v155);
                                        AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to write receipt: %@", v156);
LABEL_113:
                                        v21 = v13;
                                        goto LABEL_114;
                                      }

                                      v15 = v150;
                                      v21 = v13;
                                      v13 = 0;
                                      goto LABEL_197;
                                    }

                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "nextBbfwComponentStr is NULL");
                                    v17 = sub_10000C6A8();
                                    v15 = 14;
                                  }

LABEL_177:
                                  v14 = v214;
                                  MutableCopy = theDicta;
                                  goto LABEL_116;
                                }

                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in manifestDict", @"BasebandFirmware");
                              }

                              else
                              {
                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in buildIdentity", @"Manifest");
                              }

                              v17 = sub_10000C6A8();
                              v15 = 8;
                              goto LABEL_177;
                            }

                            theArrayc = @"BbFactoryDebugEnable";
                            v113 = "%@ (from build manifest) is not true. Not setting it";
                            v114 = 6;
                          }

                          AMAuthInstallLog(v114, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", v113, theArrayc, v192);
                          goto LABEL_64;
                        }

LABEL_182:
                        v17 = sub_10000C6A8();
                        goto LABEL_147;
                      }

                      if (!v237)
                      {
                        goto LABEL_149;
                      }

                      if (CFDictionaryGetValue(v238[0], v237))
                      {
                        v94 = sub_10000C8B4();
                        AMAuthInstallLog(v94, v95, "setting (from build manifest): %@ = %@");
                        v96 = sub_10000C740();
                        if (AMAuthInstallBasebandSetKeyHashInternal(v96))
                        {
                          v97 = sub_10000C79C();
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
              v160 = sub_10000C780(IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a receipt: %@", v160);
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
      sub_10000C6E4();
    }

    v11 = 0;
    v17 = 0;
  }

LABEL_147:
  v181 = v21;
  SafeRelease(v17);
  SafeRelease(v11);
  SafeRelease(v236);
  SafeRelease(MutableCopy);
  SafeRelease(v234);
  SafeRelease(v233);
  SafeRelease(v232);
  SafeRelease(v231);
  SafeRelease(v230);
  SafeRelease(v181);
  SafeRelease(v228);
  SafeRelease(v227);
  SafeRelease(v226);
  SafeFree(v13);
  SafeRelease(v12);
  SafeRelease(v235);
  SafeRelease(v14);
  return v15;
}

uint64_t AMAuthInstallBundleCopyReceiptCreateIfNecessary(uint64_t a1, const __CFURL *a2, CFPropertyListRef *a3)
{
  v51 = 0;
  propertyList = 0;
  v50 = 0;
  context = 0;
  v49 = 0;
  AMAuthInstallLockLock(*(a1 + 360));
  Mutable = 0;
  v7 = 1;
  if (!a3 || !a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (*(a1 + 128))
  {
    v11 = CFURLGetString(a2);
    location = CFStringFind(v11, @"RecoveryOS", 0).location;
    v13 = &kCFBooleanTrue;
    if (location == -1)
    {
      v13 = &kCFBooleanFalse;
    }

    v14 = *v13;
    if (*(*(a1 + 128) + 8))
    {
      Value = CFBooleanGetValue(v14);
      v16 = *(a1 + 128);
      v17 = *(v16 + 8);
      if (Value)
      {
        v18 = CFDictionaryGetValue(*(v16 + 8), @"RecoveryOS");
        if (!v18)
        {
          goto LABEL_14;
        }

        v17 = v18;
      }

      v19 = CFDictionaryGetValue(v17, @"Manifest");
      if (v17 && v19 && CFDictionaryGetCount(v19) >= 1)
      {
        v20 = CFGetAllocator(a1);
        DeepCopy = CFPropertyListCreateDeepCopy(v20, v17, 2uLL);
        Mutable = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        *a3 = DeepCopy;
        v7 = 2 * (DeepCopy == 0);
        goto LABEL_18;
      }
    }

LABEL_14:
    v22 = CFGetAllocator(a1);
    v23 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v22, a2, @"amai/receipt.plist", 0, &v51);
    if (v23)
    {
      v7 = v23;
LABEL_16:
      Mutable = 0;
LABEL_17:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_18;
    }

    v25 = AMAuthInstallPlatformFileURLExists(v51, &v50);
    if (v25)
    {
      v7 = v25;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v25);
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "AMAuthInstallPlatformFileURLExists failed: %@", LocalizedStatusString, context);
      goto LABEL_16;
    }

    v26 = v50;
    v27 = CFGetAllocator(a1);
    if (v26)
    {
      DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
      if (DictionaryFromFileURL)
      {
        v7 = DictionaryFromFileURL;
        v47 = AMAuthInstallGetLocalizedStatusString(a1, DictionaryFromFileURL);
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "failed to read receipt: %@", v47, context);
        goto LABEL_16;
      }

      v29 = CFGetAllocator(a1);
      v7 = 2;
      v30 = CFPropertyListCreateDeepCopy(v29, propertyList, 2uLL);
      Mutable = v30;
      if (!v30)
      {
        goto LABEL_17;
      }

      v8 = CFDictionaryGetValue(v30, @"Overrides");
      if (v8)
      {
        v31 = CFGetAllocator(a1);
        context = CFDictionaryCreateMutable(v31, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (context)
        {
          CFDictionaryApplyFunction(v8, _AMAuthInstallBundleNormalizeOverridePaths, &context);
          v32 = sub_10000C870();
          if (CFDictionaryGetCount(v32) >= 1)
          {
            v33 = CFGetAllocator(a1);
            v34 = AMAuthInstallSupportCreateMergedDictionary(v33, **(a1 + 128), context, &v49);
            if (v34)
            {
              v7 = v34;
              AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "failed to merge override dictionaries");
              goto LABEL_17;
            }
          }

          v35 = sub_10000C870();
          SafeRelease(v35);
          v36 = v49;
          v37 = CFGetAllocator(a1);
          p_context = &v49;
          if (!v36)
          {
            p_context = &context;
          }

          MutableCopy = CFDictionaryCreateMutableCopy(v37, 0, *p_context);
          v8 = 0;
          **(a1 + 128) = MutableCopy;
          if (!MutableCopy)
          {
            v7 = 2;
            v9 = 0;
            v10 = 0;
            goto LABEL_18;
          }

          v9 = 0;
          v10 = 0;
          goto LABEL_37;
        }

        goto LABEL_44;
      }

      v9 = 0;
      v10 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v27, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
LABEL_44:
        v8 = 0;
        goto LABEL_45;
      }

      v40 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v40, 0, &kCFTypeArrayCallBacks);
      if (!v8)
      {
LABEL_45:
        v9 = 0;
        goto LABEL_46;
      }

      v41 = CFGetAllocator(a1);
      v9 = CFArrayCreateMutable(v41, 0, &kCFTypeArrayCallBacks);
      if (!v9)
      {
LABEL_46:
        v10 = 0;
        goto LABEL_47;
      }

      v42 = CFGetAllocator(a1);
      v10 = CFDictionaryCreateMutable(v42, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!v10)
      {
LABEL_47:
        v7 = 2;
        goto LABEL_18;
      }

      CFDictionarySetValue(Mutable, @"Personalized", v8);
      CFDictionarySetValue(Mutable, @"Linked", v9);
      CFDictionarySetValue(Mutable, @"Manifest", v10);
    }

LABEL_37:
    v43 = CFGetAllocator(a1);
    *a3 = CFPropertyListCreateDeepCopy(v43, Mutable, 2uLL);
    v44 = CFBooleanGetValue(v14);
    v45 = *(*(a1 + 128) + 8);
    if (v44)
    {
      if (v45)
      {
        CFDictionaryReplaceValue(v45, @"RecoveryOS", Mutable);
      }

      v7 = 0;
    }

    else
    {
      if (v45)
      {
        CFRelease(v45);
        *(*(a1 + 128) + 8) = 0;
      }

      v7 = 0;
      *(*(a1 + 128) + 8) = CFRetain(Mutable);
    }
  }

LABEL_18:
  AMAuthInstallLockUnlock(*(a1 + 360));
  SafeRelease(v51);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v8);
  SafeRelease(v9);
  SafeRelease(propertyList);
  SafeRelease(v10);
  SafeRelease(v49);
  SafeRelease(context);
  return v7;
}

uint64_t sub_100065BA8(uint64_t a1, const __CFArray *a2, const __CFURL *a3, const __CFURL *a4, const __CFDictionary *a5, const __CFURL *a6)
{
  v139 = 0;
  v140 = 0;
  v138 = 0;
  v11 = 1;
  if (!a1 || (v12 = a2) == 0 || !a3)
  {
    sub_10000C720();
    goto LABEL_120;
  }

  sub_10000C720();
  if (v20)
  {
    v21 = v16;
    v22 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v22, 0, **(a1 + 128));
    if (!MutableCopy)
    {
      ValueForKeyPathInDict = 0;
      v7 = 0;
      goto LABEL_142;
    }

    theDict = CFDictionaryGetValue(a5, @"Manifest");
    if (!theDict)
    {
      sub_10000C694();
      v7 = 0;
      Value = 0;
      goto LABEL_144;
    }

    if (v21)
    {
      Value = CFDictionaryGetValue(v21, @"Manifest");
      if (!Value)
      {
        sub_10000C694();
        v7 = 0;
LABEL_144:
        sub_10000C6FC();
        v11 = 8;
        goto LABEL_120;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = CFGetAllocator(a1);
    v7 = CFDictionaryCreateMutableCopy(v23, 0, theDict);
    if (!v7)
    {
LABEL_14:
      sub_10000C694();
LABEL_142:
      Value = 0;
      sub_10000C6FC();
      v11 = 2;
      goto LABEL_120;
    }

    v124 = a5;
    if (v21)
    {
      CFGetAllocator(a1);
      sub_10000C830();
      v27 = CFDictionaryCreateMutableCopy(v24, v25, v26);
      if (!v27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = 0;
    }

    v122 = a3;
    v123 = v21;
    v127 = v27;
    v132 = v7;
    v128 = MutableCopy;
    v135 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
LABEL_90:
      v7 = v132;
      if (CFDictionaryGetCount(MutableCopy) < 1)
      {
        goto LABEL_117;
      }

      v142[0] = 0;
      Count = CFDictionaryGetCount(MutableCopy);
      ValueForKeyPathInDict = (8 * Count);
      keys = malloc(8 * Count);
      if (keys)
      {
        PathComponent = malloc(ValueForKeyPathInDict);
        if (PathComponent)
        {
          CFDictionaryGetKeysAndValues(MutableCopy, keys, &PathComponent->isa);
          v131 = PathComponent;
          if (Count < 1)
          {
            MutableCopy = 0;
            sub_10000C890();
            v11 = 0;
            goto LABEL_116;
          }

          v101 = a1;
          v102 = 0;
          while (1)
          {
            ValueForKeyPathInDict = keys[v102];
            v103 = *(&PathComponent->isa + v102);
            v141 = 0;
            v143.length = CFArrayGetCount(v135);
            v143.location = 0;
            if (CFArrayContainsValue(v135, v143, ValueForKeyPathInDict))
            {
              sub_10000C824();
              v142[0] = CFDictionaryCreateMutable(v104, v105, v106, &kCFTypeDictionaryValueCallBacks);
              if (!v142[0])
              {
                MutableCopy = 0;
LABEL_130:
                PathComponent = 0;
LABEL_131:
                v137 = 0;
                v11 = 2;
                goto LABEL_133;
              }

              if (CFStringCompare(ValueForKeyPathInDict, @"BasebandFirmware", 0))
              {
                CFDictionaryAddValue(v142[0], @"Trusted", kCFBooleanFalse);
              }

              v107 = v101[2];
              if (*(v107 + 20))
              {
                v108 = kCFBooleanTrue;
              }

              else
              {
                v108 = kCFBooleanFalse;
              }

              if (*(v107 + 88))
              {
                v109 = kCFBooleanTrue;
              }

              else
              {
                v109 = kCFBooleanFalse;
              }

              CFDictionaryAddValue(v142[0], @"EPRO", v108);
              CFDictionaryAddValue(v142[0], @"ESEC", v109);
              sub_10000C824();
              MutableCopy = CFDictionaryCreateMutable(v110, v111, v112, &kCFTypeDictionaryValueCallBacks);
              if (!MutableCopy)
              {
                goto LABEL_130;
              }

              PathComponent = CFURLCopyLastPathComponent(v103);
              if (!PathComponent)
              {
                v137 = 0;
                v11 = 3;
LABEL_133:
                v7 = v132;
                ValueForKeyPathInDict = v137;
LABEL_116:
                SafeRelease(v142[0]);
                SafeRelease(MutableCopy);
                SafeRelease(PathComponent);
                SafeFree(keys);
                SafeFree(v131);
                SafeRelease(ValueForKeyPathInDict);
                if (!v11)
                {
LABEL_117:
                  CFDictionarySetValue(v124, @"Manifest", v7);
                  Value = v127;
                  if (v123)
                  {
                    CFDictionarySetValue(v123, @"Manifest", v127);
                  }

                  sub_10000C6F0();
                  sub_10000C6B8();
                  v11 = 0;
                  v15 = v128;
                  goto LABEL_120;
                }

                sub_10000C6F0();
                sub_10000C6B8();
LABEL_136:
                Value = v127;
                goto LABEL_120;
              }

              v113 = v101;
              v114 = CFGetAllocator(v101);
              v115 = CFURLCreateCopyAppendingPathComponent(v114, a4, PathComponent, 0);
              if (!v115)
              {
                goto LABEL_131;
              }

              v116 = ValueForKeyPathInDict;
              ValueForKeyPathInDict = v103;
              v137 = v115;
              SoftLink = AMAuthInstallSupportFileURLExists(v115, &v141);
              if (SoftLink || !v141 && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v137, v103), SoftLink) || (CFDictionaryAddValue(MutableCopy, @"Path", PathComponent), CFDictionaryAddValue(v142[0], @"Info", MutableCopy), SoftLink = _AMAuthInstallBundleApplyMeasurements(v113, v116, v103, 0, v142), SoftLink))
              {
                v11 = SoftLink;
                goto LABEL_133;
              }

              CFDictionarySetValue(v132, v116, v142[0]);
              SafeRelease(PathComponent);
              SafeRelease(MutableCopy);
              SafeRelease(v142[0]);
              SafeRelease(v137);
              v142[0] = 0;
              PathComponent = v131;
              v101 = v113;
            }

            if (Count == ++v102)
            {
              MutableCopy = 0;
              sub_10000C890();
              v11 = 0;
              v7 = v132;
              goto LABEL_116;
            }
          }
        }

        MutableCopy = 0;
      }

      else
      {
        MutableCopy = 0;
        PathComponent = 0;
      }

      v131 = 0;
      ValueForKeyPathInDict = 0;
      v11 = 2;
      goto LABEL_116;
    }

    v28 = 0;
    v130 = Value;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v28);
      if (!ValueAtIndex)
      {
        sub_10000C694();
        sub_10000C6FC();
        v11 = 1;
        goto LABEL_135;
      }

      v30 = ValueAtIndex;
      if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
      {
        v31 = kCFBooleanFalse;
      }

      else
      {
        v31 = kCFBooleanTrue;
      }

      v32 = CFBooleanGetValue(v31);
      v33 = CFGetAllocator(a1);
      if (Value && v32)
      {
        v34 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v33, v30);
        v35 = CFGetAllocator(a1);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v35, Value, v34);
        if (ValueForKeyPathInDict)
        {
          goto LABEL_27;
        }
      }

      else
      {
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v33, theDict, v30);
        v34 = 0;
        if (ValueForKeyPathInDict)
        {
LABEL_27:
          v36 = CFStringCompare(v30, @"BasebandFirmware", 0);
          CFGetAllocator(a1);
          sub_10000C8EC();
          v40 = CFDictionaryCreateMutableCopy(v37, v38, v39);
          v139 = v40;
          if (!v40)
          {
            sub_10000C694();
            sub_10000C6FC();
            v11 = 2;
            goto LABEL_135;
          }

          v41 = _AMAuthInstallBundleSetObjectPropertyOverrides(a1, v30, v40);
          if (v41)
          {
            v11 = v41;
            AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to set %@ property overrides", v30);
            sub_10000C694();
            goto LABEL_125;
          }

          v136 = v34;
          v42 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v42, ValueForKeyPathInDict, @"%@.%@", v43, v44, v45, v46, v47, @"Info", @"Path");
          v49 = CFDictionaryGetValue(MutableCopy, v30);
          if (v49)
          {
            ValueForKeyPathInDict = CFDictionaryGetValue(v139, @"Info");
            if (!ValueForKeyPathInDict)
            {
              MutableCopy = 0;
              sub_10000C6B8();
              v11 = 7;
              goto LABEL_134;
            }

            CFGetAllocator(a1);
            sub_10000C8EC();
            MutableCopy = CFDictionaryCreateMutableCopy(v50, v51, v52);
            if (!MutableCopy)
            {
              ValueForKeyPathInDict = 0;
              sub_10000C6B8();
              v11 = 2;
              goto LABEL_134;
            }

            v53 = CFURLCopyLastPathComponent(v49);
            ValueForKeyPathInDict = v53;
            if (!v53)
            {
              sub_10000C6B8();
              v11 = 3;
              goto LABEL_134;
            }

            if (ValueForKeyWithFormat)
            {
              v54 = CFGetAllocator(a1);
              v55 = AMAuthInstallSupportCopyStringReplacingLastComponent(v54, ValueForKeyWithFormat, @"/", ValueForKeyPathInDict, &v140);
              if (v55)
              {
                v11 = v55;
                sub_10000C6B8();
LABEL_134:
                v15 = v128;
                goto LABEL_135;
              }
            }

            else
            {
              v140 = CFRetain(v53);
            }

            SafeRelease(ValueForKeyPathInDict);
            CFDictionarySetValue(MutableCopy, @"Path", v140);
            SafeRelease(v140);
            CFDictionarySetValue(v139, @"Info", MutableCopy);
            SafeRelease(MutableCopy);
            if (v36)
            {
              v56 = CFGetAllocator(a1);
              Mutable = CFDataCreateMutable(v56, 0);
              CFDictionarySetValue(v139, @"Digest", Mutable);
              CFRelease(Mutable);
            }

            v140 = 0;
            MutableCopy = v128;
            CFDictionaryRemoveValue(v128, v30);
          }

          v58 = *(a1 + 128);
          if (v58 && *(v58 + 8))
          {
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = CFDictionaryGetValue(*(*(a1 + 128) + 8), @"RecoveryOSOS");
              if (ValueForKeyPathInDict)
              {
                v59 = CFGetAllocator(a1);
                v65 = AMAuthInstallSupportGetValueForKeyWithFormat(v59, ValueForKeyPathInDict, @"%@.%@.%@", v60, v61, v62, v63, v64, @"Manifest", v136, @"Digest");
                goto LABEL_47;
              }
            }

            else
            {
              v66 = CFGetAllocator(a1);
              v65 = AMAuthInstallSupportGetValueForKeyWithFormat(v66, *(*(a1 + 128) + 8), @"%@.%@.%@", v67, v68, v69, v70, v71, @"Manifest", v30, @"Digest");
LABEL_47:
              ValueForKeyPathInDict = v65;
            }
          }

          else
          {
            ValueForKeyPathInDict = 0;
          }

          if (CFBooleanGetValue(v31))
          {
            v72 = @"RecoveryOSOS";
          }

          else
          {
            v72 = @"OS";
          }

          v73 = CFStringCompare(v72, v30, 0);
          if (ValueForKeyPathInDict)
          {
            v74 = 0;
            if (v49)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v74)
            {
              goto LABEL_62;
            }

LABEL_82:
            AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "Inserting %@ to Manifest to personalize later", v30);
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = v136;
              CFDictionarySetValue(v127, v136, v139);
              v12 = v135;
              Value = v130;
            }

            else
            {
              CFDictionarySetValue(v132, v30, v139);
              v12 = v135;
              Value = v130;
              ValueForKeyPathInDict = v136;
            }

            SafeRelease(v139);
            v139 = 0;
            SafeRelease(ValueForKeyPathInDict);
            goto LABEL_86;
          }

          if (*(a1 + 434))
          {
            v75 = 1;
          }

          else
          {
            v75 = (v49 | v73) == 0;
          }

          v74 = !v75;
          if (!v49)
          {
            goto LABEL_61;
          }

LABEL_62:
          if (v49)
          {
            IsImg4 = AMAuthInstallApIsImg4(a1);
            if (v36 == kCFCompareEqualTo || IsImg4)
            {
              goto LABEL_75;
            }

            LOBYTE(v142[0]) = 0;
            if (_AMAuthInstallBundleImageHasBuildString(v30))
            {
              v77 = CFGetAllocator(a1);
              v78 = AMAuthInstallApImg3CopyBuildString(v77, v49, &v138);
              if (v78)
              {
                v11 = v78;
                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to copy image build string %@", v30);
                goto LABEL_140;
              }

              CFDictionarySetValue(v139, @"BuildString", v138);
              SafeRelease(v138);
              v138 = 0;
            }

            v79 = CFGetAllocator(a1);
            IsFinalized = AMAuthInstallApImg3IsFinalized(v79, v49, v142);
            if (IsFinalized)
            {
              v11 = IsFinalized;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to check %@ alignment", v30);
LABEL_140:
              v83 = 0;
              v81 = 0;
              goto LABEL_149;
            }

            if (LOBYTE(v142[0]))
            {
              goto LABEL_75;
            }

            v81 = CFURLCopyLastPathComponent(v49);
            if (!v81)
            {
              v83 = 0;
LABEL_146:
              v11 = 2;
LABEL_149:
              sub_10000C6F0();
              Value = v127;
              v15 = v128;
              v7 = v132;
              v18 = v83;
              v19 = v81;
              break;
            }

            v82 = CFGetAllocator(a1);
            v83 = CFURLCreateCopyAppendingPathComponent(v82, a4, v81, 0);
            if (!v83)
            {
              goto LABEL_146;
            }

            v84 = CFGetAllocator(a1);
            v85 = AMAuthInstallApImg3Finalize(v84, v49, v83);
            if (v85)
            {
              v11 = v85;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to finalize image3 override");
              goto LABEL_149;
            }

            ValueForKeyPathInDict = CFRetain(v83);
            v86 = CFDictionaryGetValue(v139, @"Info");
            if (!v86)
            {
              v11 = 8;
              goto LABEL_149;
            }

            CFDictionarySetValue(v86, @"Path", v81);
            sub_10000C80C();
            CFDictionarySetValue(v87, v88, v89);
            SafeRelease(v81);
            SafeRelease(v83);
            if (!ValueForKeyPathInDict)
            {
LABEL_75:
              v90 = CFRetain(v49);
              goto LABEL_81;
            }
          }

          else
          {
            if (!ValueForKeyWithFormat)
            {
              goto LABEL_82;
            }

            v91 = CFBooleanGetValue(v31);
            v92 = CFGetAllocator(a1);
            if (v91)
            {
              v93 = a6;
            }

            else
            {
              v93 = v122;
            }

            v90 = CFURLCreateCopyAppendingPathComponent(v92, v93, ValueForKeyWithFormat, 0);
LABEL_81:
            ValueForKeyPathInDict = v90;
            if (!v90)
            {
              goto LABEL_82;
            }
          }

          sub_10000C80C();
          v99 = _AMAuthInstallBundleApplyMeasurements(v94, v95, v96, v97, v98);
          if (v99)
          {
            v11 = v99;
            ValueForKeyPathInDict = 0;
            MutableCopy = 0;
LABEL_125:
            sub_10000C6FC();
LABEL_135:
            v7 = v132;
            goto LABEL_136;
          }

          CFRelease(ValueForKeyPathInDict);
          goto LABEL_82;
        }
      }

LABEL_86:
      if (++v28 >= CFArrayGetCount(v12))
      {
        goto LABEL_90;
      }
    }
  }

LABEL_120:
  v118 = v17;
  v119 = v18;
  v120 = v19;
  SafeRelease(v15);
  SafeRelease(ValueForKeyPathInDict);
  SafeRelease(v140);
  SafeRelease(v139);
  SafeRelease(MutableCopy);
  SafeRelease(v118);
  SafeRelease(v7);
  SafeRelease(v119);
  SafeRelease(v120);
  SafeRelease(v138);
  SafeRelease(Value);
  return v11;
}

CFIndex sub_1000667E4(uint64_t a1, const __CFArray *a2, CFDictionaryRef theDict, const __CFDictionary *a4, const void *a5, const __CFDictionary *a6, void *a7, void *a8)
{
  Mutable = 0;
  v115[0] = 0;
  v113 = 0;
  v114 = 0;
  Code = 1;
  if (!a4 || !a1 || !theDict)
  {
    v13 = 0;
    MutableCopy = 0;
    goto LABEL_137;
  }

  v13 = 0;
  MutableCopy = 0;
  if (a7)
  {
    Value = CFDictionaryGetValue(theDict, @"Manifest");
    if (!Value)
    {
LABEL_8:
      Mutable = 0;
      v13 = 0;
      MutableCopy = 0;
      Code = 7;
      goto LABEL_137;
    }

    v19 = Value;
    if (a6)
    {
      v110 = CFDictionaryGetValue(a6, @"Manifest");
      if (!v110)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v110 = 0;
    }

    MutableCopy = CFDictionaryGetValue(a4, @"Personalized");
    if (!MutableCopy)
    {
      Mutable = 0;
      v13 = 0;
LABEL_143:
      Code = 8;
      goto LABEL_137;
    }

    v13 = CFDictionaryGetValue(a4, @"Manifest");
    if (v13)
    {
      v20 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v100 = v13;
        if (!a6)
        {
          v96 = a7;
          v97 = a8;
          v95 = 0;
          theDicta = 0;
          v13 = 0;
LABEL_22:
          if (AMAuthInstallApIsImg4(a1))
          {
            v22 = @"amai/apimg4ticket.der";
          }

          else
          {
            v22 = @"amai/apticket.der";
          }

          CFArrayGetCount(MutableCopy);
          v23 = sub_10000C7CC();
          theArray = MutableCopy;
          v107 = v13;
          v102 = theDict;
          if (CFArrayContainsValue(v23, v116, v22))
          {
            v24 = 0;
            v25 = "False";
          }

          else if (*(*(a1 + 16) + 24) || *(a1 + 433))
          {
            v25 = "True";
            v24 = 1;
          }

          else
          {
            v24 = 0;
            v25 = "False";
          }

          v117.length = CFArrayGetCount(theArray);
          v117.location = 0;
          v26 = CFArrayContainsValue(theArray, v117, v22);
          v27 = "True";
          if (v26)
          {
            v28 = "True";
          }

          else
          {
            v28 = "False";
          }

          if (*(*(a1 + 16) + 24))
          {
            v29 = "True";
          }

          else
          {
            v29 = "False";
          }

          if (!*(a1 + 433))
          {
            v27 = "False";
          }

          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v22, v25, v28, v29, v27);
          v104 = v24;
          *(a1 + 32) = v24 ^ 1;
          v30 = a2;
          v99 = a6;
          if (a2)
          {
            Count = CFArrayGetCount(a2);
            if (Count >= 1)
            {
              v94 = v24 ^ 1;
              v101 = 0;
              MutableCopy = 0;
              v31 = 0;
              v32 = kCFBooleanFalse;
              v103 = v19;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
                v109 = CFStringCompare(ValueAtIndex, @"BasebandFirmware", 0);
                v34 = v32;
                if (ValueAtIndex)
                {
                  if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = kCFBooleanTrue;
                  }
                }

                if (CFBooleanGetValue(v34))
                {
                  v35 = CFGetAllocator(a1);
                  v36 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v35, ValueAtIndex);
                  v37 = CFDictionaryGetValue(v110, v36);
                  if (v37)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v37 = CFDictionaryGetValue(v19, ValueAtIndex);
                  v36 = 0;
                  if (v37)
                  {
LABEL_47:
                    v38 = CFDictionaryGetValue(v37, @"Info");
                    if (!v38)
                    {
                      v30 = a2;
                      goto LABEL_103;
                    }

                    v39 = v38;
                    v112 = 0;
                    SafeRelease(MutableCopy);
                    v40 = CFGetAllocator(a1);
                    MutableCopy = CFDictionaryCreateMutableCopy(v40, 0, v37);
                    if (!MutableCopy)
                    {
                      Code = 2;
                      goto LABEL_133;
                    }

                    v41 = AMAuthInstallBundleProcessRulesWithEntryDict(a1, MutableCopy);
                    if (v41)
                    {
                      Code = v41;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to process image rules");
                      goto LABEL_133;
                    }

                    v42 = CFDictionaryGetValue(v39, @"Personalize");
                    v19 = v103;
                    if (v42 && !CFBooleanGetValue(v42))
                    {
                      if (!CFBooleanGetValue(v34))
                      {
                        v57 = CFDictionaryGetValue(v100, ValueAtIndex);
                        v58 = v104 ^ 1;
                        if (v57)
                        {
                          v58 = 1;
                        }

                        if (v58)
                        {
                          v72 = sub_10000C7E8();
                          AMAuthInstallLog(v72, "_AMAuthInstallBundleCreateServerRequestDictionary", "skipping %@ entry");
                        }

                        else
                        {
                          CFGetAllocator(a1);
                          sub_10000C8F8();
                          v62 = CFDataCreate(v59, v60, v61);
                          CFDictionaryAddValue(MutableCopy, @"Digest", v62);
                          CFDictionarySetValue(Mutable, ValueAtIndex, MutableCopy);
                          CFRelease(v62);
                          v63 = sub_10000C7E8();
                          AMAuthInstallLog(v63, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@");
                        }

                        v30 = a2;
                        goto LABEL_104;
                      }

                      v43 = CFDictionaryGetValue(theDicta, v36);
                      v44 = v104 ^ 1;
                      if (v43)
                      {
                        v44 = 1;
                      }

                      v45 = "skipping %@ entry";
                      if ((v44 & 1) == 0)
                      {
                        CFGetAllocator(a1);
                        sub_10000C8F8();
                        v49 = CFDataCreate(v46, v47, v48);
                        CFDictionaryAddValue(MutableCopy, @"Digest", v49);
                        v50 = sub_10000C89C();
                        CFDictionarySetValue(v50, v51, MutableCopy);
                        CFRelease(v49);
                        v45 = "personalizing %@";
                      }

                      AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", v45, v36);
                    }

                    if (v109)
                    {
                      if (CFDictionaryContainsKey(MutableCopy, @"PartialDigest"))
                      {
                        v52 = CFDictionaryGetValue(v39, @"Path");
                        v112 = v52;
                        SafeRetain(v52);
                        if (!v52)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_61;
                      }

                      if (v104)
                      {
                        v52 = 0;
LABEL_69:
                        v30 = a2;
LABEL_92:
                        SafeRelease(v52);
                        v67 = CFDictionaryGetValue(MutableCopy, @"Digest");
                        if (v67)
                        {
                          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@ Digest = %@", ValueAtIndex, v67);
                        }

                        v19 = v103;
                        if (v109 == kCFCompareEqualTo)
                        {
                          v68 = CFBooleanGetValue(v34);
                          Code = 1;
                          if (!a5 || v68 == 1)
                          {
                            goto LABEL_133;
                          }

                          v69 = AMAuthInstallBundleCopyFullPathForBuildIdentityKey(a1, a5, @"BasebandFirmware", v37, &v114);
                          if (v69)
                          {
                            Code = v69;
                            AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to find baseband firmware path");
                            goto LABEL_133;
                          }

                          v19 = v103;
                          v101 = v114;
                          if (!v114)
                          {
                            Code = 14;
                            AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to create bbfwURL");
                            goto LABEL_133;
                          }
                        }

                        if (CFBooleanGetValue(v34))
                        {
                          v70 = sub_10000C89C();
                        }

                        else
                        {
                          v70 = Mutable;
                          v71 = ValueAtIndex;
                        }

                        CFDictionarySetValue(v70, v71, MutableCopy);
LABEL_103:
                        SafeRelease(v36);
                        goto LABEL_104;
                      }

                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "not personalizing %@", ValueAtIndex);
                      v30 = a2;
LABEL_91:
                      v19 = v103;
                      goto LABEL_104;
                    }

                    v64 = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v112);
                    if (v64)
                    {
                      Code = v64;
LABEL_133:
                      v13 = v107;
                      goto LABEL_137;
                    }

                    v52 = v112;
                    if (!v112)
                    {
                      goto LABEL_69;
                    }

LABEL_61:
                    v30 = a2;
                    if (CFBooleanGetValue(v34))
                    {
                      if (!CFDictionaryContainsKey(theDicta, v36))
                      {
                        v53.length = CFArrayGetCount(v95);
                        v54 = v95;
LABEL_85:
                        v53.location = 0;
                        v65 = CFArrayContainsValue(v54, v53, v52);
                        if (v109)
                        {
                          v66 = v94;
                        }

                        else
                        {
                          v66 = 1;
                        }

                        if (!v65 || (v66 & 1) == 0)
                        {
                          goto LABEL_92;
                        }

LABEL_90:
                        AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ has been previously personalized; skipping it", ValueAtIndex);
                        SafeRelease(v52);
                        goto LABEL_91;
                      }
                    }

                    else if (!CFDictionaryContainsKey(v100, ValueAtIndex))
                    {
                      v53.length = CFArrayGetCount(theArray);
                      v54 = theArray;
                      goto LABEL_85;
                    }

                    if (v109)
                    {
                      v56 = v94;
                    }

                    else
                    {
                      v56 = 1;
                    }

                    if (v56 != 1)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_90;
                  }
                }

                v55 = sub_10000C7E8();
                AMAuthInstallLog(v55, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ not part of manifest, skipping");
LABEL_104:
                v32 = kCFBooleanFalse;
                if (Count == ++v31)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          v101 = 0;
          MutableCopy = 0;
LABEL_109:
          v13 = v107;
          if (v107 && CFDictionaryGetCount(v107))
          {
            sub_10000C160(a1, v99, v107);
            v73 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(a1, v107, v104, 1);
            if (v73)
            {
              goto LABEL_144;
            }

            v74 = sub_10000C74C();
            if (!v75(v74))
            {
              goto LABEL_136;
            }

            v76 = CFGetAllocator(a1);
            Code = 2;
            DeepCopy = CFPropertyListCreateDeepCopy(v76, v107, 2uLL);
            *v97 = DeepCopy;
            if (!DeepCopy)
            {
              goto LABEL_137;
            }
          }

          v78 = CFDictionaryGetCount(Mutable);
          sub_10000C160(a1, v102, Mutable);
          v79 = sub_10000C74C();
          v73 = AMAuthInstallApServerRequestAddRequiredTags(v79, v80, v104);
          if (!v73)
          {
            v73 = AMAuthInstallBasebandSupportsServerSigning(a1, v115);
            if (!v73)
            {
              if (v115[0])
              {
                if (AMAuthInstallBasebandPersonalizationEnabled(a1))
                {
                  if (v101)
                  {
                    v81 = sub_10000C74C();
                    v83 = AMAuthInstallBasebandServerRequestAddRequiredTags(v81, v82, v101);
                    if (v83)
                    {
                      Code = v83;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "%s: missing required baseband parameters", "_AMAuthInstallBundleCreateServerRequestDictionary");
                      goto LABEL_137;
                    }
                  }
                }
              }

              if ((v84 = *(a1 + 48)) == 0 || !*(v84 + 160) || (LOBYTE(v112) = 1, AMAuthInstallVinylIsLegacyChipId(a1, &v112)) || v112 || !CFDictionaryGetValue(Mutable, @"eUICC,Gold") && !CFDictionaryGetValue(Mutable, @"eUICC,Main") || (v85 = sub_10000C74C(), v73 = AMAuthInstallVinylServerRequestAddRequiredTags(v85, v86, 0), !v73))
              {
                v87 = CFDictionaryGetCount(Mutable);
                v88 = sub_10000C74C();
                if (v89(v88))
                {
                  v90 = CFDictionaryGetCount(Mutable);
                  if (v78 || v90 != v87)
                  {
                    v91 = CFGetAllocator(a1);
                    v92 = CFPropertyListCreateDeepCopy(v91, Mutable, 2uLL);
                    *v96 = v92;
                    Code = 2 * (v92 == 0);
                  }

                  else
                  {
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", "nothing to be done");
                    Code = 0;
                  }

                  goto LABEL_137;
                }

LABEL_136:
                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to add updater tags %@", v113);
                Code = CFErrorGetCode(v113);
                goto LABEL_137;
              }
            }
          }

LABEL_144:
          Code = v73;
          goto LABEL_137;
        }

        v21 = CFGetAllocator(a1);
        v13 = CFDictionaryCreateMutable(v21, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v13)
        {
          if (CFDictionaryGetValue(a4, @"RecoveryOS"))
          {
            v95 = CFDictionaryGetValue(a4, @"Personalized");
            if (v95)
            {
              theDicta = CFDictionaryGetValue(a4, @"Manifest");
              if (theDicta)
              {
                v96 = a7;
                v97 = a8;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_142;
        }
      }

      else
      {
        v13 = 0;
      }

      MutableCopy = 0;
      Code = 2;
      goto LABEL_137;
    }

    Mutable = 0;
LABEL_142:
    MutableCopy = 0;
    goto LABEL_143;
  }

LABEL_137:
  SafeRelease(v114);
  SafeRelease(Mutable);
  SafeRelease(v13);
  SafeRelease(MutableCopy);
  SafeRelease(v113);
  return Code;
}

CFIndex sub_100067298(CFTypeRef cf, char *a2, const __CFString *a3, char *a4, const __CFString *a5, __CFArray **a6, int a7)
{
  cfa = 0;
  result = 1;
  if (cf && a2 && a6)
  {
    v15 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v15, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      return 2;
    }

    v17 = Mutable;
    v18 = sub_10000BC74(cf, a2, a3, &cfa);
    if (cfa)
    {
      if (!a7)
      {
        AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "failed to inspect the OS image entry %@", cfa);
        goto LABEL_34;
      }

      AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "OK to skip OS - continuing.");
      CFRelease(cfa);
      cfa = 0;
    }

    if (!a4)
    {
      v19 = 0;
LABEL_13:
      if (*(cf + 6))
      {
        v20 = AMAuthInstallBasebandPersonalizationEnabled(cf);
        v21 = v20 != 0;
        if (!AMAuthInstallApPersonalizationEnabled(cf))
        {
          if (v20)
          {
            AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "personalizing baseband only");
            v22 = @"BasebandFirmware";
LABEL_30:
            CFArrayAppendValue(v17, v22);
LABEL_35:
            result = 0;
            *a6 = v17;
            return result;
          }

LABEL_32:
          AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "nothing to personalize");
          goto LABEL_35;
        }
      }

      else
      {
        if (!AMAuthInstallApPersonalizationEnabled(cf))
        {
          goto LABEL_32;
        }

        v21 = 0;
      }

      CFArrayAppendValue(v17, @"RestoreLogo");
      CFArrayAppendValue(v17, @"RestoreDeviceTree");
      CFArrayAppendValue(v17, @"RestoreKernelCache");
      CFArrayAppendValue(v17, @"RestoreRamDisk");
      CFArrayAppendValue(v17, @"OSRamdisk");
      CFArrayAppendValue(v17, @"iBEC");
      CFArrayAppendValue(v17, @"iBSS");
      CFArrayAppendValue(v17, @"KernelCache");
      CFArrayAppendValue(v17, @"ftap");
      CFArrayAppendValue(v17, @"rfta");
      CFArrayAppendValue(v17, @"ftsp");
      CFArrayAppendValue(v17, @"rfts");
      CFArrayAppendValue(v17, @"Ap,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"x86,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"BaseSystemVolume");
      CFArrayAppendValue(v17, @"x86,BaseSystemVolume");
      CFArrayAppendValue(v17, @"SystemVolume");
      CFArrayAppendValue(v17, @"x86,SystemVolume");
      CFArrayAppendValue(v17, @"Ap,BaseSystemTrustCache");
      if (AMAuthInstallApIsImg4(cf))
      {
        CFArrayAppendValue(v17, @"Diags");
        CFArrayAppendValue(v17, @"CFELoader");
        CFArrayAppendValue(v17, @"RBM");
        CFArrayAppendValue(v17, @"PHLEET");
        CFArrayAppendValue(v17, @"PERTOS");
        CFArrayAppendValue(v17, @"PEHammer");
        CFArrayAppendValue(v17, @"Alamo");
      }

      if (v21)
      {
        CFArrayAppendValue(v17, @"BasebandFirmware");
        if (*(*(cf + 6) + 160))
        {
          v23 = 1;
          if (!AMAuthInstallVinylIsLegacyChipId(cf, &v23) && !v23)
          {
            CFArrayAppendValue(v17, @"eUICC,Main");
            CFArrayAppendValue(v17, @"eUICC,Gold");
          }
        }
      }

      if (v18)
      {
        CFArrayAppendValue(v17, @"OS");
      }

      if (!v19)
      {
        goto LABEL_35;
      }

      CFArrayAppendValue(v17, @"RecoveryOSOS");
      CFArrayAppendValue(v17, @"RecoveryOSAppleLogo");
      CFArrayAppendValue(v17, @"RecoveryOSDeviceTree");
      CFArrayAppendValue(v17, @"RecoveryOSKernelCache");
      CFArrayAppendValue(v17, @"RecoveryOSRamDisk");
      CFArrayAppendValue(v17, @"RecoveryOSiBEC");
      CFArrayAppendValue(v17, @"RecoveryOSiBSS");
      CFArrayAppendValue(v17, @"RecoveryOSStaticTrustCache");
      CFArrayAppendValue(v17, @"RecoveryOSiBootData");
      CFArrayAppendValue(v17, @"RecoveryOSDiags");
      CFArrayAppendValue(v17, @"RecoveryOSAp,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"RecoveryOSSystemVolume");
      CFArrayAppendValue(v17, @"RecoveryOSBaseSystemVolume");
      v22 = @"RecoveryOSAp,BaseSystemTrustCache";
      goto LABEL_30;
    }

    v19 = sub_10000BC74(cf, a4, a5, &cfa);
    if (!cfa)
    {
      goto LABEL_13;
    }

    if (a7)
    {
      AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "OK to skip recovery OS - continuing.");
      CFRelease(cfa);
      cfa = 0;
      goto LABEL_13;
    }

    AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "failed to inspect the recovery OS image entry %@", cfa);
LABEL_34:
    result = CFErrorGetCode(cfa);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  return result;
}