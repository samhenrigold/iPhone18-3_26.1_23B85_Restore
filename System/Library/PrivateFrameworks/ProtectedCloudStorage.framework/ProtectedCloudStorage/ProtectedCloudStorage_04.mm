_DWORD *PCSObjectCreateFromExportedWithKeyedPCS(uint64_t a1, void *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    return OUTLINED_FUNCTION_0_2(a2, v7, *(a1 + 168), *(a1 + 200), 0, 0, a7, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

_DWORD *PCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts(uint64_t a1, uint64_t a2, void *a3, void *a4, const void **a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    return OUTLINED_FUNCTION_0_2(a3, v7, *(a1 + 168), *(a1 + 200), 0, a4, a7, a5);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

uint64_t PCSFPAddEncryptedSharePCS(uint64_t a1, CFDataRef theData, uint64_t a3, const void **a4)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v8 = OUTLINED_FUNCTION_8_0();
  v12 = decode_PCSShareProtection(v8, v9, v10, v11);
  if (v12)
  {
    v24 = v12;
    v25 = "decode PCSShareProtection";
LABEL_18:
    _PCSErrorASN1(a4, v25, v24);
LABEL_19:
    v21 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (CFDataGetLength(theData) || !*(&v27 + 1))
  {
    goto LABEL_19;
  }

  v13 = decode_PCSObjectSignature(*(*(&v27 + 1) + 24), *(*(&v27 + 1) + 16), v31, 0);
  if (v13)
  {
    v24 = v13;
    v25 = "decode PCSObjectSignature";
    goto LABEL_18;
  }

  if (!v32)
  {
    goto LABEL_19;
  }

  if (!*v32)
  {
    goto LABEL_19;
  }

  v14 = *(v32 + 8);
  if (*v14 != 3)
  {
    goto LABEL_19;
  }

  v15 = CFDataCreate(0, *(v14 + 24), *(v14 + 16));
  if (v15)
  {
    v21 = PCSPublicIdentityCreateFromKeyData();
    if (v21)
    {
      v22 = PCSFPAddPublicIdentityWithShareFlags(a1, v21, a3, v16, v17, v18, v19, v20);
      goto LABEL_11;
    }
  }

  else
  {
    _PCSErrorOOM(a4);
    v21 = 0;
  }

LABEL_20:
  v22 = 0;
LABEL_11:
  free_PCSShareProtection(v26);
  free_PCSObjectSignature(v31);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

uint64_t PCSFPCopyPrivateKey(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 16)) != 0)
  {
    return PCSIdentitySetCopyIdentity(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

uint64_t PCSFPRemovePrivateKey(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 48) = 0;
    CFRelease(v5);
    v4 = *(a1 + 16);
  }

  return PCSIdentitySetRemoveIdentity(v4, a2);
}

uint64_t PCSFPChainingSetCurrentIdentity()
{
  OUTLINED_FUNCTION_6_0();
  if (v2)
  {
    v5 = *(v1 + 24);
    v4 = (v1 + 24);
    Mutable = v5;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = (v1 + 32);
    Mutable = v6;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  Mutable = PCSIdentitySetCreateMutable(0);
  *v4 = Mutable;
  if (!Mutable)
  {
    return 0;
  }

LABEL_6:
  if (!PCSIdentitySetSetCurrentIdentity(Mutable, v0))
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_7_0();

  return regenFPChainingAttribute(v7, v8);
}

uint64_t PCSFPChainingAddIdentity()
{
  OUTLINED_FUNCTION_6_0();
  if (v2)
  {
    v5 = *(v1 + 24);
    v4 = (v1 + 24);
    Mutable = v5;
    if (!v5)
    {
LABEL_5:
      Mutable = PCSIdentitySetCreateMutable(0);
      *v4 = Mutable;
      if (!Mutable)
      {
        return 0;
      }
    }
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = (v1 + 32);
    Mutable = v6;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (PCSIdentitySetAddIdentity(Mutable, v0))
  {
    v7 = OUTLINED_FUNCTION_7_0();
    regenFPChainingAttribute(v7, v8);
  }

  return 0;
}

uint64_t PCSFPChainingRemoveIdentity(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 32;
  if (a2)
  {
    v3 = 24;
  }

  v4 = *(a1 + v3);
  if (!v4 || !PCSIdentitySetRemoveIdentity(v4, a3))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_7_0();

  return regenFPChainingAttribute(v5, v6);
}

void noMatchingIdentity(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = OUTLINED_FUNCTION_0_1();
    v15 = CFArrayCreateMutable(v12, v13, v14);
    if (v15)
    {
      v16 = v15;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __noMatchingIdentity_block_invoke;
      v32[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
      v32[4] = v15;
      PCSIdentitySetEnumeratePublicKeys(a1, v32);
      v17 = CFStringCreateByCombiningStrings(0, v16, @", ");
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(v11, kPCSErrorSetIdentities, v16);
        CFRelease(v16);
        v19 = OUTLINED_FUNCTION_0_1();
        v22 = CFArrayCreateMutable(v19, v20, v21);
        if (!v22)
        {
          v27 = 0;
          goto LABEL_10;
        }

        v23 = v22;
        if (a2)
        {
          OUTLINED_FUNCTION_2_0();
          CFDictionaryApplyFunction(v24, v25, v23);
        }

        else
        {
          CFArrayAppendValue(v22, @"light-object");
        }

        v26 = CFStringCreateByCombiningStrings(0, v23, @", ");
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v11, kPCSErrorObjectIdentities, v23);
          CFRelease(v23);
          _PCSErrorUserInfo(0, a3, 73, v11, @"PCS object didn't contain any of the identities [%@], it contained [%@]", v28, v29, v30, v18, v27);
LABEL_10:
          CFRelease(v11);
          CFRelease(v18);
          if (!v27)
          {
            return;
          }

          v31 = v27;
          goto LABEL_12;
        }

        CFRelease(v23);
        CFRelease(v11);
        v31 = v18;
      }

      else
      {
        CFRelease(v16);
        v31 = v11;
      }

LABEL_12:
      CFRelease(v31);
      return;
    }

    CFRelease(v11);
  }
}

CFTypeRef ProcessChainKeys(uint64_t a1, uint64_t a2, const void **a3)
{
  v19[0] = 0;
  v19[1] = 0;
  v4 = CFDataCreateWithBytesNoCopy(0, *(a2 + 8), *a2, *MEMORY[0x1E695E498]);
  if (!v4)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_7_0();
  v8 = PCSCloudKitShareTokenCopyDecryptedData(v6, v7);
  if (!v8)
  {
    v17 = 0;
    v9 = v5;
    goto LABEL_7;
  }

  v9 = v8;
  CFDataGetBytePtr(v8);
  CFDataGetLength(v9);
  v10 = OUTLINED_FUNCTION_8_0();
  v14 = decode_PCSSPKeyList(v10, v11, v12, v13);
  if (v14)
  {
    _PCSErrorASN1(a3, "decode PCSSPKeyList", v14);
    goto LABEL_12;
  }

  Mutable = PCSIdentitySetCreateMutable(a3);
  if (!Mutable)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = Mutable;
  v17 = CFRetain(Mutable);
  CFRelease(v16);
LABEL_6:
  CFRelease(v5);
LABEL_7:
  CFRelease(v9);
LABEL_8:
  free_PCSSPKeyList(v19);
  return v17;
}

uint64_t __fillChainingKeys_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v4 = PCSIdentityCopyExportedPublicKey(a2);
  if (v4)
  {
    v5 = v4;
    LODWORD(v8) = 3;
    if (!FillOctetString(&v9, v4) || add_PCSSPKeyList((*(*(a1 + 32) + 8) + 32), &v8))
    {
LABEL_7:
      CFRelease(v5);
      return free_PCSSPKey(&v8);
    }

    CFRelease(v5);
    free_PCSSPKey(&v8);
    v6 = PCSIdentityCopyExportedPrivateKey(a2, 0);
    if (v6)
    {
      v5 = v6;
      LODWORD(v8) = 2;
      if (FillOctetString(&v9, v6))
      {
        add_PCSSPKeyList((*(*(a1 + 40) + 8) + 32), &v8);
      }

      goto LABEL_7;
    }
  }

  return free_PCSSPKey(&v8);
}

void PCSFPAddSharePCSWithFlags_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!*(a1 + 72) || *(a1 + 204) == 3 && (*(a1 + 209) & 1) != 0 || (v8 = PCSIdentitySetCopyCurrentIdentityWithError(*(a2 + 16), kPCSServiceRaw, 0)) == 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = v8;
    v10 = PCSIdentityCopyPublicIdentity(v8);
    if (v10)
    {
      v16 = v10;
      v7 = PCSFPAddPublicIdentityWithShareFlags(a1, v10, a3, v11, v12, v13, v14, v15);
      CFRelease(v9);
      v9 = v16;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v9);
  }

  *a4 = v7;
}

void PCSFPCreatePrivateKey_cold_2(uint64_t *a1, void *a2)
{
  if (!a1[9] || !a1[2])
  {
    RandomCompactRaw = 0;
    goto LABEL_8;
  }

  RandomCompactRaw = PCSIdentityCreateRandomCompactRaw(0);
  if (RandomCompactRaw)
  {
    if ((PCSIdentitySetSetCurrentIdentity(a1[2], RandomCompactRaw) & 1) == 0)
    {
      v5 = RandomCompactRaw;
      RandomCompactRaw = 0;
      goto LABEL_7;
    }

    v5 = a1[6];
    if (v5)
    {
      a1[6] = 0;
LABEL_7:
      CFRelease(v5);
    }
  }

LABEL_8:
  *a2 = RandomCompactRaw;
}

void PCSFPUpdateIdentityAndRollZoneKey_cold_1(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("fpkeyRoll");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = 138412546;
    v7 = a1;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "FP Failed Roll for zone %@ %@", &v6, 0x16u);
  }
}

CFIndex ValidateSignature_cold_3(uint64_t *a1, const void **a2)
{
  ServiceID = *a1;
  if (ServiceID)
  {
    ServiceID = PCSIdentityGetServiceID(ServiceID);
  }

  return _PCSError(a2, 16, @"Author signature or server signature required for service: %d", ServiceID);
}

CFTypeRef PCSIdentitySetCreateNamed(const void *a1, const void **a2)
{
  Mutable = PCSIdentitySetCreateMutable(a2);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  if (addNamedServiceToSet(Mutable, 0, a1, 0) && (v6 = _PCSIdentitySetCopyCurrentIdentityInternal(v5, kPCSServiceMaster, a2)) != 0)
  {
    v9 = v6;
    v10 = OUTLINED_FUNCTION_0_3(v6, v7, v8, @"Bladerunner");
    if (v10 && (v13 = OUTLINED_FUNCTION_0_3(v10, v11, v12, @"Hyperion")) && (v16 = OUTLINED_FUNCTION_0_3(v13, v14, v15, @"Liverpool")) && (v19 = OUTLINED_FUNCTION_0_3(v16, v17, v18, kPCSServiceEscrow)) && (v22 = OUTLINED_FUNCTION_0_3(v19, v20, v21, kPCSServicePianoMover)) && (v25 = OUTLINED_FUNCTION_0_3(v22, v23, v24, kPCSServiceBackup)) && (v28 = OUTLINED_FUNCTION_0_3(v25, v26, v27, kPCSServiceNotes)) && (v31 = OUTLINED_FUNCTION_0_3(v28, v29, v30, kPCSServiceNews)) && (v34 = OUTLINED_FUNCTION_0_3(v31, v32, v33, kPCSServiceFDE)) && (v37 = OUTLINED_FUNCTION_0_3(v34, v35, v36, kPCSServiceSharing)) && (v40 = OUTLINED_FUNCTION_0_3(v37, v38, v39, kPCSServiceKeyboardServices)) && (v43 = OUTLINED_FUNCTION_0_3(v40, v41, v42, kPCSServiceActivities)) && (v46 = OUTLINED_FUNCTION_0_3(v43, v44, v45, kPCSServiceGaming)) && (v49 = OUTLINED_FUNCTION_0_3(v46, v47, v48, kPCSServiceiAD)) && (v52 = OUTLINED_FUNCTION_0_3(v49, v50, v51, kPCSServiceBulkMail)) && (v55 = OUTLINED_FUNCTION_0_3(v52, v53, v54, kPCSServiceBTPairing)) && (v58 = OUTLINED_FUNCTION_0_3(v55, v56, v57, kPCSServiceBTAnnouncement)) && (v61 = OUTLINED_FUNCTION_0_3(v58, v59, v60, kPCSServiceTTYCallHistory)) && (v64 = OUTLINED_FUNCTION_0_3(v61, v62, v63, kPCSServiceContinuity)) && (v67 = OUTLINED_FUNCTION_0_3(v64, v65, v66, kPCSServiceSafari)) && (v70 = OUTLINED_FUNCTION_0_3(v67, v68, v69, kPCSServiceCloudKitApple)) && OUTLINED_FUNCTION_0_3(v70, v71, v72, kPCSHealthSync2))
    {
      v73 = CFRetain(v5);
    }

    else
    {
      v73 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v73 = 0;
    v9 = v5;
  }

  CFRelease(v9);
  return v73;
}

BOOL addNamedServiceToSet(uint64_t a1, uint64_t a2, CFTypeRef cf, const __CFNumber *key)
{
  v5 = __PCSIdentityCreateWithNameEmpty(a2, cf, key);
  if (v5)
  {
    PCSIdentitySetAddIdentity(a1, v5);
    CFRelease(v5);
  }

  return v5 != 0;
}

void *PCSIdentitySetCopyCurrentPublicIdentityWithError(uint64_t a1, uint64_t a2, const void **a3)
{
  OUTLINED_FUNCTION_3_1();
  if (PCSCurrentPersonaMatchesDSIDFromSet(v6))
  {
    v7 = PCSIdentitySetCopyCurrentIdentityWithError(v4, v3, a3);
    if (v7)
    {
      v8 = v7;
      v9 = PCSIdentityCopyPublicIdentity(v7);
      CFRelease(v8);
      return v9;
    }
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
  }

  return 0;
}

uint64_t *PCSIdentitySetCreateClassic(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_1();
  v26[1] = *MEMORY[0x1E69E9840];
  if (!v11)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
  v13 = Value;
  if (!Value)
  {
    goto LABEL_6;
  }

  v14 = CFGetTypeID(Value);
  if (v14 != CFStringGetTypeID())
  {
    _PCSError(a3, 47, @"DSID not a string");
    return 0;
  }

  if (!CFEqual(v13, kPCSSetupDSIDAny[0]))
  {
LABEL_6:
    if (PCSCurrentPersonaMatchesDSID(v13))
    {
      goto LABEL_7;
    }

    if (!a3)
    {
      return a3;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = kPCSErrorDomain;
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Current persona does not match chosen dsid";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a3 = [v22 errorWithDomain:v23 code:152 userInfo:v24];

    return 0;
  }

LABEL_5:
  v13 = 0;
LABEL_7:
  v15 = __PCSCopyFromiCloudKeychain(0, v13, 0, v6, v7, v8, v9, v10);
  if (!v15)
  {
    v15 = __PCSCopyFromKeychain(0, 0, v13, a3, v16, v17, v18, v19);
    if (!v15)
    {
      return 0;
    }
  }

  v20 = v15;
  a3 = PCSIdentitySetCreateFromExternalForm(v4, v15, 0, a3);
  if (a3)
  {
    if (v3)
    {
      CFRetain(v3);
    }

    a3[4] = v3;
  }

  CFRelease(v20);
  return a3;
}

BOOL _PCSKeychainAmendCKKSEntry(uint64_t a1, __CFDictionary *a2)
{
  v4 = PCSIdentityCopyExportedPublicKey(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = PCSIdentityCopyPublicKeyInfo(a1);
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v9 = PCSIdentityCopyServiceNumber(a1);
    if (v9)
    {
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADE0], v5);
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADD8], v8);
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADE8], v9);
    }

    CFRelease(v5);
    CFRelease(v8);
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = v5;
  }

  CFRelease(v9);
  return v7;
}

CFTypeRef _PCSIdentityCopyKeychainAttributes(uint64_t a1)
{
  v31 = 0;
  ServiceName = PCSIdentityGetServiceName(a1);
  if (!ServiceName)
  {
    return 0;
  }

  v3 = ServiceName;
  v29 = IdentityCopyServiceNumber(a1, 0);
  if (!v29)
  {
    return 0;
  }

  PublicKey = PCSIdentityGetPublicKey(a1);
  if (!PublicKey || (v32.location = 0, v32.length = 8, (v5 = CFStringCreateWithSubstring(0, PublicKey, v32)) == 0))
  {
    v26 = v29;
LABEL_21:
    CFRelease(v26);
    return 0;
  }

  v6 = v5;
  if (!PCSIdentityGetKeyID(a1) || (v7 = OUTLINED_FUNCTION_0_1(), (v30 = CFStringCreateWithFormat(v7, v8, v9, v3, v6)) == 0))
  {
    CFRelease(v29);
    v26 = v6;
    goto LABEL_21;
  }

  v10 = PCSIdentityCopyExportedPrivateKey(a1, &v31);
  if (v10)
  {
    key = *MEMORY[0x1E697AFF8];
    v27 = *MEMORY[0x1E697B018];
    PCSServiceItemGetAccessClassByName(v3);
    v11 = *MEMORY[0x1E695E4D0];
    AccessGroupByName = PCSServiceItemGetAccessGroupByName(v3);
    v13 = v29;
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(AccessGroupByName, v14, v15, v16, v17, v18, v19, v20, key, v27);
    ServiceViewHint = PCSIdentityGetServiceViewHint(a1);
    if (ServiceViewHint)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEA8], ServiceViewHint);
    }

    OUTLINED_FUNCTION_0_4();
    if (v23)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], v11);
    }

    _PCSKeychainAmendCKKSEntry(a1, MutableForCFTypesWith);
    v24 = CFRetain(MutableForCFTypesWith);
  }

  else
  {
    MutableForCFTypesWith = 0;
    v24 = 0;
    v13 = v29;
  }

  CFRelease(v13);
  CFRelease(v30);
  CFRelease(v6);
  if (v10)
  {
    CFRelease(v10);
  }

  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  return v24;
}

BOOL MemoryIsCurrentIdentity()
{
  OUTLINED_FUNCTION_3_1();
  v3 = PCSIdentityCopyServiceNumber(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(*(v1 + 72), v3);
  if (Value)
  {
    v6 = CFEqual(Value, v0) != 0;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

void *KeychainCopyByKeyID(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v38 = 0;
  v9 = *MEMORY[0x1E695E4D0];
  v10 = OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], v33, v34, v35, v36, v37);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *(a1 + 40);
  if (v12)
  {
    CFDictionarySetValue(v10, *MEMORY[0x1E697AE80], v12);
  }

  OUTLINED_FUNCTION_0_4();
  if (v13)
  {
    CFDictionarySetValue(v11, *MEMORY[0x1E697AEB0], v9);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v14 = _PCSKeychainForwardTable(v11, &v38);
  v15 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_11_0(v15);
  if (v14)
  {
    goto LABEL_24;
  }

  if (!v38)
  {
    goto LABEL_24;
  }

  v16 = CFGetTypeID(v38);
  if (v16 != CFArrayGetTypeID())
  {
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v38);
  if (Count < 1)
  {
    goto LABEL_24;
  }

  v18 = Count;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *MEMORY[0x1E697B3C0];
  v23 = *MEMORY[0x1E697AEA8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v38, v21);
    Value = CFDictionaryGetValue(ValueAtIndex, v22);
    if (Value)
    {
      v26 = CFGetTypeID(Value);
      if (v26 == CFDataGetTypeID())
      {
        v27 = CFDictionaryGetValue(ValueAtIndex, v23);
        v28 = IsViewHintPreferred(v27);
        if (v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = ValueAtIndex;
        }

        if (v28)
        {
          v20 = ValueAtIndex;
        }

        else
        {
          v19 = v29;
        }
      }
    }

    ++v21;
  }

  while (v18 != v21);
  if (v20 || (v20 = v19) != 0)
  {
    v30 = PCSIdentityCreateWithKeychainAttributes(v20);
    UpdateCKKSIdentity(v30, v20);
  }

  else
  {
LABEL_24:
    v30 = 0;
  }

  CFRelease(v11);
  v31 = v38;
  if (v38)
  {
    v38 = 0;
    CFRelease(v31);
  }

  return v30;
}

uint64_t KeychainIsCurrentIdentity(uint64_t a1, uint64_t a2, char a3)
{
  v31 = 0;
  valuePtr = 0;
  if (a3)
  {
    CachedCurrentBit = _PCSIdentityGetCachedCurrentBit(a2);
    v6 = *MEMORY[0x1E695E4D0];
    v7 = CachedCurrentBit == *MEMORY[0x1E695E4D0];
    if (CachedCurrentBit)
    {
      return v7;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  key = *MEMORY[0x1E697AFF8];
  v9 = *MEMORY[0x1E697B018];
  PublicKey = PCSIdentityGetPublicKey(a2);
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(PublicKey, v10, v11, v12, v13, v14, v15, v16, key, v9);
  if (!MutableForCFTypesWith)
  {
    return 0;
  }

  v18 = MutableForCFTypesWith;
  v19 = *(a1 + 40);
  if (v19)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], v19);
  }

  OUTLINED_FUNCTION_0_4();
  if (v20)
  {
    CFDictionarySetValue(v18, *MEMORY[0x1E697AEB0], v6);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v21 = _PCSKeychainForwardTable(v18, &v31);
  v22 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_11_0(v22);
  if (!v21 && v31 && (v23 = CFGetTypeID(v31), v23 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v31, *MEMORY[0x1E697AEF8])) != 0 && (v25 = Value, v26 = CFGetTypeID(Value), v26 == CFNumberGetTypeID()) && CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = BYTE2(valuePtr) & 1;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v18);
  v27 = v31;
  if (v31)
  {
    v31 = 0;
    CFRelease(v27);
  }

  return v7;
}

BOOL KeychainAddIdentity(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  cf = 0;
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = _PCSIdentityCopyKeychainAttributes(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFDictionarySetValue(v4, *MEMORY[0x1E697B328], *MEMORY[0x1E695E4D0]);
  v6 = PCSMeasureRelativeNanoTime();
  ++PCSMeasure;
  v7 = (*(&_PCSKeychainForwardTable + 1))(v5, &cf);
  qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v6;
  v8 = v7 == 0;
  if (v7)
  {
    PCSSecError(v7, a3, @"SecItemAdd");
  }

  CFRelease(v5);
  v9 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v9);
  }

  return v8;
}

BOOL KeychainRemoveIdentity(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (!MutableForCFTypesWith)
  {
    return 0;
  }

  v9 = MutableForCFTypesWith;
  OUTLINED_FUNCTION_0_4();
  if (v10)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
  }

  v11 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2620;
  v12 = off_1ED6F2360(v9);
  qword_1ED6F2628 += PCSMeasureRelativeNanoTime() - v11;
  v13 = v12 == 0;
  CFRelease(v9);
  return v13;
}

uint64_t KeychainSetCurrentIdentity(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v6 = IdentityCopyServiceNumber(a2, 0);
  v7 = IdentityCopyServiceNumber(a2, 0x10000);
  v15 = v7;
  if (*(a1 + 40))
  {
    v16 = *MEMORY[0x1E697AFF8];
    v17 = *MEMORY[0x1E697B018];
    v18 = *MEMORY[0x1E697AEF8];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v7, v8, v9, v10, v11, v12, v13, v14, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    v27 = MutableForCFTypesWith;
    if (MutableForCFTypesWith)
    {
      v53 = a3;
      v54 = v15;
      if (PCSUseSyncKeychain == 1)
      {
        CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
      }

      v28 = CFDictionaryCreateForCFTypes(MutableForCFTypesWith, v20, v21, v22, v23, v24, v25, v26, v18, v6);
      PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2610;
      v29 = qword_1ED6F2358(v27, v28);
      v30 = PCSMeasureRelativeNanoTime();
      OUTLINED_FUNCTION_10_0(v30);
      if (v29 == -25300 || !v29)
      {
        CFRelease(v27);
        if (v28)
        {
          CFRelease(v28);
        }

        PublicKey = PCSIdentityGetPublicKey(a2);
        v27 = CFDictionaryCreateMutableForCFTypesWith(PublicKey, v31, v32, v33, v34, v35, v36, v37, v16, v17);
        v15 = v54;
        if (v27)
        {
          OUTLINED_FUNCTION_0_4();
          if (v46)
          {
            CFDictionarySetValue(v27, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
          }

          v28 = CFDictionaryCreateForCFTypes(v38, v39, v40, v41, v42, v43, v44, v45, v18, v54);
          if (v28)
          {
            PCSMeasureRelativeNanoTime();
            ++qword_1ED6F2610;
            v47 = qword_1ED6F2358(v27, v28);
            v48 = PCSMeasureRelativeNanoTime();
            OUTLINED_FUNCTION_10_0(v48);
            if (!v47)
            {
              v49 = 1;
LABEL_18:
              v15 = v54;
              goto LABEL_19;
            }

            PCSSecError(v47, v53, @"Failed to mark %@ as current", a2);
LABEL_17:
            v49 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v28 = 0;
        }

        v49 = 0;
LABEL_19:
        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      PCSSecError(v29, v53, @"Failed to remove current on attributes", key);
      goto LABEL_17;
    }

    v28 = 0;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v49 = 0;
  if (v6)
  {
LABEL_20:
    CFRelease(v6);
  }

LABEL_21:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v49;
}

uint64_t KeychainUnsetCurrentIdentity(uint64_t a1, const __CFNumber *key, CFErrorRef *a3)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  IndexByName = PCSServiceItemGetIndexByName(key);
  v32 = IndexByName;
  if (!IndexByName)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_7_1(IndexByName, v5, &v32);
  v32 |= 0x10000u;
  v8 = OUTLINED_FUNCTION_7_1(v6, v7, &v32);
  v9 = *MEMORY[0x1E697AEF8];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v8, v10, v11, v12, v13, v14, v15, v16, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (MutableForCFTypesWith)
  {
    OUTLINED_FUNCTION_0_4();
    if (v26)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    }

    v27 = CFDictionaryCreateForCFTypes(v18, v19, v20, v21, v22, v23, v24, v25, v9, v6);
    if (v27)
    {
      v28 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2610;
      v29 = qword_1ED6F2358(MutableForCFTypesWith, v27);
      qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v28;
      v30 = 1;
      if (v29 == -25300 || !v29)
      {
        goto LABEL_12;
      }

      PCSSecError(v29, a3, @"Failed to remove current on attributes");
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = 0;
LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v30;
}

uint64_t KeychainEnumerateIdentities(uint64_t a1, const void *a2, void *a3)
{
  TypeID = a3;
  v13 = TypeID;
  if (!a1)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 32);
  if (a2)
  {
    v15 = CFGetTypeID(a2);
    TypeID = CFDictionaryGetTypeID();
    if (v15 == TypeID && !v14)
    {
      TypeID = CFDictionaryGetValue(a2, kPCSSetupService[0]);
      v14 = TypeID;
    }
  }

  v16 = *MEMORY[0x1E695E4D0];
  v17 = OUTLINED_FUNCTION_2_1(TypeID, v6, v7, v8, v9, v10, v11, v12, *MEMORY[0x1E697AFF8], v32, v33, v34, v35, v36);
  if (!v17)
  {
LABEL_21:
    v30 = 0;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = *(a1 + 40);
  if (v19)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E697AE80], v19);
  }

  OUTLINED_FUNCTION_0_4();
  if (v20)
  {
    CFDictionarySetValue(v18, *MEMORY[0x1E697AEB0], v16);
  }

  if (v14)
  {
    v21 = CFGetTypeID(v14);
    if (v21 == CFStringGetTypeID())
    {
      IndexByName = PCSServiceItemGetIndexByName(v14);
      v37 = IndexByName;
      v24 = OUTLINED_FUNCTION_7_1(IndexByName, v23, &v37);
      if (!v24 || (v25 = v24, OUTLINED_FUNCTION_8_1(), CFRelease(v25), processQuery(v18, v13), (v26 = OUTLINED_FUNCTION_4_1()) == 0) || (v27 = v26, OUTLINED_FUNCTION_8_1(), CFRelease(v27), processQuery(v18, v13), (v28 = OUTLINED_FUNCTION_4_1()) == 0))
      {
        v30 = 0;
        goto LABEL_19;
      }

      v29 = v28;
      OUTLINED_FUNCTION_8_1();
      CFRelease(v29);
    }
  }

  processQuery(v18, v13);
  v30 = 1;
LABEL_19:
  CFRelease(v18);
LABEL_20:

  return v30;
}

CFMutableDictionaryRef KeychainCopyIdentities()
{
  OUTLINED_FUNCTION_3_1();
  v0 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    OUTLINED_FUNCTION_1_1();
    v5 = OUTLINED_FUNCTION_12();
    if ((KeychainEnumerateIdentities(v5, v6, v7) & 1) == 0)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

PCSCurrentIdentity *KeychainCopyXIdentityWithCount(uint64_t a1, const __CFNumber *key, CFIndex *a3, const void **a4)
{
  v6 = key;
  v51 = 0;
  v50 = 0;
  if (!key)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      _PCSError(a4, 27, @"service missing");
      goto LABEL_35;
    }
  }

  IndexByName = PCSServiceItemGetIndexByName(v6);
  v50 = IndexByName;
  if (!IndexByName)
  {
LABEL_35:
    v41 = 0;
    v21 = 0;
    v18 = 0;
    goto LABEL_40;
  }

  v50 = IndexByName | 0x10000;
  v10 = OUTLINED_FUNCTION_7_1(IndexByName, v9, &v50);
  v18 = v10;
  if (v10)
  {
    v19 = *MEMORY[0x1E695E4D0];
    v20 = OUTLINED_FUNCTION_2_1(v10, v11, v12, v13, v14, v15, v16, v17, *MEMORY[0x1E697AFF8], v45, v46, v47, v48, v49);
    v21 = v20;
    if (v20)
    {
      v22 = *(a1 + 40);
      if (v22)
      {
        CFDictionarySetValue(v20, *MEMORY[0x1E697AE80], v22);
      }

      OUTLINED_FUNCTION_0_4();
      if (v23)
      {
        CFDictionarySetValue(v21, *MEMORY[0x1E697AEB0], v19);
      }

      v24 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2630;
      v25 = _PCSKeychainForwardTable(v21, &v51);
      qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v24;
      if (v25)
      {
        PCSSecError(v25, a4, @"Failed finding service %@", v6);
      }

      else if (v51 && (v26 = CFGetTypeID(v51), v26 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v51);
        v28 = Count;
        if (a3)
        {
          *a3 = Count;
        }

        if (Count >= 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = *MEMORY[0x1E697B3C0];
          v33 = *MEMORY[0x1E697AEA8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v51, v31);
            if (ValueAtIndex)
            {
              v35 = ValueAtIndex;
              v36 = CFGetTypeID(ValueAtIndex);
              if (v36 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(v35, v32);
                if (Value)
                {
                  v38 = CFGetTypeID(Value);
                  if (v38 == CFDataGetTypeID())
                  {
                    v39 = CFDictionaryGetValue(v35, v33);
                    if (IsViewHintPreferred(v39) && (!v30 || IdentityAttributesCompare(v35, v30) == kCFCompareGreaterThan))
                    {
                      v30 = v35;
                    }

                    else if (!v29 || IdentityAttributesCompare(v35, v29) == kCFCompareGreaterThan)
                    {
                      v29 = v35;
                    }
                  }
                }
              }
            }

            ++v31;
          }

          while (v28 != v31);
          if (v30 || (v30 = v29) != 0)
          {
            v40 = PCSIdentityCreateWithKeychainAttributes(v30);
            UpdateCKKSIdentity(v40, v30);
            if (v40)
            {
              v41 = [[PCSCurrentIdentity alloc] initWithIdentity:v40 currentItemPointerModificationTime:0];
              CFRelease(v40);
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        _PCSError(a4, 21, @"return data not array");
      }
    }

    v41 = 0;
  }

  else
  {
    _PCSErrorOOM(a4);
    v41 = 0;
    v21 = 0;
  }

LABEL_40:
  v42 = v51;
  if (v51)
  {
    v51 = 0;
    CFRelease(v42);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v43 = v51;
  if (v51)
  {
    v51 = 0;
    CFRelease(v43);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v41;
}

void __KeychainRepairCurrentIdentity_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = KeychainCopyXIdentityWithCount(*(a1 + 40), *(a1 + 48), &v10, 0);
  v3 = v2;
  cf = 0;
  if (v10 <= 1 && (!v2 || CFEqual([v2 identity], *(a1 + 56))))
  {
LABEL_4:
    v4 = 1;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "current pointer/bit mismatch detected", buf, 2u);
  }

  v7 = KeychainSetCurrentIdentity(*(a1 + 40), *(a1 + 56), &cf);
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "successfully set current identity", buf, 2u);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    *buf = 138412290;
    v12 = cf;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to set current identity: %@", buf, 0xCu);
  }

  v4 = 0;
LABEL_5:
  v5 = *(a1 + 32);
  v6 = cf;
  if (v5)
  {
    (*(v5 + 16))(v5, v4, cf);
    v6 = cf;
  }

  if (v6)
  {
    cf = 0;
    CFRelease(v6);
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 56));
}

uint64_t KeychainGetSecurityDomainStatus(uint64_t a1, __CFString *a2, unsigned int *a3, const void **a4, int a5, int a6, int a7, int a8)
{
  v113 = *MEMORY[0x1E69E9840];
  v108 = 0;
  v10 = *MEMORY[0x1E697AC30];
  v11 = *MEMORY[0x1E695E4D0];
  v12 = *MEMORY[0x1E697B260];
  v13 = *MEMORY[0x1E697B270];
  v88 = *MEMORY[0x1E697B270];
  v89 = 0;
  v86 = *MEMORY[0x1E695E4D0];
  v87 = *MEMORY[0x1E697B260];
  v105 = *MEMORY[0x1E697B318];
  v84 = kPCSAccount[0];
  v85 = *MEMORY[0x1E697B318];
  v83 = *MEMORY[0x1E697AC30];
  v81 = *MEMORY[0x1E697AE70];
  v82 = a2;
  v102 = *MEMORY[0x1E697AE70];
  v103 = *MEMORY[0x1E697B018];
  v106 = *MEMORY[0x1E697AFF8];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  v15 = MutableForCFTypesWith;
  v16 = *(a1 + 40);
  if (v16)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], v16);
  }

  if (PCSUseSyncKeychain == 1)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E697AEB0], v11);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  *a3 = _PCSKeychainForwardTable(v15, &v108);
  v17 = PCSMeasureRelativeNanoTime();
  v18 = OUTLINED_FUNCTION_5_1(v17);
  if (v26 != -25300)
  {
    goto LABEL_14;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v88 = v13;
  v89 = 0;
  v86 = v11;
  v87 = v12;
  v84 = kPCSAccount[0];
  v85 = v105;
  v83 = v10;
  v81 = *MEMORY[0x1E697AE88];
  v82 = a2;
  v100 = *MEMORY[0x1E697AE88];
  v101 = *MEMORY[0x1E697B008];
  v27 = CFDictionaryCreateMutableForCFTypesWith(v18, v19, v20, v21, v22, v23, v24, v25, v106, *MEMORY[0x1E697B008]);
  v15 = v27;
  v28 = *(a1 + 40);
  if (v28)
  {
    CFDictionarySetValue(v27, *MEMORY[0x1E697ACF0], v28);
  }

  OUTLINED_FUNCTION_0_4();
  if (v29)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E697AEB0], v11);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  *a3 = _PCSKeychainForwardTable(v15, &v108);
  v30 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_5_1(v30);
  if (v31)
  {
    goto LABEL_14;
  }

  v52 = *(a1 + 40);
  if (!v52)
  {
    goto LABEL_14;
  }

  v53 = v108;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v109) = 0;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
  }

  v98 = v53;
  v99 = 0;
  v96 = @"PCS-MasterKey";
  v97 = *MEMORY[0x1E697B3C0];
  v94 = v52;
  v95 = *MEMORY[0x1E697AEA8];
  v92 = kPCSDefaultKeychainGroup[0];
  v93 = *MEMORY[0x1E697AE80];
  v90 = v11;
  v91 = *MEMORY[0x1E697ABD0];
  v88 = *MEMORY[0x1E697ABE0];
  v89 = *MEMORY[0x1E697B390];
  v86 = kPCSAccount[0];
  v87 = *MEMORY[0x1E697ABD8];
  v84 = kPCSiCloudServiceMarkerName[0];
  v85 = v10;
  v82 = @"PCS iCloud Data Protection";
  v83 = v102;
  v81 = *MEMORY[0x1E697ADC8];
  v65 = CFDictionaryCreateMutableForCFTypesWith(@"PCS-MasterKey", *MEMORY[0x1E697B3C0], v54, v55, v56, v57, v58, v59, v106, v103);
  v66 = MEMORY[0x1E697AEB0];
  if (v65)
  {
    v67 = v65;
    OUTLINED_FUNCTION_0_4();
    if (v29)
    {
      CFDictionarySetValue(v67, *v66, v11);
    }

    v92 = v13;
    v93 = 0;
    v90 = v11;
    v91 = v12;
    v88 = v11;
    v89 = v105;
    v86 = v52;
    v87 = *MEMORY[0x1E697AD00];
    v84 = kPCSAccount[0];
    v85 = *MEMORY[0x1E697ACF0];
    v82 = kPCSiCloudServiceMarkerName[0];
    v83 = v10;
    v81 = v100;
    v76 = CFDictionaryCreateMutableForCFTypesWith(v68, v69, v70, v71, v72, v73, v74, v75, v106, v101);
    if (v76)
    {
      v77 = v76;
      OUTLINED_FUNCTION_0_4();
      if (v29)
      {
        CFDictionarySetValue(v77, *v66, v11);
      }

      v78 = (*(&_PCSKeychainForwardTable + 1))(v67, 0);
      if (!v78 || v78 == -25299)
      {
        off_1ED6F2360(v77);
      }

      CFRelease(v67);
    }

    else
    {
      v77 = v67;
    }

    v32 = a2;
    CFRelease(v77);
  }

  else
  {
LABEL_14:
    v32 = a2;
  }

  if (!CFEqual(v32, kPCSPlesioMarkerName[0]) && !CFEqual(v32, kPCSPlesioMarkerNewName[0]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v33 = *a3;
    v109 = 138412546;
    v110 = v32;
    v111 = 1024;
    LODWORD(v112) = v33;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v34, v35, v36, v37, v38, 0x12u);
  }

  v39 = *a3;
  if (v39)
  {
    if (v39 != -25300)
    {
      _PCSError(a4, 50, @"Marker (%@) return unexpected error code: %d", v32, v39, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
    }

    goto LABEL_57;
  }

  if (!v108 || (v40 = CFGetTypeID(v108), v40 != CFDataGetTypeID()))
  {
    _PCSError(a4, 50, @"Failed getting iCDP data", key, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
LABEL_57:
    v42 = 0;
    goto LABEL_26;
  }

  v41 = CFDataCreate(0, iCloudDataProtection, 21);
  v42 = v41;
  if (v41)
  {
    if (CFEqual(v41, v108))
    {
      v43 = 1;
      goto LABEL_27;
    }

    _PCSError(a4, 50, @"Entry in iCDP not iCDP!");
  }

  else
  {
    _PCSErrorOOM(a4);
  }

LABEL_26:
  v43 = 0;
LABEL_27:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v44 = "off";
    if (v43)
    {
      v44 = "on";
    }

    v109 = 138412546;
    v110 = v32;
    v111 = 2080;
    v112 = v44;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v50 = v108;
  if (v108)
  {
    v108 = 0;
    CFRelease(v50);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v43;
}

uint64_t KeychainSetSecurityDomainStatus(uint64_t a1, CFTypeRef cf1, int a3, CFErrorRef *a4)
{
  if (a4)
  {
    v8 = *a4;
    if (*a4)
    {
      *a4 = 0;
      CFRelease(v8);
    }
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  v9 = CFEqual(cf1, kPCSPlesioMarkerName[0]);
  if (!v9)
  {
    v9 = CFEqual(cf1, kPCSPlesioMarkerNewName[0]);
    if (!v9)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        OUTLINED_FUNCTION_6_1();
        _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      }
    }
  }

  if (!a3)
  {
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v9, v10, v11, v12, v13, v14, v15, v16, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    if (MutableForCFTypesWith)
    {
      v66 = MutableForCFTypesWith;
      OUTLINED_FUNCTION_0_4();
      if (v37)
      {
        CFDictionarySetValue(v66, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
      }

      v67 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2620;
      v68 = off_1ED6F2360(v66);
      qword_1ED6F2628 += PCSMeasureRelativeNanoTime() - v67;
      v62 = 1;
      if (v68 != -25300 && v68)
      {
        PCSSecError(v68, a4, @"Failed to delete: %@", cf1);
        v62 = 0;
      }

      v69 = v66;
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v22 = CFDataCreate(0, iCloudDataProtection, 21);
  if (!v22)
  {
LABEL_39:
    _PCSErrorOOM(a4);
    return 0;
  }

  v28 = v22;
  v71 = a4;
  v29 = *MEMORY[0x1E697AFF8];
  v30 = *MEMORY[0x1E697B018];
  v31 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E697B3C0];
  v33 = CFDictionaryCreateMutableForCFTypesWith(@"PCS-MasterKey", *MEMORY[0x1E697AC30], *MEMORY[0x1E697AE80], v23, v24, v25, v26, v27, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (!v33)
  {
LABEL_40:
    _PCSErrorOOM(v71);
    CFRelease(v28);
    return 0;
  }

  v34 = v33;
  v35 = v30;
  v72 = v28;
  v36 = v29;
  OUTLINED_FUNCTION_0_4();
  if (v37)
  {
    CFDictionarySetValue(v34, *MEMORY[0x1E697AEB0], v31);
  }

  v38 = PCSMeasureRelativeNanoTime();
  ++PCSMeasure;
  v39 = (*(&_PCSKeychainForwardTable + 1))(v34, 0);
  qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v38;
  if (v39 == -25299)
  {
    v40 = v36;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_1();
      _os_log_impl(v41, v42, v43, v44, v45, 0x1Cu);
    }

    CFRelease(v34);
    v28 = v72;
    v54 = CFDictionaryCreateMutableForCFTypesWith(v46, v47, v48, v49, v50, v51, v52, v53, key, v72);
    if (v54)
    {
      v34 = v54;
      v62 = CFDictionaryCreateMutableForCFTypesWith(v54, v55, v56, v57, v58, v59, v60, v61, v40, v35);
      if (v62)
      {
        OUTLINED_FUNCTION_0_4();
        if (v37)
        {
          CFDictionarySetValue(v62, *MEMORY[0x1E697AEB0], v31);
        }

        v63 = PCSMeasureRelativeNanoTime();
        ++qword_1ED6F2610;
        v64 = qword_1ED6F2358(v62, v34);
        qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v63;
        CFRelease(v62);
        if (v64)
        {
          PCSSecError(v64, v71, @"Failed to update: %@", cf1);
          v62 = 0;
        }

        else
        {
          v62 = 1;
        }
      }

      else
      {
        _PCSErrorOOM(v71);
      }

      goto LABEL_36;
    }

    goto LABEL_40;
  }

  if (v39)
  {
    PCSSecError(v39, v71, @"Failed to add: %@", cf1);
    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v28 = v72;
LABEL_36:
  CFRelease(v28);
  v69 = v34;
LABEL_37:
  CFRelease(v69);
  return v62;
}

void KeychainCopyCurrentIdentity_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get W state: %@", &v2, 0xCu);
}

void UpdateCKKSIdentity_cold_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], v26, v27, v28, v29, v30);
  v10 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
  v15 = _PCSKeychainAmendCKKSEntry(a1, Mutable);
  if (v15)
  {
    OUTLINED_FUNCTION_9_0(v15, v16, *MEMORY[0x1E697AEA8]);
    OUTLINED_FUNCTION_9_0(v17, v18, *MEMORY[0x1E697AE70]);
    OUTLINED_FUNCTION_9_0(v19, v20, *MEMORY[0x1E697AC30]);
    OUTLINED_FUNCTION_9_0(v21, v22, *MEMORY[0x1E697AEF8]);
    OUTLINED_FUNCTION_9_0(v23, v24, *MEMORY[0x1E697AE80]);
    v25 = qword_1ED6F2358(v9, Mutable);
    if (v9)
    {
      CFRelease(v9);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = a1;
        v33 = 1024;
        v34 = v25;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to update identity %@ to set CKKS PCS public attributes: %d", buf, 0x12u);
      }
    }
  }

  else
  {
    if (v9)
    {
      CFRelease(v9);
    }

    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

const __CFDictionary *_PCSIsiCDPEnabled(const __CFDictionary *a1, int a2)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    v5 = result;
    if ((_PCSIsiCDPIsWalrus(a1) & 1) != 0 || _PCSIsiCDPIsPlesio(a1))
    {
      Value = *MEMORY[0x1E695E4D0];
      if (!*MEMORY[0x1E695E4D0])
      {
        return 0;
      }
    }

    else
    {
      if (a2)
      {
        v8 = kPCSMetadataiCDPArmed;
      }

      else
      {
        v8 = kPCSMetadataiCDP;
      }

      Value = CFDictionaryGetValue(v5, *v8);
      if (!Value)
      {
        return 0;
      }
    }

    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(Value) != 0);
    }

    return 0;
  }

  return result;
}

const __CFDictionary *GetiCDPMetadata(const __CFDictionary *a1)
{
  result = GetHSMClientMetaData(a1);
  if (result)
  {
    result = CFDictionaryGetValue(result, kPCSSecureBackupCFiCloudDataProtectionKey[0]);
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFDictionaryGetTypeID())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *_PCSIsiCDPIsWalrus(const __CFDictionary *a1)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kPCSMetadataiCDPWalrus[0]);
    result = 0;
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *_PCSIsiCDPIsPlesio(const __CFDictionary *a1)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kPCSMetadataiCDPDrop[0]);
    result = 0;
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t PCSIdentityMigrateEngineExecute(uint64_t a1, const void *a2, CFTypeRef cf, const void **a4)
{
  v4 = PCSIdentityMigrateEngineCreate(a1, a2, 1, cf, a4);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_15();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFTypeRef PCSIdentitySetup(CFTypeRef cf, const void **a2)
{
  v2 = PCSIdentityMigrateEngineCreate(&setupIdentities, @"SetupIdentities", 1, cf, a2);
  if (v2 && OUTLINED_FUNCTION_15() && [v2 set])
  {
    v3 = CFRetain([v2 set]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PCSMigrationState *PCSIdentityMigrateEngineCreate(uint64_t a1, const void *a2, int a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDictionaryGetTypeID()))
  {
    _PCSError(a5, 127, @"Missing options dictionary");
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(cf, kPCSSetupLogFacility[0]);
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 != CFStringGetTypeID())
    {
      _PCSError(a5, 126, @"Log facility not a string");
LABEL_22:
      v18 = 0;
      goto LABEL_18;
    }
  }

  else if (a3)
  {
    v12 = @"PCSMigration";
  }

  else
  {
    v12 = @"PCSMisc";
  }

  if (a3)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = PCSCreateLogContext(v14, v12);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = objc_alloc_init(PCSMigrationState);
  v18 = v17;
  if (v17)
  {
    [(PCSMigrationState *)v17 setFirstStep:a1];
    [(PCSMigrationState *)v18 setCurrentStep:a1];
    CFDictionaryCreateCopy(0, cf);
    [OUTLINED_FUNCTION_1_2() setInitialOptions:?];
    [(PCSMigrationState *)v18 initialOptions];
    v19 = OUTLINED_FUNCTION_0_1();
    CFDictionaryCreateMutableCopy(v19, v20, v21);
    [OUTLINED_FUNCTION_1_2() setOptions:?];
    CFRetain(v16);
    [OUTLINED_FUNCTION_1_2() setLog:?];
    CFRetain(a2);
    [OUTLINED_FUNCTION_1_2() setType:?];
    [OUTLINED_FUNCTION_5_2() setNewIdentity:?];
    [OUTLINED_FUNCTION_5_2() setModified:?];
    v22 = [(PCSMigrationState *)v18 options];
    if (!CFDictionaryGetValue(v22, kPCSSetupLogContext[0]))
    {
      v23 = [(PCSMigrationState *)v18 options];
      CFDictionarySetValue(v23, kPCSSetupLogContext[0], v16);
    }

    v24 = v18;
  }

  CFRelease(v16);
LABEL_18:

  return v18;
}

uint64_t PCSIdentityMigrateEngineRun(void *a1, uint64_t *a2)
{
  v4 = a1;
  v29 = objc_autoreleasePoolPush();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v28 = os_transaction_create();
  [v4 log];
  v5 = [OUTLINED_FUNCTION_11_1() type];
  PCSMigrationLog(v2, @"%@ start", v5);
  v6 = _os_activity_create(&dword_1B229C000, "PCSMigrationEngine", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7 = v6;
  if (v6)
  {
    os_activity_scope_enter(v6, &state);
  }

  while (*([v4 currentStep] + 8))
  {
    if ([v4 done])
    {
      break;
    }

    v8 = [v4 currentStep];
    [v4 setCurrentStep:{objc_msgSend(v4, "currentStep") + 16}];
    v9 = [v4 log];
    v10 = [v4 type];
    v11 = *v8;
    if ([v4 modified])
    {
      v12 = " (modified)";
    }

    else
    {
      v12 = "";
    }

    PCSMigrationLog(v9, @"  running %@ step %@%s", v10, v11, v12);
    if (!(*(v8 + 8))(v4, a2))
    {
      goto LABEL_18;
    }

    if ([v4 restart])
    {
      if ([v4 restartCounter] > 4)
      {
        goto LABEL_18;
      }

      PCSMigrationLog([v4 log], @"  starting migration to the begining: %u", objc_msgSend(v4, "restartCounter"));
      [OUTLINED_FUNCTION_5_2() setRestart:?];
      [v4 firstStep];
      [OUTLINED_FUNCTION_1_2() setCurrentStep:?];
      [v4 setRestartCounter:{objc_msgSend(v4, "restartCounter") + 1}];
      if ([v4 options])
      {
        CFRelease([v4 options]);
      }

      [v4 initialOptions];
      v13 = OUTLINED_FUNCTION_0_1();
      CFDictionaryCreateMutableCopy(v13, v14, v15);
      [OUTLINED_FUNCTION_1_2() setOptions:?];
      [v4 softReset];
      v16 = arc4random_uniform(2 * [v4 restartCounter] + 10);
      sleep(v16 + 5);
    }
  }

  if (*([v4 currentStep] + 8) && !objc_msgSend(v4, "done"))
  {
LABEL_18:
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v4 options];
  v19 = CFDictionaryGetValue(v18, kPCSSetupStatistics[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "numberIdentityMissing")}];
    [v19 setObject:v20 forKeyedSubscript:@"numberIdentityMissing"];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "modified")}];
    [v19 setObject:v21 forKeyedSubscript:@"modified"];

    if ([v4 missingFromRegistry])
    {
      [v19 setObject:objc_msgSend(v4 forKeyedSubscript:{"missingFromRegistry"), @"missingFromRegistry"}];
    }

    if ([v4 brokenEncryptedMetadatakeys])
    {
      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"brokenEncryptedMetadatakeys"];
    }
  }

  v22 = [v4 log];
  v23 = [v4 type];
  v24 = @"failed";
  if (v17)
  {
    v24 = @"success";
  }

  if (a2)
  {
    v25 = v17;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *a2;
  }

  PCSMigrationLog(v22, @"%@ complete: %@ (error: %@)", v23, v24, v26);
  if (v7)
  {
    os_activity_scope_leave(&state);
  }

  objc_autoreleasePoolPop(v29);
  return v17;
}

CFTypeRef PCSIdentityLegacySetup(CFTypeRef cf, const void **a2)
{
  v2 = PCSIdentityMigrateEngineCreate(&legacySetupIdentities, @"LegacySetupIdentities", 1, cf, a2);
  if (!v2)
  {
    goto LABEL_9;
  }

  if (qword_1EB7AAB20 != -1)
  {
    dispatch_once(&qword_1EB7AAB20, &__block_literal_global_1045);
  }

  [v2 setLimitLocalStoring:_MergedGlobals_0];
  v3 = [v2 limitLocalStoring];
  if (v3)
  {
    CFRetain(v3);
  }

  if (OUTLINED_FUNCTION_15() && [v2 set])
  {
    v4 = CFRetain([v2 set]);
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  return v4;
}

uint64_t PCSIdentitySetValidate(const void *a1, CFTypeRef cf, uint64_t a3, const void **a4)
{
  v9 = cf && (v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()) && CFDictionaryGetValue(cf, kPCSSetupForceLogging[0]) != 0;
  if (!a3)
  {
    _PCSError(a4, 123, @"needPassword param missing");
    v10 = 0;
    goto LABEL_20;
  }

  *a3 = 0;
  v10 = PCSIdentityMigrateEngineCreate(&validateKeys, @"ValidateCredentials", v9, cf, a4);
  if (!v10)
  {
    goto LABEL_21;
  }

  [v10 setSet:CFRetain(a1)];
  if (!a1)
  {
    goto LABEL_21;
  }

  v11 = [v10 options];
  Value = CFDictionaryGetValue(v11, kPCSSetupForceValidateKey[0]);
  if (!Value || (v13 = CFGetTypeID(Value), v13 != CFBooleanGetTypeID()))
  {
    [v10 setRequireIdentityInHSM:1];
  }

  v14 = PCSIdentityMigrateEngineRun(v10, a4);
  v15 = v14;
  if (a4)
  {
    if ((v14 & 1) == 0)
    {
      if (*a4)
      {
        Domain = CFErrorGetDomain(*a4);
        if (CFEqual(Domain, *MEMORY[0x1E696A978]))
        {
          PCSMigrationLog([v10 log], @"PCS skipping validation failure since error is network issue: %@", *a4);
          v17 = *a4;
          if (*a4)
          {
            *a4 = 0;
            CFRelease(v17);
          }

          [v10 setNeedPassword:0];
          goto LABEL_19;
        }
      }
    }
  }

  if (!v15)
  {
LABEL_21:
    a3 = 0;
    goto LABEL_20;
  }

LABEL_19:
  *a3 = [v10 needPassword];
  a3 = 1;
LABEL_20:

  return a3;
}

CFTypeRef PCSIdentityRecoverFDE(CFTypeRef cf, const void **a2)
{
  v3 = PCSIdentityMigrateEngineCreate(&recoverFDE, @"RecoveryFDE", 1, cf, a2);
  if (!v3 || !OUTLINED_FUNCTION_15())
  {
    v4 = 0;
    goto LABEL_10;
  }

  if ([v3 set])
  {
    v4 = CFRetain([v3 set]);
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  Value = CFDictionaryGetValue(cf, kPCSSetupService[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      _PCSIdentitySetSetService([v3 set], v6);
    }
  }

LABEL_10:

  return v4;
}

const __CFDictionary *PCSIdentityiCDPPlesio(uint64_t a1, int a2, const __CFDictionary *a3, const void **a4)
{
  if (a2)
  {
    result = __PCSCopyStingrayInfo(0, 0, a3, a4);
    if (result)
    {
      v5 = result;
      v6 = _PCSIsiCDPIsPlesio(result);
      CFRelease(v5);
      return v6;
    }
  }

  else
  {

    return PCSIdentitySetIsPlesio(a1, a4);
  }

  return result;
}

const __CFDictionary *GetHSMClientMetaData(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, *MEMORY[0x1E6994F70]);
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(v2, *MEMORY[0x1E6994E48]);
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFDictionaryGetTypeID())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PCSEnginePrepareMetaData(void *a1)
{
  v2 = a1;
  v3 = CaptureMetadata(v2, [v2 metadata]);
  if (v3)
  {
    v4 = GetiCDPMetadata([v2 metadata]);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, kPCSMetadataiCDP[0]);
      if (Value && (v1 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v8 = 0;
      }

      [v2 setICDPHSM:v8];
      v9 = CFDictionaryGetValue(v5, kPCSMetadataiCDPArmed[0]);
      if (v9 && (v1 = v9, v10 = CFGetTypeID(v9), v10 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v11 = 0;
      }

      [v2 setICDPHSMArmed:v11];
      v12 = CFDictionaryGetValue(v5, kPCSMetadataiCDPWalrus[0]);
      if (v12 && (v1 = v12, v13 = CFGetTypeID(v12), v13 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v14 = 0;
      }

      [v2 setICDPHSMWalrus:v14];
      v15 = CFDictionaryGetValue(v5, kPCSMetadataiCDPDrop[0]);
      if (v15 && (v16 = v15, v1 = CFGetTypeID(v15), v1 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v16);
        OUTLINED_FUNCTION_4_2();
        v17 = v2;
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5_2();
      }

      [v17 setICDPHSMPlesio:?];
    }

    else
    {
      v18 = [v2 options];
      v19 = CFDictionaryGetValue(v18, kPCSSetupDSID[0]);
      v32 = 0;
      v20 = [PCSAccountsModel adpEnabledForDSID:v19 error:&v32];
      v21 = v32;
      v22 = [OUTLINED_FUNCTION_10_1() log];
      if (v20)
      {
        PCSMigrationLog(v22, @"iCDP metadata is missing, but OTAccountSettings indicate that ADP is enabled");
        [OUTLINED_FUNCTION_0_5() setICDPHSMWalrus:?];
      }

      else
      {
        PCSMigrationLog(v22, @"Unable to determine ADP state: %@", v1);
      }
    }

    if ([v2 iCDPHSMWalrus])
    {
      v1 = [MEMORY[0x1E69DF068] sharedManager];
      v23 = [(__CFBoolean *)v1 currentPersona];

      if ([v23 isDataSeparatedPersona])
      {
        v24 = [v2 options];
        v1 = CFDictionaryGetValue(v24, kPCSSetupDSID[0]);
        v25 = +[PCSAccountsModel accountForCurrentPersona];
        v26 = [v25 aa_personID];
        if ([v26 isEqualToString:v1])
        {
          v27 = [v25 aa_isManagedAppleID];

          if (v27)
          {
            v28 = _PCSIsInternalRelease();
            v29 = [v2 log];
            if (v28)
            {
              PCSMigrationLog(v29, @"Walrus is unexpectedly enabled. Disabling, will update metadata.");
              [OUTLINED_FUNCTION_5_2() setICDPHSMWalrus:?];
              [OUTLINED_FUNCTION_0_5() setModified:?];
            }

            else
            {
              PCSMigrationLog(v29, @"Walrus is unexpectedly enabled.");
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v23 = 0;
    }

    [v2 log];
    v30 = [OUTLINED_FUNCTION_10_1() iCDPHSMArmed];
    PCSMigrationLog(v1, @"Stingray iCDP status is armed %d icdp %d walrus %d plesio %d", v30, [v2 iCDPHSM], objc_msgSend(v2, "iCDPHSMWalrus"), objc_msgSend(v2, "iCDPHSMPlesio"));
  }

  return v3;
}

uint64_t PCSEngineSynchronizeiCDP(void *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = GetiCDPMetadata([v3 metadata]);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, kPCSMetadataiCDP[0]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v7);
        OUTLINED_FUNCTION_4_2();
        [v3 setICDPHSM:?];
      }
    }

    v9 = CFDictionaryGetValue(v5, kPCSMetadataiCDPArmed[0]);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v10);
        OUTLINED_FUNCTION_4_2();
        [v3 setICDPHSMArmed:?];
      }
    }
  }

  if ([v3 newIdentity])
  {
    v12 = 0;
    IsICDP = 0;
  }

  else
  {
    v14 = PCSIdentitySetCreate([v3 options], 0, a2);
    v12 = v14;
    if (v14)
    {
      IsICDP = PCSIdentitySetIsICDP(v14, 0);
    }

    else
    {
      IsICDP = 0;
    }

    v15 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"OFF";
      if (IsICDP)
      {
        v16 = @"ON";
      }

      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1B229C000, v15, OS_LOG_TYPE_DEFAULT, "Not creating new identity; local store iCDP state is %@", buf, 0xCu);
    }
  }

  [v3 setICDP:{objc_msgSend(v3, "iCDPHSM")}];
  v17 = [v3 iCDPHSMArmed];
  if (IsICDP)
  {
    if ((v17 & 1) == 0)
    {
      PCSMigrationLog([v3 log], @"iCDP state mismatching, using the most restrictive (local)");
      [OUTLINED_FUNCTION_0_5() setModified:?];
      [OUTLINED_FUNCTION_5_2() setICDP:?];
    }

    [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
  }

  else if (v17)
  {
    PCSMigrationLog([v3 log], @"iCDP state mismatching, using the most restrictive (remote)");
    [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
    [OUTLINED_FUNCTION_0_5() setModified:?];
  }

  [v3 log];
  v18 = [OUTLINED_FUNCTION_9_1() iCDPArmed];
  v19 = _PCSYESNO(v18);
  PCSMigrationLog(IsICDP, @"   iCDP state is (%@)", v19);
  if (v12)
  {
    CFRelease(v12);
  }

  return 1;
}

void PCSEngineAddMissingFromRegistry(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_13();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v34 = _PCSServiceItemsGetTooRolledServiceTypes(v33);
  a16 = 0;
  if ([v33 missingFromRegistry])
  {
    v35 = [v33 set];
    v36 = _PCSIdentitySetCopyCurrentIdentityInternal(v35, kPCSServiceMaster, 0);
    if (v36 || ([v33 missingFromRegistry], v37 = objc_msgSend(OUTLINED_FUNCTION_11_1(), "missingFromRegistry"), CFArrayGetCount(v37), v38 = OUTLINED_FUNCTION_8_2(), !CFArrayContainsValue(v38, v58, v39)))
    {
      PCSMigrationLog([v33 log], @"   master identity NOT missing from registry, refusing to add one");
    }

    else
    {
      if (!PCSIdentityCreateMaster(0, v31))
      {
        goto LABEL_38;
      }

      v40 = [OUTLINED_FUNCTION_10_1() log];
      PCSMigrationLog(v40, @"   master identity missing from registry, adding one");
      if (!PCSIdentitySetAddIdentity([v33 set], 0) || !PCSIdentitySetSetCurrentIdentity(objc_msgSend(v33, "set"), 0))
      {
        goto LABEL_37;
      }

      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    v41 = [v33 missingFromRegistry];
    v42 = kPCSServiceMaster;
    CFArrayGetCount(v41);
    v43 = OUTLINED_FUNCTION_8_2();
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v43, v59, v42);
    if (FirstIndexOfValue != -1)
    {
      for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v46, v60, v42))
      {
        CFArrayRemoveValueAtIndex(v41, i);
        CFArrayGetCount(v41);
        v46 = OUTLINED_FUNCTION_8_2();
      }
    }

    Count = CFArrayGetCount([v33 missingFromRegistry]);
    if (Count >= 1)
    {
      v48 = Count;
      for (j = 0; v48 != j; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex([v33 missingFromRegistry], j);
        if (PCSServiceItemTypeIsManatee(ValueAtIndex))
        {
          PCSMigrationLog([v33 log], @"   not creating Manatee service: %@");
        }

        else if ([v34 containsObject:ValueAtIndex])
        {
          PCSMigrationLog([v33 log], @"   not creating tooRolled service: %@");
        }

        else
        {
          if ([v33 limitLocalStoring])
          {
            v51 = [v33 limitLocalStoring];
            v61.length = CFArrayGetCount([v33 limitLocalStoring]);
            v61.location = 0;
            if (!CFArrayContainsValue(v51, v61, ValueAtIndex))
            {
              continue;
            }
          }

          if (CFEqual(ValueAtIndex, kPCSServiceEscrow))
          {
            if ([v33 newIdentity])
            {
              v52 = pcsLogObjForScope("migration");
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                buf = 0;
                _os_log_impl(&dword_1B229C000, v52, OS_LOG_TYPE_DEFAULT, "Creating new Escrow identity", &buf, 2u);
              }

              AddService();
              if (!v53)
              {
                break;
              }

              v54 = [v33 set];
              _PCSIdentitySetCopyCurrentIdentityInternal(v54, kPCSServiceEscrow, v31);
              [OUTLINED_FUNCTION_1_2() setEscrowIdentity:?];
              if (![v33 escrowIdentity])
              {
                break;
              }
            }
          }

          else
          {
            v55 = _PCSIdentitySetCopyCurrentIdentityInternal([v33 set], ValueAtIndex, 0);
            if (v55)
            {
              v56 = v55;
              if (_PCSIdentityValidate(v55, &a16, 0) && a16 != 1)
              {
                CFRelease(v56);
                continue;
              }

              CFRelease(v56);
            }

            AddService();
            if ((v57 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

    if (v36)
    {
LABEL_37:
      CFRelease(v36);
    }
  }

LABEL_38:

  OUTLINED_FUNCTION_12_0();
}

uint64_t PCSEngineStepValidateLooseLeaves(void *a1, const void **a2)
{
  v5 = a1;
  _PCSServiceItemsGetTooRolledServiceTypes(v5);
  objc_claimAutoreleasedReturnValue();
  if (![OUTLINED_FUNCTION_11_1() stableMetadata])
  {
    CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [OUTLINED_FUNCTION_1_2() setStableMetadata:?];
    if (![v5 stableMetadata])
    {
      goto LABEL_43;
    }
  }

  v6 = [v5 stableMetadata];
  CFDictionaryGetValue(v6, kPCSSecureBackupCFStableLooseLeaves[0]);
  if (([OUTLINED_FUNCTION_9_1() iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v5, "iCDPHSMPlesio"))
  {
    v7 = [v5 log];
    if (v2)
    {
      PCSMigrationLog(v7, @"  Removing loose leaves");
      v8 = [v5 stableMetadata];
      CFDictionaryRemoveValue(v8, kPCSSecureBackupCFStableLooseLeaves[0]);
      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    else
    {
      PCSMigrationLog(v7, @"  Skipping validation of loose leaves");
    }

    v9 = [v5 metadata];
    if (CFDictionaryGetValue(v9, *MEMORY[0x1E6994FB8]))
    {
      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    goto LABEL_40;
  }

  if (![v5 escrowIdentity])
  {
    goto LABEL_40;
  }

  if (v2 && (v10 = CFGetTypeID(v2), v10 == CFDictionaryGetTypeID()))
  {
    v11 = OUTLINED_FUNCTION_0_1();
    MutableCopy = CFDictionaryCreateMutableCopy(v11, v12, v2);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_0_1();
    MutableCopy = CFDictionaryCreateMutable(v15, v16, v17, v18);
  }

  v19 = MutableCopy;
  if (!MutableCopy)
  {
LABEL_43:
    _PCSErrorOOM(a2);
    goto LABEL_40;
  }

  v44 = a2;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames(MutableCopy, v14);
  cf = PCSIdentitySetCreateMutable(0);
  Count = CFArrayGetCount(CFArrayOfNames);
  if (Count < 1)
  {
LABEL_33:
    v42 = [v5 stableMetadata];
    CFDictionarySetValue(v42, kPCSSecureBackupCFStableLooseLeaves[0], v19);
    v26 = 0;
    Mutable = 0;
    goto LABEL_34;
  }

  v22 = Count;
  v23 = 0;
  v46 = v3;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(CFArrayOfNames, v23);
    if (!PCSServiceItemTypeIsManatee(ValueAtIndex))
    {
      break;
    }

LABEL_21:
    CFDictionaryRemoveValue(v19, ValueAtIndex);
LABEL_22:
    if (v22 == ++v23)
    {
      goto LABEL_33;
    }
  }

  if ([v3 containsObject:ValueAtIndex])
  {
    PCSMigrationLog([v5 log], @"Skipping too rolled identity for loose leaves: %@", ValueAtIndex);
    goto LABEL_21;
  }

  v25 = PCSIdentitySetCopyOrderedIdentities([v5 set], ValueAtIndex);
  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = v25;
  v27 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v27, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    _PCSErrorOOM(v44);
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(v19, ValueAtIndex);
  if (Value)
  {
    v31 = Value;
    v32 = CFGetTypeID(Value);
    if (v32 == CFArrayGetTypeID())
    {
      v54 = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      v56 = __PCSEngineStepValidateLooseLeaves_block_invoke;
      v57 = &unk_1E7B194C0;
      v58 = v5;
      v59 = cf;
      v60 = ValueAtIndex;
      v61 = Mutable;
      CFArrayGetCount(v31);
      OUTLINED_FUNCTION_2_2();
      v33 = OUTLINED_FUNCTION_8_2();
      CFArrayApplyFunction(v33, v62, v34, v35);
    }
  }

  v36 = OUTLINED_FUNCTION_0_1();
  v38 = CFArrayCreateMutable(v36, v37, MEMORY[0x1E695E9C0]);
  if (v38)
  {
    v39 = v38;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineStepValidateLooseLeaves_block_invoke_2;
    context[3] = &unk_1E7B194E8;
    v52 = Mutable;
    v53 = v38;
    v40 = v5;
    v51 = v40;
    CFArrayGetCount(v26);
    OUTLINED_FUNCTION_2_2();
    v63.location = 0;
    CFArrayApplyFunction(v26, v63, v41, context);
    if (CFArrayGetCount(v39))
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __PCSEngineStepValidateLooseLeaves_block_invoke_3;
      v47[3] = &unk_1E7B19510;
      v49 = v39;
      v48 = v40;
      CFDictionaryApplyFunction(Mutable, apply_block_2_3, v47);
      CFDictionarySetValue(v19, ValueAtIndex, v39);
    }

    CFRelease(Mutable);
    CFRelease(v26);
    CFRelease(v39);

    v3 = v46;
    goto LABEL_22;
  }

  _PCSErrorOOM(v44);
  v3 = v46;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v19);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_40:

  return 1;
}

uint64_t CaptureMetadata(void *a1, const __CFDictionary *a2)
{
  v3 = a1;
  HSMClientMetaData = GetHSMClientMetaData(a2);
  if (HSMClientMetaData)
  {
    v5 = HSMClientMetaData;
    Value = CFDictionaryGetValue(HSMClientMetaData, kPCSSecureBackupCFStableMetadataKey[0]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 != CFDictionaryGetTypeID() || ([v3 clearStableMetadata], v9 = OUTLINED_FUNCTION_0_1(), CFDictionaryCreateMutableCopy(v9, v10, v7), objc_msgSend(OUTLINED_FUNCTION_1_2(), "setStableMetadata:"), !objc_msgSend(v3, "stableMetadata")))
      {
        v17 = 0;
        goto LABEL_12;
      }
    }

    v11 = [v3 options];
    v12 = [v11 objectForKeyedSubscript:kPCSPasswordGenerationFromExistingMetadata[0]];

    if (!v12)
    {
      [(__CFDictionary *)v5 objectForKeyedSubscript:@"IdMSPasswordGeneration"];
      objc_claimAutoreleasedReturnValue();
      [objc_msgSend(OUTLINED_FUNCTION_9_1() "options")];
    }

    [v3 clearOldRegistry];
    CFDictionaryGetValue(v5, kPCSSecureBackupCFSecureBackupKeyRegistry[0]);
    [OUTLINED_FUNCTION_1_2() setOldRegistry:?];
    if ([v3 oldRegistry])
    {
      CFRetain([v3 oldRegistry]);
      v13 = [v3 options];
      v14 = CFDictionaryGetValue(v13, kPCSSetupCallbackKeyRegistry[0]);
      if (v14)
      {
        v15 = [v3 options];
        CFDictionaryGetValue(v15, kPCSSetupDSID[0]);
        v16 = [OUTLINED_FUNCTION_9_1() oldRegistry];
        (v14)[2](v14, v12, v16);
      }
    }
  }

  v17 = 1;
LABEL_12:

  return v17;
}

void PCSEngineHaveSyncEnoughToCreateIdentities()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v3 = v2;
  if (![v3 set])
  {
    PCSIdentitySetCreate([v3 options], 0, v1);
    [OUTLINED_FUNCTION_1_2() setSet:?];
    if (![v3 set])
    {
      v7 = 0;
      v4 = 0;
      goto LABEL_35;
    }
  }

  v4 = PCSStateCopyKeychainClassicIdentities(v3, 0, v1);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_35;
  }

  v5 = [v3 set];
  v6 = _PCSIdentitySetCopyCurrentIdentityInternal(v5, kPCSServiceMaster, v1);
  v7 = v6;
  if (!v6)
  {
LABEL_35:
    LODWORD(v10) = 0;
    goto LABEL_28;
  }

  PublicKey = PCSIdentityGetPublicKey(v6);
  if (!PublicKey)
  {
    goto LABEL_27;
  }

  if (![v3 oldRegistry])
  {
    LODWORD(v10) = 1;
    goto LABEL_28;
  }

  v9 = [v3 oldRegistry];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFDictionaryGetTypeID())
  {
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v10, kPCSServiceMaster);
  v10 = Value;
  if (!Value)
  {
    goto LABEL_28;
  }

  v13 = CFGetTypeID(Value);
  if (v13 == CFDictionaryGetTypeID() && (v14 = CFDictionaryGetValue(v10, kPCSSecureBackupCFKeyRegistryPublicIdentities[0])) != 0 && (v15 = v14, v16 = CFGetTypeID(v14), v16 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v15), Count >= 1))
  {
    v18 = Count;
    v19 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v19 - 1);
      LODWORD(v10) = ValueAtIndex;
      if (ValueAtIndex)
      {
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFDataGetTypeID() && (v22 = OUTLINED_FUNCTION_8_2(), (v24 = PCSPublicIdentityCreateWithPublicKeyInfo(v22, v23)) != 0))
        {
          v25 = v24;
          PublicID = PCSPublicIdentityGetPublicID(v24);
          if (PublicID)
          {
            LODWORD(v10) = CFEqual(PublicID, PublicKey) != 0;
          }

          else
          {
            LODWORD(v10) = 0;
          }

          CFRelease(v25);
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (v19 >= v18)
      {
        break;
      }

      ++v19;
    }

    while (!v10);
  }

  else
  {
LABEL_27:
    LODWORD(v10) = 0;
  }

LABEL_28:
  v27 = [v3 log];
  _PCSYESNO(v10);
  [v3 oldRegistry];
  _PCSYESNO(v4 != 0);
  PCSMigrationLog(v27, @"EnoughToUpdate: %@ though %@ (master %@, content %@)");
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  OUTLINED_FUNCTION_12_0();
}

void AddService()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  FlagsByName = PCSServiceItemGetFlagsByName(v3);
  if (CFEqual(v3, kPCSServiceMaster))
  {
    [v7 log];
    [OUTLINED_FUNCTION_9_1() set];
    _PCSErrorContext(v3, v1, 54, @"Can't add master to set %@");
    goto LABEL_12;
  }

  v9 = _PCSIdentitySetCopyCurrentIdentityInternal([v7 set], v3, 0);
  if (v9)
  {
    v10 = v9;
    if (PCSIdentityCheckValidPublicKey(v9, 0))
    {
      goto LABEL_11;
    }

    v12 = [v7 log];
    _PCSYESNO(0);
    _PCSYESNO(1);
    _PCSYESNO((FlagsByName >> 2) & 1);
    PCSMigrationLog(v12, @"   service %@ identity missing: %@ invalid: %@, manatee: %@. adding one");
    CFRelease(v10);
  }

  else
  {
    v11 = [v7 log];
    _PCSYESNO(1);
    _PCSYESNO(0);
    _PCSYESNO((FlagsByName >> 2) & 1);
    PCSMigrationLog(v11, @"   service %@ identity missing: %@ invalid: %@, manatee: %@. adding one");
  }

  Service = PCSIdentityCreateService(v5, FlagsByName | 1, v3, v1);
  if (!Service)
  {
    goto LABEL_12;
  }

  v10 = Service;
  if (PCSIdentitySetAddIdentity([v7 set], Service) && PCSIdentitySetSetCurrentIdentity(objc_msgSend(v7, "set"), v10))
  {
    [OUTLINED_FUNCTION_0_5() setModified:?];
  }

LABEL_11:
  CFRelease(v10);
LABEL_12:

  OUTLINED_FUNCTION_12_0();
}

uint64_t PCSEngineStepValidateEscrowedKeys(void *a1)
{
  v1 = a1;
  [v1 recordTypeForReading];
  if (([v1 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v1, "iCDPHSMPlesio") & 1) == 0)
  {
    v2 = [v1 set];
    v3 = _PCSIdentitySetCopyCurrentIdentityInternal(v2, kPCSServiceEscrow, 0);
    if (v3)
    {
      v4 = v3;
      if ((PCSIdentityCheckValidPublicKey(v3, 0) & 1) == 0)
      {
        v5 = GetiCDPMetadata([v1 metadata]);
        if (v5)
        {
          Value = CFDictionaryGetValue(v5, kPCSMetadataEscrowedKeys[0]);
          if (Value)
          {
            v7 = Value;
            v8 = CFGetTypeID(Value);
            if (v8 == CFDataGetTypeID())
            {
              v9 = PCSBackupCopyRecoveredKeysetWithIdentity(v4, v7, 0);
              if (v9)
              {
                CFRelease(v9);
              }

              else
              {
                [OUTLINED_FUNCTION_0_5() setModified:?];
              }
            }
          }
        }
      }

      CFRelease(v4);
    }
  }

  return 1;
}

uint64_t _PCSEngineStoreiCDPStatus(void *a1, char a2, CFTypeRef *a3)
{
  v5 = a1;
  cf = 0;
  v40 = 0;
  v6 = PCSIdentitySetCreate([v5 options], 0, a3);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v8 = [v5 iCDPArmed];
  if (v8 != PCSIdentitySetIsICDP(v7, 0))
  {
    PCSMigrationLog([v5 log], @"Updating iCDP");
    [v5 iCDPArmed];
    v9 = OUTLINED_FUNCTION_7_2();
    if (!PCSIdentitySetEnableICDP(v9, v10, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = PCSIdentitySetIsWalrusWithForceFetch(v7, 1, &cf);
  v13 = cf;
  if (cf)
  {
    if ((a2 & 1) != 0 || ((Domain = CFErrorGetDomain(cf), Code = CFErrorGetCode(cf), !CFEqual(Domain, kPCSErrorDomain)) || Code != 90) && (!CFEqual(Domain, *MEMORY[0x1E697AAE8]) || Code != 29))
    {
      if (a3)
      {
        *a3 = CFRetain(cf);
      }

      v14 = [v5 log];
      PCSMigrationLog(v14, @"Failed getting Walrus state: %@", cf);
      v15 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v15);
      }

      goto LABEL_10;
    }

    v22 = [v5 log];
    PCSMigrationLog(v22, @"Will not update W: %@", cf);
    v23 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v23);
    }
  }

  else if (v12 != [v5 iCDPHSMWalrus])
  {
    PCSMigrationLog([v5 log], @"Updating Walrus");
    [v5 iCDPHSMWalrus];
    v17 = OUTLINED_FUNCTION_7_2();
    if (!PCSIdentitySetSetWalrus(v17, v18, v19))
    {
      goto LABEL_10;
    }
  }

  v24 = [v5 iCDPPlesio];
  if (v24 == PCSIdentitySetIsPlesio(v7, 0) || (PCSMigrationLog([v5 log], @"Updating Plesio"), objc_msgSend(v5, "iCDPPlesio"), v25 = OUTLINED_FUNCTION_7_2(), PCSIdentitySetSetPlesio(v25, v26, v27)))
  {
    IsICDP = PCSIdentitySetIsICDP(v7, &v40);
    if (!v40)
    {
      v29 = IsICDP;
      if (v13)
      {
        v30 = 0;
      }

      else
      {
        v30 = PCSIdentitySetIsWalrusWithForceFetch(v7, 0, &cf);
        if (cf)
        {
          v36 = [v5 log];
          PCSMigrationLog(v36, @"Failed getting Walrus state after set: %@", cf);
          v37 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v37);
          }
        }
      }

      IsPlesio = PCSIdentitySetIsPlesio(v7, a3);
      PCSMigrationLog([v5 log], @"Just stored status: %d (iCDPArmed), checked afterward, it was: %d", objc_msgSend(v5, "iCDPArmed"), v29);
      [v5 log];
      v32 = [OUTLINED_FUNCTION_11_1() iCDPHSMWalrus];
      PCSMigrationLog(v29, @"Just stored status: %d (Walrus), checked afterward, it was: %d", v32, v30);
      [v5 log];
      v33 = [OUTLINED_FUNCTION_10_1() iCDPPlesio];
      PCSMigrationLog(v30, @"Just stored status: %d (Plesio), checked afterward, it was: %d", v33, IsPlesio);
      v16 = 1;
      goto LABEL_26;
    }

    v38 = [v5 log];
    PCSMigrationLog(v38, @"Failed getting iCDPState: %@", v40);
  }

LABEL_10:
  v16 = 0;
LABEL_26:
  CFRelease(v7);
  v34 = v40;
  if (v40)
  {
    v40 = 0;
    CFRelease(v34);
  }

LABEL_28:

  return v16;
}

uint64_t PCSEngineEvaluateOctagon(void *a1, void *a2)
{
  v4 = a1;
  if (!CaptureMetadata(v4, [v4 metadata]))
  {
    goto LABEL_46;
  }

  v5 = GetiCDPMetadata([v4 metadata]);
  if (!v5)
  {
    goto LABEL_46;
  }

  Value = CFDictionaryGetValue(v5, kPCSMetadataiCDPWalrus[0]);
  v9 = Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFBooleanGetTypeID()) && CFBooleanGetValue(v7) != 0;
  v10 = v4;
  v11 = [v10 options];
  v12 = CFDictionaryGetValue(v11, kPCSSetupDSID[0]);
  v13 = [v10 options];
  v14 = CFDictionaryGetValue(v13, kPCSSetupAltDSID[0]);
  if (v14 || ([PCSAccountsModel altDSIDForDSID:v12], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2050000000;
    v16 = getAKAccountManagerClass_softClass_0;
    v58 = getAKAccountManagerClass_softClass_0;
    if (!getAKAccountManagerClass_softClass_0)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __getAKAccountManagerClass_block_invoke_0;
      v54[3] = &unk_1E7B18A90;
      v54[4] = &v55;
      __getAKAccountManagerClass_block_invoke_0(v54);
      v16 = v56[3];
    }

    v17 = v16;
    _Block_object_dispose(&v55, 8);
    v18 = [v16 sharedInstance];
    v53 = 0;
    v19 = [v18 authKitAccountWithAltDSID:v15 error:&v53];
    v20 = v53;
    v49 = v20;
    v50 = v12;
    if (!v19)
    {
      if (a2)
      {
        v32 = v20;
        OUTLINED_FUNCTION_6_2();
        v33 = 0;
        *a2 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_6_2();
        v33 = 0;
      }

LABEL_40:

      if (v33)
      {
        PCSMigrationLog([v10 log], @"Evaluated and equalized account state");
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if ([v18 securityLevelForAccount:v19] != 4)
    {
      OUTLINED_FUNCTION_6_2();
      v33 = 1;
      goto LABEL_40;
    }

    v45 = v9;
    v47 = a2;
    v21 = objc_alloc_init(MEMORY[0x1E697AA88]);
    [v21 setAltDSID:v15];
    [v21 setContext:*MEMORY[0x1E697AAD0]];
    v22 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v21];
    v23 = objc_alloc_init(MEMORY[0x1E697AA98]);
    [v23 setUseCachedAccountStatus:1];
    v52 = 0;
    v24 = [v22 fetchCliqueStatus:v23 error:&v52];
    v46 = v52;
    v48 = 0;
    v16 = 0;
    if (v24)
    {
      goto LABEL_38;
    }

    v51 = 0;
    v44 = v21;
    v16 = [MEMORY[0x1E697AA80] fetchAccountWideSettings:v21 error:&v51];
    v25 = v51;
    v48 = v25;
    if (v16)
    {
      v42 = v10;
      v26 = v22;
      v41 = v22;
      v27 = v16;
      if ([v27 hasWalrus])
      {
        v28 = [v27 walrus];
        v29 = [v28 enabled];

        if (!v45)
        {
          v26 = v22;
          if (v29)
          {
            [v42 setICDPHSMWalrus:1];
            [v42 setModified:1];
          }

          goto LABEL_37;
        }

        v26 = v22;
        if (v29)
        {
LABEL_37:

          v22 = v26;
          v21 = v44;
LABEL_38:

          v33 = 1;
LABEL_39:
          v9 = v46;
          a2 = v47;
          v2 = v48;
          goto LABEL_40;
        }

        v31 = v41;
        v30 = v42;
LABEL_34:
        PCSEngineFixOctagonW(v30, v31, 1);
        goto LABEL_37;
      }

      if (!v45 || ([v27 hasWalrus] & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ([v25 code] == 53)
      {
        v35 = [v48 domain];
        v43 = [v35 isEqualToString:*MEMORY[0x1E697AAE8]];

        if ((v45 | v43 ^ 1) != 1)
        {

          v16 = 0;
          v33 = 0;
          goto LABEL_39;
        }
      }

      if (v47 && v46)
      {
        *v47 = v46;
      }

      v36 = v10;
      v26 = v22;
      v37 = v22;
      if (!v45)
      {
        goto LABEL_37;
      }
    }

    v30 = v10;
    v31 = v26;
    goto LABEL_34;
  }

LABEL_42:
  v38 = [v10 log];
  if (a2)
  {
    v39 = *a2;
  }

  else
  {
    v39 = 0;
  }

  PCSMigrationLog(v38, @"Unable to evaluate and equalize account state: %@", v39);
LABEL_46:

  return 1;
}

uint64_t PCSEngineFailOnDroppedKeys(void *a1, const void **a2)
{
  v3 = a1;
  if ((_PCSIsiCDPIsWalrus([v3 metadata]) & 1) != 0 || _PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata")))
  {
    _PCSError(a2, 159, @"Keys dropped from HSM");
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL PCSEngineIgnoreKeysInHSM(void *a1, const void **a2)
{
  v3 = a1;
  [v3 clearSet];
  PCSIdentitySetCreateMutable(a2);
  [OUTLINED_FUNCTION_1_2() setSet:?];
  if ([v3 set])
  {
    Keychain = PCSIdentitySetCreateKeychain([v3 options], 0, a2);
    v5 = Keychain != 0;
    if (Keychain)
    {
      CFRelease(Keychain);
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PCSEngineValidateiCDP(void *a1, CFTypeRef *a2)
{
  v3 = a1;
  if ([v3 metadata])
  {
    if (_PCSIsiCDPEnabled([v3 metadata], 1))
    {
      [OUTLINED_FUNCTION_0_5() setICDP:?];
      [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
      [v3 setICDPPlesio:{_PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata"))}];
      if (!_PCSEngineStoreiCDPStatus(v3, 0, a2))
      {
        v4 = 0;
        goto LABEL_5;
      }
    }

    if (([v3 triggerUpdate] & 1) == 0)
    {
      PCSMigrationLog([v3 log], @"Checking for ValidateiCDP migration");
      if (_PCSIsiCDPIsWalrus([v3 metadata]))
      {
        PCSMigrationLog([v3 log], @"Using Walrus account");
      }

      else
      {
        if (!_PCSIsiCDPIsPlesio([v3 metadata]))
        {
          v6 = _PCSIsiCDPEnabled([v3 metadata], 0);
          v7 = [v3 log];
          if (v6)
          {
            PCSMigrationLog(v7, @"Using iCDP account");
          }

          else
          {
            PCSMigrationLog(v7, @"Using SA account");
          }

          goto LABEL_4;
        }

        PCSMigrationLog([v3 log], @"Using Plesio account");
      }

      PCSEngineDifferentOnDroppedKeys(v3);
    }
  }

LABEL_4:
  v4 = 1;
LABEL_5:

  return v4;
}

CFIndex PCSEnginePreCheckKeychain_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 121, @"Missing parameter: dsid");
}

CFIndex PCSEngineEnsureClassicContent_cold_5(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 126, @"Metadata missing");
}

CFErrorRef PCSEngineEnsureClassicContent_cold_7(void *a1, char a2, CFErrorRef *a3, char *a4)
{
  result = [a1 classicContent];
  v9 = 0;
  if ((a2 & 1) != 0 && !result)
  {
    result = *a3;
    if (*a3 && (result = CFErrorGetCode(result), result == 33) && (Domain = CFErrorGetDomain(*a3), result = CFEqual(Domain, *MEMORY[0x1E6994E70]), result))
    {
      PCSMigrationLog([a1 log], @"Congestion event at read happen restarting state machine");
      v11 = *a3;
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v11);
      }

      v9 = 1;
      result = [a1 setRestart:1];
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = v9;
  return result;
}

void *PCSEngineExtractKeys_cold_3(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 log];
  if (a2)
  {
    PCSMigrationLog(v8, @"Encrypted metadata keys failure: %@", *a2);
    v9 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v9);
    }
  }

  else
  {
    PCSMigrationLog(v8, @"Encrypted metadata keys failure: %@", 0);
  }

  v10 = [a1 escrowIdentity];
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __PCSEngineExtractKeys_block_invoke;
  a3[3] = &unk_1E7B193A8;
  v11 = a1;
  a3[4] = v11;
  PCSIdentityCheckValidPublicKey(v10, a3);
  [v11 setBrokenEncryptedMetadatakeys:1];
  result = [v11 setModified:1];
  *a4 = a3[4];
  return result;
}

CFIndex checkData_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 129, @"Keybag hash mismatch");
}

CFIndex checkData_cold_2(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 126, @"KeybagSHA256/KeybagDigest missing");
}

CFIndex PCSEnginePreCheckHSMWrite_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 123, @"Missing parameter: password");
}

CFIndex PCSEnginePreCheckHSMWrite_cold_2(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 122, @"Missing parameter: username");
}

uint64_t PCSEngineDifferentOniCDP_cold_1(void *a1, void *a2)
{
  PCSEngineHaveSyncEnoughToCreateIdentities();
  if (v4)
  {
    return [a1 setCurrentStep:&validationInNoTouchHSMContent];
  }

  PCSMigrationLog([a1 log], @"DifferentOniCDP: not enough in sync: %@", *a2);
  return [OUTLINED_FUNCTION_0_5() setDone:?];
}

void PCSCacheCurrentIdentitiesForServices_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to determine accessgroup and/or viewhint for service %@", buf, 0xCu);
}

void _PCSGuitarfishGetKeychainItem_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _PCSGuitarfishSetKeychainItem_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _PCSGuitarfishSetKeychainItem_cold_2()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void PCSGuitarfishResetProtectedData_cold_2()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishResetProtectedData_cold_3()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishResetProtectedData_cold_6()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishResetProtectedData_cold_7()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_8()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_9()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_10()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_11()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_12()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_13()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_14()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void performStingrayRecovery_cold_1()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void performStingrayRecovery_cold_2()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void performStingrayRecovery_cold_3()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_1()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_2()
{
  OUTLINED_FUNCTION_4_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_3()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _PCSGuitarfishDeleteKeychainItem_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void PCSGuitarfishUnwrapKeysUsingWrappingKey_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B229C000, a1, OS_LOG_TYPE_DEFAULT, "Unwrapped PCS keys successfully", v2, 2u);
  }
}

CFTypeRef BackupCreateEscrowedCommon(const __CFData *a1, const __CFData *a2, uint64_t a3, const void **a4)
{
  RandomKey = _PCSStingrayCreateRandomKey(a4);
  if (!RandomKey)
  {
    return 0;
  }

  v9 = RandomKey;
  v10 = _PCSStingrayCopyEncryptedData(RandomKey, a1);
  if (v10)
  {
    v11 = v10;
    if (_PCSFillOctetString((a3 + 16), v10) && (!a2 || _PCSFillOctetString((a3 + 32), a2)))
    {
      v12 = CFRetain(v9);
    }

    else
    {
      _PCSErrorOOM(a4);
      v12 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    _PCSErrorOOM(a4);
    v12 = 0;
  }

  CFRelease(v9);
  return v12;
}

void PCSGuitarfishRepairIdentities_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B229C000, a2, OS_LOG_TYPE_ERROR, "Existing stashed wrappingKey is not valid for the current record. p_password or p_token recover is needed: %@", &v3, 0xCu);
}

void __PCSSupportGetClientInfo_block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
    v3 = CFDictionaryGetValue(v1, *MEMORY[0x1E695E1F0]);
    v4 = 0;
    if (Value && v3)
    {
      v4 = CFStringCreateWithFormat(0, 0, @"%@;%@", v3, Value);
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  PCSSupportGetClientInfo_clientInfo = v4;
}

CFTypeRef PCSMMCSCopyEncryptedData(const __CFData *a1, const __CFData *a2, const __CFData *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ccaes_siv_encrypt_mode();
  OUTLINED_FUNCTION_0_7();
  MEMORY[0x1EEE9AC00](v6);
  if (PCSMMCSGetDerivedSIVKey(a1, &v13, v14) && (OUTLINED_FUNCTION_1_3(), ccsiv_init(), CFDataGetLength(a3), v7 = ccsiv_ciphertext_size(), (Mutable = CFDataCreateMutable(0, 0)) != 0))
  {
    v9 = Mutable;
    CFDataSetLength(Mutable, v7 + 17);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    *MutableBytePtr = v13;
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, MutableBytePtr + 1) || (OUTLINED_FUNCTION_1_3(), ccsiv_set_nonce(), CFDataGetMutableBytePtr(v9), OUTLINED_FUNCTION_1_3(), ccsiv_aad()) || a2 && (CFDataGetLength(a2), CFDataGetBytePtr(a2), OUTLINED_FUNCTION_1_3(), ccsiv_aad()) || (CFDataGetLength(a3), CFDataGetBytePtr(a3), OUTLINED_FUNCTION_1_3(), ccsiv_crypt()))
    {
      v11 = 0;
    }

    else
    {
      v11 = CFRetain(v9);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  cc_clear();
  return v11;
}

CFTypeRef PCSMMCSCopyDecryptedData(const __CFData *a1, const __CFData *a2, const __CFData *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ccaes_siv_decrypt_mode();
  OUTLINED_FUNCTION_0_7();
  MEMORY[0x1EEE9AC00](v6);
  if (CFDataGetLength(a3) >= 18 && PCSMMCSGetDerivedSIVKey(a1, &v13, v14) && (OUTLINED_FUNCTION_0_0(), ccsiv_init(), CFDataGetLength(a3), v7 = ccsiv_plaintext_size(), (Mutable = CFDataCreateMutable(0, 0)) != 0))
  {
    v9 = Mutable;
    CFDataSetLength(Mutable, v7);
    BytePtr = CFDataGetBytePtr(a3);
    if (*BytePtr != v13 || (OUTLINED_FUNCTION_0_0(), ccsiv_set_nonce(), OUTLINED_FUNCTION_0_0(), ccsiv_aad()) || a2 && (CFDataGetLength(a2), CFDataGetBytePtr(a2), OUTLINED_FUNCTION_0_0(), ccsiv_aad()) || (CFDataGetMutableBytePtr(v9), OUTLINED_FUNCTION_0_0(), ccsiv_crypt()))
    {
      v11 = 0;
    }

    else
    {
      v11 = CFRetain(v9);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  cc_clear();
  return v11;
}

__CFData *PCSKeyEnvelopeEncrypt(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    _PCSError(a5, 126, @"%s: associatedData argument not CFData", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  v16 = _PCSKEExtractSeed(a1, a2, a5, v11, v12, v13, v14, v15);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = _PCSKEKeyFromSeed(v16, 68, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.EncryptionKeyFromSeed", a5);
  if (!v18)
  {
    CFRelease(v17);
    return 0;
  }

  v19 = v18;
  Length = CFDataGetLength(a3);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, Length + 28);
  if (Mutable)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v24 = MutableBytePtr + 12;
    v25 = MutableBytePtr + 28;
    _PCSRandomData(0xCuLL, MutableBytePtr);
    ccaes_gcm_encrypt_mode();
    CFDataGetLength(v19);
    CFDataGetBytePtr(v19);
    CFDataGetLength(cf);
    CFDataGetBytePtr(cf);
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    OUTLINED_FUNCTION_0_8();
    if (ccgcm_one_shot())
    {
      CFRelease(Mutable);
      _PCSError(a5, 92, @"%s: AES-GCM failed", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", v25, 16, v24);
      Mutable = 0;
    }
  }

  else
  {
    _PCSError(a5, 150, @"%s: could not allocate the ciphertext", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
  }

  CFRelease(v17);
  CFRelease(v19);
  return Mutable;
}

__CFData *PCSKeyEnvelopeDecrypt(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    _PCSError(a5, 126, @"%s: associatedData argument not CFData", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  if (CFDataGetLength(a3) <= 0x1B)
  {
    Length = CFDataGetLength(a3);
    _PCSError(a5, 20, @"%s: encryptedData too short (length %u)", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", Length);
    return 0;
  }

  v17 = _PCSKEExtractSeed(a1, a2, a5, v11, v12, v13, v14, v15);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = _PCSKEKeyFromSeed(v17, 68, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.EncryptionKeyFromSeed", a5);
  if (v19)
  {
    v20 = v19;
    v21 = CFDataGetLength(a3) - 28;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v21);
    if (Mutable)
    {
      v26 = a5;
      v22 = CFDataGetBytePtr(a3) + 12;
      ccaes_gcm_decrypt_mode();
      CFDataGetLength(v20);
      CFDataGetBytePtr(v20);
      CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      OUTLINED_FUNCTION_0_8();
      if (ccgcm_one_shot())
      {
        CFRelease(Mutable);
        _PCSError(v26, 149, @"%s: AES-GCM failed", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", MutableBytePtr, 16, v22);
        Mutable = 0;
      }
    }

    else
    {
      _PCSError(a5, 150, @"%s: could not allocate data", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    }

    CFRelease(v20);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v18);
  return Mutable;
}

__CFData *PCSKeyEnvelopeAuthenticate(uint64_t a1, uint64_t a2, CFTypeRef cf, const void **a4)
{
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDataGetTypeID()))
  {
    _PCSError(a4, 126, @"%s: data argument not CFData", "CFDataRef  _Nonnull PCSKeyEnvelopeAuthenticate(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  v14 = _PCSKEExtractSeed(a1, a2, a4, v9, v10, v11, v12, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = _PCSKEKeyFromSeed(v14, 72, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.AuthenticationKeyFromSeed", a4);
  if (v16)
  {
    v17 = v16;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, 32);
    if (Mutable)
    {
      ccsha256_di();
      CFDataGetLength(v17);
      CFDataGetBytePtr(v17);
      CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      CFDataGetMutableBytePtr(Mutable);
      cchmac();
    }

    else
    {
      _PCSError(a4, 150, @"%s: could not allocate the tag", "CFDataRef  _Nonnull PCSKeyEnvelopeAuthenticate(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    }

    CFRelease(v17);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v15);
  return Mutable;
}

uint64_t PCSKeyEnvelopeVerify(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef cf, const void **a5)
{
  v6 = PCSKeyEnvelopeAuthenticate(a1, a2, cf, a5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFEqual(v6, a3);
  v9 = MEMORY[0x1E695E4C0];
  if (v8)
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  v10 = *v9;
  CFRelease(v7);
  return v10;
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v4 = MEMORY[0x1EEDB6CF0](theData, dataToFind, searchRange.location, searchRange.length, compareOptions);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}