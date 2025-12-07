uint64_t VTSelectAndCreateVideoDecoderInstanceInternal(uint64_t a1, uint64_t a2, int a3, CFDictionaryRef theDict, CFIndex a5, void *a6, _BYTE *a7, CFIndex *a8)
{
  LOBYTE(v65) = 0;
  LOBYTE(v71) = 0;
  v11 = MEMORY[0x1E695E480];
  if (!theDict)
  {
    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E695E4C0];
  if (v12 == CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    v13 = OUTLINED_FUNCTION_10_2();
    if (!v13)
    {
      goto LABEL_25;
    }

    v17 = OUTLINED_FUNCTION_7_2();
    CFDictionaryRemoveValue(v17, v18);
    goto LABEL_10;
  }

  if (!CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
LABEL_5:
    v13 = OUTLINED_FUNCTION_10_2();
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = *MEMORY[0x1E695E4D0];
    v15 = OUTLINED_FUNCTION_7_2();
    CFDictionarySetValue(v15, v16, v14);
    if (!theDict)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  v19 = *MEMORY[0x1E695E4D0];
  if (v19 == CFDictionaryGetValue(theDict, @"RequireHardwareAcceleratedVideoDecoder") && !CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    if (!v13)
    {
      v13 = OUTLINED_FUNCTION_10_2();
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    v20 = OUTLINED_FUNCTION_7_2();
    CFDictionarySetValue(v20, v21, v19);
  }

LABEL_15:
  if (a1 == 1635135537)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v22 = v71 != 0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    if (!v13)
    {
      v13 = OUTLINED_FUNCTION_10_2();
    }

    FigCFDictionarySetValue();
  }

  if (theDict && !v13)
  {
    v13 = CFRetain(theDict);
  }

LABEL_25:
  v69 = 0;
  v68 = 0;
  vtPopulateVideoDecoderRegistry();
  if (v13)
  {
    v23 = CFDictionaryGetValue(v13, @"DecoderID");
  }

  else
  {
    v23 = 0;
  }

  v24 = a1 == 1987063865 || a1 == 1903587385;
  if (v24 && !gVTAlreadyInDecodeServer)
  {
    LOBYTE(v65) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v40 = 0;
    v41 = 4294954390;
    goto LABEL_91;
  }

  if (!sVideoDecoderRegistry)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, allocator, theArray);
    v27 = 0;
    goto LABEL_88;
  }

  v67 = 0;
  FigCFDictionaryGetInt64IfPresent();
  v65 = 0uLL;
  v66 = 0;
  if (v13)
  {
    v25 = *MEMORY[0x1E695E4D0];
    v26 = v25 == CFDictionaryGetValue(v13, @"RequireHardwareAcceleratedVideoDecoder");
  }

  else
  {
    v26 = 0;
  }

  *bytes = bswap32(a1);
  v28 = *v11;
  v29 = CFStringCreateWithBytes(*v11, bytes, 4, 0x600u, 0);
  v27 = v29;
  if (!v29)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, allocator, theArray);
    goto LABEL_63;
  }

  *&v65 = v29;
  *(&v65 + 1) = v13;
  LOBYTE(v66) = v26;
  OUTLINED_FUNCTION_2_3();
  v30 = FigRegistryCopyFilteredItemList();
  if (v30)
  {
    goto LABEL_42;
  }

  v39 = vtCopyExpandedDecoderListForWrappers(v69, &v65, &v68, 0);
  if (v39)
  {
LABEL_63:
    v41 = v39;
    goto LABEL_64;
  }

  v31 = v68;
  if (v68)
  {
    if (v69)
    {
      CFRelease(v69);
      v31 = v68;
    }

    v69 = v31;
    v68 = 0;
    goto LABEL_43;
  }

LABEL_42:
  v31 = v69;
LABEL_43:
  v41 = 4294954390;
  if (!v31)
  {
    goto LABEL_88;
  }

  Count = CFArrayGetCount(v31);
  v41 = Count ? v30 : 4294954390;
  if (v30 || !Count)
  {
    goto LABEL_88;
  }

  if (!v23)
  {
    goto LABEL_84;
  }

  v33 = v69;
  v70 = 0;
  v71 = 0;
  v34 = CFArrayGetCount(v69);
  allocatora = v28;
  theArraya = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
  if (v34 < 1)
  {
LABEL_72:
    v41 = 0;
    v68 = theArraya;
    v42 = 0;
    goto LABEL_73;
  }

  v35 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v33, v35);
    if (!ValueAtIndex)
    {
      goto LABEL_60;
    }

    v37 = ValueAtIndex;
    v38 = FigRegistryItemCopyDescription();
    if (v38)
    {
      break;
    }

    v38 = FigRegistryItemCopyMatchingInfo();
    if (v38)
    {
      break;
    }

    CFDictionaryGetValue(v71, @"CMClassImplementationID");
    if (FigCFEqual())
    {
      CFArrayAppendValue(theArraya, v37);
      goto LABEL_72;
    }

    if (v71)
    {
      CFRelease(v71);
      v71 = 0;
    }

    if (v70)
    {
      CFRelease(v70);
      v70 = 0;
    }

LABEL_60:
    if (v34 == ++v35)
    {
      goto LABEL_72;
    }
  }

  v41 = v38;
  v42 = theArraya;
LABEL_73:
  if (v71)
  {
    CFRelease(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v28 = allocatora;
  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
LABEL_64:
    v40 = 0;
    if (v27)
    {
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  if (v69)
  {
    CFRelease(v69);
  }

  v43 = v68;
  v69 = v68;
  v68 = 0;
  if (v43 && CFArrayGetCount(v43))
  {
LABEL_84:
    v44 = CFArrayGetCount(v69);
    MutableCopy = CFArrayCreateMutableCopy(v28, v44, v69);
    if (MutableCopy)
    {
      v46 = MutableCopy;
      v72.length = CFArrayGetCount(MutableCopy);
      v72.location = 0;
      CFArraySortValues(v46, v72, vtSortRegistryItemsByRating, v13);
      CFRelease(v69);
      v41 = 0;
      v69 = v46;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 4294954390;
  }

LABEL_88:
  v40 = v69;
  v69 = 0;
  if (v27)
  {
LABEL_89:
    CFRelease(v27);
  }

LABEL_90:
  v11 = MEMORY[0x1E695E480];
LABEL_91:
  if (v68)
  {
    CFRelease(v68);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (!v41)
  {
    if (a7)
    {
      *a7 = 0;
    }

    if (!a6)
    {
      goto LABEL_123;
    }

    if (v40)
    {
      v47 = CFArrayGetCount(v40);
      LODWORD(v48) = v47 > a5;
      if (v47)
      {
        v49 = 0;
        goto LABEL_104;
      }
    }

    else
    {
      v47 = 0;
      v48 = a5 >> 63;
    }

    v49 = -12906;
LABEL_104:
    if (v48)
    {
      v41 = v49;
    }

    else
    {
      v41 = 4294954390;
    }

    if (v41)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_124;
    }

    if (!v48)
    {
LABEL_123:
      v41 = 0;
      goto LABEL_124;
    }

    allocatorb = *v11;
    theArrayb = @"VTHostDecoderID";
    v53 = @"VTHostDecoderID";
    while (2)
    {
      *&v65 = 0;
      v71 = 0;
      CFArrayGetValueAtIndex(v40, a5);
      FigRegistryItemCopyMatchingInfo();
      FigRegistryItemCopyDescription();
      if (FigRegistryItemGetFactory())
      {
        *&v65 = 0;
LABEL_115:
        if (v71)
        {
          v50 = (v71)(a1, 0, 0, a2, a6);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_5();
          v50 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, allocatorb, theArrayb);
        }
      }

      else
      {
        if (!v65)
        {
          goto LABEL_115;
        }

        v50 = (v65)(a1, a2, a6);
      }

      v41 = v50;
      if (!v50)
      {
        if (*a6 || (fig_log_get_emitter(), OUTLINED_FUNCTION_0_5(), v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, allocatorb, theArrayb), !v41))
        {
          if (a8)
          {
            *a8 = a5;
          }

          v41 = 0;
          break;
        }
      }

      if (v47 == ++a5)
      {
        break;
      }

      continue;
    }
  }

LABEL_124:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v41;
}

uint64_t VTRegisterVideoDecoderWithInfo(unsigned int a1, const __CFDictionary *a2, uint64_t a3)
{
  valuePtr = 0;
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  *bytes = bswap32(a1);
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  if (!v7)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, valuePtr, v24);
  }

  v8 = v7;
  if (!a2)
  {
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      goto LABEL_8;
    }

LABEL_19:
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, valuePtr, v24);
    v18 = v8;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(a2, @"CMClassImplementationID");
  MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  Mutable = MutableCopy;
  if (Value)
  {
    v12 = CFStringCreateMutableCopy(v6, 0, Value);
    CFStringAppendFormat(v12, 0, @".%@", v8);
    goto LABEL_9;
  }

LABEL_8:
  v14 = FigAtomicIncrement32();
  v12 = CFStringCreateMutable(v6, 0);
  CFStringAppendFormat(v12, 0, @"com.apple.videotoolbox.videodecoder.anon-%d", v14);
LABEL_9:
  CFDictionarySetValue(Mutable, @"VTCodecType", v8);
  v15 = CFStringCreateWithFormat(v6, 0, @"Dynamically Registered %@ Video Decoder", v8);
  v16 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, @"VTRating", v16);
    CFDictionarySetValue(Mutable, @"VTAllowSandboxedDecode", *MEMORY[0x1E695E4C0]);
    v17 = vtRegisterVideoDecoderInternal(v15, v12, Mutable, a3, 0);
  }

  else
  {
    fig_log_get_emitter();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, valuePtr, v24);
  }

  v13 = v17;
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(Mutable);
  CFRelease(v8);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    v18 = v16;
LABEL_20:
    CFRelease(v18);
  }

  return v13;
}

CFDictionaryRef FigCreateIOSurfacePropertiesDictionary()
{
  v17 = *MEMORY[0x1E69E9840];
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  v0 = MEMORY[0x1E696CD60];
  if ((hasMMU_checked & 1) == 0)
  {
    v13 = 16;
    v1 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io");
    if (v1)
    {
      v2 = v1;
      hasMMU_hasMMU = MEMORY[0x193AE3400](v1, "iommu-present", valuePtr, &v13) == 0;
      IOObjectRelease(v2);
    }

    hasMMU_checked = 1;
  }

  v3 = hasMMU_hasMMU;
  if ((hasVXD_checked & 1) == 0)
  {
    v4 = 0;
    v5 = *v0;
    while (1)
    {
      v6 = IOServiceMatching(hasVXD_vxdNames[v4]);
      MatchingService = IOServiceGetMatchingService(v5, v6);
      if (MatchingService)
      {
        break;
      }

      if (++v4 == 3)
      {
        goto LABEL_11;
      }
    }

    IOObjectRelease(MatchingService);
    hasVXD_hasSupport = 1;
LABEL_11:
    hasVXD_checked = 1;
  }

  v8 = hasVXD_hasSupport;
  MEMORY[0x193AE3010](&FigRegisterIOSurfacePixelTransferCapability_sOnlyRegisterOnce, FigRegisterIOSurfacePixelTransferCapabilityOnce);
  if (!v3)
  {
    keys[0] = *MEMORY[0x1E696CF90];
    values[0] = @"PurpleGfxMem";
    v11 = 1;
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if ((v8 & 1) == 0)
  {
    v11 = 0;
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  valuePtr[0] = 1024;
  v9 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  keys[0] = *MEMORY[0x1E696CE60];
  values[0] = v9;
  v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t FigRegisterIOSurfacePixelTransferCapabilityOnce()
{
  v51[5] = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  sUnsetYCbCrMatrix = CVYCbCrMatrixGetIntegerCodePointForString(0);
  sUnsetColorPrimaryMatrix = CVColorPrimariesGetIntegerCodePointForString(0);
  sUnsetTransferFunction = CVTransferFunctionGetIntegerCodePointForString(0);
  result = VTAvoidHardwarePixelTransfer();
  if (result)
  {
    return result;
  }

  scalerCapabilities(v39);
  v1 = LOBYTE(v39[0]) ? 15 : 13;
  v2 = BYTE1(v39[0]) ? v1 | 0x10 : v1;
  result = IOSurfaceAcceleratorCreate();
  if (result)
  {
    return result;
  }

  CFRelease(0);
  if ((hasH1CLCD_checked & 1) == 0)
  {
    v3 = *MEMORY[0x1E696CD60];
    v4 = IOServiceMatching("AppleH1CLCD");
    MatchingService = IOServiceGetMatchingService(v3, v4);
    hasH1CLCD_hasH1CLCDService = MatchingService != 0;
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
    }

    hasH1CLCD_checked = 1;
  }

  if (hasH1CLCD_hasH1CLCDService)
  {
    VTRegisterPixelTransferCapability(2033463856, 846624121, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2033463856, 1278555701, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 2033463856, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 1714696752, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 2037741171, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 2037741158, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2033463856, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 2037741171, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 2037741158, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    return VTRegisterPixelTransferCapability(2037741158, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  VTRegisterPixelTransferCapability(875704438, 875704438, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704438, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875704438, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704950, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704934, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875704950, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875704934, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875836534, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875836518, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875836534, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 875836518, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 1278555701, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1278555701, 1278555701, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1815162994, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1380411457, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1380411457, 1380411457, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  if (BYTE2(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1111970369, 2037741171, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 2037741158, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 1278555701, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 2037741158, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 2037741171, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 875704950, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 875704934, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (HIBYTE(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(875704422, 875704438, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 875704934, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 875704950, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE6(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1278226488, 1278226488, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1278226488, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE8(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1278226742, 1278226742, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE3(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(875704422, 1380401729, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875836518, 1380401729, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE4(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1999843442, 1999843442, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 1111970369, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 875704438, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 875704422, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 1999843442, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 1999843442, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 1999843442, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE5(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1647534392, 1647534392, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE11(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(2016686642, 2016686642, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2019963442, 2019963442, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE4(v39[0]) == 1)
  {
    v6 = &v49[3];
    v48[0] = 1815162994;
    memset(&v49[3], 0, 64);
    v7 = BYTE14(v39[0]);
    if (BYTE14(v39[0]) == 1)
    {
      HIDWORD(v48[0]) = 644624754;
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    qmemcpy(v49, "v024f024v224f224v444f444", 24);
    v9 = BYTE11(v39[0]);
    if (BYTE11(v39[0]) == 1)
    {
      v6 = &v49[4];
      v49[3] = 0x7866323278343232;
      v10 = 8;
    }

    else
    {
      v10 = 6;
    }

    if (BYTE12(v39[0]) == 1)
    {
      *v6 = 2016687156;
      *(v49 + v10 + 1) = 2019963956;
      v10 += 2;
    }

    if (BYTE9(v39[0]) == 1)
    {
      *(v49 + 4 * v10) = 0x7866347078343470;
      v10 += 2;
    }

    if (v7)
    {
      qmemcpy(v49 + 4 * v10, "0v8&0f8&2v8&2f8&4v8&4f8&", 24);
      if (v9)
      {
        *(&v49[3] + v10) = 645428786;
        v10 += 7;
      }

      else
      {
        v10 += 6;
      }
    }

    VTRegisterPixelTransferCapabilityMxN(v48, v8, v49, v10, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE13(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE14(v39[0]) == 1)
  {
    qmemcpy(v49, "0v8&2v8&4v8&0f8&2f8&4f8&0vx&2vx&4vx&0fx&2fx&4fx&0wx&2wx&4wx&p44&p4f&0vs&2vs&4vs&0vt&2vt&4vt&s4x&s4t&s4s&s2x&s2t&s2s&80v&82v&84v&0fh&2fh&4fh&80x&82x&84x&r3w&AGB&AhR&83b&h0L&80L&01L&61L&", sizeof(v49));
    if (BYTE12(v40) == 1)
    {
      qmemcpy(v50, "0v8-0f8-0v8/0f8/0v8|0f8|0vx-0fx-0vx/0fx/0vx|0fx|2vx-2fx-2vx/2fx/2vx|2fx|h0L-h0L/h0L|AhR-AhR/AhR|AGB-AGB/AGB|0fh-0fh/0fh|", sizeof(v50));
      v11 = 76;
    }

    else
    {
      v11 = 46;
    }

    VTRegisterPixelTransferCapabilityMxN(v49, v11, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v49, v11, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(v49, v11, v49, v11, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    if (BYTE8(v42) == 1)
    {
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    }
  }

  qmemcpy(v49, "v024v224v444f024f224f444024p224p444p02fp22fp44fp02wp22wp44wp024x02fx02wx444x44fx44wxp44xp4fxr03wARGB8a3b", 104);
  v12 = HIBYTE(v40);
  if (HIBYTE(v40) == 1)
  {
    LODWORD(v49[15]) = 2016698739;
    *&v49[13] = *"8a0v8a2v8a4vsa2xsa4x";
    if (BYTE13(v40))
    {
      qmemcpy(&v49[15] + 4, "02vt22vt44vtsa2tsa4t", 20);
      if (BYTE14(v40) != 1)
      {
        v13 = 36;
        goto LABEL_70;
      }

      qmemcpy(&v49[18], "02vs22vs44vs", 12);
      v13 = 36;
      v14 = 144;
LABEL_67:
      *(&v49[1] + v14 + 4) = 0x7334617373326173;
      v13 += 5;
      goto LABEL_70;
    }

    v13 = 31;
  }

  else if (BYTE13(v40) == 1)
  {
    qmemcpy(&v49[13], "02vt22vt44vt", 12);
    v13 = 29;
  }

  else
  {
    v13 = 26;
  }

  if (BYTE14(v40))
  {
    qmemcpy(v49 + 4 * v13, "02vs22vs44vs", 12);
    if (!v12)
    {
      v13 += 3;
      goto LABEL_70;
    }

    v14 = 4 * v13;
    goto LABEL_67;
  }

LABEL_70:
  result = VTRegisterPixelTransferCapabilityMxN(v49, v13, v49, v13, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  if (BYTE8(v42) == 1)
  {
    result = VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE7(v39[0]) == 1)
  {
    result = VTRegisterPixelTransferCapability(1278226736, 1278226736, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE10(v39[0]) == 1 && BYTE11(v39[0]) == 1)
  {
    result = VTRegisterPixelTransferCapability(1882468912, 1882468914, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  v15 = BYTE9(v39[0]);
  if (BYTE9(v39[0]) == 1)
  {
    qmemcpy(v48, "p44xp4fxp4wx", 12);
    v46 = 257;
    v47 = 1;
    v44 = 0;
    v45 = 0;
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (BYTE12(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0160;
    v17 = v16 | 4;
    *(v48 + 4 * v17) = 0x7077343470663434;
    *(&v46 + v16) = 16843009;
    *(&v46 + v17) = 1;
    v18 = v16 + 5;
    *(&v46 + v18) = 1;
    *(&v44 + v16) = 0;
    *(&v44 + v17) = 0;
    *(&v44 + v18) = 0;
    v16 += 6;
  }

  if (BYTE11(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0170;
    v19 = v16 + 4;
    *(v48 + 4 * v19) = 0x7077323270663232;
    *(&v46 + v16) = 0;
    *(&v46 + v19) = 0;
    *(&v44 + v16) = 16843009;
    *(&v44 + v19) = 257;
    v16 += 6;
  }

  v37 = v2;
  if (BYTE10(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0180;
    v20 = v16 + 4;
    *(v48 + 4 * v20) = 0x7077323070663230;
    *(&v46 + v16) = 0;
    *(&v46 + v20) = 0;
    *(&v44 + v16) = 0;
    *(&v44 + v20) = 0;
    v16 += 6;
  }

  else if (!v16)
  {
    if (!v15)
    {
      return result;
    }

    goto LABEL_99;
  }

  v21 = 0;
  v36 = v16;
  do
  {
    if (BYTE4(v39[0]) == 1)
    {
      LODWORD(v51[0]) = 1999843442;
      v22 = v51 + 1;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = v51;
    }

    v24 = *(v48 + v21);
    v25 = *(&v46 + v21);
    v38 = v21;
    v26 = *(&v44 + v21);
    *v22 = 1111970369;
    v27 = v23 + 3;
    *(v51 + 4 * v23 + 4) = 0x3432306634323076;
    if (v26)
    {
      v28 = 4 * v27;
      v27 = v23 + 5;
      *(v51 + v28) = 0x3432326634323276;
    }

    if (v25)
    {
      v29 = 4 * v27;
      v27 += 2;
      *(v51 + v29) = 0x3434346634343476;
    }

    v30 = 0;
    v31 = 4 * v27;
    do
    {
      v32 = *(v51 + v30);
      VTRegisterPixelTransferCapability(v24, v32, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapability(v32, v24, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      v30 += 4;
    }

    while (v31 != v30);
    result = VTRegisterPixelTransferCapability(v24, v24, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    v21 = v38 + 1;
  }

  while (v38 + 1 != v36);
  if (BYTE9(v39[0]))
  {
LABEL_99:
    if (BYTE12(v39[0]) == 1)
    {
      v33 = 0;
      qmemcpy(v51, "p44xp4fxp4wx024p02fp02wp", 24);
      qmemcpy(v43, "444x44fx44wx024x02fx02wx", sizeof(v43));
      do
      {
        v34 = *(v51 + v33);
        v35 = *&v43[v33];
        VTRegisterPixelTransferCapability(v34, v35, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
        result = VTRegisterPixelTransferCapability(v35, v34, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
        v33 += 4;
      }

      while (v33 != 24);
    }
  }

  return result;
}

uint64_t VTRegisterPixelTransferCapability(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  v8 = a2;
  return VTRegisterPixelTransferCapabilityMxN(&v9, 1, &v8, 1, a3, a4, a5, a6, a7);
}

uint64_t RegisterVTDecompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTDecompressionSessionID = v0;
  sVTDecompressionSessionPropertyCallbacks = 0;
  *algn_1ED6D3FF8 = VTDecompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D4000 = VTDecompressionSessionSetProperty;
  qword_1ED6D4008 = VTDecompressionSessionCopyProperty;
  qword_1ED6D4010 = VTDecompressionSessionSetProperties;
  qword_1ED6D4018 = VTDecompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTDecompressionSessionPropertyCallbacks, v0);
}

uint64_t VTSessionRegisterCallbacksForTypeID(void *a1, const void *a2)
{
  MEMORY[0x193AE3010](&sVTSessionCallbacksMutexCreateOnce, vtCreateSessionCallbacksMutexOnce);
  FigSimpleMutexLock();
  if (*a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 80, v2);
  }

  else if (a1[1] && a1[2] && a1[3] && a1[4] && a1[5])
  {
    Mutable = sVTSessionCallbacksPerTypeID;
    if (sVTSessionCallbacksPerTypeID || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0), (sVTSessionCallbacksPerTypeID = Mutable) != 0))
    {
      if (CFDictionaryGetCountOfKey(Mutable, a2))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 99, v2);
      }

      else
      {
        CFDictionarySetValue(sVTSessionCallbacksPerTypeID, a2, a1);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 93, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 85, v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t vtCreateSessionCallbacksMutexOnce()
{
  result = FigSimpleMutexCreate();
  sVTSessionCallbacksMutex = result;
  return result;
}

double vtDecompressionSessionInit(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t RegisterVTVideoDecoderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t vtDecompressionSubDuctAllocate(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v3 = MEMORY[0x193AE0CD0](a1, 312, 0x10E0040762E5746, 0);
  if (!v3)
  {
    return 4294954392;
  }

  v4 = v3;
  *(v3 + 304) = 0;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  v5 = FigSimpleMutexCreate();
  result = 0;
  *(v4 + 112) = v5;
  *(v4 + 84) = 1;
  *(v4 + 152) = 1;
  *a2 = v4;
  return result;
}

uint64_t VTDecoderSessionSetPixelBufferAttributes(uint64_t *a1, CFTypeRef cf)
{
  if (a1)
  {
    if (a1[3])
    {
      v4 = a1[3];

      return VTParavirtualizationHostDecoderSessionSetPixelBufferAttributes(v4, cf);
    }

    v10 = *a1;
    if (*a1)
    {
      FigSimpleMutexLock();
      if (cf)
      {
        CFRetain(cf);
      }

      v11 = *(v10 + 64);
      if (v11)
      {
        CFRelease(v11);
      }

      *(v10 + 64) = cf;
      ++*(v10 + 84);
      FigSimpleMutexUnlock();
      return 0;
    }

    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954393;
    v9 = 6819;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954394;
    v9 = 6807;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< VT-DS >>>>", v9, v7);
}

uint64_t vtCreateUsablePixelBufferAttributes(const __CFAllocator *a1, uint64_t a2, CFDictionaryRef theDict, const __CFDictionary *a4, int a5, __CFDictionary **a6, _BYTE *a7)
{
  v118 = a2;
  v12 = MEMORY[0x1E6966208];
  v13 = MEMORY[0x1E69660B8];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966130]);
    v15 = CFDictionaryGetValue(theDict, *v12) != 0;
    LODWORD(v13) = CFDictionaryGetValue(theDict, *v13) != 0;
  }

  else
  {
    LODWORD(v13) = 0;
    v15 = 0;
    Value = 0;
  }

  v123 = a6;
  if (a4)
  {
    v16 = *MEMORY[0x1E69660D8];
    if (!CFDictionaryContainsKey(a4, *MEMORY[0x1E69660D8]) || theDict && CFDictionaryContainsKey(theDict, v16))
    {
      key = 0;
      v17 = 1;
    }

    else
    {
      v17 = 0;
      key = 1;
    }

    v119 = Value;
    v21 = a1;
    if (CFDictionaryContainsKey(a4, v16))
    {
      v128 = 0;
      CFDictionaryGetValue(a4, v16);
      v22 = v15;
      if (theDict)
      {
        CFDictionaryGetValue(theDict, v16);
      }

      IntIfPresent = FigCFDictionaryGetIntIfPresent();
      v24 = FigCFDictionaryGetIntIfPresent();
      if (IntIfPresent)
      {
        v25 = HIDWORD(v128) == 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = !v25;
      if (v24)
      {
        v26 = 0;
      }

      v19 = v26;
    }

    else
    {
      v22 = v15;
      v19 = 0;
    }

    v27 = *MEMORY[0x1E6966038];
    v28 = OUTLINED_FUNCTION_3_3();
    v30 = CFDictionaryContainsKey(v28, v29);
    v18 = v30 != 0;
    if (theDict && v30)
    {
      if (CFDictionaryContainsKey(theDict, v27))
      {
        v18 = 0;
      }

      else
      {
        v31 = CFDictionaryGetValue(theDict, v16);
        if (v31)
        {
          v18 = CFDictionaryContainsKey(v31, *MEMORY[0x1E696CE60]) == 0;
        }

        else
        {
          v18 = 1;
        }
      }
    }

    v20 = CFDictionaryContainsKey(a4, *MEMORY[0x1E69660F0]) != 0;
    v15 = v22;
    a1 = v21;
    Value = v119;
  }

  else
  {
    v18 = 0;
    key = 0;
    v19 = 0;
    v20 = 0;
    v17 = 1;
  }

  if (theDict)
  {
    v32 = Value == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if ((v33 & v15 & v13) == 1 && v17 != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
    v38 = MutableCopy;
    if (MutableCopy)
    {
      if (a5)
      {
        TypeID = CFArrayGetTypeID();
        CFGetTypeID(Value);
        OUTLINED_FUNCTION_5_3();
        if (!a4 || TypeID != v40)
        {
          ReorderedPixelFormatArray = v18;
          goto LABEL_137;
        }

        v97 = *MEMORY[0x1E6966130];
        v98 = OUTLINED_FUNCTION_3_3();
        v100 = CFDictionaryGetValue(v98, v99);
        ReorderedPixelFormatArray = vtCreateReorderedPixelFormatArray(a1, Value, v100);
        if (ReorderedPixelFormatArray)
        {
          CFDictionarySetValue(v38, v97, ReorderedPixelFormatArray);
          v18 = 0;
          LOBYTE(v13) = 1;
          goto LABEL_137;
        }

        v18 = 0;
      }

      else
      {
        v18 = 0;
        ReorderedPixelFormatArray = 0;
      }

      LOBYTE(v13) = 0;
      goto LABEL_137;
    }

    goto LABEL_108;
  }

  v35 = v20;
  if (theDict)
  {
    Mutable = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v38 = Mutable;
  if (Mutable)
  {
    v120 = v15;
    v42 = key ^ 1;
    if (!a4)
    {
      v42 = 1;
    }

    if ((v42 & 1) == 0)
    {
      v43 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v43, v44);
      v45 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v45, v46, v47);
    }

    v48 = v19 ^ 1;
    if (!a4)
    {
      v48 = 1;
    }

    if ((v48 & 1) == 0)
    {
      CFDictionaryGetValue(a4, *MEMORY[0x1E69660D8]);
      v49 = OUTLINED_FUNCTION_4_2();
      CFDictionaryGetValue(v49, v50);
      v51 = FigCFDictionaryCreateMutableCopy();
      if (!v51)
      {
        fig_log_get_emitter();
        v95 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v7, v118);
        v18 = 0;
        ReorderedPixelFormatArray = 0;
        LOBYTE(v13) = 0;
        goto LABEL_135;
      }

      v52 = v51;
      FigCFDictionarySetValueFromKeyInDict();
      OUTLINED_FUNCTION_4_2();
      FigCFDictionarySetValue();
      CFRelease(v52);
    }

    v53 = v18 ^ 1;
    if (!a4)
    {
      v53 = 1;
    }

    if ((v53 & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v54, v55);
      v56 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v56, v57, v58);
    }

    v59 = !v35;
    if (!a4)
    {
      v59 = 1;
    }

    if ((v59 & 1) == 0)
    {
      v60 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v60, v61);
      v62 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v62, v63, v64);
    }

    if (Value)
    {
      v65 = Value;
      v66 = v13;
      if (a5)
      {
        v67 = CFArrayGetTypeID();
        CFGetTypeID(v65);
        OUTLINED_FUNCTION_5_3();
        if (a4)
        {
          ReorderedPixelFormatArray = v18;
          v69 = v120;
          if (v67 != v68)
          {
            goto LABEL_121;
          }

          v70 = *MEMORY[0x1E6966130];
          v71 = OUTLINED_FUNCTION_3_3();
          v73 = CFDictionaryGetValue(v71, v72);
          ReorderedPixelFormatArray = vtCreateReorderedPixelFormatArray(a1, v65, v73);
          if (ReorderedPixelFormatArray)
          {
            CFDictionarySetValue(v38, v70, ReorderedPixelFormatArray);
            v18 = 0;
            LOBYTE(v13) = 1;
LABEL_120:
            v69 = v120;
LABEL_121:
            if (!v69)
            {
              v102 = *MEMORY[0x1E6966208];
              if (a4)
              {
                v103 = OUTLINED_FUNCTION_3_3();
                if (CFDictionaryGetValue(v103, v104))
                {
                  v105 = OUTLINED_FUNCTION_2_2();
                  CFDictionaryAddValue(v105, v106, v107);
                  if (v66)
                  {
                    goto LABEL_137;
                  }

                  v101 = *MEMORY[0x1E69660B8];
LABEL_129:
                  if (CFDictionaryGetValue(a4, v101))
                  {
                    v108 = OUTLINED_FUNCTION_4_2();
                    CFDictionaryAddValue(v108, v109, v110);
                    goto LABEL_137;
                  }

LABEL_133:
                  v112 = OUTLINED_FUNCTION_4_2();
                  v111 = vtAddNumberToCFDictionary(v112, v113, v114);
                  if (v111)
                  {
                    goto LABEL_134;
                  }

LABEL_137:
                  v115 = a7;
                  if (VTAvoidIOSurfaceBackings())
                  {
                    CFDictionaryRemoveValue(v38, *MEMORY[0x1E69660D8]);
                  }

                  v95 = 0;
                  *v123 = v38;
                  v38 = 0;
                  if (a7)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_141;
                }
              }

              v111 = vtAddNumberToCFDictionary(v38, v102, v118);
              if (v111)
              {
LABEL_134:
                v95 = v111;
                goto LABEL_135;
              }
            }

            if (v66)
            {
              goto LABEL_137;
            }

            v101 = *MEMORY[0x1E69660B8];
            if (!a4)
            {
              goto LABEL_133;
            }

            goto LABEL_129;
          }

          v18 = 0;
LABEL_107:
          LOBYTE(v13) = 0;
          goto LABEL_120;
        }

LABEL_119:
        ReorderedPixelFormatArray = v18;
        goto LABEL_120;
      }

LABEL_105:
      v18 = 0;
LABEL_106:
      ReorderedPixelFormatArray = 0;
      goto LABEL_107;
    }

    allocatora = a1;
    if (a4)
    {
      v74 = *MEMORY[0x1E6966130];
      v75 = CFDictionaryGetValue(a4, *MEMORY[0x1E6966130]);
      if (v75)
      {
        v76 = v75;
        v77 = CFNumberGetTypeID();
        if (v77 == CFGetTypeID(v76))
        {
          if (vtIsPixelFormatCompatibleWithAttributes(v76, theDict))
          {
            keya = v74;
            v78 = v13;
            v18 = CFRetain(v76);
LABEL_91:
            LOBYTE(v13) = v78;
            v74 = keya;
            if (v18)
            {
              v66 = v13;
              CFDictionaryAddValue(v38, keya, v18);
              goto LABEL_106;
            }
          }
        }

        else
        {
          v79 = CFArrayGetTypeID();
          if (v79 == CFGetTypeID(v76))
          {
            Count = CFArrayGetCount(v76);
            if (Count >= 1)
            {
              v81 = Count;
              keya = v74;
              v78 = v13;
              v82 = 0;
              v18 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v76, v82);
                v84 = CFNumberGetTypeID();
                if (v84 == CFGetTypeID(ValueAtIndex) && vtIsPixelFormatCompatibleWithAttributes(ValueAtIndex, theDict))
                {
                  if (!v18)
                  {
                    v18 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                    if (!v18)
                    {
                      goto LABEL_109;
                    }
                  }

                  CFArrayAppendValue(v18, ValueAtIndex);
                }

                if (v81 == ++v82)
                {
                  goto LABEL_91;
                }
              }
            }
          }
        }

        v85 = CFGetTypeID(v76);
        if (v85 == CFNumberGetTypeID())
        {
          if (vtPixelFormatRequiresRGhAFallback(v76))
          {
            goto LABEL_118;
          }
        }

        else
        {
          v86 = CFGetTypeID(v76);
          if (v86 == CFArrayGetTypeID() && CFArrayGetCount(v76) >= 1)
          {
            v87 = 0;
            while (1)
            {
              v88 = CFArrayGetValueAtIndex(v76, v87);
              if (vtPixelFormatRequiresRGhAFallback(v88))
              {
                break;
              }

              if (CFArrayGetCount(v76) <= ++v87)
              {
                goto LABEL_99;
              }
            }

LABEL_118:
            v66 = v13;
            vtAddNumberToCFDictionary(v38, v74, 1380411457);
            OUTLINED_FUNCTION_5_3();
            if (v96)
            {
LABEL_111:
              v95 = v96;
              ReorderedPixelFormatArray = v18;
              goto LABEL_135;
            }

            goto LABEL_119;
          }
        }
      }
    }

LABEL_99:
    v66 = v13;
    v89 = 0;
    v13 = *MEMORY[0x1E6966130];
    v90 = 1;
    while (1)
    {
      valuePtr = dword_18FECDDF8[v89];
      v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!v91)
      {
        break;
      }

      v92 = v91;
      IsPixelFormatCompatibleWithAttributes = vtIsPixelFormatCompatibleWithAttributes(v91, theDict);
      if (IsPixelFormatCompatibleWithAttributes)
      {
        CFDictionaryAddValue(v38, v13, v92);
      }

      v18 = !IsPixelFormatCompatibleWithAttributes;
      CFRelease(v92);
      v94 = v18 & v90;
      v89 = 1;
      v90 = 0;
      if ((v94 & 1) == 0)
      {
        if (IsPixelFormatCompatibleWithAttributes)
        {
          goto LABEL_105;
        }

        vtAddNumberToCFDictionary(v38, v13, 32);
        OUTLINED_FUNCTION_5_3();
        v69 = v120;
        if (!v96)
        {
          ReorderedPixelFormatArray = 1;
          goto LABEL_121;
        }

        goto LABEL_111;
      }
    }
  }

LABEL_108:
  v18 = 0;
LABEL_109:
  ReorderedPixelFormatArray = 0;
  LOBYTE(v13) = 0;
  v95 = 4294954392;
LABEL_135:
  v115 = a7;
  if (a7)
  {
LABEL_140:
    *v115 = v13;
  }

LABEL_141:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (ReorderedPixelFormatArray)
  {
    CFRelease(ReorderedPixelFormatArray);
  }

  return v95;
}

void vtDecompressionDuctFinalize(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = *(ptr + 1);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      CFRelease(*(ptr + 1));
      *(ptr + 1) = 0;
    }

    v6 = *(ptr + 7);
    if (v6)
    {
      CFRelease(v6);
      *(ptr + 7) = 0;
    }

    v7 = *(ptr + 9);
    if (v7)
    {
      CFRelease(v7);
      *(ptr + 9) = 0;
    }

    if (*(ptr + 10))
    {
      FigSimpleMutexDestroy();
      *(ptr + 10) = 0;
    }

    v8 = *(ptr + 11);
    if (v8)
    {
      CFRelease(v8);
      *(ptr + 11) = 0;
    }

    *(ptr + 13) = 0;
    v9 = *(ptr + 12);
    if (v9)
    {
      CFRelease(v9);
      *(ptr + 12) = 0;
    }

    v10 = *(ptr + 23);
    if (v10)
    {
      CFRelease(v10);
      *(ptr + 23) = 0;
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

void vtDecompressionSubDuctFinalize(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      CFRelease(*(a2 + 8));
      *(a2 + 8) = 0;
    }

    vtDecompressionSubDuctFinishAsynchronousTransfers(a2);
    v6 = *(a2 + 120);
    if (v6)
    {
      CFRelease(v6);
      *(a2 + 120) = 0;
    }

    v7 = *(a2 + 128);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 128) = 0;
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 16) = 0;
    }

    v9 = *(a2 + 304);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 304) = 0;
    }

    v10 = *(a2 + 272);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 272) = 0;
    }

    v11 = *(a2 + 72);
    if (v11)
    {
      CFRelease(v11);
      *(a2 + 72) = 0;
    }

    v12 = *(a2 + 144);
    if (v12)
    {
      CFRelease(v12);
      *(a2 + 144) = 0;
    }

    *(a2 + 200) = 0;
    CVPixelBufferPoolRelease(*(a2 + 96));
    *(a2 + 96) = 0;
    CVPixelBufferPoolRelease(*(a2 + 104));
    *(a2 + 104) = 0;
    v13 = *(a2 + 136);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a2 + 136) = 0;
    v14 = *(a2 + 64);
    if (v14)
    {
      CFRelease(v14);
      *(a2 + 64) = 0;
    }

    if (*(a2 + 112))
    {
      FigSimpleMutexDestroy();
      *(a2 + 112) = 0;
    }

    v15 = *(a2 + 184);
    if (v15)
    {
      CFRelease(v15);
      *(a2 + 184) = 0;
    }

    v16 = *(a2 + 192);
    if (v16)
    {
      CFRelease(v16);
      *(a2 + 192) = 0;
    }

    v17 = *(a2 + 256);
    if (v17)
    {
      CFRelease(v17);
      *(a2 + 256) = 0;
    }

    v18 = *(a2 + 208);
    if (v18)
    {
      CFRelease(v18);
      *(a2 + 208) = 0;
    }

    v19 = *(a2 + 216);
    if (v19)
    {
      CFRelease(v19);
      *(a2 + 216) = 0;
    }

    v20 = *(a2 + 224);
    if (v20)
    {
      CFRelease(v20);
      *(a2 + 224) = 0;
    }

    v21 = *(a2 + 232);
    if (v21)
    {
      CFRelease(v21);
      *(a2 + 232) = 0;
    }

    v22 = *(a2 + 240);
    if (v22)
    {
      CFRelease(v22);
      *(a2 + 240) = 0;
    }

    v23 = *(a2 + 288);
    if (v23)
    {
      CFRelease(v23);
      *(a2 + 288) = 0;
    }

    v24 = *(a2 + 296);
    if (v24)
    {
      CFRelease(v24);
      *(a2 + 296) = 0;
    }

    CFAllocatorDeallocate(a1, a2);
  }
}

OSStatus VTSessionCopyProperty(VTSessionRef session, CFStringRef propertyKey, CFAllocatorRef allocator, void *propertyValueOut)
{
  if (session)
  {
    v9 = CFGetTypeID(session);
    CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v9);
    if (propertyKey)
    {
      if (propertyValueOut)
      {
        if (CallbacksWithTypeID)
        {
          v11 = CallbacksWithTypeID[3];

          return v11(session, propertyKey, allocator, propertyValueOut);
        }

        v13 = v4;
        v14 = 203;
      }

      else
      {
        v13 = v4;
        v14 = 199;
      }
    }

    else
    {
      v13 = v4;
      v14 = 195;
    }
  }

  else
  {
    v13 = v4;
    v14 = 191;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", v14, v13);
}

const void *VTSessionGetCallbacksWithTypeID(const void *a1)
{
  MEMORY[0x193AE3010](&sVTSessionCallbacksMutexCreateOnce, vtCreateSessionCallbacksMutexOnce);
  FigSimpleMutexLock();
  if (sVTSessionCallbacksPerTypeID)
  {
    Value = CFDictionaryGetValue(sVTSessionCallbacksPerTypeID, a1);
  }

  else
  {
    Value = 0;
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t VTDecompressionSessionCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v6 = v4;
    v7 = 4294954393;
    v8 = 4327;
LABEL_3:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< VT-DS >>>>", v8, v6);
  }

  v14 = *(a1 + 24);
  if (v14)
  {

    return VTDecompressionSessionRemoteBridge_CopyProperty(v14, a2, a3, a4);
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  if (!vtDecompressionSessionIsPropertyHandledByVideoToolbox(a2))
  {
    goto LABEL_51;
  }

  if (!vtDecompressionSessionIsPropertySupportedBySubDuct(a2))
  {
    if (CFEqual(@"NumberOfFramesBeingDecoded", a2))
    {
      LODWORD(valuePtr.value) = *(*v15 + 64);
      v17 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v19 = kCFNumberIntType;
LABEL_18:
      v20 = CFNumberCreate(v17, v19, p_valuePtr);
LABEL_28:
      v23 = v20;
LABEL_29:
      result = 0;
      *a4 = v23;
      return result;
    }

    if (CFEqual(@"MinOutputPresentationTimeStampOfFramesBeingDecoded", a2))
    {
      valuePtr = **&MEMORY[0x1E6960C70];
      vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v15, &valuePtr);
LABEL_27:
      v30 = valuePtr;
      v20 = CMTimeCopyAsDictionary(&v30, a3);
      goto LABEL_28;
    }

    if (CFEqual(@"MaxOutputPresentationTimeStampOfFramesBeingDecoded", a2))
    {
      valuePtr = **&MEMORY[0x1E6960C70];
      vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded(v15, &valuePtr);
      goto LABEL_27;
    }

    if (CFEqual(@"UsingSandboxedVideoDecoder", a2))
    {
      v24 = MEMORY[0x1E695E4C0];
      if (!v16)
      {
        v24 = MEMORY[0x1E695E4D0];
      }

      goto LABEL_33;
    }

    if (CFEqual(@"OnlyTheseFrames", a2))
    {
      if (*(v15 + 112))
      {
        v26 = *(v15 + 116);
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v24 = &kVTDecompressionProperty_OnlyTheseFrames_IFrames;
            goto LABEL_33;
          }

          if (v26 == 3)
          {
            v24 = &kVTDecompressionProperty_OnlyTheseFrames_KeyFrames;
            goto LABEL_33;
          }
        }

        else
        {
          if (!v26)
          {
            v24 = &kVTDecompressionProperty_OnlyTheseFrames_AllFrames;
            goto LABEL_33;
          }

          if (v26 == 1)
          {
            v24 = &kVTDecompressionProperty_OnlyTheseFrames_NonDroppableFrames;
LABEL_33:
            v25 = *v24;
LABEL_34:
            v20 = CFRetain(v25);
            goto LABEL_28;
          }
        }

        emitter = fig_log_get_emitter();
        v6 = v4;
        v7 = 4294954396;
        v8 = 4391;
        goto LABEL_3;
      }
    }

    else if (CFEqual(@"ReducedFrameDelivery", a2))
    {
      if (*(v15 + 112))
      {
        v17 = *MEMORY[0x1E695E480];
        p_valuePtr = (v15 + 128);
        v19 = kCFNumberDoubleType;
        goto LABEL_18;
      }
    }

    else
    {
      if (!CFEqual(@"SuggestedQualityOfServiceTiers", a2))
      {
        result = CFEqual(@"PowerLogSessionID", a2);
        if (!result)
        {
          return result;
        }

        v25 = *(v15 + 184);
        if (!v25)
        {
          v23 = 0;
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      if (*(v15 + 112))
      {
        MEMORY[0x193AE3010](&sVTCreateSuggestedQualityOfServiceTiersOnce, vtCreateSuggestedQualityOfServiceTiers);
        v25 = sVTVideoDecoderSuggestedQualityOfServiceTiers;
        if (!sVTVideoDecoderSuggestedQualityOfServiceTiers)
        {
          emitter = fig_log_get_emitter();
          v6 = v4;
          v7 = 4294954392;
          v8 = 4413;
          goto LABEL_3;
        }

        goto LABEL_34;
      }
    }

LABEL_51:
    valuePtr.value = 0;
    VTDecompressionSessionCopySupportedPropertyDictionary(a1, &valuePtr);
    if (!valuePtr.value)
    {
      return 4294954396;
    }

    v27 = CFDictionaryContainsKey(valuePtr.value, a2);
    CFRelease(valuePtr.value);
    if (!v27)
    {
      return 4294954396;
    }

    v28 = *(v15 + 8);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      return v29(v28, a2, a3, a4);
    }

    return 4294954514;
  }

  if (v16)
  {

    return vtDecompressionSubDuctCopyProperty(v16, a2, a3, a4);
  }

  v21 = *(v15 + 8);
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    return 4294954514;
  }

  return v22(v21, a2, a3, a4);
}

void vtDecompressionSessionCreatePropertiesHandledByVideoToolbox()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct = Mutable;
    if (Mutable)
    {
      p_values = v11;
      CFDictionarySetValue(Mutable, @"NumberOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"MinOutputPresentationTimeStampOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"MaxOutputPresentationTimeStampOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"UsingSandboxedVideoDecoder", v2);
      values = vtCreateFrameTypesArrayElement(@"AllFrames");
      v11[0] = vtCreateFrameTypesArrayElement(@"NonDroppableFrames");
      v11[1] = vtCreateFrameTypesArrayElement(@"IFrames");
      v11[2] = vtCreateFrameTypesArrayElement(@"KeyFrames");
      v5 = CFArrayCreate(v0, &values, 4, MEMORY[0x1E695E9C0]);
      if (!v5)
      {
        vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_1();
      }

      for (i = 0; i != 4; ++i)
      {
        v7 = v11[i - 1];
        if (v7)
        {
          CFRelease(v7);
        }
      }

      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"OnlyTheseFrames", v5);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"ReducedFrameDelivery", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"SuggestedQualityOfServiceTiers", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"PowerLogSessionID", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"TemporalLevelLimit", v2);
      if (v5)
      {
        CFRelease(v5);
      }

      v8 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct = v8;
      if (v8)
      {
        CFDictionarySetValue(v8, @"PixelBufferPool", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"OutputPoolRequestedMinimumBufferCount", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PixelBufferPoolIsShared", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaxAgeForOutputPixelBufferPool", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PixelTransferProperties", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PoolPixelBufferAttributesSeed", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PoolPixelBufferAttributes", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ClientPID", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ThrottleForBackground", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"RealTime", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ColorPrimaries", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"TransferFunction", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"YCbCrMatrix", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ICCProfile", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaximizePowerEfficiency", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"GeneratePerFrameHDRDisplayMetadata", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"NumberOfFramesInDecoder", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MinFrameIDOfFramesInDecoder", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaxFrameIDOfFramesInDecoder", v2);
        values = 0;
        v11[0] = 0;
        if (sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct)
        {
          values = sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct;
        }

        else
        {
          p_values = &values;
        }

        if (sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct)
        {
          *p_values = sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct;
        }

        if (FigCFCreateCombinedDictionary())
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, values, LODWORD(v11[0]));
        }
      }

      else
      {
        vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_2();
      }
    }

    else
    {
      vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_3();
    }

    CFRelease(v2);
  }

  else
  {
    vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_4();
  }
}

uint64_t VTDecompressionSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  cf = 0;
  v15 = 0;
  v16[0] = 0;
  *a2 = 0;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 3433, v2);
  }

  else if (*(a1 + 24))
  {
    v5 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_CopySupportedPropertyDictionary(v5, a2);
  }

  else
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v7 || ((v8 = v7(v6, &cf), v8 != -12782) ? (v9 = v8 == 0) : (v9 = 1), v9))
    {
      v11 = vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(&v13);
      if (!v11)
      {
        if (cf)
        {
          v10 = v16;
          v15 = cf;
        }

        else
        {
          v10 = &v15;
        }

        if (v13)
        {
          *v10 = v13;
        }

        v11 = FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      v11 = v8;
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    return v11;
  }
}

OSStatus VTPixelTransferSessionCreate(CFAllocatorRef allocator, VTPixelTransferSessionRef *pixelTransferSessionOut)
{
  FigKTraceInit();
  if (!pixelTransferSessionOut)
  {
    return -12902;
  }

  MEMORY[0x193AE3010](&VTPixelTransferSessionGetTypeID_sRegisterVTPixelTransferSessionOnce, RegisterVTPixelTransferSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return -12904;
  }

  v5 = Instance;
  *(Instance + 32) = 0;
  v6 = (Instance + 32);
  *(Instance + 1136) = 1;
  if (initDefaultsCommon_onceToken != -1)
  {
    VTPixelTransferSessionCreate_cold_1();
  }

  if (sAllowPixelTransferChain)
  {
    v7 = VTPixelTransferChainCreate(allocator, 0, v6);
    if (initDefaultsCommon_onceToken != -1)
    {
      VTPixelTransferSessionCreate_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 40) = sAllowPixelTransferGraph;
  *(v5 + 41) = sAllowPixelTransferFallbacks;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *(v5 + 72) = v9;
  *(v5 + 120) = v9;
  *(v5 + 769) = 1;
  *(v5 + 787) = 0;
  *(v5 + 785) = 256;
  *(v5 + 788) = sAllowSoftwareTransferSession;
  v10 = *MEMORY[0x1E695E480];
  *(v5 + 1176) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v5 + 1224) = 0u;
  if (!VTAvoidHardwarePixelTransfer())
  {
    v7 = VTMetalTransferSessionCreate(v10, 0, (v5 + 1160));
    v11 = *(v5 + 1160);
    if (v11)
    {
      if (!v7)
      {
        v12 = MEMORY[0x1E695E4D0];
        if (!*(v5 + 1136))
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        VTSessionSetProperty(v11, @"WriteBlackPixelsOutsideDestRect", *v12);
      }
    }
  }

  *pixelTransferSessionOut = v5;
  return v7;
}

uint64_t RegisterVTPixelTransferSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTPixelTransferSessionID = v0;
  sVTPixelTransferSessionPropertyCallbacks = 0;
  *algn_1ED6D3F38 = VTPixelTransferSessionCopySupportedPropertyDictionary;
  qword_1ED6D3F40 = VTPixelTransferSessionSetProperty;
  qword_1ED6D3F48 = VTPixelTransferSessionCopyProperty;
  qword_1ED6D3F50 = VTPixelTransferSessionSetProperties;
  qword_1ED6D3F58 = VTPixelTransferSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTPixelTransferSessionPropertyCallbacks, v0);
}

uint64_t vtDecompressionDuctDecodeSingleFrame(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CMTimeEpoch a6, CMTimeValue a7, const char *a8)
{
  v47 = a8;
  v15 = *(*a1 + 40);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray)
  {
    goto LABEL_5;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
  v18 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  v19 = CFGetTypeID(ValueAtIndex);
  if (v19 == CFDictionaryGetTypeID())
  {
    v18 = CFDictionaryGetValue(v18, *MEMORY[0x1E6960420]);
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_6:
  v50 = 0;
  if ((a3 & 2) == 0)
  {
    ++*(a1 + 192);
  }

  FigCFDictionaryGetInt64IfPresent();
  FigSimpleMutexLock();
  CMSampleBufferGetOutputPresentationTimeStamp(&time2, sbuf);
  CMSampleBufferGetOutputDuration(&v49, sbuf);
  v56 = 0;
  if (FigAtomicIncrement32() == 1)
  {
    FigSemaphoreWaitRelative();
  }

  if (*(a1 + 56) || (valueCallBacks.version = 0, valueCallBacks.retain = vtCloneDuctFrameTrackingInfo, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreeDuctFrameTrackingInfo, v20 = CFGetAllocator(*a1), v21 = CFDictionaryCreateMutable(v20, 0, 0, &valueCallBacks), (*(a1 + 56) = v21) != 0))
  {
    v22 = *(a1 + 64);
    *(a1 + 64) = v22 + 1;
    v53 = time2;
    v54 = v49;
    v55 = v18;
    LOBYTE(v56) = 0;
    value.value = a7;
    *&value.timescale = a5;
    value.epoch = a6;
    cf = VTDecompressionSessionCopyAnalysisOptions(a4);
    CFDictionaryAddValue(*(a1 + 56), v22, &value);
    if (cf)
    {
      CFRelease(cf);
    }

    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 4294954392;
  }

  FigSimpleMutexUnlock();
  if (*(a1 + 112))
  {
    v63[0] = 0;
    v24 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    if (!v24 || (v25 = CFArrayGetValueAtIndex(v24, 0)) == 0)
    {
      *(a1 + 144) = 0;
      *(a1 + 148) = 0x7FFFFFFF;
      CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
      *(a1 + 156) = value;
      goto LABEL_57;
    }

    v26 = v25;
    v62 = 1;
    v61 = 0;
    v49.value = 0;
    v60 = 0;
    v59 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v27 = HIBYTE(v61);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetIntIfPresent();
    CFDictionaryGetValueIfPresent(v26, *MEMORY[0x1E6960438], &v49);
    if (v49.value)
    {
      FigCFDictionaryGetIntIfPresent();
    }

    v28 = v61;
    if (v27 && !v61 || (*(a1 + 152) = 0, v27))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (v60 == 21 || v60 == 16)
      {
        LOBYTE(v61) = 1;
        v29 = 0;
        v28 = 1;
        if (*(a1 + 144))
        {
          *(a1 + 152) = 1;
        }
      }
    }

    if (v63[0] > *(a1 + 120))
    {
      goto LABEL_43;
    }

    v30 = *(a1 + 116);
    switch(v30)
    {
      case 3:
        v31 = v29;
        break;
      case 2:
        if (v28)
        {
          v31 = 1;
        }

        else
        {
          v31 = v29;
        }

        break;
      case 1:
        v31 = v62;
        break;
      default:
        v31 = 1;
        goto LABEL_42;
    }

    if (!v31)
    {
      goto LABEL_44;
    }

LABEL_42:
    v32 = *(a1 + 128) + *(a1 + 136);
    *(a1 + 136) = v32;
    if (v32 >= 1.0)
    {
      v45 = v32 + -1.0;
      if (v45 >= 1.0)
      {
        v45 = 1.0;
      }

      *(a1 + 136) = v45;
      if (*(a1 + 152))
      {
        memset(&value, 0, sizeof(value));
        CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
        *&valueCallBacks.version = *&value.value;
        valueCallBacks.release = value.epoch;
        time2 = *(a1 + 156);
        if (CMTimeCompare(&valueCallBacks, &time2) < 1)
        {
          v31 = 0;
        }
      }

      if (v31 && HIBYTE(v59) && v63[0] <= *(a1 + 148))
      {
        *(a1 + 148) = 0x7FFFFFFF;
      }

      if (v31)
      {
        if (v59)
        {
          v46 = *(a1 + 148);
          if (v63[0] == v46 && v46 != 0x7FFFFFFF)
          {
            *(a1 + 148) = v63[0] + 1;
          }
        }
      }

LABEL_44:
      if (*(a1 + 144))
      {
        v33 = v29;
      }

      else
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0 && !v61 && v63[0] >= *(a1 + 148))
      {
        v31 = 0;
      }

      if (v61)
      {
        v34 = 1;
      }

      else
      {
        v34 = v29;
      }

      if (v34 == 1)
      {
        *(a1 + 144) = 0;
        *(a1 + 148) = 0x7FFFFFFF;
        CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
        *(a1 + 156) = value;
      }

      else if (!v31 && v62)
      {
        *(a1 + 144) = 1;
        v44 = *(a1 + 148);
        if (v44 >= v63[0])
        {
          v44 = v63[0];
        }

        *(a1 + 148) = v44;
        goto LABEL_83;
      }

      if (v31)
      {
        goto LABEL_57;
      }

LABEL_83:
      vtDecompressionDuctEmitDecodedFrame(a1, v22, v23, 2u, 0, 0);
      return v23;
    }

LABEL_43:
    v31 = 0;
    goto LABEL_44;
  }

LABEL_57:
  if (v15)
  {
    FigSimpleMutexLock();
    if (vtDecompressionSubDuctTrackFrameEnteringCodec(v15, v22, a3, v50, v35, v36))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, LODWORD(v49.value));
    }

    FigSimpleMutexUnlock();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&valueCallBacks, sbuf);
    *&value.value = *&valueCallBacks.version;
    value.epoch = valueCallBacks.release;
    CMTimeGetSeconds(&value);
    kdebug_trace();
  }

  if (!a4 || (v37 = *(a1 + 8), v38 = *(CMBaseObjectGetVTable() + 16), *v38 < 4uLL) || (v39 = v38[11]) == 0 || (v23 = v39(v37, v22, sbuf, a3, a4, v47), v23 == -12782))
  {
    v40 = *(a1 + 8);
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v41)
    {
      goto LABEL_73;
    }

    v23 = v41(v40, v22, sbuf, a3, v47);
  }

  if (v23 != -17690)
  {
    if (!v23)
    {
      if ((a3 & 9) != 0)
      {
        return 0;
      }

LABEL_74:
      v42 = *(a1 + 56);
      if (v42)
      {
        CFDictionaryGetValue(v42, v22);
      }

      return 0;
    }

LABEL_73:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, LODWORD(v49.value));
    goto LABEL_74;
  }

  return v23;
}

uint64_t vtCloneDuctFrameTrackingInfo(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 96, 0x10E0040DAC7FF16, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = *(a2 + 72);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v3 + 72) = v8;
  *(v3 + 8) = _Block_copy(*(a2 + 8));
  *(v3 + 16) = _Block_copy(*(a2 + 16));
  v9 = *(a2 + 88);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(v3 + 88) = v9;
  return v3;
}

uint64_t vtDecompressionSubDuctTrackFrameEnteringCodec(uint64_t a1, void *key, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  value[0] = 0;
  v10 = *(a1 + 120);
  if (!v10)
  {
    v13.version = 0;
    v13.retain = vtCloneSubDuctFrameTrackingInfo;
    v13.copyDescription = 0;
    v13.equal = 0;
    v13.release = vtFreeSubDuctFrameTrackingInfo;
    v11 = CFGetAllocator(*a1);
    v10 = CFDictionaryCreateMutable(v11, 0, 0, &v13);
    *(a1 + 120) = v10;
    if (!v10)
    {
      return 4294954392;
    }
  }

  if (*(a1 + 265))
  {
    if (!*(a1 + 266))
    {
      FigPowerReduceUtilitySFI();
      v10 = *(a1 + 120);
    }
  }

  LODWORD(value[0]) = v7;
  value[1] = *(a1 + 16);
  value[2] = a4;
  CFDictionaryAddValue(v10, key, value);
  return 0;
}

uint64_t vtCloneSubDuctFrameTrackingInfo(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 24, 0x1060040EB5A7A7CLL, 0);
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 8) = v5;
  return v3;
}

uint64_t VTDecoderSessionEmitDecodedFrame(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  if (a1)
  {
    if (a1[3])
    {
      v7 = a1[3];

      return VTParavirtualizationHostDecoderSessionEmitDecodedFrame(v7, a2, a3, a4, a5);
    }

    else
    {

      return vtDecoderSessionEmitDecodedFrameCommon(a1, a2, a3, a4, a5, 0);
    }
  }

  else
  {
    v10 = v5;
    v11 = v6;
    VTDecoderSessionEmitDecodedFrame_cold_1(&v9);
    return v9;
  }
}

void vtCopyAttachments(CFDictionaryRef theDict, __CVBuffer *a2, __CFDictionary *a3, void *key, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = &a9;
  if (key)
  {
    do
    {
      v12 = v17;
      v18 = v17 + 1;
      v13 = *v12;
      Value = CFDictionaryGetValue(theDict, key);
      if (Value)
      {
        v15 = Value;
        if (vtCVBufferAttachmentEmpty(a2, v13))
        {
          CFDictionarySetValue(a3, v13, v15);
        }
      }

      v16 = v18;
      v17 = v18 + 1;
      key = *v16;
    }

    while (*v16);
  }
}

void vtFreeSubDuctFrameTrackingInfo(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t vtDecompressionSubDuctEmitTransferredFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, const void *a6)
{
  if (*a1 && (v7 = *(*a1 + 32)) != 0)
  {

    return vtDecompressionDuctEmitDecodedFrame(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 7310, v6);
  }
}

uint64_t vtDecompressionDuctEmitDecodedFrame(uint64_t *a1, const void *a2, uint64_t a3, unsigned int a4, void *a5, const void *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v49 = a4;
  cf = a5;
  FigSimpleMutexLock();
  v11 = a1[7];
  if (!v11)
  {
    v51 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_13:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return FigSimpleMutexUnlock();
  }

  Value = CFDictionaryGetValue(v11, a2);
  if (!Value)
  {
    v51 = 0;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    goto LABEL_13;
  }

  if (Value[80])
  {
    return FigSimpleMutexUnlock();
  }

  Value[80] = 1;
  v46 = *(Value + 24);
  v47 = *(Value + 5);
  v44 = *(Value + 3);
  v13 = *(Value + 9);
  v45 = *(Value + 8);
  v14 = *Value;
  v15 = *(Value + 1);
  v16 = *(Value + 2);
  v17 = *(Value + 11);
  FigSimpleMutexUnlock();
  if (v13)
  {
    CVBufferSetAttachment(a5, *MEMORY[0x1E6965E88], v13, kCVAttachmentMode_ShouldPropagate);
  }

  v18 = *a1;
  v53 = v46;
  v54 = v47;
  VTDecompressionSessionAnalyzeAndInterruptFrame(v18, a3, &v53, v17, &v49, &cf);
  v19 = *a1;
  v21 = *(*a1 + 112);
  v20 = *(*a1 + 120);
  if (!v16 && a6 && !v21)
  {
    v22 = *(v19 + 96);
    if (v22)
    {
      v23 = *(v19 + 104);
      v53 = *MEMORY[0x1E6960C70];
      v54 = *(MEMORY[0x1E6960C70] + 16);
      *v52 = v53;
      *&v52[16] = v54;
      v22(v23, v14, 4294949597, v49, 0, &v53, v52);
    }

    else if (v15)
    {
      v31 = *(v15 + 16);
      v53 = *MEMORY[0x1E6960C70];
      v54 = *(MEMORY[0x1E6960C70] + 16);
      *v52 = v53;
      *&v52[16] = v54;
      v31(v15, 4294949597, v49, 0, &v53, v52);
    }

    goto LABEL_27;
  }

  if (!cf && v21)
  {
    v53 = v46;
    v54 = v47;
    *v52 = v44;
    *&v52[16] = v45;
    v27 = v14;
    v28 = a3;
    v29 = a6;
LABEL_26:
    v21(v20, v27, v28, v49, v29, &v53, v52);
    goto LABEL_27;
  }

  if (v16 && !cf)
  {
    v30 = *(v16 + 16);
    v53 = v46;
    v54 = v47;
    *v52 = v44;
    *&v52[16] = v45;
    v30(v16, a3, v49, 0, a6, &v53, v52);
    goto LABEL_27;
  }

  v21 = *(v19 + 96);
  if (v21)
  {
    v20 = *(v19 + 104);
    v53 = v46;
    v54 = v47;
    *v52 = v44;
    *&v52[16] = v45;
    v27 = v14;
    v28 = a3;
    v29 = cf;
    goto LABEL_26;
  }

  if (v16)
  {
    v42 = *(v16 + 16);
    v53 = v46;
    v54 = v47;
    *v52 = v44;
    *&v52[16] = v45;
    v42(v16, a3, v49, cf, 0, &v53, v52);
  }

  else if (v15)
  {
    v43 = *(v15 + 16);
    v53 = v46;
    v54 = v47;
    *v52 = v44;
    *&v52[16] = v45;
    v43(v15, a3, v49, cf, &v53, v52);
  }

LABEL_27:
  v32 = cf;
  if ((v49 & 0x10) != 0)
  {
    if (!cf)
    {
      goto LABEL_32;
    }

    CFRelease(cf);
    v32 = cf;
  }

  if (v32)
  {
    ++*(a1 + 49);
  }

LABEL_32:
  FigSimpleMutexLock();
  v33 = a1[7];
  if (v33)
  {
    if (CFDictionaryGetValue(v33, a2))
    {
      CFDictionaryRemoveValue(a1[7], a2);
      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }

      goto LABEL_47;
    }

    v51 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = v51;
    v40 = type;
    if (os_log_type_enabled(v38, type))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 0xFFFFFFFE;
    }

    if (v41)
    {
      *v52 = 136315394;
      *&v52[4] = "vtDecompressionDuctEndFrame";
      *&v52[12] = 2048;
      *&v52[14] = a2;
      _os_log_send_and_compose_impl(v41, 0, &v53, 128, &dword_18F99C000, v38, v40, "<<<< VT-DS >>>> %s: Unrecognised VTVideoDecoderFrame token %p", v52, 22);
    }
  }

  else
  {
    v51 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v51;
    v36 = type;
    if (os_log_type_enabled(v34, type))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 0xFFFFFFFE;
    }

    if (v37)
    {
      *v52 = 136315138;
      *&v52[4] = "vtDecompressionDuctEndFrame";
      _os_log_send_and_compose_impl(v37, 0, &v53, 128, &dword_18F99C000, v34, v36, "<<<< VT-DS >>>> %s: Video decoder emitting frame before it was asked to decode anything", v52);
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_47:
  result = FigSimpleMutexUnlock();
  if (!*(a1 + 180))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vtFreeDuctFrameTrackingInfo(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 72) = 0;
  }

  _Block_release(*(a2 + 8));
  _Block_release(*(a2 + 16));
  v5 = *(a2 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 88) = 0;
  }

  CFAllocatorDeallocate(a1, a2);
}

const __CFDictionary *vtDecompressionSessionIsPropertySupportedBySubDuct(const void *a1)
{
  MEMORY[0x193AE3010](&sCreatePropertiesHandledByVideoToolboxOnce_0, vtDecompressionSessionCreatePropertiesHandledByVideoToolbox);
  result = sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct;
  if (sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct)
  {

    return CFDictionaryContainsKey(result, a1);
  }

  return result;
}

uint64_t vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  a2[2] = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, vtDuctFrameTrackingInfoFindMinPTS, a2);
  }

  return FigSimpleMutexUnlock();
}

void VTDecompressionSessionInvalidate(VTDecompressionSessionRef session)
{
  if (session && !*(session + 16))
  {
    if (*(session + 3))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      VTDecompressionSessionRemoteBridge_Invalidate(*(session + 3), v2, v3);
    }

    else
    {
      VTDecompressionSessionInvalidate_cold_1(session);
    }

    *(session + 16) = 1;
  }
}

void vtDecompressionSessionFinalize(uint64_t a1)
{
  VTDecompressionSessionInvalidate(a1);
  _Block_release(*(a1 + 176));
  *(a1 + 176) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 168) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  if (*(a1 + 72))
  {
    FigSemaphoreDestroy();
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    os_release(v7);
    *(a1 + 152) = 0;
  }
}

void VTPixelTransferSessionInvalidate(VTPixelTransferSessionRef session)
{
  if (session && !*(session + 16))
  {
    v2 = *(session + 3);
    if (v2)
    {
      CFRelease(v2);
      *(session + 3) = 0;
    }

    v3 = *(session + 4);
    if (v3)
    {
      CFRelease(v3);
      *(session + 4) = 0;
    }

    v4 = *(session + 94);
    if (v4)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v5(*(session + 95));
      }

      *(session + 94) = 0;
      *(session + 95) = 0;
    }

    v6 = *(session + 102);
    if (v6)
    {
      CFRelease(v6);
      *(session + 102) = 0;
    }

    v7 = *(session + 103);
    if (v7)
    {
      CFRelease(v7);
      *(session + 103) = 0;
    }

    v8 = *(session + 19);
    if (v8)
    {
      CFRelease(v8);
      *(session + 19) = 0;
    }

    v9 = *(session + 20);
    if (v9)
    {
      CFRelease(v9);
      *(session + 20) = 0;
    }

    v10 = *(session + 24);
    if (v10)
    {
      CFRelease(v10);
      *(session + 24) = 0;
    }

    v11 = *(session + 25);
    if (v11)
    {
      CFRelease(v11);
      *(session + 25) = 0;
    }

    v12 = *(session + 6);
    if (v12)
    {
      CFRelease(v12);
      *(session + 6) = 0;
    }

    v13 = *(session + 101);
    if (v13)
    {
      CFRelease(v13);
      *(session + 101) = 0;
    }

    v14 = *(session + 91);
    if (v14)
    {
      free(v14);
      *(session + 91) = 0;
    }

    v15 = *(session + 92);
    if (v15)
    {
      free(v15);
      *(session + 92) = 0;
    }

    v16 = *(session + 29);
    if (v16)
    {
      CVPixelBufferRelease(v16);
      *(session + 29) = 0;
    }

    v17 = 0;
    v18 = session + 288;
    do
    {
      v19 = *&v18[v17];
      if (v19)
      {
        free(v19);
        *&v18[v17] = 0;
      }

      v17 += 32;
    }

    while (v17 != 128);
    v20 = 0;
    v21 = session + 416;
    do
    {
      v22 = *&v21[v20];
      if (v22)
      {
        free(v22);
        *&v21[v20] = 0;
      }

      v20 += 32;
    }

    while (v20 != 128);
    v23 = *(session + 68);
    if (v23)
    {
      free(v23);
      *(session + 68) = 0;
    }

    v24 = *(session + 69);
    if (v24)
    {
      free(v24);
      *(session + 69) = 0;
    }

    v25 = *(session + 70);
    if (v25)
    {
      free(v25);
      *(session + 70) = 0;
    }

    v26 = *(session + 122);
    if (v26)
    {
      CFRelease(v26);
      *(session + 122) = 0;
    }

    v27 = *(session + 125);
    if (v27)
    {
      CFRelease(v27);
      *(session + 125) = 0;
    }

    v28 = *(session + 116);
    if (v28)
    {
      CFRelease(v28);
      *(session + 116) = 0;
    }

    v29 = *(session + 117);
    if (v29)
    {
      CFRelease(v29);
      *(session + 117) = 0;
    }

    v30 = *(session + 126);
    if (v30)
    {
      CFRelease(v30);
      *(session + 126) = 0;
    }

    VTPixelTransferSessionInvalidate(*(session + 128));
    VTPixelTransferSessionInvalidate(*(session + 129));
    v31 = *(session + 118);
    if (v31)
    {
      CFRelease(v31);
      *(session + 118) = 0;
    }

    v32 = *(session + 128);
    if (v32)
    {
      CFRelease(v32);
      *(session + 128) = 0;
    }

    v33 = *(session + 129);
    if (v33)
    {
      CFRelease(v33);
      *(session + 129) = 0;
    }

    v34 = *(session + 130);
    if (v34)
    {
      CFRelease(v34);
      *(session + 130) = 0;
    }

    v35 = *(session + 131);
    if (v35)
    {
      CFRelease(v35);
      *(session + 131) = 0;
    }

    v36 = *(session + 132);
    if (v36)
    {
      CFRelease(v36);
      *(session + 132) = 0;
    }

    v37 = *(session + 133);
    if (v37)
    {
      CFRelease(v37);
      *(session + 133) = 0;
    }

    *(session + 254) = 0;
    v38 = *(session + 123);
    if (v38)
    {
      CFRelease(v38);
      *(session + 123) = 0;
    }

    v39 = *(session + 124);
    if (v39)
    {
      CFRelease(v39);
      *(session + 124) = 0;
    }

    v40 = *(session + 119);
    if (v40)
    {
      CFRelease(v40);
      *(session + 119) = 0;
    }

    v41 = *(session + 120);
    if (v41)
    {
      CFRelease(v41);
      *(session + 120) = 0;
    }

    v42 = *(session + 121);
    if (v42)
    {
      CFRelease(v42);
      *(session + 121) = 0;
    }

    v43 = *(session + 135);
    if (v43)
    {
      CFRelease(v43);
      *(session + 135) = 0;
    }

    v44 = *(session + 136);
    if (v44)
    {
      CFRelease(v44);
      *(session + 136) = 0;
    }

    v45 = *(session + 134);
    if (v45)
    {
      CFRelease(v45);
      *(session + 134) = 0;
    }

    v46 = *(session + 137);
    if (v46)
    {
      CFRelease(v46);
      *(session + 137) = 0;
    }

    v47 = *(session + 138);
    if (v47)
    {
      CFRelease(v47);
      *(session + 138) = 0;
    }

    v48 = *(session + 139);
    if (v48)
    {
      CFRelease(v48);
      *(session + 139) = 0;
    }

    v49 = *(session + 99);
    if (v49)
    {
      CFRelease(v49);
      *(session + 99) = 0;
    }

    v50 = *(session + 100);
    if (v50)
    {
      CFRelease(v50);
      *(session + 100) = 0;
    }

    v51 = *(session + 149);
    if (v51)
    {
      CFRelease(v51);
      *(session + 149) = 0;
    }

    v52 = *(session + 150);
    if (v52)
    {
      CFRelease(v52);
      *(session + 150) = 0;
    }

    v53 = *(session + 151);
    if (v53)
    {
      CFRelease(v53);
      *(session + 151) = 0;
    }

    v54 = *(session + 152);
    if (v54)
    {
      CFRelease(v54);
      *(session + 152) = 0;
    }

    v55 = *(session + 97);
    if (v55)
    {
      CFRelease(v55);
      *(session + 97) = 0;
    }

    v56 = *(session + 146);
    if (v56)
    {
      CFRelease(v56);
      *(session + 146) = 0;
    }

    v57 = *(session + 147);
    if (v57)
    {
      CFRelease(v57);
      *(session + 147) = 0;
    }

    v58 = *(session + 90);
    if (v58)
    {
      v58(*(session + 89));
      *(session + 712) = 0u;
    }

    *(session + 144) = 0;
    *(session + 16) = 1;
  }
}

void vtPixelTransferSessionFinalize(OpaqueVTPixelTransferSession *a1)
{
  VTPixelTransferSessionInvalidate(a1);
  v2 = *(a1 + 145);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 145) = 0;
  }
}

uint64_t RegisterVTVideoEncoderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

OSStatus VTPixelTransferSessionTransferImage(VTPixelTransferSessionRef session, CVPixelBufferRef sourceBuffer, CVPixelBufferRef destinationBuffer)
{
  v4 = 0;
  v12 = *MEMORY[0x1E69E9840];
  if (sourceBuffer && destinationBuffer)
  {
    CVPixelBufferGetWidth(sourceBuffer);
    CVPixelBufferGetWidth(destinationBuffer);
    CVPixelBufferGetHeight(sourceBuffer);
    CVPixelBufferGetHeight(destinationBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(sourceBuffer);
    printable4CC(PixelFormatType);
    v8 = CVPixelBufferGetPixelFormatType(destinationBuffer);
    printable4CC(v8);
    if (session && FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_62();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v4 = _VTPixelTransferSessionTransferImage(session, sourceBuffer, destinationBuffer);
    if (*v10 == 1)
    {
      kdebug_trace();
    }
  }

  if (session)
  {
    FigAtomicDecrement32();
  }

  return v4;
}

uint64_t vtBufferGetCleanRect(int a1, int a2, const void *a3, int *a4, int *a5, int *a6, int *a7, int *a8, int *a9)
{
  if (!a3)
  {
    goto LABEL_22;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a3))
  {
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D80]);
  if (!Value)
  {
    goto LABEL_22;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  v36 = 0;
  valuePtr = 0;
  CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr + 4);
  v20 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D60]);
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = CFGetTypeID(v20);
  if (v22 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
  v23 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D68]);
  if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v24, kCFNumberFloatType, &v36 + 4);
    v26 = *(&v36 + 1);
  }

  else
  {
    HIDWORD(v36) = 0;
    v26 = 0.0;
  }

  v27 = (v26 + vcvts_n_f32_s32(a1 - HIDWORD(valuePtr), 1uLL));
  v28 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D78]);
  if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v29, kCFNumberFloatType, &v36);
  }

  else
  {
    LODWORD(v36) = 0;
  }

  if ((v27 & 0x80000000) == 0 && (v31 = HIDWORD(valuePtr), SHIDWORD(valuePtr) >= 1) && HIDWORD(valuePtr) + v27 <= a1 && (v32 = valuePtr, v33 = (*&v36 + vcvts_n_f32_s32(a2 - valuePtr, 1uLL)), (v33 & 0x80000000) == 0) && valuePtr >= 1 && valuePtr + v33 <= a2)
  {
    result = 1;
  }

  else
  {
LABEL_22:
    v27 = 0;
    v33 = 0;
    result = 0;
    v32 = a2;
    v31 = a1;
  }

  *a4 = a1;
  *a5 = a2;
  *a6 = v27;
  *a7 = v33;
  *a8 = v31;
  *a9 = v32;
  return result;
}

uint64_t vtRoundCleanRectToPixelBlockBoundary(uint64_t result, int a2, int a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  if (result <= 1983000879)
  {
    if (result <= 875704437)
    {
      if (result == 846624121)
      {
        goto LABEL_16;
      }

      v7 = 875704422;
    }

    else
    {
      if (result == 875704438 || result == 1630697081)
      {
        goto LABEL_16;
      }

      v7 = 1714696752;
    }

    goto LABEL_15;
  }

  if (result <= 2037741157)
  {
    if (result == 1983000880 || result == 1983000886)
    {
      goto LABEL_16;
    }

    v7 = 2033463856;
LABEL_15:
    if (result != v7)
    {
      return result;
    }

    goto LABEL_16;
  }

  if ((result - 2037741158) > 0xF || ((1 << (result - 102)) & 0xA001) == 0)
  {
    return result;
  }

LABEL_16:
  if (*a4)
  {
    --*a4;
    v8 = *a6 + 1;
    *a6 = v8;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = *a6;
    if ((*a6 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v8 < a2)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = a2;
  }

  *a6 = v9;
LABEL_24:
  if (result > 1714696751)
  {
    if (result != 2033463856)
    {
      v10 = 1714696752;
LABEL_29:
      if (result != v10)
      {
        return result;
      }
    }
  }

  else if (result != 875704422)
  {
    v10 = 875704438;
    goto LABEL_29;
  }

  if (*a5)
  {
    --*a5;
    v11 = *a7 + 1;
    *a7 = v11;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = *a7;
    if ((*a7 & 1) == 0)
    {
      return result;
    }
  }

  if (v11 < a3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = a3;
  }

  *a7 = v12;
  return result;
}

IOSurfaceRef figIOSurfaceAcceleratedPixelTransfer_Validate(__CVBuffer *a1, __CVBuffer *a2)
{
  result = CVPixelBufferGetIOSurface(a1);
  if (result)
  {
    result = CVPixelBufferGetIOSurface(a2);
    if (result)
    {
      if (CVPixelBufferGetWidth(a1) > 0x1000 || CVPixelBufferGetHeight(a1) > 0x1000 || CVPixelBufferGetWidth(a2) > 0x1000)
      {
        return 0;
      }

      else
      {
        return (CVPixelBufferGetHeight(a2) <= 0x1000);
      }
    }
  }

  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_Open(uint64_t a1, const __CFDictionary *a2, __CVBuffer *a3, uint64_t a4, __CVBuffer *a5, uint64_t a6, OSType **a7)
{
  v12 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10200400C9AEB86uLL);
  if (v12)
  {
    v13 = v12;
    v14 = *MEMORY[0x1E695E480];
    v15 = IOSurfaceAcceleratorCreate();
    if (v15)
    {
      v16 = v15;
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
      free(v13);
      return v16;
    }

    v13[43] = CVPixelBufferGetPixelFormatType(a3);
    v13[44] = CVPixelBufferGetPixelFormatType(a5);
    v19 = *MEMORY[0x1E69662C8];
    *(v13 + 23) = getSubSampling(v13[43], *MEMORY[0x1E69662C8]);
    v20 = *MEMORY[0x1E69662E0];
    *(v13 + 24) = getSubSampling(v13[43], *MEMORY[0x1E69662E0]);
    *(v13 + 25) = getSubSampling(v13[44], v19);
    *(v13 + 26) = getSubSampling(v13[44], v20);
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"DestinationYCbCrMatrix");
      v22 = CFDictionaryGetValue(a2, @"DestinationColorPrimaries");
      v23 = CFDictionaryGetValue(a2, @"DestinationTransferFunction");
      v24 = Value == 0;
      if (Value)
      {
        IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(Value);
      }

      else
      {
        IntegerCodePointForString = 0;
      }

      *(v13 + 27) = IntegerCodePointForString;
      if (v22)
      {
        v27 = CVColorPrimariesGetIntegerCodePointForString(v22);
      }

      else
      {
        v27 = 0;
      }

      *(v13 + 28) = v27;
      if (v23)
      {
        v26 = CVTransferFunctionGetIntegerCodePointForString(v23);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      *(v13 + 27) = 0;
      *(v13 + 28) = 0;
      v24 = 1;
    }

    *(v13 + 29) = v26;
    *(v13 + 240) = figPixelFormatTypeContainsYCbCr(v13[43]);
    *(v13 + 241) = figPixelFormatTypeContainsYCbCr(v13[44]);
    v28 = CVPixelFormatDescriptionCreateWithPixelFormatType(v14, v13[44]);
    if (v28)
    {
      v29 = v28;
      v30 = *MEMORY[0x1E695E4D0];
      v31 = v30 == CFDictionaryGetValue(v28, *MEMORY[0x1E69662A0]);
      CFRelease(v29);
    }

    else
    {
      v31 = 0;
    }

    *(v13 + 242) = v31;
    if (v24 && *(v13 + 241) == 1 && *(v13 + 240) == 1)
    {
      v32 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965F98], 0);
      if (v32)
      {
        v33 = v32;
        *(v13 + 27) = CVYCbCrMatrixGetIntegerCodePointForString(v32);
        *a7 = v13;
        CFRelease(v33);
        return 0;
      }

      v16 = 0;
      *(v13 + 27) = 0;
    }

    else
    {
      v16 = 0;
    }

    *a7 = v13;
    return v16;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< IOSurface Support >>>>", 2360, v7);
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2(uint64_t *a1, const __CFDictionary *a2, CVPixelBufferRef texture, double *a4, void *a5, double *a6)
{
  v301 = 0u;
  v302 = 0u;
  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v296 = 0u;
  v295 = 0;
  v294 = 0u;
  v293 = 0u;
  v292 = 0u;
  v291 = 0u;
  v290 = 0u;
  v289 = 0u;
  v288 = 0u;
  v287 = 0u;
  v286 = 0;
  v285 = 0u;
  v284 = 0u;
  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0u;
  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  v269 = 0u;
  v268 = 132;
  v13 = CVPixelBufferRetain(texture);
  v267 = 0u;
  v266 = 0u;
  v265 = 0u;
  v264 = 0;
  if (!texture || (v14 = CFGetTypeID(texture), v14 != CVPixelBufferGetTypeID()))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_12(&rect);
    goto LABEL_368;
  }

  if (!a5 || (v15 = CFGetTypeID(a5), v15 != CVPixelBufferGetTypeID()))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_11(&rect);
    goto LABEL_368;
  }

  if (CVPixelBufferGetPixelFormatType(texture) != *(a1 + 43))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_1(&rect);
    goto LABEL_368;
  }

  if (CVPixelBufferGetPixelFormatType(a5) != *(a1 + 44))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_2(&rect);
    goto LABEL_368;
  }

  v16 = a4[2];
  if (v16 < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_10(&rect);
    goto LABEL_368;
  }

  if (a4[3] < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_9(&rect);
    goto LABEL_368;
  }

  v17 = v16 + a4[4];
  if (v17 > CVPixelBufferGetWidth(texture))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_8(&rect);
    goto LABEL_368;
  }

  v18 = a4[3] + a4[5];
  if (v18 > CVPixelBufferGetHeight(texture))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_7(&rect);
    goto LABEL_368;
  }

  v19 = a6[2];
  if (v19 < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_6(&rect);
    goto LABEL_368;
  }

  if (a6[3] < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_5(&rect);
    goto LABEL_368;
  }

  v20 = v19 + a6[4];
  if (v20 > CVPixelBufferGetWidth(a5))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_4(&rect);
    goto LABEL_368;
  }

  v21 = a6[3] + a6[5];
  if (v21 > CVPixelBufferGetHeight(a5))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_3(&rect);
LABEL_368:
    v170 = 0;
    x_low = LODWORD(rect.origin.x);
    if (v13)
    {
      goto LABEL_265;
    }

    goto LABEL_266;
  }

  v230 = a4;
  v22 = *MEMORY[0x1E695E4D0];
  v241 = *MEMORY[0x1E695E4C0];
  scalerCapabilities(&v296);
  CVPixelBufferGetIOSurface(texture);
  IOSurfaceGetBulkAttachments();
  v237 = BYTE12(v290);
  pixelBuffer = a5;
  CVPixelBufferGetIOSurface(a5);
  IOSurfaceGetBulkAttachments();
  v235 = BYTE11(v281);
  v23 = BYTE12(v281);
  v24 = CVBufferCopyAttachment(v13, *MEMORY[0x1E6965ED0], 0);
  v238 = a1;
  value = v22;
  if (!a2)
  {
    v216 = 0;
    dict = 0;
    v28 = 0;
    v226 = 0;
    v26 = v22;
    v29 = v22;
    goto LABEL_34;
  }

  v25 = v24;
  v26 = v22;
  if (CFDictionaryContainsKey(a2, @"ServiceEnableHighSpeedTransfer"))
  {
    v26 = CFDictionaryGetValue(a2, @"ServiceEnableHighSpeedTransfer");
  }

  if (CFDictionaryContainsKey(a2, @"ServiceDisableDither"))
  {
    v241 = CFDictionaryGetValue(a2, @"ServiceDisableDither");
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (CFDictionaryContainsKey(a2, @"ServiceHistogramData"))
  {
    v27 = CFDictionaryGetValue(a2, @"ServiceHistogramData");
  }

  else
  {
    v27 = 0;
  }

  v30 = FigCFDictionaryGetBooleanValue() == v22;
  v226 = (FigCFDictionaryGetBooleanValue() == v22) | (2 * v30);
  if (CFDictionaryContainsKey(a2, @"Rotation"))
  {
    CFDictionaryGetValue(a2, @"Rotation");
    if (FigCFEqual())
    {
      v31 = v226 | 4;
    }

    else
    {
      if (!FigCFEqual())
      {
        v165 = FigCFEqual();
        v166 = v226;
        if (v165)
        {
          v166 = v226 ^ 7;
        }

        v226 = v166;
        goto LABEL_30;
      }

      v31 = v226 ^ 3;
    }

    v226 = v31;
  }

LABEL_30:
  v216 = v27;
  if (CFDictionaryContainsKey(a2, @"ServiceHistogramRectangle"))
  {
    dict = CFDictionaryGetValue(a2, @"ServiceHistogramRectangle");
  }

  else
  {
    dict = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v28 = CFDictionaryGetValue(a2, @"ReducedPrecisionFractionalOffsets");
  v24 = v25;
  v29 = v22;
LABEL_34:
  v32 = v238[28];
  v224 = v238[27];
  BYTE10(v281) = v224;
  cf = v24;
  if (v24 || !v32 || v32 == sUnsetColorPrimaryMatrix || (v35 = v238[29]) == 0 || (v34 = sUnsetTransferFunction, v35 == sUnsetTransferFunction))
  {
    if (!v32 || v32 == sUnsetColorPrimaryMatrix)
    {
      BYTE11(v281) = 0;
      v32 = BYTE11(v290);
    }

    else
    {
      v32 = 0;
    }

    v33 = v238[29];
    v34 = sUnsetTransferFunction;
    if (!v33 || v33 == sUnsetTransferFunction)
    {
      BYTE12(v281) = 0;
      v35 = BYTE12(v290);
    }

    else
    {
      v35 = 0;
    }
  }

  v223 = v35;
  if (*(v238 + 242) != 1 || v32 && v32 != sUnsetColorPrimaryMatrix || v35 && v35 != v34)
  {
    v213 = 0;
LABEL_49:
    v36 = pixelBuffer;
    goto LABEL_50;
  }

  v213 = 0;
  if (v235 && sUnsetColorPrimaryMatrix != v235)
  {
    BYTE11(v272) = v235;
    BYTE11(v281) = 0;
    v213 = 64;
  }

  if (!v23)
  {
    goto LABEL_49;
  }

  v93 = v34 == v23;
  v161 = v23;
  v36 = pixelBuffer;
  if (!v93)
  {
    v213 |= 0x80uLL;
    BYTE12(v272) = v161;
    BYTE12(v281) = 0;
  }

LABEL_50:
  v37 = MEMORY[0x1E69A85C8];
  if (v26 != v29)
  {
    v38 = v230;
    if (v241 != v29)
    {
      Mutable = 0;
      goto LABEL_63;
    }

LABEL_61:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_62;
  }

  v40 = v29;
  v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v41, *MEMORY[0x1E69A84D0], v26);
  if (v241 != v40)
  {
    v38 = v230;
    Mutable = v41;
    goto LABEL_63;
  }

  v38 = v230;
  Mutable = v41;
  if (!v41)
  {
    goto LABEL_61;
  }

LABEL_62:
  FigCFDictionarySetInt32();
LABEL_63:
  if (BYTE1(v297) == 1 && v28)
  {
    v42 = Mutable;
    v43 = CFGetTypeID(v28);
    if (v43 == CFBooleanGetTypeID())
    {
      Mutable = v42;
      if (!v42)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionarySetValue(Mutable, @"ReducedPrecisionFractionalOffsets", v28);
    }

    else
    {
      Mutable = v42;
    }
  }

  v44 = v238;
  if (v216)
  {
    v45 = a6;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }
  }

  else
  {
    v45 = a6;
  }

  CVPixelBufferGetIOSurface(texture);
  IOSurfaceBindAccel();
  v46 = Mutable;
  v47 = CVPixelBufferGetWidth(v36) & -v238[25];
  Height = CVPixelBufferGetHeight(v36);
  v49 = 0;
  v50 = 0;
  v215 = *MEMORY[0x1E69662C8];
  v214 = *MEMORY[0x1E69662E0];
  key = *MEMORY[0x1E69A85C0];
  v227 = Height & -v238[26];
  v228 = v47;
  v51 = v47;
  v52 = v46;
  v218 = *v37;
  v242 = 1;
  v209 = *MEMORY[0x1E69662D8];
  v208 = *MEMORY[0x1E6966280];
  v225 = v45;
  v53 = BYTE11(v290);
  v222 = v32;
  v54 = 0;
  v55 = BYTE10(v290);
  while (1)
  {
    v220 = v50;
    v221 = v54;
    if (HIBYTE(v264))
    {
      Width = CVPixelBufferGetWidth(v13);
      v57 = CVPixelBufferGetHeight(v13);
    }

    else
    {
      if (v49)
      {
        v58 = v52;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v13);
        SubSampling = getSubSampling(PixelFormatType, v215);
        LOBYTE(PixelFormatType) = getSubSampling(PixelFormatType, v214);
        v61 = CVPixelBufferGetWidth(v13);
        v62 = SubSampling;
        v38 = v230;
        Width = v61 & -v62;
        v63 = CVPixelBufferGetHeight(v13);
        v64 = PixelFormatType;
        v52 = v58;
      }

      else
      {
        Width = CVPixelBufferGetWidth(v13) & -v44[23];
        v63 = CVPixelBufferGetHeight(v13);
        v64 = v44[24];
      }

      v57 = v63 & -v64;
    }

    v65 = v45;
    if (!Width || !v57 || !v228 || !v227)
    {
      allocatora = v52;
      emitter = fig_log_get_emitter();
      v150 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< IOSurface Support >>>>", 3040, v6);
LABEL_219:
      x_low = v150;
      v153 = v213;
      v118 = pixelBuffer;
      goto LABEL_260;
    }

    v265 = 0uLL;
    *&v266 = Width << 16;
    *(&v266 + 1) = v57 << 16;
    if (v242)
    {
      v66 = v38[1].f64[0];
      if (v66 > 0.0 || v38[2].f64[0] < Width || v38[1].f64[1] > 0.0 || v38[2].f64[1] < v57)
      {
        v67 = v38[2].f64[0];
        v68 = v67;
        Width = vcvtas_u32_f32(v68);
        if (HIBYTE(v264))
        {
          v69 = v38[2].f64[1];
          v70 = v69;
          v57 = vcvtas_u32_f32(v70);
          v265 = vcvtq_n_u64_f64(v38[1], 0x10uLL);
          *&v266 = vcvtd_n_u64_f64(v67, 0x10uLL);
          v71 = vcvtd_n_u64_f64(v69, 0x10uLL);
        }

        else
        {
          v234 = v55;
          allocator = v53;
          v73 = v52;
          v74 = v38[2].f64[1];
          v75 = v38;
          v77 = v44[23];
          v76 = v44[24];
          isH3Platform();
          isH3Platform();
          v78 = *(v44 + 43);
          v79 = v44[23];
          v80 = v75[1].f64[0];
          v81 = vcvtas_u32_f32(v80);
          if (isH3Platform() || v78 == 2037741171 || v78 == 2037741158)
          {
            v81 &= -v79;
          }

          v265.i64[0] = v81 << 16;
          v82 = *(v44 + 43);
          v83 = v44[24];
          v84 = v230[3];
          v85 = vcvtas_u32_f32(v84);
          if (isH3Platform())
          {
            if (v82 == 2037741171 || v82 == 2037741158)
            {
              LODWORD(v85) = v85 & 0xFFFFFFFE;
            }

            else
            {
              v85 &= -v83;
            }
          }

          Width &= -v77;
          v86 = v74;
          v57 = vcvtas_u32_f32(v86) & -v76;
          v265.i64[1] = v85 << 16;
          *&v266 = Width << 16;
          v71 = v57 << 16;
          v38 = v230;
          v66 = v230[2];
          v67 = v230[4];
          v52 = v73;
          v65 = v225;
          v53 = allocator;
          v55 = v234;
        }

        *(&v266 + 1) = v71;
        if (v66 + v67 > CVPixelBufferGetWidth(v13) || (v87 = v38[1].f64[1] + v38[2].f64[1], v87 > CVPixelBufferGetHeight(v13)))
        {
          allocatora = v52;
          v151 = fig_log_get_emitter();
          v150 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v151, 4294954394, "<<<< IOSurface Support >>>>", 3077, v6);
          goto LABEL_219;
        }
      }

      v72 = v226 != 0;
    }

    else
    {
      v72 = 0;
    }

    v236 = v13;
    if (v72)
    {
      if (!v52)
      {
        v52 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      FigCFDictionarySetInt32();
    }

    else if (v226 && v52)
    {
      CFDictionaryRemoveValue(v52, key);
    }

    v88 = v65[2].f64[0];
    v89 = -v44[25];
    v90 = vcvtas_u32_f32(v88) & v89;
    v91 = v65[2].f64[1];
    v92 = vcvtas_u32_f32(v91) & -v44[26];
    v93 = Width == v90 && v57 == v92;
    allocatora = v52;
    if (v93)
    {
      *&v267 = 0;
      v231 = Width;
      v92 = v57;
      v102 = Width;
      v103 = v57;
      *(&v267 + 1) = __PAIR64__(v57, Width);
    }

    else
    {
      v94 = v90 / Width;
      v95 = v94 > *(&v299 + 2);
      v96 = v89 & (*(&v299 + 2) * Width);
      if (v94 > *(&v299 + 2))
      {
        v90 = v96;
      }

      if (v94 < *(&v299 + 3))
      {
        v90 = (vcvtps_u32_f32(*(&v299 + 3) * Width) + v44[25] - 1) & -v44[25];
        v95 = 1;
      }

      v97 = v57;
      v98 = v92 / v57;
      if (v98 > *&v300)
      {
        v92 = -v44[26] & (*&v300 * v97);
        v95 = 1;
      }

      if (v98 < *(&v300 + 1))
      {
        v99 = v44[26];
        v100 = vcvtps_u32_f32(*(&v300 + 1) * v97) + v99 - 1;
        v101 = -v99;
        v92 = v100 & v101;
        *&v267 = 0;
        DWORD2(v267) = v90;
        HIDWORD(v267) = v100 & v101;
LABEL_141:
        v115 = 1;
        v113 = v90;
        v116 = v92;
        goto LABEL_143;
      }

      *&v267 = 0;
      *(&v267 + 1) = __PAIR64__(v92, v90);
      if (v95)
      {
        goto LABEL_141;
      }

      v231 = v90;
      v102 = v90;
      v103 = v92;
    }

    v104 = v65[1].f64[0];
    v105 = v65[1].f64[1];
    if (v104 > 0.0 || v105 < v51 || v65[2].f64[1] < v227)
    {
      v232 = v102;
      v233 = v103;
      v106 = v104;
      LODWORD(v267) = -*(v44 + 50) & vcvtas_u32_f32(v106);
      v107 = *(v44 + 44);
      v108 = v44[26];
      if (!isH3Platform() || (LODWORD(v109) = -2, v107 != 2037741158) && v107 != 2037741171)
      {
        v109 = -v108;
      }

      v110 = v105;
      DWORD1(v267) = v109 & vcvtas_u32_f32(v110);
      v111 = vandq_s8(vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v65[2])))), vnegq_s64(*(v44 + 25)));
      v112 = vmovn_s64(v111);
      *(&v267 + 1) = v112;
      v113 = v112.i32[0];
      if (v228 < (v267 + v112.i32[0]) || v227 < (v111.i32[2] + DWORD1(v267)))
      {
        v163 = fig_log_get_emitter();
        v164 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v163, 4294954394, "<<<< IOSurface Support >>>>", 3139, v6);
        goto LABEL_251;
      }

      v115 = 0;
      v116 = v112.u32[1];
      v52 = allocatora;
      goto LABEL_145;
    }

    v115 = 0;
    v113 = v102;
    v116 = v103;
    v90 = v231;
LABEL_143:
    LODWORD(v231) = v90;
    if (v90 < v113 || (v233 = v116, v232 = v113, v92 < v116))
    {
      v162 = fig_log_get_emitter();
      v164 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v162, 4294954394, "<<<< IOSurface Support >>>>", 3144, v6);
LABEL_251:
      x_low = v164;
      v13 = v236;
LABEL_252:
      v118 = pixelBuffer;
LABEL_259:
      v153 = v213;
      goto LABEL_260;
    }

LABEL_145:
    if (v264)
    {
      v117 = v52;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v244 = 0u;
      memset(&rect, 0, sizeof(rect));
      scalerCapabilities(&rect);
      if ((v247 & 1) != 0 && SDWORD1(v247) >= v247 && (BYTE4(v247) & 1) != 0 && (v137 = malloc_type_calloc(2 * (DWORD2(v247) * v247 + HIDWORD(v247) * DWORD1(v247)), 4uLL, 0x100004052888210uLL)) != 0 && ((v138 = v137, v139 = v116 / v57, v140 = v113, v141 = &v137[DWORD2(v247) * v247], v142 = &v141[DWORD2(v247) * v247], __dst = &v142[HIDWORD(v247) * DWORD1(v247)], v143 = v140 / Width, _initAsgFilter(DWORD2(v247), v247, v248, DWORD1(v248), BYTE2(rect.size.width), v137, v139), memcpy(v141, v138, 4 * DWORD2(v247) * v247), SDWORD1(v247) >= v247) ? (v144 = v247) : (v144 = DWORD1(v247)), _initAsgFilter(HIDWORD(v247), v144, v248, DWORD1(v248), BYTE2(rect.size.width), &v142[(DWORD1(v247) - v247) / 2 * HIDWORD(v247)], v143), memcpy(__dst, v142, 4 * HIDWORD(v247) * DWORD1(v247)), v145 = IOSurfaceAcceleratorSetCustomFilter(), v146 = BYTE2(rect.size.width), free(v138), !v145))
      {
        if (v146)
        {
          CFDictionarySetValue(v117, @"SymmetricScaling", value);
        }
      }

      else
      {
        CFDictionaryRemoveValue(v117, v218);
      }
    }

    v44 = v238;
    if ((v242 & 1) == 0 || *(v238 + 240) != 1 || *(v238 + 241) != 1 || !v55 || sUnsetYCbCrMatrix == v55 || v224 == v55 || v222 != v53 || v223 != v237)
    {
      v118 = pixelBuffer;
      v120 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v54 = 0;
      v45 = v225;
      if (!v115)
      {
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    v118 = pixelBuffer;
    v45 = v225;
    if (MEMORY[0xFFFFFC080] > 214503011)
    {
      break;
    }

    v54 = v221;
    if (MEMORY[0xFFFFFC080] != -1777893647)
    {
      v119 = -1471079478;
      goto LABEL_211;
    }

LABEL_212:
    v54 = 1;
    v50 = 1111970369;
LABEL_162:
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    memset(&rect, 0, sizeof(rect));
    CVPixelBufferGetIOSurface(v118);
    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v122 = ProtectionOptions;
    v123 = *(v238 + 42);
    if (v123 < 1)
    {
LABEL_169:
      texturea = 0;
    }

    else
    {
      v124 = v238 + 3;
      while (*(v124 - 1) != v231 || *v124 != v92 || *(v124 + 2) != v50 || v124[2] != ProtectionOptions)
      {
        v124 += 5;
        if (!--v123)
        {
          goto LABEL_169;
        }
      }

      v147 = *(v124 - 2);
      texturea = v147;
      if (v147)
      {
        CVPixelBufferRetain(v147);
        v13 = v236;
        goto LABEL_194;
      }
    }

    v125 = FigCreateProtectedIOSurfaceBackedCVPixelBufferWithAttributes(v232, v233, v50, 0, v122, &texturea);
    v13 = v236;
    if (v125)
    {
      x_low = v125;
      v160 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160, x_low, "<<<< IOSurface Support >>>>", 3198, v6);
      goto LABEL_259;
    }

    if (v224)
    {
      v126 = v224 == sUnsetYCbCrMatrix;
    }

    else
    {
      v126 = 1;
    }

    v127 = v126;
    if ((v127 | v54))
    {
      v128 = v55;
    }

    else
    {
      v128 = v224;
    }

    if (v222 == sUnsetColorPrimaryMatrix || v222 == 0)
    {
      v130 = v53;
    }

    else
    {
      v130 = v222;
    }

    v131 = v223 == sUnsetTransferFunction || v223 == 0;
    BYTE10(v245) = v128;
    BYTE11(v245) = v130;
    v132 = v237;
    if (!v131)
    {
      v132 = v223;
    }

    BYTE12(v245) = v132;
    CVPixelBufferGetIOSurface(texturea);
    IOSurfaceSetBulkAttachments2();
    v133 = texturea;
    if (texturea)
    {
      v134 = *(v238 + 42);
      if (v134 <= 3)
      {
        v135 = &v238[5 * v134 + 1];
        *v135 = CVPixelBufferRetain(texturea);
        *(v135 + 8) = CVPixelBufferGetWidth(v133);
        *(v135 + 16) = CVPixelBufferGetHeight(v133);
        *(v135 + 24) = CVPixelBufferGetPixelFormatType(v133);
        CVPixelBufferGetIOSurface(v133);
        *(v135 + 32) = IOSurfaceGetProtectionOptions();
        ++*(v238 + 42);
      }
    }

LABEL_194:
    CVPixelBufferGetIOSurface(v13);
    CVPixelBufferGetIOSurface(texturea);
    v52 = allocatora;
    v136 = IOSurfaceAcceleratorTransformSurface();
    if (v136)
    {
      x_low = v136;
      v262 = 0;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      v258 = 0u;
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
      v254 = 0u;
      CVPixelBufferGetIOSurface(v13);
      IOSurfaceGetBulkAttachments();
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v207, v208, v209);
      if (texturea)
      {
        CFRelease(texturea);
      }

      goto LABEL_259;
    }

    CVPixelBufferRelease(v13);
    v242 = 0;
    v13 = texturea;
    v55 = BYTE10(v245);
    v53 = BYTE11(v245);
    v49 = 1;
    v237 = BYTE12(v245);
    v38 = v230;
  }

  v54 = v221;
  if (MEMORY[0xFFFFFC080] == 214503012)
  {
    goto LABEL_212;
  }

  v119 = 506291073;
LABEL_211:
  if (MEMORY[0xFFFFFC080] == v119)
  {
    goto LABEL_212;
  }

  v148 = allocatora;
  if (!allocatora)
  {
    v148 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  allocatora = v148;
  CFDictionarySetValue(v148, @"ITUVariantCSCEnable", value);
  v120 = v220;
  if (v115)
  {
    goto LABEL_161;
  }

LABEL_160:
  if (v54)
  {
LABEL_161:
    v50 = v120;
    goto LABEL_162;
  }

  if (v224 == sUnsetYCbCrMatrix || v224 == 0)
  {
    v155 = v55;
  }

  else
  {
    v155 = v224;
  }

  if (v222 == sUnsetColorPrimaryMatrix || v222 == 0)
  {
    v157 = v53;
  }

  else
  {
    v157 = v222;
  }

  v158 = v223 == sUnsetTransferFunction || v223 == 0;
  BYTE10(v281) = v155;
  BYTE11(v281) = v157;
  v159 = v237;
  if (!v158)
  {
    v159 = v223;
  }

  BYTE12(v281) = v159;
  CVPixelBufferGetIOSurface(v118);
  IOSurfaceSetBulkAttachments2();
  v13 = v236;
  if (v216)
  {
    if (dict)
    {
      memset(&rect, 0, sizeof(rect));
      if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
      {
        fig_log_get_emitter();
        x_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v207, v208, v209);
        goto LABEL_259;
      }

      rect = CGRectStandardize(rect);
      CGRectIntegral(rect);
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
  }

  CVPixelBufferGetIOSurface(v236);
  CVPixelBufferGetIOSurface(v118);
  v167 = allocatora;
  v168 = IOSurfaceAcceleratorTransformSurface();
  if (v168)
  {
    x_low = v168;
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    memset(&rect, 0, sizeof(rect));
    CVPixelBufferGetIOSurface(v236);
    IOSurfaceGetBulkAttachments();
    v169 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, x_low, "<<<< IOSurface Support >>>>", 3334, v6);
    goto LABEL_259;
  }

  v172 = v45[4];
  v173 = v45[5];
  v174 = CVPixelBufferGetPixelFormatType(v118);
  PlaneCount = CVPixelBufferGetPlaneCount(v118);
  if (v174 <= 1952854577)
  {
    v176 = v209;
    if (v174 <= 1936077359)
    {
      if (v174 <= 875704933)
      {
        if (v174 == 875704422)
        {
          goto LABEL_301;
        }

        v177 = 875704438;
      }

      else
      {
        if (v174 == 875704934 || v174 == 875704950)
        {
          goto LABEL_301;
        }

        v177 = 1932681587;
      }
    }

    else if (v174 > 1937125937)
    {
      if (v174 == 1937125938 || v174 == 1949458803)
      {
        goto LABEL_301;
      }

      v177 = 1952854576;
    }

    else
    {
      if (v174 == 1936077360 || v174 == 1936077362)
      {
        goto LABEL_301;
      }

      v177 = 1937125936;
    }

    goto LABEL_300;
  }

  v176 = v209;
  if (v174 > 2016567607)
  {
    if (v174 > 2016686641)
    {
      if (v174 == 2016686642 || v174 == 2019963442)
      {
        goto LABEL_301;
      }

      v177 = 2019963440;
    }

    else
    {
      if (v174 == 2016567608 || v174 == 2016567667)
      {
        goto LABEL_301;
      }

      v177 = 2016686640;
    }

    goto LABEL_300;
  }

  if (v174 > 1982882103)
  {
    if (v174 == 1982882104 || v174 == 1983013176)
    {
      goto LABEL_301;
    }

    v177 = 2016436536;
LABEL_300:
    if (v174 == v177)
    {
      goto LABEL_301;
    }

    goto LABEL_352;
  }

  if (v174 != 1952854578 && v174 != 1953903152)
  {
    v177 = 1953903154;
    goto LABEL_300;
  }

LABEL_301:
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (DescriptionWithPixelFormatType)
  {
    v179 = DescriptionWithPixelFormatType;
    LODWORD(rect.origin.x) = 1;
    LODWORD(v254) = 1;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    if (IntIfPresent | FigCFDictionaryGetIntIfPresent() || (v181 = CFDictionaryGetValue(v179, v176)) == 0 || (v182 = v181, v183 = CFGetTypeID(v181), v183 != CFArrayGetTypeID()) || CFArrayGetCount(v182) < 1)
    {
      v188 = LODWORD(rect.origin.x);
      v189 = v254;
      v167 = allocatora;
      goto LABEL_319;
    }

    v184 = 0;
    v185 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v182, v184);
      if (ValueAtIndex)
      {
        v187 = CFGetTypeID(ValueAtIndex);
        if (v187 == CFDictionaryGetTypeID())
        {
          LODWORD(texturea) = 0;
          *v303 = 0;
          FigCFDictionaryGetIntIfPresent();
          FigCFDictionaryGetIntIfPresent();
          if (texturea > SLODWORD(rect.origin.x))
          {
            LODWORD(rect.origin.x) = texturea;
          }

          if (v303[1] > v254)
          {
            LODWORD(v254) = v303[1];
          }

          v303[0] = 0;
          FigCFDictionaryGetInt32IfPresent();
          if (v303[0] > v185)
          {
            v185 = v303[0];
          }
        }
      }

      ++v184;
    }

    while (CFArrayGetCount(v182) > v184);
    v167 = allocatora;
    if (!v185)
    {
      v188 = LODWORD(rect.origin.x);
      v189 = v254;
LABEL_319:
      CFDictionaryGetValue(v179, v176);
      if (PlaneCount)
      {
        v190 = 0;
        v191 = 0;
        v192 = 0;
        do
        {
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, v190);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v190);
          if (v188 == 2 && ((WidthOfPlane > 1) & WidthOfPlane & (v172 == WidthOfPlane)) != 0)
          {
            v191 = 1;
          }

          if (v189 == 2 && ((HeightOfPlane > 1) & HeightOfPlane & (v173 == HeightOfPlane)) != 0)
          {
            v192 = 1;
          }

          ++v190;
        }

        while (PlaneCount != v190);
        v167 = allocatora;
        if (v191 | v192)
        {
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          for (i = 0; i != PlaneCount; ++i)
          {
            v196 = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
            v197 = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
            if (!BaseAddressOfPlane)
            {
              break;
            }

            v200 = BaseAddressOfPlane;
            if (v191 && v196 >= 2)
            {
              LODWORD(rect.origin.x) = 0;
              FigCFArrayGetValueAtIndex();
              FigCFDictionaryGetIntIfPresent();
              if (LODWORD(rect.origin.x) == 32)
              {
                if (v197)
                {
                  v205 = &v200[4 * v196 - 4];
                  v206 = v197;
                  do
                  {
                    *v205 = *(v205 - 1);
                    v205 += BytesPerRowOfPlane;
                    --v206;
                  }

                  while (v206);
                }
              }

              else if (LODWORD(rect.origin.x) == 16)
              {
                if (v197)
                {
                  v203 = &v200[2 * v196 - 2];
                  v204 = v197;
                  do
                  {
                    *v203 = *(v203 - 1);
                    v203 += BytesPerRowOfPlane;
                    --v204;
                  }

                  while (v204);
                }
              }

              else if (LODWORD(rect.origin.x) == 8 && v197)
              {
                v201 = &v200[v196 - 1];
                v202 = v197;
                do
                {
                  *v201 = *(v201 - 1);
                  v201 += BytesPerRowOfPlane;
                  --v202;
                }

                while (v202);
              }
            }

            if (v192 && v197 >= 2)
            {
              memcpy(&v200[(v197 - 1) * BytesPerRowOfPlane], &v200[(v197 - 2) * BytesPerRowOfPlane], BytesPerRowOfPlane);
            }
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          v167 = allocatora;
        }
      }
    }
  }

LABEL_352:
  allocatora = v167;
  x_low = v216;
  if (!v216)
  {
    goto LABEL_252;
  }

  bzero(&rect, 0x620uLL);
  CFDataSetLength(v216, 0);
  v118 = pixelBuffer;
  v153 = v213;
  if (!IOSurfaceAcceleratorGetHistogram())
  {
    CFDataAppendBytes(v216, bytes, 4 * LODWORD(rect.origin.x));
    CFDataAppendBytes(v216, v252, 4 * LODWORD(rect.origin.x));
    CFDataAppendBytes(v216, v253, 4 * LODWORD(rect.origin.x));
  }

  x_low = 0;
LABEL_260:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v153)
  {
    CVPixelBufferGetIOSurface(v118);
    IOSurfaceSetBulkAttachments2();
  }

  v170 = allocatora;
  if (v13)
  {
LABEL_265:
    CVPixelBufferRelease(v13);
  }

LABEL_266:
  if (v170)
  {
    CFRelease(v170);
  }

  return x_low;
}

uint64_t vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(OSType a1, size_t count, void *a3)
{
  if (*a3)
  {
    return 0;
  }

  v7 = malloc_type_calloc(count, 0x70uLL, 0x100004081F0E799uLL);
  v8 = v7;
  if (count)
  {
    v9 = 0;
    v10 = v7 + 110;
    while (1)
    {
      result = VTBlackFillGetPixelFormatPixelBlockInfo(a1, v9, v10 - 110, v10 - 102, v10 - 94, v10 - 86, v10 - 78, v10 - 5, v10 - 70, v10 - 6, v10 - 4, v10);
      if (result)
      {
        break;
      }

      ++v9;
      v10 += 112;
      if (count == v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    *a3 = v8;
  }

  return result;
}

void figIOSurfaceAcceleratedPixelTransfer_Close(_DWORD *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[42];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = (a1 + 2);
      do
      {
        if (*v5)
        {
          CVPixelBufferRelease(*v5);
          *v5 = 0;
          v3 = a1[42];
        }

        ++v4;
        v5 += 5;
      }

      while (v4 < v3);
    }

    free(a1);
  }
}

OSStatus VTSessionSetProperty(VTSessionRef session, CFStringRef propertyKey, CFTypeRef propertyValue)
{
  if (session)
  {
    v7 = CFGetTypeID(session);
    CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v7);
    if (propertyKey)
    {
      if (CallbacksWithTypeID)
      {
        v9 = CallbacksWithTypeID[2];

        return v9(session, propertyKey, propertyValue);
      }

      v11 = v3;
      v12 = 175;
    }

    else
    {
      v11 = v3;
      v12 = 171;
    }
  }

  else
  {
    v11 = v3;
    v12 = 167;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", v12, v11);
}

uint64_t VTPixelTransferSessionSetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = _VTPixelTransferSessionSetProperty(a1, a2, a3);
    FigAtomicDecrement32();
    return v8;
  }

  else
  {

    return _VTPixelTransferSessionSetProperty(0, a2, a3);
  }
}

unint64_t *vt_Copy_yuvs_2vuy_arm(unint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    do
    {
      v4 = a3 >> 3;
      if (a3 >> 3)
      {
        do
        {
          v6 = *result;
          v7 = result[1];
          result += 2;
          *a2 = __rev16(v6);
          a2[1] = __rev16(v7);
          a2 += 2;
          --v4;
        }

        while (v4);
        v5 = a3 & 7;
        if ((a3 & 7) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v5 = a3;
      }

      do
      {
        v8 = *result;
        result = (result + 4);
        *a2 = __rev16(v8);
        a2 = (a2 + 4);
        --v5;
      }

      while (v5);
LABEL_8:
      --a4;
    }

    while (a4);
  }

  return result;
}

const char *vt_Copy_yuvs_420v_arm(const char *result, int8x16_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a2[1];
  v7 = *a2;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v8)
  {
    v9 = a4;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      v11 = a6[1];
      v12 = a5 - 2 * v8;
      v13 = *a6 - v8;
      v14 = v11 - v8;
LABEL_4:
      v15 = v8 >> 4;
      if (v8 >> 4)
      {
        do
        {
          v32 = vld2q_s8(result);
          result += 32;
          *v7++ = v32.val[0];
          *v6++ = v32.val[1];
          --v15;
        }

        while (v15);
        v16 = v8 & 0xF;
        if ((v8 & 0xF) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v8;
      }

      do
      {
        v18 = *result;
        v17 = result + 1;
        v7->i8[0] = v18;
        v19 = &v7->i8[1];
        v20 = *v17++;
        v6->i8[0] = v20;
        v21 = &v6->i8[1];
        v22 = *v17++;
        *v19 = v22;
        v7 = (v19 + 1);
        v23 = *v17;
        result = v17 + 1;
        *v21 = v23;
        v6 = (v21 + 1);
        v16 -= 2;
      }

      while (v16);
LABEL_9:
      result += v12;
      v7 = (v7 + v13);
      v6 = (v6 + v14);
      do
      {
        v24 = v8 >> 4;
        if (v8 >> 4)
        {
          do
          {
            v26 = vld2q_s8(result);
            result += 32;
            *v7++ = v26;
            --v24;
          }

          while (v24);
          v25 = v8 & 7;
          if ((v8 & 7) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v25 = v8;
        }

        do
        {
          v28 = *result;
          v27 = result + 2;
          v7->i8[0] = v28;
          v29 = &v7->i8[1];
          v30 = *v27;
          result = v27 + 2;
          *v29 = v30;
          v7 = (v29 + 1);
          v25 -= 2;
        }

        while (v25);
LABEL_15:
        result += v12;
        v7 = (v7 + v13);
        v10 -= 2;
        if (v10)
        {
          goto LABEL_4;
        }

        v31 = (v9 & 1) == 0;
        v9 = 0;
        v10 = 2;
      }

      while (!v31);
    }
  }

  return result;
}

const char *vt_Copy_yuvs_420v_avg_arm(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (!v8 || a4 < 2)
  {
    return result;
  }

  v9 = a6[1];
  v10 = *a6;
  v11 = &result[a5];
  v12 = (v7 + v10);
  v13 = a5 - 2 * v8;
  v14 = v10 - v8;
  v15 = v9 - v8;
  do
  {
    v16 = v8 >> 4;
    if (!(v8 >> 4))
    {
      v17 = v8;
      do
      {
LABEL_8:
        v19 = *result;
        v18 = result + 1;
        v7->i8[0] = v19;
        v20 = &v7->i8[1];
        v22 = *v11;
        v21 = (v11 + 1);
        v12->i8[0] = v22;
        v23 = &v12->i8[1];
        v25 = *v18++;
        v24 = v25;
        v26 = *v21++;
        v6->i8[0] = (v24 + v26) >> 1;
        v27 = &v6->i8[1];
        LOBYTE(v26) = *v18++;
        *v20 = v26;
        v7 = (v20 + 1);
        LOBYTE(v26) = *v21++;
        *v23 = v26;
        v12 = (v23 + 1);
        v29 = *v18;
        result = v18 + 1;
        v28 = v29;
        v30 = *v21;
        v11 = (v21 + 1);
        *v27 = (v28 + v30) >> 1;
        v6 = (v27 + 1);
        v17 -= 2;
      }

      while (v17);
      goto LABEL_9;
    }

    do
    {
      v42 = vld2q_s8(result);
      result += 32;
      v44 = vld2q_s8(v11);
      v11 += 32;
      *v7++ = v42.val[0];
      *v12++ = v44.val[0];
      *v6++ = vhaddq_u8(v42.val[1], v44.val[1]);
      --v16;
    }

    while (v16);
    v17 = v8 & 0xF;
    if ((v8 & 0xF) != 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    v31 = v11 - result;
    result = &v11[v13];
    v11 += v13 + v31;
    v32 = v12 - v7;
    v7 = (v12 + v14);
    v12 = (v12 + v14 + v32);
    v6 = (v6 + v15);
    a4 -= 2;
    if (!a4)
    {
      return result;
    }
  }

  while (a4 != 1);
  v33 = v8 >> 4;
  if (!(v8 >> 4))
  {
    v34 = v8;
    goto LABEL_15;
  }

  do
  {
    v43 = vld2q_s8(result);
    result += 32;
    *v7++ = v43.val[0];
    *v6++ = v43.val[1];
    --v33;
  }

  while (v33);
  v34 = v8 & 0xF;
  if ((v8 & 0xF) != 0)
  {
    do
    {
LABEL_15:
      v36 = *result;
      v35 = result + 1;
      v7->i8[0] = v36;
      v37 = &v7->i8[1];
      v38 = *v35++;
      v6->i8[0] = v38;
      v39 = &v6->i8[1];
      v40 = *v35++;
      *v37 = v40;
      v7 = (v37 + 1);
      v41 = *v35;
      result = v35 + 1;
      *v39 = v41;
      v6 = (v39 + 1);
      v34 -= 2;
    }

    while (v34);
  }

  result += v13;
  return result;
}

int8x16_t *vt_Copy_420v_yuvs_arm(int8x16_t **a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1[1];
  result = *a1;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v8)
  {
    v9 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v9)
    {
      v10 = a5[1];
      v11 = *a5 - v8;
      v12 = a6 - 2 * v8;
      while (1)
      {
        v13 = v8 >> 4;
        if (!(v8 >> 4))
        {
          break;
        }

        do
        {
          v35.val[0] = *result++;
          v35.val[1] = *v6++;
          vst2q_s8(a2, v35);
          a2 += 32;
          --v13;
        }

        while (v13);
        v14 = v8 & 0xF;
        if ((v8 & 0xF) != 0)
        {
          goto LABEL_8;
        }

LABEL_9:
        v22 = (result + v11);
        v23 = (v6 - v8);
        v24 = &a2[v12];
        v25 = v9 - 1;
        v26 = v8 >> 4;
        if (v8 >> 4)
        {
          do
          {
            v36.val[0] = *v22++;
            v36.val[1] = *v23++;
            vst2q_s8(v24, v36);
            v24 += 32;
            --v26;
          }

          while (v26);
          v27 = v8 & 0xF;
          if ((v8 & 0xF) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v27 = v8;
        }

        do
        {
          v29 = v22->i8[0];
          v28 = &v22->i8[1];
          *v24 = v29;
          v30 = v24 + 1;
          v32 = v23->i8[0];
          v31 = &v23->i8[1];
          *v30++ = v32;
          v33 = *v28;
          v22 = (v28 + 1);
          *v30++ = v33;
          v34 = *v31;
          v23 = (v31 + 1);
          *v30 = v34;
          v24 = v30 + 1;
          v27 -= 2;
        }

        while (v27);
LABEL_14:
        result = (v22 + v11);
        v6 = (v23 + v10 - v8);
        a2 = &v24[v12];
        v9 = v25 - 1;
        if (!v9)
        {
          return result;
        }
      }

      v14 = v8;
      do
      {
LABEL_8:
        v16 = result->i8[0];
        v15 = &result->i8[1];
        *a2 = v16;
        v17 = a2 + 1;
        v19 = v6->i8[0];
        v18 = &v6->i8[1];
        *v17++ = v19;
        v20 = *v15;
        result = (v15 + 1);
        *v17++ = v20;
        v21 = *v18;
        v6 = (v18 + 1);
        *v17 = v21;
        a2 = v17 + 1;
        v14 -= 2;
      }

      while (v14);
      goto LABEL_9;
    }
  }

  return result;
}

__n128 *vt_Copy_420v_yuvs_interp_arm(__n128 **a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, __n128 a7)
{
  v7 = a1[1];
  result = *a1;
  v9 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v9)
  {
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      v11 = a5[1];
      v12 = *a5;
      v13 = (result + v12);
      v14 = (v7 + v11);
      v15 = &a2[a6];
      v16 = v11 - v9;
      do
      {
        v17 = v9 >> 4;
        if (v9 >> 4)
        {
          do
          {
            a7 = *result++;
            v19 = *v7++;
            v20 = *v14++;
            v34.val[1] = vrhaddq_s8(v19, v20);
            vst2q_s8(a2, *a7.n128_u64);
            a2 += 32;
            v34.val[0] = *v13++;
            vst2q_s8(v15, v34);
            v15 += 32;
            --v17;
          }

          while (v17);
          v18 = v9 & 0xF;
          if ((v9 & 0xF) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v18 = v9;
        }

        do
        {
          v22 = result->n128_u8[0];
          v21 = &result->n128_i8[1];
          *a2 = v22;
          v23 = a2 + 1;
          v25 = v13->i8[0];
          v24 = &v13->i8[1];
          *v15 = v25;
          v26 = v15 + 1;
          a7.n128_u8[0] = v7->n128_u8[0];
          v27 = &v7->n128_u8[1];
          v28 = 0x101010101010101;
          v28.i8[0] = v14->i8[0];
          v29 = &v14->i8[1];
          v30 = vhadd_s8(vqadd_s8(a7.n128_u64[0], 0x101010101010101), v28);
          *v23++ = v30.i8[0];
          *v26++ = v30.i8[0];
          v31 = *v21;
          result = (v21 + 1);
          *v23++ = v31;
          v32 = *v24;
          v13 = (v24 + 1);
          *v26++ = v32;
          v30.i8[0] = *v27;
          v7 = (v27 + 1);
          v33 = 0x101010101010101;
          v33.i8[0] = *v29;
          v14 = (v29 + 1);
          a7.n128_u64[0] = vhadd_s8(vqadd_s8(v30, 0x101010101010101), v33);
          *v23 = a7.n128_u8[0];
          a2 = v23 + 1;
          *v26 = a7.n128_u8[0];
          v15 = v26 + 1;
          v18 -= 2;
        }

        while (v18);
LABEL_9:
        result = (result + 2 * v12 - v9);
        v13 = (result + v12);
        v7 = (v7 + v16);
        v14 = (v14 + v16);
        a2 = &a2[2 * a6 + -2 * v9];
        v15 = &a2[a6];
        v10 -= 2;
      }

      while (v10);
    }
  }

  return result;
}

uint8x16_t *vt_Copy_420v_yuvf_arm(uint8x16_t **a1, int8x16_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8, double a9, uint32x4_t a10, uint32x4_t a11)
{
  v11 = a1[1];
  result = *a1;
  v13 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v13)
  {
    v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v14)
    {
      v15 = a5[1];
      v16 = *a5 - v13;
      v17 = a6 - 2 * v13;
      v18 = 0;
      v19 = vdupq_n_s16(0x950Bu);
      v20 = vdupq_n_s16(0x91B7u);
      v21 = vdupq_n_s8(0x10u);
      do
      {
        v22 = v13 >> 4;
        if (v13 >> 4)
        {
          do
          {
            v24 = *result++;
            v25 = *v11++;
            v26 = vqsubq_u8(v24, v21);
            v27 = vqsubq_u8(v25, v21);
            v28 = vmovl_u8(*v26.i8);
            v29 = vmovl_high_u8(v26);
            v30 = vmovl_u8(*v27.i8);
            v31 = vmovl_high_u8(v27);
            a10 = vqmovn_high_u16(vqmovn_u16(vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v28.i8, *v19.i8), 0xFuLL), vmull_high_u16(v28, v19), 0xFuLL)), vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v29.i8, *v19.i8), 0xFuLL), vmull_high_u16(v29, v19), 0xFuLL));
            a11 = vqmovn_high_u16(vqmovn_u16(vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v30.i8, *v20.i8), 0xFuLL), vmull_high_u16(v30, v20), 0xFuLL)), vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v31.i8, *v20.i8), 0xFuLL), vmull_high_u16(v31, v20), 0xFuLL));
            *a2 = vzip1q_s8(a10, a11);
            a2[1] = vzip2q_s8(a10, a11);
            a2 += 2;
            --v22;
          }

          while (v22);
          v23 = v13 & 0xF;
          if ((v13 & 0xF) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v23 = v13;
        }

        do
        {
          a10.i16[0] = result->i16[0];
          result = (result + 2);
          a11.i16[0] = v11->i16[0];
          v11 = (v11 + 2);
          a10 = vmull_u16(*&vmovl_u8(vqsub_u8(*a10.i8, *v21.i8)), *v19.i8);
          a11 = vmull_u16(*&vmovl_u8(vqsub_u8(*a11.i8, *v21.i8)), *v20.i8);
          *a10.i8 = vqrshrn_n_u32(a10, 0xFuLL);
          *a11.i8 = vqrshrn_n_u32(a11, 0xFuLL);
          *a10.i8 = vqmovn_u16(a10);
          *a11.i8 = vqmovn_u16(a11);
          a2->i8[0] = a10.i8[0];
          a2->i8[1] = a11.i8[0];
          v32 = &a2->i8[2];
          *v32 = a10.i8[1];
          v32[1] = a11.i8[1];
          a2 = (v32 + 2);
          v23 -= 2;
        }

        while (v23);
LABEL_9:
        result = (result + v16);
        v18 ^= v15;
        v11 = (v11 + v15 - v13 - v18);
        a2 = (a2 + v17);
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

_DWORD *vt_Copy_420v_y420_Chroma_arm(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 8);
  v7 = *(a6 + 16);
  v8 = *(a6 + 8);
  v9 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v9)
  {
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      result = *(result + 1);
      v11 = *(a2 + 16);
      v12 = *(a2 + 8);
      v13 = v6 - v9;
      v14 = v8 - (v9 >> 1);
      v15 = v7 - (v9 >> 1);
      for (i = v10 >> 1; i; --i)
      {
        v17 = v9 >> 4;
        if (v9 >> 4)
        {
          do
          {
            v25 = vld2_s8(result);
            result += 4;
            *v12++ = v25.val[0];
            *v11++ = v25.val[1];
            --v17;
          }

          while (v17);
          v18 = v9 & 0xF;
          if ((v9 & 0xF) == 0)
          {
            goto LABEL_13;
          }

          if ((v9 & 0xFu) >= 8uLL)
          {
            v19 = 1;
            do
            {
              v22 = *result;
              v20 = result + 1;
              v21 = v22;
              v23 = *v20;
              result = v20 + 1;
              v12->i32[0] = v21 | (BYTE2(v21) << 8) | (v23 << 16) | (BYTE2(v23) << 24);
              v12 = (v12 + 4);
              v11->i32[0] = BYTE1(v21) | (HIBYTE(v21) << 8) | (BYTE1(v23) << 16) | (HIBYTE(v23) << 24);
              v11 = (v11 + 4);
              --v19;
            }

            while (v19);
            v18 = v9 & 7;
            if ((v9 & 7) == 0)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v18 = v9;
        }

        do
        {
          v24 = *result;
          result = (result + 2);
          v12->i8[0] = v24;
          v12 = (v12 + 1);
          v11->i8[0] = HIBYTE(v24);
          v11 = (v11 + 1);
          v18 -= 2;
        }

        while (v18);
LABEL_13:
        result = (result + v13);
        v12 = (v12 + v14);
        v11 = (v11 + v15);
      }
    }
  }

  return result;
}

void *vt_Copy_420f_420v_arm(void *result, int8x16_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int32x2_t a7)
{
  if (a4)
  {
    v7 = a4;
    v8 = *result;
    v9 = *a5 - a3;
    v10 = *a2;
    v11 = *a6 - a3;
    a7.i32[0] = 56284;
    v12 = vdupq_n_s16(0x1000u);
    do
    {
      for (i = a3 >> 5; i; --i)
      {
        v14 = *v8;
        v15 = *(v8 + 1);
        v8 += 2;
        v16 = vmovl_u8(*v14.i8);
        v17 = vmovl_high_u8(v14);
        v18 = vmovl_u8(*v15.i8);
        v19 = vmovl_high_u8(v15);
        *v10 = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v16.i8, a7, 0), 8uLL), vmull_high_lane_u16(v16, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v17.i8, a7, 0), 8uLL), vmull_high_lane_u16(v17, a7, 0), 8uLL), v12);
        v10[1] = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v18.i8, a7, 0), 8uLL), vmull_high_lane_u16(v18, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v19.i8, a7, 0), 8uLL), vmull_high_lane_u16(v19, a7, 0), 8uLL), v12);
        v10 += 2;
      }

      v20 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        do
        {
          v21 = *v8;
          v8 = (v8 + 1);
          v10->i8[0] = vaddhn_s16(*&vshrn_n_s64(*&vmul_s32(v21, a7), 8uLL), v12).u8[0];
          v10 = (v10 + 1);
          --v20;
        }

        while (v20);
      }

      v8 = (v8 + v9);
      v10 = (v10 + v11);
      --v7;
    }

    while (v7);
    v22 = a3 >> 1;
    v23 = result[1];
    v24 = a5[1] - 2 * v22;
    v25 = a2[1];
    v26 = a6[1] - 2 * v22;
    a7.i32[0] = 57569;
    for (j = a4 >> 1; j; --j)
    {
      for (k = v22 >> 4; k; --k)
      {
        v29 = *v23;
        v30 = v23[1];
        v23 += 2;
        v31 = vmovl_u8(*v29.i8);
        v32 = vmovl_high_u8(v29);
        v33 = vmovl_u8(*v30.i8);
        v34 = vmovl_high_u8(v30);
        *v25 = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v31.i8, a7, 0), 8uLL), vmull_high_lane_u16(v31, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v32.i8, a7, 0), 8uLL), vmull_high_lane_u16(v32, a7, 0), 8uLL), v12);
        v25[1] = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v33.i8, a7, 0), 8uLL), vmull_high_lane_u16(v33, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v34.i8, a7, 0), 8uLL), vmull_high_lane_u16(v34, a7, 0), 8uLL), v12);
        v25 += 2;
      }

      v35 = v22 & 0xF;
      if ((v22 & 0xF) != 0)
      {
        do
        {
          v36 = v23->u8[0];
          v37 = v23->u8[1];
          v23 = (v23 + 2);
          v25->i8[0] = vaddq_s32(vshrq_n_u32(vmul_s32(v36, a7), 8uLL), *&v12).i8[1];
          v25->i8[1] = vaddq_s32(vshrq_n_u32(vmul_s32(v37, a7), 8uLL), *&v12).i8[1];
          v25 = (v25 + 2);
          --v35;
        }

        while (v35);
      }

      v23 = (v23 + v24);
      v25 = (v25 + v26);
    }
  }

  return result;
}

uint64_t vt_Copy_BGRA_yuvs_arm(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 **a4, void *a5, char **a6, uint64_t a7, int32x2_t a8, double a9, int16x8_t a10, double a11, int16x4_t a12)
{
  if (a2)
  {
    v12 = *a3 - 4 * a1;
    v13 = *a4;
    v14 = *a5 - 2 * a1;
    v15 = *a6;
    v16 = (a7 + 4);
    a8.i32[1] = *v16;
    *v17.i8 = vshl_n_s32(a8, 1uLL);
    v17.i32[0] = *--v16;
    v16 += 2;
    v17.i16[4] = *v16;
    v16 = (v16 + 2);
    v17.i16[5] = *v16;
    v16 = (v16 + 2);
    v17.i16[6] = *v16;
    v16 = (v16 + 2);
    v17.i16[7] = *v16;
    v16 = (v16 + 2);
    v18.i16[0] = *v16;
    v16 = (v16 + 2);
    v18.i16[1] = *v16;
    v18.i32[1] = *(v16 + 2);
    do
    {
      for (i = a1 >> 4; i; v15 += 32)
      {
        v31 = vld4_s8(v13);
        v20 = v13 + 32;
        v32 = vld4_s8(v20);
        v13 = (v20 + 32);
        a10 = vmovl_u8(v31.val[0]);
        *v31.val[1].i8 = vmovl_u8(v31.val[1]);
        *v31.val[2].i8 = vmovl_u8(v31.val[2]);
        *v32.val[0].i8 = vmovl_u8(v32.val[0]);
        *v32.val[1].i8 = vmovl_u8(v32.val[1]);
        *v32.val[2].i8 = vmovl_u8(v32.val[2]);
        v21 = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *a10.i8, v17, 6), v31.val[1], v17, 5), v31.val[2], v17, 4), 0xFuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vdupq_lane_s32(*v17.i8, 0), a10, v17, 6), *v31.val[1].i8, v17, 5), *v31.val[2].i8, v17, 4), 0xFuLL));
        v22 = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), v32.val[0], v17, 6), v32.val[1], v17, 5), v32.val[2], v17, 4), 0xFuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *v32.val[0].i8, v17, 6), *v32.val[1].i8, v17, 5), *v32.val[2].i8, v17, 4), 0xFuLL));
        v33.val[0] = vuzp1_s8(v21, v22);
        v33.val[2] = vuzp2_s8(v21, v22);
        a10.i64[0] = vpaddq_s16(a10, a10).u64[0];
        v32.val[0] = vpaddq_s16(*v32.val[0].i8, *v32.val[0].i8).u64[0];
        v31.val[1] = vpaddq_s16(*v31.val[1].i8, *v31.val[1].i8).u64[0];
        v32.val[1] = vpaddq_s16(*v32.val[1].i8, *v32.val[1].i8).u64[0];
        a12 = vpaddq_s16(*v31.val[2].i8, *v31.val[2].i8).u64[0];
        v32.val[2] = vpaddq_s16(*v32.val[2].i8, *v32.val[2].i8).u64[0];
        v33.val[1] = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 1), v31.val[1], v18, 0), a12, v17, 7), 0x10uLL), vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), v32.val[0], v18, 1), v32.val[1], v18, 0), v32.val[2], v17, 7), 0x10uLL));
        v33.val[3] = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 3), v31.val[1], v18, 2), a12, v18, 1), 0x10uLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), v32.val[0], v18, 3), v32.val[1], v18, 2), v32.val[2], v18, 1), 0x10uLL));
        --i;
        vst4_s8(v15, v33);
      }

      for (j = (a1 >> 1) & 7; j; v15 += 4)
      {
        a10.i8[0] = *v13;
        LOBYTE(v25) = v13[1];
        a12.i8[0] = v13[2];
        LOBYTE(v26) = v13[3];
        v24 = v13 + 4;
        a10.i8[1] = *v24;
        HIBYTE(v25) = v24[1];
        a12.i8[1] = v24[2];
        HIBYTE(v26) = v24[3];
        v13 = v24 + 4;
        a10.i16[2] = v25;
        a12.i16[2] = v26;
        v27 = vmovl_u8(*a10.i8);
        v28 = vmovl_u8(a12);
        v29 = vmlal_high_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *v27.i8, v17, 6), v27, v17, 5);
        a10 = vpaddlq_s16(v27);
        v29.i64[0] = vmlal_laneq_s16(v29, *v28.i8, v17, 4).u64[0];
        a12 = vpaddlq_s16(v28).u64[0];
        *v29.i8 = vshr_n_s32(*v29.i8, 0xFuLL);
        --j;
        *v15 = v29.i8[0];
        v15[1] = vshrn_n_s32(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 1), a10, v18, 0), a12, v17, 7), 0x10uLL).u8[0];
        v15[2] = v29.i8[4];
        v15[3] = vshrn_n_s32(vmlal_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 3), a10, v18, 2), a12, v18, 1), 0x10uLL).u8[0];
      }

      v13 += v12;
      v15 += v14;
      --a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t vtPixelTransferSession_InvokeBlitter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, CVPixelBufferRef pixelBuffer, __CVBuffer *a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  PlaneCount = 1;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v19 = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(PixelFormatType, PlaneCount, a4);
  if (!v19)
  {
    v19 = vtPixelTransferSession_PrepareBlitterParameters(pixelBuffer, PlaneCount, a8, a4, v30, v29, v31, v28);
    if (!v19)
    {
      v20 = CVPixelBufferIsPlanar(a7) ? CVPixelBufferGetPlaneCount(a7) : 1;
      v21 = CVPixelBufferGetPixelFormatType(a7);
      v19 = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(v21, v20, a5);
      if (!v19)
      {
        v19 = vtPixelTransferSession_PrepareBlitterParameters(a7, v20, a9, a5, v26, v25, v27, v24);
        if (!v19)
        {
          if (!(a1 | a2))
          {
            v22 = 4294954391;
            goto LABEL_11;
          }

          if (a2)
          {
            v19 = (a2)(a3, a8, v30, v31, v28, a9, v26, v27, v24);
          }

          else
          {
            v19 = (a1)(*(a8 + 16), *(a8 + 24), v31, v29, v27, v25);
          }
        }
      }
    }
  }

  v22 = v19;
LABEL_11:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(a7, 0);
  return v22;
}

uint64_t vtPixelTransferSession_PrepareBlitterParameters(__CVBuffer *a1, size_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, size_t *a7, size_t *a8)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(PixelFormatType, a2, a4);
  if (result)
  {
    return result;
  }

  v18 = *a4;
  if (!CVPixelBufferIsPlanar(a1))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    *a5 = BaseAddress;
    *a6 = BaseAddress;
    *a7 = CVPixelBufferGetBytesPerRow(a1);
    DataSize = CVPixelBufferGetDataSize(a1);
    *a8 = DataSize;
    if (*a5)
    {
      v28 = DataSize;
      result = 4294954394;
      if (!*a7 || !v28)
      {
        return result;
      }

      goto LABEL_20;
    }

    return 4294954394;
  }

  v34 = a3;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v20 = (CVPixelBufferGetBaseAddress(a1) - BaseAddressOfPlane);
  v21 = &v20[CVPixelBufferGetDataSize(a1)];
  v22 = a2 - 1;
  if (a2 == 1)
  {
    *a8 = v21;
    a3 = v34;
    goto LABEL_13;
  }

  v33 = v18;
  v23 = 0;
  do
  {
    v24 = CVPixelBufferGetBaseAddressOfPlane(a1, v23 + 1);
    v25 = CVPixelBufferGetBaseAddressOfPlane(a1, v23);
    a8[v23] = v24 - v25;
    v21 -= v24 - v25;
    ++v23;
  }

  while (v22 != v23);
  a8[v22] = v21;
  a3 = v34;
  v18 = v33;
  if (a2)
  {
LABEL_13:
    v29 = 0;
    do
    {
      v30 = CVPixelBufferGetBaseAddressOfPlane(a1, v29);
      a5[v29] = v30;
      a6[v29] = v30;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v29);
      a7[v29] = BytesPerRowOfPlane;
      v32 = !a5[v29] || BytesPerRowOfPlane == 0;
      if (v32 || !a8[v29])
      {
        return 4294954394;
      }
    }

    while (a2 != ++v29);
  }

LABEL_20:
  if (*(a3 + 40) || *(a3 + 32))
  {
    vtPixelTransferSession_PrepareOffsets(a2, a3, v18, a7, a5, a6);
  }

  return 0;
}

uint64_t RegisterVTCompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTCompressionSessionID = v0;
  sVTCompressionSessionPropertyCallbacks = 0;
  *algn_1ED6D3FA8 = VTCompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D3FB0 = VTCompressionSessionSetProperty;
  qword_1ED6D3FB8 = VTCompressionSessionCopyProperty;
  qword_1ED6D3FC0 = VTCompressionSessionSetProperties;
  qword_1ED6D3FC8 = VTCompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTCompressionSessionPropertyCallbacks, v0);
}

uint64_t VTEncoderSessionSetPixelBufferAttributes(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    if (a1[5])
    {
      v4 = a1[5];

      return VTParavirtualizationHostEncoderSessionSetPixelBufferAttributes(v4, a2);
    }

    else
    {
      v7 = *a1;
      if (*a1)
      {
        if (*(v7 + 16) == 2)
        {
          VTEncoderSessionSetPixelBufferAttributes_cold_1(&v9);
          return v9;
        }

        else
        {
          FigSimpleMutexLock();
          if (a2)
          {
            CFRetain(a2);
          }

          v8 = *(v7 + 512);
          if (v8)
          {
            CFRelease(v8);
          }

          *(v7 + 512) = a2;
          ++*(v7 + 520);
          FigSimpleMutexUnlock();
          return 0;
        }
      }

      else
      {
        VTEncoderSessionSetPixelBufferAttributes_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-CS >>>>", 8281, v2);
  }
}

OSStatus VTSessionSetProperties(VTSessionRef session, CFDictionaryRef propertyDictionary)
{
  if (session)
  {
    v5 = CFGetTypeID(session);
    CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v5);
    if (propertyDictionary)
    {
      v7 = CallbacksWithTypeID;
      if (CallbacksWithTypeID)
      {
        v8 = CFGetTypeID(propertyDictionary);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = v7[4];

          return v9(session, propertyDictionary);
        }

        v11 = v2;
        v12 = 229;
      }

      else
      {
        v11 = v2;
        v12 = 225;
      }
    }

    else
    {
      v11 = v2;
      v12 = 221;
    }
  }

  else
  {
    v11 = v2;
    v12 = 217;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", v12, v11);
}

uint64_t VTCompressionSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v28 = a1;
  v29 = 0;
  if (!a1)
  {
    VTCompressionSessionSetProperties_cold_2(&v29);
    return v29;
  }

  if (*(a1 + 16) == 2)
  {
    VTCompressionSessionSetProperties_cold_1(&v29);
    return v29;
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    if (theDict)
    {
      v31 = 0u;
      *cf = 0u;
      context = 0u;
      v7 = vtCompressionSessionCopyPropertiesHandledByVideoToolbox(&context);
      if (v7)
      {
        LODWORD(v8) = v7;
      }

      else
      {
        v9 = *(a1 + 472);
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v10 || ((v11 = v10(v9, &context + 8), v11 != -12782) ? (v12 = v11 == 0) : (v12 = 1), v12))
        {
          if (!*(a1 + 850) || (v13 = VTRateControlSessionCopySupportedPropertyDictionary(*(a1 + 856), cf), !v13))
          {
            CFDictionaryApplyFunction(theDict, vtCompressionSessionAddPropertyToPartition, &context);
            LODWORD(v8) = 0;
            v16 = *(&v31 + 1);
            v15 = v31;
            v17 = cf[1];
LABEL_21:
            if (context)
            {
              CFRelease(context);
            }

            if (*(&context + 1))
            {
              CFRelease(*(&context + 1));
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            LODWORD(v29) = v8;
            if (!v8)
            {
              if (v17)
              {
                CFDictionaryApplyFunction(v17, vtCompressionSessionSetOneProperty_0, &v28);
              }

              if (v15)
              {
                CFDictionaryApplyFunction(v15, vtCompressionSessionSetOneProperty_0, &v28);
              }

              if (v16)
              {
                v19 = *(a1 + 472);
                v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v20 && (LODWORD(v29) = v20(v19, v16), v29 != -12782))
                {
                  if (!*(a1 + 850) && *(a1 + 851))
                  {
                    CFDictionaryApplyFunction(v16, vtCompressionSessionValidateOneProperty, &v28);
                  }

                  if (CFDictionaryContainsKey(v16, @"ProfileLevel"))
                  {
                    Value = CFDictionaryGetValue(v16, @"ProfileLevel");
                    v25 = *(a1 + 600);
                    if (v25 != Value)
                    {
                      *(a1 + 600) = Value;
                      if (Value)
                      {
                        CFRetain(Value);
                      }

                      if (v25)
                      {
                        CFRelease(v25);
                      }
                    }
                  }

                  if (CFDictionaryContainsKey(v16, @"OutputBitDepth"))
                  {
                    v26 = CFDictionaryGetValue(v16, @"OutputBitDepth");
                    v27 = (a1 + 608);
                    if (v26)
                    {
                      CFNumberGetValue(v26, kCFNumberSInt32Type, v27);
                    }

                    else
                    {
                      *v27 = 0;
                    }
                  }

                  FigCFDictionaryGetFloatIfPresent();
                  v21 = vtCoreAnalyticsSaveUserConfiguredCompressionProperty;
                  v23 = v16;
                  v22 = a1;
                }

                else
                {
                  LODWORD(v29) = 0;
                  v21 = vtCompressionSessionSetOneProperty_0;
                  v22 = &v28;
                  v23 = v16;
                }

                CFDictionaryApplyFunction(v23, v21, v22);
              }
            }

            if (v15)
            {
              CFRelease(v15);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            return v29;
          }

          v8 = v13;
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< VT-CS >>>>", 4959, v2);
        }

        else
        {
          v8 = v11;
          v18 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v8, "<<<< VT-CS >>>>", 4950, v2);
        }
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_21;
    }

    return v29;
  }

  return VTCompressionSessionRemote_SetProperties(v5, theDict);
}

OSStatus VTCompressionSessionEncodeFrame(VTCompressionSessionRef session, CVImageBufferRef imageBuffer, CMTime *presentationTimeStamp, CMTime *duration, CFDictionaryRef frameProperties, void *sourceFrameRefcon, VTEncodeInfoFlags *infoFlagsOut)
{
  if (!session)
  {
    VTCompressionSessionEncodeFrame_cold_4(&v18);
    return v18;
  }

  if (!imageBuffer)
  {
    VTCompressionSessionEncodeFrame_cold_3(&v18);
    return v18;
  }

  if (*(session + 4))
  {
    VTCompressionSessionEncodeFrame_cold_1(&v18);
    return v18;
  }

  if (!*(session + 569))
  {
    FigPowerReduceUtilitySFI();
  }

  v14 = *(session + 3);
  if (v14)
  {
    v18 = *&presentationTimeStamp->value;
    epoch = presentationTimeStamp->epoch;
    v16 = *&duration->value;
    v17 = duration->epoch;
    return VTCompressionSessionRemote_EncodeFrame(v14, imageBuffer, 0, &v18, &v16, frameProperties, sourceFrameRefcon, infoFlagsOut);
  }

  if (!*(session + 10))
  {
    VTCompressionSessionEncodeFrame_cold_2(&v18);
    return v18;
  }

  v18 = *&presentationTimeStamp->value;
  epoch = presentationTimeStamp->epoch;
  v16 = *&duration->value;
  v17 = duration->epoch;
  return vtCompressionSessionEncodeFrameCommon(session, imageBuffer, 0, &v18, &v16, frameProperties, 0, sourceFrameRefcon, infoFlagsOut);
}

void vtCompressionSessionConfirmSpatialAndColorProperties(uint64_t a1)
{
  v78 = 0;
  v79 = 0;
  cf = 0;
  cf1 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  IsPropertyHandledByVideoEncoder = vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"PixelAspectRatio");
  v3 = MEMORY[0x1E695E480];
  if (!IsPropertyHandledByVideoEncoder)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 472);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5(v4, @"PixelAspectRatio", *v3, &v79))
  {
    goto LABEL_4;
  }

  v48 = v79;
  v49 = *(a1 + 136);
  if (v79 == v49)
  {
    goto LABEL_4;
  }

  if (!v79 || !v49)
  {
    goto LABEL_140;
  }

  if (CFEqual(v79, *(a1 + 136)))
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v49 = *(a1 + 136);
  v48 = v79;
LABEL_140:
  *(a1 + 136) = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v6 = 1;
LABEL_5:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"CleanAperture"))
  {
    v7 = *(a1 + 472);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      if (!v8(v7, @"CleanAperture", *v3, &v78))
      {
        v9 = v78;
        v10 = *(a1 + 144);
        if (v78 != v10)
        {
          if (v78 && v10)
          {
            if (CFEqual(v78, *(a1 + 144)))
            {
              goto LABEL_18;
            }

            v10 = *(a1 + 144);
            v9 = v78;
          }

          *(a1 + 144) = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_18:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FieldCount"))
  {
    v11 = *(a1 + 472);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      if (!v12(v11, @"FieldCount", *v3, &cf1))
      {
        v13 = cf1;
        v14 = *(a1 + 152);
        if (cf1 != v14)
        {
          if (cf1 && v14)
          {
            if (CFEqual(cf1, *(a1 + 152)))
            {
              goto LABEL_31;
            }

            v14 = *(a1 + 152);
            v13 = cf1;
          }

          *(a1 + 152) = v13;
          if (v13)
          {
            CFRetain(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_31:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FieldDetail"))
  {
    v15 = *(a1 + 472);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      if (!v16(v15, @"FieldDetail", *v3, &cf))
      {
        v17 = cf;
        v18 = *(a1 + 160);
        if (cf != v18)
        {
          if (cf && v18)
          {
            if (CFEqual(cf, *(a1 + 160)))
            {
              goto LABEL_44;
            }

            v18 = *(a1 + 160);
            v17 = cf;
          }

          *(a1 + 160) = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_44:
  if (!vtCompressionSessionIsIPT(a1))
  {
    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ColorPrimaries"))
    {
      v34 = *(a1 + 472);
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v35)
      {
        if (!v35(v34, @"ColorPrimaries", *v3, &v75))
        {
          v52 = v75;
          v53 = *(a1 + 176);
          if (v75 != v53)
          {
            v54 = 1;
            if (v75 && v53)
            {
              v54 = CFEqual(v75, v53) == 0;
              v52 = v75;
            }

            if (v54 && v52)
            {
              v55 = *(a1 + 176);
              *(a1 + 176) = v52;
              CFRetain(v52);
              if (v55)
              {
                CFRelease(v55);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"TransferFunction"))
    {
      v36 = *(a1 + 472);
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v37)
      {
        if (!v37(v36, @"TransferFunction", *v3, &v74))
        {
          v56 = v74;
          v57 = *(a1 + 184);
          if (v74 != v57)
          {
            v58 = 1;
            if (v74 && v57)
            {
              v58 = CFEqual(v74, v57) == 0;
              v56 = v74;
            }

            if (v58 && v56)
            {
              v59 = *(a1 + 184);
              *(a1 + 184) = v56;
              CFRetain(v56);
              if (v59)
              {
                CFRelease(v59);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"GammaLevel"))
    {
      v38 = *(a1 + 472);
      v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v39)
      {
        if (!v39(v38, @"GammaLevel", *v3, &v68))
        {
          v60 = v68;
          v61 = *(a1 + 192);
          if (v68 != v61)
          {
            v62 = 1;
            if (v68 && v61)
            {
              v62 = CFEqual(v68, v61) == 0;
              v60 = v68;
            }

            if (v62 && v60)
            {
              v63 = *(a1 + 192);
              *(a1 + 192) = v60;
              CFRetain(v60);
              if (v63)
              {
                CFRelease(v63);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"YCbCrMatrix"))
    {
      v40 = *(a1 + 472);
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        if (!v41(v40, @"YCbCrMatrix", *v3, &v73))
        {
          v64 = v73;
          v65 = *(a1 + 200);
          if (v73 != v65)
          {
            v66 = 1;
            if (v73 && v65)
            {
              v66 = CFEqual(v73, v65) == 0;
              v64 = v73;
            }

            if (v66 && v64)
            {
              v67 = *(a1 + 200);
              *(a1 + 200) = v64;
              CFRetain(v64);
              if (v67)
              {
                CFRelease(v67);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ICCProfile"))
    {
      v42 = *(a1 + 472);
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v43)
      {
        if (!v43(v42, @"ICCProfile", *v3, &v72))
        {
          v44 = v72;
          v45 = *(a1 + 208);
          if (v72 != v45)
          {
            v46 = 1;
            if (v72 && v45)
            {
              v46 = CFEqual(v72, v45) == 0;
              v44 = v72;
            }

            if (v46 && v44)
            {
              v47 = *(a1 + 208);
              *(a1 + 208) = v44;
              CFRetain(v44);
              if (v47)
              {
                CFRelease(v47);
              }

              v6 = 1;
            }
          }
        }
      }
    }
  }

  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"MasteringDisplayColorVolume"))
  {
    v19 = *(a1 + 472);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      if (!v20(v19, @"MasteringDisplayColorVolume", *v3, &v71))
      {
        v21 = v71;
        v22 = *(a1 + 216);
        if (v71 != v22)
        {
          if (v71 && v22)
          {
            if (CFEqual(v71, *(a1 + 216)))
            {
              goto LABEL_58;
            }

            v22 = *(a1 + 216);
            v21 = v71;
          }

          *(a1 + 216) = v21;
          if (v21)
          {
            CFRetain(v21);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_58:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ContentLightLevelInfo"))
  {
    v23 = *(a1 + 472);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      if (!v24(v23, @"ContentLightLevelInfo", *v3, &v70))
      {
        v25 = v70;
        v26 = *(a1 + 224);
        if (v70 != v26)
        {
          if (!v70 || !v26)
          {
            goto LABEL_66;
          }

          if (!CFEqual(v70, *(a1 + 224)))
          {
            v26 = *(a1 + 224);
            v25 = v70;
LABEL_66:
            *(a1 + 224) = v25;
            if (v25)
            {
              CFRetain(v25);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            v6 = 1;
          }
        }
      }
    }
  }

  if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"AmbientViewingEnvironment"))
  {
    goto LABEL_74;
  }

  v27 = *(a1 + 472);
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    goto LABEL_74;
  }

  if (v28(v27, @"AmbientViewingEnvironment", *v3, &v69))
  {
    goto LABEL_74;
  }

  v50 = v69;
  v51 = *(a1 + 704);
  if (v69 == v51)
  {
    goto LABEL_74;
  }

  if (!v69 || !v51)
  {
    goto LABEL_150;
  }

  if (CFEqual(v69, *(a1 + 704)))
  {
LABEL_74:
    if (!v6)
    {
      goto LABEL_86;
    }

    goto LABEL_75;
  }

  v51 = *(a1 + 704);
  v50 = v69;
LABEL_150:
  *(a1 + 704) = v50;
  if (v50)
  {
    CFRetain(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

LABEL_75:
  dispatch_group_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
  v29 = *(a1 + 416);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 416) = 0;
  }

  v30 = *(a1 + 408);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 408) = 0;
  }

  v31 = *(a1 + 368);
  if (v31)
  {
    dispatch_release(v31);
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = 0;
  v32 = *(a1 + 544);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 544) = 0;
  }

  v33 = *(a1 + 328);
  if (v33)
  {
    dispatch_release(v33);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
LABEL_86:
  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  *(a1 + 256) = 0;
}

BOOL vtCompressionSessionIsPropertyHandledByVideoEncoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  v3 = *(a1 + 472);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v4(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v5 = CFDictionaryContainsKey(theDict, a2) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

uint64_t vtCloneCompressionFrameTrackingInfo(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 48, 0x10E00404507F4E6, 0);
  v4 = *(a2 + 8);
  *v3 = *a2;
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 8) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 16) = v5;
  *(v3 + 24) = _Block_copy(*(a2 + 24));
  *(v3 + 41) = *(a2 + 41);
  return v3;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, CMVideoFormatDescriptionRef *a6)
{
  v28[0] = 0;
  if (a1)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = a2;
    if (*(a1 + 40))
    {
      v12 = *(a1 + 40);

      return VTParavirtualizationHostEncoderSessionCreateVideoFormatDescription(v12, a2, a3, a4, a5, a6);
    }

    v15 = *a1;
    if (*a1)
    {
      if (v15[4] != 2)
      {
        vtCompressionSessionCopyFallbackVideoFormatDescriptionExtensions(*a1, a5, v28);
        if (*(v15 + 724))
        {
          v16 = v28[0];
          v17 = vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions(v15, v10, v9, v28[0]);
          if (v17)
          {
            goto LABEL_44;
          }

          if (*(v15 + 724) == 5)
          {
            if (v11 == 1902671459)
            {
              v11 = 1902405681;
            }

            else if (v11 == 1752589105)
            {
              v11 = 1685481521;
            }
          }
        }

        if (*(v15 + 689))
        {
          v16 = v28[0];
          if (*(v15 + 688))
          {
            if (!*(v15 + 690))
            {
              if (v28[0])
              {
                value = 0;
                v18 = *(v15 + 89);
                if (v18)
                {
                  v28[1] = 0;
                  v28[2] = 0;
                  BytePtr = CFDataGetBytePtr(v18);
                  Length = CFDataGetLength(*(v15 + 89));
                  v19 = *MEMORY[0x1E69600A0];
                  UpdatedHVCCWithAdditionalHEVCParameterSets = CFDictionaryGetValue(v16, *MEMORY[0x1E69600A0]);
                  Count = FigCFDictionaryGetCount();
                  if (!UpdatedHVCCWithAdditionalHEVCParameterSets)
                  {
                    goto LABEL_29;
                  }

                  v22 = Count;
                  v23 = CFGetAllocator(v15);
                  MutableCopy = CFDictionaryCreateMutableCopy(v23, v22, UpdatedHVCCWithAdditionalHEVCParameterSets);
                  if (CFDictionaryGetValue(MutableCopy, @"hvcC"))
                  {
                    CFGetAllocator(v15);
                    UpdatedHVCCWithAdditionalHEVCParameterSets = FigVideoFormatDescriptionCreateUpdatedHVCCWithAdditionalHEVCParameterSets();
                    if (!UpdatedHVCCWithAdditionalHEVCParameterSets)
                    {
                      CFDictionarySetValue(MutableCopy, @"hvcC", value);
                      CFDictionarySetValue(v16, v19, MutableCopy);
                    }

                    if (MutableCopy)
                    {
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    VTEncoderSessionCreateVideoFormatDescription_cold_1(&v32);
                    UpdatedHVCCWithAdditionalHEVCParameterSets = v32;
                    if (MutableCopy)
                    {
LABEL_28:
                      CFRelease(MutableCopy);
                    }
                  }

LABEL_29:
                  if (value)
                  {
                    CFRelease(value);
                  }

                  if (UpdatedHVCCWithAdditionalHEVCParameterSets)
                  {
LABEL_42:
                    CFRelease(v16);
                    return UpdatedHVCCWithAdditionalHEVCParameterSets;
                  }
                }
              }
            }
          }
        }

        else
        {
          v16 = v28[0];
        }

        if (v16)
        {
          v8 = v16;
        }

        v25 = CFGetAllocator(v15);
        v17 = CMVideoFormatDescriptionCreate(v25, v11, v10, v9, v8, a6);
        if (!v17)
        {
          v26 = *(v15 + 4);
          v27 = *a6;
          *(v15 + 4) = *a6;
          if (v27)
          {
            CFRetain(v27);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          UpdatedHVCCWithAdditionalHEVCParameterSets = 0;
          if (!v16)
          {
            return UpdatedHVCCWithAdditionalHEVCParameterSets;
          }

          goto LABEL_42;
        }

LABEL_44:
        UpdatedHVCCWithAdditionalHEVCParameterSets = v17;
        if (!v16)
        {
          return UpdatedHVCCWithAdditionalHEVCParameterSets;
        }

        goto LABEL_42;
      }

      VTEncoderSessionCreateVideoFormatDescription_cold_2(&BytePtr);
    }

    else
    {
      VTEncoderSessionCreateVideoFormatDescription_cold_3(&BytePtr);
    }

    return BytePtr;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-CS >>>>", 8874, v6);
}

void VTEncoderSessionEmitEncodedFrame(int32x2_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v44 = a4;
  cf = 0;
  sbuf = a5;
  if (a1)
  {
    if (a1[5])
    {
      OUTLINED_FUNCTION_15_0();

      VTParavirtualizationHostEncoderSessionEmitEncodedFrame(v6, v7, v8, v9, v10);
      return;
    }

    v14 = *a1;
    if (*a1)
    {
      if (*(v14 + 16) != 2)
      {
        if (a3)
        {
          sbuf = 0;
        }

        if (*(v14 + 850))
        {
          FigSimpleMutexLock();
          v15 = OUTLINED_FUNCTION_13_0();
          Value = CFDictionaryGetValue(v15, v16);
          if (Value)
          {
            v18 = Value[40];
            FigSimpleMutexUnlock();
            if (v18)
            {
              VTRateControlSessionBeforeEmitEncodedFrame(*(v14 + 856));
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_0();
            v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, cf);
            FigSimpleMutexUnlock();
            if (v39)
            {
              goto LABEL_49;
            }
          }
        }

        FigSimpleMutexLock();
        v19 = OUTLINED_FUNCTION_13_0();
        v21 = CFDictionaryGetValue(v19, v20);
        if (v21)
        {
          if (!v21[41])
          {
            v21[41] = 1;
            v22 = *v21;
            v23 = *(v21 + 1);
            v25 = *(v21 + 2);
            v24 = *(v21 + 3);
            FigSimpleMutexUnlock();
            v26 = sbuf;
            if (!sbuf || *MEMORY[0x1E695E4D0] != *(v14 + 616) || (v23 ? (v27 = *(v14 + 724) == 0) : (v27 = 1), v27 ? (v28 = v25 == 0) : (v28 = 0), v28 || (NumSamples = CMSampleBufferGetNumSamples(sbuf), v26 = sbuf, NumSamples != 1)))
            {
              v31 = 0;
              goto LABEL_36;
            }

            if (v23)
            {
              v30 = v23;
            }

            else
            {
              v30 = v25;
            }

            if (!VTHDRMetadataGenerationSessionInsertData(*(v14 + 656), sbuf, v30, &cf))
            {
              v31 = cf;
              v26 = sbuf;
LABEL_36:
              if (v31)
              {
                v33 = v31;
              }

              else
              {
                v33 = v26;
              }

              v34 = *(v14 + 80);
              if (v34)
              {
                v34(*(v14 + 88), v22, a3, v44, v33);
              }

              else if (v24)
              {
                (*(v24 + 16))(v24, a3, v44, v33);
              }

              ++*(v14 + 884);
              if (cf)
              {
                CFRelease(cf);
              }

              FigSimpleMutexLock();
              v35 = OUTLINED_FUNCTION_13_0();
              if (CFDictionaryGetValue(v35, v36))
              {
                v37 = OUTLINED_FUNCTION_13_0();
                CFDictionaryRemoveValue(v37, v38);
                *(v14 + 120) = vadd_s32(*(v14 + 120), -1);
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, cf);
              }

              FigSimpleMutexUnlock();
            }

LABEL_49:
            OUTLINED_FUNCTION_15_0();
            return;
          }
        }

        else
        {
          v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexUnlock();
        goto LABEL_49;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_0();

  FigSignalErrorAtGM(v12);
}

void vtFreeCompressionFrameTrackingInfo(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_release(*(a2 + 24));

  CFAllocatorDeallocate(a1, a2);
}

OSStatus VTCompressionSessionCompleteFrames(VTCompressionSessionRef session, CMTime *completeUntilPresentationTimeStamp)
{
  v10 = 0;
  if (!session)
  {
    VTCompressionSessionCompleteFrames_cold_2(&v9);
LABEL_14:
    value = v9.value;
LABEL_10:
    vtCompressionSessionPipelineContextInvalidate(&v10);
    return value;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionCompleteFrames_cold_1(&v9);
    goto LABEL_14;
  }

  v3 = *(session + 3);
  if (!v3)
  {
    v9 = *completeUntilPresentationTimeStamp;
    vtCompressionSessionPipelineCreateContext(session, 0, 0, 0, 0, 0, &v9.value, MEMORY[0x1E6960C70], 0, 0, &v10);
    v5 = *(session + 35);
    if (v5)
    {
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    v6 = *(session + 37);
    v7 = v10;
    if (v6)
    {
      dispatch_sync_f(v6, v10, vtCompressionSessionCompleteFramesWork);
    }

    value = v7[28];
    goto LABEL_10;
  }

  v9 = *completeUntilPresentationTimeStamp;
  return VTCompressionSessionRemote_CompleteFrames(v3, &v9);
}

void VTCompressionSessionInvalidate(VTCompressionSessionRef session)
{
  if (session)
  {
    v5 = *(session + 4);
    v4 = (session + 16);
    if (!v5)
    {
      VTCompressionSessionInvalidate_cold_1(v4, session, v1, v2);
    }
  }
}

void vtCompressionSessionFinalize(uint64_t a1)
{
  VTCompressionSessionInvalidate(a1);
  v2 = *(a1 + 472);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 472) = 0;
  }

  v3 = *(a1 + 512);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 512) = 0;
  }

  v4 = *(a1 + 528);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 528) = 0;
  }

  v5 = *(a1 + 536);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 536) = 0;
  }

  v6 = *(a1 + 408);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 408) = 0;
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 544) = 0;
  }

  v8 = *(a1 + 560);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 560) = 0;
  }

  FigSimpleMutexDestroy();
  *(a1 + 504) = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 128) = 0;
  }

  FigSimpleMutexDestroy();
  *(a1 + 104) = 0;
  v10 = *(a1 + 136);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 144) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 160);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 160) = 0;
  }

  v14 = *(a1 + 168);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 168) = 0;
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 176) = 0;
  }

  v16 = *(a1 + 184);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 184) = 0;
  }

  v17 = *(a1 + 192);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 192) = 0;
  }

  v18 = *(a1 + 200);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 200) = 0;
  }

  v19 = *(a1 + 208);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 208) = 0;
  }

  v20 = *(a1 + 216);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 216) = 0;
  }

  v21 = *(a1 + 224);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 224) = 0;
  }

  v22 = *(a1 + 416);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 416) = 0;
  }

  v23 = *(a1 + 232);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 232) = 0;
  }

  v24 = *(a1 + 240);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 240) = 0;
  }

  v25 = *(a1 + 248);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 248) = 0;
  }

  v26 = *(a1 + 656);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 656) = 0;
  }

  v27 = *(a1 + 680);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 680) = 0;
  }

  v28 = *(a1 + 704);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 704) = 0;
  }

  v29 = *(a1 + 712);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 712) = 0;
  }

  v30 = *(a1 + 600);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 600) = 0;
  }

  v31 = *(a1 + 664);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 664) = 0;
  }

  v32 = *(a1 + 672);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 672) = 0;
  }

  v33 = *(a1 + 744);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 744) = 0;
  }

  v34 = *(a1 + 752);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 752) = 0;
  }

  v35 = *(a1 + 760);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 760) = 0;
  }

  v36 = *(a1 + 776);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 776) = 0;
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 800) = 0;
  }

  v38 = *(a1 + 264);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 264) = 0;
  }

  v39 = *(a1 + 32);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 32) = 0;
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 56) = 0;
  }

  v41 = *(a1 + 64);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 64) = 0;
  }

  v42 = *(a1 + 72);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 72) = 0;
  }

  VTEncoderSessionTeardown(a1 + 424);
  FigSemaphoreDestroy();
  *(a1 + 312) = 0;
  FigSemaphoreDestroy();
  *(a1 + 352) = 0;
  FigSemaphoreDestroy();
  *(a1 + 384) = 0;
  FigSemaphoreDestroy();
  *(a1 + 320) = 0;
  FigSemaphoreDestroy();
  *(a1 + 360) = 0;
  FigSemaphoreDestroy();
  *(a1 + 392) = 0;
  v43 = *(a1 + 328);
  if (v43)
  {
    dispatch_release(v43);
    *(a1 + 328) = 0;
  }

  v44 = *(a1 + 296);
  if (v44)
  {
    dispatch_release(v44);
    *(a1 + 296) = 0;
  }

  v45 = *(a1 + 368);
  if (v45)
  {
    dispatch_release(v45);
    *(a1 + 368) = 0;
  }

  v46 = *(a1 + 280);
  if (v46)
  {
    dispatch_release(v46);
    *(a1 + 280) = 0;
  }

  v47 = *(a1 + 496);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 496) = 0;
  }

  free(*(a1 + 840));
  *(a1 + 840) = 0;
  v48 = *(a1 + 816);
  if (v48)
  {
    CFRelease(v48);
    *(a1 + 816) = 0;
  }

  v49 = *(a1 + 24);
  if (v49)
  {
    CFRelease(v49);
    *(a1 + 24) = 0;
  }

  v50 = *(a1 + 872);
  if (v50)
  {
    CFRelease(v50);
    *(a1 + 872) = 0;
  }

  v51 = *(a1 + 904);
  if (v51)
  {
    CFRelease(v51);
    *(a1 + 904) = 0;
  }

  v52 = *(a1 + 912);
  if (v52)
  {
    CFRelease(v52);
    *(a1 + 912) = 0;
  }

  v53 = *(a1 + 920);
  if (v53)
  {
    CFRelease(v53);
    *(a1 + 920) = 0;
  }

  v54 = *(a1 + 928);
  if (v54)
  {
    CFRelease(v54);
    *(a1 + 928) = 0;
  }

  v55 = *(a1 + 936);
  if (v55)
  {
    CFRelease(v55);
    *(a1 + 936) = 0;
  }
}

uint64_t vtRotatePixelRect180_1BPP_inplace_arm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 0xF) != 0 || (a4 & 0xF) != 0 || (a5 & 0xF) != 0)
  {
    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a6 >> 1;
  v8 = a2 - a5;
  v9 = a4 - a5;
  v10 = a5 >> 4;
  v11 = (v6 - v9);
  while (1)
  {
    do
    {
      v12 = bswap64(*a1);
      v13 = bswap64(a1[1]);
      v11 -= 2;
      v14 = bswap64(*v11);
      *a1 = bswap64(v11[1]);
      a1[1] = v14;
      a1 += 2;
      *v11 = v13;
      v11[1] = v12;
      --v10;
    }

    while (v10);
    if (!--v7)
    {
      break;
    }

    a1 = (a1 + v8);
    v11 = (v11 - v9);
    v10 = a5 >> 4;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_1BPP_arm(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0)
  {
    return -1;
  }

  if ((a2 & 0x1F) != 0 || (a4 & 0x1F) != 0 || (a5 & 0x1F) != 0)
  {
    if ((a2 & 0xF) == 0 && (a4 & 0xF) == 0 && (a5 & 0xF) == 0)
    {
      v15 = a3 + a4 * a6;
      v16 = a2 - a5;
      v17 = a4 - a5;
      v18 = a5 >> 4;
      v19 = (v15 - v17);
      while (1)
      {
        do
        {
          v20 = a1->i64[0];
          v21 = a1->u64[1];
          ++a1;
          v19 -= 2;
          *v19 = bswap64(v21);
          v19[1] = bswap64(v20);
          --v18;
        }

        while (v18);
        if (!--a6)
        {
          break;
        }

        a1 = (a1 + v16);
        v19 = (v19 - v17);
        v18 = a5 >> 4;
      }

      return 0;
    }

    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a2 - a5;
  v8 = a4 - a5;
  v9 = a5 >> 5;
  v10 = (v6 - v8);
  while (1)
  {
    do
    {
      v11 = *a1;
      v12 = a1[1];
      a1 += 2;
      v13 = vrev64q_s8(v11);
      v14 = vrev64q_s8(v12);
      v10 -= 2;
      *v10 = vextq_s8(v14, v14, 8uLL);
      v10[1] = vextq_s8(v13, v13, 8uLL);
      --v9;
    }

    while (v9);
    if (!--a6)
    {
      break;
    }

    a1 = (a1 + v7);
    v10 = (v10 - v8);
    v9 = a5 >> 5;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_2BPP_inplace_arm(int16x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 0xF) != 0 || (a4 & 0xF) != 0 || (a5 & 0xF) != 0)
  {
    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a6 >> 1;
  v8 = 2 * a5;
  v9 = a2 - v8;
  v10 = a4 - v8;
  v11 = v8 >> 4;
  v12 = (v6 - v10);
  while (1)
  {
    do
    {
      v13 = vrev64q_s16(*a1);
      v14 = vrev64q_s16(*--v12);
      *a1++ = vextq_s8(v14, v14, 8uLL);
      *v12 = vextq_s8(v13, v13, 8uLL);
      --v11;
    }

    while (v11);
    if (!--v7)
    {
      break;
    }

    a1 = (a1 + v9);
    v12 = (v12 - v10);
    v11 = v8 >> 4;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_2BPP_arm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0)
  {
    return -1;
  }

  if ((a2 & 0x1F) != 0 || (a4 & 0x1F) != 0 || (a5 & 0x1F) != 0)
  {
    if ((a2 & 0xF) == 0 && (a4 & 0xF) == 0 && (a5 & 0xF) == 0)
    {
      v16 = a3 + a4 * a6;
      v17 = 2 * a5;
      v18 = a2 - v17;
      v19 = a4 - v17;
      v20 = v17 >> 4;
      v21 = (v16 - v19);
      while (1)
      {
        do
        {
          v22 = *a1;
          v23 = *(a1 + 8);
          a1 += 16;
          v21 -= 2;
          *v21 = vrev64_s16(v23);
          v21[1] = vrev64_s16(v22);
          --v20;
        }

        while (v20);
        if (!--a6)
        {
          break;
        }

        a1 += v18;
        v21 = (v21 - v19);
        v20 = v17 >> 4;
      }

      return 0;
    }

    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = 2 * a5;
  v8 = a2 - v7;
  v9 = a4 - v7;
  v10 = v7 >> 5;
  v11 = (v6 - v9);
  while (1)
  {
    do
    {
      v12 = *a1;
      v13 = *(a1 + 16);
      a1 += 32;
      v14 = vrev64q_s16(v12);
      v15 = vrev64q_s16(v13);
      v11 -= 2;
      *v11 = vextq_s8(v15, v15, 8uLL);
      v11[1] = vextq_s8(v14, v14, 8uLL);
      --v10;
    }

    while (v10);
    if (!--a6)
    {
      break;
    }

    a1 += v8;
    v11 = (v11 - v9);
    v10 = v7 >> 5;
  }

  return 0;
}

uint64_t vtRotatePixelRect90CW_1BPP_arm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 7) != 0 || (a4 & 7) != 0 || (a5 & 7) != 0 || (a6 & 7) != 0)
  {
    return -1;
  }

  v6 = (a3 + a5 - 8);
  v7 = v6;
  v8 = a5;
  for (i = a6 >> 3; ; i = a6 >> 3)
  {
    do
    {
      v11.i64[0] = *a1;
      v10 = (a1 + a2);
      v11.i64[1] = *v10;
      v12 = (v10 + a2);
      v14.i64[0] = *v12;
      v13 = (v12 + a2);
      v14.i64[1] = *v13;
      v15 = (v13 + a2);
      v17.i64[0] = *v15;
      v16 = (v15 + a2);
      v17.i64[1] = *v16;
      v18 = (v16 + a2);
      v20.i64[0] = *v18;
      v19 = (v18 + a2);
      v20.i64[1] = *v19;
      v21 = vuzp1q_s8(v11, v14);
      v22 = vuzp2q_s8(v11, v14);
      v23 = vuzp1q_s8(v21, v22);
      v24 = vuzp2q_s8(v21, v22);
      v25 = vuzp1q_s8(v23, v24);
      v26 = vuzp2q_s8(v23, v24);
      v27 = vuzp1q_s8(v17, v20);
      v28 = vuzp2q_s8(v17, v20);
      v29 = vuzp1q_s8(v27, v28);
      v30 = vuzp2q_s8(v27, v28);
      v31 = vuzp1q_s8(v29, v30);
      v32 = vuzp2q_s8(v29, v30);
      v33 = vtrn2q_s32(v25, v31);
      v34 = vtrn2q_s32(v26, v32);
      v35 = vrev64q_s8(vtrn1q_s32(v25, v31));
      v36 = vrev64q_s8(vtrn1q_s32(v26, v32));
      v37 = vrev64q_s8(v33);
      v38 = vrev64q_s8(v34);
      *v6 = v35.i64[0];
      v39 = (v6 + a4);
      *v39 = v37.i64[0];
      v40 = (v39 + a4);
      *v40 = v35.i64[1];
      v41 = (v40 + a4);
      *v41 = v37.i64[1];
      v42 = (v41 + a4);
      *v42 = v36.i64[0];
      v43 = (v42 + a4);
      *v43 = v38.i64[0];
      v44 = (v43 + a4);
      *v44 = v36.i64[1];
      v45 = (v44 + a4);
      *v45 = v38.i64[1];
      v6 = (v45 + a4);
      a1 = (v19 + a2 + -8 * a2 + 8);
      --i;
    }

    while (i);
    v8 -= 8;
    if (!v8)
    {
      break;
    }

    a1 = (&a1[a2] - a6);
    v6 = --v7;
  }

  return 0;
}

uint64_t vtRotatePixelRect90CCW_1BPP_arm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 7) != 0 || (a4 & 7) != 0 || (a5 & 7) != 0 || (a6 & 7) != 0)
  {
    return -1;
  }

  v6 = (a3 + a4 * (a6 - 1));
  v7 = v6;
  v8 = -a4;
  v9 = a5;
  for (i = a6 >> 3; ; i = a6 >> 3)
  {
    do
    {
      v12.i64[0] = *a1;
      v11 = (a1 + a2);
      v12.i64[1] = *v11;
      v13 = (v11 + a2);
      v15.i64[0] = *v13;
      v14 = (v13 + a2);
      v15.i64[1] = *v14;
      v16 = (v14 + a2);
      v18.i64[0] = *v16;
      v17 = (v16 + a2);
      v18.i64[1] = *v17;
      v19 = (v17 + a2);
      v21.i64[0] = *v19;
      v20 = (v19 + a2);
      v21.i64[1] = *v20;
      v22 = vuzp1q_s8(v12, v15);
      v23 = vuzp2q_s8(v12, v15);
      v24 = vuzp1q_s8(v22, v23);
      v25 = vuzp2q_s8(v22, v23);
      v26 = vuzp1q_s8(v24, v25);
      v27 = vuzp2q_s8(v24, v25);
      v28 = vuzp1q_s8(v18, v21);
      v29 = vuzp2q_s8(v18, v21);
      v30 = vuzp1q_s8(v28, v29);
      v31 = vuzp2q_s8(v28, v29);
      v32 = vuzp1q_s8(v30, v31);
      v33 = vuzp2q_s8(v30, v31);
      v34 = vtrn1q_s32(v26, v32);
      v35 = vtrn2q_s32(v26, v32);
      v36 = vtrn1q_s32(v27, v33);
      v37 = vtrn2q_s32(v27, v33);
      *v6 = v34.i64[0];
      v38 = (v6 + v8);
      *v38 = v35.i64[0];
      v39 = (v38 + v8);
      *v39 = v34.i64[1];
      v40 = (v39 + v8);
      *v40 = v35.i64[1];
      v41 = (v40 + v8);
      *v41 = v36.i64[0];
      v42 = (v41 + v8);
      *v42 = v37.i64[0];
      v43 = (v42 + v8);
      *v43 = v36.i64[1];
      v44 = (v43 + v8);
      *v44 = v37.i64[1];
      v6 = (v44 + v8);
      a1 = (v20 + a2 + -8 * a2 + 8);
      --i;
    }

    while (i);
    v9 -= 8;
    if (!v9)
    {
      break;
    }

    a1 = (&a1[a2] - a6);
    v6 = ++v7;
  }

  return 0;
}

uint64_t VTPixelTransferChainAppendSoftwareNode(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), char a7)
{
  VTPixelTransferNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a5)
  {
    a6(a5);
  }

  return v9;
}

uint64_t vtPixelTransferChainAppendDynamicNode(uint64_t a1, const void *a2, const void *a3, uint64_t a4, int a5, __int128 *a6, int a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  VTPixelTransferNodeGetClassID();
  v11 = CMDerivedObjectCreate();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, v15);
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void vtFreePlanarBuffers(uint64_t a1)
{
  for (i = 0; i != 128; i += 32)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      free(v3);
      *(a1 + i) = 0;
    }
  }
}

uint64_t VTPixelTransferSessionCopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 16))
  {
    v3 = qword_1ED6D3EF0;
    v4 = v2;
    v5 = 4294954393;
    v6 = 4323;
  }

  else
  {
    MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce, vtPixelTransferSessionCreateSupportedPropertyDictionary);
    if (a2 && sVTPixelTransferSessionSupportedPropertyDictionary)
    {
      *a2 = CFRetain(sVTPixelTransferSessionSupportedPropertyDictionary);
      return 0;
    }

    v3 = qword_1ED6D3EF0;
    v4 = v2;
    v5 = 4294954392;
    v6 = 4331;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, "<<<< VTPixelTransferSession >>>>", v6, v4);
}

void vtPixelTransferSessionCreateSupportedPropertyDictionary()
{
  v79 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  keys = @"PropertyType";
  v64 = @"ReadWriteStatus";
  v55 = @"Enumeration";
  v56 = @"ReadWrite";
  values = @"Normal";
  v72 = @"CropSourceToCleanAperture";
  v73 = @"Letterbox";
  v74 = @"Trim";
  v1 = *MEMORY[0x1E695E480];
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 4, MEMORY[0x1E695E9C0]);
  if (!v2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v35, v41);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v37, v43);
    return;
  }

  v3 = v2;
  *&v65 = @"SupportedValueList";
  *&v57 = v2;
  v4 = CFDictionaryCreate(v1, &keys, &v55, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v35, v41);
    v27 = v3;
LABEL_57:
    CFRelease(v27);
    return;
  }

  cf = v4;
  v55 = @"ReadWrite";
  keys = @"ReadWriteStatus";
  v5 = CFDictionaryCreate(v1, &keys, &v55, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = v5;
  if (!v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v35, v41);
    v23 = 0;
    v28 = 0;
    v29 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v18 = 0;
    v49 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v25 = 0;
    goto LABEL_29;
  }

  v48 = CFRetain(v5);
  keys = @"PropertyType";
  v64 = @"ReadWriteStatus";
  v55 = @"Enumeration";
  v56 = @"ReadWrite";
  values = @"Decimate";
  v72 = @"Average";
  v7 = CFArrayCreate(v1, &values, 2, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v35, v41);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v38, v44);
    v28 = 0;
    v29 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v18 = 0;
    v49 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v25 = 0;
    v23 = v48;
    goto LABEL_29;
  }

  *&v65 = @"SupportedValueList";
  v42 = v7;
  *&v57 = v7;
  v36 = CFDictionaryCreate(v1, &keys, &v55, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v36)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0, v42);
    v29 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v18 = 0;
    v49 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v25 = 0;
    v28 = v45;
    v23 = v48;
    goto LABEL_29;
  }

  v53 = CFRetain(v6);
  v52 = CFRetain(v6);
  keys = @"PropertyType";
  v64 = @"ReadWriteStatus";
  v55 = @"Enumeration";
  v56 = @"ReadWrite";
  v8 = *MEMORY[0x1E6965DA0];
  values = *MEMORY[0x1E6965DB8];
  v72 = v8;
  v9 = *MEMORY[0x1E6965DC0];
  v73 = *MEMORY[0x1E6965DD8];
  v74 = v9;
  v10 = *MEMORY[0x1E6965DD0];
  v75 = *MEMORY[0x1E6965D98];
  v76 = v10;
  v77 = *MEMORY[0x1E6965DB0];
  v11 = CFArrayCreate(v1, &values, 7, MEMORY[0x1E695E9C0]);
  if (!v11)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v39, v46);
    v50 = 0;
    v51 = 0;
LABEL_24:
    v18 = 0;
    v49 = 0;
LABEL_25:
    v22 = 0;
    v20 = 0;
LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

  *&v65 = @"SupportedValueList";
  v50 = v11;
  *&v57 = v11;
  v12 = CFDictionaryCreate(v1, &keys, &v55, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v12)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
    v51 = 0;
    goto LABEL_24;
  }

  v51 = v12;
  keys = @"PropertyType";
  v64 = @"ReadWriteStatus";
  v55 = @"Enumeration";
  v56 = @"ReadWrite";
  v13 = *MEMORY[0x1E6965F68];
  values = *MEMORY[0x1E6965F50];
  v72 = v13;
  v14 = *MEMORY[0x1E6965F40];
  v73 = *MEMORY[0x1E6965F80];
  v74 = v14;
  v15 = *MEMORY[0x1E6965F70];
  v75 = *MEMORY[0x1E6965F78];
  v76 = v15;
  v16 = *MEMORY[0x1E6965F60];
  v77 = *MEMORY[0x1E6965F48];
  v78 = v16;
  v17 = CFArrayCreate(v1, &values, 8, MEMORY[0x1E695E9C0]);
  if (!v17)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v40, v47);
    goto LABEL_24;
  }

  *&v65 = @"SupportedValueList";
  v49 = v17;
  *&v57 = v17;
  v18 = CFDictionaryCreate(v1, &keys, &v55, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v18)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
    goto LABEL_25;
  }

  keys = @"PropertyType";
  v64 = @"ReadWriteStatus";
  v55 = @"Enumeration";
  v56 = @"ReadWrite";
  YCbCrMatricesArray = vtPixelTransferSessionCreateYCbCrMatricesArray();
  v20 = YCbCrMatricesArray;
  if (!YCbCrMatricesArray)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
    v22 = 0;
    goto LABEL_26;
  }

  *&v65 = @"SupportedValueList";
  *&v57 = YCbCrMatricesArray;
  v21 = CFDictionaryCreate(v1, &keys, &v55, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v21)
  {
    keys = @"ReadWriteStatus";
    v55 = @"ReadWrite";
    v22 = CFDictionaryCreate(v1, &keys, &v55, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = v48;
    if (v22)
    {
      v24 = CFDictionaryCreate(v1, &keys, &v55, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v25 = v24;
      if (v24)
      {
        keys = @"ScalingMode";
        v64 = @"DestinationPixelAspectRatio";
        v55 = cf;
        v56 = v6;
        *&v65 = @"DestinationCleanAperture";
        *(&v65 + 1) = @"DownsamplingMode";
        *&v57 = v48;
        *(&v57 + 1) = v36;
        *&v66 = @"SourceCropRectangle";
        *(&v66 + 1) = @"DestinationRectangle";
        *&v58 = v53;
        *(&v58 + 1) = v52;
        *&v67 = @"DestinationYCbCrMatrix";
        *(&v67 + 1) = @"DestinationColorPrimaries";
        *&v59 = v21;
        *(&v59 + 1) = v51;
        v26 = *MEMORY[0x1E6965EC8];
        *&v68 = @"DestinationTransferFunction";
        *(&v68 + 1) = v26;
        *&v60 = v18;
        *(&v60 + 1) = v22;
        *&v69 = @"Label";
        *&v61 = v24;
        sVTPixelTransferSessionSupportedPropertyDictionary = CFDictionaryCreate(v1, &keys, &v55, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!sVTPixelTransferSessionSupportedPropertyDictionary)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954392, "<<<< VTPixelTransferSession >>>>", 4280, v0);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954392, "<<<< VTPixelTransferSession >>>>", 4236, v0);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
      v25 = 0;
    }

    goto LABEL_28;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v36, v42);
  v22 = 0;
LABEL_27:
  v25 = 0;
  v23 = v48;
LABEL_28:
  v29 = v36;
  v28 = v42;
LABEL_29:
  CFRelease(v3);
  CFRelease(cf);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v25)
  {
    v27 = v25;
    goto LABEL_57;
  }
}

uint64_t _VTPixelTransferSessionSetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  theDict = 0;
  if (!*(a1 + 16))
  {
    VTMetalTransferSessionCopySupportedPropertyDictionary(*(a1 + 1160), &theDict);
    if (CFEqual(a2, @"DestinationCleanAperture"))
    {
      v9 = *(a1 + 152);
      if (v9)
      {
        CFRelease(v9);
      }

      *(a1 + 152) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DestinationPixelAspectRatio"))
    {
      v10 = *(a1 + 160);
      if (v10)
      {
        CFRelease(v10);
      }

      *(a1 + 160) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"ScalingMode"))
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        CFRelease(v11);
      }

      *(a1 + 48) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DownsamplingMode"))
    {
      v12 = *(a1 + 808);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 808) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

LABEL_24:
      CFRetain(a3);
LABEL_25:
      v13 = 0;
      v14 = 0;
      goto LABEL_26;
    }

    if (CFEqual(a2, @"SourceCropRectangle"))
    {
      if (!a3)
      {
        v13 = 0;
        v14 = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v24.f64[0] = NAN;
        v24.f64[1] = NAN;
        *(a1 + 72) = vnegq_f64(v24);
        goto LABEL_26;
      }

      v20 = CFGetTypeID(a3);
      if (v20 == CFDictionaryGetTypeID())
      {
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v21.f64[0] = NAN;
        v21.f64[1] = NAN;
        *(a1 + 72) = vnegq_f64(v21);
        memset(&cf, 0, sizeof(cf));
        if (CGRectMakeWithDictionaryRepresentation(a3, &cf))
        {
          cf = CGRectStandardize(cf);
          v83 = CGRectIntegral(cf);
          v13 = 0;
          v14 = 0;
          *(a1 + 88) = v83.origin.x;
          *(a1 + 96) = v83.origin.y;
          *(a1 + 72) = v83.size.width;
          *(a1 + 80) = v83.size.height;
          goto LABEL_26;
        }

        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4516, v3);
      }

      else
      {
        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4521, v3);
      }

      goto LABEL_82;
    }

    if (CFEqual(a2, @"DestinationRectangle"))
    {
      if (!a3)
      {
        v13 = 0;
        v14 = 0;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v28.f64[0] = NAN;
        v28.f64[1] = NAN;
        *(a1 + 120) = vnegq_f64(v28);
        goto LABEL_26;
      }

      v22 = CFGetTypeID(a3);
      if (v22 == CFDictionaryGetTypeID())
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        *(a1 + 120) = vnegq_f64(v23);
        memset(&cf, 0, sizeof(cf));
        if (CGRectMakeWithDictionaryRepresentation(a3, &cf))
        {
          cf = CGRectStandardize(cf);
          v84 = CGRectIntegral(cf);
          v13 = 0;
          v14 = 0;
          *(a1 + 136) = v84.origin.x;
          *(a1 + 144) = v84.origin.y;
          *(a1 + 120) = v84.size.width;
          *(a1 + 128) = v84.size.height;
          goto LABEL_26;
        }

        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4555, v3);
      }

      else
      {
        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4560, v3);
      }

      goto LABEL_82;
    }

    if (CFEqual(a2, @"EnableHardwareAcceleratedTransfer"))
    {
      if (initDefaultsCommon_onceToken != -1)
      {
        _VTPixelTransferSessionSetProperty_cold_1();
      }

      v35 = byte_1ED6D3B09;
      v36 = (a1 + 769);
      goto LABEL_124;
    }

    if (CFEqual(a2, @"EnableHighSpeedTransfer"))
    {
      LOBYTE(cf.origin.x) = 0;
      v37 = (a1 + 770);
    }

    else if (CFEqual(a2, @"DisableDither"))
    {
      LOBYTE(cf.origin.x) = 0;
      v37 = (a1 + 784);
    }

    else if (CFEqual(a2, @"UseOptimalMSRCoefficients"))
    {
      LOBYTE(cf.origin.x) = 0;
      v37 = (a1 + 785);
    }

    else
    {
      if (!CFEqual(a2, @"EnableHistogram"))
      {
        if (CFEqual(a2, @"HistogramRectangle"))
        {
          memset(&cf, 0, sizeof(cf));
          if (a3)
          {
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &cf))
            {
              v27 = *(a1 + 800);
              *(a1 + 800) = a3;
              goto LABEL_61;
            }

            v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4612, v3);
            goto LABEL_82;
          }

          v27 = *(a1 + 800);
          *(a1 + 800) = 0;
          if (!v27)
          {
LABEL_85:
            vtPixelTransferSessionUpdateTransferOptions(a1);
            goto LABEL_25;
          }

          goto LABEL_84;
        }

        if (CFEqual(a2, @"EnableGPUAcceleratedTransfer"))
        {
          if (initDefaultsCommon_onceToken != -1)
          {
            _VTPixelTransferSessionSetProperty_cold_1();
          }

          v35 = _MergedGlobals;
          v36 = (a1 + 786);
          goto LABEL_124;
        }

        if (!CFEqual(a2, @"EnableSoftwareTransfer"))
        {
          if (CFEqual(a2, @"SetGPUPriorityLow"))
          {
            v36 = (a1 + 787);
          }

          else
          {
            if (CFEqual(a2, @"DestinationColorPrimaries"))
            {
              if (a3)
              {
                v29 = CFStringGetTypeID();
                if (v29 != CFGetTypeID(a3))
                {
                  v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4639, v3);
                  goto LABEL_82;
                }
              }

              if (*(a1 + 1188))
              {
                v30 = *(a1 + 1080);
                if (v30)
                {
                  CFRelease(v30);
                  *(a1 + 1080) = 0;
                }

                v31 = *(a1 + 1088);
                if (v31)
                {
                  CFRelease(v31);
                  *(a1 + 1088) = 0;
                }

                *(a1 + 1188) = 0;
              }

              v14 = *(a1 + 1080);
              *(a1 + 1080) = a3;
              if (!a3)
              {
LABEL_131:
                if (v14)
                {
LABEL_132:
                  CFRelease(v14);
                  goto LABEL_25;
                }

                goto LABEL_148;
              }

LABEL_130:
              CFRetain(a3);
              goto LABEL_131;
            }

            if (CFEqual(a2, @"DestinationTransferFunction"))
            {
              if (a3)
              {
                v32 = CFStringGetTypeID();
                if (v32 != CFGetTypeID(a3))
                {
                  v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4653, v3);
                  goto LABEL_82;
                }
              }

              if (*(a1 + 1188))
              {
                v33 = *(a1 + 1080);
                if (v33)
                {
                  CFRelease(v33);
                  *(a1 + 1080) = 0;
                }

                v34 = *(a1 + 1088);
                if (v34)
                {
                  CFRelease(v34);
                }

                v14 = 0;
                *(a1 + 1188) = 0;
              }

              else
              {
                v14 = *(a1 + 1088);
              }

              *(a1 + 1088) = a3;
              if (!a3)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            }

            if (CFEqual(a2, @"DestinationICCProfile"))
            {
              if (a3)
              {
                v38 = CFDataGetTypeID();
                if (v38 != CFGetTypeID(a3))
                {
                  v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4667, v3);
                  goto LABEL_82;
                }
              }

              if (*(a1 + 1188))
              {
                v39 = *(a1 + 1080);
                if (v39)
                {
                  CFRelease(v39);
                  *(a1 + 1080) = 0;
                }

                v40 = *(a1 + 1088);
                if (v40)
                {
                  CFRelease(v40);
                  *(a1 + 1088) = 0;
                }

                *(a1 + 1188) = 0;
              }

              v14 = *(a1 + 1008);
              *(a1 + 1008) = a3;
              if (!a3)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            }

            if (CFEqual(a2, @"DestinationYCbCrMatrix"))
            {
              if (!a3)
              {
                v14 = *(a1 + 1072);
                *(a1 + 1072) = 0;
                if (v14)
                {
                  goto LABEL_132;
                }

LABEL_148:
                v13 = 0;
                goto LABEL_26;
              }

              v43 = CFStringGetTypeID();
              if (v43 != CFGetTypeID(a3))
              {
                v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4676, v3);
                goto LABEL_82;
              }

              v14 = *(a1 + 1072);
              *(a1 + 1072) = a3;
              goto LABEL_130;
            }

            if (CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
            {
              if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
              {
                a3 = *MEMORY[0x1E695E4D0];
              }

              if (!a3 || (v45 = CFBooleanGetTypeID(), v45 != CFGetTypeID(a3)))
              {
                v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4688, v3);
                goto LABEL_82;
              }

              v13 = 0;
              v14 = 0;
              *(a1 + 1136) = CFBooleanGetValue(a3);
              goto LABEL_26;
            }

            if (CFEqual(a2, @"RealTime"))
            {
              if (a3)
              {
                v46 = CFGetTypeID(a3);
                if (v46 == CFBooleanGetTypeID())
                {
                  v27 = *(a1 + 1128);
                  *(a1 + 1128) = a3;
LABEL_61:
                  CFRetain(a3);
                  if (!v27)
                  {
                    goto LABEL_85;
                  }

                  goto LABEL_84;
                }

                v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4698, v3);
LABEL_82:
                v13 = v25;
                v14 = v25;
                goto LABEL_26;
              }

              v27 = *(a1 + 1128);
              *(a1 + 1128) = 0;
              if (!v27)
              {
                goto LABEL_85;
              }

LABEL_84:
              CFRelease(v27);
              goto LABEL_85;
            }

            if (CFEqual(a2, @"ClientPID"))
            {
              if (!a3 || (v47 = CFGetTypeID(a3), v47 != CFNumberGetTypeID()))
              {
                v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4709, v3);
                goto LABEL_82;
              }

              LODWORD(cf.origin.x) = 0;
              CFNumberGetValue(a3, kCFNumberSInt32Type, &cf);
              v13 = 0;
              v14 = 0;
              *(a1 + 1124) = LODWORD(cf.origin.x);
              goto LABEL_26;
            }

            if (CFEqual(a2, @"ForceDisableVectorInstructions"))
            {
              v36 = (a1 + 208);
            }

            else if (CFEqual(a2, @"ForceSingleThreaded"))
            {
              v36 = (a1 + 209);
            }

            else
            {
              if (CFEqual(a2, @"PQEOTFOpticalScale"))
              {
                v48 = *(a1 + 1160);
                if (v48)
                {
                  v19 = VTSessionSetProperty(v48, a2, a3);
                  if (v19)
                  {
                    goto LABEL_35;
                  }
                }

                v49 = *(a1 + 1176);
                if (v49)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v49, a2, a3);
LABEL_178:
                    v52 = CFGetTypeID(a3);
                    if (v52 != CFNumberGetTypeID())
                    {
                      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4747, v3);
                      goto LABEL_82;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v53 = *(a1 + 1192);
                    *(a1 + 1192) = a3;
                    goto LABEL_225;
                  }

                  CFDictionaryRemoveValue(v49, a2);
                }

                else if (a3)
                {
                  goto LABEL_178;
                }

                v54 = *(a1 + 1192);
                if (v54)
                {
                  CFRelease(v54);
                  v13 = 0;
                  v14 = 0;
                  a3 = 0;
                  *(a1 + 1192) = 0;
LABEL_228:
                  *(a1 + 744) = 1;
                  goto LABEL_26;
                }

                goto LABEL_233;
              }

              if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
              {
                v50 = *(a1 + 1160);
                if (v50)
                {
                  v19 = VTSessionSetProperty(v50, a2, a3);
                  if (v19)
                  {
                    goto LABEL_35;
                  }
                }

                v51 = *(a1 + 1176);
                if (v51)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v51, a2, a3);
LABEL_192:
                    v57 = CFGetTypeID(a3);
                    if (v57 != CFNumberGetTypeID())
                    {
                      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4779, v3);
                      goto LABEL_82;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v53 = *(a1 + 1200);
                    *(a1 + 1200) = a3;
                    goto LABEL_225;
                  }

                  CFDictionaryRemoveValue(v51, a2);
                }

                else if (a3)
                {
                  goto LABEL_192;
                }

                v58 = *(a1 + 1200);
                if (v58)
                {
                  CFRelease(v58);
                  v13 = 0;
                  v14 = 0;
                  a3 = 0;
                  *(a1 + 1200) = 0;
                  goto LABEL_228;
                }

LABEL_233:
                v13 = 0;
                v14 = 0;
                a3 = 0;
                goto LABEL_26;
              }

              if (CFEqual(a2, @"HLGOETFOpticalScale"))
              {
                v55 = *(a1 + 1160);
                if (v55)
                {
                  v19 = VTSessionSetProperty(v55, a2, a3);
                  if (v19)
                  {
                    goto LABEL_35;
                  }
                }

                v56 = *(a1 + 1176);
                if (v56)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v56, a2, a3);
LABEL_208:
                    v61 = CFGetTypeID(a3);
                    if (v61 != CFNumberGetTypeID())
                    {
                      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4811, v3);
                      goto LABEL_82;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v53 = *(a1 + 1208);
                    *(a1 + 1208) = a3;
                    goto LABEL_225;
                  }

                  CFDictionaryRemoveValue(v56, a2);
                }

                else if (a3)
                {
                  goto LABEL_208;
                }

                v62 = *(a1 + 1208);
                if (v62)
                {
                  CFRelease(v62);
                  v13 = 0;
                  v14 = 0;
                  a3 = 0;
                  *(a1 + 1208) = 0;
                  goto LABEL_228;
                }

                goto LABEL_233;
              }

              if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
              {
                v59 = *(a1 + 1160);
                if (v59)
                {
                  v19 = VTSessionSetProperty(v59, a2, a3);
                  if (v19)
                  {
                    goto LABEL_35;
                  }
                }

                v60 = *(a1 + 1176);
                if (v60)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v60, a2, a3);
LABEL_222:
                    v64 = CFGetTypeID(a3);
                    if (v64 != CFNumberGetTypeID())
                    {
                      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4843, v3);
                      goto LABEL_82;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v53 = *(a1 + 1216);
                    *(a1 + 1216) = a3;
LABEL_225:
                    CFRetain(a3);
                    if (v53)
                    {
                      CFRelease(v53);
                    }

                    v13 = 0;
                    v14 = 0;
                    goto LABEL_228;
                  }

                  CFDictionaryRemoveValue(v60, a2);
                }

                else if (a3)
                {
                  goto LABEL_222;
                }

                v65 = *(a1 + 1216);
                if (v65)
                {
                  CFRelease(v65);
                  v13 = 0;
                  v14 = 0;
                  a3 = 0;
                  *(a1 + 1216) = 0;
                  goto LABEL_228;
                }

                goto LABEL_233;
              }

              if (!CFEqual(a2, @"AllowLowQualityScaling"))
              {
                if (CFEqual(a2, @"vImageFlags"))
                {
                  if (!a3 || *MEMORY[0x1E695E738] == a3)
                  {
                    v13 = 0;
                    v14 = 0;
                    *(a1 + 1144) = 0;
                  }

                  else
                  {
                    v63 = CFNumberGetTypeID();
                    if (v63 != CFGetTypeID(a3))
                    {
                      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4860, v3);
                      goto LABEL_82;
                    }

                    v13 = 0;
                    v14 = 0;
                    *(a1 + 1144) = FigCFNumberGetUInt64();
                  }

                  goto LABEL_26;
                }

                if (CFEqual(a2, @"AllowPixelTransferChain"))
                {
                  LOBYTE(cf.origin.x) = *(a1 + 32) != 0;
                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v13 = setBooleanPropertyWithDefault(a3, sAllowPixelTransferChain, &cf, (a1 + 744));
                  v70 = *(a1 + 32);
                  if (LOBYTE(cf.origin.x))
                  {
                    if (!v70)
                    {
                      v71 = CFGetAllocator(a1);
                      v13 = VTPixelTransferChainCreate(v71, 0, (a1 + 32));
                    }
                  }

                  else if (v70)
                  {
                    CFRelease(v70);
                    *(a1 + 32) = 0;
                  }

                  goto LABEL_104;
                }

                if (CFEqual(a2, @"AllowPixelTransferGraph"))
                {
                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v35 = sAllowPixelTransferGraph;
                  v36 = (a1 + 40);
                }

                else
                {
                  if (!CFEqual(a2, @"AllowFallbacks"))
                  {
                    if (!CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
                    {
                      if (!CFEqual(a2, @"Convert10BitHDRToSDRFor8BitDestinationWithUnspecifiedColorProperties"))
                      {
                        if (!CFEqual(a2, @"RequireDeviceRegistryID"))
                        {
                          if (CFEqual(a2, @"Label"))
                          {
                            if (a3 && !FigCFEqual())
                            {
                              v72 = CFGetTypeID(a3);
                              if (v72 != CFStringGetTypeID())
                              {
                                v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4938, v3);
                                goto LABEL_35;
                              }

                              v73 = *(a1 + 24);
                              *(a1 + 24) = a3;
                              CFRetain(a3);
                              if (v73)
                              {
                                CFRelease(v73);
                              }

                              CFDictionarySetValue(*(a1 + 1176), a2, a3);
                              v16 = *(a1 + 1160);
                              if (v16)
                              {
                                goto LABEL_32;
                              }
                            }

                            else
                            {
                              v66 = *(a1 + 24);
                              if (v66)
                              {
                                CFRelease(v66);
                                *(a1 + 24) = 0;
                              }

                              CFDictionaryRemoveValue(*(a1 + 1176), a2);
                              v16 = *(a1 + 1160);
                              if (v16)
                              {
                                v17 = a2;
                                v18 = 0;
                                goto LABEL_34;
                              }
                            }
                          }

                          else if (FigCFEqual())
                          {
                            if (a3 && !FigCFEqual())
                            {
                              if (!FigCFEqual() && !FigCFEqual())
                              {
                                v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4970, v3);
                                goto LABEL_35;
                              }

                              v76 = *(a1 + 1176);
                              if (v76)
                              {
                                CFDictionarySetValue(v76, a2, a3);
                              }

                              v16 = *(a1 + 1160);
                              if (v16)
                              {
                                v17 = @"AllowOnePassMetalScaling";
                                goto LABEL_33;
                              }
                            }

                            else
                            {
                              VTGetOnePassScalingPropertyValue(*(a1 + 1160), *(a1 + 1176));
                              v68 = *(a1 + 1176);
                              if (v68)
                              {
                                CFDictionaryRemoveValue(v68, a2);
                              }

                              v69 = *(a1 + 1160);
                              if (v69)
                              {
                                v19 = VTSessionSetProperty(v69, @"AllowOnePassMetalScaling", 0);
                                if (v19)
                                {
                                  goto LABEL_35;
                                }

                                v69 = *(a1 + 1160);
                              }

                              VTGetOnePassScalingPropertyValue(v69, *(a1 + 1176));
                            }
                          }

                          else
                          {
                            if (FigCFEqual())
                            {
                              IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
                              v75 = *MEMORY[0x1E695E738];
                              if (a3 && !IsTypeOfDispatchQueue && v75 != a3)
                              {
                                v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4999, v3);
                                goto LABEL_35;
                              }
                            }

                            else
                            {
                              if (!FigCFEqual())
                              {
                                v14 = 0;
                                v13 = 4294954396;
                                goto LABEL_26;
                              }

                              v77 = FigIsTypeOfDispatchQueue();
                              v75 = *MEMORY[0x1E695E738];
                              if (a3 && !v77 && v75 != a3)
                              {
                                v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 5027, v3);
                                goto LABEL_35;
                              }
                            }

                            cf.origin.x = 0.0;
                            _VTPixelTransferSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], &cf);
                            if (!FigCFEqual())
                            {
                              v78 = *(a1 + 1160);
                              if (v78)
                              {
                                v19 = VTSessionSetProperty(v78, a2, a3);
                                if (v19)
                                {
                                  goto LABEL_35;
                                }
                              }

                              v79 = *(a1 + 1176);
                              if (v79)
                              {
                                if (!a3 || v75 == a3)
                                {
                                  CFDictionaryRemoveValue(v79, a2);
                                }

                                else
                                {
                                  CFDictionarySetValue(v79, a2, a3);
                                }
                              }
                            }

                            if (*&cf.origin.x)
                            {
                              CFRelease(*&cf.origin.x);
                            }
                          }

                          v13 = 0;
                          goto LABEL_36;
                        }

                        if (!a3 || FigCFEqual())
                        {
                          goto LABEL_242;
                        }

                        v67 = CFGetTypeID(a3);
                        if (v67 != CFNumberGetTypeID())
                        {
                          v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3EF0, 4294954394, "<<<< VTPixelTransferSession >>>>", 4912, v3);
                          goto LABEL_82;
                        }

                        if (FigCFNumberGetUInt64())
                        {
                          v13 = 0;
                          v14 = 0;
                          *(a1 + 1185) = 1;
                        }

                        else
                        {
LABEL_242:
                          v13 = 0;
                          v14 = 0;
                          *(a1 + 1185) = 0;
                        }

LABEL_26:
                        if (!theDict)
                        {
                          return v13;
                        }

                        if (CFDictionaryContainsKey(theDict, a2))
                        {
                          v15 = *(a1 + 1176);
                          if (a3)
                          {
                            CFDictionarySetValue(v15, a2, a3);
                          }

                          else
                          {
                            CFDictionaryRemoveValue(v15, a2);
                          }

                          v16 = *(a1 + 1160);
                          v13 = v14;
                          if (v16)
                          {
LABEL_32:
                            v17 = a2;
LABEL_33:
                            v18 = a3;
LABEL_34:
                            v19 = VTSessionSetProperty(v16, v17, v18);
LABEL_35:
                            v13 = v19;
                          }
                        }

LABEL_36:
                        if (theDict)
                        {
                          CFRelease(theDict);
                        }

                        return v13;
                      }

                      v36 = (a1 + 1120);
                      goto LABEL_127;
                    }

                    LOBYTE(cf.origin.x) = 0;
                    v13 = setBooleanPropertyWithDefault(a3, 0, (a1 + 1187), &cf);
                    if (LOBYTE(cf.origin.x))
                    {
                      vtPixelTransferSessionUpdateTransferOptions(a1);
                      *(a1 + 744) = 1;
                    }

LABEL_104:
                    v14 = v13;
                    goto LABEL_26;
                  }

                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v35 = sAllowPixelTransferFallbacks;
                  v36 = (a1 + 41);
                }

LABEL_124:
                v41 = (a1 + 744);
                v42 = a3;
LABEL_125:
                v25 = setBooleanPropertyWithDefault(v42, v35, v36, v41);
                goto LABEL_82;
              }

              v36 = (a1 + 210);
            }
          }

LABEL_127:
          v41 = (a1 + 744);
          v42 = a3;
          v35 = 0;
          goto LABEL_125;
        }

        if (initDefaultsCommon_onceToken != -1)
        {
          _VTPixelTransferSessionSetProperty_cold_1();
        }

        v35 = sAllowSoftwareTransferSession;
        v36 = (a1 + 788);
        goto LABEL_124;
      }

      LOBYTE(cf.origin.x) = 0;
      v37 = (a1 + 789);
    }

    v13 = setBooleanPropertyWithDefault(a3, 0, v37, &cf);
    if (LOBYTE(cf.origin.x))
    {
      vtPixelTransferSessionUpdateTransferOptions(a1);
    }

    goto LABEL_104;
  }

  v4 = qword_1ED6D3EF0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954393, "<<<< VTPixelTransferSession >>>>", 4441, v3);
}