uint64_t MuxedAlphaDecoder_DecodeFrame(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5)
{
  v6 = v5;
  v193 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v180 = 0;
  v181 = &v180;
  v182 = 0x4000000000;
  v183 = 0u;
  v184 = 0u;
  v185 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x4000000000;
  v177 = 0u;
  v178 = 0u;
  v179 = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v172[0] = 0;
  v172[1] = v172;
  v172[2] = 0x2000000000;
  v173 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2000000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2000000000;
  v167 = 0;
  v162[0] = 0;
  v162[1] = v162;
  v162[2] = 0x2000000000;
  v163 = 0;
  FigCFDictionarySetInt64();
  if (!*(DerivedStorage + 124) || (Decryptor = FigSampleBufferGetDecryptor()) == 0 || (v15 = Decryptor, v16 = *(DerivedStorage + 144), Decryptor == v16))
  {
LABEL_24:
    cf = 0;
    goto LABEL_25;
  }

  *(DerivedStorage + 144) = Decryptor;
  CFRetain(Decryptor);
  if (v16)
  {
    CFRelease(v16);
  }

  tags.category = kCMTagCategory_Undefined;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v17)
  {
    PixelBufferWithOptions = 4294954514;
LABEL_16:
    cf = 0;
LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v114 = v5;
  v18 = v17(v15, &tags);
  if (v18)
  {
    PixelBufferWithOptions = v18;
    goto LABEL_16;
  }

  v19 = 3;
  if ((tags.category & 1) == 0)
  {
    v19 = 1;
  }

  v20 = 7;
  if ((tags.category & 2) == 0)
  {
    v20 = v19;
  }

  if (*(DerivedStorage + 152) == v20)
  {
    cf = 0;
LABEL_14:
    v6 = v5;
    goto LABEL_25;
  }

  *(DerivedStorage + 152) = v20;
  VTVideoDecoderGetCMBaseObject();
  v27 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  if (!v27)
  {
    goto LABEL_24;
  }

  v112 = a4;
  v103 = a1;
  v84 = a2;
  v85 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(*(v27 + 40));
  if (!v85)
  {
    cf = 0;
    a1 = v103;
    goto LABEL_14;
  }

  v86 = v85;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v88 = *MEMORY[0x1E69660D8];
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660D8]);
  v89 = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetInt64();
  cf = MutableCopy;
  CFDictionarySetValue(MutableCopy, v88, v89);
  CFRelease(v86);
  if (v89)
  {
    CFRelease(v89);
  }

  a2 = v84;
  v6 = v5;
  if (cf)
  {
    VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), cf);
  }

  else
  {
    cf = 0;
  }

  a1 = v103;
  a4 = v112;
LABEL_25:
  dispatch_group_enter(*(DerivedStorage + 104));
  ++*(DerivedStorage + 120);
  v28 = *(DerivedStorage + 112);
  v29 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v28, v29))
  {
    emitter = fig_log_get_emitter();
    DerivedSampleBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954385, "<<<< MuxedAlphaDecoder >>>>", 1459, v6);
LABEL_103:
    PixelBufferWithOptions = DerivedSampleBuffer;
    goto LABEL_17;
  }

  if (!CMSampleBufferDataIsReady(a3))
  {
    v91 = fig_log_get_emitter();
    DerivedSampleBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, 4294954385, "<<<< MuxedAlphaDecoder >>>>", 1461, v6);
    goto LABEL_103;
  }

  v106 = a5;
  HIDWORD(v109) = a4;
  CMSampleBufferGetDataBuffer(a3);
  v30 = v181;
  v31 = v175;
  VTVideoDecoderGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  v190 = 0;
  *&tags.category = 0;
  v188 = 0;
  newCollectionOut = 0;
  v186 = 0;
  v187 = 0;
  DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer();
  if (DataPointer || (DataPointer = OUTLINED_FUNCTION_1_12(v190, &tags, v92, v94, v97, v100, v103, v106, v109, cf, v114, v117, v119, allocator), DataPointer) || (OUTLINED_FUNCTION_2_13(), DataPointer = CMBlockBufferGetDataPointer(v33, v34, v35, v36, v37), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer) || (DataPointer = OUTLINED_FUNCTION_1_12(v187, &v188, v93, v95, v98, v101, v104, v107, v110, cf, v115, v118, v120, allocatora), DataPointer) || (OUTLINED_FUNCTION_2_13(), DataPointer = CMBlockBufferGetDataPointer(v38, v39, v40, v41, v42), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer))
  {
    PixelBufferWithOptions = DataPointer;
    if (*&tags.category)
    {
      CFRelease(*&tags.category);
    }

    if (v188)
    {
      CFRelease(v188);
    }

    goto LABEL_17;
  }

  v30[3] = *&tags.category;
  v31[3] = v188;
  DerivedSampleBuffer = alphadecoder_createDerivedSampleBuffer(a3, v181[3], *(DerivedStorage + 32), v181 + 4);
  if (DerivedSampleBuffer)
  {
    goto LABEL_103;
  }

  DerivedSampleBuffer = alphadecoder_createDerivedSampleBuffer(a3, v175[3], *(DerivedStorage + 64), v175 + 4);
  if (DerivedSampleBuffer)
  {
    goto LABEL_103;
  }

  v44 = dispatch_group_create();
  v22 = v44;
  v45 = v111;
  if ((v111 & 2) != 0)
  {
    goto LABEL_67;
  }

  if (*(DerivedStorage + 136))
  {
    v99 = v44;
    v102 = Mutable;
    v46 = a1;
    v47 = a2;
    v96 = v165;
    v105 = v46;
    VTVideoDecoderGetCMBaseObject();
    v48 = CMBaseObjectGetDerivedStorage();
    newCollectionOut = 0;
    v190 = 0;
    v188 = 0;
    Count = CFArrayGetCount(*(v48 + 48));
    v50 = MEMORY[0x1E695E9C0];
    v51 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
    v52 = CFArrayCreateMutable(allocatorb, 0, v50);
    if (Count < 1)
    {
LABEL_53:
      PixelBufferWithOptions = MEMORY[0x193AE1920](allocatorb, v51, v52, &v188);
      if (!PixelBufferWithOptions)
      {
        v96[3] = v188;
        v188 = 0;
      }
    }

    else
    {
      v53 = 0;
      ValueAtIndex = 0;
      *v116 = *MEMORY[0x1E6960630];
      while (1)
      {
        v187 = 0;
        tags = *v116;
        v192 = *v116;
        FigCFArrayGetInt64AtIndex();
        tags = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v187);
        v55 = (v53 ? MEMORY[0x1E69606A0] : MEMORY[0x1E6960690]);
        v192 = *v55;
        v56 = CMTagCollectionCreate(allocatorb, &tags, 2, &newCollectionOut);
        if (v56)
        {
          break;
        }

        if (*(v48 + 124))
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex();
        }

        v56 = VTDecoderSessionCreatePixelBufferWithOptions(*(v48 + 8), v47, ValueAtIndex, &v190);
        if (v56)
        {
          break;
        }

        CFArrayAppendValue(v52, v190);
        if (v190)
        {
          CFRelease(v190);
          v190 = 0;
        }

        CFArrayAppendValue(v51, newCollectionOut);
        if (newCollectionOut)
        {
          CFRelease(newCollectionOut);
          newCollectionOut = 0;
        }

        if (Count == ++v53)
        {
          goto LABEL_53;
        }
      }

      PixelBufferWithOptions = v56;
    }

    v45 = v111;
    if (v190)
    {
      CFRelease(v190);
    }

    a2 = v47;
    if (v51)
    {
      CFRelease(v51);
    }

    a1 = v105;
    if (v52)
    {
      CFRelease(v52);
    }

    v22 = v99;
    if (newCollectionOut)
    {
      CFRelease(newCollectionOut);
    }

    Mutable = v102;
    if (v188)
    {
      CFRelease(v188);
    }
  }

  else
  {
    FirstValue = FigCFArrayGetFirstValue();
    PixelBufferWithOptions = VTDecoderSessionCreatePixelBufferWithOptions(*(DerivedStorage + 8), a2, FirstValue, v169 + 3);
  }

  if (!PixelBufferWithOptions)
  {
LABEL_67:
    v58 = *(DerivedStorage + 136);
    dispatch_retain(v22);
    dispatch_group_enter(v22);
    if (v58)
    {
      v156 = MEMORY[0x1E69E9820];
      v157 = 0x40000000;
      v158 = __MuxedAlphaDecoder_DecodeFrame_block_invoke;
      v159 = &unk_1E72C8698;
      v160 = &v180;
      v161 = v22;
      OUTLINED_FUNCTION_5_8();
      v64 = VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(v59, v60, v61, v62, v108, v63);
      if (!v64)
      {
        dispatch_retain(v22);
        dispatch_group_enter(v22);
        v150 = MEMORY[0x1E69E9820];
        v151 = 0x40000000;
        v152 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_2;
        v153 = &unk_1E72C86C0;
        v154 = &v174;
        v155 = v22;
        OUTLINED_FUNCTION_5_8();
        v70 = VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(v65, v66, v67, v68, v108, v69);
        if (!v70)
        {
LABEL_70:
          dispatch_retain(v22);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          v125 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_5;
          v126 = &unk_1E72C8738;
          v127 = v172;
          v128 = &v180;
          v129 = &v174;
          v130 = v162;
          v137 = v45 & 1;
          v133 = DerivedStorage;
          v134 = a1;
          v131 = &v164;
          v132 = &v168;
          v135 = a2;
          v136 = v22;
          if (v45)
          {
            dispatch_group_notify(v22, *(DerivedStorage + 96), block);
          }

          else
          {
            dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
            v125(block);
          }

          PixelBufferWithOptions = 0;
          goto LABEL_74;
        }

LABEL_88:
        PixelBufferWithOptions = v70;
LABEL_74:
        v24 = cf;
        goto LABEL_75;
      }
    }

    else
    {
      v144 = MEMORY[0x1E69E9820];
      v145 = 0x40000000;
      v146 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_3;
      v147 = &unk_1E72C86E8;
      v148 = &v180;
      v149 = v22;
      OUTLINED_FUNCTION_5_8();
      v64 = VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(v74, v75, v76, v77, v108, v78);
      if (!v64)
      {
        dispatch_retain(v22);
        dispatch_group_enter(v22);
        v138 = MEMORY[0x1E69E9820];
        v139 = 0x40000000;
        v140 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_4;
        v141 = &unk_1E72C8710;
        v142 = &v174;
        v143 = v22;
        OUTLINED_FUNCTION_5_8();
        v70 = VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(v79, v80, v81, v82, v108, v83);
        if (!v70)
        {
          goto LABEL_70;
        }

        goto LABEL_88;
      }
    }

    PixelBufferWithOptions = v64;
  }

LABEL_18:
  alphadecoder_emitDecodedFrame(a1, a2, PixelBufferWithOptions, 0, 0);
  v23 = 0;
  v24 = cf;
  while (1)
  {
    v25 = *(DerivedStorage + 128);
    if (v25)
    {
      v25 = CFArrayGetCount(v25);
    }

    if (v23 >= v25)
    {
      break;
    }

    v26 = FigCFArrayGetValueAtIndex();
    VTDecoderSessionForgetPixelBufferForFrame(*(DerivedStorage + 8), a2, v26);
    ++v23;
  }

LABEL_75:
  v71 = v181[3];
  if (v71)
  {
    CFRelease(v71);
  }

  v72 = v175[3];
  if (v72)
  {
    CFRelease(v72);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(v162, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(v172, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v180, 8);
  return PixelBufferWithOptions;
}

uint64_t MuxedAlphaDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  v17 = 0;
  v18 = 0;
  v3 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_2_13();
  v10 = CFDictionaryCreate(v4, v5, v6, v7, v8, v9);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12 = *(DerivedStorage + 40);
    if (v12)
    {
      v13 = VTSessionCopySupportedPropertyDictionary(v12, &cf);
      if (v13)
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v10);
        v17 = cf;
        v18 = Mutable;
        FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      Mutable = 0;
      v13 = 4294954393;
    }
  }

  else
  {
    Mutable = 0;
    v13 = 4294954394;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v13;
}

uint64_t alphadecoder_createSubLayerVTDecompressionSession(uint64_t a1, int a2, const void *a3, const opaqueCMFormatDescription *a4, unsigned int *a5, int a6, VTSessionRef *a7, BOOL *a8)
{
  v14 = a2 != 0;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  session = 0;
  cf = 0;
  propertyValueOut = 0;
  HIDWORD(v26) = -1;
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 16));
  PixelBufferAttributesDictionary = alphadecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), a5, a6, &cf);
  if (PixelBufferAttributesDictionary)
  {
    v24 = PixelBufferAttributesDictionary;
    Mutable = 0;
    goto LABEL_13;
  }

  v18 = 2 * v14;
  v19 = *MEMORY[0x1E695E480];
  if (a8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, propertyValueOut, session);
      goto LABEL_13;
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetBoolean();
  }

  else
  {
    Mutable = 0;
  }

  v21 = cf;
  v22 = VTDecompressionSessionCreateWithOptions(v19, a4, a3, cf, 0, Mutable, &session);
  if (!v22)
  {
    if (!VTSessionCopyProperty(session, @"WriteDirectlyToPlanesOfTargetCVPixelBuffer", v19, &propertyValueOut))
    {
      if (propertyValueOut)
      {
        v23 = CFGetTypeID(propertyValueOut);
        if (v23 == CFNumberGetTypeID())
        {
          CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &v26 + 4);
          if (a8)
          {
            *a8 = v18 == HIDWORD(v26);
          }
        }
      }
    }

    v24 = 0;
    *a7 = session;
    session = 0;
LABEL_13:
    v21 = cf;
    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = v22;
  if (v21)
  {
LABEL_14:
    CFRelease(v21);
  }

LABEL_15:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (session)
  {
    CFRelease(session);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v24;
}

CFDictionaryRef alphadecoder_copyPixelBufferAttributesFromDecompressionSession(uint64_t a1)
{
  pool = 0;
  if (VTDecompressionSessionCopyProperty(a1, @"PixelBufferPool", *MEMORY[0x1E695E480], &pool))
  {
    v2 = 0;
  }

  else
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
    v2 = PixelBufferAttributes;
    if (PixelBufferAttributes)
    {
      CFRetain(PixelBufferAttributes);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, pool, v6);
    }
  }

  if (pool)
  {
    CFRelease(pool);
  }

  return v2;
}

uint64_t MuxedAlphaDecoder_CreateInstance_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void alphadecoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t alphadecoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphadecoder_mergeBaseAndAlpha_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL alphadecoder_mergeBaseAndAlpha_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

uint64_t alphadecoder_mergeBaseAndAlpha_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphadecoder_transferPlane_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t VTHDRImageStatisticsGenerationSessionCreateStatistics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theData = 0;
  if (!a1 || (v13 = CFGetTypeID(a1), MEMORY[0x193AE3010](&VTHDRImageStatisticsGenerationSessionGetTypeID_sRegisterVTHDRImageStatisticsGenerationSessionOnce, registerVTHDRImageStatisticsGenerationSession), v13 != sVTHDRImageStatisticsGenerationSessionID) || !a2 || (v14 = CFGetTypeID(a2), v14 != CVPixelBufferGetTypeID()) || *&a3 == 0.0 || *&a4 == 0.0 || *&a5 == 0.0 || *&a6 == 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    v62 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v19 = 0;
    v15 = 0;
    goto LABEL_158;
  }

  v15 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F30], 0);
  v16 = FigCFEqual();
  v17 = FigCFEqual();
  if (!(v17 | v16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    v62 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", textureOut, LODWORD(v135), v136);
    v19 = 0;
    goto LABEL_158;
  }

  v18 = v17;
  __y = v6;
  v19 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F10], 0);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = Width;
  rect.size.height = Height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (v19)
  {
    if (!CGRectMakeWithDictionaryRepresentation(v19, &rect))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_13();
      v62 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", textureOut, LODWORD(v135), v136);
      goto LABEL_158;
    }

    rect = CGRectStandardize(rect);
    v156 = CGRectIntegral(rect);
    Width = v156.size.width;
    Height = v156.size.height;
    rect = v156;
  }

  else
  {
    v156.origin.y = 0.0;
    v156.origin.x = 0.0;
  }

  v140 = *&a6;
  v141 = v19;
  v138 = *&a4;
  v139 = *&a5;
  v137 = *&a3;
  if (*(a1 + 184) == 2)
  {
    v19 = 0;
    v23 = a2;
  }

  else
  {
    if (vthisgsPixelTransferToIntermediateBuffer(a1, a2, v19, &theData, v156.origin.x, v156.origin.y, Width, Height))
    {
      v19 = 0;
      v23 = a2;
    }

    else
    {
      if (theData && ((Length = CFDataGetLength(theData), v26 = Length, Length == 768) || Length == 3072 || Length == 1536))
      {
        BytePtr = CFDataGetBytePtr(theData);
        v36 = BytePtr;
        if (v26 == 1536)
        {
          v37 = 128;
        }

        else
        {
          v37 = 256;
        }

        if (v26 == 768)
        {
          v19 = 64;
        }

        else
        {
          v19 = v37;
        }

        if (BytePtr)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v19 = 0;
      }

      v23 = *(a1 + 24);
      PixelFormatType = 1111970369;
    }

    if (*(a1 + 184) == 1)
    {
      goto LABEL_175;
    }
  }

  if (PixelFormatType == 1111970369)
  {
    goto LABEL_37;
  }

  if (PixelFormatType == 1815162994)
  {
    v24 = MTLPixelFormatRGB10A2Unorm;
    goto LABEL_38;
  }

  if (PixelFormatType != 1380411457)
  {
    v38 = vthisgsPixelTransferToIntermediateBuffer(a1, a2, v141, 0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    if (v38)
    {
LABEL_176:
      v62 = v38;
LABEL_177:
      v19 = v141;
      goto LABEL_158;
    }

    v23 = *(a1 + 24);
LABEL_37:
    v24 = MTLPixelFormatBGRA8Unorm;
    goto LABEL_38;
  }

  v24 = MTLPixelFormatRGBA16Float;
LABEL_38:
  if (!objc_opt_class())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", textureOut, LODWORD(v135), LODWORD(v137));
    if (v38)
    {
      goto LABEL_176;
    }
  }

  v39 = *(a1 + 216);
  if (*(a1 + 192) != v24 || !v39 || !*(a1 + 224))
  {

    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    v150 = 256;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v154 = _Q0;
    v45 = [objc_alloc(MEMORY[0x1E69745D8]) initWithDevice:*(a1 + 200) histogramInfo:&v150];
    *(a1 + 224) = v45;
    if (!v45)
    {
      goto LABEL_182;
    }

    if ([v45 histogramSizeForSourceFormat:v24] == 3072)
    {
      v46 = [*(a1 + 200) newBufferWithLength:3072 options:0];
      *(a1 + 216) = v46;
      if (v46)
      {
        *(a1 + 192) = v24;
        goto LABEL_46;
      }

LABEL_182:
      v62 = 4294954392;
      goto LABEL_177;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", textureOut, LODWORD(v135), LODWORD(v137));
    if (v38)
    {
      goto LABEL_176;
    }
  }

LABEL_46:
  x = rect.origin.x;
  y = rect.origin.y;
  v49 = rect.size.width;
  v50 = rect.size.height;
  v155 = 0;
  v51 = objc_autoreleasePoolPush();
  v52 = *MEMORY[0x1E695E480];
  v53 = *(a1 + 32);
  v54 = CVPixelBufferGetWidth(v23);
  v55 = CVPixelBufferGetHeight(v23);
  CVMetalTextureCacheCreateTextureFromImage(v52, v53, v23, 0, v24, v54, v55, 0, &v155);
  if (v155 && (Texture = CVMetalTextureGetTexture(v155)) != 0 && (v57 = Texture, (v58 = [*(a1 + 208) commandBuffer]) != 0))
  {
    v59 = v58;
    v60 = *(a1 + 224);
    v150 = x;
    v151 = y;
    v152 = 0;
    v153 = v49;
    v61 = 1;
    *&v154 = v50;
    *(&v154 + 1) = 1;
    [v60 setClipRectSource:&v150];
    [*(a1 + 224) encodeToCommandBuffer:v59 sourceTexture:v57 histogram:*(a1 + 216) histogramOffset:0];
    [v59 commit];
    [v59 waitUntilCompleted];
    objc_autoreleasePoolPop(v51);
    v36 = [*(a1 + 216) contents];
    v62 = 0;
    v19 = 256;
  }

  else
  {
    objc_autoreleasePoolPop(v51);
    v36 = 0;
    v61 = 0;
    v62 = 4294954392;
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (!v61)
  {
    goto LABEL_177;
  }

  if (!v36)
  {
LABEL_175:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", textureOut, LODWORD(v135), LODWORD(v137));
    goto LABEL_176;
  }

LABEL_54:
  v63 = v19;
  v64 = v36 + 4 * v19;
  if (v19 == 64)
  {
    if (v18)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_70;
      }
    }

    else if (!*(a1 + 40))
    {
      goto LABEL_70;
    }

LABEL_93:
    OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v137, v138, v139, v140, *&v141, v142, v143, v144, v145, v146, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
LABEL_111:
    v86 = 40;
    if (v18)
    {
      v86 = 56;
    }

    v87 = 64;
    v88 = 80;
    if (!v18)
    {
      v88 = 72;
    }

LABEL_120:
    v89 = *(a1 + v86);
    goto LABEL_121;
  }

  if (v19 == 128)
  {
    if (v18)
    {
      if (!*(a1 + 104))
      {
        goto LABEL_70;
      }
    }

    else if (!*(a1 + 88))
    {
      goto LABEL_70;
    }

LABEL_102:
    OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v137, v138, v139, v140, *&v141, v142, v143, v144, v145, v146, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    v86 = 88;
    if (v18)
    {
      v86 = 104;
    }

    v87 = 128;
    v88 = 120;
    if (v18)
    {
      v88 = 128;
    }

    goto LABEL_120;
  }

  if (v18)
  {
    if (*(a1 + 152))
    {
      goto LABEL_110;
    }
  }

  else if (*(a1 + 136))
  {
    goto LABEL_110;
  }

LABEL_70:
  v65 = OUTLINED_FUNCTION_4_12();
  v66 = OUTLINED_FUNCTION_4_12();
  v67 = OUTLINED_FUNCTION_4_12();
  v68 = v67;
  if (!v65 || !v66 || !v67)
  {
    free(v65);
    free(v66);
    free(v68);
    goto LABEL_182;
  }

  if (v19)
  {
    v19 = 0;
    v144 = -0.55991073;
    v143 = 0.17883277;
    v142 = 0.28466892;
    __y = 0.2;
    v146 = 1000.0;
    HIDWORD(v28) = 1086556160;
    v145 = 10000.0;
    do
    {
      *&v28 = v19 / (v63 - 1);
      if (v18)
      {
        v69 = *&v28;
        if (*&v28 <= 0.5)
        {
          v70 = v69 * v69;
          v71 = 3.0;
        }

        else
        {
          v70 = exp((v69 + -0.55991073) / 0.17883277) + 0.28466892;
          v71 = 12.0;
        }

        v72 = v70 / v71 * (pow(v70 / v71, 0.2) * 1000.0) / 10000.0;
        if (v72 < 0.0)
        {
          v72 = 0.0;
        }

        v73 = pow(v72, 0.159301758);
        v74 = (v73 * 18.8515625 + 0.8359375) / (v73 * 18.6875 + 1.0);
        if (v74 < 0.0)
        {
          v74 = 0.0;
        }

        v28 = pow(v74, 78.84375);
        *&v28 = v28;
      }

      *(v65 + v19) = LODWORD(v28);
      *&v28 = *&v28 * *&v28;
      *(v66 + v19++) = LODWORD(v28);
    }

    while (v63 != v19);
    if (v63 == 64)
    {
      v75 = 56;
      if (!v18)
      {
        v75 = 40;
      }

      v76 = 64;
      if (!v18)
      {
        v76 = 48;
      }

      *(a1 + v75) = v65;
      v77 = 72;
      if (v18)
      {
        v77 = 80;
      }

      *(a1 + v76) = v66;
      *(a1 + v77) = v68;
      goto LABEL_93;
    }

    if (v63 == 128)
    {
      v80 = 104;
      if (!v18)
      {
        v80 = 88;
      }

      v81 = 112;
      if (!v18)
      {
        v81 = 96;
      }

      *(a1 + v80) = v65;
      v82 = 120;
      if (v18)
      {
        v82 = 128;
      }

      *(a1 + v81) = v66;
      *(a1 + v82) = v68;
      goto LABEL_102;
    }
  }

  v83 = 152;
  if (!v18)
  {
    v83 = 136;
  }

  v84 = 160;
  if (!v18)
  {
    v84 = 144;
  }

  *(a1 + v83) = v65;
  v85 = 168;
  if (v18)
  {
    v85 = 176;
  }

  *(a1 + v84) = v66;
  *(a1 + v85) = v68;
LABEL_110:
  OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v137, v138, v139, v140, *&v141, v142, v143, v144, v145, v146, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  if (v63 == 64)
  {
    goto LABEL_111;
  }

  v133 = 152;
  if (!v18)
  {
    v133 = 136;
  }

  v89 = *(a1 + v133);
  v88 = 168;
  if (v18)
  {
    v88 = 176;
  }

  if (v63)
  {
    v87 = v63;
LABEL_121:
    v90 = 0;
    v91 = *(a1 + v88);
    v92 = 0.0;
    do
    {
      v92 = v92 + (*(v36 + 4 * v90) * v89[v90]);
      ++v90;
    }

    while (v87 != v90);
    v93 = 0;
    v94 = 0.0;
    do
    {
      v94 = v94 + (*(v64 + 4 * v93) * v89[v93]);
      ++v93;
    }

    while (v87 != v93);
    v95 = 0;
    v96 = 0.0;
    do
    {
      v96 = v96 + (*(v78 + 4 * v95) * v89[v95]);
      ++v95;
    }

    while (v87 != v95);
    if (v63)
    {
      v97 = 0;
      v98 = -1;
      do
      {
        v99 = *(v36 + 4 * v97);
        v100 = *(v64 + 4 * v97);
        v101 = *(v78 + 4 * v97);
        v102 = ((v99 / v79) + (v100 / v79) + (v101 / v79)) / 3.0;
        v91[v97] = v102;
        if (v99 > v100)
        {
          v100 = 1;
        }

        else
        {
          v99 = v100;
        }

        if (v99 <= v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = v100;
        }

        if (v98 == -1)
        {
          v104 = v97;
        }

        else
        {
          v104 = v98;
        }

        if (v103)
        {
          v98 = v104;
        }

        ++v97;
      }

      while (v87 != v97);
    }

    v105 = 0.0;
    v106 = v91;
    v107 = v87;
    do
    {
      v108 = *v106++;
      v109 = v108;
      v110 = *v89++;
      v105 = v105 + (v109 * v110);
      --v107;
    }

    while (v107);
    OUTLINED_FUNCTION_5_9();
    do
    {
      v126 = *v115++;
      v127 = v126;
      v128 = *v114++;
      v125 = v125 + (v127 * v128);
      --v112;
    }

    while (v112);
    v129 = v119 / v118;
    goto LABEL_146;
  }

  OUTLINED_FUNCTION_5_9();
LABEL_146:
  v62 = 0;
  if (v124 <= v121)
  {
    v130 = v121;
  }

  else
  {
    v130 = v124;
  }

  if (v130 > v129)
  {
    v129 = v130;
  }

  v131 = v125 - (v123 * v123);
  if (v131 <= 0.0)
  {
    v131 = 0.0;
  }

  if (v129 >= v120)
  {
    v129 = v120;
  }

  if (v122 > v129)
  {
    v129 = v122;
  }

  *v117 = v129;
  *v116 = v122;
  *v113 = v120;
  *v111 = sqrtf(v131);
LABEL_158:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v62;
}

uint64_t vthisgsPixelTransferToIntermediateBuffer(VTPixelTransferSessionRef *pixelTransferSessionOut, CVPixelBufferRef pixelBuffer, CFDictionaryRef DictionaryRepresentation, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = pixelTransferSessionOut + 2;
  v16 = MEMORY[0x1E695E480];
  if (!pixelTransferSessionOut[2])
  {
    v17 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], v15);
    if (v17)
    {
      return v17;
    }
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v22 = pixelTransferSessionOut[3];
  v21 = (pixelTransferSessionOut + 3);
  v20 = v22;
  if (v22)
  {
    if (Width == CVPixelBufferGetWidth(v20) && Height == CVPixelBufferGetHeight(*v21))
    {
      if (*v21)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_11;
      }
    }

    else if (*v21)
    {
      CFRelease(*v21);
      *v21 = 0;
    }
  }

  v25 = *v16;
  v24 = OUTLINED_FUNCTION_6_9();
  v23 = OUTLINED_FUNCTION_6_9();
  CFDictionarySetValue(v24, *MEMORY[0x1E69660D8], v23);
  v26 = CVPixelBufferCreate(v25, Width, Height, 0x42475241u, v24, v21);
  if (v26)
  {
    v35 = v26;
    v29 = 0;
    v30 = 0;
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_11:
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1882468912 && (v27 = a5 % 6, v27 >= 1))
  {
    v38.origin.x = (a5 - v27);
    v38.origin.y = a6;
    v38.size.width = (v27 + a7);
    v28 = a8;
    v38.size.height = v28;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v38);
    if (a4)
    {
      v39.origin.x = v27;
      v39.size.width = a7;
      v39.origin.y = 0.0;
      v39.size.height = v28;
      v29 = CGRectCreateDictionaryRepresentation(v39);
    }

    else
    {
      v29 = 0;
    }

    v30 = DictionaryRepresentation;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  VTSessionSetProperty(*v15, @"SourceCropRectangle", DictionaryRepresentation);
  VTSessionSetProperty(*v15, @"DestinationRectangle", DictionaryRepresentation);
  v31 = *v15;
  v32 = @"EnableHistogram";
  if (a4)
  {
    VTSessionSetProperty(v31, @"EnableHistogram", *MEMORY[0x1E695E4D0]);
    v31 = *v15;
    v32 = @"HistogramRectangle";
    v33 = v29;
  }

  else
  {
    v33 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(v31, v32, v33);
  CVBufferPropagateAttachments(pixelBuffer, *v21);
  v34 = VTPixelTransferSessionTransferImage(*v15, pixelBuffer, *v21);
  v35 = v34;
  if (a4 && !v34)
  {
    VTSessionCopyProperty(*v15, @"HistogramData", *MEMORY[0x1E695E480], a4);
  }

  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_25:
  CFRelease(v24);
LABEL_26:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v35;
}

void VTHDRImageStatisticsGenerationSessionCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);

  CFRelease(a2);
}

uint64_t VTHDRImageStatisticsGenerationSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRImageStatisticsGenerationSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBlitterColorHandlingOptimized_setup(int a1, CFDictionaryRef theDict, int a3, const __CFDictionary *a4, const __CFDictionary *a5, int a6, int a7, char *a8, uint64_t (**a9)(int, int, int, int, int, int, int, int, uint64_t), uint64_t a10, void (__cdecl **a11)(void *))
{
  v190 = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E6965F98];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965F98]);
  }

  else
  {
    Value = 0;
  }

  if (a4)
  {
    v147 = CFDictionaryGetValue(a4, *v20);
  }

  else
  {
    v147 = 0;
  }

  v181 = 0;
  v180 = 0;
  cf = 0;
  bzero(v185, 0x180uLL);
  v21 = 0;
  v183 = 0;
  v182 = 0;
  v184 = 0;
  v175 = 0;
  v176 = &v175;
  v177 = 0x2000000000;
  v178 = 0;
  v171 = 0;
  v172 = &v171;
  v173 = 0x2000000000;
  v174 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x2000000000;
  v170 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2000000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2000000000;
  v162 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2000000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2000000000;
  v154 = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2000000000;
  v150[3] = 0;
  do
  {
    v22 = &v185[v21];
    *v22 = 0;
    *(v22 + 8) = xmmword_18FECF2D0;
    *(v22 + 6) = 1065353216;
    *(v22 + 28) = 0uLL;
    *(v22 + 44) = 0uLL;
    *(v22 + 60) = 0uLL;
    *(v22 + 76) = 0uLL;
    *(v22 + 92) = 0uLL;
    v21 += 128;
    *(v22 + 108) = 0uLL;
  }

  while (v21 != 384);
  VectorCapabilities = getVectorCapabilities();
  v149 = a8;
  if (a8)
  {
    v24 = 0x4000;
    if (VectorCapabilities < 2)
    {
      v24 = 0x8000;
    }

    v25 = malloc_type_calloc(1uLL, (3 * v24) | 0xA4, 0x1000040254CD248uLL);
    a8 = v25;
    if (!v25)
    {
      fig_log_get_emitter();
      v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, v139, v140);
      v27 = 0;
      v28 = 0;
      goto LABEL_27;
    }

    v182 = v25 + 164;
    v183 = v25 + 16548;
    v184 = v25 + 32932;
    if (a7)
    {
      MaxLogicalCoreCount = 1;
    }

    else
    {
      MaxLogicalCoreCount = FigThreadGetMaxLogicalCoreCount();
    }

    a8[162] = MaxLogicalCoreCount;
  }

  v27 = 0;
  v28 = 0;
  if (theDict && a4)
  {
    VTCreateColorSpacesFromDictionaries(theDict, a4, &v180, &cf);
    if (v29)
    {
      v27 = 0;
      v28 = 0;
      v33 = v29;
      goto LABEL_27;
    }

    v30 = *MEMORY[0x1E695E480];
    if (a5)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v30, 0, a5);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v27 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695F478], *MEMORY[0x1E695E4D0]);
    v32 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(v27, @"kCGPQEETF3DLut", *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(v27, @"kCGHLGSceneMapping3DLut", v32);
    v28 = CGColorConversionInfoCreateFromList(v27, v180, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, cf, 1, 0, 0);
    CGColorConversionInfoIterateFunctionsWithCallbacks();
  }

  if (*(v156 + 24) || *(v160 + 24))
  {
    v33 = 4294954396;
    goto LABEL_27;
  }

  v35 = v168;
  v36 = *(v168 + 24);
  if (a8 && !*(v168 + 24))
  {
    *(a8 + 72) = xmmword_18FECF2E0;
    *(a8 + 88) = xmmword_18FECF2E0;
    *(a8 + 26) = 1065353216;
    v36 = *(v35 + 24);
  }

  v33 = VTPixelBlitterSetupAssignBlitter(a1, a3, *(v176 + 24), *(v172 + 24), v36, *(v164 + 24), a6, &v181);
  if (v149)
  {
    if (a1 == 2019963956)
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_118;
    }

    switch(a1)
    {
      case 875836518:
        goto LABEL_123;
      case 875836534:
        goto LABEL_118;
      case 1111970369:
        OUTLINED_FUNCTION_2_15();
        *(a8 + 32) = v70;
        v68 = 50331906;
        goto LABEL_144;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_123:
      v144 = 0;
      OUTLINED_FUNCTION_2_15();
      *(a8 + 32) = v61;
      v62 = 0x800000;
LABEL_132:
      *(a8 + 35) = v62;
      v59 = *(v60 + 568);
LABEL_151:
      v54 = 1;
LABEL_152:
      v145 = v28;
      v146 = v33;
      v142 = v54;
      switch(a3)
      {
        case 2037741171:
          goto LABEL_239;
        case 846624102:
          goto LABEL_253;
        case 846624121:
          goto LABEL_239;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_239;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_239;
      }

      switch(a3)
      {
        case 875836518:
LABEL_253:
          v143 = 0;
          OUTLINED_FUNCTION_0_14();
          OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFF00800000));
          goto LABEL_254;
        case 875836534:
          goto LABEL_239;
        case 1111970369:
LABEL_312:
          v141 = 0;
          OUTLINED_FUNCTION_0_14();
          goto LABEL_313;
        case 1278226488:
          goto LABEL_253;
        case 1278226736:
          goto LABEL_238;
        case 1278226738:
          goto LABEL_245;
        case 1278226742:
          goto LABEL_247;
        case 1380401729:
          v141 = 0;
          OUTLINED_FUNCTION_0_14();
          OUTLINED_FUNCTION_14_3();
LABEL_313:
          OUTLINED_FUNCTION_11_4();
          goto LABEL_255;
        case 1380410945:
          v141 = 0;
          v136 = 32;
          break;
        case 1380411457:
          v141 = 0;
          v136 = 16;
          break;
        default:
          switch(a3)
          {
            case 1630697081:
              goto LABEL_239;
            case 1647534392:
              goto LABEL_275;
            case 1647719521:
              v141 = 0;
              OUTLINED_FUNCTION_1_14();
              break;
            case 1815162994:
              v141 = 0;
              *(a8 + 72) = 0;
              OUTLINED_FUNCTION_5_10();
              v11 = 0;
              v143 = 1;
              goto LABEL_244;
            case 1815491698:
              v141 = 0;
              OUTLINED_FUNCTION_1_14();
              OUTLINED_FUNCTION_14_3();
              break;
            case 1932681587:
            case 1932812659:
              goto LABEL_240;
            case 1936077360:
            case 1936077362:
            case 1936077876:
LABEL_247:
              v143 = 0;
              OUTLINED_FUNCTION_1_14();
              OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFFFF80000000));
              goto LABEL_248;
            case 1937125936:
            case 1937125938:
            case 1937126452:
LABEL_240:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_1_14();
              *(a8 + 18) = 0x1000EB0080001000;
              *(a8 + 76) = -4096;
LABEL_248:
              v11 = 0;
LABEL_249:
              v93 = *(v91 + 3376);
              goto LABEL_256;
            case 1949458803:
            case 1949589875:
LABEL_241:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_16_3();
              *(a8 + 18) = 0x1000EB008000100;
              *(a8 + 76) = 3840;
LABEL_246:
              v11 = 0;
              v93 = *(v92 + 800);
              goto LABEL_256;
            case 1952854576:
            case 1952854578:
            case 1952855092:
LABEL_245:
              v143 = 0;
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFFF08000000));
              goto LABEL_246;
            case 1953903152:
            case 1953903154:
            case 1953903668:
              goto LABEL_241;
            case 1982882104:
              goto LABEL_239;
            case 1983000886:
              goto LABEL_240;
            case 1983013176:
            case 1983144248:
LABEL_239:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_0_14();
              *(a8 + 18) = 0x1000EB00800010;
              *(a8 + 76) = 240;
LABEL_254:
              v11 = 0;
LABEL_255:
              v93 = 255.0;
              goto LABEL_256;
            case 1999843442:
LABEL_275:
              if (*(v164 + 24))
              {
                v112 = 0;
                v113 = 1023;
                v93 = 511.0;
                v11 = 1136656384;
              }

              else
              {
                v11 = 0;
                v113 = 511;
                v112 = 384;
                v93 = 1023.0;
              }

              v141 = 0;
              *(a8 + 72) = v112;
              *(a8 + 34) = v113;
              a8[132] = 10;
              v143 = 1;
              goto LABEL_256;
            case 2016567667:
            case 2016686640:
            case 2016686642:
            case 2016687156:
            case 2016698739:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_5_10();
              *(a8 + 18) = 0x4003AC02000040;
              *(a8 + 76) = 960;
              goto LABEL_243;
            case 2019963440:
            case 2019963442:
            case 2019963956:
LABEL_238:
              v143 = 0;
              OUTLINED_FUNCTION_5_10();
              *(a8 + 18) = 0x3FF02000000;
              *(a8 + 76) = v90;
              v141 = 1;
LABEL_243:
              v11 = 0;
LABEL_244:
              v93 = *(v89 + 3372);
LABEL_256:
              v94 = v152;
              LODWORD(v95) = *(v152 + 24);
              if (*(v152 + 24))
              {
                v96 = 0;
                v97 = *(v71 + 568);
                do
                {
                  v98 = &v185[128 * v96];
                  if (v96 == v95 - 1)
                  {
                    *(v98 + 2) = 956302336;
                    *(v98 + 4) = v93;
                    *(v98 + 5) = v11;
                  }

                  else if (v96)
                  {
                    if (v96 == 1)
                    {
                      v188 = v97;
                      v189 = 1065353216;
                    }
                  }

                  else
                  {
                    v186 = v59;
                    v187 = 1174403072;
                  }

                  v99 = (&v182)[v96];
                  v100 = *v98;
                  if (*v98)
                  {
                    for (i = 0; i != 0x2000; ++i)
                    {
                      _S0 = v100(&v185[128 * v96], i);
                      __asm { FCVT            H0, S0 }

                      *&v99[2 * i] = LOWORD(_S0);
                    }

                    v94 = v152;
                  }

                  else
                  {
                    bzero((&v182)[v96], 0x4000uLL);
                  }

                  ++v96;
                  v95 = *(v94 + 24);
                }

                while (v96 < v95);
              }

              v28 = v145;
              if ((v144 & 1) == 0)
              {
                v106 = a8[124];
                v107 = FigCFEqual();
                v108 = 0xBEB032983FB374BCLL;
                v109 = 1.772;
                v110 = -0.71414;
                if (!v107)
                {
                  IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(Value);
                  v108 = 0xBEB032983FB374BCLL;
                  if (IntegerCodePointForString != 5)
                  {
                    if (FigCFEqual())
                    {
                      v108 = 0xBE2880953FBCBFB1;
                      v109 = 1.8814;
                      v110 = -0.57135;
                    }

                    else
                    {
                      if (!FigCFEqual())
                      {
                        v33 = 4294954391;
                        goto LABEL_27;
                      }

                      v108 = 0xBE3FD1DD3FC9930CLL;
                      v109 = 1.8556;
                      v110 = -0.46812;
                    }
                  }
                }

                v146 = 0;
                *a8 = 1065353216;
                *(a8 + 2) = v108;
                *(a8 + 3) = 1065353216;
                *(a8 + 4) = HIDWORD(v108);
                *(a8 + 5) = v110;
                *(a8 + 6) = 1065353216;
                *(a8 + 7) = v109;
                *(a8 + 8) = 0;
                if ((v142 & 1) == 0)
                {
                  v146 = 0;
                  if (v106 >= 0x10)
                  {
                    v114 = 16;
                  }

                  else
                  {
                    v114 = v106;
                  }

                  if (v114 <= 8)
                  {
                    LOBYTE(v114) = 8;
                  }

                  *v115.i32 = OUTLINED_FUNCTION_6_10(v114);
                  *v117.i8 = OUTLINED_FUNCTION_7_5(v115, v116, 0xDB000000E0);
                  v119 = vdivq_f32(vtrn1q_s32(xmmword_18FECF2F0, vzip1q_s32(v118, v117)), vzip1q_s32(v117, vdupq_lane_s32(*v117.i8, 0)));
                  *a8 = v119.i32[2];
                  *(a8 + 6) = v119.i32[2];
                  *(a8 + 4) = v119;
                  *(a8 + 5) = v110 / *v117.i32;
                  *(a8 + 7) = v109 / *v117.i32;
                  *(a8 + 8) = v119.i32[0];
                }
              }

              LODWORD(v33) = v146;
              if ((v143 & 1) == 0)
              {
                v120 = a8[132];
                v121 = FigCFEqual();
                v122 = xmmword_18FECF300;
                v123 = -0.081312;
                v124 = -1093247418;
                v125 = -1096180881;
                if (!v121)
                {
                  v126 = CVYCbCrMatrixGetIntegerCodePointForString(v147);
                  v125 = -1096180881;
                  v124 = -1093247418;
                  v122 = xmmword_18FECF300;
                  if (v126 != 5)
                  {
                    if (FigCFEqual())
                    {
                      v122 = xmmword_18FECD120;
                      v123 = -0.040215;
                      v124 = -1091868431;
                      v125 = -1095204245;
                    }

                    else
                    {
                      if (!FigCFEqual())
                      {
                        v33 = 4294954391;
                        v28 = v145;
                        goto LABEL_27;
                      }

                      v122 = xmmword_18FECF310;
                      v123 = -0.045847;
                      v124 = -1092057410;
                      v125 = -1094363438;
                    }
                  }
                }

                *(a8 + 36) = v122;
                *(a8 + 13) = v125;
                *(a8 + 7) = 0x3F0000003F000000;
                *(a8 + 16) = v124;
                *(a8 + 17) = v123;
                v28 = v145;
                if (v141)
                {
                  LODWORD(v33) = 0;
                }

                else
                {
                  LODWORD(v33) = 0;
                  if (v120 >= 0x10)
                  {
                    v127 = 16;
                  }

                  else
                  {
                    v127 = v120;
                  }

                  if (v127 <= 8)
                  {
                    LOBYTE(v127) = 8;
                  }

                  *v128.i32 = OUTLINED_FUNCTION_6_10(v127);
                  *v130.i8 = OUTLINED_FUNCTION_7_5(v128, v129, 0xE0000000DBLL);
                  v131 = vzip1q_s32(v130, v130);
                  v131.i32[2] = v130.i32[0];
                  *(a8 + 36) = vmulq_f32(v131, v132);
                  v131.i32[2] = 1056964608;
                  v131.i64[0] = v133 | 0x3F00000000000000;
                  v131.i32[3] = v134;
                  *(a8 + 52) = vmulq_lane_f32(v131, *v130.i8, 1);
                  *(a8 + 17) = vmuls_lane_f32(v123, *v130.i8, 1);
                }
              }

              v135 = v181;
              if (v181)
              {
                v33 = v33;
              }

              else
              {
                v33 = 4294954396;
              }

              if (!v33)
              {
                *v149 = a8;
                *a9 = v135;
                *a11 = VTPixelBlitterColorHandlingOptimized_cleanup;
                a8 = 0;
              }

              goto LABEL_27;
            case 2037741158:
              goto LABEL_253;
            case 32:
              goto LABEL_312;
            default:
              OUTLINED_FUNCTION_9_4();
              a8[132] = 0;
              *(a8 + 34) = 0;
              *(a8 + 18) = 0;
              v93 = 1.0;
              v11 = 0;
              *(a8 + 76) = 0;
              goto LABEL_256;
          }

          OUTLINED_FUNCTION_11_4();
          goto LABEL_249;
      }

      a8[132] = v136;
      v143 = 1;
      *(a8 + 34) = 1;
      OUTLINED_FUNCTION_14_3();
      *(a8 + 158) = v137;
      v93 = 1.0;
      v11 = 0;
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_131:
      v144 = 0;
      OUTLINED_FUNCTION_8_5();
      *(a8 + 32) = v65;
      v62 = 0x2000000;
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_124:
      v144 = 0;
      OUTLINED_FUNCTION_15_3();
      v62 = 0x8000000;
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
      goto LABEL_125;
    }

    if (a1 == 1380401729)
    {
      OUTLINED_FUNCTION_2_15();
    }

    else if (a1 == 1380410945)
    {
      a8[124] = 32;
      v66 = -1;
    }

    else
    {
      if (a1 != 1380411457)
      {
        switch(a1)
        {
          case 1647534392:
LABEL_133:
            a8[124] = 10;
            if (*(v176 + 24))
            {
              *(a8 + 70) = 0;
              *(a8 + 32) = 1023;
              v59 = 0x3F40603039802411;
LABEL_150:
              v144 = 1;
              goto LABEL_151;
            }

            *(a8 + 70) = 384;
            v69 = 511;
            goto LABEL_148;
          case 1647719521:
            OUTLINED_FUNCTION_3_12();
            goto LABEL_139;
          case 1815162994:
            *(a8 + 70) = 0;
            OUTLINED_FUNCTION_8_5();
LABEL_148:
            *(a8 + 32) = v69;
            goto LABEL_149;
        }

        if (a1 != 1815491698)
        {
          _ZF = a1 == 1932681587 || a1 == 1932812659;
          if (_ZF)
          {
            goto LABEL_119;
          }

          if (a1 != 1936077360 && a1 != 1936077362 && a1 != 1936077876)
          {
            if (a1 != 1937125936 && a1 != 1937125938 && a1 != 1937126452)
            {
              if (a1 == 1949458803 || a1 == 1949589875)
              {
                goto LABEL_120;
              }

              if (a1 != 1952854576 && a1 != 1952854578 && a1 != 1952855092)
              {
                if (a1 != 1953903152 && a1 != 1953903154 && a1 != 1953903668)
                {
                  if (a1 != 1982882104 && a1 != 1983013176 && a1 != 1983144248)
                  {
                    if (a1 != 1999843442)
                    {
                      if (a1 != 2016567667 && a1 != 2016686640 && a1 != 2016686642 && a1 != 2016687156 && a1 != 2016698739)
                      {
                        if (a1 != 2019963440 && a1 != 2019963442)
                        {
                          if (a1 == 32)
                          {
                            OUTLINED_FUNCTION_2_15();
LABEL_139:
                            *(a8 + 32) = v67;
                            v68 = 197121;
LABEL_144:
                            *(a8 + 154) = v68;
LABEL_149:
                            v59 = *(v37 + 568);
                            goto LABEL_150;
                          }

                          v144 = 0;
                          a8[124] = 0;
                          *(a8 + 32) = 0;
                          *(a8 + 35) = 0;
                          v54 = 1;
LABEL_122:
                          v59 = *(v37 + 568);
                          goto LABEL_152;
                        }

                        goto LABEL_131;
                      }

                      OUTLINED_FUNCTION_17_2();
                      OUTLINED_FUNCTION_8_5();
                      *(a8 + 32) = v55;
                      v56 = 33554496;
LABEL_121:
                      *(a8 + 35) = v56;
                      goto LABEL_122;
                    }

                    goto LABEL_133;
                  }

LABEL_118:
                  OUTLINED_FUNCTION_17_2();
                  OUTLINED_FUNCTION_2_15();
                  *(a8 + 32) = v57;
                  v56 = 8388624;
                  goto LABEL_121;
                }

LABEL_120:
                OUTLINED_FUNCTION_17_2();
                OUTLINED_FUNCTION_15_3();
                v56 = 134217984;
                goto LABEL_121;
              }

              goto LABEL_124;
            }

LABEL_119:
            OUTLINED_FUNCTION_17_2();
            OUTLINED_FUNCTION_3_12();
            *(a8 + 32) = v58;
            v56 = -2147479552;
            goto LABEL_121;
          }

LABEL_125:
          v144 = 0;
          OUTLINED_FUNCTION_3_12();
          *(a8 + 32) = v63;
          v62 = 0x80000000;
          goto LABEL_132;
        }
      }

      OUTLINED_FUNCTION_3_12();
    }

    *(a8 + 32) = v66;
    OUTLINED_FUNCTION_14_3();
    goto LABEL_144;
  }

LABEL_27:
  free(a8);
  if (v180)
  {
    CFRelease(v180);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  _Block_object_dispose(v150, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);
  _Block_object_dispose(&v171, 8);
  _Block_object_dispose(&v175, 8);
  return v33;
}

uint64_t VTParavirtualizedJPEGSessionCreate(uint64_t a1, CFUUIDBytes **a2)
{
  MEMORY[0x193AE3010](&VTParavirtualizedJPEGSessionGetTypeID_onceToken, RegisterVTParavirtualizedJPEGSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294954392;
  }

  v4 = Instance;
  v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  *(v4 + 16) = CFUUIDGetUUIDBytes(v5);
  v6 = VTParavirtualizationGuestInstallHandlerForUUID((v4 + 16), &__block_literal_global_14, 0);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v14 = 0;
    cf = 0;
    v12 = 0;
    v13 = 0;
    v7 = VTParavirtualizationCreateMessageAndByteStream(0x6A636170u, 1u, (v4 + 16), 0, &v14, &v13);
    if (v7 || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, v7 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v14, &v10, &cf), v7) || (LODWORD(v10) = 0, VTParavirtualizationMessageGetSInt32(), v7))
    {
      v8 = v7;
    }

    else
    {
      v8 = v10;
      if (!v10)
      {
        v8 = VTParavirtualizationMessageCopyCFDictionary(cf, 745169761, &v12);
        if (!v8)
        {
          *(v4 + 32) = v12;
          v12 = 0;
        }
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

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (a2 && !v8)
    {
      *a2 = v4;
      if (!v5)
      {
        return v8;
      }

      goto LABEL_25;
    }
  }

  CFRelease(v4);
  if (v5)
  {
LABEL_25:
    CFRelease(v5);
  }

  return v8;
}

uint64_t VTParavirtualizedJPEGSessionCopyCapabilities(CFDictionaryRef *a1, CFDictionaryRef *a2)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v4, a1[4]);
  result = 0;
  *a2 = Copy;
  return result;
}

uint64_t VTParavirtualizedJPEGSessionEncodeImage(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, _DWORD *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  cfa = 0;
  v17 = 0;
  v5 = 4294954394;
  if (a1 && a2 && a3 && cf)
  {
    v11 = CFGetTypeID(cf);
    if (v11 == CFDictionaryGetTypeID())
    {
      appended = VTParavirtualizationCreateMessageAndByteStream(0x6A656E63u, 1u, (a1 + 16), 0, &v18, &v17);
      if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v17, 0x2C6A6F6Fu, cf), appended) || (v20 = a2, v21 = a3, appended = OUTLINED_FUNCTION_0_15(v18, &kVTParavirtualizationCodecOperationReplyTimeout, v15, v16), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
      {
        v5 = appended;
      }

      else
      {
        VTParavirtualizationMessageGetUInt32();
        v5 = v13;
        if (a5 && !v13)
        {
          *a5 = 0;
        }
      }
    }

    else
    {
      v5 = 4294954394;
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v5;
}

uint64_t VTParavirtualizedJPEGSessionDecodeImage(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  cfa = 0;
  v16 = 0;
  v4 = 4294954394;
  if (a1 && a2 && a3 && cf)
  {
    v9 = CFGetTypeID(cf);
    if (v9 == CFDictionaryGetTypeID())
    {
      appended = VTParavirtualizationCreateMessageAndByteStream(0x6A646563u, 1u, (a1 + 16), 0, &v17, &v16);
      if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v16, 0x2C6A6F6Fu, cf), appended))
      {
        v4 = appended;
      }

      else
      {
        v19 = a2;
        v20 = a3;
        v4 = OUTLINED_FUNCTION_0_15(v17, &kVTParavirtualizationDefaultReplyTimeout, v14, v15);
        v11 = cfa;
        if (!v4)
        {
          VTParavirtualizationMessageGetSInt32();
          if (v12)
          {
            v4 = v12;
          }

          else
          {
            v4 = 0;
          }

          v11 = cfa;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    else
    {
      v4 = 4294954394;
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v4;
}

void TestIPBVideoDecoder_DecodeFrameSynchronously(uint64_t a1, const void *a2, CMSampleBufferRef sbuf, unsigned int *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  dataPointerOut = 0;
  blockBufferOut = 0;
  v48 = 0;
  cf = 0;
  v47 = 0;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]);
      if (Value)
      {
        v14 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v14))
        {
          CFBooleanGetValue(v14);
        }
      }
    }
  }

  bzero(v56, 0x101uLL);
  bzero(v55, 0x101uLL);
  bzero(v54, 0x101uLL);
  bzero(v53, 0x101uLL);
  bzero(v52, 0x101uLL);
  v16 = CMGetAttachment(sbuf, @"IPBFrameDelay", 0);
  if (v16)
  {
    valuePtr = 0;
    CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
    v17 = 1000 * valuePtr;
    if ((valuePtr - 1) >= 0x418937)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = *(a1 + 620);
  }

  v18 = *(a1 + 548);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v21 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    v22 = CFRetain(DataBuffer);
    blockBufferOut = v22;
  }

  else
  {
    if (CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, DataLength, 0, &blockBufferOut))
    {
      OUTLINED_FUNCTION_1_15();
      goto LABEL_22;
    }

    v22 = blockBufferOut;
  }

  CMBlockBufferGetDataPointer(v22, 0, 0, 0, &dataPointerOut);
  VTDecoderSessionTrace(*(a1 + 8));
  OUTLINED_FUNCTION_0_16();
  if (IPB_GetFrameStrings(v23, DataLength, v24, v25, v26, v27) || (DataBuffer = v55, DataLength = v52, IPB_SimulatePrediction((a1 + 32), (a1 + 289), (a1 + 546), v56, v55, v52)))
  {
    OUTLINED_FUNCTION_1_15();
    goto LABEL_18;
  }

  v46 = a4;
  v56[v56[0] + 1] = 0;
  v55[v55[0] + 1] = 0;
  v54[v54[0] + 1] = 0;
  v53[v53[0] + 1] = 0;
  v52[v52[0] + 1] = 0;
  if (v19)
  {
    snprintf(&valuePtr, 0x20uLL, " (delayed %u ms)", v19 / 0x3E8);
  }

  IPB_AreStringsDifferent(v53, v52);
  v30 = *(a1 + 552);
  if (v30)
  {
    Count = CFArrayGetCount(v30);
    v32 = *v21;
    v33 = MEMORY[0x1E695E9C0];
    DataLength = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
    DataBuffer = CFArrayCreateMutable(v32, 0, v33);
    if (Count >= 1)
    {
      v34 = 0;
      while (1)
      {
        FigCFArrayGetInt32AtIndex();
        valuePtr = 0;
        v58 = 0;
        valuePtr = FigTagMakeWithSInt64Value();
        v58 = v35;
        v36 = FigTagCollectionCreate();
        if (v36)
        {
          break;
        }

        OUTLINED_FUNCTION_0_16();
        v36 = testipb_CreatePixelBufferAndDrawFrame(a1, a2, v37, v38, v39, v40, v52, 1, 0, &cf);
        if (v36)
        {
          break;
        }

        v41 = cf;
        CFArrayAppendValue(DataBuffer, cf);
        if (v41)
        {
          CFRelease(v41);
          cf = 0;
        }

        CFArrayAppendValue(DataLength, v48);
        if (v48)
        {
          CFRelease(v48);
          v48 = 0;
        }

        if (Count == ++v34)
        {
          goto LABEL_51;
        }
      }

      v4 = v36;
      goto LABEL_56;
    }

LABEL_51:
    v4 = MEMORY[0x193AE2F70](v32, DataLength, DataBuffer, &v47);
    if (v4)
    {
LABEL_56:
      a4 = v46;
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    testipb_CreatePixelBufferAndDrawFrame(a1, a2, v42, v43, v44, v45, v52, 0, 0, &cf);
    OUTLINED_FUNCTION_1_15();
  }

  a4 = v46;
LABEL_18:
  VTDecoderSessionTrace(*(a1 + 8));
  if (v19)
  {
    MEMORY[0x193AE3030](v19);
  }

LABEL_22:
  v28 = *(a1 + 8);
  v29 = *a4;
  if (*(a1 + 552))
  {
    VTDecoderSessionEmitDecodedMultiImageFrame(v28, a2, v4, v29, v47);
  }

  else
  {
    VTDecoderSessionEmitDecodedFrame(v28, a2, v4, v29, cf);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  VTDecoderSessionCleanUpAfterDecode(*(a1 + 8));
  if (DataLength)
  {
    CFRelease(DataLength);
  }

  if (DataBuffer)
  {
    CFRelease(DataBuffer);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }
}

uint64_t TestIPBVideoDecoder_WorkerThread_cold_1(void *a1, unsigned int *a2, void *a3, _BYTE *a4)
{
  v7 = a1 + 74;
  do
  {
    FigSimpleMutexLock();
    v8 = a1[74];
    v9 = a1[75];
    *v7 = 0;
    v7[1] = 0;
    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    TestIPBVideoDecoder_DecodeFrameSynchronously(a1, v8, v9, a2);
    if (v9)
    {
      CFRelease(v9);
    }

    *a2 = 1;
    result = FigSemaphoreWaitRelative();
  }

  while (!*a4);
  return result;
}

uint64_t __displayRequiresRealTimeCacheMode_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("hw.optional.ucnormal_mem", &v2, &v1, 0, 0);
  if (!result)
  {
    displayRequiresRealTimeCacheMode_isTrueUCEnabled = v2 != 0;
  }

  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void FigCreatePixelBufferCacheModeArray_cold_1(uint64_t a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  CFRelease(a2);
}

uint64_t FigCreatePixelBufferCacheModeArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t appendIntToArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createArrayWithCacheModes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dssxpc_ReplyingMessageHandler(_xpc_connection_s *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_2;
  }

  *token.val = 0;
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_2;
  }

  OUTLINED_FUNCTION_13_5();
  if (v16 || v15 == 1684366196)
  {
    goto LABEL_28;
  }

  if (v15 != 1701016182)
  {
    if (v15 == 1718641264)
    {
      OpCode = VTDecompressionSessionFlushPixelBufferPool(0, v8, v9);
      goto LABEL_2;
    }

    if (v15 != 1718838374 && v15 != 1718838388 && v15 != 1735423091 && v15 != 1835953528 && v15 != 1936550243 && v15 != 2003198310)
    {
      switch(v15)
      {
        case 778268793:
          v27 = OUTLINED_FUNCTION_11_5(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, 0);
          OpCode = dssxpc_CopyProperty(v27, v28, v29, a3);
          break;
        case 779314548:
          v30 = OUTLINED_FUNCTION_11_5(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, 0);
          OpCode = dssxpc_SetProperty(v30, v31, v32);
          break;
        case 1668508784:
          v18 = OUTLINED_FUNCTION_10_6(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, 0);
          OpCode = dssxpc_CopySerializableProperties(v18, v19, v20);
          break;
        case 1668509796:
          v24 = OUTLINED_FUNCTION_10_6(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, 0);
          OpCode = dssxpc_CopySupportedPropertyDictionary(v24, v25, v26);
          break;
        case 1936749683:
          v21 = OUTLINED_FUNCTION_11_5(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, 0);
          OpCode = dssxpc_SetProperties(v21, v22, v23);
          break;
        default:
          v6 = 4294949605;
          goto LABEL_20;
      }

LABEL_2:
      v6 = OpCode;
      goto LABEL_20;
    }

LABEL_28:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_2;
  }

  FigSemaphoreSignal();
  v6 = 0;
LABEL_20:
  if (v37)
  {
    CFRelease(v37);
  }

  return v6;
}

uint64_t tddss_NoReplyMessageHandler(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294949605;
  }
}

uint64_t dssxpc_DecodeFrame_XPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v22 = 0;
  cf = 0;
  if (*(a3 + 122))
  {
    v17 = 4294954393;
  }

  else
  {
    OUTLINED_FUNCTION_9_5();
    Cryptor = FigXPCServerCopyMemoryRecipient();
    if (Cryptor || (Cryptor = FigXPCMessageCopyCMSampleBufferWithLastCryptor(), Cryptor) || (uint64 = xpc_dictionary_get_uint64(a4, "FrameRefCon"), v10 = xpc_dictionary_get_uint64(a4, "DecoderFlags"), Cryptor = FigXPCMessageCopyCFDictionary(), Cryptor))
    {
      v17 = Cryptor;
    }

    else
    {
      if (xpc_dictionary_get_BOOL(a4, "RequiresMultiImageOutputHandler") && !*(v6[7] + 112))
      {
        OUTLINED_FUNCTION_3_13();
        VTDecompressionSessionSetMultiImageCallback(v11, v12, v6);
      }

      FigXPCRetain();
      if (v5)
      {
        CFRetain(v5);
      }

      v13 = v25[3];
      if (v13)
      {
        CFRetain(v13);
      }

      v14 = v6[3];
      v15 = v6[11];
      v16 = v6[12];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __dssxpc_DecodeFrame_XPCMessage_block_invoke;
      v20[3] = &unk_1E72C8A90;
      v20[4] = &v24;
      v20[5] = v5;
      v21 = v10;
      v20[6] = cf;
      v20[7] = uint64;
      v20[8] = v14;
      v20[9] = 0;
      v20[10] = v4;
      dispatch_group_async(v15, v16, v20);
      v17 = 0;
    }
  }

  v18 = v25[3];
  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v24, 8);
  return v17;
}

void dssxpc_DecodeTile(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t block, uint64_t a14, uint64_t (*a15)(uint64_t a1), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, const void *a30, const void *a31, const void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  OUTLINED_FUNCTION_21_1();
  a44 = v45;
  a45 = v50;
  a31 = 0;
  a32 = 0;
  a30 = 0;
  if (*(v48 + 122))
  {
    v58 = 0;
  }

  else
  {
    v51 = v49;
    v52 = v48;
    v53 = v46;
    cfa = v47;
    if (FigXPCServerCopyMemoryRecipient() || VTCopyCMSampleBufferFromXPCMessage(v51, a30, (v52 + 9), &a32))
    {
      v58 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v51, "FrameRefCon");
      v55 = xpc_dictionary_get_uint64(v51, "DecoderFlags");
      v56 = xpc_dictionary_get_uint64(v51, "TileCropOffsetXY");
      v69 = xpc_dictionary_get_uint64(v51, "TileCropDimensionWH");
      v68 = xpc_dictionary_get_uint64(v51, "OffsetInImageBufferXY");
      value = xpc_dictionary_get_value(v51, "CanvasioSurface");
      if (value)
      {
        v58 = IOSurfaceLookupFromXPCObject(value);
        if (v58)
        {
          v59 = v56;
          CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v58, 0, &a31);
          v60 = v52[16];
          v61 = a31;
          v52[16] = a31;
          if (v61)
          {
            CFRetain(v61);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          v56 = v59;
        }

        v62 = a31;
      }

      else
      {
        v62 = v52[16];
        if (v62)
        {
          v62 = CFRetain(v62);
        }

        v58 = 0;
        a31 = v62;
      }

      if (v62)
      {
        FigXPCRetain();
        if (a32)
        {
          CFRetain(a32);
        }

        if (a31)
        {
          CFRetain(a31);
        }

        v63 = cfa;
        if (cfa)
        {
          CFRetain(cfa);
          v63 = cfa;
        }

        v64 = v52[3];
        v65 = v52[11];
        v66 = v52[12];
        block = MEMORY[0x1E69E9820];
        a14 = 0x40000000;
        a15 = __dssxpc_DecodeTile_block_invoke;
        a16 = &__block_descriptor_tmp_95;
        a17 = v63;
        a18 = a32;
        a23 = HIDWORD(v56);
        a24 = v56;
        a25 = HIDWORD(v69);
        a26 = v69;
        a27 = HIDWORD(v68);
        a28 = v68;
        a29 = v55;
        a19 = a31;
        a20 = uint64;
        a21 = v64;
        a22 = v53;
        dispatch_group_async(v65, v66, &block);
      }
    }
  }

  if (a32)
  {
    CFRelease(a32);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (a31)
  {
    CFRelease(a31);
  }

  if (a30)
  {
    CFRelease(a30);
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t dssxpc_CopySupportedPropertyDictionary(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  cfa = 0;
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  if (*(a2 + 32))
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == VTTileDecompressionSessionGetTypeID())
      {
        VTTileDecompressionSessionCopySupportedPropertyDictionary(cf, &cfa);
        goto LABEL_9;
      }
    }
  }

  else if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == VTDecompressionSessionGetTypeID())
    {
      VTDecompressionSessionCopySupportedPropertyDictionary(cf, &cfa);
LABEL_9:
      v6 = FigXPCMessageSetCFDictionary();
      if (cfa)
      {
        CFRelease(cfa);
      }

      return v6;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t dssxpc_CopySerializableProperties(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  if (*(a2 + 32))
  {
    if (cf)
    {
      v3 = CFGetTypeID(cf);
      if (v3 == VTTileDecompressionSessionGetTypeID())
      {
        v4 = OUTLINED_FUNCTION_14_4();
        v7 = VTTileDecompressionSessionCopySerializableProperties(v4, v5, v6);
        goto LABEL_9;
      }
    }
  }

  else if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == VTDecompressionSessionGetTypeID())
    {
      v9 = OUTLINED_FUNCTION_14_4();
      v7 = VTDecompressionSessionCopySerializableProperties(v9, v10, v11);
LABEL_9:
      v12 = v7;
      if (!v7)
      {
        return FigXPCMessageSetCFDictionary();
      }

      return v12;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t dssxpc_CopyProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf1 = 0;
  cf = 0;
  if (*(a2 + 122))
  {
    v6 = 4294954393;
  }

  else
  {
    v4 = FigXPCMessageCopyCFString();
    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_1();
      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v6 = v4;
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v6;
}

uint64_t dssxpc_SetProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (*(a2 + 122))
  {
    v4 = 4294954393;
  }

  else
  {
    v3 = FigXPCMessageCopyCFObject();
    if (!v3)
    {
      v3 = FigXPCMessageCopyCFString();
      if (!v3)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    v4 = v3;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t dssxpc_SetProperties(const void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v5 = FigXPCMessageCopyCFDictionary();
  if (!v5)
  {
    if (*(a2 + 32))
    {
      if (a1)
      {
        v6 = CFGetTypeID(a1);
        if (v6 == VTTileDecompressionSessionGetTypeID())
        {
          return VTTileDecompressionSessionSetProperties(a1, 0);
        }
      }
    }

    else if (a1)
    {
      v7 = CFGetTypeID(a1);
      if (v7 == VTDecompressionSessionGetTypeID())
      {
        return VTDecompressionSessionSetProperties(a1, 0);
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return v5;
}

uint64_t dssxpc_FinishDelayedFrames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_FinishDelayedFrames_block_invoke, &__block_descriptor_tmp_96, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_FinishDelayedTiles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_FinishDelayedTiles_block_invoke, &__block_descriptor_tmp_97, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_WaitForAsynchronousFrames_XPCMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_WaitForAsynchronousFrames_XPCMessage_block_invoke, &__block_descriptor_tmp_98, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_CanAcceptFormatDescription(OpaqueVTDecompressionSession *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v6 = FigXPCMessageCopyFormatDescription();
  if (!v6)
  {
    v7 = VTDecompressionSessionCanAcceptFormatDescription(a1, 0) != 0;
    xpc_dictionary_set_BOOL(a4, "CanacceptFormat", v7);
  }

  return v6;
}

uint64_t dssxpc_CopyBlackPixelBuffer(uint64_t a1, VTDecompressionSessionRef session, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  cf = 0;
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  v5 = VTDecompressionSessionCopyBlackPixelBuffer(session, &v9);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = dssxpc_copyPixelBufferOriginForConnection(a1, &cf);
    v7 = cf;
    if (!v6)
    {
      v6 = FigPixelBufferOriginSetPixelBufferInXPCMessage();
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t dssxpc_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(a1, &v16, a3);
  OUTLINED_FUNCTION_16_4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16);
  return FigXPCMessageSetCMTime();
}

uint64_t dssxpc_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = **&MEMORY[0x1E6960C70];
  v13 = v14;
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  result = VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(a1, &v14, &v13);
  if (!result)
  {
    v11 = v14;
    result = FigXPCMessageSetCMTime();
    if (!result)
    {
      OUTLINED_FUNCTION_16_4(result, v4, v5, v6, v7, v8, v9, v10, v11.value, *&v11.timescale, v11.epoch, v12, *&v13.value);
      return FigXPCMessageSetCMTime();
    }
  }

  return result;
}

void DecompressionOutputCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a22, __n128 a24, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t a1, CMBlockBufferRef theBuffer), void *a15, uint64_t a16, uint64_t a17, uint64_t a18, CFTypeRef a19, int a20, unsigned int a21, unint64_t a23, unint64_t a25, CFTypeRef a26, xpc_object_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_21_1();
  a45 = v46;
  a46 = v52;
  a33 = 0;
  a34 = 0;
  a32 = 0;
  if (!*(v47 + 121))
  {
    v53 = v47;
    if (!*(v47 + 122))
    {
      v54 = v51;
      v55 = v50;
      v56 = v49;
      v57 = v48;
      if (!dssxpc_copyPixelBufferOriginForConnection(*(v47 + 136), &a32))
      {
        if ((v55 & 2) != 0)
        {
          goto LABEL_19;
        }

        dssxpc_ensureEventLinkIfSupported(v53, &a34);
        if (!a34)
        {
          goto LABEL_19;
        }

        v58 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
        if (!v58)
        {
          goto LABEL_14;
        }

        if (v58 == -19428)
        {
          FigOSEventLinkRemoteInvalidate();
        }

        else
        {
LABEL_19:
          if (!FigXPCCreateBasicMessage())
          {
            FigPixelBufferOriginSetPixelBufferInXPCMessage();
            xpc_dictionary_set_int64(a33, "Result", v56);
            xpc_dictionary_set_uint64(a33, "DecoderFlags", v55);
            xpc_dictionary_set_uint64(a33, "FrameRefCon", v57);
            FigXPCMessageSetCMTime();
            FigXPCMessageSetCMTime();
            xpc_connection_send_message(*(v53 + 136), a33);
            if (!*(v53 + 122))
            {
              OUTLINED_FUNCTION_8_3();
              do
              {
                if (FigSemaphoreWaitRelative() != v57)
                {
                  break;
                }

                v54 *= 2;
              }

              while (!*(v53 + 122));
            }
          }
        }
      }
    }
  }

LABEL_14:
  FigXPCRelease();
  if (a32)
  {
    CFRelease(a32);
  }

  OUTLINED_FUNCTION_16_0();
}

void dssxpc_DisposeClientRecord(void *cf)
{
  if (cf)
  {
    v2 = cf[5];
    if (v2 && *(v2 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_6();
      FigNotificationCenterRemoveWeakListener();
    }

    dssxpc_invalidateSession(cf);

    CFRelease(cf);
  }
}

void dssxpc_appStateChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      FigCFDictionaryGetInt32IfPresent();
      *(a2 + 48) = 8;
    }
  }
}

void dssxpc_invalidateSession(_BYTE *cf)
{
  if (!cf[122])
  {
    cf[122] = 1;
    if (*(cf + 7) || *(cf + 8))
    {
      CFRetain(cf);
      for (i = 168; i != 248; i += 8)
      {
        if (*&cf[i])
        {
          FigOSEventLinkRemoteInvalidate();
        }
      }

      if (*(cf + 13))
      {
        FigSemaphoreSignal();
      }

      OUTLINED_FUNCTION_6_11();
      v6 = 0x40000000;
      v7 = __dssxpc_invalidateSession_block_invoke;
      v8 = &__block_descriptor_tmp_85;
      v9 = cf;
      dispatch_group_async(v3, v4, block);
    }
  }
}

uint64_t TileDecompressionOutputCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  if (!*(a1 + 121) && !*(a1 + 122))
  {
    v10 = a7;
    dssxpc_ensureEventLinkIfSupported(a1, &v14);
    if (v14)
    {
      OUTLINED_FUNCTION_6_11();
      v12 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      if (!v12)
      {
        return FigXPCRelease();
      }

      if (v12 == -19428)
      {
        FigOSEventLinkRemoteInvalidate();
        return FigXPCRelease();
      }
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "FrameRefCon", a2);
      xpc_dictionary_set_int64(0, "Result", v10);
      xpc_dictionary_set_uint64(0, "DecoderFlags", a8);
      xpc_connection_send_message(*(a1 + 136), 0);
      if (!*(a1 + 122))
      {
        OUTLINED_FUNCTION_8_3();
        do
        {
          if (FigSemaphoreWaitRelative() != a2)
          {
            break;
          }

          a8 *= 2;
        }

        while (!*(a1 + 122));
      }
    }
  }

  return FigXPCRelease();
}

uint64_t __DecompressionMultiImageOutputCallback_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!DataPointer)
  {
    if ((dataPointerOut & 7) != 0)
    {
      return 4294949291;
    }

    else if (lengthAtOffsetOut > 0xA7)
    {
      bzero(dataPointerOut, 0xA8uLL);
      v5 = lengthAtOffsetOut;
      v4 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 32) + 24);
      *(v4 + 2) = 1701672297;
      *(v4 + 4) = *(a1 + 72);
      *(v4 + 5) = *(a1 + 76);
      *(v4 + 3) = *(a1 + 40);
      v6 = *(a1 + 80);
      *(v4 + 6) = *(a1 + 96);
      *(v4 + 2) = v6;
      v7 = *(a1 + 104);
      *(v4 + 9) = *(a1 + 120);
      *(v4 + 56) = v7;
      *(v4 + 10) = *(a1 + 48);
      v8 = MEMORY[0x1E695E480];
      if (!*(*(a1 + 32) + 328))
      {
        v9 = OUTLINED_FUNCTION_14_4();
        Mutable = CFDictionaryCreateMutable(v9, v10, v11, v12);
        v31 = *(a1 + 32);
        v14 = OUTLINED_FUNCTION_14_4();
        v17 = CFStringCreateWithFormat(v14, v15, v16, v31);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], v17);
        *(*(a1 + 32) + 328) = CMMemoryPoolCreate(Mutable);
        if (v17)
        {
          CFRelease(v17);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      FigXPCServerCopyMemoryOrigin();
      if (*(a1 + 48) < 1)
      {
        return 0;
      }

      else
      {
        v18 = 0;
        v19 = v5 - 168;
        v20 = v4 + 168;
        v21 = *v8;
        v22 = (v4 + 128);
        while (1)
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(*(a1 + 56), v18);
          v24 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v21);
          DataPointer = FigInMemorySerializerAppendCFData();
          if (v24)
          {
            CFRelease(v24);
          }

          if (DataPointer)
          {
            break;
          }

          v25 = *(v22 - 5);
          v26 = &v20[v25];
          v27 = v19 - v25;
          FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          appended = FigPixelBufferOriginAppendPixelBufferToIPCMessageData();
          if (appended)
          {
            return appended;
          }

          v29 = *v22++;
          v20 = &v26[v29];
          v19 = v27 - v29;
          if (*(a1 + 48) <= ++v18)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      return 4294949290;
    }
  }

  return DataPointer;
}

uint64_t dss_EventLinkServerMessageHandler()
{
  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v0 = OUTLINED_FUNCTION_14_4();
  DataPointer = CMBlockBufferGetDataPointer(v0, v1, v2, 0, v3);
  if (!DataPointer)
  {
    return 4294949290;
  }

  return DataPointer;
}

uint64_t dssxpc_InitializeClient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dssxpc_InitializeClient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dssxpc_copyPixelBufferOriginForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dssxpc_ensureEventLinkIfSupported_cold_3(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  v8 = *(a1 + 56);
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    if (VTDecompressionSessionCopyProperty(v8, @"DecoderEmitsFramesFromConsistentThread", *MEMORY[0x1E695E480], a3))
    {
      return 0;
    }
  }

  else
  {
    result = *(a1 + 64);
    if (!result)
    {
      return result;
    }

    if (VTTileDecompressionSessionCopyProperty(result, @"DecoderEmitsFramesFromConsistentThread", *MEMORY[0x1E695E480], a3))
    {
      return 0;
    }
  }

  if (*a3 != *MEMORY[0x1E695E4D0])
  {
    return 0;
  }

  v11 = *(a1 + 56);
  if (!v11)
  {
    v13 = *(a1 + 64);
    if (v13 && VTTileDecompressionSessionCopyProperty(v13, @"MachThreadPriorityForThreadEmittingFrames", *v9, a2))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (VTDecompressionSessionCopyProperty(v11, @"MachThreadPriorityForThreadEmittingFrames", *v9, a2))
  {
    return 0;
  }

LABEL_9:
  SInt32 = FigCFNumberGetSInt32();
  *a4 = SInt32;
  *(a1 + 156) = SInt32;
  return 1;
}

uint64_t vtdsr_createPixelBufferAttributesWithIOSurfaceSupport(CFDictionaryRef theDict, __CFDictionary **a2)
{
  if (!a2)
  {
    return 4294954394;
  }

  v4 = MEMORY[0x1E69660D8];
  if (theDict && CFDictionaryContainsKey(theDict, *MEMORY[0x1E69660D8]))
  {
    MutableCopyWithCFTypeCallbacks = CFRetain(theDict);
  }

  else
  {
    MutableCopyWithCFTypeCallbacks = FigCFDictionaryCreateMutableCopyWithCFTypeCallbacks();
    IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
    if (IOSurfacePropertiesDictionary)
    {
      v7 = IOSurfacePropertiesDictionary;
      CFDictionarySetValue(MutableCopyWithCFTypeCallbacks, *v4, IOSurfacePropertiesDictionary);
      CFRelease(v7);
    }
  }

  result = 0;
  *a2 = MutableCopyWithCFTypeCallbacks;
  return result;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_DecodeFrameReturn(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = weakReferenceTable_CopyPointerFromKey_0();
  if (v8)
  {
    v9 = v8;
    *(v8 + 144) = a3;
    *(v8 + 152) = a5;
    *(v8 + 148) = a4;
    FigSemaphoreSignal();
    CFRelease(v9);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_FinishDelayedFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey_0();
  if (v4)
  {
    v5 = v4;
    *(v4 + 168) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

void VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t MinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = MinOutputPresentationTimeStampOfFramesBeingDecoded;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = *"";
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  if (*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 28) || *(MinOutputPresentationTimeStampOfFramesBeingDecoded + 52))
  {
    v5 = 0;
  }

  else if (*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 128))
  {
    MinOutputPresentationTimeStampOfFramesBeingDecoded = VTDecompressionSessionRemoteClient_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 24), &v13, a2);
    v5 = MinOutputPresentationTimeStampOfFramesBeingDecoded;
    *(v16 + 6) = MinOutputPresentationTimeStampOfFramesBeingDecoded;
  }

  else
  {
    v6 = *(MinOutputPresentationTimeStampOfFramesBeingDecoded + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
    block[3] = &unk_1E72C8BF0;
    block[4] = &v15;
    block[5] = &v10;
    block[6] = v3;
    dispatch_sync(v6, block);
    v5 = *(v16 + 6);
  }

  v7 = OUTLINED_FUNCTION_2_16(MinOutputPresentationTimeStampOfFramesBeingDecoded, v5, "VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded");
  *(v16 + 6) = v7;
  v8 = v11;
  *a3 = *(v11 + 3);
  *(a3 + 16) = v8[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t VTDecompressionSessionRemoteCallbackServer_NotificationIsPending()
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey_0();
  if (v0)
  {
    v1 = v0;
    v12 = 0;
    if (!*(v0 + 52))
    {
      v3 = *MEMORY[0x1E695E480];
      v4 = MEMORY[0x1E69E9A60];
      do
      {
        v11 = 0;
        v10 = 0;
        v13 = 0;
        if (!VTDecompressionSessionRemoteClient_GetNextPendingNotification(*(v1 + 24), &v13, &v12, cStr, &v11, &v10))
        {
          v5 = v11;
          v6 = v10;
          cf = 0;
          if (!*(v1 + 52))
          {
            v7 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v7)
            {
              v8 = v7;
              v9 = CFStringCreateWithCString(v3, cStr, 0);
              if (v9)
              {
                if (v5 && v6)
                {
                  FigCreateCFPropertyListFromData();
                }

                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
              }

              CFRelease(v8);
              if (cf)
              {
                CFRelease(cf);
              }

              if (v9)
              {
                CFRelease(v9);
              }
            }
          }

          MEMORY[0x193AE4440](*v4, v11, v10);
        }
      }

      while (v13);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_FrameIsPending()
{
  v0 = weakReferenceTable_CopyPointerFromKey_0();
  if (v0)
  {
    v1 = v0;
    if (!*(v0 + 52))
    {
      vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(v0, 0, 0);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_AddPointerAndGetKey_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTDecompressionSessionRemote_FinishDelayedTiles_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedTiles(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5, "VTDecompressionSessionRemote_FinishDelayedTiles");
  *v1 = result;
  return result;
}

void VTDecompressionSessionRemote_CopyProperty_cold_1(uint64_t a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 192);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 192) = 0;
  }

  v7 = *a2;
  v8 = *a3;
  *a2 = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTDecompressionSessionRemote_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_CopyPointerFromKey_cold_1_0()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTDecompressionSessionRemote_WaitForAsynchronousFrames_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedFrames(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
    if (!v5)
    {
      FigSemaphoreWaitRelative();
      v4 = FigSemaphoreSignal();
      v5 = 0;
    }
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5, "VTDecompressionSessionRemote_WaitForAsynchronousFrames");
  *v1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_FinishDelayedFrames_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedFrames(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5, "VTDecompressionSessionRemote_FinishDelayedFrames");
  *v1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_CanAcceptFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemote_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vt_Rotate_8_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v8, v9, v10, v11, v12))
      {
        v13 = OUTLINED_FUNCTION_28_0();
        if (vtRotatePixelRect90CW_1BPP_arm(v13, v14, v15, v16, v17, v18))
        {
          if (*v6 >= 1)
          {
            OUTLINED_FUNCTION_18_3();
            v28 = v27 + v25 * v26;
            v29 = -v26;
            do
            {
              if (v21 >= 1)
              {
                if (v19 >= 0x40)
                {
                  v30 = 64;
                }

                else
                {
                  v30 = v19;
                }

                v31 = v21;
                v32 = v24;
                v33 = v28;
                do
                {
                  if (v31 >= 0x40)
                  {
                    v34 = 64;
                  }

                  else
                  {
                    v34 = v31;
                  }

                  v35 = v30;
                  v36 = v32;
                  v37 = v33;
                  do
                  {
                    v38 = 0;
                    v39 = v36;
                    do
                    {
                      *v39 = *(v37 + v38);
                      v39 += v20;
                      ++v38;
                    }

                    while (v34 != v38);
                    v37 += v29;
                    ++v36;
                    --v35;
                  }

                  while (v35);
                  v33 += 64;
                  v32 += v22;
                  v40 = v31 <= 64;
                  v31 -= 64;
                }

                while (!v40);
              }

              v28 += v23;
              v24 += 64;
              v40 = v19 <= 64;
              v19 -= 64;
            }

            while (!v40);
          }
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_8_180()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_21_2();
  if (v5)
  {
    OUTLINED_FUNCTION_19_2(v1, v2, v3, v4);
    OUTLINED_FUNCTION_26_1();
    if (v5)
    {
      if ((v6 & 0xF) != 0 || ((v7 | v6) & 0xF) != 0 || ((v9 | v10) & 0xF) != 0)
      {
        vtRotatePixelRect180_1BPP_inplace(v6, v7, v8, v9, v10, v11);
      }

      else
      {
        vtRotatePixelRect180_1BPP_inplace_arm(v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v12, v13, v14, v15, v16))
      {
        v17 = OUTLINED_FUNCTION_29_0();
        if (vtRotatePixelRect180_1BPP_arm(v17, v18, v19, v20, v21, v22))
        {
          if (*v0)
          {
            OUTLINED_FUNCTION_23_1();
            v28 = v25 + v23 + v27 * (v26 - 1) - 1;
            v29 = -v23;
            do
            {
              if (v23)
              {
                v30 = 0;
                v31 = v24;
                do
                {
                  *v31++ = *(v28 + v30--);
                }

                while (v29 != v30);
              }

              OUTLINED_FUNCTION_32_0();
            }

            while (v32);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_40_0();
}

void vt_Rotate_8_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v8, v9, v10, v11, v12))
      {
        v13 = OUTLINED_FUNCTION_28_0();
        if (vtRotatePixelRect90CCW_1BPP_arm(v13, v14, v15, v16, v17, v18))
        {
          if (*v6 >= 1)
          {
            OUTLINED_FUNCTION_17_4();
            v27 = v26 + v22 - 1;
            do
            {
              if (v22 >= 1)
              {
                if (v19 >= 0x40)
                {
                  v28 = 64;
                }

                else
                {
                  v28 = v19;
                }

                v29 = v22;
                v30 = v25;
                v31 = v27;
                do
                {
                  if (v29 >= 0x40)
                  {
                    v32 = 64;
                  }

                  else
                  {
                    v32 = v29;
                  }

                  v33 = -v32;
                  v34 = v28;
                  v35 = v30;
                  v36 = v31;
                  do
                  {
                    v37 = 0;
                    v38 = v35;
                    do
                    {
                      *v38 = *(v36 + v37);
                      v38 += v21;
                      --v37;
                    }

                    while (v33 != v37);
                    v36 += v20;
                    ++v35;
                    --v34;
                  }

                  while (v34);
                  v31 -= 64;
                  v30 += v23;
                  v39 = v29 <= 64;
                  v29 -= 64;
                }

                while (!v39);
              }

              v27 += v24;
              v25 += 64;
              v39 = v19 <= 64;
              v19 -= 64;
            }

            while (!v39);
          }
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_16_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v8, v9, v10, v11, v12))
      {
        if (*v6 >= 1)
        {
          OUTLINED_FUNCTION_18_3();
          v22 = v21 + v19 * v20;
          v23 = -v20;
          do
          {
            if (v15 >= 1)
            {
              if (v13 >= 0x40)
              {
                v24 = 64;
              }

              else
              {
                v24 = v13;
              }

              v25 = v15;
              v26 = v18;
              v27 = v22;
              do
              {
                if (v25 >= 0x40)
                {
                  v28 = 64;
                }

                else
                {
                  v28 = v25;
                }

                v29 = v24;
                v30 = v26;
                v31 = v27;
                do
                {
                  v32 = 0;
                  v33 = v30;
                  do
                  {
                    *v33 = *(v31 + 2 * v32);
                    v33 = (v33 + v14);
                    ++v32;
                  }

                  while (v28 != v32);
                  v31 += v23;
                  ++v30;
                  --v29;
                }

                while (v29);
                v27 += 128;
                v26 = (v26 + v16);
                v34 = v25 <= 64;
                v25 -= 64;
              }

              while (!v34);
            }

            v22 += v17;
            v18 += 64;
            v34 = v13 <= 64;
            v13 -= 64;
          }

          while (!v34);
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_16_180()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_21_2();
  if (v5)
  {
    OUTLINED_FUNCTION_19_2(v1, v2, v3, v4);
    OUTLINED_FUNCTION_26_1();
    if (v5)
    {
      if ((v6 & 0xF) != 0 || ((v7 | v6) & 0xF) != 0 || ((v9 | v10) & 0xF) != 0)
      {
        vtRotatePixelRect180_2BPP_inplace(v6, v7, v8, v9, v10, v11);
      }

      else
      {
        vtRotatePixelRect180_2BPP_inplace_arm(v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v12, v13, v14, v15, v16))
      {
        v17 = OUTLINED_FUNCTION_29_0();
        if (vtRotatePixelRect180_2BPP_arm(v17, v18, v19, v20, v21, v22))
        {
          if (*v0)
          {
            OUTLINED_FUNCTION_23_1();
            v28 = v25 + 2 * v23 + v27 * (v26 - 1) - 2;
            do
            {
              if (v23)
              {
                v29 = 0;
                for (i = 0; i != v23; ++i)
                {
                  *(v24 + 2 * i) = *(v28 + v29);
                  v29 -= 2;
                }
              }

              OUTLINED_FUNCTION_32_0();
            }

            while (v31);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_40_0();
}

void vt_Rotate_16_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v8, v9, v10, v11, v12))
      {
        if (*v6 >= 1)
        {
          OUTLINED_FUNCTION_17_4();
          v21 = v20 + 2 * v16 - 2;
          do
          {
            if (v16 >= 1)
            {
              if (v13 >= 0x40)
              {
                v22 = 64;
              }

              else
              {
                v22 = v13;
              }

              v23 = v16;
              v24 = v19;
              v25 = v21;
              do
              {
                if (v23 >= 0x40)
                {
                  v26 = 64;
                }

                else
                {
                  v26 = v23;
                }

                v27 = -v26;
                v28 = v22;
                v29 = v24;
                v30 = v25;
                do
                {
                  v31 = 0;
                  v32 = v29;
                  do
                  {
                    *v32 = *(v30 + 2 * v31);
                    v32 = (v32 + v15);
                    --v31;
                  }

                  while (v27 != v31);
                  v30 += v14;
                  ++v29;
                  --v28;
                }

                while (v28);
                v25 -= 128;
                v24 = (v24 + v17);
                v33 = v23 <= 64;
                v23 -= 64;
              }

              while (!v33);
            }

            v21 += v18;
            v19 += 64;
            v33 = v13 <= 64;
            v13 -= 64;
          }

          while (!v33);
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

vImage_Error vt_Rotate_32_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 != *a6)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_12_5();
  if (!v7)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_25_1();
  result = vImageRotate90_ARGB8888(v8, v9, 3u, v10, 0);
  if (result)
  {
    if (*v6 >= 1)
    {
      OUTLINED_FUNCTION_18_3();
      v20 = v19 + v17 * v18;
      v21 = -v18;
      do
      {
        if (v13 >= 1)
        {
          if (v11 >= 0x40)
          {
            v22 = 64;
          }

          else
          {
            v22 = v11;
          }

          v23 = v13;
          v24 = v16;
          v25 = v20;
          do
          {
            if (v23 >= 0x40)
            {
              v26 = 64;
            }

            else
            {
              v26 = v23;
            }

            v27 = v22;
            v28 = v24;
            v29 = v25;
            do
            {
              v30 = 0;
              v31 = v28;
              do
              {
                *v31 = *(v29 + 4 * v30);
                v31 = (v31 + v12);
                ++v30;
              }

              while (v26 != v30);
              v29 += v21;
              ++v28;
              --v27;
            }

            while (v27);
            v25 += 256;
            v24 = (v24 + v14);
            v32 = v23 <= 64;
            v23 -= 64;
          }

          while (!v32);
        }

        v20 += v15;
        v16 += 64;
        v32 = v11 <= 64;
        v11 -= 64;
      }

      while (!v32);
    }

    return 0;
  }

  return result;
}

vImage_Error vt_Rotate_32_180()
{
  OUTLINED_FUNCTION_21_2();
  if (!v6)
  {
    return 4294954382;
  }

  v7 = OUTLINED_FUNCTION_19_2(v2, v3, v4, v5);
  *backColor = 0;
  v11 = *v10;
  src.data = v7;
  src.height = v11;
  v12 = *v0;
  src.width = v9;
  src.rowBytes = v12;
  v14 = *v13;
  dest.data = v8;
  dest.height = v14;
  v16 = *v15;
  dest.width = v9;
  dest.rowBytes = v16;
  if (v7 == v8)
  {
    vtRotatePixelRect180_4BPP_inplace(v7, v12, v8, v16, v9, v14);
  }

  else
  {
    result = vImageRotate90_ARGB8888(&src, &dest, 2u, backColor, 0);
    if (!result)
    {
      return result;
    }

    if (*v1)
    {
      OUTLINED_FUNCTION_23_1();
      v22 = v19 + 4 * v17 + v21 * (v20 - 1) - 4;
      do
      {
        if (v17)
        {
          v23 = 0;
          for (i = 0; i != v17; ++i)
          {
            *(v18 + 4 * i) = *(v22 + v23);
            v23 -= 4;
          }
        }

        OUTLINED_FUNCTION_32_0();
      }

      while (v25);
    }
  }

  return 0;
}

vImage_Error vt_Rotate_32_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 != *a6)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_12_5();
  if (!v7)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_25_1();
  result = vImageRotate90_ARGB8888(v8, v9, 1u, v10, 0);
  if (result)
  {
    if (*v6 >= 1)
    {
      OUTLINED_FUNCTION_17_4();
      v19 = v18 + 4 * v14 - 4;
      do
      {
        if (v14 >= 1)
        {
          if (v11 >= 0x40)
          {
            v20 = 64;
          }

          else
          {
            v20 = v11;
          }

          v21 = v14;
          v22 = v17;
          v23 = v19;
          do
          {
            if (v21 >= 0x40)
            {
              v24 = 64;
            }

            else
            {
              v24 = v21;
            }

            v25 = -v24;
            v26 = v20;
            v27 = v22;
            v28 = v23;
            do
            {
              v29 = 0;
              v30 = v27;
              do
              {
                *v30 = *(v28 + 4 * v29);
                v30 = (v30 + v13);
                --v29;
              }

              while (v25 != v29);
              v28 += v12;
              ++v27;
              --v26;
            }

            while (v26);
            v23 -= 256;
            v22 = (v22 + v15);
            v31 = v21 <= 64;
            v21 -= 64;
          }

          while (!v31);
        }

        v19 += v16;
        v17 += 64;
        v31 = v11 <= 64;
        v11 -= 64;
      }

      while (!v31);
    }

    return 0;
  }

  return result;
}

vImage_Error vt_Rotate_64_90CW()
{
  OUTLINED_FUNCTION_37_0(*MEMORY[0x1E69E9840]);
  if (!v2 || *v0 != *v1)
  {
    return 4294954382;
  }

  *backColor = 255;
  OUTLINED_FUNCTION_1_17();
  return vImageRotate90_ARGB16U(v3, v4, 3u, backColor, 0);
}

vImage_Error vt_Rotate_64_180(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, void *a5, vImagePixelCount *a6, size_t *a7, void **a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1 != *a5)
  {
    return 4294954382;
  }

  *backColor = 255;
  v9 = *a2;
  src.data = *a4;
  src.height = v9;
  v10 = *a3;
  src.width = v8;
  src.rowBytes = v10;
  v11 = *a6;
  v14.data = *a8;
  v14.height = v11;
  v12 = *a7;
  v14.width = v8;
  v14.rowBytes = v12;
  return vImageRotate90_ARGB16U(&src, &v14, 2u, backColor, 0);
}

vImage_Error vt_Rotate_64_90CCW()
{
  OUTLINED_FUNCTION_37_0(*MEMORY[0x1E69E9840]);
  if (!v2 || *v0 != *v1)
  {
    return 4294954382;
  }

  *backColor = 255;
  OUTLINED_FUNCTION_1_17();
  return vImageRotate90_ARGB16U(v3, v4, 1u, backColor, 0);
}

vImage_Error vt_Rotate_b3a8(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, uint64_t a4, size_t *a5, void **a6, int a7)
{
  *backColor = 255;
  v7 = *a2;
  v8 = *(a4 + 8);
  src.data = *a4;
  src.height = v7;
  v10 = *a3;
  v11 = a3[1];
  src.width = *a1;
  width = src.width;
  src.rowBytes = v10;
  v21 = v8;
  v22 = v7;
  v23 = src.width;
  v24 = v11;
  dest.data = *a6;
  dest.height = v7;
  v12 = *a5;
  dest.width = src.width;
  dest.rowBytes = v12;
  switch(a7)
  {
    case 270:
      src.height = src.width;
      src.width = v7;
      v13 = 1;
      goto LABEL_7;
    case 180:
      v13 = 2;
      goto LABEL_9;
    case 90:
      src.height = src.width;
      src.width = v7;
      v13 = 3;
LABEL_7:
      v22 = width;
      v23 = v7;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:
  result = vImageRotate90_ARGB8888(&src, &dest, v13, backColor, 0);
  if (!result)
  {
    OUTLINED_FUNCTION_27_1();
    return vImageRotate90_Planar8(v15, v16, v17, v18, v19);
  }

  return result;
}

void vt_Rotate_b3a8_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_90CW(v0, v1, v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v6, v7, v8, v9, v10, v11);
  }
}

void vt_Rotate_b3a8_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_180())
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }
}

void vt_Rotate_b3a8_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_90CCW(v0, v1, v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v6, v7, v8, v9, v10, v11);
  }
}

void vt_Rotate_y420_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_90CW(v0, v1, v2, v3, v4, v5);
  if (v6 || (v7 = OUTLINED_FUNCTION_6_12(), vt_Rotate_8_90CW(v7, v8, v9, v10, v11, v12), v13))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v14, v15, v16, v17, v18, v19);
  }
}

void vt_Rotate_y420_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_180();
  if (v0 || (OUTLINED_FUNCTION_6_12(), vt_Rotate_8_180(), v1))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }
}

void vt_Rotate_y420_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_90CCW(v0, v1, v2, v3, v4, v5);
  if (v6 || (v7 = OUTLINED_FUNCTION_6_12(), vt_Rotate_8_90CCW(v7, v8, v9, v10, v11, v12), v13))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v14, v15, v16, v17, v18, v19);
  }
}

void vt_Rotate_420v_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_90CW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), vt_Rotate_16_90CW(v9, v10, v11, v12, v13, v14), !v15) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_420v_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_180();
  if (!v2 && (OUTLINED_FUNCTION_5_12(), vt_Rotate_16_180(), !v3) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_420v_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_90CCW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), vt_Rotate_16_90CCW(v9, v10, v11, v12, v13, v14), !v15) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_90CW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_90CW(v9, v10, v11, v12, v13, v14)) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_90CW(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_180();
  if (!v2 && (OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_180()) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_90CCW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_90CCW(v9, v10, v11, v12, v13, v14)) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_90CCW(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39_0();
  if (v0 && (OUTLINED_FUNCTION_34_0(), v0) && (v6 = v5, v7 = v4, v8 = OUTLINED_FUNCTION_7_7(v1, v2, v3, v4), vtRotatePixelRect90CW_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_21_2();
  if (v5 && (v6 = v4, v7 = v3, v8 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3), vtRotatePixelRect180_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39_0();
  if (v0 && (OUTLINED_FUNCTION_34_0(), v0) && (v6 = v5, v7 = v4, v8 = OUTLINED_FUNCTION_7_7(v1, v2, v3, v4), vtRotatePixelRect90CCW_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

uint64_t vt_Rotate_yuvs_90CW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CW_yuvs(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_yuvs_180()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtRotatePixelRect180_yuvs(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Rotate_yuvs_90CCW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CCW_yuvs(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_v216_90CW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CW_v216(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_v216_180()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtRotatePixelRect180_v216(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Rotate_v216_90CCW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CCW_v216(v6, v7, v8, v9, v10, v11);
  return 0;
}

void vtFlipPixelRectVert()
{
  OUTLINED_FUNCTION_35_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = &v10[(v1 - 1) * v4];
  v12 = v2 * v0;
  if (v8 == v10)
  {
    if (!v0 || (v0 & 0x8000000000000000) == 0 && is_mul_ok(v0, v2) && v12)
    {
      v13 = malloc_type_malloc(v2 * v0, 0x100004077774924uLL);
      if (v13)
      {
        v14 = v13;
        if ((v3 + 1) >= 3)
        {
          v15 = -v5;
          v16 = v3 / 2;
          do
          {
            --v16;
            memcpy(v14, v11, v12);
            memcpy(v11, v9, v12);
            memcpy(v9, v14, v12);
            v9 += v7;
            v11 += v15;
          }

          while (v16);
        }

        free(v14);
      }
    }
  }

  else if (v1)
  {
    do
    {
      --v3;
      memcpy(v11, v9, v12);
      v9 += v7;
      v11 -= v5;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t vt_Flip_8_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_1BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_8_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_16_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_2BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_16_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_32_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_4BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_32_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_64_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_8BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_64_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

void vt_Flip_b3a8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a7)
  {
    v8 = OUTLINED_FUNCTION_31_0();
    vtFlipPixelRectHoriz_4BPP(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_8_7();
    vtFlipPixelRectHoriz_2BPP(v14, v15, v16, v17, v18, v19);
  }

  else if (a8)
  {
    OUTLINED_FUNCTION_31_0();
    vtFlipPixelRectVert();
    if (!v20)
    {
      OUTLINED_FUNCTION_8_7();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_b3a8_Hor()
{
  OUTLINED_FUNCTION_22_1();
  if (!v0)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_15_5();
  v5 = OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
  vtFlipPixelRectHoriz_4BPP(v5, v6, v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_8_7();
  vtFlipPixelRectHoriz_2BPP(v11, v12, v13, v14, v15, v16);
  return 0;
}

void vt_Flip_b3a8_Ver()
{
  OUTLINED_FUNCTION_22_1();
  if (v0)
  {
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
    vtFlipPixelRectVert();
    if (!v5)
    {
      OUTLINED_FUNCTION_8_7();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_y420_Hor()
{
  OUTLINED_FUNCTION_22_1();
  if (!v0)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_15_5();
  v5 = OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
  vtFlipPixelRectHoriz_1BPP(v5, v6, v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_8_7();
  vtFlipPixelRectHoriz_1BPP(v11, v12, v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_30_0();
  vtFlipPixelRectHoriz_1BPP(v17, v18, v19, v20, v21, v22);
  return 0;
}

void vt_Flip_y420_Ver()
{
  OUTLINED_FUNCTION_22_1();
  if (v0)
  {
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
    vtFlipPixelRectVert();
    if (!v5)
    {
      OUTLINED_FUNCTION_8_7();
      vtFlipPixelRectVert();
      if (!v6)
      {
        OUTLINED_FUNCTION_30_0();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_420v_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_1BPP(v8, v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_6();
  vtFlipPixelRectHoriz_2BPP(v14, v15, v16, v17, v18, v19);
  result = *(v0 + 16);
  if (result)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_1();
      vtFlipPixelRectHoriz_1BPP(v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return result;
}

void vt_Flip_420v_Ver()
{
  OUTLINED_FUNCTION_16_5();
  if (v2)
  {
    v3 = v1;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    vtFlipPixelRectVert();
    if (!v8)
    {
      OUTLINED_FUNCTION_11_6();
      vtFlipPixelRectVert();
      if (!v9 && *(v0 + 16) && *(v3 + 16))
      {
        OUTLINED_FUNCTION_20_1();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_x420_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_2BPP(v8, v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_6();
  vtFlipPixelRectHoriz_4BPP(v14, v15, v16, v17, v18, v19);
  result = *(v0 + 16);
  if (result)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_1();
      vtFlipPixelRectHoriz_2BPP(v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return result;
}

void vt_Flip_x420_Ver()
{
  OUTLINED_FUNCTION_16_5();
  if (v2)
  {
    v3 = v1;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    vtFlipPixelRectVert();
    if (!v8)
    {
      OUTLINED_FUNCTION_11_6();
      vtFlipPixelRectVert();
      if (!v9 && *(v0 + 16) && *(v3 + 16))
      {
        OUTLINED_FUNCTION_20_1();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_2vuy_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_2vuy(v8, v9, v10, v11, v12, v13);
  result = *(v0 + 8);
  if (result)
  {
    if (*(v3 + 8))
    {
      OUTLINED_FUNCTION_38_0();
      vtFlipPixelRectHoriz_1BPP(v14, v15, v16, v17, v18, v19);
    }

    return 0;
  }

  return result;
}

void vt_Flip_2vuy_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
    if (!v10 && *(a4 + 8) && *(a8 + 8))
    {
      OUTLINED_FUNCTION_38_0();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_yuvs_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_yuvs(v5, v6, v7, v8, v9, v10);
  return 0;
}

void vt_Flip_yuvs_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
  }
}

uint64_t vt_Flip_v216_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_v216(v5, v6, v7, v8, v9, v10);
  return 0;
}

void vt_Flip_v216_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
  }
}

uint64_t VTParavirtualizationHostDecoderSessionCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t *a4, CFTypeRef *a5)
{
  v7 = v6;
  v43 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
    v7 = 0;
LABEL_51:
    v20 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
    OUTLINED_FUNCTION_2_18();
    goto LABEL_51;
  }

  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    dispatch_once_f(v31, v32, v33);
  }

  Instance = _CFRuntimeCreateInstance();
  v16 = Instance;
  if (!Instance)
  {
    goto LABEL_54;
  }

  *(Instance + 20) = 0;
  *(Instance + 56) = Instance;
  *(Instance + 80) = Instance;
  *(Instance + 88) = FigDispatchQueueCreateWithPriority();
  if (VTParavirtualizationReplyClerkCreate("host decoder session", v16 + 12))
  {
    goto LABEL_55;
  }

  v16[13] = _Block_copy(a3);
  v16[19] = FigSimpleMutexCreate();
  v16[23] = FigSimpleMutexCreate();
  v16[22] = dispatch_group_create();
  v17 = dispatch_group_create();
  v16[29] = 0;
  v16[30] = 0;
  v16[28] = v17;
  VTParavirtualizationMessageGetSInt32();
  if (v18)
  {
    goto LABEL_55;
  }

  if (!v42)
  {
LABEL_54:
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_55:
    OUTLINED_FUNCTION_2_18();
    v20 = 0;
    goto LABEL_27;
  }

  VTParavirtualizationMessageGetUInt32();
  if (v19 || VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, v16 + 14))
  {
    goto LABEL_55;
  }

  v20 = CFDictionaryCreateMutable(v13, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v20, @"AllowParavirtualizedDecoder", *MEMORY[0x1E695E4C0]);
  v21 = VTParavirtualizationMessageCopyCFPropertyList(a2, 744712548, &v41);
  if (v21)
  {
    goto LABEL_47;
  }

  v37 = a5;
  if (v41)
  {
    FigCFDictionarySetValue();
  }

  v22 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v20, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
  v21 = VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf);
  if (v21)
  {
LABEL_47:
    v5 = v21;
    v7 = 0;
    goto LABEL_48;
  }

  v7 = FigCFCopyCompactDescription();
  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance(v42, a1, v20, v16 + 3);
  if (!VideoDecoderInstance)
  {
    if (v16[3])
    {
      VTVideoDecoderGetCMBaseObject();
      v28 = v27;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v29)
      {
        v29(v28, @"Paravirtualized", v22);
      }
    }
  }

  appended = VTParavirtualizationCreateReplyAndByteStream(a2, 4u, &v40, &v39);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(v39, 744845938, VideoDecoderInstance), appended) || (appended = VTParavirtualizationMessageAppendUInt32(v39, 745956722, 5u), appended))
  {
    v5 = appended;
LABEL_48:
    a2 = 0;
    goto LABEL_27;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  v25 = VTParavirtualizationMessageAppendCFDictionary(v39, 0x2C68696Eu, Mutable);
  if (!v25)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    *a4 = v16;
    *v37 = v40;
    v40 = 0;
    goto LABEL_26;
  }

  v5 = v25;
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v5;
}

uint64_t VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, size_t a5)
{
  v19 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v19 + 1, &v19, 0);
  if (!result)
  {
    if ((v19 & 8) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (a3 && a5 == 1)
      {
        v15 = *a3;
        v16 = *a4;
      }

      return VTParavirtualizationReplyClerkDeliverReply(a1[12], a2, v15, v16);
    }

    else
    {
      v11 = 0;
      if (a5 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = a5;
      }

      v13 = 0;
      if (a3 && a5)
      {
        v11 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
        v13 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
        if (v11)
        {
          memcpy(v11, a3, 8 * v12);
        }

        if (v13)
        {
          memcpy(v13, a4, 8 * v12);
        }
      }

      CFRetain(a1);
      CFRetain(a2);
      v14 = a1[11];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_23;
      v18 = HIDWORD(v19);
      block[4] = a1;
      block[5] = a2;
      block[6] = v11;
      block[7] = v13;
      block[8] = v12;
      dispatch_async(v14, block);
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionSetPixelBufferAttributes(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 136);
  *(a1 + 136) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v9 = 0;
  cfa = 0;
  v8 = 0;
  if (VTParavirtualizationPixelBufferAttributesContainIOSurfaceProtectionOptions(*(a1 + 136)))
  {
    *(a1 + 132) = 1;
    v4 = *(a1 + 144);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 144) = 0;
    }
  }

  else
  {
    *(a1 + 132) = 0;
  }

  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(*(a1 + 136), &v8);
  if (!appended)
  {
    appended = VTParavirtualizationCreateMessageAndByteStream(0x44706261u, 0, (a1 + 112), 0, &cfa, &v9);
    if (!appended)
    {
      appended = VTParavirtualizationMessageAppendCFPropertyList(v9, 0x2C706261u, v8);
      if (!appended)
      {
        appended = vtParavirtualizationHostDecoderSession_sendMessageToGuest(a1, cfa);
      }
    }
  }

  v6 = appended;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 96), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 96);
          v12 = *a3;
          v13 = *(a3 + 2);
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v9, v14, v15, &v12, a4, 0, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_2();
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, DWORD2(v12), v13);
    }
  }

  v10 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 96), v15);
  return v10;
}

uint64_t VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  cf = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 160);
  if (!v2 || (Count = CFArrayGetCount(v2), Count < 1))
  {
    FigSimpleMutexUnlock();
    v6 = 0;
    Mutable = 0;
LABEL_26:
    v16 = 0;
    v17 = 1;
    goto LABEL_27;
  }

  v4 = Count;
  v5 = 0;
  v6 = 0;
  Mutable = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), v5);
    v11 = MEMORY[0x193AE2470](ValueAtIndex + 1);
    if (v11)
    {
      CFRelease(v11);
      ++v5;
    }

    else
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v8, 0, v9);
      }

      FigCFArrayAppendInt64();
      v12 = ValueAtIndex[2];
      if (v12)
      {
        if (!v6)
        {
          v6 = CFArrayCreateMutable(v8, 0, v9);
          v12 = ValueAtIndex[2];
        }

        CFArrayAppendValue(v6, v12);
        v13 = ValueAtIndex[2];
        if (v13)
        {
          CFRelease(v13);
          ValueAtIndex[2] = 0;
        }
      }

      CFArrayRemoveValueAtIndex(*(a1 + 160), v5);
      dispatch_group_leave(*(a1 + 176));
      --v4;
    }
  }

  while (v5 < v4);
  FigSimpleMutexUnlock();
  if (!Mutable)
  {
    goto LABEL_26;
  }

  v14 = CFArrayGetCount(Mutable);
  MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(Mutable, 0, v14, &cf);
  if (!MessageBoxToRelinquishSurfaceMappingIDs)
  {
    MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf);
    if (!MessageBoxToRelinquishSurfaceMappingIDs)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (!v6)
      {
        v17 = 0;
        v16 = 0;
        goto LABEL_27;
      }

      MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageAndByteStream(0x44667562u, 0, (a1 + 112), 0, &cf, &v22);
      if (!MessageBoxToRelinquishSurfaceMappingIDs)
      {
        MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationMessageAppendCFUUIDArray(v22, 0x2C75692Bu, v6);
        if (!MessageBoxToRelinquishSurfaceMappingIDs)
        {
          MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf);
        }
      }
    }
  }

  v16 = MessageBoxToRelinquishSurfaceMappingIDs;
  v17 = 0;
LABEL_27:
  v18 = *(a1 + 160);
  if (v18)
  {
    if (CFArrayGetCount(v18) >= 1 && dword_1EAD321C0 != 0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if ((v17 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v16;
}

uint64_t VTParavirtualizationHostDecoderSessionCopyResolvedPixelBufferAttributes(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  cf = 0;
  v8 = 0;
  v9 = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(0x44727061u, 2u, (a1 + 112), 0, &cf, &v10);
  if (v5 || (v5 = vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v9), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = VTParavirtualizationMessageCopyCFDictionary(v9, 745562721, &v8);
    if (!v6)
    {
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t vtParavirtualizationHostDecoderSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v7[0] = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, v7, 0);
  if (!result)
  {
    if ((v7[0] & 2) != 0)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7[1]);
    }

    else
    {
      return vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

const __CFArray *VTParavirtualizationHostDecoderSessionCleanUpAfterTileDecode(uint64_t a1)
{
  cf = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 208);
  if (v2)
  {
    Count = CFArrayGetCount(*(a1 + 208));
    MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(v2, 0, Count, &cf);
    if (!MessageBoxToRelinquishSurfaceMappingIDs)
    {
      v5 = *(a1 + 208);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 208) = 0;
      }

      MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf);
    }

    v2 = MessageBoxToRelinquishSurfaceMappingIDs;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void vtParavirtualizationHostDecoderSession_Finalize(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (dword_1EAD321C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_19();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(a1);
  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  _Block_release(*(a1 + 104));
  *(a1 + 104) = 0;
  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 144) = 0;
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
    v9 = *(a1 + 160);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 160) = 0;
    }
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    CFDictionaryRemoveAllValues(v10);
    v11 = *(a1 + 192);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 192) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 152) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 184) = 0;
  v12 = *(a1 + 176);
  if (v12)
  {
    dispatch_release(v12);
    *(a1 + 176) = 0;
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    dispatch_release(v13);
    *(a1 + 224) = 0;
  }

  v14 = *(a1 + 200);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 168) = 0;
  }

  v17 = *(a1 + 216);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 216) = 0;
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 232) = 0;
  }

  v19 = *(a1 + 240);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 240) = 0;
  }

  v20 = *(a1 + 248);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 248) = 0;
  }
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

BOOL VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_3(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void *filterOutputCallback(void *result, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (result)
  {
    v5 = *a4;
    v6 = *(a4 + 2);
    return [result handleEmittedFrame:a5 presentationTimestamp:&v5 status:a2 infoFlags:a3];
  }

  return result;
}

void *vtRateControlSessionRegisterBundle()
{
  result = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  qword_1ED6D4270 = result;
  if (result)
  {
    off_1ED6D4268 = dlsym(result, "VCPRateControlSessionCreate");
    off_1ED6D4278 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCopySupportedPropertyDictionary");
    off_1ED6D4280 = dlsym(qword_1ED6D4270, "VCPRateControlSessionSetProperty");
    off_1ED6D4288 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCopyProperty");
    off_1ED6D4290 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforePrepareToEncodeFrames");
    if (!off_1ED6D4290)
    {
      off_1ED6D4290 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforePrepareToEncodeFrame");
    }

    off_1ED6D4298 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforeEncodeFrame");
    off_1ED6D42A0 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforeEmitEncodedFrame");
    off_1ED6D42A8 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCompleteFrames");
    off_1ED6D42B0 = dlsym(qword_1ED6D4270, "VCPGetVersion");
    result = dlsym(qword_1ED6D4270, "VCPReactionObserverCreate");
    off_1ED6D42B8 = result;
    if (off_1ED6D4268 && off_1ED6D4278 && off_1ED6D4280 && off_1ED6D4288 && off_1ED6D4290 && off_1ED6D4298 && off_1ED6D42A0 && off_1ED6D42A8 && off_1ED6D42B0)
    {
      _MergedGlobals_15 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t VTRateControlSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforePrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforePrepareToEncodeFrames_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEmitEncodedFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCompleteFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlGetVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRateControlReactionObserverCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTRateControlReactionObserverCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t MuxedAlphaEncoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"AlphaChannelMode"))
  {
    if (CFEqual(a2, @"SublayerEncoderSpecification"))
    {
      v9 = *(DerivedStorage + 48);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
    {
      v9 = *(DerivedStorage + 80);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (CFEqual(a2, @"MVHEVCViewIDs"))
    {
      v9 = *(DerivedStorage + 88);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
      {
        if (!*(DerivedStorage + 64) || !*(DerivedStorage + 112))
        {
          return 4294954393;
        }

        if (CFEqual(a2, @"TargetQualityForAlpha"))
        {
          v12 = *(DerivedStorage + 112);
          v13 = @"Quality";
        }

        else
        {
          v12 = *(DerivedStorage + 64);
          v13 = a2;
        }

        return VTSessionCopyProperty(v12, v13, a3, a4);
      }

      v9 = *(DerivedStorage + 96);
      if (v9)
      {
LABEL_9:
        v10 = CFRetain(v9);
LABEL_10:
        result = 0;
        *a4 = v10;
        return result;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 40) || *(DerivedStorage + 41))
  {
    v8 = &kVTAlphaChannelMode_StraightAlpha;
    if (*(DerivedStorage + 42))
    {
      v8 = &kVTAlphaChannelMode_PremultipliedAlpha;
    }

    v9 = *v8;
    goto LABEL_9;
  }

  result = 0;
  *a4 = 0;
  return result;
}

void MuxedAlphaEncoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ProfileLevel"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 != CFStringGetTypeID())
      {
        goto LABEL_4;
      }
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"OutputBitDepth"))
  {
    if (a3)
    {
      SInt32 = FigCFNumberGetSInt32();
      if ((SInt32 | 2) == 0xA)
      {
        v11 = SInt32;
        if (!VTSessionSetProperty(*(DerivedStorage + 64), @"OutputBitDepth", a3))
        {
          *(DerivedStorage + 176) = v11;
LABEL_18:
          OUTLINED_FUNCTION_3_15();

          alphaencoder_configureSubEncodersByProfile(v13, v14);
          return;
        }

LABEL_41:
        OUTLINED_FUNCTION_3_15();
        return;
      }
    }

LABEL_4:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_3_15();

    FigSignalErrorAtGM(v8);
    return;
  }

  if (CFEqual(a2, @"AlphaChannelMode"))
  {
    if (!a3)
    {
      if (*(DerivedStorage + 41))
      {
        goto LABEL_4;
      }

      *(DerivedStorage + 42) = 1;
      *(DerivedStorage + 40) = 0;
      goto LABEL_41;
    }

    if (CFEqual(a3, @"StraightAlpha"))
    {
      v12 = 0;
    }

    else
    {
      if (!CFEqual(a3, @"PremultipliedAlpha"))
      {
        goto LABEL_4;
      }

      v12 = 1;
    }

    if (!*(DerivedStorage + 41) || *(DerivedStorage + 42) == v12)
    {
      *(DerivedStorage + 42) = v12;
      *(DerivedStorage + 40) = 1;
      goto LABEL_41;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"SublayerEncoderSpecification"))
  {
    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFDictionaryGetTypeID())
      {
        v17 = *(DerivedStorage + 48);
        *(DerivedStorage + 48) = a3;
        CFRetain(a3);
        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_41;
      }
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"BaseLayerProperties"))
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    v18 = CFGetTypeID(a3);
    if (v18 != CFDictionaryGetTypeID())
    {
      goto LABEL_4;
    }

LABEL_46:
    OUTLINED_FUNCTION_3_15();

    alphaencoder_setSessionPropertiesInListFromDictionaryIfPresent(v20, v21);
    return;
  }

  if (CFEqual(a2, @"AlphaLayerProperties"))
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    v19 = CFGetTypeID(a3);
    if (v19 != CFDictionaryGetTypeID())
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v23 = CFGetTypeID(a3);
      if (v23 == CFArrayGetTypeID())
      {
        FigCFArrayGetInt32AtIndex();
        FigCFArrayGetInt32AtIndex();
        v29 = *(DerivedStorage + 80);
        if (v29)
        {
          CFRelease(v29);
          *(DerivedStorage + 80) = 0;
        }

        *(DerivedStorage + 80) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder(a1))
        {
          alphaencoder_configureSubEncodersByProfile(a1, *(DerivedStorage + 72));
        }
      }
    }

    else
    {
      v26 = *(DerivedStorage + 80);
      if (v26)
      {
        CFRelease(v26);
        *(DerivedStorage + 80) = 0;
      }
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, @"MVHEVCViewIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v24 = CFGetTypeID(a3);
      if (v24 == CFArrayGetTypeID())
      {
        v25 = *(DerivedStorage + 88);
        if (v25)
        {
          CFRelease(v25);
          *(DerivedStorage + 88) = 0;
        }

        *(DerivedStorage + 88) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder(a1))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v28 = *(DerivedStorage + 88);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 88) = 0;
      }
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v27 = CFGetTypeID(a3);
      if (v27 == CFArrayGetTypeID())
      {
        v35 = *(DerivedStorage + 96);
        if (v35)
        {
          CFRelease(v35);
          *(DerivedStorage + 96) = 0;
        }

        *(DerivedStorage + 96) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setLeftAndRightViewIDsToMVHEVCColorAlphaEncoder(a1))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v30 = *(DerivedStorage + 96);
      if (v30)
      {
        CFRelease(v30);
        *(DerivedStorage + 96) = 0;
      }
    }

    goto LABEL_41;
  }

  if (!*(DerivedStorage + 64) || !*(DerivedStorage + 112))
  {
    goto LABEL_41;
  }

  if (!CFEqual(a2, @"TargetQualityForAlpha") && !CFEqual(a2, @"AverageBitRate") && !CFEqual(a2, @"AverageDataRate") && !CFEqual(a2, @"RelaxAverageBitRateTarget"))
  {
    v36 = VTSessionSetProperty(*(DerivedStorage + 64), a2, a3);
    VTSessionSetProperty(*(DerivedStorage + 112), a2, a3);
    if (v36)
    {
      CFEqual(a2, @"SourceFrameCount");
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_3_15();

  VTSessionSetProperty(v31, v32, v33);
}

uint64_t alphaencoder_configureSubEncodersByProfile(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v34 = 0;
  v13 = *(DerivedStorage + 80) != 0 || *(DerivedStorage + 96) != 0;
  v6 = kVTProfileLevel_HEVC_Main44410_AutoLevel;
  if (!a2 || CFEqual(a2, @"HEVC_Main_AutoLevel"))
  {
    OUTLINED_FUNCTION_5_13();
    *(v5 + 172) = v7 | 0x76300000;
    v8 = @"HEVC_Main_AutoLevel";
    v9 = @"HEVC_Main_AutoLevel";
    goto LABEL_17;
  }

  v9 = @"HEVC_Main444_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v11 = v10 | 0x76300000;
LABEL_9:
    v12 = v11 | 0x40000;
LABEL_16:
    *(v5 + 172) = v12;
    v8 = @"HEVC_Monochrome_AutoLevel";
LABEL_17:
    if (v13)
    {
      v15 = @"HEVC_Main_AutoLevel";
    }

    else
    {
      v15 = v8;
    }

    if (!CFEqual(*(v5 + 72), v9))
    {
      v16 = VTSessionSetProperty(*(v5 + 64), @"ProfileLevel", v9);
      if (v16)
      {
        return v16;
      }

      v17 = *(v5 + 72);
      *(v5 + 72) = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (!CFEqual(*(v5 + 120), v15))
    {
      VTSessionSetProperty(*(v5 + 112), @"ProfileLevel", v15);
      v18 = *(v5 + 120);
      *(v5 + 120) = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v19 = alphaencoder_createPixelBufferAttributesDictionary(*(v5 + 16), *(v5 + 20), (v5 + 172), 1u, &v34);
    v20 = v34;
    if (!v19)
    {
      VTEncoderSessionSetPixelBufferAttributes(*(v5 + 8), v34);
      if (CFEqual(v9, v15))
      {
        v21 = 0;
        if (!v20)
        {
          return v21;
        }

        goto LABEL_53;
      }

      v22 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v24 = Mutable;
        v25 = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
        if (!v25)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v34, v35);
          v30 = v24;
          goto LABEL_51;
        }

        v26 = v25;
        if (!CFEqual(v15, @"HEVC_Main_AutoLevel") && !CFEqual(v15, @"HEVC_Main10_AutoLevel") && !CFEqual(v15, @"HEVC_Main444_AutoLevel") && !CFEqual(v15, *v6) && !CFEqual(v15, @"HEVC_Main44410_AutoLevel") && !CFEqual(v15, @"HEVC_Monochrome_AutoLevel") && !CFEqual(v15, @"HEVC_Monochrome10_AutoLevel"))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v34, v35);
          if (v27)
          {
            goto LABEL_68;
          }
        }

        if (v13)
        {
          FigCFArrayAppendInt();
          FigCFArrayAppendInt();
          v27 = VTSessionSetProperty(*(v5 + 64), @"RequiredHEVCVideoParameterSetRepFormatBitDepths", v24);
          if (!v27)
          {
            FigCFArrayAppendInt();
            FigCFArrayAppendInt();
            v27 = VTSessionSetProperty(*(v5 + 64), @"RequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v26);
            if (!v27)
            {
              SInt32 = FigCFNumberCreateSInt32();
              if (!SInt32)
              {
                goto LABEL_74;
              }

              goto LABEL_47;
            }
          }
        }

        else
        {
          FigCFArrayAppendInt();
          v27 = VTSessionSetProperty(*(v5 + 64), @"RequiredHEVCVideoParameterSetRepFormatBitDepths", v24);
          if (!v27)
          {
            FigCFArrayAppendInt();
            v27 = VTSessionSetProperty(*(v5 + 64), @"RequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v26);
            if (!v27)
            {
              SInt32 = FigCFNumberCreateSInt32();
              if (!SInt32)
              {
LABEL_74:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_9_1();
                v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_75;
              }

LABEL_47:
              v29 = VTSessionSetProperty(*(v5 + 112), @"RequiredHEVCSequenceParameterSetRepFormatIndex", SInt32);
              if (!v29)
              {
                v21 = 0;
LABEL_49:
                CFRelease(v24);
                CFRelease(v26);
                if (!SInt32)
                {
                  goto LABEL_52;
                }

                v30 = SInt32;
LABEL_51:
                CFRelease(v30);
LABEL_52:
                if (!v20)
                {
                  return v21;
                }

LABEL_53:
                CFRelease(v20);
                return v21;
              }

LABEL_75:
              v21 = v29;
              goto LABEL_49;
            }
          }
        }

LABEL_68:
        v21 = v27;
        SInt32 = 0;
        goto LABEL_49;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v34, v35);
    }

    v21 = v19;
    if (!v20)
    {
      return v21;
    }

    goto LABEL_53;
  }

  v9 = @"HEVC_Main10_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v12 = v14 | 0x78300000;
    goto LABEL_16;
  }

  v9 = @"HEVC_Main42210_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    v6 = &kVTProfileLevel_HEVC_Main42210_AutoLevel;
    if (*(v5 + 176) == 8)
    {
      v12 = 1983013176;
    }

    else
    {
      v12 = 2016567608;
    }

    goto LABEL_16;
  }

  v9 = @"HEVC_Main44410_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v11 = v32 | 0x78300000;
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< MuxedAlphaEncoder >>>>", 784, v2);
}

uint64_t alphaencoder_setLeftAndRightViewIDsToMVHEVCColorAlphaEncoder(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 96);
  if (v2 && CFArrayGetCount(v2) == 2)
  {
    v3 = *(DerivedStorage + 88);
    if (!v3 || CFArrayGetCount(v3) != 2)
    {
      return 0;
    }

    FigCFArrayGetIntAtIndex();
    FigCFArrayGetIntAtIndex();
    v4 = *MEMORY[0x1E695E480];
    v5 = OUTLINED_FUNCTION_3_11();
    Mutable = CFArrayCreateMutable(v5, v6, v7);
    if (Mutable)
    {
      v9 = Mutable;
      FigCFArrayGetIntAtIndex();
      FigCFArrayGetIntAtIndex();
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      v10 = *(DerivedStorage + 144);
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 144) = 0;
      }

      Copy = CFArrayCreateCopy(v4, v9);
      *(DerivedStorage + 144) = Copy;
      if (Copy)
      {
        v12 = VTSessionSetProperty(*(DerivedStorage + 64), @"MVHEVCLeftAndRightViewIDs", *(DerivedStorage + 96));
        if (!v12)
        {
          v12 = VTSessionSetProperty(*(DerivedStorage + 112), @"MVHEVCLeftAndRightViewIDs", *(DerivedStorage + 144));
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v16);
      }

      v13 = v12;
      CFRelease(v9);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v16);
    }

    return v13;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t MuxedAlphaEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  v39[0] = 0x4C30303834323066;
  v36 = 0;
  v37 = 0;
  valuePtr = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v34 = 1;
  propertyValue = CFNumberCreate(v9, kCFNumberSInt32Type, &v34);
  cf = FigCFNumberCreateFloat32();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 20) = v7;
  v11 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = @"HEVC_Main_AutoLevel";
  if (@"HEVC_Main_AutoLevel")
  {
    CFRetain(@"HEVC_Main_AutoLevel");
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = @"HEVC_Main_AutoLevel";
  if (@"HEVC_Main_AutoLevel")
  {
    CFRetain(@"HEVC_Main_AutoLevel");
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *(DerivedStorage + 172) = 1982882104;
  v13 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 32);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 32) = 0;
  }

  PixelBufferAttributesDictionary = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, (DerivedStorage + 172), 1u, &v38);
  if (PixelBufferAttributesDictionary || (VTEncoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), v38), PixelBufferAttributesDictionary = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, dword_18FED0548, 6u, &v37), PixelBufferAttributesDictionary) || (v19 = (DerivedStorage + 64), PixelBufferAttributesDictionary = OUTLINED_FUNCTION_7_8(v9, a3, v7, v16, *(DerivedStorage + 48), v37, v17, v18, 0, (DerivedStorage + 64)), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*(DerivedStorage + 64), @"ProfileLevel", *(DerivedStorage + 72)), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*v19, @"RequiredHEVCSequenceParameterSetID", v10), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*v19, @"RequiredHEVCPictureParameterSetID", v10), PixelBufferAttributesDictionary))
  {
    v29 = PixelBufferAttributesDictionary;
  }

  else
  {
    v31 = v10;
    VTSessionSetProperty(*v19, @"RequiredHEVCVideoParameterSetAlphaLayerID", propertyValue);
    v20 = *MEMORY[0x1E695E4D0];
    v21 = VTSessionSetProperty(*v19, @"RequireDeterministicDependencyAndReordering", *MEMORY[0x1E695E4D0]);
    if (!v21)
    {
      v21 = VTSessionSetProperty(*v19, @"HDRMetadataInsertionMode", @"HDRMetadataInsertionMode_None");
      if (!v21)
      {
        v21 = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, v39, 2u, &v36);
        if (!v21)
        {
          v25 = (DerivedStorage + 112);
          v21 = OUTLINED_FUNCTION_7_8(v9, a3, v7, v22, *(DerivedStorage + 48), v36, v23, v24, 0, (DerivedStorage + 112));
          if (!v21)
          {
            v21 = VTSessionSetProperty(*(DerivedStorage + 112), @"ProfileLevel", *(DerivedStorage + 120));
            if (!v21)
            {
              v26 = propertyValue;
              v27 = VTSessionSetProperty(*v25, @"RequiredHEVCSequenceParameterSetID", propertyValue);
              v28 = cf;
              if (!v27)
              {
                v27 = VTSessionSetProperty(*v25, @"RequiredHEVCPictureParameterSetID", propertyValue);
                if (!v27)
                {
                  VTSessionSetProperty(*v25, @"EncodesAlpha", v20);
                  VTSessionSetProperty(*v25, @"Quality", cf);
                  v27 = VTSessionSetProperty(*v25, @"RequireDeterministicDependencyAndReordering", v20);
                }
              }

              v29 = v27;
              v10 = v31;
              if (cf)
              {
                goto LABEL_30;
              }

              goto LABEL_31;
            }
          }
        }
      }
    }

    v29 = v21;
    v10 = v31;
  }

  v28 = cf;
  v26 = propertyValue;
  if (cf)
  {
LABEL_30:
    CFRelease(v28);
  }

LABEL_31:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v29;
}

uint64_t MuxedAlphaEncoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  supportedPropertyDictionaryOut = 0;
  v56 = 0;
  v57 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_3_11();
  v9 = CFDictionaryCreate(v5, v6, 0, 0, v7, v8);
  *keys = 0u;
  v55 = 0u;
  *values = 0u;
  *v53 = 0u;
  v10 = VTSessionCopySupportedPropertyDictionary(*(DerivedStorage + 64), &supportedPropertyDictionaryOut);
  if (v10)
  {
    v27 = 0;
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryRemoveValue(MutableCopy, @"MultiPassStorage");
    FigCFDictionaryGetValue();
    if (FigCFDictionaryGetArrayValue())
    {
      v43 = @"ProfileLevel";
      v44 = a2;
      HIDWORD(v45) = 0;
      v47 = @"HEVC_Main_AutoLevel";
      v48 = @"HEVC_Main444_AutoLevel";
      v49 = @"HEVC_Main10_AutoLevel";
      v50 = @"HEVC_Main42210_AutoLevel";
      v51 = @"HEVC_Main44410_AutoLevel";
      Mutable = CFArrayCreateMutable(v4, 5, MEMORY[0x1E695E9C0]);
      for (i = 0; i != 40; i += 8)
      {
        v14 = *(&v47 + i);
        LODWORD(v15) = FigCFArrayContainsValue();
        if (v15)
        {
          CFArrayAppendValue(Mutable, v14);
        }
      }

      v10 = 0;
      if (Mutable)
      {
        goto LABEL_9;
      }
    }

    values[0] = @"HEVC_Main_AutoLevel";
    v15 = CFArrayCreate(v4, values, 1, MEMORY[0x1E695E9C0]);
    Mutable = v15;
    if (v15)
    {
LABEL_9:
      keys[1] = @"PropertyType";
      *&v55 = @"ReadWriteStatus";
      *(&v55 + 1) = @"ShouldBeSerialized";
      v21 = OUTLINED_FUNCTION_8_8(v15, v16, v17, v18, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8], v19, v20, v42, v43, v44, v45, supportedPropertyDictionaryOut, v47, v48, v49, v50, v51, Mutable, @"Enumeration", @"ReadWrite", *MEMORY[0x1E695E4C0], @"SupportedValueList");
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(MutableCopy, @"ProfileLevel", v21);
        CFRelease(v22);
      }

      CFRelease(Mutable);
    }

    v23 = OUTLINED_FUNCTION_3_11();
    v27 = CFDictionaryCreateMutable(v23, v24, v25, v26);
    values[0] = @"StraightAlpha";
    values[1] = @"PremultipliedAlpha";
    v28 = CFArrayCreate(v4, values, 2, MEMORY[0x1E695E9C0]);
    if (v28)
    {
      v34 = v28;
      keys[1] = @"PropertyType";
      *&v55 = @"ReadWriteStatus";
      *(&v55 + 1) = @"ShouldBeSerialized";
      v35 = OUTLINED_FUNCTION_8_8(v28, v29, v30, v31, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8], v32, v33, v42, v43, v44, v45, supportedPropertyDictionaryOut, v47, v48, v49, v50, v51, v28, @"Enumeration", @"ReadWrite", *MEMORY[0x1E695E4C0], @"SupportedValueList");
      if (v35)
      {
        v36 = v35;
        CFDictionarySetValue(MutableCopy, @"AlphaChannelMode", v35);
        CFRelease(v36);
      }

      CFRelease(v34);
    }

    OUTLINED_FUNCTION_4_15(v28, @"SublayerEncoderSpecification");
    OUTLINED_FUNCTION_4_15(v37, @"SourceFrameCount");
    OUTLINED_FUNCTION_4_15(v38, @"BaseLayerProperties");
    OUTLINED_FUNCTION_4_15(v39, @"AlphaLayerProperties");
    v40 = CFDictionaryContainsKey(MutableCopy, @"Quality");
    if (v40)
    {
      OUTLINED_FUNCTION_4_15(v40, @"TargetQualityForAlpha");
    }

    v56 = MutableCopy;
    v57 = v27;
    FigCFCreateCombinedDictionary();
  }

  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t alphaencoder_createDerivedSampleBuffer(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer *a2, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription *a4, CMSampleBufferRef *a5)
{
  v31 = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
  timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    return SampleTimingInfo;
  }

  v11 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], theBuffer, a4, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &v31);
  v12 = v31;
  if (v11)
  {
    v26 = v11;
  }

  else
  {
    CMPropagateAttachments(a1, v31);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0), v15 = CMSampleBufferGetSampleAttachmentsArray(v31, 1u), v16 = CFArrayGetValueAtIndex(v15, 0), CFDictionaryApplyFunction(ValueAtIndex, alphaencoder_dictionarySetValue, v16), (v17 = CMSampleBufferGetSampleAttachmentsArray(a2, 0)) == 0))
    {
      v26 = 0;
      *a5 = v31;
      return v26;
    }

    v18 = CFArrayGetValueAtIndex(v17, 0);
    v19 = OUTLINED_FUNCTION_3_11();
    Mutable = CFDictionaryCreateMutable(v19, v20, v21, v22);
    if (Mutable)
    {
      v24 = Mutable;
      alphaencoder_setKeysInListFromDictionaryIfPresent(v18, kMuxedAlphaEncoderAlphaLayerSampleAttachmentKeyAllowList, 9, Mutable);
      DataBuffer = CMSampleBufferGetDataBuffer(a2);
      CMBlockBufferGetDataLength(DataBuffer);
      FigCFDictionarySetInt32();
      CFDictionarySetValue(v16, @"AlphaLayerAttachments", v24);
      *a5 = v31;
      v31 = 0;
      CFRelease(v24);
      return 0;
    }

    fig_log_get_emitter();
    v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleBufferOut, sampleSizeArray, LODWORD(timingInfoOut.duration.value));
    v12 = v31;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v26;
}

uint64_t MuxedAlphaEncoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_createPixelBufferAttributesDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeFrame_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL alphaencoder_demuxBaseAndAlpha_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t alphaencoder_transferPlane_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

void VTPixelBufferAttributesMediatorCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);

  CFRelease(a2);
}

uint64_t VTPixelBufferAttributesMediatorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

CFTypeID VTMetalTransferSessionSetProperty(const void *a1, const void *a2, const void *a3)
{
  v6 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    goto LABEL_50;
  }

  v8 = DerivedStorage;
  v9 = CFGetTypeID(a1);
  TypeID = VTPixelTransferNodeGetTypeID();
  v11 = 4294954394;
  if (!a2 || v9 != TypeID)
  {
    goto LABEL_140;
  }

  v12 = CFGetTypeID(a2);
  if (v12 != CFStringGetTypeID())
  {
LABEL_50:
    v11 = 4294954394;
    goto LABEL_140;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v14 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1880), v15, v14))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v16 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1888), v17, v16))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v18 = CFDataGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1896), v19, v18))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v20 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1904), v21, v20))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v22 = CFBooleanGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1856), v23, v22))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v24 = CFBooleanGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1864), v25, v24))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v26 = CFNumberGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1872), v27, v26))
    {
LABEL_25:
      OUTLINED_FUNCTION_19_3();
      v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_26:
      v11 = v28;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F0;
    v51 = v8 + 1792;
LABEL_99:
    v28 = processBooleanProperty(a3, v50, v51);
    goto LABEL_26;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F1;
    v51 = v8 + 1793;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D4300;
    v51 = v8 + 1808;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F2;
    v51 = v8 + 1794;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      v42 = *(v8 + 227);
      if (v42)
      {
        CFRelease(v42);
        v11 = 0;
        *(v8 + 227) = 0;
        goto LABEL_140;
      }

      goto LABEL_139;
    }

    v11 = CFGetTypeID(a3);
    if (v11 != CFNumberGetTypeID())
    {
      goto LABEL_25;
    }

    if (!FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v29 = *(v8 + 227);
      *(v8 + 227) = a3;
      CFRetain(a3);
      if (v29)
      {
        CFRelease(v29);
      }

      if (*(v13 + 2152))
      {
        v30 = CFGetTypeID(a3);
        if (v30 == CFNumberGetTypeID() && CFArrayGetCount(*(v13 + 2152)) >= 1)
        {
          OUTLINED_FUNCTION_76();
          do
          {
            v31 = OUTLINED_FUNCTION_83();
            if (v31)
            {
              v32 = v31[15];
              if (v32)
              {
                v33 = [v32 contents];
                if (v33)
                {
                  OUTLINED_FUNCTION_84(v33, v34, v33);
                }
              }
            }

            OUTLINED_FUNCTION_28_1();
          }

          while (!v35);
          goto LABEL_140;
        }
      }
    }

LABEL_139:
    v11 = 0;
    goto LABEL_140;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3)
      {
        v58 = *(v8 + 229);
        if (v58)
        {
          CFRelease(v58);
          v11 = 0;
          *(v8 + 229) = 0;
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        goto LABEL_25;
      }

      if (FigCFEqual())
      {
        goto LABEL_139;
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v43 = *(v8 + 229);
      *(v8 + 229) = a3;
      CFRetain(a3);
      if (v43)
      {
        CFRelease(v43);
      }

      if (!*(v13 + 2152))
      {
        goto LABEL_139;
      }

      v44 = CFGetTypeID(a3);
      if (v44 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_76();
      do
      {
        v45 = OUTLINED_FUNCTION_83();
        if (v45)
        {
          v46 = v45[15];
          if (v46)
          {
            v47 = [v46 contents];
            if (v47)
            {
              OUTLINED_FUNCTION_84(v47, v48, (v47 + 8));
            }
          }
        }

        OUTLINED_FUNCTION_28_1();
      }

      while (!v35);
      goto LABEL_140;
    }

    if (FigCFEqual())
    {
      if (!a3)
      {
        v60 = *(v8 + 230);
        if (v60)
        {
          CFRelease(v60);
          v11 = 0;
          *(v8 + 230) = 0;
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        goto LABEL_25;
      }

      if (FigCFEqual())
      {
        goto LABEL_139;
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v52 = *(v8 + 230);
      *(v8 + 230) = a3;
      CFRetain(a3);
      if (v52)
      {
        CFRelease(v52);
      }

      if (!*(v13 + 2152))
      {
        goto LABEL_139;
      }

      v53 = CFGetTypeID(a3);
      if (v53 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_76();
      do
      {
        v54 = OUTLINED_FUNCTION_83();
        if (v54)
        {
          v55 = v54[15];
          if (v55)
          {
            v56 = [v55 contents];
            if (v56)
            {
              OUTLINED_FUNCTION_84(v56, v57, (v56 + 12));
            }
          }
        }

        OUTLINED_FUNCTION_28_1();
      }

      while (!v35);
      goto LABEL_140;
    }

    if (FigCFEqual())
    {
      if (a3 && !CFEqual(a3, *MEMORY[0x1E695E738]))
      {
        v63 = CFGetTypeID(a3);
        if (v63 != CFStringGetTypeID())
        {
          goto LABEL_25;
        }

        if (!FigCFEqual())
        {
          v64 = *(v8 + 223);
          *(v8 + 223) = a3;
          CFRetain(a3);
          if (v64)
          {
            CFRelease(v64);
          }
        }
      }

      else
      {
        v59 = *(v8 + 223);
        if (v59)
        {
          CFRelease(v59);
          v11 = 0;
          *(v8 + 223) = 0;
          goto LABEL_140;
        }
      }

      goto LABEL_139;
    }

    if (FigCFEqual())
    {
      IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
      v62 = *MEMORY[0x1E695E738];
      if (a3 && !IsTypeOfDispatchQueue && v62 != a3)
      {
        goto LABEL_25;
      }

      if (v62 == a3)
      {
        v68 = 0;
      }

      else
      {
        v68 = a3;
      }

      v69 = *(v8 + 239);
      *(v8 + 239) = v68;
      if (!v68)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_25;
      }

      v66 = FigIsTypeOfDispatchQueue();
      v67 = *MEMORY[0x1E695E738];
      if (a3)
      {
        if (!v66 && v67 != a3)
        {
          goto LABEL_25;
        }
      }

      if (v67 == a3)
      {
        v68 = 0;
      }

      else
      {
        v68 = a3;
      }

      v69 = *(v8 + 240);
      *(v8 + 240) = v68;
      if (!v68)
      {
        goto LABEL_151;
      }
    }

    CFRetain(v68);
LABEL_151:
    if (v69)
    {
      CFRelease(v69);
    }

    v11 = 0;
    OUTLINED_FUNCTION_53_0();
    goto LABEL_140;
  }

  if (!a3)
  {
    v49 = *(v8 + 228);
    if (v49)
    {
      CFRelease(v49);
      v11 = 0;
      *(v8 + 228) = 0;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v11 = CFGetTypeID(a3);
  if (v11 != CFNumberGetTypeID())
  {
    goto LABEL_25;
  }

  if (FigCFEqual())
  {
    goto LABEL_139;
  }

  if (*MEMORY[0x1E695E738] == a3)
  {
    OUTLINED_FUNCTION_53_0();
  }

  v36 = *(v8 + 228);
  *(v8 + 228) = a3;
  CFRetain(a3);
  if (v36)
  {
    CFRelease(v36);
  }

  if (!*(v13 + 2152))
  {
    goto LABEL_139;
  }

  v37 = CFGetTypeID(a3);
  if (v37 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
  {
    goto LABEL_139;
  }

  OUTLINED_FUNCTION_76();
  do
  {
    v38 = OUTLINED_FUNCTION_83();
    if (v38)
    {
      v39 = v38[15];
      if (v39)
      {
        v40 = [v39 contents];
        if (v40)
        {
          OUTLINED_FUNCTION_84(v40, v41, (v40 + 4));
        }
      }
    }

    OUTLINED_FUNCTION_28_1();
  }

  while (!v35);
LABEL_140:
  objc_autoreleasePoolPop(v6);
  return v11;
}

uint64_t vtPixelTransferAppendMetalNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  cf = 0;
  v11 = *(a6 + 176);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  session = v11;
  v12 = *(a2 + 4) ^ *(a1 + 4);
  v13 = (v12 >> 4) & 1;
  v14 = (v12 >> 3) & 1;
  valuePtr = 0;
  v15 = v12 & 0x18;
  if ((v12 & 4) != 0)
  {
    if (v15 == 24)
    {
      v14 = 0;
      valuePtr = 90;
      v13 = 1;
      goto LABEL_12;
    }

    if (!v13)
    {
      valuePtr = 90;
      v14 = (v12 & 8) == 0;
      goto LABEL_12;
    }

    v14 = 0;
    v13 = 0;
    v16 = 270;
  }

  else
  {
    if (v15 != 24)
    {
      goto LABEL_12;
    }

    v14 = 0;
    v13 = 0;
    v16 = 180;
  }

  valuePtr = v16;
LABEL_12:
  v38 = 0u;
  v39 = 0u;
  if (!v11)
  {
    CurrentDimensions = VTMetalTransferSessionCreate(0, *(a6 + 200), &session);
    if (CurrentDimensions)
    {
LABEL_49:
      appended = CurrentDimensions;
      goto LABEL_44;
    }

    v11 = session;
    if (!session)
    {
      appended = 0;
      goto LABEL_44;
    }
  }

  if (valuePtr)
  {
    v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session, @"Rotation", v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    VTSessionSetProperty(v11, @"Rotation", 0);
  }

  v19 = *MEMORY[0x1E695E4D0];
  if (v13)
  {
    v20 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v20 = 0;
  }

  VTSessionSetProperty(session, @"FlipHorizontalOrientation", v20);
  if (v14)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  VTSessionSetProperty(session, @"FlipVerticalOrientation", v21);
  if (((*(a2 + 4) ^ *(a1 + 4)) & 2) != 0)
  {
    Value = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965D88]);
    v23 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965F30]);
    v24 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965F98]);
    v25 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965EC8]);
    if (Value)
    {
      VTSessionSetProperty(session, @"DestinationColorPrimaries", Value);
    }

    if (v23)
    {
      VTSessionSetProperty(session, @"DestinationTransferFunction", v23);
    }

    if (v24)
    {
      VTSessionSetProperty(session, @"DestinationYCbCrMatrix", v24);
    }

    if (v25)
    {
      VTSessionSetProperty(session, @"DestinationICCProfile", v25);
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = OUTLINED_FUNCTION_41_1();
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(v27, v28, a3, a6, 0, v29);
  if (CurrentDimensions)
  {
    goto LABEL_49;
  }

  CurrentDimensions = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, 1, *&v39, *(&v39 + 1), &cf);
  if (CurrentDimensions)
  {
    goto LABEL_49;
  }

  v30 = *DerivedStorage;
  v31 = cf;
  *DerivedStorage = cf;
  if (v31)
  {
    CFRetain(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  appended = VTPixelTransferChainAppendNode(*a6, session);
  if (*&v39 != *(a6 + 76) || *(&v39 + 1) != *(a6 + 84))
  {
    v34 = 0;
    if (VTSessionGetBooleanIfPresent(session, @"WriteBlackPixelsOutsideDestRect", &v34))
    {
      *(a6 + 208) = v34;
    }
  }

LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (session)
  {
    CFRelease(session);
  }

  objc_autoreleasePoolPop(v10);
  return appended;
}

void VTLoadVTMetalTransferLibrary(void *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = 0;
  v11 = 0;
  v12 = 0;
  if (a1 && a2 && a3)
  {
    v8 = 0;
    v9 = 0;
    if (a4)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11}];
      v8 = [a1 newDefaultLibraryWithBundle:v9 error:&v11];
      loadMTLFunctionConstants(a3, &v12);
      v4 = v12;
      *a4 = [v8 newFunctionWithName:a2 constantValues:v12 error:&v11];
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }
}

CFMutableDictionaryRef vtMetalTransferSessionConfigureForManySourcesAndManyDests(uint64_t a1, const __CFArray *a2, const __CFArray *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    LODWORD(v39) = 0;
    v40 = 0;
    v17 = 0;
    goto LABEL_87;
  }

  Value = CFDictionaryGetValue(a4, @"SourceAmendments");
  v9 = MEMORY[0x1E695E480];
  if (Value && ((v10 = Value, v11 = CFGetTypeID(Value), v11 == CFArrayGetTypeID()) || (v12 = CFGetTypeID(v10), v12 == CFDictionaryGetTypeID())))
  {
    v13 = OUTLINED_FUNCTION_17();
    Mutable = CFArrayCreateMutable(v13, v14, v15);
    if (!Mutable)
    {
      return 0;
    }

    v17 = Mutable;
    if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
    {
      v19 = Count;
      v72 = a1;
      allocator = a3;
      v20 = 0;
      v21 = a2;
      do
      {
        CFArrayGetValueAtIndex(a2, v20);
        v22 = OUTLINED_FUNCTION_17();
        MutableCopy = CFDictionaryCreateMutableCopy(v22, v23, v24);
        if (!MutableCopy)
        {
          v51 = 0;
          v40 = 0;
          goto LABEL_94;
        }

        v26 = MutableCopy;
        v27 = CFGetTypeID(v10);
        if (v27 != CFDictionaryGetTypeID())
        {
          v28 = CFGetTypeID(v10);
          if (v28 == CFArrayGetTypeID())
          {
            CFArrayGetValueAtIndex(v10, v20);
          }
        }

        OUTLINED_FUNCTION_22_2();
        CFDictionaryApplyFunction(v29, v30, v26);
        if (!CFDictionaryGetValue(v26, @"FlipHorizontalOrientation"))
        {
          v31 = *(DerivedStorage + 1856);
          if (v31)
          {
            v32 = CFGetTypeID(*(DerivedStorage + 1856));
            if (v32 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v31))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        if (!CFDictionaryGetValue(v26, @"FlipVerticalOrientation"))
        {
          v33 = *(DerivedStorage + 1864);
          if (v33)
          {
            v34 = CFGetTypeID(*(DerivedStorage + 1864));
            if (v34 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v33))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        if (!CFDictionaryGetValue(v26, @"Rotation"))
        {
          v35 = *(DerivedStorage + 1872);
          if (v35)
          {
            v36 = CFGetTypeID(*(DerivedStorage + 1872));
            if (v36 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v35))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        v37 = OUTLINED_FUNCTION_41_1();
        CFArrayAppendValue(v37, v38);
        CFRelease(v26);
        ++v20;
      }

      while (v19 != v20);
      a2 = v17;
      a1 = v72;
      a3 = allocator;
      v9 = MEMORY[0x1E695E480];
    }

    else
    {
      a2 = v17;
    }
  }

  else
  {
    v17 = 0;
  }

  v41 = CFDictionaryGetValue(a4, @"DestinationAmendments");
  if (!v41 || (v42 = v41, v43 = CFGetTypeID(v41), v43 != CFArrayGetTypeID()))
  {
    v40 = 0;
    goto LABEL_83;
  }

  allocatora = *v9;
  v40 = CFArrayCreateMutable(*v9, 0, MEMORY[0x1E695E9C0]);
  if (!v40)
  {
    goto LABEL_92;
  }

  if (!a3 || (v44 = CFArrayGetCount(a3), v44 < 1))
  {
    a3 = v40;
LABEL_83:
    v63 = CFDictionaryGetValue(a4, @"SetGPUPriorityLow");
    v39 = v63;
    if (v63)
    {
      v64 = CFGetTypeID(v63);
      if (v64 == CFBooleanGetTypeID())
      {
        LODWORD(v39) = CFBooleanGetValue(v39);
      }

      else
      {
        LODWORD(v39) = 0;
      }
    }

LABEL_87:
    v65 = CMBaseObjectGetDerivedStorage();
    if (!*(v65 + 72) || (v66 = v65, !FigCFEqual()) || !FigCFEqual() || *(v66 + 2160) != v39 || *(v66 + 21))
    {
      v67 = objc_autoreleasePoolPush();
      v51 = vtMetalTransferSessionRebuild(a1, a2, a3, v39);
      objc_autoreleasePoolPop(v67);
      goto LABEL_94;
    }

LABEL_92:
    v51 = 0;
    goto LABEL_94;
  }

  v45 = v44;
  v71 = a4;
  v73 = a1;
  v69 = v17;
  v46 = 0;
  key = *MEMORY[0x1E6965D88];
  v70 = *MEMORY[0x1E6965F30];
  v76 = *MEMORY[0x1E6965EC8];
  v75 = *MEMORY[0x1E6965F98];
  while (1)
  {
    v47 = OUTLINED_FUNCTION_81();
    ValueAtIndex = CFArrayGetValueAtIndex(v42, v46);
    if (v47)
    {
      v49 = ValueAtIndex;
      v50 = CFGetTypeID(v47);
      if (v50 == CFDictionaryGetTypeID())
      {
        break;
      }
    }

LABEL_79:
    if (v45 == ++v46)
    {
      a3 = v40;
      v17 = v69;
      a4 = v71;
      a1 = v73;
      goto LABEL_83;
    }
  }

  v51 = CFDictionaryCreateMutableCopy(allocatora, 0, v47);
  if (v51)
  {
    if (v49)
    {
      v52 = CFGetTypeID(v49);
      if (v52 == CFDictionaryGetTypeID())
      {
        OUTLINED_FUNCTION_22_2();
        CFDictionaryApplyFunction(v49, v53, v51);
      }
    }

    if (CFDictionaryGetValue(v51, key) || CFDictionaryGetValue(v51, v70))
    {
      goto LABEL_64;
    }

    v54 = *(DerivedStorage + 1880);
    v55 = *(DerivedStorage + 1888);
    if (v54)
    {
      v56 = a2;
      v57 = CFGetTypeID(*(DerivedStorage + 1880));
      if (v57 != CFArrayGetTypeID())
      {
LABEL_60:
        a2 = v56;
        goto LABEL_61;
      }

      a2 = v56;
      if (v46 < CFArrayGetCount(v54) && v55)
      {
        v58 = CFGetTypeID(v55);
        if (v58 == CFArrayGetTypeID())
        {
          a2 = v56;
          if (v46 < CFArrayGetCount(v55))
          {
            CFArrayGetValueAtIndex(v54, v46);
            CFArrayGetValueAtIndex(v55, v46);
          }

          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

LABEL_61:
    if (!FigCFEqual() && !FigCFEqual())
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
    }

LABEL_64:
    if (!CFDictionaryGetValue(v51, v76))
    {
      v59 = *(DerivedStorage + 1896);
      if (v59)
      {
        v60 = CFGetTypeID(*(DerivedStorage + 1896));
        if (v60 == CFArrayGetTypeID() && v46 < CFArrayGetCount(v59))
        {
          CFArrayGetValueAtIndex(v59, v46);
        }
      }

      if (!FigCFEqual())
      {
        FigCFDictionarySetValue();
      }
    }

    if (!CFDictionaryGetValue(v51, v75))
    {
      v61 = *(DerivedStorage + 1904);
      if (v61)
      {
        v62 = CFGetTypeID(*(DerivedStorage + 1904));
        if (v62 == CFArrayGetTypeID() && v46 < CFArrayGetCount(v61))
        {
          CFArrayGetValueAtIndex(v61, v46);
        }
      }

      if (!FigCFEqual())
      {
        FigCFDictionarySetValue();
      }
    }

    CFArrayAppendValue(v40, v51);
    CFRelease(v51);
    goto LABEL_79;
  }

  v17 = v69;
LABEL_94:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v51;
}