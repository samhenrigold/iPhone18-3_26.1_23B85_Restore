uint64_t CMPhotoDecompressionSupportedForContainerAndCodec(int a1, int a2, uint64_t a3, BOOL *a4)
{
  if (!a4)
  {
    return 4294950306;
  }

  if (a3)
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, vars0);
LABEL_29:
    v7 = 0;
  }

  else
  {
    result = 0;
    v7 = 1;
    switch(a1)
    {
      case 0:
        result = 0;
        v10 = a2 == 1635148593 || a2 == 1752589105 || a2 == 1785750887;
        if (a2 == 1936484717)
        {
          v10 = 1;
        }

        v7 = a2 == 1635135537 || v10;
        break;
      case 1:
        result = 0;
        v7 = a2 == 1785750887;
        break;
      case 2:
        result = 0;
        v7 = (a2 == 1786276896 || a2 == 1786276963) && MEMORY[0x1EEE83A10] != 0;
        break;
      case 3:
        break;
      default:
        result = 0;
        goto LABEL_29;
    }
  }

  *a4 = v7;
  return result;
}

uint64_t CMPhotoCompressionSupportedForContainerAndCodec(int a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (!a4)
  {
    return 4294950306;
  }

  if (a1 == 1)
  {
    v5 = a2 == 1785750887;
  }

  else
  {
    if (a1)
    {
      goto LABEL_7;
    }

    if (a2 == 1635135537)
    {
      v5 = CMPhotoSupportsAV1Encode();
      goto LABEL_10;
    }

    if (a2 != 1752589105)
    {
LABEL_7:
      v5 = 0;
    }

    else
    {
      v5 = CMPhotoSupportsHEVCEncode();
    }
  }

LABEL_10:
  v6 = 0;
  *a4 = v5;
  return v6;
}

uint64_t RegisterCMPhotoDecompressionSession()
{
  sCMPhotoDecompressionSessionClass = 0;
  *algn_1ED6FA948 = "CMPhotoDecompressionSession";
  qword_1ED6FA950 = CMPhotoDecompressionSessionClass_Init;
  unk_1ED6FA958 = 0;
  qword_1ED6FA968 = 0;
  unk_1ED6FA970 = 0;
  qword_1ED6FA960 = CMPhotoDecompressionSessionClass_Finalize;
  qword_1ED6FA978 = CMPhotoDecompressionSessionClass_CopyFormattingDesc;
  qword_1ED6FA980 = CMPhotoDecompressionSession_CopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sCMPhotoDecompressionSessionTypeID = result;
  return result;
}

uint64_t _once_CMPhotoGetCPUCount()
{
  v2 = 1;
  v1 = 4;
  result = sysctlbyname("hw.logicalcpu", &v2, &v1, 0, 0);
  sCPUCount = v2;
  return result;
}

uint64_t CMPhotoDecompressionSessionCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  if (!a3)
  {
    return 4294950306;
  }

  FigKTraceInit();
  pthread_once(&CMPhotoDecompressionSessionGetTypeID_onceToken, RegisterCMPhotoDecompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v7 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 272) = 0;
  *(Instance + 280) = 0;
  *(Instance + 288) = 0;
  *(Instance + 296) = 0;
  *(Instance + 320) = 0;
  *(Instance + 24) = 1;
  CPUCount = CMPhotoGetCPUCount();
  if (a2)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  v7[4] = Mutable;
  if (!Mutable)
  {
    goto LABEL_22;
  }

  AsyncQueueElements = _createAsyncQueueElements(a1, (v7 + 18), "com.apple.CMPhoto.sw.feederQueue", "com.apple.CMPhoto.sw.workerQueue", CPUCount, 0);
  if (AsyncQueueElements || (AsyncQueueElements = _createAsyncQueueElements(a1, (v7 + 24), "com.apple.CMPhoto.limitedConcurrency.feederQueue", "com.apple.CMPhoto.limitedConcurrency.workerQueue", 1u, 3), AsyncQueueElements))
  {
    v19 = AsyncQueueElements;
    goto LABEL_26;
  }

  v11 = dispatch_queue_create("com.apple.CMPhoto.hwQueueSynchronizer", 0);
  v7[5] = v11;
  if (!v11)
  {
LABEL_22:
    v19 = 4294950305;
LABEL_26:
    CFRelease(v7);
    return v19;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"SurfacePool");
    if (Value)
    {
      v13 = Value;
      v14 = CFGetTypeID(Value);
      if (v14 == CMPhotoSurfacePoolGetTypeID() || v13 == @"SurfacePoolOneShot")
      {
        v7[34] = CFRetain(v13);
      }
    }

    v16 = CFDictionaryGetValue(a2, @"Scaler");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CMPhotoScaleAndRotateSessionGetTypeID())
      {
        v7[35] = CFRetain(v17);
      }
    }
  }

  v19 = 0;
  *a3 = v7;
  return v19;
}

double CMPhotoDecompressionSessionClass_Init(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t CMPhotoDecompressionContainerCreate(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, unsigned int *a5, uint64_t *a6)
{
  cf = 0;
  v61 = 0;
  if (!a6)
  {
    return 4294950306;
  }

  v6 = a6;
  pthread_once(&CMPhotoDecompressionContainerGetTypeID_onceToken, RegisterCMPhotoDecompressionContainer);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v37 = 4294950305;
    goto LABEL_113;
  }

  os_unfair_lock_lock((a4 + 16));
  v12 = *(a4 + 320) + 1;
  *(a4 + 320) = v12;
  *(Instance + 504) = v12;
  os_unfair_lock_unlock((a4 + 16));
  *(Instance + 16) = CFRetain(a4);
  if (qword_1ED6FA668 != -1)
  {
    dispatch_once(&qword_1ED6FA668, &__block_literal_global_13);
  }

  if (qword_1ED6FA660)
  {
    *(Instance + 600) = CFRetain(qword_1ED6FA660);
  }

  v13 = FigCFDictionaryGetValue();
  if (v13)
  {
    v38 = v13;
    v17 = _sanityCheckAllowOptionsValue(v13);
    if (v17)
    {
      goto LABEL_65;
    }

    *(Instance + 608) = CFRetain(v38);
  }

  v14 = FigCFDictionaryGetValue();
  if (v14)
  {
    v39 = v14;
    v17 = _sanityCheckAllowOptionsValue(v14);
    if (v17)
    {
      goto LABEL_65;
    }

    *(Instance + 616) = CFRetain(v39);
  }

  *(Instance + 28) = 0;
  if (a3)
  {
    *(Instance + 25) = CMPhotoCFDictionaryGetBooleanIfPresent();
    *(Instance + 27) = CMPhotoCFDictionaryGetBooleanIfPresent();
    v15 = CFDictionaryGetValue(a3, @"SequenceInfo");
    CMPhotoCFDictionaryGetBooleanIfPresent();
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (*(Instance + 26))
  {
    *(Instance + 24) = 0;
  }

  v60 = a5;
  if (v16)
  {
    v17 = CMPhotoByteStreamCreateFromSource(a2, 0, 0, 0, &cf, 0);
    if (v17)
    {
      goto LABEL_65;
    }

    v17 = CMPhotoImageContainerFormatDetectFromBytestream(cf, 1, &v61);
    if (v17)
    {
      goto LABEL_65;
    }

    ValueAtIndex = v61;
  }

  else
  {
    ValueAtIndex = 0;
    v61 = 0;
  }

  isContainerAllowedByDictionary = _isContainerAllowedByDictionary(*(Instance + 600), ValueAtIndex, 0, 1);
  Mutable = _isContainerAllowedByDictionary(*(Instance + 608), ValueAtIndex, 0, 0);
  v21 = _isContainerAllowedByDictionary(*(Instance + 616), ValueAtIndex, 1, 0);
  if (!Mutable || !isContainerAllowedByDictionary || !v21)
  {
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_65:
    v37 = v17;
    goto LABEL_113;
  }

  v22 = v61;
  v59 = v6;
  switch(v61)
  {
    case 0u:
      if (v16)
      {
        v23 = CMPhotoDecompressionContainerVTableHEIF;
      }

      else
      {
        v23 = CMPhotoDecompressionContainerVTableHEICS;
      }

      break;
    case 1u:
      v23 = CMPhotoDecompressionContainerVTableJFIF;
      break;
    case 2u:
      v23 = &CMPhotoDecompressionContainerVTableJXL;
      break;
    case 3u:
      v23 = CMPhotoDecompressionContainerVTableDICOM;
      break;
    default:
      goto LABEL_64;
  }

  *(Instance + 32) = v23;
  *(Instance + 544) = v22;
  if (!*v23)
  {
    v37 = 4294950302;
    goto LABEL_113;
  }

  v17 = (*v23)(Instance, a3, cf, a2);
  if (v17)
  {
    goto LABEL_65;
  }

  v24 = CFGetAllocator(Instance);
  v67[0] = 0;
  v65 = 0;
  v66 = 0;
  v25 = *(*(Instance + 32) + 24);
  if (!v25)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_17_8();
    v37 = 4294950302;
LABEL_102:
    v6 = v59;
    goto LABEL_103;
  }

  a3 = v24;
  v26 = v25(Instance, &v65);
  if (v26)
  {
    goto LABEL_128;
  }

  if (!v65)
  {
    v40 = 0;
    OUTLINED_FUNCTION_17_8();
LABEL_101:
    v37 = 0;
    *(Instance + 552) = Mutable;
    *(Instance + 560) = v44;
    *(Instance + 568) = v43;
    *(Instance + 576) = v40;
    *(Instance + 584) = v41;
    *(Instance + 592) = v42;
    OUTLINED_FUNCTION_27_4();
    Mutable = 0;
    goto LABEL_102;
  }

  v27 = *(Instance + 32);
  v28 = *(v27 + 328);
  if (v28)
  {
    v28(Instance, 1, v67);
    v27 = *(Instance + 32);
  }

  v29 = *(v27 + 32);
  if (v29)
  {
    v26 = v29(Instance, &v66);
    if (v26)
    {
LABEL_128:
      v37 = v26;
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_17_8();
      goto LABEL_102;
    }
  }

  if (!v67[0] || !CFArrayGetCount(v67[0]))
  {
    OUTLINED_FUNCTION_17_8();
    v40 = v66;
    v42 = v41;
    goto LABEL_101;
  }

  a2 = malloc_type_calloc(v65, 1uLL, 0x100004077774924uLL);
  if (!a2)
  {
    OUTLINED_FUNCTION_27_4();
    v16 = 0;
    Mutable = 0;
    goto LABEL_131;
  }

  Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_27_4();
    v16 = 0;
    goto LABEL_131;
  }

  v16 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], 0);
  if (!v16 || (ValueAtIndex = 0x100004000313F17, (v30 = malloc_type_calloc(v65, 8uLL, 0x100004000313F17uLL)) == 0))
  {
    OUTLINED_FUNCTION_27_4();
LABEL_131:
    v37 = 4294950305;
    goto LABEL_102;
  }

  v58 = v30;
  v57 = malloc_type_calloc(v65, 8uLL, 0x100004000313F17uLL);
  if (!v57)
  {
    ValueAtIndex = 0;
    v37 = 4294950305;
    a3 = v58;
    goto LABEL_103;
  }

  v31 = 0;
  a3 = 0;
  while (1)
  {
    Count = v67[0];
    if (v67[0])
    {
      Count = CFArrayGetCount(v67[0]);
    }

    if (v31 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v67[0], v31);
    v33 = CFDictionaryGetValue(ValueAtIndex, @"GroupPictureIndexList");
    if (v33)
    {
      v34 = v33;
      if (CFArrayGetCount(v33) >= 2)
      {
        if (CFArrayGetCount(v34) >= 1)
        {
          v35 = 0;
          while (1)
          {
            value[0] = 0;
            if (!CMPhotoCFArrayGetSizeAtIndex(v34, v35, value) || value[0] >= v65)
            {
              break;
            }

            if (value[0] == v66)
            {
              v36 = ValueAtIndex;
            }

            else
            {
              v36 = 0;
            }

            if (!a3)
            {
              a3 = v36;
            }

            *(a2 + value[0]) = 1;
            if (++v35 >= CFArrayGetCount(v34))
            {
              goto LABEL_60;
            }
          }

LABEL_119:
          v37 = 4294950194;
          goto LABEL_120;
        }

LABEL_60:
        LODWORD(value[0]) = 0;
        cmpweak_kFigPictureCollection_Group_LowestMemberIDKey();
        if (!CMPhotoCFDictionaryGetInt32IfPresent())
        {
          goto LABEL_119;
        }

        CFArrayAppendValue(Mutable, ValueAtIndex);
        CFDictionaryAddValue(v16, ValueAtIndex, LODWORD(value[0]));
      }
    }

    ++v31;
  }

  v45 = v65;
  if (v65 >= 1)
  {
    ValueAtIndex = 0;
    do
    {
      if (!*(a2 + ValueAtIndex))
      {
        LODWORD(value[0]) = 0;
        v46 = *(*(Instance + 32) + 48);
        if (!v46)
        {
          v37 = 4294950302;
          goto LABEL_121;
        }

        v47 = v46(Instance, ValueAtIndex, value);
        if (v47)
        {
          v37 = v47;
          goto LABEL_121;
        }

        Size = CMPhotoCFNumberCreateSize(ValueAtIndex);
        if (!Size)
        {
          v37 = 4294950305;
          goto LABEL_121;
        }

        v49 = Size;
        CFArrayAppendValue(Mutable, Size);
        CFRelease(v49);
        CFDictionarySetValue(v16, v49, LODWORD(value[0]));
        if (ValueAtIndex == v66)
        {
          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        if (!a3)
        {
          a3 = v50;
        }

        v45 = v65;
      }

      ++ValueAtIndex;
    }

    while (ValueAtIndex < v45);
  }

  v68.length = CFArrayGetCount(Mutable);
  v68.location = 0;
  CFArraySortValues(Mutable, v68, _indexMapComparator, v16);
  if (CFArrayGetCount(Mutable) < 1)
  {
    v40 = 0;
LABEL_100:
    v42 = CFArrayGetCount(Mutable);
    v41 = v65;
    v44 = v58;
    v43 = v57;
    goto LABEL_101;
  }

  v51 = 0;
  v40 = 0;
  while (1)
  {
    v52 = FigCFArrayGetValueAtIndex();
    ValueAtIndex = v52;
    if (v52 == a3)
    {
      v40 = v51;
    }

    if (!v52 || (v53 = CFGetTypeID(v52), v53 != CFDictionaryGetTypeID()))
    {
      v55 = CMPhotoCFNumberGetSize(ValueAtIndex);
      if (v55 < v65)
      {
        *(v58 + v55) = v51;
      }

      goto LABEL_97;
    }

    v54 = CFDictionaryGetValue(ValueAtIndex, @"GroupPictureIndexList");
    if (!v54)
    {
      break;
    }

    ValueAtIndex = v54;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2000000000;
    v64[3] = 0;
    value[0] = MEMORY[0x1E69E9820];
    value[1] = 0x40000000;
    value[2] = ___populateIndexMap_block_invoke;
    value[3] = &unk_1E77A2A40;
    value[6] = v58;
    value[7] = v51;
    value[8] = v57;
    value[4] = v64;
    value[5] = v65;
    FigCFArrayApplyBlock();
    CFArraySetValueAtIndex(Mutable, v51, ValueAtIndex);
    _Block_object_dispose(v64, 8);
LABEL_97:
    if (++v51 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_100;
    }
  }

  v37 = 4294950304;
LABEL_120:
  v6 = v59;
LABEL_121:
  ValueAtIndex = v57;
  a3 = v58;
LABEL_103:
  if (v67[0])
  {
    CFRelease(v67[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  free(a2);
  free(a3);
  free(ValueAtIndex);
  if (!v37)
  {
    if (v60)
    {
      *v60 = v61;
    }

    v37 = 0;
    *v6 = Instance;
    Instance = 0;
  }

LABEL_113:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v37;
}

uint64_t _createAsyncQueueElements(const __CFAllocator *a1, uint64_t a2, char *label, const char *a4, unsigned int a5, int a6)
{
  if (!a2 || a5 < 1)
  {
    v15 = 4294950306;
    if (!a2)
    {
      return v15;
    }

LABEL_11:
    _releaseAsyncQueueElements(a2);
    return v15;
  }

  v11 = dispatch_queue_create(label, 0);
  *(a2 + 16) = v11;
  if (!v11 || (v12 = dispatch_queue_create(a4, MEMORY[0x1E69E96A8]), (*(a2 + 8) = v12) == 0) || (v13 = dispatch_semaphore_create(a5), (*(a2 + 24) = v13) == 0) || (Mutable = CFArrayCreateMutable(a1, 0, 0), (*(a2 + 32) = Mutable) == 0))
  {
    v15 = 4294950305;
    goto LABEL_11;
  }

  v15 = 0;
  *(a2 + 40) = a6;
  return v15;
}

uint64_t RegisterCMPhotoDecompressionContainer()
{
  sCMPhotoDecompressionContainerClass = 0;
  *algn_1ED6FA9A8 = "CMPhotoDecompressionContainer";
  qword_1ED6FA9B0 = CMPhotoDecompressionContainerClass_Init;
  unk_1ED6FA9B8 = 0;
  qword_1ED6FA9C8 = 0;
  unk_1ED6FA9D0 = 0;
  qword_1ED6FA9C0 = CMPhotoDecompressionContainerClass_Finalize;
  qword_1ED6FA9D8 = CMPhotoDecompressionContainerClass_CopyFormattingDesc;
  unk_1ED6FA9E0 = 0;
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_8 = result;
  return result;
}

void ___getAllowListFromEntitlement_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    ___getAllowListFromEntitlement_block_invoke_cold_1(v0);
  }
}

uint64_t _sanityCheckAllowOptionsValue(CFTypeRef cf)
{
  v1 = cf;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryApplyBlock();
      v1 = *(v8 + 6);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
      *(v8 + 6) = v1;
    }
  }

  _Block_object_dispose(&v7, 8);
  return v1;
}

const __CFNumber *___populateIndexMap_block_invoke(void *a1, const __CFNumber *a2)
{
  result = CMPhotoCFNumberGetSize(a2);
  if (result < a1[5])
  {
    *(a1[6] + 8 * result) = a1[7];
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(a1[8] + 8 * result) = v5;
  }

  return result;
}

uint64_t _once_setTypes()
{
  qword_1ED6FAB28 = CFDataGetTypeID();
  qword_1ED6FAB30 = CMBlockBufferGetTypeID();
  qword_1ED6FAB38 = CFURLGetTypeID();
  qword_1ED6FAB40 = IOSurfaceGetTypeID();
  result = CMByteStreamBaseGetTypeID();
  qword_1ED6FAB48 = result;
  return result;
}

uint64_t CMPhotoDecompressionSessionCreateContainer(const void *a1, const __CFDictionary *a2, const __CFData *a3, unsigned int *a4, uint64_t *a5)
{
  if (!a1 || !a3 || !a5)
  {
    return 4294950306;
  }

  v10 = CFGetAllocator(a1);

  return CMPhotoDecompressionContainerCreate(v10, a3, a2, a1, a4, a5);
}

uint64_t _isContainerAllowedByDictionary(uint64_t a1, int a2, char a3, int a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = a3;
  v7 = FigCFDictionaryApplyBlock();
  if (a1)
  {
    v9 = *(v15 + 24);
  }

  else
  {
    if (a2 == 3 && a4)
    {
      IsFirstPartyProcess = CMPhotoIsFirstPartyProcess(v7, v8);
      if (IsFirstPartyProcess)
      {
        v9 = CMPhotoIsInternalProcess(IsFirstPartyProcess, v11) != 0;
      }

      else
      {
        v9 = 1;
      }

      v12 = v15;
    }

    else
    {
      v12 = v15;
      v9 = 1;
    }

    *(v12 + 24) = v9;
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t CMPhotoByteStreamCreateFromSource(const __CFData *a1, uint64_t a2, int a3, int a4, CFTypeRef *a5, void *a6)
{
  BOOLean = 0;
  cf = 0;
  v27 = 0;
  v28 = 0;
  if (!a1)
  {
    MutableCopy = 0;
    v23 = 4294950306;
    goto LABEL_51;
  }

  if (!a5)
  {
    MutableCopy = 0;
    v23 = 0;
    goto LABEL_51;
  }

  v11 = a1;
  v12 = CFGetAllocator(a1);
  StorageType = CMPhotoGetStorageType(v11);
  if (StorageType <= 2)
  {
    if (StorageType == 1)
    {
      if (a3 && !a4)
      {
        CMPhotoByteStreamCreateFromSource_cold_1(&v26);
        goto LABEL_63;
      }

      if (a3)
      {
        MutableCopy = CFDataCreateMutableCopy(v12, 0, v11);
        if (!MutableCopy)
        {
          v23 = 4294950305;
          goto LABEL_51;
        }

        WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
        if (!WritableWithCFMutableData)
        {
          goto LABEL_40;
        }

        goto LABEL_45;
      }

      WritableWithCFMutableData = FigByteStreamCreateWithCFData();
    }

    else
    {
      if (StorageType != 2)
      {
LABEL_62:
        CMPhotoByteStreamCreateFromSource_cold_3(&v26);
LABEL_63:
        MutableCopy = 0;
        v23 = v26;
        goto LABEL_51;
      }

      WritableWithCFMutableData = CMByteStreamCreateWritableForBlockBuffer();
    }
  }

  else
  {
    switch(StorageType)
    {
      case 3:
        if (a3)
        {
          WritableWithCFMutableData = CMByteStreamCreateForFileURL();
        }

        else
        {
          FigGetDefaultManagedFilePool();
          WritableWithCFMutableData = FigManagedFilePoolCreateByteStreamForFile();
        }

        break;
      case 4:
        if (a3)
        {
          WritableWithCFMutableData = FigByteStreamCreateWritableWithIOSurface();
        }

        else
        {
          WritableWithCFMutableData = FigByteStreamCreateWithIOSurface();
        }

        break;
      case 5:
        if (a3)
        {
          v26 = a2;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v15)
          {
            goto LABEL_49;
          }

          v16 = v15(CMBaseObject, *MEMORY[0x1E695FFA8], v12, &BOOLean);
          if (v16)
          {
            goto LABEL_48;
          }

          if (!a2)
          {
            v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v24)
            {
              goto LABEL_49;
            }

            v16 = v24(v11, 0, &v26);
            if (v16)
            {
LABEL_48:
              v23 = v16;
LABEL_50:
              MutableCopy = 0;
              goto LABEL_51;
            }
          }

          Value = CFBooleanGetValue(BOOLean);
          if (!(Value | a4))
          {
            CMPhotoByteStreamCreateFromSource_cold_2(&v31);
            v23 = v31;
            goto LABEL_50;
          }

          if (a4 && !Value)
          {
            v18 = v26;
            if (v26 < 0)
            {
              v23 = 4294950190;
              goto LABEL_50;
            }

            v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v19)
            {
              v16 = v19(v11, v18, 0, &v28, 0);
              if (!v16)
              {
                v16 = CMByteStreamCreateForBlockBuffer();
                if (!v16)
                {
                  v11 = v27;
                  MutableCopy = v28;
                  v28 = 0;
                  if (!v27)
                  {
                    v21 = 0;
LABEL_35:
                    cf = v21;
                    goto LABEL_40;
                  }

LABEL_34:
                  v21 = CFRetain(v11);
                  goto LABEL_35;
                }
              }

              goto LABEL_48;
            }

LABEL_49:
            v23 = 4294954514;
            goto LABEL_50;
          }
        }

        MutableCopy = 0;
        goto LABEL_34;
      default:
        goto LABEL_62;
    }
  }

  MutableCopy = 0;
  if (!WritableWithCFMutableData)
  {
LABEL_40:
    *a5 = cf;
    cf = 0;
    if (a6)
    {
      v23 = 0;
      *a6 = MutableCopy;
    }

    else
    {
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v23 = 0;
    }

    goto LABEL_55;
  }

LABEL_45:
  v23 = WritableWithCFMutableData;
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_55:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v23;
}

uint64_t CMPhotoGetStorageType(const void *a1)
{
  pthread_once(&CMPhotoGetStorageType_onceToken, _once_setTypes);
  v2 = CFGetTypeID(a1);
  result = 1;
  while (v2 != sTypes_0[result])
  {
    if (++result == 6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoImageContainerFormatDetectFromBytestream(uint64_t a1, uint64_t a2, int *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 0;
    v7 = __s1;
    v8 = 12;
    do
    {
      v19 = 0;
      v20 = 0;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v9)
      {
        return 4294954514;
      }

      result = v9(a1, v6, &v20);
      if (result)
      {
        return result;
      }

      if (v20 < 1)
      {
        return 4294950194;
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v11)
      {
        return 4294954514;
      }

      result = v11(a1, v8, v6, v7, &v19);
      if (result)
      {
        return result;
      }

      v12 = v8 >= v19;
      v8 -= v19;
      if (!v12)
      {
        return 4294950304;
      }

      v7 = (v7 + v19);
      v6 += v19;
    }

    while (v8);
    if (LOWORD(__s1[0]) == 55551)
    {
      v18 = 1;
    }

    else if (__s1[1] == 1887007846)
    {
      v18 = 0;
    }

    else
    {
      if (LOWORD(__s1[0]) != 2815 && memcmp(__s1, &_jpegxlContainerIdentificationBytes, 0xCuLL))
      {
        v13 = __s1;
        v14 = 4;
        v15 = 128;
        while (1)
        {
          v19 = 0;
          v20 = 0;
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v16)
          {
            return 4294954514;
          }

          result = v16(a1, v15, &v20);
          if (result)
          {
            return result;
          }

          if (v20 < 1)
          {
            return 4294950194;
          }

          v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v17)
          {
            return 4294954514;
          }

          result = v17(a1, v14, v15, v13, &v19);
          if (result)
          {
            return result;
          }

          v12 = v14 >= v19;
          v14 -= v19;
          if (!v12)
          {
            return 4294950304;
          }

          v13 = (v13 + v19);
          v15 += v19;
          if (!v14)
          {
            if (__s1[0] != 1296255300)
            {
              return 4294950194;
            }

            v18 = 3;
            goto LABEL_31;
          }
        }
      }

      v18 = 2;
    }

LABEL_31:
    result = 0;
    if (a3)
    {
      *a3 = v18;
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950306, "(Fig)", 36, v3);
  }

  return result;
}

uint64_t _openContainer(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v7 = CFGetAllocator(a1);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *(a1 + 40) = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 64) = v8;
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 56) = v9;
  *(a1 + 48) = CMPhotoGetStorageType(a4);
  v10 = FigSimpleMutexCreate();
  *(a1 + 72) = v10;
  if (!v10)
  {
    return 4294950305;
  }

  result = _parseICCProfileIfNeeded(a1 + 40);
  if (!result)
  {
    result = _parseImageSizeAndTypeIfNeeded(a1 + 40);
    if (!result)
    {
      result = _parseMPOIfNeeded(a1 + 40);
      if (!result)
      {
        result = CMPhotoUnifiedJPEGDecoderCreate(*(a1 + 16), *(a1 + 40), *(a1 + 112), *(a1 + 120), a3, 0, 0, a4, *(a1 + 48), (a1 + 96));
        if (!result)
        {
          ByteStreamLength = CMPhotoUtilitiesGetByteStreamLength(a3);
          result = 0;
          *(a1 + 496) = ByteStreamLength;
        }
      }
    }
  }

  return result;
}

uint64_t _openContainer_0(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4)
{
  HIBYTE(v43) = 0;
  v8 = CMPhotoDecompressionSupportedForContainerAndCodec(2, 1786276963, 0, &v43 + 7);
  if (v8)
  {
    return v8;
  }

  if (!HIBYTE(v43))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
  }

  v9 = CFGetAllocator(a1);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(a1 + 40) = v9;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 64) = v10;
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 56) = v11;
  *(a1 + 48) = CMPhotoGetStorageType(a4);
  v8 = CMPhotoDataCreateFromSource(*(a1 + 40), a4, 0, 0, (a1 + 72), 0);
  if (v8)
  {
    return v8;
  }

  v51 = 0;
  v52[0] = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  v48 = 0;
  value = 0;
  if (!*(a1 + 80))
  {
    PreparedJXLDecoder = _createPreparedJXLDecoder(a1, 16704, 0, 0, v52, 0);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (!PreparedJXLDecoder)
    {
      goto LABEL_59;
    }

LABEL_14:
    if (PreparedJXLDecoder == 7)
    {
      if (!v13)
      {
        v27 = 0;
        v28 = 4294950304;
        goto LABEL_76;
      }

      JxlDecoderReleaseBoxBuffer();
      Length = CFDataGetLength(v13);
      CFDataIncreaseLength(v13, Length);
      CFDataGetMutableBytePtr(v13);
      if (!JxlDecoderSetBoxBuffer())
      {
        goto LABEL_58;
      }

      goto LABEL_61;
    }

    if (PreparedJXLDecoder != 0x4000)
    {
      if (PreparedJXLDecoder != 256)
      {
        if (PreparedJXLDecoder == 64)
        {
          if ((v16 & 0x40) == 0 && !JxlDecoderGetBasicInfo())
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        }

        if ((PreparedJXLDecoder & 0xFFFFFFFD) == 0)
        {
LABEL_63:
          v27 = 0;
          if (cf && value)
          {
            Mutable = CFDictionaryCreateMutable(*(a1 + 40), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v27 = Mutable;
            if (!Mutable)
            {
LABEL_104:
              v28 = 4294950305;
              goto LABEL_76;
            }

            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F30], value);
            CFDictionarySetValue(v27, *MEMORY[0x1E6965D88], cf);
            CMPhotoCreateColorSpaceFromPixelBufferAttachments(v27, *(a1 + 136) == 1, &v50, 1, 0, v30, v31, v32, v4, a3, v43, *buffer, v45, value, cf, v48, v49, v50, v51, v52[0], v52[1], v52[2]);
          }

          v34 = v50;
          v33 = v51;
          if (!v51 || v50)
          {
            goto LABEL_71;
          }

          v35 = CGColorSpaceCreateWithICCData(v51);
          v50 = v35;
          if (v35)
          {
            v34 = v35;
            v33 = v51;
LABEL_71:
            *(a1 + 80) = 1;
            v50 = 0;
            v51 = 0;
            *(a1 + 288) = v34;
            *(a1 + 296) = v33;
            v37 = v48;
            v36 = v49;
            v48 = 0;
            v49 = 0;
            *(a1 + 320) = v36;
            *(a1 + 328) = v37;
            v38 = cf;
            if (cf)
            {
              v38 = CFRetain(cf);
            }

            *(a1 + 304) = v38;
            v39 = value;
            if (value)
            {
              v39 = CFRetain(value);
            }

            v28 = 0;
            *(a1 + 312) = v39;
            goto LABEL_76;
          }

          goto LABEL_104;
        }

LABEL_97:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_14();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_98:
        v28 = v18;
LABEL_99:
        v27 = 0;
        goto LABEL_76;
      }

      if ((v16 & 0x100) == 0)
      {
        v18 = _configureJXLColor(*(a1 + 40), v52[0], *(a1 + 120), &cf, &value, &v51);
        if (!v18)
        {
          goto LABEL_58;
        }

        goto LABEL_98;
      }

LABEL_61:
      v27 = 0;
      v28 = 4294950194;
      goto LABEL_76;
    }

    v19 = 1;
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_28:
    v20 = JxlDecoderReleaseBoxBuffer();
    v21 = CFDataGetLength(v13);
    CFDataSetLength(v13, v21 - v20);
    while (1)
    {
LABEL_29:
      if (v15)
      {
        if (CFDataGetLength(v13) <= 4)
        {
          goto LABEL_97;
        }

        *buffer = 0;
        v53.location = 0;
        v53.length = 4;
        CFDataGetBytes(v13, v53, buffer);
        *buffer = bswap32(*buffer);
        v22 = (*buffer + 4);
        if (CFDataGetLength(v13) <= v22)
        {
          goto LABEL_97;
        }

        v54.length = (*buffer + 4);
        v54.location = 0;
        CFDataDeleteBytes(v13, v54);
        v23 = &v49;
      }

      else
      {
        v24 = v14 == 0;
        v14 = 0;
        if (v24)
        {
          goto LABEL_39;
        }

        v23 = &v48;
      }

      v25 = *v23;
      if (!*v23)
      {
        v25 = CFArrayCreateMutable(*(a1 + 40), 0, MEMORY[0x1E695E9C0]);
        *v23 = v25;
        if (!v25)
        {
          v27 = 0;
          v28 = 4294950305;
          goto LABEL_76;
        }
      }

      CFArrayAppendValue(v25, v13);
      if (v13)
      {
        CFRelease(v13);
        v13 = 0;
      }

LABEL_39:
      if (PreparedJXLDecoder != 0x4000)
      {
        goto LABEL_57;
      }

      BYTE4(v45) = 0;
      LODWORD(v45) = 0;
      if (JxlDecoderGetBoxType())
      {
        goto LABEL_61;
      }

      *buffer = 0;
      if (JxlDecoderGetBoxSizeRaw())
      {
        goto LABEL_91;
      }

      if (v45 == 1718188101)
      {
        v15 = 1;
      }

      else
      {
        if (v45 == 543976824)
        {
          v14 = 1;
        }

        if (!v14)
        {
          v14 = 0;
LABEL_57:
          v15 = 0;
          if (!v19)
          {
            goto LABEL_63;
          }

          goto LABEL_58;
        }

        v15 = 0;
      }

      if (!*buffer)
      {
        *buffer = 4096;
      }

      v26 = CFDataCreateMutable(*(a1 + 40), 0);
      v13 = v26;
      if (!v26)
      {
        v28 = 4294950305;
        goto LABEL_99;
      }

      if ((*buffer & 0x8000000000000000) != 0)
      {
        v28 = 4294950190;
        goto LABEL_99;
      }

      if (*buffer >> 27)
      {
        goto LABEL_97;
      }

      CFDataSetLength(v26, *buffer);
      CFDataGetMutableBytePtr(v13);
      CFDataGetLength(v13);
      if (JxlDecoderSetBoxBuffer())
      {
LABEL_91:
        v28 = 4294950194;
        goto LABEL_99;
      }

      if (!v19)
      {
        goto LABEL_63;
      }

LABEL_58:
      v16 |= PreparedJXLDecoder;
      PreparedJXLDecoder = JxlDecoderProcessInput();
      if (PreparedJXLDecoder)
      {
        goto LABEL_14;
      }

LABEL_59:
      v19 = 0;
      if (v13)
      {
        goto LABEL_28;
      }
    }
  }

  v27 = 0;
  v13 = 0;
  v28 = 0;
LABEL_76:
  JxlDecoderDestroy();
  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (!v28)
  {
    *(a1 + 496) = CMPhotoUtilitiesGetByteStreamLength(a3);
  }

  return v28;
}

uint64_t _openContainer_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v7 = Mutable;
  if (!MEMORY[0x1EEE79180] || !*(a1 + 28))
  {
    OUTLINED_FUNCTION_21_5();
    FigPictureCollectionCreateFromByteStream();
    goto LABEL_7;
  }

  v8 = OUTLINED_FUNCTION_53();
  v12 = CFDictionaryCreateMutable(v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(v12, *MEMORY[0x1E6972170], *MEMORY[0x1E695E4D0]);
    OUTLINED_FUNCTION_21_5();
    FigPictureCollectionCreateFromByteStreamWithOptions();
    CFRelease(v13);
LABEL_7:
    if (CMPhotoHEIFUtilitiesByteStreamHasMoovAtom(a3))
    {
      FigCFDictionarySetValue();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1AC5519C0]();
    }

    if (*(a1 + 48) || *(a1 + 56))
    {
      *(a1 + 496) = CMPhotoUtilitiesGetByteStreamLength(a3);
      v14 = dispatch_queue_create("com.apple.cmphoto.auxmeta.synchronizer", 0);
      *(a1 + 64) = v14;
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = 4294950305;
      }
    }

    else
    {
      v15 = 4294950194;
    }

    goto LABEL_14;
  }

  v15 = 4294950305;
LABEL_14:
  CFRelease(v7);
  return v15;
}

void _openContainer_2(uint64_t a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  if (a2)
  {
    v5 = v4;
    if (!*(a1 + 40))
    {
      if (v4)
      {
        v6 = CFRetain(v4);
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 40) = v6;
    }

    *(a1 + 112) = 1;
    Value = CFDictionaryGetValue(a2, @"SequenceInfo");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFDictionaryGetTypeID())
      {
        v10 = CFDictionaryGetValue(v8, @"FormatReader");
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == FigFormatReaderGetTypeID())
          {
            if (FigCFDictionaryGetInt32IfPresent())
            {
              if (!_createSequenceReader(v11, 0, 1885954932, *(a1 + 28), (a1 + 80)))
              {
                v13 = CFDictionaryGetValue(v8, @"thmb");
                if (v13)
                {
                  v14 = v13;
                  v15 = CFGetTypeID(v13);
                  if (v15 == CFArrayGetTypeID() && !_copyReferenceSequenceReaders(v5, v11, v14, 1885954932, *(a1 + 28), (a1 + 88)))
                  {
                    v16 = CFDictionaryGetValue(v8, @"auxl");
                    if (v16)
                    {
                      v17 = v16;
                      v18 = CFGetTypeID(v16);
                      if (v18 == CFArrayGetTypeID() && !_copyReferenceSequenceReaders(v5, v11, v17, 1635088502, *(a1 + 28), (a1 + 96)))
                      {
                        v25 = 0;
                        if (!_getImageCountForSequence(*(a1 + 80), &v25))
                        {
                          v19 = *(a1 + 88);
                          if (v19 && CFArrayGetCount(v19) >= 1)
                          {
                            while (1)
                            {
                              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), 0);
                              v24 = 0;
                              if (_getImageCountForSequence(ValueAtIndex, &v24))
                              {
                                break;
                              }

                              OUTLINED_FUNCTION_10_16();
                              if (v21)
                              {
                                goto LABEL_25;
                              }
                            }
                          }

                          else
                          {
LABEL_25:
                            v22 = *(a1 + 96);
                            if (v22 && CFArrayGetCount(v22) >= 1)
                            {
                              while (1)
                              {
                                v23 = CFArrayGetValueAtIndex(*(a1 + 96), 0);
                                v24 = 0;
                                if (_getImageCountForSequence(v23, &v24))
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_10_16();
                                if (v21)
                                {
                                  goto LABEL_30;
                                }
                              }
                            }

                            else
                            {
LABEL_30:
                              *(a1 + 112) = 1;
                              *(a1 + 72) = CFRetain(v8);
                              *(a1 + 64) = CFRetain(v11);
                              *(a1 + 104) = 0;
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
  }

  OUTLINED_FUNCTION_13_13();
}

uint64_t _openContainer_3(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v17 = 0;
  v16 = 0;
  result = CMPhotoDecompressionSupportedForContainerAndCodec(3, 1684237600, 0, &v16);
  if (!result)
  {
    if (v16)
    {
      v9 = CFGetAllocator(a1);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *(a1 + 40) = v9;
      if (a3)
      {
        v10 = CFRetain(a3);
      }

      else
      {
        v10 = 0;
      }

      *(a1 + 64) = v10;
      if (a4)
      {
        v11 = CFRetain(a4);
      }

      else
      {
        v11 = 0;
      }

      *(a1 + 56) = v11;
      *(a1 + 48) = CMPhotoGetStorageType(a4);
      if (a2)
      {
        if (a4)
        {
          v12 = CFGetTypeID(a4);
          if (v12 == IOSurfaceGetTypeID())
          {
            CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceSourceSize", &v17);
          }
        }
      }

      result = CMPhotoDataCreateFromSource(*(a1 + 40), a4, 0, v17, (a1 + 72), 0);
      if (!result)
      {
        DicomDecoderCreate(*(a1 + 40), 0, *(a1 + 72));
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
    }
  }

  return result;
}

uint64_t _openContainer_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_54_0();
  v9 = v8;
  result = _parseContainer(v8, v10, v11, v12);
  if (!result)
  {
    _handleStripping(v9, v6);
    result = _handleRewrite(v9, v5);
    if (a5)
    {
      if (!result)
      {
        v14 = 0;
        result = _createDescriptionFromSession(v9, &v14);
        if (!result)
        {
          *a5 = v14;
        }
      }
    }
  }

  return result;
}

uint64_t _openContainer_5(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, __CFDictionary **a5)
{
  v7 = _newContainer_0(a1, a2);
  if (v7)
  {
    return v7;
  }

  v8 = OUTLINED_FUNCTION_27();
  ContainerAndCopyDescription = _readContainerAndCopyDescription(v8, v9, v10);
  if (ContainerAndCopyDescription)
  {
    return ContainerAndCopyDescription;
  }

  else
  {
    return _initContainerFromDescription(a1, 0, a5);
  }
}

uint64_t _openContainer_6(_DWORD *a1, const __CFDictionary *a2, uint64_t a3, const void *a4)
{
  space = 0;
  cf = 0;
  v12 = 0;
  v7 = CFGetAllocator(a1);
  v8 = _newContainer_1(a1, a2);
  if (!v8)
  {
    if (a2)
    {
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (a4)
      {
        v9 = CFGetTypeID(a4);
        if (v9 == IOSurfaceGetTypeID())
        {
          CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceSourceSize", &v12);
        }
      }
    }

    v8 = CMPhotoDataCreateFromSource(v7, a4, 0, v12, &cf, 0);
    if (!v8)
    {
      DicomDecoderCreate(v7, 0, cf);
    }
  }

  v11 = v8;
  DicomDecoderDestroy(0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (space)
  {
    CFRelease(space);
  }

  if (v11)
  {
    _releaseAllContainerResources_0(a1);
  }

  return v11;
}

uint64_t _parseICCProfileIfNeeded(uint64_t a1)
{
  cf = 0;
  v11 = 0;
  v2 = FigSimpleMutexLock();
  if (v2)
  {
    v6 = v2;
    goto LABEL_8;
  }

  if (*(a1 + 424))
  {
    goto LABEL_5;
  }

  *(a1 + 424) = 1;
  v3 = OUTLINED_FUNCTION_16_3();
  v5 = CMPhotoCopyICCProfileFromJFIFByteStream(v3, v4, 0, (a1 + 425), 0, &v11);
  if (v5)
  {
    goto LABEL_19;
  }

  *(a1 + 432) = v11;
  v11 = 0;
  if (*(a1 + 425))
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!*(a1 + 248))
  {
    v5 = _parseExifIfNeeded(a1, 1);
    if (v5)
    {
      goto LABEL_19;
    }
  }

  if (!*(a1 + 276))
  {
    goto LABEL_5;
  }

  v9 = 0;
  v5 = CMPhotoByteStreamReadAndCreateData(*(a1 + 24), *(a1 + 264), *(a1 + 256), &cf, &v9);
  if (v5)
  {
LABEL_19:
    v6 = v5;
  }

  else
  {
    if (v9 == *(a1 + 264))
    {
      if (!CGImageCreateColorSpaceFromExifOrData())
      {
        v8 = CGColorSpaceCopyICCData(0);
        *(a1 + 432) = v8;
        *(a1 + 425) = v8 != 0;
      }

      goto LABEL_5;
    }

    v6 = 4294950194;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_8:
  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t _copyChunkedHeadersFromJFIFByteStream(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _OWORD *a9, void *a10)
{
  v44 = a4;
  v42 = a6;
  v43 = a5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2800000000;
  v40 = 0;
  v41 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v32[3] = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2000000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  if (!a9 && !a8 && !a10 || (a7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    MarkersWithSignaturesInJFIFByteStreamWithHandler = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_23();
  v13 = OUTLINED_FUNCTION_10_20(v11, v12);
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v13, v14, v15, v16, v17, v18, v19);
  if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
LABEL_16:
    v22 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
    goto LABEL_12;
  }

  if (a8)
  {
    OUTLINED_FUNCTION_18_7();
    *a8 = v21;
  }

  if (a9)
  {
    *a9 = *(v38 + 3);
  }

  v22 = 0;
  if (a10)
  {
    v23 = v34;
    *a10 = v34[3];
    v23[3] = 0;
  }

LABEL_12:
  v24 = v34[3];
  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v22;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{

  return CMPhotoCFDictionaryGetInt32IfPresent();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{

  return CMPhotoDecompressionSupportedForContainerAndCodec(2, 1786276963, 0, a4);
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2)
{

  return FigCFDictionarySetValue();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, size_t a2, size_t a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{

  return CVPixelBufferCreate(v7, a2, a3, 0x72673366u, v6, a6);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_0_8(pthread_once_t *a1)
{

  return pthread_once(a1, _once_CMPhotoSurfacePoolGetDefault);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{

  return kdebug_trace();
}

float OUTLINED_FUNCTION_0_31(float a1)
{
  v3 = a1 * 1000.0;
  *(v2 + 28) = vcvtas_u32_f32(v3);
  result = roundf(v3) / 1000.0;
  *(v1 + 24) = result;
  return result;
}

void OUTLINED_FUNCTION_0_34(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  CFStringAppendFormat(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_0_35(pthread_once_t *a1)
{

  return pthread_once(a1, _once_getDeviceType);
}

dispatch_time_t OUTLINED_FUNCTION_12_5()
{

  return dispatch_time(0, 0);
}

uint64_t OUTLINED_FUNCTION_12_8(__n128 a1)
{

  return FigCFDictionarySetFloat();
}

void OUTLINED_FUNCTION_12_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, char a49, int a50, char a51, int a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4A8] = a41;
  LOBYTE(STACK[0x4B0]) = a53;
  LOBYTE(STACK[0x4B1]) = a65;
  LOBYTE(STACK[0x4B2]) = a51;
  LOBYTE(STACK[0x4B3]) = a49;
  LOBYTE(STACK[0x4B4]) = a47;
  *(v65 + 53) = STACK[0x470];
  LOBYTE(STACK[0x4B7]) = STACK[0x472];
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1, uint64_t a2, float a3)
{

  return _addFloatToCGMetadata(a3);
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v10 + 40);

  return _moveSampleCursorToIndexAndCreateSampleBuffer(v13, v9, a1);
}

uint64_t OUTLINED_FUNCTION_12_19(int a1, __CVBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return _createFinalOutputForBuffer(v13, a2, va, v15, v14);
}

void OUTLINED_FUNCTION_12_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  CFDataAppendBytes(v9, va, 8);
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int a21, unsigned int a22, uint64_t *a23)
{

  return _encodePixelBufferForIndex_0(v22, v28, v27, v23, a5, a18, a19, a22, v26, v24, a23, v25);
}

void CMPhotoGetImageInformationFromJFIFByteStream()
{
  OUTLINED_FUNCTION_21_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v68 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2000000000;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = v0 != 0;
  v47 = -30;
  v46 = -1010646592;
  memset(v64, 0, sizeof(v64));
  v65 = "urn:iso:std:iso:ts:21496:-1";
  memset(v62, 0, sizeof(v62));
  v63 = 28;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2800000000;
  v44 = 0;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2800000000;
  v39 = 0;
  v40 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = __CMPhotoGetImageInformationFromJFIFByteStream_block_invoke;
  v35[3] = &unk_1E77A3510;
  v35[4] = v52;
  v35[5] = &v54;
  v35[6] = &v41;
  v35[7] = &v48;
  v35[8] = &v36;
  if (CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v12, v14, 5u, &v46, v64, v62, v35))
  {
    goto LABEL_18;
  }

  if (v42[4] <= 8)
  {
    goto LABEL_64;
  }

  v15 = v42[3];
  v61 = 0;
  *v60 = 0;
  v60[4] = 0;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16 || v16(v13, 5, v15, v60, &v61))
  {
    goto LABEL_18;
  }

  if (v61 == 5)
  {
    v17 = *&v60[3];
    *&v60[3] = __rev16(*&v60[3]);
    v18 = *&v60[1];
    *&v60[1] = __rev16(*&v60[1]);
    if (v18 && v17)
    {
      v59 = 0;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v19 || v19(v13, 1, v15 + 5, &v59, &v61))
      {
        goto LABEL_18;
      }

      if (v61 == 1)
      {
        v20 = v59;
        if (v59 - 5 > 0xFFFFFFFB)
        {
          v67 = 0;
          v66 = 0;
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v21 || v21(v13, 3 * v20, v15 + 6, &v66, &v61))
          {
            goto LABEL_18;
          }

          if (v61 == 3 * v59)
          {
            if (v59)
            {
              if (v59 == 1)
              {
                v22 = 0;
                v23 = 6;
LABEL_44:
                if (v11)
                {
                  v30 = *&v60[1];
                  *v11 = *&v60[3];
                  v11[1] = v30;
                }

                if (v9)
                {
                  *v9 = v23;
                }

                if (v7)
                {
                  *v7 = v22;
                }

                if (v3)
                {
                  *v3 = v60[0];
                }

                goto LABEL_52;
              }

              v24 = v59 - 1;
              v25 = &v66 + 4;
              while (1)
              {
                v26 = *v25;
                v25 += 3;
                if (v26 != 17)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
LABEL_22:
              switch(BYTE1(v66))
              {
                case 0x41u:
                  v22 = 0;
                  v23 = 4;
                  goto LABEL_44;
                case 0x12u:
                  v22 = 0;
                  v23 = 2;
                  goto LABEL_44;
                case 0x21u:
                  v22 = 0;
                  v23 = 3;
                  goto LABEL_44;
                case 0x22u:
                  v22 = 0;
                  v23 = 5;
                  goto LABEL_44;
                case 0x11u:
                  v22 = v66 == 82 && BYTE3(v66) == 71 && BYTE6(v66) == 66;
                  v23 = 1;
                  goto LABEL_44;
              }
            }
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_12();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v5 = v34;
  }

  else
  {
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (v29)
  {
    goto LABEL_18;
  }

LABEL_52:
  if (v5)
  {
    *v5 = *(v55 + 24);
  }

  if (v1)
  {
    if (*(v49 + 24))
    {
      v31 = v37[4];
      v32 = v31 - 28;
      if (v31 > 0x1C)
      {
        v66 = 0;
        if (CMPhotoByteStreamReadAndCreateData(v13, v31 - 28, v37[3] + 28, &v58, &v66))
        {
          v33 = v58;
        }

        else
        {
          v33 = v58;
          if (v66 == v32)
          {
            *v1 = v58;
            v58 = 0;
            goto LABEL_18;
          }
        }

        if (v33)
        {
          CFRelease(v33);
        }
      }
    }
  }

LABEL_18:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
  OUTLINED_FUNCTION_22_5();
}

uint64_t CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, unint64_t *a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = 0;
  result = 4294950306;
  if (a3 < 1 || !a4)
  {
    return result;
  }

  if (a5)
  {
    if (!a6)
    {
      return result;
    }

    v14 = a3;
    v15 = a6;
    v16 = a5;
    do
    {
      v18 = *v15++;
      v17 = v18;
      if (v18 > 0xFF || v17 && !*v16)
      {
        return 4294950306;
      }

      ++v16;
      --v14;
    }

    while (v14);
  }

  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    return 4294950194;
  }

  v40 = a7 + 16;
  v41 = a7;
  v20 = a3;
  while (1)
  {
    v28 = v19(a1, 4, a2, &__s1, &v43);
    result = 4294950194;
    if (v28 || v43 != 4 || __s1 != 255)
    {
      return result;
    }

    v29 = v45;
    if (v45 == 216)
    {
      a2 += 2;
      goto LABEL_41;
    }

    if (v45 != 255)
    {
      break;
    }

    ++a2;
LABEL_41:
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v19)
    {
      return 4294950194;
    }
  }

  if (v45 == 218)
  {
    return 0;
  }

  v30 = 0;
  v31 = bswap32(v46) >> 16;
  while (2)
  {
    if (!a6)
    {
      if (v29 == *(a4 + v30) && v31 >= 2)
      {
        break;
      }

      goto LABEL_37;
    }

    v32 = a6[v30];
    if (v29 != *(a4 + v30) || v32 + 2 > v31)
    {
      goto LABEL_37;
    }

    if (v32)
    {
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v34)
      {
        return 4294950194;
      }

      if (v34(a1, v32, a2 + 4, &__s1, &v43) || v43 != v32)
      {
        return 4294950194;
      }

      result = memcmp(&__s1, a5[v30], v32);
      if (result)
      {
LABEL_37:
        if (v20 == ++v30)
        {
          goto LABEL_38;
        }

        continue;
      }
    }

    break;
  }

  v37 = OUTLINED_FUNCTION_7_23(result, v21, v22, v23, v24, v25, v26, v27, v39, v40, v41);
  result = v38(v37);
  if (result == -17105)
  {
    return 0;
  }

  if (!result)
  {
LABEL_38:
    a2 += v31 + 2;
    goto LABEL_41;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_114(const void *a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, CVPixelBufferRef *a11)
{

  return CMPhotoSurfacePoolCreatePixelBuffer(a1, a2, a3, a4, 1, v11, v12, 0, a9, a10, a11);
}

uint64_t CMPhotoUtilitiesGetByteStreamLength(uint64_t a1)
{
  cf = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, *MEMORY[0x1E695FF70], *MEMORY[0x1E695E480], &cf);
  v4 = cf;
  if (v3 || (v5 = CFGetTypeID(cf), TypeID = CFNumberGetTypeID(), v4 = cf, v5 != TypeID))
  {
    Int32 = 0;
    if (!v4)
    {
      return Int32;
    }

    goto LABEL_5;
  }

  Int32 = CMPhotoCFNumberGetInt32(cf);
  v4 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v4);
  }

  return Int32;
}

uint64_t _createDescriptionForReader(uint64_t a1, CFTypeRef a2, uint64_t a3, const __CFArray *a4, const __CFAllocator *a5, __CFArray *a6, int a7, CFIndex Count)
{
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  cf = 0;
  v148 = 0;
  Mutable = CFDictionaryCreateMutable(a5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_214;
  }

  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(a2, &v148);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  ItemTypeFromReader = CMPhotoCFDictionarySetInt32(Mutable, @"ItemType", v148);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  FigPictureReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_75;
  }

  v144 = Count;
  v17 = OUTLINED_FUNCTION_65_0();
  ItemTypeFromReader = v18(v17);
  if (ItemTypeFromReader)
  {
LABEL_212:
    v34 = ItemTypeFromReader;
    goto LABEL_213;
  }

  Count = 1768187246;
  FigCFDictionarySetValue();
  *value = 0u;
  *v147 = 0u;
  if (v148 == 1768187246)
  {
    v19 = OUTLINED_FUNCTION_74_0();
    ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v19, v20, v21, v22);
    if (ItemTypeFromReader)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_74_0();
    ItemTypeFromReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v23, v24, v25, v26);
    if (ItemTypeFromReader)
    {
      goto LABEL_212;
    }
  }

  v164.width = OUTLINED_FUNCTION_14_5(v147[0]);
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v164);
  if (!DictionaryRepresentation)
  {
    v34 = 4294950305;
    goto LABEL_213;
  }

  v28 = DictionaryRepresentation;
  v29 = OUTLINED_FUNCTION_110();
  CFDictionarySetValue(v29, v30, v31);
  CFRelease(v28);
  v163[0] = 0;
  CMPhotoPictureReaderCopyImageBitDepth(a2, v163);
  OUTLINED_FUNCTION_35_1();
  if (!v33)
  {
    v34 = v32;
    if (v32)
    {
      goto LABEL_213;
    }

    CFDictionarySetValue(Mutable, @"BitDepth", v163[0]);
    if (v163[0])
    {
      CFRelease(v163[0]);
    }
  }

  if (v148 == 1768187246)
  {
    LODWORD(value[0]) = 0;
    goto LABEL_17;
  }

  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v36)
  {
    goto LABEL_75;
  }

  ItemTypeFromReader = v36(a2, &v150);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  value[0] = 0;
  FigPictureTileCursorServiceGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_75;
  }

  v37 = OUTLINED_FUNCTION_65_0();
  v39 = v38(v37);
  if (v39 != -12784)
  {
    v34 = v39;
    if (!v39)
    {
      CFDictionarySetValue(Mutable, @"TileDimensions", value[0]);
      goto LABEL_27;
    }

LABEL_213:
    OUTLINED_FUNCTION_18_3();
    goto LABEL_76;
  }

LABEL_27:
  LODWORD(value[0]) = 0;
  if (v148 != 1768187246)
  {
    v35 = a2;
    goto LABEL_18;
  }

LABEL_17:
  v35 = v151;
LABEL_18:
  ItemTypeFromReader = CMPhotoPictureReaderGetImageCodecTypeFromReader(v35, value);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  ItemTypeFromReader = CMPhotoCFDictionarySetInt32(Mutable, @"CodecType", value[0]);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  value[0] = 0;
  value[1] = 0;
  ItemTypeFromReader = _getDataRangeFromReader();
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  ItemTypeFromReader = CMPhotoCFDictionarySetInt64(Mutable, @"DataOffset", value[0]);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  ItemTypeFromReader = CMPhotoCFDictionarySetSize(Mutable, @"DataLength", value[1]);
  if (ItemTypeFromReader)
  {
    goto LABEL_212;
  }

  OUTLINED_FUNCTION_7_13();
  if (v33)
  {
    FigPictureReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_75;
    }

    v40 = OUTLINED_FUNCTION_65_0();
    ItemTypeFromReader = v41(v40);
    if (!ItemTypeFromReader)
    {
      v42 = FigCFDictionaryGetValue();
      if (!v42)
      {
        goto LABEL_43;
      }

      v43 = v42;
      MutableCopy = CFDictionaryCreateMutableCopy(a5, 0, v42);
      if (MutableCopy)
      {
        v45 = MutableCopy;
        if (!CFDictionaryContainsKey(v43, @"TonemapVersion"))
        {
          CMPhotoCFDictionarySetInt(v45, @"TonemapVersion", 0);
        }

        Count = @"TonemapWriterVersion";
        if (!CFDictionaryContainsKey(v43, @"TonemapWriterVersion"))
        {
          CMPhotoCFDictionarySetInt(v45, @"TonemapWriterVersion", 0);
        }

        CFDictionaryRemoveValue(v45, *MEMORY[0x1E6972358]);
        v46 = OUTLINED_FUNCTION_110();
        CFDictionarySetValue(v46, v47, v48);
        CFRelease(v45);
LABEL_43:
        v49 = FigCFDictionaryGetValue();
        if (!v49 || (v50 = v49, Count = CFGetTypeID(v49), Count != CFArrayGetTypeID()) || CFArrayGetCount(v50) != 2)
        {
          OUTLINED_FUNCTION_18_3();
          v34 = 4294950194;
          goto LABEL_76;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v50, 1);
        FigBaseObject = FigPictureReaderGetFigBaseObject();
        v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v53)
        {
          ItemTypeFromReader = v53(FigBaseObject, *MEMORY[0x1E6972358], a5, &v157);
          if (ItemTypeFromReader)
          {
            goto LABEL_212;
          }

          CFDictionarySetValue(Mutable, @"DerivationGainMapDimension", v157);
          ItemTypeFromReader = CMPhotoPictureReaderCopyFormatDescriptorFromReader(ValueAtIndex, a5, 1, &cf);
          if (ItemTypeFromReader)
          {
            goto LABEL_212;
          }

          LODWORD(value[0]) = 0;
          if (!_getImageOrientation(a1, ValueAtIndex, 0, value))
          {
            ItemTypeFromReader = FigCFDictionarySetInt();
            if (ItemTypeFromReader)
            {
              goto LABEL_212;
            }
          }

          LODWORD(v163[0]) = 0;
          LOBYTE(v160) = 1;
          OUTLINED_FUNCTION_14_9();
          OUTLINED_FUNCTION_31_0();
          ItemTypeFromReader = CMPhotoGetInfoFromFormatDescription(v54, v55, v56, v57, v58, v59, v60, v61, v138, v139, v140, v141);
          if (ItemTypeFromReader)
          {
            goto LABEL_212;
          }

          if (LODWORD(v163[0]))
          {
            ItemTypeFromReader = FigCFDictionarySetInt();
            if (ItemTypeFromReader)
            {
              goto LABEL_212;
            }
          }

          if (!CMPhotoPictureReaderCopyImageBitDepth(ValueAtIndex, &v156))
          {
            LODWORD(v162) = 0;
            if (FigCFArrayGetInt32AtIndex())
            {
              LODWORD(v161) = 0;
              if (!CMPhotoGetYUVPixelFormatForParameters(LODWORD(v163[0]), v162, v160, 0, 0, 0, 1, &v161))
              {
                ItemTypeFromReader = FigCFDictionarySetInt();
                if (ItemTypeFromReader)
                {
                  goto LABEL_212;
                }
              }
            }
          }

          goto LABEL_58;
        }

LABEL_75:
        OUTLINED_FUNCTION_18_3();
        v34 = 4294954514;
        goto LABEL_76;
      }

LABEL_214:
      OUTLINED_FUNCTION_18_3();
      v34 = 4294950305;
      goto LABEL_76;
    }

    goto LABEL_212;
  }

LABEL_58:
  v62 = OUTLINED_FUNCTION_112();
  _createMetadataDictionaryArrayForReader(v62, v63, 0, v64);
  v65 = OUTLINED_FUNCTION_112();
  _createMetadataDictionaryArrayForReader(v65, v66, 1, v67);
  v68 = OUTLINED_FUNCTION_112();
  _createMetadataDictionaryArrayForReader(v68, v69, 2, v70);
  v71 = OUTLINED_FUNCTION_112();
  _createMetadataDictionaryArrayForReader(v71, v72, 4, v73);
  if (a6)
  {
    OUTLINED_FUNCTION_18_3();
    goto LABEL_60;
  }

  if (a4)
  {
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      theArray = CFArrayCreateMutable(a5, Count, MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        v84 = 0;
        while (1)
        {
          if (v151)
          {
            CFRelease(v151);
            v151 = 0;
          }

          LODWORD(v163[0]) = 0;
          if (FigCFArrayGetInt32AtIndex())
          {
            v85 = *(a1 + 48);
            v86 = LODWORD(v163[0]);
            v87 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v87)
            {
              v34 = 4294954514;
LABEL_210:
              a4 = 0;
              Count = 0;
              goto LABEL_211;
            }

            DummyReaderDescription = v87(v85, v86, &v151, 0);
            if (DummyReaderDescription)
            {
              goto LABEL_220;
            }

            value[0] = 0;
            if (_createDescriptionForReader(a1, v151, LODWORD(v163[0]), 0, a5, 0, 1, value))
            {
              DummyReaderDescription = _createDummyReaderDescription(a5, value);
              if (DummyReaderDescription)
              {
                goto LABEL_220;
              }
            }

            v89 = value[0];
            DummyReaderDescription = FigCFDictionarySetCFIndex();
            if (DummyReaderDescription)
            {
              goto LABEL_220;
            }

            CFArrayAppendValue(theArray, v89);
            if (v89)
            {
              CFRelease(v89);
            }
          }

          if (Count == ++v84)
          {
            goto LABEL_152;
          }
        }
      }

      goto LABEL_214;
    }
  }

  theArray = 0;
LABEL_152:
  if (!a7 && (DummyReaderDescription = FigCFDictionarySetInt(), DummyReaderDescription) || (OUTLINED_FUNCTION_42(), !_getImageGeometryForIndex_1()) && (DummyReaderDescription = FigCFDictionarySetInt(), DummyReaderDescription))
  {
LABEL_220:
    v34 = DummyReaderDescription;
    goto LABEL_210;
  }

  value[0] = 0;
  ThumbnailCount = FigPictureReaderGetThumbnailCount(a2, value);
  if (ThumbnailCount || (ThumbnailCount = FigCFDictionarySetInt(), ThumbnailCount))
  {
    v34 = ThumbnailCount;
    Count = 0;
LABEL_175:
    a6 = theArray;
    a4 = 0;
    goto LABEL_76;
  }

  if (value[0] >= 1)
  {
    v91 = 0;
    Count = 0;
    while (1)
    {
      if (v151)
      {
        CFRelease(v151);
        v151 = 0;
      }

      v163[0] = 0;
      if (!Count)
      {
        Count = CFArrayCreateMutable(a5, value[0], MEMORY[0x1E695E9C0]);
        if (!Count)
        {
          break;
        }
      }

      v92 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v92)
      {
        v34 = 4294954514;
        goto LABEL_175;
      }

      v93 = v92(a2, v91, &v151);
      if (v93 || (v94 = OUTLINED_FUNCTION_100_0(), _createDescriptionForReader(v94, v95, v96, v97, v98, 1, 0, v99)) && (v93 = _createDummyReaderDescription(a5, v163), v93) || (v100 = OUTLINED_FUNCTION_8_14(), SubImageGeometryForIndex = _getSubImageGeometryForIndex(v100, v101, v102, 1, 0, 0, v103), v105 = v163[0], !SubImageGeometryForIndex) && (v93 = FigCFDictionarySetInt(), v93))
      {
        v34 = v93;
        goto LABEL_175;
      }

      CFArrayAppendValue(Count, v105);
      if (v163[0])
      {
        CFRelease(v163[0]);
      }

      if (++v91 >= value[0])
      {
        goto LABEL_178;
      }
    }

    v34 = 4294950305;
    goto LABEL_175;
  }

  Count = 0;
LABEL_178:
  v163[0] = 0;
  AuxiliaryImageCount = FigPictureReaderGetAuxiliaryImageCount(a2, v163);
  if (!AuxiliaryImageCount)
  {
    AuxiliaryImageCount = FigCFDictionarySetInt();
    if (!AuxiliaryImageCount)
    {
      if (v163[0] >= 1)
      {
        v107 = 0;
        a4 = 0;
        v143 = *MEMORY[0x1E69722B8];
        while (1)
        {
          if (v151)
          {
            CFRelease(v151);
            v151 = 0;
          }

          v161 = 0;
          v162 = 0;
          v160 = 0;
          if (!a4)
          {
            a4 = CFArrayCreateMutable(a5, v163[0], MEMORY[0x1E695E9C0]);
            if (!a4)
            {
              v34 = 4294950305;
              goto LABEL_211;
            }
          }

          v108 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v108)
          {
            if (!v108(a2, v107, &v151))
            {
              v109 = OUTLINED_FUNCTION_100_0();
              if (!_createDescriptionForReader(v109, v110, v111, v112, v113, 2, 0, v114) || !_createDummyReaderDescription(a5, &v161))
              {
                v115 = OUTLINED_FUNCTION_8_14();
                if (!_getSubImageGeometryForIndex(v115, v116, v117, 2, 0, 0, v118))
                {
                  v119 = FigCFDictionarySetInt();
                  if (v119)
                  {
                    v34 = v119;
                    goto LABEL_211;
                  }
                }

                v120 = OUTLINED_FUNCTION_8_14();
                if (!_getAuxiliaryImageTypeForIndex_2(v120, v121, v122, v123, v124, 0))
                {
                  v125 = OUTLINED_FUNCTION_8_14();
                  _copyAuxiliaryImageTypeInfo(v125, v126, v127, v128, 0, v129);
                  v130 = v161;
                  _copyColorInfoForImageTypeWithIndex(a1, 2, a3, v107, v161);
                  if (!CMPhotoCFDictionarySetInt(v130, @"AuxiliaryType", 0))
                  {
                    v131 = OUTLINED_FUNCTION_8_14();
                    if (_getAuxiliaryImageTypeForIndex_2(v131, v132, v133, v134, 0, v135) || !CMPhotoCFDictionarySetInt32(v130, @"AuxiliaryNativePixelFormat", 0))
                    {
                      v136 = FigPictureReaderGetFigBaseObject();
                      v137 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v137)
                      {
                        if (!v137(v136, v143, a5, &v162))
                        {
                          CFDictionarySetValue(v130, @"AuxiliaryTypeURN", v162);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          if (v161)
          {
            CFArrayAppendValue(a4, v161);
          }

          if (v162)
          {
            CFRelease(v162);
          }

          if (v160)
          {
            CFRelease(v160);
          }

          if (v161)
          {
            CFRelease(v161);
          }

          if (++v107 >= v163[0])
          {
            goto LABEL_208;
          }
        }
      }

      a4 = 0;
LABEL_208:
      _copyColorInfoForImageTypeWithIndex(a1, 0, a3, -1, Mutable);
      a6 = theArray;
LABEL_60:
      value[0] = 0;
      v162 = 0;
      v163[0] = 0;
      v160 = 0;
      v161 = 0;
      FigPictureReaderGetFigBaseObject();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v34 = 4294954514;
LABEL_108:
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (v163[0])
        {
          CFRelease(v163[0]);
        }

        if (v162)
        {
          CFRelease(v162);
        }

        if (v161)
        {
          CFRelease(v161);
        }

        if (v160)
        {
          CFRelease(v160);
        }

        if (!v34)
        {
          if (v155)
          {
            CFDictionarySetValue(Mutable, @"ExifPayloads", v155);
          }

          if (v154)
          {
            CFDictionarySetValue(Mutable, @"XMPPayloads", v154);
          }

          if (v153)
          {
            CFDictionarySetValue(Mutable, @"DebugPayloads", v153);
          }

          if (v152)
          {
            CFDictionarySetValue(Mutable, @"CustomMetadataPayloads", v152);
          }

          if (Count)
          {
            CFDictionarySetValue(Mutable, @"ThumbnailImages", Count);
          }

          if (a4)
          {
            CFDictionarySetValue(Mutable, @"AuxiliaryImages", a4);
          }

          if (a6)
          {
            CFDictionarySetValue(Mutable, @"AlternateImages", a6);
          }

          v34 = 0;
          *v144 = Mutable;
          Mutable = 0;
        }

        goto LABEL_76;
      }

      v74 = OUTLINED_FUNCTION_65_0();
      ClliDictionary = v75(v74);
      if (!ClliDictionary)
      {
        Extensions = CMFormatDescriptionGetExtensions(value[0]);
        if (!Extensions)
        {
LABEL_176:
          v34 = 0;
          goto LABEL_108;
        }

        v78 = Extensions;
        v79 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6960020]);
        if (v79)
        {
          ClliDictionary = CMPhotoCreateClliDictionary(v79, a5, v163);
          if (ClliDictionary)
          {
            goto LABEL_224;
          }

          CFDictionarySetValue(Mutable, @"ContentLightLevelInfo", v163[0]);
        }

        v80 = CFDictionaryGetValue(v78, *MEMORY[0x1E6960080]);
        if (v80)
        {
          ClliDictionary = CMPhotoCreateMdcvDictionary(v80, a5, &v162);
          if (ClliDictionary)
          {
            goto LABEL_224;
          }

          CFDictionarySetValue(Mutable, @"MasteringDisplayColorVolume", v162);
        }

        v81 = CFDictionaryGetValue(v78, *MEMORY[0x1E6960018]);
        if (!v81)
        {
          goto LABEL_72;
        }

        ClliDictionary = CMPhotoCreateCclvDictionary(v81, a5, &v161);
        if (!ClliDictionary)
        {
          CFDictionarySetValue(Mutable, @"ContentColorVolume", v161);
LABEL_72:
          v82 = CFDictionaryGetValue(v78, *MEMORY[0x1E695FFF0]);
          if (v82)
          {
            v34 = CMPhotoCreateAmveDictionary(v82, a5, &v160);
            if (!v34)
            {
              CFDictionarySetValue(Mutable, @"AmbientViewingEnvironment", v160);
            }

            goto LABEL_108;
          }

          goto LABEL_176;
        }
      }

LABEL_224:
      v34 = ClliDictionary;
      goto LABEL_108;
    }
  }

  v34 = AuxiliaryImageCount;
  a4 = 0;
LABEL_211:
  a6 = theArray;
LABEL_76:
  if (v156)
  {
    CFRelease(v156);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (Count)
  {
    CFRelease(Count);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  return v34;
}

uint64_t OUTLINED_FUNCTION_23_1@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

const void *OUTLINED_FUNCTION_23_3(void *key)
{
  v4 = *(v1 + 56);

  return CFDictionaryGetValue(v4, key);
}

void *OUTLINED_FUNCTION_23_5@<X0>(uint64_t a1@<X8>)
{

  return memcpy(&STACK[0x2A0], (a1 + 24), 0x168uLL);
}

uint64_t OUTLINED_FUNCTION_3_3(const __CFAllocator *a1, size_t a2, size_t a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{

  return CVPixelBufferCreate(a1, a2, a3, 0x72673366u, v6, a6);
}

uint64_t OUTLINED_FUNCTION_3_5(pthread_once_t *a1)
{

  return pthread_once(a1, _once_CMPhotoScaleAndRotateSessionGetDefault);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_3_9(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return CMPhotoDecompressionSessionCreateContainer(a1, a2, v5, 0, a5);
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = a2;
  v11 = a1 + 40;

  return _checkImageIndex(v11, &a10, 0);
}

uint64_t OUTLINED_FUNCTION_3_11(const void *a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, CVPixelBufferRef *a11)
{

  return CMPhotoSurfacePoolCreatePixelBuffer(a1, a2, a3, a4, 1, 0, 0, 0, a9, a10, a11);
}

void *OUTLINED_FUNCTION_3_15(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

size_t OUTLINED_FUNCTION_3_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  a15 = *v18;
  a16 = *(v18 + 16);

  return _encodePixelBufferForIndex(v22, v23, v17, v20, a5, v21, v19, v16, &a15, v24);
}

CFTypeID OUTLINED_FUNCTION_3_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_15()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  v3 = *(v1 - 112);

  return CMPhotoPixelBufferAttributesGetExtendedPixels(v3, 0, (v0 + 96), 0, (v0 + 104));
}

BOOL OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = v41;
  v44 = v42;

  return CGRectIsNull(*&v43);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, void **), uint64_t a7, void **a8, _BYTE *a9)
{

  return CMPhotoCodecSessionPool_CreateSession(v12, 0, v9, v10, v11, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, const UInt8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return _createDataWithPrefix(v6, a2, 0xE, v7, va);
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return FigByteStreamCreateWritableWithCFMutableData();
}

float OUTLINED_FUNCTION_15_10(double a1)
{
  v2 = a1;
  v3 = fmaxf(v2, 0.0);

  return exp2f(v3);
}

void CMPhotoDecompressionContainerExternalToInternalIndex(void *a1, uint64_t a2, CFIndex a3, const __CFDictionary *a4, uint64_t *a5, CFIndex *a6, const __CFNumber **a7)
{
  v33 = a3;
  if (a2 == -2)
  {
    a2 = a1[72];
  }

  v32 = a2;
  if ((a2 & 0x8000000000000000) == 0 && a2 < a1[74])
  {
    if (a1[69])
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex;
        v15 = CFGetTypeID(ValueAtIndex);
        if (v15 == CFNumberGetTypeID())
        {
          Size = CMPhotoCFNumberGetSize(v14);
          v14 = 0;
          v32 = Size;
LABEL_11:
          if (a3 == -1 && !FigCFDictionaryGetCFIndexIfPresent())
          {
            if (!v14)
            {
              v33 = 0;
              goto LABEL_61;
            }

            desc = 0;
            cf = 0;
            v38 = 0;
            v37 = 0;
            if (a4)
            {
              CFDictionaryGetValue(a4, @"kCMPhotoDecompressionOption_ForTranscode");
              v38 = FigCFEqual() != 0;
              if (FigCFDictionaryGetValue())
              {
                CMPhotoCFDictionaryGetIntIfPresent();
                CMPhotoCFDictionaryGetBooleanIfPresent();
              }
            }

            if (qword_1ED6FA670 != -1)
            {
              dispatch_once(&qword_1ED6FA670, &__block_literal_global_330);
            }

            if (qword_1ED6FA678 != -1)
            {
              dispatch_once(&qword_1ED6FA678, &__block_literal_global_333);
            }

            if (!v38 && CFArrayGetCount(v14) >= 1)
            {
              v18 = 0;
              v19 = a1 + 4;
              v20 = *MEMORY[0x1E695F1C0];
              v31 = @"urn:com:apple:photo:2020:aux:hdrgainmap";
              while (1)
              {
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                v36 = 0;
                if (!CMPhotoCFArrayGetSizeAtIndex(v14, v18, &v36))
                {
                  v23 = 4294950304;
                  goto LABEL_51;
                }

                v21 = *(*v19 + 472);
                if (!v21)
                {
LABEL_50:
                  v23 = 4294950302;
                  goto LABEL_51;
                }

                v22 = v21(a1, v36, &cf);
                if (v22)
                {
                  v23 = v22;
                  OUTLINED_FUNCTION_67_0();
                  if (!v24)
                  {
                    goto LABEL_51;
                  }

                  cf = CGColorSpaceCreateWithName(v20);
                }

                switch(v38)
                {
                  case 0:
                    v26 = *(*v19 + 40);
                    if (!v26)
                    {
                      goto LABEL_50;
                    }

                    FirstAuxiliaryOfTypeForInternalIndexWithOptions = v26(a1, v36, 0, &desc);
                    if (FirstAuxiliaryOfTypeForInternalIndexWithOptions)
                    {
                      goto LABEL_75;
                    }

                    MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
                    if (desc)
                    {
                      CFRelease(desc);
                      desc = 0;
                    }

                    if (MediaSubType != 1953325424)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_46;
                  case 1:
                  case 6:
                    if (!v37)
                    {
                      goto LABEL_46;
                    }

                    v35 = 0;
                    v34 = -1;
                    FirstAuxiliaryOfTypeForInternalIndexWithOptions = CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(a1, v36, 0, 4, @"urn:com:apple:photo:2020:aux:hdrgainmap", &v35, &v34);
                    if (FirstAuxiliaryOfTypeForInternalIndexWithOptions)
                    {
LABEL_75:
                      v23 = FirstAuxiliaryOfTypeForInternalIndexWithOptions;
                      goto LABEL_51;
                    }

                    if (v35 && !CGColorSpaceUsesITUR_2100TF(cf))
                    {
                      goto LABEL_48;
                    }

LABEL_46:
                    if (++v18 >= CFArrayGetCount(v14))
                    {
                      goto LABEL_47;
                    }

                    break;
                  case 2:
                    if (!CGColorSpaceUsesITUR_2100TF(cf) && !CGColorSpaceUsesExtendedRange(cf))
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_46;
                  default:
                    goto LABEL_46;
                }
              }
            }

LABEL_47:
            v18 = 0;
LABEL_48:
            v23 = 0;
            v33 = v18;
LABEL_51:
            if (desc)
            {
              CFRelease(desc);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v23)
            {
              goto LABEL_72;
            }
          }

          if (v14)
          {
            if (v33 >= CFArrayGetCount(v14))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_19();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32);
              goto LABEL_71;
            }

            if (!CMPhotoCFArrayGetSizeAtIndex(v14, v33, &v32))
            {
              goto LABEL_59;
            }
          }

          else if (v33)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_19();
            v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32);
            goto LABEL_72;
          }

LABEL_61:
          if (a5)
          {
            *a5 = v32;
          }

          if (a7)
          {
            *a7 = v14;
          }

          if (a6)
          {
            v23 = 0;
            *a6 = v33;
            goto LABEL_72;
          }

LABEL_71:
          v23 = 0;
          goto LABEL_72;
        }

        v17 = CFGetTypeID(v14);
        if (v17 == CFArrayGetTypeID())
        {
          goto LABEL_11;
        }
      }

LABEL_59:
      v23 = 4294950304;
LABEL_72:
      OUTLINED_FUNCTION_62(v23);
      return;
    }

    v14 = 0;
    goto LABEL_11;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_62("%s signalled err=%d at <>:%d");

  FigSignalErrorAtGM(v28);
}

const __CFNumber *CMPhotoCFNumberGetInt32(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _getImageCount(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = 1;
    if (*(a1 + 153))
    {
      v2 = 2;
    }

    *a2 = v2;
  }

  return 0;
}

uint64_t _getImageCount_0(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t _getImageCount_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  _getImageCount_cold_1();
  return v3;
}

uint64_t _getImageCount_3(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  result = DicomGetImageCount(*(a1 + 112), 0, &v4);
  *a2 = v4;
  return result;
}

uint64_t _copyGroupsDescriptionArray(_BYTE *a1, int a2, void *a3)
{
  CFGetAllocator(a1);
  if (!a3)
  {
    return 4294950306;
  }

  if (!a2 || !a1[153])
  {
    return 4294950303;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v7 = MutableCopy;
  OUTLINED_FUNCTION_53();
  v8 = FigCFDictionaryCreateMutableCopy();
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  OUTLINED_FUNCTION_53();
  v10 = FigCFArrayCreateMutableCopy();
  if (!v10)
  {
    CFRelease(v9);
LABEL_21:
    v14 = 4294950305;
LABEL_14:
    CFRelease(v7);
    return v14;
  }

  v11 = v10;
  appended = CMPhotoCFArrayAppendInt32(v10, 1);
  if (appended || (appended = CMPhotoCFArrayAppendInt32(v11, 0), appended) || (appended = CMPhotoCFDictionarySetInt32(v9, @"GroupType", 1634497650), appended) || (CFDictionarySetValue(v9, @"GroupPictureIndexList", v11), appended = CMPhotoCFDictionarySetInt32(v9, *MEMORY[0x1E6972290], 2), appended))
  {
    v14 = appended;
  }

  else
  {
    v13 = cmpweak_kFigPictureCollection_Group_LowestMemberIDKey();
    v14 = CMPhotoCFDictionarySetInt32(v9, v13, 1);
    if (!v14)
    {
      CFArrayAppendValue(v7, v9);
      *a3 = v7;
      v7 = 0;
    }
  }

  CFRelease(v11);
  CFRelease(v9);
  if (v7)
  {
    goto LABEL_14;
  }

  return v14;
}

uint64_t _copyGroupsDescriptionArray_0(void *a1, uint64_t a2, uint64_t a3)
{
  CFGetAllocator(a1);
  v8 = 0;
  if (!a3)
  {
    return 4294950306;
  }

  FigPictureCollectionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294950303;
  }

  v4 = OUTLINED_FUNCTION_111();
  if (v5(v4))
  {
    return 4294950303;
  }

  else
  {
    return 4294950303;
  }
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, a2, 5, 1uLL, a5);
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, a2, 3, 1uLL, a5);
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

uint64_t CMPhotoCFDictionarySetInt32(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr))
    {
      v6 = OUTLINED_FUNCTION_0_32();
      CFDictionarySetValue(v6, v7, v8);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerIsCodecAllowed(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  ContainerFormatString = CMPhotoGetContainerFormatString(*(a1 + 544));
  isCodecAllowedByDictionary = _isCodecAllowedByDictionary(*(a1 + 600), ContainerFormatString, v4, 0);
  v8 = _isCodecAllowedByDictionary(*(a1 + 608), ContainerFormatString, v4, 0);
  v9 = _isCodecAllowedByDictionary(*(a1 + 616), ContainerFormatString, v4, 1);
  if (a3)
  {
    if (isCodecAllowedByDictionary)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (!v9)
    {
      v11 = 0;
    }

    *a3 = v11;
  }

  return 0;
}

__CFString *CMPhotoGetContainerFormatString(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E77A1A40[a1];
  }
}

uint64_t _decodeImage(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9, char a10, CFTypeRef *a11)
{
  v14 = a4;
  if (a8)
  {
    v18 = a8;
  }

  else
  {
    v18 = a2;
  }

  v130 = 0;
  v128 = 0u;
  *v129 = 0u;
  v126 = 0u;
  *v127 = 0u;
  v125 = 0u;
  memset(v124, 0, sizeof(v124));
  *pixelFormat = 0u;
  v121 = 0;
  v122 = 0;
  cf = 0;
  v120 = 0;
  v118 = 0;
  v19 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a8 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a2 + 16), a8))
  {
LABEL_304:
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    WrappedPixelBufferForType = 4294950191;
    goto LABEL_17;
  }

  v117 = 0;
  IsCodecAllowed = CMPhotoDecompressionContainerIsCodecAllowed(a2, 1785750887, &v117);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  if (!v117)
  {
    _decodeImage_cold_6(value);
LABEL_303:
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    WrappedPixelBufferForType = LODWORD(value[0]);
    goto LABEL_17;
  }

  if (v14 == 2)
  {
    IsCodecAllowed = _parseMPOIfNeeded(a2 + 40);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }
  }

  v116 = 0uLL;
  _getImageSize(a2 + 40, v14, a7, a5, &v116, v21);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  if (!v14)
  {
    IsCodecAllowed = _parseImageSizeAndTypeIfNeeded(a2 + 40);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    v29 = 136;
    v30 = 128;
    goto LABEL_44;
  }

  if (v14 != 2)
  {
    if (v14 != 1)
    {
LABEL_16:
      v22 = 0;
      DictionaryRepresentation = 0;
      v24 = 0;
      v25 = 0;
      WrappedPixelBufferForType = 4294950306;
LABEL_17:
      CMPhotoUnifiedJPEGDecoderDestroy(v118);
      goto LABEL_18;
    }

    IsCodecAllowed = _parseExifIfNeeded(a2 + 40, 0);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    if (!*(a2 + 320))
    {
      goto LABEL_16;
    }

    v29 = 368;
    v30 = 344;
LABEL_44:
    v95 = *(a2 + v30);
    v28 = *(a2 + v29);
    goto LABEL_45;
  }

  value[0] = 0;
  IsCodecAllowed = _getAuxiliaryImageStorageForIndex(a2 + 40, a7, a5, value);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  v95 = *(value[0] + 4);
  v28 = *(value[0] + 19);
LABEL_45:
  v92 = v28;
  IsCodecAllowed = _parseImageSizeAndTypeIfNeeded(a2 + 40);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  IsCodecAllowed = _parseOptionsForJPEGDecoding(a2, a6, v116.n128_i64[0], v116.n128_i64[1], v14, *(a2 + 133), pixelFormat);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  if (a10 && LOBYTE(pixelFormat[0]))
  {
    _decodeImage_cold_5(value);
    goto LABEL_303;
  }

  if (v14 == 2 && BYTE1(v125))
  {
    IsCodecAllowed = _parseImageSizeAndTypeIfNeeded(a2 + 40);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    v70 = *(a2 + 112);
    if (v70 <= *(a2 + 120))
    {
      v70 = *(a2 + 120);
    }

    *(&v124[2] + 1) = v70;
    LOBYTE(v125) = 1;
  }

  if (a7 && !*v129)
  {
    *v129 = 1;
  }

  if (BYTE5(v124[0]))
  {
    *value = *(v124 + 8);
    v103 = *(&v124[1] + 8);
    IsCodecAllowed = CMPhotoGetTwoPassCropRects(pixelFormat[1], value, v116.n128_u64[0], v116.n128_u64[1], 0, 0);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }
  }

  if (!v14)
  {
    IsCodecAllowed = _parseImageSizeAndTypeIfNeeded(a2 + 40);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    *&v131[0] = 0;
    v32 = *(a2 + 64);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v33)
    {
      v34 = v33(v32, 0, v131);
      if (v34)
      {
        WrappedPixelBufferForType = v34;
      }

      else
      {
        v31 = *&v131[0];
        if ((*&v131[0] & 0x8000000000000000) == 0)
        {
          v89 = 0;
          v19 = MEMORY[0x1E695FF58];
          goto LABEL_68;
        }

        WrappedPixelBufferForType = 4294950190;
      }
    }

    else
    {
      WrappedPixelBufferForType = 4294954514;
    }

    v19 = MEMORY[0x1E695FF58];
    goto LABEL_112;
  }

  if (v14 == 1)
  {
    IsCodecAllowed = _parseExifIfNeeded(a2 + 40, 0);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    if (!*(a2 + 320))
    {
      WrappedPixelBufferForType = 4294950306;
      goto LABEL_112;
    }

    v31 = *(a2 + 360);
    v89 = *(a2 + 296) + *(a2 + 352);
  }

  else
  {
    value[0] = 0;
    IsCodecAllowed = _getAuxiliaryImageStorageForIndex(a2 + 40, a7, a5, value);
    if (IsCodecAllowed)
    {
      goto LABEL_233;
    }

    v31 = *(value[0] + 8);
    v89 = *(value[0] + 7);
  }

LABEL_68:
  v90 = v31;
  if (!BYTE7(v125))
  {
    goto LABEL_69;
  }

  IsCodecAllowed = _parseExifIfNeeded(a2 + 40, 0);
  if (IsCodecAllowed)
  {
LABEL_233:
    WrappedPixelBufferForType = IsCodecAllowed;
    goto LABEL_112;
  }

  if (*(a2 + 289))
  {
    v35 = *(a2 + 312);
    goto LABEL_70;
  }

LABEL_69:
  v35 = 1;
LABEL_70:
  v87 = v35;
  IsCodecAllowed = CMPhotoDecompressionSessionCopyScaler(*(a2 + 16), &v122);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  IsCodecAllowed = CMPhotoDecompressionSessionCopySurfacePool(*(a2 + 16), &v121);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  v114 = 0;
  v115 = 0;
  v113 = 0uLL;
  memset(v112, 0, sizeof(v112));
  v108 = *v127;
  v109 = v128;
  v110 = *v129;
  v111 = v130;
  v104 = v124[1];
  v105 = v124[2];
  v106 = v125;
  v107 = v126;
  *value = *pixelFormat;
  v103 = v124[0];
  IsCodecAllowed = _determineDecodeStrategy(a2, a8, value, v116.n128_u64[0], v116.n128_u64[1], v95, v92, v121, &v114, &v113, &v112[5], &v112[1], v112);
  if (IsCodecAllowed)
  {
    goto LABEL_233;
  }

  if (*(&v126 + 1))
  {
    value[0] = 0;
    value[1] = 0;
    CMPhotoGetPixelBufferCLAP(*(&v126 + 1), 0, 0, value, &value[1]);
    if (value[0] != *&v112[5] || value[1] != *&v112[13])
    {
      _decodeImage_cold_1(value, v131);
      v22 = 0;
      DictionaryRepresentation = 0;
      v24 = 0;
      v25 = 0;
      WrappedPixelBufferForType = LODWORD(v131[0]);
      goto LABEL_17;
    }
  }

  if (a8 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a2 + 16), a8))
  {
    goto LABEL_304;
  }

  if (BYTE5(v124[0]))
  {
    v100 = *(v124 + 8);
    v101 = *(&v124[1] + 8);
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v36 = LOBYTE(pixelFormat[0]);
  v96 = v18;
  v88 = a1;
  if (v14 != 1 && LOBYTE(pixelFormat[0]))
  {
    v37 = v121;
    v93 = v122;
    v38 = DWORD2(v125);
    v85 = *&v112[1];
    v86 = pixelFormat[1];
    v39 = *(a2 + 40);
    CPUCount = CMPhotoGetCPUCount();
    _dropPreparedDecoders(a2);
    if (CPUCount)
    {
      v41 = FigSimpleMutexLock();
      if (v41)
      {
        WrappedPixelBufferForType = v41;
      }

      else
      {
        if (*(a2 + 88) || (Mutable = CFArrayCreateMutable(v39, 0, 0), (*(a2 + 88) = Mutable) != 0))
        {
          v43 = *(a2 + 96);
          *value = v100;
          v103 = v101;
          Clone = CMPhotoUnifiedJPEGDecoderPrepare(v43, v37, v93, v38, v86, value, v85, v96);
          if (!Clone)
          {
            v45 = CPUCount;
            while (1)
            {
              value[0] = 0;
              Clone = CMPhotoUnifiedJPEGDecoderCreateClone(*(a2 + 96), v96, value);
              if (Clone)
              {
                break;
              }

              --v45;
              CFArrayAppendValue(*(a2 + 88), value[0]);
              if (!v45)
              {
                *(a2 + 80) = 1;
                FigSimpleMutexUnlock();
                goto LABEL_92;
              }
            }
          }

          WrappedPixelBufferForType = Clone;
        }

        else
        {
          WrappedPixelBufferForType = 4294950305;
        }

        FigSimpleMutexUnlock();
      }

      v19 = MEMORY[0x1E695FF58];
      _dropPreparedDecoders(a2);
      goto LABEL_112;
    }

LABEL_92:
    v36 = LOBYTE(pixelFormat[0]);
    v18 = v96;
    v19 = MEMORY[0x1E695FF58];
  }

  if (v36)
  {
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    WrappedPixelBufferForType = 0;
    goto LABEL_17;
  }

  if (v112[0])
  {
    v46 = 1;
  }

  else
  {
    v46 = *(&v126 + 1) == 0;
  }

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(&v126 + 1);
  }

  if (v14)
  {
    WrappedPixelBufferForType = CMPhotoUnifiedJPEGDecoderCreate(*(a2 + 16), *(a2 + 40), v116.n128_i64[0], v116.n128_i64[1], a3, v89, v90, a3, 5, &v118);
    if (!WrappedPixelBufferForType)
    {
      v48 = 0;
      v94 = 0;
      goto LABEL_118;
    }

LABEL_112:
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_17;
  }

  if (a10)
  {
    if (*(a2 + 80))
    {
      v49 = FigSimpleMutexLock();
      if (v49)
      {
        WrappedPixelBufferForType = v49;
      }

      else
      {
        v50 = *(a2 + 88);
        if (CFArrayGetCount(v50) <= 0)
        {
          _decodeImage_cold_2(value);
          WrappedPixelBufferForType = LODWORD(value[0]);
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v50, 0);
          CFArrayRemoveValueAtIndex(v50, 0);
          WrappedPixelBufferForType = 0;
          v118 = ValueAtIndex;
        }

        FigSimpleMutexUnlock();
        v18 = v96;
        v19 = MEMORY[0x1E695FF58];
      }

      v94 = WrappedPixelBufferForType == 0;
    }

    else
    {
      v94 = 0;
      WrappedPixelBufferForType = 0;
    }

    if (!v118)
    {
      WrappedPixelBufferForType = CMPhotoUnifiedJPEGDecoderCreate(*(a2 + 16), *(a2 + 40), *(a2 + 112), *(a2 + 120), *(a2 + 64), 0, 0, *(a2 + 56), *(a2 + 48), &v118);
      if (WrappedPixelBufferForType)
      {
        v25 = 0;
        v24 = 0;
        DictionaryRepresentation = 0;
        v22 = 0;
        if (!v94)
        {
          goto LABEL_17;
        }

        goto LABEL_271;
      }
    }

    v48 = 0;
  }

  else
  {
    v94 = 0;
    WrappedPixelBufferForType = 0;
    v118 = *(a2 + 96);
    v48 = 1;
  }

LABEL_118:
  v91 = v48;
  if (v14 == 2 || !v129[12])
  {
    if (v14 != 2)
    {
      if (!LOBYTE(pixelFormat[2]))
      {
        LODWORD(value[0]) = 0;
        v52 = 128;
        if (v14 == 1)
        {
          v52 = 344;
        }

        v53 = 136;
        if (v14 == 1)
        {
          v53 = 368;
        }

        YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(*(a2 + v52), *(a2 + v53), 1, 0, 0, 0, 1, value);
        if (YUVPixelFormatForParameters)
        {
          goto LABEL_307;
        }

        pixelFormat[1] = value[0];
      }

      goto LABEL_131;
    }

    value[0] = 0;
    YUVPixelFormatForParameters = _getAuxiliaryImageStorageForIndex(a2 + 40, a7, a5, value);
    if (YUVPixelFormatForParameters)
    {
      goto LABEL_307;
    }

    v72 = *(value[0] + 6);
    LODWORD(v131[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v73 = 1;
    if (v72 != 825306677 && v72 != 825437747)
    {
      v73 = v72 == 1932996149;
    }

    v74 = 1;
    if (v72 <= 1651926375)
    {
      if (v72 <= 1380410944)
      {
        if (v72 == 1278226534)
        {
          goto LABEL_293;
        }

        v75 = 1278226536;
      }

      else
      {
        if (v72 == 1380410945 || v72 == 1380411457)
        {
          goto LABEL_293;
        }

        v75 = 1647719528;
      }
    }

    else if (v72 > 1751410031)
    {
      if (v72 == 1751410032 || v72 == 1751411059)
      {
        goto LABEL_293;
      }

      v75 = 1751527984;
    }

    else
    {
      if (v72 == 1651926376 || v72 == 1717855600)
      {
        goto LABEL_293;
      }

      v75 = 1717856627;
    }

    if (v72 != v75)
    {
      v74 = 0;
    }

LABEL_293:
    if (LOBYTE(pixelFormat[2]))
    {
      if (LODWORD(v131[0]) != pixelFormat[1])
      {
        if (v73)
        {
          if (pixelFormat[1] != v72)
          {
LABEL_301:
            fig_log_get_emitter();
            WrappedPixelBufferForType = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, v83, v84);
            v22 = 0;
            DictionaryRepresentation = 0;
            v24 = 0;
            v25 = 0;
            goto LABEL_315;
          }
        }

        else if (v74 && !CMPhotoIsOutputFormatSupportedForNativeFloatingPoint(v72, pixelFormat[1]))
        {
          goto LABEL_301;
        }
      }
    }

    else
    {
      pixelFormat[1] = v72;
      LOBYTE(pixelFormat[2]) = 1;
    }

LABEL_131:
    *value = v100;
    v103 = v101;
    LOBYTE(v82) = BYTE1(pixelFormat[0]);
    YUVPixelFormatForParameters = CMPhotoUnifiedJPEGDecoderDecode(v118, v121, v122, DWORD2(v125), pixelFormat[1], BYTE1(v127[1]), value, *&v112[1], v82, v18, 0, v112[0], 0, v47, &v120);
    if (!YUVPixelFormatForParameters)
    {
      v25 = 0;
      if (v14 != 2 && *(a2 + 465))
      {
        v25 = CGColorSpaceCreateWithICCData(*(a2 + 472));
        if (!v25)
        {
          v22 = 0;
          DictionaryRepresentation = 0;
          v24 = 0;
          WrappedPixelBufferForType = 4294950305;
          goto LABEL_270;
        }

        CVBufferSetAttachment(v120, *MEMORY[0x1E6965CE8], v25, kCVAttachmentMode_ShouldPropagate);
      }

      CMPhotoAddDefault601709MatrixToBufferIfAllowed(v120, 1, 0);
      if (a8 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a2 + 16), a8))
      {
        v22 = 0;
        DictionaryRepresentation = 0;
        v24 = 0;
        goto LABEL_318;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v120);
      value[0] = 0;
      value[1] = 0;
      CMPhotoGetPixelBufferCLAP(v120, 0, 0, value, &value[1]);
      if (v114 != value[0] || v115 != value[1])
      {
        v112[0] = 1;
      }

      if (v14 == 2 && PixelFormatType != pixelFormat[1])
      {
        *&v131[0] = 0;
        v136[0] = 0;
        AuxiliaryImageStorageForIndex = _getAuxiliaryImageStorageForIndex(a2 + 40, a7, a5, v136);
        if (AuxiliaryImageStorageForIndex || (AuxiliaryImageStorageForIndex = CMPhotoCreateFractionalPixelBuffer(v120, v121, pixelFormat[1], BYTE1(v127[1]), *(v136[0] + 6), v131), AuxiliaryImageStorageForIndex))
        {
          WrappedPixelBufferForType = AuxiliaryImageStorageForIndex;
          v22 = 0;
          DictionaryRepresentation = 0;
          v24 = 0;
          goto LABEL_270;
        }

        if (v120)
        {
          CFRelease(v120);
        }

        v120 = *&v131[0];
        PixelFormatType = CVPixelBufferGetPixelFormatType(*&v131[0]);
      }

      if (!v112[0] && (!LOBYTE(pixelFormat[2]) || PixelFormatType == pixelFormat[1]) && !CMPhotoPixelBufferHasCLAP(v120))
      {
        v22 = 0;
        if (!*(&v126 + 1))
        {
          DictionaryRepresentation = 0;
          v24 = 0;
          goto LABEL_168;
        }

        DictionaryRepresentation = 0;
        v24 = 0;
        if (*(&v126 + 1) == v120)
        {
          goto LABEL_168;
        }
      }

      *&v131[0] = *(&v126 + 1);
      if (!CMPhotoPixelFormatContainsRGB(PixelFormatType) || CMPhotoPixelFormatContainsRGB(pixelFormat[1]))
      {
        v56 = 0;
LABEL_152:
        ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, BYTE1(pixelFormat[0]), BYTE2(v125), BYTE3(v125), BYTE4(v125));
        v24 = ScaleAndRotateOptionsWithHWIfNeeded;
        if (!ScaleAndRotateOptionsWithHWIfNeeded)
        {
          v22 = 0;
          DictionaryRepresentation = 0;
          WrappedPixelBufferForType = 4294950305;
          goto LABEL_315;
        }

        if (HIBYTE(pixelFormat[0]))
        {
          CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", HIBYTE(pixelFormat[0]));
        }

        CMPhotoCFDictionarySetBoolean(v24, @"DestinationBackedByIOSurface", BYTE1(v127[1]) == 0);
        CMPhotoCFDictionarySetInt(v24, @"SourceExifOrientation", v87);
        CMPhotoCFDictionarySetInt(v24, @"DestinationPixelFormat", pixelFormat[1]);
        CMPhotoCFDictionarySetBoolean(v24, @"ExactDimensions", 1);
        if (v56)
        {
          DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
          if (DictionaryRepresentation)
          {
            CFDictionarySetValue(v24, @"DestinationColorTripletDictionary", DictionaryRepresentation);
          }
        }

        else
        {
          DictionaryRepresentation = 0;
        }

        v19 = MEMORY[0x1E695FF58];
        v137.width = v113.u64[0];
        v137.height = v113.u64[1];
        v22 = CGSizeCreateDictionaryRepresentation(v137);
        if (v22)
        {
          CFDictionarySetValue(v24, @"DestinationSizeDictionary", v22);
        }

        v58 = CMPhotoScaleAndRotateSessionTransformImage(v122, v120, v24, v131);
        if (v58)
        {
          WrappedPixelBufferForType = v58;
          goto LABEL_315;
        }

        if (*(&v126 + 1) && *&v131[0])
        {
          CFRetain(*&v131[0]);
        }

        if (v120)
        {
          CFRelease(v120);
        }

        v120 = *&v131[0];
LABEL_168:
        WrappedPixelBufferForType = 0;
        if (!a8)
        {
          goto LABEL_170;
        }

LABEL_169:
        if (!CMPhotoDecompressionSessionAsyncRequestCancelled(*(a2 + 16), a8))
        {
          goto LABEL_170;
        }

LABEL_318:
        WrappedPixelBufferForType = 4294950191;
        goto LABEL_270;
      }

      v56 = 0;
      if (pixelFormat[1] <= 1278226735)
      {
        if (pixelFormat[1] - 1278226488 <= 0x30 && ((1 << (LOBYTE(pixelFormat[1]) - 56)) & 0x1400000000001) != 0)
        {
          goto LABEL_152;
        }
      }

      else if (pixelFormat[1] - 1278226736 <= 6 && ((1 << (LOBYTE(pixelFormat[1]) - 48)) & 0x45) != 0 || pixelFormat[1] == 1717855600 || pixelFormat[1] == 1751410032)
      {
        goto LABEL_152;
      }

      v56 = pixelFormat[1] != 1751411059 && pixelFormat[1] != 1717856627;
      goto LABEL_152;
    }

LABEL_307:
    WrappedPixelBufferForType = YUVPixelFormatForParameters;
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_270;
  }

  if (*v129 != 6)
  {
    _decodeImage_cold_3(value);
    v22 = 0;
    DictionaryRepresentation = 0;
    v24 = 0;
    v25 = 0;
    WrappedPixelBufferForType = LODWORD(value[0]);
    goto LABEL_270;
  }

  v22 = 0;
  DictionaryRepresentation = 0;
  v24 = 0;
  v25 = 0;
  if (a8)
  {
    goto LABEL_169;
  }

LABEL_170:
  if (v14 == 2)
  {
    goto LABEL_261;
  }

  v59 = *v129;
  v99 = 0;
  v98 = -1;
  FirstAuxiliaryOfTypeForInternalIndexWithOptions = CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(a2, 0, 0, 4, @"urn:com:apple:photo:2020:aux:hdrgainmap", &v99, &v98);
  if (FirstAuxiliaryOfTypeForInternalIndexWithOptions)
  {
    WrappedPixelBufferForType = FirstAuxiliaryOfTypeForInternalIndexWithOptions;
    goto LABEL_315;
  }

  if (a7)
  {
    v99 = 0;
    v61 = 1;
  }

  else
  {
    v61 = v99 == 0;
    if (v99)
    {
      goto LABEL_177;
    }
  }

  if (v129[4])
  {
    v129[4] = 0;
  }

LABEL_177:
  if ((v59 & 0xFFFFFFFD) != 0)
  {
    if (!a7)
    {
      if (!v61)
      {
        CMPhotoDecompressionContainerCreateMeteorConstituentsForInternalIndex(a2, 0, v98, pixelFormat, v120, &cf);
      }

      goto LABEL_250;
    }

    v62 = v120;
    v135 = 0;
    v136[0] = 0;
    v133 = 0;
    v134 = 0;
    if (!*(a2 + 153))
    {
      goto LABEL_244;
    }

    v63 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v63)
    {
      goto LABEL_240;
    }

    *value = *(v124 + 8);
    v103 = *(&v124[1] + 8);
    if (CMPhotoDecompressionContainerCreateCorrespondingDecodeOptionsForInternalIndexAuxImage(a2, 1, -128, BYTE5(v124[0]), value, BYTE7(v125), 1, BYTE1(v127[1]), v136))
    {
      goto LABEL_240;
    }

    if (_createAuxiliaryImageForIndex_0(a2, 1, -128, v136[0], 2, &v135, v64, v65))
    {
      goto LABEL_240;
    }

    v132 = 0;
    if (_getAuxiliaryImageStorageForIndex(a2 + 40, 1, -128, &v132))
    {
      goto LABEL_240;
    }

    v66 = *(v132 + 96);
    if (v66)
    {
      v134 = CFRetain(v66);
      if (!v62)
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (CMPhotoGetChromaSubsamplingFromPixelFormat(*(v132 + 24)) == 6)
      {
        v67 = 1;
      }

      else
      {
        v67 = 3;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      *value = 0u;
      if (CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(*(v132 + 32), v67, value))
      {
        goto LABEL_240;
      }

      v131[2] = v104;
      v131[3] = v105;
      v131[4] = v106;
      v131[0] = *value;
      v131[1] = v103;
      if (CMPhotoCreateFlexRangeMetadataDictionaryFromParsedMetadata(v131, &v134))
      {
        goto LABEL_240;
      }

      if (!v62)
      {
LABEL_191:
        FigCFDictionarySetValue();
        LODWORD(value[0]) = 1;
        if (!_getAuxiliaryImageGeometryForIndex_0(a2, 1, -128, v68, 0, 0, value, v69) && FigCFDictionarySetInt())
        {
          goto LABEL_240;
        }

        FigCFDictionarySetValue();
        if (v127[0])
        {
          goto LABEL_194;
        }

        v81 = _copyColorSpaceForIndex(a2, 1, &v133);
        if (v81 && v81 != -16993)
        {
          goto LABEL_240;
        }

        if (v133)
        {
LABEL_194:
          FigCFDictionarySetValue();
        }

        cf = v63;
        v63 = 0;
LABEL_240:
        if (v133)
        {
          CFRelease(v133);
        }

        if (v63)
        {
          CFRelease(v63);
        }

LABEL_244:
        if (v134)
        {
          CFRelease(v134);
        }

        LODWORD(v18) = v96;
        if (v135)
        {
          CFRelease(v135);
        }

        if (v136[0])
        {
          CFRelease(v136[0]);
        }

        goto LABEL_250;
      }
    }

    if (!_decodeImage_cold_4(v63, v62, v131))
    {
      goto LABEL_240;
    }

    goto LABEL_191;
  }

LABEL_250:
  if (!cf || v59 == 6)
  {
    if (v59 != 6)
    {
      v78 = CMPhotoDecompressionContainerCheckHDROutputMode(v120, *v129);
      if (v78 != -16994)
      {
        WrappedPixelBufferForType = v78;
        if (v78)
        {
          goto LABEL_315;
        }
      }
    }
  }

  else
  {
    value[0] = 0;
    OutputFromConstituents = CMPhotoGainMapCreateOutputFromConstituents(v122, v121, BYTE1(v127[1]), v127[0], v18, cf, *v129, v129[4], *&v129[8], v129[5], v129[6], v129[7], v130, value, 0);
    if (OutputFromConstituents != -16994)
    {
      WrappedPixelBufferForType = OutputFromConstituents;
      if (OutputFromConstituents)
      {
        goto LABEL_315;
      }

      if (v120)
      {
        CFRelease(v120);
      }

      v120 = value[0];
    }
  }

  WrappedPixelBufferForType = 0;
LABEL_261:
  if (!a11)
  {
    goto LABEL_315;
  }

  if (a9 == 5)
  {
    if (cf)
    {
      *a11 = CFRetain(cf);
      goto LABEL_268;
    }

    WrappedPixelBufferForType = 4294950304;
LABEL_315:
    v19 = MEMORY[0x1E695FF58];
    goto LABEL_270;
  }

  v79 = v120;
  if (v127[0])
  {
    CMPhotoRemoveColorPropertiesFromBufferExcludingMatrix(v120);
    CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v127[0], 0, 0, 0, v120);
    v79 = v120;
  }

  WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v88, v79, LOBYTE(v127[1]), a9, a11);
  if (WrappedPixelBufferForType)
  {
    goto LABEL_315;
  }

LABEL_268:
  v19 = MEMORY[0x1E695FF58];
  if (a8 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a2 + 16), a8))
  {
    goto LABEL_318;
  }

LABEL_270:
  if (v94)
  {
LABEL_271:
    v80 = v118;
    if (v118 && *(a2 + 80) && !FigSimpleMutexLock())
    {
      CFArrayAppendValue(*(a2 + 88), v80);
      FigSimpleMutexUnlock();
      v80 = 0;
    }

    CMPhotoUnifiedJPEGDecoderDestroy(v80);
    v118 = 0;
    v19 = MEMORY[0x1E695FF58];
    goto LABEL_18;
  }

  if ((v91 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(v121, 0);
  if (v121)
  {
    CFRelease(v121);
  }

  if (*v19 == 1)
  {
    kdebug_trace();
  }

  return WrappedPixelBufferForType;
}

uint64_t _decodeImage_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CGImageRef *a7)
{
  v9 = a5;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    OUTLINED_FUNCTION_0_6(822280285);
  }

  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    IsCodecAllowed = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_106;
  }

  if (a4 && OUTLINED_FUNCTION_10_12())
  {
    goto LABEL_100;
  }

  bzero(v62, 0xF8uLL);
  IsCodecAllowed = _determineDecodeStrategy_0(a1, a3, *(a1 + 88), *(a1 + 92), v62);
  if (IsCodecAllowed)
  {
    goto LABEL_106;
  }

  if (a6 && v62[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    IsCodecAllowed = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_106;
  }

  if (a4 && OUTLINED_FUNCTION_10_12())
  {
    goto LABEL_100;
  }

  v61 = 0;
  IsCodecAllowed = CMPhotoDecompressionContainerIsCodecAllowed(a1, 1786276963, &v61);
  if (IsCodecAllowed)
  {
LABEL_106:
    v21 = IsCodecAllowed;
    goto LABEL_107;
  }

  if (!v61)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    IsCodecAllowed = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_106;
  }

  if (pixelBuffer)
  {
    v59 = 0;
    v60 = 0;
    CMPhotoGetPixelBufferCLAP(pixelBuffer, 0, 0, &v59, &v60);
    v15 = v59 == v80 && v60 == v81;
    if (!v15)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      IsCodecAllowed = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_106;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (PixelFormatType != v74)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
      v21 = 0;
      goto LABEL_107;
    }
  }

  if (v77 | v75)
  {
    v17 = 1;
  }

  else
  {
    v17 = v76 != 0;
    if (!v76 && pixelBuffer)
    {
      v20 = CFRetain(pixelBuffer);
      v17 = 0;
      v83 = v20;
      goto LABEL_32;
    }
  }

  IsCodecAllowed = CMPhotoDecompressionSessionCopySurfacePool(*(a1 + 16), &v85);
  if (IsCodecAllowed)
  {
    goto LABEL_106;
  }

  if (v69)
  {
    v18 = CFGetAllocator(a1);
    CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v18, v73, v70, v71, 1, 1, 0, 0, &v83, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    v19 = CMPhotoSurfacePoolCreatePixelBuffer(v85, v73, v70, v71, 1, 1uLL, 1uLL, 1, 0, 0, &v83);
  }

  v21 = v19;
  if (v19)
  {
    goto LABEL_107;
  }

  v20 = v83;
LABEL_32:
  v22 = *(a1 + 288);
  if (v22)
  {
    CVBufferSetAttachment(v20, *MEMORY[0x1E6965CE8], v22, kCVAttachmentMode_ShouldPropagate);
    v20 = v83;
  }

  v23 = *(a1 + 312);
  if (v23)
  {
    CVBufferSetAttachment(v20, *MEMORY[0x1E6965F30], v23, kCVAttachmentMode_ShouldPropagate);
    v20 = v83;
  }

  v24 = *(a1 + 304);
  if (v24)
  {
    CVBufferSetAttachment(v20, *MEMORY[0x1E6965D88], v24, kCVAttachmentMode_ShouldPropagate);
    v20 = v83;
  }

  CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(v20, *(a1 + 144) == 0, 0);
  IsCodecAllowed = CVPixelBufferLockBaseAddress(v83, 0);
  if (IsCodecAllowed)
  {
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_0_6((v25 + 8));
  }

  v26 = _createPreparedJXLDecoder(a1, 4352, v70, v71, &v87, &v86);
  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_0_6((v27 + 9));
    OUTLINED_FUNCTION_7_0();
    if (v15)
    {
      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_0_6((v28 + 4));
    }
  }

  if (v26 == 256)
  {
    v41 = _configureJXLColor(*(a1 + 40), v87, *(a1 + 120), 0, 0, 0);
    if (v41)
    {
      v21 = v41;
      goto LABEL_99;
    }

    v26 = JxlDecoderProcessInput();
  }

  if (v26 != 5)
  {
    goto LABEL_98;
  }

  CVPixelBufferGetBytesPerRow(v83);
  CVPixelBufferGetBaseAddress(v83);
  if (JxlDecoderSetImageOutCallback() || JxlDecoderSetImageOutBitDepth())
  {
    goto LABEL_98;
  }

  v29 = JxlDecoderProcessInput();
  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_0_6((v30 + 5));
  }

  if ((v29 & 0xFFFFEFFF) != 0)
  {
LABEL_98:
    v21 = 4294950194;
LABEL_99:
    CVPixelBufferUnlockBaseAddress(v83, 0);
LABEL_107:
    v35 = 0;
    DictionaryRepresentation = 0;
    v37 = 0;
    goto LABEL_78;
  }

  CVPixelBufferUnlockBaseAddress(v83, 0);
  if (a4 && OUTLINED_FUNCTION_10_12())
  {
LABEL_100:
    v35 = 0;
    DictionaryRepresentation = 0;
    v37 = 0;
    goto LABEL_101;
  }

  if (!v17)
  {
    v37 = 0;
    DictionaryRepresentation = 0;
    v35 = 0;
    goto LABEL_73;
  }

  IsCodecAllowed = CMPhotoDecompressionSessionCopyScaler(*(a1 + 16), &v84);
  if (IsCodecAllowed)
  {
    goto LABEL_106;
  }

  if (v63)
  {
    CMPhotoCFDictionarySetBoolean(0, @"PreferLowMemory", v63);
  }

  if (pixelBuffer)
  {
    v82 = CFRetain(pixelBuffer);
  }

  DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(v83, v74);
  v33 = v32;
  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v62[1], v64, v65, v66);
  v35 = ScaleAndRotateOptionsWithHWIfNeeded;
  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationBackedByIOSurface", v69 == 0);
    CMPhotoCFDictionarySetInt(v35, @"SourceExifOrientation", v72);
    CMPhotoCFDictionarySetInt(v35, @"DestinationPixelFormat", v74);
    CMPhotoCFDictionarySetBoolean(v35, @"ExactDimensions", 1);
    DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(DefaultTripletsForTransfer, v33);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v35, @"DestinationColorTripletDictionary", DictionaryRepresentation);
    }

    v88.width = v78;
    v88.height = v79;
    v37 = CGSizeCreateDictionaryRepresentation(v88);
    if (v37)
    {
      CFDictionarySetValue(v35, @"DestinationSizeDictionary", v37);
    }

    WrappedPixelBufferForType = CMPhotoScaleAndRotateSessionTransformImage(v84, v83, v35, &v82);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_77;
    }

    if (v83)
    {
      CFRelease(v83);
    }

    v39 = v82;
    v82 = 0;
    v83 = v39;
LABEL_73:
    if (!a7)
    {
      v21 = 0;
      goto LABEL_78;
    }

    if (!a4 || !OUTLINED_FUNCTION_10_12())
    {
      WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(*(a1 + 40), v83, v68, v9, a7);
LABEL_77:
      v21 = WrappedPixelBufferForType;
      goto LABEL_78;
    }

LABEL_101:
    v21 = 4294950191;
    goto LABEL_78;
  }

  DictionaryRepresentation = 0;
  v37 = 0;
  v21 = 4294950305;
LABEL_78:
  JxlThreadParallelRunnerDestroy();
  JxlDecoderDestroy();
  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    OUTLINED_FUNCTION_8_10();
    kdebug_trace();
  }

  return v21;
}

void _decodeImage_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  OUTLINED_FUNCTION_122();
  v86 = v9;
  v87 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v63 = v21;
  v23 = v22;
  v84 = 0;
  v85[0] = 0;
  Mutable = 0;
  memset(&v82[2], 0, 80);
  bzero(v67, 0x140uLL);
  if (v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = v23;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }
  }

  v82[0] = v16;
  v82[1] = v23;
  if (v16 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(v23 + 16), v16))
  {
    goto LABEL_61;
  }

  _determineDecodeStrategy_1();
  if (v26)
  {
    goto LABEL_61;
  }

  if (v14 == 1 && v74 || ((v27 = v76, v14 == 5) ? (v28 = v76 == 6) : (v28 = 1), !v28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_16();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_61;
  }

  if (v18 == -1)
  {
    v29 = 0;
    v30 = 0;
    v66 = 0;
    v65 = -1;
  }

  else
  {
    if (_getEncoderNativePixelFormatForIndex(v82[1], v18, v68))
    {
      v68[0] = 0;
    }

    __dst[0] = 0;
    if (CMPhotoPictureReaderGetItemTypeFromReader(v63, __dst))
    {
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_7_13();
    if (v50)
    {
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    if (v50 && FigCFDictionaryGetValue() && !v76)
    {
      LODWORD(v76) = 1;
    }

    v66 = 0;
    v65 = -1;
    if (v12)
    {
      v29 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_44();
      if (CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(v51, v52, v53, 4, v54, v55, v56))
      {
        goto LABEL_61;
      }

      v29 = v66;
      if (!v66)
      {
        v29 = *(v23 + 28);
        if (*(v23 + 28))
        {
          OUTLINED_FUNCTION_44();
          if (CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(v57, v58, v59, 4, v60, v61, v62))
          {
            goto LABEL_61;
          }

          v29 = v66;
        }
      }
    }
  }

  v31 = v76;
  v82[7] = v76;
  v25.i32[0] = HIDWORD(v76);
  LODWORD(v82[8]) = v77;
  BYTE4(v82[8]) = v78;
  *(&v82[8] + 5) = v79;
  v82[10] = v72;
  LODWORD(v82[11]) = v68[0];
  if (v30 && v29)
  {
    v29 = 0;
    v66 = 0;
  }

  if (!v29 && vmovl_u8(v25).u8[0])
  {
    BYTE4(v82[7]) = 0;
  }

  v82[9] = v80;
  LOBYTE(v82[6]) = v67[1];
  BYTE2(v82[6]) = v69;
  *(&v82[6] + 3) = v70;
  LOBYTE(v82[5]) = v81;
  HIDWORD(v82[5]) = v71;
  BYTE1(v82[6]) = v74;
  BYTE5(v82[6]) = v75;
  if (CMPhotoDecompressionSessionCopyScaler(*(v23 + 16), &v82[4]))
  {
    goto LABEL_61;
  }

  if (CMPhotoDecompressionSessionCopySurfacePool(*(v23 + 16), &v82[3]))
  {
    goto LABEL_61;
  }

  if (CMPhotoDecompressionSessionGetPictureCollectionCodecPool(*(v23 + 16), &v82[2]))
  {
    goto LABEL_61;
  }

  memcpy(__dst, v82, sizeof(__dst));
  _applyDecodeStrategy(__dst, v67, v63, v20, v12, &Mutable, v85);
  if (v32 || v82[0] && CMPhotoDecompressionSessionAsyncRequestCancelled(*(v82[1] + 16), v82[0]))
  {
    goto LABEL_61;
  }

  v34 = v27 == 6 || (v31 & 0xFFFFFFFD) != 0;
  if (v66 && v34)
  {
    v35 = OUTLINED_FUNCTION_73_0();
    CMPhotoDecompressionContainerCreateMeteorConstituentsForInternalIndex(v35, v36, v37, v38, v39, v40);
  }

  if (!Mutable || v27 == 6)
  {
    if (v27 != 6)
    {
      v43 = CMPhotoDecompressionContainerCheckHDROutputMode(v85[0], v82[7]);
      if (v43 != -16994)
      {
        if (v43)
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v41 = CMPhotoGainMapCreateOutputFromConstituents(v82[4], v82[3], BYTE1(v82[6]), v82[10], v24, Mutable, v82[7], BYTE4(v82[7]), *&v82[8], SBYTE5(v82[7]), SBYTE6(v82[7]), SHIBYTE(v82[7]), v82[9], &v84, 0);
    if (v41 != -16994)
    {
      if (v41)
      {
        goto LABEL_61;
      }

      if (v85[0])
      {
        CFRelease(v85[0]);
      }

      v42 = v84;
      v84 = 0;
      v85[0] = v42;
    }
  }

  if (!Mutable && !(v66 | v30) && v27 == 6)
  {
    __dst[0] = 1;
    _getImageOrientation(v23, v63, 0, __dst);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_63;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetInt();
  }

  if (!v82[0] || !CMPhotoDecompressionSessionAsyncRequestCancelled(*(v82[1] + 16), v82[0]))
  {
    if (v14 == 5)
    {
      if (!Mutable)
      {
        goto LABEL_63;
      }

      *a9 = CFRetain(Mutable);
    }

    else
    {
      v44 = v85[0];
      if (v72)
      {
        CMPhotoRemoveColorPropertiesFromBufferExcludingMatrix(v85[0]);
        OUTLINED_FUNCTION_10_0();
        CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v45, v46, v47, v48, v44);
      }

      v49 = CFGetAllocator(v23);
      CMPhotoCreateWrappedPixelBufferForType(v49, v44, v73, v14, a9);
    }
  }

LABEL_61:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_63:
  if (v84)
  {
    CFRelease(v84);
  }

  if (v85[0])
  {
    CFRelease(v85[0]);
  }

  if (v82[4])
  {
    CFRelease(v82[4]);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(v82[3], 0);
  if (v82[3])
  {
    CFRelease(v82[3]);
  }

  OUTLINED_FUNCTION_109();
  if (v28)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
    OUTLINED_FUNCTION_109();
    if (v28)
    {
      kdebug_trace();
    }
  }

  OUTLINED_FUNCTION_121();
}

const void *OUTLINED_FUNCTION_27_6()
{

  return CFDictionaryGetValue(v0, v1);
}

CGImageRef OUTLINED_FUNCTION_55(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const CGFloat *a9, _BOOL8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, size_t a19, size_t a20)
{

  return CGImageCreate(a19, a20, v20, v25, v22, v21, v23, v24, a9, a10, SHIDWORD(a10));
}

uint64_t CMPhotoDecompressionContainerCopyTranslatedOptionsForAlternates(void *cf, uint64_t a2, const __CFDictionary *a3, int a4, void *a5)
{
  v5 = 4294950306;
  if (cf && a5)
  {
    v7 = a3;
    if (!cf[69])
    {
      if (!a3)
      {
        v9 = 0;
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    if (a4)
    {
      CFGetAllocator(cf);
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        return 4294950305;
      }

      v7 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"kCMPhotoDecompressionOption_ForTranscode", *MEMORY[0x1E695E4D0]);
      v9 = v7;
    }

    else
    {
      v9 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    v10 = CFDictionaryContainsKey(v7, @"AlternateIndex");
    v11 = OUTLINED_FUNCTION_72();
    v13 = CFDictionaryContainsKey(v11, v12);
    if (v10 || !v13 || (v30 = -1, v31 = -1, OUTLINED_FUNCTION_21(), CMPhotoDecompressionContainerExternalToInternalIndex(v14, v15, v16, v17, v18, v19, v20), !v21) && (OUTLINED_FUNCTION_21(), CMPhotoDecompressionContainerExternalToInternalIndex(v22, v23, v24, v25, v26, v27, v28), !v21))
    {
      if (!v9)
      {
LABEL_21:
        v9 = CFRetain(v7);
      }

LABEL_13:
      v5 = 0;
      *a5 = v9;
      return v5;
    }

    v5 = v21;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return v5;
}

uint64_t _parseExifIfNeeded(uint64_t a1, int a2)
{
  v25 = 0;
  if (!a2)
  {
    v4 = FigSimpleMutexLock();
    if (v4)
    {
      v5 = v4;
      goto LABEL_7;
    }
  }

  if (*(a1 + 248))
  {
    goto LABEL_4;
  }

  *(a1 + 248) = 1;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  *(a1 + 272) = 1;
  ExifLocationFromJFIFByteStream = CMPhotoGetExifLocationFromJFIFByteStream();
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_25;
  }

  v8 = v24;
  *(a1 + 249) = v24;
  if (!v8)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v9 = v23;
  v10 = v21;
  *(a1 + 256) = v23;
  *(a1 + 264) = v10;
  v11 = *(a1 + 24);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    v5 = 4294954514;
    goto LABEL_5;
  }

  ExifLocationFromJFIFByteStream = v12(v11, v10, v9, &v25, &v20);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_25;
  }

  if (v20 == v21)
  {
    if (v22 - v23 >= 0)
    {
      v13 = (a1 + 272);
      ExifLocationFromJFIFByteStream = CMPhotoParseExifFromTIFF(v25, v22 - v23, v20 - (v22 - v23), 0, a1 + 272, &v19, &v18, &v17, (a1 + 276));
      if (!ExifLocationFromJFIFByteStream)
      {
        if ((*v13 - 9) <= 0xFFFFFFF7)
        {
          *v13 = 1;
        }

        v14 = v19;
        v15 = v17;
        if (v19 && !v17 || (*(a1 + 280) = v19, v14) && (*(a1 + 312) = v18, *(a1 + 320) = v15, CMPhotoGetImageInformationFromJFIFByteStream(), v16))
        {
          *(a1 + 280) = 0;
        }

        goto LABEL_4;
      }

LABEL_25:
      v5 = ExifLocationFromJFIFByteStream;
      goto LABEL_5;
    }

    v5 = 4294950190;
  }

  else
  {
    v5 = 4294950194;
  }

LABEL_5:
  if (!a2)
  {
    FigSimpleMutexUnlock();
  }

LABEL_7:
  if (v25)
  {
    CFRelease(v25);
  }

  return v5;
}

uint64_t CMPhotoGetExifLocationFromJFIFByteStream()
{
  OUTLINED_FUNCTION_11_17();
  v4 = v3;
  v22 = 6;
  v23 = "Exif";
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2800000000;
  v16 = 0;
  v17 = 0;
  OUTLINED_FUNCTION_5_22();
  v11[1] = 0x40000000;
  v11[2] = __CMPhotoGetExifLocationFromJFIFByteStream_block_invoke;
  v11[3] = &unk_1E77A3560;
  v11[4] = v6;
  v11[5] = v5;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v7, v8, 1u, &v12, &v23, &v22, v11);
  if (v4)
  {
    *v4 = *(v19 + 24);
  }

  if (v2)
  {
    *v2 = v14[3];
  }

  if (v1)
  {
    *v1 = v14[3] + 6;
  }

  if (v0)
  {
    *v0 = v14[4];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v18, 8);
  return MarkersWithSignaturesInJFIFByteStreamWithHandler;
}

uint64_t __CMPhotoGetExifLocationFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 4294950191;
}

uint64_t CMPhotoParseExifFromTIFF(OpaqueCMBlockBuffer *a1, size_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, char *a9)
{
  v13 = a8;
  v15 = a6;
  v16 = a2;
  v17 = a9;
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_88;
  }

  v12 = a1;
  v62 = (a4 | a5) != 0;
  v64 = (a6 | a7 | a8) != 0;
  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  DataLength = a3 + a2;
  if (a3 + a2 >= CMBlockBufferGetDataLength(a1))
  {
    DataLength = CMBlockBufferGetDataLength(v12);
  }

  if (!DataLength)
  {
    v11 = 4294950194;
    goto LABEL_89;
  }

  v19 = DataLength >= v16;
  DataLength -= v16;
  if (!v19)
  {
LABEL_88:
    v11 = 4294950306;
LABEL_89:
    OUTLINED_FUNCTION_0_16();
    v32 = 1;
    goto LABEL_62;
  }

  v65 = v16;
  if (!DataLength)
  {
    v21 = 0;
    goto LABEL_11;
  }

  DataPointer = CMBlockBufferGetDataPointer(v12, v16, &lengthAtOffsetOut, 0, dataPointerOut);
  if (DataPointer)
  {
    v11 = DataPointer;
    goto LABEL_89;
  }

  if (lengthAtOffsetOut == DataLength)
  {
    v21 = dataPointerOut[0];
LABEL_11:
    v22 = 0;
LABEL_20:
    if (DataLength == a3)
    {
      if (a3 >= 8)
      {
        v29 = *v21;
        if (v29 == 73)
        {
          if (v21[1] == 73 && *(v21 + 1) == 42)
          {
            v31 = 0;
            v30 = *(v21 + 1);
            v10 = 1;
            goto LABEL_30;
          }
        }

        else if (v29 == 77 && v21[1] == 77 && *(v21 + 1) == 10752)
        {
          v10 = 0;
          v30 = bswap32(*(v21 + 1));
          v31 = 1;
LABEL_30:
          DataLength = 0;
          v32 = 1;
          if (v30 >= 8)
          {
            v61 = v13;
            v33 = v30;
            if (v30)
            {
              OUTLINED_FUNCTION_13_9();
              goto LABEL_100;
            }

            if (v30 + 2 <= a3)
            {
              v34 = &v21[v30];
              v35 = bswap32(*v34) >> 16;
              if (v10)
              {
                v36 = *v34;
              }

              else
              {
                v36 = v35;
              }

              if (((v17 == 0) & ~v62) != 0)
              {
                v37 = 0;
                v38 = 0;
                v39 = 0;
              }

              else
              {
                *dataPointerOut = xmmword_1A5ABAA30;
                v71 = unk_1A5ABAA40;
                v63 = v22;
                v52 = v31;
                _readExifDirectory(&v21[v30], a3 - v30, v31, dataPointerOut, 2, 0);
                v31 = v52;
                v22 = v63;
                v39 = BYTE4(dataPointerOut[1]) != 0;
                if (BYTE4(dataPointerOut[1]))
                {
                  v32 = LOWORD(dataPointerOut[1]);
                }

                else
                {
                  v32 = 1;
                }

                v37 = BYTE12(v71) != 0;
                if (BYTE12(v71))
                {
                  v38 = DWORD2(v71);
                }

                else
                {
                  v38 = 0;
                }
              }

              v59 = v31;
              if (v64)
              {
                *dataPointerOut = xmmword_1A5ABAA50;
                v71 = unk_1A5ABAA60;
                if (v33 + 12 * v36 + 6 > a3 || ((LODWORD(v40) = *&v34[12 * v36 + 2], v41 = bswap32(v40), !v10) ? (v40 = v41) : (v40 = v40), v40 >= 8 ? (v42 = (v40 & 1) == 0) : (v42 = 0), !v42))
                {
                  v49 = 0;
                  goto LABEL_97;
                }

                LODWORD(lengthAtOffsetOut) = 0;
                v43 = v22;
                v44 = v39;
                v45 = v32;
                v46 = v38;
                v47 = v37;
                _readExifDirectory(&v21[v40], a3 - v40, v31, dataPointerOut, 2, &lengthAtOffsetOut);
                v37 = v47;
                v38 = v46;
                v32 = v45;
                v39 = v44;
                v22 = v43;
                v10 = LODWORD(dataPointerOut[1]);
                DataLength = DWORD2(v71);
                LOBYTE(v12) = lengthAtOffsetOut == 2 && DWORD2(v71) + LODWORD(dataPointerOut[1]) <= a3;
              }

              else
              {
                DataLength = 0;
                v10 = 0;
                LOBYTE(v12) = 0;
              }

              v13 = v61;
              v50 = !v37;
              if (!v17)
              {
                v50 = 1;
              }

              if (v50)
              {
                v49 = 0;
                v11 = 0;
              }

              else
              {
                *dataPointerOut = xmmword_1A5ABAAC0;
                v53 = a3 - v38;
                v54 = v22;
                v55 = &v21[v38];
                v56 = v39;
                v57 = v32;
                _readExifDirectory(v55, v53, v59, dataPointerOut, 1, 0);
                v32 = v57;
                v39 = v56;
                v22 = v54;
                v11 = 0;
                if (BYTE4(dataPointerOut[1]))
                {
                  v58 = LOWORD(dataPointerOut[1]) == 1;
                }

                else
                {
                  v58 = 1;
                }

                v49 = !v58;
              }

              goto LABEL_61;
            }

            v49 = 0;
            v39 = 0;
LABEL_97:
            DataLength = 0;
            v10 = 0;
            LOBYTE(v12) = 0;
            v11 = 0;
LABEL_100:
            v13 = v61;
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_13_9();
LABEL_61:
          v16 = v65;
          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_0_16();
      v11 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      v11 = 4294950194;
    }

    v32 = 1;
    goto LABEL_61;
  }

  v23 = malloc_type_malloc(DataLength, 0xDEE58601uLL);
  if (!v23)
  {
    v11 = 4294950305;
    goto LABEL_89;
  }

  v60 = v15;
  v24 = v13;
  v25 = v23;
  dataPointerOut[0] = v23;
  v26 = DataLength;
  v10 = v16;
  while (1)
  {
    v68 = 0;
    v27 = CMBlockBufferGetDataPointer(v12, v10, &lengthAtOffsetOut, 0, &v68);
    if (v27)
    {
      break;
    }

    if (v26 >= lengthAtOffsetOut)
    {
      v28 = lengthAtOffsetOut;
    }

    else
    {
      v28 = v26;
    }

    lengthAtOffsetOut = v28;
    memcpy(dataPointerOut[0], v68, v28);
    dataPointerOut[0] += lengthAtOffsetOut;
    v10 += lengthAtOffsetOut;
    v26 -= lengthAtOffsetOut;
    if (!v26)
    {
      v22 = v25;
      v21 = v25;
      v13 = v24;
      v17 = a9;
      v15 = v60;
      goto LABEL_20;
    }
  }

  v11 = v27;
  free(v25);
  OUTLINED_FUNCTION_0_16();
  v32 = 1;
  v13 = v24;
  v17 = a9;
  v15 = v60;
LABEL_62:
  if (a4)
  {
    *a4 = v39;
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (v15)
  {
    *v15 = v12;
  }

  if (a7)
  {
    *a7 = v10 + v16;
  }

  if (v13)
  {
    *v13 = DataLength;
  }

  if (v17)
  {
    *v17 = v49;
  }

  free(v22);
  return v11;
}

unsigned __int16 *_readExifDirectory(unsigned __int16 *result, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (a2 >= 2)
  {
    v6 = *result;
    v7 = bswap32(v6) >> 16;
    if (a3)
    {
      LOWORD(v6) = v7;
    }

    if (12 * v6 <= a2 - 2)
    {
      v8 = 0;
      if (v6)
      {
        v9 = a5 < 1;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = 0;
        v11 = result + 1;
        do
        {
          v12 = *v11;
          if (a3)
          {
            v12 = __rev16(v12);
            v13 = bswap32(v11[1]) >> 16;
            result = bswap32(*(v11 + 1));
          }

          else
          {
            v13 = v11[1];
            result = *(v11 + 1);
          }

          v14 = a5;
          v15 = a4 + 8;
          while (v12 != *(v15 - 8) || v13 != *(v15 - 6) || result != *(v15 - 4) || *(v15 + 4))
          {
            v15 += 16;
            if (!--v14)
            {
              goto LABEL_22;
            }
          }

          if (v13 == 3)
          {
            v17 = v11[4];
            v18 = bswap32(v17) >> 16;
            if (a3)
            {
              LOWORD(v17) = v18;
            }

            *v15 = v17;
          }

          else
          {
            v19 = *(v11 + 2);
            v20 = bswap32(v19);
            if (a3)
            {
              v19 = v20;
            }

            *v15 = v19;
          }

          *(v15 + 4) = 1;
          ++v8;
LABEL_22:
          v11 += 6;
        }

        while (++v10 < v6 && v8 < a5);
      }

      if (a6)
      {
        *a6 = v8;
      }
    }
  }

  return result;
}

uint64_t _createModifiedDecodeOptionsIfNeeded(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, int a5, void *a6)
{
  if (!a6)
  {
    return 4294950306;
  }

  if (a3 == -1)
  {
    v14 = OUTLINED_FUNCTION_72();
    v17 = CMPhotoDecompressionContainerCopyTranslatedOptionsForAlternates(v14, v15, a4, 0, v16);
    if (v17)
    {
      return v17;
    }

    a4 = 0;
  }

  Value = FigCFDictionaryGetValue();
  if (a5 == 4 && !Value)
  {
    v18 = OUTLINED_FUNCTION_72();
    if (a3 < 0)
    {
      CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions(v18, v19, a4, v20);
    }

    else
    {
      CMPhotoDecompressionContainerCopyThumbnailBitDepthForIndexWithOptions(v18, v19, a3, a4, v21);
    }
  }

  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  *a6 = v11;
  return v12;
}

uint64_t __CMPhotoGetImageInformationFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (a3 > 3)
  {
    v9 = 32;
    v10 = 64;
    v11 = 56;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v9 = 56;
    v10 = 48;
    v11 = 40;
    v8 = a4;
  }

  *(*(*(a1 + v11) + 8) + 24) = v8;
  v12 = *(*(a1 + v10) + 8);
  *(v12 + 24) = a7;
  *(v12 + 32) = a8;
  if (*(*(*(a1 + v9) + 8) + 24))
  {
    return 4294950191;
  }

  else
  {
    return 0;
  }
}

uint64_t _parseImageSizeAndTypeIfNeeded(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_29_1(a1);
  if (v2)
  {
    return v2;
  }

  if (*(v1 + 64))
  {
    v3 = 0;
  }

  else
  {
    CMPhotoGetImageInformationFromJFIFByteStream();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v5 = *(v1 + 104);
      if (v5)
      {
        CMPhotoCreateFlexRangeMetadataDictionaryFromBinaryMetadata(v5, 1, 0);
      }

      v3 = 0;
      *(v1 + 64) = 1;
    }
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 41) = *(v2 - 83) != 0;
  *(v1 + 42) = *(v2 - 84);
  *(v1 + 40) = *(v2 - 82);
  *(v1 + 32) = *(v2 - 81);
  *(v1 + 160) = *(v2 - 92);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(const void *a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, CVPixelBufferRef *a11)
{

  return CMPhotoSurfacePoolCreatePixelBuffer(a1, a2, a3, a4, 1, 0, 0, 1, a9, a10, a11);
}

dispatch_time_t OUTLINED_FUNCTION_2_7()
{

  return dispatch_time(0, 15000000000);
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(v38 - 240) = v37;
  *(v38 - 232) = v36;
  return a36;
}

uint64_t OUTLINED_FUNCTION_2_9(const __CFData *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{

  return CMPhotoByteStreamCreateFromSource(a1, 0, 0, 0, a5, 0);
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  a15 = a2;
  a14 = 0;
  v16 = a1 + 40;

  return _checkImageIndex(v16, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *(v20 - 96) = 0;

  return CMPhotoBitStreamReadBits(va, 1uLL, (v20 - 96));
}

void *OUTLINED_FUNCTION_2_19(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

unint64_t OUTLINED_FUNCTION_2_28()
{
  v4 = *(v2 - 112);

  return CMPhotoPaddedSizeFromImageSizeAndBlockSize(v4, v1, v0);
}

__n128 OUTLINED_FUNCTION_2_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  *(v17 - 64) = *v16;
  *(v17 - 48) = *(v16 + 16);
  return a16;
}

uint64_t OUTLINED_FUNCTION_2_30@<X0>(const void *a1@<X1>, const __CFDictionary *a2@<X8>, uint64_t a3, void *value)
{

  return CFDictionaryGetValueIfPresent(a2, a1, &value);
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return _getAuxiliaryImageStorageForIndex_0(a1, a3, &a10);
}

void *OUTLINED_FUNCTION_33_0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v63 - 252) = a1;
  v65 = STACK[0x200];
  *(v63 - 248) = a63;
  *(v63 - 240) = v65;
  *(v63 - 232) = a61;
  *(v63 - 224) = a62;

  return memcpy((v63 - 216), &STACK[0x4E0], 0x49uLL);
}

void CMPhotoDecompressionContainerCreateImageForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v18;
  a18 = v24;
  cf = 0;
  if (v19)
  {
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v30, v31, v32, v33, v34, v35, v36);
    if (!v37 && !_createModifiedDecodeOptionsIfNeeded(v29, v28, -1, v27, v26, &cf))
    {
      OUTLINED_FUNCTION_13_12();
      v39 = *(v38 + 80);
      if (v39)
      {
        v39(v29, a9, cf, v26, v25);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_37_3();
}

void OUTLINED_FUNCTION_28_1(void *value, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *key)
{

  CFDictionarySetValue(v24, key, value);
}

uint64_t _parseMPOIfNeeded(uint64_t a1)
{
  v48 = 1;
  v49 = 0;
  v2 = _parseImageSizeAndTypeIfNeeded(a1);
  if (v2)
  {
    return v2;
  }

  v2 = FigSimpleMutexLock();
  if (v2)
  {
    return v2;
  }

  if (*(a1 + 112) || (*(a1 + 112) = 1, *(a1 + 224) = xmmword_1A5AB4DA0, CMPhotoCopyImageCountAndRangesFromJFIFByteStream(*(a1 + 24), 0, 0, &v48, &v49, 0), v8))
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v9 = v48;
  v4 = v48 - 1;
  if (v48 == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v5 = malloc_type_calloc(v48 - 1, 0x68uLL, 0x10600400F32AB22uLL);
  if (!v5)
  {
    v3 = 4294950305;
    goto LABEL_6;
  }

  v10 = 0;
  v43 = v52;
  v44 = @"urn:com:apple:photo:2020:aux:hdrgainmap";
  v46 = *MEMORY[0x1E695F128];
  v45 = *MEMORY[0x1E695F1C0];
  name = *MEMORY[0x1E695F178];
  v11 = 1;
  while (v9 != v11)
  {
    v12 = *(v49 + v11);
    *(&__src[4] + 1) = 0;
    memset(&__src[5], 0, 24);
    memset(__src, 0, 56);
    v58 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v53 = 0;
    *(&__src[3] + 8) = v12;
    CMPhotoGetImageInformationFromJFIFByteStream();
    if (v13)
    {
      goto LABEL_90;
    }

    BYTE8(__src[4]) = v53 == 195;
    if (v58)
    {
      FlexRangeMetadataDictionaryFromBinaryMetadata = CMPhotoCreateFlexRangeMetadataDictionaryFromBinaryMetadata(v58, 0, &__src[6]);
      if (FlexRangeMetadataDictionaryFromBinaryMetadata)
      {
        goto LABEL_91;
      }
    }

    v15 = OUTLINED_FUNCTION_16_3();
    AuxiliaryPropertiesFromStream = CMPhotoJFIFUtilitiesCreateAuxiliaryPropertiesFromStream(v15, v16, *(&__src[3] + 1), (&__src[1] + 4), &__src[2], &__src[2] + 1, &__src[3]);
    if (AuxiliaryPropertiesFromStream && *&__src[6])
    {
      DWORD1(__src[1]) = 4;
    }

    else if (AuxiliaryPropertiesFromStream && !*&__src[6])
    {
LABEL_90:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      FlexRangeMetadataDictionaryFromBinaryMetadata = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
LABEL_91:
      v3 = FlexRangeMetadataDictionaryFromBinaryMetadata;
      v27 = 0;
      goto LABEL_77;
    }

    if (!FigCFDictionaryGetInt32IfPresent() && CMPhotoGetYUVPixelFormatForParameters(LODWORD(__src[1]), SHIDWORD(__src[4]), 1, 0, 0, 0, 1, &__src[1] + 2))
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_42();
    FlexRangeMetadataDictionaryFromBinaryMetadata = CMPhotoCopyICCProfileFromJFIFByteStream(v18, v19, v20, v21, v22, v23);
    if (FlexRangeMetadataDictionaryFromBinaryMetadata)
    {
      goto LABEL_91;
    }

    if (!*(a1 + 113))
    {
      if (*&__src[6])
      {
        *(v55 + 24) = 1;
      }

      else if (DWORD1(__src[1]) == 4)
      {
        if (FigCFEqual())
        {
          *(v55 + 24) = 1;
          *(&__src[2] + 1) = 0;
        }

        else if (FigCFEqual() && *&__src[2])
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          v52[0] = ___parseAuxImage_block_invoke;
          v52[1] = &unk_1E77A1F70;
          v52[2] = &v54;
          CGImageMetadataEnumerateTagsUsingBlock(*&__src[2], 0, 0, block);
        }
      }
    }

    if (DWORD1(__src[1]) == 4)
    {
      v24 = *(&__src[2] + 1) != 0;
    }

    else
    {
      v24 = DWORD1(__src[1]) != 0;
    }

    v25 = *(v55 + 24);
    if (*(v55 + 24) && !*&__src[5])
    {
      if (*(a1 + 425) && (v26 = CGColorSpaceCreateWithICCData(*(a1 + 432))) != 0)
      {
        v27 = v26;
      }

      else
      {
        if (*(a1 + 88) == 6)
        {
          v28 = v46;
        }

        else
        {
          v28 = v45;
        }

        v27 = CGColorSpaceCreateWithName(v28);
        if (!v27)
        {
LABEL_89:
          v3 = 4294950305;
          goto LABEL_93;
        }
      }

      v50 = 1;
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (!v50)
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          goto LABEL_89;
        }

        v30 = MutableCopy;
        CMPhotoCFDictionarySetBoolean(MutableCopy, @"TonemapBaseColorIsWorkingColor", 1);
        if (*&__src[6])
        {
          CFRelease(*&__src[6]);
        }

        *&__src[6] = v30;
      }

      v60 = 0;
      if (!CGColorSpaceGetCICPInfo() || (BYTE1(v60) = 16, (v31 = CGColorSpaceCreateFromCICP()) == 0))
      {
        v31 = CGColorSpaceCreateWithName(name);
        if (!v31)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9();
          v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
LABEL_93:
          if (v24)
          {
LABEL_78:
            v41 = 0;
            goto LABEL_79;
          }

LABEL_77:
          _releaseAuxImageStorage(__src);
          goto LABEL_78;
        }
      }

      v32 = v31;
      CFRelease(v27);
      *(&__src[5] + 1) = v32;
      v25 = *(v55 + 24);
    }

    if (v25)
    {
      memcpy((a1 + 120), __src, 0x68uLL);
      *(a1 + 113) = 1;
      if (v24)
      {
        v33 = v11 - 1;
      }

      else
      {
        v33 = -1;
      }

      *(a1 + 224) = v33;
      v34 = *(a1 + 152);
      if (v34)
      {
        CFRetain(v34);
      }

      v35 = *(a1 + 168);
      if (v35)
      {
        CFRetain(v35);
      }

      v36 = *(a1 + 160);
      if (v36)
      {
        CFRetain(v36);
      }

      v37 = *(a1 + 200);
      if (v37)
      {
        CFRetain(v37);
      }

      v38 = *(a1 + 208);
      if (v38)
      {
        CFRetain(v38);
      }

      v39 = *(a1 + 216);
      if (v39)
      {
        CFRetain(v39);
      }
    }

    v40 = &v5[13 * v10];
    if (!v24)
    {
      v3 = 0;
      v27 = 0;
      v40[12] = 0;
      *(v40 + 4) = 0u;
      *(v40 + 5) = 0u;
      *(v40 + 2) = 0u;
      *(v40 + 3) = 0u;
      *v40 = 0u;
      *(v40 + 1) = 0u;
      goto LABEL_77;
    }

    memcpy(v40, __src, 0x68uLL);
    v3 = 0;
    v27 = 0;
    v41 = 1;
LABEL_79:
    if (v58)
    {
      CFRelease(v58);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    _Block_object_dispose(&v54, 8);
    if (v3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
    }

    v10 += v41;
    ++v11;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
  if (v10)
  {
    *(a1 + 232) = v10;
    *(a1 + 240) = v5;
LABEL_5:
    v5 = 0;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  free(v49);
  if (v5)
  {
    if (v4)
    {
      v6 = v5;
      do
      {
        _releaseAuxImageStorage(v6);
        v6 += 13;
        --v4;
      }

      while (v4);
    }

    free(v5);
  }

  return v3;
}

void CMPhotoCopyImageCountAndRangesFromJFIFByteStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_11_17();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v118 = *MEMORY[0x1E69E9840];
  v111 = 4;
  v112 = "MPF";
  v107 = 0;
  v108 = &v107;
  v109 = 0x2000000000;
  v110 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2000000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2000000000;
  v102 = 0;
  v98 = 0;
  *v15 = 1;
  *v16 = 0;
  v97 = -30;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 0x40000000;
  v96[2] = __CMPhotoCopyImageCountAndRangesFromJFIFByteStream_block_invoke;
  v96[3] = &unk_1E77A3538;
  v96[4] = &v107;
  v96[5] = &v103;
  v96[6] = &v99;
  if (CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v13, v11, 1u, &v97, &v112, &v111, v96))
  {
    v46 = 0;
    goto LABEL_104;
  }

  if (!*(v108 + 24))
  {
    goto LABEL_159;
  }

  v17 = v100[3] - 4;
  if (v17 < 8)
  {
    goto LABEL_103;
  }

  v92 = v8;
  v95 = v10;
  v93 = v7;
  v94 = v6;
  v18 = v104[3];
  v114 = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_103;
  }

  v19 = OUTLINED_FUNCTION_3_28();
  v91 = v20;
  if (v21(v19, 8) || v114 != 8)
  {
    goto LABEL_103;
  }

  v22 = v115;
  if (v115 == 19789)
  {
    if (v116 != 10752)
    {
      goto LABEL_103;
    }

    v23 = bswap32(v117.u32[0]);
  }

  else
  {
    if (v116 != 42)
    {
      goto LABEL_103;
    }

    v23 = v117.i32[0];
  }

  v24 = v17 - v23;
  if (v17 <= v23 || v24 < 2)
  {
    goto LABEL_103;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_103;
  }

  v26 = OUTLINED_FUNCTION_3_28();
  if (v27(v26, 2) || v114 != 2)
  {
    goto LABEL_103;
  }

  v28 = bswap32(v115) >> 16;
  if (v22 != 19789)
  {
    LOWORD(v28) = v115;
  }

  if (v24 - 2 < 12 * v28)
  {
    goto LABEL_103;
  }

  if (!v28)
  {
    goto LABEL_105;
  }

  v89 = 0;
  count = 0;
  v29 = 0;
  v88 = 0;
  v30 = 0;
  v31 = v28 - 1;
  v32 = v18 + v23 + 6;
  do
  {
    v33 = v31;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      goto LABEL_103;
    }

    v34 = OUTLINED_FUNCTION_3_28();
    if (v35(v34, 12, v32) || v114 != 12)
    {
      goto LABEL_103;
    }

    v37 = v115;
    v38 = bswap32(v115) >> 16;
    if (v22 == 19789)
    {
      v37 = v38;
    }

    if (v37 == 45058)
    {
      if (v22 == 19789)
      {
        if (v116 != 1792)
        {
          goto LABEL_103;
        }

        v40 = bswap32(v117.u32[0]);
        v41 = bswap32(v117.u32[1]);
      }

      else
      {
        if (v116 != 7)
        {
          goto LABEL_103;
        }

        v40 = v117.i32[0];
        v41 = v117.u32[1];
      }

      v30 = 1;
      v88 = v41;
      v89 = v40;
    }

    else if (v37 == 45057)
    {
      if (v22 == 19789)
      {
        if (v116 != 1024 || v117.i32[0] != 0x1000000)
        {
          goto LABEL_103;
        }

        v39 = bswap32(v117.u32[1]);
      }

      else
      {
        if (v116 != 4 || v117.i32[0] != 1)
        {
          goto LABEL_103;
        }

        v39 = v117.u32[1];
      }

      count = v39;
      v29 = 1;
    }

    if (v30)
    {
      v42 = v29 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      break;
    }

    v31 = v33 - 1;
    v32 += 12;
  }

  while (v33);
  if (!v29 || count < 2 || !v30)
  {
LABEL_105:
    v46 = 0;
    goto LABEL_104;
  }

  if (v89 != 16 * count || (v17 > v88 ? (v43 = v17 - v88 >= v89) : (v43 = 0), !v43))
  {
LABEL_103:
    v46 = 0;
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_14_15();
  v114 = 0;
  v44 = count;
  v46 = malloc_type_calloc(count, 0x10uLL, v45);
  if (v46)
  {
    v113 = 0;
    v47 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v47)
    {
      if (!v47(v14, 0, &v113) && *(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v48 = 0;
        v49 = v88 + v91;
        v50 = 1;
        do
        {
          v51 = OUTLINED_FUNCTION_3_28();
          if (v52(v51, 12, v49) || v114 != 12)
          {
            break;
          }

          if (v22 == 19789)
          {
            if ((v50 & 1) == 0)
            {
              goto LABEL_81;
            }

            v53 = v48 == 0;
            v54 = v91;
            if (!v48)
            {
              v54 = v12;
            }

            v55 = vrev32_s8(v117);
          }

          else
          {
            if ((v50 & 1) == 0)
            {
              goto LABEL_81;
            }

            v53 = v48 == 0;
            v54 = v91;
            if (!v48)
            {
              v54 = v12;
            }

            v55 = v117;
          }

          v56 = v55.u32[0];
          v57 = v54 + v55.u32[1];
          if (v57 + v55.u32[0] <= v113)
          {
            if (v53)
            {
              if (v55.i32[0] < 2u || v55.i32[1])
              {
                goto LABEL_81;
              }
            }

            else if (v55.i32[0] < 2u || !v55.i32[1])
            {
              goto LABEL_81;
            }

            if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              break;
            }

            v58 = OUTLINED_FUNCTION_3_28();
            if (v59(v58, 2, v57) || v114 != 2)
            {
              break;
            }

            if (v115 == 255 && HIBYTE(v115) == 216)
            {
              if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                break;
              }

              v60 = OUTLINED_FUNCTION_3_28();
              if (v61(v60, 2) || v114 != 2)
              {
                break;
              }

              if (v115 == 255 && HIBYTE(v115) == 217)
              {
                v62 = &v46[16 * v48];
                *v62 = v57;
                *(v62 + 1) = v56;
                if (++v48 == count)
                {
                  goto LABEL_151;
                }

                v50 = 1;
                goto LABEL_83;
              }
            }
          }

LABEL_81:
          if (++v48 == count)
          {
            fig_log_get_emitter();
            v86 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v88, v89);
            free(v46);
            if (!v86)
            {
              v46 = 0;
LABEL_151:
              v83 = v93;
              v84 = v94;
              v85 = v92;
LABEL_152:
              *v85 = v44;
              goto LABEL_157;
            }

            goto LABEL_107;
          }

          v50 = 0;
LABEL_83:
          v49 = v88 + v91 + 16 * v48;
        }

        while (*(*(CMBaseObjectGetVTable() + 16) + 8));
      }
    }
  }

  free(v46);
LABEL_107:
  OUTLINED_FUNCTION_14_15();
  v66 = malloc_type_calloc(v63, v64, v65);
  v46 = v66;
  if (!v66)
  {
    goto LABEL_104;
  }

  v67 = 0;
  v68 = 0;
  *v66 = v12;
  v69 = v100[3] + v104[3];
  while (2)
  {
    v70 = 0;
    v113 = 0;
    for (i = 1; ; i = 0)
    {
      while (1)
      {
        v72 = i;
        v73 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v72)
        {
          break;
        }

        if (!v73)
        {
          goto LABEL_154;
        }

        if (v73(v14, 4, v69, &v115, &v113) || v113 != 4)
        {
          goto LABEL_154;
        }

        LOBYTE(v115) = -1;
        if (HIBYTE(v115) == 216)
        {
          v69 += 2;
        }

        else
        {
          v69 += (bswap32(v116) >> 16) + 2;
        }

        i = HIBYTE(v115) != 218;
      }

      if (!v73 || v73(v14, 512, v69, &v115, &v113) || v69 < 0)
      {
        goto LABEL_154;
      }

      if (v113)
      {
        break;
      }

LABEL_130:
      v69 += v113;
    }

    v75 = 0;
    v76 = -v69;
    while (1)
    {
      v77 = *(&v115 + v75);
      if (!v70)
      {
        goto LABEL_129;
      }

      if (v77 == 216)
      {
        break;
      }

      if (v77 == 217)
      {
        v78 = 1;
        goto LABEL_133;
      }

LABEL_129:
      v70 = v77 == 255;
      ++v75;
      --v76;
      if (v113 == v75)
      {
        goto LABEL_130;
      }
    }

    v78 = -1;
LABEL_133:
    v79 = &v46[16 * v67];
    if ((*v79 & 0x8000000000000000) != 0)
    {
      v68 = 1;
      goto LABEL_154;
    }

    v69 = v78 - v76;
    *(v79 + 1) = v78 - *v79 - v76;
    if (v67 >= count - 1)
    {
LABEL_147:
      ++v67;
      v68 = 1;
      if (v67 == count)
      {
        v83 = v93;
        v84 = v94;
        v85 = v92;
        v44 = count;
        goto LABEL_152;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v80)
    {
      break;
    }

    if (v80(v14, 2, v69, &v114, &v98) || v98 != 2)
    {
      break;
    }

    if (v114 == 255 && BYTE1(v114) == 216)
    {
      *(v79 + 2) = v69;
      goto LABEL_147;
    }

    ++v69;
  }

  v68 = 1;
LABEL_154:
  if (v95 && (v68 & 1) != 0)
  {
    *v92 = 1;
    v83 = v93;
    v84 = v94;
LABEL_157:
    *v83 = v46;
    if (v84)
    {
      v46 = 0;
      *v84 = *(v108 + 24);
      goto LABEL_104;
    }

LABEL_159:
    v46 = 0;
  }

LABEL_104:
  free(v46);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);
  OUTLINED_FUNCTION_22_5();
}

uint64_t CMPhotoUnifiedJPEGDecoderCreate(const void *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, const void *a8, int a9, uint64_t *a10)
{
  if (!a10)
  {
    return 4294950306;
  }

  v18 = MEMORY[0x1AC550000](a2, 240, 0x10E0040590B7DCELL, 0);
  if (!v18)
  {
    return 4294950305;
  }

  v19 = v18;
  bzero(v18, 0xF0uLL);
  if (a2)
  {
    v20 = CFRetain(a2);
  }

  else
  {
    v20 = 0;
  }

  *(v19 + 8) = v20;
  if (a1)
  {
    v21 = CFRetain(a1);
  }

  else
  {
    v21 = 0;
  }

  *v19 = v21;
  if (a5)
  {
    v22 = CFRetain(a5);
  }

  else
  {
    v22 = 0;
  }

  *(v19 + 16) = v22;
  if (a6 | a7)
  {
    goto LABEL_16;
  }

  v28 = 0;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v23)
  {
    v26 = 4294954514;
LABEL_22:
    CMPhotoUnifiedJPEGDecoderDestroy(v19);
    return v26;
  }

  v24 = v23(a5, 0, &v28);
  if (v24)
  {
    v26 = v24;
    goto LABEL_22;
  }

  a7 = v28;
  if (v28 < 0)
  {
    v26 = 4294950190;
    goto LABEL_22;
  }

LABEL_16:
  *(v19 + 24) = a6;
  *(v19 + 32) = a7;
  if (a8)
  {
    v25 = CFRetain(a8);
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  *(v19 + 40) = v25;
  *(v19 + 48) = a9;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  *a10 = v19;
  return v26;
}

uint64_t ___isHWAvailableHelper_block_invoke()
{
  v0 = JPEGDeviceInterface_openDriverConnection();
  _isHWAvailableHelper_sHWAvailable = v0 != 0;
  JPEGDeviceInterface_closeDriverConnection(v0);
  if (_isHWAvailableHelper_sHWAvailable)
  {
    result = JPEGDeviceInterface_numberOfJPEGCores();
    _isHWAvailableHelper_sNumCores = result;
  }

  else
  {
    result = CMPhotoParavirtualizedGuestJPEGHardwareGetCapabilities(0, &_isHWAvailableHelper_sNumCores, 0, 0, 0, 0);
    _MergedGlobals_6 = result == 0;
    _isHWAvailableHelper_sHWAvailable = result == 0;
  }

  return result;
}

uint64_t ___isHWAvailableHelper_block_invoke_0(uint64_t a1)
{
  v2 = JPEGDeviceInterface_openDriverConnection();
  _isHWAvailableHelper_sHWAvailable_0 = v2 != 0;
  result = JPEGDeviceInterface_closeDriverConnection(v2);
  if (!_isHWAvailableHelper_sHWAvailable_0)
  {
    result = CMPhotoParavirtualizedGuestJPEGHardwareGetCapabilities(0, 0, 0, 0, 0, *(a1 + 32));
    _isHWAvailableHelper_sIsParavirtualized = result == 0;
    _isHWAvailableHelper_sHWAvailable_0 = result == 0;
  }

  return result;
}

uint64_t _initializeService()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleJPEGDriver");
  result = IOServiceGetMatchingService(v0, v1);
  _jpegService = result;
  if (result)
  {
    CFProperty = IORegistryEntryCreateCFProperty(result, @"AppleJPEGNumCores", 0, 0);
    Int = CMPhotoCFNumberGetInt(CFProperty);
    _numberOfJPEGCores = Int;
    if (CFProperty)
    {
      CFRelease(CFProperty);
      Int = _numberOfJPEGCores;
    }

    if (Int < 2)
    {
      v5.__sig = 0;
      *v5.__opaque = 0;
      pthread_mutexattr_init(&v5);
      pthread_mutexattr_settype(&v5, 2);
      pthread_mutex_init(&_jpegLock, &v5);
      return pthread_mutexattr_destroy(&v5);
    }

    else
    {
      result = FigSemaphoreCreate();
      _jpegSema = result;
    }
  }

  return result;
}

const __CFBoolean *_checkSupportsAppleInterchangeFormats()
{
  result = _checkUInt32DriverProperty(@"AppleJPEGSupportsAppleInterchangeFormats", _supportsAppleInterchangeFormats);
  _supportsAppleInterchangeFormats = result;
  return result;
}

uint64_t _openDriverConnection()
{
  connect = 0;
  LODWORD(result) = _jpegService;
  if (_jpegService || (pthread_once(&jpegService_once, _initializeService), result = _jpegService, _jpegService))
  {
    if (IOServiceOpen(result, *MEMORY[0x1E69E9A60], 0, &connect))
    {
      return 0;
    }

    else
    {
      return connect;
    }
  }

  return result;
}

uint64_t JPEGDeviceInterface_numberOfJPEGCores()
{
  if (!_jpegService)
  {
    pthread_once(&jpegService_once, _initializeService);
  }

  if (_numberOfJPEGCores <= 1)
  {
    return 1;
  }

  else
  {
    return _numberOfJPEGCores;
  }
}

const __CFBoolean *_checkUInt32DriverProperty(CFStringRef key, const __CFBoolean *Int)
{
  v3 = _jpegService;
  if (_jpegService || (pthread_once(&jpegService_once, _initializeService), (v3 = _jpegService) != 0))
  {
    CFProperty = IORegistryEntryCreateCFProperty(v3, key, 0, 0);
    Int = CMPhotoCFNumberGetInt(CFProperty);
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }
  }

  return Int;
}

const __CFBoolean *CMPhotoCFNumberGetInt(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v1) != 0);
    }

    else
    {
      valuePtr = 0;
      if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t JPEGDeviceInterface_closeDriverConnection(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = a1 + 40;

  return _checkImageIndex(v4, va, 0);
}

uint64_t OUTLINED_FUNCTION_4_11@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v4 = bswap32(a2);

  return CMPhotoCFDictionarySetInt32(v2, a1, v4);
}

__CFDictionary *OUTLINED_FUNCTION_4_12()
{
  v2 = v0[248];
  v3 = v0[249];
  v4 = v0[250];
  v5 = v0[251];

  return CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v2, v3, v4, v5);
}

int16x4_t OUTLINED_FUNCTION_4_13(float32x4_t a1)
{
  result = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(a1)));
  *(v1 + 28) = result.i32[1];
  return result;
}

void OUTLINED_FUNCTION_4_24(void *value)
{

  CFArrayAppendValue(v1, value);
}

void OUTLINED_FUNCTION_4_25()
{

  CMPhotoGetImageInformationFromJFIFByteStream();
}

uint64_t _checkImageIndex(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*(a1 + 113))
  {
    if (v3 >= 2)
    {
      _checkImageIndex_cold_1(&v5);
      return v5;
    }

    LOBYTE(v3) = v3 == 1;
    *a2 = 0;
  }

  else if (v3)
  {
    _checkImageIndex_cold_2(&v6);
    return v6;
  }

  result = 0;
  if (a3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t _determineDecodeStrategy(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t *a9, int8x16_t *a10, int8x16_t *a11, _DWORD *a12, _BYTE *a13)
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  if (!*(a3 + 21))
  {
    goto LABEL_11;
  }

  v20 = *(a3 + 4);
  v21 = *(a3 + 40);
  v61[0] = *(a3 + 24);
  v61[1] = v21;
  result = CMPhotoGetTwoPassCropRects(v20, v61, a4, a5, 0, 0);
  if (result)
  {
    return result;
  }

  if (*(a3 + 21))
  {
    LODWORD(v23) = 0;
    v25 = (a3 + 56);
    v24 = *(a3 + 56);
    v16 = *(a3 + 40);
    v15 = *(a3 + 48);
    if (v16 <= v15)
    {
      v26 = *(a3 + 48);
    }

    else
    {
      v26 = *(a3 + 40);
    }

    if (!v24 || v24 >= v26)
    {
      goto LABEL_43;
    }

    v27 = (a3 + 72);
    if (_canUseEmbeddedHWDCTScaling_onceToken != -1)
    {
      dispatch_once(&_canUseEmbeddedHWDCTScaling_onceToken, &__block_literal_global_4);
    }
  }

  else
  {
LABEL_11:
    v25 = (a3 + 56);
    v24 = *(a3 + 56);
    if (v16 <= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = v16;
    }

    if (v24)
    {
      v29 = v24 >= v28;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_42;
    }

    v27 = (a3 + 72);
    v30 = *(a3 + 72);
    if (v30 != 1)
    {
      if (v30 == 2 || v24 >= 4 && (a2 ? (v31 = a2) : (v31 = a1), CMPhotoUnifiedJPEGDecoderFileSupportedByHardware(*(a1 + 96), a8, v31)))
      {
        v32 = 0;
        if (*(a3 + 70))
        {
          v24 &= ~1uLL;
        }

        goto LABEL_33;
      }
    }
  }

  if (*(a3 + 21))
  {
    v32 = *v27;
    if (*v27 != 1)
    {
LABEL_42:
      LODWORD(v23) = 0;
LABEL_43:
      v39 = v15;
      v40 = v16;
      goto LABEL_44;
    }
  }

  else
  {
    v32 = 1;
  }

LABEL_33:
  v33 = (v16 + 1) >> 1;
  v34 = (v15 + 1) >> 1;
  v35 = v16 >> 1;
  v36 = v15 >> 1;
  if (v33 <= v34)
  {
    v37 = (v15 + 1) >> 1;
  }

  else
  {
    v37 = (v16 + 1) >> 1;
  }

  if (v35 <= v15 >> 1)
  {
    v38 = v15 >> 1;
  }

  else
  {
    v38 = v16 >> 1;
  }

  if (v32)
  {
    v37 = v38;
  }

  if (v37 < v24)
  {
    goto LABEL_42;
  }

  v23 = 0;
  while (1)
  {
    v49 = v33;
    v50 = v34;
    v51 = v35;
    v52 = v36;
    if (v23 == 2)
    {
      break;
    }

    v53 = v23++ + 2;
    v54 = (2 << v23);
    v33 = (v16 - 1 + v54) >> v53;
    v34 = (v15 - 1 + v54) >> v53;
    v35 = v16 >> v53;
    v36 = v15 >> v53;
    if (v33 <= v34)
    {
      v55 = v34;
    }

    else
    {
      v55 = v33;
    }

    if (v35 <= v36)
    {
      v56 = v36;
    }

    else
    {
      v56 = v35;
    }

    if (v32)
    {
      v55 = v56;
    }

    if (v55 < v24)
    {
      goto LABEL_98;
    }
  }

  LODWORD(v23) = 3;
LABEL_98:
  if (v32)
  {
    v40 = v51;
  }

  else
  {
    v40 = v49;
  }

  if (v32)
  {
    v39 = v52;
  }

  else
  {
    v39 = v50;
  }

LABEL_44:
  if (*(a3 + 71))
  {
    result = _parseExifIfNeeded(a1 + 40, 0);
    if (result)
    {
      return result;
    }

    if (*(a1 + 289))
    {
      v41 = *(a1 + 312);
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 0;
  }

  if (*(a3 + 71))
  {
    v42 = v41 == 1;
  }

  else
  {
    v42 = 1;
  }

  v43 = !v42;
  v60 = 0;
  v59.i64[0] = v40;
  v59.i64[1] = v39;
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v40, v39, *(a3 + 56), v16, v15, *(a3 + 64), *(a3 + 70), &v59, &v60, 0);
  if (*(a3 + 8))
  {
    if (*(a3 + 72) == 1)
    {
      v44 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(*(a3 + 4), v14 < 9, 0) != 0;
    }

    else
    {
      v44 = CMPhotoUnifiedJPEGDecoderFormatSupportedByHW(*(a3 + 4), a6, v14) == 0;
    }
  }

  else
  {
    v44 = 0;
  }

  if (((v43 | v44) & 1) == 0 && v60)
  {
    v45 = *v25;
    if (*v25)
    {
      v46 = v40 <= v39 ? v39 : v40;
      v29 = v46 >= v45;
      v47 = v46 - v45;
      if (v29 && (*(a3 + 16) & 0xFFFFFFFE) == 2 && 100 * v47 / v45 <= 9)
      {
        v59.i64[0] = v40;
        v59.i64[1] = v39;
        v60 = 0;
      }
    }
  }

  v48 = v59;
  if (v43)
  {
    v58 = v59;
    LODWORD(v61[0]) = 0;
    result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(v41, v61, 0);
    if (result)
    {
      return result;
    }

    if (LODWORD(v61[0]) == 270 || LODWORD(v61[0]) == 90)
    {
      v48 = vextq_s8(v58, v58, 8uLL);
    }

    else
    {
      v48 = v58;
    }
  }

  if (a9)
  {
    *a9 = v40;
    a9[1] = v39;
  }

  if (a10)
  {
    *a10 = v59;
  }

  if (a11)
  {
    *a11 = v48;
  }

  if (a12)
  {
    *a12 = v23;
  }

  result = 0;
  if (a13)
  {
    *a13 = (v60 || v44) | v43 & 1;
  }

  return result;
}

uint64_t _determineDecodeStrategy_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 152) = a3;
  *(a5 + 160) = a4;
  result = CMPhotoDecompressionContainerParseOptions(a1, a2, a3, a4, a5);
  if (!result)
  {
    if (*(a5 + 72) == 2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      if (*(a1 + 96) <= 8u)
      {
        v8 = 1111970369;
      }

      else
      {
        v8 = 1815491698;
      }

      *(a5 + 204) = v8;
      if (*(a5 + 8))
      {
        v9 = *(a5 + 4);
        if (v9 == 1815491698 || v9 == 1111970369)
        {
          *(a5 + 204) = v9;
          v8 = v9;
        }
      }

      else
      {
        *(a5 + 4) = v8;
        v9 = v8;
      }

      *(a5 + 208) = v9;
      *(a5 + 213) = v8 != v9;
      if (*(a5 + 71))
      {
        v11 = *(a1 + 132);
        v12 = v11 != 1;
      }

      else
      {
        v12 = 0;
        v11 = 1;
      }

      *(a5 + 214) = 0;
      *(a5 + 212) = v12;
      *(a5 + 200) = v11;
      v13 = *(a5 + 40);
      *(a5 + 184) = v13;
      *(a5 + 168) = *(a5 + 24);
      *(a5 + 216) = v13;
      CMPhotoPixelBufferConstrainSizeToMaxSideLength(*(a5 + 184), *(a5 + 192), *(a5 + 56), 0, 0, *(a5 + 64), *(a5 + 70), (a5 + 216), (a5 + 214), 0);
      *(a5 + 232) = *(a5 + 216);
      if (*(a5 + 212))
      {
        v14 = 0;
        result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(*(a5 + 200), &v14, 0);
        if (!result && (v14 == 270 || v14 == 90))
        {
          *(a5 + 232) = vextq_s8(*(a5 + 216), *(a5 + 216), 8uLL);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void _determineDecodeStrategy_1()
{
  OUTLINED_FUNCTION_122();
  v135 = v0;
  v136 = v1;
  v3 = v2;
  v114 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  bzero(__src, 0x98uLL);
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0uLL;
  v122 = 0;
  if (_getItemProperties(v16, v14, v12, v10, &v126, &v124, &v123, &v122))
  {
    goto LABEL_167;
  }

  v17 = OUTLINED_FUNCTION_89_0();
  if (CMPhotoDecompressionContainerParseOptions(v17, v18, v19, v20, v21))
  {
    goto LABEL_167;
  }

  if (v6 && BYTE1(__src[8]))
  {
    v131 = 0u;
    v132 = 0u;
    OUTLINED_FUNCTION_31_0();
    if (_getItemProperties(v50, v51, v52, v53, v54, v55, v56, v57))
    {
      goto LABEL_167;
    }

    v58 = v132;
    if (v132 <= *(&v132 + 1))
    {
      v58 = *(&v132 + 1);
    }

    __src[7] = v58;
    LOBYTE(__src[8]) = 1;
  }

  if (LOBYTE(__src[1]))
  {
    v22 = HIDWORD(__src[0]);
  }

  else
  {
    LODWORD(v131) = 0;
    if (CMPhotoPictureReaderGetImageCodecTypeFromReader(v14, &v131))
    {
      goto LABEL_167;
    }

    if (v131 != 1936484717 || (LODWORD(v128) = 0, _parseFormatInfoXMPMetadataForIndex(), OUTLINED_FUNCTION_67_0(), v78))
    {
      v22 = 0;
      HIDWORD(__src[0]) = 0;
    }

    else
    {
      if (v106)
      {
        goto LABEL_167;
      }

      v22 = v128;
      HIDWORD(__src[0]) = v128;
      if (v128)
      {
        LOBYTE(__src[1]) = 1;
      }
    }
  }

  v23 = CMPhotoHEIFUtilitiesSupportsOutputPixelFormat(v22);
  if (v8)
  {
    if (!v23)
    {
LABEL_12:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_167;
    }
  }

  else if (LOBYTE(__src[1]))
  {
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  else if (BYTE5(__src[2]) && ((__src[3] & 1) != 0 || (__src[4] & 1) != 0 || (__src[5] & 1) != 0 || (__src[6] & 1) != 0))
  {
    goto LABEL_12;
  }

  v120 = 0u;
  v121 = 0u;
  if (BYTE5(__src[2]))
  {
    v131 = *&__src[3];
    v132 = *&__src[5];
    if (CMPhotoGetTwoPassCropRects(HIDWORD(__src[0]), &v131, v125, *(&v125 + 1), &__src[3], &v120))
    {
      goto LABEL_167;
    }

    v24 = v120 != 0 || v121 != 0;
    v118 = v124;
    v119 = v125;
    if (BYTE5(__src[2]))
    {
      v131 = *&__src[3];
      v132 = *&__src[5];
      if (CMPhotoApplyCropCMPhotoRectToRect(&v118, &v131))
      {
        goto LABEL_167;
      }

      if (v24)
      {
        v131 = v120;
        v132 = v121;
        if (CMPhotoApplyCropCMPhotoRectToRect(&v118, &v131))
        {
          goto LABEL_167;
        }

        v24 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
    v118 = v124;
    v119 = v125;
  }

  v26 = *(&v119 + 1);
  v25 = v119;
  v28 = *(&v123 + 1);
  v27 = v123;
  v30 = v123 < v125 || *(&v123 + 1) < *(&v125 + 1);
  v113 = v30;
  if (!v30)
  {
    goto LABEL_87;
  }

  v110 = v123;
  v31 = v118;
  v32 = __src[7];
  v134[0] = 0;
  v133 = 0uLL;
  OUTLINED_FUNCTION_42();
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v33, v34, v35, v36, v37, v38, 0, 0, v134, v133.f64);
  v39 = v134[0];
  if (!v134[0])
  {
    v47 = *(&v31 + 1);
    v46 = v31;
LABEL_52:
    v48 = v26;
    v49 = v25;
LABEL_81:
    LODWORD(__src[2]) = v39;
    v74 = v48;
    v75 = v49;
    goto LABEL_82;
  }

  v40 = __src[2];
  if (!LODWORD(__src[2]))
  {
    v47 = *(&v31 + 1);
    v46 = v31;
    v39 = 0;
    goto LABEL_52;
  }

  v41 = vcvtq_f64_u64(v110);
  v42 = vmulq_f64(v133, v41);
  v43 = vcvtq_u64_f64(vrndpq_f64(v42));
  if ((v43.i32[0] | v43.i32[2]))
  {
    v44 = vdupq_n_s64(2uLL);
    v43 = vbslq_s8(vceqzq_s64(v43), v44, vaddq_s64(vaddq_s64(v43, v44), vorrq_s8(v43, vdupq_n_s64(0xFFFFFFFFFFFFFFFELL))));
  }

  if (v43.i64[0] >= v43.i64[1])
  {
    v45 = v43.u64[1];
  }

  else
  {
    v45 = v43.i64[0];
  }

  if (v45 <= 0xF)
  {
    if (LODWORD(__src[2]) == 3)
    {
      v40 = 2;
    }

    else
    {
      if (LODWORD(__src[2]) != 4)
      {
LABEL_59:
        if (v43.i64[0] >= v43.i64[1])
        {
          v59 = v28;
        }

        else
        {
          v59 = v27;
        }

        v60 = vcvtq_u64_f64(vrndaq_f64(vmulq_n_f64(v41, 16.0 / v59)));
        v43 = vaddq_s64(vaddq_s64(v60, vdupq_n_s64(2uLL)), vorrq_s8(v60, vdupq_n_s64(0xFFFFFFFFFFFFFFFELL)));
        goto LABEL_63;
      }

      v40 = 1;
    }

    LODWORD(__src[2]) = v40;
    goto LABEL_59;
  }

LABEL_63:
  v108 = v32;
  v111 = v40;
  if ((v40 - 3) <= 1)
  {
    v61 = vandq_s8(vcvtq_u64_f64(vrndaq_f64(v42)), vdupq_n_s64(0xFFFFFFFFFFFFFFFELL));
    v62 = v61.i64[0];
    if (v61.i64[0] >= v61.i64[1])
    {
      v62 = v61.u64[1];
    }

    if (v62 >= 0x10)
    {
      v63 = v40 == 4;
      if (v40 == 3)
      {
        v64 = vcvtq_f64_u64(vzip1q_s64(v61, v43));
        v65 = vdupq_lane_s64(*&v42.f64[0], 0);
        v66 = vsubq_f64(v64, v65);
        v67 = vabdq_f64(v64, v65);
        v68 = vcvtq_f64_u64(vzip2q_s64(v61, v43));
        v69 = vdupq_laneq_s64(v42, 1);
        v70 = vbslq_s8(vcagtq_f64(v66, vsubq_f64(v68, v69)), v67, vabdq_f64(v68, v69));
        v63 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v70, 1), v70)).u32[0];
      }

      v71 = vdup_n_s32(v63);
      v72.i64[0] = v71.u32[0];
      v72.i64[1] = v71.u32[1];
      v43 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v72, 0x3FuLL)), v61, v43);
    }
  }

  v46 = v31;
  v128 = v31;
  v47 = *(&v31 + 1);
  v129 = v25;
  v130 = v26;
  v73 = v43;
  _getScaledEvenCropRect(&v128, v27, v28, v43.i64[0], v43.i64[1], &v131);
  v49 = v132;
  if (!(v132 >> 31))
  {
    v48 = *(&v132 + 1);
    v74 = v26;
    v75 = v25;
    if (*(&v132 + 1) >> 31)
    {
      goto LABEL_82;
    }

    v47 = *(&v131 + 1);
    v46 = v131;
    if (v132 <= *(&v132 + 1))
    {
      v76 = *(&v132 + 1);
    }

    else
    {
      v76 = v132;
    }

    if (v111 != 4 || v76 <= v108)
    {
      v74 = *(&v132 + 1);
      v75 = v132;
      v28 = v73.u64[1];
      v27 = v73.i64[0];
      goto LABEL_82;
    }

    v39 = 1;
    v28 = v73.u64[1];
    v27 = v73.i64[0];
    goto LABEL_81;
  }

  v74 = v26;
  v75 = v25;
LABEL_82:
  v78 = v123 == v27 && *(&v123 + 1) == v28;
  if (!v78)
  {
    *&v119 = v118 - v123 * (v46 / v27) + v119;
    *(&v119 + 1) += *(&v118 + 1) - *(&v123 + 1) * (v47 / v28);
    *&v118 = v123 * (v46 / v27);
    *(&v118 + 1) = *(&v123 + 1) * (v47 / v28);
    *&__src[3] = v118;
    *&__src[5] = v119;
    *&v120 = v46 % v27;
    *(&v120 + 1) = v47 % v28;
    *&v121 = v75;
    *(&v121 + 1) = v74;
    v107 = 1;
    v79 = 1;
LABEL_91:
    v112 = 1;
    v24 = 1;
    goto LABEL_93;
  }

LABEL_87:
  if (v114)
  {
    v80 = v118 % v27;
    v81 = *(&v118 + 1) % v28;
    *&v120 = v118 % v27;
    *(&v120 + 1) = *(&v118 + 1) % v28;
    if (v121 == 0)
    {
      v121 = *&__src[5];
    }

    v107 = 0;
    v79 = 0;
    __src[3] = v118 - v80;
    __src[4] = *(&v118 + 1) - v81;
    __src[5] = v27 + v119 + v80 + ~((v119 + v118 - 1) % v27);
    __src[6] = v28 + *(&v119 + 1) + v81 + ~((*(&v119 + 1) + *(&v118 + 1) - 1) % v28);
    goto LABEL_91;
  }

  v107 = 0;
  v79 = 0;
  v112 = 0;
LABEL_93:
  v82 = 0;
  v83 = &v125;
  if (__src[11])
  {
    v84 = 1;
  }

  else
  {
    v84 = v24;
  }

  if (v84)
  {
    v85 = 0;
  }

  else
  {
    v85 = HIBYTE(__src[8]);
  }

  if (!v85 && HIBYTE(__src[8]))
  {
    v82 = v122 != 1;
  }

  v117 = 0;
  if (BYTE5(__src[2]))
  {
    v83 = &__src[5];
  }

  if (v24)
  {
    v83 = &v121;
  }

  v116 = *v83;
  OUTLINED_FUNCTION_7_13();
  if (v78 && BYTE6(__src[17]))
  {
    v86 = v116;
    if (CMPhotoFlipSizeIfNeeded(v122, v116, *(&v116 + 1), &v116))
    {
      goto LABEL_167;
    }

    if (v116 == v86)
    {
      v87 = v26;
    }

    else
    {
      v87 = v25;
    }

    if (v116 != v86)
    {
      v25 = v26;
    }

    v26 = v87;
  }

  v115 = v116;
  v109 = v79;
  if (v85)
  {
    if (CMPhotoFlipSizeIfNeeded(v122, v116, *(&v116 + 1), &v115))
    {
      goto LABEL_167;
    }

    v88 = v115;
    if (v116 == v115)
    {
      v89 = v26;
    }

    else
    {
      v89 = v25;
    }

    if (v116 != v115)
    {
      v25 = v26;
    }

    v26 = v89;
  }

  else
  {
    v88 = v115;
  }

  v90 = *(&v115 + 1);
  if (!v24 && !__src[7] && !v82)
  {
    goto LABEL_153;
  }

  v131 = v115;
  if (v82 || __src[7])
  {
    CMPhotoPixelBufferConstrainSizeToMaxSideLength(v88, *(&v115 + 1), __src[7], v25, v26, LOBYTE(__src[8]), BYTE6(__src[8]), &v131, &v117, 0);
    v91 = __src[7];
  }

  else
  {
    v91 = 0;
  }

  if (v88 <= v90)
  {
    v92 = v90;
  }

  else
  {
    v92 = v88;
  }

  v93 = v92 - v91;
  if (v93 < 0)
  {
    v93 = -v93;
  }

  v94 = v91 * 0.1;
  v95 = v94 >= v93;
  if (v123 != *(&v123 + 1))
  {
    v95 = vabdd_f64(v25 / v26, v88 / v90) < 0.001;
    if (v94 < v93)
    {
      v95 = 0;
    }
  }

  v96 = v107;
  if (!v117)
  {
    v96 = 0;
  }

  v97 = v96 != 1 || LODWORD(__src[2]) == 1;
  if (!v97 && v95 && !v82)
  {
    v117 = 0;
LABEL_153:
    if (LODWORD(__src[9]))
    {
      v98 = 0;
    }

    else
    {
      v99 = v125;
      if (CMPhotoSupportsHEVCHWDecode())
      {
        CMPhotoShouldUseHWDecoderForSize(*(&v99 + 1) * v99, 0);
        OUTLINED_FUNCTION_94_0();
      }

      else
      {
        v98 = 1;
      }
    }

    *(v3 + 316) = v98;
    if (LOBYTE(__src[1]))
    {
      v100 = HIDWORD(__src[0]) == 843264056;
    }

    else
    {
      v100 = 0;
    }

    if (v100 && v113)
    {
      *(v3 + 312) = 843264056;
      LOBYTE(__src[1]) = 0;
      HIDWORD(__src[0]) = 0;
    }

    memcpy(v3, __src, 0x98uLL);
    v102 = v115;
    *(v3 + 208) = v116;
    *(v3 + 224) = v102;
    v103 = v121;
    *(v3 + 272) = v120;
    *(v3 + 288) = v103;
    v104 = v124;
    *(v3 + 192) = v123;
    v105 = v125;
    *(v3 + 152) = v104;
    *(v3 + 305) = v85;
    *(v3 + 304) = v109;
    *(v3 + 306) = v112;
    *(v3 + 256) = v27;
    *(v3 + 264) = v28;
    *(v3 + 307) = v24;
    *(v3 + 308) = v82;
    *(v3 + 309) = v117;
    *(v3 + 240) = v88;
    *(v3 + 248) = v90;
    *(v3 + 184) = v122;
    *(v3 + 168) = v105;
    *(v3 + 317) = v114;
    goto LABEL_167;
  }

  if (!v117 && !v82)
  {
    goto LABEL_153;
  }

  v115 = v131;
  v116 = v131;
  if (!v82 || !CMPhotoFlipSizeIfNeeded(v122, v115, *(&v115 + 1), &v115))
  {
    goto LABEL_153;
  }

LABEL_167:
  OUTLINED_FUNCTION_121();
}

uint64_t CMPhotoUnifiedJPEGDecoderFormatSupportedByHW(int a1, int a2, int a3)
{
  if (a3 != 8)
  {
    v7 = JPEGDeviceInterface_supports12bitsFormat();
    if (a3 != 12 || !v7)
    {
      return 0;
    }

    if (a1 <= 1952854575)
    {
      if (a1 <= 1885745711)
      {
        result = 1;
        if (a1 == 1278226736)
        {
          return result;
        }

        v9 = 1278226738;
        goto LABEL_18;
      }

      if (a1 != 1885745712)
      {
        if (a1 != 1885745714)
        {
          v8 = 1885746228;
LABEL_24:
          if (a1 != v8)
          {
            return 0;
          }

          return a2 == 1;
        }

        return a2 == 3;
      }
    }

    else if (a1 > 2019963439)
    {
      if (a1 == 2019963956)
      {
        return a2 == 1;
      }

      if (a1 == 2019963442)
      {
        return a2 == 3;
      }

      if (a1 != 2019963440)
      {
        return 0;
      }
    }

    else if (a1 != 1952854576)
    {
      if (a1 != 1952854578)
      {
        v8 = 1952855092;
        goto LABEL_24;
      }

      return a2 == 3;
    }

    return a2 == 5;
  }

  result = 1;
  if (a1 <= 875836517)
  {
    if (a1 == 875704422)
    {
      return result;
    }

    v9 = 875704934;
LABEL_18:
    if (a1 == v9)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 875836518 || a1 == 1111970369)
  {
    return result;
  }

  if (a1 != 1278226488)
  {
    return 0;
  }

  return JPEGDeviceInterface_supports12bitsFormat();
}

uint64_t CMPhotoUnifiedJPEGDecoderDecode(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 a12, char a13, void *a14, uint64_t a15)
{
  HIDWORD(v254) = a6;
  v286 = *MEMORY[0x1E69E9840];
  if (!a15)
  {
    return 4294950306;
  }

  v17 = a4;
  v18 = a2;
  v20 = a10;
  OUTLINED_FUNCTION_3_13(a1, a2, a3, a4, a5, a6, a7, a8, v212, v216, v218, v220, v222, v223, v225, v227, v229, v232, v234, v236, v239, v241, v243, v246, v248, a15, v251, v253, v254, v256, v258, v261, a7);
  LODWORD(v259) = v21;
  v26 = _prepare(v22, v23, v24, v21, &v268, v25, 0, a10, v213);
  if (v26)
  {
    return v26;
  }

  v257 = a8;
  v235 = v15;
  v27 = &v268;
  HIDWORD(v247) = a12;
  v249 = a11;
  v28 = MEMORY[0x1E695FF58];
  v252 = v18;
  if (v263)
  {
    HIDWORD(v242) = v17;
    OUTLINED_FUNCTION_2_17();
    if (v41)
    {
      OUTLINED_FUNCTION_6_11();
      kdebug_trace();
    }

    v29 = v262[1];
    v31 = v262[2];
    v30 = v262[3];
    LODWORD(v264) = 0;
    v32 = *(a1 + 37);
    v33 = *(a1 + 38);
    v280[0] = 0;
    v268 = 0u;
    v269 = 0u;
    v238 = a1 + 37;
    v34 = *(a1 + 173);
    v245 = v30;
    if (v34 == 8)
    {
      goto LABEL_10;
    }

    if (v34 != 12)
    {
      v47 = 4294951822;
LABEL_164:
      v116 = v257;
      OUTLINED_FUNCTION_2_17();
      if (v41)
      {
        OUTLINED_FUNCTION_0_18();
        OUTLINED_FUNCTION_6_11();
        v117 = kdebug_trace();
      }

      if (!HIDWORD(v242) && v47)
      {
        OUTLINED_FUNCTION_3_13(v117, v118, v119, v120, v121, v122, v123, v124, v214, v217, v219, v221, *(&v221 + 1), v224, v226, v228, v230, v233, v235, v238, v240, v242, v245, v247, v249, v250, v252, a14, v255, v257, v259, a10, v262);
        return _prepare(a1, v18, 1, v260, &v268, v116, 0, v20, v215);
      }

      return v47;
    }

    v27 = v18;
    v18 = v29;
    JPEGDeviceInterface_supports12bitsFormat();
    OUTLINED_FUNCTION_1_15();
    if (v35)
    {
LABEL_10:
      OUTLINED_FUNCTION_2_17();
      if (v41)
      {
        OUTLINED_FUNCTION_0_18();
        v27 = v18;
        v18 = v39;
        OUTLINED_FUNCTION_6_11();
        kdebug_trace();
        OUTLINED_FUNCTION_1_15();
      }

      v40 = *(a1 + 173);
      v240 = v31;
      if (v40 == 8)
      {
        v41 = v259 == 875704422 || v259 == 875704934;
        if (v41 || v259 == 875836518)
        {
          OUTLINED_FUNCTION_12_11();
          if (v54)
          {
            v46 = v53;
          }

          else
          {
            v46 = 875704422;
          }
        }

        else
        {
          if (v259 == 1380401729)
          {
LABEL_24:
            OUTLINED_FUNCTION_12_11();
            LODWORD(v233) = v259;
            if ((v43 & 1) == 0)
            {
              v44 = *(a1 + 41);
              if (v44 == 2)
              {
                v45 = 875836518;
              }

              else
              {
                v45 = 875704422;
              }

              if (v44 == 1)
              {
                v46 = 875704934;
              }

              else
              {
                v46 = v45;
              }

              goto LABEL_57;
            }

LABEL_58:
            HIDWORD(v233) = (v37 | v36) != 0;
            if (v37 | v36 || v31 | v38)
            {
              v58 = *(a1 + 39);
              v59 = *(a1 + 40);
              v60 = v36 / v59;
              v61 = v36 + v38 + v59 - 1;
              v62 = (v37 + v31 + v58 - 1) / v58;
              *&v268 = v37 / v58;
              *(&v268 + 1) = v36 / v59;
              v63 = v62 - v37 / v58;
              v64 = *(a1 + 38);
              if (v63 * v58 >= *(a1 + 37))
              {
                v32 = *(a1 + 37);
              }

              else
              {
                v32 = v63 * v58;
              }

              v65 = v61 / v59;
              *&v269 = v62 - v37 / v58;
              *(&v269 + 1) = v65 - v60;
              if ((v65 - v60) * v59 >= v64)
              {
                v33 = v64;
              }

              else
              {
                v33 = (v65 - v60) * v59;
              }
            }

            v228 = v37;
            v230 = v36;
            if (v257)
            {
              v66 = v32 >> v257;
              if (v32 >> v257 << v257 != v32)
              {
                ++v66;
              }

              v67 = v33 >> v257;
              if (v33 >> v257 << v257 != v33)
              {
                ++v67;
              }

              if (v66 >= v67)
              {
                v68 = v67;
              }

              else
              {
                v68 = v66;
              }

              if (v257 < 1 || v68 > 3)
              {
                v33 = v67;
                v32 = v66;
                v226 = v257;
              }

              else
              {
                v70 = v257;
                do
                {
                  v71 = v70 - 1;
                  v72 = v32 >> (v70 - 1);
                  if (v72 << (v70 - 1) != v32)
                  {
                    ++v72;
                  }

                  v73 = v33 >> v71;
                  if (v33 >> v71 << v71 != v33)
                  {
                    ++v73;
                  }

                  if (v72 >= v73)
                  {
                    v74 = v73;
                  }

                  else
                  {
                    v74 = v72;
                  }
                }

                while (v70-- >= 2 && v74 < 4);
                v33 = v73;
                v32 = v72;
                v226 = v71;
              }
            }

            else
            {
              v226 = 0;
            }

            if (!JPEGDeviceInterface_supportsDecodeSize(*(a1 + 37), *(a1 + 38), *(a1 + 41), v32, v33))
            {
              v47 = 4294950302;
LABEL_162:
              v115 = *(v27 + 26);
              if (v115)
              {
                CFRelease(v115);
              }

              goto LABEL_164;
            }

            if (!a14 || ((v76 = vcvtad_u64_f64(CMPhotoGetPixelBufferCLAPAsRect(a14)), v78 = vcvtad_u64_f64(v77), v80 = vcvtad_u64_f64(v79), v82 = vcvtad_u64_f64(v81), PixelFormatType = CVPixelBufferGetPixelFormatType(a14), (v233 & 0x100000000) == 0) ? (v84 = (v240 | v245) == 0) : (v84 = 0), v32 == v80 ? (v85 = v33 == v82) : (v85 = 0), v85 ? (v86 = v76 == 0) : (v86 = 0), v86 ? (v87 = v78 == 0) : (v87 = 0), v87 ? (v88 = v233 == PixelFormatType) : (v88 = 0), v88 ? (v89 = !v84) : (v89 = 1), v20 = a10, v28 = MEMORY[0x1E695FF58], v27 = &v268, v18 = v252, v31 = v240, v89))
            {
              OUTLINED_FUNCTION_2_17();
              if (v41)
              {
                OUTLINED_FUNCTION_0_18();
                OUTLINED_FUNCTION_4((v91 + 4), v20);
              }

              if (HIDWORD(v255))
              {
                CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], v233, v32, v33, *(a1 + 39), *(a1 + 40), a11, 0, v280, v217, v219, v221, *(&v221 + 1), v224, v226, v228, v230, v233, v15, v238, v240, v242, v245, v247, a11);
              }

              else
              {
                PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(v18, v233, v32, v33, a12 == 0, *(a1 + 39), *(a1 + 40), 0, a11, 0, v280);
              }

              v47 = PixelBuffer;
              OUTLINED_FUNCTION_2_17();
              if (v41)
              {
                OUTLINED_FUNCTION_0_18();
                kdebug_trace();
              }

              if (v47)
              {
                goto LABEL_162;
              }
            }

            else
            {
              v90 = CFRetain(a14);
              v280[0] = v90;
              if (HIDWORD(v255) && CVPixelBufferGetIOSurface(v90))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_11();
                v47 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v214, v217, v219);
                goto LABEL_162;
              }
            }

            if (qword_1ED6FA638 != -1)
            {
              dispatch_once(&qword_1ED6FA638, &__block_literal_global_7);
            }

            v93 = *v28;
            if (_MergedGlobals_6)
            {
              v94 = 1;
            }

            else
            {
              if (v93 == 1)
              {
                OUTLINED_FUNCTION_0_18();
                OUTLINED_FUNCTION_6_11();
                kdebug_trace();
              }

              v95 = CMPhotoDecompressionSessionCopyPooledJPEGHWSession(*a1, &v264);
              OUTLINED_FUNCTION_2_17();
              if (v41)
              {
                OUTLINED_FUNCTION_0_18();
                OUTLINED_FUNCTION_6_11();
                kdebug_trace();
                v93 = *v28;
              }

              v94 = v95 != 0;
            }

            LODWORD(v233) = v94;
            if (v93 == 1)
            {
              OUTLINED_FUNCTION_0_18();
              OUTLINED_FUNCTION_6_11();
              kdebug_trace();
            }

            v97 = a1[27];
            v96 = a1[28];
            CVPixelBufferGetIOSurface(v280[0]);
            v98 = a9 != 0;
            v99 = OUTLINED_FUNCTION_8_13();
            v100 = v97;
            v20 = a10;
            v101 = v96;
            v27 = &v268;
            v47 = JPEGDecompressSurface(v99, v102, v100, v101, v103, v238, v98, a10, v214, v217, v219, v221);
            if (v47 == -536870192)
            {
              *&v277 = 0;
              PooledIOSurfaceFromStreamRange = _createPooledIOSurfaceFromStreamRange(v252, a1[2], a1[3], a1[4], 0, &v277);
              if (PooledIOSurfaceFromStreamRange)
              {
                v47 = PooledIOSurfaceFromStreamRange;
                v18 = v252;
LABEL_160:
                if ((v233 & 1) == 0)
                {
                  CMPhotoDecompressionSessionRecyclePooledJPEGHWSession(*a1, v264, 0);
                }

                goto LABEL_162;
              }

              v105 = v277;
              v106 = a1[28];
              CVPixelBufferGetIOSurface(v280[0]);
              v107 = OUTLINED_FUNCTION_8_13();
              v47 = JPEGDecompressSurface(v107, v108, v105, v106, v109, v238, v98, a10, v214, v217, v219, v221);
              if (*(a1 + 232))
              {
                IOSurfaceDecrementUseCount(a1[27]);
              }

              v110 = a1[27];
              if (v110)
              {
                CFRelease(v110);
              }

              a1[27] = v105;
              *(a1 + 232) = 1;
              v20 = a10;
              v27 = &v268;
              v31 = v240;
            }

            v18 = v252;
            v111 = v245;
            if (!v47)
            {
              if ((v233 & 0x100000000) == 0 && !(v31 | v245))
              {
                goto LABEL_159;
              }

              v112 = v228 - v268 * *(a1 + 39);
              v113 = v230 - *(&v268 + 1) * *(a1 + 40);
              if (v226)
              {
                v114 = 1 << v226;
                v112 /= v114;
                if (v31 >> v226 << v226 == v31)
                {
                  v31 >>= v226;
                }

                else
                {
                  v31 = (v31 >> v226) + 1;
                }

                if (v245 >> v226 << v226 == v245)
                {
                  v111 = v245 >> v226;
                }

                else
                {
                  v111 = (v245 >> v226) + 1;
                }

                v113 /= v114;
              }

              v47 = CMPhotoSetPixelBufferCLAPFromRect(v280[0], 1, 1, v112, v113, v31, v111);
              if (!v47)
              {
LABEL_159:
                v47 = 0;
                *v250 = v280[0];
                v280[0] = 0;
              }
            }

            goto LABEL_160;
          }

          if (v259 != 1278226488)
          {
            LODWORD(v233) = 875704422;
            if (v259 != 1111970369)
            {
              goto LABEL_58;
            }

            goto LABEL_24;
          }

          v27 = v18;
          v18 = v36;
          JPEGDeviceInterface_supports12bitsFormat();
          OUTLINED_FUNCTION_1_15();
          if (v57)
          {
            v46 = 1278226488;
          }

          else
          {
            v46 = 875704422;
          }
        }

LABEL_57:
        LODWORD(v233) = v46;
        goto LABEL_58;
      }

      v48 = *(a1 + 41);
      if (v48 <= 4)
      {
        if (!a12)
        {
          v231 = v36;
          v55 = v37;
          v56 = CMPhotoUnifiedJPEGDecoderFormatSupportedByHW(v259, dword_1A5ABAAE8[v48], v40);
          v37 = v55;
          v27 = &v268;
          v36 = v231;
          v38 = v245;
          LODWORD(v233) = v259;
          if (v56)
          {
            goto LABEL_58;
          }
        }

        LODWORD(v233) = 1278226738;
        if ((v259 - 1278226488) <= 0x30 && ((1 << (v259 - 56)) & 0x1400000000001) != 0)
        {
          goto LABEL_58;
        }

        if ((v259 - 1278226736) <= 6 && ((1 << (v259 - 48)) & 0x45) != 0)
        {
          goto LABEL_58;
        }

        v49 = v259 == 1717855600 || v259 == 1717856627;
        v50 = v49 || v259 == 1751410032;
        if (v50 || v259 == 1751411059)
        {
          goto LABEL_58;
        }

        v52 = *(a1 + 41) - 1;
        if (v52 > 3)
        {
          v46 = 1952854576;
        }

        else
        {
          v46 = dword_1A5ABAB10[v52];
        }

        goto LABEL_57;
      }
    }

    v47 = 4294951822;
    goto LABEL_162;
  }

  OUTLINED_FUNCTION_2_17();
  if (v41)
  {
    kdebug_trace();
    OUTLINED_FUNCTION_2_17();
    v125 = v41;
  }

  else
  {
    v125 = 0;
  }

  v126 = *v262;
  v127 = v262[1];
  v129 = v262[2];
  v128 = v262[3];
  v276 = 0;
  v275 = 0;
  v284 = 0;
  v285 = 0;
  v283 = 0uLL;
  v281 = 0;
  v282 = 0;
  if (v125)
  {
    OUTLINED_FUNCTION_0_18();
    kdebug_trace();
  }

  bzero(&v268, 0x98uLL);
  if (*(a1 + 35) == 8)
  {
    v130 = *(a1 + 28);
    v267 = 0;
    v131 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(v259, v130 != 2, &v267);
    if (v130 != 2)
    {
      if (!a12 && !v131)
      {
        v132 = 1;
        goto LABEL_185;
      }

      switch(v259)
      {
        case 0x34323066:
        case 0x34323266:
        case 0x34343466:
          v134 = 0;
          if (a12)
          {
            v135 = 875704422;
          }

          else
          {
            v135 = v259;
          }

          break;
        case 0x52474241:
          goto LABEL_209;
        case 0x4C303038:
          goto LABEL_226;
        case 0x42475241:
LABEL_209:
          if (a12)
          {
            v135 = 1111970369;
            if (v259 == 1111970369 && HIDWORD(v255))
            {
              v134 = 0;
            }

            else
            {
              v139 = *(a1 + 34);
              v134 = 0;
              if (v139 >= 5)
              {
                v135 = 875704422;
              }

              else
              {
                v135 = dword_1A5ABAAFC[v139];
              }
            }

            break;
          }

LABEL_226:
          v134 = 0;
          v132 = 1;
          goto LABEL_196;
        default:
          v134 = 0;
          if (*(a1 + 34) == 4)
          {
            v135 = 1278226488;
          }

          else
          {
            v135 = 875704422;
          }

          break;
      }

      v132 = 1;
      goto LABEL_235;
    }
  }

  else
  {
    v267 = 0;
    v131 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(v259, 0, &v267);
  }

  v132 = 0;
LABEL_185:
  v133 = *(a1 + 35);
  if (*(a1 + 28) == 2)
  {
    if (v133 < 9)
    {
      v134 = 8 - v133;
      if (*(a1 + 25) == 3)
      {
        v135 = 1111970369;
      }

      else
      {
        v135 = 1278226488;
      }

      goto LABEL_235;
    }

    goto LABEL_191;
  }

  if (v133 == 12)
  {
LABEL_191:
    v134 = 16 - v133;
    if (*(a1 + 25) == 3)
    {
      if (*(a1 + 34) == 3 && *(a1 + 29) == 1)
      {
        v135 = 1952854576;
      }

      else
      {
        v135 = 1815491698;
      }
    }

    else
    {
      v135 = 1278226742;
    }

    goto LABEL_235;
  }

  v134 = 0;
  if (v131)
  {
LABEL_196:
    v135 = v259;
    goto LABEL_235;
  }

  if (v267 == 18 && v133 == 8)
  {
    v135 = 1278226488;
  }

  else
  {
    v135 = v259;
  }

LABEL_235:
  v140 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(v135, v132, &v267);
  if (v140)
  {
LABEL_350:
    v47 = v140;
    v147 = MEMORY[0x1E695FF58];
    goto LABEL_347;
  }

  if (v267 == 18)
  {
    v141 = v259 == 825306677 || v259 == 1932996149;
    if (v141 || v259 == 825437747)
    {
      v135 = v259;
    }
  }

  applejpeg_decode_clear_options();
  v143 = applejpeg_decode_set_option_outformat();
  if (v143 || (v126 | v127 || v129 | v128) && (v143 = applejpeg_decode_set_option_crop()) != 0 || v257 && (v143 = applejpeg_decode_set_option_outsize()) != 0)
  {
    v140 = CMPhotoAppleJPEGErrorToCMPhotoError(v143);
    goto LABEL_350;
  }

  v265 = 0;
  v266 = 0;
  output_dimensions = applejpeg_decode_get_output_dimensions();
  if (output_dimensions)
  {
    v47 = CMPhotoAppleJPEGErrorToCMPhotoError(output_dimensions);
    v147 = MEMORY[0x1E695FF58];
LABEL_347:
    if (v276)
    {
      CFRelease(v276);
    }

    goto LABEL_342;
  }

  v145 = v266;
  v146 = v265;
  v147 = MEMORY[0x1E695FF58];
  if (!a14 || ((CMPhotoGetPixelBufferCLAPAsRect(a14), v149 = v148, v151 = v150, v152 = CVPixelBufferGetPixelFormatType(a14), v146 = v265, v145 = v266, v135 == v152) ? (v153 = v149 == v266) : (v153 = 0), v153 ? (v154 = v151 == v265) : (v154 = 0), !v154))
  {
    if (*v147 == 1)
    {
      OUTLINED_FUNCTION_0_18();
      OUTLINED_FUNCTION_4((v155 + 4), a10);
      v146 = v265;
      v145 = v266;
    }

    v156 = v145;
    v157 = v146;
    if (v135 != 1952854576)
    {
      if (v135 == 875704934)
      {
        v158 = v145 + (v145 | 0xFFFFFFFFFFFFFFFELL) + 2;
        v159 = v146;
LABEL_271:
        if (v158 > v145 || v159 > v146)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            v47 = 4294950305;
            v147 = MEMORY[0x1E695FF58];
            goto LABEL_285;
          }

          v165 = Mutable;
          v164 = CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966090], v158 - v156);
          if (v164 || (v164 = CMPhotoCFDictionarySetSize(v165, *MEMORY[0x1E6966078], v159 - v157), v164))
          {
            v47 = v164;
            v147 = MEMORY[0x1E695FF58];
LABEL_284:
            CFRelease(v165);
            goto LABEL_285;
          }
        }

        else
        {
          v165 = 0;
        }

        if (HIDWORD(v255))
        {
          CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], v135, v156, v157, v158, v159, a11, v165, &v276, v217, v219, v221, *(&v221 + 1), v224, v226, v228, v230, v233, v15, v237, v240, v242, v244, v247, a11);
        }

        else
        {
          v166 = CMPhotoSurfacePoolCreatePixelBuffer(v252, v135, v156, v157, 1, v158, v159, 0, a11, v165, &v276);
        }

        v47 = v166;
        v147 = MEMORY[0x1E695FF58];
        if (v165)
        {
          goto LABEL_284;
        }

LABEL_285:
        if (*v147 == 1)
        {
          OUTLINED_FUNCTION_0_18();
          kdebug_trace();
        }

        if (v47)
        {
          goto LABEL_347;
        }

        goto LABEL_288;
      }

      v158 = v145;
      v159 = v146;
      if (v135 != 875704422)
      {
        goto LABEL_271;
      }
    }

    v158 = v145 + (v145 | 0xFFFFFFFFFFFFFFFELL) + 2;
    v159 = v146 + (v146 | 0xFFFFFFFFFFFFFFFELL) + 2;
    goto LABEL_271;
  }

  v160 = CFRetain(a14);
  v276 = v160;
  if (HIDWORD(v255) && CVPixelBufferGetIOSurface(v160))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    v161 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v214, v217, v219);
LABEL_355:
    v47 = v161;
    goto LABEL_347;
  }

LABEL_288:
  v161 = CVPixelBufferLockBaseAddress(v276, 0);
  if (v161)
  {
    goto LABEL_355;
  }

  PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v276, 0, 0, &v275, &v284, &v283, &v281);
  if (PixelBufferDataPointers)
  {
LABEL_352:
    v47 = PixelBufferDataPointers;
LABEL_346:
    CVPixelBufferUnlockBaseAddress(v276, 0);
    goto LABEL_347;
  }

  v280[0] = v284;
  v280[1] = v281;
  v280[2] = v285;
  v280[3] = v282;
  v277 = v283;
  v278 = 0;
  v279 = 0;
  v168 = applejpeg_decode_set_option_stride();
  if (v168)
  {
    goto LABEL_351;
  }

  if (*v147 == 1)
  {
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_4((v169 + 9), a10);
  }

  v168 = applejpeg_decode_image_all();
  if ((v168 + 1) > 1)
  {
LABEL_351:
    PixelBufferDataPointers = CMPhotoAppleJPEGErrorToCMPhotoError(v168);
    goto LABEL_352;
  }

  if (!a13 && v134 >= 1)
  {
    if ((v272 - 16) < 2)
    {
      if (v271 >= 1)
      {
        OUTLINED_FUNCTION_5_13();
        do
        {
          if (v177 >= 1)
          {
            do
            {
              OUTLINED_FUNCTION_10_14();
              *v178 = v179;
            }

            while (v180 != 1);
          }

          ++v176;
        }

        while (v176 != v175);
      }

      goto LABEL_341;
    }

    switch(v272)
    {
      case 4:
        v181 = v271;
        if (v271 >= 1)
        {
          v182 = 0;
          v183 = v270;
          do
          {
            if (v183 >= 1)
            {
              do
              {
                OUTLINED_FUNCTION_10_14();
                *(v187 + 4 * v186) = vuzp1_s8(v185, v184).u32[0];
                v183 = v270;
              }

              while (v186 + 1 < v270);
              v181 = v271;
            }

            ++v182;
          }

          while (v182 < v181);
        }

        goto LABEL_341;
      case 19:
        v196 = v271;
        if (v271 >= 1)
        {
          v197 = 0;
          v198 = v270;
          v199 = v268;
          v200 = v273;
          v201 = 16 - 2 * v134;
          do
          {
            if (v198 >= 1)
            {
              v202 = (v199 + v197 * v200);
              v203 = v198;
              do
              {
                *v202 = (*v202 << v134) | (*v202 >> v201);
                ++v202;
                --v203;
              }

              while (v203);
            }

            ++v197;
          }

          while (v197 != v196);
          v204 = 0;
          v205 = 2 * ((v198 + 1) / 2);
          v206 = (v196 + 1) >> 1;
          v207 = *(&v268 + 1);
          v208 = v274;
          if (v205 <= 1)
          {
            v205 = 1;
          }

          do
          {
            if (v198 >= 1)
            {
              v209 = (v207 + v204 * v208);
              v210 = v205;
              do
              {
                *v209 = (*v209 << v134) | (*v209 >> v201);
                ++v209;
                --v210;
              }

              while (v210);
            }

            ++v204;
          }

          while (v204 != v206);
        }

        goto LABEL_341;
      case 18:
        if (v271 >= 1)
        {
          OUTLINED_FUNCTION_5_13();
          do
          {
            if (v192 >= 1)
            {
              v194 = (v190 + v189 * v191);
              v195 = v192;
              do
              {
                *v194 = (*v194 << v134) | (*v194 >> v193);
                ++v194;
                --v195;
              }

              while (v195);
            }

            ++v189;
          }

          while (v189 != v188);
        }

        goto LABEL_341;
      case 5:
        v170 = v271;
        if (v271 >= 1)
        {
          v171 = 0;
          v172 = v270;
          do
          {
            if (v172 >= 1)
            {
              v173 = 0;
              v174 = v268 + v273 * v171;
              do
              {
                *(v174 + v173) = (*(v174 + v173) << v134) | (*(v174 + v173) >> (8 - 2 * v134));
                v172 = v270;
                ++v173;
              }

              while (v173 < v270);
              v170 = v271;
            }

            ++v171;
          }

          while (v171 < v170);
        }

        goto LABEL_341;
    }

    v47 = 4294950306;
    goto LABEL_346;
  }

LABEL_341:
  CVPixelBufferUnlockBaseAddress(v276, 0);
  v47 = 0;
  *v250 = v276;
LABEL_342:
  if (*v147 == 1)
  {
    OUTLINED_FUNCTION_0_18();
    kdebug_trace();
  }

  return v47;
}