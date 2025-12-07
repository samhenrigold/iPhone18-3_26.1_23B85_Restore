uint64_t APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2 > 1937010029)
  {
    if (a2 == 1937010030)
    {
      v5 = @"main";
    }

    else
    {
      if (a2 != 1937012579)
      {
        goto LABEL_25;
      }

      v5 = @"oovc";
    }
  }

  else if (a2 == 1937006956)
  {
    v5 = @"alt";
  }

  else
  {
    if (a2 != 1937006968)
    {
      goto LABEL_25;
    }

    v5 = @"auxo";
  }

  if (a3 <= 1635020132)
  {
    if (a3 == 1635017068)
    {
      v6 = @"alert";
      goto LABEL_22;
    }

    if (a3 == 1635017830)
    {
      v6 = @"default";
      goto LABEL_22;
    }

LABEL_25:
    APSLogErrorAt();
    return 4294960591;
  }

  if (a3 == 1635021925)
  {
    v6 = @"telephony";
    goto LABEL_22;
  }

  if (a3 == 1635021682)
  {
    v6 = @"speechRecognition";
    goto LABEL_22;
  }

  if (a3 != 1635020133)
  {
    goto LABEL_25;
  }

  v6 = @"media";
LABEL_22:
  Value = CFDictionaryGetValue(*(a1 + 72), v5);
  if (Value)
  {
    v8 = CFDictionaryGetValue(Value, v6);
    if (v8)
    {
      v9 = CFRetain(v8);
      result = 0;
      *a4 = v9;
      return result;
    }

    APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType_cold_1();
  }

  else
  {
    APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType_cold_2();
  }

  return 4294960569;
}

uint64_t APCarPlayAudioFormatsCopyFormatInfoForHALDescription(uint64_t a1, int a2, int a3, const void *a4, CFTypeRef *a5)
{
  v20 = 0;
  __s1 = 0;
  cf = 0;
  HALDescriptions = APCarPlayAudioFormatsGetHALDescriptions(a1, a2, a3, &__s1, &v20);
  if (HALDescriptions)
  {
    v13 = HALDescriptions;
    APCarPlayAudioFormatsCopyFormatInfoForHALDescription_cold_1(HALDescriptions);
  }

  else
  {
    v11 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(a1, a2, a3, &cf);
    v12 = v20;
    if (v20 < 1)
    {
      goto LABEL_12;
    }

    v13 = v11;
    ValueAtIndex = 0;
    v15 = 0;
    v16 = __s1;
    v17 = cf;
    do
    {
      if (!memcmp(v16, a4, 0x28uLL))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v15);
      }

      ++v15;
      v16 += 56;
    }

    while (v12 != v15);
    if (ValueAtIndex)
    {
      *a5 = CFRetain(ValueAtIndex);
    }

    else
    {
LABEL_12:
      APCarPlayAudioFormatsCopyFormatInfoForHALDescription_cold_2();
      v13 = 4294960591;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v13;
}

uint64_t APCarPlayAudioFormatsCopyFormatInfoForStreamDescription(uint64_t a1, int a2, int a3, const void *a4, CFTypeRef *a5)
{
  theArray = 0;
  v7 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(a1, a2, a3, &theArray);
  if (v7)
  {
    v15 = v7;
    APSLogErrorAt();
    v8 = theArray;
    if (!theArray)
    {
      return v15;
    }

    goto LABEL_13;
  }

  v8 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_9;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    v13 = ValueAtIndex;
    v14 = ValueAtIndex ? ValueAtIndex + 16 : 0;
    if (!memcmp(v14, a4, 0x28uLL))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_9;
    }
  }

  v16 = CFRetain(v13);
  if (!v16)
  {
LABEL_9:
    APCarPlayAudioFormatsCopyFormatInfoForStreamDescription_cold_1();
    v15 = 4294960591;
    if (!v8)
    {
      return v15;
    }

    goto LABEL_13;
  }

  v15 = 0;
  *a5 = CFRetain(v16);
  if (v8)
  {
LABEL_13:
    CFRelease(v8);
  }

  return v15;
}

Class __getEAAccessoryManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ExternalAccessoryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ExternalAccessoryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849E0E8;
    v5 = 0;
    ExternalAccessoryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ExternalAccessoryLibraryCore_frameworkLibrary)
  {
    __getEAAccessoryManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("EAAccessoryManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getEAAccessoryManagerClass_block_invoke_cold_1();
  }

  getEAAccessoryManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __ExternalAccessoryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ExternalAccessoryLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t carPlayAudioFormat_repackageFormatsForStream(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 100;
  if ((a2 - 100) > 9 || ((0x3CBu >> v4) & 1) == 0)
  {
    APSLogErrorAt();
    return 0;
  }

  v5 = a2;
  v7 = *(&off_27849E1C8 + v4);
  CFRetain(v7);
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    carPlayAudioFormat_repackageFormatsForStream_cold_23();
    v78 = v7;
    v65 = 4294960568;
    goto LABEL_171;
  }

  v9 = CFGetAllocator(a1);
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    v80 = 855;
LABEL_187:
    carPlayAudioFormat_repackageFormatsForStream_cold_22(v80, v7);
    v77 = 0;
    v65 = 4294960568;
    goto LABEL_163;
  }

  v11 = CFGetAllocator(a1);
  v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v12)
  {
    v80 = 859;
    goto LABEL_187;
  }

  theDict = v12;
  cf = v7;
  if (!a4)
  {
    v74 = *(a1 + 28);
LABEL_148:
    v75 = *(a1 + 40);
    if (v74)
    {
      v76 = cf;
      v77 = theDict;
      if (v75 != 1633772389 && v75 != 1869641075)
      {
        APSLogErrorAt();
        goto LABEL_161;
      }

      if (v5 == 103)
      {
        if (*(a1 + 48) != 1633772320)
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_17();
          goto LABEL_161;
        }
      }

      else if (v5 == 100 && *(a1 + 44) != 1633772320)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_18();
LABEL_161:
        v65 = 4294960591;
        goto LABEL_162;
      }
    }

    else
    {
      v76 = cf;
      v77 = theDict;
      if (v75 != 1819304813)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_19();
        goto LABEL_161;
      }

      if (v5 == 103)
      {
        if (*(a1 + 48) != 1633772320)
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_20();
          goto LABEL_161;
        }
      }

      else if (v5 == 100 && *(a1 + 44))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_21();
        goto LABEL_161;
      }
    }

    CFDictionarySetValue(*(a1 + 56), v76, Mutable);
    CFRelease(Mutable);
    CFDictionarySetValue(*(a1 + 64), v76, v10);
    CFRelease(v10);
    CFDictionarySetValue(*(a1 + 72), v76, v77);
    CFRelease(v77);
    v78 = v76;
    v65 = 0;
LABEL_171:
    CFRelease(v78);
    return v65;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v89 = v10;
  v99 = a1;
  v88 = v5;
  while (1)
  {
    v16 = v5;
    if (v5 == 100)
    {
      if (*(a1 + 28))
      {
        if (CFEqual(*(a3 + 16 * v13), @"media"))
        {
          v16 = 102;
        }

        else
        {
          v16 = 100;
        }
      }

      else
      {
        v16 = 100;
      }
    }

    v17 = a3 + 16 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v95 = v17;
    v110 = 0;
    v109 = 0;
    v107 = v18;
    v20 = APCarPlayAudioFormatsCopyFormatsForAudioType(a1, v16, v18, &v110, 0, &v109);
    if (v20)
    {
      v65 = v20;
      carPlayAudioFormat_repackageFormatsForStream_cold_1(v20);
LABEL_178:
      APSLogErrorAt();
      goto LABEL_179;
    }

    v21 = v109;
    if (v19)
    {
      v22 = v109 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      if ((v110 & v19) == 0)
      {
        goto LABEL_28;
      }

      if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_2(v16, &v110, v19, v107);
      }

      v110 &= v19;
      v21 = v109;
    }

    if (!v21)
    {
      v23 = CFEqual(v107, @"media");
      if ((v16 & 0x6D) == 0x64)
      {
        if (v23)
        {
          v110 &= v19;
        }
      }
    }

LABEL_28:
    v24 = CFGetAllocator(a1);
    v25 = CFDataCreateMutable(v24, 3584);
    if (!v25)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_16();
LABEL_177:
      v65 = 4294960568;
      goto LABEL_178;
    }

    v26 = v25;
    CFDataSetLength(v25, 3584);
    MutableBytePtr = CFDataGetMutableBytePtr(v26);
    v27 = CFGetAllocator(a1);
    v28 = CFDataCreateMutable(v27, 3584);
    if (!v28)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_15(v26);
      goto LABEL_177;
    }

    v29 = v28;
    CFDataSetLength(v28, 768);
    v30 = CFDataGetMutableBytePtr(v29);
    v31 = CFGetAllocator(a1);
    theArray = CFArrayCreateMutable(v31, 64, MEMORY[0x277CBF128]);
    if (!theArray)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_14(v26, v29);
      goto LABEL_177;
    }

    v96 = v29;
    theData = v26;
    v87 = v15;
    v98 = v14;
    v32 = 0;
    v33 = v16;
    v34 = 0;
    v15 = 0;
    v35 = 32;
    if (v33 == 102)
    {
      v35 = 36;
    }

    v100 = v35;
    v36 = !a1 || v107 == 0;
    v101 = v30;
    v37 = v36 || v30 == 0;
    v38 = v37;
    v102 = v38;
    v108 = v33;
    v94 = (v33 - 103);
    v39 = 1;
    v40 = &unk_27CFF1000;
    do
    {
      if ((v110 & v39) == 0)
      {
        goto LABEL_119;
      }

      if (APAudioFormatToASBD())
      {
        v43 = v40[258];
        if (v43 <= 50 && (v43 != -1 || _LogCategory_Initialize()))
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_3(v39, v41, v42);
        }

        goto LABEL_119;
      }

      v44 = &MutableBytePtr[56 * v32];
      *v44 = 0;
      *(v44 + 2) = 1819304813;
      *(v44 + 4) = 0;
      *(v44 + 5) = 1;
      *(v44 + 6) = 0;
      *(v44 + 7) = 0;
      *(v44 + 4) = 0;
      v45 = v44;
      *(v44 + 3) = 12;
      *(v44 + 5) = 0;
      *(v44 + 6) = 0;
      v111 = 0;
      if (v102)
      {
        APSLogErrorAt();
        v65 = 4294960591;
LABEL_141:
        APSLogErrorAt();
LABEL_144:
        v10 = v89;
        v15 = v87;
        v5 = v88;
        v73 = v98;
        v72 = v96;
        v71 = theData;
        v70 = theArray;
        goto LABEL_126;
      }

      v106 = v32;
      v46 = &v101[12 * v32];
      if (*(a1 + 24) <= 0x24D2F3u)
      {
        CFDictionaryGetValue(*(a1 + 16), @"manufacturer");
        if (FigCFEqual())
        {
          v47 = v40[258];
          if (v47 <= 60 && (v47 != -1 || _LogCategory_Initialize()))
          {
            carPlayAudioFormat_repackageFormatsForStream_cold_5();
          }

          Int64Ranged = 0;
          v49 = 0;
          v50 = 1;
LABEL_81:
          v60 = *(a1 + v100);
          *v46 = v60;
          v60 *= 1000;
          v61 = *v45 * (v60 + v49) / 1000000.0;
          v46[1] = (*v45 * (v60 + Int64Ranged) / 1000000.0);
          v46[2] = v61;
          v62 = v40[258];
          if (v50)
          {
            if (v62 <= 60 && (v62 != -1 || _LogCategory_Initialize()))
            {
              if (v108 == 100)
              {
                v63 = "MainAudio";
              }

              else if (v108 == 101)
              {
                v63 = "AltAudio";
              }

              else
              {
                v63 = "?";
                if (v108 == 102)
                {
                  v63 = "MainHighAudio";
                }

                else if (v94 <= 4)
                {
                  v63 = off_27849E258[v94];
                }
              }

              LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus carPlayAudioFormat_getLatencyInfo(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, const AudioStreamBasicDescription *, APCarPlayAudioLatencyInfo *)", 33554492, "No latency information found for %s/%@ %{asbd}\n", v63, v107, v45, v81, v82, v83, v84, v85);
            }
          }

          else if (v62 <= 30 && (v62 != -1 || _LogCategory_Initialize()))
          {
            if (v108 == 100)
            {
              v64 = "MainAudio";
            }

            else if (v108 == 101)
            {
              v64 = "AltAudio";
            }

            else
            {
              v64 = "?";
              if (v108 == 102)
              {
                v64 = "MainHighAudio";
              }

              else if (v94 <= 4)
              {
                v64 = off_27849E258[v94];
              }
            }

            LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus carPlayAudioFormat_getLatencyInfo(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, const AudioStreamBasicDescription *, APCarPlayAudioLatencyInfo *)", 33554462, "Latency info for %s/%@ %{asbd}: input=%lu us, output=%lu us, jb=%lu ms, total input=%lu samples, total output=%lu samples\n", v64, v107, v45, Int64Ranged, v49, *v46, v46[1], v46[2]);
          }

          goto LABEL_114;
        }
      }

      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (v111)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_6(v111);
      }

      else
      {
        Count = CFArrayGetCount(TypedValue);
        if (Count < 1)
        {
          Int64Ranged = 0;
          v49 = 0;
          v50 = 1;
          a1 = v99;
LABEL_80:
          v40 = &unk_27CFF1000;
          goto LABEL_81;
        }

        v53 = Count;
        v105 = 0;
        v49 = 0;
        Int64Ranged = 0;
        v54 = 0;
        while (1)
        {
          CFDictionaryGetTypeID();
          CFArrayGetTypedValueAtIndex();
          if (v111)
          {
            break;
          }

          Int64 = CFDictionaryGetInt64();
          if (v111 != -6727)
          {
            if (v111)
            {
              goto LABEL_111;
            }

            if (v108 != Int64)
            {
              goto LABEL_76;
            }
          }

          v111 = 0;
          CFStringGetTypeID();
          v56 = CFDictionaryGetTypedValue();
          if (v111 != -6727)
          {
            if (v111)
            {
              goto LABEL_111;
            }

            if (!CFEqual(v107, v56))
            {
              goto LABEL_76;
            }
          }

          v111 = 0;
          v57 = CFDictionaryGetInt64();
          if (v111 != -6727)
          {
            if (v111)
            {
              goto LABEL_111;
            }

            if (v57 != *v45)
            {
              goto LABEL_76;
            }
          }

          v111 = 0;
          v58 = CFDictionaryGetInt64();
          if (v111 != -6727)
          {
            if (v111)
            {
              goto LABEL_111;
            }

            if (v58 != *(v45 + 8))
            {
              goto LABEL_76;
            }
          }

          v111 = 0;
          v59 = CFDictionaryGetInt64();
          if (v111 == -6727)
          {
            goto LABEL_75;
          }

          if (v111)
          {
LABEL_111:
            APSLogErrorAt();
            goto LABEL_112;
          }

          if (v59 == *(v45 + 7))
          {
LABEL_75:
            v111 = 0;
            Int64Ranged = CFDictionaryGetInt64Ranged();
            v49 = CFDictionaryGetInt64Ranged();
            v105 = 1;
          }

          else
          {
LABEL_76:
            v111 = 0;
          }

          if (v53 == ++v54)
          {
            v50 = v105 == 0;
            a1 = v99;
            goto LABEL_80;
          }
        }

        carPlayAudioFormat_repackageFormatsForStream_cold_7(v111);
LABEL_112:
        a1 = v99;
      }

      v40 = &unk_27CFF1000;
LABEL_114:
      v65 = v111;
      if (v111)
      {
        goto LABEL_141;
      }

      CFGetAllocator(a1);
      if (APCarPlayAudioFormatInfoGetTypeID_initOnce != -1)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_8();
      }

      Instance = _CFRuntimeCreateInstance();
      if (!Instance)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_9();
        v65 = 4294960568;
        goto LABEL_144;
      }

      v67 = Instance;
      *(Instance + 128) = 0;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 104) = v108;
      *(Instance + 112) = CFRetain(v107);
      *(v67 + 16) = 0u;
      *(v67 + 32) = 0u;
      *(v67 + 48) = 0;
      v68 = *(v45 + 4);
      v69 = *(v45 + 1);
      *(v67 + 56) = *v45;
      *(v67 + 72) = v69;
      *(v67 + 88) = v68;
      *(v67 + 96) = v39;
      LODWORD(v68) = v46[2];
      *(v67 + 120) = *v46;
      *(v67 + 128) = v68;
      CFArrayAppendValue(theArray, v67);
      CFRelease(v67);
      v32 = v106 + 1;
      v15 = 0;
LABEL_119:
      ++v34;
      v39 *= 2;
    }

    while (v34 != 64);
    v70 = theArray;
    if (CFArrayGetCount(theArray) == v32)
    {
      CFDictionarySetValue(theDict, v107, theArray);
      v71 = theData;
      CFDataSetLength(theData, 56 * v32);
      CFDictionarySetValue(Mutable, v107, theData);
      v72 = v96;
      CFDataSetLength(v96, 12 * v32);
      v10 = v89;
      CFDictionarySetValue(v89, v107, v96);
      v65 = 0;
      v5 = v88;
      v73 = v98;
    }

    else
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_10();
      v65 = 4294960534;
      v10 = v89;
      v15 = v87;
      v5 = v88;
      v73 = v98;
      v72 = v96;
      v71 = theData;
    }

LABEL_126:
    CFRelease(v71);
    CFRelease(v72);
    CFRelease(v70);
    if (v65)
    {
      goto LABEL_178;
    }

    v74 = *(a1 + 28);
    if (v5 == 100)
    {
      if (*(a1 + 28))
      {
        break;
      }
    }

    if (v5 == 103 && *v95 == @"media")
    {
      if (*(a1 + 48))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_11();
        goto LABEL_183;
      }

      *(a1 + 48) = v15;
      goto LABEL_136;
    }

LABEL_134:
    if (*(a1 + 40))
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_12();
      goto LABEL_183;
    }

    *(a1 + 40) = v15;
LABEL_136:
    v13 = (v73 + 1);
    v14 = v73 + 1;
    if (v13 >= a4)
    {
      goto LABEL_148;
    }
  }

  if (*v95 != @"media")
  {
    goto LABEL_134;
  }

  if (!*(a1 + 44))
  {
    *(a1 + 44) = v15;
    goto LABEL_136;
  }

  carPlayAudioFormat_repackageFormatsForStream_cold_13();
LABEL_183:
  v65 = 4294960591;
LABEL_179:
  v77 = theDict;
LABEL_162:
  CFRelease(cf);
LABEL_163:
  CFRelease(Mutable);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v77)
  {
    v78 = v77;
    goto LABEL_171;
  }

  return v65;
}

uint64_t browserController_registerCMBaseClass()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserControllerTypeID = result;
  return result;
}

uint64_t APBrowserControllerCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APBrowserController <= 30)
  {
    if (gLogCategory_APBrowserController != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      APBrowserControllerCreate_cold_1(a1, a2, a3);
    }
  }

  if (gAPBrowserControllerInitOnce != -1)
  {
    APBrowserControllerCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_10();
    return v22;
  }

  v6 = Instance;
  *(Instance + 128) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v7 = dispatch_queue_create("com.apple.airplay.APBrowserController.events", 0);
  v6[4] = v7;
  if (!v7)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_9();
    goto LABEL_27;
  }

  v8 = dispatch_queue_create("com.apple.airplay.APBrowserController", 0);
  v6[3] = v8;
  if (!v8)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_8();
    goto LABEL_27;
  }

  v9 = *MEMORY[0x277CC0C08];
  if (*MEMORY[0x277CC0C08])
  {
    v6[7] = CFRetain(*MEMORY[0x277CC0C08]);
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
    v6[7] = 0;
  }

  v6[8] = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  v6[15] = Mutable;
  if (!Mutable)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_7();
    goto LABEL_27;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  v6[16] = v13;
  if (!v13)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_6();
    goto LABEL_27;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v14)
  {
    v22 = 4294895486;
    APBrowserControllerCreate_cold_5();
    goto LABEL_27;
  }

  v15 = v14;
  if (a2)
  {
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  v16 = APBrowserCreate();
  if (v16)
  {
    v22 = v16;
    APBrowserControllerCreate_cold_3(v16);
    goto LABEL_26;
  }

  v17 = v6[5];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v18)
  {
    v22 = 4294954514;
LABEL_25:
    APSLogErrorAt();
LABEL_26:
    CFRelease(v15);
LABEL_27:
    CFRelease(v6);
    return v22;
  }

  v19 = v18(v17, browserController_browserEventHandler, v6);
  if (v19)
  {
    v22 = v19;
    goto LABEL_25;
  }

  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    APBrowserControllerCreate_cold_4(v6, v20, v21);
  }

  *a3 = v6;
  CFRetain(v6);
  CFRelease(v15);
  return 0;
}

uint64_t APBrowserControllerInvalidate(uint64_t a1)
{
  if (a1)
  {
    v1 = APSDispatchSyncTask();
    APSDispatchSyncFlush();
    return v1;
  }

  else
  {
    APBrowserControllerInvalidate_cold_1(&v3);
    return v3;
  }
}

uint64_t browserController_invalidateInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_invalidateInternal_cold_1(a1, a2, a3);
  }

  *(a1 + 16) = 1;
  CMBaseObject = APBrowserGetCMBaseObject();
  if (CMBaseObject)
  {
    v5 = CMBaseObject;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t browserController_registerInternalClientNeedsDiscovery(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_registerInternalClientNeedsDiscovery_cold_1(a1, a2, a3);
  }

  v4 = a1[1];
  v5 = *(*a1 + 128);
  if (*(a1 + 16))
  {
    CFSetAddValue(v5, v4);
  }

  else
  {
    CFSetRemoveValue(v5, v4);
  }

  browserController_updateDiscoveryMode(*a1);
  return 0;
}

uint64_t browserController_registerEndpointActivating(uint64_t *a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &cf);
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  if (*(a1 + 16))
  {
    v4 = "-remote";
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(v2, 0, @"%@%s", DiscoveryID, v4);
  v6 = gLogCategory_APBrowserController;
  if (gLogCategory_APBrowserController <= 40)
  {
    if (gLogCategory_APBrowserController != -1)
    {
LABEL_6:
      v7 = cf;
      if (v6 > 20)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_APBrowserController, "OSStatus browserController_registerEndpointActivating(void *)", 33554472, "Endpoint %@ with ID: %@ is Activating %?@\n", v7, v5, v8, a1[1]);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      v6 = gLogCategory_APBrowserController;
      goto LABEL_6;
    }
  }

LABEL_14:
  if (CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    browserController_registerEndpointActivating_cold_1();
  }

  else
  {
    if (*(a1 + 16))
    {
      v9 = @"Presence";
    }

    else
    {
      v9 = @"Detailed";
    }

    CFDictionaryAddValue(*(*a1 + 120), v5, v9);
    browserController_updateDiscoveryMode(*a1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t browserController_copyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  if (!cf1)
  {
    browserController_copyProperty_cold_5();
    return 4294895485;
  }

  if (CFEqual(cf1, @"Browser"))
  {
    v8 = CFRetain(*(a1 + 40));
    v9 = 0;
    *a4 = v8;
    return v9;
  }

  if (!CFEqual(cf1, @"showInfo"))
  {
    return 4294954509;
  }

  theDict = 0;
  Count = CFDictionaryGetCount(*(a1 + 120));
  DiscoveryModeRequiredByEndpoints = browserController_getDiscoveryModeRequiredByEndpoints(a1);
  Mutable = CFStringCreateMutable(a3, 0);
  v13 = Mutable;
  theString = Mutable;
  if (!Mutable)
  {
    v9 = 4294895486;
    browserController_copyProperty_cold_1();
    goto LABEL_21;
  }

  CFStringAppend(Mutable, @"+-+ APBrowserController state +-+\n");
  CFStringAppend(v13, @"\n");
  if (*(a1 + 16))
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  CFStringAppendFormat(v13, 0, @"invalidated=%s ", v14);
  StringForMode = browserController_getStringForMode(*(a1 + 64));
  v16 = browserController_getStringForMode(*(a1 + 56));
  CFStringAppendFormat(v13, 0, @"currentDiscoveryMode=%s requestedDiscoveryMode=%s (seed %llu)\n", StringForMode, v16, *(a1 + 48));
  if (Count <= 0)
  {
    v17 = "no";
  }

  else
  {
    v17 = "yes";
  }

  v18 = browserController_getStringForMode(DiscoveryModeRequiredByEndpoints);
  v19 = CFSetGetCount(*(a1 + 128));
  CFStringAppendFormat(v13, 0, @"forcedMode=%@ endpointsActivated=%s endpointRequiredDiscoveryMode=%s internalClientsRequiringDiscovery=%d\n", 0, v17, v18, v19);
  if (CFDictionaryGetCount(*(a1 + 120)) >= 1)
  {
    context[1] = a3;
    context[2] = 0;
    context[0] = &theString;
    CFStringAppend(v13, @"Active devices:\n");
    CFDictionaryApplyFunction(*(a1 + 120), browserController_copyDescriptionForDevice, context);
    v13 = theString;
  }

  CFStringAppend(v13, @"\n");
  CMBaseObject = APBrowserGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v9 = 4294954514;
    goto LABEL_18;
  }

  v9 = v21(CMBaseObject, *MEMORY[0x277CE4D20], a3, &theDict);
  if (v9)
  {
LABEL_18:
    APSLogErrorAt();
    if (theString)
    {
      CFRelease(theString);
    }

    v13 = 0;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE4D28]);
  CFStringAppendFormat(theString, 0, @"%@", Value);
  v13 = theString;
  theString = 0;
LABEL_21:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v9)
  {
    browserController_copyProperty_cold_2(v9);
  }

  else
  {
    v23 = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(v23, @"detailedDescription", v13);
      v9 = 0;
      *a4 = v24;
    }

    else
    {
      v9 = 4294895486;
      browserController_copyProperty_cold_3();
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    browserController_copyProperty_cold_4(v9);
  }

  return v9;
}

uint64_t APBrowserControllerReconfirmEndpoint(void *a1, const void *a2)
{
  CFRetain(a1);
  CFRetain(a2);
  return APSDispatchAsyncFHelper();
}

void browserController_reconfirmEndpointInternal(uint64_t a1)
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_reconfirmEndpointInternal_cold_1(a1);
  }

  v2 = APTransportDeviceReconfirm();
  if (v2)
  {
    browserController_reconfirmEndpointInternal_cold_2(v2);
  }

  CFRelease(*a1);
  v3 = *(a1 + 8);

  CFRelease(v3);
}

uint64_t APBrowserControllerDiscoverAndInjectEndpoint(uint64_t a1)
{
  v1 = APBrowserDiscoverAndInjectDevice();
  v2 = v1;
  if (v1)
  {
    APBrowserControllerDiscoverAndInjectEndpoint_cold_1(v1);
  }

  return v2;
}

uint64_t APBrowserControllerRemoveInjectedEndpoint(uint64_t a1, uint64_t a2)
{
  APTransportDeviceGetDiscoveryID();
  v2 = APBrowserRemoveInjectedDevice();
  v3 = v2;
  if (v2)
  {
    APBrowserControllerRemoveInjectedEndpoint_cold_1(v2);
  }

  return v3;
}

uint64_t APBrowserControllerSetEventHandlers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11[0] = a2;
  v8 = a5;
  v9 = a4;
  v7 = a6;
  v11[1] = a1 + 80;
  v11[2] = v11;
  v11[3] = 8;
  v11[4] = a1 + 88;
  v11[5] = &v10;
  v11[6] = 8;
  v11[7] = a1 + 96;
  v11[8] = &v9;
  v11[9] = 8;
  v11[10] = a1 + 104;
  v11[11] = &v8;
  v11[12] = 8;
  v11[13] = a1 + 112;
  v11[14] = &v7;
  v11[15] = 8;
  return APSDispatchSyncBatchAssignment();
}

void browserController_Finalize(void *a1, uint64_t a2, uint64_t a3)
{
  browserController_invalidateInternal(a1, a2, a3);
  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
    a1[15] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    CFRelease(v5);
    a1[16] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[3];
  if (v9)
  {
    dispatch_release(v9);
    a1[3] = 0;
  }

  v10 = a1[4];
  if (v10)
  {
    dispatch_release(v10);
    a1[4] = 0;
  }
}

void browserController_browserModeAlreadySet(void *a1)
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_browserModeAlreadySet_cold_1(a1);
  }

  v2 = *a1;
  if (!*(*a1 + 16))
  {
    v3 = v2[13];
    if (v3)
    {
      v3(a1[1], a1[2], v2[14]);
      v2 = *a1;
    }
  }

  CFRelease(v2);
  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {

    CFRelease(v5);
  }
}

const char *browserController_getStringForMode(const void *a1)
{
  if (CFEqual(a1, *MEMORY[0x277CC0C08]))
  {
    return "None";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0C10]))
  {
    return "Presence";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0BF8]))
  {
    return "Background";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0C00]))
  {
    return "Detailed";
  }

  if (gLogCategory_APBrowserController <= 60 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_getStringForMode_cold_1(a1);
  }

  return "Unrecognized";
}

void browserController_copyDescriptionForDevice(uint64_t a1, uint64_t a2, CFMutableStringRef **a3)
{
  v4 = *a3;
  CFStringAppendFormat(**a3, 0, @"    %@", a1);
  if (*MEMORY[0x277CBED28] == a2)
  {
    v5 = "- Requires Detailed";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(*v4, 0, @" %s", v5);
  v6 = *v4;

  CFStringAppend(v6, @"\n");
}

void browserController_tickleDetailedMode(void *a1)
{
  v2 = APBrowserTickleDetailedMode();
  if (v2)
  {
    browserController_tickleDetailedMode_cold_1(v2);
  }

  CFRelease(a1);
}

uint64_t APEndpointCarPlayCreateWithTransportDevice(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = 0;
  cf = 0;
  v41 = 0;
  v45 = 0u;
  v46 = 0u;
  *label = 0u;
  v44 = 0u;
  if (!a2)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_18();
    goto LABEL_58;
  }

  if (!a4)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_17();
    goto LABEL_58;
  }

  v7 = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, a2, 0, &cf);
  v42 = v7;
  if (v7)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_1(v7);
    goto LABEL_58;
  }

  if (!APSGetFBOPropertyInt64())
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_16();
    goto LABEL_58;
  }

  if (!APSGetFBOPropertyInt64() && !APSGetFBOPropertyInt64())
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_15();
    goto LABEL_58;
  }

  FigEndpointExtendedGetClassID();
  v8 = CMDerivedObjectCreate();
  v42 = v8;
  if (v8)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_2(v8);
    goto LABEL_58;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = CFRetain(cf);
  APEndpointDescriptionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v13 = 4294954514;
    v42 = -12782;
    goto LABEL_64;
  }

  v13 = v12(v11, @"Name", a1, DerivedStorage + 16);
  v42 = v13;
  if (v13)
  {
LABEL_64:
    APEndpointCarPlayCreateWithTransportDevice_cold_14(v13);
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    v14 = *(DerivedStorage + 24);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 24) = 0;
    }

    v15 = *MEMORY[0x277CBECE8];
    v16 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/CarKit.framework", kCFURLPOSIXPathStyle, 1u);
    if (v16)
    {
      v17 = CFBundleCreate(v15, v16);
      v18 = v17;
      if (v17)
      {
        *(DerivedStorage + 24) = CFBundleCopyLocalizedString(v17, @"CARPLAY_LOCKSCREEN_TITLE", @"CARPLAY_LOCKSCREEN_TITLE", @"Localizable");
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  *(DerivedStorage + 40) = APSGetFBOPropertyInt64() == 0;
  if (v42)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_3(v42);
LABEL_78:
    Mutable = 0;
    goto LABEL_52;
  }

  v19 = APSGetFBOPropertyInt64();
  if (v42)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_4(v42);
    goto LABEL_78;
  }

  if (v19 == 32)
  {
    *(DerivedStorage + 41) = 1;
  }

  SNPrintF(label, 64, "APEndpointCarPlay.%{ptr}", v41);
  v20 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 168) = v20;
  if (!v20)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_13();
    goto LABEL_78;
  }

  SNPrintF(label, 64, "APEndpointCarPlay.%{ptr}.network", v41);
  v21 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 528) = v21;
  if (!v21)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_12();
    goto LABEL_78;
  }

  SNPrintF(label, 64, "APEndpointCarPlay.%{ptr}.event", v41);
  v22 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 512) = v22;
  if (!v22)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_11();
    goto LABEL_78;
  }

  SNPrintF(label, 64, "APEndpointCarPlay.%{ptr}.notification", v41);
  v23 = dispatch_queue_create(label, 0);
  *DerivedStorage = v23;
  if (!v23)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_10();
    goto LABEL_78;
  }

  CFPrefs_GetInt64();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    CFDictionarySetInt64();
    v42 = APAudioEngineCarPlayCreate(0, Mutable, (DerivedStorage + 288));
    if (*(DerivedStorage + 288))
    {
      v25 = CFGetAllocator(v41);
      APEndpointDescriptionGetCMBaseObject();
      v27 = v26;
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v29 = v28(v27, @"DeviceID", v25, DerivedStorage + 32);
        v42 = v29;
        if (!v29)
        {
          *(DerivedStorage + 344) = -1;
          *(DerivedStorage + 424) = -1;
          *(DerivedStorage + 432) = -1;
          *(DerivedStorage + 440) = -1;
          if (CFPrefs_GetInt64() <= 0)
          {
            *(DerivedStorage + 360) = 0;
            *(DerivedStorage + 368) = 0;
            if (!a3)
            {
LABEL_45:
              v37 = APSEventRecorderCreate();
              v42 = v37;
              if (v37)
              {
                APEndpointCarPlayCreateWithTransportDevice_cold_5(v37);
              }

              else
              {
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                LoggingCaches = carEndpoint_createLoggingCaches(v41);
                v42 = LoggingCaches;
                if (LoggingCaches)
                {
                  APEndpointCarPlayCreateWithTransportDevice_cold_6(LoggingCaches);
                }

                else
                {
                  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus APEndpointCarPlayCreateWithTransportDevice(CFAllocatorRef, APTransportDeviceRef, CFDictionaryRef, FigEndpointRef *)", 33554482, "Created APEndpointCarPlay [%{ptr}] with name %'@ and id %'@\n", v41, *(DerivedStorage + 16), *(DerivedStorage + 32));
                  }

                  *a4 = v41;
                  v41 = 0;
                }
              }

              goto LABEL_52;
            }
          }

          else
          {
            Int64 = CFPrefs_GetInt64();
            v31 = 60 * Int64 == 0;
            v32 = (60 * Int64) >> 1;
            *(DerivedStorage + 360) = 0;
            *(DerivedStorage + 368) = v32;
            if (!v31)
            {
              *(DerivedStorage + 352) = malloc_type_calloc(v32, 8uLL, 0x6004044C4A2DFuLL);
            }

            if (!a3)
            {
              goto LABEL_45;
            }
          }

          *(DerivedStorage + 160) = CFDictionaryGetInt64() != 0;
          if (CFDictionaryContainsKey(a3, @"sessionHostInfo"))
          {
            v33 = *(DerivedStorage + 48);
            Value = CFDictionaryGetValue(a3, @"sessionHostInfo");
            *(DerivedStorage + 48) = Value;
            if (Value)
            {
              CFRetain(Value);
            }

            if (v33)
            {
              CFRelease(v33);
            }
          }

          v35 = CFDictionaryGetValue(a3, @"EventRecorder");
          v36 = *(DerivedStorage + 544);
          *(DerivedStorage + 544) = v35;
          if (v35)
          {
            CFRetain(v35);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          goto LABEL_45;
        }
      }

      else
      {
        v29 = 4294954514;
        v42 = -12782;
      }

      APEndpointCarPlayCreateWithTransportDevice_cold_7(v29);
    }

    else
    {
      APEndpointCarPlayCreateWithTransportDevice_cold_8();
    }
  }

  else
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_9();
  }

LABEL_52:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_58:
  if (v41)
  {
    CFRelease(v41);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v42;
}

uint64_t carEndpoint_createLoggingCaches(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keyExistsAndHasValidFormat = 0;
  v2 = (DerivedStorage + 568);
  *(DerivedStorage + 568) = 20;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"sendCommandCacheSize", @"com.apple.airplay", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    AppIntegerValue = *v2;
  }

  else
  {
    *v2 = AppIntegerValue;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], AppIntegerValue, MEMORY[0x277CBF128]);
  *(DerivedStorage + 560) = Mutable;
  if (!Mutable)
  {
    carEndpoint_createLoggingCaches_cold_4();
    return 4294950575;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_createLoggingCaches_cold_1(v2, v7, v8);
  }

  *(DerivedStorage + 552) = FigSimpleMutexCreate();
  v9 = (DerivedStorage + 584);
  *(DerivedStorage + 584) = 10;
  keyExistsAndHasValidFormat = 0;
  v10 = CFPreferencesGetAppIntegerValue(@"receivedCommandCacheSize", @"com.apple.airplay", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && v10)
  {
    *v9 = v10;
  }

  else
  {
    v10 = *v9;
  }

  v11 = CFArrayCreateMutable(v5, v10, MEMORY[0x277CBF128]);
  *(DerivedStorage + 576) = v11;
  if (!v11)
  {
    carEndpoint_createLoggingCaches_cold_3();
    return 4294950575;
  }

  if (gLogCategory_APEndpointCarPlay > 50)
  {
    return 0;
  }

  if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result))
  {
    carEndpoint_createLoggingCaches_cold_2(DerivedStorage + 584, v12, v13);
    return 0;
  }

  return result;
}

void carEndpoint_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_Finalize_cold_1(a1, v2, v3);
  }

  if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
  {
    carEndpoint_Finalize_cold_2();
  }

  if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
  {
    v5 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 0x40000000;
    v35[2] = __carEndpoint_Finalize_block_invoke;
    v35[3] = &__block_descriptor_tmp_28;
    v35[4] = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    v35[5] = a1;
    dispatch_sync(v5, v35);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 24) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 48) = 0;
  }

  v11 = *(DerivedStorage + 544);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 544) = 0;
  }

  v12 = *(DerivedStorage + 536);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 536) = 0;
  }

  FigSimpleMutexDestroy();
  v13 = *(DerivedStorage + 560);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 560) = 0;
  }

  v14 = *(DerivedStorage + 576);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 576) = 0;
  }

  v15 = *(DerivedStorage + 216);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 216) = 0;
  }

  v16 = *(DerivedStorage + 512);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 512) = 0;
  }

  v17 = *(DerivedStorage + 520);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 520) = 0;
  }

  v18 = *(DerivedStorage + 240);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 240) = 0;
  }

  v19 = *(DerivedStorage + 256);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 256) = 0;
  }

  v20 = *(DerivedStorage + 264);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 264) = 0;
  }

  v21 = *(DerivedStorage + 280);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 280) = 0;
  }

  v22 = *(DerivedStorage + 288);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 288) = 0;
  }

  v23 = *(DerivedStorage + 296);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 296) = 0;
  }

  v24 = *(DerivedStorage + 304);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 304) = 0;
  }

  v25 = *(DerivedStorage + 320);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 320) = 0;
  }

  v26 = *(DerivedStorage + 336);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 336) = 0;
  }

  v27 = *(DerivedStorage + 464);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 464) = 0;
  }

  v28 = *(DerivedStorage + 480);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 480) = 0;
  }

  v29 = *(DerivedStorage + 472);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 472) = 0;
  }

  v30 = *(DerivedStorage + 272);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 272) = 0;
  }

  v31 = *(DerivedStorage + 168);
  if (v31)
  {
    dispatch_release(v31);
    *(DerivedStorage + 168) = 0;
  }

  if (*(DerivedStorage + 368))
  {
    v32 = 0;
    do
    {
      v33 = *(*(DerivedStorage + 352) + 8 * v32);
      if (!v33)
      {
        break;
      }

      CFRelease(v33);
      *(*(DerivedStorage + 352) + 8 * v32++) = 0;
    }

    while (v32 < *(DerivedStorage + 368));
  }

  free(*(DerivedStorage + 352));
  v34 = *(DerivedStorage + 528);
  if (v34)
  {
    dispatch_release(v34);
    *(DerivedStorage + 528) = 0;
  }
}

uint64_t carEndpoint_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  Mutable = CFStringCreateMutable(0, 0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_CopyDebugDescription_block_invoke;
  block[3] = &unk_27849E388;
  block[5] = &v8;
  block[6] = a1;
  block[4] = &v12;
  dispatch_sync(v3, block);
  v4 = v9[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = v13[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __introspector_getCollectionOfActiveCarPlayEndpoints_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfActiveCarPlayEndpoints_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfActiveCarPlayEndpoints_coll = dispatch_queue_create("CollectionOfActiveCarPlayEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v3 = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    *(introspector_getCollectionOfActiveCarPlayEndpoints_coll + 8) = Mutable;
    *(v3 + 16) = "ActiveCarPlayEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void carEndpoint_copyShowInfoDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  cf = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"Name", *(DerivedStorage + 16));
    CFDictionarySetValue(v7, @"DeviceID", *(DerivedStorage + 32));
    APEndpointDescriptionGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, @"TransportDevice", a2, &v30);
      if (v30)
      {
        DiscoveryID = APTransportDeviceGetDiscoveryID();
        CFDictionarySetValue(v7, @"DiscoveryID", DiscoveryID);
        if (v30)
        {
          CFRelease(v30);
          v30 = 0;
        }
      }
    }

    APEndpointDescriptionGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"Model", a2, &value);
    }

    CFDictionarySetValue(v7, @"Model", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, @"SourceVersion", a2, &value);
    }

    CFDictionarySetValue(v7, @"SourceVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v18 = *(DerivedStorage + 8);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v19)
    {
      v19(v18, &cf);
      v20 = cf;
    }

    else
    {
      v20 = 0;
    }

    CFDictionarySetValue(v7, @"AirPlayFeatures", v20);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, @"StatusFlags", a2, &value);
    }

    CFDictionarySetValue(v7, @"StatusFlags", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v24 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 240))
    {
      v24 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v7, @"Activated", *v24);
    if (*(DerivedStorage + 240))
    {
      APSenderSessionGetCMBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v27(v26, @"ShowInfo", *MEMORY[0x277CBECE8], &value);
      }

      if (value)
      {
        CFDictionarySetValue(v7, @"SenderSessionInfo", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }

    if (*(DerivedStorage + 264))
    {
      CFArrayGetCount(*(DerivedStorage + 264));
      CFArrayApplyBlock();
    }

    if (*(DerivedStorage + 228))
    {
      CFDictionarySetInt64();
    }

    *a3 = v7;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    carEndpoint_copyShowInfoDictionary_cold_1();
  }
}

uint64_t APEndpointDescriptionCopyFeatures(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void __carEndpoint_copyShowInfoDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  value = 0;
  v4 = *(a1 + 32);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"EndpointStreamShowInfo", v4, &value);
    if (value)
    {
      CFDictionarySetValue(*(a1 + 40), *(a2 + 24), value);
      CFRelease(value);
    }
  }
}

uint64_t carEndpoint_isEndpointConnected(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(DerivedStorage + 168);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __carEndpoint_isEndpointConnected_block_invoke;
  v5[3] = &unk_27849E3D0;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t carEndpoint_copyPropertyForDisplay(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v8 = CFGetAllocator(a1);
  APEndpointDescriptionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v15 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v12 = v11(v10, @"DisplayDescriptionArray", v8, &theArray);
  if (v12)
  {
    v15 = v12;
    goto LABEL_7;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    carEndpoint_copyPropertyForDisplay_cold_2();
    v15 = 4294950576;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v14 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, a2, a3, a4);
    v15 = v14;
    if (v14)
    {
      carEndpoint_copyPropertyForDisplay_cold_1(v14);
    }
  }

LABEL_8:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v15;
}

uint64_t carEndpoint_getSupportedFeatures(uint64_t a1, unint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    carEndpoint_getSupportedFeatures_cold_1();
    return 4294950576;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &cf);
    if (!v7)
    {
      v8 = APSFeaturesHasFeature() != 0;
      v9 = (APSFeaturesHasFeature() != 0) | (2 * v8);
      if (*(v4 + 58))
      {
        v9 |= 8uLL;
      }

      if (*(v4 + 162))
      {
        v9 |= 4uLL;
      }

      *a2 = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  APSLogErrorAt();
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t __carEndpoint_copyStateProperty_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v3 = APSGetFBOPropertyInt64();
    result = APSGetFBOPropertyInt64();
    if (v3)
    {
      v4 = result == 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(v2 + 32) + 8) + 24) |= v5;
  return result;
}

uint64_t carEndpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  v7 = v12;
  v12[3] = Mutable;
  if (Mutable)
  {
    v8 = *(DerivedStorage + 264);
    if (v8)
    {
      CFArrayGetCount(v8);
      CFArrayApplyBlock();
      v7 = v12;
      Mutable = v12[3];
    }

    v9 = 0;
    *a3 = Mutable;
    v7[3] = 0;
  }

  else
  {
    carEndpoint_copyStreams_cold_1();
    v9 = v15;
  }

  _Block_object_dispose(&v11, 8);
  return v9;
}

uint64_t carEndpoint_updateDisplayCornerMasks(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 65))
  {
    result = *(result + 464);
    if (result)
    {
      return CFDictionaryApplyBlock();
    }
  }

  return result;
}

void __carEndpoint_updateDisplayCornerMasks_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  values = a3;
  if (!*(a1 + 32) || FigCFEqual())
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    LOBYTE(v31) = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 264))
    {
      CFArrayGetCount(*(DerivedStorage + 264));
      v21 = MEMORY[0x277D85DD0];
      v22 = 0x40000000;
      v23 = __carEndpoint_getStreamIsResumedForDisplayUUID_block_invoke;
      v24 = &unk_27849E538;
      v25 = &v28;
      v26 = a2;
      CFArrayApplyBlock();
    }

    v7 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
    v8 = *(a1 + 40);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 264))
    {
      CFArrayGetCount(*(v9 + 264));
      v21 = MEMORY[0x277D85DD0];
      v22 = 0x40000000;
      v23 = __carEndpoint_copyStreamSubtypeForDisplayUUID_block_invoke;
      v24 = &unk_27849E560;
      v26 = a2;
      v27 = v8;
      v25 = &v28;
      CFArrayApplyBlock();
    }

    v10 = v29[3];
    _Block_object_dispose(&v28, 8);
    ScreenStreamForDisplayUUID = carEndpoint_getScreenStreamForDisplayUUID(*(a1 + 40), a2);
    if (ScreenStreamForDisplayUUID)
    {
      v12 = ScreenStreamForDisplayUUID;
      if (FigCFEqual() && v7)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v13(v12, 0, 0, 0);
        }

        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", 33554482, "[%{ptr}] %###s called, stream: [%{ptr}], Suspending alternate screen stream", *(a1 + 40), "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", v12);
        }
      }

      if (!a3 || *MEMORY[0x277CBEEE8] == a3)
      {
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", 33554482, "[%{ptr}] %###s called, stream: [%{ptr}], subtype: %@, CornerMask data is NULL, DisplayUUID: %@", *(a1 + 40), "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", v12, v10, a2);
        }
      }

      else
      {
        v14 = CFGetAllocator(*(a1 + 40));
        v15 = CFDictionaryCreate(v14, &kAPEndpointStreamCornerMaskKey_TopLeftCornerMask, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v15)
        {
          v16 = v15;
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", 33554482, "[%{ptr}] %###s called, stream: [%{ptr}], subtype: %@, Updating CornerMask data, DisplayUUID: %@", *(a1 + 40), "OSStatus carEndpoint_updateDisplayCornerMasks(FigEndpointRef, CFStringRef)_block_invoke", v12, v10, a2);
          }

          CMBaseObject = FigEndpointStreamGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v18)
          {
            v18(CMBaseObject, @"ExtraStreamOptions", v16);
          }

          CFRelease(v16);
        }
      }

      if (FigCFEqual())
      {
        carEndpoint_raiseAltScreenPowerAssertionIfNeeded(*(a1 + 40));
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v19)
        {
          v19(v12, 0, 0, 0);
        }
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t __carEndpoint_getStreamIsResumedForDisplayUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 56);
  }

  return result;
}

uint64_t __carEndpoint_copyStreamSubtypeForDisplayUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    v4 = CFGetAllocator(*(a1 + 48));
    v5 = *(*(a1 + 32) + 8);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *MEMORY[0x277CC18B0];

      return v9(CMBaseObject, v10, v4, v5 + 24);
    }
  }

  return result;
}

uint64_t carEndpoint_Activate(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v11 = *(DerivedStorage + 528);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __carEndpoint_Activate_block_invoke;
  v13[3] = &__block_descriptor_tmp_129;
  v13[4] = DerivedStorage;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v13[9] = a5;
  dispatch_async(v11, v13);
  return 0;
}

uint64_t carEndpoint_Deactivate(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  carEndpoint_getSupportedFeatures(a1, &v12);
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *(DerivedStorage + 528);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_Deactivate_block_invoke;
  block[3] = &__block_descriptor_tmp_1111;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a1;
  block[7] = a3;
  block[8] = v12;
  block[9] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t carEndpoint_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_Dissociate_block_invoke;
  block[3] = &unk_27849F390;
  block[4] = v8;
  block[5] = DerivedStorage;
  dispatch_sync(v3, block);
  CFRetain(a1);
  v4 = *(DerivedStorage + 528);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_Dissociate_block_invoke_2;
  v6[3] = &unk_27849F3B8;
  v6[4] = v8;
  v6[5] = a1;
  dispatch_async(v4, v6);
  _Block_object_dispose(v8, 8);
  return 0;
}

uint64_t carEndpoint_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176))
  {
    carEndpoint_SetDelegateRemoteControl_cold_1();
    return 4294950573;
  }

  else
  {
    v5 = DerivedStorage;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_SetDelegateRemoteControl(FigEndpointRef, const FigEndpointDelegateRemoteControl *)", 33554482, "[%{ptr}] Setting endpoint remote control delegate %{ptr}.\n", a1, a2);
    }

    v6 = *(v5 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_SetDelegateRemoteControl_block_invoke;
    block[3] = &__block_descriptor_tmp_1119;
    block[4] = v5;
    block[5] = a2;
    dispatch_sync(v6, block);
    return 0;
  }
}

uint64_t carEndpoint_UpdateFeaturesWithCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, void (*a4)(const void *, uint64_t, void, void, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if ((a2 & 4) != 0)
  {
    if (*(DerivedStorage + 60))
    {
      v11 = a2 & 4;
    }

    else
    {
      v11 = 0;
    }

    if (!*(DerivedStorage + 60))
    {
      a2 &= ~4uLL;
    }
  }

  else
  {
    v11 = 0;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_UpdateFeaturesWithCompletionCallback(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Update features with 0x%X; storage->videoPlaybackSupported %d; playbackSelected: %d\n", a1, a2, *(v10 + 60), v11);
  }

  v12 = *(v10 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_UpdateFeaturesWithCompletionCallback_block_invoke;
  block[3] = &unk_27849F450;
  block[4] = &v18;
  block[5] = v10;
  dispatch_sync(v12, block);
  if (*(v10 + 162) != v11)
  {
    *(v10 + 162) = v11;
    v13 = *(v19 + 6);
    v22 = 0;
    v14 = CFGetAllocator(a1);
    v15 = APEndpointCreateStreamsChangedNotificationPayload(v14, 4, v13, v11, &v22);
    if (v15)
    {
      carEndpoint_UpdateFeaturesWithCompletionCallback_cold_1(v15);
    }

    else
    {
      carEndpoint_postNotification(a1, *MEMORY[0x277CC0D90], 0, v22);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (a4)
  {
    a4(a1, a2, *(v19 + 6), 0, a5);
  }

  _Block_object_dispose(&v18, 8);
  return 0;
}

void carEndpoint_deactivateInternal(const void *a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v99 = 0;
  v100[0] = &v99;
  v100[1] = 0x2000000000;
  v101 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2000000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2000000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2000000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    v9 = "Dissociating";
    if (!a2)
    {
      v9 = "Deactivating";
    }

    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_deactivateInternal(FigEndpointRef, Boolean, CFStringRef, uint32_t *)", 33554482, "[%{ptr}] %s endpoint %'@ with reason %'@...\n", a1, v9, *(DerivedStorage + 16), a3);
  }

  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  LODWORD(v114[0]) = 0;
  LODWORD(v102[0]) = 0;
  FigSimpleMutexLock();
  v11 = *(v10 + 560);
  if (v11 && CFArrayGetCount(v11) >= 1)
  {
    v66 = a4;
    v68 = a2;
    v67 = a1;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_1(v10, v12, v13);
    }

    if (CFArrayGetCount(*(v10 + 560)) >= 1)
    {
      for (i = 0; i < CFArrayGetCount(*(v10 + 560)); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 560), i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"CarPlaySendCommandCache_Command");
        v19 = CFDictionaryGetValue(ValueAtIndex, @"CarPlaySendCommandCache_TimestampBefore");
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        v20 = LODWORD(v102[0]);
        if (!LODWORD(v102[0]))
        {
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_printLoggingCacheSendCommands(FigEndpointRef)", 33554482, "APTCSendCommandCache - %@, Body %d, Sent at %@, RTT: %.3f ms\n", Value, LODWORD(v114[0]), v19, cf, v65);
          }

          continue;
        }

        if (gLogCategory_APEndpointCarPlay <= 90)
        {
          if (gLogCategory_APEndpointCarPlay == -1)
          {
            if (!_LogCategory_Initialize())
            {
              continue;
            }

            v20 = LODWORD(v102[0]);
          }

          LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_printLoggingCacheSendCommands(FigEndpointRef)", 33554522, "APTCSendCommandCache - %@, Body %d, Sent at %@, RTT: %.3f ms, error: %d\n", Value, LODWORD(v114[0]), v19, cf, v20);
        }
      }
    }

    a4 = v66;
    a1 = v67;
    a2 = v68;
    if (gLogCategory_APEndpointCarPlay < 51 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_2(v10, v14, v15);
    }
  }

  FigSimpleMutexUnlock();
  v21 = CMBaseObjectGetDerivedStorage();
  LODWORD(cf) = 0;
  LODWORD(v114[0]) = 0;
  v22 = *(v21 + 576);
  if (v22 && CFArrayGetCount(v22) >= 1)
  {
    v69 = a2;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_3(v21, v23, v24);
    }

    if (CFArrayGetCount(*(v21 + 576)) >= 1)
    {
      for (j = 0; j < CFArrayGetCount(*(v21 + 576)); ++j)
      {
        v28 = CFArrayGetValueAtIndex(*(v21 + 576), j);
        v29 = CFDictionaryGetValue(v28, @"CarPlayReceivedCommandCache_Command");
        v30 = CFDictionaryGetValue(v28, @"CarPlayReceivedCommandCache_Timestamp");
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        v31 = LODWORD(v114[0]);
        if (!LODWORD(v114[0]))
        {
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_printLoggingCacheReceivedCommands(FigEndpointRef)", 33554482, "APTCReceivedCommandCache - %@, Body %d, Received at %@\n", v29, cf, v30, v64);
          }

          continue;
        }

        if (gLogCategory_APEndpointCarPlay <= 90)
        {
          if (gLogCategory_APEndpointCarPlay == -1)
          {
            if (!_LogCategory_Initialize())
            {
              continue;
            }

            v31 = LODWORD(v114[0]);
          }

          LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_printLoggingCacheReceivedCommands(FigEndpointRef)", 33554522, "APTCReceivedCommandCache - %@, Body %d, Received at %@, error: %d\n", v29, cf, v30, v31);
        }
      }
    }

    a2 = v69;
    if (gLogCategory_APEndpointCarPlay < 51 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_4(v21, v25, v26);
    }
  }

  v32 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFArrayRemoveAllValues(*(v32 + 560));
  FigSimpleMutexUnlock();
  CFArrayRemoveAllValues(*(v32 + 576));
  v33 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_deactivateInternal_block_invoke;
  block[3] = &unk_27849F148;
  block[4] = &v99;
  block[5] = DerivedStorage;
  dispatch_sync(v33, block);
  if (*(v100[0] + 24))
  {
    APSEventRecorderRecordEvent();
    v53 = CMBaseObjectGetDerivedStorage();
    v132 = 0;
    v133[0] = &v132;
    v133[1] = 0x2000000000;
    v133[2] = 0;
    v129 = 0;
    v130[0] = &v129;
    v130[1] = 0x2000000000;
    v131 = 0;
    v125 = 0;
    v126 = &v125;
    v127 = 0x2000000000;
    v128 = 0;
    v123 = 0;
    v124[0] = &v123;
    v124[1] = 0x2000000000;
    v124[2] = 0;
    v121[0] = 0;
    v121[1] = v121;
    v121[2] = 0x2000000000;
    v122 = 0;
    v117 = 0;
    v118 = &v117;
    v119 = 0x2000000000;
    v54 = MEMORY[0x277CBF138];
    v55 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v115 = 0;
    v116[0] = &v115;
    v116[1] = 0x2000000000;
    v116[2] = CFDictionaryCreateMutable(0, 0, v54, v55);
    v56 = *(v53 + 168);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 0x40000000;
    v114[2] = __carEndpoint_postSessionStatistics_block_invoke;
    v114[3] = &unk_27849F238;
    v114[8] = v53;
    v114[4] = &v132;
    v114[5] = &v129;
    v114[6] = &v117;
    v114[7] = &v125;
    dispatch_sync(v56, v114);
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_5(v124, v53, v133, v130);
    }

    if (v126[3])
    {
      CFArrayGetCount(*(v53 + 264));
      cf = MEMORY[0x277D85DD0];
      v104 = 0x40000000;
      v105 = __carEndpoint_postSessionStatistics_block_invoke_2;
      v106 = &unk_27849F260;
      v107 = &v129;
      v108 = &v123;
      v109 = &v117;
      v110 = &v115;
      v113 = v53;
      v112 = a1;
      v111 = v121;
      CFArrayApplyBlock();
      if (*(v53 + 376))
      {
        CFDictionarySetInt64();
      }

      v58 = *(v53 + 168);
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 0x40000000;
      v102[2] = __carEndpoint_postSessionStatistics_block_invoke_3;
      v102[3] = &unk_27849F2B0;
      v102[5] = v53;
      v102[4] = &v117;
      dispatch_sync(v58, v102);
      APCarPlay_AddAnalyticsValues(v118[3], @"SessionEnded");
      if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        carEndpoint_deactivateInternal_cold_6(v116, a1, v59);
      }

      APCarPlay_AddSignPostTimeInfoToTimeStore(@"CARAirPlaySessionEndTimeInfo", *(v116[0] + 24));
      CFRelease(v126[3]);
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_7(v124, a1, v57);
    }

    free(*(v124[0] + 24));
    v60 = v118[3];
    if (v60)
    {
      CFRelease(v60);
    }

    v61 = *(v116[0] + 24);
    if (v61)
    {
      CFRelease(v61);
    }

    _Block_object_dispose(&v115, 8);
    _Block_object_dispose(&v117, 8);
    _Block_object_dispose(v121, 8);
    _Block_object_dispose(&v123, 8);
    _Block_object_dispose(&v125, 8);
    _Block_object_dispose(&v129, 8);
    _Block_object_dispose(&v132, 8);
    carEndpoint_powerLogActivation(a1, 0);
    v62 = CMBaseObjectGetDerivedStorage();
    APSEventRecorderReset();
    v63 = *(v62 + 168);
    cf = MEMORY[0x277D85DD0];
    v104 = 0x40000000;
    v105 = __carEndpoint_resetEventRecorderEventsAndStatistics_block_invoke;
    v106 = &__block_descriptor_tmp_1104;
    v107 = v62;
    dispatch_sync(v63, &cf);
  }

  *(DerivedStorage + 161) = 0;
  v34 = *(DerivedStorage + 168);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 0x40000000;
  v73[2] = __carEndpoint_deactivateInternal_block_invoke_2;
  v73[3] = &unk_27849F170;
  v73[4] = &v75;
  v73[5] = &v95;
  v73[10] = a1;
  v73[11] = DerivedStorage;
  v73[6] = &v91;
  v73[7] = &v87;
  v73[8] = &v79;
  v73[9] = &v83;
  dispatch_sync(v34, v73);
  IsAirplayd = FigServer_IsAirplayd();
  if (!IsAirplayd)
  {
    v36 = *(DerivedStorage + 512);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 0x40000000;
    v72[2] = __carEndpoint_deactivateInternal_block_invoke_3;
    v72[3] = &__block_descriptor_tmp_1040;
    v72[4] = DerivedStorage;
    dispatch_sync(v36, v72);
  }

  v37 = v80[3];
  if (v37)
  {
    APAccTransportClientConnectionInvalidateEndpoint(v84[3], v37);
    CFRelease(v80[3]);
    CFRelease(a1);
  }

  if (v96[3])
  {
    cf = 0;
    v38 = APSenderSessionMessageSendTimeout(IsAirplayd, v37);
    APSenderSessionGetCMBaseObject();
    v40 = v39;
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v41)
    {
      v41(v40, @"TransportControlStream", 0, &cf);
    }

    if (cf)
    {
      v38 = 1;
      APSSetFBOPropertyInt64();
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      if (cf)
      {
        v42 = "connection still valid";
      }

      else
      {
        v42 = "connection already invalid";
      }

      LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_deactivateInternal(FigEndpointRef, Boolean, CFStringRef, uint32_t *)", 33554482, "[%{ptr}] Starting teardown of the streams and the session, using HTTP timeout of %d sec (%s)", a1, v38, v42);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v88[3])
  {
    CFArrayGetCount(v88[3]);
    v71[10] = MEMORY[0x277D85DD0];
    v71[11] = 0x40000000;
    v71[12] = __carEndpoint_deactivateInternal_block_invoke_4;
    v71[13] = &__block_descriptor_tmp_1044;
    v71[14] = a1;
    CFArrayApplyBlock();
    v43 = v88[3];
    if (v43)
    {
      CFRelease(v43);
      v88[3] = 0;
    }
  }

  if (*(v76 + 24))
  {
    carEndpoint_postNotification(a1, *MEMORY[0x277CC0D10], *(DerivedStorage + 224), 0);
  }

  v44 = v84[3];
  if (v44)
  {
    APAccTransportClientConnectionClose(v44);
    CFRelease(v84[3]);
  }

  if (v92[3])
  {
    v71[5] = MEMORY[0x277D85DD0];
    v71[6] = 0x40000000;
    v71[7] = __carEndpoint_deactivateInternal_block_invoke_5;
    v71[8] = &__block_descriptor_tmp_1046;
    v71[9] = a1;
    FigCFSetApplyBlock();
    CFSetRemoveAllValues(v92[3]);
    v45 = v92[3];
    if (v45)
    {
      CFRelease(v45);
      v92[3] = 0;
    }
  }

  if (*(DerivedStorage + 60))
  {
    APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor(a1);
  }

  v46 = v96[3];
  if (v46)
  {
    carEndpoint_teardownSenderSession(a1, v46, a2 == 0);
    v47 = v96[3];
    if (v47)
    {
      CFRelease(v47);
    }
  }

  v48 = *(DerivedStorage + 168);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 0x40000000;
  v71[2] = __carEndpoint_deactivateInternal_block_invoke_6;
  v71[3] = &__block_descriptor_tmp_1047;
  v71[4] = DerivedStorage;
  dispatch_sync(v48, v71);
  if (*(DerivedStorage + 57))
  {
    APCarPlayAVVCServerRemoveEndpoint(a1, v49, v50);
  }

  if (a2)
  {
    if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
    {
      __carEndpoint_Activate_block_invoke_cold_46();
    }

    if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
    {
      v51 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 0x40000000;
      v70[2] = __carEndpoint_deactivateInternal_block_invoke_7;
      v70[3] = &__block_descriptor_tmp_1048;
      v70[4] = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
      v70[5] = a1;
      dispatch_sync(v51, v70);
    }
  }

  carEndpoint_setFeatureFlagsToDefaultValues(a1, 1, *(v100[0] + 24));
  if (a4)
  {
    *a4 = *(v100[0] + 24);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_deactivateInternal_cold_9(v100, a1, v52);
  }

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
}

void carEndpoint_postActivationNotification(const void *a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  carEndpoint_getSupportedFeatures(a1, &v13);
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt64();
  if (FigCFEqual() || FigCFEqual())
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2000000000;
    v12 = 0;
    v9 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_postActivationNotification_block_invoke;
    block[3] = &unk_27849F2F8;
    block[4] = v11;
    block[5] = DerivedStorage;
    dispatch_sync(v9, block);
    FigCFDictionarySetInt64();
    _Block_object_dispose(v11, 8);
  }

  carEndpoint_postNotification(a1, a2, a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void carEndpoint_setFeatureFlagsToDefaultValues(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 57) = 0;
  *(DerivedStorage + 68) = 0;
  *(DerivedStorage + 62) = 0;
  *(DerivedStorage + 66) = 0;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  *(DerivedStorage + 80) = 0;
  v8 = *(DerivedStorage + 88);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 88) = 0;
  }

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 96) = 0;
  }

  *(DerivedStorage + 104) = 0;
  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 112) = 0;
  }

  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 136) = 0;
  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  *(DerivedStorage + 58) = 0;
  *(DerivedStorage + 60) = 0;
  v12 = *(DerivedStorage + 144);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 144) = 0;
  }

  v13 = *(DerivedStorage + 152);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 152) = 0;
  }

  if (a2)
  {
    v14 = *MEMORY[0x277CC0D48];

    carEndpoint_postNotification(a1, v14, a3, 0);
  }
}

void __carEndpoint_activateInternal_block_invoke(uint64_t result)
{
  v3 = result + 56;
  v2 = *(result + 56);
  if (*(v2 + 176))
  {
    *(*(*(result + 32) + 8) + 24) = -16723;
    return;
  }

  if (*(v2 + 177))
  {
    __carEndpoint_activateInternal_block_invoke_cold_1();
    return;
  }

  v4 = *(v2 + 224) + 1;
  *(v2 + 224) = v4;
  *(*(*(result + 40) + 8) + 24) = v4;
  *(v2 + 232) = 0;
  if (FigServer_IsAirplayd())
  {
    v5 = *(*v3 + 320);
    if (v5)
    {
      CFRelease(v5);
      *(*v3 + 320) = 0;
    }

    *(*(*(result + 32) + 8) + 24) = FigStarkModeCopyController();
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_cold_2(result, v3, v6);
    }

    v7 = *(*(*(result + 32) + 8) + 24);
    if (v7)
    {
      __carEndpoint_activateInternal_block_invoke_cold_3(v7);
      return;
    }
  }

  v8 = *(*v3 + 320);
  if (!v8)
  {
    __carEndpoint_activateInternal_block_invoke_cold_14();
    return;
  }

  CFRetain(*(result + 64));
  dispatch_retain(*(result + 72));
  CFRetain(v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_activateInternal_block_invoke_2;
  block[3] = &unk_27849E680;
  v9 = *(result + 72);
  v39 = *(result + 56);
  v10 = *(v39 + 512);
  v40 = v8;
  block[4] = *(result + 32);
  block[5] = v9;
  dispatch_async(v10, block);
  *(*(*(result + 32) + 8) + 24) = APSNetworkClockNTPServerCreate();
  v11 = *(*(*(result + 32) + 8) + 24);
  if (v11)
  {
    __carEndpoint_activateInternal_block_invoke_cold_4(v11);
    return;
  }

  v12 = *(result + 64);
  v13 = *(*(result + 56) + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    v16 = 0;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v16 = Mutable;
    CFDictionarySetValue(Mutable, @"eventRecorder", *(DerivedStorage + 536));
LABEL_16:
    v17 = APSGetFBOPropertyInt64();
    v18 = IsAppleInternalBuild();
    v19 = MEMORY[0x277CBED28];
    if (v18 || v17 > 0x44AF98 || (v17 - 3651004) <= 0xCF463)
    {
      CFDictionarySetValue(v16, @"statsCollectionEnabled", *MEMORY[0x277CBED28]);
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupSenderSession(FigEndpointRef, APEndpointDescriptionRef)", 33554482, "[%{ptr}] Stats Collection Enabled, sourceVersion %d.\n", v12, v17);
      }
    }

    else
    {
      CFDictionarySetValue(v16, @"statsCollectionEnabled", *MEMORY[0x277CBED10]);
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupSenderSession(FigEndpointRef, APEndpointDescriptionRef)", 33554482, "[%{ptr}] Stats Collection Disabled, sourceVersion %d.\n", v12, v17);
      }
    }

    if (IsAppleInternalBuild() && APSSettingsGetInt64())
    {
      CFDictionarySetValue(v16, @"highFreqStatsCollectionEnabled", *v19);
    }

    v20 = (DerivedStorage + 240);
    v21 = APSenderSessionAirPlayCreate(0, *(DerivedStorage + 16), v13, 0, 5u, 0, *(DerivedStorage + 512), 0, 0.0, 0, 0, *(DerivedStorage + 256), 0, 0, 0, v16, 0, 0, (DerivedStorage + 240));
    if (v21)
    {
      v32 = v21;
      __carEndpoint_activateInternal_block_invoke_cold_6(v21);
    }

    else
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupSenderSession(FigEndpointRef, APEndpointDescriptionRef)", 33554482, "[%{ptr}] Created APSenderSessionAirPlay [%{ptr}]\n", v12, *v20);
      }

      v22 = *v20;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v23)
      {
        v23(v22, v12, v12, carEndpoint_handleEvent, carEndpoint_handleEventCreatingReply);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v24 = CMNotificationCenterAddListener();
      if (v24)
      {
        v32 = v24;
        __carEndpoint_activateInternal_block_invoke_cold_7(v24);
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v25 = CMNotificationCenterAddListener();
        if (v25)
        {
          v32 = v25;
          __carEndpoint_activateInternal_block_invoke_cold_8(v25);
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v26 = CMNotificationCenterAddListener();
          if (v26)
          {
            v32 = v26;
            __carEndpoint_activateInternal_block_invoke_cold_9(v26);
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v27 = CMNotificationCenterAddListener();
            if (v27)
            {
              v32 = v27;
              __carEndpoint_activateInternal_block_invoke_cold_10(v27);
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v28 = CMNotificationCenterAddListener();
              if (v28)
              {
                v32 = v28;
                __carEndpoint_activateInternal_block_invoke_cold_11(v28);
              }

              else if (CFPrefs_GetInt64())
              {
                APSenderSessionGetCMBaseObject();
                v30 = v29;
                v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v31)
                {
                  v32 = v31(v30, @"PublishEncryptionKeyDiagnosticMode", *v19);
                  if (!v32)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  v32 = -12782;
                }

                APSLogErrorAt();
              }

              else
              {
                v32 = 0;
              }
            }
          }
        }
      }
    }

LABEL_50:
    if (v16)
    {
      CFRelease(v16);
    }

    if (!v32)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  __carEndpoint_activateInternal_block_invoke_cold_5();
  v32 = -16721;
LABEL_53:
  carEndpoint_teardownSenderSession(v12, *(DerivedStorage + 240), 0);
  if (*(DerivedStorage + 240))
  {
    APSenderSessionGetCMBaseObject();
    if (v33)
    {
      v34 = v33;
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v35)
      {
        v35(v34);
      }
    }

    CFRelease(*(DerivedStorage + 240));
    *(DerivedStorage + 240) = 0;
  }

LABEL_58:
  *(*(*(result + 32) + 8) + 24) = v32;
  v36 = *(*(*(result + 32) + 8) + 24);
  if (v36)
  {
    __carEndpoint_activateInternal_block_invoke_cold_12(v36);
  }

  else
  {
    *(*(*(result + 48) + 8) + 24) = CFRetain(*(*(result + 56) + 240));
    if (*(*(result + 56) + 41))
    {
      *(*(*(result + 32) + 8) + 24) = carEndpoint_createAccConnectionIfNeeded(*(result + 64));
      v37 = *(*(*(result + 32) + 8) + 24);
      if (v37)
      {
        __carEndpoint_activateInternal_block_invoke_cold_13(v37);
      }
    }
  }
}

void __carEndpoint_activateInternal_block_invoke_2(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  v4 = "\n";
  if (*(*(a1 + 48) + 177))
  {
    if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_2_cold_1(a1, v2, v3);
    }

    *(*(a1 + 48) + 520) = CFRetain(*(a1 + 64));
    if (!FigServer_IsAirplayd())
    {
      v34[6] = MEMORY[0x277D85DD0];
      v34[7] = 0x40000000;
      v34[8] = __carEndpoint_activateInternal_block_invoke_3;
      v34[9] = &__block_descriptor_tmp_135_0;
      v34[10] = *(a1 + 56);
      FigStarkModeControllerSetExecuteChangeHandler();
    }

    v5 = *(a1 + 56);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v45 = 0;
    cf = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    block = 0u;
    v49 = 0u;
    memset(v47, 0, sizeof(v47));
    v35 = 0u;
    v36 = 0u;
    if (!*(DerivedStorage + 520))
    {
      __carEndpoint_activateInternal_block_invoke_2_cold_7();
      v14 = 0;
      goto LABEL_46;
    }

    v7 = APSGetFBOPropertyInt64();
    APEndpointDescriptionGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(v9, @"InitialMode", 0, &cf);
      if (!v11)
      {
        if (cf)
        {
          v12 = APStarkModeChangeRequestMakeFromDictionary(cf, v7 > 0x3567DF, &v41);
          if (v12)
          {
            LODWORD(v18) = v12;
            __carEndpoint_activateInternal_block_invoke_2_cold_2(v12);
          }

          else
          {
            v13 = APStarkModeInitialOwnerRequestMakeFromDictionary(cf, v7 > 0x3567DF, &v39, &v37);
            if (!v13)
            {
              v14 = CFDictionaryCopyCString();
              if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                if (v14)
                {
                  v15 = " for ";
                }

                else
                {
                  v15 = "";
                }

                v16 = APStarkModeChangeRequestToString(&v41, &block, 256);
                v17 = APStarkInitialOwnerRequestToString(&v39, &v37, v47, 256);
                v33 = v15;
                v4 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
                LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setInitialMode(FigEndpointRef)", 33554482, "[%{ptr}] Initial modes%s%''?s : %s, %s\n", v5, v33, v14 != 0, v14, v16, v17);
              }

              v21 = FigStarkModeControllerRequestInitialModeChange();
              v18 = v21;
              if (!v21)
              {
                goto LABEL_52;
              }

              if (v21 == -16739 && v7 < 0x3567E0)
              {
                if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                {
                  __carEndpoint_activateInternal_block_invoke_2_cold_4(v5, v22, v23);
                }

                if (HIDWORD(v41) == 100)
                {
                  *(&v42 + 1) = 0x6400000064;
                }

                if (DWORD1(v43) == 100)
                {
                  *&v44 = 0x6400000064;
                }

                v24 = FigStarkModeControllerRequestInitialModeChange();
                if (!v24)
                {
                  goto LABEL_51;
                }

                __carEndpoint_activateInternal_block_invoke_2_cold_5(v24);
LABEL_46:
                if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                {
                  __carEndpoint_activateInternal_block_invoke_2_cold_8(v5, v19, v20);
                }

                if (*(DerivedStorage + 520))
                {
                  LODWORD(v18) = FigStarkModeControllerRequestInitialModeChange();
                  goto LABEL_52;
                }

LABEL_51:
                LODWORD(v18) = 0;
                goto LABEL_52;
              }

              if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setInitialMode(FigEndpointRef)", 33554522, "[%{ptr}] Invalid initial modes set: %#m\n", v5, v18);
              }

              APSLogErrorAt();
LABEL_45:
              if (v7 >= 0x3567E0)
              {
LABEL_52:
                if (cf)
                {
                  CFRelease(cf);
                }

                free(v14);
                *(*(*(a1 + 32) + 8) + 24) = v18;
                v25 = *(*(*(a1 + 32) + 8) + 24);
                if (v25)
                {
                  __carEndpoint_activateInternal_block_invoke_2_cold_9(v25);
                }

                else
                {
                  v26 = *(a1 + 56);
                  v27 = CMBaseObjectGetDerivedStorage();
                  if (CFPreferencesGetAppBooleanValue(@"airPlayCarPlayReceiverLogs", @"com.apple.airplay", 0) || CFPreferencesGetAppBooleanValue(@"dpCarPlayReceiverLogs", @"com.apple.airplay", 0) || CFPreferencesGetAppBooleanValue(@"OEMCarPlayReceiverLogs", @"com.apple.airplay", 0))
                  {
                    v28 = *(v27 + 512);
                    *&block = MEMORY[0x277D85DD0];
                    *(&block + 1) = *(v4 + 35);
                    *&v49 = __carEndpoint_configureAccessoryLogs_block_invoke;
                    *(&v49 + 1) = &__block_descriptor_tmp_247;
                    *&v50 = v26;
                    dispatch_async(v28, &block);
                  }
                }

                goto LABEL_59;
              }

              goto LABEL_46;
            }

            LODWORD(v18) = v13;
            __carEndpoint_activateInternal_block_invoke_2_cold_3(v13);
          }
        }

        else
        {
          LODWORD(v18) = -71960;
          APSLogErrorAt();
        }

LABEL_26:
        v14 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    LODWORD(v18) = -71960;
    __carEndpoint_activateInternal_block_invoke_2_cold_6(v11);
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_2_cold_10(a1, v2, v3);
  }

LABEL_59:
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *&block = 0;
    *(&block + 1) = &block;
    *&v49 = 0x2000000000;
    DWORD2(v49) = 0;
    v29 = *(a1 + 48);
    v30 = *(v29 + 168);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = *(v4 + 35);
    v34[2] = __carEndpoint_activateInternal_block_invoke_4;
    v34[3] = &unk_27849E658;
    v34[4] = &block;
    v34[5] = v29;
    dispatch_sync(v30, v34);
    v31 = CFGetAllocator(*(a1 + 56));
    Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CC8], *MEMORY[0x277CC0CA8]);
    carEndpoint_postNotification(*(a1 + 56), *MEMORY[0x277CC0D50], *(*(&block + 1) + 24), Mutable);
    CFRelease(Mutable);
    _Block_object_dispose(&block, 8);
  }

  CFRelease(*(a1 + 64));
  dispatch_release(*(a1 + 40));
  CFRelease(*(a1 + 56));
}

void __carEndpoint_activateInternal_block_invoke_3(uint64_t a1, int *a2)
{
  v4 = dispatch_semaphore_create(0);
  v7 = *(a1 + 32);
  v5 = a1 + 32;
  v6 = v7;
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_1(a2, v6, v8);
  }

  carEndpoint_takeActionOnModeChanges(v6, a2);
  DictionaryRepresentation = APStarkModeCreateDictionaryRepresentation(a2, &cf);
  if (DictionaryRepresentation)
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_2(DictionaryRepresentation);
  }

  else
  {
    v10 = carEndpoint_sendCommandInternal(v6, @"modesChanged", cf, 1, v4);
    if (v10)
    {
      __carEndpoint_activateInternal_block_invoke_3_cold_3(v10);
    }

    else if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_handleModesChanged(FigEndpointRef, const FigStarkModeState *, dispatch_semaphore_t)", 33554452, "[%{ptr}] Sent modes changed to %@\n", v6, cf);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v11 = dispatch_time(0, 250000000);
  if (dispatch_semaphore_wait(v4, v11) && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_4(v5, v12, v13);
  }

  dispatch_release(v4);
}

uint64_t carEndpoint_createAccConnectionIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 48);
  if (v4 && (Value = CFDictionaryGetValue(v4, @"authenticationCertificateSerial")) != 0)
  {
    v6 = Value;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = Mutable;
    if (!Mutable)
    {
      carEndpoint_createAccConnectionIfNeeded_cold_1();
      v2 = 4294960568;
      goto LABEL_16;
    }

    CFDictionarySetValue(Mutable, @"authenticationCertificateSerial", v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = APAccTransportClientConnectionCreate(v8, (v3 + 304));
  if (v9)
  {
    v2 = v9;
    carEndpoint_createAccConnectionIfNeeded_cold_2(v9);
LABEL_16:
    v12 = *(v3 + 304);
    if (v12)
    {
      APAccTransportClientConnectionClose(v12);
      v13 = *(v3 + 304);
      if (v13)
      {
        CFRelease(v13);
        *(v3 + 304) = 0;
      }
    }

    goto LABEL_10;
  }

  v10 = APAccTransportClientConnectionOpen(*(v3 + 304));
  v2 = v10;
  if (v10)
  {
    carEndpoint_createAccConnectionIfNeeded_cold_3(v10);
    goto LABEL_16;
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  return v2;
}

uint64_t __carEndpoint_activateInternal_block_invoke_147(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 176))
  {
    *(*(*(result + 32) + 8) + 24) = -16723;
    return result;
  }

  v3 = result + 32;
  *(*(*(result + 32) + 8) + 24) = APHIDClientCreate(0, *(result + 48), (v2 + 296));
  result = *(*(v1[4] + 8) + 24);
  if (result)
  {
    return __carEndpoint_activateInternal_block_invoke_147_cold_1(result);
  }

  v4 = v1[5];
  if (!*(v4 + 40))
  {
    goto LABEL_9;
  }

  v5 = v1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AccConnectionIfNeeded = carEndpoint_createAccConnectionIfNeeded(v5);
  if (AccConnectionIfNeeded)
  {
    LODWORD(v8) = AccConnectionIfNeeded;
    __carEndpoint_activateInternal_block_invoke_147_cold_2(AccConnectionIfNeeded);
    goto LABEL_7;
  }

  if (CFStringCompare(@"com.apple.APAccClientEndpoint", @"com.apple.APAccClientEndpoint", 0))
  {
    goto LABEL_6;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (*(v9 + 136))
  {
    v10 = v9;
    v11 = CFGetAllocator(v5);
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B38], @"E9459FD0-BCAD-4C45-820F-1E72447EF2F2");
    v13 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1630], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1638], v13);
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_147_cold_3(v5, v14, v15);
    }

    CommChannelInternal = carEndpoint_createCommChannelInternal(v5, Mutable, (v10 + 496), 0);
    if (CommChannelInternal)
    {
      v8 = CommChannelInternal;
      __carEndpoint_activateInternal_block_invoke_147_cold_4(CommChannelInternal);
      if (!Mutable)
      {
LABEL_26:
        if (v8)
        {
          __carEndpoint_activateInternal_block_invoke_147_cold_5(v8);
          goto LABEL_7;
        }

        goto LABEL_27;
      }

LABEL_25:
      CFRelease(Mutable);
      goto LABEL_26;
    }

    v17 = *(v10 + 496);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18)
    {
      v8 = v18(v17, carEndpoint_handleiAPChannelEvent, v5);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    APSLogErrorAt();
LABEL_24:
    if (!Mutable)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v19 = APAccTransportClientConnectionCopyEndpoint(DerivedStorage[38], "com.apple.APAccClientEndpoint", (DerivedStorage + 39));
  if (v19)
  {
    LODWORD(v8) = v19;
    __carEndpoint_activateInternal_block_invoke_147_cold_6(v19);
    goto LABEL_7;
  }

  CFRetain(v5);
  v20 = DerivedStorage[39];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v24[2] = __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke;
  v24[3] = &__block_descriptor_tmp_724;
  v24[4] = v5;
  v24[5] = DerivedStorage;
  v21 = APAccTransportClientEndpointActivate(v20, 0, 0, v24);
  if (v21)
  {
    LODWORD(v8) = v21;
    __carEndpoint_activateInternal_block_invoke_147_cold_7(v21);
    goto LABEL_7;
  }

  v22 = DerivedStorage[62];
  if (v22)
  {
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v23)
    {
      LODWORD(v8) = v23(v22);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LODWORD(v8) = -12782;
    }

    APSLogErrorAt();
    goto LABEL_7;
  }

LABEL_6:
  LODWORD(v8) = 0;
LABEL_7:
  *(*(*v3 + 8) + 24) = v8;
  result = *(*(*v3 + 8) + 24);
  if (result)
  {
    return __carEndpoint_activateInternal_block_invoke_147_cold_8(result);
  }

  v4 = v1[5];
LABEL_9:
  if (*(v4 + 60) && !*(v4 + 488))
  {
    result = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    *(v1[5] + 488) = result;
    if (!*(v1[5] + 488))
    {
      return __carEndpoint_activateInternal_block_invoke_147_cold_9((v1 + 4));
    }
  }

  return result;
}

uint64_t __carEndpoint_activateInternal_block_invoke_2_152(uint64_t result)
{
  v1 = result;
  v3 = result + 40;
  v2 = *(result + 40);
  if (*(v2 + 176))
  {
    *(*(*(result + 32) + 8) + 24) = -16723;
  }

  else
  {
    if (*(v2 + 536))
    {
      APSEventRecorderRecordEvent();
    }

    v4 = LogCategoryCopyOSLogHandle();
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v7, OS_SIGNPOST_EVENT, 0x2B8D08B8uLL, "AP_SIGNPOST_CAR_SETUPSTREAMS_START", &unk_2222A918B, buf, 2u);
    }

    if (v5)
    {
      os_release(v5);
    }

    v8 = (v1 + 48);
    v9 = carEndpoint_setupStreams(*(v1 + 48), *(v1 + 56));
    v10 = *(v1 + 40);
    *(*(*(v1 + 32) + 8) + 24) = v9;
    if (*(v10 + 536))
    {
      APSEventRecorderRecordEvent();
    }

    v11 = LogCategoryCopyOSLogHandle();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (os_signpost_enabled(v13))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v13, OS_SIGNPOST_EVENT, 0x2B8D08BCuLL, "AP_SIGNPOST_CAR_SETUPSTREAMS_COMPLETE", &unk_2222A918B, v25, 2u);
    }

    if (v12)
    {
      os_release(v12);
    }

    v14 = *(*(*(v1 + 32) + 8) + 24);
    if (!v14)
    {
      v15 = *v3;
      APEndpointDescriptionGetCMBaseObject();
      v17 = v16;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v17, @"VehicleInformation", 0, v15 + 336);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_activateInternal_block_invoke_2_152_cold_2(v8, v3, v18);
      }

      v20 = APSGetFBOPropertyInt64() != 0;
      *(*v3 + 329) = v20;
      if (gLogCategory_APEndpointCarPlay <= 50)
      {
        if (gLogCategory_APEndpointCarPlay == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_33;
          }

          v20 = *(*v3 + 329);
        }

        if (v20)
        {
          v21 = "enabled";
        }

        else
        {
          v21 = "disabled";
        }

        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_activateInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, dispatch_semaphore_t, uint32_t *)_block_invoke", 33554482, "[%{ptr}] Initial limitedUI: %s\n", *v8, v21);
      }

LABEL_33:
      result = APSGetFBOPropertyInt64();
      v22 = result != 0;
      v23 = *v3;
      *(*v3 + 330) = v22;
      if (gLogCategory_APEndpointCarPlay <= 50)
      {
        if (gLogCategory_APEndpointCarPlay != -1)
        {
LABEL_35:
          if (v22)
          {
            v24 = "enabled";
          }

          else
          {
            v24 = "disabled";
          }

          result = LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_activateInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, dispatch_semaphore_t, uint32_t *)_block_invoke", 33554482, "[%{ptr}] Initial nightMode: %s\n", *v8, v24);
          v23 = *v3;
          goto LABEL_40;
        }

        result = _LogCategory_Initialize();
        v23 = *v3;
        if (result)
        {
          v22 = *(v23 + 330);
          goto LABEL_35;
        }
      }

LABEL_40:
      *(v23 + 177) = 1;
      return result;
    }

    return __carEndpoint_activateInternal_block_invoke_2_152_cold_1(v14);
  }

  return result;
}

uint64_t carEndpoint_setupStreams(const void *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 264) = Mutable;
  if (!Mutable)
  {
    carEndpoint_setupStreams_cold_50();
    return 4294950575;
  }

  v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v6)
  {
    carEndpoint_setupStreams_cold_49();
    return 4294950575;
  }

  v7 = v6;
  v8 = *(DerivedStorage + 536);
  if (v8)
  {
    CFDictionarySetValue(v6, @"EventRecorder", v8);
  }

  if (*(DerivedStorage + 68))
  {
    CFDictionarySetValue(v7, @"UseCarPlayHEVC", *MEMORY[0x277CBED28]);
  }

  if (a2)
  {
    v9 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09B0]);
    if (v9)
    {
      CFDictionarySetValue(v7, @"clientPID", v9);
    }

    v10 = CFDictionaryGetValue(a2, @"ScreenSource");
    if (v10)
    {
      CFDictionarySetValue(v7, @"ScreenSource", v10);
    }

    v11 = CFDictionaryGetValue(a2, @"ScreenProcessor");
    if (v11)
    {
      CFDictionarySetValue(v7, @"ScreenProcessor", v11);
    }

    v12 = *MEMORY[0x277CC09E8];
    v13 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09E8]);
    if (v13)
    {
      CFDictionarySetValue(v7, v12, v13);
    }
  }

  if (APSGetFBOPropertyInt64())
  {
    v14 = *MEMORY[0x277CC1960];
    v15 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1960], *MEMORY[0x277CC1938], v7);
    if (v15)
    {
      v28 = v15;
      carEndpoint_setupStreams_cold_1(v15);
      goto LABEL_60;
    }

    if (*(DerivedStorage + 58))
    {
      v16 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1968], *MEMORY[0x277CC1928], v7);
      if (v16)
      {
        v28 = v16;
        carEndpoint_setupStreams_cold_2(v16);
        goto LABEL_60;
      }

      carEndpoint_postNotification(a1, *MEMORY[0x277CC0D10], *(DerivedStorage + 224), 0);
    }

    v17 = carEndpoint_setupAudioStream(a1, v14, *MEMORY[0x277CC1918], v7);
    if (v17)
    {
      v28 = v17;
      carEndpoint_setupStreams_cold_3(v17);
      goto LABEL_60;
    }

    if (*(DerivedStorage + 57))
    {
      v18 = carEndpoint_setupAudioStream(a1, v14, *MEMORY[0x277CC1920], v7);
      if (v18)
      {
        v28 = v18;
        carEndpoint_setupStreams_cold_4(v18);
        goto LABEL_60;
      }

      v19 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1978], *MEMORY[0x277CC1940], v7);
      if (v19)
      {
        v28 = v19;
        carEndpoint_setupStreams_cold_5(v19);
        goto LABEL_60;
      }
    }
  }

  v179 = CMBaseObjectGetDerivedStorage();
  v188 = 0;
  v187 = 0;
  v186[1] = 0;
  v185 = 0;
  v186[0] = 0;
  v20 = CFStringCreateF(0, "[%{ptr}]", a1);
  v21 = CFGetAllocator(a1);
  v22 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v190 = 0;
  v189 = 0;
  v23 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v24 = MEMORY[0x277CBECE8];
  v184 = a1;
  if (!v23)
  {
    carEndpoint_setupStreams_cold_37();
LABEL_383:
    v177 = 0;
    v28 = 4294950575;
    goto LABEL_29;
  }

  v172 = v22;
  APEndpointDescriptionGetCMBaseObject();
  v26 = v25;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v27)
  {
    v28 = 4294954514;
LABEL_28:
    APSLogErrorAt();
    v177 = 0;
    goto LABEL_29;
  }

  v35 = v27(v26, @"DisplayDescriptionArray", v21, &cf);
  if (v35)
  {
    v28 = v35;
    goto LABEL_28;
  }

  v36 = v172;
  if (cf)
  {
    Count = CFArrayGetCount(cf);
    v177 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v177)
    {
      goto LABEL_390;
    }

    if (Count < 1)
    {
      v39 = 0;
      goto LABEL_172;
    }

    v171 = v23;
    v163 = v20;
    v42 = 0;
    key = *MEMORY[0x277CC16B8];
    v180 = *MEMORY[0x277CC16C0];
    while (1)
    {
      v43 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v42);
      value[0] = 0;
      *&v224 = 0;
      *&v222 = 0;
      *&v220 = 0;
      v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v45)
      {
        v46 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"PhysicalSize", v21, &v224);
        if (v46)
        {
          v28 = v46;
          carEndpoint_setupStreams_cold_6(v46);
        }

        else
        {
          if (v224)
          {
            CFDictionarySetValue(v45, key, v224);
          }

          v47 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"PixelSize", v21, value);
          if (v47)
          {
            v28 = v47;
            carEndpoint_setupStreams_cold_7(v47);
          }

          else
          {
            if (value[0])
            {
              CFDictionarySetValue(v45, v180, value[0]);
            }

            v48 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"ViewAreas", v21, &v222);
            if (!v48)
            {
              if (v222)
              {
                CFDictionarySetValue(v45, @"ViewAreas", v222);
              }

              v28 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"ZoomFactor", v21, &v220);
              if (v220)
              {
                CFDictionarySetValue(v45, @"ZoomFactor", v220);
              }

              v49 = v45;
              v45 = 0;
              goto LABEL_85;
            }

            v28 = v48;
            carEndpoint_setupStreams_cold_8(v48);
          }
        }

        v49 = 0;
      }

      else
      {
        carEndpoint_setupStreams_cold_9();
        v49 = 0;
        v28 = 4294895546;
      }

LABEL_85:
      if (v222)
      {
        CFRelease(v222);
      }

      if (value[0])
      {
        CFRelease(value[0]);
      }

      if (v224)
      {
        CFRelease(v224);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      if (v220)
      {
        CFRelease(v220);
      }

      if (v28)
      {
        carEndpoint_setupStreams_cold_10(v28);
        a1 = v184;
        goto LABEL_372;
      }

      CFArrayAppendValue(v177, v49);
      if (v49)
      {
        CFRelease(v49);
      }

      ++v42;
      Count = v43;
      if (v43 == v42)
      {
        v39 = 1;
        v20 = v163;
        a1 = v184;
        v24 = MEMORY[0x277CBECE8];
        v36 = v172;
        goto LABEL_172;
      }
    }
  }

  v177 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v177)
  {
LABEL_390:
    carEndpoint_setupStreams_cold_36();
    goto LABEL_383;
  }

  v39 = 0;
  Count = 0;
LABEL_172:
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_setupStreams_cold_11(v177, v37, v38);
  }

  if (!*(v36 + 240))
  {
    carEndpoint_setupStreams_cold_35();
    v28 = 0;
    goto LABEL_29;
  }

  APSenderSessionGetCMBaseObject();
  v87 = v86;
  v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v88)
  {
    v28 = 4294954514;
LABEL_179:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v170 = Count;
  v171 = v23;
  v89 = v88(v87, @"AuthenticationData", *v24, &v189);
  if (v89)
  {
    v28 = v89;
    goto LABEL_179;
  }

  v163 = v20;
  v90 = APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(v189, v177, &v190);
  if (v90 || !v190)
  {
    v91 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v91)
    {
      carEndpoint_setupStreams_cold_34();
      v28 = 4294950575;
      goto LABEL_373;
    }

    v92 = v91;
    if (v39)
    {
      v93 = 0;
      do
      {
        v94 = CFArrayGetValueAtIndex(v177, v93);
        CFArrayAppendValue(v92, v94);
        ++v93;
      }

      while (Count != v93);
    }

    v190 = v92;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyScreenInfo(FigEndpointRef, CFAllocatorRef, CFArrayRef *)", 33554482, "[%{ptr}] Non-scaled Display Characteristics created. err: %#m\n", a1, v90);
    }
  }

  if (!v39)
  {
LABEL_363:
    v28 = 0;
    *(v179 + 280) = v23;
    v23 = 0;
    v20 = v163;
    v24 = MEMORY[0x277CBECE8];
    goto LABEL_29;
  }

  keya = 0;
  v95 = *MEMORY[0x277CBED10];
  v96 = *MEMORY[0x277CBED28];
  v151 = *MEMORY[0x277CC1718];
  v148 = *MEMORY[0x277CC1720];
  v150 = *MEMORY[0x277CC1710];
  v149 = *MEMORY[0x277CC1728];
  v167 = *MEMORY[0x277CC1690];
  v144 = *MEMORY[0x277CC16C8];
  v160 = *MEMORY[0x277CC1680];
  v159 = *MEMORY[0x277CC16B0];
  v158 = *MEMORY[0x277CC16B8];
  v157 = *MEMORY[0x277CC16C0];
  v156 = *MEMORY[0x277CC16D0];
  v166 = *MEMORY[0x277CC16A0];
  v165 = *MEMORY[0x277CC1698];
  v168 = *MEMORY[0x277CBF3A8];
  v145 = *MEMORY[0x277CC1688];
  v155 = *MEMORY[0x277CC16F8];
  v154 = *MEMORY[0x277CC16E8];
  v152 = *MEMORY[0x277CC1700];
  v153 = *MEMORY[0x277CC1708];
  v162 = *MEMORY[0x277CC16D8];
  v161 = *MEMORY[0x277CC1678];
  v147 = *MEMORY[0x277CC16A8];
  v181 = *MEMORY[0x277CBED28];
  v146 = *MEMORY[0x277CBED10];
  while (1)
  {
    v97 = CFArrayGetValueAtIndex(cf, keya);
    v98 = CFArrayGetValueAtIndex(v190, keya);
    v233 = 0;
    v231 = v95;
    v232 = v95;
    v229 = v95;
    v230 = v95;
    v227 = 0;
    v228 = 0;
    v226 = 0;
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0;
    dict = 0;
    size = v168;
    v217 = 0;
    theArray = 0;
    v215 = 0;
    BOOLean = v95;
    v213 = v95;
    theString = 0;
    v211 = v95;
    v99 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v99)
    {
      carEndpoint_setupStreams_cold_32();
      v143 = 0;
      v100 = 0;
LABEL_340:
      v129 = 0;
      v175 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_277;
    }

    v100 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v100)
    {
      carEndpoint_setupStreams_cold_31();
      v143 = 0;
      goto LABEL_340;
    }

    v101 = APEndpointDisplayDescriptionCopyProperty(v97, @"SupportsKnobInput", v21, &v232);
    v233 = v101;
    v175 = v100;
    if (v101)
    {
      carEndpoint_setupStreams_cold_12(v101);
LABEL_350:
      v143 = 0;
      v100 = 0;
      v129 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_277;
    }

    if (v232 == v96)
    {
      CFArrayAppendValue(v100, v151);
    }

    v102 = APEndpointDisplayDescriptionCopyProperty(v97, @"SupportsLowFidelityTouch", v21, &v231);
    v233 = v102;
    if (v102)
    {
      carEndpoint_setupStreams_cold_13(v102);
      goto LABEL_350;
    }

    if (v231 == v96)
    {
      CFArrayAppendValue(v100, v148);
    }

    v103 = APEndpointDisplayDescriptionCopyProperty(v97, @"SupportsHighFidelityTouch", v21, &v230);
    v233 = v103;
    if (v103)
    {
      carEndpoint_setupStreams_cold_14(v103);
      goto LABEL_350;
    }

    if (v230 == v96)
    {
      CFArrayAppendValue(v100, v150);
    }

    v104 = APEndpointDisplayDescriptionCopyProperty(v97, @"SupportsTouchpadInput", v21, &v229);
    v233 = v104;
    if (v104)
    {
      carEndpoint_setupStreams_cold_15(v104);
      goto LABEL_350;
    }

    if (v229 == v96)
    {
      CFArrayAppendValue(v100, v149);
    }

    CFDictionarySetValue(v99, v167, v100);
    v105 = APEndpointDisplayDescriptionCopyProperty(v97, @"PrimaryInputDevice", v21, &v217);
    v233 = v105;
    if (v105)
    {
      carEndpoint_setupStreams_cold_16(v105);
      goto LABEL_350;
    }

    v106 = CFGetInt64();
    if (!v233)
    {
      v112 = v106;
      if (v106 == 1)
      {
        if (v230 == v181)
        {
          v113 = v99;
          v114 = v144;
          v115 = v150;
        }

        else
        {
          if (v231 != v181)
          {
            goto LABEL_209;
          }

          v113 = v99;
          v114 = v144;
          v115 = v148;
        }

        goto LABEL_336;
      }

      if (v106 == 2)
      {
        if (v229 == v181)
        {
          v113 = v99;
          v114 = v144;
          v115 = v149;
          goto LABEL_336;
        }
      }

      else if (v106 == 3 && v232 == v181)
      {
        v113 = v99;
        v114 = v144;
        v115 = v151;
LABEL_336:
        CFDictionarySetValue(v113, v114, v115);
        goto LABEL_209;
      }

      if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyScreenInfoFromDisplayDescription(FigEndpointRef, Boolean, APEndpointDisplayDescriptionRef, CFDictionaryRef, APEndpointDescriptionRef, CFAllocatorRef, CFDictionaryRef *)", 33554492, "[%{ptr}] Primary input device is not a supported input method: %u\n", a1, v112);
      }
    }

LABEL_209:
    v107 = APEndpointDisplayDescriptionCopyProperty(v97, @"UUID", v21, &v228);
    v233 = v107;
    if (v107)
    {
      carEndpoint_setupStreams_cold_17(v107);
      v143 = 0;
      v100 = 0;
      v129 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_359;
    }

    if (v228)
    {
      CFDictionarySetValue(v99, v160, v228);
    }

    v108 = APEndpointDisplayDescriptionCopyProperty(v97, @"MaxFPS", v21, &v227);
    v233 = v108;
    v96 = v181;
    if (v108)
    {
      carEndpoint_setupStreams_cold_18(v108);
      goto LABEL_350;
    }

    if (v227)
    {
      CFDictionarySetValue(v99, v159, v227);
    }

    v109 = APEndpointDisplayDescriptionCopyProperty(v97, @"PhysicalSize", v21, &dict);
    v233 = v109;
    if (v109)
    {
      carEndpoint_setupStreams_cold_19(v109);
      goto LABEL_350;
    }

    if (dict)
    {
      CFDictionarySetValue(v99, v158, dict);
      CGSizeMakeWithDictionaryRepresentation(dict, &size);
    }

    v110 = APEndpointDisplayDescriptionCopyProperty(v97, @"PixelSize", v21, &v226);
    v233 = v110;
    if (v110)
    {
      carEndpoint_setupStreams_cold_20(v110);
      goto LABEL_350;
    }

    if (v226)
    {
      LODWORD(v209) = 2;
      CFDictionarySetValue(v99, v157, v226);
      CGSizeMakeWithDictionaryRepresentation(v226, &v225);
      v111 = CFDictionaryGetValue(v98, v157);
      CGSizeMakeWithDictionaryRepresentation(v111, &v223);
      FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v221);
      CFDictionarySetValue(v99, v156, DictionaryRepresentation);
      CFDictionarySetDouble();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
    }

    else
    {
      DictionaryRepresentation = 0;
    }

    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    if (keya)
    {
      v116 = APEndpointDisplayDescriptionCopyProperty(v97, @"IsNightMode", v21, &BOOLean);
      v233 = v116;
      if (v116)
      {
        carEndpoint_setupStreams_cold_21(v116);
      }

      else
      {
        if (CFBooleanGetValue(BOOLean))
        {
          v117 = v181;
        }

        else
        {
          v117 = v95;
        }

        CFDictionarySetValue(v99, v166, v117);
        v118 = APEndpointDisplayDescriptionCopyProperty(v97, @"IsLimitedUI", v21, &v213);
        v233 = v118;
        if (v118)
        {
          carEndpoint_setupStreams_cold_22(v118);
        }

        else
        {
          if (CFBooleanGetValue(v213))
          {
            v119 = v181;
          }

          else
          {
            v119 = v95;
          }

          CFDictionarySetValue(v99, v165, v119);
          v120 = APEndpointDisplayDescriptionCopyProperty(v97, @"LimitedUIElements", v21, &v215);
          v233 = v120;
          if (!v120)
          {
            if (v215)
            {
              CFDictionarySetValue(v99, v147, v215);
            }

            v121 = APEndpointDisplayDescriptionCopyProperty(v97, @"InitialUrl", v21, &theString);
            v233 = v121;
            if (v121)
            {
              carEndpoint_setupStreams_cold_24(v121);
              goto LABEL_331;
            }

            v124 = theString;
            if (!theString)
            {
              if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                carEndpoint_setupStreams_cold_25(a1, v122, v123);
              }

              v125 = APEndpointDisplayDescriptionCopyProperty(v97, @"Url", v21, &theString);
              v233 = v125;
              if (v125)
              {
                carEndpoint_setupStreams_cold_26(v125);
                goto LABEL_331;
              }

              v124 = theString;
              if (!theString)
              {
                goto LABEL_262;
              }
            }

            if (CFStringGetLength(v124) < 1)
            {
LABEL_262:
              v129 = 0;
              goto LABEL_265;
            }

            v126 = CFURLCreateWithString(0, theString, 0);
            if (!v126)
            {
              v129 = 0;
              goto LABEL_264;
            }

            v127 = v126;
            CFDictionarySetValue(v99, v145, v126);
            v128 = MEMORY[0x277CC1670];
            v129 = v127;
            goto LABEL_261;
          }

          carEndpoint_setupStreams_cold_23(v120);
        }
      }

LABEL_331:
      v143 = 0;
      v100 = 0;
      v129 = 0;
      goto LABEL_277;
    }

    if (APSGetFBOPropertyInt64())
    {
      v130 = v181;
    }

    else
    {
      v130 = v95;
    }

    CFDictionarySetValue(v99, v166, v130);
    if (APSGetFBOPropertyInt64())
    {
      v131 = v181;
    }

    else
    {
      v131 = v95;
    }

    CFDictionarySetValue(v99, v165, v131);
    APEndpointDescriptionGetCMBaseObject();
    v133 = v132;
    v134 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v134)
    {
      v135 = 4294954514;
      v233 = -12782;
LABEL_330:
      carEndpoint_setupStreams_cold_30(v135);
      goto LABEL_331;
    }

    v135 = v134(v133, @"LimitedUIElements", 0, &v215);
    v233 = v135;
    if (v135)
    {
      v96 = v181;
      goto LABEL_330;
    }

    v129 = 0;
    v127 = v215;
    if (v215)
    {
      v128 = MEMORY[0x277CC16A8];
LABEL_261:
      CFDictionarySetValue(v99, *v128, v127);
    }

LABEL_264:
    v96 = v181;
LABEL_265:
    v136 = CFGetAllocator(a1);
    v100 = CFArrayCreateMutable(v136, 0, MEMORY[0x277CBF128]);
    if (!v100)
    {
      carEndpoint_setupStreams_cold_29();
LABEL_353:
      v143 = 0;
      goto LABEL_277;
    }

    APEndpointDisplayDescriptionCopyProperty(v97, @"ViewAreas", v21, &theArray);
    if (!theArray || !CFArrayGetCount(theArray))
    {
      v209 = 0u;
      v210 = 0u;
      memset(&v208, 0, sizeof(v208));
      CGSizeMakeWithDictionaryRepresentation(v226, &v210);
      FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
      v137 = CGRectCreateDictionaryRepresentation(v208);
      v138 = CFGetAllocator(a1);
      v139 = CFDictionaryCreateMutable(v138, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v139)
      {
        v140 = v139;
        CFDictionarySetValue(v139, v155, v137);
        CFDictionarySetValue(v140, v154, v137);
        CFDictionarySetValue(v140, v153, v95);
        CFDictionarySetValue(v140, v152, v95);
        CFDictionarySetInt64();
        CFArrayAppendValue(v100, v140);
        CFRelease(v137);
        CFRelease(v140);
        a1 = v184;
        v96 = v181;
        goto LABEL_272;
      }

      APSLogErrorAt();
      v143 = 0;
      v233 = -16721;
      a1 = v184;
LABEL_359:
      v96 = v181;
      goto LABEL_277;
    }

    v206 = 0u;
    v207 = 0u;
    v202 = 0;
    v203 = &v202;
    v204 = 0x2000000000;
    v205 = 0;
    CGSizeMakeWithDictionaryRepresentation(v226, &v207);
    CFArrayGetCount(theArray);
    value[0] = MEMORY[0x277D85DD0];
    value[1] = 0x40000000;
    v193 = v206;
    v194 = v207;
    v196 = size;
    v197 = v222;
    v199 = v224;
    v200 = v225;
    value[2] = __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke;
    value[3] = &unk_27849F040;
    value[4] = &v202;
    v195 = a1;
    v198 = v223;
    v201 = v100;
    CFArrayApplyBlock();
    if (*(v203 + 6))
    {
      carEndpoint_setupStreams_cold_27();
      v143 = 0;
      v96 = v181;
      v95 = v146;
      goto LABEL_277;
    }

    _Block_object_dispose(&v202, 8);
    v96 = v181;
    v95 = v146;
LABEL_272:
    CFDictionarySetValue(v99, v162, v100);
    v141 = APEndpointDisplayDescriptionCopyProperty(v97, @"cornerMasks", v21, &v211);
    v233 = v141;
    if (v141)
    {
      carEndpoint_setupStreams_cold_28(v141);
      goto LABEL_353;
    }

    v142 = CFBooleanGetValue(v211) ? v96 : v95;
    CFDictionarySetValue(v99, v161, v142);
    v143 = v99;
    v99 = 0;
LABEL_277:
    if (theString)
    {
      CFRelease(theString);
    }

    if (v129)
    {
      CFRelease(v129);
    }

    if (v213)
    {
      CFRelease(v213);
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }

    if (v215)
    {
      CFRelease(v215);
    }

    if (v227)
    {
      CFRelease(v227);
    }

    if (v226)
    {
      CFRelease(v226);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (dict)
    {
      CFRelease(dict);
    }

    if (v228)
    {
      CFRelease(v228);
    }

    if (v217)
    {
      CFRelease(v217);
    }

    if (v232)
    {
      CFRelease(v232);
    }

    if (v231)
    {
      CFRelease(v231);
    }

    if (v230)
    {
      CFRelease(v230);
    }

    if (v229)
    {
      CFRelease(v229);
    }

    if (v175)
    {
      CFRelease(v175);
    }

    if (v99)
    {
      CFRelease(v99);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v211)
    {
      CFRelease(v211);
    }

    if (v100)
    {
      CFRelease(v100);
    }

    v28 = v233;
    if (v233)
    {
      break;
    }

    CFArrayAppendValue(v23, v143);
    if (v143)
    {
      CFRelease(v143);
    }

    if (v170 == ++keya)
    {
      goto LABEL_363;
    }
  }

  carEndpoint_setupStreams_cold_33(v233);
LABEL_372:
  v20 = v163;
  v24 = MEMORY[0x277CBECE8];
LABEL_373:
  v23 = v171;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (v190)
  {
    CFRelease(v190);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  if (v28)
  {
    carEndpoint_setupStreams_cold_38(v28);
    goto LABEL_43;
  }

  APEndpointDescriptionGetCMBaseObject();
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v31)
  {
    v28 = 4294954514;
    goto LABEL_42;
  }

  v41 = v31(v30, @"DisplayDescriptionArray", *v24, &v188);
  if (v41)
  {
    v28 = v41;
LABEL_42:
    APSLogErrorAt();
LABEL_43:
    v32 = 0;
    v33 = 0;
    goto LABEL_44;
  }

  if (!v188)
  {
LABEL_68:
    carEndpoint_setupStreams_cold_47();
    v32 = 0;
    v33 = 0;
    v28 = 4294950536;
    goto LABEL_44;
  }

  v50 = CFArrayGetCount(v188);
  v164 = v20;
  if (v50 < 2)
  {
    if (v50 != 1)
    {
      goto LABEL_68;
    }

    v51 = 1;
  }

  else if (*(v179 + 63))
  {
    v51 = v50;
  }

  else
  {
    v51 = 1;
  }

  v178 = v51;
  v52 = 0;
  v53 = *MEMORY[0x277CC18B0];
  v174 = *MEMORY[0x277CC1908];
  v173 = *MEMORY[0x277CC0DA8];
  v169 = *MEMORY[0x277CD6700];
  v54 = *MEMORY[0x277CD6658];
  while (2)
  {
    LODWORD(v222) = 0;
    *&v224 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    v33 = MutableCopy;
    if (!MutableCopy)
    {
      carEndpoint_setupStreams_cold_46();
      v32 = 0;
      goto LABEL_377;
    }

    if (v52)
    {
      CFDictionaryRemoveValue(MutableCopy, @"EventRecorder");
    }

    CFDictionarySetValue(v33, @"LogPrefix", v164);
    v56 = CMBaseObjectGetDerivedStorage();
    value[0] = 0x3FF0000000000000;
    v57 = CFArrayGetCount(*(v56 + 280));
    if (v57 >= 1)
    {
      v58 = v57;
      v59 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(v56 + 280), v59);
        if (v52 == v59)
        {
          break;
        }

        if (v58 == ++v59)
        {
          goto LABEL_121;
        }
      }

      FigCFDictionaryGetDoubleIfPresent();
    }

LABEL_121:
    CFDictionarySetDouble();
    v60 = CMBaseObjectGetDerivedStorage();
    v61 = CFArrayGetCount(*(v60 + 280));
    if (v61 >= 1)
    {
      v62 = v61;
      v63 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(v60 + 280), v63);
        if (v52 == v63)
        {
          break;
        }

        if (v62 == ++v63)
        {
          goto LABEL_128;
        }
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetInt32();
      }
    }

LABEL_128:
    v64 = CMBaseObjectGetDerivedStorage();
    v65 = *(v64 + 280);
    if (v65)
    {
      v66 = v179;
      if (CFArrayGetCount(v65) <= v52)
      {
        carEndpoint_setupStreams_cold_39();
      }

      else
      {
        CFArrayGetValueAtIndex(*(v64 + 280), v52);
        if (FigCFDictionaryGetValueIfPresent())
        {
          FigCFDictionarySetValue();
        }
      }
    }

    else
    {
      carEndpoint_setupStreams_cold_40();
      v66 = v179;
    }

    v67 = CFArrayGetValueAtIndex(v188, v52);
    v68 = CFGetAllocator(v184);
    v69 = APEndpointStreamScreenCreate(v68, v33, *(v66 + 16), *(v66 + 240), *(v66 + 8), v67, *(v66 + 256), &v185);
    if (!v69)
    {
      carEndpoint_addEndpointStreamNotificationListeners(v184, v185);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v71)
      {
        v28 = 4294954514;
        goto LABEL_366;
      }

      v72 = v71(CMBaseObject, v53, 0, v186);
      if (v72)
      {
        v28 = v72;
        goto LABEL_366;
      }

      v75 = v179;
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        carEndpoint_setupStreams_cold_42(v179 + 62, v73, v74);
      }

      if (*(v179 + 62))
      {
        v76 = FigEndpointStreamGetCMBaseObject();
        v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v77)
        {
          v78 = v77(v76, v174, 0, &v187);
          if (!v78)
          {
            v75 = v179;
            carEndpoint_postNotification(v184, v173, *(v179 + 224), v187);
            goto LABEL_142;
          }

          v28 = v78;
        }

        else
        {
          v28 = 4294954514;
        }

LABEL_366:
        APSLogErrorAt();
        v32 = 0;
LABEL_367:
        a1 = v184;
        goto LABEL_368;
      }

LABEL_142:
      if (FigCFEqual())
      {
        v79 = 267386881;
        v80 = 267386880;
      }

      else
      {
        if (!FigCFEqual())
        {
          v32 = 0;
          v28 = 4294960561;
          goto LABEL_367;
        }

        v80 = 0;
        v79 = 0;
      }

      if (*(v75 + 40))
      {
        v81 = @"com.apple.airplay.car.wireless.sessionPercentageWithScreen";
      }

      else
      {
        v81 = @"com.apple.airplay.car.wired.sessionPercentageWithScreen";
      }

      v82 = APEndpointCarPlayStreamInfoCreate(v185, @"StreamInfo_Screen", v80, v79, v81);
      v32 = v82;
      if (v82)
      {
        *(v82 + 32) = v52;
        v83 = FigEndpointStreamGetCMBaseObject();
        v84 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v84)
        {
          v84(v83, v169, 0, &v224);
        }

        if (v224)
        {
          v85 = CFDictionaryGetValue(v224, v54);
          if (v85)
          {
            v85 = CFRetain(v85);
          }

          v32[5] = v85;
          CFArrayAppendValue(*(v75 + 264), v32);
          if (v52 && !*(v75 + 65))
          {
            carEndpoint_setupStreams_cold_43(v184, &v185);
          }

          CFRelease(v33);
          if (v185)
          {
            CFRelease(v185);
            v185 = 0;
          }

          CFRelease(v32);
          if (v186[0])
          {
            CFRelease(v186[0]);
            v186[0] = 0;
          }

          if (v224)
          {
            CFRelease(v224);
            *&v224 = 0;
          }

          if (v187)
          {
            CFRelease(v187);
            v187 = 0;
          }

          if (++v52 == v178)
          {
            a1 = v184;
            carEndpoint_updateDisplayCornerMasks(v184, 0);
            v32 = 0;
            v33 = 0;
            v28 = 0;
            goto LABEL_368;
          }

          continue;
        }

        carEndpoint_setupStreams_cold_44();
        v28 = 4294949690;
        goto LABEL_367;
      }

      carEndpoint_setupStreams_cold_45();
LABEL_377:
      v28 = 4294950575;
      goto LABEL_367;
    }

    break;
  }

  v28 = v69;
  carEndpoint_setupStreams_cold_41(v69);
  v32 = 0;
  a1 = v184;
LABEL_368:
  v20 = v164;
LABEL_44:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (v187)
  {
    CFRelease(v187);
  }

  if (v188)
  {
    CFRelease(v188);
  }

  if (v28)
  {
    carEndpoint_setupStreams_cold_48(v28);
  }

  else
  {
    carEndpoint_updateActiveStreamConnectionIDs(a1);
  }

LABEL_60:
  CFRelease(v7);
  return v28;
}

uint64_t __carEndpoint_activateInternal_block_invoke_3_165(uint64_t a1)
{
  v10 = 0;
  *(*(*(a1 + 32) + 8) + 24) = APCarPlayGetHeadUnitRestrictionsDictionary(&v10);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    return __carEndpoint_activateInternal_block_invoke_3_165_cold_1(v2);
  }

  v3 = v10;
  APEndpointDescriptionGetCMBaseObject();
  v5 = v4;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {
    return v9(v5, @"HeadUnitRestrictions", v3);
  }

  return result;
}

uint64_t carEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3, char a4, NSObject *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  if (!Mutable)
  {
    carEndpoint_sendCommandInternal_cold_3();
    Data = 0;
LABEL_19:
    v16 = 4294950575;
    goto LABEL_21;
  }

  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v12, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v12, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_sendCommandInternal_cold_2();
    goto LABEL_19;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    if (a5)
    {
      dispatch_retain(a5);
    }

    CFRetain(a1);
    CFRetain(v20);
    if (a2)
    {
      CFRetain(a2);
    }

    v15 = *(DerivedStorage + 528);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __carEndpoint_sendCommandInternal_block_invoke;
    v18[3] = &__block_descriptor_tmp_215;
    v18[4] = DerivedStorage;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = v20;
    v19 = a4;
    v18[8] = Data;
    v18[9] = a5;
    dispatch_async(v15, v18);
    v16 = 0;
LABEL_11:
    CFRelease(v12);
    goto LABEL_12;
  }

  v16 = BlockBufferWithCFDataNoCopy;
  carEndpoint_sendCommandInternal_cold_1(BlockBufferWithCFDataNoCopy);
LABEL_21:
  if (a5)
  {
    dispatch_semaphore_signal(a5);
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (Data)
  {
    CFRelease(Data);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

void __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke(uint64_t a1)
{
  StreamInfoForSubtype = carEndpoint_getStreamInfoForSubtype(*(a1 + 32), *MEMORY[0x277CC1940]);
  if (StreamInfoForSubtype)
  {
    v3 = StreamInfoForSubtype;
    CFRetain(*(a1 + 32));
    CFRetain(v3);
    v4 = *(*(a1 + 40) + 528);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_182_1;
    v5 = *(a1 + 32);
    v7[4] = v3;
    v7[5] = v5;
    dispatch_async(v4, v7);
  }

  else
  {
    __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[56] || (carEndpoint_setParametersForJarvis(*(a1 + 40), 1, 0, 0, 0), (v2 = *(a1 + 32)) != 0))
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __carEndpoint_setParametersForJarvis_block_invoke(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v2 = *(a1 + 32);
  if (!*(v2 + 176) && *(v2 + 177) && *(v2 + 240))
  {
    if (*(a1 + 64))
    {
      goto LABEL_9;
    }

    v10 = *(v2 + 416);
    if (v10)
    {
      if (CFEqual(*(a1 + 48), v10))
      {
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_setParametersForJarvis_block_invoke_cold_1(a1, v11, v12);
        }

        goto LABEL_12;
      }

      v2 = *(a1 + 32);
      v13 = *(v2 + 416);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 48);
    *(v2 + 416) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

LABEL_9:
    v3 = v17;
    APSenderSessionGetCMBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(v5, @"TransportControlStream", 0, v3 + 3);
      if (!v7)
      {
        CFRetain(*(a1 + 40));
        v8 = *(*(a1 + 32) + 528);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v15[2] = __carEndpoint_setParametersForJarvis_block_invoke_2;
        v15[3] = &unk_27849E7F8;
        v9 = *(a1 + 40);
        v15[4] = &v16;
        v15[5] = v9;
        dispatch_async(v8, v15);
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 4294954514;
    }

    __carEndpoint_setParametersForJarvis_block_invoke_cold_2(v7);
    goto LABEL_12;
  }

  if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_setParametersForJarvis_block_invoke_cold_3();
  }

LABEL_12:
  _Block_object_dispose(&v16, 8);
}

void __carEndpoint_setParametersForJarvis_block_invoke_2(uint64_t a1)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_setParametersForJarvis_block_invoke_2_cold_1();
  }

  APTransportStreamSendPlistMessage();
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFTypeRef __carEndpoint_sendCommandInternal_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __carEndpoint_configureAccessoryLogs_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (APSGetFBOPropertyInt64() <= 0x493DFF)
  {
    __carEndpoint_configureAccessoryLogs_block_invoke_cold_5();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      if (CFPreferencesGetAppBooleanValue(@"airPlayCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v4 = carEndpoint_prepareAccessoryLogAction(@"airPlayCarPlayReceiverLogCategory", @"airPlayCarPlayReceiverLogLevel");
        CFDictionarySetValue(v3, @"LogAction", v4);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setAccessoryLoggingLevel(FigEndpointRef)", 33554482, "[%{ptr}] Communication Plug-in LogAction = %@", v1, v4);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }

      if (CFPreferencesGetAppBooleanValue(@"dpCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v5 = carEndpoint_prepareAccessoryLogAction(@"dpCarPlayReceiverLogCategory", @"dpCarPlayReceiverLogLevel");
        CFDictionarySetValue(v3, @"DPLogAction", v5);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setAccessoryLoggingLevel(FigEndpointRef)", 33554482, "[%{ptr}] DP LogAction = %@", v1, v5);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      if (CFPreferencesGetAppBooleanValue(@"OEMCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v6 = carEndpoint_prepareAccessoryLogAction(@"OEMCarPlayReceiverLogCategory", @"OEMCarPlayReceiverLogLevel");
        CFDictionarySetValue(v3, @"OEMLogAction", v6);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setAccessoryLoggingLevel(FigEndpointRef)", 33554482, "[%{ptr}] OEM Plug-in LogAction = %@", v1, v6);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v15 = 0;
      if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendAccessoryLogRequest(FigEndpointRef, CFDictionaryRef, CMBlockBufferRef *)", 33554462, "[%{ptr}] Sending accessory log request with inParams = %@", v1, v3);
      }

      v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v8, @"params", v3);
        Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v11 = Data;
          BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
          if (BlockBufferWithCFDataNoCopy)
          {
            __carEndpoint_configureAccessoryLogs_block_invoke_cold_1(BlockBufferWithCFDataNoCopy);
          }

          else
          {
            v13 = *(DerivedStorage + 528);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = __carEndpoint_sendAccessoryLogRequest_block_invoke;
            block[3] = &__block_descriptor_tmp_288;
            block[4] = DerivedStorage;
            block[5] = v15;
            block[6] = 0;
            block[7] = v1;
            dispatch_sync(v13, block);
          }

          CFRelease(v9);
          CFRelease(v11);
          if (v15)
          {
            CFRelease(v15);
          }
        }

        else
        {
          __carEndpoint_configureAccessoryLogs_block_invoke_cold_2(v9);
        }
      }

      else
      {
        __carEndpoint_configureAccessoryLogs_block_invoke_cold_3();
      }

      CFRelease(v3);
    }

    else
    {
      __carEndpoint_configureAccessoryLogs_block_invoke_cold_4();
    }
  }
}

__CFString *carEndpoint_prepareAccessoryLogAction(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6[0] = 0;
  APSSettingsGetCString();
  __strlcpy_chk();
  v4 = CFStringCreateMutable(v2, 0);
  v7[0] = 0;
  APSSettingsGetCString();
  __strlcpy_chk();
  CFStringAppendFormat(v4, 0, @"%s", v7);
  CFStringAppendFormat(Mutable, 0, @"?%@:level=%s", v4, v6);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void __carEndpoint_sendAccessoryLogRequest_block_invoke(uint64_t *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  cf = 0;
  if (!carEndpoint_isDissociated(a1[4]))
  {
    v2 = a1[4];
    v3 = *(v2 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_sendAccessoryLogRequest_block_invoke_2;
    block[3] = &unk_27849E8A8;
    block[4] = &v20;
    block[5] = v2;
    dispatch_sync(v3, block);
    v4 = v21[3];
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        if (v5(v4))
        {
          APSenderSessionGetCMBaseObject();
          v7 = v6;
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v9 = v8(v7, @"TransportControlStream", 0, &cf);
            if (v9)
            {
              v16 = v9;
            }

            else
            {
              v10 = cf;
              v11 = a1[5];
              v12 = a1[6];
              v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v13)
              {
                v14 = v13(v10, 1819240307, v11, v12);
                if (!v14)
                {
                  goto LABEL_9;
                }

                v16 = v14;
              }

              else
              {
                v16 = 4294954514;
              }
            }
          }

          else
          {
            v16 = 4294954514;
          }

          APSLogErrorAt();
          v15 = cf;
          if (!cf)
          {
            goto LABEL_16;
          }

          if (gLogCategory_APEndpointCarPlay > 90)
          {
            goto LABEL_15;
          }

          __carEndpoint_sendAccessoryLogRequest_block_invoke_cold_1(gLogCategory_APEndpointCarPlay, a1, v16);
        }
      }
    }
  }

LABEL_9:
  v15 = cf;
  if (cf)
  {
LABEL_15:
    CFRelease(v15);
  }

LABEL_16:
  v17 = v21[3];
  if (v17)
  {
    CFRelease(v17);
  }

  _Block_object_dispose(&v20, 8);
}

CFTypeRef __carEndpoint_sendAccessoryLogRequest_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t carEndpoint_handleEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    if (gLogCategory_APEndpointCarPlay != -1)
    {
      return LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleEvent(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554482, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleEvent(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554482, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }
  }

  return result;
}

void carEndpoint_handleSenderSessionConnected(uint64_t a1, const void *a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionConnected_cold_1(a2, a2, a3);
  }

  carEndpoint_handleConnectedStateChanged(a2);
}

void carEndpoint_handleSenderSessionDisconnected(uint64_t a1, const void *a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionDisconnected_cold_1(a2, a2, a3);
  }

  carEndpoint_handleConnectedStateChanged(a2);
}

void carEndpoint_handleSenderSessionFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionFailed_cold_1(a2, v6, v7);
  }

  Int64 = CFDictionaryGetInt64();
  v10 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleSenderSessionFailed_block_invoke;
  block[3] = &__block_descriptor_tmp_515;
  v12 = Int64;
  block[4] = a2;
  block[5] = DerivedStorage;
  dispatch_sync(v10, block);
}

uint64_t carEndpoint_teardownSenderSession(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v6)
    {
      v6(a2, 0, 0, 0, 0);
    }

    if (a3)
    {
      mach_absolute_time();
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      v8 = v7 ? v7(a2) : 4294954514;
      mach_absolute_time();
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        v9 = UpTicksToMilliseconds();
        LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_teardownSenderSession(FigEndpointRef, APSenderSessionRef, Boolean)", 33554482, "[%{ptr}] Teardown of session [%{ptr}] took %llu ms (err: %#m)\n", v5, a2, v9, v8);
      }
    }

    APSenderSessionGetCMBaseObject();
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v11);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    APSenderSessionGetCMBaseObject();
    v14 = v13;
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 8);
    result = VTable + 8;
    v16 = v17;
    if (*v17 >= 2uLL)
    {
      v18 = v16[8];
      if (v18)
      {

        return v18(v14);
      }
    }
  }

  return result;
}

uint64_t carEndpoint_requestUI(const void *a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      carEndpoint_requestUI_cold_1();
      v11 = 4294950575;
      goto LABEL_17;
    }

    v7 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    a2 = TypedValue;
    if (TypedValue && CFStringGetLength(TypedValue) >= 1)
    {
      v9 = CFURLCreateWithString(0, a2, 0);
      if (v9)
      {
        CFDictionarySetValue(v7, *MEMORY[0x277CC1A48], v9);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_requestUI_cold_2(v9, a1, v4);
  }

  v10 = *(DerivedStorage + 168);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __carEndpoint_requestUI_block_invoke;
  v13[3] = &unk_27849EA18;
  v13[4] = &v14;
  v13[5] = DerivedStorage;
  dispatch_sync(v10, v13);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0DC8], *(v15 + 6), v7);
  carEndpoint_recordRequestUI(a1, a2, 1);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = 0;
LABEL_17:
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t carEndpoint_updateViewArea(const void *a1, const __CFDictionary *a2)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (*(DerivedStorage + 62))
  {
    if (a2)
    {
      v5 = DerivedStorage;
      Value = CFDictionaryGetValue(a2, @"uuid");
      if (Value)
      {
        v7 = Value;
        Int64 = CFDictionaryGetInt64();
        if (v21)
        {
          carEndpoint_updateViewArea_cold_1(v21);
        }

        else
        {
          v9 = CFDictionaryGetValue(a2, @"adjacentViewAreas");
          if (v9)
          {
            v10 = v9;
            v11 = CFDictionaryGetInt64();
            if (v21)
            {
              carEndpoint_updateViewArea_cold_2(v21);
            }

            else
            {
              if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateViewArea(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] viewAreaUpdate for display %@: viewArea %d adjacentViewAreas %@ animationDurationMillis %d\n", a1, v7, Int64, v10, v11);
              }

              v12 = carEndpoint_validateViewAreaParams(a1, v7, Int64, v10);
              v21 = v12;
              if (v12)
              {
                carEndpoint_updateViewArea_cold_3(v12);
              }

              else
              {
                v13 = *(v5 + 168);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __carEndpoint_updateViewArea_block_invoke;
                block[3] = &unk_27849EBC0;
                block[6] = v7;
                block[7] = a2;
                block[4] = &v17;
                block[5] = a1;
                block[8] = v5;
                dispatch_sync(v13, block);
                carEndpoint_postNotification(a1, *MEMORY[0x277CC0DA8], *(v18 + 6), a2);
              }
            }
          }

          else
          {
            carEndpoint_updateViewArea_cold_4();
          }
        }
      }

      else
      {
        carEndpoint_updateViewArea_cold_5();
      }
    }

    else
    {
      carEndpoint_updateViewArea_cold_6();
    }
  }

  else
  {
    carEndpoint_updateViewArea_cold_7(&v21);
  }

  v14 = v21;
  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t carEndpoint_setLimitedUI(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = carEndpoint_copyMainDisplayUuid(a1);
      if (v8)
      {
        v9 = v8;
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue && (v11 = TypedValue, CFStringGetLength(TypedValue)) && !FigCFEqual())
        {
          v12 = 0;
        }

        else
        {
          v12 = 1;
          v11 = v9;
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0BE8], v11);
        Int64 = CFDictionaryGetInt64();
        v14 = MEMORY[0x277CBED28];
        if (!Int64)
        {
          v14 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0BF0], *v14);
        v15 = *(v5 + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_setLimitedUI_block_invoke;
        block[3] = &unk_27849EC10;
        v20 = v12;
        v21 = Int64 != 0;
        block[4] = &v22;
        block[5] = v5;
        dispatch_sync(v15, block);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D68], *(v23 + 6), v7);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          v16 = "disabled";
          if (Int64)
          {
            v16 = "enabled";
          }

          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setLimitedUI(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] LimitedUI is now %s for display %@\n", a1, v16, v11);
        }

        CFRelease(v9);
        v17 = 0;
      }

      else
      {
        carEndpoint_setLimitedUI_cold_1();
        v17 = 4294950576;
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_setLimitedUI_cold_2();
      v17 = 4294950575;
    }
  }

  else
  {
    carEndpoint_setLimitedUI_cold_3();
    v17 = 4294950576;
  }

  _Block_object_dispose(&v22, 8);
  return v17;
}

uint64_t carEndpoint_setNightMode(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = carEndpoint_copyMainDisplayUuid(a1);
      if (v8)
      {
        v9 = v8;
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue && (v11 = TypedValue, CFStringGetLength(TypedValue)) && !FigCFEqual())
        {
          v12 = 0;
        }

        else
        {
          v12 = 1;
          v11 = v9;
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0C90], v11);
        Int64 = CFDictionaryGetInt64();
        v14 = MEMORY[0x277CBED28];
        if (!Int64)
        {
          v14 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0C98], *v14);
        v15 = *(v5 + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_setNightMode_block_invoke;
        block[3] = &unk_27849EC60;
        v20 = v12;
        v21 = Int64 != 0;
        block[4] = &v22;
        block[5] = v5;
        dispatch_sync(v15, block);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D78], *(v23 + 6), v7);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          v16 = "disabled";
          if (Int64)
          {
            v16 = "enabled";
          }

          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setNightMode(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] NightMode is now %s for display %@\n", a1, v16, v11);
        }

        CFRelease(v9);
        v17 = 0;
      }

      else
      {
        carEndpoint_setNightMode_cold_1();
        v17 = 4294950576;
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_setNightMode_cold_2();
      v17 = 4294950575;
    }
  }

  else
  {
    carEndpoint_setNightMode_cold_3();
    v17 = 4294950576;
  }

  _Block_object_dispose(&v22, 8);
  return v17;
}

uint64_t carEndpoint_updateVehicleInformation(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!a2)
  {
    carEndpoint_updateVehicleInformation_cold_2();
LABEL_9:
    v8 = 4294950576;
    goto LABEL_6;
  }

  v5 = DerivedStorage;
  CFDictionaryGetTypeID();
  values = CFDictionaryGetTypedValue();
  if (!values)
  {
    carEndpoint_updateVehicleInformation_cold_1();
    goto LABEL_9;
  }

  v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], MEMORY[0x277CC1A40], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = *(v5 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_updateVehicleInformation_block_invoke;
  block[3] = &unk_27849EC88;
  block[6] = values;
  block[7] = a1;
  block[4] = &v11;
  block[5] = v5;
  dispatch_sync(v7, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0DA0], *(v12 + 6), v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t carEndpoint_validateRuntimeFeaturesWithAccessory(uint64_t a1, const __CFString *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFStringCompare(a2, @"suggestUI", 0) && CFStringCompare(a2, @"showUI", 0))
  {
    if (CFStringCompare(a2, @"changeUIContext", 0))
    {
      if (CFStringCompare(a2, @"deviceOfferFocus", 0) && CFStringCompare(a2, @"accessoryAcquireFocus", 0) && CFStringCompare(a2, @"accessoryGiveFocus", 0) || DerivedStorage[66])
      {
        return 0;
      }
    }

    else if (DerivedStorage[64])
    {
      return 0;
    }
  }

  else if (DerivedStorage[63])
  {
    return 0;
  }

  if (!a3)
  {
    if (gLogCategory_APEndpointCarPlay <= 90)
    {
      if (gLogCategory_APEndpointCarPlay == -1)
      {
        v7 = 0;
        if (!_LogCategory_Initialize())
        {
          return v7;
        }
      }

      else
      {
        v7 = 0;
      }

      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateRuntimeFeaturesWithAccessory(FigEndpointRef, CFStringRef, Boolean)", 33554522, "[%{ptr}] %###s called, feature not defined, command: %'@, continue with noErr result\n", a1, "OSStatus carEndpoint_validateRuntimeFeaturesWithAccessory(FigEndpointRef, CFStringRef, Boolean)", a2);
      return v7;
    }

    return 0;
  }

  if (gLogCategory_APEndpointCarPlay > 90)
  {
    return 4294950576;
  }

  if (gLogCategory_APEndpointCarPlay == -1)
  {
    v7 = 4294950576;
    if (!_LogCategory_Initialize())
    {
      return v7;
    }
  }

  else
  {
    v7 = 4294950576;
  }

  LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateRuntimeFeaturesWithAccessory(FigEndpointRef, CFStringRef, Boolean)", 33554522, "[%{ptr}] %###s called, feature not defined, command: %'@\n", a1, "OSStatus carEndpoint_validateRuntimeFeaturesWithAccessory(FigEndpointRef, CFStringRef, Boolean)", a2);
  return v7;
}

uint64_t __carEndpoint_forceKeyFrame_block_invoke(void *a1)
{
  result = a1[5];
  if (result && (result = CFStringGetLength(result), result >= 1))
  {
    *(*(a1[4] + 8) + 24) = carEndpoint_getScreenStreamForDisplayUUID(a1[6], a1[5]);
    result = *(*(a1[4] + 8) + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else if (*(a1[7] + 264))
  {
    result = carEndpoint_getStreamInfoForSubtype(a1[6], *MEMORY[0x277CC1950]);
    if (result)
    {
      result = *(result + 16);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(a1[4] + 8) + 24) = result;
    }
  }

  return result;
}

CFTypeRef __carEndpoint_sendiAPMessage_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 312);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void carEndpoint_jarvisInitiationComplete(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 168);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __carEndpoint_jarvisInitiationComplete_block_invoke;
  v5[3] = &__block_descriptor_tmp_371;
  v5[4] = DerivedStorage;
  v6 = a2;
  dispatch_async(v4, v5);
}

uint64_t __carEndpoint_jarvisInitiationComplete_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 456) = 0;
  if (!*(result + 40))
  {
    *(v1 + 448) = 0;
  }

  return result;
}

void carEndpoint_recordRequestUI(uint64_t a1, const __CFString *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = off_27849EA48;
  do
  {
    if (*(v8 - 16) == a3 && FigCFEqual() && (!*v8 || a2 && !CFStringFind(a2, *v8, 1uLL).location))
    {
      v9 = *(DerivedStorage + 168);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __carEndpoint_recordRequestUI_block_invoke;
      v10[3] = &__block_descriptor_tmp_410;
      v10[4] = DerivedStorage;
      v10[5] = a1;
      v10[6] = v7;
      v11 = a3;
      dispatch_sync(v9, v10);
      return;
    }

    ++v7;
    v8 += 4;
  }

  while (v7 != 11);

  APSLogErrorAt();
}

uint64_t __carEndpoint_recordRequestUI_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 264))
  {
    v1 = result;
    result = carEndpoint_getStreamInfoForSubtype(*(result + 40), *(&kCarPlayRequestUIKeys + 4 * *(result + 48) + 1));
    if (result)
    {
      v2 = result;
      if (*(v1 + 56))
      {
        ++*(result + 84);
      }

      else
      {
        ++*(result + 120);
      }

      result = FigCFEqual();
      if (result)
      {
        ++v2[22];
      }

      else
      {
        result = FigCFEqual();
        if (result)
        {
          ++v2[23];
        }

        else
        {
          result = FigCFEqual();
          if (result)
          {
            ++v2[24];
          }

          else
          {
            result = FigCFEqual();
            if (result)
            {
              ++v2[25];
            }

            else
            {
              result = FigCFEqual();
              if (result)
              {
                ++v2[26];
              }

              else
              {
                result = FigCFEqual();
                if (result)
                {
                  ++v2[27];
                }

                else
                {
                  result = FigCFEqual();
                  if (result)
                  {
                    ++v2[28];
                  }

                  else
                  {
                    result = FigCFEqual();
                    if (result)
                    {
                      ++v2[29];
                    }

                    else
                    {
                      result = FigCFEqual();
                      if (result)
                      {
                        ++v2[31];
                      }

                      else
                      {
                        result = FigCFEqual();
                        if (result)
                        {
                          ++v2[32];
                        }

                        else
                        {
                          result = FigCFEqual();
                          if (result)
                          {
                            ++v2[33];
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
      }
    }
  }

  return result;
}

uint64_t carEndpoint_validateViewAreaParams(uint64_t a1, const void *a2, CFIndex a3, const __CFArray *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 280));
  if (Count < 1)
  {
LABEL_5:
    v14 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    v11 = *MEMORY[0x277CC1680];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 280), v10);
      Value = CFDictionaryGetValue(ValueAtIndex, v11);
      if (CFEqual(a2, Value))
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_5;
      }
    }

    v15 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC16D8]);
    v14 = CFArrayGetCount(v15);
  }

  if (a3 >= 1 && v14 <= a3)
  {
    carEndpoint_validateViewAreaParams_cold_1();
    return 4294950576;
  }

  else if (a4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    CFArrayGetCount(a4);
    CFArrayApplyBlock();
    a4 = *(v18 + 6);
    if (a4)
    {
      carEndpoint_validateViewAreaParams_cold_2(*(v18 + 6));
    }

    _Block_object_dispose(&v17, 8);
  }

  return a4;
}

uint64_t __carEndpoint_updateViewArea_block_invoke(void *a1)
{
  result = carEndpoint_getScreenStreamForDisplayUUID(a1[5], a1[6]);
  if (result)
  {
    v3 = a1[7];
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = VTable + 8;
    v7 = *(v6 + 56);
    if (v7)
    {
      result = v7(CMBaseObject, *MEMORY[0x277CC1908], v3);
    }
  }

  *(*(a1[4] + 8) + 24) = *(a1[8] + 224);
  return result;
}

uint64_t __carEndpoint_validateViewAreaParams_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v2 = result;
    result = CFGetInt64();
    v3 = *(*(v2 + 32) + 8);
    if (result >= *(v2 + 40) || *(v3 + 24))
    {
      *(v3 + 24) = -16720;
    }
  }

  return result;
}

uint64_t carEndpoint_copyMainDisplayUuid(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(DerivedStorage + 168);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __carEndpoint_copyMainDisplayUuid_block_invoke;
  v5[3] = &unk_27849EC38;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __carEndpoint_setLimitedUI_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(result + 48))
  {
    *(v1 + 329) = *(result + 49);
  }

  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  return result;
}

const __CFArray *__carEndpoint_copyMainDisplayUuid_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 280);
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, 0);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(result, *MEMORY[0x277CC1680]);
      result = *(*(*(a1 + 32) + 8) + 24);
      if (result)
      {

        return CFRetain(result);
      }
    }
  }

  return result;
}

uint64_t __carEndpoint_setNightMode_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(result + 48))
  {
    *(v1 + 330) = *(result + 49);
  }

  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  return result;
}

void __carEndpoint_updateVehicleInformation_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1 + 5;
  v8 = *(v6 + 336);
  *(v6 + 336) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_updateVehicleInformation_block_invoke_cold_1(a1, v7, a3);
  }

  *(*(a1[4] + 8) + 24) = *(a1[5] + 224);
}

void carEndpoint_handleConnectedStateChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  isEndpointConnected = carEndpoint_isEndpointConnected(a1);
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  v6 = MEMORY[0x277CBED10];
  if (isEndpointConnected)
  {
    v6 = MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CB8], *v6);
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    v7 = "true";
    if (!isEndpointConnected)
    {
      v7 = "false";
    }

    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleConnectedStateChanged(FigEndpointRef)", 33554482, "[%{ptr}] Endpoint connected state changed: isConnected = %s\n", a1, v7);
  }

  v8 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleConnectedStateChanged_block_invoke;
  block[3] = &unk_27849ECB0;
  block[4] = &v10;
  block[5] = DerivedStorage;
  dispatch_sync(v8, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0D28], *(v11 + 6), v5);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v10, 8);
}

void carEndpoint_updateErrorStatusIfNotSet(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (!*(DerivedStorage + 176))
    {
      if (!*(DerivedStorage + 228))
      {
        *(DerivedStorage + 228) = a2;
      }

      if (a2 != -16603 || *(DerivedStorage + 40))
      {
        v13 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetInt64();
        v15 = MEMORY[0x277CC0CA0];
        if (!*(v7 + 177))
        {
          v15 = MEMORY[0x277CC0CA8];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CC8], *v15);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D50], *(v7 + 224), Mutable);
        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      else
      {
        if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          carEndpoint_updateErrorStatusIfNotSet_cold_1(a1, v5, v6);
        }

        v8 = *(v7 + 240);
        if (v8)
        {
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 96);
          if (v9)
          {
            v9(v8, 0, 0, 0, 0);
          }

          APSenderSessionGetCMBaseObject();
          if (v10)
          {
            v11 = v10;
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v12)
            {

              v12(v11);
            }
          }
        }
      }
    }
  }
}

uint64_t carEndpoint_overrideFeatureKeyWithPrefValue(uint64_t a1, CFArrayRef theArray, const void *a3, uint64_t a4)
{
  v15.length = CFArrayGetCount(theArray);
  v15.location = 0;
  CountOfValue = CFArrayGetCountOfValue(theArray, v15, a3);
  if (CountOfValue >= 2)
  {
    carEndpoint_overrideFeatureKeyWithPrefValue_cold_1();
    return 0;
  }

  else
  {
    v8 = CountOfValue == 1;
    IntWithDefault = APSSettingsGetIntWithDefault();
    v10 = IntWithDefault;
    v11 = IntWithDefault;
    if (IntWithDefault != v8)
    {
      if (IntWithDefault)
      {
        CFArrayAppendValue(theArray, a3);
      }

      else
      {
        v16.length = CFArrayGetCount(theArray);
        v16.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v16, a3);
        CFArrayRemoveValueAtIndex(theArray, FirstIndexOfValue);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        v13 = "Enabled";
        if (!v11)
        {
          v13 = "Disabled";
        }

        LogPrintF(&gLogCategory_APEndpointCarPlay, "Boolean carEndpoint_overrideFeatureKeyWithPrefValue(FigEndpointRef, CFMutableArrayRef, CFStringRef, CFStringRef)", 33554482, "[%{ptr}] AirPlay switch overrode setting for %@ to be %s", a1, a3, v13);
      }
    }
  }

  return v10;
}

void __carEndpoint_createInfoRequestFeatureList_block_invoke(uint64_t a1, CFURLRef anURL)
{
  v2 = *(a1 + 32);
  v3 = CFURLGetString(anURL);

  CFArrayAppendValue(v2, v3);
}

void __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryContainsKey(cf, @"viewAreaSupportsFocusTransfer") && CFDictionaryGetInt64())
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if (CFDictionaryContainsKey(cf, @"safeArea"))
    {
      CFDictionaryGetTypeID();
      if (CFDictionaryGetTypedValue())
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke_cold_1();
  }
}

uint64_t carEndpoint_validateInfoResponseKeyPresentForFeature(uint64_t a1, CFDictionaryRef theDict, void *key, int a4)
{
  v7 = CFDictionaryContainsKey(theDict, key);
  if (a4)
  {
    if (!v7)
    {
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateInfoResponseKeyPresentForFeature(FigEndpointRef, CFDictionaryRef, CFStringRef, _Bool)", 33554522, "[%{ptr}] Info response validation failed; entry for %@ expected but not found.\n", a1, key);
      }

LABEL_17:
      v8 = 4294950576;
      APSLogErrorAt();
      return v8;
    }
  }

  else if (v7 == 1)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateInfoResponseKeyPresentForFeature(FigEndpointRef, CFDictionaryRef, CFStringRef, _Bool)", 33554522, "[%{ptr}] Info response validation failed; entry for %@ found but not negotiated.\n", a1, key);
    }

    goto LABEL_17;
  }

  return 0;
}

CFTypeRef __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 496);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t carEndpoint_createCommChannelInternal(const void *a1, const __CFDictionary *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  cf = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", 33554462, "[%{ptr}] %###s called %'@\n", a1, "OSStatus carEndpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", a2);
  }

  if (a2)
  {
    if (*(DerivedStorage + 176))
    {
      carEndpoint_createCommChannelInternal_cold_1();
      v15 = 0;
      v26 = 4294950573;
    }

    else
    {
      v9 = *(DerivedStorage + 240);
      if (v9)
      {
        v10 = CFRetain(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v12 || !v12(v11))
          {
            carEndpoint_createCommChannelInternal_cold_5();
            v15 = 0;
            v26 = 4294950570;
LABEL_35:
            CFRelease(v11);
            goto LABEL_36;
          }

          v13 = *MEMORY[0x277CBECE8];
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          v15 = MutableCopy;
          if (MutableCopy)
          {
            v16 = *MEMORY[0x277CBED28];
            CFDictionarySetValue(MutableCopy, @"wantsDedicatedSocket", *MEMORY[0x277CBED28]);
            Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
            if (CFStringCompare(Value, *MEMORY[0x277CC15F8], 0))
            {
              if (CFPrefs_GetInt64())
              {
                v18 = v16;
              }

              else
              {
                v18 = *MEMORY[0x277CBED10];
              }

              CFDictionarySetValue(v15, @"publishEncryptionKeyDiagnosticMode", v18);
            }

            CFDictionarySetInt64();
            v19 = CFGetAllocator(a1);
            v20 = APEndpointRemoteControlSessionCreate(v19, v11, *(DerivedStorage + 32), v15, 2, &v29);
            if (v20)
            {
              v26 = v20;
              carEndpoint_createCommChannelInternal_cold_2(v20);
              goto LABEL_35;
            }

            if (*(DerivedStorage + 472) || (v21 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 472) = Mutable) != 0))
            {
              CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
              v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v24)
              {
                v25 = v24(CMBaseObject, @"SessionID", v13, &cf);
                if (!v25)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListener();
                  CFDictionarySetValue(*(DerivedStorage + 472), cf, v29);
                  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", 33554482, "New RCS [%{ptr}] with ID [%@] created for Endpoint [%{ptr}]\n", v29, cf, a1);
                  }

                  if (a3)
                  {
                    *a3 = v29;
                    v29 = 0;
                  }

                  v27 = cf;
                  v26 = 0;
                  if (a4)
                  {
                    *a4 = cf;
                    cf = 0;
                    goto LABEL_35;
                  }

LABEL_27:
                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  goto LABEL_35;
                }

                v26 = v25;
              }

              else
              {
                v26 = 4294954514;
              }

              APSLogErrorAt();
              v27 = cf;
              goto LABEL_27;
            }

            carEndpoint_createCommChannelInternal_cold_3();
          }

          else
          {
            carEndpoint_createCommChannelInternal_cold_4();
          }

          v26 = 4294950575;
          goto LABEL_35;
        }
      }

      carEndpoint_createCommChannelInternal_cold_6();
      v15 = 0;
      v26 = 4294950570;
    }
  }

  else
  {
    carEndpoint_createCommChannelInternal_cold_7();
    v15 = 0;
    v26 = 4294950576;
  }

LABEL_36:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v26;
}

void carEndpoint_handleiAPChannelEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleiAPChannelEvent_cold_1(a4, v6, v7);
  }

  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_16;
  }

  v11 = v10(CMBaseObject, @"clientTypeUUID", 0, &v21);
  if (v11)
  {
LABEL_16:
    carEndpoint_handleiAPChannelEvent_cold_5(v11);
    goto LABEL_10;
  }

  if (CFStringCompare(v21, @"E9459FD0-BCAD-4C45-820F-1E72447EF2F2", 0))
  {
    carEndpoint_handleiAPChannelEvent_cold_2();
  }

  else
  {
    v12 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_handleiAPChannelEvent_block_invoke;
    block[3] = &unk_27849EE78;
    block[4] = &v17;
    block[5] = DerivedStorage;
    dispatch_sync(v12, block);
    v13 = v18[3];
    if (v13)
    {
      v14 = APAccTransportClientEndpointForwardData(v13, a3);
      if (v14)
      {
        carEndpoint_handleiAPChannelEvent_cold_3(v14);
      }
    }

    else
    {
      carEndpoint_handleiAPChannelEvent_cold_4();
    }
  }

LABEL_10:
  v15 = v18[3];
  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  _Block_object_dispose(&v17, 8);
}

void carEndpoint_handleRCSClosed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &v13);
  if (v9)
  {
LABEL_13:
    carEndpoint_handleRCSClosed_cold_1(v9);
    goto LABEL_9;
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (v13)
  {
    CFRetain(v13);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(DerivedStorage + 168);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __carEndpoint_handleRCSClosed_block_invoke;
  v12[3] = &__block_descriptor_tmp_730;
  v12[4] = v10;
  v12[5] = a4;
  v12[6] = a2;
  dispatch_async(v11, v12);
LABEL_9:
  if (v13)
  {
    CFRelease(v13);
  }
}

void __carEndpoint_handleRCSClosed_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_unsubscribeAndDestroyRCS(CFStringRef, FigEndpointRemoteControlSessionRef, FigEndpointRef)", 33554482, "[%{ptr}] Unsubscribing and destroying Remote Control Session entry with ID: %@ from APEndpoint... \n", v3, v2);
  }

  v5 = *(DerivedStorage + 472);
  if (v5)
  {
    CFDictionaryRemoveValue(v5, v2);
  }

  v6 = (DerivedStorage + 72);
  if (FigCFEqual() || (v6 = (DerivedStorage + 88), FigCFEqual()) || (v6 = (DerivedStorage + 96), FigCFEqual()) || (v6 = (DerivedStorage + 112), FigCFEqual()) || (v6 = (DerivedStorage + 128), FigCFEqual()) || (v6 = (DerivedStorage + 144), FigCFEqual()))
  {
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = (DerivedStorage + 152);
  if (FigCFEqual())
  {
    v7 = *v10;
    v6 = v10;
    if (*v10)
    {
LABEL_14:
      CFRelease(v7);
      *v6 = 0;
    }
  }

LABEL_15:
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {

    CFRelease(v9);
  }
}

CFTypeRef __carEndpoint_handleiAPChannelEvent_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 312);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void carEndpoint_registerForGlobalNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_registerForGlobalNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_739;
  block[4] = a2;
  block[5] = a4;
  block[6] = DerivedStorage;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v9, block);
}

uint64_t carEndpoint_handleOverrideTurnByTurnConfigurationChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 520))
  {
    return carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_4();
  }

  FigStarkModeControllerGetCurrentMode();
  result = CFPreferencesGetAppBooleanValue(@"overrideTBTAppState", @"com.apple.airplay", 0);
  v4 = result;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_1(v4, a1, v3);
    if (!v4)
    {
      return result;
    }
  }

  else if (!v4)
  {
    return result;
  }

  result = CFPreferencesGetAppBooleanValue(@"iOSIsDoingTBT", @"com.apple.airplay", 0);
  v6 = result;
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_2(v6, a1, v5);
    }
  }

  if (v6)
  {
    result = FigStarkModeControllerRequestModeChange();
    if (result)
    {
      return carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_3(result);
    }
  }

  return result;
}

CFTypeRef __carEndpoint_registerForGlobalNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 512);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_registerForGlobalNotification_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_738;
  v7 = *(a1 + 56);
  result = notify_register_dispatch(v2, v3, v4, v6);
  if (**(a1 + 40) != -1)
  {
    return CFRetain(*(a1 + 64));
  }

  return result;
}

uint64_t carEndpoint_setupAudioStream(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v9 = *MEMORY[0x277CC1968];
  v33 = a3;
  if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithBufferedAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithBufferedAudio";
    }

    v11 = *(DerivedStorage + 256);
    CMBaseObjectGetDerivedStorage();
    cf = 0;
    v37 = 0;
    v35 = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v21 = 0;
      v20 = 4294950575;
      goto LABEL_64;
    }

    v13 = Mutable;
    CFDictionarySetValue(Mutable, @"streamType", v9);
    v14 = CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v18 = v17(v16, @"CarPlayAudioFormats", v14, &cf);
      if (!v18)
      {
        v19 = APCarPlayAudioFormatsCopyFormatsForAudioType(cf, 103, @"media", &v35, 0, 0);
        if (v19)
        {
          v20 = v19;
          carEndpoint_setupAudioStream_cold_1(v19);
        }

        else
        {
          CFDictionarySetInt64();
          v20 = APAudioEngineVendorCreate(v11, v13, APAudioEngineBufferedCreate, &v37);
          if (!v20)
          {
            v21 = v37;
            v37 = 0;
            goto LABEL_14;
          }

          APSLogErrorAt();
          if (v37)
          {
            CFRelease(v37);
          }
        }

LABEL_13:
        v21 = 0;
LABEL_14:
        CFRelease(v13);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v20)
        {
          v22 = CFGetAllocator(a1);
          v23 = APEndpointStreamBufferedAudioCreate(v22, *(DerivedStorage + 16), *(DerivedStorage + 32), a4, *(DerivedStorage + 240), v21, *(DerivedStorage + 8), &v34);
          if (v23)
          {
            v20 = v23;
            carEndpoint_setupAudioStream_cold_2(v23);
            goto LABEL_57;
          }

          v24 = @"StreamInfo_BufferedAudio";
          v25 = 261095425;
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupAudioStream(FigEndpointRef, const CFStringRef, const CFStringRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Created BufferedAudio stream [%{ptr}]\n", a1, v34);
          }

          v26 = 261095424;
          goto LABEL_49;
        }

LABEL_64:
        APSLogErrorAt();
        goto LABEL_57;
      }

      v20 = v18;
    }

    else
    {
      v20 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithMainAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithMainAudio";
    }

    v25 = 265289729;
    v26 = 265289728;
    v27 = kAPEndpointShowInfoKey_StreamInfo_MainAudio;
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithAltAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithAltAudio";
    }

    v25 = 264241153;
    v26 = 264241152;
    v27 = kAPEndpointShowInfoKey_StreamInfo_AltAudio;
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithAuxAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithAuxAudio";
    }

    v25 = 263192577;
    v26 = 263192576;
    v27 = kAPEndpointShowInfoKey_StreamInfo_AuxAudio;
  }

  else
  {
    if (!FigCFEqual())
    {
      v21 = 0;
      v20 = 4294960561;
      goto LABEL_57;
    }

    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithOutOfBandAVVCAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithOutOfBandAVVCAudio";
    }

    v25 = 262144001;
    v26 = 262144000;
    v27 = kAPEndpointShowInfoKey_StreamInfo_OutOfBandAVVCAudio;
  }

  v24 = *v27;
  v28 = CFGetAllocator(a1);
  v29 = APEndpointStreamCarPlayAudioCreate(v28, a1, *(DerivedStorage + 16), a2, a3, a4, *(DerivedStorage + 8), *(DerivedStorage + 240), *(DerivedStorage + 256), *(DerivedStorage + 288), &v34);
  if (v29)
  {
    v20 = v29;
    carEndpoint_setupAudioStream_cold_3(v29);
    v21 = 0;
    goto LABEL_57;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupAudioStream(FigEndpointRef, const CFStringRef, const CFStringRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Created CarPlayAudio stream [%{ptr}]\n", a1, v34);
  }

  v21 = 0;
LABEL_49:
  carEndpoint_addEndpointStreamNotificationListeners(a1, v34);
  v30 = APEndpointCarPlayStreamInfoCreate(v34, v24, v26, v25, v10);
  if (v30)
  {
    v31 = v30;
    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    CFArrayAppendValue(*(DerivedStorage + 264), v31);
    CFRelease(v31);
    v20 = 0;
    goto LABEL_53;
  }

  carEndpoint_setupAudioStream_cold_4();
  v20 = 4294950575;
LABEL_57:
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setupAudioStream(FigEndpointRef, const CFStringRef, const CFStringRef, CFMutableDictionaryRef)", 33554522, "[%{ptr}] Error %d in creating stream %@/%@\n", a1, v20, a2, v33);
  }

LABEL_53:
  if (v21)
  {
    CFRelease(v21);
  }

  return v20;
}

uint64_t carEndpoint_addEndpointStreamNotificationListeners(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t APEndpointCarPlayStreamInfoCreate(const void *a1, const void *a2, int a3, int a4, const void *a5)
{
  if (APEndpointCarPlayStreamInfoGetTypeID_initOnce != -1)
  {
    APEndpointCarPlayStreamInfoCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = -1;
    *(Instance + 16) = CFRetain(a1);
    *(v11 + 24) = CFRetain(a2);
    *(v11 + 48) = a3;
    *(v11 + 52) = a4;
    *(v11 + 72) = CFRetain(a5);
  }

  else
  {
    APEndpointCarPlayStreamInfoCreate_cold_2();
  }

  return v11;
}

void carEndpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  Int64 = -71850;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v10 = *(DerivedStorage + 168);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __carEndpoint_handleStreamFailed_block_invoke;
  v11[3] = &__block_descriptor_tmp_789;
  v11[4] = DerivedStorage;
  v11[5] = a4;
  v11[6] = a2;
  v12 = Int64;
  dispatch_async(v10, v11);
}

void __carEndpoint_handleStreamFailed_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 264))
  {
    CFArrayGetCount(*(v2 + 264));
    CFArrayApplyBlock();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

void __carEndpoint_handleStreamFailed_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRetain(v3);
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(*(a1 + 48) + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __carEndpoint_handleStreamFailed_block_invoke_3;
    v6[3] = &__block_descriptor_tmp_787;
    v6[4] = v4;
    v7 = *(a1 + 56);
    dispatch_async(v5, v6);
  }
}

void __carEndpoint_handleStreamFailed_block_invoke_3(uint64_t a1)
{
  carEndpoint_updateErrorStatusIfNotSet(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void carEndpoint_powerLogDisplay(const void *a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  value = 0;
  v22 = 0;
  v6 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v8 = CFGetAllocator(a1);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10 || (v10(CMBaseObject, *MEMORY[0x277CC1878], v8, &value), !value))
    {
LABEL_22:
      CFRelease(MutableCopy);
      return;
    }

    APSEventRecorderGetEventTime();
    valuePtr = v11;
    v12 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(MutableCopy, @"SessionID", v12);
      v14 = MEMORY[0x277CBED28];
      if (!a3)
      {
        v14 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(MutableCopy, @"Resume", *v14);
      CFDictionarySetValue(MutableCopy, @"ScreenUUID", value);
      v15 = *(a2 + 32);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      Count = CFArrayGetCount(*(DerivedStorage + 280));
      if (Count < 1)
      {
        goto LABEL_17;
      }

      v18 = Count;
      v19 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 280), v19);
        if (v15 == v19)
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_17;
        }
      }

      if (FigCFDictionaryGetValue())
      {
        LOWORD(v22) = CFDictionaryGetInt64();
        HIWORD(v22) = CFDictionaryGetInt64();
        v20 = CFNumberCreate(v6, kCFNumberSInt16Type, &v22);
        v21 = CFNumberCreate(v6, kCFNumberSInt16Type, &v22 + 2);
        CFDictionarySetValue(MutableCopy, @"Width", v20);
        CFDictionarySetValue(MutableCopy, @"Height", v21);
        PLLogRegisteredEvent();
        if (v21)
        {
          CFRelease(v21);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      else
      {
LABEL_17:
        PLLogRegisteredEvent();
      }

      CFRelease(v13);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (MutableCopy)
  {
    goto LABEL_22;
  }
}

uint64_t __APEndpointCarPlayStreamInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APEndpointCarPlayStreamInfoGetTypeID_typeID = result;
  return result;
}

void _APEndpointCarPlayStreamInfoFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }
}

void __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  v17 = 0;
  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_1();
    return;
  }

  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  if (!CGRectContainsRect(*(a1 + 40), v18[1]))
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_2();
    return;
  }

  if (v18[1].origin.x)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_3();
    return;
  }

  if (v18[1].origin.y)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_4();
    return;
  }

  if (v18[1].size.width)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_5();
    return;
  }

  if (v18[1].size.height)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_6();
    return;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v5 = CFGetTypeID(TypedValue);
    if (v5 != CFDictionaryGetTypeID())
    {
      __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_7();
      return;
    }

    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    if (!CGRectContainsRect(v18[1], v18[0]))
    {
      __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_8();
      return;
    }
  }

  else
  {
    v18[0] = v18[1];
  }

  v6 = CFGetAllocator(*(a1 + 72));
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    carEndpoint_convertNonSquarePixelRectToSquarePixelRect(&v16, v18[1].origin.x, v18[1].origin.y, v18[1].size.width, v18[1].size.height, *(a1 + 80), *(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 120) / *(a1 + 152));
    v20.origin = v16;
    v20.size = v17;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v20);
    CFDictionarySetValue(v8, *MEMORY[0x277CC16F8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    Int64 = CFDictionaryGetInt64();
    v11 = *MEMORY[0x277CBED28];
    v12 = *MEMORY[0x277CBED10];
    if (Int64)
    {
      v13 = *MEMORY[0x277CBED28];
    }

    else
    {
      v13 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v8, *MEMORY[0x277CC1708], v13);
    if (CFDictionaryGetInt64())
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    CFDictionarySetValue(v8, *MEMORY[0x277CC1700], v14);
    CFDictionaryGetInt64();
    CFDictionarySetInt64();
    carEndpoint_convertNonSquarePixelRectToSquarePixelRect(&v16, v18[0].origin.x, v18[0].origin.y, v18[0].size.width, v18[0].size.height, *(a1 + 80), *(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 120) / *(a1 + 152));
    v21.origin = v16;
    v21.size = v17;
    v15 = CGRectCreateDictionaryRepresentation(v21);
    CFDictionarySetValue(v8, *MEMORY[0x277CC16E8], v15);
    CFRelease(v15);
    CFArrayAppendValue(*(a1 + 160), v8);
    CFRelease(v8);
  }

  else
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_9();
  }
}

uint64_t carEndpoint_convertNonSquarePixelRectToSquarePixelRect(float64x2_t *a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = *MEMORY[0x277CBF3A8];
  if (a4 <= 0.0)
  {
    return carEndpoint_convertNonSquarePixelRectToSquarePixelRect_cold_2();
  }

  if (a5 <= 0.0)
  {
    return carEndpoint_convertNonSquarePixelRectToSquarePixelRect_cold_1();
  }

  result = FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
  if (a1)
  {
    v12.f64[0] = a2;
    v12.f64[1] = a3;
    v13.f64[0] = a4;
    v13.f64[1] = a5;
    v14 = vmovn_s64(vcvtq_s64_f64(vdivq_f64(vmulq_f64(v12, v20), v13)));
    v15.i64[0] = v14.i32[0];
    v15.i64[1] = v14.i32[1];
    *a1 = vcvtq_f64_s64(v15);
    a1[1] = v20;
  }

  return result;
}

void carEndpoint_handleJarvisParametersChangedNotification(const void *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v52 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleJarvisParametersChangedNotification_block_invoke;
  block[3] = &unk_27849F088;
  block[5] = &v44;
  block[6] = DerivedStorage;
  block[4] = &v48;
  dispatch_sync(v3, block);
  if (*(v49 + 24))
  {
    v7 = APSGetFBOPropertyInt64();
    IntWithDefault = APSSettingsGetIntWithDefault();
    v11 = IntWithDefault;
    if (IntWithDefault != 5000 && gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay != -1 || (IntWithDefault = _LogCategory_Initialize(), IntWithDefault))
      {
        carEndpoint_handleJarvisParametersChangedNotification_cold_1(IntWithDefault, v9, v10);
      }
    }

    v12 = v7 != 0;
    HasDeviceUnlockedSinceBoot = APCarPlayHasDeviceUnlockedSinceBoot();
    HasSpringboardStarted = APCarPlayHasSpringboardStarted();
    IsSiriSwitchOn = APCarPlayIsSiriSwitchOn();
    v16 = IsSiriSwitchOn;
    v17 = 0xFFFFFFFFLL;
    if (HasDeviceUnlockedSinceBoot)
    {
      if (HasSpringboardStarted)
      {
        if (IsSiriSwitchOn)
        {
          if (v7)
          {
            v17 = 1;
            v18 = APSSettingsGetIntWithDefault();
            if (v18 != 1)
            {
              v21 = v18;
              if (gLogCategory_APEndpointCarPlay > 50)
              {
                v25 = 0;
                goto LABEL_31;
              }

              if (gLogCategory_APEndpointCarPlay != -1 || (v18 = _LogCategory_Initialize(), v18))
              {
                carEndpoint_handleJarvisParametersChangedNotification_cold_2(v18, v19, v20);
              }

              v17 = v21;
            }
          }
        }
      }
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleJarvisParametersChangedNotification(FigEndpointRef)", 33554482, "[%{ptr}] EnhancedSiri voice trigger mode derived as %d, based on deviceUnlocked: %d, springBoardStart %d, siriSwitch %d, HUSupportsVoice %d and overrides", a1, v17, HasDeviceUnlockedSinceBoot, HasSpringboardStarted, v16, v12);
    }

    if (v17 == 1)
    {
      if (APSSettingsGetInt64())
      {
        APSSettingsGetCString();
        if (v52)
        {
          APSLogErrorAt();
          goto LABEL_35;
        }

        v22 = CFGetAllocator(a1);
        v25 = CFStringCreateWithCString(v22, cStr, 0x8000100u);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          carEndpoint_handleJarvisParametersChangedNotification_cold_3(v25, v23, v24);
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        v54 = 0;
        *cStr = 0;
        v53 = 0;
        v28 = CFGetAllocator(a1);
        APEndpointDescriptionGetCMBaseObject();
        v30 = v29;
        VTable = CMBaseObjectGetVTable();
        v35 = *(VTable + 8);
        JarvisLanguageFromList = VTable + 8;
        v36 = *(v35 + 48);
        if (v36)
        {
          JarvisLanguageFromList = v36(v30, @"VoiceModelLanguages", v28, cStr);
          if (!JarvisLanguageFromList)
          {
            if (*cStr)
            {
              v37 = CFGetAllocator(a1);
              APEndpointDescriptionGetCMBaseObject();
              v39 = v38;
              v40 = CMBaseObjectGetVTable();
              v41 = *(v40 + 8);
              JarvisLanguageFromList = v40 + 8;
              v42 = *(v41 + 48);
              if (v42)
              {
                JarvisLanguageFromList = v42(v39, @"CurrentVoiceModelLanguage", v37, &v54);
                if (!JarvisLanguageFromList)
                {
                  v32 = v54;
                  if (v54)
                  {
                    JarvisLanguageFromList = APCarPlayGetJarvisLanguageFromList(*cStr, v54, &v53);
                    if (JarvisLanguageFromList)
                    {
                      JarvisLanguageFromList = carEndpoint_handleJarvisParametersChangedNotification_cold_4(JarvisLanguageFromList);
                    }
                  }
                }
              }
            }
          }
        }

        v25 = v53;
        if (!v53)
        {
          if (gLogCategory_APEndpointCarPlay <= 50)
          {
            if (gLogCategory_APEndpointCarPlay != -1 || (JarvisLanguageFromList = _LogCategory_Initialize(), JarvisLanguageFromList))
            {
              carEndpoint_handleJarvisParametersChangedNotification_cold_5(JarvisLanguageFromList, v32, v33);
            }
          }

          v25 = 0;
          LODWORD(v21) = 2;
          goto LABEL_31;
        }
      }

      LODWORD(v21) = 1;
    }

    else
    {
      v25 = 0;
      LODWORD(v21) = v17;
    }

LABEL_31:
    carEndpoint_setParametersForJarvis(a1, 0, v21, v11, v25);
    v26 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v26, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    carEndpoint_postNotification(a1, *MEMORY[0x277CC0998], *(v45 + 6), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_35;
  }

  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      carEndpoint_handleJarvisParametersChangedNotification_cold_6(v4, v5, v6);
    }
  }

LABEL_35:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

void *__carEndpoint_handleJarvisParametersChangedNotification_block_invoke(void *result)
{
  v1 = result[6];
  if (*(v1 + 176))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 177) != 0;
  }

  *(*(result[4] + 8) + 24) = v2;
  *(*(result[5] + 8) + 24) = *(result[6] + 224);
  return result;
}

void __carEndpoint_registerForHTTPProxy_block_invoke(uint64_t a1, const void *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_registerForHTTPProxy_block_invoke_2;
    block[3] = &unk_27849F0B0;
    block[5] = &v13;
    block[6] = v4;
    block[4] = &v17;
    dispatch_sync(v5, block);
    if (*(v14 + 24))
    {
      v6 = *(v18 + 6);
      v7 = *(a1 + 48);
      if (v6 == v7)
      {
        v9 = *(a1 + 32);
        v8 = a1 + 32;
        v10 = carEndpoint_sendCommandInternal(v9, @"setProxyParameters", a2, 1, 0);
        if (v10)
        {
          __carEndpoint_registerForHTTPProxy_block_invoke_cold_1(v8, v10, v11);
        }
      }

      else if (gLogCategory_APEndpointCarPlay <= 60)
      {
        if (gLogCategory_APEndpointCarPlay == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_6;
          }

          v6 = *(v18 + 6);
          v7 = *(a1 + 48);
        }

        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)_block_invoke", 33554492, "[%{ptr}] Most likely stale callback, currentActivationSeed %d vs captured activationSeed %d", *(a1 + 32), v6, v7);
      }
    }

    else
    {
      __carEndpoint_registerForHTTPProxy_block_invoke_cold_2();
    }
  }

  else
  {
    __carEndpoint_registerForHTTPProxy_block_invoke_cold_3();
  }

LABEL_6:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void *__carEndpoint_registerForHTTPProxy_block_invoke_2(void *result)
{
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 224);
  *(*(result[5] + 8) + 24) = *(v1 + 177);
  return result;
}

void carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  CFDictionarySetInt64();

  carEndpoint_addIntervalToPerformanceDictionaryAndLog(TimeBetweenEventsInMilliSecondRecursive, a5, a6, a7);
}

void carEndpoint_addEventToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  CFDictionarySetDouble();
  if (a5)
  {
    v8 = EventTimeRecursive ? APSEventRecorderCreateStringWithEventRecorderTime() : CFStringCreateWithCString(*MEMORY[0x277CBECE8], "n/a", 0x8000100u);
    v9 = v8;
    CPrintF(carEndpoint_logToMutableString, a5, "| %-40@: %@\n", a3, v8);
    if (v9)
    {

      CFRelease(v9);
    }
  }
}

void carEndpoint_addIntervalToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFDictionarySetInt64();
  if (a4)
  {
    CPrintF(carEndpoint_logToMutableString, a4, "| %-40@: %llu ms\n", a2, a1);
  }
}

uint64_t carEndpoint_logToMutableString(const char *a1, unsigned int a2, uint64_t a3)
{
  LODWORD(result) = CFStringAppendF(a3, "%.*s", a2, a1);
  if (result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t carEndpoint_addSignPostTimeToDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    v7 = v6;
    result = CFDictionarySetDouble();
    if (gLogCategory_APEndpointCarPlay <= 30)
    {
      if (gLogCategory_APEndpointCarPlay != -1)
      {
        return LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_addSignPostTimeToDictionary(APSEventRecorderRef, APSEventRecorderEvent, CFStringRef, CFMutableDictionaryRef)", 33554462, "AddSignPostTimeToDictionary %@: %lf", a3, v7);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_addSignPostTimeToDictionary(APSEventRecorderRef, APSEventRecorderEvent, CFStringRef, CFMutableDictionaryRef)", 33554462, "AddSignPostTimeToDictionary %@: %lf", a3, v7);
      }
    }
  }

  return result;
}

uint64_t __carEndpoint_deactivateInternal_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  *(v1 + 177) = 0;
  return result;
}

double __carEndpoint_deactivateInternal_block_invoke_2(void *a1)
{
  *(*(a1[4] + 8) + 24) = carEndpoint_getStreamInfoForType(a1[10], *MEMORY[0x277CC1968]) != 0;
  *(*(a1[5] + 8) + 24) = *(a1[11] + 240);
  *(a1[11] + 240) = 0;
  v2 = a1[11];
  *(v2 + 248) = 0;
  v3 = *(v2 + 256);
  if (v3)
  {
    CFRelease(v3);
    *(a1[11] + 256) = 0;
    v2 = a1[11];
  }

  *(*(a1[6] + 8) + 24) = *(v2 + 488);
  *(a1[11] + 488) = 0;
  *(*(a1[7] + 8) + 24) = *(a1[11] + 264);
  *(a1[11] + 264) = 0;
  v4 = a1[11];
  v5 = v4[37];
  if (v5)
  {
    CFRelease(v5);
    *(a1[11] + 296) = 0;
    v4 = a1[11];
  }

  v6 = v4[58];
  if (v6)
  {
    CFRelease(v6);
    *(a1[11] + 464) = 0;
    v4 = a1[11];
  }

  v7 = v4[60];
  if (v7)
  {
    CFRelease(v7);
    *(a1[11] + 480) = 0;
  }

  v8 = a1[10];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 472);
  if (v10)
  {
    CFDictionaryApplyFunction(v10, carEndpoint_unsubscribeAndInvalidateRCS, v8);
    CFDictionaryRemoveAllValues(*(DerivedStorage + 472));
  }

  v11 = a1[11];
  v12 = v11[59];
  if (v12)
  {
    CFRelease(v12);
    *(a1[11] + 472) = 0;
    v11 = a1[11];
  }

  if (v11[62])
  {
    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v14 = CMBaseObject;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }
    }

    v11 = a1[11];
    v16 = v11[62];
    if (v16)
    {
      CFRelease(v16);
      *(a1[11] + 496) = 0;
      v11 = a1[11];
    }
  }

  if (v11[63])
  {
    APSPowerAssertionRelease();
    v11 = a1[11];
    v17 = v11[63];
    if (v17)
    {
      CFRelease(v17);
      *(a1[11] + 504) = 0;
      v11 = a1[11];
    }
  }

  *(*(a1[8] + 8) + 24) = v11[39];
  *(a1[11] + 312) = 0;
  *(*(a1[9] + 8) + 24) = *(a1[11] + 304);
  *(a1[11] + 304) = 0;
  v18 = a1[10];
  v19 = a1[11];
  *(v19 + 328) = 0;
  *(v19 + 376) = 0;
  carEndpoint_deRegisterFromGlobalNotification(v18, (v19 + 344));
  v20 = a1[11];
  if (*(v20 + 57))
  {
    carEndpoint_deRegisterFromGlobalNotification(a1[10], (v20 + 424));
    carEndpoint_deRegisterFromGlobalNotification(a1[10], (a1[11] + 428));
    carEndpoint_deRegisterFromGlobalNotification(a1[10], (a1[11] + 432));
    carEndpoint_deRegisterFromGlobalNotification(a1[10], (a1[11] + 436));
    carEndpoint_deRegisterFromGlobalNotification(a1[10], (a1[11] + 440));
    v20 = a1[11];
  }

  v21 = *(v20 + 416);
  if (v21)
  {
    CFRelease(v21);
    *(a1[11] + 416) = 0;
    v20 = a1[11];
  }

  v22 = (v20 + 380);
  result = 0.0;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

void carEndpoint_deRegisterFromGlobalNotification(const void *a1, int *a2)
{
  if (*a2 != -1)
  {
    notify_cancel(*a2);
    *a2 = -1;
    CFRelease(a1);
    *a2 = -1;
  }
}

void __carEndpoint_deactivateInternal_block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 520))
  {
    FigStarkModeControllerSetExecuteChangeHandler();
    v2 = *(*(a1 + 32) + 520);
    if (v2)
    {
      CFRelease(v2);
      *(*(a1 + 32) + 520) = 0;
    }
  }
}

uint64_t __carEndpoint_deactivateInternal_block_invoke_4(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(CMBaseObjectGetVTable() + 8);
  if (*v4 >= 2uLL)
  {
    v5 = v4[8];
    if (v5)
    {
      v5(CMBaseObject);
    }
  }

  v6 = *(a2 + 16);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 32);
  if (v10)
  {

    return v10(v6);
  }

  return result;
}

uint64_t __carEndpoint_deactivateInternal_block_invoke_5(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_deactivateInternal(FigEndpointRef, Boolean, CFStringRef, uint32_t *)_block_invoke_5", 33554482, "[%{ptr}] Invalidating Playback Session [%{ptr}]...\n", *(a1 + 32), a2);
  }

  v4 = *(a1 + 32);

  return carEndpoint_handlePlaybackSessionRemove(v4, a2, 0);
}

uint64_t carEndpoint_handlePlaybackSessionRemove(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (a3)
  {
    v6 = *(DerivedStorage + 488);
    if (v6)
    {
      CFSetRemoveValue(v6, a2);
    }
  }

  result = FigEndpointPlaybackSessionGetCMBaseObject();
  if (result)
  {
    v8 = result;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 8);
    result = VTable + 8;
    v11 = *(v10 + 24);
    if (v11)
    {

      return v11(v8);
    }
  }

  return result;
}

CFTypeRef __carEndpoint_postSessionStatistics_block_invoke(void *a1, double a2)
{
  LODWORD(a2) = *(a1[8] + 460);
  *(*(a1[4] + 8) + 24) = *&a2 / 1000.0;
  *(*(a1[5] + 8) + 24) = APSEventRecorderGetTimeBetweenEventsInMilliSecond() / 0x3E8;
  if (*(a1[8] + 40))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(*(*(a1[6] + 8) + 24), @"APCarPlay_isWireless", *v3);
  CFDictionarySetInt64();
  result = *(a1[8] + 264);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void __carEndpoint_postSessionStatistics_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  cf = 0;
  v4 = CFGetAllocator(*(a1 + 72));
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x277CC1878], v4, &cf);
  }

  v7 = CFGetAllocator(*(a1 + 72));
  v8 = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x277CC18B0], v7, &v14);
  }

  if (*(a2 + 56) == 1 && CFStringCompare(*(a2 + 24), @"StreamInfo_Screen", 0) == kCFCompareEqualTo && (*(a2 + 32) & 0x8000000000000000) == 0)
  {
    carEndpoint_powerLogDisplay(*(a1 + 72), a2, 0);
  }

  if (!FigCFEqual())
  {
    carEndpoint_updateStreamResumedTimeIfNeeded(*(a1 + 72), a2, 268304386);
    v11 = *(a2 + 60);
    HIDWORD(v12) = 1079574528;
    LODWORD(v12) = *(*(*(a1 + 32) + 8) + 24);
    v13 = v11 * 100.0 / v12;
    if (gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v11 = *(a2 + 60);
      }

      AppendPrintF(*(*(a1 + 40) + 8) + 24, "\tTotal Session Time For %@ (%@): %02u:%02u:%02u (%3.2f%% of Total Session Time)\n", cf, v14, v11 / 0xE10uLL, v11 / 0x3C - 60 * (((143165577 * (v11 / 0x3C)) >> 32) >> 1), v11 % 0x3C, v13);
    }

LABEL_27:
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      CFDictionarySetDouble();
    }
  }

  if (FigCFEqual())
  {
    FigCFDictionarySetDouble();
    if (*(*(a1 + 80) + 376))
    {
      CFDictionarySetInt64();
    }
  }

  else if (FigCFEqual())
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFStringAppendFormat(Mutable, 0, @"AP_SIGNPOST_ALTERNATESCREEN_[%d]_DISPLAYING", *(a2 + 32));
    FigCFDictionarySetDouble();
    if (*(*(a1 + 80) + 376))
    {
      *(*(*(a1 + 64) + 8) + 24) += *(a2 + 80);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t __carEndpoint_postSessionStatistics_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 40) + 480);
  if (result)
  {
    return CFDictionaryApplyBlock();
  }

  return result;
}

uint64_t carEndpoint_unsubscribeAndInvalidateRCS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_unsubscribeAndInvalidateRCS(const void *, const void *, void *)", 33554482, "[%{ptr}] Invalidating Remote Control Session entry with ID: %@ from APEndpoint... \n", a3, a1);
  }

  result = FigEndpointRemoteControlSessionGetCMBaseObject();
  if (result)
  {
    v6 = result;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 24);
    if (v9)
    {

      return v9(v6);
    }
  }

  return result;
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke(uint64_t a1)
{
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2800000000;
  v20[3] = 0;
  v20[4] = 0;
  v2 = *(a1 + 40);
  if (*(v2 + 176))
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_1();
LABEL_32:
    v6 = 0;
    Mutable = 0;
    goto LABEL_20;
  }

  v3 = *(v2 + 488);
  if (!v3)
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_5();
    goto LABEL_32;
  }

  Count = CFSetGetCount(v3);
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%d", *(*(a1 + 40) + 16), (Count + 1));
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 528);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_createPlaybackSessionInternal_block_invoke_2;
    block[3] = &unk_27849F400;
    block[4] = v20;
    block[5] = v8;
    dispatch_sync(v9, block);
    APSEventRecorderSetTimeInDictionary();
    v10 = *(*(a1 + 40) + 256);
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"NetworkClock", v10);
    }

    APEndpointDescriptionGetCMBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"ExternalPlaybackCapabilities", v5, &v21);
    }

    FigCFDictionaryGetBooleanIfPresent();
    v14 = *(*(a1 + 40) + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      LODWORD(v15) = v15(v14, 35) != 0;
    }

    if (v22)
    {
      LODWORD(v15) = 1;
    }

    if (v15)
    {
      v16 = MEMORY[0x277CBED28];
    }

    else
    {
      v16 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"SupportsTLS_PSK", *v16);
    *(*(*(a1 + 32) + 8) + 24) = APEndpointPlaybackSessionRemoteControlCreate(v6, *(*(a1 + 40) + 240), *(*(a1 + 40) + 32), Mutable, &v23);
    v18 = *(*(*(a1 + 32) + 8) + 24);
    if (v18)
    {
      __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_2(v18);
    }

    else
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_3(a1, &v23, v17);
      }

      CFSetSetValue(*(*(a1 + 40) + 488), v23);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      **(a1 + 56) = v23;
      v23 = 0;
    }
  }

  else
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_4();
  }

LABEL_20:
  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(v20, 8);
}