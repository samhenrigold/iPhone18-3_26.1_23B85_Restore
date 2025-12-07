uint64_t AMAuthInstallMonetMeasureDbl(const __CFNumber *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", 0);
LABEL_8:
    AMAuthInstallLog(3, "_FindSblHeaderInFileData", "this file lacks sufficient magic");
    return 10;
  }

  v9 = 0;
  v10 = 0;
  v11 = Length >> 2;
  v12 = v7 - 4;
  do
  {
    if (*(v12 + 1) == 1943474228)
    {
      ++v9;
      v10 = v12;
      if (*(v12 + 2) != 2097890138)
      {
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "found SBL header");
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9);
        v10 = v12;
        goto LABEL_11;
      }
    }

    v12 += 4;
    --v11;
  }

  while (v11);
  AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = *(v10 + 5);
  if (v10 + 80 != &BytePtr[v15])
  {
    AMAuthInstallMonetMeasureDbl_cold_1(v13);
    return 10;
  }

  AMAuthInstallMonetSetVersionAndPartialDigest(a1, a3, BytePtr, theData, v10, v15, *(v10 + 8), @"DBL-Version", @"DBL-PartialDigest");
  return 0;
}

uint64_t AMAuthInstallMonetStitchEBootLoader(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5)
{
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@-Original", a5);
  v12 = CFStringCreateWithFormat(v10, 0, @"%@-Personalized", a5);
  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", @"BasebandFirmware");
LABEL_15:
    v34 = 8;
LABEL_18:
    SafeRelease(0);
    goto LABEL_12;
  }

  v14 = CFDictionaryGetValue(Value, a5);
  if (!v14)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", a5);
    goto LABEL_15;
  }

  v15 = v14;
  Length = CFDataGetLength(v14);
  v17 = CFDataGetLength(a2);
  if (Length >= v17)
  {
    AMAuthInstallMonetStitchEBootLoader_cold_1(v17);
    v34 = 1;
    goto LABEL_18;
  }

  v18 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v18, 0, a2);
  if (!MutableCopy)
  {
    v34 = 2;
    goto LABEL_18;
  }

  v20 = MutableCopy;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v22 = CFDataGetLength(v20);
  v23 = &MutableBytePtr[v22 - CFDataGetLength(v15)];
  if ((v23 & 0x3F) != 0)
  {
    v24 = "NO";
  }

  else
  {
    v24 = "YES";
  }

  v37 = a2;
  v25 = a1;
  v26 = a4;
  v27 = v12;
  v28 = v11;
  if ((v23 & 0x7F) != 0)
  {
    v29 = "NO";
  }

  else
  {
    v29 = "YES";
  }

  v30 = CFDataGetLength(v15);
  v31 = CFDataGetLength(v20);
  v36 = v29;
  v11 = v28;
  v12 = v27;
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n Len(stitchData)=%d Len(newFileData) = %d", v23, v24, v36, v30, v31);
  BytePtr = CFDataGetBytePtr(v15);
  v33 = CFDataGetLength(v15);
  memcpy(v23, BytePtr, v33);
  *v26 = CFRetain(v20);
  SafeRelease(v20);
  AMAuthInstallDebugWriteObject(v25, v37, v11, 1);
  AMAuthInstallDebugWriteObject(v25, *v26, v27, 1);
  v34 = 0;
LABEL_12:
  SafeRelease(v11);
  SafeRelease(v12);
  return v34;
}

uint64_t AMAuthInstallMonetStitchSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = *(a1[6] + 4);
  v5 = kAMAuthInstallTagBbSbl1HTDStitch;
  if (v4 > 1700064)
  {
    if (v4 > 2089184)
    {
      if (v4 != 2089185)
      {
        if (v4 == 9781473)
        {
          goto LABEL_24;
        }

        if (v4 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v6 = v4 == 1700065;
    v7 = 2044129;
LABEL_18:
    if (!v6 && v4 != v7)
    {
LABEL_27:
      v5 = kAMAuthInstallTagBbSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v5 = kAMAuthInstallTagBbSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v4 > 938208)
  {
    v6 = v4 == 938209 || v4 == 1327329;
    v7 = 1515745;
    goto LABEL_18;
  }

  if (v4 != 241889 && v4 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v10 = *v5;
  if (v4 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v10, 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v10);
  }
}

uint64_t AMAuthInstallMonetStitchMav25EBootLoader(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5, int a6)
{
  if (!a1)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_14(0);
LABEL_30:
    v13 = 0;
LABEL_31:
    v14 = 0;
LABEL_32:
    v50 = 99;
    goto LABEL_24;
  }

  if (!a2)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_13(a1);
    goto LABEL_30;
  }

  if (!a3)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_12(a1);
    goto LABEL_30;
  }

  if (!a4)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_11(a1);
    goto LABEL_30;
  }

  if (!a5)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_10(a1);
    goto LABEL_30;
  }

  v12 = *MEMORY[0x29EDB8ED8];
  v13 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@-Original", a5);
  if (!v13)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_9(0);
    goto LABEL_31;
  }

  v14 = CFStringCreateWithFormat(v12, 0, @"%@-Personalized", a5);
  if (!v14)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_8(0);
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  v16 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v16 != TypeID)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_1(TypeID);
LABEL_38:
    v29 = 0;
LABEL_44:
    v50 = 99;
    goto LABEL_46;
  }

  v18 = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!v18)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", @"BasebandFirmware");
LABEL_40:
    v29 = 0;
    v50 = 8;
LABEL_46:
    SafeRelease(v29);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = CFDictionaryGetValue(v18, a5);
  v21 = CFGetTypeID(v20);
  v22 = CFDataGetTypeID();
  if (v21 != v22)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_2(v22);
    goto LABEL_38;
  }

  v23 = CFDictionaryGetValue(v19, a5);
  if (!v23)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", a5);
    goto LABEL_40;
  }

  v24 = v23;
  Length = CFDataGetLength(v23);
  v26 = CFDataGetLength(a2);
  if (Length >= v26)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_3(v26);
    v29 = 0;
    v50 = 1;
    goto LABEL_46;
  }

  v27 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v27, 0, a2);
  v29 = MutableCopy;
  if (!MutableCopy)
  {
    v50 = 2;
    goto LABEL_46;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  theData = a2;
  BytePtr = CFDataGetBytePtr(a2);
  if (a6)
  {
    v32 = *&BytePtr[56 * *(BytePtr + 28) - 48 + *(BytePtr + 4)];
  }

  else
  {
    v32 = *&BytePtr[32 * *(BytePtr + 22) - 28 + *(BytePtr + 7)];
  }

  v33 = &CFDataGetBytePtr(theData)[v32];
  v35 = _CalculateSizeOfJMETMetadataSegment(v33, v34) + v33[5];
  v36 = CFDataGetLength(v24);
  if (v35 > v36)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_4(v36);
    goto LABEL_44;
  }

  cf = a1;
  v53 = a4;
  v54 = v14;
  v37 = &MutableBytePtr[v32];
  v38 = CFDataGetLength(v29);
  _AMAuthInstallMonetStitchMav25Chunk(v37, v24, 0, v35, v38);
  v40 = _CalculateSizeOfJMETMetadataSegment(v33, v39);
  v41 = v33[5];
  v42 = v33[6];
  v44 = v33[8];
  v43 = v33[9];
  v45 = v33[7];
  if (v44 && v44 != 104)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_6();
  }

  if (v43 && v43 != 3360)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_5();
  }

  v46 = v44 + v43;
  v47 = v41 + v33[3] + 288;
  v48 = CFDataGetLength(v24);
  if (v47 + v46 > v48)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_4(v48);
    v50 = 99;
    v14 = v54;
    goto LABEL_46;
  }

  v49 = CFDataGetLength(v29);
  _AMAuthInstallMonetStitchMav25Chunk(&v37[v40 + v41 + v42 + v45], v24, v47, v46, v49);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "\n\n");
  *v53 = CFRetain(v29);
  SafeRelease(v29);
  AMAuthInstallDebugWriteObject(cf, theData, v13, 1);
  v14 = v54;
  AMAuthInstallDebugWriteObject(cf, *v53, v54, 1);
  v50 = 0;
LABEL_24:
  SafeRelease(v13);
  SafeRelease(v14);
  return v50;
}

uint64_t AMAuthInstallMonetStitchMisc(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (*(a1[6] + 4) == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob", 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob");
  }
}

uint64_t AMAuthInstallMonetStitchRestoreSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = *(a1[6] + 4);
  v5 = kAMAuthInstallTagBbRestoreSbl1HTDStitch;
  if (v4 > 1700064)
  {
    if (v4 > 2089184)
    {
      if (v4 != 2089185)
      {
        if (v4 == 9781473)
        {
          goto LABEL_24;
        }

        if (v4 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v6 = v4 == 1700065;
    v7 = 2044129;
LABEL_18:
    if (!v6 && v4 != v7)
    {
LABEL_27:
      v5 = kAMAuthInstallTagBbRestoreSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v5 = kAMAuthInstallTagBbRestoreSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v4 > 938208)
  {
    v6 = v4 == 938209 || v4 == 1327329;
    v7 = 1515745;
    goto LABEL_18;
  }

  if (v4 != 241889 && v4 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v10 = *v5;
  if (v4 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v10, 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v10);
  }
}

uint64_t AMAuthInstallMonetMeasureMav20ElfMBN(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, void *a5, const void *a6)
{
  v53 = *MEMORY[0x29EDCA608];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *bytes = 0u;
  v49 = 0u;
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_1(Length);
    goto LABEL_23;
  }

  v13 = Length;
  v14 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_22;
  }

  v15 = 0;
  v16 = 0;
  v17 = Length + *(Length + 28);
  do
  {
    if (*(v17 + 12) > v15 && (*(v17 + 24) & 0x7000000) != 0x5000000)
    {
      v16 = v17;
      v15 = *(v17 + 12);
    }

    v17 += 32;
    --v14;
  }

  while (v14);
  if (!v16)
  {
LABEL_22:
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_11(Length);
LABEL_23:
    v47 = 0;
    v41 = 0;
    v43 = 0;
    v39 = 0;
    v42 = 10;
    goto LABEL_21;
  }

  v18 = (*(v16 + 16) + *(v16 + 4));
  v19 = CFDataGetLength(theData);
  if (v19 < v18)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_10(v19);
    goto LABEL_23;
  }

  CFDataGetBytePtr(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v21 = *(v16 + 4);
  v22 = &BytePtr[v21];
  v23 = (*&BytePtr[v21 + 20] + v21);
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_9(v24);
    goto LABEL_23;
  }

  v25 = (*(v22 + 4) + *(v16 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_8(v26);
    goto LABEL_23;
  }

  v27 = (*(v22 + 9) + *(v16 + 4));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_7(v28);
    goto LABEL_23;
  }

  v29 = (*(v22 + 7) + *(v16 + 4));
  v30 = CFDataGetLength(theData);
  if (v30 < v29)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_6(v30);
    goto LABEL_23;
  }

  if ((*(v22 + 7) + *(v22 + 5) + *(v22 + 9)) + 168 != *(v16 + 16))
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_2(v30);
    goto LABEL_23;
  }

  v31 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v31, 0);
  if (!Mutable)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_5(0);
    v47 = 0;
    v41 = 0;
    v43 = 0;
    v39 = 0;
    v42 = 2;
    goto LABEL_21;
  }

  v33 = Mutable;
  key = a5;
  CFDataSetLength(Mutable, 48);
  CFDataGetBytePtr(theData);
  v47 = v33;
  CFDataGetMutableBytePtr(v33);
  v34 = *(v16 + 4);
  v35 = CFDataGetBytePtr(theData);
  v36 = CFGetAllocator(a1);
  v46 = CFDataCreate(v36, v22, 168);
  CFDictionarySetValue(a3, a6, v46);
  v37 = CFGetAllocator(a1);
  v38 = CFDataCreateMutable(v37, 0);
  v39 = v38;
  if (!v38)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_4(0);
    v41 = 0;
LABEL_35:
    v42 = 2;
    goto LABEL_20;
  }

  CFDataAppendBytes(v38, &v35[v34 + 168], *(v22 + 5));
  CFDataSetLength(v39, *(v22 + 5));
  CFDictionarySetValue(a3, a4, v39);
  *&bytes[4] = *(v16 + 4);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v13, *&bytes[4], &bytes[8]);
  v40 = CFGetAllocator(a1);
  v41 = CFDataCreate(v40, bytes, 72);
  if (!v41)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_3();
    goto LABEL_35;
  }

  CFDictionarySetValue(a3, key, v41);
  v42 = 0;
LABEL_20:
  v43 = v46;
LABEL_21:
  SafeRelease(v39);
  SafeRelease(v47);
  SafeRelease(v41);
  SafeRelease(v43);
  return v42;
}

int8x16_t _SHA384Partial(const void *a1, CC_LONG a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA384_Init(&v8);
  CC_SHA384_Update(&v8, a1, a2);
  for (i = 0; i != 8; i += 2)
  {
    result = vrev64q_s8(*&v8.hash[i]);
    *(a3 + i * 8) = result;
  }

  return result;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf32MBN(const __CFData *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5, const __CFData *a6)
{
  v6 = a1;
  v48 = *MEMORY[0x29EDCA608];
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_20(0);
    v36 = 0;
    v11 = 0;
LABEL_32:
    v44 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_19(a1);
LABEL_29:
    v36 = 0;
LABEL_30:
    v11 = 0;
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_18(a1);
    goto LABEL_29;
  }

  if (!a4)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_17(a1);
    goto LABEL_29;
  }

  if (!a5)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_16(a1);
    goto LABEL_29;
  }

  v11 = a6;
  if (!a6)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_15(a1);
    v36 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_1(Length);
LABEL_44:
    v36 = 0;
    v11 = 0;
    v6 = 0;
    v44 = 10;
    goto LABEL_23;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v15 = &BytePtr[32 * *(BytePtr + 22) + *(BytePtr + 7)];
  if (v15 == 32)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_13(BytePtr);
    goto LABEL_44;
  }

  v16 = (*(v15 - 16) + *(v15 - 28));
  v17 = CFDataGetLength(theData);
  if (v17 < v16)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_12(v17);
    goto LABEL_44;
  }

  v18 = CFDataGetBytePtr(theData);
  v19 = *(v15 - 28);
  v20 = &v18[v19];
  v21 = (*&v18[v19 + 20] + v19);
  v22 = CFDataGetLength(theData);
  if (v22 < v21)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_11(v22);
    goto LABEL_44;
  }

  v23 = (*(v20 + 24) + *(v15 - 28));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_10(v24);
    goto LABEL_44;
  }

  v25 = (*(v20 + 28) + *(v15 - 28));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_9(v26);
    goto LABEL_44;
  }

  v27 = (*(v20 + 32) + *(v15 - 28));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_8(v28);
    goto LABEL_44;
  }

  v29 = (*(v20 + 36) + *(v15 - 28));
  v30 = CFDataGetLength(theData);
  if (v30 < v29)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_7(v30);
    goto LABEL_44;
  }

  v32 = _CalculateSizeOfJMETMetadataSegment(v20, v31);
  if (vaddlvq_u32(*(v20 + 20)) + *(v20 + 36) + v32 > *(v15 - 16))
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_6(v32);
    goto LABEL_44;
  }

  v34 = _CalculateSizeOfJMETMetadataSegment(v20, v33);
  v35 = CFGetAllocator(v6);
  v36 = CFDataCreate(v35, v20, v34);
  if (!v36)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_5(0);
    v11 = 0;
    v6 = 0;
    v44 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v11, v36);
  v39 = *(v20 + 20);
  if (!v39)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_4(v37);
    goto LABEL_30;
  }

  v46 = v36;
  v40 = a5;
  v41 = _CalculateSizeOfJMETMetadataSegment(v20, v38);
  v42 = CFGetAllocator(v6);
  v11 = CFDataCreate(v42, (v20 + v41), v39);
  if (!v11)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_3(0);
    v6 = 0;
LABEL_49:
    v44 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v11);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v15 - 28);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v13, *&bytes[4], &bytes[8]);
  v43 = CFGetAllocator(v6);
  v6 = CFDataCreate(v43, bytes, 72);
  if (!v6)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_2();
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v40, v6);
  v44 = 0;
LABEL_22:
  v36 = v46;
LABEL_23:
  SafeRelease(v36);
  SafeRelease(v11);
  SafeRelease(v6);
  return v44;
}

uint64_t _CalculateSizeOfJMETMetadataSegment(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 && v2 != 224)
  {
    _CalculateSizeOfJMETMetadataSegment_cold_1();
  }

  return v2 + 288;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf64MBN(const __CFData *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5, const __CFData *a6)
{
  v6 = a1;
  v49 = *MEMORY[0x29EDCA608];
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_20(0);
    v37 = 0;
    v11 = 0;
LABEL_32:
    v45 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_19(a1);
LABEL_29:
    v37 = 0;
LABEL_30:
    v11 = 0;
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_18(a1);
    goto LABEL_29;
  }

  if (!a4)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_17(a1);
    goto LABEL_29;
  }

  if (!a5)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_16(a1);
    goto LABEL_29;
  }

  v11 = a6;
  if (!a6)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_15(a1);
    v37 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_14(Length);
LABEL_44:
    v37 = 0;
    v11 = 0;
    v6 = 0;
    v45 = 10;
    goto LABEL_23;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr != 1179403647)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_1(BytePtr);
    goto LABEL_44;
  }

  v14 = BytePtr;
  v15 = CFDataGetBytePtr(theData);
  v16 = &v15[56 * *(v15 + 28) + *(v15 + 4)];
  if (v16 == 56)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_13(v15);
    goto LABEL_44;
  }

  v17 = *(v16 - 24) + *(v16 - 48);
  v18 = CFDataGetLength(theData);
  if (v17 > v18)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_12(v18);
    goto LABEL_44;
  }

  v19 = CFDataGetBytePtr(theData);
  v20 = *(v16 - 48);
  v21 = &v19[v20];
  v22 = v20 + *&v19[v20 + 20];
  v23 = CFDataGetLength(theData);
  if (v22 > v23)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_11(v23);
    goto LABEL_44;
  }

  v24 = *(v16 - 48) + *(v21 + 24);
  v25 = CFDataGetLength(theData);
  if (v24 > v25)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_10(v25);
    goto LABEL_44;
  }

  v26 = *(v16 - 48) + *(v21 + 28);
  v27 = CFDataGetLength(theData);
  if (v26 > v27)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_9(v27);
    goto LABEL_44;
  }

  v28 = *(v16 - 48) + *(v21 + 32);
  v29 = CFDataGetLength(theData);
  if (v28 > v29)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_8(v29);
    goto LABEL_44;
  }

  v30 = *(v16 - 48) + *(v21 + 36);
  v31 = CFDataGetLength(theData);
  if (v30 > v31)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_7(v31);
    goto LABEL_44;
  }

  v33 = _CalculateSizeOfJMETMetadataSegment(v21, v32);
  if (vaddlvq_u32(*(v21 + 20)) + *(v21 + 36) + v33 > *(v16 - 24))
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_6(v33);
    goto LABEL_44;
  }

  v35 = _CalculateSizeOfJMETMetadataSegment(v21, v34);
  v36 = CFGetAllocator(v6);
  v37 = CFDataCreate(v36, v21, v35);
  if (!v37)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_5(0);
    v11 = 0;
    v6 = 0;
    v45 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v11, v37);
  v40 = *(v21 + 20);
  if (!v40)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_4(v38);
    goto LABEL_30;
  }

  v47 = v37;
  v41 = a5;
  v42 = _CalculateSizeOfJMETMetadataSegment(v21, v39);
  v43 = CFGetAllocator(v6);
  v11 = CFDataCreate(v43, (v21 + v42), v40);
  if (!v11)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_3(0);
    v6 = 0;
LABEL_49:
    v45 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v11);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v16 - 48);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v14, *&bytes[4], &bytes[8]);
  v44 = CFGetAllocator(v6);
  v6 = CFDataCreate(v44, bytes, 72);
  if (!v6)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_2();
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v41, v6);
  v45 = 0;
LABEL_22:
  v37 = v47;
LABEL_23:
  SafeRelease(v37);
  SafeRelease(v11);
  SafeRelease(v6);
  return v45;
}

uint64_t AMAuthInstallMonetMeasureElfMBN(void *a1, CFDataRef theData, __CFDictionary *a3, void *a4, const void *a5)
{
  v54 = *MEMORY[0x29EDCA608];
  v53 = 0;
  *bytes = 0u;
  v52 = 0u;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureElfMBN_cold_1(Length);
    goto LABEL_24;
  }

  v11 = Length;
  v12 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  v15 = Length + *(Length + 28);
  do
  {
    if (*(v15 + 12) > v14 && (*(v15 + 24) & 0x7000000) != 0x5000000)
    {
      v14 = *(v15 + 12);
      v13 = v15;
    }

    v15 += 32;
    --v12;
  }

  while (v12);
  if (!v13)
  {
LABEL_23:
    AMAuthInstallMonetMeasureElfMBN_cold_10(Length);
LABEL_24:
    v31 = 0;
    v44 = 0;
    v45 = 10;
    goto LABEL_22;
  }

  v16 = (*(v13 + 16) + *(v13 + 4));
  v17 = CFDataGetLength(theData);
  if (v17 < v16)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_9(v17);
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v19 = *(v13 + 4);
  v20 = &BytePtr[v19];
  v21 = (*&BytePtr[v19 + 20] + v19);
  v22 = CFDataGetLength(theData);
  if (v22 < v21)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_8(v22);
    goto LABEL_24;
  }

  v23 = (*(v20 + 4) + *(v13 + 4));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_7(v24);
    goto LABEL_24;
  }

  v25 = (*(v20 + 9) + *(v13 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_6(v26);
    goto LABEL_24;
  }

  v27 = (*(v20 + 7) + *(v13 + 4));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_5(v28);
    goto LABEL_24;
  }

  if ((*(v20 + 7) + *(v20 + 5) + *(v20 + 9)) + 40 != *(v13 + 16))
  {
    AMAuthInstallMonetMeasureElfMBN_cold_2(v28);
    goto LABEL_24;
  }

  v29 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v29, 0);
  v31 = Mutable;
  if (!Mutable)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_4(0);
    v44 = 0;
LABEL_35:
    v45 = 2;
    goto LABEL_22;
  }

  theDict = a3;
  key = a4;
  v32 = a5;
  if (*(a1[6] + 4) == 520417)
  {
    CFDataSetLength(Mutable, 48);
    v33 = CFDataGetBytePtr(theData);
    v34 = *(v13 + 4);
    v35 = *(v20 + 5);
    MutableBytePtr = CFDataGetMutableBytePtr(v31);
    CC_SHA384(&v33[v34], v35 + 40, MutableBytePtr);
    DWORD1(v49[0]) = *(v13 + 4) + *(v20 + 5) + 40;
    LODWORD(v49[0]) = CFDataGetLength(theData) - DWORD1(v49[0]);
    _SHA384Partial(v11, DWORD1(v49[0]), v49 + 8);
    v37 = CFGetAllocator(a1);
    v38 = v49;
    v39 = 72;
  }

  else
  {
    CFDataSetLength(Mutable, 32);
    v40 = CFDataGetBytePtr(theData);
    v41 = *(v13 + 4);
    v42 = *(v20 + 5);
    v43 = CFDataGetMutableBytePtr(v31);
    CC_SHA256(&v40[v41], v42 + 40, v43);
    *&bytes[4] = *(v13 + 4) + *(v20 + 5) + 40;
    *bytes = CFDataGetLength(theData) - *&bytes[4];
    _SHA256Partial(v11, *&bytes[4], &bytes[8]);
    v37 = CFGetAllocator(a1);
    v38 = bytes;
    v39 = 40;
  }

  v44 = CFDataCreate(v37, v38, v39);
  if (!v44)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_3();
    goto LABEL_35;
  }

  CFDictionarySetValue(theDict, key, v31);
  CFDictionarySetValue(theDict, v32, v44);
  v45 = 0;
LABEL_22:
  SafeRelease(v31);
  SafeRelease(v44);
  return v45;
}

int8x16_t _SHA256Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, a1, a2);
  result = vrev32q_s8(*v8.hash);
  v7 = vrev32q_s8(*&v8.hash[4]);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t AMAuthInstallMonetStitchTme(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (*(a1[6] + 4) != 2044129)
  {
    AMAuthInstallMonetStitchTme_cold_1();
  }

  return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"TME-HashTableBody-Blob", 0);
}

uint64_t AMAuthInstallMonetCreateMEIDFromString(int a1, CFStringRef theString, CFTypeRef *a3)
{
  v4 = theString;
  cf = 0;
  Length = CFStringGetLength(theString);
  v6 = *MEMORY[0x29EDB8ED8];
  if (Length == 15)
  {
    v12.length = CFStringGetLength(v4) - 1;
    v12.location = 0;
    v7 = CFStringCreateWithSubstring(v6, v4, v12);
    v4 = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = AMAuthInstallSupportCopyDataFromHexString(v6, v4, &cf);
  if (v8)
  {
    v9 = v8;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "failed to convert meid (%@) to data", v4);
  }

  else if (cf)
  {
    v9 = 0;
    *a3 = CFRetain(cf);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "meid (%@) tempData is NULL", v4);
    v9 = 14;
  }

  SafeRelease(v7);
  SafeRelease(cf);
  return v9;
}

uint64_t AMAuthInstallMonetCreateReversedMEIDFromString(int a1, const __CFString *a2, CFTypeRef *a3)
{
  theData = 0;
  v14 = 0;
  MEIDFromString = AMAuthInstallMonetCreateMEIDFromString(a1, a2, &v14);
  if (MEIDFromString)
  {
    v11 = MEIDFromString;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to convert meid (%@) to data", a2);
    v8 = 0;
    v6 = v14;
    goto LABEL_6;
  }

  v6 = v14;
  if (!v14)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) tempData is NULL", a2);
    v8 = 0;
LABEL_11:
    v11 = 14;
    goto LABEL_6;
  }

  ReversedMEID = AMAuthInstallMonetCreateReversedMEID(*MEMORY[0x29EDB8ED8], v14, &theData);
  if (ReversedMEID)
  {
    v11 = ReversedMEID;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to reverse meid (%@)", a2);
    v8 = theData;
    goto LABEL_6;
  }

  v8 = theData;
  if (!theData)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) reversedData is NULL", a2);
    goto LABEL_11;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v8);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallMonetCreateReversedMEIDFromString", "reversed meid", BytePtr, Length);
  v11 = 0;
  *a3 = CFRetain(v8);
LABEL_6:
  SafeRelease(0);
  SafeRelease(v6);
  SafeRelease(v8);
  return v11;
}

void *_AMAuthInstallMonetStitchMav25Chunk(void *a1, const __CFData *a2, uint64_t a3, size_t a4, int a5)
{
  v9 = "NO";
  if ((a1 & 0x3F) != 0)
  {
    v10 = "NO";
  }

  else
  {
    v10 = "YES";
  }

  if ((a1 & 0x7F) == 0)
  {
    v9 = "YES";
  }

  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25Chunk", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n stitchDataSize = %d stitchDataOffset = %d Len(newFileData) = %d", a1, v10, v9, a4, a3, a5);
  v11 = &CFDataGetBytePtr(a2)[a3];

  return memcpy(a1, v11, a4);
}

UInt8 *OUTLINED_FUNCTION_3_6()
{

  return CFDataGetMutableBytePtr(v0);
}

void OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, const char *a3)
{

  AMAuthInstallLog(7, v3, a3);
}

CFDataRef OUTLINED_FUNCTION_10_3(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef error)
{
  v14 = *(v12 + 176);

  return CFPropertyListCreateData(a1, v14, kCFPropertyListXMLFormat_v1_0, 0, &error);
}

uint64_t AMAuthInstallPlatformCreateSoftLink(const __CFURL *a1, CFURLRef url)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) || !CFURLGetFileSystemRepresentation(a1, 1u, v6, 1024))
  {
    return 3;
  }

  result = symlink(buffer, v6);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformCreateSoftLink", "failed to create link: %s", v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformCreateSoftLink", "source path: %s; dest path: %s", buffer, v6);
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformIsRegularFile(const __CFURL *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(&v2, 0, sizeof(v2));
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    stat(buffer, &v2);
    return (v2.st_mode & 0xF000) == 0x8000;
  }

  return result;
}

char *AMAuthInstallPlatformMakeDirectoryForURL(const __CFURL *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  strcpy(__delim, "/");
  bzero(__str, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v2 = strlen(buffer);
  if (!CFURLHasDirectoryPath(a1))
  {
    if (v2)
    {
      do
      {
        v3 = v2 - 1;
        v4 = __delim[v2 + 1] == 47 || v2 == 1;
        --v2;
      }

      while (!v4);
    }

    else
    {
      v3 = 0;
    }

    buffer[v3] = 0;
  }

  __stringp = buffer;
  result = strsep(&__stringp, __delim);
  if (result)
  {
    v6 = "Could not stat (%s)";
    while (1)
    {
      memset(&v9, 0, sizeof(v9));
      if (*result)
      {
        snprintf(__str, 0x400uLL, "%s%c%s", __str, 47, result);
        if (stat(__str, &v9) == -1)
        {
          if (*__error() != 2)
          {
            goto LABEL_23;
          }

          if (mkdir(__str, 0x1EDu) == -1 && *__error() != 17)
          {
            break;
          }
        }
      }

      result = strsep(&__stringp, __delim);
      if (!result)
      {
        return result;
      }
    }

    v6 = "Could not mkdir (%s)";
LABEL_23:
    v7 = __error();
    v8 = strerror(*v7);
    AMAuthInstallLog(3, "AMAuthInstallPlatformMakeDirectoryForURL", v6, v8);
    AMAuthInstallLog(7, "AMAuthInstallPlatformMakeDirectoryForURL", "%s", __str);
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveDirectory(const __CFURL *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v7 = 0;
  v2 = &v7;
  v3 = _AMAuthInstallPlatformRemoveDirectoryRecursion(buffer, &v7);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (!rmdir(buffer))
    {
      return 0;
    }

    v4 = 4;
    v2 = __error();
  }

  v5 = strerror(*v2);
  AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveDirectory", "failed to remove directory: %s", v5);
  AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveDirectory", "url=%@, path=%s", a1, buffer);
  return v4;
}

uint64_t _AMAuthInstallPlatformRemoveDirectoryRecursion(const char *a1, int *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = opendir(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  for (i = readdir(v4); i; i = readdir(v5))
  {
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, i->d_name);
      memset(&v8, 0, sizeof(v8));
      if (!lstat(__str, &v8))
      {
        if ((v8.st_mode & 0x4000) != 0)
        {
          if (_AMAuthInstallPlatformRemoveDirectoryRecursion(__str, a2))
          {
            return 4;
          }

          if (rmdir(__str))
          {
            goto LABEL_15;
          }
        }

        else if (unlink(__str))
        {
          goto LABEL_15;
        }
      }
    }
  }

  result = closedir(v5);
  if (result)
  {
LABEL_15:
    *a2 = *__error();
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  result = remove(buffer, v2);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", a1, buffer);
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedExtension(const __CFAllocator *a1, const __CFURL *a2, const __CFString *a3, CFURLRef *a4)
{
  v5 = CFURLCreateCopyAppendingPathExtension(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  result = 0;
  *a4 = v6;
  return result;
}

__CFString *_AMAuthInstallPlatformConstantsInitialize()
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = 32;
  result = sysctlbyname("kern.osversion", v3, &v1, 0, 0);
  if (!result)
  {
    v1 = 32;
    if (!sysctlbyname("hw.product", v2, &v1, 0, 0) || (result = sysctlbyname("hw.machine", v2, &v1, 0, 0), !result))
    {
      result = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"mac/%s/%s", v3, v2);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  if (!_platformInfoStr)
  {
    result = @"???";
LABEL_5:
    _platformInfoStr = result;
  }

  return result;
}

uint64_t _AMAuthInstallSupportsECProvision(uint64_t a1)
{
  result = 0;
  v3 = *(*(a1 + 48) + 4);
  if (v3 <= 241888)
  {
    v6 = v3 - 96;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (v7 || v8 == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 > 9572576)
    {
      v4 = v3 == 9572577;
      v5 = 9781473;
    }

    else
    {
      v4 = v3 == 241889;
      v5 = 8343777;
    }

    if (!v4 && v3 != v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_7(const __CFAllocator *a1, uint64_t a2, const void *a3)
{

  return AMAuthInstallHttpSetUriEscapedValue(a1, v3, a3, v4);
}

CFAllocatorRef OUTLINED_FUNCTION_4_7()
{

  return CFGetAllocator(v0);
}

uint64_t AMAuthInstallRembrandtLocalRegisterKeys(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4);
  if (v1 > 100)
  {
    if (v1 != 101 && v1 != 103)
    {
      if (v1 != 104)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v1 == 94)
  {
LABEL_9:
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    goto LABEL_10;
  }

  if (v1 == 96)
  {
LABEL_8:
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
LABEL_10:
    AMAuthInstallLog(6, "AMAuthInstallRembrandtLocalRegisterKeys", "rembrandt local signing keys available");
    return 0;
  }

LABEL_11:
  AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalRegisterKeys", "unknown chipID");
  return 99;
}

void _ApplyTagPrefix(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = *MEMORY[0x29EDB8ED8];
  v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,", *(*(*a3 + 2) + 160));
  v8 = CFStringCreateWithFormat(MutableCopy, 0, @"@%@", *(*a3 + 11));
  if (v8 && (MutableCopy = CFStringCreateMutableCopy(MutableCopy, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 3;
LABEL_7:
      CFStringReplace(v9, v10, v7);
      v11 = a3[1];
      v12 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v11, v12, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v11 = a3[1];
      v12 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    _ApplyTagPrefix_cold_1(0);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v8);

  SafeRelease(MutableCopy);
}

void _ApplyOverrideTags(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void _CFDictionarySetInteger64Str(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t AMAuthInstallSsoCreateServiceTicket(const __CFAllocator *a1, CFDataRef *a2, uint64_t *a3)
{
  v6 = AMAuthInstallSsoInitialize();
  if (v6)
  {
    v7 = v6;
    AMAuthInstallLog(3, "AMAuthInstallSsoCreateServiceTicket", "Failed to initialize SSO");
    return v7;
  }

  else
  {

    return _AMAuthInstallSsoCreateServiceTicket(0, a1, a2, a3);
  }
}

uint64_t AMAuthInstallSsoInitialize()
{
  if (_susso_lib)
  {
    goto LABEL_5;
  }

  v0 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 1);
  _susso_lib = v0;
  if (v0)
  {
    _AMAuthInstallSsoSUSSOCopyToken = dlsym(v0, "copyPersonalizationSSOToken");
    if (_AMAuthInstallSsoSUSSOCopyToken)
    {
      AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib found");
LABEL_5:
      v1 = 0;
      goto LABEL_6;
    }

    AMAuthInstallSsoInitialize_cold_1();
    v1 = 8;
  }

  else
  {
    v1 = 4;
  }

  AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib not found");
LABEL_6:
  if (!_acmobileshim_lib)
  {
    v2 = dlopen("/usr/lib/libacmobileshim.dylib", 1);
    _acmobileshim_lib = v2;
    if (v2)
    {
      _AMAuthInstallSsoCopyTicketWithCredentials = dlsym(v2, "ACMobileShimCopyTicket");
      if (_AMAuthInstallSsoCopyTicketWithCredentials)
      {
        AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "ACMobileShim dylib found");
        return 0;
      }

      AMAuthInstallSsoInitialize_cold_2();
      v1 = 8;
    }

    else
    {
      v1 = 4;
    }

    AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "ACMobileShim dylib not found");
  }

  return v1;
}

uint64_t _AMAuthInstallSsoCreateServiceTicket(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3, uint64_t *a4)
{
  error = 0;
  responseFlags = 0;
  err = 0;
  if (!a3)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_11(a4);
    v20 = 0;
    v22 = 0;
    v21 = 1;
    goto LABEL_48;
  }

  v5 = (!a1 || !*(a1 + 112)) && _forceStealthModeForProcess == 0;
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v62 = 0x2000000000;
  v63 = 0;
  v58 = 0;
  v59[0] = &v58;
  v59[1] = 0x2000000000;
  v59[2] = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v6 = MEMORY[0x29EDB8F00];
  v7 = MEMORY[0x29EDB8EF8];
  if (_AMAuthInstallSsoSUSSOCopyToken)
  {
    v8 = a4;
    v9 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = Mutable;
    if (v5)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    CFDictionaryAddValue(Mutable, @"stealthMode", *v12);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1107296256;
    block[2] = ___AMAuthInstallSsoCopyTicketUsingSUSSO_block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    block[4] = &valuePtr;
    block[5] = &v58;
    block[6] = &v54;
    block[7] = v11;
    dispatch_async(global_queue, block);
    if ((v55[3] & 1) == 0)
    {
      v14 = *MEMORY[0x29EDB8FC0];
      do
      {
        CFRunLoopRunInMode(v14, 1.0, 1u);
      }

      while (*(v55 + 24) != 1);
    }

    v15 = *(v59[0] + 24);
    if (v15 || (v16 = p_valuePtr[3]) == 0)
    {
      _AMAuthInstallSsoCreateServiceTicket_cold_2(v8, v15);
      LOBYTE(Value) = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v16, @"ssodata");
      if (Value)
      {
        AMAuthInstallLog(6, "_AMAuthInstallSsoCopyTicketUsingSUSSO", "_AMAuthInstallSsoCopyTicketUsingSUSSO successfully acquired ssoData");
        Copy = CFDataCreateCopy(v9, Value);
        v19 = 0;
        *a3 = Copy;
        LOBYTE(Value) = 1;
        goto LABEL_17;
      }

      _AMAuthInstallSsoCreateServiceTicket_cold_1(v59, v8);
    }

    v19 = 99;
  }

  else
  {
    v8 = a4;
    _AMAuthInstallSsoCreateServiceTicket_cold_3(a4);
    LOBYTE(Value) = 0;
    v11 = 0;
    v19 = 8;
  }

LABEL_17:
  SafeRelease(v11);
  SafeRelease(p_valuePtr[3]);
  SafeRelease(*(v59[0] + 24));
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&valuePtr, 8);
  if (Value)
  {
    v20 = 0;
    v21 = 0;
LABEL_19:
    v22 = 0;
    goto LABEL_48;
  }

  if (v8)
  {
    v23 = *v8;
  }

  else
  {
    v23 = 0;
  }

  AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get a ticket using SUSSO, status:%d, error:%@", v19, v23);
  if (!v5)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_4(v8);
    v20 = 0;
    v22 = 0;
    v21 = 21;
    goto LABEL_48;
  }

  if (!_AMAuthInstallSsoCopyTicketWithCredentials)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_10(v8);
    v20 = 0;
    v22 = 0;
LABEL_69:
    v21 = 8;
    goto LABEL_48;
  }

  LODWORD(valuePtr) = 0;
  LODWORD(v58) = 1;
  LODWORD(v54) = 0;
  block[0] = 0;
  v24 = CFNumberCreate(a2, kCFNumberIntType, &valuePtr);
  v48 = v8;
  v45 = a3;
  v46 = v24;
  if (!v24)
  {
    v47 = 0;
    v30 = 0;
    v33 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
LABEL_83:
    v34 = 0;
    v21 = 2;
    goto LABEL_39;
  }

  v25 = CFNumberCreate(a2, kCFNumberIntType, &v58);
  if (!v25)
  {
    v47 = 0;
    v30 = 0;
    v33 = 0;
    v24 = 0;
    v26 = 0;
LABEL_75:
    v27 = 0;
    goto LABEL_83;
  }

  v26 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  if (!v26)
  {
    v47 = 0;
    v30 = 0;
    v33 = 0;
    v24 = 0;
    goto LABEL_75;
  }

  v27 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  if (!v27)
  {
    v47 = 0;
    v30 = 0;
LABEL_78:
    v33 = 0;
    goto LABEL_82;
  }

  v28 = v6;
  CFArrayAppendValue(v26, v24);
  CFArrayAppendValue(v26, v24);
  CFArrayAppendValue(v27, v25);
  CFArrayAppendValue(v27, v25);
  v29 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  v30 = v29;
  if (!v29)
  {
    v47 = 0;
    goto LABEL_78;
  }

  CFArrayAppendValue(v29, @"Username");
  CFArrayAppendValue(v30, @"Password");
  v31 = _AMAuthInstallSsoCopyCredentialsFromKeychain(block, 0);
  if ((v31 & 7) != 0)
  {
    v21 = v31;
    _AMAuthInstallSsoCreateServiceTicket_cold_5();
    v47 = 0;
    v33 = 0;
    v24 = 0;
    v34 = 0;
    goto LABEL_39;
  }

  if (block[0])
  {
    v32 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
    v33 = v32;
    if (v32)
    {
      CFArrayAppendValue(v32, block[0]);
      goto LABEL_35;
    }

    v47 = 0;
LABEL_82:
    v24 = 0;
    goto LABEL_83;
  }

  v33 = 0;
LABEL_35:
  v24 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v24)
  {
    v47 = 0;
    goto LABEL_83;
  }

  v34 = CFNumberCreate(a2, kCFNumberIntType, &v54);
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9040], @"AppleConnect");
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9078], v30);
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9060], @"OK");
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9058], @"Cancel");
  v35 = *v28;
  CFDictionaryAddValue(v24, @"SBUserNotificationBehavesSuperModally", *v28);
  CFDictionaryAddValue(v24, @"SBUserNotificationTextAutocapitalizationType", v26);
  CFDictionaryAddValue(v24, @"SBUserNotificationTextAutocorrectionType", v27);
  CFDictionaryAddValue(v24, @"SBUserNotificationDontDismissOnUnlock", v35);
  CFDictionaryAddValue(v24, @"DismissOnLock", *MEMORY[0x29EDB8EF8]);
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9068], v34);
  CFDictionaryAddValue(v24, *MEMORY[0x29EDB9050], v35);
  CFDictionaryAddValue(v24, @"SBUserNotificationDisplayActionButtonOnLockScreen", v35);
  if (v33)
  {
    CFDictionaryAddValue(v24, *MEMORY[0x29EDB9080], v33);
  }

  v47 = CFRetain(v24);
  v21 = 0;
LABEL_39:
  SafeRelease(0);
  SafeRelease(v30);
  SafeRelease(v33);
  SafeRelease(v24);
  SafeRelease(block[0]);
  SafeRelease(v26);
  SafeRelease(v27);
  SafeRelease(v46);
  SafeRelease(v25);
  SafeRelease(v34);
  v20 = v47;
  if (v21 || !v47)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_9(v21, v8);
    goto LABEL_19;
  }

  AMAuthInstallLog(5, "_AMAuthInstallSsoCreateServiceTicket", "%s: Creating user notification", "_AMAuthInstallSsoCreateServiceTicket");
  v36 = CFUserNotificationCreate(a2, 0.0, 0x20000uLL, &error, v47);
  v22 = v36;
  if (!v36)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_8(v48);
    v21 = 2;
    goto LABEL_48;
  }

  error = CFUserNotificationReceiveResponse(v36, 300.0, &responseFlags);
  if (error)
  {
    CFUserNotificationCancel(v22);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to receive CFUserNotification response %d", error);
LABEL_44:
    v21 = 8;
LABEL_47:
    AMSupportCreateErrorInternal();
    goto LABEL_48;
  }

  responseFlags &= 3u;
  if (responseFlags == 1)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "user canceled AppleConnect login.");
    v21 = 21;
    goto LABEL_47;
  }

  ResponseDictionary = CFUserNotificationGetResponseDictionary(v22);
  if (!ResponseDictionary)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_7(v48);
    goto LABEL_69;
  }

  v39 = CFDictionaryGetValue(ResponseDictionary, *MEMORY[0x29EDB9080]);
  if (!v39 || (v40 = v39, CFArrayGetCount(v39) < 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get CFUserNotification textField values");
    goto LABEL_44;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v40, 0);
  v42 = CFArrayGetValueAtIndex(v40, 1);
  if (!ValueAtIndex || (v43 = v42, CFStringGetLength(ValueAtIndex) < 1) || !v43 || CFStringGetLength(v43) <= 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get username and password values");
    v21 = 1;
    goto LABEL_47;
  }

  v44 = _AMAuthInstallSsoSaveCredentialsInKeychain(ValueAtIndex);
  if (v44)
  {
    v21 = v44;
    _AMAuthInstallSsoCreateServiceTicket_cold_6(v44, v48);
    goto LABEL_48;
  }

  v21 = _AMAuthInstallSsoCopyTicketWithCredentials(ValueAtIndex, v43, v45, &err);
  if (v21 && err)
  {
    CFErrorGetCode(err);
    goto LABEL_47;
  }

LABEL_48:
  SafeRelease(v22);
  SafeRelease(v20);
  return v21;
}

uint64_t AMAuthInstallSsoCopyCredentialsFromKeychain(void *a1, CFStringRef *a2)
{
  AMAuthInstallLog(7, "AMAuthInstallSsoCopyCredentialsFromKeychain", "Attempting to load credentials from keychain");
  v4 = _AMAuthInstallSsoCopyCredentialsFromKeychain(a1, a2);
  AMAuthInstallLog(7, "AMAuthInstallSsoCopyCredentialsFromKeychain", "Loaded credentials from keychain with status %d", v4);
  return v4;
}

void __copy_helper_block_8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void _CFDictionarySetInteger64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  if (!v5)
  {
    _CFDictionarySetInteger64_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void _CFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    _CFDictionarySetInteger32_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void AMAuthInstallSupportDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

CFArrayRef _CFArrayCreateWithObjects(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v30 = *MEMORY[0x29EDCA608];
  v13 = &a9;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *values = 0u;
  v15 = 0u;
  while (1)
  {
    v10 = v13++;
    v11 = *v10;
    if (!v11)
    {
      break;
    }

    values[v9++] = v11;
    if (v9 == 32)
    {
      return 0;
    }
  }

  return CFArrayCreate(a1, values, v9, MEMORY[0x29EDB9000]);
}

uint64_t _CFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtoul(buffer, 0, 0);
    return *__error() == 0;
  }

  return result;
}

CFPropertyListRef AMAuthInstallPreferencesCopyStringValue(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!v4)
    {
      v4 = CFPreferencesCopyAppValue(a2, @"com.apple.libauthinstall");
    }

LABEL_8:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = CFPreferencesCopyAppValue(a1, *MEMORY[0x29EDB8FA0]);
  if (!v4)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.libauthinstall");
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

const __CFString *AMAuthInstallPreferencesGetBooleanValue(const __CFString *result, const __CFString *a2, Boolean *a3)
{
  keyExistsAndHasValidFormat = 0;
  if (result)
  {
    v5 = result;
    result = CFPreferencesGetAppBooleanValue(result, *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_8;
    }

    result = CFPreferencesGetAppBooleanValue(v5, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
    v6 = keyExistsAndHasValidFormat == 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    result = CFPreferencesGetAppBooleanValue(a2, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
  }

LABEL_8:
  if (a3)
  {
    *a3 = keyExistsAndHasValidFormat;
  }

  return result;
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    AMAuthInstallSupportBase64Encode_cold_2(a1);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", theData);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Encode_cold_1(Length);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetLength(theData);
  v9 = b64encode(BytePtr, v8);
  if (v9)
  {
    v10 = v9;
    v11 = strlen(v9);
    if (v11)
    {
      v12 = CFStringCreateWithBytes(a1, v10, v11, 0x8000100u, 0);
      if (v12)
      {
        v13 = v12;
        *a3 = CFRetain(v12);
        free(v10);
        CFRelease(v13);
        return 0;
      }

      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedValue == NULL: '%@'", theData);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedLength == 0: '%@'", theData);
    }

    free(v10);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", theData);
  }

  return 99;
}

uint64_t AMAuthInstallSupportBase64Decode(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    AMAuthInstallSupportBase64Decode_cold_2(a1);
    return 1;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "value length == 0: '%@'", theString);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Decode_cold_1(Length);
    return 1;
  }

  v7 = (CFStringGetLength(theString) + 1);
  v8 = malloc(v7);
  if (!v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to allocate buffer", theString);
    return 2;
  }

  v9 = v8;
  if (!CFStringGetCString(theString, v8, v7, 0x8000100u))
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to convert value to c-string", theString);
LABEL_18:
    v13 = 2;
    goto LABEL_19;
  }

  v10 = b64decode(v9, v7);
  if (v10 <= 0)
  {
    v15 = theString;
    v13 = 3;
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "b64decode of value '%@' failed with error code %d.", v15, v10);
LABEL_19:
    free(v9);
    return v13;
  }

  v11 = CFDataCreate(a1, v9, v10);
  if (!v11)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "decodedData is NULL", theString);
    goto LABEL_18;
  }

  v12 = v11;
  *a3 = CFRetain(v11);
  free(v9);
  CFRelease(v12);
  return 0;
}

uint64_t AMAuthInstallSupportCreateDecodedPEM(uint64_t a1, size_t __size, void *a3, size_t *a4)
{
  if (!a1)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_6(0);
LABEL_35:
    v9 = 0;
    v20 = 1;
    goto LABEL_30;
  }

  if (!__size)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_5(a1);
    goto LABEL_35;
  }

  if (!a3)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_4(a1);
    goto LABEL_35;
  }

  if (!a4)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_3(a1);
    goto LABEL_35;
  }

  v8 = calloc(1uLL, __size);
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_7:
    v13 = 0;
LABEL_8:
    v14 = 1;
    while (v11 < __size && v12 <= 1 && (v14 & 1) != 0)
    {
      v15 = *(a1 + v11);
      if (v15 == 10 || v15 == 13)
      {
        v12 += v13 & 1;
      }

      else
      {
        if (v15 == 45 || (v13 & 1) != 0)
        {
          ++v11;
          v13 = 1;
          goto LABEL_8;
        }

        if (v15 - 48 < 0xA || (v15 & 0xFFFFFFDF) - 65 < 0x1A)
        {
LABEL_26:
          ++v11;
          v8[v10++] = v15;
          goto LABEL_7;
        }
      }

      v13 = 0;
      v14 = 0;
      if (v15 <= 0x3D)
      {
        v14 = 0;
        if (((1 << v15) & 0x2000880100002600) != 0)
        {
          goto LABEL_26;
        }
      }
    }

    if (v14)
    {
      v17 = b64decode(v8, v10);
      v18 = calloc(1uLL, v17);
      if (v18)
      {
        v19 = v18;
        memcpy(v18, v9, v17);
        v20 = 0;
        *a4 = v17;
        *a3 = v19;
      }

      else
      {
        AMAuthInstallSupportCreateDecodedPEM_cold_1(0);
        v20 = 3;
      }
    }

    else
    {
      v20 = 3;
      AMAuthInstallLog(3, "AMAuthInstallSupportCreateDecodedPEM", "Input PEM has non-base64 chars at byte %d", v11);
    }
  }

  else
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_2(0);
    v20 = 2;
  }

LABEL_30:
  free(v9);
  return v20;
}

uint64_t AMAuthInstallSupportCFDataCompare(CFDataRef theData, const __CFData *a2)
{
  if (!(theData | a2))
  {
    return 0;
  }

  if (theData && !a2)
  {
    return 1;
  }

  if (!theData && a2)
  {
    return -1;
  }

  Length = CFDataGetLength(theData);
  if (Length < CFDataGetLength(a2))
  {
    return -1;
  }

  v6 = CFDataGetLength(theData);
  if (v6 > CFDataGetLength(a2))
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(theData);
  return memcmp(BytePtr, v8, v9);
}

CFURLRef AMAuthInstallSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf)
{
  if (!cf)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: theString is NULL");
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFURLGetTypeID())
  {
    AMAuthInstallLog(4, "AMAuthInstallSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", "AMAuthInstallSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: invalid string");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

const __CFString *AMAuthInstallSupportCompareStringToInt32(const __CFDictionary *a1, const void *a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  if (!a1)
  {
    AMAuthInstallSupportCompareStringToInt32_cold_2();
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallSupportCompareStringToInt32_cold_1();
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    result = CFStringGetCString(result, buffer, 32, 0x8000100u);
    if (result)
    {
      if (strtol(buffer, 0, 16) == a3)
      {
        return (*__error() == 0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallUpdaterAddTags(void *a1, void *context, CFDictionaryRef theDict, uint64_t a4)
{
  if (!a1)
  {
    AMAuthInstallUpdaterAddTags_cold_3(a4);
    return 0;
  }

  v5 = a1[57];
  if (!v5)
  {
    AMAuthInstallUpdaterAddTags_cold_2(a4);
    return 0;
  }

  if (!context)
  {
    AMAuthInstallUpdaterAddTags_cold_1(a4);
    return 0;
  }

  if (theDict)
  {
    result = AMAuthInstallUpdaterLoadFromReceipt(a1, theDict, a4);
    if (!result)
    {
      return result;
    }

    v5 = a1[57];
  }

  CFDictionaryApplyFunction(v5, _AddUpdaterTags, context);
  return 1;
}

uint64_t AMAuthInstallUpdaterWriteManifests(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (!a1)
  {
    AMAuthInstallUpdaterWriteManifests_cold_4(a4);
    return 0;
  }

  v6 = *(a1 + 456);
  if (!v6)
  {
    AMAuthInstallUpdaterWriteManifests_cold_3(a4);
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterWriteManifests_cold_2(a4);
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterWriteManifests_cold_1(a4);
    return 0;
  }

  Count = CFDictionaryGetCount(v6);
  v10 = malloc(8 * Count);
  v11 = malloc(8 * Count);
  v12 = v11;
  if (v10 && v11)
  {
    CFDictionaryGetKeysAndValues(*(a1 + 456), v10, v11);
    if (Count < 1)
    {
LABEL_11:
      v15 = 1;
    }

    else
    {
      v13 = v10;
      v14 = v12;
      while (AMAuthInstallUpdaterWriteManifest(*v14, *v13, a2, a3, a4))
      {
        ++v14;
        ++v13;
        if (!--Count)
        {
          goto LABEL_11;
        }
      }

      v15 = 0;
    }
  }

  else
  {
    AMSupportCreateErrorInternal();
    v15 = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  free(v10);
LABEL_14:
  if (v12)
  {
    free(v12);
  }

  return v15;
}

uint64_t AMAuthInstallUpdaterSaveToReceipt(void *a1, const __CFString *a2, const __CFURL *a3, uint64_t a4)
{
  v5 = a1;
  theDict = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
    return v5;
  }

  if (!a2 || !a3)
  {
    AMSupportCreateErrorInternal();
LABEL_11:
    v5 = 0;
    v13 = 0;
    Mutable = 0;
    goto LABEL_37;
  }

  if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &theDict))
  {
    v8 = CFGetAllocator(v5);
    theDict = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (theDict)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!theDict)
  {
LABEL_13:
    AMAuthInstallUpdaterSaveToReceipt_cold_2(a4);
    goto LABEL_11;
  }

LABEL_6:
  v9 = AMAuthInstallUpdater(v5, a2, 0, a4);
  if (!v9)
  {
    AMAuthInstallUpdaterSaveToReceipt_cold_1(a4);
    goto LABEL_11;
  }

  v10 = v9;
  Value = CFDictionaryGetValue(theDict, @"Updaters");
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
  }

  else
  {
    v14 = CFGetAllocator(v5);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      AMSupportCreateErrorInternal();
      v5 = 0;
      v13 = 0;
      goto LABEL_37;
    }
  }

  v15 = CFDictionaryGetValue(Mutable, a2);
  if (v15)
  {
    v13 = v15;
    CFRetain(v15);
  }

  else
  {
    v16 = CFGetAllocator(v5);
    v13 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v13)
    {
      AMSupportCreateErrorInternal();
      goto LABEL_36;
    }
  }

  v17 = v10[2];
  if (v17 && CFDictionaryGetCount(v17) >= 1)
  {
    CFDictionarySetValue(v13, @"RequestTags", v10[2]);
  }

  v18 = v10[5];
  if (v18 && CFArrayGetCount(v18) >= 1)
  {
    CFDictionarySetValue(v13, @"ResponseTags", v10[5]);
  }

  v19 = v10[4];
  if (v19 && CFArrayGetCount(v19) >= 1)
  {
    CFDictionarySetValue(v13, @"BuildIdentityTags", v10[4]);
  }

  v20 = v10[6];
  if (v20)
  {
    CFDictionarySetValue(v13, @"LoopInstance", v20);
  }

  if (CFDictionaryGetCount(v13) >= 1)
  {
    CFDictionarySetValue(Mutable, a2, v13);
    CFDictionarySetValue(theDict, @"Updaters", Mutable);
  }

  v21 = AMAuthInstallBundleWriteReceipt(v5, a3, theDict, *MEMORY[0x29EDB8EF8]);
  if (v21)
  {
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v5, v21);
    AMAuthInstallLog(3, "AMAuthInstallUpdaterSaveToReceipt", "failed to write receipt: %@", LocalizedStatusString);
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v5 = 1;
LABEL_37:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void *_LoadUpdater(const __CFString *key, const __CFDictionary *a2, uint64_t a3)
{
  result = CFDictionaryGetValue(*(a3 + 456), key);
  if (!result)
  {
    result = AMAuthInstallUpdater(a3, key, 0, 0);
    if (result)
    {
      v7 = result;
      Value = CFDictionaryGetValue(a2, @"RequestTags");
      if (Value)
      {
        v9 = Value;
        v10 = v7[2];
        if (v10)
        {
          CFRelease(v10);
          v7[2] = 0;
        }

        v7[2] = CFRetain(v9);
      }

      v11 = CFDictionaryGetValue(a2, @"ResponseTags");
      if (v11)
      {
        v12 = v11;
        v13 = v7[5];
        if (v13)
        {
          CFRelease(v13);
          v7[5] = 0;
        }

        v7[5] = CFRetain(v12);
      }

      v14 = CFDictionaryGetValue(a2, @"BuildIdentityTags");
      if (v14)
      {
        v15 = v14;
        v16 = v7[4];
        if (v16)
        {
          CFRelease(v16);
          v7[4] = 0;
        }

        v7[4] = CFRetain(v15);
      }

      result = CFDictionaryGetValue(a2, @"LoopInstance");
      if (result)
      {
        v17 = result;
        v18 = v7[6];
        if (v18)
        {
          CFRelease(v18);
          v7[6] = 0;
        }

        result = CFRetain(v17);
        v7[6] = result;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallUpdaterLoadFromReceipt(void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_3(a3);
    return 0;
  }

  if (!a1[57])
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_2(a3);
    return 0;
  }

  if (!theDict)
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_1(a3);
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"Updaters");
  if (Value)
  {
    CFDictionaryApplyFunction(Value, _LoadUpdater, a1);
  }

  return 1;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCopyTags(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v12 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCopyTags_cold_4(a4);
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterCopyTags_cold_3(a4);
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterCopyTags_cold_2(a4);
    return 0;
  }

  v6 = AMAuthInstallUpdater(a1, a2, 0, &v12);
  if (!v6)
  {
    AMAuthInstallUpdaterCopyTags_cold_1(&v12, a4);
    return 0;
  }

  v7 = v6;
  if (CFStringCompare(a3, @"RequestTags", 0) == kCFCompareEqualTo)
  {
    v8 = v7[2];
    if (!v8)
    {
      return 0;
    }

    return CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v8);
  }

  if (CFStringCompare(a3, @"RequestHeaderTags", 0) == kCFCompareEqualTo)
  {
    v8 = v7[3];
    if (!v8)
    {
      return 0;
    }

    return CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v8);
  }

  if (CFStringCompare(a3, @"ResponseTags", 0) == kCFCompareEqualTo)
  {
    v10 = v7[5];
    if (!v10)
    {
      return 0;
    }

    return CFArrayCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v10);
  }

  if (CFStringCompare(a3, @"BuildIdentityTags", 0) == kCFCompareEqualTo)
  {
    v10 = v7[4];
    if (!v10)
    {
      return 0;
    }

    return CFArrayCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v10);
  }

  if (CFStringCompare(a3, @"LoopInstance", 0))
  {
    if (a4)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v11 = v7[6];
    if (v11)
    {
      return CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v11);
    }
  }

  return 0;
}

uint64_t AMAuthInstallUpdaterSetTags(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4, uint64_t a5)
{
  v21 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterSetTags_cold_5(a5);
    return 1;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterSetTags_cold_4(a5);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterSetTags_cold_3(a5);
    return 1;
  }

  if (!a4)
  {
    AMAuthInstallUpdaterSetTags_cold_2(a5);
    return 1;
  }

  v8 = AMAuthInstallUpdater(a1, a2, 0, &v21);
  if (v8)
  {
    v9 = v8;
    if (CFStringCompare(a3, @"RequestTags", 0))
    {
      if (CFStringCompare(a3, @"RequestHeaderTags", 0))
      {
        if (CFStringCompare(a3, @"ResponseTags", 0))
        {
          if (CFStringCompare(a3, @"BuildIdentityTags", 0))
          {
            if (CFStringCompare(a3, @"LoopInstance", 0))
            {
              return 0;
            }

            else
            {
              v19 = v9[6];
              if (v19)
              {
                CFRelease(v19);
                v9[6] = 0;
              }

              v20 = CFRetain(a4);
              result = 0;
              v9[6] = v20;
            }
          }

          else
          {
            v17 = v9[4];
            if (v17)
            {
              CFRelease(v17);
              v9[4] = 0;
            }

            v18 = CFRetain(a4);
            result = 0;
            v9[4] = v18;
          }
        }

        else
        {
          v15 = v9[5];
          if (v15)
          {
            CFRelease(v15);
            v9[5] = 0;
          }

          v16 = CFRetain(a4);
          result = 0;
          v9[5] = v16;
        }
      }

      else
      {
        v13 = v9[3];
        if (v13)
        {
          CFRelease(v13);
          v9[3] = 0;
        }

        v14 = CFRetain(a4);
        result = 0;
        v9[3] = v14;
      }
    }

    else
    {
      v11 = v9[2];
      if (v11)
      {
        CFRelease(v11);
        v9[2] = 0;
      }

      v12 = CFRetain(a4);
      result = 0;
      v9[2] = v12;
    }
  }

  else
  {
    AMAuthInstallUpdaterSetTags_cold_1(&v21, a5);
    return 2;
  }

  return result;
}

void _AddUpdaterTags(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, _AddTag, a3);
    v5 = *(a2 + 16);
    if (v5)
    {
      CFRelease(v5);
      *(a2 + 16) = 0;
    }
  }

  else
  {
    _AddUpdaterTags_cold_1(0);
  }
}

__CFDictionary *AMAuthInstallUpdaterCreateLocalResponse(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCreateLocalResponse_cold_2(a4);
    return v11;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterCreateLocalResponse_cold_1(a4);
    return v11;
  }

  v7 = a2[2];
  if (v7 && !CFDictionaryGetCount(v7))
  {
    if (AMAuthInstallUpdaterEmptyTicket(a1, a2, v8, &v11))
    {
LABEL_13:
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v9 = a2[9];
    if (!v9 || !a2[5])
    {
      goto LABEL_13;
    }

    if (!a3)
    {
      a3 = a2[2];
    }

    if (v9(a1, a2, a3, &v11))
    {
      goto LABEL_13;
    }
  }

  return v11;
}

uint64_t AMAuthInstallUpdaterEmptyTicket(const void *a1, uint64_t a2, uint64_t a3, __CFDictionary **a4)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", "amai is NULL", a4);
LABEL_16:
    v17 = 99;
    goto LABEL_10;
  }

  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", "updater is NULL", a4);
    goto LABEL_16;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", "response is NULL", 0);
    goto LABEL_16;
  }

  AMAuthInstallLog(6, "AMAuthInstallUpdaterEmptyTicket", "Updater library requested fake/empty ticket(s)");
  v8 = CFDataCreate(*MEMORY[0x29EDB8ED8], 0, 0);
  if (!v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", "Failed to create data for empty manifest", v7);
    goto LABEL_16;
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a4 = Mutable;
  if (!Mutable)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", "Failed to create dictionary for response", v11);
    goto LABEL_16;
  }

  Count = CFArrayGetCount(*(a2 + 40));
  if (Count >= 1)
  {
    v13 = Count;
    for (i = 0; i != v13; ++i)
    {
      v15 = *a4;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), i);
      CFDictionarySetValue(v15, ValueAtIndex, v8);
    }
  }

  v17 = 0;
LABEL_10:
  AMSupportSafeRelease();
  return v17;
}

uint64_t AMAuthInstallUpdaterPersonalize(void *a1, void *key, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    AMAuthInstallUpdaterPersonalize_cold_7(a4);
    return 0;
  }

  if (!key)
  {
    AMAuthInstallUpdaterPersonalize_cold_6(a4);
    return 0;
  }

  v7 = a1[57];
  if (!v7)
  {
    AMAuthInstallUpdaterPersonalize_cold_5(a4);
    return 0;
  }

  Value = CFDictionaryGetValue(v7, key);
  if (!Value)
  {
    AMAuthInstallUpdaterPersonalize_cold_4(a4);
    return 0;
  }

  v10 = Value;
  if (!Value[2])
  {
    AMAuthInstallUpdaterPersonalize_cold_3(a4);
    return 0;
  }

  v11 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v11, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  v15 = Mutable;
  v16 = CFGetAllocator(a1);
  cf = CFDictionaryCreateMutableCopy(v16, 0, *(v10 + 16));
  if (!cf)
  {
    AMAuthInstallUpdaterPersonalize_cold_2(a4);
LABEL_34:
    Response = 0;
LABEL_35:
    v13 = 0;
    goto LABEL_22;
  }

  v17 = a1[2];
  if (v17 && !*(v17 + 160) && *(v17 + 8))
  {
    AMSupportLogInternal(6, "AMAuthInstallUpdaterPersonalize", "Adding AP fusing information to coprocessor TSS request.");
    AMSupportCFDictionarySetInteger32();
    AMSupportCFDictionarySetInteger32();
    AMSupportCFDictionarySetBoolean();
    AMSupportCFDictionarySetBoolean();
  }

  v18 = a1[53];
  if (v18)
  {
    v19 = CFDictionaryGetValue(v18, @"UpdaterRequestEntries");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetAllocator(a1);
      if (AMAuthInstallSupportApplyDictionaryOverrides(v21, v20, &cf, 0))
      {
        AMAuthInstallUpdaterPersonalize_cold_1();
        goto LABEL_34;
      }
    }
  }

  CFDictionarySetValue(v15, @"UpdaterName", key);
  CFDictionarySetValue(v15, @"PersonalizedBundle", a3);
  Response = AMAuthInstallUpdaterCreateResponse(a1, v15, cf, a4);
  if (!Response)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    if (*(v10 + 40))
    {
      AMSupportLogInternal(6, "AMAuthInstallUpdaterPersonalize", "Stashing %@ ticket(s) in bundle (LoopInstance=%@)", key, *(v10 + 48));
      if (AMAuthInstallUpdaterWriteManifest(v10, key, a3, Response, a4) != 1)
      {
        goto LABEL_35;
      }
    }
  }

  v13 = AMSupportSafeRetain();
LABEL_22:
  CFRelease(v15);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Response)
  {
    CFRelease(Response);
  }

  return v13;
}

CFStringRef *AMAuthInstallUpdaterDeviceRestoreInfo(const __CFString *a1)
{
  result = _updater_named(a1);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

CFStringRef *_updater_named(CFStringRef theString1)
{
  if (theString1)
  {
    v2 = &updaterFunctions;
    v3 = 15;
    v4 = "Updater entry is NULL";
    while (*v2)
    {
      if (CFStringCompare(theString1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = "updaterName is NULL";
  }

  _updater_named_cold_1(v4);
  return 0;
}

CFStringRef *AMAuthInstallUpdaterTwoStageEnabled(const __CFString *a1)
{
  result = _updater_named(a1);
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

__CFDictionary *AMAuthInstallUpdaterCopyBuildIdentityTags(void *a1, const __CFString *a2, CFDictionaryRef theDict, const __CFString *a4, const void *a5, uint64_t a6)
{
  cf = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCopyBuildIdentityTags_cold_6(a6);
    return 0;
  }

  if (a2)
  {
    if (theDict)
    {
      if (a5)
      {
        Value = CFDictionaryGetValue(theDict, @"BuildIdentityTags");
        if (Value && (v13 = Value, v14 = CFGetTypeID(Value), v14 == CFArrayGetTypeID()))
        {
          if (!AMAuthInstallUpdaterSetTags(a1, a2, @"BuildIdentityTags", v13, a6))
          {
            v15 = CFDictionaryGetValue(theDict, @"ResponseTags");
            if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFArrayGetTypeID()))
            {
              if (!AMAuthInstallUpdaterSetTags(a1, a2, @"ResponseTags", v16, a6))
              {
                if (!AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a5, a4, &cf))
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (Mutable)
                  {
                    if (CFArrayGetCount(v13) >= 1)
                    {
                      v20 = 0;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v13, v20);
                        ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(0, cf, @"Manifest.%@", v22, v23, v24, v25, v26, ValueAtIndex);
                        if (ValueForKeyWithFormat || (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(0, cf, @"%@", v28, v29, v30, v31, v32, ValueAtIndex)) != 0)
                        {
                          CFDictionarySetValue(Mutable, ValueAtIndex, ValueForKeyWithFormat);
                        }

                        ++v20;
                      }

                      while (v20 < CFArrayGetCount(v13));
                    }
                  }

                  else
                  {
                    AMSupportCreateErrorInternal();
                  }

                  goto LABEL_14;
                }

                AMSupportCreateErrorInternal();
              }
            }

            else
            {
              AMAuthInstallUpdaterCopyBuildIdentityTags_cold_1(a6);
            }
          }
        }

        else
        {
          AMAuthInstallUpdaterCopyBuildIdentityTags_cold_2(a6);
        }
      }

      else
      {
        AMAuthInstallUpdaterCopyBuildIdentityTags_cold_3(a6);
      }
    }

    else
    {
      AMAuthInstallUpdaterCopyBuildIdentityTags_cold_4(a6);
    }
  }

  else
  {
    AMAuthInstallUpdaterCopyBuildIdentityTags_cold_5(a6);
  }

  Mutable = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t AMAuthInstallUpdaterSetInfo(uint64_t a1, const __CFString *a2, const void *a3, const __CFURL *a4, void *a5, uint64_t a6, const void *a7, const __CFURL *a8, CFTypeRef *a9, uint64_t a10)
{
  if (a4)
  {
    return _AMAuthInstallUpdaterSetInfoWithUARPCallbacks(0, a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, _AMAuthInstallUpdaterCopyBuildIdentityTags_wrapper, 0, 0, a10);
  }

  AMAuthInstallUpdaterSetInfo_cold_1(a10);
  return 99;
}

uint64_t _AMAuthInstallUpdaterSetInfoWithUARPCallbacks(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFURL *a5, void *a6, uint64_t a7, const void *a8, const __CFURL *a9, CFTypeRef *a10, CFTypeRef *a11, CFTypeRef *a12, uint64_t (*a13)(uint64_t, uint64_t, const __CFString *, const __CFDictionary *, uint64_t, uint64_t, CFTypeRef *), uint64_t (*a14)(uint64_t, uint64_t, const __CFString *, __CFDictionary *, uint64_t, uint64_t), uint64_t (*a15)(uint64_t, CFTypeRef *), uint64_t a16)
{
  v16 = a2;
  v17 = a16;
  v85[0] = 0;
  if (!a2)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_7(a16);
    v19 = 0;
    v20 = 0;
    v36 = 0;
    v35 = 0;
    v24 = 0;
    v32 = 0;
LABEL_136:
    v37 = 99;
    goto LABEL_109;
  }

  if (!a3)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_6(a16);
    v19 = 0;
LABEL_133:
    v20 = 0;
LABEL_135:
    v36 = 0;
    v35 = 0;
    v24 = 0;
    v32 = 0;
    v16 = 0;
    goto LABEL_136;
  }

  v19 = a4;
  if (!a4)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_5(a16);
    goto LABEL_133;
  }

  v20 = a13;
  if (!a13)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_4(a16);
    v19 = 0;
    goto LABEL_135;
  }

  if (*(a2 + 472))
  {
    v83 = *(a2 + 480) != 0;
  }

  else
  {
    v83 = 0;
  }

  v23 = AMSupportSafeRetain();
  v24 = AMSupportSafeRetain();
  v25 = _updater_named(a3);
  if (v25)
  {
    v27 = v25[1];
    v26 = v25[2];
    v29 = v25[3];
    v28 = v25[4];
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v29 = 0;
    v28 = 0;
  }

  if (v83 || v27 && v26 && v29)
  {
    v74 = v29;
    v75 = v26;
    v73 = v28;
    value = a6;
    v82 = v17;
    v30 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v32 = Mutable;
    if (Mutable)
    {
      v84 = Mutable;
      v77 = v24;
      if (a5)
      {
        v33 = AMAuthInstallUpdater(v16, a3, a5, v82);
        if (!v33)
        {
          _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_1(v82);
          v16 = 0;
          v32 = 0;
          v35 = 0;
          v36 = 0;
          v20 = 0;
          v19 = 0;
          v37 = 99;
          v38 = v23;
LABEL_107:
          CFRelease(v84);
          if (!v38)
          {
            goto LABEL_109;
          }

          goto LABEL_108;
        }

        v34 = v33;
        if (a8)
        {
          CFDictionarySetValue(v32, @"Options", a8);
          if (!*(v34 + 56))
          {
            *(v34 + 56) = CFRetain(a8);
          }
        }
      }

      else
      {
        if (a8)
        {
          CFDictionarySetValue(Mutable, @"Options", a8);
        }

        v34 = 0;
      }

      v38 = v23;
      if (!a15 || (v39 = a15(a1, v85)) == 0)
      {
        v39 = CFDictionaryCreate(v30, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        AMSupportLogInternal(6, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "No Manifest entry in the receipt, passing empty dictionary.");
      }

      v76 = v39;
      CFDictionarySetValue(v84, @"ReceiptManifest", v39);
      if (value)
      {
        CFDictionarySetValue(v84, @"DestBundlePath", value);
      }

      CFDictionarySetValue(v84, @"DeviceInfo", v19);
      if (CFDictionaryGetCount(*(v16 + 464)) >= 1)
      {
        CFDictionaryAddValue(v84, @"SharedInfo", *(v16 + 464));
      }

      if (v34)
      {
        _AMAuthInstallUpdaterInitLocalSigning(v34, a3);
        if (*(v34 + 72))
        {
          if (!*(v34 + 80))
          {
            AMAuthInstallLog(5, "AMAuthInstallUpdaterBehaviorOverrides", "Updater %@ forced for local signing by host tools.", a3);
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(v19))
          {
            v41 = CFDictionaryGetValue(v19, *(v34 + 80));
            if (v41)
            {
              v42 = v41;
              v43 = CFBooleanGetTypeID();
              v44 = v43 == CFGetTypeID(v42);
              v38 = v23;
              if (v44)
              {
                v45 = CFBooleanGetValue(v42);
                *(v34 + 64) = v45;
                v46 = "local";
                if (!v45)
                {
                  v46 = "server";
                }

                AMAuthInstallLog(5, "AMAuthInstallUpdaterBehaviorOverrides", "Updater %@ requested %s signing.", a3, v46);
              }
            }
          }
        }
      }

      if (!v38)
      {
        v38 = v27(v84, _logSinkCallback, a3, v85);
        if (!v38)
        {
          AMSupportCreateErrorInternal();
          AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "%@ updater getTags call failed, error=%@", a3, v85[0]);
          v16 = 0;
          v32 = 0;
          v35 = 0;
          v36 = 0;
          v19 = 0;
          v37 = 99;
          v20 = v76;
          v24 = v77;
          goto LABEL_107;
        }
      }

      v47 = CFDictionaryGetValue(v38, @"ResponseTags");
      v24 = v77;
      if (v47 && AMAuthInstallUpdaterSetTags(v16, a3, @"ResponseTags", v47, v85) || (v48 = CFDictionaryGetValue(v38, @"LoopInstance")) != 0 && AMAuthInstallUpdaterSetTags(v16, a3, @"LoopInstance", v48, v85))
      {
        AMSupportCreateErrorInternal();
        v16 = 0;
        v32 = 0;
        v35 = 0;
        v36 = 0;
        v19 = 0;
LABEL_53:
        v37 = 99;
        v20 = v76;
        goto LABEL_107;
      }

      v49 = a11;
      if (a11)
      {
        *v49 = CFRetain(v38);
      }

      v19 = v20(a1, v16, a3, v38, a7, a5, v85);
      if (!v19)
      {
        AMSupportCreateErrorInternal();
        v16 = 0;
        v32 = 0;
        v35 = 0;
        v36 = 0;
        goto LABEL_53;
      }

      v50 = a14;
      CFDictionarySetValue(v84, @"BuildIdentity", v19);
      if (v50)
      {
        v71 = v38;
        v51 = CFDictionaryGetValue(v38, @"BuildIdentityTags");
        if (v51)
        {
          v52 = v51;
          v53 = CFGetTypeID(v51);
          if (v53 == CFArrayGetTypeID())
          {
            theDict = CFDictionaryCreateMutable(v30, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            if (theDict)
            {
              if (CFArrayGetCount(v52) >= 1)
              {
                v54 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v52, v54);
                  v56 = CFDictionaryGetValue(v19, ValueAtIndex);
                  if (v56)
                  {
                    v57 = CFGetTypeID(v56);
                    if (v57 == CFDictionaryGetTypeID())
                    {
                      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
                      if (ValueForKeyPathInDict)
                      {
                        v59 = ValueForKeyPathInDict;
                        v60 = CFGetTypeID(ValueForKeyPathInDict);
                        if (v60 == CFStringGetTypeID())
                        {
                          CFDictionaryAddValue(theDict, ValueAtIndex, v59);
                        }
                      }
                    }
                  }

                  else
                  {
                    AMSupportLogInternal(4, "_CopyFileTagsFromRequestedTags", "Requested tag %@ not found in manifest, ignoring.", ValueAtIndex);
                  }

                  ++v54;
                }

                while (v54 < CFArrayGetCount(v52));
              }

              v61 = v82;
              v32 = v50(a1, v16, a3, theDict, a7, v82);
              if (!v32)
              {
                AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "%@ updater bundleCopierCallback returned NULL.", a3);
                v35 = 0;
                v36 = 0;
                v37 = 99;
                v24 = v77;
                v38 = v71;
                goto LABEL_106;
              }

              CFDictionarySetValue(v84, @"BundleDataDict", v32);
              Count = CFDictionaryGetCount(v32);
              v63 = a9;
              v24 = v77;
              v38 = v71;
              if (Count != 1 || a9)
              {
LABEL_79:
                if (v63)
                {
                  v64 = @"FirmwareData";
                }

                else
                {
                  v63 = a5;
                  if (!a5)
                  {
LABEL_84:
                    if (v83)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v36 = v75(v84, _logSinkCallback, a3, v85);
                      if (!v36)
                      {
                        AMSupportCreateErrorInternal();
                        AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "%@ updater copyFirmware call failed, error=%@", a3, v85[0]);
                        goto LABEL_104;
                      }

                      v65 = a10;
                      CFDictionarySetValue(v84, @"FirmwareData", v36);
                      if (v65)
                      {
                        AMSupportSafeRelease();
                        *v65 = CFRetain(v36);
                      }
                    }

                    if (!v24)
                    {
                      v24 = v74(v84, _logSinkCallback, a3, v85);
                      if (!v24)
                      {
                        AMSupportCreateErrorInternal();
                        AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "%@ updater createRequest call failed, error=%@", a3, v85[0]);
                        goto LABEL_104;
                      }
                    }

                    v66 = a12;
                    if (a12)
                    {
                      AMSupportSafeRelease();
                      *v66 = CFRetain(v24);
                    }

                    if (AMAuthInstallUpdaterSetTags(v16, a3, @"RequestTags", v24, v85))
                    {
                      AMSupportCreateErrorInternal();
                      goto LABEL_104;
                    }

                    if (value && !AMAuthInstallUpdaterSaveToReceipt(v16, a3, value, v61))
                    {
                      goto LABEL_104;
                    }

                    v67 = v83;
                    if (!v73)
                    {
                      v67 = 1;
                    }

                    if ((v67 & 1) == 0)
                    {
                      v69 = CFDictionaryGetTypeID();
                      if (v69 == CFGetTypeID(*(v16 + 464)))
                      {
                        v35 = v73(v84, _logSinkCallback, a3, v85);
                        if (v35)
                        {
                          CFDictionarySetValue(*(v16 + 464), a3, v35);
                          v37 = 0;
                          goto LABEL_106;
                        }

                        AMSupportCreateErrorInternal();
                        AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "%@ updater getSharedInfo call failed, error=%@", a3, v85[0]);
                        goto LABEL_105;
                      }

                      _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_3(v82);
LABEL_104:
                      v35 = 0;
LABEL_105:
                      v37 = 99;
                      goto LABEL_106;
                    }

                    v37 = 0;
                    v35 = 0;
LABEL_106:
                    v20 = v76;
                    v16 = theDict;
                    goto LABEL_107;
                  }

                  v64 = @"BundlePath";
                }

                CFDictionarySetValue(v84, v64, v63);
                goto LABEL_84;
              }

              CFDictionaryGetKeysAndValues(v32, 0, &a9);
              AMSupportLogInternal(6, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "One file fetched from host and no override, setting as override.");
LABEL_78:
              v63 = a9;
              goto LABEL_79;
            }

            v70 = "resultDict is NULL";
            v24 = v77;
          }

          else
          {
            v70 = "buildIdentityTags not an array";
          }
        }

        else
        {
          v70 = "updaterTags missing buildIdentityTags";
        }

        _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_2(v70);
        v32 = 0;
        theDict = 0;
        v38 = v71;
      }

      else
      {
        v32 = 0;
        theDict = 0;
      }

      v61 = v82;
      goto LABEL_78;
    }

    AMSupportCreateErrorInternal();
    v16 = 0;
    v35 = 0;
    v36 = 0;
    v20 = 0;
    v19 = 0;
    v37 = 99;
  }

  else
  {
    AMSupportCreateErrorInternal();
    AMSupportLogInternal(3, "_AMAuthInstallUpdaterSetInfoWithUARPCallbacks", "Mismatched Host Tools.  No updater defined for %@. Please make sure you are running tools from an iOS train or one that matches your device.", a3, a3);
    v16 = 0;
    v32 = 0;
    v35 = 0;
    v36 = 0;
    v20 = 0;
    v19 = 0;
    v37 = 26;
  }

  v38 = v23;
  if (v23)
  {
LABEL_108:
    CFRelease(v38);
  }

LABEL_109:
  if (v85[0])
  {
    CFRelease(v85[0]);
    v85[0] = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v37;
}

uint64_t AMAuthInstallUpdaterRestoreInfoSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 472);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 472) = 0;
    }

    v5 = *(a1 + 480);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 480) = 0;
    }

    *(a1 + 472) = AMSupportSafeRetain();
    v6 = AMSupportSafeRetain();
    result = 0;
    *(a1 + 480) = v6;
  }

  else
  {
    AMAuthInstallUpdaterRestoreInfoSet_cold_1(0);
    return 1;
  }

  return result;
}

uint64_t _AMAuthInstallUpdaterClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallUpdaterTypeID = result;
  return result;
}

__CFString *_AMAuthInstallUpdaterCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (*(a1 + 64))
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  CFStringAppendFormat(Mutable, 0, @"<AMAuthInstallUpdater %p>: localSigning=%@ \n", a1, v5);
  CFStringAppendFormat(v4, 0, @"\tresponseTags = %@\n", *(a1 + 40));
  if (*(a1 + 32))
  {
    CFStringAppendFormat(v4, 0, @"\tbuildIdentityTags = %@\n", *(a1 + 32));
  }

  if (*(a1 + 16))
  {
    CFStringAppendFormat(v4, 0, @"\trequestTags = %@\n", *(a1 + 16));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(v4, 0, @"\tresponseTags = %@\n", *(a1 + 40));
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(v4, 0, @"\tupdaterOptions = %@\n", *(a1 + 56));
  }

  return v4;
}

uint64_t _CanaryLocalSign(const void *a1, uint64_t a2, const __CFDictionary *a3, __CFDictionary **a4)
{
  if (!a1)
  {
    v26 = "amai is NULL";
LABEL_29:
    _CanaryLocalSign_cold_1(v26);
    return 99;
  }

  if (!a2)
  {
    v26 = "updater is NULL";
    goto LABEL_29;
  }

  if (!a3)
  {
    v26 = "request is NULL";
    goto LABEL_29;
  }

  if (!a4)
  {
    v26 = "response is NULL";
    goto LABEL_29;
  }

  AMAuthInstallLog(8, "_CanaryLocalSign", "Test updater requested fake/empty ticket(s)");
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a4 = Mutable;
  if (!Mutable)
  {
    v26 = "Failed to create dictionary for response";
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a3, @"QueryLoop0");
  if (!Value)
  {
    v26 = "QueryLoop0 not in request";
    goto LABEL_29;
  }

  v11 = Value;
  v12 = CFGetAllocator(a1);
  v13 = CFDataCreateMutable(v12, 0);
  if (!v13)
  {
    v26 = "fakeTicket is NULL";
    goto LABEL_29;
  }

  v14 = v13;
  v15 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v15)
  {
    v26 = "fakeTicketDict is NULL";
    goto LABEL_29;
  }

  v16 = v15;
  bytes = 0;
  if (v11 == *MEMORY[0x29EDB8F00])
  {
    v17 = 1;
    goto LABEL_13;
  }

  if (v11 == *MEMORY[0x29EDB8EF8])
  {
    v17 = 2;
LABEL_13:
    bytes = v17;
  }

  CFDataAppendBytes(v14, &bytes, 1);
  CFDataAppendBytes(v14, &bytes, 1);
  CFDataAppendBytes(v14, &bytes, 1);
  CFDataAppendBytes(v14, &bytes, 1);
  Count = CFArrayGetCount(*(a2 + 40));
  if (Count >= 1)
  {
    v19 = Count;
    for (i = 0; i != v19; ++i)
    {
      v21 = v14;
      if (!i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), 0);
        CFDictionarySetValue(v16, ValueAtIndex, v14);
        v21 = v16;
      }

      v23 = *a4;
      v24 = CFArrayGetValueAtIndex(*(a2 + 40), i);
      CFDictionarySetValue(v23, v24, v21);
    }
  }

  return 0;
}

__CFDictionary *_CanaryGetTags(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    _CanaryGetTags_cold_4(a4);
LABEL_12:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
  if (!v8)
  {
    _CanaryGetTags_cold_3(a4);
    goto LABEL_12;
  }

  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v9)
  {
    Value = CFDictionaryGetValue(a1, @"DeviceInfo");
    if (Value)
    {
      v11 = Value;
      CFArrayAppendValue(Mutable, @"TestFirmware");
      CFArrayAppendValue(v8, @"Test,Ticket,1");
      CFArrayAppendValue(v8, @"Test,Ticket,2");
      if (CFDictionaryGetValue(v11, @"QueryLoop0") == *MEMORY[0x29EDB8F00])
      {
        v12 = @"InstanceA";
      }

      else
      {
        v12 = @"InstanceB";
      }

      CFDictionarySetValue(v9, @"LoopInstance", v12);
      CFDictionarySetValue(v9, @"BuildIdentityTags", Mutable);
      CFDictionarySetValue(v9, @"ResponseTags", v8);
    }

    else
    {
      _CanaryGetTags_cold_1(a4);
    }
  }

  else
  {
    _CanaryGetTags_cold_2(a4);
  }

LABEL_9:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v9;
}

__CFDictionary *_CanaryCopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"FirmwareEntry1", @"PlaceholderData");
    CFDictionaryAddValue(v6, @"FirmwareEntry2", @"PlaceholderData");
  }

  else
  {
    _CanaryCopyFirmware_cold_1(a4);
  }

  return v6;
}

__CFDictionary *_CanaryCreateRequest(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(a1, @"DeviceInfo");
    if (Value)
    {
      v8 = CFDictionaryGetValue(Value, @"QueryLoop0");
      if (v8)
      {
        CFDictionarySetValue(Mutable, @"QueryLoop0", v8);
      }
    }

    else
    {
      _CanaryCreateRequest_cold_1(a4);
    }
  }

  else
  {
    _CanaryCreateRequest_cold_2(a4);
  }

  return Mutable;
}

uint64_t __AMAuthInstallVinylFwReaderInfoPlistCallback(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  data = 0;
  v4 = *(a1 + 16);
  if (v4 && CFStringHasSuffix(theString, v4))
  {
    v14 = 0;
    PathComponent = _AMAuthInstallVinylGetPathComponent(theString);
    if (PathComponent)
    {
      if (!BbfwReaderFindAndCopyFileData(a3, theString, &data))
      {
        v12 = *MEMORY[0x29EDB8ED8];
        v9 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &v14);
        if (v9 && ((Mutable = *(a1 + 56)) != 0 || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (*(a1 + 56) = Mutable) != 0)))
        {
          CFDictionaryAddValue(Mutable, PathComponent, v9);
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_11;
      }

      __AMAuthInstallVinylFwReaderInfoPlistCallback_cold_1();
    }

    v10 = 0;
    v9 = 0;
LABEL_11:
    v7 = data;
    goto LABEL_4;
  }

  v7 = 0;
  PathComponent = 0;
  v9 = 0;
  v10 = 1;
LABEL_4:
  SafeRelease(v7);
  SafeRelease(PathComponent);
  SafeRelease(v9);
  return v10;
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1)
{

  return DEREncoderAddData();
}

uint64_t BbfwWriterAddFile(uint64_t a1, CFStringRef theString, const __CFData *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    v6 = amai_zipOpenNewFileInZip(a1, buffer, 0, 0, 0, 0, 0, "", 8, -1);
    if (v6)
    {
      v12 = BbfwWriterErrorFromZipStat(v6, 5000);
      AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to open file in zip: %s");
    }

    else
    {
      BytePtr = CFDataGetBytePtr(a3);
      if (BytePtr)
      {
        v8 = BytePtr;
        Length = CFDataGetLength(a3);
        v10 = amai_zipWriteInFileInZip(a1, v8, Length);
        if (v10)
        {
          v12 = BbfwWriterErrorFromZipStat(v10, 5001);
          __error();
          AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to write file in zip %s with error: %d %d");
        }

        else
        {
          v11 = amai_zipCloseFileInZip(a1);
          if (v11)
          {
            v12 = BbfwWriterErrorFromZipStat(v11, 5002);
            __error();
            AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to close file in zip %s with error: %d %d");
          }

          else
          {
            AMAuthInstallLog(7, "BbfwWriterAddFile", "Added bbfw file : %@", theString);
            return 0;
          }
        }
      }

      else
      {
        AMAuthInstallLog(3, "BbfwWriterAddFile", "FileData byte pointer is NULL: %s", buffer);
        return 4;
      }
    }
  }

  else
  {
    BbfwWriterAddFile_cold_1();
    return 3;
  }

  return v12;
}

uint64_t BbfwWriterErrorFromZipStat(uint64_t a1, uint64_t a2)
{
  if (a1 > -5)
  {
    if (a1 <= -3)
    {
      if (a1 == -4)
      {
        return 5008;
      }

      else
      {
        return 5007;
      }
    }

    switch(a1)
    {
      case 0xFFFFFFFE:
        return 5006;
      case 0:
        return a1;
      case 0xFFFFFFFF:
        v2 = *__error();
        if ((v2 - 199) > 0xFFFFFF39)
        {
          return (v2 + 5100);
        }

        return 5003;
    }
  }

  else
  {
    if (a1 > -103)
    {
      if (a1 != -102)
      {
        if (a1 == -6)
        {
          return 5010;
        }

        if (a1 == -5)
        {
          return 5009;
        }

        return a2;
      }

      return 5003;
    }

    if (a1 == -104)
    {
      return 5005;
    }

    else if (a1 == -103)
    {
      return 5004;
    }
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return amai_unzGetCurrentFileInfo(a1, a2, a3, 0x400uLL, 0, 0, 0, 0);
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, uint64_t a4)
{
  if (!a1)
  {
    DERDecoderInitialize_cold_3();
  }

  if (!a2)
  {
    DERDecoderInitialize_cold_2();
  }

  if (!a3)
  {
    DERDecoderInitialize_cold_1();
  }

  v6 = a4;
  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > v6)
    {
      return 2;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = _DERDecodeTag(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = _DERDecodeLength(&a2[v11], v6 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v10 + v11 + HIDWORD(v13);
      if (__CFADD__(v10 + v11, HIDWORD(v13)))
      {
        return 6;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _DERDecodeTag(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    _DERDecodeTag_cold_5();
  }

  if (!a3)
  {
    _DERDecodeTag_cold_4();
  }

  if (!a4)
  {
    _DERDecodeTag_cold_3();
  }

  if (!a5)
  {
    _DERDecodeTag_cold_2();
  }

  if (!a6)
  {
    _DERDecodeTag_cold_1();
  }

  if (!a2)
  {
    return 3;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = a1 + 1;
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 6;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 3;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t _DERDecodeLength(char *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    _DERDecodeLength_cold_3();
  }

  if (!a3)
  {
    _DERDecodeLength_cold_2();
  }

  if (!a4)
  {
    _DERDecodeLength_cold_1();
  }

  if (!a2)
  {
    return 4;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 4;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = (a1 + 1);
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 6;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetDataWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!v14)
    {
      DERDecoderGetDataWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t _DERDecoderTraverseAllItems(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    _DERDecoderTraverseAllItems_cold_3();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = _DERDecodeTag(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_2();
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = _DERDecodeLength(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_1();
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 2;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 1)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataWithTagCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 1;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetEncodingWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      DERDecoderGetEncodingWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t Img4EncodeIMG4Tag(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (DEREncoderCreate())
    {
      EncodedBuffer = DEREncoderAddData();
      if (!EncodedBuffer)
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer();
      }

      v3 = EncodedBuffer;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  DEREncoderDestroy();
  return v3;
}

uint64_t _DEREncoderEncodeHeader(char a1, char a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v5 = 1;
  if (a4 && a5)
  {
    v11 = malloc(0x10uLL);
    if (v11)
    {
      *v11 = a2 | (a1 << 6) | 0x20;
      if (a3 > 0x7F)
      {
        v13 = 0;
        v17[0] = 0;
        do
        {
          *(v17 + v13++) = a3;
          v14 = a3 > 0xFF;
          a3 >>= 8;
        }

        while (v14);
        LODWORD(v12) = v11 + 1;
        if ((v13 - 1) <= 0xD)
        {
          v11[1] = v13 | 0x80;
          v12 = v11 + 2;
          do
          {
            *v12++ = *(&v17[-1] + v13-- + 7);
          }

          while (v13);
        }
      }

      else
      {
        v11[1] = a3;
        LODWORD(v12) = v11 + 2;
      }

      v15 = v12 - (v11 + 1);
      if (v15)
      {
        v5 = 0;
        *a5 = v15 + 1;
        *a4 = v11;
      }

      else
      {
        free(v11);
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

CFMutableArrayRef FlsParserCreate(const __CFAllocator *a1)
{
  pthread_once(&_FlsParserClassInitializeOnce, _FlsParserClassInitialize);
  result = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
  if (result)
  {
    v3 = result;
    v4 = operator new(0xCC8uLL);
    PRGSequencer::PRGSequencer(v4);
    result = _CFRuntimeCreateInstance();
    if (result)
    {
      *(result + 2) = v3;
      *(result + 3) = v4;
    }

    else
    {
      CFRelease(v3);
      PRGSequencer::~PRGSequencer(v4);
      operator delete(v5);
      return 0;
    }
  }

  return result;
}

uint64_t _FlsParserClassInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _FlsParserTypeID = result;
  return result;
}

uint64_t FlsParserReadFromData(uint64_t a1, CFDataRef theData)
{
  v3 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  PRGSequencer::ReadBuffer(v3, BytePtr, Length, 7, 0x20004u, 0);
  return 0;
}

uint64_t FlsParserCopyRamPsi(PRGSequencer **a1, CFDataRef *a2)
{
  v7 = 0;
  if (_FlsParserCopyDownloadItem(a1, 1, &v7, 0) && (v4 = _FlsParserCopyInjectedItem(a1, 18, a2), v4))
  {
    v5 = v4;
    AMAuthInstallLog(3, "FlsParserCopyRamPsi", "failed to copy RamPSI");
  }

  else
  {
    v5 = 0;
    *a2 = v7;
  }

  return v5;
}

uint64_t _FlsParserCopyDownloadItem(PRGSequencer **a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v14 = 0;
  v15 = 0;
  DownloadItem = _FlsParserFindDownloadItem(a1, a2, &v15, &v14);
  if (DownloadItem)
  {
    return DownloadItem;
  }

  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = CFGetAllocator(a1);
  ElementData = PRGSequencer::GetElementData(a1[3], *(v15 + 32));
  v10 = CFDataCreate(v8, ElementData, *(v15 + 28));
  if (!v10)
  {
    return 2;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = CFGetAllocator(a1);
  v12 = CFDataCreate(v11, (v14 + 524), 1536);
  if (!v12)
  {
    DownloadItem = 2;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (a3)
  {
    *a3 = CFRetain(v10);
  }

  if (a4)
  {
    DownloadItem = 0;
    *a4 = CFRetain(v12);
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  DownloadItem = 0;
  if (v10)
  {
LABEL_14:
    CFRelease(v10);
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  return DownloadItem;
}

uint64_t _FlsParserCopyInjectedItem(PRGSequencer **a1, int a2, CFDataRef *a3)
{
  ElementStructure = PRGSequencer::FindElementStructure(a1[3], a2, 0);
  if (ElementStructure)
  {
    v6 = ElementStructure;
    ElementData = PRGSequencer::GetElementData(a1[3], ElementStructure[6]);
    v8 = CFGetAllocator(a1);
    v9 = CFDataCreate(v8, ElementData, v6[5]);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *a3 = v10;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    AMAuthInstallLog(6, "_FlsParserCopyInjectedItem", "not found in this file");
    return 1;
  }

  return result;
}

uint64_t FlsParserReplaceEbl(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 19, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return _FlsParserSetInjectedItem(a1, 0x13u, a2);
  }

  else
  {

    return _FlsParserReplaceDownloadItem(a1, 3, a2);
  }
}

uint64_t _FlsParserSetInjectedItem(uint64_t a1, unsigned int a2, const __CFData *a3)
{
  if (!a1)
  {
    return 1;
  }

  Element = PRGSequencer::CreateElement(*(a1 + 24), a2);
  if (Element)
  {
    v7 = Element;
    v8 = *(a1 + 24);
    BytePtr = CFDataGetBytePtr(a3);
    v10 = PRGSequencer::RegisterElementData(v8, BytePtr);
    if (v10 != -1)
    {
      v11 = v10;
      CFArrayAppendValue(*(a1 + 16), a3);
      *v7 = a2;
      *(v7 + 4) = 32;
      Length = CFDataGetLength(a3);
      result = 0;
      *(v7 + 5) = Length;
      *(v7 + 6) = v11;
      return result;
    }

    PRGSequencer::RemoveElement(*(a1 + 24), v7);
  }

  return 2;
}

uint64_t _FlsParserReplaceDownloadItem(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v11 = 0;
  if (_FlsParserFindDownloadItem(a1, a2, &v11, 0))
  {
    return 1;
  }

  v6 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(a3);
  v8 = PRGSequencer::RegisterElementData(v6, BytePtr);
  if (v8 == -1)
  {
    return 2;
  }

  v9 = v8;
  CFArrayAppendValue(*(a1 + 16), a3);
  *(v11 + 32) = v9;
  Length = CFDataGetLength(a3);
  result = 0;
  *(v11 + 28) = Length;
  return result;
}

uint64_t FlsParserCopyEbl(PRGSequencer **a1, void *a2)
{
  v7 = 0;
  if (_FlsParserCopyDownloadItem(a1, 3, &v7, 0) && (v4 = _FlsParserCopyInjectedItem(a1, 19, &v7), v4))
  {
    v5 = v4;
    AMAuthInstallLog(3, "FlsParserCopyEbl", "failed to copy EBL");
  }

  else
  {
    v5 = 0;
    *a2 = v7;
  }

  return v5;
}

uint64_t FlsParserReplaceRamPsi(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 18, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return _FlsParserSetInjectedItem(a1, 0x12u, a2);
  }

  else
  {

    return _FlsParserReplaceDownloadItem(a1, 1, a2);
  }
}

uint64_t FlsParserCopyAsData(PRGSequencer **a1, CFTypeRef *a2)
{
  memset(length, 0, sizeof(length));
  v4 = AMAuthInstallSupportCopyAllocator();
  PRGSequencer::WriteToBuffer(a1[3], &length[1], length);
  if (*&length[1] && (v5 = CFGetAllocator(a1), (v6 = CFDataCreateWithBytesNoCopy(v5, *&length[1], length[0], v4)) != 0))
  {
    v7 = v6;
    *a2 = CFRetain(v6);
    CFRelease(v7);
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  SafeRelease(v4);
  return v8;
}

void _FlsParserFinalize(const void *a1)
{
  if (!a1)
  {
    _FlsParserFinalize();
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    PRGSequencer::~PRGSequencer(v2);
    operator delete(v3);
  }

  CFRelease(*(a1 + 2));
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
}

CFStringRef _FlsParserCopyFormattingDescription(const void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _FlsParserCopyFormattingDescription();
  }

  v4 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v4, a2, @"<FlsParser %p>", a1);
}

CFStringRef _FlsParserCopyDebugDescription(const void *a1)
{
  if (!a1)
  {
    _FlsParserCopyDebugDescription();
  }

  v2 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FlsParser %p>", a1);
}

uint64_t _FlsParserFindDownloadItem(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 16, 0);
  if (!ElementStructure)
  {
    AMAuthInstallLog(3, "_FlsParserFindDownloadItem", "no toc found in this file");
    return 1;
  }

  v9 = ElementStructure[3];
  ElementData = PRGSequencer::GetElementData(*(a1 + 24), ElementStructure[4]);
  if (!v9)
  {
LABEL_6:
    AMAuthInstallLog(3, "_FlsParserFindDownloadItem", "not found in this file");
    return 1;
  }

  v11 = (ElementData + 4);
  while (*v11 != a2)
  {
    v11 += 36;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v11 - 1);
  if (a3)
  {
    v14 = PRGSequencer::FindElementStructure(*(a1 + 24), 12, *(v11 - 1));
    if (!v14)
    {
      AMAuthInstallLog(3, "_FlsParserFindDownloadItem", "missing download data");
      return 1;
    }

    *a3 = v14;
  }

  if (a4)
  {
    v15 = PRGSequencer::FindElementStructure(*(a1 + 24), 15, v13);
    if (v15)
    {
      v16 = v15;
      result = 0;
      *a4 = v16;
      return result;
    }

    AMAuthInstallLog(3, "_FlsParserFindDownloadItem", "missing security pack");
    return 1;
  }

  return 0;
}

void IFWD_MemoryStream::IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 2) = 0;
}

void IFWD_MemoryStream::Clear(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::~IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::SetSize(IFWD_MemoryStream *this, int a2)
{
  if (a2 <= 0)
  {
    v9 = *this;
    if (*this)
    {
      operator delete[](v9);
      *this = 0;
      *(this + 2) = 0;
      *(this + 2) = 0;
    }
  }

  else
  {
    v4 = *(this + 2);
    if (a2 != v4)
    {
      v5 = operator new[]((a2 + 1));
      v6 = v5;
      v7 = *this;
      if (*this)
      {
        v8 = a2;
        if (a2 > v4)
        {
          bzero(&v5[v4], a2 - v4);
          v8 = v4;
        }

        memcpy(v6, v7, v8);
        operator delete[](v7);
      }

      else
      {
        bzero(v5, a2);
      }

      *(this + 2) = a2;
      *this = v6;
      *(this + 2) = v6;
    }
  }
}

void image3Discard(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        if ((*(v2 + 10) & 4) != 0)
        {
          free(*v2);
          v2 = *a1;
        }
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t image3Finalize(char **a1, char **a2, void *a3, int a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23 = 0uLL;
  v24 = 0;
  __n = 0;
  __src = 0;
  v17 = 0;
  v18 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

  result = image3AdvanceCursorWithZeroPad(a1, (56 - *(a1 + 6)) & 0x3F);
  if (!result)
  {
    v10 = *a1;
    v11 = *(a1 + 6);
    *(v10 + 3) = v11 + a5;
    v12 = v10 + 12;
    if (a5)
    {
      v22 = __PAIR64__(v11, a5);
      v13 = &v22;
      image3SHA1Partial(v12, v11 + 8, &v23);
      v14 = 28;
    }

    else
    {
      v13 = v21;
      image3SHA1Generate(v12, v11 + 8, v21);
      v14 = 20;
    }

    result = image3PKISignHash(v13, v14, &__src, &__n, &v18, &v17);
    if (!result)
    {
      if (!__n || (result = image3SetTagStructure(a1, 1397248840, __src, __n, 0), !result))
      {
        if (!v17 || (result = image3SetTagStructure(a1, 1128616532, v18, v17, 0), !result))
        {
          *(a1 + 2) |= 0x20000u;
LABEL_12:
          result = 0;
          v15 = *a1;
          *(v15 + 2) = *(a1 + 6);
          v16 = (*(a1 + 6) + 20);
          *(v15 + 1) = v16;
          *a2 = v15;
          *a3 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t image3AdvanceCursorWithZeroPad(char **a1, int a2)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  v4 = *(a1 + 6);
  v3 = *(a1 + 7);
  LODWORD(v5) = v4 + a2;
  *(a1 + 6) = v4 + a2;
  v6 = *a1;
  if (v3 != -1)
  {
    *&v6[v3 + 24] = v5 - v3;
    LODWORD(v5) = *(a1 + 6);
  }

  v5 = v5;
  v7 = (v5 + 20);
  if (v7 <= a1[2])
  {
    goto LABEL_7;
  }

  v6 = realloc(v6, v5 + 20);
  if (v6)
  {
    *a1 = v6;
    a1[2] = v7;
    v5 = *(a1 + 6);
LABEL_7:
    bzero(&v6[v4 + 20], v5 - v4);
    result = 0;
    *(*a1 + 2) = *(a1 + 6);
    return result;
  }

  return 12;
}

uint64_t image3SetTagStructure(char **a1, int a2, void *__src, size_t __n, int a5)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  if (a5)
  {
    v9 = *(a1 + 7);
    v10 = (a5 + *(a1 + 6) / a5 * a5 - *(a1 + 6)) % a5 + *(a1 + 6);
    *(a1 + 6) = v10;
    v11 = *a1;
    if (v9 != -1)
    {
      *&v11[v9 + 24] = v10 - v9;
    }
  }

  else
  {
    v11 = *a1;
  }

  if ((__n & 0xF) != 0)
  {
    v13 = 16 - (__n & 0xF);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 6);
  v15 = (__n + v13 + v14 + 32);
  if (v15 > a1[2])
  {
    v11 = realloc(v11, __n + v13 + v14 + 32);
    if (!v11)
    {
      return 12;
    }

    *a1 = v11;
    a1[2] = v15;
    v14 = *(a1 + 6);
  }

  v16 = &v11[v14];
  if (((v13 + __n) & 3) != 0)
  {
    v17 = ((v13 + __n) & 0xFFFFFFFC) + 16;
  }

  else
  {
    v17 = v13 + __n + 12;
  }

  *(v16 + 5) = a2;
  *(v16 + 6) = v17;
  *(v16 + 7) = __n;
  memcpy(v16 + 32, __src, __n);
  bzero(&v16[__n + 32], v13);
  result = 0;
  v18 = *(a1 + 6);
  *(a1 + 7) = v18;
  v19 = *(v16 + 6) + v18;
  *(a1 + 6) = v19;
  *(*a1 + 2) = v19;
  return result;
}

uint64_t image3InstantiateFromBuffer(void *a1, _DWORD *a2, unint64_t a3, char a4)
{
  if (a3 < 0x14)
  {
    return 22;
  }

  if (*a2 != 1231906611)
  {
    return 22;
  }

  v6 = a2[2];
  if (a3 - 20 < v6)
  {
    return 22;
  }

  v7 = a2[3];
  if (v7 > v6 || v6 + 20 > a2[1])
  {
    return 22;
  }

  v11 = malloc(0x28uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v13 = 262145;
  *(v11 + 2) = 1;
  v11[4] = 0;
  if (v7)
  {
    *(v11 + 2) = 131073;
    if ((a4 & 1) == 0)
    {
      *v11 = a2;
      v11[2] = a3;
      goto LABEL_22;
    }

    v13 = 393217;
    goto LABEL_19;
  }

  *(v11 + 6) = v6;
  *(v11 + 7) = -1;
  if (!v6)
  {
LABEL_19:
    v11[2] = v6 + 20;
    v17 = malloc(v6 + 20);
    *v12 = v17;
    if (v17)
    {
      memcpy(v17, a2, v6 + 20);
      v12[2] = v13;
LABEL_22:
      result = 0;
      *a1 = v12;
      return result;
    }

    free(v12);
    return 12;
  }

  v14 = 0;
  while (1)
  {
    v15 = v14;
    v16 = *(a2 + v14 + 24);
    v14 += v16;
    if (v14 > v6 || v16 <= 0xB)
    {
      break;
    }

    if (v14 == v6)
    {
      *(v11 + 7) = v15;
      goto LABEL_19;
    }
  }

  free(v11);
  return 22;
}

uint64_t image3GetTagStruct(uint64_t *a1, int a2, void *a3, void *a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  if (!v6)
  {
    return 2;
  }

  v7 = v5 + v6 + 20;
  v8 = (v5 + 20);
  while (1)
  {
    v9 = v8 + 3;
    if ((v8 + 3) > v7)
    {
      return 22;
    }

    v10 = v8[2];
    if (v9 + v10 > v7)
    {
      return 22;
    }

    if (a2 == -1 || *v8 == a2)
    {
      break;
    }

LABEL_9:
    v11 = v8[1];
    if (v10 + 12 > v11)
    {
      return 22;
    }

    v8 = (v8 + v11);
    if (v8 >= v7)
    {
      return 2;
    }
  }

  if (a5)
  {
    --a5;
    goto LABEL_9;
  }

  if (a4)
  {
    if (*a4 && *a4 != v10)
    {
      return 22;
    }

    *a4 = v10;
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t image3GetTagSignedNumber(uint64_t *a1, int a2, void *a3, int a4)
{
  v7 = 0;
  v8 = 0;
  result = image3GetTagStruct(a1, a2, &v8, &v7, a4);
  if (!result)
  {
    if (v7 == 8)
    {
      v6 = *v8;
      goto LABEL_6;
    }

    if (v7 == 4)
    {
      v6 = *v8;
LABEL_6:
      result = 0;
      *a3 = v6;
      return result;
    }

    return 22;
  }

  return result;
}

uint64_t image3GetTagString(uint64_t *a1, int a2, void *a3, int a4)
{
  v10 = 0;
  v11 = 0;
  result = image3GetTagStruct(a1, a2, &v11, &v10, a4);
  if (!result)
  {
    if (v10 >= 8 && (v6 = v11, v7 = *v11, v10 >= v7 + 4))
    {
      v8 = malloc(v7 + 1);
      if (v8)
      {
        v9 = v8;
        memcpy(v8, v6 + 1, v7);
        result = 0;
        v9[v7] = 0;
        *a3 = v9;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t PRGH_GetLongFromLong(uint64_t result)
{
  v1 = bswap32(result);
  if (mach_endian == 2)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t PRGH_GetEndian(char *a1)
{
  if (*a1 == 1000)
  {
    return 1;
  }

  else
  {
    return 2 * (*a1 == -402456576);
  }
}

uint64_t PRGH_FileCheck(char *a1)
{
  v1 = *a1;
  v2 = 2 * (*a1 == -402456576);
  if (*a1 == 1000)
  {
    v2 = 1;
  }

  mach_endian = v2;
  v3 = *a1;
  v4 = bswap32(*a1);
  if (v1 == -402456576)
  {
    v3 = v4;
  }

  if (v3 != 1000)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = bswap32(*(a1 + 1));
  v6 = v1 == -402456576 ? v5 : *(a1 + 1);
  if (v6 != 40)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 2);
  v8 = bswap32(v7);
  if (v1 == -402456576)
  {
    v7 = v8;
  }

  if (v7)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 3);
  v12 = bswap32(v11);
  if (v1 == -402456576)
  {
    v11 = v12;
  }

  v9 = 0xFFFFFFFFLL;
  if (v11 && (v11 & 0xFE) <= 5)
  {
    v13 = *(a1 + 4);
    v14 = bswap32(v13);
    if (v1 == -402456576)
    {
      v13 = v14;
    }

    if (v13 == 1765222897)
    {
      return v11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t PRGH_VersionCheck(char *a1, int a2, unsigned int a3)
{
  v11 = 0;
  if (!PRGH_GetElementIndex(a1, a2, 0, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = &a1[v11];
  v6 = *(v5 + 1);
  v7 = bswap32(v6);
  if (mach_endian == 2)
  {
    v6 = v7;
  }

  if (v6 != 20)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v5 + 3);
  v9 = bswap32(v8);
  if (mach_endian == 2)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

  if (result <= a3 && HIWORD(a3) <= WORD1(result))
  {
    return 0;
  }

  return result;
}

uint64_t PRGH_GetElementIndex(char *a1, int a2, int a3, unsigned int *a4)
{
  v4 = 0;
  *a4 = -1;
  v5 = a1;
  while (1)
  {
    v6 = *v5;
    v7 = bswap32(*v5);
    if (mach_endian == 2)
    {
      v6 = v7;
    }

    if (v6 == a2)
    {
      v8 = v5[2];
      v9 = bswap32(v8);
      if (mach_endian == 2)
      {
        v8 = v9;
      }

      if (v8 == a3)
      {
        break;
      }
    }

    v10 = v5[1];
    if (v10)
    {
      v11 = bswap32(v10);
      if (mach_endian == 2)
      {
        v10 = v11;
      }

      v4 += v10;
      v5 = &a1[v4];
      if (v6 != 2)
      {
        continue;
      }
    }

    return 0;
  }

  *a4 = v4;
  return 1;
}

BOOL PRGH_GetNextElementIndex(char *a1, unsigned int *a2)
{
  v2 = *a2;
  *a2 = -1;
  v3 = *&a1[v2];
  v4 = bswap32(v3);
  if (mach_endian == 2)
  {
    v3 = v4;
  }

  if (v3 != 2)
  {
    v5 = *&a1[v2 + 4];
    v6 = bswap32(v5);
    if (mach_endian == 2)
    {
      v5 = v6;
    }

    *a2 = v5 + v2;
  }

  return v3 != 2;
}

uint64_t PRGH_WriteElement(IFWD_MemoryStream *a1, unsigned int a2, unsigned int a3, char *a4, unsigned int a5, const void *a6)
{
  v12 = a5 + 12;
  v13 = *(a1 + 2);
  v14 = v13 + a5 + 12;
  IFWD_MemoryStream::SetSize(a1, v14);
  v17 = (*(a1 + 2) + v13);
  if (mach_endian == 2)
  {
    CalledByWrite = 1;
    PRGH_SwapElementEndian((a4 - 12), a2, a6, v15, v16);
    CalledByWrite = 0;
    v18 = mach_endian == 2;
    v19 = bswap32(v14);
    if (mach_endian == 2)
    {
      v14 = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = a5;
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0 || ((1 << a2) & 0x3800000) != 0)
    {
      *(a4 + 1) = 0;
      v21 = 8;
      v22 = a4;
      goto LABEL_15;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      *(a4 + 3) = 0;
      v22 = a4 + 8;
      v21 = 16;
      goto LABEL_15;
    }
  }

  if (a2 != 16)
  {
    if (a2 != 12)
    {
      v24 = 0;
      v23 = 0;
LABEL_16:
      v25 = bswap32(v23);
      if (v18)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      goto LABEL_19;
    }

    *(a4 + 5) = 0;
    v22 = a4 + 16;
    v21 = 24;
LABEL_15:
    v23 = *v22;
    *&a4[v21] = v14;
    v24 = 1;
    goto LABEL_16;
  }

  v41 = *a4;
  v42 = bswap32(*a4);
  if (v18)
  {
    v41 = v42;
  }

  v26 = 144 * v41;
  *(a4 + 1) = 0;
  *(a4 + 2) = v14;
  v24 = 1;
LABEL_19:
  v27 = a2 >> 8;
  v28 = HIBYTE(a2);
  v29 = !v18;
  if (v18)
  {
    v30 = a2;
  }

  else
  {
    v30 = HIBYTE(a2);
  }

  if (v29)
  {
    v31 = BYTE1(a2);
  }

  else
  {
    v31 = BYTE2(a2);
  }

  if (v29)
  {
    LOBYTE(v28) = a2;
  }

  *v17 = v28;
  v17[1] = v31;
  if (v29)
  {
    LOBYTE(v27) = BYTE2(a2);
  }

  v17[2] = v27;
  v17[3] = v30;
  if (v24)
  {
    v32 = v26 + v12;
    v33 = (v26 + v12) >> 8;
    if (mach_endian == 2)
    {
      v34 = (v26 + v12) >> 24;
    }

    else
    {
      v34 = v26 + v12;
    }

    if (mach_endian == 2)
    {
      v35 = (v26 + v12) >> 16;
    }

    else
    {
      v35 = (v26 + v12) >> 8;
    }

    if (mach_endian != 2)
    {
      LOBYTE(v33) = (v26 + v12) >> 16;
      v32 = (v26 + v12) >> 24;
    }
  }

  else
  {
    v33 = v12 >> 8;
    if (mach_endian == 2)
    {
      v34 = HIBYTE(v12);
    }

    else
    {
      v34 = v12;
    }

    if (mach_endian == 2)
    {
      v35 = BYTE2(v12);
    }

    else
    {
      v35 = BYTE1(v12);
    }

    if (mach_endian == 2)
    {
      v32 = v12;
    }

    else
    {
      LOBYTE(v33) = BYTE2(v12);
      v32 = HIBYTE(v12);
    }
  }

  v17[4] = v34;
  v17[5] = v35;
  v17[6] = v33;
  v17[7] = v32;
  v36 = a3 >> 8;
  if (mach_endian == 2)
  {
    v37 = a3;
  }

  else
  {
    v37 = HIBYTE(a3);
  }

  if (mach_endian == 2)
  {
    v38 = BYTE1(a3);
  }

  else
  {
    v38 = BYTE2(a3);
  }

  if (mach_endian == 2)
  {
    LOBYTE(v36) = BYTE2(a3);
    v39 = HIBYTE(a3);
  }

  else
  {
    v39 = a3;
  }

  v17[8] = v39;
  v17[9] = v36;
  v17[10] = v38;
  v17[11] = v37;
  memcpy(v17 + 12, a4, v20);
  if (v24)
  {
    IFWD_MemoryStream::SetSize(a1, *(a1 + 2) + v26);
    memcpy((*(a1 + 2) + v13 + v12), a6, v26);
  }

  return 0;
}

uint64_t PRGH_SwapElementEndian(int8x16_t *a1, int a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5)
{
  switch(a2)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 26:
    case 27:
    case 28:
    case 30:
      for (i = 0; i != 5; ++i)
      {
        a4.i32[0] = a1->i32[i];
        v6 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v6, v6);
        a1->i32[i] = a4.i32[0];
      }

      return 0;
    case 11:
      swap_MemoryMapElementStructType_endian(a1, a4);
      return 0;
    case 12:
      swap_DownloadDataElementStructType_endian(a1, a4);
      return 0;
    case 13:
      swap_HardwareElementStructType_endian(a1, a4);
      return 0;
    case 14:
      for (j = 0; j != 287; ++j)
      {
        a4.i32[0] = a1->i32[j];
        v12 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v12, v12);
        a1->i32[j] = a4.i32[0];
      }

      return 0;
    case 15:
      swap_SecurityElementStructType_endian(a1, a4);
      return 0;
    case 16:
      swap_TocElementStructType_endian(a1, a3, a4, a5);
      return 0;
    case 17:
      for (k = 0; k != 7; ++k)
      {
        a4.i32[0] = a1->i32[k];
        v10 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v10, v10);
        a1->i32[k] = a4.i32[0];
      }

      return 0;
    case 18:
    case 19:
      swap_InjectionElementStructType_endian(a1, a4);
      return 0;
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      swap_VersionDataElementStructType_endian(a1, a4);
      return 0;
    case 29:
      swap_IndirectDownloadDataElementStructType_endian(a1, a4);
      return 0;
    default:
      if (a2 != 1000)
      {
        return 1;
      }

      for (m = 0; m != 10; ++m)
      {
        a4.i32[0] = a1->i32[m];
        v8 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v8, v8);
        a1->i32[m] = a4.i32[0];
      }

      return 0;
  }
}

uint64_t swap_VersionDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  a2.i32[0] = *(a1 + 12);
  v4 = vrev64_s16(*&vmovl_u8(a2));
  v5 = vuzp1_s8(v4, v4);
  *(a1 + 12) = v5.i32[0];
  v5.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(v5));
  *(a1 + 20) = vuzp1_s8(v6, v6).u32[0];
  return 1;
}

uint64_t swap_InjectionElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = *(a1 + 12);
  if (CalledByWrite == 1)
  {
    *(a1 + 12) = v4 << 16;
    v5 = *(a1 + 16) << 24;
  }

  else
  {
    *(a1 + 12) = HIWORD(v4);
    v5 = *(a1 + 19);
  }

  *(a1 + 16) = v5;
  a2.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(a2));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 20) = v7.i32[0];
  v7.i32[0] = *(a1 + 28);
  v8 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 28) = vuzp1_s8(v8, v8).u32[0];
  return 1;
}

uint64_t swap_DownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  if (CalledByWrite)
  {
    v7 = *(a1 + 24) << 16;
  }

  else
  {
    v7 = *(a1 + 24) >> 16;
  }

  *(a1 + 24) = v7;
  v6.i32[0] = *(a1 + 28);
  v8 = vrev64_s16(*&vmovl_u8(v6));
  v9 = vuzp1_s8(v8, v8);
  *(a1 + 28) = v9.i32[0];
  v9.i32[0] = *(a1 + 36);
  v10 = vrev64_s16(*&vmovl_u8(v9));
  *(a1 + 36) = vuzp1_s8(v10, v10).u32[0];
  return 1;
}

uint64_t swap_IndirectDownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  *(a1 + 24) <<= 16;
  v6.i32[0] = *(a1 + 28);
  v7 = vrev64_s16(*&vmovl_u8(v6));
  v8 = vuzp1_s8(v7, v7);
  *(a1 + 28) = v8.i32[0];
  v8.i32[0] = *(a1 + 36);
  v9 = vrev64_s16(*&vmovl_u8(v8));
  *(a1 + 36) = vuzp1_s8(v9, v9).u32[0];
  return 1;
}

uint64_t swap_HardwareElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  *(a1 + 12) = vrev32q_s8(*(a1 + 12));
  *(a1 + 28) = vrev32_s8(*(a1 + 28));
  v4 = *(a1 + 12);
  v5 = v4 > 8;
  v6 = (1 << v4) & 0x193;
  if (!v5 && v6 != 0)
  {
    for (j = 0; j != 64; j += 32)
    {
      v9 = (a1 + 36 + j);
      v15 = vld2q_s8(v9);
      v10 = v15.val[0];
      vst2q_s8(v9, *(&v15 + 16));
    }
  }

  v11 = vrev32q_s8(*(a1 + 52));
  v12 = vrev32q_s8(*(a1 + 36));
  v13 = vrev32q_s8(*(a1 + 84));
  *(a1 + 68) = vrev32q_s8(*(a1 + 68));
  *(a1 + 84) = v13;
  *(a1 + 36) = v12;
  *(a1 + 52) = v11;
  return 1;
}

uint64_t swap_SecurityElementStructType_endian(int8x16_t *a1, uint8x8_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    a2.i32[0] = a1->i32[i];
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    a1->i32[i] = a2.i32[0];
  }

  v4 = 0;
  a2.i32[0] = a1[32].i32[3];
  v5 = vrev64_s16(*&vmovl_u8(a2));
  a1[32].i32[3] = vuzp1_s8(v5, v5).u32[0];
  v6 = vrev32q_s8(a1[46]);
  a1[46] = v6;
  v7 = a1 + 47;
  do
  {
    v6.i32[0] = v7->i32[v4];
    v8 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v8, v8);
    v7->i32[v4++] = v6.i32[0];
  }

  while (v4 != 5);
  v9 = 0;
  v10 = &a1[48].i8[4];
  do
  {
    v6.i32[0] = *&v10[v9];
    v11 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v11, v11);
    *&v10[v9] = v6.i32[0];
    v9 += 4;
  }

  while (v9 != 20);
  v12 = 0;
  v13 = &a1[49].i8[8];
  do
  {
    v14 = &v13[v12];
    v15 = vrev32q_s8(*&v13[v12 + 16]);
    v16 = vrev32q_s8(*&v13[v12]);
    v17 = vrev32q_s8(*&v13[v12 + 48]);
    v18 = vrev32q_s8(*&v13[v12 + 32]);
    v14[2] = v18;
    v14[3] = v17;
    *v14 = v16;
    v14[1] = v15;
    v12 += 64;
  }

  while (v12 != 1024);
  v19 = 0;
  v20 = &a1[113].i8[8];
  do
  {
    v18.i32[0] = *&v20[v19];
    v21 = vrev64_s16(*&vmovl_u8(*v18.i8));
    *v18.i8 = vuzp1_s8(v21, v21);
    *&v20[v19] = v18.i32[0];
    v19 += 4;
  }

  while (v19 != 112);
  v22 = 0;
  v18.i32[0] = a1[120].i32[2];
  v23 = vrev64_s16(*&vmovl_u8(*v18.i8));
  a1[120].i32[2] = vuzp1_s8(v23, v23).u32[0];
  v24 = &a1[120].i8[12];
  do
  {
    v25 = &v24[v22];
    v26 = vrev32q_s8(*&v24[v22 + 16]);
    v27 = vrev32q_s8(*&v24[v22]);
    v28 = vrev32q_s8(*&v24[v22 + 48]);
    v25[2] = vrev32q_s8(*&v24[v22 + 32]);
    v25[3] = v28;
    *v25 = v27;
    v25[1] = v26;
    v22 += 64;
  }

  while (v22 != 128);
  return 1;
}

uint64_t swap_MemoryMapElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  *(a1 + 1612) = vrev32q_s8(*(a1 + 1612));
  v4 = vrev32_s8(*(a1 + 1628));
  *(a1 + 1628) = v4;
  v4.i32[0] = *(a1 + 1636);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  *(a1 + 1636) = vuzp1_s8(v5, v5).u32[0];
  for (j = 12; j != 1612; j += 32)
  {
    *(a1 + j) = vrev32q_s8(*(a1 + j));
  }

  return 1;
}

uint64_t swap_TocElementStructType_endian(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  for (i = 0; i != 12; i += 4)
  {
    a3.i32[0] = *(a1 + i);
    v5 = vrev64_s16(*&vmovl_u8(a3));
    a3 = vuzp1_s8(v5, v5);
    *(a1 + i) = a3.i32[0];
  }

  a3.i32[0] = *(a1 + 12);
  v6 = vrev64_s16(*&vmovl_u8(a3));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 12) = v7.i32[0];
  v8 = bswap32(v7.u32[0]);
  if ((CalledByWrite & (mach_endian == 2)) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7.u32[0];
  }

  if (v9)
  {
    v10 = (a2 + 12);
    do
    {
      v11 = vrev32_s8(*(v10 - 3));
      *(v10 - 3) = v11;
      v11.i32[0] = *(v10 - 1);
      a4.i32[0] = *v10;
      v12 = vrev64_s16(*&vmovl_u8(v11));
      v7 = vuzp1_s8(v12, v12);
      a4 = vuzp1_s8(vrev64_s16(*&vmovl_u8(a4)), v7);
      v7.i32[1] = a4.i32[0];
      *(v10 - 1) = v7;
      v10 += 36;
      --v9;
    }

    while (v9);
  }

  v7.i32[0] = *(a1 + 20);
  v13 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 20) = vuzp1_s8(v13, v13).u32[0];
  return 1;
}

BOOL PRGSequencer::AddToGlobalStruct(PRGSequencer *this, char *a2)
{
  v2 = *(this + 812);
  if (v2 <= 199)
  {
    LongFromLong = PRGH_GetLongFromLong(*a2);
    PRGSequencer::AllocateAndCopy(this, a2, LongFromLong);
  }

  return v2 < 200;
}

uint64_t PRGSequencer::AllocateAndCopy(PRGSequencer *this, char *a2, unsigned int a3)
{
  v3 = *(this + 812);
  if (v3 > 199)
  {
    return 0;
  }

  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v8 = 20;
      v9 = 20;
      goto LABEL_15;
    case 0xBu:
      v8 = 1640;
      v9 = 1640;
      goto LABEL_15;
    case 0xCu:
    case 0x1Du:
      v8 = 40;
      v9 = 40;
      goto LABEL_15;
    case 0xDu:
      v8 = 184;
      v9 = 184;
      goto LABEL_15;
    case 0xEu:
      v8 = 1148;
      v9 = 1148;
      goto LABEL_15;
    case 0xFu:
      v8 = 2060;
      v9 = 2060;
      goto LABEL_15;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v8 = 24;
      v9 = 24;
      goto LABEL_15;
    case 0x11u:
      v8 = 28;
      v9 = 28;
      goto LABEL_15;
    case 0x12u:
    case 0x13u:
      v8 = 32;
      v9 = 32;
LABEL_15:
      v10 = malloc(v9);
      v11 = v10;
      break;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

      v8 = 40;
      v10 = malloc(0x28uLL);
      v11 = v10;
      break;
  }

  v12 = this + 48;
  *(this + v3 + 6) = v11;
  if (a2)
  {
    memcpy(v11, a2, v8);
    v13 = PRGSequencer::TamperDataAfterRead(this, a3, a2);
    if (*(this + 814) == 2)
    {
      if ((v13 & 0x80000000) != 0 || *(this + 813) <= v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(this + v13 + 206);
      }

      PRGH_SwapElementEndian(*&v12[8 * *(this + 812)], a3, v16, v14, v15);
    }
  }

  else
  {
    PRGSequencer::InitializeElement(v10, v11, a3, v8);
    *v11 = a3;
    *(v11 + 1) = v8;
  }

  v17 = *(this + 2);
  v18 = *(this + 812);
  if (v17)
  {
    v17(*&v12[8 * v18]);
    v18 = *(this + 812);
  }

  *(this + 812) = v18 + 1;
  return 1;
}

uint64_t PRGSequencer::TamperDataAfterRead(PRGSequencer *this, unsigned int a2, char *a3)
{
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0)
    {
      goto LABEL_13;
    }

    if (((1 << a2) & 0x3800000) != 0)
    {
      v3 = *(this + 813);
      v4 = 16;
      if (v3 > 199)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      v3 = *(this + 813);
      v4 = 24;
      if (v3 < 200)
      {
        v5 = 32;
        goto LABEL_15;
      }

LABEL_16:
      v3 = 0xFFFFFFFFLL;
      goto LABEL_17;
    }
  }

  if (a2 == 16)
  {
LABEL_13:
    v3 = *(this + 813);
    v4 = 16;
    if (v3 < 200)
    {
LABEL_14:
      v5 = 24;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (a2 != 12)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 813);
  v4 = 32;
  if (v3 >= 200)
  {
    goto LABEL_16;
  }

  v5 = 40;
LABEL_15:
  *(this + v3 + 206) = &a3[v5];
  *(this + 813) = v3 + 1;
LABEL_17:
  *(*(this + *(this + 812) + 6) + v4) = v3;
  return v3;
}

uint64_t PRGSequencer::GetElementData(PRGSequencer *this, signed int a2)
{
  if (*(this + 813) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + a2 + 206);
  }
}

void PRGSequencer::InitializeElement(PRGSequencer *this, char *a2, int a3, int a4)
{
  bzero(a2, a4);
  v6 = 0x2000200020002;
  switch(a3)
  {
    case 3:
      goto LABEL_15;
    case 4:
    case 5:
      v6 = vdup_n_s32(0x20003u);
      goto LABEL_15;
    case 6:
    case 7:
    case 8:
    case 26:
    case 27:
    case 28:
    case 30:
      v6 = 0x20000;
      goto LABEL_15;
    case 9:
      v6 = 0x40000;
      goto LABEL_15;
    case 10:
      v6 = 0x10000;
LABEL_15:
      *(a2 + 12) = v6;
      break;
    case 11:
      v7 = xmmword_298561150;
      v8 = xmmword_298561160;
      v9 = a2 + 76;
      v10 = 52;
      v11 = vdupq_n_s64(0x32uLL);
      v12 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v8)), *v7.i8).u8[0])
        {
          *(v9 - 16) = -1;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v8)), *&v7).i8[2])
        {
          *(v9 - 8) = -1;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v7))).i32[1])
        {
          *v9 = -1;
          *(v9 + 8) = -1;
        }

        v7 = vaddq_s64(v7, v12);
        v8 = vaddq_s64(v8, v12);
        v9 += 128;
        v10 -= 4;
      }

      while (v10);
      break;
    default:
      return;
  }
}

uint64_t PRGSequencer::RegisterElementData(PRGSequencer *this, const void *a2)
{
  result = *(this + 813);
  if (result > 199)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + result + 206) = a2;
  *(this + 813) = result + 1;
  return result;
}

_DWORD *PRGSequencer::FindElementStructure(PRGSequencer *this, int a2, int a3)
{
  v3 = *(this + 812);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = (this + 48);
  if (v4 >= 0xC7)
  {
    v4 = 199;
  }

  v6 = v4 + 1;
  while (1)
  {
    result = *v5;
    if (*v5)
    {
      if (*result == a2 && result[2] == a3)
      {
        break;
      }
    }

    ++v5;
    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRGSequencer::WriteElementToFile(PRGSequencer *this, IFWD_MemoryStream *a2, unsigned int a3, unsigned int a4, char *a5)
{
  v5 = 0;
  v6 = 28;
  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v5 = 0;
      v6 = 8;
      goto LABEL_22;
    case 0xBu:
      v5 = 0;
      v6 = 1628;
      goto LABEL_22;
    case 0xCu:
      v10 = *(a5 + 8);
      if (*(this + 813) <= v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v10 + 206);
      }

      v6 = 28;
      goto LABEL_22;
    case 0xDu:
      v5 = 0;
      v6 = 172;
      goto LABEL_22;
    case 0xEu:
      v5 = 0;
      v6 = 1136;
      goto LABEL_22;
    case 0xFu:
      v5 = 0;
      v6 = 2048;
      goto LABEL_22;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v7 = *(a5 + 4);
      if (*(this + 813) <= v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v7 + 206);
      }

      v6 = 12;
      goto LABEL_22;
    case 0x11u:
      v5 = 0;
      v6 = 16;
      goto LABEL_22;
    case 0x12u:
    case 0x13u:
      v9 = *(a5 + 6);
      if (*(this + 813) <= v9)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v9 + 206);
      }

      v6 = 32;
      goto LABEL_22;
    case 0x1Du:
      goto LABEL_22;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

LABEL_22:
      PRGH_WriteElement(a2, a3, a4, a5 + 12, v6, v5);
      return 1;
  }
}

void PRGSequencer::PRGSequencer(PRGSequencer *this)
{
  v2 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v2);
  *this = v3;
  *(this + 3260) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 10) = 0;
  bzero(this + 48, 0xC88uLL);
}

void PRGSequencer::~PRGSequencer(IFWD_MemoryStream **this)
{
  PRGSequencer::CleanUp(this);
  if (*this)
  {
    IFWD_MemoryStream::~IFWD_MemoryStream(*this);
    operator delete(v2);
    *this = 0;
  }
}

void PRGSequencer::CleanUp(IFWD_MemoryStream **this)
{
  IFWD_MemoryStream::Clear(*this);
  v2 = *(this + 812);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this + 6;
    do
    {
      v5 = v4[v3];
      if (v5)
      {
        free(v5);
        v2 = *(this + 812);
      }

      v4[v3++] = 0;
    }

    while (v3 < v2);
  }

  *(this + 812) = 0;
  this[3] = 0;
  this[4] = 0;
  *(this + 10) = 0;
}

uint64_t PRGSequencer::ReadBuffer(PRGSequencer *this, const char *a2, unsigned int a3, int a4, unsigned int a5, void (*a6)(void *))
{
  IFWD_MemoryStream::Clear(*this);
  v12 = operator new[](a3 + 1);
  v13 = *this;
  *v13 = v12;
  *(v13 + 2) = v12;
  memcpy(v12, a2, a3);
  *(v13 + 2) = a3;
  *(this + 814) = PRGH_GetEndian(v12);
  v14 = PRGH_FileCheck(*(*this + 16));
  if (v14 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 815) = a4;
  *(this + 817) = v14;
  if (v14 == 5)
  {
    v15 = 0;
  }

  else
  {
    v16 = PRGH_VersionCheck(*(*this + 16), a4, a5);
    v15 = v16;
    if (v16 && (*(this + 815) != 5 || HIWORD(a5) <= WORD1(v16) || *(this + 817) != 1))
    {
      return v15;
    }
  }

  v21 = 0;
  *(this + 2) = a6;
  v17 = *(*this + 16);
  if (PRGH_GetElementIndex(v17, 1000, 0, &v21))
  {
    v18 = &v17[v21];
    v19 = *(v18 + 9);
    *(this + 24) = *(v18 + 20);
    *(this + 10) = v19;
    PRGSequencer::AddToGlobalStruct(this, v18);
    while (PRGH_GetNextElementIndex(v17, &v21))
    {
      PRGSequencer::AddToGlobalStruct(this, &v17[v21]);
    }
  }

  return v15;
}

uint64_t PRGSequencer::WriteToBuffer(PRGSequencer *this, char **a2, unsigned int *a3)
{
  v6 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v6);
  *(this + 1) = v7;
  IFWD_MemoryStream::Clear(v7);
  v8 = *(this + 812);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = *(this + i + 6);
      if (v10)
      {
        v11 = *v10;
        if ((*v10 & 0xFFFFFFFA) != 0x12 && (v11 > 0x1D || ((1 << v11) & 0x23319000) == 0))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v11, v10[2], v10);
          v8 = *(this + 812);
        }
      }

      if (i > 0xC6)
      {
        break;
      }
    }
  }

  if (*(this + 815) != 5 && v8 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(this + v14 + 6);
      if (v15)
      {
        v16 = *v15;
        if ((*v15 & 0xFFFFFFFA) == 0x12 || (v16 <= 0x1D ? (v17 = ((1 << v16) & 0x23319000) == 0) : (v17 = 1), !v17))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v16, v15[2], v15);
          v8 = *(this + 812);
        }
      }

      if (v14 > 0xC6)
      {
        break;
      }

      ++v14;
    }

    while (v14 < v8);
  }

  PRGH_WriteElement(*(this + 1), 2u, 0, 0, 0, 0);
  v18 = malloc(*(*(this + 1) + 8));
  *a2 = v18;
  v19 = *(this + 1);
  if (v18)
  {
    memcpy(v18, *(v19 + 16), *(v19 + 8));
    v20 = 0;
    *a3 = *(v19 + 8);
LABEL_29:
    IFWD_MemoryStream::~IFWD_MemoryStream(v19);
    operator delete(v21);
    *(this + 1) = 0;
    return v20;
  }

  v20 = 5;
  if (v19)
  {
    goto LABEL_29;
  }

  return v20;
}

uint64_t PRGSequencer::CreateElement(PRGSequencer *this, unsigned int a2)
{
  v3 = PRGSequencer::AllocateAndCopy(this, 0, a2);
  result = 0;
  if (v3)
  {
    return *(this + *(this + 812) + 5);
  }

  return result;
}

BOOL PRGSequencer::RemoveElement(PRGSequencer *this, void *a2)
{
  v2 = *(this + 812);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3 == a2)
  {
    v9 = 1;
    if (a2)
    {
LABEL_17:
      free(v3);
    }
  }

  else
  {
    v5 = 0;
    v6 = (v2 - 1);
    if (v6 >= 0xC7)
    {
      v6 = 199;
    }

    do
    {
      if (v6 == v5)
      {
        return v5 < 0xC7 && v5 + 1 < v2;
      }

      v7 = v4[1];
      ++v4;
      v3 = v7;
      ++v5;
    }

    while (v7 != a2);
    v9 = v5 - 1 < 0xC7 && v5 < v2;
    if (a2)
    {
      goto LABEL_17;
    }
  }

  *v4 = 0;
  return v9;
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v18 = 0;
    v17 = 0;
    do
    {
      *(&v17 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v17);
    v13 = (HIBYTE(v17) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v17 & 3));
    v14 = &a3[result];
    *v14 = Base64[v17 >> 2];
    v15 = v18;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result < a4)
  {
    a3[result] = 0;
    return result;
  }

LABEL_16:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

_BYTE *b64encode(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3u;
    if (a2 != 3 * (a2 / 3u))
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc(v6);
    if (v2)
    {
      b64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}

uint64_t b64decode(char *__s, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = a2;
  }

  v4 = __s;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = __s;
    v4 = __s;
    do
    {
      v8 = *v7;
      if (v8 == 10 || v8 == 13)
      {
        v10 = 0;
        v5 = 0;
      }

      else
      {
        v10 = b64decode_table[*v7];
        if (v10 == -1)
        {
          v10 = v6;
        }

        else if (v5 > 1)
        {
          if (v5 == 2)
          {
            *v4++ = (16 * v6) | (v10 >> 2) & 0xF;
            v5 = 3;
          }

          else
          {
            v5 = 0;
            *v4++ = v10 | (v6 << 6);
          }
        }

        else if (v5)
        {
          *v4++ = (4 * v6) | (v10 >> 4) & 3;
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      ++v7;
      v6 = v10;
    }

    while (v7 < &__s[v3]);
  }

  *v4 = 0;
  return (v4 - __s);
}

__CFString *tss_lookup_error(int a1)
{
  v1 = qword_2A13B8CA8;
  if (qword_2A13B8CA8)
  {
    if (tss_err_map == a1)
    {
      return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
    }

    for (i = &off_2A13B8CB8; ; i += 2)
    {
      v1 = *i;
      if (!*i)
      {
        break;
      }

      v3 = *(i - 2);
      if (v3 == a1)
      {
        return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
      }
    }
  }

  return @"Unknown";
}

uint64_t tss_strip_img3_signature(_DWORD *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 != 1231906611)
  {
    AMAuthInstallLog(3, "tss_strip_img3_signature", "bad magic 0x%08x expecting 0x%08x");
    return 10004;
  }

  v4 = a1[2];
  v3 = a1[3];
  if (v3 > v4)
  {
    AMAuthInstallLog(3, "tss_strip_img3_signature", "signed length %u too large for buffer length %u");
    return 10004;
  }

  result = 0;
  if (v3)
  {
    *a2 += v3 - v4;
    a1[2] = a1[3];
    a1[1] = *a2;
  }

  return result;
}

uint64_t tss_image_is_img3(_DWORD *a1)
{
  result = 10004;
  if (a1)
  {
    if (*a1 == 1231906611)
    {
      return 0;
    }

    else
    {
      return 10004;
    }
  }

  return result;
}

uint64_t tss_image_is_finalized(_DWORD *a1)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 == 1231906611)
  {
    if (a1[3])
    {
      return 0;
    }

    else
    {
      return 10003;
    }
  }

  else
  {
    AMAuthInstallLog(3, "tss_image_is_finalized", "bad magic 0x%08x expecting 0x%08x", *a1, 1231906611);
    return 10004;
  }
}

uint64_t tss_get_partial_hash(_DWORD *a1, int a2, int a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0;
  v13 = 0;
  if (a1 && a2 >= 1)
  {
    v7 = tss_strip_img3_signature(a1, &v15);
    if (v7)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "failed to strip img3 header");
    }

    v8 = a1[2];
    if (((v8 + 8) & 0x3F) != 0)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "ih_buffer_len(%d) + 8 is not a multiple of %d", a1[2], 64);
      v9 = 0;
      v7 = 10004;
    }

    else
    {
      v11 = malloc(v8 + 8);
      v9 = v11;
      if (v11)
      {
        bzero(v11, v8 + 8);
        a1[3] = v8 + a3;
        memcpy(v9, a1 + 3, v8 + 8);
        if (SHA1Reset(v16))
        {
          AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Reset failed=%d");
        }

        else if (SHA1Input(v16, v9, v8 + 8))
        {
          AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Input failed=%d");
        }

        else if (SHA1ResultPartial(v16, &v18, &v14, &v13))
        {
          AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1ResultPartial failed=%d");
        }

        else
        {
          if (!v7)
          {
            *a4 = a3;
            *(a4 + 4) = v8;
            *(a4 + 8) = v18;
            *(a4 + 24) = v19;
            goto LABEL_21;
          }

          AMAuthInstallLog(3, "tss_get_partial_hash", "tss_sha1_hash failed=%d");
        }

        v7 = 10007;
      }

      else
      {
        AMAuthInstallLog(3, "tss_get_partial_hash", "out of memory");
        v7 = 10006;
      }
    }

LABEL_21:
    v10 = v9;
    a1[3] = v8;
    v9 = v14;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "tss_get_partial_hash", "invalid img3: (%p), size %d", a1, a2);
  v9 = 0;
  v7 = 10004;
  if (a1)
  {
    LODWORD(v8) = 0;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_22:
  free(v9);
  free(v10);
  return v7;
}

uint64_t tss_get_hash(char *a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = a2;
  if (a1)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = tss_strip_img3_signature(a1, &v8);
    if (v5)
    {
      AMAuthInstallLog(3, "tss_get_hash", "failed to strip img3 header");
    }

    if (v8 > 11)
    {
      v6 = *(a1 + 2);
      if (v8 >= v6 + 20)
      {
        if (SHA1Reset(v9))
        {
          AMAuthInstallLog(3, "tss_get_hash", "SHA1Reset failed=%d");
        }

        else if (SHA1Input(v9, a1 + 12, v6 + 8))
        {
          AMAuthInstallLog(3, "tss_get_hash", "SHA1Input failed=%d");
        }

        else
        {
          if (!SHA1Result(v9, a3))
          {
            return v5;
          }

          AMAuthInstallLog(3, "tss_get_hash", "SHA1Result failed=%d");
        }

        return 10007;
      }
    }

    AMAuthInstallLog(3, "tss_get_hash", "invalid image3 length=%d", v8);
  }

  return 10004;
}

uint64_t tss_stitch_img3(_DWORD *a1, int a2, unsigned int *a3, const void *a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v24 = a2;
  if (!a1 || a2 <= 0)
  {
    AMAuthInstallLog(3, "tss_stitch_img3", "invalid img3: (%p), size %d", a4, a5, a6, a7);
    return 10004;
  }

  if (!a4 || a5 <= 0)
  {
    v22 = a4;
    v23 = a5;
    v18 = "invalid tatsu data: (%p), size %d";
LABEL_15:
    AMAuthInstallLog(3, "tss_stitch_img3", v18, a4, a5, a6, a7, v22, v23);
    return 10004;
  }

  v11 = 10008;
  if (a6 && a7)
  {
    v11 = tss_strip_img3_signature(a1, &v24);
    if (v11)
    {
      AMAuthInstallLog(3, "tss_stitch_img3", "failed to strip img3 header");
    }

    v14 = v24;
    v15 = v24 + a5;
    *a7 = v15;
    v16 = malloc(v15);
    *a6 = v16;
    if (!v16)
    {
      *a7 = 0;
      AMAuthInstallLog(3, "tss_stitch_img3", "out of memory");
      return 10006;
    }

    v17 = v16;
    bzero(v16, v15);
    memcpy(v17, a1, v14);
    if (*a3 >= a5)
    {
      v22 = a5;
      v23 = *a3;
      v18 = "invalid img3 (tatsublob_len %d <= mastered_reservation_len %d";
    }

    else if (((a3[1] + 8) & 0x3F) != 0)
    {
      v22 = a3[1] + 8;
      v23 = 64;
      v18 = "mastered_signed_len(%d) + 8 is not a multiple of %d";
    }

    else
    {
      v20 = a1[2] + a5;
      if (v20 == v15 - 20)
      {
        v21 = *a3 + a1[3];
        if (v21 <= v20 + 8)
        {
          v17[1] = a1[1] + a5;
          v17[2] = v20;
          v17[3] = v21;
          memcpy(v17 + v14, a4, a5);
          return v11;
        }
      }

      v18 = "invalid img3";
    }

    goto LABEL_15;
  }

  return v11;
}

FILE *(**amai_fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = ioapi_fopen_file_func;
  result[1] = ioapi_fread_file_func;
  result[2] = ioapi_fwrite_file_func;
  result[3] = ioapi_ftell_file_func;
  result[4] = ioapi_fseek_file_func;
  result[5] = ioapi_fclose_file_func;
  result[6] = ioapi_ferror_file_func;
  result[7] = 0;
  return result;
}

FILE *ioapi_fopen_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t ioapi_fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

void *tss_create_session(const void *a1, const void *a2)
{
  v4 = malloc(0x60uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (!a2)
  {
    AMAuthInstallLog(3, "tss_create_session", "signingServerURL is NULL");
    goto LABEL_10;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFURLGetTypeID())
  {
    AMAuthInstallLog(3, "tss_create_session", "signingServerURL is malformed");
    goto LABEL_10;
  }

  v5[1] = CFRetain(a2);
  *(v5 + 10) = 256;
  if (a1)
  {
    CFRetain(a1);
  }

  *v5 = a1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5[3] = Mutable;
  if (!Mutable)
  {
LABEL_7:
    AMAuthInstallLog(3, "tss_create_session", "out of memory");
LABEL_10:
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t tss_close_session(void *a1)
{
  v2 = tss_reset_session(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t tss_reset_session(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 72) = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      free(v8);
    }

    result = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    AMAuthInstallLog(3, "tss_reset_session", "NULL session");
    return 10009;
  }

  return result;
}

uint64_t SHA1Reset(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  *a1 = xmmword_298561570;
  *(a1 + 16) = -1009589776;
  *(a1 + 96) = 0;
  return result;
}

uint64_t SHA1ResultPartial(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 1;
  if (a1 && a2)
  {
    v8 = !a3 || a4 == 0;
    v9 = !v8;
    result = *(a1 + 100);
    if (!result)
    {
      if (*(a1 + 96))
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        if (!v9)
        {
          return 1;
        }

        v11 = *(a1 + 28);
        *a4 = v11;
        if (v11 >= 1)
        {
          v12 = malloc(v11);
          *a3 = v12;
          memcpy(v12, (a1 + 30), v11);
        }
      }

      else
      {
        SHA1PadMessage(a1);
        *(a1 + 78) = 0u;
        *(a1 + 62) = 0u;
        *(a1 + 46) = 0u;
        *(a1 + 30) = 0u;
        *(a1 + 20) = 0;
        *(a1 + 24) = 0;
        *(a1 + 96) = 1;
      }

      v13 = 0;
      for (i = 0; i != 20; ++i)
      {
        *(a2 + i) = *(a1 + (i & 0xFFFFFFFC)) >> (~v13 & 0x18);
        v13 += 8;
      }

      return 0;
    }
  }

  return result;
}

int *SHA1PadMessage(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = a1 + 30;
  LOWORD(v4) = v2 + 1;
  *(a1 + 28) = v2 + 1;
  if (v2 < 56)
  {
    *(v3 + v2) = 0x80;
    v6 = *(a1 + 28);
    if (v6 <= 55)
    {
      do
      {
        *(a1 + 28) = v6 + 1;
        *(v3 + v6) = 0;
        v6 = *(a1 + 28);
      }

      while (v6 < 56);
    }
  }

  else
  {
    *(v3 + v2) = 0x80;
    if (v4 <= 63)
    {
      do
      {
        *(a1 + 28) = v4 + 1;
        *(v3 + v4) = 0;
        v4 = *(a1 + 28);
      }

      while (v4 < 64);
    }

    SHA1ProcessMessageBlock(a1);
    v5 = *(a1 + 28);
    if (v5 <= 55)
    {
      do
      {
        *(a1 + 28) = v5 + 1;
        *(v3 + v5) = 0;
        v5 = *(a1 + 28);
      }

      while (v5 < 56);
    }
  }

  v7 = *(a1 + 20);
  *(a1 + 86) = bswap32(*(a1 + 24));
  *(a1 + 90) = bswap32(v7);

  return SHA1ProcessMessageBlock(a1);
}

uint64_t SHA1Input(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = 1;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (*(a1 + 96))
      {
        result = 3;
        *(a1 + 100) = 3;
      }

      else
      {
        result = *(a1 + 100);
        if (!result)
        {
          v6 = a3;
          while (!*(a1 + 100))
          {
            v7 = *v5;
            v8 = *(a1 + 28);
            *(a1 + 28) = v8 + 1;
            *(a1 + 30 + v8) = v7;
            v9 = *(a1 + 20) + 8;
            *(a1 + 20) = v9;
            if (!v9)
            {
              v10 = *(a1 + 24);
              *(a1 + 24) = v10 + 1;
              if (v10 == -1)
              {
                *(a1 + 100) = 1;
              }
            }

            if (*(a1 + 28) == 64)
            {
              SHA1ProcessMessageBlock(a1);
            }

            result = 0;
            ++v5;
            if (!--v6)
            {
              return result;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

int *SHA1ProcessMessageBlock(int *result)
{
  v1 = 0;
  v51 = *MEMORY[0x29EDCA608];
  v2 = result + 30;
  v52 = vld4q_s8(v2);
  v3 = vmovl_u8(*v52.val[0].i8);
  v4 = vmovl_high_u8(v52.val[0]);
  _Q16 = vmovl_u8(*v52.val[1].i8);
  _Q17 = vmovl_high_u8(v52.val[1]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v13 = vmovl_high_u8(v52.val[2]);
  v14 = vmovl_u8(*v52.val[2].i8);
  v15 = vorrq_s8(vorrq_s8(vshll_n_u16(*v14.i8, 8uLL), vshll_n_s16(*_Q16.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v3.i8), 0x18uLL));
  v16 = vmovl_high_u8(v52.val[3]);
  v52.val[0] = vmovl_u8(*v52.val[3].i8);
  v50[3] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v13, 8uLL), _Q18), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v16));
  v50[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v16.i8));
  v50[1] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v14, 8uLL), _Q19), vshlq_n_s32(vmovl_high_u16(v3), 0x18uLL)), vmovl_high_u16(v52.val[0]));
  v50[0] = vorrq_s8(v15, vmovl_u16(*v52.val[0].i8));
  do
  {
    HIDWORD(v17) = *(&v50[2] + v1) ^ *(&v50[3] + v1 + 4) ^ *(v50 + v1 + 8) ^ *(v50 + v1);
    LODWORD(v17) = HIDWORD(v17);
    *(&v50[4] + v1) = v17 >> 31;
    v1 += 4;
  }

  while (v1 != 256);
  v18 = 0;
  v19 = result[1];
  v21 = result[3];
  v20 = result[4];
  v22 = v20;
  v23 = result[2];
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = *result;
  do
  {
    v28 = v27;
    v29 = v25;
    v30 = v24;
    HIDWORD(v31) = v27;
    LODWORD(v31) = v27;
    v32 = (v31 >> 27) + v22 + (v24 & ~v26 | v25 & v26) + 1518500249;
    HIDWORD(v31) = v26;
    LODWORD(v31) = v26;
    v25 = v31 >> 2;
    v27 = v32 + *(v50 + v18);
    v18 += 4;
    v22 = v24;
    v24 = v29;
    v26 = v28;
  }

  while (v18 != 80);
  v33 = 80;
  do
  {
    v34 = v27;
    v35 = v25;
    v36 = v29;
    HIDWORD(v37) = v27;
    LODWORD(v37) = v27;
    v38 = (v37 >> 27) + (v25 ^ v28 ^ v29) + v30 + 1859775393;
    HIDWORD(v37) = v28;
    LODWORD(v37) = v28;
    v25 = v37 >> 2;
    v27 = v38 + *(v50 + v33);
    v33 += 4;
    v30 = v29;
    v29 = v35;
    v28 = v34;
  }

  while (v33 != 160);
  do
  {
    v39 = v27;
    v40 = v25;
    HIDWORD(v41) = v27;
    LODWORD(v41) = v27;
    v42 = v35;
    v43 = (v41 >> 27) + v36 + ((v35 | v40) & v34 | v35 & v40) - 1894007588;
    HIDWORD(v41) = v34;
    LODWORD(v41) = v34;
    v25 = v41 >> 2;
    v27 = v43 + *(v50 + v33);
    v33 += 4;
    v36 = v35;
    v35 = v40;
    v34 = v39;
  }

  while (v33 != 240);
  v44 = 240;
  do
  {
    v45 = v27;
    v46 = v25;
    v47 = v40;
    HIDWORD(v48) = v27;
    LODWORD(v48) = v27;
    v49 = (v48 >> 27) + (v25 ^ v39 ^ v40) + v42 - 899497514;
    HIDWORD(v48) = v39;
    LODWORD(v48) = v39;
    v25 = v48 >> 2;
    v27 = v49 + *(v50 + v44);
    v44 += 4;
    v42 = v40;
    v40 = v46;
    v39 = v45;
  }

  while (v44 != 320);
  *result += v27;
  result[1] = v45 + v19;
  result[2] = v25 + v23;
  result[3] = v46 + v21;
  result[4] = v47 + v20;
  *(result + 14) = 0;
  return result;
}

uint64_t tss_submit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "tss_submit", "NULL session");
    return 10009;
  }

  if (!*(a1 + 24))
  {
    AMAuthInstallLog(3, "tss_submit", "NULL request in session");
    v5 = 10008;
    v6 = a1;
    v7 = 10008;
LABEL_10:
    tss_set_last_error(v6, v7);
    return v5;
  }

  if (!*(a1 + 48))
  {
    tss_submit_job_with_retry(a1, a2, a3);
    return *(a1 + 64);
  }

  v4 = malloc(8uLL);
  *(a1 + 56) = v4;
  if (!v4)
  {
    AMAuthInstallLog(3, "tss_submit_non_block", "out of memory");
    v5 = 10006;
    v6 = a1;
    v7 = 10006;
    goto LABEL_10;
  }

  pthread_create(v4, 0, tss_submit_job_with_retry, a1);
  return 0;
}

__CFString *tss_set_last_error(__CFString *result, int a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(result[2].isa) = a2;
    info = result[2].info;
    if (info)
    {
      CFRelease(info);
    }

    result = tss_lookup_error(a2);
    v3[2].info = result;
  }

  return result;
}

uint64_t tss_submit_job_with_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v4 = v3;
  v90 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    if (*(v3 + 16) <= 1u)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v3 + 16);
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  key = *MEMORY[0x29EDB8EC8];
  httpVersion = *MEMORY[0x29EDB8528];
  alloc = *MEMORY[0x29EDB8ED8];
  do
  {
    AMAuthInstallLog(6, "tss_submit_job_with_retry", "TSS Connection attempt %d of %d.  (Will retry if TSS_ERR_SERVER_NOT_REACHABLE.)", ++v6, v5);
    error = 0;
    bzero(v89, 0x19000uLL);
    if (!*(v4 + 8))
    {
      AMAuthInstallLog(3, "tss_submit_job", "no server URL");
      v23 = 10008;
LABEL_25:
      tss_set_last_error(v4, v23);
      v24 = 0;
      v13 = 0;
      v25 = 0;
      v18 = 0;
      Request = 0;
      v11 = 0;
      *(v4 + 64) = v23;
      goto LABEL_35;
    }

    v8 = CFPropertyListCreateData(v7, *(v4 + 24), kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (!v8)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateXMLData failed %@", error);
      v23 = 10036;
      goto LABEL_25;
    }

    v9 = v8;
    Length = CFDataGetLength(v8);
    v11 = CFURLCreateWithString(v7, @"TSS/controller?action=2", *(v4 + 8));
    if (!v11)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFURLCreateCopyAppendingPathComponent() failed");
      v26 = 10041;
      tss_set_last_error(v4, 10041);
      v24 = 0;
      v13 = 0;
      v18 = 0;
      Request = 0;
LABEL_34:
      *(v4 + 64) = v26;
      CFRelease(v9);
      v25 = 0;
      goto LABEL_35;
    }

    Request = CFHTTPMessageCreateRequest(v7, @"POST", v11, httpVersion);
    if (!Request)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFHTTPMessageCreateRequest failed");
      v26 = 10041;
      tss_set_last_error(v4, 10041);
      v24 = 0;
      v13 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v13 = CFStringCreateWithFormat(v7, 0, @"%d", Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"Keep-Alive");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Pragma", @"no-cache");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v13);
    v14 = _CFCopySystemVersionDictionary();
    if (v14)
    {
      v15 = v14;
      Value = CFDictionaryGetValue(v14, key);
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-OS-Version", Value);
      CFRelease(v15);
    }

    if (*(v4 + 32))
    {
      AMAuthInstallLog(7, "tss_submit_job", "Attempting to add additional entries to HTTP header");
      CFDictionaryApplyFunction(*(v4 + 32), _AMAuthInstallUpdateHTTPHeaderWithEntry, Request);
      AMAuthInstallLog(7, "tss_submit_job", "Done adding additional fields to HTTP header");
    }

    CFHTTPMessageSetBody(Request, v9);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v18 = Mutable;
    v19 = *(v4 + 80);
    if (v19)
    {
      CFDictionaryAddValue(Mutable, @"SocksProxySettings", v19);
      AMAuthInstallLog(7, "tss_submit_job", "Found a SOCKS proxy setting. Will attempt to use it.");
    }

    v20 = *(v4 + 88);
    if (v20)
    {
      CFDictionaryAddValue(v18, @"TrustedServerCAs", v20);
      AMAuthInstallLog(7, "tss_submit_job", "Found a trusted server CA. Will attempt to use it.");
    }

    theData[0] = 0;
    v21 = CFURLCopyScheme(*(v4 + 8));
    if (!v21)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Invalid scheme in url");
      goto LABEL_31;
    }

    v22 = v21;
    *__s = 10000;
    if (CFStringCompare(v21, @"https", 1uLL) && CFStringCompare(v22, @"http", 1uLL))
    {
      CFRelease(v22);
      AMAuthInstallLog(3, "tss_submit_job", "unsupported URL scheme");
LABEL_31:
      v26 = 10008;
      v27 = v4;
      v28 = 10008;
      goto LABEL_32;
    }

    CFRelease(v22);
    if (AMAuthInstallHttpMessageSendSyncNew(v7, Request, theData, __s, v18, 300.0))
    {
      AMAuthInstallLog(3, "tss_submit_job", "failed to send http request");
      v26 = 10002;
      v27 = v4;
      v28 = 10002;
LABEL_32:
      tss_set_last_error(v27, v28);
LABEL_33:
      v24 = @"Content-Length";
      goto LABEL_34;
    }

    v26 = *__s;
    if (*__s != 200)
    {
      AMAuthInstallLog(3, "tss_submit_job", "SendHttpRequest failed %d", *__s);
      if (*__s == -1)
      {
        v26 = 10002;
      }

      v30 = v4;
      v31 = v26;
      goto LABEL_61;
    }

    if (CFDataGetLength(theData[0]) > 0x19000)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Response too large");
      v26 = 10052;
      v30 = v4;
      v31 = 10052;
LABEL_61:
      tss_set_last_error(v30, v31);
      CFRelease(theData[0]);
      goto LABEL_33;
    }

    CFDataGetBytePtr(theData[0]);
    CFDataGetLength(theData[0]);
    __memcpy_chk();
    v32 = CFDataGetLength(theData[0]);
    CFRelease(theData[0]);
    v33 = v32;
    *v87 = 0;
    *__s = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v57 = v32;
    if (v32 < 1)
    {
      v37 = 0;
      v62 = 0;
      cfb = 0;
      goto LABEL_108;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = v89;
    do
    {
      if (v36)
      {
        if (v35)
        {
          goto LABEL_66;
        }
      }

      else if (v37 + 7 >= v33)
      {
        v36 = 0;
        if (v35)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v61 = v35;
        cf = v34;
        if (!strncmp(v38, "STATUS", 6uLL))
        {
          v39 = 0;
          v36 = v38 + 7;
          v34 = cf;
          do
          {
            v40 = v38[v39 + 7];
            if (v40 == 38)
            {
              break;
            }

            v87[v39++] = v40;
          }

          while (v39 != 8);
          v87[7] = 0;
          v33 = v57;
        }

        else
        {
          v36 = 0;
          v33 = v57;
          v34 = cf;
        }

        v35 = v61;
        if (v61)
        {
LABEL_66:
          if (v34)
          {
            goto LABEL_98;
          }

          goto LABEL_67;
        }
      }

      if (v37 + 8 >= v33)
      {
        v35 = 0;
        if (v34)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v59 = v36;
        cfa = v34;
        if (!strncmp(v38, "MESSAGE", 7uLL))
        {
          v41 = 0;
          v35 = v38 + 8;
          v34 = cfa;
          v36 = v59;
          do
          {
            v42 = v38[v41 + 8];
            if (v42 == 10)
            {
              break;
            }

            if (v42 == 38)
            {
              break;
            }

            __s[v41++] = v42;
          }

          while (v41 != 256);
          HIBYTE(v86) = 0;
          v33 = v57;
          if (cfa)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v35 = 0;
          v33 = v57;
          v36 = v59;
          v34 = cfa;
          if (cfa)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_67:
      if (v37 + 15 >= v33)
      {
        v34 = 0;
        goto LABEL_98;
      }

      v58 = v36;
      v60 = v35;
      if (strncmp(v38, "REQUEST_STRING", 0xEuLL))
      {
        v34 = 0;
        v33 = v57;
        v36 = v58;
LABEL_97:
        v35 = v60;
        goto LABEL_98;
      }

      v34 = v38 + 15;
      v36 = v58;
      if (!v58)
      {
        v33 = v57;
        goto LABEL_97;
      }

      v33 = v57;
      v35 = v60;
      if (v60)
      {
        goto LABEL_100;
      }

LABEL_98:
      ++v38;
      ++v37;
    }

    while (v37 != v33);
    v37 = v33;
LABEL_100:
    cfb = v34;
    if (v36)
    {
      v43 = v35 == 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = !v43;
    v62 = v44;
LABEL_108:
    AMAuthInstallLog(8, "tss_submit_job", "----Begin request");
    AMAuthInstallLog(8, "tss_submit_job", "%@", *(v4 + 24));
    AMAuthInstallLog(8, "tss_submit_job", "----End request");
    AMAuthInstallLog(8, "tss_submit_job", "----Begin response");
    AMAuthInstallLog(8, "tss_submit_job", "%s", v89);
    AMAuthInstallLog(8, "tss_submit_job", "----End response");
    if ((v62 & 1) == 0)
    {
      AMAuthInstallLog(3, "tss_submit_job", "invalid response");
      v46 = 10052;
      v50 = v4;
      v51 = 10052;
      goto LABEL_115;
    }

    v45 = atoi(v87);
    if (!v45)
    {
      if (cfb)
      {
        __memcpy_chk();
        v52 = CFDataCreate(alloc, theData, v57 - v37 - 15);
        if (v52)
        {
          v53 = v52;
          if (error)
          {
            CFRelease(error);
          }

          cfc = v53;
          v25 = CFPropertyListCreateWithData(alloc, v53, 0, 0, &error);
          if (v25)
          {
            Copy = CFDictionaryCreateCopy(alloc, v25);
            *(v4 + 40) = Copy;
            if (Copy)
            {
              v55 = 0;
LABEL_130:
              *(v4 + 64) = v55;
              CFRelease(v9);
              CFRelease(cfc);
              goto LABEL_117;
            }

            AMAuthInstallLog(3, "tss_submit_job", "CFDictionaryCreateCopy failed");
            v55 = 10056;
          }

          else
          {
            AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateFromXMLData failed (%@)", error);
            v55 = 10055;
          }

          tss_set_last_error(v4, v55);
          goto LABEL_130;
        }

        AMAuthInstallLog(3, "tss_submit_job", "CFDataCreate failed");
        v46 = 10054;
        v50 = v4;
        v51 = 10054;
      }

      else
      {
        AMAuthInstallLog(3, "tss_submit_job", "no data in response");
        v46 = 10053;
        v50 = v4;
        v51 = 10053;
      }

LABEL_115:
      tss_set_last_error(v50, v51);
      goto LABEL_116;
    }

    v46 = v45;
    AMAuthInstallLog(3, "tss_submit_job", "error from server=%d (%s)", v45, __s);
    v47 = *(v4 + 72);
    if (v47)
    {
      CFRelease(v47);
    }

    v48 = strlen(__s);
    v49 = CFStringCreateWithBytes(alloc, __s, v48, 0x8000100u, 0);
    *(v4 + 72) = v49;
    if (!v49)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Server message failed to convert: %d", v46);
    }

LABEL_116:
    *(v4 + 64) = v46;
    CFRelease(v9);
    v25 = 0;
LABEL_117:
    v24 = @"Content-Length";
LABEL_35:
    if (error)
    {
      CFRelease(error);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (Request)
    {
      CFRelease(Request);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v7 = alloc;
    if (v25)
    {
      CFRelease(v25);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v29 = *(v4 + 48);
    if (v29)
    {
      v29(v4);
    }
  }

  while (v4 && v6 < v5 && *(v4 + 64) == 10002);
  return 0;
}

void _AMAuthInstallUpdateHTTPHeaderWithEntry(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3)
{
  AMAuthInstallLog(7, "_AMAuthInstallUpdateHTTPHeaderWithEntry", "HTTP Request Header: %@=%@", a1, a2);

  CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
}

uint64_t amai_unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *amai_unzOpen2(uint64_t a1, _OWORD *a2)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v3 = a2[1];
    __src[0] = *a2;
    __src[1] = v3;
    v4 = a2[3];
    __src[2] = a2[2];
    __src[3] = v4;
    v5 = (*&__src[0])(*(&v4 + 1), a1, 5);
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
    v5 = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  v6 = v5;
  *&__src[4] = v5;
  if (v5)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v5, 0, 2) || ((v8 = (*(&__src[1] + 1))(*(&__src[3] + 1), v6), v9 = v8, v8 >= 0xFFFF) ? (v10 = 0xFFFFLL) : (v10 = v8), (v11 = malloc(0x404uLL)) == 0))
    {
      v7 = 0;
      v34 = 0;
    }

    else
    {
      v12 = v11;
      if (v9 >= 5)
      {
        v13 = 4;
        while (2)
        {
          v14 = v13 + 1024;
          if (v13 + 1024 >= v10)
          {
            v13 = v10;
          }

          else
          {
            v13 += 1024;
          }

          v15 = v13 >= 0x404 ? 1028 : v13;
          if (!(*&__src[2])(*(&__src[3] + 1), v6, v9 - v13, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v6, v12, v15) == v15)
          {
            v16 = (v15 - 4);
            v17 = v13 - v9 - v16;
            v18 = v15 - 3;
            v19 = &v12[v16 + 1];
            while (*(v19 - 1) != 80 || *v19 != 75 || v19[1] != 5 || v19[2] != 6)
            {
              ++v17;
              --v19;
              v20 = __OFSUB__(v18--, 1);
              if ((v18 < 0) ^ v20 | (v18 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v17)
            {
              v7 = -v17;
              v34 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v14 < v10)
            {
              continue;
            }
          }

          break;
        }
      }

      v7 = 0;
      v34 = 0;
LABEL_33:
      free(v12);
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    v31 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v7, 0);
    HIDWORD(v32) = unzlocal_getLong(__src, *&__src[4], v38);
    LODWORD(v32) = unzlocal_getShort(__src, *&__src[4], &v37);
    Short = unzlocal_getShort(__src, *&__src[4], &v36);
    v21 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v22 = unzlocal_getShort(__src, *&__src[4], &v35);
    v24 = v35;
    v23 = v36;
    v25 = v37;
    v26 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v28 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v29 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v7 < *&__src[8] + *(&__src[8] + 1) || v28 | Long | v29 || v24 != v26 || v23 || v25 || !v34 || v22 || v21 || Short || v32 || v31)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v7 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v7;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v6 = malloc(0x150uLL);
      memcpy(v6, __src, 0x150uLL);
      amai_unzGoToFirstFile(v6);
    }
  }

  return v6;
}

uint64_t unzlocal_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unzlocal_getByte(a1, a2, &v11) || (v6 = v11, unzlocal_getByte(a1, a2, &v11)) || (v7 = v11, unzlocal_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = unzlocal_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unzlocal_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (unzlocal_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unzlocal_getByte(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t amai_unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t amai_unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128))
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, unzlocal_getLong(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v44 = unzlocal_getShort(a1, *(a1 + 64), &v54 + 1);
  v12 = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v55 + 1);
  Long = unzlocal_getLong(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_298561590);
  v16.i32[0] = vshlq_u32(v15, xmmword_298561580).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_2985615A0);
  v17 = unzlocal_getLong(a1, *(a1 + 64), &v56 + 1) | Long;
  v18 = unzlocal_getLong(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | unzlocal_getLong(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | unzlocal_getShort(a1, *(a1 + 64), &v58);
  v21 = unzlocal_getShort(a1, *(a1 + 64), &v58 + 1);
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v59);
  v23 = unzlocal_getShort(a1, *(a1 + 64), &v59 + 1);
  v24 = unzlocal_getShort(a1, *(a1 + 64), &v60);
  v25 = unzlocal_getLong(a1, *(a1 + 64), &v60 + 1);
  if (unzlocal_getLong(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | Short)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}