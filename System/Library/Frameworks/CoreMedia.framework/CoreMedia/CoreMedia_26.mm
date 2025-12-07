uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v34 = 0;
  v32 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v22, v23, "<<<< FigSampleBufferSerialization >>>>", v24, v25, v26, v27, v28);
    goto LABEL_9;
  }

  v3 = a2;
  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_9:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_22_8();
  SerializedDataUsingSerializer = sbufAtom_createSerializedDataUsingSerializer(1024, v6, v7, v8, &v31, v9, v10, v11, v28, v30, v31, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription_block_invoke, &__block_descriptor_tmp_58, v3, v32, 0, v34, v35, v36, v37, v38, vars0, vars8);
  v3 = v32;
  if (SerializedDataUsingSerializer)
  {
    v5 = SerializedDataUsingSerializer;
  }

  else
  {
    v5 = v34;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(SerializedDataUsingSerializer, v13);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v15, v16, GlobalCFAllocatorFigMalloc, v17, v18, v33, v19, v29);
    OUTLINED_FUNCTION_33_5();
    if (v20)
    {
      v3 = 0;
    }
  }

LABEL_7:
  free(v3);
  return v5;
}

uint64_t FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t a3, void *a4)
{
  v23 = 0;
  cf = 0;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947656;
    v20 = 4787;
LABEL_20:
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<<< FigSampleBufferSerialization >>>>", v20, v16, v17, v18, v21);
LABEL_21:
    v12 = v11;
    goto LABEL_12;
  }

  if (!theBuffer)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947656;
    v20 = 4788;
    goto LABEL_20;
  }

  if (!CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947653;
    v20 = 4789;
    goto LABEL_20;
  }

  CMBlockBufferGetDataLength(theBuffer);
  v8 = OUTLINED_FUNCTION_25_6();
  if (!CMBlockBufferIsRangeContiguous(v8, v9, v10))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947653;
    v20 = 4790;
    goto LABEL_20;
  }

  v21 = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(theBuffer, a3, &v21, 0, &dataPointerOut);
  v11 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v11)
  {
    goto LABEL_21;
  }

  v11 = figReadNEAtomHeader(dataPointerOut, 0, v21, &v23 + 1, &v23);
  if (v11)
  {
    goto LABEL_21;
  }

  if (HIDWORD(v23) != 1717859171)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947651;
    v20 = 4804;
    goto LABEL_20;
  }

  if (v21 < v23)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947652;
    v20 = 4805;
    goto LABEL_20;
  }

  v12 = sbufAtom_copyFormatDescriptionFromAtom(a1, (dataPointerOut + 8), v23 - 8, &cf);
  v13 = cf;
  if (v12 && cf)
  {
    CFRelease(cf);
LABEL_12:
    v13 = 0;
  }

  *a4 = v13;
  return v12;
}

size_t FigRemote_CreateSerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6, vm_address_t *a7, OpaqueCMBlockBuffer *a8, CMBlockBufferRef *a9, const opaqueCMFormatDescription **a10, uint64_t *a11)
{
  address = 0;
  v62 = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4967;
LABEL_75:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", v51, v48, v49, v50, a9);
  }

  if (!a7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4968;
    goto LABEL_75;
  }

  if (!a9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4969;
    goto LABEL_75;
  }

  if (a10)
  {
    otherFormatDescription = *a10;
  }

  else
  {
    otherFormatDescription = 0;
  }

  if (a11)
  {
    v56 = *a11;
  }

  else
  {
    v56 = 0;
  }

  v14 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v14)
  {
    return v14;
  }

  if (a6)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v16 = &v60;
  if (!a10)
  {
    v16 = 0;
  }

  v54 = v16;
  v55 = p_cf;
  v17 = &v59;
  if (!a11)
  {
    v17 = 0;
  }

  v53 = v17;
  v18 = 1;
  v19 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v20 = v18;
    if (a8)
    {
      v62 = a8;
      v21 = a8;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_35_2();
      v14 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v40, v41, v42, v43, v44, 0, 0, 0, &v62, otherFormatDescription, v56, 0, 0, 0);
      if (v14)
      {
        return v14;
      }

      v21 = v62;
      if (!v62)
      {
        v31 = 0;
        goto LABEL_62;
      }
    }

    if (a1)
    {
      address = MEMORY[0x19A8D7200](a1, v21, 213032707, 0);
      if (!address)
      {
        v31 = 4294947655;
        goto LABEL_68;
      }
    }

    else
    {
      v39 = vm_allocate(*v19, &address, v21, 1543503873);
      v38 = address;
      if (v39)
      {
        v31 = v39;
        if (!address || !v62)
        {
          goto LABEL_59;
        }

LABEL_57:
        MEMORY[0x19A8DA090](*v19, v38);
        goto LABEL_58;
      }
    }

    v22 = v19;
    v59 = 0;
    v60 = 0;
    cf = 0;
    v23 = OUTLINED_FUNCTION_35_2();
    SerializedDataAndSurfaceForSampleBuffer = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v23, v24, v25, v26, v27, v55, v28, v29, 0, otherFormatDescription, v56, 0, v54, v53);
    v31 = SerializedDataAndSurfaceForSampleBuffer;
    if (a10 && !SerializedDataAndSurfaceForSampleBuffer)
    {
      v32 = *a10;
      v33 = v60;
      *a10 = v60;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    if (a11 && !v31)
    {
      v34 = *a11;
      v35 = v59;
      *a11 = v59;
      if (v35)
      {
        CFRetain(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    if (a6 && !v31)
    {
      v36 = *a6;
      v37 = cf;
      *a6 = cf;
      if (v37)
      {
        CFRetain(v37);
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    if (v60)
    {
      CFRelease(v60);
    }

    v19 = v22;
    if (v59)
    {
      CFRelease(v59);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!v31 && gGMFigKTraceEnabled == 1)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_68;
    }

    v38 = address;
    if (!address || !v62)
    {
      goto LABEL_59;
    }

    if (!a1)
    {
      goto LABEL_57;
    }

    CFAllocatorDeallocate(a1, address);
LABEL_58:
    address = 0;
    v62 = 0;
LABEL_59:
    if (!a8 || v31 != -19649)
    {
      goto LABEL_68;
    }

    v31 = 4294947647;
LABEL_62:
    a8 = 0;
    v18 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_10_7();
  kdebug_trace();
  v31 = 0;
LABEL_68:
  v45 = address;
  *a9 = v62;
  *a7 = v45;
  return v31;
}

uint64_t sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(opaqueCMSampleBuffer *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFArray **a6, uint64_t a7, uint64_t a8, void *a9, CMFormatDescriptionRef otherFormatDescription, uint64_t a11, int a12, void *a13, void *a14)
{
  HIDWORD(v135) = a2;
  v145 = 0;
  cf = 0;
  desc = CMSampleBufferGetFormatDescription(a1);
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup(a1, v19, v20, v21, v22, v23, v24, v25);
  if (ImageBuffer | TaggedBufferGroup || (DataBuffer = CMSampleBufferGetDataBuffer(a1)) == 0)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v28 = DataBuffer;
    v29 = CMGetAttachment(DataBuffer, @"CVDataBuffer", 0);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }
  }

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v141 = 0u;
  if (CMFormatDescriptionGetMediaType(desc) == 1668310898)
  {
    CFDataFromCaptionGroup = FigCaptionSerializerCreate(*MEMORY[0x1E695E480], &cf);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CaptionGroup = FigSampleBufferGetCaptionGroup(a1, v32, v33, v34, v35, v36, v37, v38);
    CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup(cf, CaptionGroup, &v145);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  *&v141 = a7;
  *(&v141 + 1) = a8;
  CFDataFromCaptionGroup = FigNEAtomWriterBeginAtom(&v141, 1935832422);
  if (CFDataFromCaptionGroup)
  {
    goto LABEL_167;
  }

  memset(&v147, 0, 24);
  CMSampleBufferGetOutputPresentationTimeStamp(&v147.duration, a1);
  if (v147.duration.flags)
  {
    CFDataFromCaptionGroup = sbufAtom_appendAtomWithMemoryBlock(&v147, 0x18uLL);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  memset(&v147, 0, sizeof(v147));
  timingArrayEntriesNeededOut[0] = 0;
  OUTLINED_FUNCTION_10_7();
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v40, v41, v42, v43);
  if (SampleTimingInfoArray != -12736)
  {
    appended = SampleTimingInfoArray;
    v46 = 0;
    if (timingArrayEntriesNeededOut[0] && v141)
    {
      if (timingArrayEntriesNeededOut[0] != 1)
      {
        if (timingArrayEntriesNeededOut[0] < 0 || timingArrayEntriesNeededOut[0] > 0x38E38E38E38E38EuLL || !(72 * timingArrayEntriesNeededOut[0]) || (v48 = malloc_type_malloc(72 * timingArrayEntriesNeededOut[0], 0x1000040FF89C88EuLL)) == 0)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x4F1, v51, v52, v53, v135);
          v47 = 0;
LABEL_27:
          free(v47);
          if (appended)
          {
            goto LABEL_148;
          }

          goto LABEL_28;
        }

        v47 = v48;
        v49 = CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut[0], v48, timingArrayEntriesNeededOut);
        if (v49)
        {
          appended = v49;
          goto LABEL_18;
        }

        v46 = v47;
LABEL_25:
        appended = sbufAtom_appendAtomWithMemoryBlock(v46, 72 * timingArrayEntriesNeededOut[0]);
        goto LABEL_27;
      }

      v46 = &v147;
      appended = CMSampleBufferGetSampleTimingInfoArray(a1, 1, &v147, timingArrayEntriesNeededOut);
    }

    v47 = 0;
    if (appended)
    {
LABEL_18:
      free(v47);
      goto LABEL_148;
    }

    goto LABEL_25;
  }

LABEL_28:
  if (ImageBuffer)
  {
    if (!a6)
    {
LABEL_32:
      if (!a5)
      {
        v54 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], ImageBuffer, 1u);
        v55 = desc;
        if (!v54)
        {
          goto LABEL_75;
        }

        v56 = v54;
        OUTLINED_FUNCTION_16_10();
        v61 = v60 | 0x69610000u;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_16_10();
      v74 = v73 | 0x69610000u;
LABEL_73:
      CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v70, v71, v74, v72);
      goto LABEL_74;
    }

    v147.duration.value = CVPixelBufferGetIOSurface(ImageBuffer);
    if (v147.duration.value)
    {
      *a6 = CFArrayCreate(*MEMORY[0x1E695E480], &v147, 1, MEMORY[0x1E695E9C0]);
      goto LABEL_32;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v134 = 3157;
LABEL_171:
    CFDataFromCaptionGroup = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v130, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", v134, v131, v132, v133, v135);
    goto LABEL_167;
  }

  if (v29)
  {
    if (a6)
    {
      v147.duration.value = CVDataBufferGetIOSurface();
      if (!v147.duration.value)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_10_15();
        v134 = 3185;
        goto LABEL_171;
      }

      *a6 = CFArrayCreate(*MEMORY[0x1E695E480], &v147, 1, MEMORY[0x1E695E9C0]);
    }

    LOBYTE(v147.duration.value) = CFBooleanGetValue(*MEMORY[0x1E695E4D0]);
    sbufAtom_appendAtomWithMemoryBlock(&v147, 1uLL);
    if (!a5)
    {
      v62 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v29, 1u);
      v55 = desc;
      if (!v62)
      {
        goto LABEL_75;
      }

      v56 = v62;
      OUTLINED_FUNCTION_16_10();
      v61 = v63 | 0x64610000u;
LABEL_42:
      appended = sbufAtom_appendDictionaryAtom(v57, v58, v61, v59);
      CFRelease(v56);
      if (appended)
      {
        goto LABEL_148;
      }

      goto LABEL_75;
    }

    OUTLINED_FUNCTION_16_10();
    v74 = v80 | 0x64610000u;
    goto LABEL_73;
  }

  if ((BYTE4(v135) & 1) != 0 || !v30)
  {
    if (v145)
    {
      CFDataFromCaptionGroup = sbufAtom_appendDataAtom(v145, 1667330151, &v141);
      goto LABEL_74;
    }

    if (TaggedBufferGroup)
    {
      if (a6)
      {
        CFDataFromCaptionGroup = sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup(TaggedBufferGroup, a6);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }
      }

      CFDataFromCaptionGroup = sbufAtom_appendTagCollectionFromTaggedBufferGroup(TaggedBufferGroup, HIDWORD(v135), &v141);
LABEL_74:
      v55 = desc;
      if (CFDataFromCaptionGroup)
      {
        goto LABEL_167;
      }

LABEL_75:
      if (CMSampleBufferGetImageBuffer(a1) || CMSampleBufferGetTaggedBufferGroup(a1))
      {
        if (!v55)
        {
          goto LABEL_89;
        }

        Extensions = CMFormatDescriptionGetExtensions(v55);
        if (!Extensions)
        {
          goto LABEL_89;
        }

        v82 = Extensions;
        v83 = 0;
        while (!CFDictionaryContainsKey(v82, *sbufAtom_formatDescriptionContainsVEXUMetadata_vexuKeys[v83]))
        {
          if (++v83 == 11)
          {
            goto LABEL_89;
          }
        }
      }

      if (v55 && (!otherFormatDescription || !CMFormatDescriptionEqual(v55, otherFormatDescription)))
      {
        OUTLINED_FUNCTION_39_1();
        v147.duration.epoch = &v141;
        v147.presentationTimeStamp.value = *(&v143 + 1) + *(&v142 + 1);
        CFDataFromCaptionGroup = OUTLINED_FUNCTION_40_1(&v147);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }

        CFDataFromCaptionGroup = sbufAtom_appendFormatDescriptionAtomGuts(v55, &v147.duration.value);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }

        CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v147);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }
      }

LABEL_89:
      Decryptor = FigSampleBufferGetDecryptor(a1);
      v85 = Decryptor;
      if (!(a11 | Decryptor) || FigCFEqual(Decryptor, a11))
      {
LABEL_121:
        if (a3)
        {
          OUTLINED_FUNCTION_19_10();
          CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v113, v114, v115, v116);
          if (CFDataFromCaptionGroup)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v100 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
          if (v100)
          {
            v120 = v100;
            OUTLINED_FUNCTION_19_10();
            appended = sbufAtom_appendDictionaryAtom(v121, v122, v123, v124);
            CFRelease(v120);
            if (appended)
            {
              goto LABEL_148;
            }
          }
        }

        if (a4)
        {
          OUTLINED_FUNCTION_19_10();
          CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v117, v118, 1935766578, v119);
          v102 = desc;
          if (CFDataFromCaptionGroup)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v101 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 0);
          v102 = desc;
          if (v101)
          {
            v125 = v101;
            OUTLINED_FUNCTION_19_10();
            appended = sbufAtom_appendDictionaryAtom(v126, v127, 1935766578, v128);
            CFRelease(v125);
            if (appended)
            {
              goto LABEL_148;
            }
          }
        }

        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
        if (!SampleAttachmentsArray)
        {
          goto LABEL_174;
        }

        v104 = SampleAttachmentsArray;
        OUTLINED_FUNCTION_39_1();
        v147.duration.epoch = &v141;
        v147.presentationTimeStamp.value = *(&v143 + 1) + *(&v142 + 1);
        CFDataFromCaptionGroup = FigNEAtomWriterBeginAtom(&v147, 1935766137);
        if (!CFDataFromCaptionGroup)
        {
          Count = CFArrayGetCount(v104);
          if (Count >= 1)
          {
            v106 = Count;
            v107 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v104, v107);
              CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(ValueAtIndex, BYTE4(v135) & 2 ^ 3u, 1684628340, &v147);
              if (CFDataFromCaptionGroup)
              {
                goto LABEL_167;
              }
            }

            while (v106 != ++v107);
          }

          CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v147);
          if (!CFDataFromCaptionGroup)
          {
LABEL_174:
            CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v141);
            if (!CFDataFromCaptionGroup)
            {
              if (a9)
              {
                v109 = *(&v143 + 1);
                if (*(&v143 + 1) == 8)
                {
                  v109 = 0;
                }

                *a9 = v109;
              }

              if (a13)
              {
                if (v102)
                {
                  v110 = CFRetain(v102);
                }

                else
                {
                  v110 = 0;
                }

                *a13 = v110;
              }

              if (a14)
              {
                if (v85)
                {
                  v111 = CFRetain(v85);
                }

                else
                {
                  v111 = 0;
                }

                appended = 0;
                *a14 = v111;
              }

              else
              {
                appended = 0;
              }

              goto LABEL_148;
            }
          }
        }

LABEL_167:
        appended = CFDataFromCaptionGroup;
        goto LABEL_148;
      }

      if ((BYTE4(v135) & 4) == 0)
      {
        v147.duration.value = 0;
        if (!v85)
        {
          v99 = 0;
          goto LABEL_108;
        }

        v91 = *(CMBaseObjectGetVTable(v85) + 16);
        if (*v91 < 4uLL || (v92 = v91[13]) == 0 || (IDForCryptorByAssociatingWithClientPID = v92(v85, &v147), IDForCryptorByAssociatingWithClientPID == -12782))
        {
          if (!a12)
          {
LABEL_99:
            appended = 0;
            goto LABEL_120;
          }

          if (!v141)
          {
LABEL_107:
            v99 = 8;
LABEL_108:
            appended = sbufAtom_appendAtomWithMemoryBlock(&v147, v99);
            goto LABEL_120;
          }

          IDForCryptorByAssociatingWithClientPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID(v85, a12, &v147, v86, v87, v88, v89, v90);
          if (IDForCryptorByAssociatingWithClientPID == -17575)
          {
            goto LABEL_99;
          }
        }

        appended = IDForCryptorByAssociatingWithClientPID;
        if (IDForCryptorByAssociatingWithClientPID)
        {
          goto LABEL_120;
        }

        goto LABEL_107;
      }

      v147.duration.value = 0;
      if (v85)
      {
        v94 = *(CMBaseObjectGetVTable(v85) + 16);
        if (*v94 < 8uLL || (v95 = v94[33]) == 0)
        {
          appended = 4294954514;
          goto LABEL_120;
        }

        appended = v95(v85, &v147);
        value = v147.duration.value;
        if (appended)
        {
          goto LABEL_118;
        }

        BytePtr = CFDataGetBytePtr(v147.duration.value);
        Length = CFDataGetLength(v147.duration.value);
      }

      else
      {
        Length = 0;
        BytePtr = 0;
      }

      appended = sbufAtom_appendAtomWithMemoryBlock(BytePtr, Length);
      value = v147.duration.value;
LABEL_118:
      if (value)
      {
        CFRelease(value);
      }

LABEL_120:
      if (appended)
      {
        goto LABEL_148;
      }

      goto LABEL_121;
    }

    v147.duration.value = 0;
    CFDataFromCaptionGroup = sbufAtom_appendNumSamples(a1, &v141);
    v55 = desc;
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CFDataFromCaptionGroup = sbufAtom_appendSampleSizes(a1, 0, &v141, &v147.duration.value);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    if (CMSampleBufferGetNumSamples(a1) < 1 || CMFormatDescriptionGetMediaType(desc) != 1936684398 || v147.duration.value)
    {
      goto LABEL_75;
    }

LABEL_70:
    CFDataFromCaptionGroup = sbufAtom_appendPacketDescriptions(a1, &v141);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    goto LABEL_75;
  }

  v140 = 0;
  OUTLINED_FUNCTION_30_4();
  v55 = desc;
  if (!v65)
  {
    if (!v65 & v64)
    {
      v129 = v68 >= 8 ? v68 : v68 | 0x80;
    }

    else
    {
      v129 = v66 - v67 + 136;
    }

    CFDataFromCaptionGroup = sbufAtom_appendAtomWithMemoryBlock(0, v129);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  v147.duration.value = 0;
  timingArrayEntriesNeededOut[0] = 0;
  DataLength = CMBlockBufferGetDataLength(v30);
  if (!v141 || (CMBlockBufferIsRangeContiguous(v30, 0, DataLength) || (Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v30, *MEMORY[0x1E695E480], 0, 0, DataLength, 1u, &v147), !Contiguous)) && (OUTLINED_FUNCTION_10_7(), Contiguous = CMBlockBufferGetDataPointer(v76, v77, v78, 0, v79), !Contiguous))
  {
    Contiguous = sbufAtom_appendAtomWithMemoryBlock(timingArrayEntriesNeededOut[0], DataLength);
  }

  appended = Contiguous;
  if (v147.duration.value)
  {
    CFRelease(v147.duration.value);
  }

  if (!appended)
  {
    CFDataFromCaptionGroup = sbufAtom_appendNumSamples(a1, &v141);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CFDataFromCaptionGroup = sbufAtom_appendSampleSizes(a1, (HIDWORD(v135) >> 3) & 1, &v141, &v140);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    if (CMFormatDescriptionGetMediaType(desc) != 1936684398 || v140)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

LABEL_148:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  return appended;
}

size_t FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, uint64_t a5, CMBlockBufferRef *a6, CFTypeRef *a7, CFTypeRef *a8, CMBlockBufferRef *a9)
{
  v59 = 0;
  v60 = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1436, v9, v50, v51, a9);
  }

  if (a7)
  {
    otherFormatDescription = *a7;
  }

  else
  {
    otherFormatDescription = 0;
  }

  if (a8)
  {
    v55 = *a8;
  }

  else
  {
    v55 = 0;
  }

  v14 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v14)
  {
    return v14;
  }

  v15 = 0;
  if (a7)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v17 = &v57;
  if (!a8)
  {
    v17 = 0;
  }

  v53 = v17;
  v54 = p_cf;
  v18 = 1;
  do
  {
    v19 = v18;
    if (a4)
    {
      v60 = a4;
      v20 = a4;
    }

    else
    {
      OUTLINED_FUNCTION_13_11();
      v40 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v34, v35, v36, v37, v38, v39, 0, 0, &v60, otherFormatDescription, v55, 0, 0, 0);
      if (v40)
      {
        goto LABEL_46;
      }

      v20 = v60;
      if (!v60)
      {
        goto LABEL_39;
      }
    }

    v15 = MEMORY[0x19A8D7200](a2, v20, 263150083, 0);
    if (!v15)
    {
      break;
    }

    v57 = 0;
    cf = 0;
    OUTLINED_FUNCTION_13_11();
    v28 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v21, v22, v23, v24, v25, v26, v15, v27, &v59, otherFormatDescription, v55, 0, v54, v53);
    v29 = v28;
    if (a7 && !v28)
    {
      v30 = *a7;
      v31 = cf;
      *a7 = cf;
      if (v31)
      {
        CFRetain(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    if (a8 && !v29)
    {
      v32 = *a8;
      v33 = v57;
      *a8 = v57;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (!v29)
    {
      break;
    }

    if (v60)
    {
      CFAllocatorDeallocate(a2, v15);
      v15 = 0;
      v60 = 0;
    }

    if (!a4 || v29 != -19649)
    {
      goto LABEL_47;
    }

LABEL_39:
    a4 = 0;
    v18 = 0;
  }

  while ((v19 & 1) != 0);
  OUTLINED_FUNCTION_13_11();
  v40 = CMBlockBufferCreateWithMemoryBlock(v41, v42, v43, v44, v45, v46, v47, 0, a6);
  v29 = 0;
  if (!v40)
  {
    return v29;
  }

LABEL_46:
  v29 = v40;
LABEL_47:
  if (v15)
  {
    CFAllocatorDeallocate(a2, v15);
  }

  return v29;
}

uint64_t FigRemote_CreateSampleBufferFromSerializedAtomDataAndIOSurfaceArray(mach_port_t *a1, unint64_t a2, void *memoryBlock, size_t blockLength)
{
  HIDWORD(customBlockSource.AllocateBlock) = 0;
  customBlockSource.refCon = 0;
  v45 = 0;
  *&customBlockSource.version = 0;
  customBlockSource.FreeBlock = _bbufBlockSourceFree;
  v8 = *MEMORY[0x1E695E480];
  v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], memoryBlock, blockLength, *MEMORY[0x1E695E480], &customBlockSource, 0, blockLength, 0, &v45);
  if (v9)
  {
LABEL_22:
    SampleBufferFromSerializedAtomBlockBufferAndSurface = v9;
    goto LABEL_16;
  }

  if (a2 <= 1)
  {
    if (a2 == 1 && *a1)
    {
      v10 = IOSurfaceLookupFromMachPort(*a1);
      if (v10)
      {
        v11 = v10;
        OUTLINED_FUNCTION_21_10();
        SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(v12, v13, v14, v15, v16);
        v18 = v11;
        goto LABEL_15;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x16F8, v41, v42, v43, blockBufferOut);
    }

    else
    {
      OUTLINED_FUNCTION_21_10();
      v9 = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(v35, v36, v37, v38, v39);
    }

    goto LABEL_22;
  }

  Mutable = CFArrayCreateMutable(v8, a2, MEMORY[0x1E695E9C0]);
  while (1)
  {
    v21 = *a1++;
    v20 = v21;
    if (v21)
    {
      break;
    }

LABEL_11:
    if (!--a2)
    {
      OUTLINED_FUNCTION_21_10();
      SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray(v24, v25, v26, v27, v28);
      goto LABEL_13;
    }
  }

  v22 = IOSurfaceLookupFromMachPort(v20);
  if (v22)
  {
    v23 = v22;
    CFArrayAppendValue(Mutable, v22);
    CFRelease(v23);
    goto LABEL_11;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_2_20();
  SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1702, v32, v33, v34, blockBufferOut);
LABEL_13:
  SampleBufferFromSerializedAtomBlockBufferAndSurface = SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray;
  if (Mutable)
  {
    v18 = Mutable;
LABEL_15:
    CFRelease(v18);
  }

LABEL_16:
  if (v45)
  {
    CFRelease(v45);
  }

  else
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], memoryBlock, blockLength);
  }

  return SampleBufferFromSerializedAtomBlockBufferAndSurface;
}

uint64_t FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(__IOSurface *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription **a3, const __CFAllocator **a4, CMSampleBufferRef *a5)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    v11 = *MEMORY[0x1E695E480];
    result = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(*MEMORY[0x1E695E480], a1, dataPointerOut, lengthAtOffsetOut, 0, a3, a4, &v18, &v17, &v16, a5);
    if (!result)
    {
      if (v18)
      {
        blockBufferOut = 0;
        result = CMBlockBufferCreateWithBufferReference(v11, theBuffer, v17, v16, 0, &blockBufferOut);
        if (!result)
        {
          CMSampleBufferSetDataBuffer(*a5, blockBufferOut);
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          return CMSampleBufferSetDataReady(*a5);
        }
      }
    }
  }

  return result;
}

size_t FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray(const __CFArray *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription **a3, const __CFAllocator **a4, CMSampleBufferRef *a5)
{
  v57 = 0;
  v55 = 0;
  v56 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v11 = *MEMORY[0x1E695E480];
  v13 = lengthAtOffsetOut;
  v12 = dataPointerOut;
  pixelBufferOut = 0;
  sBufOut = 0;
  v61 = 0;
  sbuf = 0;
  if (!a1 || (Count = CFArrayGetCount(a1), Count <= 0))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1689, v36, v37, v38, v50);
    goto LABEL_19;
  }

  v15 = Count;
  v16 = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(v11, 0, v12, v13, 0, a3, a4, &v57, &v56, &v55, &sbuf);
  if (v16)
  {
LABEL_19:
    v34 = v16;
    v25 = 0;
    Mutable = 0;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(v11, v15, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x169E, v47, v48, v49, v51);
    v25 = 0;
    goto LABEL_20;
  }

  v25 = CFArrayCreateMutable(v11, v15, MEMORY[0x1E695E9C0]);
  if (!v25)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v44 = 4294947655;
    v45 = 5793;
    goto LABEL_41;
  }

  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup(sbuf, v18, v19, v20, v21, v22, v23, v24);
  if (!TaggedBufferGroup)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v44 = 4294947656;
    v45 = 5796;
LABEL_41:
    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v44, "<<<< FigSampleBufferSerialization >>>>", v45, v41, v42, v43, v51);
LABEL_42:
    v34 = v31;
    goto LABEL_20;
  }

  v27 = TaggedBufferGroup;
  for (i = 0; i != v15; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947654;
      v45 = 5800;
      goto LABEL_41;
    }

    CVPixelBufferCreateWithIOSurface(v11, ValueAtIndex, 0, &pixelBufferOut);
    if (!pixelBufferOut)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947655;
      v45 = 5803;
      goto LABEL_41;
    }

    CFArrayAppendValue(Mutable, pixelBufferOut);
    TagCollectionAtIndex = FigTaggedBufferGroupGetTagCollectionAtIndex(v27, i);
    if (!TagCollectionAtIndex)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947656;
      v45 = 5807;
      goto LABEL_41;
    }

    CFArrayAppendValue(v25, TagCollectionAtIndex);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }
  }

  v31 = FigTaggedBufferGroupCreate(v11, v25, Mutable);
  if (v31)
  {
    goto LABEL_42;
  }

  v32 = v61;
  CMSampleBufferGetPresentationTimeStamp(&sbufPTS, sbuf);
  CMSampleBufferGetDuration(&sbufDuration, sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  v34 = CMSampleBufferCreateForTaggedBufferGroup(v11, v32, &sbufPTS, &sbufDuration, FormatDescription, &sBufOut);
  if (!v34)
  {
    *a5 = sBufOut;
    sBufOut = 0;
  }

LABEL_20:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v34 && v57)
  {
    sbufPTS.value = 0;
    DataPointer = CMBlockBufferCreateWithBufferReference(v11, theBuffer, v56, v55, 0, &sbufPTS);
    if (!DataPointer)
    {
      CMSampleBufferSetDataBuffer(*a5, sbufPTS.value);
      if (sbufPTS.value)
      {
        CFRelease(sbufPTS.value);
      }

      return CMSampleBufferSetDataReady(*a5);
    }

    return DataPointer;
  }

  return v34;
}

size_t FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, const opaqueCMFormatDescription **a4, const __CFAllocator **a5, CMSampleBufferRef *a6)
{
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  blockBufferOut = 0;
  v23 = 0;
  OUTLINED_FUNCTION_10_7();
  if (!CMBlockBufferIsRangeContiguous(v12, v13, v14))
  {
    return 4294947653;
  }

  v15 = OUTLINED_FUNCTION_24_6();
  DataPointer = CMBlockBufferGetDataPointer(v15, v16, v17, 0, v18);
  if (DataPointer)
  {
    goto LABEL_8;
  }

  v20 = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(a1, 0, v27, v23, 0, a4, a5, &v26, &v25, &v24, a6);
  if (!v20 && v26)
  {
    DataPointer = CMBlockBufferCreateWithBufferReference(a1, a2, v25 + a3, v24, 0, &blockBufferOut);
    if (!DataPointer)
    {
      DataPointer = CMSampleBufferSetDataBuffer(*a6, blockBufferOut);
      if (!DataPointer)
      {
        DataPointer = CMSampleBufferSetDataReady(*a6);
      }
    }

LABEL_8:
    v20 = DataPointer;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v20;
}

size_t FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, const opaqueCMFormatDescription *a8, CMBlockBufferRef *a9, uint64_t a10, void *a11, int a12)
{
  if (a1)
  {
    result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
    if (!result)
    {
      if (!a7 || (OUTLINED_FUNCTION_13_11(), result = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v17, v18, v19, v20, v21, v22, 0, 0, a7, a8, a10, a12, 0, 0), !result))
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            OUTLINED_FUNCTION_13_11();
            return sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v23, v24, v25, v26, v27, v28, a5, a6, 0, a8, a10, a12, a9, a11);
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x17E8, v12, v30, v31, a9);
  }

  return result;
}

size_t sbufAtom_createSerializedDataForPixelBuffer(void *a1, IOSurfaceRef *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_7_20();
  v37[0] = v10;
  v37[1] = v11;
  v12 = FigNEAtomWriterBeginAtom(v37, 1885500774);
  if (v12)
  {
    return v12;
  }

  v13 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
  if (v13)
  {
    v34 = v13;
    appended = sbufAtom_appendDictionaryAtom(v13, 1, 1767994484, v37);
    CFRelease(v34);
    if (appended)
    {
      return appended;
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (a2)
  {
    *a2 = IOSurface;
  }

  if (!IOSurface)
  {
LABEL_11:
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v12 = sbufAtom_appendAtomWithMemoryBlock(&PixelFormatType, 4uLL);
    if (!v12)
    {
      CVPixelBufferGetWidth(a1);
      OUTLINED_FUNCTION_11_13();
      v12 = sbufAtom_appendAtomWithMemoryBlock(v19, v20);
      if (!v12)
      {
        CVPixelBufferGetHeight(a1);
        OUTLINED_FUNCTION_11_13();
        v12 = sbufAtom_appendAtomWithMemoryBlock(v21, v22);
        if (!v12)
        {
          CVPixelBufferGetBytesPerRow(a1);
          OUTLINED_FUNCTION_11_13();
          v12 = sbufAtom_appendAtomWithMemoryBlock(v23, v24);
          if (!v12)
          {
            CVPixelBufferGetPlaneCount(a1);
            OUTLINED_FUNCTION_11_13();
            v12 = sbufAtom_appendAtomWithMemoryBlock(v25, v26);
            if (!v12)
            {
              OUTLINED_FUNCTION_30_4();
              if (v28 || (!v28 & v27 ? (v31 >= 8 ? (v35 = v31) : (v35 = v31 | 0x80)) : (v35 = v29 - v30 + 136), v12 = sbufAtom_appendAtomWithMemoryBlock(0, v35), !v12))
              {
                CVPixelBufferLockBaseAddress(a1, 0);
                DataSize = CVPixelBufferGetDataSize(a1);
                BaseAddress = CVPixelBufferGetBaseAddress(a1);
                appended = sbufAtom_appendAtomWithMemoryBlock(BaseAddress, DataSize);
                CVPixelBufferUnlockBaseAddress(a1, 0);
                if (appended)
                {
                  return appended;
                }

                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    return v12;
  }

LABEL_7:
  v15 = FigNEAtomWriterEndAtom(v37);
  appended = v15;
  if (a6 && !v15)
  {
    OUTLINED_FUNCTION_15_12();
    *a6 = v17;
  }

  return appended;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v33[0] = 0;
  v31 = 0;
  if (!a2 || (OUTLINED_FUNCTION_36_1(), v7 = CFGetTypeID(v6), v7 != CVPixelBufferGetTypeID()) || !v2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v21, v22, "<<<< FigSampleBufferSerialization >>>>", v23, v24, v25, v26, v27);
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_10:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_40();
  SerializedDataUsingSerializer = sbufAtom_createSerializedDataUsingSerializer(102400, &v31, v33, &v32, &v30, v8, v9, v10, v27, v29, v30, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer_block_invoke, &__block_descriptor_tmp_5_1, v3, v31, 0, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6]);
  v3 = v31;
  if (SerializedDataUsingSerializer)
  {
    v5 = SerializedDataUsingSerializer;
  }

  else
  {
    v5 = v33[0];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(SerializedDataUsingSerializer, v12);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v14, v15, GlobalCFAllocatorFigMalloc, v16, v17, v32, v18, v28);
    OUTLINED_FUNCTION_33_5();
    if (v19)
    {
      v3 = 0;
    }
  }

LABEL_8:
  free(v3);
  return v5;
}

uint64_t figReconstructPixelBufferPlaneInfo(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v39[28] = *MEMORY[0x1E69E9840];
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (a3 > 4)
  {
    return 4294947656;
  }

  v13 = DescriptionWithPixelFormatType;
  result = 4294947656;
  if (8 * a3 > a2 || !v13)
  {
    return result;
  }

  Value = CFDictionaryGetValue(v13, *MEMORY[0x1E69662D8]);
  if (!Value)
  {
    return 4294947656;
  }

  v16 = Value;
  v17 = CFGetTypeID(Value);
  if (v17 != CFArrayGetTypeID() || CFArrayGetCount(v16) < a3)
  {
    return 4294947656;
  }

  __memcpy_chk();
  if (a3)
  {
    v18 = 0;
    key = *MEMORY[0x1E69662C8];
    v30 = *MEMORY[0x1E69662E0];
    for (i = v39; ; i += 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
      v37 = 1;
      valuePtr = 1;
      v21 = CFDictionaryGetValue(ValueAtIndex, key);
      v22 = CFDictionaryGetValue(ValueAtIndex, v30);
      if (v21)
      {
        v23 = v16;
        v24 = a3;
        v25 = CFGetTypeID(v21);
        v26 = v25 == CFNumberGetTypeID();
        a3 = v24;
        v16 = v23;
        if (v26)
        {
          CFNumberGetValue(v21, kCFNumberIntType, &valuePtr);
        }
      }

      if (v22)
      {
        v27 = CFGetTypeID(v22);
        if (v27 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v22, kCFNumberIntType, &v37);
        }
      }

      v28 = bswap32(*(i - 1));
      if (v28 + 4 > a2)
      {
        break;
      }

      *(a7 + 8 * v18) = a1 + v28;
      *(a10 + 8 * v18) = bswap32(*i);
      *(a8 + 8 * v18) = a5 / valuePtr;
      v29 = a6 / v37;
      *(a9 + 8 * v18) = v29;
      if (v28 + *(a10 + 8 * v18) * v29 > a2)
      {
        break;
      }

      if (a3 == ++v18)
      {
        return 0;
      }
    }

    return 4294947656;
  }

  return 0;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v38 = 0;
  v36 = 0;
  if (a2 && a3 && a4)
  {
    OUTLINED_FUNCTION_3_1();
    v34 = v7;
    v35 = v8;
    OUTLINED_FUNCTION_22_8();
    SerializedDataUsingSerializer = sbufAtom_createSerializedDataUsingSerializer(128, v9, v10, v11, &v33, v12, v13, v14, v31, v33, 0x40000000, __FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair_block_invoke, &__block_descriptor_tmp_6_3, v34, v35, v36, 0, v38, v39, v40, v41, v42, vars0, vars8);
    v6 = v36;
    if (SerializedDataUsingSerializer)
    {
      v4 = SerializedDataUsingSerializer;
    }

    else
    {
      v4 = v38;
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(SerializedDataUsingSerializer, v16);
      OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v18, v19, GlobalCFAllocatorFigMalloc, v20, v21, v37, v22, v32);
      OUTLINED_FUNCTION_33_5();
      if (v23)
      {
        v6 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v25, v26, "<<<< FigSampleBufferSerialization >>>>", v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_34_3();
  }

  free(v6);
  return v4;
}

uint64_t FigRemote_CreateKeyValuePairFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v32 = 4294947656;
    v33 = 6973;
LABEL_17:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v32, "<<<< FigSampleBufferSerialization >>>>", v33, v29, v30, v31, a9);
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v32 = 4294947656;
    v33 = 6974;
    goto LABEL_17;
  }

  if (!theBuffer)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v32 = 4294947656;
    v33 = 6975;
    goto LABEL_17;
  }

  if (!CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v32 = 4294947653;
    v33 = 6976;
    goto LABEL_17;
  }

  CMBlockBufferGetDataLength(theBuffer);
  v13 = OUTLINED_FUNCTION_25_6();
  if (!CMBlockBufferIsRangeContiguous(v13, v14, v15))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v32 = 4294947653;
    v33 = 6977;
    goto LABEL_17;
  }

  v16 = OUTLINED_FUNCTION_25_6();
  CMBlockBufferGetDataPointer(v16, v17, v18, 0, v19);
  result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (!result)
  {
    result = OUTLINED_FUNCTION_28_7(result, v21, v22, v23, v24, v25, v26, v27, v40, 0, 0, 0, 0);
    if (!result)
    {
      if (v45 == 1801812342)
      {
        if (v42 >= v44)
        {
          return sbufAtom_copyKeyValuePairFromAtom(a1, v43 + 8, v44 - 8, a3, a4);
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v38 = 4294947652;
        v39 = 6992;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v38 = 4294947651;
        v39 = 6991;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v38, "<<<< FigSampleBufferSerialization >>>>", v39, v35, v36, v37, v41);
    }
  }

  return result;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForCFType(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v34 = 0;
  v32 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v22, v23, "<<<< FigSampleBufferSerialization >>>>", v24, v25, v26, v27, v28);
    goto LABEL_9;
  }

  v3 = a2;
  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_9:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_22_8();
  SerializedDataUsingSerializer = sbufAtom_createSerializedDataUsingSerializer(128, v6, v7, v8, &v31, v9, v10, v11, v28, v30, v31, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForCFType_block_invoke, &__block_descriptor_tmp_7_5, v3, v32, 0, v34, v35, v36, v37, v38, vars0, vars8);
  v3 = v32;
  if (SerializedDataUsingSerializer)
  {
    v5 = SerializedDataUsingSerializer;
  }

  else
  {
    v5 = v34;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(SerializedDataUsingSerializer, v13);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v15, v16, GlobalCFAllocatorFigMalloc, v17, v18, v33, v19, v29);
    OUTLINED_FUNCTION_33_5();
    if (v20)
    {
      v3 = 0;
    }
  }

LABEL_7:
  free(v3);
  return v5;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v33[0] = 0;
  v31 = 0;
  if (!a2 || !a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v6 = OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v21, v22, "<<<< FigSampleBufferSerialization >>>>", v23, v24, v25, v26, v27);
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v6)
  {
LABEL_9:
    v19 = v6;
    v12 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  LODWORD(v30) = a3;
  SerializedDataUsingSerializer = sbufAtom_createSerializedDataUsingSerializer(128, &v31, v33, &v32, &v29, v7, v8, v9, v27, v29, 0x40000000, __FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType_block_invoke, &__block_descriptor_tmp_8_6, a2, v30, v31, 0, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6]);
  v12 = v31;
  if (SerializedDataUsingSerializer)
  {
    v19 = SerializedDataUsingSerializer;
  }

  else
  {
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(SerializedDataUsingSerializer, v11);
    v19 = OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v14, v15, GlobalCFAllocatorFigMalloc, v16, v17, v32, v18, v28);
    if (!v19)
    {
      v12 = 0;
    }
  }

LABEL_7:
  free(v12);
  return v19;
}

uint64_t sbufAtom_createSerializedDataWithFlagsForCFType(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_7_20();
  v18[0] = v7;
  v18[1] = v8;
  appended = sbufAtom_appendCFTypeAtom(v9, v10, v18);
  v12 = appended;
  if (appended != -19649 && a5 != 0 && appended == 0)
  {
    v15 = v19;
    *a5 = v19;
    if (v15 == 8)
    {
      if (!a1 || (v16 = CFGetTypeID(a1), v16 != CFNullGetTypeID()))
      {
        *a5 = 0;
      }
    }
  }

  return v12;
}

void sbufAtom_copyCFTypeFromAtom(CFAllocatorRef allocator, int a2, CFAbsoluteTime *a3, unint64_t a4, CMFormatDescriptionRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  plist[1] = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1651862646:
      if (!a5 || a4 != 1)
      {
        return;
      }

      v43 = MEMORY[0x1E695E4D0];
      if (!*a3)
      {
        v43 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_40;
    case 1668051571:
      plist[0] = 0;
      if (a5)
      {
        v44 = OUTLINED_FUNCTION_9_16();
        v47 = CFDataCreate(v44, v45, v46);
        if (v47)
        {
          v48 = v47;
          BytePtr = CFDataGetBytePtr(v47);
          Length = CFDataGetLength(v48);
          if (!FigCreateCFPropertyListFromData(BytePtr, Length, *MEMORY[0x1E695E480], plist))
          {
            v51 = plist[0];
            if (plist[0])
            {
              v51 = CGColorSpaceCreateWithPropertyList(plist[0]);
            }

            *a5 = v51;
          }

          CFRelease(v48);
          if (plist[0])
          {
            CFRelease(plist[0]);
          }
        }

        else
        {
          *a5 = 0;
        }
      }

      return;
    case 1684108406:
      if (!a5)
      {
        return;
      }

      v52 = OUTLINED_FUNCTION_9_16();
      v34 = CFDataCreate(v52, v53, v54);
      goto LABEL_46;
    case 1685349750:
      if (!a5 || a4 != 8)
      {
        return;
      }

      v34 = CFDateCreate(allocator, *a3);
LABEL_46:
      *a5 = v34;
      return;
    case 1852662390:
      if (!a5 || !a4)
      {
        return;
      }

      if (a4 >= 0xA)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v78 = 4294947652;
        v79 = 3801;
      }

      else
      {
        v55 = *a3;
        if ((v55 - 18) > 0xFFFFFFEE)
        {
          __memcpy_chk();
          v34 = CFNumberCreate(*MEMORY[0x1E695E480], v55, plist);
          goto LABEL_46;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v78 = 4294947650;
        v79 = 3804;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v78, "<<<< FigSampleBufferSerialization >>>>", v79, v75, v76, v77, plist[0]);
      return;
    case 1853189228:
      v43 = MEMORY[0x1E695E738];
LABEL_40:
      v34 = CFRetain(*v43);
      goto LABEL_46;
    case 1937011318:
      if (!a5)
      {
        return;
      }

      v35 = OUTLINED_FUNCTION_9_16();
      v34 = CFStringCreateWithBytes(v35, v36, v37, 0x8000100u, 0);
      goto LABEL_46;
    case 1970433142:
      if (!a5)
      {
        return;
      }

      v38 = OUTLINED_FUNCTION_9_16();
      v41 = CFStringCreateWithBytes(v38, v39, v40, 0x8000100u, 0);
      if (v41)
      {
        v42 = v41;
        *a5 = CFURLCreateWithString(allocator, v41, 0);
        CFRelease(v42);
        return;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v30 = v24;
      v31 = emitter;
      v32 = 4294947655;
      v33 = 3908;
      goto LABEL_13;
    case 1717859171:
      v63 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyFormatDescriptionFromAtom(v63, v64, v65, a5);
      break;
    case 1684628340:
      v56 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyDictionaryFromAtom(v56, v57, v58, a5, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      break;
    case 1634886009:
      v66 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyArrayFromAtom(v66, v67, v68, a5, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      break;
    default:
      v27 = fig_log_get_emitter("com.apple.coremedia", "");
      v30 = v24;
      v31 = v27;
      v32 = 4294947651;
      v33 = 4164;
LABEL_13:

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, "<<<< FigSampleBufferSerialization >>>>", v33, v30, v28, v29, a9);
      return;
  }
}

size_t FigRemote_WriteSerializedAtomDataForCFType(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 4294947656;
  }

  result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (!result)
  {

    return sbufAtom_createSerializedDataWithFlagsForCFType(a1, a2, a3, a4, a5);
  }

  return result;
}

size_t sbufAtom_appendFormatDescriptionAtomGuts(const opaqueCMFormatDescription *a1, uint64_t *a2)
{
  Dimensions = 0;
  MediaSubType = 0;
  v72 = 0;
  sizeOut = 0;
  v71 = 0;
  HIDWORD(v70) = 0;
  memset(&v69, 0, sizeof(v69));
  theArray = 0;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  appended = sbufAtom_appendAtomWithMemoryBlock(&MediaType, 4uLL);
  if (appended)
  {
    goto LABEL_61;
  }

  switch(MediaType)
  {
    case 0x61757876u:
      goto LABEL_28;
    case 0x636C6370u:
      goto LABEL_30;
    case 0x63706772u:
      HIDWORD(v71) = CMFormatDescriptionGetMediaSubType(a1);
      p_MediaSubType = &v71 + 1;
      v11 = 4;
      goto LABEL_54;
  }

  v5 = MediaType == 1751216244 || MediaType == 1835365473;
  if (v5 || MediaType == 1868854125)
  {
    goto LABEL_30;
  }

  if (MediaType == 1885564004)
  {
    goto LABEL_42;
  }

  if (MediaType == 1986618469)
  {
LABEL_28:
    Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    appended = sbufAtom_appendAtomWithMemoryBlock(&Dimensions, 8uLL);
    if (appended)
    {
      goto LABEL_61;
    }

    p_MediaSubType = &MediaSubType;
    v11 = 4;
LABEL_54:
    appended = sbufAtom_appendAtomWithMemoryBlock(p_MediaSubType, v11);
    if (!appended)
    {
      goto LABEL_55;
    }

LABEL_61:
    v38 = appended;
    goto LABEL_57;
  }

  if (MediaType != 1935832172 && MediaType != 1935893870 && MediaType != 1935962989)
  {
    if (MediaType == 1936684398)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
      ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a1, &sizeOut);
      MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &v72);
      appended = sbufAtom_appendAtomWithMemoryBlock(StreamBasicDescription, 0x28uLL);
      if (appended)
      {
        goto LABEL_61;
      }

      if (ChannelLayout)
      {
        if (sizeOut)
        {
          appended = sbufAtom_appendAtomWithMemoryBlock(ChannelLayout, sizeOut);
          if (appended)
          {
            goto LABEL_61;
          }
        }
      }

      if (!MagicCookie)
      {
        goto LABEL_55;
      }

      v11 = v72;
      if (!v72)
      {
        goto LABEL_55;
      }

      p_MediaSubType = MagicCookie;
      goto LABEL_54;
    }

    if (MediaType != 1952606066 && MediaType != 1952807028)
    {
      if (MediaType == 1953325924)
      {
        HIDWORD(v71) = CMFormatDescriptionGetMediaSubType(a1);
        LODWORD(v71) = CMTimeCodeFormatDescriptionGetTimeCodeFlags(a1);
        HIDWORD(v70) = CMTimeCodeFormatDescriptionGetFrameQuanta(a1);
        FrameDuration = CMTimeCodeFormatDescriptionGetFrameDuration(&v69, a1);
        v55 = OUTLINED_FUNCTION_18_10(FrameDuration, v48, v49, v50, v51, v52, v53, v54, v66, 0, v69.value, *&v69.timescale, v69.epoch, v70, v71, SBYTE4(v71));
        appended = sbufAtom_appendAtomWithMemoryBlock(v55, v56);
        if (appended)
        {
          goto LABEL_61;
        }

        appended = sbufAtom_appendAtomWithMemoryBlock(&v71, 4uLL);
        if (appended)
        {
          goto LABEL_61;
        }

        appended = sbufAtom_appendAtomWithMemoryBlock(&v70 + 4, 4uLL);
        if (appended)
        {
          goto LABEL_61;
        }

        p_MediaSubType = &v69;
        v11 = 24;
        goto LABEL_54;
      }

      if (MediaType == 1885954932)
      {
        goto LABEL_28;
      }

LABEL_42:
      v39 = CMFormatDescriptionGetMediaSubType(a1);
      p_MediaSubType = OUTLINED_FUNCTION_18_10(v39, v40, v41, v42, v43, v44, v45, v46, v66, 0, v69.value, *&v69.timescale, v69.epoch, v70, v71, v39);
      goto LABEL_54;
    }
  }

LABEL_30:
  v12 = CMFormatDescriptionGetMediaSubType(a1);
  v20 = OUTLINED_FUNCTION_18_10(v12, v13, v14, v15, v16, v17, v18, v19, v66, 0, v69.value, *&v69.timescale, v69.epoch, v70, v71, v12);
  appended = sbufAtom_appendAtomWithMemoryBlock(v20, v21);
  if (appended)
  {
    goto LABEL_61;
  }

  if (MediaType != 1952606066)
  {
LABEL_55:
    Extensions = CMFormatDescriptionGetExtensions(a1);
    if (!Extensions)
    {
      v38 = 0;
      goto LABEL_57;
    }

    appended = sbufAtom_appendDictionaryAtom(Extensions, 1, 1702392942, a2);
    goto LABEL_61;
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = OUTLINED_FUNCTION_24_6();
  FigTaggedBufferGroupFormatDescriptionCopyTagCollections(v23, v24, v25, v26, v27, v28, v29, v30);
  if (!theArray)
  {
    Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_37;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v22, Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
LABEL_37:
    v37 = sbufAtom_appendArrayAtom(Mutable, 1, 1952932705, a2);
    goto LABEL_38;
  }

  v33 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v33);
    v35 = FigTagCollectionCopyAsData(ValueAtIndex, v22);
    if (!v35)
    {
      break;
    }

    v36 = v35;
    CFArrayAppendValue(Mutable, v35);
    CFRelease(v36);
    if (Count == ++v33)
    {
      goto LABEL_37;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB78, v63, v64, v65, v67);
LABEL_38:
  v38 = v37;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v38)
  {
    goto LABEL_55;
  }

LABEL_57:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v38;
}

size_t sbufAtom_appendAtomWithMemoryBlock(const void *a1, size_t a2)
{
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_32_5();
  v9 = v4;
  v10 = v5;
  result = FigNEAtomWriterBeginAtom(&v8, v6);
  if (!result)
  {
    result = FigNEAtomWriterAppendData(&v8, a1, a2);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(&v8);
    }
  }

  return result;
}

size_t sbufAtom_appendDictionaryAtom(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38_1();
  Count = CFDictionaryGetCount(v8);
  v10 = Count;
  if ((a2 & 2) != 0 || Count >= 1)
  {
    v29[4] = 0;
    v29[5] = 0;
    v30 = 0;
    v14 = *(a4 + 8);
    v29[0] = *a4;
    v29[1] = v14;
    v15 = (*(a4 + 40) + *(a4 + 24));
    v29[2] = a4;
    v29[3] = v15;
    v16 = FigNEAtomWriterBeginAtom(v29, a3);
    if (v16)
    {
      v13 = v16;
      v11 = 0;
      v12 = 0;
      goto LABEL_22;
    }

    if (v10 < 1)
    {
      v11 = 0;
      v12 = 0;
LABEL_17:
      appended = FigNEAtomWriterEndAtom(v29);
      goto LABEL_21;
    }

    v11 = 0;
    if (v10 >> 61)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      if (8 * v10)
      {
        v11 = malloc_type_malloc(8 * v10, 0xC0040B8AA526DuLL);
        v17 = malloc_type_malloc(8 * v10, 0xC0040B8AA526DuLL);
        v12 = v17;
        if (v11)
        {
          if (v17)
          {
            CFDictionaryGetKeysAndValues(a1, v11, v17);
            v18 = 0;
            while (1)
            {
              v19 = v11[v18];
              if (!v19)
              {
                break;
              }

              v20 = CFGetTypeID(v11[v18]);
              if (v20 != CFStringGetTypeID())
              {
                break;
              }

              appended = sbufAtom_appendKeyValuePairAtom(v19, a2, v12[v18]);
              if (appended)
              {
                goto LABEL_21;
              }

              if (v10 == ++v18)
              {
                goto LABEL_17;
              }
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            v26 = 4294947656;
            v27 = 2473;
            goto LABEL_20;
          }
        }
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v26 = 4294947655;
    v27 = 2467;
LABEL_20:
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v26, "<<<< FigSampleBufferSerialization >>>>", v27, v23, v24, v25, v29[0]);
LABEL_21:
    v13 = appended;
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_22:
  free(v11);
  free(v12);
  return v13;
}

size_t sbufAtom_appendArrayAtom(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  OUTLINED_FUNCTION_32_5();
  v9 = a4[1];
  v16[0] = *a4;
  v16[1] = v9;
  v10 = a4[5] + a4[3];
  v16[2] = a4;
  v16[3] = v10;
  result = FigNEAtomWriterBeginAtom(v16, a3);
  if (!result)
  {
    v12 = 0;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_24_6();
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
      result = sbufAtom_appendCFTypeAtom(ValueAtIndex, a2, v16);
      if (result)
      {
        break;
      }

      if (v8 == ++v12)
      {
        return FigNEAtomWriterEndAtom(v16);
      }
    }
  }

  return result;
}

size_t sbufAtom_appendFormatDescriptionAtom(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_32_5();
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  v4 = v2[5] + v2[3];
  v6[2] = v2;
  v6[3] = v4;
  result = OUTLINED_FUNCTION_40_1(v6);
  if (!result)
  {
    result = sbufAtom_appendFormatDescriptionAtomGuts(a1, v6);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(v6);
    }
  }

  return result;
}

size_t sbufAtom_appendKeyValuePairAtom(const __CFString *a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_26_7();
  v9 = 0;
  OUTLINED_FUNCTION_32_5();
  v10[2] = v6;
  v10[3] = v7;
  result = FigNEAtomWriterBeginAtom(v10, 1801812342);
  if (!result)
  {
    if ((a2 & 1) != 0 && CFDictionaryGetValueIfPresent(sKnownSBufKeysDictionary, a1, &v9) && v9 != -1)
    {
      v11 = v9;
      result = sbufAtom_appendAtomWithMemoryBlock(&v11, 2uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sbufAtom_appendStringAtom(a1, 1937011307, v10);
      if (result)
      {
        return result;
      }
    }

    result = sbufAtom_appendCFTypeAtom(a3, a2, v10);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(v10);
    }
  }

  return result;
}

void sbufAtom_copyDictionaryFromAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *a9, void *value, void *key, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_8();
  a23 = v26;
  a24 = v28;
  if (v27)
  {
    v29 = v27;
    OUTLINED_FUNCTION_36_1();
    v31 = v30;
    a12 = 0;
    v32 = 0;
    if (v33)
    {
      v34 = 0;
      while (!figReadNEAtomHeader(v25, v34, v24, &a12 + 1, &a12))
      {
        if (HIDWORD(a12) != 1801812342)
        {
          goto LABEL_24;
        }

        ++v32;
        v34 += a12;
        if (v34 >= v24)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_22;
    }

LABEL_7:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v32, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v36 = Mutable;
      if (v32 && v24)
      {
        v37 = 0;
        while (1)
        {
          value = 0;
          key = 0;
          if (figReadNEAtomHeader(v25, v37, v24, &a12 + 1, &a12))
          {
            break;
          }

          v38 = a12;
          v39 = sbufAtom_copyKeyValuePairFromAtom(v31, v25 + 8 + v37, a12 - 8, &key, &value);
          v40 = key;
          if (key && value && !v39)
          {
            CFDictionaryAddValue(v36, key, value);
            v40 = key;
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (value)
          {
            CFRelease(value);
          }

          v37 += v38;
          if (v37 >= v24)
          {
            goto LABEL_21;
          }
        }

        CFRelease(v36);
      }

      else
      {
LABEL_21:
        *v29 = v36;
      }

LABEL_22:
      OUTLINED_FUNCTION_20_9();
      return;
    }
  }

LABEL_24:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_20_9();

  FigSignalErrorAtGM(v41, v42, v43, v44, v45, v46, v47, v48, a9);
}

size_t sbufAtom_appendSampleSizes(opaqueCMSampleBuffer *a1, int a2, void *a3, CMItemCount *a4)
{
  DataLength = 0;
  sizeArrayEntriesNeededOut = 0;
  OUTLINED_FUNCTION_10_7();
  SampleSizeArray = CMSampleBufferGetSampleSizeArray(v8, v9, v10, v11);
  v13 = SampleSizeArray;
  if (SampleSizeArray != -12735)
  {
    if (SampleSizeArray)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v13, "<<<< FigSampleBufferSerialization >>>>", 0x575, v24, v25, v26, DataLength);
      goto LABEL_32;
    }

LABEL_17:
    v22 = sizeArrayEntriesNeededOut;
    if (a4)
    {
      *a4 = sizeArrayEntriesNeededOut;
    }

    if (v22 && *a3)
    {
      if (v13 != -12735)
      {
        v27 = CMSampleBufferGetSampleSizeArray(a1, 1, &DataLength, &sizeArrayEntriesNeededOut);
        if (v27)
        {
          appended = v27;
          goto LABEL_26;
        }
      }

      if (sizeArrayEntriesNeededOut)
      {
        if (sizeArrayEntriesNeededOut < 0)
        {
          goto LABEL_31;
        }

        if (sizeArrayEntriesNeededOut >> 62)
        {
          goto LABEL_31;
        }

        v28 = 4 * sizeArrayEntriesNeededOut;
        if (!(4 * sizeArrayEntriesNeededOut))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v28 = 0;
      }

      v33 = malloc_type_malloc(v28, 0x100004052888210uLL);
      if (!v33)
      {
LABEL_31:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x590, v30, v31, v32, DataLength);
LABEL_32:
        v17 = 0;
        goto LABEL_41;
      }

      v17 = v33;
      v22 = sizeArrayEntriesNeededOut;
      if (sizeArrayEntriesNeededOut >= 1)
      {
        v34 = 0;
        do
        {
          *(v33 + v34) = (&DataLength)[v34];
          ++v34;
        }

        while (v22 != v34);
      }
    }

    else
    {
      v17 = 0;
    }

    appended = sbufAtom_appendAtomWithMemoryBlock(v17, 4 * v22);
    goto LABEL_41;
  }

  if (!a2)
  {
LABEL_23:
    v17 = 0;
    appended = 0;
    goto LABEL_41;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  NumSamples = CMSampleBufferGetNumSamples(a1);
  appended = 0;
  if (!DataBuffer)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_41;
  }

  v17 = 0;
  if (NumSamples == 1)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    if (!FormatDescription)
    {
      goto LABEL_23;
    }

    MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    v20 = MediaType == 1635088502 || MediaType == 1986618469;
    if (!v20 && MediaType != 1885954932)
    {
      goto LABEL_23;
    }

    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    sizeArrayEntriesNeededOut = 1;
    if (sbufAtom_appendSampleSizes_sSBufAtomAppendSampleSizes_MissingSampleSizeForVideo_InitOnce != -1)
    {
      dispatch_once_f(&sbufAtom_appendSampleSizes_sSBufAtomAppendSampleSizes_MissingSampleSizeForVideo_InitOnce, 0, sbufAtomAppendSampleSizes_MissingSampleSizes_LogOnce);
    }

    goto LABEL_17;
  }

LABEL_41:
  free(0);
  free(v17);
  return appended;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1235, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1247, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1236, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x122B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1225, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1224, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1223, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figReadNEAtomHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x45C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figReadNEAtomHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x458, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1330, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBufferWithOptions_cold_1(const __CFArray *a1, uint64_t *a2, const __CFArray **a3)
{
  result = CFArrayGetCount(a1);
  if (a2)
  {
    if (result >= 1)
    {
      result = FigCFArrayGetFirstValue(*a3);
      *a2 = result;
    }
  }

  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14E5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  return sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_3(v1);
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1531, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1522, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1520, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1514, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1509, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1504, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14FE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14F9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15CD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15BF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1610, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1605, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1619, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1617, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0xEA3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xEA7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15E1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_20(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14E6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_21(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_22(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_23(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_24(const void **a1, CFMutableArrayRef theArray)
{
  CFArrayAppendValue(theArray, *a1);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x19EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_1(size_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, a1, "<<<< FigSampleBufferSerialization >>>>", 0x1A5B, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A14, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB345uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A60, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1944, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x196F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x196B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1967, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1963, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x195F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1945, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_1(size_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, a1, "<<<< FigSampleBufferSerialization >>>>", 0x1AD7, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A8E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB345uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1ADE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1069, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x105A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1059, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigNEAtomWriterBeginAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB340uLL, "<<<< FigSampleBufferSerialization >>>>", 0x3DD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigNEAtomWriterAppendData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB341uLL, "<<<< FigSampleBufferSerialization >>>>", 0x3F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendStringAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x85E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendDataAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8A4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendURLAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8E2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendURLAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8DF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendPacketDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x5B0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xBB5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB91, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB5C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB59, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB55, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB52, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupFormatDescriptionCreateForTaggedBufferGroupWithExtensions(const __CFAllocator *a1, OpaqueCMTaggedBufferGroup *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v30 = v4;
    v31 = 4294954516;
    v32 = 202;
LABEL_13:
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v31, "(Fig)", v32, v30, v28, v29, v33);
    goto LABEL_14;
  }

  FigThreadRunOnce(&sFigTaggedBufferGroupFormatDescriptionRegisterOnce, FigTaggedBufferGroupFormatDescriptionRegisterOnce);
  v12 = FigDerivedFormatDescriptionCreate(a1, 0x74626772, 1952606066, a3, &cf, v9, v10, v11, v33);
  if (v12)
  {
LABEL_14:
    v25 = v12;
    goto LABEL_8;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v13, v14, v15, v16, v17, v18, v19);
  *DerivedStorage = 1952606066;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v30 = v4;
    v31 = 4294954510;
    v32 = 213;
    goto LABEL_13;
  }

  v22 = Mutable;
  if (CMTaggedBufferGroupGetCount(a2) >= 1)
  {
    v23 = 0;
    do
    {
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a2, v23);
      CFArrayAppendValue(v22, TagCollectionAtIndex);
      ++v23;
    }

    while (v23 < CMTaggedBufferGroupGetCount(a2));
  }

  *(DerivedStorage + 8) = CFRetain(v22);
  *a4 = cf;
  cf = 0;
  CFRelease(v22);
  v25 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

size_t FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0xA3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x9C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupFormatDescriptionMatchesTaggedBufferGroup_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE0EuLL, "(Fig)", 0xFB, v10, v11, v12, a9);
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x115, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x114, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x113, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t HandleEndpointRemoteControlSessionRemoteMessage(_xpc_connection_s *a1, void *a2)
{
  v35 = 0;
  v34 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v35);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  cf = 0;
  v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v34);
  if (!v7)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == FigEndpointRemoteControlSessionGetTypeID(v8, v9))
      {
        v10 = cf;
        goto LABEL_6;
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBEAuLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0xBC, v2, v28, v29, v33);
  }

  v25 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v25)
  {
    v10 = 0;
LABEL_6:
    switch(v35)
    {
      case 1667593832:
        v13 = *(*(CMBaseObjectGetVTable(v10) + 16) + 16);
        if (!v13)
        {
          goto LABEL_30;
        }

        v15 = v10;
        v14 = 0;
        v16 = 0;
        break;
      case 1953653870:
        v17 = *(*(CMBaseObjectGetVTable(v10) + 16) + 24);
        if (v17)
        {
LABEL_16:
          v11 = v17(v10);
LABEL_29:
          v25 = v11;
          goto LABEL_35;
        }

LABEL_30:
        v25 = 4294954514;
LABEL_35:
        if (v10)
        {
          CFRelease(v10);
        }

        return v25;
      case 1936029288:
        v12 = v34;
        *(v12 + 24) = xpc_dictionary_get_uint64(a2, ".objectID");
        FigXPCRelease(*(v12 + 32));
        *(v12 + 32) = FigXPCRetain(a1);
        v13 = *(*(CMBaseObjectGetVTable(v10) + 16) + 16);
        if (!v13)
        {
          goto LABEL_30;
        }

        v14 = HandleEventCallback_0;
        v15 = v10;
        v16 = v12;
        break;
      case 1936614509:
        cf = 0;
        v18 = FigXPCMessageCopyCFData(a2, "Params", &cf);
        if (v18)
        {
          goto LABEL_22;
        }

        v19 = xpc_dictionary_get_uint64(a2, "CompletionID");
        if (v19)
        {
          v20 = v19;
          v21 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
          if (v21)
          {
            v22 = v21;
            *v21 = v20;
            v21[1] = xpc_dictionary_get_uint64(a2, ".objectID");
            v22[2] = FigXPCRetain(a1);
            v23 = cf;
            v24 = *(*(CMBaseObjectGetVTable(v10) + 16) + 8);
            if (v24)
            {
              v18 = v24(v10, v23, SendMessageCompletionCallback, v22);
LABEL_22:
              v25 = v18;
              goto LABEL_33;
            }

            v25 = 4294954514;
          }

          else
          {
            v30 = fig_log_get_emitter("com.apple.coremedia", "");
            v25 = 4294949865;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFBBE9uLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0xDA, v2, v31, v32, v33);
          }
        }

        else
        {
          v25 = 4294949865;
        }

LABEL_33:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_35;
      case 1937011316:
        v17 = *(*(CMBaseObjectGetVTable(v10) + 16) + 32);
        if (v17)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      case 1685024621:
        v11 = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
        goto LABEL_29;
      default:
        v25 = 4294949866;
        goto LABEL_35;
    }

    v11 = v13(v15, v14, v16);
    goto LABEL_29;
  }

  return v25;
}

void SendMessageCompletionCallback(int a1, void *a2, uint64_t a3)
{
  xdict = 0;
  if (a3 && !FigXPCCreateBasicMessage(0x63616C62u, *(a3 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a3);
    xpc_dictionary_set_int64(xdict, "ResponseStatus", a1);
    FigXPCMessageSetCFObject(xdict, "ResponseParams", a2);
    xpc_connection_send_message(*(a3 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(xdict);
}

void HandleEventCallback_0(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  message = 0;
  if (a4)
  {
    v7 = FigXPCCreateBasicMessage(0x65686362u, *(a4 + 24), &message);
    v8 = message;
    if (!v7)
    {
      FigXPCMessageSetCFString(message, "EventType", a2);
      FigXPCMessageSetCFData(message, "EventPayload", a3);
      xpc_connection_send_message(*(a4 + 32), message);
      v8 = message;
    }
  }

  else
  {
    v8 = 0;
  }

  FigXPCRelease(v8);
}

size_t CreateSessionEventHandlerState_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0x1B2, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigCommonMemoryPoolReleaseAndClear(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

size_t figCustomURLHandlerServer_handleRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v88[16] = *MEMORY[0x1E69E9840];
  v82 = 0;
  v80 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v82);
  if (OpCode)
  {
    goto LABEL_61;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v80);
  if (OpCode)
  {
    goto LABEL_61;
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigCustomURLHandlerGetTypeID()))
  {
    OUTLINED_FUNCTION_0_74();
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x2E9, v58, v59, v60, v78);
LABEL_61:
    v34 = OpCode;
    goto LABEL_57;
  }

  if (!*v80)
  {
    OpCode = FigCustomURLHandlerServerRequestingClientCreate(a1, uint64, v80);
    if (OpCode)
    {
      goto LABEL_61;
    }
  }

  if (v82 == 1667778642)
  {
    v11 = v80;
    v10 = cf;
    v79 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
    *type = 0;
    v84 = 0;
    MutableCopy = FigXPCMessageCopyCFDictionary(a2, "CustomURLHandler_RequestInfo", &v84);
    v18 = MEMORY[0x1E695E480];
    if (!MutableCopy)
    {
      if (v84)
      {
        v19 = *MEMORY[0x1E695E480];
        MutableCopy = FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], v84, type, v13, v14, v15, v16, v17);
        if (!MutableCopy)
        {
          v20 = v11[2];
          if (v20)
          {
            v21 = FigCFWeakReferenceHolderCopyReferencedObject(v20);
          }

          else
          {
            v21 = 0;
          }

          v27 = *type;
          v88[0] = 0;
          *v85 = 0;
          CryptorID = FigCustomURLRequestInfoGetCryptorID(*type, v85);
          if (CryptorID == -17360)
          {
            v34 = 0;
          }

          else
          {
            v34 = CryptorID;
            if (!CryptorID)
            {
              v35 = FigCPECryptorRemoteRetainCopiedCryptor(v19, *v85, v88, v29, v30, v31, v32, v33, v78);
              if (v35)
              {
                v34 = v35;
                OUTLINED_FUNCTION_0_74();
                v76 = v34;
                v77 = 470;
              }

              else
              {
                v36 = FigCustomURLRequestInfoSetCryptor(v27, v88[0]);
                if (v36)
                {
                  v34 = v36;
                  OUTLINED_FUNCTION_0_74();
                  v76 = v34;
                  v77 = 473;
                }

                else
                {
                  v34 = FigCustomURLRequestInfoSetCryptorID(v27, 0, v37, v38, v39, v40, v41, v42);
                  if (!v34)
                  {
                    goto LABEL_26;
                  }

                  OUTLINED_FUNCTION_0_74();
                  v76 = v34;
                  v77 = 476;
                }
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v76, "<< CustomURLHandlerServerXPC >>", v77, v73, v74, v75, v78);
            }
          }

LABEL_26:
          if (v88[0])
          {
            CFRelease(v88[0]);
          }

          if (!v34)
          {
            v34 = FigCustomURLRequestInfoDeserializeNSSecureCodingTypes(*type);
            if (!v34)
            {
              v43 = *type;
              *type = 0;
              if (!v21)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }
          }

          v43 = 0;
          if (v21)
          {
LABEL_31:
            CFRelease(v21);
          }

LABEL_32:
          if (v84)
          {
            CFRelease(v84);
          }

          if (*type)
          {
            CFRelease(*type);
          }

          if (v34 == -17378)
          {
            v44 = 0;
LABEL_50:
            xpc_dictionary_set_BOOL(a3, "CustomURLHandler_CanHandleResult", v44 != 0);
LABEL_51:
            v34 = 0;
            goto LABEL_52;
          }

          if (v34)
          {
            goto LABEL_52;
          }

          v45 = *v11;
          if (!*v11)
          {
            goto LABEL_51;
          }

          v46 = _MergedGlobals_56;
          if (qword_1ED4CCE98 != -1)
          {
            dispatch_once_f(&qword_1ED4CCE98, &qword_1ED4CCEA0, handlerServerShimCompletionRec_initializeCFAllocatorOnce);
          }

          v47 = qword_1ED4CCEA0;
          if (!qword_1ED4CCEA0)
          {
            OUTLINED_FUNCTION_0_74();
            v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0x24B, v66, v67, v68, v78);
            if (v34)
            {
              goto LABEL_52;
            }
          }

          v48 = malloc_type_calloc(1uLL, 0x10uLL, 0x102004075F474C6uLL);
          if (v48)
          {
            v51 = v48;
            v52 = CFDataCreateWithBytesNoCopy(*v18, v48, 16, v47);
            if (v52)
            {
              v53 = v52;
              *v51 = dispatch_semaphore_create(0);
              v51[8] = 0;
              *(v51 + 3) = 0;
              v54 = *(*(CMBaseObjectGetVTable(v10) + 16) + 32);
              if (v54)
              {
                v55 = v54(v10, v43, v79, v45, v46, figCustomURLHandlerServer_shimDataCallback, figCustomURLHandlerServer_handleRequestShimCompletionHandler, v53);
                if (v55)
                {
                  v34 = v55;
                  v44 = 0;
                }

                else
                {
                  dispatch_semaphore_wait(*v51, 0xFFFFFFFFFFFFFFFFLL);
                  v44 = v51[8];
                  v34 = *(v51 + 3);
                }
              }

              else
              {
                v44 = 0;
                v34 = 4294954514;
              }

              CFRelease(v53);
              if (!v34)
              {
                goto LABEL_50;
              }

              goto LABEL_52;
            }

            free(v51);
            v69 = qword_1ED4CC358;
            v70 = v3;
            v71 = 624;
          }

          else
          {
            v69 = qword_1ED4CC358;
            v70 = v3;
            v71 = 621;
          }

          v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", v71, v70, v49, v50, v78);
          v44 = 0;
          if (!v34)
          {
            goto LABEL_50;
          }

LABEL_52:
          if (v43)
          {
            CFRelease(v43);
          }

          goto LABEL_57;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_74();
        MutableCopy = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x20B, v62, v63, v64, v78);
      }
    }

    v34 = MutableCopy;
    v43 = 0;
    goto LABEL_32;
  }

  if (dword_1ED4CC360)
  {
    LODWORD(v84) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC358, 1, &v84, type);
    v23 = v84;
    v24 = type[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      *v85 = 136315394;
      *&v85[4] = "figCustomURLHandlerServer_handleRemoteMessage";
      v86 = 1024;
      v87 = v82;
      v26 = _os_log_send_and_compose_impl(v25, 0, v88, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v24, "<< CustomURLHandlerServerXPC >> %s: Unexpected opcode: %x", v85, 18);
      LOBYTE(v23) = v84;
    }

    else
    {
      v26 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC358, 1, 1, v26, v26 != v88, v23);
  }

  v34 = 0;
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  return v34;
}

uint64_t figCustomURLHandlerServer_handleRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v18 = 0;
  v16 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v18);
  if (OpCode)
  {
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v16);
  if (OpCode)
  {
    goto LABEL_12;
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigCustomURLHandlerGetTypeID()))
  {
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x2BE, v2, v7, v8, v15);
    goto LABEL_12;
  }

  if (!*v16)
  {
    OpCode = FigCustomURLHandlerServerRequestingClientCreate(a1, uint64, v16);
    if (OpCode)
    {
      goto LABEL_12;
    }
  }

  if (v18 == 1667777641)
  {
    OpCode = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
    goto LABEL_12;
  }

  if (v18 == 1667777362)
  {
    v10 = cf;
    v11 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
    v12 = *(*(CMBaseObjectGetVTable(v10) + 16) + 40);
    if (v12)
    {
      OpCode = v12(v10, v11);
LABEL_12:
      v13 = OpCode;
      goto LABEL_15;
    }

    v13 = 4294954514;
  }

  else
  {
    v13 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t handlerServerShimCompletionRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(handlerServerShimCompletionRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

size_t FigCustomURLHandlerServerAssociateObjectAndContentKeySessionByPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0x342, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerServerRequestingClientCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0xB2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCreateCFDataFromCaptionGroup(uint64_t a1, uint64_t a2, CFMutableDataRef *a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v121 = 2178;
LABEL_80:
    Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v121, v118, v119, v120, v138);
    Mutable = 0;
    goto LABEL_66;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v121 = 2179;
    goto LABEL_80;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v121 = 2180;
    goto LABEL_80;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x887, v123, v124, v125, v138);
LABEL_82:
    Code = v57;
    goto LABEL_66;
  }

  v140 = a3;
  SliceCount = FigCaptionGroupGetSliceCount(a2, v7, v8, v9, v10, v11, v12, v13);
  if (!SliceCount)
  {
    v19 = 0;
LABEL_20:
    error[0] = 0;
    number[0] = 0;
    LODWORD(valuePtr[0]) = 0;
    v58 = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerFormat", v16, number);
    if (v58)
    {
      Code = v58;
      Data = 0;
    }

    else
    {
      CFNumberGetValue(number[0], kCFNumberSInt32Type, valuePtr);
      if (LODWORD(valuePtr[0]) == 2)
      {
        v59 = kCFPropertyListBinaryFormat_v1_0;
      }

      else
      {
        v59 = kCFPropertyListXMLFormat_v1_0;
      }

      Data = CFPropertyListCreateData(v6, Mutable, v59, 0, error);
      if (Data)
      {
        if (!error[0])
        {
          Code = 0;
          goto LABEL_33;
        }

        v61 = CFErrorCopyFailureReason(error[0]);
        Code = CFErrorGetCode(error[0]);
        if (v61)
        {
          CFRelease(v61);
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v126, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x67D, v127, v128, v129, v138);
      }
    }

    if (error[0])
    {
      CFRelease(error[0]);
    }

    if (Data)
    {
      CFRelease(Data);
      Data = 0;
    }

LABEL_33:
    if (number[0])
    {
      CFRelease(number[0]);
    }

    if (Code)
    {
      goto LABEL_59;
    }

    valuePtr[0] = 0;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    *error = 0u;
    v148 = 0;
    v146 = 0u;
    v147 = 0u;
    *number = 0u;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    if (Data)
    {
      v63 = CFDataCreateMutable(v6, 0);
      v64 = v63;
      if (!v63)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v134, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x79F, v135, v136, v137, v138);
        goto LABEL_51;
      }

      WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData(v63, 0, v6, valuePtr);
      if (WritableWithCFMutableData || (WritableWithCFMutableData = FigAtomWriterInitWithByteStream(valuePtr[0], error), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterBeginAtom(error, 1717793639, 0, v66, v67, v68, v69, v70), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterInitWithParent(error, number), WritableWithCFMutableData) || (WritableWithCFMutableData = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerVersion", v71, &v143), WritableWithCFMutableData) || (WritableWithCFMutableData = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerFormat", v72, &v142), WritableWithCFMutableData) || (CFNumberGetValue(v143, kCFNumberSInt32Type, &v144), CFNumberGetValue(v142, kCFNumberSInt32Type, &v144 + 4), WritableWithCFMutableData = FigAtomWriterBeginAtom(number, 1717793641, 0, v73, v74, v75, v76, v77), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterAppendData(number, &v144, 8, v78, v79, v80, v81, v82, v138), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterEndAtom(number, v83, v84, v85, v86, v87, v88, v89), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterBeginAtom(number, 1717793636, 0, v90, v91, v92, v93, v94), WritableWithCFMutableData) || (BytePtr = CFDataGetBytePtr(Data), Length = CFDataGetLength(Data), WritableWithCFMutableData = FigAtomWriterAppendData(number, BytePtr, Length, v97, v98, v99, v100, v101, v139), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterEndAtom(number, v102, v103, v104, v105, v106, v107, v108), WritableWithCFMutableData))
      {
        Code = WritableWithCFMutableData;
      }

      else
      {
        Code = FigAtomWriterEndAtom(error, v109, v110, v111, v112, v113, v114, v115);
        if (!Code)
        {
LABEL_51:
          if (v142)
          {
            CFRelease(v142);
          }

          if (v143)
          {
            CFRelease(v143);
          }

          if (valuePtr[0])
          {
            CFRelease(valuePtr[0]);
          }

          if (Code)
          {
LABEL_60:
            if (Data)
            {
              CFRelease(Data);
            }

            if (v64)
            {
              CFRelease(v64);
            }

            if (!v19)
            {
              goto LABEL_66;
            }

LABEL_65:
            CFRelease(v19);
            goto LABEL_66;
          }

          *v140 = v64;
LABEL_59:
          v64 = 0;
          goto LABEL_60;
        }
      }

      CFRelease(v64);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v130, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x79B, v131, v132, v133, v138);
    }

    v64 = 0;
    goto LABEL_51;
  }

  v17 = SliceCount;
  v18 = 0;
  v19 = 0;
  v20 = MEMORY[0x1E695E9C0];
  while (1)
  {
    if (v19)
    {
      CFRelease(v19);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v19 = CFArrayCreateMutable(v6, 0, v20);
    if (v19)
    {
      FigCaptionGroupGetDurationBeforeSlice(a2, v18, error, v21, v22, v23, v24, v25, v26);
      *number = *error;
      *&v146 = v150;
      appended = FigCFArrayAppendCMTime(v19, number, v27, v28, v29, v30, v31, v32);
      if (appended || (FigCaptionGroupGetDurationAfterSlice(a2, v18, number, v34, v35, v36, v37, v38, v39), *error = *number, *&v150 = v146, appended = FigCFArrayAppendCMTime(v19, number, v40, v41, v42, v43, v44, v45), appended))
      {
        Code = appended;
        goto LABEL_65;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x549, v54, v55, v56, v138);
      if (v57)
      {
        goto LABEL_82;
      }
    }

    CaptionData = FigCaptionGroupGetCaptionData(a2, v18, v46, v47, v48, v49, v50, v51);
    if (!CaptionData)
    {
      break;
    }

    fcs_copyCaptionDataAsDictionary(CaptionData, &cf);
    CFDictionarySetValue(cf, @"Durations", v19);
    CFArrayAppendValue(Mutable, cf);
    if (v17 == ++v18)
    {
      goto LABEL_20;
    }
  }

  Code = 0;
  if (v19)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Code;
}

size_t fcs_copyCaptionDataAsDictionary(const void *a1, __CFDictionary **a2)
{
  value = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v72 = 1507;
LABEL_70:
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v72, v69, v70, v71, v94);
    goto LABEL_71;
  }

  v4 = a2;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v72 = 1508;
    goto LABEL_70;
  }

  v5 = a1;
  v6 = fcs_copyCaptionPropertiesAsDictionary(a1, &value);
  if (v6)
  {
LABEL_71:
    Count = v6;
    Mutable = 0;
    goto LABEL_96;
  }

  v109 = 0;
  v110 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0.0;
  cf = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x610, v74, v75, v76, v94);
    goto LABEL_73;
  }

  FigCaptionDataGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable(v8) + 8) + 48);
  if (!v10)
  {
    v15 = 0;
    OUTLINED_FUNCTION_12_14();
    Count = 4294954514;
LABEL_11:
    v16 = Mutable;
    Mutable = 0;
    goto LABEL_74;
  }

  v11 = v10(v9, @"StylePropertyKeysInUse", allocator, &v108);
  if (v11)
  {
LABEL_104:
    Count = v11;
    goto LABEL_105;
  }

  Count = CFArrayGetCount(v108);
  v13 = *(*(CMBaseObjectGetVTable(v5) + 16) + 8);
  if (v13)
  {
    v14 = v13(v5);
    if (!v14)
    {
      Count = 0;
LABEL_105:
      v15 = 0;
      OUTLINED_FUNCTION_12_14();
      goto LABEL_11;
    }
  }

  else
  {
    v14 = &stru_1F0B78830;
  }

  OUTLINED_FUNCTION_4_28(&fcs_getCaptionInfoToPListableMappingDictionary_sInitializeCaptionPropertyToPListableMappingOnce);
  v17 = CFDictionaryGetValue(sCaptionInfoToPListableMappingDictionary, @"StyleProperty");
  if (!v17)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x61A, v91, v92, v93, v94);
    goto LABEL_104;
  }

  v18 = v17;
  Length = CFStringGetLength(v14);
  if (!Count)
  {
LABEL_73:
    v16 = 0;
    v15 = 0;
    OUTLINED_FUNCTION_12_14();
    goto LABEL_74;
  }

  v95 = Count;
  theDict = Mutable;
  v96 = v4;
  v19 = 0;
  OUTLINED_FUNCTION_12_14();
  v99 = v5;
  v21 = allocator;
  while (1)
  {
    v97 = v20;
    ValueAtIndex = CFArrayGetValueAtIndex(v108, v20);
    if (v19)
    {
      CFRelease(v19);
    }

    v23 = OUTLINED_FUNCTION_14_3();
    theArray = CFArrayCreateMutable(v23, v24, MEMORY[0x1E695E9C0]);
    if (!theArray)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_8_18();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x622, v87, v88, v89, v94);
      v15 = 0;
      v16 = theDict;
      Mutable = 0;
      v4 = v96;
      goto LABEL_74;
    }

    if (Length)
    {
      break;
    }

LABEL_55:
    v19 = theArray;
    CFDictionarySetValue(theDict, ValueAtIndex, theArray);
    v20 = v97 + 1;
    if (v97 + 1 == v95)
    {
      Count = 0;
      v16 = 0;
      v4 = v96;
      v15 = theArray;
      Mutable = theDict;
      goto LABEL_74;
    }
  }

  v25 = 0;
  while (1)
  {
    if (v110)
    {
      CFRelease(v110);
      v110 = 0;
    }

    v26 = *(*(CMBaseObjectGetVTable(v5) + 16) + 24);
    if (!v26)
    {
      Count = 4294954514;
LABEL_58:
      v16 = theDict;
      goto LABEL_63;
    }

    v27 = v26(v5, v25, ValueAtIndex, v21, &v110, &v106);
    if (v27)
    {
      Count = v27;
      goto LABEL_58;
    }

    if (!v110)
    {
      goto LABEL_39;
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    v28 = OUTLINED_FUNCTION_14_3();
    v2 = CFDictionaryCreateMutable(v28, v29, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v2)
    {
      break;
    }

    v30 = OUTLINED_FUNCTION_14_3();
    v3 = CFArrayCreateMutable(v30, v31, MEMORY[0x1E695E9C0]);
    if (!v3)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_8_18();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x631, v65, v66, v67, v94);
      goto LABEL_67;
    }

    if (!v110 || (v32 = CFGetTypeID(v110), v32 != FigCaptionDynamicStyleGetTypeID()))
    {
      KeyFrameCount = 1;
LABEL_42:
      v48 = 0;
      while (1)
      {
        if (v109)
        {
          CFRelease(v109);
          v109 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v104 = 0.0;
        if (CFEqual(ValueAtIndex, @"Ruby"))
        {
          v53 = fcs_copyCaptionDataAsDictionary(v110, &v109);
          if (v53)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v53 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(v110, v48, &v104, &cf, v49, v50, v51, v52, v94);
          if (v53 || (v53 = fcs_copyCaptionStyleAsDictionary(ValueAtIndex, cf, v18, &v109), v53))
          {
LABEL_59:
            Count = v53;
            goto LABEL_62;
          }
        }

        v53 = FigCFDictionarySetDouble(v109, @"RelativeTime", v104, v54, v55, v56, v57, v58, v59);
        if (v53)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(v3, v109);
        if (KeyFrameCount == ++v48)
        {
          goto LABEL_35;
        }
      }
    }

    KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(v110);
    if (KeyFrameCount)
    {
      goto LABEL_42;
    }

LABEL_35:
    v35 = v106;
    v34 = v107;
    v36 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v36)
    {
      goto LABEL_61;
    }

    v42 = v36;
    if (FigCFDictionarySetCFIndex(v36, @"RangeLocation", v35, v37, v38, v39, v40, v41) || FigCFDictionarySetCFIndex(v42, @"RangeLength", v34, v43, v44, v45, v46, v47))
    {
      CFRelease(v42);
LABEL_61:
      Count = 0;
LABEL_62:
      v16 = theDict;
      v5 = v99;
LABEL_63:
      Mutable = 0;
      v4 = v96;
      goto LABEL_64;
    }

    CFDictionarySetValue(v2, @"PropertyRange", v42);
    CFDictionarySetValue(v2, @"DynamicStyleValue", v3);
    CFArrayAppendValue(theArray, v2);
    CFRelease(v42);
    v5 = v99;
    v21 = allocator;
LABEL_39:
    v25 += v107;
    if (v25 == Length)
    {
      goto LABEL_55;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_8_18();
  Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x62F, v61, v62, v63, v94);
  v3 = 0;
LABEL_67:
  v16 = theDict;
  Mutable = 0;
  v4 = v96;
LABEL_64:
  v15 = theArray;
LABEL_74:
  if (v110)
  {
    CFRelease(v110);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (!Count)
  {
    v77 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v77)
    {
      v78 = v77;
      v79 = *(*(CMBaseObjectGetVTable(v5) + 16) + 8);
      if (v79)
      {
        v80 = v79(v5);
      }

      else
      {
        v80 = &stru_1F0B78830;
      }

      CFDictionarySetValue(v78, @"Text", v80);
      CFDictionarySetValue(v78, @"Properties", value);
      CFDictionarySetValue(v78, @"StyleProperties", Mutable);
      Count = 0;
      *v4 = v78;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x5ED, v83, v84, v85, v94);
    }
  }

LABEL_96:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Count;
}

size_t FigCaptionSerializerCreateCaptionGroupFromCFData(void **a1, const void *a2, __CFString *a3)
{
  v7 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v98 = 0;
  v99 = 0;
  error = 0;
  if (a1)
  {
    if (a2)
    {
      v8 = a3;
      if (!a3)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_21();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BE, v71, v72, v73, v94);
        OUTLINED_FUNCTION_18_11();
        OUTLINED_FUNCTION_5_29();
        v25 = 0;
        goto LABEL_49;
      }

      memset(v104, 0, sizeof(v104));
      memset(v103, 0, sizeof(v103));
      cf = 0;
      v101 = 0;
      size = 0;
      v9 = *MEMORY[0x1E695E480];
      if (FigByteStreamCreateWithCFData(a2, 0, *MEMORY[0x1E695E480], &cf) || FigAtomStreamInitWithByteStream(cf, 0, 0, v104, v10) || FigAtomStreamInitWithParent(v104, 0, v103))
      {
        OUTLINED_FUNCTION_18_11();
      }

      else
      {
        v11 = 0;
        Mutable = 0x100004077774924;
        v5 = @"FigCaptionSerializerVersion";
        v6 = @"FigCaptionSerializerFormat";
        do
        {
          if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v103, &v101, &size))
          {
            goto LABEL_75;
          }

          v12 = malloc_type_malloc(size, 0x100004077774924uLL);
          if (!v12)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            v60 = 4294949616;
            v61 = 2030;
LABEL_74:
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v60, "<< FigCaptionSerializer >>", v61, v57, v58, v59, v94);
LABEL_75:
            OUTLINED_FUNCTION_18_11();
            goto LABEL_25;
          }

          v13 = v12;
          if (FigAtomStreamReadCurrentAtomData(v103, 0, size, v12))
          {
            goto LABEL_75;
          }

          if (v101 == 1717793636)
          {
            if (v11)
            {
              CFRelease(v11);
            }

            v11 = CFDataCreate(v9, v13, size);
            if (!v11)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              v60 = 4294949616;
              v61 = 2051;
              goto LABEL_74;
            }
          }

          else if (v101 == 1717793641)
          {
            if (size != 8)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              v60 = 4294949615;
              v61 = 2041;
              goto LABEL_74;
            }

            if (FigCFDictionarySetInt32(v7[2], @"FigCaptionSerializerVersion", *v13, v14, v15, v16, v17, v18) || FigCFDictionarySetInt32(v7[2], @"FigCaptionSerializerFormat", v13[4], v19, v20, v21, v22, v23))
            {
              goto LABEL_75;
            }
          }

          free(v13);
          Atom = FigAtomStreamAdvanceToNextAtom(v103);
        }

        while (!Atom);
        Code = Atom;
        if (Atom == -12890)
        {
          Code = 0;
        }

        v7 = v11;
      }

      v11 = 0;
LABEL_25:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (!Code)
      {
        v25 = CFPropertyListCreateWithData(v9, v7, 0, 0, &error);
        if (v25)
        {
          if (error)
          {
            v8 = CFErrorCopyFailureReason(error);
            Code = CFErrorGetCode(error);
            OUTLINED_FUNCTION_5_29();
            goto LABEL_49;
          }

          TypeID = CFArrayGetTypeID();
          if (TypeID != CFGetTypeID(v25))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8CE, v79, v80, v81, v94);
            OUTLINED_FUNCTION_5_29();
            v8 = 0;
            Code = 0;
            goto LABEL_49;
          }

          Count = CFArrayGetCount(v25);
          v28 = OUTLINED_FUNCTION_14_3();
          Mutable = CFArrayCreateMutable(v28, v29, v30);
          if (Mutable)
          {
            v31 = OUTLINED_FUNCTION_14_3();
            v5 = CFDataCreateMutable(v31, v32);
            if (v5)
            {
              v33 = OUTLINED_FUNCTION_14_3();
              v6 = CFDataCreateMutable(v33, v34);
              if (v6)
              {
                v95 = v7;
                if (Count)
                {
                  v35 = 0;
                  while (1)
                  {
                    if (v98)
                    {
                      CFRelease(v98);
                      v98 = 0;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v25, v35);
                    if (!ValueAtIndex)
                    {
                      v8 = 0;
                      Code = 0;
                      goto LABEL_48;
                    }

                    v37 = ValueAtIndex;
                    v38 = fcs_deserializeAndCreateFigCaptionData(ValueAtIndex, &v98);
                    if (v38)
                    {
                      break;
                    }

                    Value = CFDictionaryGetValue(v37, @"Durations");
                    if (FigCFArrayGetCMTimeAtIndex(Value, 0, &bytes, v40, v41, v42, v43, v44))
                    {
                      FigCFArrayGetCMTimeAtIndex(Value, 1, &v106, v45, v46, v47, v48, v49);
                    }

                    CFArrayAppendValue(Mutable, v98);
                    CFDataAppendBytes(v5, &bytes, 24);
                    CFDataAppendBytes(v6, &v106, 24);
                    if (Count == ++v35)
                    {
                      goto LABEL_46;
                    }
                  }

                  Code = v38;
                }

                else
                {
LABEL_46:
                  MutableBytePtr = CFDataGetMutableBytePtr(v5);
                  v51 = CFDataGetMutableBytePtr(v6);
                  Code = FigCaptionGroupCreate(v9, Mutable, MutableBytePtr, v51, &v99, v52, v53, v54);
                  if (!Code)
                  {
                    v8 = 0;
                    a3->isa = v99;
                    v99 = 0;
LABEL_48:
                    v7 = v95;
                    goto LABEL_49;
                  }
                }

                v8 = 0;
                goto LABEL_48;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D8, v91, v92, v93, v94);
              goto LABEL_87;
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D6, v87, v88, v89, v94);
            goto LABEL_86;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_21();
          Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D4, v83, v84, v85, v94);
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_21();
          Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8C4, v75, v76, v77, v94);
          Mutable = 0;
        }

        v5 = 0;
LABEL_86:
        v6 = 0;
        goto LABEL_87;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_21();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BD, v67, v68, v69, v94);
      OUTLINED_FUNCTION_18_11();
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_21();
    Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BC, v63, v64, v65, v94);
  }

  OUTLINED_FUNCTION_5_29();
  v25 = 0;
LABEL_87:
  v8 = 0;
LABEL_49:
  if (error)
  {
    CFRelease(error);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return Code;
}

size_t fcs_copyCaptionPropertiesAsDictionary(const void *a1, __CFDictionary **a2)
{
  v54 = 0;
  cf = 0;
  theArray = 0;
  v53 = 0;
  v51 = 0.0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v43 = 4294949615;
    v44 = 1415;
LABEL_68:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v43, "<< FigCaptionSerializer >>", v44, v40, v41, v42, v45);
LABEL_69:
    Mutable = 0;
    goto LABEL_53;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v43 = 4294949615;
    v44 = 1416;
    goto LABEL_68;
  }

  v5 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!theDict)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v43 = 4294949616;
    v44 = 1419;
    goto LABEL_68;
  }

  v6 = CFGetTypeID(a1);
  if (v6 == FigCaptionDataGetTypeID())
  {
    v7 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
    if (v7)
    {
      v8 = v7(a1, @"CaptionPropertyKeysInUse", v5, &theArray);
    }

    else
    {
      v8 = 4294954514;
    }

    v10 = @"CaptionProperty";
  }

  else
  {
    v9 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
    if (v9)
    {
      v8 = v9(a1, @"CMCaptionRegionPropertyKeysInUse", v5, &theArray);
    }

    else
    {
      v8 = 4294954514;
    }

    v10 = @"RegionProperty";
  }

  OUTLINED_FUNCTION_4_28(&fcs_getCaptionInfoToPListableMappingDictionary_sInitializeCaptionPropertyToPListableMappingOnce);
  Value = CFDictionaryGetValue(sCaptionInfoToPListableMappingDictionary, v10);
  if (v8)
  {
    goto LABEL_69;
  }

  v12 = Value;
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v43 = 4294949616;
    v44 = 1431;
    goto LABEL_68;
  }

  v46 = v2;
  v47 = a2;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v13 = 0;
    v48 = v5;
    while (1)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
      v16 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
      if (!v16)
      {
        v8 = 4294954514;
        goto LABEL_53;
      }

      v17 = v16(a1, ValueAtIndex, v5, &cf);
      if (v17)
      {
        goto LABEL_52;
      }

      v51 = 0.0;
      if (CFEqual(ValueAtIndex, @"Region") || CFEqual(ValueAtIndex, @"CMCaptionRegionContainerRegion"))
      {
        if (v54)
        {
          CFRelease(v54);
          v54 = 0;
        }

        v17 = fcs_copyCaptionPropertiesAsDictionary(cf, &v54);
        if (v17)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, v54);
      }

      else
      {
        if (!cf || (v18 = CFGetTypeID(cf), v18 != FigCaptionDynamicStyleGetTypeID()))
        {
          KeyFrameCount = 1;
LABEL_29:
          v20 = 0;
          while (2)
          {
            if (v54)
            {
              CFRelease(v54);
              v54 = 0;
            }

            if (v53)
            {
              CFRelease(v53);
              v53 = 0;
            }

            if (cf)
            {
              v21 = CFGetTypeID(cf);
              TypeID = FigCaptionDynamicStyleGetTypeID();
              v27 = cf;
              if (v21 == TypeID)
              {
                v17 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(cf, v20, &v51, &v53, v23, v24, v25, v26, v46);
                if (v17)
                {
                  goto LABEL_52;
                }

                v27 = v53;
                goto LABEL_40;
              }
            }

            else
            {
              v27 = 0;
            }

            v51 = -1.0;
LABEL_40:
            v17 = fcs_copyCaptionStyleAsDictionary(ValueAtIndex, v27, v12, &v54);
            if (v17)
            {
              goto LABEL_52;
            }

            v17 = FigCFDictionarySetDouble(v54, @"RelativeTime", v51, v28, v29, v30, v31, v32, v33);
            if (v17)
            {
              goto LABEL_52;
            }

            CFArrayAppendValue(Mutable, v54);
            if (KeyFrameCount == ++v20)
            {
              goto LABEL_43;
            }

            continue;
          }
        }

        KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(cf);
        if (KeyFrameCount)
        {
          goto LABEL_29;
        }
      }

LABEL_43:
      CFDictionarySetValue(theDict, ValueAtIndex, Mutable);
      CFRelease(Mutable);
      ++v13;
      v5 = v48;
      if (v13 == Count)
      {
        goto LABEL_49;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x59E, v35, v36, v37, v46);
LABEL_52:
    v8 = v17;
  }

  else
  {
LABEL_49:
    Mutable = 0;
    v8 = 0;
    *v47 = theDict;
  }

LABEL_53:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void fcs_initializeCaptionPropertyToPListableMappingDictionary()
{
  v0 = OUTLINED_FUNCTION_11_14();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    v5 = OUTLINED_FUNCTION_11_14();
    v8 = CFDictionaryCreateMutable(v5, v6, v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_11_14();
      v13 = CFDictionaryCreateMutable(v10, v11, v12, 0);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_11_14();
        v18 = CFDictionaryCreateMutable(v15, v16, v17, 0);
        if (v18)
        {
          v19 = v18;
          CFDictionaryAddValue(v9, @"Animation", fcs_setDictionaryFromPropertyCFType);
          OUTLINED_FUNCTION_15_13(v20, @"TextAlign");
          OUTLINED_FUNCTION_15_13(v21, @"MultiRowAlign");
          OUTLINED_FUNCTION_15_13(v22, @"RubyAlign");
          OUTLINED_FUNCTION_15_13(v23, @"RubyPosition");
          OUTLINED_FUNCTION_13_12(v24, @"CMCaptionRegionIdentifier");
          OUTLINED_FUNCTION_13_12(v25, @"CMCaptionRegionShowbackground");
          OUTLINED_FUNCTION_13_12(v26, @"CMCaptionRegionWritingMode");
          OUTLINED_FUNCTION_13_12(v27, @"CMCaptionRegionDisplayAlign");
          OUTLINED_FUNCTION_13_12(v28, @"CMCaptionRegionPadding");
          OUTLINED_FUNCTION_13_12(v29, @"CMCaptionRegionAnimation");
          OUTLINED_FUNCTION_14_13(v30, @"FontWeight");
          OUTLINED_FUNCTION_14_13(v31, @"FontStyle");
          OUTLINED_FUNCTION_14_13(v32, @"TextCombine");
          OUTLINED_FUNCTION_14_13(v33, @"TextShear");
          OUTLINED_FUNCTION_14_13(v34, @"EdgeStyle");
          OUTLINED_FUNCTION_15_13(v35, @"LineHeight");
          OUTLINED_FUNCTION_15_13(v36, @"LinePadding");
          OUTLINED_FUNCTION_15_13(v37, @"SourceInformation");
          OUTLINED_FUNCTION_13_12(v38, @"CMCaptionRegionCellResolution");
          OUTLINED_FUNCTION_13_12(v39, @"CMCaptionRegionPosition");
          OUTLINED_FUNCTION_13_12(v40, @"CMCaptionRegionWidth");
          OUTLINED_FUNCTION_13_12(v41, @"CMCaptionRegionHeight");
          OUTLINED_FUNCTION_13_12(v42, @"CMCaptionRegionDisplayAspectRatio");
          OUTLINED_FUNCTION_13_12(v43, @"CMCaptionRegionActiveArea");
          OUTLINED_FUNCTION_13_12(v44, @"CMCaptionRegionAnchor");
          OUTLINED_FUNCTION_14_13(v45, @"FontSize");
          OUTLINED_FUNCTION_14_13(v46, @"LineHeight");
          OUTLINED_FUNCTION_13_12(v47, @"CMCaptionRegionStereoDisparity");
          OUTLINED_FUNCTION_13_12(v48, @"CMCaptionRegionZIndex");
          OUTLINED_FUNCTION_13_12(v49, @"CMCaptionRegionOpacity");
          OUTLINED_FUNCTION_14_13(v50, @"Decoration");
          OUTLINED_FUNCTION_13_12(v51, @"CMCaptionRegionLuminanceGain");
          OUTLINED_FUNCTION_15_13(v52, @"FillLineGap");
          OUTLINED_FUNCTION_15_13(v53, @"Hidden");
          OUTLINED_FUNCTION_13_12(v54, @"CMCaptionRegionClipOverflow");
          OUTLINED_FUNCTION_13_12(v55, @"CMCaptionRegionInvisible");
          OUTLINED_FUNCTION_13_12(v56, @"CMCaptionRegionForcedDisplay");
          OUTLINED_FUNCTION_13_12(v57, @"CMCaptionRegionHidden");
          OUTLINED_FUNCTION_13_12(v58, @"CMCaptionRegionExplicitRegion");
          OUTLINED_FUNCTION_14_13(v59, @"Hidden");
          OUTLINED_FUNCTION_14_13(v60, @"Invisible");
          OUTLINED_FUNCTION_14_13(v61, @"ForcedDisplay");
          OUTLINED_FUNCTION_14_13(v62, @"PreventLineWrapping");
          OUTLINED_FUNCTION_14_13(v63, @"WritingDirection");
          CFDictionaryAddValue(v9, @"BackgroundColor", fcs_setDictionaryFromPropertyColor);
          OUTLINED_FUNCTION_13_12(v64, @"CMCaptionRegionBackgroundColor");
          OUTLINED_FUNCTION_14_13(v65, @"TextColor");
          OUTLINED_FUNCTION_14_13(v66, @"BackgroundColor");
          OUTLINED_FUNCTION_17_9(v67, @"FontFamily");
          OUTLINED_FUNCTION_17_9(v68, @"TextOutline");
          OUTLINED_FUNCTION_17_9(v69, @"TextEmphasis");
          OUTLINED_FUNCTION_17_9(v70, @"TextShadow");
          CFDictionaryAddValue(v9, @"RubyReserve", fcs_setDictionaryFromPropertyRubyReserve);
          CFDictionaryAddValue(v14, @"CMCaptionRegionAbstractPosition", fcs_setDictionaryFromPropertyCaptionPosition);
          CFDictionaryAddValue(Mutable, @"CaptionProperty", v9);
          CFDictionaryAddValue(Mutable, @"RegionProperty", v14);
          CFDictionaryAddValue(Mutable, @"StyleProperty", v19);
          CFRelease(v9);
          v9 = v14;
          v14 = v19;
        }

        CFRelease(v9);
        v9 = v14;
      }

      CFRelease(v9);
    }
  }

  sCaptionInfoToPListableMappingDictionary = Mutable;
}

size_t fcs_setDictionaryFromPropertyColor(__CFDictionary *a1, const void *a2, void *cf, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      if (cf)
      {
        v12 = CFGetTypeID(cf);
        if (v12 == CGColorGetTypeID())
        {
          v13 = FigCopyCGColorSRGBAsCFArray(cf);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(a1, a2, v13);
            CFRelease(v14);
          }

          return 0;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v20 = 313;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v20 = 312;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v20 = 311;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v20, v17, v18, v19, a9);
}

void fcs_deserializeCaptionPropertyApplier(const void *a1, CFArrayRef theArray, int *a3)
{
  cf = 0;
  var38[0] = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFEqual(a1, @"Region") && !CFEqual(a1, @"CMCaptionRegionContainerRegion"))
  {
    if (FigCFDictionaryGetDoubleIfPresent(ValueAtIndex, @"RelativeTime", var38, v7, v8, v9, v10, v11, cf, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]))
    {
      if (*var38 < 0.0)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"PropertyValue");
LABEL_5:
        FigCaptionDataGetCMBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable(v14) + 8) + 56);
        if (v16)
        {
          v12 = v16(v15, a1, Value);
        }

        else
        {
          v12 = -12782;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_6_27(&fcs_getPListableToCaptionInfoMappingDictionary_sInitializePListableToCaptionPropertyMappingOnce);
      v17 = CFDictionaryGetValue(sPListableToCaptionInfoMappingDictionary, @"CaptionProperty");
      if (v17)
      {
        v12 = fcs_createDynamicStyleFromPListable(a1, theArray, v17, &cf);
        if (!v12)
        {
          goto LABEL_4;
        }

        goto LABEL_8;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v22 = 4294949616;
      v23 = 1817;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v22 = 4294954513;
      v23 = 1806;
    }

    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v22, "<< FigCaptionSerializer >>", v23, v19, v20, v21, cf);
    goto LABEL_8;
  }

  v12 = fcs_deserializeAndSetRegionProperty(ValueAtIndex, &cf);
  if (!v12)
  {
LABEL_4:
    Value = cf;
    goto LABEL_5;
  }

LABEL_8:
  *a3 = v12;
  if (cf)
  {
    CFRelease(cf);
  }
}

void fcs_deserializeRegionPropertyApplier(const void *a1, const __CFArray *a2, int *a3)
{
  cf = 0;
  v30[0] = 0;
  v28 = 0;
  OUTLINED_FUNCTION_6_27(&fcs_getPListableToCaptionInfoMappingDictionary_sInitializePListableToCaptionPropertyMappingOnce);
  Value = CFDictionaryGetValue(sPListableToCaptionInfoMappingDictionary, @"RegionProperty");
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 4294949616;
    v26 = 1735;
    goto LABEL_20;
  }

  v7 = Value;
  v8 = OUTLINED_FUNCTION_11_14();
  ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
  if (!CFEqual(a1, @"CMCaptionRegionContainerRegion"))
  {
    if (FigCFDictionaryGetDoubleIfPresent(ValueAtIndex, @"RelativeTime", v30, v11, v12, v13, v14, v15, v27, v28, cf, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]))
    {
      if (*v30 >= 0.0)
      {
        v16 = fcs_createDynamicStyleFromPListable(a1, a2, v7, &v28);
        if (v16)
        {
          goto LABEL_13;
        }

        v17 = v28;
      }

      else
      {
        v17 = CFDictionaryGetValue(ValueAtIndex, @"PropertyValue");
      }

      goto LABEL_10;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 4294954513;
    v26 = 1743;
LABEL_20:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v25, "<< FigCaptionSerializer >>", v26, v22, v23, v24, v27);
    goto LABEL_13;
  }

  v16 = fcs_deserializeAndSetRegionProperty(ValueAtIndex, &cf);
  if (v16)
  {
    goto LABEL_13;
  }

  v17 = cf;
LABEL_10:
  FigCaptionRegionGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable(v18) + 8) + 56);
  if (v20)
  {
    v16 = v20(v19, a1, v17);
  }

  else
  {
    v16 = -12782;
  }

LABEL_13:
  *a3 = v16;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

void fcs_initializePListableToCaptionPropertyMappingDictionary()
{
  v0 = OUTLINED_FUNCTION_11_14();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    v5 = OUTLINED_FUNCTION_11_14();
    v8 = CFDictionaryCreateMutable(v5, v6, v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_11_14();
      v13 = CFDictionaryCreateMutable(v10, v11, v12, 0);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_11_14();
        v18 = CFDictionaryCreateMutable(v15, v16, v17, 0);
        if (v18)
        {
          v19 = v18;
          CFDictionaryAddValue(v9, @"Animation", fcs_createDynamicStyleFromPListCFType);
          OUTLINED_FUNCTION_15_13(v20, @"TextAlign");
          OUTLINED_FUNCTION_15_13(v21, @"MultiRowAlign");
          OUTLINED_FUNCTION_15_13(v22, @"RubyAlign");
          OUTLINED_FUNCTION_15_13(v23, @"RubyPosition");
          OUTLINED_FUNCTION_13_12(v24, @"CMCaptionRegionIdentifier");
          OUTLINED_FUNCTION_13_12(v25, @"CMCaptionRegionShowbackground");
          OUTLINED_FUNCTION_13_12(v26, @"CMCaptionRegionWritingMode");
          OUTLINED_FUNCTION_13_12(v27, @"CMCaptionRegionDisplayAlign");
          OUTLINED_FUNCTION_13_12(v28, @"CMCaptionRegionPadding");
          OUTLINED_FUNCTION_13_12(v29, @"CMCaptionRegionAnimation");
          OUTLINED_FUNCTION_14_13(v30, @"FontWeight");
          OUTLINED_FUNCTION_14_13(v31, @"FontStyle");
          OUTLINED_FUNCTION_14_13(v32, @"Ruby");
          OUTLINED_FUNCTION_14_13(v33, @"TextCombine");
          OUTLINED_FUNCTION_14_13(v34, @"TextShear");
          OUTLINED_FUNCTION_14_13(v35, @"EdgeStyle");
          OUTLINED_FUNCTION_15_13(v36, @"LineHeight");
          OUTLINED_FUNCTION_15_13(v37, @"LinePadding");
          OUTLINED_FUNCTION_15_13(v38, @"SourceInformation");
          OUTLINED_FUNCTION_13_12(v39, @"CMCaptionRegionCellResolution");
          OUTLINED_FUNCTION_13_12(v40, @"CMCaptionRegionPosition");
          OUTLINED_FUNCTION_13_12(v41, @"CMCaptionRegionWidth");
          OUTLINED_FUNCTION_13_12(v42, @"CMCaptionRegionHeight");
          OUTLINED_FUNCTION_13_12(v43, @"CMCaptionRegionDisplayAspectRatio");
          OUTLINED_FUNCTION_13_12(v44, @"CMCaptionRegionActiveArea");
          OUTLINED_FUNCTION_13_12(v45, @"CMCaptionRegionAnchor");
          OUTLINED_FUNCTION_14_13(v46, @"FontSize");
          OUTLINED_FUNCTION_14_13(v47, @"LineHeight");
          OUTLINED_FUNCTION_13_12(v48, @"CMCaptionRegionStereoDisparity");
          OUTLINED_FUNCTION_13_12(v49, @"CMCaptionRegionZIndex");
          OUTLINED_FUNCTION_13_12(v50, @"CMCaptionRegionOpacity");
          OUTLINED_FUNCTION_14_13(v51, @"Decoration");
          OUTLINED_FUNCTION_13_12(v52, @"CMCaptionRegionLuminanceGain");
          OUTLINED_FUNCTION_15_13(v53, @"FillLineGap");
          OUTLINED_FUNCTION_15_13(v54, @"Hidden");
          OUTLINED_FUNCTION_13_12(v55, @"CMCaptionRegionClipOverflow");
          OUTLINED_FUNCTION_13_12(v56, @"CMCaptionRegionInvisible");
          OUTLINED_FUNCTION_13_12(v57, @"CMCaptionRegionForcedDisplay");
          OUTLINED_FUNCTION_13_12(v58, @"CMCaptionRegionHidden");
          OUTLINED_FUNCTION_13_12(v59, @"CMCaptionRegionExplicitRegion");
          OUTLINED_FUNCTION_14_13(v60, @"Hidden");
          OUTLINED_FUNCTION_14_13(v61, @"Invisible");
          OUTLINED_FUNCTION_14_13(v62, @"ForcedDisplay");
          OUTLINED_FUNCTION_14_13(v63, @"PreventLineWrapping");
          OUTLINED_FUNCTION_14_13(v64, @"WritingDirection");
          CFDictionaryAddValue(v9, @"BackgroundColor", fcs_createDynamicStyleFromPListColor);
          OUTLINED_FUNCTION_13_12(v65, @"CMCaptionRegionBackgroundColor");
          OUTLINED_FUNCTION_14_13(v66, @"TextColor");
          OUTLINED_FUNCTION_14_13(v67, @"BackgroundColor");
          OUTLINED_FUNCTION_17_9(v68, @"FontFamily");
          OUTLINED_FUNCTION_17_9(v69, @"TextOutline");
          OUTLINED_FUNCTION_17_9(v70, @"TextEmphasis");
          OUTLINED_FUNCTION_17_9(v71, @"TextShadow");
          CFDictionaryAddValue(v9, @"RubyReserve", fcs_createDynamicStyleFromPListRubyReserve);
          CFDictionaryAddValue(v14, @"CMCaptionRegionAbstractPosition", fcs_createDynamicStyleFromPListAbstractPosition);
          CFDictionaryAddValue(Mutable, @"CaptionProperty", v9);
          CFDictionaryAddValue(Mutable, @"RegionProperty", v14);
          CFDictionaryAddValue(Mutable, @"StyleProperty", v19);
          CFRelease(v9);
          v9 = v14;
          v14 = v19;
        }

        CFRelease(v9);
        v9 = v14;
      }

      CFRelease(v9);
    }
  }

  sPListableToCaptionInfoMappingDictionary = Mutable;
}

size_t fcs_createDynamicStyleFromPListColor(const void *a1, uint64_t *a2, double a3)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v13 = 866;
LABEL_11:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v13, v10, v11, v12, v14);
    CGColorSRGBFromCFArray = 0;
    goto LABEL_8;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v13 = 867;
    goto LABEL_11;
  }

  CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(a1);
  if (CGColorSRGBFromCFArray)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, CGColorSRGBFromCFArray, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(*MEMORY[0x1E695E480], CGColorSRGBFromCFArray, a2);
    }

    v7 = Mutable;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  CGColorRelease(CGColorSRGBFromCFArray);
  return v7;
}

size_t fcs_createDynamicStyleFromPListFontFamily(const __CFArray *a1, uint64_t *a2, double a3)
{
  cf[0] = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v24 = 892;
LABEL_20:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v24, v21, v22, v23, v25);
    goto LABEL_13;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v24 = 893;
    goto LABEL_20;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionFontFamilyNameListCreateMutable(*MEMORY[0x1E695E480], cf);
  if (Mutable)
  {
LABEL_13:
    v18 = Mutable;
    goto LABEL_14;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
LABEL_10:
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf[0], a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v6, cf[0], a2);
    }

    goto LABEL_13;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    HIDWORD(v25) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    if (!FigCFDictionaryGetInt32IfPresent(ValueAtIndex, @"FontFamilyKind", &v25 + 4, v12, v13, v14, v15, v16, v25, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]))
    {
      break;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"FontFamilyName");
    if (!Value)
    {
      break;
    }

    Mutable = FigCaptionFontFamilyNameListAppend(cf[0], HIDWORD(v25), Value);
    if (Mutable)
    {
      goto LABEL_13;
    }

    if (v9 == ++v10)
    {
      goto LABEL_10;
    }
  }

  v18 = 0;
LABEL_14:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

size_t fcs_createDynamicStyleFromPListTextOutline(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 931;
LABEL_14:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v22, v19, v20, v21, v23);
    CGColorSRGBFromCFArray = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 932;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a1, @"TextOutlineColor");
  v7 = CFDictionaryGetValue(a1, @"TextOutlineThickness");
  CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(Value);
  if (CGColorSRGBFromCFArray)
  {
    v9 = FigGeometryDimensionMakeFromDictionary(v7);
    v10 = *MEMORY[0x1E695E480];
    Mutable = FigCaptionTextOutlineCreate(*MEMORY[0x1E695E480], v9, v11, CGColorSRGBFromCFArray, &cf, v12, v13, v14);
    if (!Mutable)
    {
      if (*a2)
      {
        Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable(v10, cf, a2);
      }
    }

    v16 = Mutable;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t fcs_createDynamicStyleFromPListTextEmphasis(CFDictionaryRef theDict, uint64_t *a2, double a3)
{
  CGColorSRGBFromCFArray = theDict;
  cf = 0;
  if (!theDict)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x3C7, v20, v21, v22, v27);
LABEL_17:
    v15 = Mutable;
    goto LABEL_18;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(theDict, @"TextEmphasisStyle");
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
    if (valuePtr == 2)
    {
      v9 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisCustomMarkingStyle");
      v10 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisPredefinedMark");
      v29 = 0;
      CFNumberGetValue(v9, kCFNumberSInt32Type, &v29);
      v11 = v29;
      v28 = 0;
      CFNumberGetValue(v10, kCFNumberSInt32Type, &v28);
      v8 = 0;
      v12 = v28;
    }

    else
    {
      if (valuePtr == 3)
      {
        v8 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisCustomMark");
      }

      else
      {
        v8 = 0;
      }

      v12 = 0;
      v11 = 0;
    }

    v13 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisColor");
    v14 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisRubyPosition");
    if (v13)
    {
      CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(v13);
      if (!CGColorSRGBFromCFArray)
      {
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      CGColorSRGBFromCFArray = 0;
    }

    v16 = *MEMORY[0x1E695E480];
    Mutable = FigCaptionTextEmphasisCreate(*MEMORY[0x1E695E480], v7, v11, v12, v8, CGColorSRGBFromCFArray, v14, &cf);
    if (!Mutable)
    {
      if (*a2)
      {
        Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable(v16, cf, a2);
      }
    }

    goto LABEL_17;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x3C8, v24, v25, v26, v27);
  CGColorSRGBFromCFArray = 0;
LABEL_18:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

size_t fcs_createDynamicStyleFromPListTextShadow(const void *a1, uint64_t *a2, double a3)
{
  v56 = 0;
  v57 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v50 = 1043;
LABEL_48:
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v50, v47, v48, v49, v51);
    Mutable = 0;
LABEL_45:
    CGColorSRGBFromCFArray = 0;
    goto LABEL_31;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v50 = 1044;
    goto LABEL_48;
  }

  v54 = CFGetAllocator(a1);
  Value = CFDictionaryGetValue(a1, @"TextShadowList");
  v52 = a2;
  if (Value)
  {
    v11 = Value;
    if (CFArrayGetCount(Value) >= 1)
    {
      CGColorSRGBFromCFArray = 0;
      Mutable = 0;
      v14 = 0;
      while (1)
      {
        if (v56)
        {
          CFRelease(v56);
          v56 = 0;
        }

        if (CGColorSRGBFromCFArray)
        {
          CFRelease(CGColorSRGBFromCFArray);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        CGColorSRGBFromCFArray = ValueAtIndex;
        if (!ValueAtIndex)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, 0xFFFFFFFFuLL, "<< FigCaptionSerializer >>", 0x422, v37, v38, v39, v51);
          goto LABEL_30;
        }

        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != CFDictionaryGetTypeID())
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v44 = 0xFFFFFFFFLL;
          v45 = 1059;
          goto LABEL_44;
        }

        v17 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowHorizontalAxisOffset");
        v18 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowVerticalAxisOffset");
        v19 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowBlurRadius");
        CGColorSRGBFromCFArray = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowColor");
        if (!Mutable)
        {
          v20 = CFGetAllocator(a1);
          Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
          if (!Mutable)
          {
            break;
          }
        }

        theArray = Mutable;
        v22 = 0x100000000;
        v21 = 0;
        if (v17)
        {
          v21 = FigGeometryDimensionMakeFromDictionary(v17);
          v22 = v23;
        }

        v24 = v11;
        v26 = 0x100000000;
        v25 = 0;
        if (v18)
        {
          v25 = FigGeometryDimensionMakeFromDictionary(v18);
          v26 = v27;
        }

        v29 = 0x100000000;
        v28 = 0;
        if (v19)
        {
          v28 = FigGeometryDimensionMakeFromDictionary(v19);
          v29 = v30;
        }

        if (CGColorSRGBFromCFArray)
        {
          CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(CGColorSRGBFromCFArray);
          if (!CGColorSRGBFromCFArray)
          {
            v34 = 0;
            goto LABEL_42;
          }
        }

        v31 = FigCaptionTextShadowCreate(v54, v21, v22, v25, v26, v28, v29, CGColorSRGBFromCFArray, &v56);
        if (v31)
        {
          v34 = v31;
LABEL_42:
          Mutable = theArray;
          goto LABEL_31;
        }

        Mutable = theArray;
        CFArrayAppendValue(theArray, v56);
        ++v14;
        v11 = v24;
        if (v14 >= CFArrayGetCount(v24))
        {
          goto LABEL_26;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v44 = 4294949616;
      v45 = 1071;
LABEL_44:
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v44, "<< FigCaptionSerializer >>", v45, v41, v42, v43, v51);
      goto LABEL_45;
    }
  }

  Mutable = 0;
  CGColorSRGBFromCFArray = 0;
LABEL_26:
  v32 = *MEMORY[0x1E695E480];
  v33 = FigCaptionTextShadowListCreate(*MEMORY[0x1E695E480], Mutable, &v57, v6, v7, v8, v9, v10);
  if (!v33)
  {
    if (*v52)
    {
      v33 = FigCaptionDynamicStyleAddKeyFrameValue(*v52, v57, a3);
    }

    else
    {
      v33 = FigCaptionDynamicStyleCreateMutable(v32, v57, v52);
    }
  }

LABEL_30:
  v34 = v33;
LABEL_31:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (v56)
  {
    CFRelease(v56);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return v34;
}

size_t fcs_createDynamicStyleFromPListRubyReserve(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 1134;
LABEL_15:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v22, v19, v20, v21, v23);
    goto LABEL_10;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 1135;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a1, @"RubyReserveRubyPosition");
  v7 = CFDictionaryGetValue(a1, @"RubyReserveLength");
  if (v7)
  {
    v11 = FigGeometryDimensionMakeFromDictionary(v7);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionRubyReserveCreate(*MEMORY[0x1E695E480], Value, v11, v13, &cf, v8, v9, v10);
  if (!Mutable)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v14, cf, a2);
    }
  }

LABEL_10:
  v16 = Mutable;
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t fcs_createDynamicStyleFromPListAbstractPosition(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 1173;
LABEL_21:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v25, v22, v23, v24, v26);
    goto LABEL_16;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 1174;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalEdge");
  v7 = CFDictionaryGetValue(a1, @"VerticalEdge");
  v8 = CFDictionaryGetValue(a1, @"HorizontalOffset");
  v9 = CFDictionaryGetValue(a1, @"VerticalOffset");
  if (Value)
  {
    CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue = fcs_getCaptionPositionEdgeReferenceForEdgeReferenceSerializedValue(Value);
  }

  else
  {
    CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue = 0;
  }

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    v7 = fcs_getCaptionPositionEdgeReferenceForEdgeReferenceSerializedValue(v7);
  }

  v13 = 0;
  v14 = 0;
  if (v8)
  {
    v14 = FigGeometryDimensionMakeFromDictionary(v8);
    v13 = v15;
  }

  if (v9)
  {
    v11 = FigGeometryDimensionMakeFromDictionary(v9);
    v12 = v16;
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionPositionCreate(*MEMORY[0x1E695E480], CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue, v14, v13, v7, v11, v12, &cf);
  if (!Mutable)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v17, cf, a2);
    }
  }

LABEL_16:
  v19 = Mutable;
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

size_t FigCaptionSerializerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x834, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCreate_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE0EuLL, "<< FigCaptionSerializer >>", 0x82F, v10, v11, v12, a9);
}

size_t FigCaptionSerializerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x82C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x854, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x86E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x869, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x868, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x867, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x75B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x76E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x767, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x75F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x756, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x755, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x56B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x566, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x563, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x562, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x561, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x560, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x12A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x129, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x128, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x15A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x151, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x176, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x173, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x172, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x171, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x196, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x199, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x195, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x194, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x193, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x226, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x206, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<< FigCaptionSerializer >>", 0x203, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x1F5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x245, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x250, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x248, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x244, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x243, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x242, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x29D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2B4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2AF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2A0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeCaptionStyleApplier_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x11A, v1, v2, v3, v5);
}

size_t fcs_deserializeCaptionStyleApplier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x742, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndSetRegionProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x6EB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndSetRegionProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x6EA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x699, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x698, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x697, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x696, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListCFType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x34F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListCFType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x34E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t cryptorServer_HandleRemoteSyncMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  LODWORD(v187) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v187);
  if (OpCode)
  {
    return OpCode;
  }

  if (v187 == 1684632432)
  {
    uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
    if (!uint64)
    {
      return 4294949726;
    }

    v18 = uint64;
    if (dword_1EAF1CF28)
    {
      LODWORD(value) = 0;
      BYTE4(v189) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF20, 1, &value, &v189 + 4);
      v20 = value;
      v21 = BYTE4(v189);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v189)))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFE;
      }

      if (v22)
      {
        *v190 = 136315138;
        *&v190[4] = "cryptorServer_Dispose";
        _os_log_send_and_compose_impl(v22, 0, cf, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v21, "<<< FigCPECryptorServer >>> %s: disposing cryptorServer!", v190);
        LOBYTE(v20) = value;
      }

      OUTLINED_FUNCTION_4_29();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v23, v24, v25, v26, v27, v20);
    }

    return FigXPCServerDisassociateObjectWithConnection(a1, v18);
  }

  if (v187 == 778268793)
  {
    cf[0] = 0;
    v44 = OUTLINED_FUNCTION_22_1();
    v47 = cryptorServer_CopyCryptorByObjectIDForConnection(v44, v45, v46);
    v48 = cf[0];
    if (!v47)
    {
      v49 = OUTLINED_FUNCTION_22_1();
      v47 = FigXPCHandleStdCopyPropertyMessage(v49, v50, a3);
    }

    v16 = v47;
    if (v48)
    {
      v51 = v48;
      goto LABEL_143;
    }
  }

  else
  {
    if (v187 != 779314548)
    {
      if (v187 == 1634431587)
      {
        OUTLINED_FUNCTION_2_36();
        v160 = OUTLINED_FUNCTION_22_1();
        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v160, v161, v162);
        if (v55)
        {
          goto LABEL_94;
        }

        v163 = xpc_dictionary_get_uint64(a2, "FromCryptorID");
        v55 = FigXPCServerLookupAndRetainAssociatedObject(a1, v163, v190, 0);
        if (v55)
        {
          goto LABEL_94;
        }

        if (*v190)
        {
          v166 = CFGetTypeID(*v190);
          if (v166 == FigCPECryptorGetTypeID())
          {
            v167 = cf[0];
            v168 = *v190;
            v169 = *(CMBaseObjectGetVTable(cf[0]) + 16);
            if (*v169 >= 6uLL)
            {
              v170 = v169[22];
              if (v170)
              {
                v55 = v170(v167, v168);
                goto LABEL_94;
              }
            }

            goto LABEL_122;
          }

          v179 = qword_1EAF1CF20;
          v180 = v4;
          v181 = 4294949726;
          v182 = 286;
        }

        else
        {
          v179 = qword_1EAF1CF20;
          v180 = v4;
          v181 = 4294951144;
          v182 = 285;
        }

        v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v179, v181, "<<< FigCPECryptorServer >>>", v182, v180, v164, v165, v183);
        goto LABEL_94;
      }

      if (v187 != 1667981680)
      {
        if (v187 == 1952543603)
        {
          cf[0] = 0;
          LOBYTE(value) = 0;
          *v190 = 0;
          v33 = OUTLINED_FUNCTION_22_1();
          v36 = cryptorServer_CopyCryptorByObjectIDForConnection(v33, v34, v35);
          if (v36)
          {
            v16 = v36;
            v39 = cf[0];
            goto LABEL_105;
          }

          int64 = xpc_dictionary_get_int64(a2, "ExpectedState");
          v38 = xpc_dictionary_get_int64(a2, "NewState");
          v39 = cf[0];
          v40 = *(CMBaseObjectGetVTable(cf[0]) + 16);
          if (*v40 >= 6uLL)
          {
            v41 = v40[20];
            if (v41)
            {
              v16 = v41(v39, int64, v38, &value, v190);
              if (!v16)
              {
                xpc_dictionary_set_BOOL(a3, "WasSetOutFlag", value != 0);
                v42 = *v190;
                v43 = "KeyRequestIDOut";
LABEL_103:
                xpc_dictionary_set_uint64(a3, v43, v42);
              }

LABEL_105:
              if (!v39)
              {
                return v16;
              }

              v51 = v39;
              goto LABEL_143;
            }
          }

          goto LABEL_104;
        }

        if (v187 != 1668310630)
        {
          if (v187 != 1768125049)
          {
            if (v187 != 1853058420)
            {
              if (v187 != 1936092532)
              {
                if (v187 == 1936417136)
                {
                  v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v183, v185, v186, v187, value, v189, *v190, *&v190[8], *&v190[16], cf[0]);
                  if (!v68)
                  {
                    v76 = xpc_dictionary_get_uint64(a2, "SessionID");
                    v77 = OUTLINED_FUNCTION_3_36();
                    v68 = FigXPCMessageCopyCFData(v77, v78, v79);
                    if (!v68)
                    {
                      v68 = FigXPCMessageCopyCFDictionary(a2, "KeyResponseOptionsDictionary", v190);
                      if (!v68)
                      {
                        v80 = value;
                        v81 = cf[0];
                        v82 = *v190;
                        v83 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v83 < 8uLL)
                        {
                          goto LABEL_82;
                        }

                        v84 = v83[28];
                        if (!v84)
                        {
                          goto LABEL_82;
                        }

                        v68 = v84(v80, v76, v81, v82);
                      }
                    }
                  }
                }

                else
                {
                  if (v187 != 1936418169)
                  {
                    switch(v187)
                    {
                      case 0x736B7272:
                        OUTLINED_FUNCTION_2_36();
                        v125 = OUTLINED_FUNCTION_22_1();
                        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v125, v126, v127);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v128 = OUTLINED_FUNCTION_3_36();
                        v55 = FigXPCMessageCopyCFError(v128, v129, v130);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v131, v132, v133, v134, v135, v136, v137, v183, v185, v186, v187, value, v189, *v190) + 8) + 56);
                        if (v66)
                        {
                          v67 = kFigCPECryptorProperty_KeyRequestError;
                          goto LABEL_93;
                        }

                        break;
                      case 0x73736164:
                        OUTLINED_FUNCTION_2_36();
                        v85 = OUTLINED_FUNCTION_22_1();
                        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v85, v86, v87);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v88 = OUTLINED_FUNCTION_3_36();
                        v55 = FigXPCMessageCopyCFData(v88, v89, v90);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v91, v92, v93, v94, v95, v96, v97, v183, v185, v186, v187, value, v189, *v190) + 8) + 56);
                        if (v66)
                        {
                          v67 = &kFigCPEBasicAESCryptorProperty_SubsampleAuxiliaryData;
                          goto LABEL_93;
                        }

                        break;
                      case 0x636B6579:
                        v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v183, v185, v186, v187, value, v189, *v190, *&v190[8], *&v190[16], cf[0]);
                        if (v68)
                        {
                          goto LABEL_81;
                        }

                        v69 = OUTLINED_FUNCTION_3_36();
                        v68 = FigXPCMessageCopyCFDictionary(v69, v70, v71);
                        if (v68)
                        {
                          goto LABEL_81;
                        }

                        v72 = value;
                        v73 = cf[0];
                        v74 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v74 >= 4uLL)
                        {
                          v75 = v74[11];
                          if (v75)
                          {
                            v68 = v75(v72, v73, *MEMORY[0x1E695E480], v190);
                            if (!v68)
                            {
                              v68 = FigXPCMessageSetCFData(a3, "SPCBytes", *v190);
                            }

                            goto LABEL_81;
                          }
                        }

LABEL_82:
                        v16 = 4294954514;
LABEL_83:
                        if (cf[0])
                        {
                          CFRelease(cf[0]);
                        }

                        if (*v190)
                        {
                          CFRelease(*v190);
                        }

                        v51 = value;
                        if (!value)
                        {
                          return v16;
                        }

LABEL_143:
                        CFRelease(v51);
                        return v16;
                      default:
                        return 4294951138;
                    }

                    goto LABEL_122;
                  }

                  v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v183, v185, v186, v187, value, v189, *v190, *&v190[8], *&v190[16], cf[0]);
                  if (!v68)
                  {
                    v68 = FigXPCMessageCopyCFData(a2, "KeyRequestResponse", v190);
                    if (!v68)
                    {
                      v117 = OUTLINED_FUNCTION_3_36();
                      v68 = FigXPCMessageCopyCFDictionary(v117, v118, v119);
                      if (!v68)
                      {
                        v120 = value;
                        v121 = *v190;
                        v122 = cf[0];
                        v123 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v123 < 4uLL)
                        {
                          goto LABEL_82;
                        }

                        v124 = v123[12];
                        if (!v124)
                        {
                          goto LABEL_82;
                        }

                        v68 = v124(v120, v121, v122);
                      }
                    }
                  }
                }

LABEL_81:
                v16 = v68;
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_2_36();
              v52 = OUTLINED_FUNCTION_22_1();
              v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v52, v53, v54);
              if (v55)
              {
                goto LABEL_94;
              }

              v56 = OUTLINED_FUNCTION_3_36();
              v55 = FigXPCMessageCopyFormatDescription(v56, v57, v58);
              if (v55)
              {
                goto LABEL_94;
              }

              v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v59, v60, v61, v62, v63, v64, v65, v183, v185, v186, v187, value, v189, *v190) + 8) + 56);
              if (v66)
              {
                v67 = kFigCPEBasicAESCryptorProperty_VideoFormatDescription;
LABEL_93:
                v55 = v66(a3, *v67, v3);
LABEL_94:
                v16 = v55;
                goto LABEL_123;
              }

LABEL_122:
              v16 = 4294954514;
LABEL_123:
              v171 = cf[0];
              if (!cf[0])
              {
                goto LABEL_125;
              }

              goto LABEL_124;
            }

            OUTLINED_FUNCTION_2_36();
            LODWORD(value) = 0;
            HIDWORD(v189) = 0;
            v138 = OUTLINED_FUNCTION_22_1();
            v141 = cryptorServer_CopyCryptorByObjectIDForConnection(v138, v139, v140);
            v39 = cf[0];
            if (v141)
            {
              goto LABEL_148;
            }

            v142 = *(*(CMBaseObjectGetVTable(cf[0]) + 16) + 8);
            if (!v142)
            {
              goto LABEL_104;
            }

            v141 = v142(v39, v190);
            if (v141)
            {
              goto LABEL_148;
            }

            v143 = *(*(CMBaseObjectGetVTable(v39) + 16) + 16);
            if (!v143)
            {
              goto LABEL_104;
            }

            v141 = v143(v39, &value);
            if (v141)
            {
LABEL_148:
              v16 = v141;
              goto LABEL_105;
            }

            v144 = *(*(CMBaseObjectGetVTable(v39) + 16) + 280);
            if (v144)
            {
              v16 = v144(v39, &v189 + 4);
              if (!v16)
              {
                xpc_dictionary_set_uint64(a3, "NativeSession", *v190);
                xpc_dictionary_set_uint64(a3, "ExternalProtectionMethods", value);
                v42 = HIDWORD(v189);
                v43 = "CryptorType";
                goto LABEL_103;
              }

              goto LABEL_105;
            }

LABEL_104:
            v16 = 4294954514;
            goto LABEL_105;
          }

          value = 0;
          v109 = OUTLINED_FUNCTION_22_1();
          v112 = cryptorServer_CopyCryptorByObjectIDForConnection(v109, v110, v111);
          if (v112)
          {
            v16 = v112;
            v32 = value;
            if (!value)
            {
              return v16;
            }
          }

          else
          {
            if (dword_1EAF1CF28)
            {
              HIDWORD(v189) = 0;
              HIBYTE(v187) = 0;
              v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF20, 1, &v189 + 1, &v187 + 7);
              v114 = HIDWORD(v189);
              v115 = HIBYTE(v187);
              if (os_log_type_enabled(v113, HIBYTE(v187)))
              {
                v116 = v114;
              }

              else
              {
                v116 = v114 & 0xFFFFFFFE;
              }

              if (v116)
              {
                *v190 = 136315394;
                *&v190[4] = "cryptorServer_Invalidate";
                *&v190[12] = 2048;
                *&v190[14] = value;
                _os_log_send_and_compose_impl(v116, 0, cf, 128, &dword_196FA7000, v113, v115, "<<< FigCPECryptorServer >>> %s: invalidating cryptor %p", v190, 22);
                LOBYTE(v114) = BYTE4(v189);
              }

              OUTLINED_FUNCTION_4_29();
              fig_log_call_emit_and_clean_up_after_send_and_compose(v172, v173, v174, v175, v176, v114);
            }

            v32 = value;
            if (!value)
            {
              return 4294954516;
            }

            v177 = *(*(CMBaseObjectGetVTable(value) + 8) + 24);
            if (v177)
            {
              v16 = v177(v32);
            }

            else
            {
              v16 = 4294954514;
            }
          }

LABEL_142:
          v51 = v32;
          goto LABEL_143;
        }

        v145 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v183, v185, v186, v187, value, v189, *v190, *&v190[8], *&v190[16], cf[0]);
        if (!v145)
        {
          v146 = OUTLINED_FUNCTION_3_36();
          v145 = FigXPCMessageCopyCFString(v146, v147, v148);
          if (!v145)
          {
            if (cf[0])
            {
              UInt32 = FigXPCMessageGetUInt32(a2, "Format", v149, v150, v151, v152, v153, v154);
              v156 = value;
              v157 = cf[0];
              v158 = *(CMBaseObjectGetVTable(value) + 16);
              if (*v158 < 6uLL || (v159 = v158[19]) == 0)
              {
                v16 = 4294954514;
LABEL_131:
                if (value)
                {
                  CFRelease(value);
                }

                if (*v190)
                {
                  CFRelease(*v190);
                }

                v51 = cf[0];
                if (cf[0])
                {
                  goto LABEL_143;
                }

                return v16;
              }

              v145 = v159(v156, v157, UInt32, *MEMORY[0x1E695E480], v190);
              if (!v145)
              {
                v145 = FigXPCMessageSetCFObject(a3, ".Value", *v190);
              }
            }

            else
            {
              v145 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFCE10uLL, "<<< FigCPECryptorServer >>>", 0x1C2, v4, v153, v154, v184);
            }
          }
        }

        v16 = v145;
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_2_36();
      value = 0;
      v98 = OUTLINED_FUNCTION_22_1();
      v101 = cryptorServer_CopyCryptorByObjectIDForConnection(v98, v99, v100);
      if (v101 || (v102 = xpc_dictionary_get_uint64(a2, "SessionID"), v101 = FigXPCMessageCopyCFData(a2, "ReceiverContext", &value), v101))
      {
        v16 = v101;
      }

      else
      {
        v103 = *v190;
        v104 = value;
        v105 = *(CMBaseObjectGetVTable(*v190) + 16);
        if (*v105 >= 8uLL && (v106 = v105[27]) != 0)
        {
          v107 = v106(v103, v102, v104, cf);
          v108 = cf[0];
          if (!v107)
          {
            v16 = FigXPCMessageSetCFData(a3, "KeyRequestResponse", cf[0]);
            v108 = cf[0];
            if (!cf[0])
            {
              goto LABEL_128;
            }

            goto LABEL_67;
          }

          v16 = v107;
          if (cf[0])
          {
LABEL_67:
            CFRelease(v108);
          }
        }

        else
        {
          v16 = 4294954514;
        }
      }

LABEL_128:
      v171 = value;
      if (!value)
      {
LABEL_125:
        v51 = *v190;
        if (!*v190)
        {
          return v16;
        }

        goto LABEL_143;
      }

LABEL_124:
      CFRelease(v171);
      goto LABEL_125;
    }

    cf[0] = 0;
    v28 = OUTLINED_FUNCTION_22_1();
    v31 = cryptorServer_CopyCryptorByObjectIDForConnection(v28, v29, v30);
    v32 = cf[0];
    if (!v31)
    {
      v31 = FigXPCHandleStdSetPropertyMessage(cf[0], a2);
    }

    v16 = v31;
    if (v32)
    {
      goto LABEL_142;
    }
  }

  return v16;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  if (!gFigCPECryptorServer)
  {
    return 4294949721;
  }

  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return FigXPCServerAssociateCopiedObjectWithNeighborProcess(gFigCPECryptorServer, a2, a1, 0, 0, cryptorServer_NotificationFilter, a3);
      }

      v11 = qword_1EAF1CF20;
      v12 = 754;
    }

    else
    {
      v11 = qword_1EAF1CF20;
      v12 = 753;
    }
  }

  else
  {
    v11 = qword_1EAF1CF20;
    v12 = 752;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", v12, v9, a3, a8, a9);
}

size_t cryptorServer_CopyCryptorByObjectIDForConnection(_xpc_connection_s *a1, xpc_object_t xdict, CFTypeRef *a3)
{
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  if (!uint64)
  {
    return 4294949726;
  }

  v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (!v7)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == FigCPECryptorGetTypeID())
      {
        v11 = 0;
        *a3 = CFRetain(cf);
        goto LABEL_6;
      }

      v13 = qword_1EAF1CF20;
      v14 = v3;
      v15 = 4294949726;
      v16 = 178;
    }

    else
    {
      v13 = qword_1EAF1CF20;
      v14 = v3;
      v15 = 4294951144;
      v16 = 177;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< FigCPECryptorServer >>>", v16, v14, v8, v9, v17);
  }

  v11 = v7;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DF, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x303, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientPID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x302, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x314, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x313, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerCopyCryptorForID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFCE14uLL, "<<< FigCPECryptorServer >>>", 0x325, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerCopyCryptorForID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB59uLL, "<<< FigCPECryptorServer >>>", 0x322, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t fsbxpc_sandboxRegisterURLWithProcessCommon(CFURLRef anURL, int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (anURL && a4 <= 1)
  {
    v12 = anURL;
    if (_MergedGlobals_58 != -1)
    {
      dispatch_once(&_MergedGlobals_58, &__block_literal_global_51);
    }

    v13 = CFURLCopyScheme(v12);
    v14 = v13;
    v15 = MEMORY[0x1E695E480];
    if (v13)
    {
      if (CFStringCompare(v13, @"file", 1uLL))
      {
LABEL_22:
        CFRelease(v14);
        goto LABEL_23;
      }

      v16 = 0;
    }

    else
    {
      v17 = *MEMORY[0x1E695E480];
      v18 = CFURLGetString(v12);
      v12 = CFURLCreateWithFileSystemPath(v17, v18, kCFURLPOSIXPathStyle, a2 == 0);
      v16 = v12;
      if (!v12)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x272, v6, v27, v28, v30);
        *(v39 + 6) = v29;
        goto LABEL_23;
      }
    }

    v31 = a6;
    v19 = CFURLCopyAbsoluteURL(v12);
    v20 = v19;
    if (a2 && a3)
    {
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(*v15, v19);
      v22 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
      v23 = 1;
    }

    else
    {
      v23 = a2 == 0;
      v22 = CFURLCopyFileSystemPath(v19, kCFURLPOSIXPathStyle);
      PathComponent = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke;
    block[3] = &unk_1E74A51C8;
    block[4] = &v38;
    block[5] = v22;
    v35 = v23;
    v33 = a4;
    v34 = a5;
    v36 = a2;
    v37 = a3;
    block[6] = v31;
    dispatch_sync(qword_1ED4CCEC8, block);
    if (v16)
    {
      CFRelease(v16);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v14)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v24 = *(v39 + 6);
  _Block_object_dispose(&v38, 8);
  return v24;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x1FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FIGSANDBOX >>>>", 0x22F, v3, v4, v5, v7);
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x235, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x230, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9DuLL, "<<<< FIGSANDBOX >>>>", 0x22C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9CuLL, "<<<< FIGSANDBOX >>>>", 0x220, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x1D9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x1D3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t CM8021ASClockEnsureTimeSyncServices()
{
  v45 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CCF20 != -1)
  {
    dispatch_once_f(&qword_1ED4CCF20, 0, LoadTimeSyncFunctions_2);
  }

  FigSimpleMutexLock(qword_1ED4CCF28);
  if ((_MergedGlobals_59 & 1) == 0)
  {
    v1 = 0;
    *&v0 = 136315394;
    v36 = v0;
    while (1)
    {
      v2 = (*(qword_1ED4CD068 + 16))(1000);
      if (v2)
      {
        break;
      }

      if (dword_1EAF1CF48)
      {
        v10 = OUTLINED_FUNCTION_25_7(v2, v3, v4, v5, v6, v7, v8, v9, v33, v34, v36, *(&v36 + 1), v37, v38, SBYTE2(v38), SBYTE3(v38), SHIDWORD(v38));
        v11 = os_log_type_enabled(v10, BYTE3(v38));
        if (OUTLINED_FUNCTION_11_15(v11))
        {
          v40 = v36;
          v41 = "CM8021ASClockEnsureTimeSyncServices";
          v42 = 1024;
          v43 = v1;
          OUTLINED_FUNCTION_6_3();
          v16 = _os_log_send_and_compose_impl(v12, v13, v14, v15, &dword_196FA7000, v10, BYTE3(v38), "<<<< 8021ASClock >>>> %s: Add gPTP TimeSync Services failed. Failure count: %d.", &v40, 18);
        }

        else
        {
          v16 = 0;
        }

        OUTLINED_FUNCTION_27_8(qword_1EAF1CF40, 1, 1, v16, v16 != &v44);
      }

      if (++v1 == 9)
      {
        v17 = 4294951236;
        goto LABEL_18;
      }
    }

    _MergedGlobals_59 = 1;
    if (dword_1EAF1CF48)
    {
      v18 = OUTLINED_FUNCTION_25_7(v2, v3, v4, v5, v6, v7, v8, v9, v33, v34, v36, *(&v36 + 1), v37, v38, SBYTE2(v38), SBYTE3(v38), SHIDWORD(v38));
      v19 = os_log_type_enabled(v18, type);
      if (OUTLINED_FUNCTION_11_15(v19))
      {
        v40 = 136315138;
        v41 = "CM8021ASClockEnsureTimeSyncServices";
        LODWORD(v35) = 12;
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, type, v26, &v40, v35);
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v27, v28, v29, v30, v31);
    }
  }

  v17 = 0;
LABEL_18:
  FigSimpleMutexUnlock(qword_1ED4CCF28);
  return v17;
}

void fig8021ASClock_LockStateDidChange(id a1, id *a2, int a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v14 = v6;
  if (v6)
  {
    if (v6[6] == a1)
    {
      if (dword_1EAF1CF48)
      {
        v15 = OUTLINED_FUNCTION_20_10(v6, v7, v8, v9, v10, v11, v12, v13, v61, v62, block, v64, v65, v66, v67, v68, v69, type, v71);
        v16 = v71;
        if (os_log_type_enabled(v15, type))
        {
          v17 = v71;
        }

        else
        {
          v17 = v71 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v72 = 136315650;
          v73 = "fig8021ASClock_LockStateDidChange";
          v74 = 2048;
          v75 = v14;
          v76 = 1024;
          LODWORD(v77) = a3;
          OUTLINED_FUNCTION_5_12();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v15, type, v23);
          v16 = v71;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v24, v25, v26, v27, v28, v16);
      }

      FigSimpleMutexLock(*(v14 + 32));
      v29 = *(v14 + 56);
      v30 = (*(qword_1ED4CD068 + 80))(*(v14 + 48));
      *(v14 + 40) = a3;
      v31 = v30;
      if (a3 != 2)
      {
        v31 = **(qword_1ED4CD068 + 8);
      }

      *(v14 + 56) = v31;
      v32 = FigSimpleMutexUnlock(*(v14 + 32));
      if (dword_1EAF1CF48)
      {
        v40 = OUTLINED_FUNCTION_20_10(v32, v33, v34, v35, v36, v37, v38, v39, v61, v62, block, v64, v65, v66, v67, v68, v69, type, v71);
        v41 = v71;
        if (os_log_type_enabled(v40, type))
        {
          v42 = v71;
        }

        else
        {
          v42 = v71 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v43 = *(v14 + 40);
          v72 = 136316162;
          if (v43 == 2)
          {
            v44 = "locked";
          }

          else
          {
            v44 = "not locked";
          }

          v73 = "fig8021ASClock_LockStateDidChange";
          v74 = 2048;
          v75 = v14;
          v76 = 2048;
          v77 = v29;
          v78 = 2080;
          v79 = v44;
          v80 = 2048;
          v81 = v30;
          OUTLINED_FUNCTION_5_12();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v40, type, v50);
          v41 = v71;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v51, v52, v53, v54, v55, v41);
      }

      if (a3 != 1)
      {
        FigReadWriteLockLockForRead(*(v14 + 16));
        global_queue = dispatch_get_global_queue(0, 0);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification(global_queue, DefaultLocalCenter, @"CM8021ASClockLockStateDidChange", v14, 0, 0, v58, v59);
        FigReadWriteLockUnlockForRead(*(v14 + 16));
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x2CF, v3, v12, v13, v61);
    }
  }

  v60 = dispatch_get_global_queue(0, 0);
  block = MEMORY[0x1E69E9820];
  v64 = 0x40000000;
  v65 = __fig8021ASClock_LockStateDidChange_block_invoke;
  v66 = &__block_descriptor_tmp_121;
  v67 = v14;
  dispatch_async(v60, &block);
}

size_t CM8021ASClockAddIPv4PortAndGetIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigSimpleMutexLock(*(a1 + 64));
  v13 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v26, v27, v28);
  }

  if (v13 != qword_1ED4CCF18)
  {
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x32E, v5, v11, v12, v29);
LABEL_8:
    v14 = v16;
    goto LABEL_9;
  }

  if (a3 != 2130706433)
  {
    OUTLINED_FUNCTION_21_11();
    v16 = (*(v15 + 120))(*(a1 + 48), a2, a3, a4, a5);
    if (!v16)
    {
      v17 = OUTLINED_FUNCTION_23_9();
      v16 = fig8021ASClock_addPortNumberForAddress(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v14;
}

size_t fig8021ASClock_addPortNumberForAddress(uint64_t a1, UInt8 *a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v11 = OUTLINED_FUNCTION_28_8(a2, a3, v18);
  if (v11)
  {
    v16 = v11;
    UInt16 = 0;
    v15 = 0;
  }

  else
  {
    UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a4);
    if (UInt16)
    {
      v15 = (*(qword_1ED4CD068 + 192))(*(a1 + 48), a4);
      if (v15)
      {
        CFDictionarySetValue(*(a1 + 72), 0, UInt16);
        CFDictionarySetValue(*(a1 + 80), UInt16, v15);
        v16 = 0;
      }

      else
      {
        v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x4AD, v8, v13, v14, v19);
      }
    }

    else
    {
      v15 = 0;
      v16 = 4294954549;
    }
  }

  if (UInt16)
  {
    CFRelease(UInt16);
  }

  if (v16 && v15)
  {
    (*(qword_1ED4CD068 + 200))(v15);
  }

  return v16;
}

uint64_t CM8021ASClockRemoveIPv4Port(uint64_t a1, uint64_t a2, unsigned int a3)
{
  FigSimpleMutexLock(*(a1 + 64));
  v9 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v30, v31, v32);
  }

  if (v9 != qword_1ED4CCF18)
  {
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x356, v3, v7, v8, v33);
LABEL_10:
    v10 = v20;
    goto LABEL_6;
  }

  if (a3 != 2130706433)
  {
    v12 = OUTLINED_FUNCTION_23_9();
    v20 = fig8021ASClock_addPortMetricsToMetricsDictForAddress(v12, v13, v14, v15, v16, v17, v18, v19);
    if (!v20)
    {
      OUTLINED_FUNCTION_21_11();
      v20 = (*(v21 + 128))(*(a1 + 48), a2, a3);
      if (!v20)
      {
        v22 = OUTLINED_FUNCTION_23_9();
        v20 = fig8021ASClock_clearPortStateForAddress(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_6:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v10;
}

size_t fig8021ASClock_addPortMetricsToMetricsDictForAddress(uint64_t a1, UInt8 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  key = 0;
  v9 = OUTLINED_FUNCTION_28_8(a2, a3, 0);
  if (v9)
  {
    v18 = v9;
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 72), key);
    if (Value)
    {
      v11 = Value;
      UInt16 = FigCFNumberGetUInt16(Value);
      v18 = fig8021ASClock_copyPortMetricsForPortIfValid(a1, UInt16, &cf, v13, v14, v15, v16, v17, cf);
      if (!v18)
      {
        FigCFDictionarySetValue(*(a1 + 104), v11, cf);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t fig8021ASClock_clearPortStateForAddress(CFDictionaryRef *a1, UInt8 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_28_8(a2, a3, v13);
  if (!v9)
  {
    Value = CFDictionaryGetValue(a1[9], 0);
    if (Value)
    {
      v11 = Value;
      CFSetRemoveValue(a1[11], Value);
      CFDictionaryRemoveValue(a1[10], v11);
      CFDictionaryRemoveValue(a1[9], 0);
    }
  }

  return v9;
}

size_t CM8021ASClockAddIPv6PortAndGetIdentity(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a3;
  v30 = a4;
  FigSimpleMutexLock(*(a1 + 64));
  v13 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v26, v27, v28);
  }

  if (v13 == qword_1ED4CCF18)
  {
    if (!memcmp(&v29, MEMORY[0x1E69E99D0], 0x10uLL))
    {
      v24 = 0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_21_11();
    v15 = (*(v14 + 144))(*(a1 + 48), a2, &v29, a5, a6);
    if (!v15)
    {
      v16 = OUTLINED_FUNCTION_22_9();
      v15 = fig8021ASClock_addPortNumberForAddress(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3A4, v6, v11, v12, v29, v30);
  }

  v24 = v15;
LABEL_9:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v24;
}

uint64_t CM8021ASClockRemoveIPv6Port(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  FigSimpleMutexLock(*(a1 + 64));
  v9 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v30, v31, v32);
  }

  if (v9 != qword_1ED4CCF18)
  {
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3CC, v4, v7, v8, v33, v34);
LABEL_10:
    v10 = v20;
    goto LABEL_6;
  }

  if (memcmp(&v33, MEMORY[0x1E69E99D0], 0x10uLL))
  {
    v12 = OUTLINED_FUNCTION_22_9();
    v20 = fig8021ASClock_addPortMetricsToMetricsDictForAddress(v12, v13, v14, v15, v16, v17, v18, v19);
    if (!v20)
    {
      OUTLINED_FUNCTION_21_11();
      v20 = (*(v21 + 152))(*(a1 + 48), a2, &v33);
      if (!v20)
      {
        v22 = OUTLINED_FUNCTION_22_9();
        v20 = fig8021ASClock_clearPortStateForAddress(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_6:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v10;
}

size_t CM8021ASClockCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v153[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_58;
  }

  v8 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v86, v87, v88);
  }

  if (v8 != qword_1ED4CCF18)
  {
LABEL_58:
    OUTLINED_FUNCTION_6_28();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x6E4, v83, v84, v85, v114);
    return 0;
  }

  v9 = 4294951233;
  if (!a2 || !a4)
  {
    return v9;
  }

  if (!CFEqual(a2, @"CM8021ASClockDiagnosticString"))
  {
    if (!CFEqual(a2, @"CM8021ASClockMetrics"))
    {
      return 4294951232;
    }

    v15 = *(qword_1ED4CD068 + 256);
    if (!v15)
    {
      goto LABEL_18;
    }

    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v16 = v15(*(a1 + 48), &v141, 40, 0);
    if (v16)
    {
      OUTLINED_FUNCTION_6_28();
      v28 = 4294951233;
      v29 = 1841;
LABEL_17:
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v28, "<<<< 8021ASClock >>>>", v29, v25, v26, v27, v114, v115);
      goto LABEL_18;
    }

    if (dword_1EAF1CF48)
    {
      v30 = OUTLINED_FUNCTION_24_9(v16, v17, v18, v19, v20, v21, v22, v23, v114, v115, v117, v118, v119, v120, v121, v123, cf, v127, value, v131, context, v133, v134, v135, v136, v137, v138, v139, type);
      v31 = v131;
      if (os_log_type_enabled(v30, type))
      {
        v32 = v131;
      }

      else
      {
        v32 = v131 & 0xFFFFFFFE;
      }

      if (v32)
      {
        *v144 = 136316162;
        *&v144[4] = "fig8021ASClock_copyClockMetricsForClock";
        v145 = 2048;
        v146 = v143;
        v147 = 2048;
        v148 = *(&v141 + 1);
        v149 = 2048;
        v150 = v142;
        v151 = 2048;
        v152 = *(&v142 + 1);
        LODWORD(v115) = 52;
        v114 = v144;
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl(v33, v34, v35, v36, v37, v30, type, v38);
        v31 = v131;
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v39, v40, v41, v42, v43, v31);
    }

    v44 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_6_28();
      v28 = 4294951231;
      v29 = 1848;
      goto LABEL_17;
    }

    v46 = Mutable;
    UInt64 = FigCFNumberCreateUInt64(v44, v143);
    if (!UInt64)
    {
      OUTLINED_FUNCTION_6_28();
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x73C, v94, v95, v96, v114);
      goto LABEL_65;
    }

    v48 = UInt64;
    v49 = FigCFNumberCreateUInt64(v44, *(&v141 + 1));
    cfa = v48;
    if (v49)
    {
      valuea = FigCFNumberCreateUInt64(v44, v142);
      if (valuea)
      {
        v128 = FigCFNumberCreateUInt64(v44, *(&v142 + 1));
        if (v128)
        {
          v50 = CFUUIDCreateString(v44, *(a1 + 112));
          if (v50)
          {
            v51 = v50;
            CFDictionarySetValue(v46, @"CoreAudioReanchors", v48);
            CFDictionarySetValue(v46, @"GMChangesCount", v49);
            CFDictionarySetValue(v46, @"TimeToChangeGM", valuea);
            CFDictionarySetValue(v46, @"TimeToLock", v128);
            v124 = v51;
            CFDictionarySetValue(v46, @"ClockUUID", v51);
            Copy = CFDictionaryCreateCopy(v44, v46);
            if (Copy)
            {
              v60 = Copy;
              if (dword_1EAF1CF48 >= 2)
              {
                v61 = OUTLINED_FUNCTION_24_9(Copy, v53, v54, v55, v56, v57, v58, v59, v114, v115, v117, v118, v119, v120, v49, v51, cfa, v128, valuea, v131, context, v133, v134, v135, v136, v137, v138, v139, type);
                v62 = v131;
                if (os_log_type_enabled(v61, type))
                {
                  v63 = v131;
                }

                else
                {
                  v63 = v131 & 0xFFFFFFFE;
                }

                if (v63)
                {
                  *v144 = 136315394;
                  *&v144[4] = "fig8021ASClock_copyClockMetricsForClock";
                  v145 = 2112;
                  v146 = v60;
                  LODWORD(v116) = 22;
                  OUTLINED_FUNCTION_6_3();
                  _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, v61, type, v69, v144, v116);
                  v62 = v131;
                }

                OUTLINED_FUNCTION_1_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose(v70, v71, v72, v73, v74, v62);
                v49 = v122;
              }

              v75 = CFRetain(v60);
              CFRelease(v46);
              CFRelease(v60);
              CFRelease(cfa);
              v9 = 0;
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_6_28();
            v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v110, 0xFFFFC13FuLL, "<<<< 8021ASClock >>>>", 0x753, v111, v112, v113, v114);
          }

          else
          {
            OUTLINED_FUNCTION_6_28();
            v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x748, v107, v108, v109, v114);
            v124 = 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_28();
          v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x745, v103, v104, v105, v114);
          v124 = 0;
          v128 = 0;
        }

LABEL_71:
        CFRelease(v46);
        CFRelease(cfa);
        v75 = 0;
        v46 = 0;
        if (!v49)
        {
LABEL_44:
          if (valuea)
          {
            CFRelease(valuea);
          }

          if (v128)
          {
            CFRelease(v128);
          }

          if (v124)
          {
            CFRelease(v124);
          }

          if (v9 || !v46)
          {
            if (!v46)
            {
LABEL_18:
              if (v9)
              {
                return v9;
              }

              goto LABEL_54;
            }
          }

          else
          {
            UInt16 = FigCFNumberCreateUInt16(v44, 0);
            if (UInt16)
            {
              v77 = UInt16;
              CFDictionarySetValue(*(a1 + 104), UInt16, v46);
              v78 = *(a1 + 72);
              context = MEMORY[0x1E69E9820];
              v133 = 0x40000000;
              v134 = __fig8021ASClock_getMetricsForClockAndAllPorts_block_invoke;
              v135 = &__block_descriptor_tmp_155;
              v136 = a1;
              FigCFDictionaryApplyBlock(v78, &context);
              CFRelease(v46);
              CFRelease(v77);
LABEL_54:
              v79 = CFDictionaryCreateCopy(a3, *(a1 + 104));
              if (!v79)
              {
                OUTLINED_FUNCTION_6_28();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, 0xFFFFC13FuLL, "<<<< 8021ASClock >>>>", 0x6F2, v90, v91, v92, v114);
              }

              v80 = v79;
              CFDictionaryRemoveAllValues(*(a1 + 104));
              *a4 = CFRetain(v80);
              CFRelease(v80);
              return 0;
            }

            v9 = 0;
          }

LABEL_65:
          CFRelease(v46);
          goto LABEL_18;
        }

LABEL_43:
        CFRelease(v49);
        v46 = v75;
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_6_28();
      v101 = 1858;
    }

    else
    {
      OUTLINED_FUNCTION_6_28();
      v101 = 1855;
    }

    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", v101, v98, v99, v100, v114, v115);
    v124 = 0;
    v128 = 0;
    valuea = 0;
    goto LABEL_71;
  }

  v153[0] = 0;
  *v144 = 0;
  *&v141 = 0;
  v131 = -1;
  context = 0;
  v10 = CFStringCreateMutable(a3, 0);
  if (!v10)
  {
    return 4294951231;
  }

  v11 = v10;
  CFStringAppendFormat(v10, 0, @"CM8021ASClock diags: %p\n", a1);
  CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:    timeSyncClock: %p\n", *(a1 + 48));
  v12 = (*(qword_1ED4CD068 + 88))();
  CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:    ATSAC: %016llx\n", v12);
  v13 = *(qword_1ED4CD068 + 224);
  if (v13)
  {
    v14 = v13(*(a1 + 48), v153, v144, &v141, &context, &v131);
    CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:     RateAndIdentity: err: %u; numerator: %llu; denominator: %llu; machAnchor: %llu; domainAnchor: %llu; gm: %llu\n", v14, v153[0], *v144, v141, context, v131);
  }

  else
  {
    CFStringAppend(v11, @"CM8021ASClock diags      err: gFTable.functions->pTimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity is NULL\n");
  }

  v9 = 0;
  *a4 = v11;
  return v9;
}

void __timesyncLogMeanIntervalApplier_unregisterClientAndDisposeClockIfNecessary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = --dword_1ED4CCF40;
  if (dword_1EAF1CF48 >= 2)
  {
    v10 = OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v61, v64, v67, v70, SBYTE2(v70), SBYTE3(v70), SHIDWORD(v70));
    v18 = OUTLINED_FUNCTION_17_10(v10, v11, v12, v13, v14, v15, v16, v17, v62, v65, v68, v71, v73, v75, v77);
    if (OUTLINED_FUNCTION_11_15(v18))
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_8_19();
      _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, v8, v25);
      OUTLINED_FUNCTION_31_6();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_27_8(v26, v27, v28, v29, v30);
    v9 = dword_1ED4CCF40;
  }

  if (v9 <= 0)
  {
    if (qword_1ED4CCF48)
    {
      OUTLINED_FUNCTION_21_11();
      v32 = (*(v31 + 96))();
      if (dword_1EAF1CF48)
      {
        v40 = OUTLINED_FUNCTION_12_15(v32, v33, v34, v35, v36, v37, v38, v39, v61, v64, v67, v70, SBYTE2(v70), SBYTE3(v70), SHIDWORD(v70));
        v48 = OUTLINED_FUNCTION_17_10(v40, v41, v42, v43, v44, v45, v46, v47, v63, v66, v69, v72, v74, v76, v78);
        if (OUTLINED_FUNCTION_11_15(v48))
        {
          OUTLINED_FUNCTION_30_5();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_8_19();
          _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v54, v8, v55);
          OUTLINED_FUNCTION_31_6();
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_27_8(v56, v57, v58, v59, v60);
      }

      (*(qword_1ED4CD068 + 40))(qword_1ED4CCF48);
      qword_1ED4CCF48 = 0;
      v9 = dword_1ED4CCF40;
    }

    if (v9 < 0)
    {
      dword_1ED4CCF40 = 0;
    }
  }
}

uint64_t fig8021ASClock_copyCFTypeRepresentationOfAddress(UInt8 *bytes, int a2, CFDataRef *a3)
{
  result = 4294954550;
  if (bytes && a3)
  {
    if (a2 == 30)
    {
      UInt32 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
      if (UInt32)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a2 != 2)
      {
        v7 = 0;
        result = 4294954550;
        goto LABEL_10;
      }

      UInt32 = FigCFNumberCreateUInt32(*MEMORY[0x1E695E480], *bytes);
      if (UInt32)
      {
LABEL_6:
        v7 = UInt32;
        result = 0;
LABEL_10:
        *a3 = v7;
        return result;
      }
    }

    return 4294954549;
  }

  return result;
}

size_t fig8021ASClock_copyPortMetricsForPortIfValid(CFStringRef a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v189 = *MEMORY[0x1E69E9840];
  if (!*(qword_1ED4CD068 + 264))
  {
    return 4294951233;
  }

  v10 = v9;
  v14 = *MEMORY[0x1E695E480];
  UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a2);
  if (UInt16)
  {
    v16 = UInt16;
    bzero(&v156, 0x8AuLL);
    v17 = (*(qword_1ED4CD068 + 264))(a1[1].data, a2, &v156, 138, 0);
    if (v17)
    {
      OUTLINED_FUNCTION_4_30();
      v29 = 4294951233;
      v30 = 1945;
LABEL_5:
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v29, "<<<< 8021ASClock >>>>", v30, v26, v27, v28, v130, v131);
LABEL_6:
      v31 = v16;
LABEL_55:
      CFRelease(v31);
      return v10;
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v162), vceqzq_s64(v163))))) & 1) == 0 && !(v161 | v158 | v159 | v160 | v164) && !v157)
    {
      v10 = 0;
      goto LABEL_6;
    }

    if (dword_1EAF1CF48)
    {
      v32 = OUTLINED_FUNCTION_33_6(v17, v18, v19, v20, v21, v22, v23, v24, v130, v131, v133, v134, v137, v138, v140, v142, v144, v146, v147, cf, value, *v151, *&v151[4], v151[6], 0, 0);
      v33 = v154;
      v34 = os_log_type_enabled(v32, typea);
      if (OUTLINED_FUNCTION_6_2(v34))
      {
        v165 = 136317954;
        v166 = "fig8021ASClock_copyPortMetricsForPortIfValid";
        v167 = 2048;
        v168 = v162.i64[1];
        v169 = 2048;
        v170 = v163.i64[0];
        v171 = 2048;
        v172 = v162.i64[0];
        v173 = 2048;
        v174 = v163.i64[1];
        v175 = 2048;
        v176 = v161;
        v177 = 2048;
        v178 = v158;
        v179 = 2048;
        v180 = v159;
        v181 = 2048;
        v182 = v160;
        v183 = 1024;
        v184 = v156;
        v185 = 2048;
        v186 = v164;
        v187 = 2048;
        v188 = v157;
        LODWORD(v131) = 118;
        v130 = &v165;
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6(v35, v36, v37, v38, v39, v40, v41, v42);
        v33 = v154;
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v43, v44, v45, v46, v47, v33);
    }

    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_4_30();
      v29 = 4294951231;
      v30 = 1954;
      goto LABEL_5;
    }

    v49 = Mutable;
    valuea = FigCFNumberCreateUInt64(v14, v162.i64[1]);
    if (!valuea)
    {
      OUTLINED_FUNCTION_4_30();
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7A6, v88, v89, v90, v130);
      CFRelease(v49);
      goto LABEL_6;
    }

    UInt64 = FigCFNumberCreateUInt64(v14, v163.i64[0]);
    if (UInt64)
    {
      v145 = FigCFNumberCreateUInt64(v14, v162.i64[0]);
      if (v145)
      {
        v143 = FigCFNumberCreateUInt64(v14, v163.i64[1]);
        if (v143)
        {
          v141 = FigCFNumberCreateUInt64(v14, v161);
          if (v141)
          {
            v139 = FigCFNumberCreateUInt64(v14, v158);
            if (v139)
            {
              cf = FigCFNumberCreateUInt64(v14, v159);
              if (cf)
              {
                v147 = FigCFNumberCreateUInt64(v14, v160);
                if (v147)
                {
                  v146 = FigCFNumberCreateUInt64(v14, v164);
                  if (v146)
                  {
                    v51 = FigCFNumberCreateUInt64(v14, v157);
                    if (v51)
                    {
                      v52 = v51;
                      a1 = CFUUIDCreateString(v14, a1[3].data);
                      v137 = v52;
                      if (a1)
                      {
                        CFDictionarySetValue(v49, @"DiscardedDelayLimitExceededPercentage", valuea);
                        CFDictionarySetValue(v49, @"DiscardedOutOfBoundsPercentage", UInt64);
                        CFDictionarySetValue(v49, @"DiscardedPpmLimitPercentage", v145);
                        CFDictionarySetValue(v49, @"DiscardedTimestampsOutOfOrderPercentage", v143);
                        CFDictionarySetValue(v49, @"DroppedPercentage", v141);
                        CFDictionarySetValue(v49, @"FilterResetsDroppedLimit", v139);
                        CFDictionarySetValue(v49, @"FilterResetsOutOfBounds", cf);
                        CFDictionarySetValue(v49, @"MeanDelayTime", v147);
                        CFDictionarySetValue(v49, @"SuccessfulPercentage", v146);
                        CFDictionarySetValue(v49, @"SyncTimeouts", v52);
                        CFDictionarySetValue(v49, @"ClockUUID", a1);
                        Copy = CFDictionaryCreateCopy(v14, v49);
                        if (Copy)
                        {
                          v61 = Copy;
                          if (dword_1EAF1CF48 >= 2)
                          {
                            v135 = UInt64;
                            v62 = v16;
                            v63 = OUTLINED_FUNCTION_33_6(Copy, v54, v55, v56, v57, v58, v59, v60, v130, v131, v133, v135, v52, v139, v141, v143, v145, v146, v147, cf, valuea, *v151, *&v151[4], v151[6], 0, 0);
                            v64 = v155;
                            if (os_log_type_enabled(v63, type))
                            {
                              v65 = v155;
                            }

                            else
                            {
                              v65 = v155 & 0xFFFFFFFE;
                            }

                            if (v65)
                            {
                              v165 = 136315394;
                              v166 = "fig8021ASClock_copyPortMetricsForPortIfValid";
                              v167 = 2112;
                              v168 = v61;
                              LODWORD(v132) = 22;
                              OUTLINED_FUNCTION_8_19();
                              _os_log_send_and_compose_impl(v66, v67, v68, v69, v70, v71, type, v72, &v165, v132);
                              v64 = v155;
                            }

                            OUTLINED_FUNCTION_1_1();
                            fig_log_call_emit_and_clean_up_after_send_and_compose(v73, v74, v75, v76, v77, v64);
                            v16 = v62;
                            UInt64 = v136;
                          }

                          *a3 = CFRetain(v61);
                          CFRelease(v49);
                          CFRelease(v61);
                          CFRelease(valuea);
                          v10 = 0;
                          v79 = v143;
                          v78 = v145;
                          v81 = v139;
                          v80 = v141;
LABEL_36:
                          CFRelease(UInt64);
LABEL_37:
                          if (v78)
                          {
                            CFRelease(v78);
                          }

                          if (v79)
                          {
                            CFRelease(v79);
                          }

                          if (v80)
                          {
                            CFRelease(v80);
                          }

                          if (v81)
                          {
                            CFRelease(v81);
                          }

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          if (v147)
                          {
                            CFRelease(v147);
                          }

                          if (v146)
                          {
                            CFRelease(v146);
                          }

                          if (v137)
                          {
                            CFRelease(v137);
                          }

                          CFRelease(v16);
                          if (!a1)
                          {
                            return v10;
                          }

                          v31 = a1;
                          goto LABEL_55;
                        }

                        OUTLINED_FUNCTION_4_30();
                        v128 = 4294951231;
                        v129 = 2005;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_30();
                        v128 = 4294951233;
                        v129 = 1988;
                      }

                      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v124, v128, "<<<< 8021ASClock >>>>", v129, v125, v126, v127, v130, v131);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_4_30();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7C1, v121, v122, v123, v130);
                      OUTLINED_FUNCTION_7_21();
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_4_30();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7BE, v117, v118, v119, v130);
                    OUTLINED_FUNCTION_7_21();
                    v146 = 0;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_4_30();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v112, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7BB, v113, v114, v115, v130);
                  OUTLINED_FUNCTION_7_21();
                  v146 = 0;
                  v147 = 0;
                }
              }

              else
              {
                OUTLINED_FUNCTION_4_30();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v108, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B8, v109, v110, v111, v130);
                OUTLINED_FUNCTION_5_31();
              }

              v79 = v143;
              v78 = v145;
              v81 = v139;
              v80 = v141;
            }

            else
            {
              OUTLINED_FUNCTION_4_30();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v104, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B5, v105, v106, v107, v130);
              OUTLINED_FUNCTION_5_31();
              v81 = 0;
              v79 = v143;
              v78 = v145;
              v80 = v141;
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_30();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B2, v101, v102, v103, v130);
            OUTLINED_FUNCTION_5_31();
            v81 = 0;
            v80 = 0;
            v79 = v143;
            v78 = v145;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_30();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7AF, v97, v98, v99, v130);
          OUTLINED_FUNCTION_5_31();
          v81 = 0;
          v80 = 0;
          v79 = 0;
          v78 = v145;
        }

LABEL_77:
        CFRelease(v49);
        CFRelease(valuea);
        if (!UInt64)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_4_30();
      v95 = 1964;
    }

    else
    {
      OUTLINED_FUNCTION_4_30();
      v95 = 1961;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", v95, v92, v93, v94, v130, v131);
    OUTLINED_FUNCTION_5_31();
    v81 = 0;
    v80 = 0;
    v79 = 0;
    v78 = 0;
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_4_30();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v83, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x794, v84, v85, v86, a9);
}

void __timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStarted_block_invoke()
{
  qword_1ED4CCF30 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.8021as.gLogMeanIntervalApplier.applierQueue", 0, 39);
  if (qword_1ED4CCF30)
  {
    byte_1ED4CCF38 = -3;
    *&dword_1ED4CCF3C = 0xFFFFFFFFLL;
    word_1ED4CCF50 = 0;
    if (dword_1EAF1CF48)
    {
      v8 = OUTLINED_FUNCTION_12_3(qword_1EAF1CF40, v1, v2, v3, v4, v5, v6, v7, v29, v31, v33, *v35, v35[2], 0, 0);
      v16 = OUTLINED_FUNCTION_17_10(v8, v9, v10, v11, v12, v13, v14, v15, v30, v32, v34, v36, v37, type, v39);
      if (OUTLINED_FUNCTION_11_15(v16))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v22, v0, v23);
        OUTLINED_FUNCTION_31_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v24, v25, v26, v27, v28);
    }
  }
}

void timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStartedInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++dword_1ED4CCF40;
  if (dword_1EAF1CF48 >= 2)
  {
    v9 = OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v66, v69, v72, v75, SBYTE2(v75), SBYTE3(v75), SHIDWORD(v75));
    v17 = OUTLINED_FUNCTION_5_2(v9, v10, v11, v12, v13, v14, v15, v16, v67, v70, v73, v76, v78, v80, v82);
    if (OUTLINED_FUNCTION_6_2(v17))
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_29_6(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v26, v27, v28, v29, v30);
  }

  if (!qword_1ED4CCF48)
  {
    if ((*(qword_1ED4CD068 + 88))() == **qword_1ED4CD068)
    {
      v33 = qword_1EAF1CF40;
      v34 = v8;
      v35 = 1358;
LABEL_13:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFC144uLL, "<<<< 8021ASClock >>>>", v35, v34, v31, v32, v66);
      return;
    }

    v36 = (*(qword_1ED4CD068 + 32))();
    qword_1ED4CCF48 = v36;
    if (!v36)
    {
      v33 = qword_1EAF1CF40;
      v34 = v8;
      v35 = 1364;
      goto LABEL_13;
    }

    v37 = (*(qword_1ED4CD068 + 96))(v36, timesyncLogMeanIntervalApplier_lockStateChangedCallback, v36);
    byte_1ED4CCF38 = -3;
    dword_1ED4CCF3C = -1;
    if (dword_1EAF1CF48)
    {
      v45 = OUTLINED_FUNCTION_12_15(v37, v38, v39, v40, v41, v42, v43, v44, v66, v69, v72, v75, SBYTE2(v75), SBYTE3(v75), SHIDWORD(v75));
      v53 = OUTLINED_FUNCTION_17_10(v45, v46, v47, v48, v49, v50, v51, v52, v68, v71, v74, v77, v79, v81, v83);
      if (OUTLINED_FUNCTION_11_15(v53))
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl(v54, v55, v56, v57, v58, v59, &qword_1ED4CD068, v60);
        OUTLINED_FUNCTION_31_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v61, v62, v63, v64, v65);
    }
  }
}

void __timesyncLogMeanIntervalApplier_lockStateChangedCallback_block_invoke(uint64_t a1)
{
  if (qword_1ED4CCF48 && *(a1 + 32) == qword_1ED4CCF48)
  {
    if (dword_1EAF1CF48)
    {
      v2 = OUTLINED_FUNCTION_32_6();
      v10 = OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v32, v34, v36, *v38, v38[2], 0, 0);
      v18 = OUTLINED_FUNCTION_5_2(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v40, type, v42);
      if (OUTLINED_FUNCTION_6_2(v18))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_34_4(v27, v28, v29, v30, v31);
    }

    if (dword_1ED4CCF3C != *(a1 + 48))
    {
      dword_1ED4CCF3C = *(a1 + 48);
      timesyncLogMeanIntervalApplier_restartIntervalApplierInternal();
    }
  }
}

void timesyncLogMeanIntervalApplier_applyIntervalInternal(uint64_t MatchingService, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = *MEMORY[0x1E69E9840];
  v8 = &sVCCPreallocationSaveToSymlinkCString[720];
  if (!qword_1ED4CCF48)
  {
    goto LABEL_66;
  }

  v9 = byte_1ED4CCF38;
  if (dword_1ED4CCF3C != 2)
  {
    v9 = -3;
  }

  LODWORD(v108) = v9;
  if (dword_1EAF1CF48)
  {
    v10 = OUTLINED_FUNCTION_26_8(MatchingService, a2, a3, a4, a5, a6, a7, a8, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, type, iterator);
    v11 = os_log_type_enabled(v10, type);
    if (OUTLINED_FUNCTION_6_2(v11))
    {
      v12 = "not locked";
      if (dword_1ED4CCF3C == 2)
      {
        v12 = "locked";
      }

      v112 = 136316418;
      v113 = "timesyncLogMeanIntervalApplier_applyIntervalInternal";
      v114 = 2048;
      v115 = qword_1ED4CCF48;
      v116 = 2080;
      v117 = v12;
      v118 = 1024;
      v119 = dword_1ED4CCF3C;
      v120 = 1024;
      v121 = v108;
      v122 = 1024;
      v123 = word_1ED4CCF50;
      OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_29_6(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v21, v22, v23, v24, v25);
  }

  v26 = dword_1ED4CCF54;
  if (!dword_1ED4CCF54)
  {
    (*(qword_1ED4CD068 + 232))(qword_1ED4CCF48, v108, a3, a4, a5, a6, a7, a8);
    MatchingService = MEMORY[0x19A8D85F0](*MEMORY[0x1E69E9A60], &dword_1ED4CCF54);
    if (MatchingService)
    {
      goto LABEL_66;
    }

    v26 = dword_1ED4CCF54;
  }

  v27 = IOServiceMatching("IOTimeSyncgPTPManager");
  MatchingService = IOServiceGetMatchingService(v26, v27);
  if (MatchingService)
  {
    v28 = MatchingService;
    iterator = 0;
    v29 = *MEMORY[0x1E695E480];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"SystemDomainIdentifier", *MEMORY[0x1E695E480], 0);
    MEMORY[0x19A8D8680](v28, "IOService", &iterator);
    v31 = 0;
    if (iterator && CFProperty)
    {
      v32 = IOIteratorNext(iterator);
      if (v32)
      {
        v34 = v32;
        v31 = 0;
        *&v33 = 136315394;
        v107 = v33;
        *&v33 = 136315650;
        v106 = v33;
        while (!IOObjectConformsTo(v34, "IOTimeSyncDomain"))
        {
LABEL_50:
          IOObjectRelease(v34);
          v34 = IOIteratorNext(iterator);
          if (!v34)
          {
            goto LABEL_55;
          }
        }

        v35 = IORegistryEntryCreateCFProperty(v34, @"ClockIdentifier", v29, 0);
        if (!FigCFEqual(v35, CFProperty))
        {
          goto LABEL_48;
        }

        v36 = IORegistryEntryCreateCFProperty(v34, @"GrandmasterID", v29, 0);
        v37 = FigCFEqual(CFProperty, v36);
        if (v37 && dword_1ED4CCF3C == 2)
        {
          if (*(v8 + 978))
          {
            v45 = OUTLINED_FUNCTION_15_14(v37, v38, v39, v40, v41, v42, v43, v44, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, SWORD2(v108), SBYTE6(v108), SHIBYTE(v108), type);
            v46 = type;
            if (os_log_type_enabled(v45, HIBYTE(v108)))
            {
              v47 = type;
            }

            else
            {
              v47 = type & 0xFFFFFFFE;
            }

            if (v47)
            {
              v112 = v107;
              OUTLINED_FUNCTION_18_12();
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl(v48, v49, v50, v51, &dword_196FA7000, v45, HIBYTE(v108), "<<<< 8021ASClock >>>> %s: clock <%p> is locked to self. bailing.", v104, v105);
              v46 = type;
            }

            v76 = OUTLINED_FUNCTION_32_6();
            v78 = v77 != &v124;
            v31 = 1;
            v79 = 1;
            v80 = 1;
            v81 = v46;
            goto LABEL_45;
          }

          v31 = 1;
          if (!v36)
          {
LABEL_48:
            if (v35)
            {
              CFRelease(v35);
            }

            goto LABEL_50;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_11();
          v53 = (*(v52 + 240))(v34, v108);
          v61 = *(v8 + 978);
          if (v53)
          {
            v31 = v53;
            if (!v61)
            {
              goto LABEL_46;
            }

            v62 = OUTLINED_FUNCTION_15_14(v53, v54, v55, v56, v57, v58, v59, v60, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, SWORD2(v108), SBYTE6(v108), SHIBYTE(v108), type);
            v63 = type;
            if (os_log_type_enabled(v62, HIBYTE(v108)))
            {
              v64 = type;
            }

            else
            {
              v64 = type & 0xFFFFFFFE;
            }

            if (v64)
            {
              v112 = v107;
              OUTLINED_FUNCTION_18_12();
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl(v65, v66, v67, v68, &dword_196FA7000, v62, HIBYTE(v108), "<<<< 8021ASClock >>>> %s: clock <%p> is hunky-dory", v104, v105);
              v63 = type;
            }

            OUTLINED_FUNCTION_32_6();
            OUTLINED_FUNCTION_1_1();
            v81 = v63;
LABEL_45:
            fig_log_call_emit_and_clean_up_after_send_and_compose(v76, v79, v80, v77, v78, v81);
            v8 = sVCCPreallocationSaveToSymlinkCString + 720;
LABEL_46:
            if (!v36)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if (v61)
          {
            v69 = OUTLINED_FUNCTION_15_14(v53, v54, v55, v56, v57, v58, v59, v60, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, SWORD2(v108), SBYTE6(v108), SHIBYTE(v108), type);
            v70 = type;
            if (os_log_type_enabled(v69, HIBYTE(v108)))
            {
              v71 = type;
            }

            else
            {
              v71 = type & 0xFFFFFFFE;
            }

            if (v71)
            {
              v112 = v106;
              OUTLINED_FUNCTION_18_12();
              v116 = 1024;
              LODWORD(v117) = v108;
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl(v72, v73, v74, v75, &dword_196FA7000, v69, HIBYTE(v108), "<<<< 8021ASClock >>>> %s: clock <%p>: reapplying interval 2^%d", v104, v105, v106);
              v70 = type;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v82, v83, v84, v85, v86, v70);
            v8 = sVCCPreallocationSaveToSymlinkCString + 720;
          }

          (*(qword_1ED4CD068 + 232))(qword_1ED4CCF48, v108);
          v31 = 0;
          if (!v36)
          {
            goto LABEL_48;
          }
        }

LABEL_47:
        CFRelease(v36);
        goto LABEL_48;
      }

      v31 = 0;
    }

    else
    {
LABEL_55:
      if (!CFProperty)
      {
        goto LABEL_60;
      }
    }

    CFRelease(CFProperty);
LABEL_60:
    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    MatchingService = IOObjectRelease(v28);
    goto LABEL_63;
  }

  v31 = 0;
LABEL_63:
  v87 = --word_1ED4CCF50;
  if (v31 || v87 < 1)
  {
    goto LABEL_67;
  }

  v88 = dispatch_time(0, 1000000000);
  dispatch_after_f(v88, qword_1ED4CCF30, 0, timesyncLogMeanIntervalApplier_applyIntervalInternal);
LABEL_66:
  v31 = 0;
LABEL_67:
  if (v31 || (qword_1ED4CCF48 ? (v89 = word_1ED4CCF50 <= 0) : (v89 = 1), v89))
  {
    if (*(v8 + 978) >= 2u)
    {
      v90 = OUTLINED_FUNCTION_26_8(MatchingService, a2, a3, a4, a5, a6, a7, a8, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, type, iterator);
      v91 = os_log_type_enabled(v90, typea);
      if (OUTLINED_FUNCTION_11_15(v91))
      {
        v112 = 136315138;
        v113 = "timesyncLogMeanIntervalApplier_applyIntervalInternal";
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl(v92, v93, v94, v95, v96, v97, typea, v98);
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v99, v100, v101, v102, v103);
    }

    word_1ED4CCF50 = 0;
    if (dword_1ED4CCF54)
    {
      IOObjectRelease(dword_1ED4CCF54);
      dword_1ED4CCF54 = 0;
    }
  }
}