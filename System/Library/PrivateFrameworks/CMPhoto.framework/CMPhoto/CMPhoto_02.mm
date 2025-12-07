uint64_t CMPhotoDecompressionContainerCopyColorInfoFromFormatDescription(const opaqueCMFormatDescription *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9, CFTypeRef *a10, _DWORD *a11, _DWORD *a12, char *a13)
{
  v58[0] = 0;
  v56 = 0;
  cf = 0;
  v55 = 0;
  v54 = -1;
  HIBYTE(v52) = a5 == 0;
  OUTLINED_FUNCTION_42_2();
  v44 = v20;
  v47 = v19;
  *&v39 = &v54 + 4;
  *(&v39 + 1) = &v54;
  OUTLINED_FUNCTION_21();
  InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v21, v22, v23, v24, v25, v26, v27, 0, v39, v44, v47, v49);
  if (InfoFromFormatDescription)
  {
    goto LABEL_45;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  CMPhotoCreateColorSpaceFromPixelBufferAttachments(Extensions, a4, v58, 1, 1, v30, v31, v32, v40, v42, v45, v48, v50, v51, v52, v54, v55, v56, cf, v58[0], v58[1], v58[2]);
  if (InfoFromFormatDescription)
  {
    goto LABEL_45;
  }

  if (a4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v55 == 0;
  }

  v34 = !v33;
  if (!a3 || (v34 & 1) != 0)
  {
    if (v53)
    {
      v34 = 1;
    }

    v35 = 0;
    if ((v34 & 1) == 0)
    {
      v55 = CFRetain(*MEMORY[0x1E6965FD0]);
    }
  }

  else
  {
    v55 = CFRetain(*MEMORY[0x1E6965FC8]);
    v35 = 1;
  }

  v36 = v58[0];
  if (!(a6 | a4) && !v58[0])
  {
    v36 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v58[0] = v36;
  }

  if (v36 && CGColorSpaceGetModel(v36) >= kCGColorSpaceModelCMYK)
  {
    fig_log_get_emitter();
    InfoFromFormatDescription = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v43, v46);
LABEL_45:
    v37 = InfoFromFormatDescription;
    goto LABEL_35;
  }

  if (a7)
  {
    *a7 = v58[0];
    v58[0] = 0;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a9)
  {
    *a9 = v56;
    v56 = 0;
  }

  if (a10)
  {
    *a10 = v55;
    v55 = 0;
  }

  if (a11)
  {
    *a11 = HIDWORD(v54);
  }

  if (a12)
  {
    *a12 = v54;
  }

  v37 = 0;
  if (a13)
  {
    *a13 = v35;
  }

LABEL_35:
  if (v58[0])
  {
    CFRelease(v58[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v37;
}

uint64_t _copyColorInfoForItem(unsigned __int8 *a1, const void *a2, const void *a3, unsigned int a4, const opaqueCMFormatDescription **a5, int a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9, CFTypeRef *a10, int *a11, int *a12, _BYTE *a13)
{
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  cf = 0;
  v80 = 0;
  v78 = -1;
  v79 = -1;
  v77 = 0;
  v76 = 0;
  v20 = CFGetAllocator(a1);
  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(a2, &v76);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
LABEL_51:
    v38 = 4294954514;
    goto LABEL_52;
  }

  ItemTypeFromReader = v23(FigBaseObject, *MEMORY[0x1E69722F8], v20, &v86);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  v24 = v86;
  v88[0] = 0;
  ItemTypeFromReader = _verifyPixelInformationFromPictureReader(a2, v88);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  v25 = v88[0];
  if (a3 && !v88[0])
  {
    ItemTypeFromReader = _verifyPixelInformationFromPictureReader(a3, v88);
    if (ItemTypeFromReader)
    {
      goto LABEL_104;
    }

    v25 = v88[0];
  }

  if (v25)
  {
    v26 = v25 == 1;
  }

  else
  {
    v27 = a4;
    if (a4)
    {
      goto LABEL_15;
    }

    if (!v24)
    {
      v27 = 0;
      goto LABEL_15;
    }

    v87 = 0;
    OUTLINED_FUNCTION_14_9();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_31_0();
    if (CMPhotoGetInfoFromFormatDescription(v44, v45, v46, v47, v48, v49, v50, v51, v65, v68, v70, v72))
    {
      v26 = 0;
    }

    else
    {
      v26 = v87 == 6;
    }
  }

  v27 = v26;
LABEL_15:
  if (v76 == 1635135537)
  {
    v88[0] = 0;
    if (a4)
    {
      v28 = a1[28] == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 0x40000000;
    v75[2] = ___copyColorInfoForItem_block_invoke;
    v75[3] = &__block_descriptor_tmp_15;
    v75[4] = a2;
    v75[5] = v86;
    ItemTypeFromReader = CMPhotoDecompressionContainerCreateCorrectedAV1FormatDescription(v86, v75, v29, v88);
    if (ItemTypeFromReader)
    {
      goto LABEL_104;
    }

    if (v86)
    {
      CFRelease(v86);
    }

    v86 = v88[0];
  }

  if (_checkForInterestingBrands(a1))
  {
    v30 = 0;
  }

  else
  {
    v30 = a1[163];
  }

  v74 = 0;
  ItemTypeFromReader = CMPhotoDecompressionContainerCopyColorInfoFromFormatDescription(v86, a1[28], v30, v27, 0, a6, &v77, &cf, &v81, &v80, &v79, &v78, &v74);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  if (v77)
  {
    v31 = 1;
  }

  else
  {
    if (cf)
    {
      v32 = v81 == 0;
    }

    else
    {
      v32 = 1;
    }

    v31 = !v32;
  }

  if (v31 && v80 && !v74)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_28_3();
  if (v26)
  {
    OUTLINED_FUNCTION_10_0();
    ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v40, v41, v42, v43);
    if (!ItemTypeFromReader)
    {
      goto LABEL_70;
    }

LABEL_104:
    v38 = ItemTypeFromReader;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_24_1();
  if (!v26)
  {
    goto LABEL_70;
  }

  v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v33)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v33(a2, &v84);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  v34 = v84;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v35)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v35(v34, &v83);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v37)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v37(CMBaseObject, *MEMORY[0x1E69723A0], v20, &v85);
  if (ItemTypeFromReader)
  {
    goto LABEL_104;
  }

LABEL_70:
  if (v85)
  {
    v52 = v80;
    if (v74 && v80)
    {
      CFRelease(v80);
      v52 = 0;
      v80 = 0;
    }

    v53 = &v81;
    if (v31)
    {
      v53 = 0;
    }

    v54 = &v80;
    if (v52)
    {
      v54 = 0;
    }

    v55 = &v79;
    if (v79 != -1)
    {
      v55 = 0;
    }

    v56 = &v78;
    if (v78 != -1)
    {
      v56 = 0;
    }

    v71 = v56;
    v67 = v54;
    v69 = v55;
    v66 = v53;
    OUTLINED_FUNCTION_26_2();
    ItemTypeFromReader = _copyColorInfoForItem(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v69, v71, &v74);
    if (ItemTypeFromReader)
    {
      goto LABEL_104;
    }
  }

LABEL_71:
  if (a5)
  {
    *a5 = v86;
    v86 = 0;
  }

  if (a7)
  {
    *a7 = v77;
    v77 = 0;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a9)
  {
    *a9 = v81;
    v81 = 0;
  }

  if (a10)
  {
    *a10 = v80;
    v80 = 0;
  }

  if (a11)
  {
    *a11 = v79;
  }

  if (a12)
  {
    *a12 = v78;
  }

  v38 = 0;
  if (a13)
  {
    *a13 = v74;
  }

LABEL_52:
  if (v86)
  {
    CFRelease(v86);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  return v38;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CMPhotoCreateColorSpaceFromPixelBuffer(v9, &a9, 1, 0);
}

const void *OUTLINED_FUNCTION_47_1(uint64_t a1, const void *a2, uint64_t a3)
{

  return _readDictType(v3, a2, a3, (v4 - 196));
}

CFMutableDictionaryRef OUTLINED_FUNCTION_13()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  a27 = 0;

  return CMPhotoGetSlimPixelFormatAndFlavorFromFormatDescription(v27, &a27, 0);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double d0_0, double d1_0, double d2_0, double d3_0, double d4_0, double d5_0, double d6_0, double d7_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned __int16 a21, unsigned __int16 a23, float a25, float a27)
{

  return _extractInformationAboutTheData(v32, &a27, &a25, &a23, &a21);
}

uint64_t OUTLINED_FUNCTION_13_11@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    v6 = v1;
  }

  else
  {
    v6 = &v1[4 * v4];
  }

  return _extractFloatValuesFromAuxMetaTagValue(v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return CMPhotoAlignValue((v0 + 4) | 7, v1);
}

void _asyncCanvasDecodeFinished(uint64_t a1, const void *a2, int a3, int a4)
{
  os_unfair_lock_lock((a1 + 14576));
  if (a3)
  {
    *(a1 + 14580) = a3;
  }

  v8 = !CFSetContainsValue(*(a1 + 14600), a2) || (CFSetRemoveValue(*(a1 + 14600), a2), CFArrayAppendValue(*(a1 + 14584), a2), CFSetGetCount(*(a1 + 14600))) || *(a1 + 216) == 0;
  CFSetGetCount(*(a1 + 14600));
  os_unfair_lock_unlock((a1 + 14576));
  if (a4)
  {
    if (v8)
    {
      return;
    }
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 224));
    if (v8)
    {
      return;
    }
  }

  v9 = *(a1 + 232);

  dispatch_semaphore_signal(v9);
}

void _canvasItemDecodeCallback(int a1, int a2, CVBufferRef buffer, uint64_t a4, char *a5)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    if (*v9 == 1)
    {
      kdebug_trace();
    }
  }

  if (*(a4 + 14580) | a2)
  {
    goto LABEL_11;
  }

  v10 = *(a4 + 8);
  if (*v10 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(v10[1] + 16), *v10))
  {
    a2 = -17105;
    goto LABEL_11;
  }

  if (!*(a4 + 156))
  {
    CMPhotoRemoveColorInformationGuessedBy(buffer);
    CMPhotoRemoveChromaInformationFromBuffer(buffer);
  }

  if (*(a4 + 158))
  {
    goto LABEL_10;
  }

  if (!a5[48] && (v13 = CMPhotoSetPixelBufferCLAPFromRect(buffer, 1, 1, *(a4 + 176), *(a4 + 184), *(a4 + 192), *(a4 + 200))) != 0 || ((v14 = *(a5 + 9), v15 = *(a5 + 10), *(a5 + 56) != 0) || v14 | v15) && (v13 = CMPhotoSetPixelBufferCLAPFromRect(buffer, 1, 1, *(a5 + 7), *(a5 + 8), v14, v15)) != 0)
  {
    a2 = v13;
    goto LABEL_11;
  }

  CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72), buffer);
  CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(a4 + 80), *(a4 + 84), buffer);
  if (!*(a5 + 26))
  {
    if (buffer)
    {
      v16 = CFRetain(buffer);
    }

    else
    {
      v16 = 0;
    }

    *(a5 + 26) = v16;
  }

  v17 = *(a4 + 16);
  if (*(v17 + 72) != 1936484717 || *(v17 + 76) != 5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___canvasItemDecodeCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_16;
    block[4] = a5;
    block[5] = a4;
    block[6] = a5;
    block[7] = buffer;
    v34 = 0;
    v35 = 1;
    v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    os_unfair_lock_lock((a4 + 14576));
    CFArrayAppendValue(*(a4 + 14592), v18);
    dispatch_async(*(a5 + 5), v18);
    os_unfair_lock_unlock((a4 + 14576));
    dispatch_semaphore_signal(*(a4 + 224));
    goto LABEL_29;
  }

  if (*v9 == 1)
  {
    kdebug_trace();
  }

  v19 = *(a4 + 8);
  v20 = *(v19 + 32);
  v21 = *(v19 + 49);
  v22 = *(v19 + 50);
  v23 = *(v19 + 51);
  v24 = *(v19 + 52);
  v25 = *(v19 + 48);
  v26 = *(v19 + 88);
  LODWORD(v19) = *(a5 + 46);
  v27 = *a5;
  v28 = *(a5 + 10);
  v37[6] = *(a5 + 9);
  v37[7] = v28;
  v38 = *(a5 + 22);
  v29 = *(a5 + 6);
  v37[2] = *(a5 + 5);
  v37[3] = v29;
  v30 = *(a5 + 8);
  v37[4] = *(a5 + 7);
  v37[5] = v30;
  v31 = *(a5 + 4);
  v37[0] = *(a5 + 3);
  v37[1] = v31;
  v32 = *(a5 + 24);
  v36[0] = *(a5 + 8);
  v36[1] = v32;
  a2 = _transferToCanvas(v20, v21, v22, v23, v24, v25, v26, buffer, v37, v19, v36, v27, 0, 0);
  if (!a2 && *v9 == 1)
  {
    kdebug_trace();
LABEL_10:
    a2 = 0;
  }

LABEL_11:
  v11 = *(a5 + 26);
  if (v11)
  {
    CFRelease(v11);
    *(a5 + 26) = 0;
  }

  v12 = *(a5 + 27);
  if (v12)
  {
    CFRelease(v12);
    *(a5 + 27) = 0;
  }

  _asyncCanvasDecodeFinished(a4, a5, a2, 0);
LABEL_29:
  if (*v9 == 1)
  {
    kdebug_trace();
  }
}

uint64_t VTTileDecompressionOutputCallback_Gateway(uint64_t a1)
{
  if (!a1)
  {
    return VTTileDecompressionOutputCallback_Gateway_cold_1();
  }

  if (*a1 == 1 && (v1 = *(a1 + 16)) != 0)
  {
    v2 = *(a1 + 8);

    return v1(v2);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t _decodeItem(_BOOL8 *a1, void *a2, unint64_t DefaultTripletsForTransfer, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v10 = a9;
  v1363 = *MEMORY[0x1E69E9840];
  v1321 = 0;
  pixelBuffer = 0;
  if ((a7 != 0) != (a9 == 0))
  {
    return 4294950306;
  }

  v12 = a7;
  v17 = a1;
  if (*a1 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a1[1] + 16), *a1))
  {
    goto LABEL_1078;
  }

  *size = 0;
  LODWORD(v1347[0]) = 0;
  LODWORD(__src[0]) = 0;
  DictionaryRepresentation = CFGetAllocator(a2);
  v1306 = a2;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    OutputFromConstituents = 4294954514;
    goto LABEL_9;
  }

  v19(FigBaseObject, *MEMORY[0x1E6965EF8], DictionaryRepresentation, size);
  OUTLINED_FUNCTION_35_1();
  if (v30)
  {
    OutputFromConstituents = 0;
LABEL_9:
    v22 = v1306;
    goto LABEL_10;
  }

  OutputFromConstituents = v20;
  v22 = v1306;
  if (!v20)
  {
    if (CMPhotoCFDictionaryGetInt32IfPresent() && CMPhotoCFDictionaryGetInt32IfPresent())
    {
      OutputFromConstituents = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_19();
      OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

LABEL_10:
  if (*size)
  {
    CFRelease(*size);
  }

  if (OutputFromConstituents)
  {
    goto LABEL_1070;
  }

  ItemTypeFromReader = _verifyPixelInformationFromPictureReader(v22, 0);
  if (ItemTypeFromReader || (ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(v22, &v1321), ItemTypeFromReader))
  {
    OutputFromConstituents = ItemTypeFromReader;
    goto LABEL_1070;
  }

  OutputFromConstituents = &v1351;
  DictionaryRepresentation = v1347;
  v1319 = 1;
  OUTLINED_FUNCTION_28_3();
  v1302 = v12;
  if (v30)
  {
    v71 = v17;
    v10 = *v17;
    v17 = *(v17 + 8);
    memcpy(__src, (v71 + 16), 0x50uLL);
    a6 = *a5;
    DefaultTripletsForTransfer = *(a5 + 1);
    v72 = *(a5 + 2);
    v73 = a5;
    v74 = *(a5 + 3);
    v75 = *(v73 + 4);
    v76 = *(v73 + 56);
    __dst[0] = *(v73 + 40);
    __dst[1] = v76;
    v77 = *(v73 + 88);
    __dst[2] = *(v73 + 72);
    __dst[3] = v77;
    v1289 = *(v73 + 26);
    DictionaryRepresentation = v73[112];
    v1292 = v73[114];
    v1275 = v73;
    v78 = v22;
    v79 = *(v73 + 15);
    cf[0] = 0;
    *&v1351 = 0;
    *&v1360 = 0;
    *&v1337 = 0;
    *&v1332 = 0;
    *&v1355 = 0;
    LODWORD(v1353) = -1;
    LODWORD(v1340) = -1;
    memset(v1349, 0, 32);
    v80 = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v78, cf, v1349, &v1319);
    if (!v80)
    {
      if (!(DefaultTripletsForTransfer | v72))
      {
        if (!(v74 | v75) || (v74 == *&v1349[16] ? (v81 = v75 == *&v1349[24]) : (v81 = 0), v81))
        {
          if (a6)
          {
            memset(v1349, 0, 32);
          }

          goto LABEL_72;
        }
      }

      if (a6)
      {
        *v1349 = DefaultTripletsForTransfer;
        *&v1349[8] = v72;
        *&v1349[16] = v74;
        *&v1349[24] = v75;
        goto LABEL_72;
      }

      *size = DefaultTripletsForTransfer;
      *&size[8] = v72;
      *&size[16] = v74;
      *&size[24] = v75;
      v80 = CMPhotoApplyCropCMPhotoRectToRect(v1349, size);
      if (!v80)
      {
LABEL_72:
        *(v1357 + 5) = *v1349;
        BYTE4(v1357[0]) = 0;
        LODWORD(v1357[0]) = 0;
        size[119] = 0;
        *&size[115] = 0;
        *&size[129] = 0;
        *&size[132] = 0;
        *(&v1357[2] + 5) = *&v1349[16];
        *&size[88] = __dst[3];
        v1347[0] = v10;
        v1347[1] = v17;
        memcpy(&v1347[2], __src, 0x50uLL);
        *&size[3] = *v1357;
        *size = 1;
        size[2] = 0;
        *&size[19] = *&v1357[2];
        *&size[32] = *&v1349[24];
        memset(&size[40], 0, 48);
        *&size[104] = v1289;
        *&size[112] = DictionaryRepresentation;
        size[114] = v1292;
        *&size[120] = v79;
        size[128] = 0;
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_31_0();
        v90 = _decodeItem(v82, v83, v84, v85, v86, v87, v88, v89, v652);
        a5 = v1275;
        if (!v90)
        {
          CMPhotoRemoveColorPropertiesFromBuffer(v1351);
          OUTLINED_FUNCTION_26_2();
          OutputFromConstituents = _copyColorInfoForItem(v91, v92, v93, v94, v95, v96, v97, v98, &v1332, &v1355, &v1353, &v1340, 0);
          OUTLINED_FUNCTION_69_0();
          if (!v99)
          {
            CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1360, v1337, v1332, v1355, v1351);
            CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1353, v1340, v1351);
            pixelBuffer = v1351;
            *&v1351 = 0;
          }

LABEL_75:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v1351)
          {
            CFRelease(v1351);
          }

          if (v1360)
          {
            CFRelease(v1360);
          }

          if (v1337)
          {
            CFRelease(v1337);
          }

          if (v1332)
          {
            CFRelease(v1332);
          }

          v100 = v1355;
          if (v1355)
          {
            goto LABEL_362;
          }

          goto LABEL_363;
        }

        OutputFromConstituents = v90;
LABEL_551:
        OUTLINED_FUNCTION_69_0();
        goto LABEL_75;
      }
    }

    OutputFromConstituents = v80;
    a5 = v1275;
    goto LABEL_551;
  }

  if (v24 == 1768912492)
  {
    v1272 = *(v17 + 16);
    v1283 = *(v17 + 24);
    v1286 = *v17;
    v1353 = *(v17 + 32);
    v1354 = *(v17 + 48);
    v1290 = *(v17 + 49);
    v101 = *(v17 + 66);
    v1351 = *(v17 + 50);
    v1352[0] = v101;
    *(v1352 + 14) = *(v17 + 80);
    HIDWORD(v1193) = *a5;
    LODWORD(theArray) = a5[1];
    OUTLINED_FUNCTION_96_0();
    v102 = *(a5 + 1);
    v103 = *(a5 + 2);
    OutputFromConstituents = *(a5 + 3);
    v1207 = *(a5 + 4);
    v104 = *(a5 + 40);
    v105 = *(a5 + 88);
    *&v1349[32] = *(a5 + 72);
    v1350 = v105;
    v106 = *(a5 + 56);
    *v1349 = v104;
    *&v1349[16] = v106;
    *&v104 = *(a5 + 13);
    v1123 = v104;
    LODWORD(v1180) = a5[112];
    LODWORD(v1110) = a5[113];
    LODWORD(v1265) = a5[114];
    v1316 = a5[119];
    v1315 = *(a5 + 115);
    v1258 = *(a5 + 15);
    v1096 = *(a5 + 16);
    v1325 = 0;
    v1300 = v107;
    DefaultTripletsForTransfer = CFGetAllocator(v107);
    DictionaryRepresentation = FigPictureReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      OUTLINED_FUNCTION_86_0();
      goto LABEL_1028;
    }

    v991 = OutputFromConstituents;
    *&v1005 = v103;
    *(&v1005 + 1) = v102;
    v108 = OUTLINED_FUNCTION_75_0();
    if (v109(v108))
    {
      OUTLINED_FUNCTION_47_0();
      goto LABEL_1028;
    }

    DictionaryRepresentation = v1347;
    memset(__dst, 0, 64);
    v110 = v1325;
    v1347[0] = 0;
    *&__src[0] = 0;
    v1357[0] = 0;
    v1279 = CFGetAllocator(v1325);
    CFDictionaryGetValue(v110, *MEMORY[0x1E69722E8]);
    v111 = FigCFEqual();
    OutputFromConstituents = MEMORY[0x1E69722E0];
    v1295 = v17;
    if (v111)
    {
      v112 = CFDictionaryGetValue(v110, *MEMORY[0x1E69722D8]);
      if (!v112)
      {
LABEL_582:
        v217 = 1;
        goto LABEL_327;
      }

      v113 = v112;
      *size = *MEMORY[0x1E695F060];
      v980 = *MEMORY[0x1E6972358];
      if (FigCFDictionaryGetCGSizeIfPresent())
      {
        *&v114 = OUTLINED_FUNCTION_91_0(*size);
        v1051 = v114;
        if (!v114 || (v1040 = *(&v114 + 1)) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_19();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
          v112 = 0;
          v217 = 1;
          goto LABEL_326;
        }

        *v1075 = v114;
        v115 = CFDictionaryGetValue(v113, *MEMORY[0x1E6972350]);
        if (v115)
        {
          v22 = v115;
          Count = CFArrayGetCount(v115);
          v117 = OUTLINED_FUNCTION_80_0(Count);
          v1155 = v117;
          if (!Count)
          {
LABEL_101:
            v120 = CFDictionaryGetValue(v110, *OutputFromConstituents);
            if (!v120)
            {
              v217 = 1;
              goto LABEL_603;
            }

            v110 = v120;
            v121 = CFArrayGetCount(v120);
            if (Count != 2 * v121)
            {
LABEL_601:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_19();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              goto LABEL_602;
            }

            v122 = v121;
            v112 = v1155;
            v123 = *v1075;
            if (!v122)
            {
              v158 = 0;
              v159 = 0;
              v156 = 0;
              v157 = 0;
              v155 = 0;
              v154 = 0;
              goto LABEL_325;
            }

            v22 = 0;
            v1220 = 0;
            v959 = 0;
            v970 = 0;
            v124 = 0;
            LODWORD(v1028) = 0;
            OutputFromConstituents = 0;
            v899 = 0;
            v929 = 0;
            v939 = 0;
            v949 = 0;
            v1244 = *MEMORY[0x1E69722B8];
            v909 = (v1040 - 1);
            v919 = (v1051 - 1);
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v110, v124);
              if (!ValueAtIndex)
              {
                goto LABEL_601;
              }

              v126 = ValueAtIndex;
              cf[0] = 0;
              v127 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (!v127 || v127(v126, cf))
              {
                goto LABEL_602;
              }

              if (cf[0] >= 1)
              {
                v128 = 0;
                while (1)
                {
                  if (*&__src[0])
                  {
                    CFRelease(*&__src[0]);
                    *&__src[0] = 0;
                  }

                  if (v1357[0])
                  {
                    CFRelease(v1357[0]);
                    v1357[0] = 0;
                  }

                  v129 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (!v129)
                  {
                    break;
                  }

                  if (v129(v126, v128, __src))
                  {
                    break;
                  }

                  v103 = FigPictureReaderGetFigBaseObject();
                  v130 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (!v130 || v130(v103, v1244, v1279, v1357) || CMPhotoGetAuxiliaryImageTypeFromURN(v1357[0]) == 3)
                  {
                    break;
                  }

                  if (++v128 >= cf[0])
                  {
                    goto LABEL_120;
                  }
                }

                v217 = 1;
                v17 = v1295;
                OUTLINED_FUNCTION_45_0();
                v218 = v1300;
                DictionaryRepresentation = v1347;
                goto LABEL_604;
              }

LABEL_120:
              if (v1347[0])
              {
                CFRelease(v1347[0]);
                v1347[0] = 0;
              }

              v131 = FigPictureReaderGetFigBaseObject();
              v132 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              DictionaryRepresentation = v1347;
              if (!v132 || v132(v131, v980, v1279, v1347))
              {
                goto LABEL_602;
              }

              if (!CGSizeMakeWithDictionaryRepresentation(v1347[0], size))
              {
                goto LABEL_601;
              }

              v133 = vcvtad_u64_f64(*size);
              if (!v133)
              {
                goto LABEL_601;
              }

              v134 = vcvtad_u64_f64(*&size[8]);
              if (!v134)
              {
                goto LABEL_601;
              }

              if (v124)
              {
                v135 = v22 - 1;
                v123 = *v1075;
                if (OutputFromConstituents >= v22 - 1 || (OUTLINED_FUNCTION_90_0(), v136 == v137))
                {
                  if (OutputFromConstituents == v135 && !v1028)
                  {
                    v140 = v970 >= v133 && v939 <= v133 && v959 == v134;
                    v949 = v133;
                    if (!v140)
                    {
                      goto LABEL_602;
                    }

                    goto LABEL_174;
                  }

                  if (!OutputFromConstituents)
                  {
                    OUTLINED_FUNCTION_90_0();
                    if (v30)
                    {
                      v147 = v970 == v133 && v959 >= v134;
                      v148 = !v147 || v899 > v134;
                      v929 = v134;
                      if (v148)
                      {
                        goto LABEL_602;
                      }

                      goto LABEL_174;
                    }
                  }

                  if (OutputFromConstituents == v135)
                  {
                    v138 = v949;
                    if (v1028 != v1220 - 1)
                    {
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    v138 = v970;
                  }

                  v149 = v138 == v133;
                  v150 = v929;
LABEL_169:
                  if (!v149 || v150 != v134)
                  {
                    goto LABEL_602;
                  }

                  goto LABEL_174;
                }

                v138 = v970;
LABEL_166:
                v149 = v138 == v133;
                v150 = v959;
                goto LABEL_169;
              }

              v22 = ((v919 + v133) / v133);
              v1220 = ((v909 + v134) / v134);
              v123 = *v1075;
              if (v122 != v1220 * v22)
              {
                goto LABEL_602;
              }

              if (((v909 + v134) / v134))
              {
                break;
              }

LABEL_151:
              v939 = v1051 - (v22 - 1) * v133;
              v949 = v133;
              v899 = (v1040 - (v1220 - 1) * v134);
              v929 = v134;
              v959 = v134;
              v970 = v133;
LABEL_174:
              v152 = OutputFromConstituents + 1 == v22;
              if (OutputFromConstituents + 1 == v22)
              {
                OutputFromConstituents = 0;
              }

              else
              {
                OutputFromConstituents = (OutputFromConstituents + 1);
              }

              v153 = v1028;
              if (v152)
              {
                v153 = v1028 + 1;
              }

              LODWORD(v1028) = v153;
              if (++v124 == v122)
              {
                v154 = v22;
                v155 = v1220;
                v112 = v1155;
                v156 = v959;
                v157 = v970;
                v158 = v949;
                v159 = v929;
LABEL_325:
                v217 = 0;
                *&__dst[0] = v154;
                *(&__dst[0] + 1) = v155;
                *&__dst[1] = v157;
                *(&__dst[1] + 1) = v156;
                *&__dst[2] = v158;
                *(&__dst[2] + 1) = v159;
                __dst[3] = v123;
                v17 = v1295;
LABEL_326:
                v22 = v1306;
LABEL_327:
                OutputFromConstituents = &v1351;
                v218 = v1300;
                goto LABEL_605;
              }
            }

            v141 = 0;
            v142 = 0;
            v143 = 0;
            while (!((v919 + v133) / v133))
            {
LABEL_150:
              v143 += v134;
              if (++v141 >= v1220)
              {
                goto LABEL_151;
              }
            }

            v144 = 0;
            v145 = (v1155 + 4 + 4 * v142);
            v146 = -v133;
            while (1)
            {
              v146 += v133;
              if (v146 != *(v145 - 1) || *v145 != v143)
              {
                break;
              }

              v142 += 2;
              v145 += 2;
              if (++v144 >= v22)
              {
                goto LABEL_150;
              }
            }

LABEL_602:
            v217 = 1;
            v17 = v1295;
LABEL_603:
            OUTLINED_FUNCTION_45_0();
            v218 = v1300;
LABEL_604:
            v112 = v1155;
LABEL_605:
            free(v112);
            if (v1347[0])
            {
              CFRelease(v1347[0]);
            }

            if (*&__src[0])
            {
              CFRelease(*&__src[0]);
            }

            if (v1357[0])
            {
              CFRelease(v1357[0]);
            }

            v1305 = a6;
            if (v217)
            {
              LODWORD(v1244) = 0;
LABEL_613:
              DefaultTripletsForTransfer = v1325;
              *(OutputFromConstituents + 80) = *(OutputFromConstituents + 48);
              v1356 = v1354;
              v363 = *(OutputFromConstituents + 16);
              *(OutputFromConstituents + 176) = *OutputFromConstituents;
              *(OutputFromConstituents + 192) = v363;
              *(OutputFromConstituents + 206) = *(OutputFromConstituents + 30);
              OUTLINED_FUNCTION_49();
              v1187 = CFGetAllocator(v218);
              *&v364 = OUTLINED_FUNCTION_51_0();
              *(v365 + 48) = v364;
              *(v365 + 64) = v364;
              v1340 = 0uLL;
              if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v22, v218[28], &v1360, &v1340) || OUTLINED_FUNCTION_115())
              {
                OUTLINED_FUNCTION_101_0();
                v10 = a9;
                LOBYTE(v22) = v1244;
              }

              else
              {
                v366 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722D8]);
                DictionaryRepresentation = v366;
                v10 = a9;
                LOBYTE(v22) = v1244;
                if (v366)
                {
                  v367 = CFDictionaryGetValue(v366, *MEMORY[0x1E6972358]);
                  if (!v367 || (value = 0uLL, !CMPhotoSizeMakeWithDictionaryRepresentation(v367, &value)) || (value.i64[0] == v1340 ? (v368 = value.i64[1] == *(&v1340 + 1)) : (v368 = 0), !v368))
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    OUTLINED_FUNCTION_101_0();
                    goto LABEL_1011;
                  }

                  v369 = CFDictionaryGetValue(DictionaryRepresentation, *MEMORY[0x1E6972348]);
                  if (v369 && (v1279 = CFRetain(v369)) != 0)
                  {
                    v370 = CFDictionaryGetValue(DictionaryRepresentation, *MEMORY[0x1E6972350]);
                    if (v370)
                    {
                      v371 = v17;
                      v372 = CFArrayGetCount(v370);
                      if (v372)
                      {
                        v373 = v372;
                        v17 = OUTLINED_FUNCTION_80_0(v372);
                        v374 = 0;
                        DictionaryRepresentation = v17;
                        while (FigCFArrayGetInt32AtIndex())
                        {
                          ++v374;
                          v17 += 4;
                          if (v373 == v374)
                          {
                            goto LABEL_935;
                          }
                        }
                      }

                      else
                      {
                        DictionaryRepresentation = 0;
                      }
                    }

                    else
                    {
                      v371 = v17;
                      DictionaryRepresentation = 0;
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
                    CFRelease(v1279);
                    v10 = a9;
                    v17 = v371;
                    LOBYTE(v22) = v1244;
                    v375 = DictionaryRepresentation;
                  }

                  else
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
                    v375 = 0;
                  }

                  free(v375);
                  v1279 = 0;
                  DictionaryRepresentation = 0;
                  v103 = 0;
                  if (OutputFromConstituents)
                  {
                    goto LABEL_1011;
                  }

LABEL_935:
                  v516 = v1340;
                  v1347[0] = 0;
                  v1357[0] = 0;
                  cf[0] = 0;
                  *&v1337 = 0;
                  LODWORD(v1331) = -1;
                  LODWORD(v1330[0]) = -1;
                  *&v1332 = 0;
                  *&v1336 = 0;
                  v517 = _copyColorInfoForItem(v1300, v1306, 0, 0, &v1336, 0, v1347, v1357, cf, &v1337, &v1331, v1330, 0);
                  if (v517)
                  {
                    OutputFromConstituents = v517;
                    goto LABEL_1094;
                  }

                  *&v518 = OUTLINED_FUNCTION_51_0();
                  *(v519 + 96) = v518;
                  *(v519 + 112) = v518;
                  OUTLINED_FUNCTION_55_0();
                  v522 = _createPixelBuffer(v520, v521, v1290, 0x42475241u, v516, *(&v516 + 1), v516, *(&v516 + 1), v662, v677, v692, v708);
                  v523 = v1332;
                  if (v522)
                  {
                    OutputFromConstituents = v522;
                    if (v1332)
                    {
                      goto LABEL_1093;
                    }

                    v103 = 0;
                  }

                  else if (v1332)
                  {
                    v524 = DictionaryRepresentation;
                    v525 = OUTLINED_FUNCTION_5_2();
                    v527 = CVPixelBufferLockBaseAddress(v525, v526);
                    if (v527)
                    {
                      OutputFromConstituents = v527;
                    }

                    else
                    {
                      BytesPerRow = CVPixelBufferGetBytesPerRow(v523);
                      CVPixelBufferGetHeight(v523);
                      v529 = OUTLINED_FUNCTION_106_0();
                      Width = CVPixelBufferGetWidth(v529);
                      BaseAddress = CVPixelBufferGetBaseAddress(v523);
                      v532 = CGBitmapContextCreate(BaseAddress, Width, v17, 8uLL, BytesPerRow, v1347[0], 0x2006u);
                      if (v532)
                      {
                        v17 = v532;
                        CGContextSetFillColorWithColor(v532, v1279);
                        v1365.size.width = v516;
                        v1365.size.height = *(&v516 + 1);
                        v1365.origin.x = 0.0;
                        v1365.origin.y = 0.0;
                        CGContextFillRect(v17, v1365);
                        CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1347[0], v1357[0], cf[0], v1337, v523);
                        CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1331, LODWORD(v1330[0]), v523);
                        CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1336, v523);
                        OutputFromConstituents = 0;
                        *&v1332 = 0;
                        DictionaryRepresentation = v524;
                        v103 = v17;
                        goto LABEL_941;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_19();
                      OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v662, v677, v692);
                      v650 = OUTLINED_FUNCTION_5_2();
                      CVPixelBufferUnlockBaseAddress(v650, v651);
                    }

                    DictionaryRepresentation = v524;
LABEL_1093:
                    CFRelease(v523);
LABEL_1094:
                    v103 = 0;
                    v523 = 0;
                  }

                  else
                  {
                    v103 = 0;
                    OutputFromConstituents = 4294950305;
                  }

LABEL_941:
                  if (v1336)
                  {
                    CFRelease(v1336);
                  }

                  if (v1347[0])
                  {
                    CFRelease(v1347[0]);
                  }

                  if (v1357[0])
                  {
                    CFRelease(v1357[0]);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v1337)
                  {
                    CFRelease(v1337);
                  }

                  if (!OutputFromConstituents)
                  {
                    LODWORD(v1155) = CVPixelBufferGetPixelFormatType(v523);
                    v533 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722E0]);
                    if (v533)
                    {
                      memset(v1357, 0, 37);
                      v1334 = 0;
                      v1335 = 0;
                      LODWORD(BOOLean) = 0;
                      *(&BOOLean + 3) = 0;
                      v1337 = 0u;
                      v1338 = 0u;
                      v1336 = 0uLL;
                      memset(cf, 0, 37);
                      v1329 = 0;
                      v1328 = 0;
                      *(v1327 + 3) = 0;
                      v1327[0] = 0;
                      DefaultTripletsForTransfer = cf;
                      v1332 = 0u;
                      v1333 = 0u;
                      v1331 = 0uLL;
                      v1330[0] = 0;
                      v1330[1] = 0;
                      theArrayc = v533;
                      v1070 = CFArrayGetCount(v533);
                      if (v1070)
                      {
                        v534 = 0;
                        a6 = size;
                        *&v1123 = &size[3];
                        v17 = *MEMORY[0x1E69722B8];
                        LODWORD(v1110) = v1290 == 0;
                        v1075[0] = DictionaryRepresentation;
                        v1103 = v103;
                        while (1)
                        {
                          if (v1346)
                          {
                            CFRelease(v1346);
                            v1346 = 0;
                          }

                          if (v1342)
                          {
                            CFRelease(v1342);
                            v1342 = 0;
                          }

                          if (v1345)
                          {
                            CFRelease(v1345);
                            v1345 = 0;
                          }

                          if (v1341)
                          {
                            CFRelease(v1341);
                            v1341 = 0;
                          }

                          v535 = (DictionaryRepresentation + 8 * v534);
                          v536 = *v535;
                          *v1228 = v1340;
                          v537 = CFArrayGetValueAtIndex(theArrayc, v534);
                          if (!v537)
                          {
                            break;
                          }

                          v545 = v537;
                          *&v1347[4] = v1355;
                          *(&v1347[6] + 2) = __src[0];
                          *(&v1347[8] + 2) = __src[1];
                          *&v1347[10] = *(&__src[1] + 14);
                          v546 = *&v1357[2];
                          *v1123 = *v1357;
                          *(v1123 + 16) = v546;
                          *&size[40] = v1337;
                          *&size[56] = v1338;
                          OUTLINED_FUNCTION_25_3(v537, v538, v539, v540, v541, v542, v543, v544, v662, v677, v692, v708, v722, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v991, v1005, *(&v1005 + 1), v1028, v1040, v1051, v1070, v1075[0], v1075[1], v1103, v1110, v1123, *(&v1123 + 1), v1145, v1155, theArrayc, v1187, v1193, v1207, v1228[0], v1228[1], v1244, v1258, v1265);
                          *(v548 + 48) = v547;
                          BYTE1(v1347[6]) = v1290;
                          OUTLINED_FUNCTION_23_2();
                          *(v549 + 29) = *(&v1357[3] + 5);
                          *&size[72] = vsubw_s32(v1229, v536);
                          *&size[88] = v550;
                          *&size[104] = v1163;
                          *&size[112] = 0;
                          OUTLINED_FUNCTION_107_0(v551, v552, v553, v554, v555, v556, v557, v558, v663, v678, v693, v709, v723, v733, v744, v755, v765, v775, v785, v795, v805, v815, v825, v835, v845, v855, v865, v875, objectf, v895, v905, v915, v925, v935, v945, v955, v966, v976, v986, v999, v1012, v1024, v1036, v1047, v1059, v1071, v1082, v1091, v1104, v1116, v1131, v1141, v1151, v1163, theArrayi, v1189, v1199, v1214, v1229.i64[0], v1229.i64[1], v1251, v1261, v1267);
                          size[119] = v1335;
                          *&size[115] = v1334;
                          OUTLINED_FUNCTION_56_0(v559, v560, v561, v562, v563, v564, v565, v566, v664, v679, v694, v710, v724, v734, v745, v756, v766, v776, v786, v796, v806, v816, v826, v836, v846, v856, v866, v876, objectg, v896, v906, v916, v926, v936, v946, v956, v967, v977, v987, v1000, v1013, v1025, v1037, v1048, v1060, v1072, v1083, v1092, v1105, v1117, v1132, v1142, v1152, v1164, theArrayj, v1190, v1200, v1215, v1230, v1240, v1252, v1262);
                          *&size[132] = *(&BOOLean + 3);
                          *&size[129] = BOOLean;
                          OUTLINED_FUNCTION_17_6();
                          OUTLINED_FUNCTION_31_0();
                          WrappedPixelBufferForType = _decodeItem(v567, v568, v569, v570, v571, v572, v573, v574, v665);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          v576 = v1187;
                          WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v1187, v1346, v1110, 4, &v1342);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          v1326 = 0;
                          v577 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                          if (!v577)
                          {
LABEL_991:
                            OutputFromConstituents = 4294954514;
                            goto LABEL_992;
                          }

                          WrappedPixelBufferForType = v577(v545, &v1326);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          if (v1326 >= 1)
                          {
                            DefaultTripletsForTransfer = 0;
                            while (1)
                            {
                              if (v1344)
                              {
                                CFRelease(v1344);
                                v1344 = 0;
                              }

                              if (v1343)
                              {
                                CFRelease(v1343);
                                v1343 = 0;
                              }

                              v578 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                              if (!v578)
                              {
                                goto LABEL_991;
                              }

                              WrappedPixelBufferForType = v578(v545, DefaultTripletsForTransfer, &v1344);
                              if (WrappedPixelBufferForType)
                              {
                                goto LABEL_1098;
                              }

                              v579 = FigPictureReaderGetFigBaseObject();
                              v580 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (!v580)
                              {
                                goto LABEL_991;
                              }

                              WrappedPixelBufferForType = v580(v579, v17, v1187, &v1343);
                              if (WrappedPixelBufferForType)
                              {
                                goto LABEL_1098;
                              }

                              AuxiliaryImageTypeFromURN = CMPhotoGetAuxiliaryImageTypeFromURN(v1343);
                              if (AuxiliaryImageTypeFromURN == 3)
                              {
                                break;
                              }

                              if (++DefaultTripletsForTransfer >= v1326)
                              {
                                goto LABEL_980;
                              }
                            }

                            *&v1347[4] = v1355;
                            *(&v1347[6] + 2) = __src[0];
                            *(&v1347[8] + 2) = __src[1];
                            *&v1347[10] = *(&__src[1] + 14);
                            v590 = *&cf[2];
                            *v1123 = *cf;
                            *(v1123 + 16) = v590;
                            *&size[40] = v1332;
                            *&size[56] = v1333;
                            *&size[72] = v1331;
                            OUTLINED_FUNCTION_25_3(AuxiliaryImageTypeFromURN, v1344, v582, v583, v584, v585, v586, v587, v662, v677, v692, v708, v722, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v991, v1005, *(&v1005 + 1), v1028, v1040, v1051, v1070, v1075[0], v1075[1], v1103, v1110, v1123, *(&v1123 + 1), v1145, v1155, theArrayc, v1187, v1193, v1207, v1231, v1241, v1244, v1258, v1265);
                            *(v592 + 48) = v591;
                            BYTE1(v1347[6]) = v1290;
                            OUTLINED_FUNCTION_23_2();
                            *(v594 + 29) = *(v593 + 29);
                            *&size[88] = v595;
                            *&size[104] = 1278226488;
                            *&size[112] = 1;
                            OUTLINED_FUNCTION_107_0(v596, v597, v598, v599, v600, v601, v602, v603, v666, v680, v695, v711, v725, v735, v746, v757, v767, v777, v787, v797, v807, v817, v827, v837, v847, v857, v867, v877, objecth, v897, v907, v917, v927, v937, v947, v957, v968, v978, v988, v1001, v1014, v1026, v1038, v1049, v1061, v1073, v1084, v1093, v1106, v1118, v1133, v1143, v1153, v1165, theArrayk, v1191, v1201, v1216, v1232, v1242, v1253, v1263, v1268);
                            size[119] = v1329;
                            *&size[115] = v1328;
                            OUTLINED_FUNCTION_56_0(v604, v605, v606, v607, v608, v609, v610, v611, v667, v681, v696, v712, v726, v736, v747, v758, v768, v778, v788, v798, v808, v818, v828, v838, v848, v858, v868, v878, objecti, v898, v908, v918, v928, v938, v948, v958, v969, v979, v989, v1002, v1015, v1027, v1039, v1050, v1062, v1074, v1085, v1094, v1107, v1119, v1134, v1144, v1154, v1166, theArrayl, v1192, v1202, v1217, v1233, v1243, v1254, v1264);
                            *&size[132] = *(v612 + 35);
                            *&size[129] = v1327[0];
                            OUTLINED_FUNCTION_17_6();
                            OUTLINED_FUNCTION_10_0();
                            OUTLINED_FUNCTION_31_0();
                            WrappedPixelBufferForType = _decodeItem(v613, v614, v615, v616, v617, v618, v619, v620, v668);
                            if (WrappedPixelBufferForType)
                            {
                              goto LABEL_1098;
                            }

                            WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v576, v1345, v1110, 4, &v1341);
                            if (WrappedPixelBufferForType)
                            {
                              goto LABEL_1098;
                            }
                          }

LABEL_980:
                          DefaultTripletsForTransfer = v1342;
                          if (v1341)
                          {
                            v588 = CGImageCreateWithMask(v1342, v1341);
                            v103 = v1103;
                            if (!v588)
                            {
                              break;
                            }

                            DefaultTripletsForTransfer = v588;
                            if (v1342)
                            {
                              CFRelease(v1342);
                            }

                            v1342 = DefaultTripletsForTransfer;
                          }

                          else
                          {
                            v103 = v1103;
                          }

                          v589 = CGImageGetWidth(DefaultTripletsForTransfer);
                          v1366.size.height = CGImageGetHeight(v1342);
                          v1366.origin.x = v535->i32[0];
                          DictionaryRepresentation = v1075[0];
                          v1366.origin.y = (*(&v1340 + 1) - *(v1075[0] + 4 * ((2 * v534) | 1))) - v1366.size.height;
                          v1366.size.width = v589;
                          CGContextDrawImage(v103, v1366, v1342);
                          ++v534;
                          DefaultTripletsForTransfer = cf;
                          if (v534 == v1070)
                          {
                            goto LABEL_995;
                          }
                        }

                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_19();
                        WrappedPixelBufferForType = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_1098:
                        OutputFromConstituents = WrappedPixelBufferForType;
LABEL_992:
                        OUTLINED_FUNCTION_41_1();
                        LOBYTE(v22) = v1244;
                        DictionaryRepresentation = v1075[0];
                        v103 = v1103;
LABEL_993:
                        if (v523)
                        {
                          v621 = OUTLINED_FUNCTION_5_2();
                          CVPixelBufferUnlockBaseAddress(v621, v622);
                          CFRelease(v523);
                        }

LABEL_1010:
                        v10 = a9;
                        goto LABEL_1011;
                      }

LABEL_995:
                      CGContextFlush(v103);
                      if (v103)
                      {
                        CFRelease(v103);
                      }

                      v623 = OUTLINED_FUNCTION_5_2();
                      CVPixelBufferUnlockBaseAddress(v623, v624);
                      OUTLINED_FUNCTION_41_1();
                      LOBYTE(v22) = v1244;
                      if (HIDWORD(v1193))
                      {
                        v1360 = 0uLL;
                        *v1361 = v1340;
                      }

                      if (v1005 == 0 && (!(v991 | v1207) || (v991 == *v1361 ? (v626 = v1207 == *&v1361[8]) : (v626 = 0), v626)) || (*size = *(&v1005 + 1), *&size[8] = v1005, *&size[16] = v991, *&size[24] = v1207, v625 = CMPhotoApplyCropCMPhotoRectToRect(&v1360, size), !v625))
                      {
                        v627 = OUTLINED_FUNCTION_14_5(*&v1360);
                        OutputFromConstituents = OUTLINED_FUNCTION_77_0(v523, v627, v628, *v1361, *&v1361[8]);
                        if (!OutputFromConstituents)
                        {
                          v103 = 0;
                          pixelBuffer = v523;
                          goto LABEL_1010;
                        }
                      }

                      else
                      {
                        OutputFromConstituents = v625;
                      }

                      v103 = 0;
                      goto LABEL_993;
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v662, v677, v692);
                  }

                  OUTLINED_FUNCTION_41_1();
                  LOBYTE(v22) = v1244;
                  goto LABEL_993;
                }

                v1279 = 0;
                v103 = 0;
                OutputFromConstituents = 4294950304;
              }

LABEL_1011:
              if (v1346)
              {
                CFRelease(v1346);
              }

              if (v1345)
              {
                CFRelease(v1345);
              }

              if (v103)
              {
                CFRelease(v103);
              }

              if (v1279)
              {
                CFRelease(v1279);
              }

              if (v1344)
              {
                CFRelease(v1344);
              }

              if (v1343)
              {
                CFRelease(v1343);
              }

              if (v1342)
              {
                CFRelease(v1342);
              }

              if (v1341)
              {
                CFRelease(v1341);
              }

              free(DictionaryRepresentation);
              goto LABEL_1028;
            }

            DefaultTripletsForTransfer = v1325;
            *&__src[0] = v1286;
            *(&__src[0] + 1) = v218;
            *&__src[1] = v1272;
            *(&__src[1] + 1) = v1283;
            *(OutputFromConstituents + 208) = *(OutputFromConstituents + 48);
            LOBYTE(__src[3]) = v1354;
            BYTE1(__src[3]) = v1290;
            v376 = *(OutputFromConstituents + 16);
            *(OutputFromConstituents + 226) = *OutputFromConstituents;
            *(OutputFromConstituents + 242) = v376;
            *(OutputFromConstituents + 256) = *(OutputFromConstituents + 30);
            LODWORD(v1344) = v1317;
            WORD2(v1344) = v1318;
            v377 = *&v1349[16];
            *(OutputFromConstituents + 112) = *v1349;
            *(OutputFromConstituents + 128) = v377;
            v378 = v1350;
            *(OutputFromConstituents + 144) = *&v1349[32];
            *(OutputFromConstituents + 160) = v378;
            LODWORD(v1342) = v1315;
            BYTE4(v1342) = v1316;
            *&v1336 = 0;
            *&v1331 = 0;
            if (v1286)
            {
              v379 = v1286;
            }

            else
            {
              v379 = v218;
            }

            v859 = v379;
            v1330[0] = 0;
            if (OUTLINED_FUNCTION_115())
            {
              OUTLINED_FUNCTION_92_0();
              goto LABEL_902;
            }

            v380 = __dst[0];
            v103 = *(&__dst[1] + 1);
            v1155 = *&__dst[1];
            v939 = *(&__dst[2] + 1);
            v980 = *&__dst[2];
            *(OutputFromConstituents + 80) = __dst[3];
            v1337 = 0u;
            v1338 = 0u;
            if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v22, *(*(&__src[0] + 1) + 28), &v1337, 0))
            {
              goto LABEL_1101;
            }

            v869 = v380;
            v381 = v380 - 1;
            DictionaryRepresentation = *(&v380 + 1) - 1;
            if (HIDWORD(v1193))
            {
              v1337 = 0uLL;
              *&v1338 = v980 + v1155 * v381;
              *(&v1338 + 1) = v939 + v103 * DictionaryRepresentation;
            }

            object = *(&v380 + 1);
            if (v1005 != 0 || v991 | v1207 && (v991 == v1338 ? (v382 = v1207 == *(&v1338 + 1)) : (v382 = 0), !v382))
            {
              *size = *(&v1005 + 1);
              *&size[8] = v1005;
              *&size[16] = v991;
              *&size[24] = v1207;
              if (CMPhotoApplyCropCMPhotoRectToRect(&v1337, size))
              {
LABEL_1101:
                OUTLINED_FUNCTION_92_0();
LABEL_1105:
                a6 = v1305;
                goto LABEL_902;
              }
            }

            v383 = v1337 / v1155;
            v1279 = *(&v1337 + 1) / v103;
            *&v1337 = v1337 % v1155;
            *(&v1337 + 1) %= v103;
            *&v1355 = v1338 + v1337;
            *(&v1355 + 1) = *(&v1338 + 1) + *(&v1337 + 1);
            v1040 = *(&v1338 + 1) + *(&v1337 + 1);
            v1051 = v1338 + v1337;
            v959 = v1338 + v1337 + v1155 + ~((v1338 + v1337 - 1) % v1155);
            *&v1340 = v1155;
            *(&v1340 + 1) = v103;
            v384 = v959 / v1155 * v1155;
            v1028 = *(&v1338 + 1) + *(&v1337 + 1) + v103 + ~((*(&v1338 + 1) + *(&v1337 + 1) - 1) % v103);
            v1068 = v1028 / v103;
            v1075[0] = v959 / v1155;
            v385 = v1028 / v103 * v103;
            *&v1332 = v384;
            *(&v1332 + 1) = v385;
            v1244 = v383;
            if (v959 / v1155 + v383 == v380)
            {
              v384 = v384 - v1155 + v980;
              *&v1332 = v384;
            }

            if (v1068 + v1279 == *(&v380 + 1))
            {
              v385 = v385 - v103 + v939;
              *(&v1332 + 1) = v385;
            }

            if (v383 == v381)
            {
              *&v1340 = v980;
            }

            v839 = v385;
            a6 = v1302;
            if (v1279 == DictionaryRepresentation)
            {
              *(&v1340 + 1) = v939;
            }

            v386 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722E0]);
            if (!v386)
            {
              LODWORD(v1244) = 0;
              LODWORD(v110) = 0;
              goto LABEL_1105;
            }

            v1346 = 0;
            v1226 = v386;
            if (_getLayerReaderAtPosition(v386, v1244, v1279, __dst, &v1346))
            {
              goto LABEL_1101;
            }

            DefaultTripletsForTransfer = v1346;
            DictionaryRepresentation = *(&__src[0] + 1);
            OUTLINED_FUNCTION_88_0();
            value.i32[0] = -1;
            LODWORD(v1345) = -1;
            LOBYTE(v1343) = 0;
            OUTLINED_FUNCTION_26_2();
            v395 = _copyColorInfoForItem(v387, v388, v389, v390, v391, v392, v393, v394, cf, &v1360, value.i32, &v1345, &v1343);
            if (v395)
            {
              LODWORD(v110) = v395;
              v515 = *size;
              if (*size)
              {
LABEL_919:
                CFRelease(v515);
              }

LABEL_920:
              v889 = 0;
              v899 = 0;
              v909 = 0;
              v919 = 0;
              v398 = -1;
              HIDWORD(v849) = -1;
            }

            else
            {
              v396 = v1360;
              if (v1343 && v1360)
              {
                CFRelease(v1360);
                v396 = 0;
                *&v1360 = 0;
              }

              v397 = *size;
              if (*size && v1347[0] && cf[0] && v396)
              {
                v899 = v1347[0];
                v909 = cf[0];
                v919 = v396;
                goto LABEL_667;
              }

              v503 = cf;
              if (cf[0])
              {
                v503 = 0;
              }

              v504 = &v1360;
              if (v396)
              {
                v504 = 0;
              }

              p_value = &value;
              if (value.i32[0] != -1)
              {
                p_value = 0;
              }

              v506 = &v1345;
              if (v1345 != -1)
              {
                v506 = 0;
              }

              v707 = v506;
              v676 = v504;
              v691 = p_value;
              v661 = v503;
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_26_2();
              LODWORD(v110) = _copyColorInfoForItem(v507, v508, v509, v510, v511, v512, v513, v514, v661, v676, v691, v707, 0);
              v515 = *size;
              if (v110)
              {
                if (*size)
                {
                  goto LABEL_919;
                }

                goto LABEL_920;
              }

              v899 = v1347[0];
              v909 = cf[0];
              v919 = v1360;
              v397 = *size;
LABEL_667:
              v889 = v397;
              LODWORD(v110) = 0;
              OUTLINED_FUNCTION_88_0();
              HIDWORD(v849) = value.i32[0];
              v398 = v1345;
            }

            LODWORD(v849) = v398;
            if (v1347[0])
            {
              CFRelease(v1347[0]);
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (v1360)
            {
              CFRelease(v1360);
            }

            if (!v110)
            {
              LODWORD(v1341) = 0;
              ImageCodecTypeFromReader = CMPhotoPictureReaderGetImageCodecTypeFromReader(v1346, &v1341);
              if (!ImageCodecTypeFromReader)
              {
                if (v1341 == 1936484717 && (v1075[0] != 1 || v1068 > 4))
                {
                  LODWORD(v1244) = 0;
                  LODWORD(v110) = -16999;
                  goto LABEL_696;
                }

                v401 = ((v1005 % v103) | (*(&v1005 + 1) % v1155)) == 0;
                if (theArray)
                {
                  v402 = v1319 == 1;
                }

                else
                {
                  v402 = 1;
                }

                v403 = !v402 || v1302 == 0;
                v404 = !v403;
                if (v403)
                {
                  v401 = 0;
                }

                LODWORD(v929) = v401;
                if (v401 && (!*v1302 || *(v1302 + 8) != 0 || *(v1302 + 24) != 0 || !*(v1302 + 40)))
                {
                  LODWORD(v1244) = 0;
                  LODWORD(v110) = -16992;
                  goto LABEL_696;
                }

                HIDWORD(v779) = v404;
                cf[0] = 0;
                *&v1360 = 0;
                memset(size, 0, 24);
                memset(v1347, 0, 24);
                v405 = CFGetAllocator(v1226);
                v949 = v103;
                v809 = v384;
                if (v103 > v1028)
                {
                  LODWORD(v970) = 1;
                  goto LABEL_738;
                }

                DefaultTripletsForTransfer = v405;
                v406 = 0;
                LODWORD(v970) = 0;
                DictionaryRepresentation = *MEMORY[0x1E69722F8];
                while (1)
                {
                  OUTLINED_FUNCTION_59_0();
                  if (v30 || !v147)
                  {
                    break;
                  }

LABEL_704:
                  if (++v406 == v1068)
                  {
                    LODWORD(v970) = 1;
                    goto LABEL_737;
                  }
                }

                v407 = 0;
                while (2)
                {
                  value.i64[0] = 0;
                  if (_getLayerReaderAtPosition(v1226, v407 + v1244, v406 + v1279, __dst, &value))
                  {
                    goto LABEL_737;
                  }

                  LODWORD(v1345) = 0;
                  if (CMPhotoPictureReaderGetItemTypeFromReader(value.i64[0], &v1345))
                  {
                    goto LABEL_737;
                  }

                  OUTLINED_FUNCTION_24_1();
                  v409 = v30 || v408 == 1768187246;
                  if (v409 || v408 == 1768912492)
                  {
                    goto LABEL_737;
                  }

                  if (!(v407 | v406))
                  {
                    FigPictureReaderGetFigBaseObject();
                    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
                    {
                      goto LABEL_736;
                    }

                    v417 = OUTLINED_FUNCTION_108();
                    if (v418(v417))
                    {
                      goto LABEL_736;
                    }

                    v103 = v949;
                    if (v1345 == 1936484717 && _getDecoderReusableInfoForOverlay())
                    {
                      goto LABEL_737;
                    }

                    goto LABEL_726;
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                    cf[0] = 0;
                  }

                  FigPictureReaderGetFigBaseObject();
                  if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v411 = OUTLINED_FUNCTION_108(), v412(v411)))
                  {
LABEL_736:
                    v103 = v949;
                    goto LABEL_737;
                  }

                  v103 = v949;
                  if (v1345 != 1936484717)
                  {
                    OUTLINED_FUNCTION_10_0();
                    LODWORD(v970) = CMFormatDescriptionEqualIgnoringExtensionKeys(v413, v414, v415, v416);
                    if (!v970)
                    {
                      goto LABEL_1102;
                    }

LABEL_726:
                    if (v1075[0] == ++v407)
                    {
                      goto LABEL_704;
                    }

                    continue;
                  }

                  break;
                }

                if (_getDecoderReusableInfoForOverlay())
                {
                  goto LABEL_737;
                }

                v419 = v1347[0];
                if (LODWORD(v1347[0]) == *size)
                {
                  v420 = FigCFEqual();
                  LODWORD(v970) = 0;
                  if (v419 != 1936484717)
                  {
                    goto LABEL_1122;
                  }

                  v384 = v809;
                  if (!v420)
                  {
                    goto LABEL_737;
                  }

                  if (LODWORD(v1347[2]) != *&size[16])
                  {
LABEL_1102:
                    LODWORD(v970) = 0;
                    goto LABEL_737;
                  }

                  LODWORD(v970) = 1;
                  goto LABEL_726;
                }

                LODWORD(v970) = 0;
LABEL_1122:
                v384 = v809;
LABEL_737:
                v17 = v1295;
                a6 = v1302;
                v22 = v1306;
LABEL_738:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v1360)
                {
                  CFRelease(v1360);
                }

                if (*&size[8])
                {
                  CFRelease(*&size[8]);
                }

                if (v1347[1])
                {
                  CFRelease(v1347[1]);
                }

                if (v1341 != 1936484717 || v970)
                {
                  if (v970)
                  {
                    v422 = v1155 != v980 && v1075[0] == v380;
                    LODWORD(v980) = v422;
                    v424 = v103 != v939 && v1068 == *(&v380 + 1);
                    HIDWORD(v829) = v424;
                  }

                  else
                  {
                    HIDWORD(v829) = 0;
                    LODWORD(v980) = 0;
                  }

                  if (v103 > v1028)
                  {
                    DefaultTripletsForTransfer = 0;
                    goto LABEL_799;
                  }

                  v425 = 0;
                  v426 = *MEMORY[0x1E6965D70];
                  v939 = *MEMORY[0x1E6972368];
                  object = *MEMORY[0x1E6972338];
                  while (1)
                  {
                    OUTLINED_FUNCTION_59_0();
                    if (v30 || !v147)
                    {
                      break;
                    }

LABEL_794:
                    if (++v425 == v1068)
                    {
                      DefaultTripletsForTransfer = 0;
                      goto LABEL_797;
                    }
                  }

                  v427 = 0;
                  v428 = v959 / v1155;
                  while (1)
                  {
                    OutputFromConstituents = v17;
                    cf[0] = 0;
                    if (_getLayerReaderAtPosition(v1226, v427 + v1244, v425 + v1279, __dst, cf))
                    {
                      DefaultTripletsForTransfer = 1;
                      a6 = v1302;
                      OUTLINED_FUNCTION_45_0();
                      goto LABEL_798;
                    }

                    v429 = cf[0];
                    *size = 0;
                    v1347[0] = 0;
                    CFGetAllocator(cf[0]);
                    OUTLINED_FUNCTION_106_0();
                    v430 = FigPictureReaderGetFigBaseObject();
                    v431 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (!v431)
                    {
                      break;
                    }

                    v431(v430, v426, v17, size);
                    OUTLINED_FUNCTION_35_1();
                    if (!v30)
                    {
                      break;
                    }

                    CFGetAllocator(v429);
                    OUTLINED_FUNCTION_106_0();
                    v432 = FigPictureReaderGetFigBaseObject();
                    v433 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v433)
                    {
                      v434 = v433(v432, v939, v17, v1347);
                      v435 = v1347[0];
                      if (!v434)
                      {
                        if (CMPhotoCFNumberGetInt(v1347[0]))
                        {
                          break;
                        }

                        v435 = v1347[0];
                      }

                      if (v435)
                      {
                        CFRelease(v435);
                        v1347[0] = 0;
                      }
                    }

                    CFGetAllocator(v429);
                    OUTLINED_FUNCTION_106_0();
                    v436 = FigPictureReaderGetFigBaseObject();
                    v437 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v437)
                    {
                      if (!v437(v436, object, v17, v1347) && CMPhotoCFNumberGetInt32(v1347[0]) != -1)
                      {
                        break;
                      }
                    }

                    LODWORD(v1360) = 0;
                    if (CMPhotoPictureReaderGetItemTypeFromReader(v429, &v1360))
                    {
                      v438 = 1;
                    }

                    else
                    {
                      v438 = v1360 == 1768187246;
                    }

                    v439 = !v438;
LABEL_788:
                    v22 = v1306;
                    if (*size)
                    {
                      CFRelease(*size);
                    }

                    OutputFromConstituents = &v1351;
                    if (v1347[0])
                    {
                      CFRelease(v1347[0]);
                    }

                    if ((v439 & 1) == 0)
                    {
                      DefaultTripletsForTransfer = 1;
LABEL_797:
                      a6 = v1302;
LABEL_798:
                      v103 = v949;
                      v384 = v809;
LABEL_799:
                      if (v1337 % v1155)
                      {
                        DictionaryRepresentation = 1;
                      }

                      else
                      {
                        DictionaryRepresentation = *(&v1337 + 1) % v103 != 0;
                      }

                      if (v1338 + v1337 == v384 && *(&v1338 + 1) + *(&v1337 + 1) == v839)
                      {
                        v441 = 0;
                      }

                      else if (v1338 % v1155)
                      {
                        v441 = 1;
                      }

                      else
                      {
                        v441 = *(&v1338 + 1) % v103 != 0;
                      }

                      if (v929)
                      {
                        dispatch_retain(*(a6 + 40));
                        v442 = *(a6 + 40);
                      }

                      else
                      {
                        v442 = dispatch_queue_create("com.apple.cmphoto.canvasTransferQueue", 0);
                      }

                      if (v442)
                      {
                        LODWORD(v110) = 822280225;
                        BYTE4(v1360) = 0;
                        LODWORD(v1360) = 0;
                        LODWORD(v1343) = 0;
                        BYTE4(v1343) = 0;
                        LODWORD(v1345) = 0;
                        *(&v1345 + 3) = 0;
                        *&v445 = OUTLINED_FUNCTION_51_0();
                        *(v446 + 53) = v445;
                        *(v446 + 69) = v445;
                        value = 0uLL;
                        object = v443;
                        if (v103 > v1028)
                        {
                          v447 = 0;
LABEL_816:
                          dispatch_barrier_sync(v443, &__block_literal_global_29);
                          v448 = *MEMORY[0x1E695FF58];
                          a6 = v1305;
                          if (v447 && v448 == 1)
                          {
                            OUTLINED_FUNCTION_6();
                            kdebug_trace();
                            v448 = *MEMORY[0x1E695FF58];
                          }

                          if (v448 == 1)
                          {
                            OUTLINED_FUNCTION_6();
                            kdebug_trace();
                          }

                          if (v1336)
                          {
                            v449 = OUTLINED_FUNCTION_14_5(*&v1337);
                            OUTLINED_FUNCTION_42_1(v450, v449, v451, *&v1338, *(&v1338 + 1));
                            OUTLINED_FUNCTION_94_0();
                            v454 = v929;
                            if (!v30)
                            {
                              v454 = 1;
                            }

                            if (v454)
                            {
                              LODWORD(v110) = v452;
                              LODWORD(v1244) = v453 & HIDWORD(v779);
                            }

                            else
                            {
                              LODWORD(v1244) = 0;
                              LODWORD(v110) = 0;
                              pixelBuffer = v1336;
                              *&v1336 = 0;
                            }
                          }

                          else
                          {
                            LODWORD(v1244) = 0;
                            LODWORD(v110) = -16991;
                          }

                          goto LABEL_893;
                        }

                        v103 = 0;
                        HIDWORD(v799) = DefaultTripletsForTransfer | (DictionaryRepresentation | v441) & 1;
                        v1028 = v1075[0] - 1;
                        v869 = v1068 - 1;
                        LODWORD(v829) = v980 | HIDWORD(v829);
                        v819 = *v444;
                        v769 = &size[3];
                        v455 = v1123;
                        if (!v1123)
                        {
                          v455 = 875704422;
                        }

                        HIDWORD(v759) = v455;
                        v789 = &size[2];
                        while (1)
                        {
                          OUTLINED_FUNCTION_59_0();
                          if (v30 || !v147)
                          {
                            break;
                          }

LABEL_831:
                          if (++v103 >= v1068)
                          {
                            if (v1331)
                            {
                              if (HEIFItemDecoderWaitForFinishAndReturnStatus(v1331, &v1355, &v1340, &v1340))
                              {
                                OUTLINED_FUNCTION_92_0();
                                OUTLINED_FUNCTION_41_1();
                                OUTLINED_FUNCTION_45_0();
                                goto LABEL_893;
                              }

                              v447 = 1;
                              v17 = v1295;
                              OUTLINED_FUNCTION_45_0();
                            }

                            else
                            {
                              v447 = 0;
                              v17 = v1295;
                            }

                            v443 = object;
                            goto LABEL_816;
                          }
                        }

                        OUTLINED_FUNCTION_70();
                        v17 = 0;
                        v939 = v103 * v949;
                        v456 = HIDWORD(v829);
                        if (v103 != v869)
                        {
                          v456 = 0;
                        }

                        LODWORD(v779) = v456;
                        while (2)
                        {
                          v457 = v1331;
                          if (v1331)
                          {
                            LODWORD(v110) = *(v1331 + 14580);
                            if (v110)
                            {
                              goto LABEL_888;
                            }
                          }

                          LayerReaderAtPosition = _getLayerReaderAtPosition(v1226, v17 + v1244, v103 + v1279, __dst, &v1346);
                          if (LayerReaderAtPosition)
                          {
                            goto LABEL_887;
                          }

                          if (v1028 == v17)
                          {
                            a6 = v980;
                          }

                          else
                          {
                            a6 = 0;
                          }

                          if (!v1336)
                          {
                            if (v929)
                            {
                              LayerReaderAtPosition = *v1302;
                              if (*v1302)
                              {
                                LayerReaderAtPosition = CFRetain(LayerReaderAtPosition);
                              }

                              *&v1336 = LayerReaderAtPosition;
                              if (!v970 || v457)
                              {
                                goto LABEL_855;
                              }

LABEL_851:
                              v1347[0] = 0;
                              if (v829)
                              {
                                LayerReaderAtPosition = _getLayerReaderAtPosition(v1226, v1028 + v1244, v869 + v1279, __dst, v1347);
                                if (LayerReaderAtPosition)
                                {
                                  goto LABEL_887;
                                }

                                v464 = v1347[0];
                              }

                              else
                              {
                                v464 = 0;
                              }

                              v465 = *(OutputFromConstituents + 128);
                              *&size[40] = *(OutputFromConstituents + 112);
                              *&size[56] = v465;
                              v466 = *(OutputFromConstituents + 160);
                              *&size[72] = *(OutputFromConstituents + 144);
                              v467 = v1346;
                              size[0] = BYTE4(v1193);
                              size[1] = theArray;
                              *v789 = v1344;
                              *(v789 + 2) = WORD2(v1344);
                              *&size[8] = *(&v1005 + 1);
                              *&size[16] = v1005;
                              *&size[24] = v991;
                              *&size[32] = v1207;
                              *&size[88] = v466;
                              *&size[104] = v1123;
                              size[112] = v1180;
                              size[113] = v1110;
                              OUTLINED_FUNCTION_107_0(LayerReaderAtPosition, v459, v467, v464, v460, v461, v462, v463, v652, v669, v682, v705, v720, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v991, v1005, *(&v1005 + 1), v1028, v1040, v1051, v1068, v1075[0], v1075[1], v1096, v1110, v1123, *(&v1123 + 1), v1145, v1155, theArray, v1180, v1193, v1207, v1226, v1234, v1244, v1258, v1265);
                              *(v468 + 119) = BYTE4(v1342);
                              *(v468 + 115) = v1342;
                              *&size[120] = v1258;
                              *&size[128] = v1096;
                              LODWORD(LayerReaderAtPosition) = HEIFItemDecoderCreate(__src, v22, v469, v470, size, BYTE4(v799) ^ 1u, v1075[0], v1068, &v1355, &v1332, &v1340, &v1331, &v1336);
                              if (LayerReaderAtPosition)
                              {
LABEL_887:
                                LODWORD(v110) = LayerReaderAtPosition;
LABEL_888:
                                LODWORD(v1244) = 0;
LABEL_889:
                                OUTLINED_FUNCTION_41_1();
                                goto LABEL_893;
                              }
                            }

                            else
                            {
                              if (v970 && !v457)
                              {
                                goto LABEL_851;
                              }

                              *size = 0;
                              *&size[8] = 0;
                              *&size[16] = v1051;
                              *&size[24] = v1040;
                              OUTLINED_FUNCTION_55_0();
                              LODWORD(LayerReaderAtPosition) = _createPixelBuffer(v499, v859, v500, HIDWORD(v759), v501, v502, v809, v839, v652, v669, v682, v705);
                              if (LayerReaderAtPosition)
                              {
                                goto LABEL_887;
                              }
                            }

LABEL_855:
                            if (*MEMORY[0x1E695FF58] == 1)
                            {
                              OUTLINED_FUNCTION_22_2();
                              OUTLINED_FUNCTION_6();
                              kdebug_trace();
                              if (v1331)
                              {
                                if (*MEMORY[0x1E695FF58] == 1)
                                {
                                  OUTLINED_FUNCTION_6();
                                  kdebug_trace();
                                }
                              }
                            }

                            if (!v1336)
                            {
                              LODWORD(v1244) = 0;
                              LODWORD(v110) = -16991;
                              goto LABEL_889;
                            }

                            CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v889, v899, v909, v919, v1336);
                            CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(HIDWORD(v849), v849, v1336);
                            v110 = CFGetAllocator(*(&__src[0] + 1));
                            v471 = FigPictureReaderGetFigBaseObject();
                            v472 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (!v472)
                            {
                              LODWORD(v1244) = 0;
                              LODWORD(v110) = -12782;
                              goto LABEL_892;
                            }

                            if (v472(v471, v819, v110, v1330))
                            {
                              OUTLINED_FUNCTION_92_0();
LABEL_892:
                              OUTLINED_FUNCTION_41_1();
                              v22 = v1306;
LABEL_893:
                              HEIFItemDecoderRelease(v1331);
                              dispatch_release(object);
LABEL_894:
                              if (v889)
                              {
                                CFRelease(v889);
                              }

                              if (v899)
                              {
                                CFRelease(v899);
                              }

                              if (v909)
                              {
                                CFRelease(v909);
                              }

                              if (v919)
                              {
                                CFRelease(v919);
                              }

LABEL_902:
                              if (v1336)
                              {
                                CFRelease(v1336);
                              }

                              if (v1330[0])
                              {
                                CFRelease(v1330[0]);
                              }

                              if (v110)
                              {
                                v218 = v1300;
                                goto LABEL_613;
                              }

                              OutputFromConstituents = 0;
                              v10 = a9;
                              LOBYTE(v22) = v1244;
LABEL_1028:
                              v216 = v1325;
                              if (!v1325)
                              {
                                goto LABEL_1030;
                              }

LABEL_1029:
                              CFRelease(v216);
                              goto LABEL_1030;
                            }

                            CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1330[0], v1336);
                            v1040 = *(&v1355 + 1);
                            v1051 = v1355;
                            v22 = v1306;
                          }

                          if (DictionaryRepresentation != v1051 && v1040 != v939)
                          {
                            LODWORD(v759) = (a6 | v779) & 1;
                            LODWORD(v110) = a5;
                            v474 = v949;
                            if (v949 >= v1040 - v939)
                            {
                              v474 = (v1040 - v939);
                            }

                            a6 = v1051 + DefaultTripletsForTransfer;
                            v475 = v1155;
                            if (v1155 >= v1051 + DefaultTripletsForTransfer)
                            {
                              v475 = (v1051 + DefaultTripletsForTransfer);
                            }

                            v476 = v1340 == v475 && *(&v1340 + 1) == v474;
                            v477 = v476 ? 0 : v475;
                            v478 = v476 ? 0 : v474;
                            cf[0] = v1336;
                            cf[1] = DictionaryRepresentation;
                            cf[2] = v939;
                            cf[3] = v475;
                            cf[4] = v474;
                            cf[5] = object;
                            v742 = v1346;
                            v753 = v1331;
                            memcpy(v1347, __src, sizeof(v1347));
                            OUTLINED_FUNCTION_23_2();
                            v479 = *v1361;
                            *v769 = v1360;
                            *(v769 + 1) = v479;
                            *(v769 + 29) = *&v1361[13];
                            *&size[40] = 0;
                            *&size[48] = 0;
                            *&size[56] = v477;
                            *&size[64] = v478;
                            v22 = v1306;
                            *&size[72] = v1051 + DefaultTripletsForTransfer;
                            *&size[80] = v1040 - v939;
                            *&size[88] = value;
                            *&size[104] = 0;
                            size[112] = v1180;
                            size[113] = v759;
                            OUTLINED_FUNCTION_107_0(v480, v481, v482, v483, v484, v485, v486, v487, v652, v669, v682, v705, v720, v727, v742, v753, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v991, v1005, *(&v1005 + 1), v1028, v1040, v1051, v1068, v1075[0], v1075[1], v1096, v1110, v1123, *(&v1123 + 1), v1145, v1155, theArray, v1180, v1193, v1207, v1226, v1234, v1244, v1258, v1265);
                            *(v488 + 115) = v1343;
                            *(v488 + 119) = BYTE4(v1343);
                            OUTLINED_FUNCTION_56_0(v489, v490, v491, v492, v493, v494, v495, v496, v660, v675, v690, v706, v721, v732, v743, v754, v764, v774, v784, v794, v804, v814, v824, v834, v844, v854, v864, v874, objecte, v894, v904, v914, v924, v934, v944, v954, v965, v975, v985, v998, v1011, v1023, v1035, v1046, v1058, v1069, v1081, v1090, v1102, v1115, v1130, v1140, v1150, v1162, theArrayh, v1188, v1198, v1213, v1227, v1239, v1250, v1260);
                            *(v497 + 129) = v1345;
                            *(v497 + 132) = *(v498 + 243);
                            LODWORD(LayerReaderAtPosition) = _decodeItem(v1347, v737, v1306, v748, size, 0, cf, 0, 0);
                            if (LayerReaderAtPosition)
                            {
                              goto LABEL_887;
                            }
                          }

                          ++v17;
                          DictionaryRepresentation += v1155;
                          DefaultTripletsForTransfer -= v1155;
                          if (v17 >= v1075[0])
                          {
                            goto LABEL_831;
                          }

                          continue;
                        }
                      }

                      LODWORD(v1244) = 0;
                      LODWORD(v110) = -16991;
LABEL_696:
                      a6 = v1305;
                      goto LABEL_894;
                    }

                    ++v427;
                    if (!--v428)
                    {
                      goto LABEL_794;
                    }
                  }

                  v439 = 0;
                  goto LABEL_788;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_19();
                ImageCodecTypeFromReader = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
              }

              LODWORD(v110) = ImageCodecTypeFromReader;
            }

            LODWORD(v1244) = 0;
            goto LABEL_696;
          }

          v118 = v17;
          v103 = 0;
          v119 = v117;
          do
          {
            OUTLINED_FUNCTION_89_0();
            if (!FigCFArrayGetInt32AtIndex())
            {
              goto LABEL_585;
            }

            ++v103;
            v119 += 4;
          }

          while (Count != v103);
          v17 = v118;
        }

        else
        {
          v118 = v17;
          v1155 = 0;
LABEL_585:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_19();
          v362 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
          free(v1155);
          v17 = v118;
          if (v362)
          {
            v217 = 1;
            OUTLINED_FUNCTION_45_0();
            v218 = v1300;
            DictionaryRepresentation = v1347;
            goto LABEL_605;
          }

          Count = 0;
          v1155 = 0;
        }

        DictionaryRepresentation = v1347;
        goto LABEL_101;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_19();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v112 = 0;
    goto LABEL_582;
  }

  OUTLINED_FUNCTION_7_13();
  if (v30)
  {
    v42 = a6;
    a6 = a9;
    v1303 = v42;
    DictionaryRepresentation = *(v17 + 68);
    LODWORD(v1206) = *(v17 + 69);
    v43 = *(v17 + 70);
    v1299 = *(v17 + 56);
    if (v1299 == 6)
    {
      DefaultTripletsForTransfer = a8;
    }

    else
    {
      DefaultTripletsForTransfer = 0;
    }

    v44 = v17;
    v17 = *v17;
    v45 = *(v44 + 8);
    v1271 = *(v44 + 24);
    v1288 = *(v44 + 32);
    v1004 = *(v44 + 40);
    v1017 = *(v44 + 16);
    LODWORD(v1122) = *(v44 + 48);
    v1278 = *(v44 + 49);
    LODWORD(v1110) = *(v44 + 50);
    LODWORD(v1095) = *(v44 + 51);
    LODWORD(v1075[0]) = *(v44 + 52);
    LOWORD(v1345) = *(v44 + 53);
    BYTE2(v1345) = *(v44 + 55);
    v46 = *(v44 + 60);
    LODWORD(v1265) = *(v44 + 61);
    LODWORD(v1257) = *(v44 + 62);
    LODWORD(v1244) = *(v44 + 63);
    v47 = *(v44 + 64);
    LODWORD(v1040) = *(v44 + 68);
    v1219 = *(v44 + 72);
    v1282 = *(v44 + 80);
    v1294 = v44;
    v1029 = *(v44 + 88);
    HIDWORD(v1193) = a5[1];
    v48 = a5[2];
    v49 = *(a5 + 19);
    *v1357 = *(a5 + 3);
    *&v1357[2] = v49;
    *(&v1357[3] + 5) = *(a5 + 4);
    LODWORD(v1063) = a5[114];
    v1052 = *(a5 + 15);
    v50 = CFGetAllocator(v45);
    *&v1360 = 0;
    v1285 = v45;
    if (v17)
    {
      v51 = v17;
    }

    else
    {
      v51 = v45;
    }

    *&v1337 = 0;
    *&v1332 = 0;
    *&v1355 = 0;
    *&v1353 = 0;
    *&v1340 = 0;
    value.i64[0] = 0;
    *&v1336 = 0;
    *&v1331 = 0;
    if (v46)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_19();
      OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
      OUTLINED_FUNCTION_40_1();
      v17 = v1294;
      v10 = a9;
      a6 = v1303;
LABEL_340:
      if (v1360)
      {
        CFRelease(v1360);
      }

LABEL_342:
      if (v1337)
      {
        CFRelease(v1337);
      }

      if (v1332)
      {
        CFRelease(v1332);
      }

      if (v1355)
      {
        CFRelease(v1355);
      }

      if (v1353)
      {
        CFRelease(v1353);
      }

      if (v1340)
      {
        CFRelease(v1340);
      }

      if (DefaultTripletsForTransfer)
      {
        CFRelease(DefaultTripletsForTransfer);
      }

      if (value.i64[0])
      {
        CFRelease(value.i64[0]);
      }

      if (v1336)
      {
        CFRelease(v1336);
      }

      if (v1331)
      {
        CFRelease(v1331);
      }

      if (DictionaryRepresentation)
      {
        v100 = DictionaryRepresentation;
LABEL_362:
        CFRelease(v100);
      }

LABEL_363:
      if (OutputFromConstituents)
      {
        goto LABEL_1070;
      }

      LOBYTE(v22) = 0;
LABEL_1031:
      if (!*v17 || !CMPhotoDecompressionSessionAsyncRequestCancelled(*(*(v17 + 8) + 16), *v17))
      {
        DictionaryRepresentation = v1319;
        if (a5[1])
        {
          v629 = v1319 == 1;
        }

        else
        {
          v629 = 1;
        }

        v630 = !v629;
        v631 = 1;
        if (v629)
        {
          v631 = v1319;
          DictionaryRepresentation = 1;
          if (!a6)
          {
            goto LABEL_1044;
          }
        }

        else
        {
          v1319 = 1;
          if (!a6)
          {
LABEL_1044:
            v632 = pixelBuffer;
            if (!pixelBuffer)
            {
              return 0;
            }

            if (!v10)
            {
              if ((v22 & 1) == 0)
              {
                *size = 0;
                *&size[8] = size;
                *&size[16] = 0x2000000000;
                *&size[24] = 0;
                PixelFormatType = CVPixelBufferGetPixelFormatType(*v1302);
                DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(v632, PixelFormatType);
                v647 = v646;
                v648 = *(v1302 + 40);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 0x40000000;
                block[2] = ___decodeItem_block_invoke;
                block[3] = &unk_1E77A2368;
                block[4] = size;
                OUTLINED_FUNCTION_120(v1309);
                v1309[12] = pixelBuffer;
                memcpy(v1310, a5, sizeof(v1310));
                v1312 = DictionaryRepresentation;
                v1311 = v1302;
                v1313 = DefaultTripletsForTransfer;
                v1314 = v647;
                dispatch_sync(v648, block);
                OutputFromConstituents = *(*&size[8] + 24);
                _Block_object_dispose(size, 8);
                goto LABEL_1070;
              }

              OutputFromConstituents = 0;
              OUTLINED_FUNCTION_70();
              goto LABEL_1072;
            }

            DefaultTripletsForTransfer = *(a5 + 26);
            if (!DefaultTripletsForTransfer)
            {
              DefaultTripletsForTransfer = CVPixelBufferGetPixelFormatType(pixelBuffer);
              *(a5 + 26) = DefaultTripletsForTransfer;
              v632 = pixelBuffer;
            }

            if (DefaultTripletsForTransfer == CVPixelBufferGetPixelFormatType(v632))
            {
              v633 = v630;
            }

            else
            {
              v633 = 1;
            }

            if (v633 == 1)
            {
              ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(v17 + 48), *(v17 + 50), *(v17 + 51), *(v17 + 52));
              DefaultTripletsForTransfer = ScaleAndRotateOptionsWithHWIfNeeded;
              if (!ScaleAndRotateOptionsWithHWIfNeeded)
              {
                DictionaryRepresentation = 0;
                OutputFromConstituents = 4294950305;
                goto LABEL_1071;
              }

              if (a5[114])
              {
                CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", a5[114]);
              }

              memcpy(size, a5, sizeof(size));
              v635 = _fillEdgesIfNeeded(pixelBuffer, size, DictionaryRepresentation);
              if (v635)
              {
                OutputFromConstituents = v635;
                DictionaryRepresentation = 0;
                goto LABEL_1071;
              }

              v636 = CMPhotoCreateDefaultTripletsForTransfer(pixelBuffer, *(a5 + 26));
              v638 = v637;
              CMPhotoCFDictionarySetBoolean(DefaultTripletsForTransfer, @"DestinationBackedByIOSurface", *(v17 + 49) == 0);
              CMPhotoCFDictionarySetInt(DefaultTripletsForTransfer, @"SourceExifOrientation", DictionaryRepresentation);
              CMPhotoCFDictionarySetInt(DefaultTripletsForTransfer, @"DestinationPixelFormat", *(a5 + 26));
              CMPhotoCFDictionarySetBoolean(DefaultTripletsForTransfer, @"ExactDimensions", 1);
              DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(v636, v638);
              if (DictionaryRepresentation)
              {
                CFDictionarySetValue(DefaultTripletsForTransfer, @"DestinationColorTripletDictionary", DictionaryRepresentation);
              }

              *size = 0;
              v639 = CMPhotoScaleAndRotateSessionTransformImage(*(v17 + 32), pixelBuffer, DefaultTripletsForTransfer, size);
              if (v639)
              {
                goto LABEL_1080;
              }

              if (pixelBuffer)
              {
                CFRelease(pixelBuffer);
              }

              pixelBuffer = *size;
            }

            else
            {
              OUTLINED_FUNCTION_40_1();
            }

            if (*(a5 + 40) == 0 && *(a5 + 56) == 0 || (v640 = OUTLINED_FUNCTION_27_0(*(a5 + 5)), v639 = OUTLINED_FUNCTION_77_0(v641, v640, v642, v643, v644), !v639))
            {
              OutputFromConstituents = 0;
              *v10 = pixelBuffer;
              pixelBuffer = 0;
              goto LABEL_1073;
            }

LABEL_1080:
            OutputFromConstituents = v639;
            goto LABEL_1071;
          }
        }

        *a6 = v631;
        goto LABEL_1044;
      }

LABEL_1078:
      OUTLINED_FUNCTION_40_1();
      OutputFromConstituents = 4294950191;
      goto LABEL_1071;
    }

    v1181 = v51;
    v1351 = 0uLL;
    memset(__src, 0, 80);
    HEIFOrientation = _copyFlexRangeDetails(v50, v1306, &v1351, __src, &v1353, 0, &v1332, &v1355);
    v10 = a9;
    if (HEIFOrientation || (LODWORD(v1330[0]) = 1, LODWORD(v1346) = 1, HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v1355, 0, &v1346), HEIFOrientation) || (HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v1332, 0, v1330), HEIFOrientation) || (*&v53 = OUTLINED_FUNCTION_51_0(), *(v54 + 96) = v53, *(v54 + 112) = v53, HEIFOrientation = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1355, 0, size, 0), HEIFOrientation) || (v55 = *&size[16], a6 = *&size[24], HEIFOrientation = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1332, 0, size, 0), HEIFOrientation))
    {
      OutputFromConstituents = HEIFOrientation;
    }

    else
    {
      theArraya = DefaultTripletsForTransfer;
      v10 = *&size[16];
      DefaultTripletsForTransfer = *&size[24];
      *v1347 = *size;
      *&v1347[2] = *&size[16];
      v56 = OUTLINED_FUNCTION_99_0();
      CropPostOrientation = CMPhotoGetCropPostOrientation(v56, v57, v58, v59, v60, v61, v62, v63);
      if (!CropPostOrientation)
      {
        v68 = *&size[16];
        v69 = *&size[24];
        if (v1351 != *&size[16] || *(&v1351 + 1) != *&size[24])
        {
          goto LABEL_58;
        }

        v1156 = a6;
        memset(v1349, 0, 32);
        if (v48)
        {
          *size = *(v1357 + 5);
          *&size[16] = *(&v1357[2] + 5);
          CropPreOrientation = CMPhotoGetCropPreOrientation(v68, v69, size, LODWORD(v1330[0]), v1349, v65, v66, v67);
          if (CropPreOrientation)
          {
            goto LABEL_382;
          }
        }

        a6 = v1299;
        if (v43)
        {
          v1319 = v1330[0];
        }

        else
        {
          HIDWORD(v1193) = 1;
        }

        if (DictionaryRepresentation)
        {
          if (v1299 != 6)
          {
LABEL_58:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_19();
            CropPreOrientation = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_382:
            OutputFromConstituents = CropPreOrientation;
            OUTLINED_FUNCTION_40_1();
LABEL_383:
            v10 = a9;
LABEL_384:
            OUTLINED_FUNCTION_41_1();
            goto LABEL_340;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38_0();
          *(__dst + 5) = *v1349;
          *(&__dst[1] + 5) = *&v1349[16];
          v1347[0] = v17;
          OUTLINED_FUNCTION_68_0(v1285, v652, v669, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v990, v1004, v1017, v1029, v1040, v1052, v1063, v1075[0], v1075[1], v1095, v1110, v1122, v1135, v1145, v1156, theArraya, v1181, v1193, v1206, v1219, v1234, v1244, v1257, v1265, v1269, v1271);
          v1347[4] = v1288;
          OUTLINED_FUNCTION_12_12(v250, v251, v252, v253, v254, v255, v256, v257, v653, v670, v685, v700, v716, v728, v738, v749, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, v870, objecta, v890, v900, v910, v920, v930, v940, v950, v960, v971, v981, v993, v1006, v1018, v1030, v1041, v1053, v1064, v1076, v1086, v1097, v1108, v1111, v1120, v1124, v1136, v1146, v1157, theArrayd, v1182, v1194, v1209, v1222, v1235, v1246);
          LODWORD(v1347[7]) = v1299;
          OUTLINED_FUNCTION_5_14(v258, v259, v260, v261, v262, v263, v264, v265, v654, v671, v686, v701, v717, v729, v739, v750, v761, v771, v781, v791, v801, v811, v821, v831, v841, v851, v861, v871, objectb, v891, v901, v911, v921, v931, v941, v951, v961, v972, v982, v994, v1007, v1019, v1031, v1042, v1054, v1065, v1077, v1087, v1098, v1112, v1125, v1137, v1147, v1158, theArraye, v1183, v1195, v1204, v1210, v1223, v1236, v1247, v1255);
          size[128] = 0;
          OUTLINED_FUNCTION_17_6();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_31_0();
          CropPreOrientation = _decodeItem(v266, v267, v268, v269, v270, v271, v272, v273, v655);
          if (CropPreOrientation)
          {
            goto LABEL_382;
          }
        }

        v197 = v1299 - 3 < 3;
        if (*(__src + 2) == 0.0)
        {
          v197 = v1299 == 2;
        }

        if (v197)
        {
          OUTLINED_FUNCTION_70();
          OutputFromConstituents = 0;
          pixelBuffer = v1360;
          *&v1360 = 0;
          OUTLINED_FUNCTION_69_0();
          goto LABEL_342;
        }

        a6 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          OUTLINED_FUNCTION_40_1();
          OutputFromConstituents = 4294950305;
          goto LABEL_383;
        }

        v199 = Mutable;
        if (DictionaryRepresentation)
        {
          v992 = 0;
          a6 = v1303;
        }

        else
        {
          v219 = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v1122, v1110, v1095, v1075[0]);
          if (!v219)
          {
            OUTLINED_FUNCTION_70();
            OutputFromConstituents = 4294950305;
            OUTLINED_FUNCTION_69_0();
            goto LABEL_339;
          }

          v992 = v219;
          if (CMPhotoScaleAndRotateSessionBakeInCLAPIfNeeded(v1288, v219, &v1360))
          {
            OUTLINED_FUNCTION_46_0();
            v17 = v1294;
            v10 = a9;
            goto LABEL_1100;
          }

          FigCFDictionarySetValue();
          a6 = v1303;
          if (FigCFDictionarySetInt())
          {
            goto LABEL_572;
          }
        }

        FigCFDictionarySetValue();
        *&v220 = OUTLINED_FUNCTION_51_0();
        *v221 = v220;
        v221[1] = v220;
        if (*v1349 == 0 && *&v1349[16] == 0)
        {
          goto LABEL_310;
        }

        *size = *v1349;
        *&size[16] = *&v1349[16];
        v222 = OUTLINED_FUNCTION_99_0();
        if (!CMPhotoTranslateAndScalePreOrientationCrop(v222, v223, v224, v225, v55, v1156, v226, v227, 0))
        {
          DefaultTripletsForTransfer = 0;
          OutputFromConstituents = 4294950306;
          if (cf[2] && cf[3])
          {
LABEL_310:
            if (v1206)
            {
              v17 = v1294;
              v10 = a9;
              if (v1299 != 6)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_19();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
                goto LABEL_579;
              }

              goto LABEL_312;
            }

            OUTLINED_FUNCTION_38_0();
            v275 = v274[1];
            *(__dst + 5) = *v274;
            *(&__dst[1] + 5) = v275;
            v1347[0] = v17;
            DefaultTripletsForTransfer = v1288;
            OUTLINED_FUNCTION_68_0(v1285, v652, v669, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v992, v1004, v1017, v1029, v1040, v1052, v1063, v1075[0], v1075[1], v1095, v1110, v1122, v1135, v1145, v1156, theArraya, v1181, v1193, v1206, v1219, v1234, v1244, v1257, v1265, v1269, v1271);
            v1347[4] = v1288;
            OUTLINED_FUNCTION_12_12(v276, v277, v278, v279, v280, v281, v282, v283, v656, v672, v687, v702, v718, v730, v740, v751, v762, v772, v782, v792, v802, v812, v822, v832, v842, v852, v862, v872, objectc, v892, v902, v912, v922, v932, v942, v952, v962, v973, v983, v995, v1008, v1020, v1032, v1043, v1055, v1066, v1078, v1088, v1099, v1109, v1113, v1121, v1126, v1138, v1148, v1159, theArrayf, v1184, v1196, v1211, v1224, v1237, v1248);
            LODWORD(v1347[7]) = v1299;
            OUTLINED_FUNCTION_5_14(v284, v285, v286, v287, v288, v289, v290, v291, v657, v673, v688, v703, v719, v731, v741, v752, v763, v773, v783, v793, v803, v813, v823, v833, v843, v853, v863, v873, objectd, v893, v903, v913, v923, v933, v943, v953, v963, v974, v984, v996, v1009, v1021, v1033, v1044, v1056, v1067, v1079, v1089, v1100, v1114, v1127, v1139, v1149, v1160, theArrayg, v1185, v1197, v1205, v1212, v1225, v1238, v1249, v1256);
            size[128] = 1;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_31_0();
            v10 = a9;
            if (!_decodeItem(v292, v293, v294, v295, v296, v297, v298, v299, v658))
            {
              v17 = v1294;
              if (CMPhotoScaleAndRotateSessionBakeInCLAPIfNeeded(v1288, v992, &v1337))
              {
                goto LABEL_579;
              }

              FigCFDictionarySetValue();
LABEL_312:
              if (!FigCFDictionarySetInt())
              {
                OUTLINED_FUNCTION_10_15();
                if (!_copyColorInfoForItem(v228, v229, v230, v231, v232, v233, v234, v235, &v1336, &v1331, 0, 0, 0))
                {
                  if (v1282)
                  {
                    FigCFDictionarySetValue();
                    if (v1331)
                    {
                      v236 = OUTLINED_FUNCTION_53();
                      DefaultTripletsForTransfer = CFDictionaryCreateMutable(v236, v237, v238, v239);
                      if (DefaultTripletsForTransfer)
                      {
                        v240 = v1331;
LABEL_335:
                        CFDictionarySetValue(DefaultTripletsForTransfer, @"YCbCrMatrix", v240);
LABEL_336:
                        CFDictionarySetValue(v199, @"NclxColor", DefaultTripletsForTransfer);
                        goto LABEL_337;
                      }

LABEL_1099:
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_19();
                      OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      goto LABEL_1100;
                    }
                  }

                  else
                  {
                    if (v1340)
                    {
                      FigCFDictionarySetValue();
                    }

                    if (value.i64[0] || v1336 || v1331)
                    {
                      v241 = OUTLINED_FUNCTION_53();
                      v245 = CFDictionaryCreateMutable(v241, v242, v243, v244);
                      DefaultTripletsForTransfer = v245;
                      if (v245)
                      {
                        if (value.i64[0])
                        {
                          CFDictionarySetValue(v245, @"ColorPrimaries", value.i64[0]);
                        }

                        if (v1336)
                        {
                          CFDictionarySetValue(DefaultTripletsForTransfer, @"TransferFunction", v1336);
                        }

                        v240 = v1331;
                        if (!v1331)
                        {
                          goto LABEL_336;
                        }

                        goto LABEL_335;
                      }

                      goto LABEL_1099;
                    }
                  }

                  DefaultTripletsForTransfer = 0;
LABEL_337:
                  a6 = v1303;
                  OutputFromConstituents = CMPhotoGainMapCreateOutputFromConstituents(v1288, v1271, v1278, v1282, v1181, v199, v1299, 0, v47, v1265, v1257, v1244, v1219, &pixelBuffer, theArraya);
LABEL_338:
                  DictionaryRepresentation = v992;
LABEL_339:
                  CFRelease(v199);
                  goto LABEL_340;
                }

                OUTLINED_FUNCTION_46_0();
LABEL_1100:
                a6 = v1303;
                goto LABEL_338;
              }

LABEL_579:
              OUTLINED_FUNCTION_46_0();
              goto LABEL_338;
            }

            OUTLINED_FUNCTION_46_0();
LABEL_391:
            v17 = v1294;
            goto LABEL_338;
          }

LABEL_573:
          v10 = a9;
          goto LABEL_391;
        }

LABEL_572:
        OUTLINED_FUNCTION_46_0();
        goto LABEL_573;
      }

      OutputFromConstituents = CropPostOrientation;
      v10 = a9;
    }

    OUTLINED_FUNCTION_40_1();
    goto LABEL_384;
  }

  OUTLINED_FUNCTION_24_1();
  if (!v30)
  {
    OUTLINED_FUNCTION_120(__src);
    LODWORD(v1277) = *a5;
    LODWORD(v1355) = *(a5 + 1);
    *(&v1355 + 3) = *(a5 + 1);
    v1297 = *(a5 + 2);
    v1281 = *(a5 + 24);
    v1287 = *(a5 + 1);
    memcpy(__dst, a5 + 40, 0x49uLL);
    LODWORD(v22) = a5[113];
    *v1349 = *(a5 + 114);
    *&v1349[14] = *(a5 + 16);
    OUTLINED_FUNCTION_120(v1347);
    *&v1360 = 0;
    *&v1337 = 0;
    v25 = *(&__src[0] + 1);
    if (*&__src[0])
    {
      v1270 = *&__src[0];
      if (CMPhotoDecompressionSessionAsyncRequestCancelled(*(*(&__src[0] + 1) + 16), *&__src[0]))
      {
        DefaultTripletsForTransfer = 0;
        OutputFromConstituents = 4294950191;
        goto LABEL_554;
      }

      v25 = *(&__src[0] + 1);
    }

    else
    {
      v1270 = *(&__src[0] + 1);
    }

    if (!_getImageOrientation(v25, v1306, DefaultTripletsForTransfer, &v1319))
    {
      if (a4)
      {
        DictionaryRepresentation = 0;
        v39 = a4;
        goto LABEL_39;
      }

      if (v12)
      {
        *size = 0;
        *&size[8] = 0;
        PixelBufferSize = CMPhotoGetPixelBufferSize(*v12);
        v28 = v27;
        if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1306, *(*(&__src[0] + 1) + 28), 0, size))
        {
          goto LABEL_544;
        }

        v29 = vcvtad_u64_f64(v28);
        v30 = *size == vcvtad_u64_f64(PixelBufferSize) && *&size[8] == v29;
        DictionaryRepresentation = v30;
      }

      else
      {
        DictionaryRepresentation = 0;
      }

      size[0] = v1277;
      OutputFromConstituents = cf;
      *&size[1] = v1355;
      OUTLINED_FUNCTION_33_0(*(&v1355 + 3), v652, v669, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v990, v1003, v1016, v1028, v1040, v1051, v1063, v1075[0], v1075[1], v1095, v1110, v1122, v1135, v1145, v1155, theArray, v1180, v1193, v1206, v1218, v1234, v1244, v1257, v1265, v1269, v1270, v1274, v1277, v1281, *(&v1281 + 1), v1287);
      size[113] = v22;
      *&size[114] = *v1349;
      *&size[128] = *&v1349[14];
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_84_0();
      if (!HEIFItemDecoderCreate(v31, v32, v33, v34, v35, v36, v37, v38, 0, 0, v683, v698, v714))
      {
        DictionaryRepresentation = v1337;
        OUTLINED_FUNCTION_109();
        if (v30)
        {
          OUTLINED_FUNCTION_22_2();
          OUTLINED_FUNCTION_6();
          kdebug_trace();
          OUTLINED_FUNCTION_109();
          if (v30)
          {
            OUTLINED_FUNCTION_6();
            kdebug_trace();
          }
        }

        v39 = DictionaryRepresentation;
LABEL_39:
        LOBYTE(v1353) = 0;
        if (v22)
        {
          v41 = v1306;
          v40 = 0;
        }

        else
        {
          v40 = *(v39 + 24);
          v41 = v1306;
        }

        v160 = _createSampleBufferFromPictureReader(v41, v40, &v1360, &v1353);
        if (!v160)
        {
          if (!v1353 || *(v39 + 88))
          {
            DictionaryRepresentation = v1347;
LABEL_195:
            if (v12)
            {
              v1304 = a6;
              v1307 = v1319;
              LODWORD(v1332) = v1355;
              *(&v1332 + 3) = *(&v1355 + 3);
              memcpy(size, __dst, 0x49uLL);
              *v1357 = *v1349;
              *(&v1357[1] + 6) = *&v1349[14];
              cf[0] = 0;
              *&v1351 = 0;
              if (*&__src[0])
              {
                v169 = __src[0];
              }

              else
              {
                v169 = DWORD2(__src[0]);
              }

              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              dispatch_semaphore_wait(*(v39 + 224), 0xFFFFFFFFFFFFFFFFLL);
              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              os_unfair_lock_lock((v39 + 14576));
              v170 = CFArrayGetCount(*(v39 + 14584));
              v171 = CFArrayGetCount(*(v39 + 14592));
              if (v170 || v171 < 1)
              {
LABEL_210:
                os_unfair_lock_unlock((v39 + 14576));
              }

              else
              {
                while (1)
                {
                  v172 = CFArrayGetValueAtIndex(*(v39 + 14592), 0);
                  CFArrayRemoveValueAtIndex(*(v39 + 14592), 0);
                  CFSetGetCount(*(v39 + 14600));
                  os_unfair_lock_unlock((v39 + 14576));
                  if (!v172)
                  {
                    break;
                  }

                  dispatch_block_wait(v172, 0xFFFFFFFFFFFFFFFFLL);
                  _Block_release(v172);
                  os_unfair_lock_lock((v39 + 14576));
                  v173 = CFArrayGetCount(*(v39 + 14584));
                  v174 = CFArrayGetCount(*(v39 + 14592));
                  if (v173 || v174 <= 0)
                  {
                    goto LABEL_210;
                  }
                }
              }

              v175 = v17;
              os_unfair_lock_lock((v39 + 14576));
              v176 = CFArrayGetCount(*(v39 + 14584)) - 1;
              DictionaryRepresentation = CFArrayGetValueAtIndex(*(v39 + 14584), v176);
              CFArrayRemoveValueAtIndex(*(v39 + 14584), v176);
              CFSetAddValue(*(v39 + 14600), DictionaryRepresentation);
              CFSetGetCount(*(v39 + 14600));
              v177 = *(v39 + 14608) + 1;
              *(v39 + 14608) = v177;
              *(DictionaryRepresentation + 200) = v177;
              os_unfair_lock_unlock((v39 + 14576));
              if (*MEMORY[0x1E695FF58] == 1)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_42();
                kdebug_trace();
              }

              if (*(v39 + 156))
              {
                if (!*(v39 + 158))
                {
                  OUTLINED_FUNCTION_83_0();
                  BufferAndOptionsForTileDecoding = _createBufferAndOptionsForTileDecoding(v178, v169, v179, v180, v181, v182, v39 + 92, v183, &v1351, cf, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889);
                  if (BufferAndOptionsForTileDecoding)
                  {
                    OutputFromConstituents = BufferAndOptionsForTileDecoding;
                    v185 = 0;
                    goto LABEL_277;
                  }

                  v185 = 0;
                  v186 = v1351;
                  goto LABEL_270;
                }
              }

              else if (!*(v39 + 158))
              {
                v186 = 0;
                v185 = 0;
                goto LABEL_270;
              }

              v200 = CFGetAllocator(*(&__src[0] + 1));
              v201 = CFDictionaryCreateMutable(v200, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              cf[0] = v201;
              if (v201)
              {
                v202 = v201;
                v1364.origin.x = OUTLINED_FUNCTION_14_5(*(v1302 + 8));
                v1364.size.width = *(v1302 + 24);
                v1364.size.height = *(v1302 + 32);
                v185 = CGRectCreateDictionaryRepresentation(v1364);
                if (v185)
                {
                  CFDictionaryAddValue(v202, @"CanvasPixelBuffer", *v1302);
                  CFDictionaryAddValue(v202, @"CanvasOrigin", v185);
                  if (*v1302)
                  {
                    v186 = CFRetain(*v1302);
                  }

                  else
                  {
                    v186 = 0;
                  }

                  *&v1351 = v186;
LABEL_270:
                  v203 = *v1302;
                  v204 = *(v1302 + 32);
                  *(DictionaryRepresentation + 16) = *(v1302 + 16);
                  *(DictionaryRepresentation + 32) = v204;
                  *DictionaryRepresentation = v203;
                  *(DictionaryRepresentation + 48) = v1277;
                  *(DictionaryRepresentation + 49) = v1332;
                  *(DictionaryRepresentation + 52) = *(&v1332 + 3);
                  *(DictionaryRepresentation + 56) = v1287;
                  *(DictionaryRepresentation + 64) = v1297;
                  *(DictionaryRepresentation + 72) = v1281;
                  memcpy((DictionaryRepresentation + 88), size, 0x49uLL);
                  *(DictionaryRepresentation + 161) = v22;
                  *(DictionaryRepresentation + 162) = *v1357;
                  *(DictionaryRepresentation + 176) = *(&v1357[1] + 6);
                  *(DictionaryRepresentation + 184) = v1307;
                  *(DictionaryRepresentation + 192) = *&__src[0];
                  if (v186)
                  {
                    v205 = CFRetain(v186);
                  }

                  else
                  {
                    v205 = 0;
                  }

                  *(DictionaryRepresentation + 208) = v205;
                  if (cf[0])
                  {
                    v206 = CFRetain(cf[0]);
                  }

                  else
                  {
                    v206 = 0;
                  }

                  *(DictionaryRepresentation + 216) = v206;
                  OutputFromConstituents = CMPhotoDecompressionPluginDecode(*(v39 + 16));
                  if (!OutputFromConstituents)
                  {
                    v17 = v175;
                    goto LABEL_282;
                  }

LABEL_277:
                  v17 = v175;
                  v207 = OUTLINED_FUNCTION_108();
                  _asyncCanvasDecodeFinished(v207, v208, OutputFromConstituents, 0);
                  v209 = *(DictionaryRepresentation + 208);
                  if (v209)
                  {
                    CFRelease(v209);
                    *(DictionaryRepresentation + 208) = 0;
                  }

                  v210 = *(DictionaryRepresentation + 216);
                  if (v210)
                  {
                    CFRelease(v210);
                    *(DictionaryRepresentation + 216) = 0;
                  }

LABEL_282:
                  if (v1351)
                  {
                    CFRelease(v1351);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v185)
                  {
                    CFRelease(v185);
                  }

                  v12 = v1302;
                  a6 = v1304;
                  if (!OutputFromConstituents)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_546;
                }
              }

              else
              {
                v185 = 0;
              }

              OutputFromConstituents = 4294950305;
              goto LABEL_277;
            }

            v1357[0] = 0;
            cf[0] = 0;
            *&v187 = OUTLINED_FUNCTION_51_0();
            *(v188 + 96) = v187;
            *(v188 + 112) = v187;
            if (*(v39 + 156))
            {
              OUTLINED_FUNCTION_83_0();
              v193 = _createBufferAndOptionsForTileDecoding(v300, v301, v302, v303, v304, v305, v39 + 92, v306, cf, v1357, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889);
              if (v193)
              {
                goto LABEL_596;
              }
            }

            else
            {
              v189 = *(v39 + 152);
              if (v189 == 825306677 || v189 == 1932996149 || v189 == 825437747)
              {
                v192 = CFGetAllocator(*(&__src[0] + 1));
                v1357[0] = CFDictionaryCreateMutable(v192, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v1357[0])
                {
                  goto LABEL_580;
                }

                v193 = FigCFDictionarySetInt();
                if (v193)
                {
                  goto LABEL_596;
                }
              }
            }

            *&size[24] = *&__src[0];
            if (*(v39 + 208) || (*&size[8] = dispatch_semaphore_create(0)) != 0)
            {
              v193 = CMPhotoDecompressionPluginDecode(*(v39 + 16));
              if (!v193)
              {
                if (!*(v39 + 208))
                {
                  dispatch_semaphore_wait(*&size[8], 0xFFFFFFFFFFFFFFFFLL);
                }

                OutputFromConstituents = *&size[16];
                if (*&size[16])
                {
                  goto LABEL_597;
                }

                DefaultTripletsForTransfer = *size;
                if (*size != cf[0] && *(v39 + 156))
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_19();
                  v193 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v652, v669, v682);
                }

                else
                {
                  if (v1277)
                  {
LABEL_239:
                    OutputFromConstituents = 0;
                    *size = 0;
                    goto LABEL_240;
                  }

                  v194 = OUTLINED_FUNCTION_14_5(*(v39 + 176));
                  v193 = OUTLINED_FUNCTION_77_0(DefaultTripletsForTransfer, v194, v195, *(v39 + 192), *(v39 + 200));
                  if (!v193)
                  {
                    DefaultTripletsForTransfer = *size;
                    goto LABEL_239;
                  }
                }
              }

LABEL_596:
              OutputFromConstituents = v193;
LABEL_597:
              DefaultTripletsForTransfer = 0;
LABEL_240:
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v1357[0])
              {
                CFRelease(v1357[0]);
              }

              if (*size)
              {
                CFRelease(*size);
              }

              if (*&size[8])
              {
                dispatch_release(*&size[8]);
              }

              if (!OutputFromConstituents)
              {
                if (!(v1287 | v1297) && v1281 == 0 || (v196 = OUTLINED_FUNCTION_77_0(DefaultTripletsForTransfer, v1287, v1297, v1281, *(&v1281 + 1)), !v196))
                {
                  pixelBuffer = DefaultTripletsForTransfer;
LABEL_289:
                  OutputFromConstituents = 0;
                  LOBYTE(v22) = v12 != 0;
LABEL_290:
                  DefaultTripletsForTransfer = 0;
                  v211 = OutputFromConstituents != 0;
                  goto LABEL_291;
                }

                OutputFromConstituents = v196;
              }

              goto LABEL_547;
            }

LABEL_580:
            DefaultTripletsForTransfer = 0;
            OutputFromConstituents = 4294950305;
            goto LABEL_240;
          }

          if (DictionaryRepresentation)
          {
            HEIFItemDecoderRelease(DictionaryRepresentation);
            *&v1337 = 0;
          }

          HIDWORD(v1347[5]) = 1;
          size[0] = v1277;
          *&size[1] = v1355;
          OUTLINED_FUNCTION_33_0(*(&v1355 + 3), v652, v669, v682, v697, v713, v727, v737, v748, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, object, v889, v899, v909, v919, v929, v939, v949, v959, v970, v980, v990, v1003, v1016, v1028, v1040, v1051, v1063, v1075[0], v1075[1], v1095, v1110, v1122, v1135, v1145, v1155, theArray, v1180, v1193, v1206, v1218, v1234, v1244, v1257, v1265, v1269, v1270, v1274, v1277, v1281, *(&v1281 + 1), v1287);
          size[113] = v22;
          *&size[114] = *v1349;
          DictionaryRepresentation = v1347;
          *&size[128] = *&v1349[14];
          OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_84_0();
          v160 = HEIFItemDecoderCreate(v161, v162, v163, v164, v165, v166, v167, v168, 0, 0, v684, v699, v715);
          if (!v160)
          {
            v39 = v1337;
            goto LABEL_195;
          }
        }

        OutputFromConstituents = v160;
LABEL_546:
        DefaultTripletsForTransfer = 0;
LABEL_547:
        v354 = a4;
LABEL_555:
        LOBYTE(v22) = 0;
        if (v354)
        {
          *(v354 + 14580) = OutputFromConstituents;
        }

        v211 = 1;
LABEL_291:
        if (v1337)
        {
          OUTLINED_FUNCTION_10_0();
          DictionaryRepresentation = HEIFItemDecoderWaitForFinishAndReturnStatus(v212, v213, v214, v215);
          HEIFItemDecoderRelease(v1337);
          OutputFromConstituents = v211 ? OutputFromConstituents : DictionaryRepresentation;
          if (*MEMORY[0x1E695FF58] == 1)
          {
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_42();
            kdebug_trace();
          }
        }

        if (DefaultTripletsForTransfer)
        {
          CFRelease(DefaultTripletsForTransfer);
        }

        v216 = v1360;
        if (!v1360)
        {
          goto LABEL_1030;
        }

        goto LABEL_1029;
      }

LABEL_544:
      OUTLINED_FUNCTION_47_0();
      goto LABEL_290;
    }

    OUTLINED_FUNCTION_46_0();
LABEL_554:
    v354 = a4;
    goto LABEL_555;
  }

  OUTLINED_FUNCTION_120(__src);
  LODWORD(v22) = *a5;
  DefaultTripletsForTransfer = a5[1];
  OUTLINED_FUNCTION_96_0();
  v246 = *(a5 + 1);
  v10 = *(a5 + 2);
  v247 = *(a5 + 4);
  v1301 = *(a5 + 3);
  v248 = *(a5 + 56);
  *v1357 = *(a5 + 40);
  *&v1357[2] = v248;
  *&v1357[4] = *(a5 + 72);
  *(&v1284 + 1) = *(a5 + 11);
  v1291 = v247;
  *&v1284 = *(a5 + 12);
  v1266 = *(a5 + 13);
  v1280 = a5[112];
  v1221 = a5[113];
  v1259 = a5[114];
  v1329 = a5[119];
  v1328 = *(a5 + 115);
  *v1245 = *(a5 + 15);
  v1208 = *(a5 + 16);
  *&v1331 = 0;
  v1330[0] = 0;
  OUTLINED_FUNCTION_49();
  v1326 = 0;
  v1315 = -1;
  v1324 = -1;
  v1325 = 0;
  BOOLean = 0;
  if (*&__src[0])
  {
    DictionaryRepresentation = *&__src[0];
  }

  else
  {
    DictionaryRepresentation = *(&__src[0] + 1);
  }

  v1322 = 0;
  v1273 = CFGetAllocator(*(&__src[0] + 1));
  if (_getImageOrientation(*(&__src[0] + 1), v1306, 0, &v1319))
  {
    goto LABEL_1096;
  }

  v249 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v249)
  {
    goto LABEL_447;
  }

  if (v249(v1306, v1330))
  {
    goto LABEL_1096;
  }

  v1337 = 0uLL;
  v1332 = 0uLL;
  v1355 = 0uLL;
  v1353 = 0uLL;
  memset(cf, 0, 32);
  if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1306, *(*(&__src[0] + 1) + 28), cf, &v1353) || _getTileGeometryFromPictureTileCursorService(v1330[0], &v1337, &v1332, &v1355) || CMPhotoPictureReaderGetImageCodecTypeFromReader(v1306, &v1322))
  {
    goto LABEL_1096;
  }

  if (v22)
  {
    cf[1] = 0;
    cf[0] = 0;
    *&cf[2] = v1355;
  }

  v1203 = DefaultTripletsForTransfer;
  if (v246 | v10 || v1301 | v1291 && (v1301 == cf[2] ? (v307 = v1291 == cf[3]) : (v307 = 0), !v307))
  {
    *size = v246;
    *&size[8] = v10;
    *&size[16] = v1301;
    *&size[24] = v1291;
    if (CMPhotoApplyCropCMPhotoRectToRect(cf, size))
    {
      goto LABEL_378;
    }
  }

  OutputFromConstituents = *(&v1332 + 1);
  DefaultTripletsForTransfer = v1332;
  v308 = cf[0] / v1332 * v1332;
  v309 = cf[1] / *(&v1332 + 1) * *(&v1332 + 1);
  cf[0] = (cf[0] % v1332);
  cf[1] = (cf[1] % *(&v1332 + 1));
  *&v1353 = cf[2] + cf[0];
  *(&v1353 + 1) = cf[3] + cf[1];
  v310 = (cf[2] + cf[0] + v1332 + ~((cf[2] + cf[0] - 1) % v1332)) / v1332;
  v311 = (cf[3] + cf[1] + *(&v1332 + 1) + ~((cf[3] + cf[1] - 1) % *(&v1332 + 1))) / *(&v1332 + 1);
  *&v1337 = v310;
  *(&v1337 + 1) = v311;
  if (v1322 == 1936484717 && (v311 > 4 || v310 != 1))
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950297;
    goto LABEL_450;
  }

  *&v1355 = v310 * v1332;
  *(&v1355 + 1) = v311 * *(&v1332 + 1);
  if (v12)
  {
    v313 = ((v10 % *(&v1332 + 1)) | (v246 % v1332)) == 0;
  }

  else
  {
    v313 = 0;
  }

  v314 = v313;
  if (v1203)
  {
    v315 = v1319 == 1;
  }

  else
  {
    v315 = 1;
  }

  if (v315)
  {
    v316 = v314;
  }

  else
  {
    v316 = 0;
  }

  if (v316 == 1 && (!*v12 || *(v12 + 8) != 0 || *(v12 + 24) != 0 || !*(v12 + 40)))
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950304;
    goto LABEL_450;
  }

  v1101 = v22;
  v22 = v1347;
  v1296 = v17;
  DictionaryRepresentation = *(&v1284 + 1);
  v317 = v1284;
  v1161 = v316;
  theArrayb = v309;
  *v1186 = v308;
  if (v1284 == 0 || (v1332 == *(&v1284 + 1) ? (v318 = *(&v1332 + 1) == v1284) : (v318 = 0), v318))
  {
    v1340 = v1332;
    v1128 = 1;
    v317 = *(&v1332 + 1);
    DictionaryRepresentation = v1332;
  }

  else
  {
    v1128 = 0;
    *&v1340 = *(&v1284 + 1);
    *(&v1340 + 1) = v1284;
  }

  v1080 = DictionaryRepresentation * v310;
  value.i64[0] = DictionaryRepresentation * v310;
  value.i64[1] = v317 * v311;
  *size = 0;
  *&size[8] = 0;
  *&size[16] = cf[2] + cf[0];
  *&size[24] = cf[3] + cf[1];
  OUTLINED_FUNCTION_79_0(&v1351);
  v1336 = v1352[0];
  v1360 = 0u;
  *v1361 = 0u;
  *size = *cf;
  *&size[16] = *&cf[2];
  OUTLINED_FUNCTION_79_0(&v1360);
  if (_copyColorInfoForItem(*(&__src[0] + 1), v1306, 0, v1280, &v1325, 0, &v1343, &v1342, &v1341, &v1326, &v1315, &v1324, 0))
  {
    OUTLINED_FUNCTION_47_0();
    v17 = v1296;
    v10 = a9;
    goto LABEL_451;
  }

  DefaultTripletsForTransfer = FigPictureReaderGetFigBaseObject();
  v319 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v17 = v1296;
  if (!v319)
  {
    OUTLINED_FUNCTION_86_0();
    goto LABEL_450;
  }

  if (v319(DefaultTripletsForTransfer, *MEMORY[0x1E6972308], v1273, &BOOLean))
  {
LABEL_378:
    OUTLINED_FUNCTION_47_0();
LABEL_450:
    v10 = a9;
    goto LABEL_451;
  }

  v320 = CFBooleanGetValue(BOOLean);
  LODWORD(v22) = v320;
  DefaultTripletsForTransfer = &BOOLean;
  if (v1322 == 1936484717 && !v320)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_19();
    OutputFromConstituents = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v659, v674, v689);
    goto LABEL_450;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    BOOLean = 0;
  }

  DictionaryRepresentation = FigPictureReaderGetFigBaseObject();
  v321 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v321)
  {
LABEL_447:
    OUTLINED_FUNCTION_86_0();
LABEL_448:
    v10 = a9;
    goto LABEL_451;
  }

  if (v321(DictionaryRepresentation, *MEMORY[0x1E6972300], v1273, &BOOLean))
  {
LABEL_1096:
    OUTLINED_FUNCTION_47_0();
    goto LABEL_448;
  }

  if (CFBooleanGetValue(BOOLean))
  {
    OutputFromConstituents = 0;
  }

  else
  {
    OutputFromConstituents = v1128;
  }

  if (v1161)
  {
    dispatch_retain(*(v12 + 40));
    v322 = *(v12 + 40);
  }

  else
  {
    v322 = dispatch_queue_create("com.apple.cmphoto.canvasTransferQueue", 0);
  }

  if (!v322)
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950305;
    goto LABEL_448;
  }

  DictionaryRepresentation = v1330[0];
  v323 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v323)
  {
    LOBYTE(v22) = 0;
    v353 = 0;
    OutputFromConstituents = 4294954514;
LABEL_542:
    v10 = a9;
    goto LABEL_593;
  }

  v997 = OutputFromConstituents;
  if (v323(DictionaryRepresentation, &v1346))
  {
    OUTLINED_FUNCTION_47_0();
    v353 = 0;
    goto LABEL_542;
  }

  v1034 = v22;
  v1022 = v322;
  memset(v1349, 0, 37);
  v1334 = 0;
  v1335 = 0;
  v1327[0] = 0;
  *(v1327 + 3) = 0;
  v324 = *(&v1337 + 1);
  v1276 = a5;
  if (!*(&v1337 + 1))
  {
    goto LABEL_561;
  }

  v1010 = 0;
  v22 = 0;
  v325 = 0;
  v326 = v1266;
  if (!v1266)
  {
    v326 = 875704422;
  }

  v964 = v326;
  v1129 = v1336;
  v1045 = *MEMORY[0x1E69723A0];
  v1057 = *(&v1336 + 1);
  v327 = v1337;
  do
  {
    if (v327)
    {
      DefaultTripletsForTransfer = 0;
      v1293 = v325;
      while (1)
      {
        if (v1345)
        {
          CFRelease(v1345);
          v1345 = 0;
        }

        if (v22)
        {
          OutputFromConstituents = *(v22 + 14580);
          if (OutputFromConstituents)
          {
            goto LABEL_1118;
          }
        }

        v328 = v1332;
        DictionaryRepresentation = v1346;
        v329 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v329)
        {
          goto LABEL_559;
        }

        a6 = v328 * DefaultTripletsForTransfer;
        v17 = *(&v328 + 1) * v1293;
        v325 = v1293;
        v330 = v329(DictionaryRepresentation, *v1186 + v328 * DefaultTripletsForTransfer, theArrayb + *(&v328 + 1) * v1293);
        if (v330)
        {
          goto LABEL_1117;
        }

        DictionaryRepresentation = FigPictureTileCursorGetCMBaseObject();
        v331 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v331)
        {
LABEL_559:
          OUTLINED_FUNCTION_86_0();
          goto LABEL_592;
        }

        v330 = v331(DictionaryRepresentation, v1045, v1273, &v1345);
        if (v330)
        {
          goto LABEL_1117;
        }

        if (!v1331)
        {
          break;
        }

LABEL_507:
        v333 = *(&v1340 + 1) * v1293;
        v334 = v1129 - v1340 * DefaultTripletsForTransfer;
        if (v1340 >= v334)
        {
          v335 = v1129 - v1340 * DefaultTripletsForTransfer;
        }

        else
        {
          v335 = v1340;
        }

        if (*(&v1340 + 1) >= (v1057 - v333))
        {
          v336 = v1057 - v333;
        }

        else
        {
          v336 = *(&v1340 + 1);
        }

        if (v335 && v336)
        {
          v337 = v1353 - a6;
          v338 = *(&v1353 + 1) - v17;
          v339 = v1340 > v334 || *(&v1340 + 1) > (v1057 - v333);
          v340 = v339;
          a6 = v340 ? v336 : 0;
          v17 = v340 ? v335 : 0;
          *&__dst[0] = v1331;
          *(&__dst[0] + 1) = v1340 * DefaultTripletsForTransfer;
          *&__dst[1] = *(&v1340 + 1) * v1293;
          *(&__dst[1] + 1) = v335;
          *&__dst[2] = v336;
          *(&__dst[2] + 1) = v1022;
          DictionaryRepresentation = v1345;
          memcpy(v1347, __src, sizeof(v1347));
          OUTLINED_FUNCTION_23_2();
          *&size[3] = *v1349;
          *&size[19] = *&v1349[16];
          *&size[32] = *&v1349[29];
          *&size[40] = 0;
          *&size[48] = 0;
          *&size[56] = v17;
          *&size[64] = a6;
          *&size[72] = v337;
          *&size[80] = v338;
          v325 = v1293;
          *&size[88] = *(&v1284 + 1);
          *&size[96] = v1284;
          *&size[112] = v1280;
          size[114] = v1259;
          *&size[115] = v1334;
          size[119] = v1335;
          *&size[120] = *v1245;
          size[128] = 0;
          *&size[129] = v1327[0];
          *&size[132] = *(v1327 + 3);
          OUTLINED_FUNCTION_44();
          v22 = v1010;
          v330 = _decodeItem(v341, v342, v343, v1010, v344, 0, v345, 0, 0);
          if (v330)
          {
            goto LABEL_1117;
          }
        }

        ++DefaultTripletsForTransfer;
        v327 = v1337;
        if (DefaultTripletsForTransfer >= v1337)
        {
          v324 = *(&v1337 + 1);
          goto LABEL_537;
        }
      }

      if (v1161)
      {
        v332 = *v1302;
        if (*v1302)
        {
          v332 = CFRetain(v332);
        }

        *&v1331 = v332;
        if (!v1034 || v22)
        {
LABEL_499:
          OUTLINED_FUNCTION_103_0();
          if (v30)
          {
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_6();
            kdebug_trace();
            v22 = v1344;
            if (v1344)
            {
              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }
            }
          }

          else
          {
            v22 = v1344;
          }

          if (!v1331)
          {
            goto LABEL_1123;
          }

          CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1343, v1342, v1341, v1326, v1331);
          CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1315, v1324, v1331);
          CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1325, v1331);
          v1010 = v22;
          goto LABEL_507;
        }
      }

      else if (!v1034 || v22)
      {
        *size = 0;
        *&size[8] = 0;
        *&size[16] = v1129;
        *&size[24] = v1057;
        OUTLINED_FUNCTION_55_0();
        v330 = _createPixelBuffer(v346, v347, v348, v964, v349, v350, v1080, v351, v659, v674, v689, v704);
        if (v330)
        {
          goto LABEL_1117;
        }

        goto LABEL_499;
      }

      *&size[40] = *v1357;
      size[0] = v1101;
      size[1] = v1203;
      *&size[2] = v1317;
      *&size[6] = v1318;
      *&size[8] = v246;
      *&size[16] = v10;
      *&size[24] = v1301;
      *&size[32] = v1291;
      *&size[56] = *&v1357[2];
      *&size[72] = *&v1357[4];
      *&size[88] = *(&v1284 + 1);
      *&size[96] = v1284;
      *&size[104] = v1266;
      size[112] = v1280;
      size[113] = v1221;
      size[114] = v1259;
      size[119] = v1329;
      *&size[115] = v1328;
      *&size[120] = *v1245;
      *&size[128] = v1208;
      v330 = HEIFItemDecoderCreate(__src, v1306, v1345, 0, size, v997, v1337, *(&v1337 + 1), &v1336, &value, &v1340, &v1344, &v1331);
      if (v330)
      {
        goto LABEL_1117;
      }

      goto LABEL_499;
    }

LABEL_537:
    ++v325;
  }

  while (v325 < v324);
  if (!v1010)
  {
LABEL_561:
    v352 = 0;
LABEL_562:
    dispatch_barrier_sync(v1022, &__block_literal_global_13);
    v356 = *MEMORY[0x1E695FF58];
    if (v352 && v356 == 1)
    {
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
      v356 = *MEMORY[0x1E695FF58];
    }

    if (v356 == 1)
    {
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }

    if (v1331)
    {
      v357 = OUTLINED_FUNCTION_14_5(*&v1360);
      v360 = OUTLINED_FUNCTION_42_1(v358, v357, v359, *v1361, *&v1361[8]);
      LOBYTE(v22) = v360 == 0;
      v361 = v1161;
      if (v360)
      {
        v361 = 1;
      }

      if (v361)
      {
        OutputFromConstituents = v360;
      }

      else
      {
        LOBYTE(v22) = 0;
        OutputFromConstituents = 0;
        pixelBuffer = v1331;
        *&v1331 = 0;
      }
    }

    else
    {
LABEL_1123:
      LOBYTE(v22) = 0;
      OutputFromConstituents = 4294950305;
    }

    goto LABEL_592;
  }

  v330 = HEIFItemDecoderWaitForFinishAndReturnStatus(v1010, &v1353, &v1332, &v1340);
  if (!v330)
  {
    v352 = 1;
    goto LABEL_562;
  }

LABEL_1117:
  OutputFromConstituents = v330;
LABEL_1118:
  LOBYTE(v22) = 0;
LABEL_592:
  a5 = v1276;
  OUTLINED_FUNCTION_69_0();
  v322 = v1022;
  v353 = v1344;
LABEL_593:
  HEIFItemDecoderRelease(v353);
  dispatch_release(v322);
LABEL_451:
  if (v1325)
  {
    CFRelease(v1325);
  }

  if (v1343)
  {
    CFRelease(v1343);
  }

  if (v1342)
  {
    CFRelease(v1342);
  }

  if (v1341)
  {
    CFRelease(v1341);
  }

  if (v1326)
  {
    CFRelease(v1326);
  }

  if (v1330[0])
  {
    CFRelease(v1330[0]);
  }

  if (v1346)
  {
    CFRelease(v1346);
  }

  if (v1331)
  {
    CFRelease(v1331);
  }

  if (v1345)
  {
    CFRelease(v1345);
  }

  v216 = BOOLean;
  if (BOOLean)
  {
    goto LABEL_1029;
  }

LABEL_1030:
  if (!OutputFromConstituents)
  {
    goto LABEL_1031;
  }

LABEL_1070:
  OUTLINED_FUNCTION_40_1();
LABEL_1071:
  v632 = pixelBuffer;
  if (pixelBuffer)
  {
LABEL_1072:
    CFRelease(v632);
  }

LABEL_1073:
  if (DefaultTripletsForTransfer)
  {
    CFRelease(DefaultTripletsForTransfer);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return OutputFromConstituents;
}

void _applyDecodeStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_122();
  v118 = v7;
  v119 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v8;
  v22 = v21;
  v117 = *MEMORY[0x1E69E9840];
  v111 = 0;
  v112 = 0;
  v23 = *(v8 + 88);
  if (*(v8 + 105))
  {
    if (v23)
    {
      DictionaryRepresentation = v9;
      if (CVPixelBufferGetIOSurface(*(v8 + 88)))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
        goto LABEL_83;
      }
    }
  }

  HIDWORD(v81) = v15;
  v82 = v19;
  v25 = 1;
  if (!*(v20 + 309))
  {
    v25 = *(v20 + 308) != 0;
  }

  v110 = 1;
  v113 = 0;
  v114 = 0;
  LODWORD(v80) = *(v20 + 306);
  HIDWORD(v80) = *(v20 + 305);
  LODWORD(v81) = *(v20 + 21);
  v115 = *(v20 + 24);
  v116 = *(v20 + 40);
  cf = v23;
  if (*(v20 + 304))
  {
    v109 = *(v20 + 16);
  }

  else
  {
    v109 = 0uLL;
  }

  v19 = *(v20 + 31);
  DictionaryRepresentation = *(v20 + 3);
  v26 = *(v20 + 14);
  HIDWORD(v78) = v25;
  if (v23 == 0 || v25 || *(v20 + 307))
  {
    v64 = memcpy(__dst, v22, sizeof(__dst));
    OUTLINED_FUNCTION_11_12(v64, v65, v66, v67, v68, v69, v70, v71, v73, v74, v75, v78, v80, v81, v82, v17, v23, v89[0], v89[1], v89[2], v89[3], v89[4], v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v109);
    BYTE2(v105) = DictionaryRepresentation;
    HIBYTE(v105) = 0;
    *(v72 + 115) = 0;
    v106 = v26;
    v107 = 0;
    if (!_decodeItem(__dst, v84, v86, 0, &v91, &v110, 0, v13, &v112))
    {
      goto LABEL_13;
    }

LABEL_83:
    OUTLINED_FUNCTION_29_3();
    goto LABEL_64;
  }

  v27 = v13;
  v28 = *(v20 + 3);
  v76 = v11;
  DictionaryRepresentation = cf;
  v112 = CFRetain(cf);
  v29 = dispatch_queue_create("bufferQueue", 0);
  if (!v29)
  {
    OUTLINED_FUNCTION_29_3();
    goto LABEL_64;
  }

  v30 = v29;
  v90 = v29;
  v31 = memcpy(__dst, v22, sizeof(__dst));
  OUTLINED_FUNCTION_11_12(v31, v32, v33, v34, v35, v36, v37, v38, v73, v74, v76, v78, v80, v81, v82, v17, cf, cf, 0, 0, 0, 0, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v109);
  DictionaryRepresentation = v28;
  BYTE2(v105) = v28;
  HIBYTE(v105) = 0;
  *(v39 + 115) = 0;
  v106 = v26;
  v107 = 0;
  v40 = _decodeItem(__dst, v83, v85, 0, &v91, &v110, v89, v27, 0);
  dispatch_barrier_sync(v30, &__block_literal_global_9);
  dispatch_release(v30);
  v11 = v77;
  if (v40)
  {
    goto LABEL_83;
  }

LABEL_13:
  if (*(v20 + 307))
  {
    v41 = OUTLINED_FUNCTION_14_5(*(v20 + 34));
    if (OUTLINED_FUNCTION_42_1(v42, v41, v43, *(v20 + 36), *(v20 + 37)))
    {
      goto LABEL_83;
    }
  }

  v44 = CMPhotoPixelBufferHasCLAP(v112) && *(v20 + 317) == 0;
  v19 = CMPhotoPixelBufferHasUnhandledIdentityMatrix(v112);
  if (*v22)
  {
    if (CMPhotoDecompressionSessionAsyncRequestCancelled(*(v22[1] + 16), *v22))
    {
      goto LABEL_83;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v112);
  v46 = PixelFormatType;
  v47 = *(v22 + 22);
  if (v47)
  {
    v48 = v47 == PixelFormatType;
  }

  else
  {
    v48 = 1;
  }

  v49 = v48;
  v50 = *(v20 + 8);
  if (*(v20 + 8))
  {
    v50 = *(v20 + 1) == PixelFormatType;
  }

  if (((v49 | v50) & 1) == 0)
  {
    FullRangeForPixelFormat = CMPhotoGetFullRangeForPixelFormat(PixelFormatType);
    v52 = *(v22 + 22);
    if ((FullRangeForPixelFormat == v52 || CMPhotoGetFullRangeForPixelFormat(v52) == v46) && !CMPhotoCreateOtherRangePixelBufferWithBacking(v112))
    {
      if (v112)
      {
        CFRelease(v112);
      }

      v53 = v111;
      v111 = 0;
      v112 = v53;
    }
  }

  if (cfa)
  {
    v54 = cfa == v112;
  }

  else
  {
    v54 = 1;
  }

  v55 = !v54;
  if (((v44 | v79) & 1) == 0 && (v55 & 1) == 0 && !v19 && !*(v20 + 78))
  {
    OUTLINED_FUNCTION_29_3();
LABEL_63:
    *v11 = v63;
    v112 = 0;
    goto LABEL_64;
  }

  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(v22 + 48), *(v22 + 50), *(v22 + 51), *(v22 + 52));
  v19 = ScaleAndRotateOptionsWithHWIfNeeded;
  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    if (DictionaryRepresentation)
    {
      CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", DictionaryRepresentation);
    }

    if (!*(v20 + 308))
    {
      v110 = 1;
    }

    v57 = v112;
    v58 = CVPixelBufferGetPixelFormatType(v112);
    DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(v57, v58);
    v61 = v60;
    CMPhotoCFDictionarySetBoolean(v19, @"DestinationBackedByIOSurface", *(v22 + 49) == 0);
    CMPhotoCFDictionarySetInt(v19, @"SourceExifOrientation", v110);
    v62 = *(v20 + 78);
    if (!v62)
    {
      v62 = CVPixelBufferGetPixelFormatType(v112);
    }

    CMPhotoCFDictionarySetInt(v19, @"DestinationPixelFormat", v62);
    CMPhotoCFDictionarySetBoolean(v19, @"ExactDimensions", 1);
    DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(DefaultTripletsForTransfer, v61);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v19, @"DestinationColorTripletDictionary", DictionaryRepresentation);
    }

    v120.width = OUTLINED_FUNCTION_14_5(*(v20 + 26));
    v20 = CGSizeCreateDictionaryRepresentation(v120);
    if (v20)
    {
      CFDictionarySetValue(v19, @"DestinationSizeDictionary", v20);
    }

    v91 = cfa;
    if (!CMPhotoScaleAndRotateSessionTransformImage(v22[4], v112, v19, &v91))
    {
      if (cfa && v91)
      {
        CFRetain(v91);
      }

      if (v112)
      {
        CFRelease(v112);
      }

      v63 = v91;
      goto LABEL_63;
    }
  }

  else
  {
    v20 = 0;
    DictionaryRepresentation = 0;
  }

LABEL_64:
  if (v111)
  {
    CFRelease(v111);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  OUTLINED_FUNCTION_121();
}

uint64_t CMPhotoCodecSessionPool_CreateSession(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, void **), uint64_t a7, void **a8, _BYTE *a9)
{
  v45 = 0;
  key = 0;
  v14 = 88;
  if (!a2)
  {
    v14 = 48;
  }

  v15 = (a1 + v14);
  v16 = 40;
  if (!a2)
  {
    v16 = 32;
  }

  v17 = *(a1 + v16);
  v44 = v17;
  do
  {
    if (*(a1 + 16))
    {
      v26 = 4294950195;
      goto LABEL_65;
    }

    v18 = FigSimpleMutexLock();
    if (v18)
    {
      v26 = v18;
      goto LABEL_65;
    }

    Value = CFDictionaryGetValue(v15[2], a3);
    if (Value && CFArrayGetCount(Value))
    {
      v20 = OUTLINED_FUNCTION_5();
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      key = ValueAtIndex;
      v23 = OUTLINED_FUNCTION_5();
      CFArrayRemoveValueAtIndex(v23, v24);
      v25 = CFDictionaryGetValue(v15[3], key);
      if (!v25)
      {
        v26 = 4294950195;
        goto LABEL_43;
      }

      if (a2)
      {
        goto LABEL_14;
      }

LABEL_55:
      CFDataGetBytePtr(a3);
      goto LABEL_14;
    }

    Count = CFArrayGetCount(v15[1]);
    if (Count >= v17)
    {
      OUTLINED_FUNCTION_0_9();
      CodecSessionPool_PurgeSessionsWithCriteria(v15, v41, 0, 1);
      Count = CFArrayGetCount(v15[1]);
    }

    if (Count >= v17)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_43;
    }

    v28 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E204024717DD0uLL);
    v25 = v28;
    if (!v28)
    {
      v26 = 4294950305;
      goto LABEL_43;
    }

    *v28 = a2;
    if (a3)
    {
      v29 = CFRetain(a3);
    }

    else
    {
      v29 = 0;
    }

    v25[4] = v29;
    v25[5] = 0;
    *(v25 + 49) = 0;
    v26 = a6(v25, a7, &key);
    v30 = 10;
    if (!a2)
    {
LABEL_23:
      if (v26 != -12915)
      {
        goto LABEL_30;
      }

      if (Count >= 1 && v30 >= 2)
      {
        goto LABEL_40;
      }

      v26 = 4294954381;
LABEL_42:
      v17 = v44;
      goto LABEL_43;
    }

LABEL_30:
    while (1)
    {
      v32 = a2 == 1 && v26 == -12913;
      v33 = !v32 || Count < 1;
      if (v33 || v30 <= 1)
      {
        break;
      }

LABEL_40:
      --v30;
      OUTLINED_FUNCTION_0_9();
      CodecSessionPool_PurgeSessionsWithCriteria(v15, v35, 0, 1);
      v26 = a6(v25, a7, &key);
      Count = CFArrayGetCount(v15[1]);
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    if (v26)
    {
      goto LABEL_42;
    }

    v39 = key;
    v25[3] = key;
    CFDictionarySetValue(v15[3], v39, v25);
    CFArrayGetCount(v15[1]);
    CFArrayAppendValue(v15[1], v39);
    v40 = v45;
    if (key)
    {
      v40 = 1;
    }

    v45 = v40;
    v17 = v44;
    if (!a2)
    {
      goto LABEL_55;
    }

LABEL_14:
    v26 = 0;
    v25[1] = a5;
    v25[2] = a4;
    *(v25 + 48) = 0;
    v25 = 0;
LABEL_43:
    CodecGateway_Destroy(v25);
    if (v26 || key)
    {
      FigSimpleMutexUnlock();
      if (v26)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v36 = malloc_type_calloc(1uLL, 0x10uLL, 0xE00402B90B96AuLL);
      if (!v36 || (v37 = dispatch_semaphore_create(0), (*(v36 + 1) = v37) == 0))
      {
        WaitingClient_Destroy(v36);
        FigSimpleMutexUnlock();
        v26 = 4294950305;
        goto LABEL_65;
      }

      if (a3)
      {
        v38 = CFRetain(a3);
      }

      else
      {
        v38 = 0;
      }

      *v36 = v38;
      WaitingClient_Destroy(0);
      CFArrayAppendValue(v15[4], v36);
      FigSimpleMutexUnlock();
      dispatch_semaphore_wait(*(v36 + 1), 0xFFFFFFFFFFFFFFFFLL);
      WaitingClient_Destroy(v36);
    }
  }

  while (!key);
  *a8 = key;
  key = 0;
  v26 = 0;
  if (a9)
  {
    *a9 = v45;
  }

LABEL_65:
  WaitingClient_Destroy(0);
  if (key)
  {
    CFRelease(key);
  }

  return v26;
}

void OUTLINED_FUNCTION_38_0()
{
  LOBYTE(STACK[0x4E4]) = 0;
  LODWORD(STACK[0x4E0]) = 0;
  *(v0 - 137) = 0;
  LODWORD(STACK[0x753]) = 0;
  LODWORD(STACK[0x761]) = 0;
  *(v0 - 124) = 0;
}

uint64_t CMPhotoDecompressionPluginCreate(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = a5;
  IsTileDecoderAvailable = CMPhotoIsTileDecoderAvailable(a5);
  v20 = 0;
  v21 = 4294950306;
  if (!a11 || !a13)
  {
    goto LABEL_36;
  }

  v22 = IsTileDecoderAvailable;
  if (a10)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  v23 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040E64C4356uLL);
  v20 = v23;
  if (!v23)
  {
    v21 = 4294950305;
    goto LABEL_36;
  }

  switch(v14)
  {
    case 1635135537:
    case 1635148593:
      goto LABEL_13;
    case 1936484717:
      v26 = CMPhotoDecompressionPluginClassSlim;
      goto LABEL_18;
    case 1785750887:
      v26 = CMPhotoDecompressionPluginClassJPEG;
LABEL_18:
      v25 = v26;
      goto LABEL_19;
  }

  if (v14 != 1752589105)
  {
    v21 = 4294950298;
    goto LABEL_36;
  }

LABEL_13:
  if (v22)
  {
    v25 = CMPhotoDecompressionPluginClassVideoToolbox_Tile;
  }

  else
  {
    v25 = CMPhotoDecompressionPluginClassVideoToolbox;
  }

LABEL_19:
  v23[5] = v25;
  v23[6] = a11;
  if (a1)
  {
    v27 = CFRetain(a1);
  }

  else
  {
    v27 = 0;
  }

  *v20 = v27;
  if (a2)
  {
    v28 = CFRetain(a2);
  }

  else
  {
    v28 = 0;
  }

  v20[1] = v28;
  if (a3)
  {
    v29 = CFRetain(a3);
  }

  else
  {
    v29 = 0;
  }

  v20[2] = v29;
  if (a4)
  {
    v30 = CFRetain(a4);
  }

  else
  {
    v30 = 0;
  }

  v20[3] = v30;
  if (a6)
  {
    v31 = CFRetain(a6);
  }

  else
  {
    v31 = 0;
  }

  v20[4] = v31;
  v20[7] = a12;
  *(v20 + 18) = v14;
  *(v20 + 19) = 1;
  v20[10] = a9;
  v20[11] = a8;
  v21 = (*v20[5])(v20, a7, a10, a11);
  if (!v21)
  {
    *a13 = v20;
    v20 = 0;
  }

LABEL_36:
  CMPhotoDecompressionPluginDispose(v20);
  return v21;
}

uint64_t HEIFItemDecoderCreate(uint64_t *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, char a6, unint64_t a7, unint64_t a8, __int128 *a9, size_t *a10, uint64_t *a11, void *a12, __CVBuffer **a13)
{
  v19 = CFGetAllocator(a1[1]);
  v149 = 0;
  v150 = 0;
  v148[0] = 0;
  v148[1] = 0;
  v147 = 0;
  v136 = *(a5 + 112);
  v140 = *(a5 + 104);
  v146 = 0;
  if (*(a1 + 49))
  {
    v20 = 2;
  }

  else
  {
    v20 = 4;
  }

  v132 = v20;
  if (*(a1 + 49))
  {
    v21 = 2;
  }

  else
  {
    v21 = 64;
  }

  v22 = malloc_type_calloc(1uLL, 0x3918uLL, 0x10600407F32F884uLL);
  if (!v22)
  {
    Mutable = 0;
    goto LABEL_162;
  }

  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_162:
    v78 = 4294950305;
    goto LABEL_152;
  }

  *(v22 + 1) = a1;
  v24 = a3;
  value_4 = a6;
  if (a3)
  {
    v24 = CFRetain(a3);
  }

  *(v22 + 5) = v24;
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v24, *(a1[1] + 28), (v22 + 176), (v22 + 160));
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  ImageGeometryFromPictureReader = _copyColorInfoForItem(a1[1], *(v22 + 5), 0, v136, v22 + 3, *(a5 + 128), v22 + 6, v22 + 7, v22 + 8, v22 + 9, v22 + 20, v22 + 21, 0);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageCodecTypeFromReader(*(v22 + 5), &v147);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  v145 = 0;
  ImageGeometryFromPictureReader = CMPhotoDecompressionContainerIsCodecAllowed(a1[1], v147, &v145);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  if (!v145 || v147 == 1936484717 && (v26 = FigCFArrayContainsInt(), IsInternalBuild = FigDebugIsInternalBuild(), !CMPhotoAllowExperimentalCodecsOverride(IsInternalBuild | v26)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
    ImageGeometryFromPictureReader = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_167;
  }

  if (!a2)
  {
    a2 = *(v22 + 5);
  }

  value = v21;
  if (!CMPhotoPictureReaderCopyImageBitDepth(a2, &v146) && v146)
  {
    CFDictionaryAddValue(Mutable, @"PixelInformation", v146);
  }

  v144 = 0;
  v28 = v147;
  if (v147 == 1635135537)
  {
    OUTLINED_FUNCTION_6();
    ImageGeometryFromPictureReader = _copyMultilayerProperties(v29, v30, v31, v32, v33, v34);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_167;
    }

    v28 = v147;
  }

  v35 = *(a1 + 11);
  v36 = v35 == 1;
  if (!v35)
  {
    v36 |= *(a1 + 40) | v144;
    if (v28 == 1635135537)
    {
      v36 |= (*&CMVideoFormatDescriptionGetDimensions(*(v22 + 3)) & 0x100000001) != 0;
    }
  }

  OUTLINED_FUNCTION_58_0();
  v138 = a5;
  if (v42)
  {
    v143 = 0;
    v141[0] = 0;
    v151 = 0;
    if (CMPhotoPictureReaderCopyByteStreamForFirstTile(a3, v141, &v151))
    {
      v39 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_31_0();
      CMPhotoGetImageInformationFromJFIFByteStream();
      v39 = v38 == 0;
    }

    v37 = v141[0];
    if (v141[0])
    {
      CFRelease(v141[0]);
    }

    if (v39)
    {
      v36 |= (v143 & 0xFE) == 194;
    }

    else
    {
      v36 = 1;
    }
  }

  v40 = MEMORY[0x1E695E4D0];
  if (v36)
  {
    OUTLINED_FUNCTION_119(v37, @"PreferSoftwareCodec");
  }

  if (*(a1 + 11) == 2)
  {
    OUTLINED_FUNCTION_119(v37, @"RequireHardwareCodec");
  }

  IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(v140);
  if (IsPackedYUV)
  {
    OUTLINED_FUNCTION_119(IsPackedYUV, @"AllowPackedBuffers");
  }

  if (*(a1 + 53) || v147 == 1635148593)
  {
    OUTLINED_FUNCTION_119(IsPackedYUV, @"UseVTDecompression");
  }

  v22[208] = 0;
  v135 = a8;
  v42 = a7 == 1 && a8 == 1;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_85_0();
    CMPhotoCFDictionarySetBoolean(v43, v44, v45);
    v22[208] = 1;
  }

  CMPhotoCFDictionarySetInt32(Mutable, @"ThreadPriority", *(v138 + 108));
  v22[157] = a13 != 0;
  if (a13)
  {
    v46 = _canvasItemDecodeCallback;
  }

  else
  {
    v46 = _oneShotItemDecodeCallback;
  }

  OUTLINED_FUNCTION_48_0();
  v47 = (v22 + 16);
  ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCreate(v19, v48, v49, v50, v51, v52, v53, v54, 0, Mutable, v46, v22, v22 + 2);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  if (a4)
  {
    ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a4, *(a1[1] + 28), 0, v148);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_167;
    }

    v55 = CFGetAllocator(a4);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v57)
    {
      v78 = 4294954514;
      goto LABEL_152;
    }

    ImageGeometryFromPictureReader = v57(FigBaseObject, *MEMORY[0x1E69722F8], v55, &v149);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_167;
    }
  }

  ImageGeometryFromPictureReader = CMPhotoDecompressionPluginGetDecoderRestrictions(*(v22 + 2), v149, (v22 + 92));
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_167;
  }

  v58 = CMPhotoDecompressionPluginSupportsNativeTiling(*(v22 + 2));
  v22[156] = v58;
  v59 = *(v22 + 21);
  if (v59 < *(v22 + 35) || (v60 = *(v22 + 20), v60 < *(v22 + 34)) || v59 > *(v22 + 37) || v60 > *(v22 + 36))
  {
    if (v36 || *(a1 + 11))
    {
      if (v58)
      {
LABEL_166:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        ImageGeometryFromPictureReader = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_167;
      }

      v76 = v140;
      goto LABEL_89;
    }

    LOBYTE(v151) = 0;
    v141[0] = 0;
    CMPhotoDecompressionPluginDispose(*v47);
    *v47 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    OUTLINED_FUNCTION_64_0();
    CMPhotoCFDictionaryGetCFValueIfPresent();
    CFRelease(Mutable);
    v61 = CFDictionaryCreateMutable(v19, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = v61;
    if (!v61)
    {
      goto LABEL_162;
    }

    v62 = *v40;
    CFDictionaryAddValue(v61, @"PreferSoftwareCodec", v62);
    if (v151)
    {
      CFDictionaryAddValue(Mutable, @"UseVTDecompression", v62);
    }

    if (v141[0])
    {
      v63 = OUTLINED_FUNCTION_64_0();
      CFDictionaryAddValue(v63, v64, v65);
    }

    if (v22[208])
    {
      v66 = OUTLINED_FUNCTION_85_0();
      CMPhotoCFDictionarySetBoolean(v66, v67, v68);
    }

    OUTLINED_FUNCTION_48_0();
    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCreate(v19, v69, v70, v71, v72, v73, v74, v75, 0, Mutable, v46, v22, v22 + 2);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_167;
    }

    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginGetDecoderRestrictions(*v47, v149, (v22 + 92));
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_167;
    }

    v58 = v22[156];
  }

  v76 = v140;
  if (v58)
  {
    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCopyPixelBufferAttributes(*(v22 + 2));
    if (!ImageGeometryFromPictureReader)
    {
      OUTLINED_FUNCTION_58_0();
      if (v42)
      {
        v77 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(v140, 0, 0);
        if (v136 || v140 && !v77)
        {
          *(v22 + 38) = v140;
        }
      }

      goto LABEL_95;
    }

LABEL_167:
    v78 = ImageGeometryFromPictureReader;
    goto LABEL_152;
  }

LABEL_89:
  if (v76)
  {
    *(v22 + 38) = v76;
  }

  else
  {
    OUTLINED_FUNCTION_58_0();
    if (!v42 || CMPhotoPictureReaderGetYUVPixelFormatForJPEG(a3, v22 + 38))
    {
      *(v22 + 38) = 875704422;
    }
  }

LABEL_95:
  if (v22[157])
  {
    v79 = (v22[156] & value_4);
    if (*a13)
    {
      PixelBufferSize = CMPhotoGetPixelBufferSize(*a13);
      if (a11)
      {
        v82 = vcvtad_u64_f64(v81);
        if (*a11 > vcvtad_u64_f64(PixelBufferSize) || a11[1] > v82)
        {
          v79 = 0;
        }
      }

      v78 = a13;
      CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(v22 + 6), *(v22 + 7), *(v22 + 8), *(v22 + 9), *a13);
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(v22 + 20), *(v22 + 21), *a13);
      CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(v22 + 3), *a13);
      OUTLINED_FUNCTION_37_1();
      v90 = 0;
      v91 = _canDecodeTilesOrLayersIntoCanvas(v84, v85, v86, v87, v88, a7, v135, v89, v126, v128, v130) & v79;
    }

    else
    {
      v94 = *a1;
      if (!*a1)
      {
        v94 = a1[1];
      }

      v95 = a1[3];
      v96 = *(a1 + 49);
      if (!v76)
      {
        v76 = *(v22 + 38);
      }

      v97 = 0;
      v141[0] = 0;
      v141[1] = 0;
      v142 = *a9;
      if (v79)
      {
        v98 = (v22 + 92);
      }

      else
      {
        v98 = 0;
      }

      if (v79)
      {
        v97 = *(v22 + 4);
      }

      ImageGeometryFromPictureReader = _createPixelBuffer(v95, v94, v96, v76, *a11, a11[1], *a10, a10[1], v141, v98, v97, &v150);
      if (ImageGeometryFromPictureReader)
      {
        goto LABEL_167;
      }

      v90 = v150;
      CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(v22 + 6), *(v22 + 7), *(v22 + 8), *(v22 + 9), v150);
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(v22 + 20), *(v22 + 21), v90);
      CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(v22 + 3), v90);
      OUTLINED_FUNCTION_37_1();
      v91 = _canDecodeTilesOrLayersIntoCanvas(v90, v99, v100, v101, v102, a7, v135, v103, v127, v129, v131) & v79;
      v78 = a13;
    }

    v22[158] = v91;
    v92 = value;
    if (v147 != 1936484717 || *(v22 + 38) != *(v138 + 104) || *(v138 + 8) != 0 || *(v138 + 24) != 0)
    {
      if (!v91)
      {
        if (*(v138 + 114))
        {
          v92 = 2;
        }

        else
        {
          if (qword_1ED6FA648 != -1)
          {
            dispatch_once(&qword_1ED6FA648, &__block_literal_global_19);
          }

          if (qword_1ED6FA650 != -1)
          {
            dispatch_once(&qword_1ED6FA650, &__block_literal_global_22);
          }

          if (_MergedGlobals_7)
          {
            v93 = MEMORY[0x1AC553730]();
          }

          else
          {
            v93 = 0;
          }

          v104 = *(v22 + 20);
          v105 = *(v22 + 21);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(*(v22 + 38));
          if (!v93)
          {
            goto LABEL_137;
          }

          v107 = a7 * v135;
          if (a7 * v135 >= v132)
          {
            v107 = v132;
          }

          if (v104 * v107 * v105 * BytesPerPixelForPixelFormat > v93 >> 2)
          {
            v92 = 2;
          }

          else
          {
LABEL_137:
            v92 = v132;
          }

          v78 = a13;
        }
      }

LABEL_140:
      *(v22 + 53) = v92;
      *(v22 + 3644) = 0;
      v108 = v92;
      v109 = dispatch_semaphore_create(v92);
      *(v22 + 28) = v109;
      if (v109)
      {
        v110 = dispatch_semaphore_create(0);
        *(v22 + 29) = v110;
        if (v110)
        {
          OUTLINED_FUNCTION_44();
          v114 = CFArrayCreateMutable(v111, v112, v113);
          *(v22 + 1823) = v114;
          if (v114)
          {
            v115 = OUTLINED_FUNCTION_5_2();
            v117 = CFArrayCreateMutable(v115, v116, 0);
            *(v22 + 1824) = v117;
            if (v117)
            {
              OUTLINED_FUNCTION_44();
              v121 = CFSetCreateMutable(v118, v119, v120);
              *(v22 + 1825) = v121;
              if (v121)
              {
                v122 = v22 + 240;
                do
                {
                  CFArrayAppendValue(*(v22 + 1823), v122);
                  v122 += 224;
                  --v108;
                }

                while (v108);
                goto LABEL_147;
              }
            }
          }
        }
      }

      goto LABEL_162;
    }

    if (v91)
    {
      goto LABEL_140;
    }

    goto LABEL_166;
  }

  v90 = 0;
  v78 = a13;
LABEL_147:
  CMPhotoDecompressionPluginIsHardwareSession(*(v22 + 2));
  OUTLINED_FUNCTION_94_0();
  v22[88] = v123;
  *v22 = 1;
  *a12 = v22;
  if (v78)
  {
    v22 = 0;
    if (*v78)
    {
      v78 = 0;
    }

    else
    {
      v124 = v78;
      v78 = 0;
      *v124 = v90;
      v150 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_152:
  if (v146)
  {
    CFRelease(v146);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  HEIFItemDecoderRelease(v22);
  if (v149)
  {
    CFRelease(v149);
  }

  return v78;
}

unint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17)
{

  return CMPhotoScaleAndRotateSessionTransformForSize(a1, a2, 1, 1, 1919365990, 0, 0, 1, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], v18, a15, a16, a17);
}

void OUTLINED_FUNCTION_8_3(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = (*v9 | a1) != 0;

  bzero(&a9, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_8_11(__n128 a1)
{

  return CMPhotoCFArrayAppendDouble(v1, 0.0);
}

void OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v31 - 120) = 0;
  *(v31 - 128) = 0;

  bzero(&a31, 0xE0uLL);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v8 + 40);

  return _decodePixelBufferForImageIndex(v11, v8, v7, a4, v9, v6, v5, v4);
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 time2a, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 time2_16, uint64_t a17, uint64_t a18, uint64_t _40, uint64_t a19)
{
  time2_16 = a9;
  a17 = a19;

  return CMTimeCompare((v19 - 64), &time2_16);
}

uint64_t CMPhotoPixelFormatIsPackedYUV(int a1)
{
  result = 1;
  if (a1 > 1885745711)
  {
    if (a1 != 1885745712 && a1 != 1885745714)
    {
      v3 = 1885746228;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1882468912 && a1 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_8;
  }

  return result;
}

void CodecGateway_Destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void WaitingClient_Destroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

void CMPhotoDecompressionPluginDispose(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      v2[1](a1);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t CMPhotoDecompressionPluginCopyPixelBufferAttributes(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 40) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionPluginGetDecoderRestrictions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    v4 = *(a1 + 40);
    if (a2)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        return v5();
      }
    }

    v5 = *(v4 + 40);
    if (v5)
    {
      return v5();
    }

    v3 = 0;
    *(a3 + 56) = 0x7FFFFFFF;
    *(a3 + 16) = xmmword_1A5ABB8E0;
    *(a3 + 32) = xmmword_1A5ABB8F0;
    *(a3 + 48) = 0x7FFFFFFF00000001;
    *a3 = 0x1000000010;
  }

  return v3;
}

uint64_t VTDecompressionPluginClass_getDecoderRestrictions(uint64_t a1, uint64_t a2)
{
  propertyValueOut = 0;
  result = 4294950306;
  if (a1 && a2)
  {
    *a2 = 0x1000000040;
    if (*(a1 + 72) == 1752589105)
    {
      v5 = 64;
    }

    else
    {
      v5 = 16;
    }

    *(a2 + 48) = v5;
    *(a2 + 16) = 0x7FFFFFFF;
    *(a2 + 32) = 0x7FFFFFFF0003FFC0;
    *(a2 + 24) = 262080;
    *(a2 + 40) = 262080;
    v6 = *(a1 + 64);
    *(a2 + 52) = 0x7FFFFFFF0003FFC0;
    *(a2 + 20) = v5;
    *(a2 + 28) = v5;
    *(a2 + 44) = v5;
    if (!VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E69839D8], *MEMORY[0x1E695E480], &propertyValueOut))
    {
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      if (CMPhotoDecompressionPluginCopyPixelBufferAttributes(a1))
      {
        BytesPerPixelForPixelFormat = 1;
      }

      else if (CMPhotoPixelFormatIsPackedYUV(0))
      {
        BytesPerPixelForPixelFormat = 1;
      }

      else
      {
        BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(0);
      }

      IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(0);
      v9 = 64;
      if (!IsPackedYUV && 0x40 / BytesPerPixelForPixelFormat >= 0x40)
      {
        v9 = 0x40 / BytesPerPixelForPixelFormat;
      }

      *a2 = v9;
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      v10 = *(a2 + 16);
      *(a2 + 52) = *(a2 + 24);
      *(a2 + 56) = v10;
      v11.i32[0] = *(a2 + 28);
      v11.i32[1] = *(a2 + 20);
      *(a2 + 44) = vmin_s32(*(a2 + 44), v11);
    }

    result = propertyValueOut;
    if (propertyValueOut)
    {
      CFRelease(propertyValueOut);
      return 0;
    }
  }

  return result;
}

uint64_t VTDecompressionPluginClass_copyPixelBufferAttributes(uint64_t a1, int *a2, __CFDictionary **a3)
{
  v6 = *(a1 + 64);
  propertyValueOut = 0;
  pool = 0;
  valuePtr = 0;
  v7 = *MEMORY[0x1E695E480];
  InfoFromFormatDescription = VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E6983910], *MEMORY[0x1E695E480], &propertyValueOut);
  if (InfoFromFormatDescription)
  {
    v9 = InfoFromFormatDescription == -12900;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = propertyValueOut;
  if (!propertyValueOut)
  {
    if (!VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E6983978], v7, &pool))
    {
      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
      if (PixelBufferAttributes)
      {
        v10 = CFRetain(PixelBufferAttributes);
        propertyValueOut = v10;
        if (v10)
        {
          goto LABEL_7;
        }

        v16 = 0;
      }

      else
      {
        v16 = 0;
        propertyValueOut = 0;
      }

      v18 = -16994;
      goto LABEL_41;
    }

    v10 = propertyValueOut;
    if (propertyValueOut)
    {
      goto LABEL_7;
    }

    if (CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription(*(v6 + 16), 0, &valuePtr))
    {
      LOBYTE(v23) = 1;
      InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(*(v6 + 16), 0, 0, 0, &v23, 0, 0, 0, 0, 0, 0, 0);
      if (InfoFromFormatDescription)
      {
LABEL_27:
        v18 = InfoFromFormatDescription;
        v16 = 0;
        goto LABEL_39;
      }

      v16 = 0;
      if (v23)
      {
        v17 = 875704422;
      }

      else
      {
        v17 = 875704438;
      }

      valuePtr = v17;
      if (!a3)
      {
LABEL_37:
        v18 = 0;
        if (a2)
        {
          *a2 = valuePtr;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v16 = 0;
      if (!a3)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    *a3 = v16;
    v16 = 0;
    goto LABEL_37;
  }

LABEL_7:
  v11 = *MEMORY[0x1E6966130];
  Value = CFDictionaryGetValue(v10, *MEMORY[0x1E6966130]);
  if (!Value)
  {
    goto LABEL_52;
  }

  ValueAtIndex = Value;
  v14 = CFGetTypeID(Value);
  if (v14 == CFArrayGetTypeID())
  {
    v23 = 0;
    if (CFArrayGetCount(ValueAtIndex) < 1)
    {
      goto LABEL_52;
    }

    if (CFArrayGetCount(ValueAtIndex) >= 1)
    {
      v15 = 0;
      while (!FigCFArrayGetInt32AtIndex() || !CMPhotoIsDecoderOutputPixelFormatAccepted(v23) || CMPhotoPixelFormatIsPackedYUV(v23) && !*(v6 + 41))
      {
        if (++v15 >= CFArrayGetCount(ValueAtIndex))
        {
          goto LABEL_32;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, v15);
    }
  }

LABEL_32:
  v20 = CFGetTypeID(ValueAtIndex);
  if (v20 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*a1, 0, propertyValueOut);
      v16 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, v11);
        CFDictionaryRemoveValue(v16, *MEMORY[0x1E69660B8]);
        CFDictionaryRemoveValue(v16, *MEMORY[0x1E6966208]);
        if (!a3)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      goto LABEL_53;
    }

LABEL_52:
    v16 = 0;
LABEL_53:
    v18 = -16994;
    goto LABEL_39;
  }

  v16 = 0;
  v18 = -16995;
LABEL_39:
  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

LABEL_41:
  if (pool)
  {
    CFRelease(pool);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if ((v18 | 2) == 0x44E)
  {
    return 4294951826;
  }

  else
  {
    return v18;
  }
}

uint64_t CMPhotoIsDecoderOutputPixelFormatAccepted(int a1)
{
  result = 1;
  if (a1 > 1885745711)
  {
    if (a1 <= 2016686641)
    {
      if (a1 > 1949577775)
      {
        if (a1 == 1949577776 || a1 == 1952854576)
        {
          return result;
        }

        v3 = 2016686640;
      }

      else
      {
        if (a1 == 1885745712 || a1 == 1885745714)
        {
          return result;
        }

        v3 = 1885746228;
      }
    }

    else
    {
      if (a1 <= 2019963441)
      {
        if (a1 == 2016686642 || a1 == 2016687156)
        {
          return result;
        }

        v4 = 12848;
      }

      else
      {
        if (a1 > 2037741157)
        {
          if (a1 == 2037741158)
          {
            return result;
          }

          v3 = 2037741171;
          goto LABEL_35;
        }

        if (a1 == 2019963442)
        {
          return result;
        }

        v4 = 13364;
      }

      v3 = v4 | 0x78660000;
    }

LABEL_35:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 <= 1278226487)
  {
    if (a1 > 875704949)
    {
      if (a1 == 875704950 || a1 == 875836518)
      {
        return result;
      }

      v3 = 875836534;
    }

    else
    {
      if (a1 == 875704422 || a1 == 875704438)
      {
        return result;
      }

      v3 = 875704934;
    }

    goto LABEL_35;
  }

  if (a1 > 1882468911)
  {
    if (a1 == 1882468912 || a1 == 1882468914)
    {
      return result;
    }

    v3 = 1882469428;
    goto LABEL_35;
  }

  if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
  {
    v3 = 1278226488;
    goto LABEL_35;
  }

  return result;
}

uint64_t CMPhotoDecompressionPluginSupportsNativeTiling(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 16)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VTDecompressionPluginClass_supportsNativeTiling(uint64_t result)
{
  if (result)
  {
    return *(*(result + 64) + 40);
  }

  return result;
}

uint64_t CMPhotoPixelBufferAttributesGetExtendedPixels(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966088], &v14);
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966090], &v13);
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E69660A0], &v12);
  result = CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966078], &v11);
  if (a2)
  {
    *a2 = v14;
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

uint64_t CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(uint64_t result, void *a2)
{
  if (a2)
  {
    return CMPhotoPixelBufferAttributesGetExtendedPixels(result, a2, a2 + 1, a2 + 2, a2 + 3);
  }

  return result;
}

uint64_t _createPixelBuffer(__CVBuffer *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, size_t a7, size_t a8, void *a9, int *a10, const __CFDictionary *a11, void *a12)
{
  v63 = 0;
  *v60 = 0u;
  v61 = 0u;
  v18 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (*a9 == 0 && *(a9 + 1) == 0)
  {
    *a9 = 0;
    a9[1] = 0;
    a9[2] = a7;
    a9[3] = a8;
  }

  HIWORD(v59) = 0;
  CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(a11, v60);
  v54 = a2;
  if (v60[0] || v61)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    IsSubsampled = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_42();
  IsSubsampled = CMPhotoPixelFormatIsSubsampled(v19, v20, v21, v22, v23);
  if (IsSubsampled)
  {
LABEL_43:
    v35 = IsSubsampled;
    goto LABEL_44;
  }

  v55 = __PAIR64__(a4, a3);
  pixelBufferOut = a1;
  v29 = v60[1] + a5;
  v30 = *(&v61 + 1) + a6;
  if (a10)
  {
    v31 = *a10;
    v58 = 0;
    CMPhotoCFDictionaryGetSizeIfPresent(a11, *MEMORY[0x1E6966020], &v58);
    if (v58)
    {
      v31 = CMPhotoLeastCommonMultiple(v31, v58);
    }

    OUTLINED_FUNCTION_87_0();
    if (v32 <= a10[7])
    {
      v29 = a10[7];
    }

    else
    {
      v29 = v32;
    }

    OUTLINED_FUNCTION_87_0();
    if (v33 <= a10[5])
    {
      v30 = a10[5];
    }

    else
    {
      v30 = v33;
    }
  }

  else
  {
    v31 = 0;
  }

  if (!*a9 && !a9[1])
  {
    v39 = a9[2];
    v40 = a9[3];
    v41 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v37 = MutableCopy;
    if (MutableCopy)
    {
      v43 = CMPhotoCFDictionarySetSize(MutableCopy, *MEMORY[0x1E6966090], v29 + ~((v39 - 1) % v29));
      if (!v43)
      {
        v43 = CMPhotoCFDictionarySetSize(v37, *MEMORY[0x1E6966078], v30 + ~((v40 - 1) % v30));
        if (!v43)
        {
          v48 = a9[2];
          v49 = a9[3];
          if (v55)
          {
            CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v41, SHIDWORD(v55), v48, v49, v29, v30, v31, v37, &v63, v51, v52, pixelBufferOut, v54, v55, a7, a8, v58, v59, v60[0], v60[1], v61, *(&v61 + 1), v62, v63, v64);
          }

          else
          {
            v50 = OUTLINED_FUNCTION_114(pixelBufferOut, HIDWORD(v55), v48, v49, v44, v45, v46, v47, v31, v37, &v63);
          }

          v35 = v50;
          v18 = MEMORY[0x1E695FF58];
          if (!v50)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

      v35 = v43;
    }

    else
    {
      v35 = 4294950305;
    }

    v18 = MEMORY[0x1E695FF58];
    goto LABEL_27;
  }

  if (v55)
  {
    CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], a4, a7, a8, v29, v30, v31, a11, &v63, v51, v52, a1, a2, v55, a7, a8, v58, v59, v60[0], v60[1], v61, *(&v61 + 1), v62, v63, v64);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_114(a1, HIDWORD(v55), a7, a8, v25, v26, v27, v28, v31, a11, &v63);
  }

  v35 = v34;
  v18 = MEMORY[0x1E695FF58];
  if (v34)
  {
LABEL_44:
    v37 = 0;
    goto LABEL_27;
  }

  v36 = CMPhotoSetPixelBufferCLAP(v63, *a9, a9[1], a9[2], a9[3], 0, 1);
  v37 = 0;
  if (!v36)
  {
LABEL_26:
    v35 = 0;
    *a12 = v63;
    v63 = 0;
    goto LABEL_27;
  }

  v35 = v36;
LABEL_27:
  if (*v18 == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  return v35;
}

uint64_t CMPhotoPixelFormatIsSubsampled(uint64_t a1, BOOL *a2, BOOL *a3, BOOL *a4, uint64_t *a5)
{
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType)
  {
    return 4294950305;
  }

  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
  if (Value)
  {
    v11 = Value;
    Count = CFArrayGetCount(Value);
    v13 = Count;
    if (Count)
    {
      v18 = a5;
      v14 = 0;
      v15 = Count - 1;
      do
      {
        CFArrayGetValueAtIndex(v11, v14);
        FigCFDictionaryGetIntIfPresent();
        FigCFDictionaryGetIntIfPresent();
      }

      while (v15 != v14++);
      a5 = v18;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 1;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  *a2 = 0;
LABEL_10:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = 0;
  if (a5)
  {
    *a5 = v13;
  }

  return result;
}

uint64_t VTTileDecompressionPluginClass_VideoToolbox_callback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8)
{
  v13 = a1[8];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((a8 & 2) != 0)
  {
    v14 = -17104;
  }

  else
  {
    v14 = a7;
  }

  if (v14)
  {
    *v13 = 1;
    if ((v14 | 2) == 0x44E)
    {
      v15 = 4294951826;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = a1[6];
  v17 = a1[7];

  return v16(a1, v15, a5, v17, a2);
}

uint64_t CMPhotoPictureReaderGetHEIFOrientation(const void *a1, _BYTE *a2, int *a3)
{
  number = 0;
  v20 = -1;
  valuePtr = 0;
  v6 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8(FigBaseObject, *MEMORY[0x1E6972368], v6, &number);
  if (v9 == -12783)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    if (v9)
    {
      goto LABEL_12;
    }

    CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v10 = 1;
  }

  if (number)
  {
    CFRelease(number);
    number = 0;
  }

  v12 = CFGetAllocator(a1);
  v13 = FigPictureReaderGetFigBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_11:
    v11 = 4294954514;
    goto LABEL_12;
  }

  v15 = v14(v13, *MEMORY[0x1E6972338], v12, &number);
  if (v15 == -12783)
  {
    v16 = 0;
    v17 = -1;
  }

  else
  {
    v11 = v15;
    if (v15)
    {
      goto LABEL_12;
    }

    CFNumberGetValue(number, kCFNumberIntType, &v20);
    v16 = 1;
    v17 = v20;
  }

  v19 = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(valuePtr, v17, a3);
  v11 = v19;
  if (a2 && !v19)
  {
    *a2 = v10 | v16;
  }

LABEL_12:
  if (number)
  {
    CFRelease(number);
  }

  return v11;
}

uint64_t CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(int a1, int a2, int *a3)
{
  if (!a1 && a2 == -1)
  {
    v4 = 1;
LABEL_9:
    if (a3)
    {
      *a3 = v4;
    }

    return 0;
  }

  if (!a1 && a2 == 1 || a1 == 180 && !a2)
  {
    v4 = 2;
    goto LABEL_9;
  }

  if (a1 == 180 && a2 == -1)
  {
    v4 = 3;
    goto LABEL_9;
  }

  v7 = a1 == 180 && a2 == 1;
  v4 = 4;
  if (!(a2 | a1) || v7)
  {
    goto LABEL_9;
  }

  if (a1 == 90 && !a2 || a1 == 270 && a2 == 1)
  {
    v4 = 5;
    goto LABEL_9;
  }

  if (a1 == 270 && a2 == -1)
  {
    v4 = 6;
    goto LABEL_9;
  }

  v9 = a1 == 270 && a2 == 0;
  v10 = a2 == 1 && a1 == 90;
  v4 = 7;
  if (v10 || v9)
  {
    goto LABEL_9;
  }

  if (a1 == 90 && a2 == -1)
  {
    v4 = 8;
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "(Fig)", 259, v3);
}

CGColorSpaceRef CMPhotoCreateColorSpaceFromTriplets(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = FigCFEqual();
  if (FigCFEqual() && FigCFEqual() || FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0B8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F198];
  }

  else if (v6 && (FigCFEqual() || FigCFEqual()))
  {
    v7 = MEMORY[0x1E695F1C0];
  }

  else if ((FigCFEqual() || FigCFEqual()) && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F150];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F1A8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F190];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F188];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0C8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0C0];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F178];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F170];
  }

  else if (FigCFEqual())
  {
    v7 = MEMORY[0x1E695F1A0];
    if (!a4)
    {
      v7 = MEMORY[0x1E695F1B0];
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v10 = a1 && v6 == 0;
    v11 = !v10;
    if (!a4 || !v11)
    {
      return 0;
    }

    v7 = MEMORY[0x1E695F128];
  }

  v8 = *v7;

  return CGColorSpaceCreateWithName(v8);
}

uint64_t CMPhotoCreateClliDictionary(const __CFData *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    if (CFDataGetLength(a1) != 4)
    {
      return 4294950194;
    }

    CFDataGetBytePtr(a1);
    Mutable = CFDictionaryCreateMutable(a2, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v8 = Mutable;
    OUTLINED_FUNCTION_2_15();
    v12 = CMPhotoCFDictionarySetInt32(v9, v10, v11);
    if (v12)
    {
      v3 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_2_15();
      v3 = CMPhotoCFDictionarySetInt32(v8, v13, v14);
      if (!v3)
      {
        *a3 = v8;
        return v3;
      }
    }

    CFRelease(v8);
  }

  return v3;
}

uint64_t RegisterCMPhotoDecompressionTileIterator()
{
  sCMPhotoDecompressionTileIteratorClass = 0;
  unk_1ED6FA460 = "CMPhotoDecompressionTileIterator";
  qword_1ED6FA468 = CMPhotoDecompressionTileIteratorClass_Init;
  unk_1ED6FA470 = 0;
  qword_1ED6FA480 = 0;
  unk_1ED6FA488 = 0;
  qword_1ED6FA478 = CMPhotoDecompressionTileIteratorClass_Finalize;
  qword_1ED6FA490 = CMPhotoDecompressionTileIteratorClass_CopyFormattingDesc;
  unk_1ED6FA498 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoDecompressionTileIteratorTypeID = result;
  return result;
}

void CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 392))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

uint64_t _copyImageSubsamplingForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_3();
  result = OUTLINED_FUNCTION_4_8(v5, v6, v7);
  if (!result)
  {
    result = _parseImageSizeAndTypeIfNeeded(v4 + 40);
    if (!result)
    {
      *v3 = *(v4 + 128);
    }
  }

  return result;
}

uint64_t _copyImageSubsamplingForIndex_0(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a2)
  {
    if (*(a1 + 136) == 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 6;
    }

    *a3 = v4;
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _copyImageSubsamplingForIndex_1(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_14;
  }

  InfoFromFormatDescription = _copyFormatDescriptionForIndex_0(a1, a2, a3, &v25);
  if (!InfoFromFormatDescription)
  {
    if (CMFormatDescriptionGetMediaSubType(v25) != 1735551332)
    {
LABEL_11:
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_31_0();
      InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23, v24);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_36_1();
    InfoFromFormatDescription = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(v5, v6, v7, v8, v9);
    if (!InfoFromFormatDescription)
    {
      InfoFromFormatDescription = CMPhotoDecompressionContainerCopySampleBufferForIndexWithOptions(a1, -1, 0, &v26);
      if (!InfoFromFormatDescription)
      {
        if (v25)
        {
          CFRelease(v25);
          v25 = 0;
        }

        FormatDescription = CMSampleBufferGetFormatDescription(v26);
        if (FormatDescription)
        {
          FormatDescription = CFRetain(FormatDescription);
        }

        v25 = FormatDescription;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v19 = InfoFromFormatDescription;
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_14:
  if (v26)
  {
    CFRelease(v26);
  }

  return v19;
}

uint64_t _copyImageSubsamplingForIndex_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    return DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, 0, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_116()
{
  *(v0 + 120) = 1;
  v2 = *(v0 + 56);

  return CMPhotoDecompressionContainerHEICS_GetSequenceInfoFromSource(v2, (v0 + 128));
}

uint64_t TileIterator_copyTileSampleBuffer(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = CFGetAllocator(a1);
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (!a2)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x1E6972398], v5, &v29);
  if (v8)
  {
LABEL_20:
    v19 = v8;
    goto LABEL_10;
  }

  v9 = *v3;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
LABEL_9:
    v19 = 4294954514;
    goto LABEL_10;
  }

  v8 = v10(v9, &v26, &v25, &v24, &v23, 0);
  if (v8)
  {
    goto LABEL_20;
  }

  v8 = CMPhotoPictureReaderCreateContiguousBlockBufferFromChunks(v5, v26, v25, v24, v23, 0, 0, &v27);
  if (v8)
  {
    goto LABEL_20;
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  CMTimeMake(&sampleTimingArray.duration, 1, 1);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x1E6960CC0];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  sampleSizeArray = CMBlockBufferGetDataLength(v27);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_84_0();
  v19 = CMSampleBufferCreate(v11, v12, v13, v14, v15, v16, v17, v18, &sampleTimingArray, 1, &sampleSizeArray, &v28);
  if (!v19)
  {
    *a2 = v28;
    v28 = 0;
  }

LABEL_10:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  free(v25);
  free(v24);
  if (v23)
  {
    CFRelease(v23);
  }

  return v19;
}

void __CMPhotoSupportsHEVCHWDecode_block_invoke()
{
  v0 = MGCopyAnswer();
  CMPhotoSupportsHEVCHWDecode_supported = FigCFEqual();
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t _getFourCCPropertyFromReader(const void *a1, uint64_t a2, void *a3)
{
  number = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(FigBaseObject, a2, v5, &number);
    if (v8)
    {
      v9 = v8;
    }

    else if (CFNumberGetValue(number, kCFNumberSInt32Type, a3))
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294950194;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v9;
}

uint64_t _getImageCount_cold_1()
{
  OUTLINED_FUNCTION_71_0();
  v7 = 0;
  v3 = *(v2 + 48);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    result = v4(v3, 1, &v7);
    if (!result)
    {
      v6 = v7;
LABEL_7:
      result = 0;
      *v1 = v6;
    }
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerCreateDictionaryDescription(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  v2 = *(*(a1 + 32) + 352);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t _createDescription(uint64_t a1, CFDictionaryRef *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  cf = 0;
  v6 = _parseImageSizeAndTypeIfNeeded(a1 + 40);
  if (v6)
  {
    return v6;
  }

  MainImageDescription = _parseICCProfileIfNeeded(v5);
  if (MainImageDescription || (MainImageDescription = _parseExifIfNeeded(v5, 0), MainImageDescription) || (MainImageDescription = _parseXMPIfNeeded(v5), MainImageDescription) || (MainImageDescription = _parseDebugMetadataIfNeeded(v5), MainImageDescription) || (MainImageDescription = _parseCustomMetadataIfNeeded(v5), MainImageDescription) || (MainImageDescription = _parseMPOIfNeeded(v5), MainImageDescription) || (MainImageDescription = _createMainImageDescription(a1, 0xFFFFFFFFFFFFFFFFLL, &cf), MainImageDescription))
  {
    v14 = MainImageDescription;
    v12 = 0;
    Int = 0;
    goto LABEL_14;
  }

  v8 = CFArrayCreate(v4, &cf, 1, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    v12 = 0;
    Int = 0;
    v14 = 4294950305;
    goto LABEL_14;
  }

  v9 = v8;
  Int = CMPhotoCFNumberCreateInt(0);
  if (!Int)
  {
    v12 = 0;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(v9);
  v12 = CMPhotoCFNumberCreateInt(Count);
  keys[0] = @"MainImages";
  keys[1] = @"MainImageCount";
  keys[2] = @"PrimaryImageIndex";
  keys[3] = @"ImageSequenceCount";
  values[0] = v9;
  values[1] = v12;
  values[2] = Int;
  values[3] = Int;
  v13 = CFDictionaryCreate(v4, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v13)
  {
LABEL_25:
    v14 = 4294950305;
    goto LABEL_13;
  }

  v14 = 0;
  *a2 = v13;
LABEL_13:
  CFRelease(v9);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v14;
}

uint64_t _createDescription_0(uint64_t a1, __CFDictionary **a2)
{
  v2 = *(a1 + 40);
  theDict = 0;
  values = 0;
  v60 = 0;
  cf = 0;
  value = 0;
  if (!a2)
  {
    v46 = 0;
    v39 = 0;
    v48 = 0;
    goto LABEL_55;
  }

  v5 = OUTLINED_FUNCTION_17();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  v10 = Mutable;
  values = Mutable;
  if (!Mutable)
  {
    v46 = 0;
    goto LABEL_76;
  }

  v11 = *(a1 + 496);
  MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt64(Mutable, @"DataOffset", 0);
  if (!MetadataDescriptionArray_0)
  {
    MetadataDescriptionArray_0 = CMPhotoCFDictionarySetSize(v10, @"DataLength", v11);
    if (!MetadataDescriptionArray_0)
    {
      LODWORD(v13) = *(a1 + 88);
      LODWORD(v14) = *(a1 + 92);
      v64.width = v13;
      v64.height = v14;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v64);
      if (!DictionaryRepresentation)
      {
LABEL_73:
        v46 = 0;
        v10 = 0;
LABEL_76:
        v39 = 0;
        goto LABEL_79;
      }

      v16 = DictionaryRepresentation;
      CFDictionarySetValue(v10, @"Dimensions", DictionaryRepresentation);
      CFRelease(v16);
      MetadataDescriptionArray_0 = _copyImageBitDepthForIndex_1(a1, 0, v17, &value);
      if (!MetadataDescriptionArray_0)
      {
        CFDictionarySetValue(v10, @"BitDepth", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v18 = *(a1 + 288);
        if (v18)
        {
          v19 = CGColorSpaceCopyName(v18);
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(v10, @"NamedColorSpace", v19);
            CFRelease(v20);
          }

          else
          {
            CFDictionarySetValue(v10, @"ColorSpace", *(a1 + 288));
          }
        }

        if (!*(a1 + 304) && !*(a1 + 312))
        {
          goto LABEL_21;
        }

        v21 = OUTLINED_FUNCTION_17();
        v25 = CFDictionaryCreateMutable(v21, v22, v23, v24);
        if (v25)
        {
          v26 = v25;
          v27 = *(a1 + 304);
          if (v27)
          {
            CFDictionarySetValue(v25, @"ColorPrimaries", v27);
          }

          v28 = *(a1 + 312);
          if (v28)
          {
            CFDictionarySetValue(v26, @"TransferFunction", v28);
          }

          CFDictionarySetValue(v10, @"NclxColor", v26);
          CFRelease(v26);
LABEL_21:
          MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt32(v10, @"CodecType", 1786276963);
          if (MetadataDescriptionArray_0)
          {
            goto LABEL_71;
          }

          MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt64(v10, @"ItemID", 1);
          if (MetadataDescriptionArray_0)
          {
            goto LABEL_71;
          }

          v29 = *(a1 + 320);
          if (v29)
          {
            if (CFArrayGetCount(v29) >= 1)
            {
              v50 = OUTLINED_FUNCTION_17();
              MetadataDescriptionArray_0 = _createMetadataDescriptionArray_0(v50, v51, v11, v52, v53);
              if (MetadataDescriptionArray_0)
              {
                goto LABEL_71;
              }
            }
          }

          v30 = *(a1 + 328);
          if (v30)
          {
            if (CFArrayGetCount(v30) >= 1)
            {
              v54 = OUTLINED_FUNCTION_17();
              MetadataDescriptionArray_0 = _createMetadataDescriptionArray_0(v54, v55, v11, v56, v57);
              if (MetadataDescriptionArray_0)
              {
                goto LABEL_71;
              }
            }
          }

          if (!*(a1 + 144) || (v31 = OUTLINED_FUNCTION_17(), v35 = CFDictionaryCreateMutable(v31, v32, v33, v34), (theDict = v35) == 0) || CMPhotoCFDictionarySetInt64(v35, @"DataOffset", 0) || CMPhotoCFDictionarySetSize(theDict, @"DataLength", v11) || (v58 = 0, _getAuxiliaryImageTypeForIndex_1(a1, 0, 0, v36, &v58 + 4, &v58)) || CMPhotoCFDictionarySetInt(theDict, @"AuxiliaryType", SHIDWORD(v58)) || CMPhotoCFDictionarySetInt32(theDict, @"AuxiliaryNativePixelFormat", v58) || CMPhotoCFDictionarySetInt(theDict, @"AlphaPremultiplication", 0))
          {
            v39 = 0;
          }

          else
          {
            LODWORD(v37) = *(a1 + 88);
            LODWORD(v38) = *(a1 + 92);
            v65.width = v37;
            v65.height = v38;
            v39 = CGSizeCreateDictionaryRepresentation(v65);
            if (v39)
            {
              CFDictionarySetValue(theDict, @"Dimensions", v39);
              CFRelease(v39);
              v39 = CFArrayCreate(v2, &theDict, 1, MEMORY[0x1E695E9C0]);
            }
          }

          if (cf)
          {
            CFDictionarySetValue(v10, @"ExifPayloads", cf);
          }

          if (v60)
          {
            CFDictionarySetValue(v10, @"XMPPayloads", v60);
          }

          if (v39)
          {
            CFDictionarySetValue(v10, @"AuxiliaryImages", v39);
            CFArrayGetCount(v39);
          }

          v40 = FigCFDictionarySetInt();
          if (v40)
          {
            v48 = v40;
            v46 = 0;
            v10 = 0;
            goto LABEL_51;
          }

          v10 = CFArrayCreate(v2, &values, 1, MEMORY[0x1E695E9C0]);
          if (v10)
          {
            v41 = OUTLINED_FUNCTION_17();
            v45 = CFDictionaryCreateMutable(v41, v42, v43, v44);
            v46 = v45;
            if (v45)
            {
              CFDictionarySetValue(v45, @"MainImages", v10);
              CFArrayGetCount(v10);
              v47 = FigCFDictionarySetInt();
              if (v47 || (v47 = CMPhotoCFDictionarySetSize(v46, @"PrimaryImageIndex", 0), v47))
              {
                v48 = v47;
              }

              else
              {
                v48 = CMPhotoCFDictionarySetSize(v46, @"ImageSequenceCount", 0);
                if (!v48)
                {
                  *a2 = v46;
                  v46 = 0;
                }
              }

              goto LABEL_51;
            }
          }

          else
          {
            v46 = 0;
          }

LABEL_79:
          v48 = 4294950305;
          goto LABEL_51;
        }

        goto LABEL_73;
      }
    }
  }

LABEL_71:
  v48 = MetadataDescriptionArray_0;
  v46 = 0;
  v10 = 0;
  v39 = 0;
LABEL_51:
  if (value)
  {
    CFRelease(value);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return v48;
}

uint64_t _createDescription_1(const void *a1, __CFDictionary **a2)
{
  v4 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_27_3();
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = OUTLINED_FUNCTION_53();
    ImageCountWithOptions = CMPhotoDecompressionContainerGetImageCountWithOptions(v8, v9, v10);
    if (ImageCountWithOptions || (ImageCountWithOptions = FigCFDictionarySetInt(), ImageCountWithOptions))
    {
      v19 = ImageCountWithOptions;
      goto LABEL_13;
    }

    v12 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    if (!v12)
    {
      v19 = 4294950305;
      goto LABEL_13;
    }

    v13 = v12;
    IsMIAF = CMPhotoDecompressionContainerDetectSourceIsMIAF(a1);
    SequenceCount_2 = CMPhotoCFDictionarySetBoolean(v7, @"SourceIsMIAF", IsMIAF);
    if (SequenceCount_2 || (v16 = OUTLINED_FUNCTION_110(), CFDictionarySetValue(v16, v17, v18), SequenceCount_2 = _getSequenceCount_2(a1, &v23), SequenceCount_2) || (SequenceCount_2 = FigCFDictionarySetInt(), SequenceCount_2) || (SequenceCount_2 = _getVideoAndAudioCount(a1, &v22, &v21), SequenceCount_2) || (SequenceCount_2 = FigCFDictionarySetInt(), SequenceCount_2))
    {
      v19 = SequenceCount_2;
    }

    else
    {
      v19 = FigCFDictionarySetInt();
      if (!v19)
      {
        *a2 = v7;
        v7 = v13;
LABEL_13:
        CFRelease(v7);
        goto LABEL_14;
      }
    }

    CFRelease(v13);
    goto LABEL_13;
  }

  v19 = 4294950305;
LABEL_14:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t _createDescription_2(void *a1, CFMutableDictionaryRef *a2)
{
  v6 = CFGetAllocator(a1);
  v24 = 0;
  cf = 0;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    v2 = 0;
    v3 = 0;
LABEL_44:
    v20 = 4294950305;
LABEL_45:
    CFRelease(v8);
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  capacity = 0;
  ImageCountForSequence = _getImageCountForSequence(a1[10], &capacity);
  if (ImageCountForSequence || (v22 = 0, LoopCount = _getLoopCount(a1, &v22), !LoopCount) && (ImageCountForSequence = CMPhotoCFDictionarySetSize(v8, @"LoopCount", v22), ImageCountForSequence))
  {
    v20 = ImageCountForSequence;
    v2 = 0;
    v3 = 0;
    goto LABEL_45;
  }

  v12 = capacity;
  if (capacity >= 1)
  {
    v13 = 0;
    v2 = 0;
    v3 = 0;
    v14 = MEMORY[0x1E695E9C0];
    while (1)
    {
      if (!v3)
      {
        v3 = CFArrayCreateMutable(v6, v12, v14);
        if (!v3)
        {
          goto LABEL_44;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      DescriptionOfFrameForIndex = _createDescriptionOfFrameForIndex(a1, a1[10], v13, v6, 0, &v24, &cf);
      if (DescriptionOfFrameForIndex)
      {
        v20 = DescriptionOfFrameForIndex;
        goto LABEL_45;
      }

      if (cf)
      {
        CFArrayAppendValue(v3, cf);
      }

      if (!v13)
      {
        v16 = v24;
        if (v24)
        {
          if (!v2)
          {
            v2 = CFArrayCreateMutable(v6, 0, v14);
            if (!v2)
            {
              goto LABEL_44;
            }

            v16 = v24;
          }

          CFArrayAppendValue(v2, v16);
        }
      }

      ++v13;
      v12 = capacity;
      if (v13 >= capacity)
      {
        CFDictionarySetValue(v8, @"MainImages", v3);
        if (v2)
        {
          CFDictionarySetValue(v9, @"MainImages", v2);
          v17 = OUTLINED_FUNCTION_20_1();
          CFDictionarySetValue(v17, v18, v19);
        }

        v20 = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        goto LABEL_45;
      }
    }
  }

  OUTLINED_FUNCTION_19_9();
  v20 = LoopCount;
  if (!a2)
  {
    goto LABEL_45;
  }

LABEL_29:
  *a2 = v8;
LABEL_30:
  CFRelease(v9);
LABEL_31:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v20;
}

uint64_t _createDescription_3(void *a1, void *a2)
{
  v3 = a1[5];
  v98 = 0;
  v99 = 0;
  v97 = 0;
  if (!a2)
  {
    return 0;
  }

  Value = a2;
  v95 = a1[62];
  LODWORD(v101[0]) = 0;
  ImageCount = DicomGetImageCount(a1[14], 0, v101);
  if (ImageCount)
  {
    v82 = ImageCount;
    OUTLINED_FUNCTION_10_21();
    Mutable = 0;
    goto LABEL_107;
  }

  v7 = SLODWORD(v101[0]);
  Mutable = CFArrayCreateMutable(v3, SLODWORD(v101[0]), MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_10_21();
    Value = 0;
    v82 = 4294950305;
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_31();
  v13 = DicomCopyCodecForIndex(v9, v10, v11, v12, 0);
  if (v13 || (v13 = _copyColorSpaceForIndex_3(a1, 0, &v97), v13))
  {
    v82 = v13;
    OUTLINED_FUNCTION_10_21();
LABEL_107:
    Value = 0;
    goto LABEL_83;
  }

  v14 = CGColorSpaceCopyName(v97);
  v96 = a1;
  v87 = a1[10];
  v15 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = v15;
  if (!v15)
  {
    OUTLINED_FUNCTION_7_24();
    v82 = 4294950305;
    goto LABEL_81;
  }

  v16 = CMPhotoCFDictionarySetInt64(v15, @"DataOffset", 0);
  if (v16 || (v16 = CMPhotoCFDictionarySetSize(v2, @"DataLength", v95), v16))
  {
    v82 = v16;
    OUTLINED_FUNCTION_7_24();
    goto LABEL_81;
  }

  v85 = Value;
  cf = v14;
  Value = CFDictionaryGetValue(v2, @"DataOffset");
  v17 = CFDictionaryGetValue(v2, @"DataLength");
  OUTLINED_FUNCTION_31();
  ImageGeometryForIndex = DicomGetImageGeometryForIndex(v18, v19, v20, v21, v22, 0);
  if (ImageGeometryForIndex)
  {
    goto LABEL_102;
  }

  v102.width = v98;
  v102.height = v99;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v102);
  if (!DictionaryRepresentation)
  {
    OUTLINED_FUNCTION_7_24();
LABEL_99:
    v82 = 4294950305;
    goto LABEL_101;
  }

  v25 = DictionaryRepresentation;
  CFDictionarySetValue(v2, @"Dimensions", DictionaryRepresentation);
  CFRelease(v25);
  v101[0] = 0;
  OUTLINED_FUNCTION_31();
  ImageGeometryForIndex = DicomGetImageBitDepthForIndex(v26, v27, v28, v29);
  if (ImageGeometryForIndex)
  {
    goto LABEL_102;
  }

  CFDictionarySetValue(v2, @"BitDepth", v101[0]);
  if (v101[0])
  {
    CFRelease(v101[0]);
    v101[0] = 0;
  }

  ImageGeometryForIndex = CMPhotoCFDictionarySetInt32(v2, @"CodecType", 0);
  if (ImageGeometryForIndex)
  {
LABEL_102:
    v82 = ImageGeometryForIndex;
LABEL_97:
    OUTLINED_FUNCTION_7_24();
LABEL_101:
    v14 = cf;
    goto LABEL_81;
  }

  v30 = kCMPhotoDecompressionContainerDescription_NamedColorSpace;
  v31 = cf;
  if (cf)
  {
    goto LABEL_18;
  }

  v31 = v97;
  if (v97)
  {
    v30 = kCMPhotoDecompressionContainerDescription_ColorSpace;
LABEL_18:
    CFDictionarySetValue(v2, *v30, v31);
  }

  v88 = v7;
  v90 = Mutable;
  v32 = v96[12];
  if (v32)
  {
    Count = CFArrayGetCount(v32);
    if (Count >= 1)
    {
      v34 = Count;
      MutableCopy = FigCFArrayCreateMutableCopy();
      if (MutableCopy)
      {
        v36 = MutableCopy;
        CFDictionarySetValue(v2, @"DebugPayloads", MutableCopy);
        CFRelease(v36);
        while (1)
        {
          v37 = FigCFDictionaryCreateMutableCopy();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          CFArrayAppendValue(v36, v37);
          CFRelease(v38);
          CFDictionarySetValue(v38, @"DataOffset", Value);
          CFDictionarySetValue(v38, @"DataLength", v17);
          if (!--v34)
          {
            goto LABEL_25;
          }
        }
      }

      v82 = 4294950305;
      Mutable = v90;
      goto LABEL_97;
    }
  }

LABEL_25:
  v94 = v3;
  theDict = v2;
  v39 = v96[13];
  if (v39)
  {
    v40 = CFArrayGetCount(v39);
    if (v40 >= 1)
    {
      v41 = v40;
      v42 = FigCFArrayCreateMutableCopy();
      if (v42)
      {
        v43 = v42;
        CFDictionarySetValue(v2, @"CustomMetadataPayloads", v42);
        CFRelease(v43);
        v44 = 0;
        v3 = @"URI";
        while (1)
        {
          v45 = FigCFDictionaryCreateMutableCopy();
          if (!v45)
          {
            break;
          }

          v46 = v45;
          CFArrayAppendValue(v43, v45);
          CFRelease(v46);
          FigCFArrayGetValueAtIndex();
          CFDictionarySetValue(v46, @"DataOffset", Value);
          CFDictionarySetValue(v46, @"DataLength", v17);
          v47 = FigCFDictionaryGetValue();
          if (v47)
          {
            CFDictionarySetValue(v46, @"URI", v47);
          }

          v48 = FigCFDictionaryGetValue();
          if (v48)
          {
            CFDictionarySetValue(v46, @"Name", v48);
          }

          if (v41 == ++v44)
          {
            goto LABEL_35;
          }
        }
      }

      v82 = 4294950305;
      Mutable = v90;
      goto LABEL_97;
    }
  }

LABEL_35:
  v49 = v88;
  if (v88 < 1)
  {
    v3 = 0;
    Mutable = v90;
    v52 = v94;
LABEL_74:
    v81 = CFDictionaryCreateMutable(v52, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Value = v81;
    if (v81)
    {
      CFDictionarySetValue(v81, @"MainImages", Mutable);
      v82 = CMPhotoCFDictionarySetSize(Value, @"PrimaryImageIndex", 0);
      v14 = cf;
      if (!v82)
      {
        *v85 = Value;
LABEL_80:
        Value = 0;
      }

      goto LABEL_81;
    }

    goto LABEL_99;
  }

  v50 = 0;
  v3 = 0;
  v51 = 0;
  v89 = @"AuxiliaryImages";
  Mutable = v90;
  v52 = v94;
  v53 = v87;
  while (1)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    v54 = FigCFDictionaryCreateMutableCopy();
    v3 = v54;
    if (!v54)
    {
      Value = 0;
      goto LABEL_99;
    }

    v55 = CMPhotoCFDictionarySetInt64(v54, @"ItemID", v51);
    if (v55)
    {
      v82 = v55;
      Value = 0;
      goto LABEL_101;
    }

    ++v51;
    if (!v50 && v53 >= 1)
    {
      break;
    }

LABEL_71:
    CFArrayAppendValue(Mutable, v3);
    if (++v50 == v49)
    {
      goto LABEL_74;
    }
  }

  v93 = 0;
  v56 = v96[10];
  v57 = CFGetAllocator(v96);
  if (v56 < 1)
  {
    CFDictionarySetValue(v3, v89, 0);
LABEL_70:
    v50 = v93;
    goto LABEL_71;
  }

  v58 = v57;
  v92 = v3;
  v59 = 0;
  v60 = 0;
  v61 = 76;
  v62 = v96;
  while (1)
  {
    v63 = v62[11];
    if (!v59)
    {
      v59 = CFArrayCreateMutable(v58, v56, MEMORY[0x1E695E9C0]);
      if (!v59)
      {
        break;
      }
    }

    v64 = FigCFDictionaryCreateMutableCopy();
    if (!v64)
    {
      goto LABEL_78;
    }

    v65 = v64;
    CFArrayAppendValue(v59, v64);
    CFRelease(v65);
    v66 = CMPhotoCFDictionarySetInt64(v65, @"DataOffset", 0);
    if (v66 || (v66 = CMPhotoCFDictionarySetSize(v65, @"DataLength", v95), v66))
    {
LABEL_77:
      v82 = v66;
LABEL_79:
      Mutable = v90;
      v2 = theDict;
      v14 = cf;
      v3 = v92;
      CFRelease(v59);
      goto LABEL_80;
    }

    v103.width = *(v63 + v61 - 76);
    v103.height = *(v63 + v61 - 68);
    v67 = CGSizeCreateDictionaryRepresentation(v103);
    if (!v67)
    {
LABEL_78:
      v82 = 4294950305;
      goto LABEL_79;
    }

    v68 = v67;
    CFDictionarySetValue(v65, @"Dimensions", v67);
    CFRelease(v68);
    v66 = FigCFDictionarySetInt();
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt64(v65, @"ItemID", v51);
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt(v65, @"AuxiliaryType", *(v63 + v61 - 56));
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt32(v65, @"AuxiliaryNativePixelFormat", *(v63 + v61 - 52));
    if (v66)
    {
      goto LABEL_77;
    }

    v73 = (v63 + v61);
    v74 = *(v73 - 9);
    if (v74)
    {
      CFDictionarySetValue(v65, @"AuxiliaryTypeURN", v74);
    }

    v101[0] = 0;
    CMPhotoDecompressionContainerCreateBitDepthArray(v58, *(v73 - 15), *v73, v101, v69, v70, v71, v72, v84, v85, SHIDWORD(v85), cf, v87, v88, v89, v90, theDict, v92, v93);
    v62 = v96;
    if (v66)
    {
      goto LABEL_77;
    }

    CFDictionarySetValue(v65, @"BitDepth", v101[0]);
    if (v101[0])
    {
      CFRelease(v101[0]);
      v101[0] = 0;
    }

    v66 = CMPhotoCFDictionarySetInt32(v65, @"CodecType", 1785750887);
    if (v66)
    {
      goto LABEL_77;
    }

    v100 = 0;
    if (!_copyAuxiliaryColorSpaceForIndex_1(v96, 0, v60, &v100, v75, v76, v77, v78))
    {
      v79 = CGColorSpaceCopyName(v100);
      if (v79)
      {
        v80 = v79;
        CFDictionarySetValue(v65, @"NamedColorSpace", v79);
        CFRelease(v80);
      }

      else
      {
        CFDictionarySetValue(v65, @"ColorSpace", v100);
      }

      if (v100)
      {
        CFRelease(v100);
      }
    }

    ++v60;
    v61 += 104;
    ++v51;
    if (v56 == v60)
    {
      v3 = v92;
      CFDictionarySetValue(v92, v89, v59);
      CFRelease(v59);
      Mutable = v90;
      v2 = theDict;
      v52 = v94;
      v53 = v87;
      v49 = v88;
      goto LABEL_70;
    }
  }

  Value = 0;
  v82 = 4294950305;
  Mutable = v90;
  v2 = theDict;
  v14 = cf;
  v3 = v92;
LABEL_81:
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_83:
  if (v97)
  {
    CFRelease(v97);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  return v82;
}

void _createMetadataDictionaryArrayForReader(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  switch(a3)
  {
    case 0:
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v4 = OUTLINED_FUNCTION_102_0();
        if (!v5(v4))
        {
          goto LABEL_14;
        }
      }

      break;
    case 1:
      if (*(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        v8 = OUTLINED_FUNCTION_102_0();
        if (!v9(v8))
        {
          goto LABEL_14;
        }
      }

      break;
    case 2:
      if (*(*(CMBaseObjectGetVTable() + 16) + 80))
      {
        v6 = OUTLINED_FUNCTION_102_0();
        if (!v7(v6))
        {
          goto LABEL_14;
        }
      }

      break;
    case 4:
      v10 = *(CMBaseObjectGetVTable() + 16);
      if (*v10 >= 2uLL)
      {
        if (v10[13])
        {
          v11 = OUTLINED_FUNCTION_102_0();
          if (!v12(v11))
          {
            goto LABEL_14;
          }
        }
      }

      break;
    default:
LABEL_14:
      *a4 = 0;
      break;
  }
}

unint64_t ___sanityCheckAllowOptionsValue_block_invoke(unint64_t result, uint64_t a2, const __CFArray *a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v4 = result;
    result = CMPhotoGetContainerFormatFromFormatString(a2, 0);
    if (!result)
    {
      if (a3)
      {
        v5 = CFGetTypeID(a3);
        if (v5 == CFArrayGetTypeID())
        {
          result = CFArrayGetCount(a3);
          if (!result)
          {
            return result;
          }

          v6 = 0;
          while (FigCFArrayGetInt32AtIndex())
          {
            ++v6;
            result = CFArrayGetCount(a3);
            if (v6 >= result)
            {
              return result;
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t CMPhotoGetContainerFormatFromFormatString(uint64_t a1, int *a2)
{
  if (FigCFEqual())
  {
    v4 = 0;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v4 = 1;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v4 = 2;
    if (!a2)
    {
      return 0;
    }

LABEL_9:
    *a2 = v4;
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = 3;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950303, "(Fig)", 300, v2);
}

int64_t ___isContainerAllowedByDictionary_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v8 = -1;
  result = CMPhotoGetContainerFormatFromFormatString(a2, &v8);
  if (!result)
  {
    if (a3)
    {
      if (v8 == *(a1 + 40))
      {
        v6 = CFGetTypeID(a3);
        result = CFArrayGetTypeID();
        if (v6 == result)
        {
          if (*(a1 + 44))
          {
            result = CFArrayGetCount(a3);
            v7 = result > 0;
          }

          else
          {
            v7 = 1;
          }

          *(*(*(a1 + 32) + 8) + 24) = v7;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return CMPhotoCFDictionarySetInt32(v20, a20, 1785750887);
}

uint64_t CMPhotoGetYUVPixelFormatForParameters(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int *a8)
{
  v8 = 1111573574;
  v9 = 1111573574;
  switch(a1)
  {
    case 1:
      switch(a2)
      {
        case 8:
          OUTLINED_FUNCTION_60();
          v14 = v13 | 0x26380004;
          v15 = 641234482;
          goto LABEL_54;
        case 10:
          if (a3)
          {
            v9 = 1885746228;
          }

          else
          {
            v9 = 1882469428;
          }

          if (a3)
          {
            v31 = 2019963956;
          }

          else
          {
            v31 = 2016687156;
          }

          if (a3)
          {
            v32 = 645424692;
          }

          else
          {
            v32 = 645428788;
          }

          if (a5 == 2)
          {
            v31 = v32;
          }

          if ((a5 - 3) >= 3)
          {
            v33 = v31;
          }

          else
          {
            v33 = 1111573574;
          }

          if (!a4)
          {
            v9 = v33;
          }

          goto LABEL_103;
        case 12:
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_60();
          v14 = v28 | 0x26740004;
          v15 = 645166642;
          goto LABEL_54;
        case 16:
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_60();
          v14 = v34 | 0x26730004;
          v15 = 645101106;
LABEL_54:
          v17 = v15 + 2;
          goto LABEL_55;
        default:
          goto LABEL_103;
      }

    case 2:
    case 5:
      switch(a2)
      {
        case 8:
          switch(a5)
          {
            case 2:
              v9 = 641230384;
              goto LABEL_99;
            case 3:
              v9 = 2084070960;
              goto LABEL_99;
            case 4:
              v9 = 792225328;
              goto LABEL_99;
            case 5:
              v9 = 758670896;
              goto LABEL_99;
            default:
              v9 = 875704422;
              v30 = 875704438;
              break;
          }

          goto LABEL_100;
        case 10:
          if (!a4)
          {
            switch(a5)
            {
              case 2:
                v9 = 645424688;
                goto LABEL_99;
              case 3:
                v9 = 2088265264;
                goto LABEL_99;
              case 4:
                v9 = 796419632;
                goto LABEL_99;
              case 5:
                v9 = 762865200;
                goto LABEL_99;
              default:
                v9 = 2016686640;
                goto LABEL_19;
            }
          }

          v9 = 1882468912;
LABEL_19:
          v20 = v9 + 3276800;
          v21 = a3 == 0;
          goto LABEL_51;
        case 12:
          switch(a5)
          {
            case 2:
              v9 = 645162544;
              goto LABEL_99;
            case 3:
              v9 = 2088003120;
              v42 = 2088003122;
              goto LABEL_81;
            case 4:
              v9 = 796157488;
              v42 = 796157490;
              goto LABEL_81;
            case 5:
              v9 = 762603056;
              v42 = 762603058;
LABEL_81:
              v30 = v42 + 4094;
              break;
            default:
              v9 = 1952854576;
              v30 = 1953903152;
              break;
          }

          goto LABEL_100;
        case 16:
          OUTLINED_FUNCTION_94();
          v12 = v23 | 0x68660000;
          if (v10)
          {
            v24 = 1936077360;
          }

          else
          {
            v24 = 1937125936;
          }

          if (!v22)
          {
            v12 = v24;
          }

          v14 = 645097008;
          v17 = 645101104;
LABEL_55:
          v16 = v10 == 0;
          goto LABEL_56;
        default:
          goto LABEL_103;
      }

    case 3:
      switch(a2)
      {
        case 8:
          v11 = a5 - 3;
          v16 = a3 == 0;
          if (a3)
          {
            v12 = 875704934;
          }

          else
          {
            v12 = 875704950;
          }

          v14 = 641230386;
          v17 = 641234482;
          goto LABEL_56;
        case 10:
          if (!a4)
          {
            switch(a5)
            {
              case 2:
                OUTLINED_FUNCTION_36();
                v30 = 645428786;
                goto LABEL_101;
              case 3:
                OUTLINED_FUNCTION_36();
                v30 = 2088269362;
                goto LABEL_101;
              case 4:
                OUTLINED_FUNCTION_36();
                v30 = 796423730;
                goto LABEL_101;
              case 5:
                OUTLINED_FUNCTION_36();
                v30 = 762869298;
                goto LABEL_101;
              default:
                OUTLINED_FUNCTION_36();
                v20 = 2019963442;
                goto LABEL_51;
            }
          }

          OUTLINED_FUNCTION_36();
          v20 = 1885745714;
LABEL_51:
          if (!v21)
          {
            v9 = v20;
          }

          break;
        case 12:
          switch(a5)
          {
            case 2:
              OUTLINED_FUNCTION_36();
              v30 = 645166642;
              break;
            case 3:
              v9 = 2088003122;
              goto LABEL_99;
            case 4:
              v9 = 796157490;
              goto LABEL_99;
            case 5:
              v9 = 762603058;
LABEL_99:
              v30 = v9 | 0x1000;
LABEL_100:
              v29 = a3 == 0;
              break;
            default:
              OUTLINED_FUNCTION_36();
              v30 = 1953903154;
              break;
          }

LABEL_101:
          if (v29)
          {
            v9 = v30;
          }

          break;
        case 16:
          OUTLINED_FUNCTION_94();
          v12 = v36 | 0x73660002;
          if (!v35)
          {
            v12 = 1937125938;
          }

          v14 = 645097010;
          v16 = v35 == 0;
          v17 = 645101106;
LABEL_56:
          if (v16)
          {
            v14 = v17;
          }

          if (a5 == 2)
          {
            v12 = v14;
          }

          if (v11 >= 3)
          {
            v9 = v12;
          }

          else
          {
            v9 = v8;
          }

          break;
        default:
          goto LABEL_103;
      }

      break;
    case 6:
      switch(a2)
      {
        case 8:
          v18 = a5 - 2;
          if ((a5 - 2) < 4)
          {
            v19 = &unk_1A5AAD180;
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_71();
          break;
        case 9:
        case 11:
        case 13:
        case 14:
        case 15:
          goto LABEL_103;
        case 10:
          v18 = a5 - 2;
          if ((a5 - 2) < 4)
          {
            v19 = &unk_1A5AAD1A0;
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_71();
          v9 = v41 + 248;
          break;
        case 12:
          v18 = a5 - 2;
          if ((a5 - 2) >= 4)
          {
            OUTLINED_FUNCTION_71();
            v9 = v40 + 250;
          }

          else
          {
            v19 = &unk_1A5AAD190;
LABEL_72:
            v9 = v19[v18];
          }

          break;
        case 16:
          OUTLINED_FUNCTION_71();
          if (v39)
          {
            v9 = v38 + 48;
          }

          else if ((v37 - 2) >= 4)
          {
            v9 = v38 + 254;
          }

          else
          {
            v9 = dword_1A5AAD1B0[v37 - 2];
          }

          break;
        default:
          OUTLINED_FUNCTION_71();
          v9 = v26 + 46;
          if (!v27)
          {
            v9 = v8;
          }

          if (v25 != 32)
          {
            v9 = v8;
          }

          break;
      }

      break;
    default:
      break;
  }

LABEL_103:
  if (a7)
  {
    if (v9 == v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else if (v9 == v8)
  {
    return 4294950302;
  }

  result = 0;
  if (a8)
  {
    *a8 = v9;
  }

  return result;
}

uint64_t _copyFormatDescriptionForIndex(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a2)
  {
    _copyFormatDescriptionForIndex_cold_1(keys);
    return LODWORD(keys[0]);
  }

  if (*(a1 + 296))
  {
    v6 = *MEMORY[0x1E6960070];
    values = *(a1 + 296);
    keys[0] = v6;
    v7 = CFDictionaryCreate(*(a1 + 40), keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v7)
    {
      return 4294950305;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = CMVideoFormatDescriptionCreate(*(a1 + 40), 0x6A786C63u, *(a1 + 88), *(a1 + 92), v7, &cf);
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t _copyFormatDescriptionForIndex_0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  v16 = 0;
  if (!a4)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
LABEL_7:
    v13 = 4294954514;
    goto LABEL_8;
  }

  v9 = v8(v7, a2, &cf, 0);
  if (!v9)
  {
    v10 = CFGetAllocator(a1);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v13 = v12(FigBaseObject, *MEMORY[0x1E69722F8], v10, &v16);
      if (!v13)
      {
        *a4 = v16;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = v9;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t _copyFormatDescriptionForIndex_2(uint64_t a1, unint64_t a2, uint64_t a3, CMVideoFormatDescriptionRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6, a7, a8, v22, SWORD2(v22), SBYTE6(v22), SHIBYTE(v22), v24);
  if (v10)
  {
    return v10;
  }

  cf = 0;
  formatDescriptionOut = 0;
  v11 = CFGetAllocator(a1);
  v12 = _parseImageSizeAndTypeIfNeeded(a1 + 40);
  if (!v12)
  {
    v13 = _parseICCProfileIfNeeded(a1 + 40);
    if (v13)
    {
      v17 = v13;
      v15 = 0;
      goto LABEL_14;
    }

    if (!*(a1 + 465))
    {
      v15 = 0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_53();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v15 = MutableCopy;
    if (MutableCopy)
    {
      if (!v23)
      {
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6960070], *(a1 + 472));
        goto LABEL_9;
      }

      v19 = _copyColorSpaceForIndex(a1, 1, &cf);
      if (v19)
      {
        v17 = v19;
LABEL_14:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_16;
      }

      v20 = CGColorSpaceCopyICCData(cf);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v15, *MEMORY[0x1E6960070], v20);
        CFRelease(v21);
LABEL_9:
        if (v23)
        {
          v16 = 1953325424;
        }

        else
        {
          v16 = 1785750887;
        }

        v17 = CMVideoFormatDescriptionCreate(v11, v16, *(a1 + 112), *(a1 + 120), v15, &formatDescriptionOut);
        if (!v17)
        {
          *a4 = formatDescriptionOut;
          formatDescriptionOut = 0;
        }

        goto LABEL_14;
      }
    }

    v17 = 4294950305;
    goto LABEL_14;
  }

  v17 = v12;
  v15 = 0;
LABEL_16:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v17;
}