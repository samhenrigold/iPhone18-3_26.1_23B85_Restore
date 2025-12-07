void figSoundBridge_ReportParsingFailureMessage(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateMutable(v4, 0);
      if (v7)
      {
        v8 = v7;
        CFStringAppendFormat(v7, 0, @" %s.", a2);
        FigCFDictionarySetInt64(v6, @"MessageType", 2, v9, v10, v11, v12, v13);
        CFDictionarySetValue(v6, @"DiagnosticInformation", v8);
        FigCFDictionarySetInt32(v6, @"AnalysisType", 1836019574, v14, v15, v16, v17, v18);
        FigAssetAnalysisReporterAddMessage(a1, v6);
        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }
}

size_t figSoundBridge_ChannelLayoutFromFormatInfo()
{
  v0 = OUTLINED_FUNCTION_16_5();
  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(v0, v1, v2, v3);
  if (!PropertyInfo)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    PropertyInfo = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xC1F, v7, v8, v9, v11);
  }

  v10 = PropertyInfo;
  free(0);
  return v10;
}

size_t figSoundBridge_AddISOChannelLayoutBoxToNativeISOAudioSampleEntryIfEligible(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CMFormatDescriptionRef desc)
{
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  dataLength = 0;
  v84 = 0;
  cf = 0;
  Extension = CMFormatDescriptionGetExtension(desc, @"SampleDescriptionExtensionAtoms");
  appended = Extension;
  if (Extension)
  {
    v8 = CFGetTypeID(Extension);
    if (v8 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValue(appended, @"chnl"))
      {
        goto LABEL_39;
      }
    }
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (StreamBasicDescription->mFormatID == 1819304813 && StreamBasicDescription->mChannelsPerFrame >= 2)
  {
    v17 = OUTLINED_FUNCTION_29_1(StreamBasicDescription, v10, v11, v12, v13, v14, v15, v16, v76, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, cf, dataLength, v84, v85);
    if (v17)
    {
      v66 = v17;
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v64 = v66;
      v65 = 6616;
      goto LABEL_53;
    }

    v20 = 1;
  }

  else
  {
    if (!appended)
    {
      goto LABEL_40;
    }

    v21 = CFGetTypeID(appended);
    if (v21 != CFDictionaryGetTypeID())
    {
      goto LABEL_39;
    }

    v22 = 0;
    while (1)
    {
      Value = CFDictionaryGetValue(appended, *(&off_1E74A02E0 + v22));
      if (Value)
      {
        break;
      }

      v22 += 8;
      if (v22 == 48)
      {
        goto LABEL_39;
      }
    }

    v20 = 0;
    if (OUTLINED_FUNCTION_29_1(Value, v24, v25, v26, v27, v28, v29, v30, v76, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, cf, dataLength, v84, v85))
    {
      goto LABEL_39;
    }
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954584;
    v65 = 6624;
LABEL_53:
    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v64, "<<< SoundDescriptionBridge >>>", v65, v61, v62, v63, v77);
    goto LABEL_54;
  }

  v31 = OUTLINED_FUNCTION_13_5(a1, v18, &v84, v19, &v85);
  if (v31)
  {
LABEL_54:
    appended = v31;
    goto LABEL_40;
  }

  if (v84 <= 0x23)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954584;
    v65 = 6627;
    goto LABEL_53;
  }

  v39 = v86;
  if (*(v88 + 8) != 1819304813 || v86 == 0)
  {
    CreationChannelLayoutSignificance = FigAudioFormatDescriptionGetCreationChannelLayoutSignificance(desc, v32, v33, v34, v35, v36, v37, v38);
    v39 = v86;
  }

  else
  {
    CreationChannelLayoutSignificance = 2;
  }

  v79 = 0u;
  v80 = 0u;
  v42 = v87;
  if (!v39 || !v87)
  {
    v43 = *(v88 + 28);
    if (v43 == 1)
    {
      v44 = 6553601;
    }

    else
    {
      if (v43 != 2)
      {
        goto LABEL_31;
      }

      v44 = 6619138;
    }

    LODWORD(v79) = v44;
    v39 = &v79;
    v86 = &v79;
    v42 = 32;
    v87 = 32;
    CreationChannelLayoutSignificance = 2;
  }

LABEL_31:
  if (!v39 || (v42 - 4) > 0xFFFFFFFB || ((ChannelCount = FigAudioChannelLayoutGetChannelCount(v39), ChannelCount == *(v88 + 28)) ? (v46 = CreationChannelLayoutSignificance == 3) : (v46 = 1), v46 || !CreationChannelLayoutSignificance))
  {
    if (!v20)
    {
LABEL_39:
      appended = 0;
      goto LABEL_40;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954586;
    v65 = 6671;
    goto LABEL_53;
  }

  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(1668047726, v87, v86, &dataLength + 4);
  if (PropertyInfo)
  {
    v67 = PropertyInfo;
    if (PropertyInfo == 1886547824)
    {
      goto LABEL_39;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = v67;
    v65 = 6685;
    goto LABEL_53;
  }

  v49 = MEMORY[0x19A8D7200](a2, HIDWORD(dataLength), 2847159300, 0);
  if (!v49)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954583;
    v65 = 6693;
    goto LABEL_53;
  }

  v50 = v49;
  LODWORD(dataLength) = HIDWORD(dataLength);
  Property = AudioToolbox_AudioFormatGetProperty(1668047726, v87, v86, &dataLength, v49);
  if (Property)
  {
    v68 = Property;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v73 = v68;
    v74 = 6697;
LABEL_60:
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, v73, "<<< SoundDescriptionBridge >>>", v74, v70, v71, v72, v77);
    CFAllocatorDeallocate(a2, v50);
    goto LABEL_40;
  }

  v52 = OUTLINED_FUNCTION_11_6();
  v59 = CMBlockBufferCreateWithMemoryBlock(v52, v53, v54, v55, v56, v57, v58, 0, v77);
  if (v59)
  {
    v75 = v59;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v73 = v75;
    v74 = 6700;
    goto LABEL_60;
  }

  appended = CMBlockBufferAppendBufferReference(a1, cf, 0, dataLength, 0);
  if (!appended)
  {
    *v85 += dataLength;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

Boolean CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(CMBlockBufferRef soundDescriptionBlockBuffer, CMSoundDescriptionFlavor flavor)
{
  destination = 0;
  if (CMBlockBufferCopyDataBytes(soundDescriptionBlockBuffer, 0x10uLL, 2uLL, &destination + 2))
  {
    return 0;
  }

  HIWORD(destination) = bswap32(HIWORD(destination)) >> 16;
  if (flavor)
  {
    if (!CFEqual(@"QuickTimeMovie", flavor) && !CFEqual(@"QuickTimeMovieV2", flavor) && (HIWORD(destination) != 1 || figSoundBridge_IsBlockBufferISOv1(soundDescriptionBlockBuffer, 1)))
    {
      return 0;
    }
  }

  if (CMBlockBufferCopyDataBytes(soundDescriptionBlockBuffer, 0x1CuLL, 2uLL, &destination))
  {
    return 1;
  }

  if (SHIWORD(destination) > 1)
  {
    return 0;
  }

  return destination != -257;
}

BOOL figSoundBridge_IsBlockBufferISOv1(OpaqueCMBlockBuffer *a1, int a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_10_7();
  if (!CMBlockBufferIsRangeContiguous(v4, v5, v6))
  {
    OUTLINED_FUNCTION_26();
    if (CMBlockBufferCreateContiguous(v7, v8, v9, v10, 0, 0, 0, v11))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_26();
  return !CMBlockBufferGetDataPointer(v12, v13, v14, v15, v16) && figSoundBridge_IsDataISOv1(0, DataLength, a2);
}

size_t figSoundBridge_TransformToCanonicalMagicCookieBBuf(const __CFAllocator *a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4)
{
  v6 = a2;
  v45 = 0;
  cf = 0;
  v44 = 0;
  PropertyInfo = OUTLINED_FUNCTION_13_5(*a4, a2, &v44, a4, &v45);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v9 = 1836069990;
  v10 = v45;
  v11 = v44;
  if ((*a3 & 1) == 0 || (*(a3 + 12) - 1) >= 2)
  {
    if (figSoundBridge_isAACUsingESDSinMOV(v6))
    {
      v9 = 1836069990;
    }

    else
    {
      v9 = 1299148630;
    }
  }

  v48 = v6;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v47 = 0;
  v12 = OUTLINED_FUNCTION_20_5();
  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(v12, v13, v14, v15);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  if (!v47)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v36 = 4294954584;
    v37 = 3072;
LABEL_23:
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v36, "<<< SoundDescriptionBridge >>>", v37, v33, v34, v35, v43);
LABEL_25:
    if (v30)
    {
      return v30;
    }

    v17 = 0;
    goto LABEL_11;
  }

  v16 = MEMORY[0x19A8D7200](a1);
  if (!v16)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v36 = 4294954583;
    v37 = 3075;
    goto LABEL_23;
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_20_5();
  Property = AudioToolbox_AudioFormatGetProperty(v18, v19, v20, v21, v17);
  if (Property)
  {
    v38 = Property;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v38, "<<< SoundDescriptionBridge >>>", 0xC06, v40, v41, v42, v43);
    CFAllocatorDeallocate(a1, v17);
    goto LABEL_25;
  }

LABEL_11:
  v23 = OUTLINED_FUNCTION_11_6();
  v29 = CMBlockBufferCreateWithMemoryBlock(v23, v24, v25, v26, v27, v28, v25, 1u, v43);
  if (v29)
  {
    v30 = v29;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      CFAllocatorDeallocate(a1, v17);
    }
  }

  else
  {
    if (*a4)
    {
      CFRelease(*a4);
    }

    v30 = 0;
    *a4 = cf;
  }

  return v30;
}

uint64_t figSoundBridge_GetDecodeFormatIDForCodingName(int a1, uint64_t a2, _DWORD *a3)
{
  if ((*a2 & 1) != 0 && (v4 = *(a2 + 12) - 1, v4 <= 2))
  {
    v5 = dword_197165BD4[v4];
  }

  else
  {
    v5 = 1299148630;
  }

  v17[0] = v5;
  v17[1] = 4;
  v17[2] = a1;
  v15 = 0;
  v16 = 0;
  result = AudioToolbox_AudioFormatGetPropertyInfo(1768186734, 12, v17, &v15);
  if (!result)
  {
    if (v15 == 4)
    {
      result = AudioToolbox_AudioFormatGetProperty(1768186734, 12, v17, &v15, &v16);
      if (!result)
      {
        *a3 = v16;
        return result;
      }

      v13 = result;
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v11 = v13;
      v12 = 2946;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v11 = 4294954584;
      v12 = 2943;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v11, "<<< SoundDescriptionBridge >>>", v12, v8, v9, v10, v14);
  }

  return result;
}

uint64_t figSoundBridge_CreateMagicCookieBBufFromALACBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  OUTLINED_FUNCTION_17_5();
  HIDWORD(v61) = 1667329121;
  v6 = CMBlockBufferCreateEmpty(v5, 4u, 0, &blockBufferOut);
  if (v6 || (v6 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, v62), v6))
  {
    v56 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_28_3(v6, v7, v8, v9, v10, v11, v12, v13, v58, v61);
    FigAtomWriterAppendData(v62, &v61 + 4, 4, v14, v15, v16, v17, v18, v59);
    FigAtomWriterEndAtom(v62, v19, v20, v21, v22, v23, v24, v25);
    FigAtomWriterBeginAtom(v62, 1634492771, 0, v26, v27, v28, v29, v30);
    DataLength = CMBlockBufferGetDataLength(a2);
    FigAtomWriterAppendBlockBufferData(v62, a2, 8uLL, DataLength - 8, v32, v33, v34, v35, v60);
    FigAtomWriterEndAtom(v62, v36, v37, v38, v39, v40, v41, v42);
    FigAtomWriterBeginAtom(v62, 0, 0, v43, v44, v45, v46, v47);
    FigAtomWriterEndAtom(v62, v48, v49, v50, v51, v52, v53, v54);
    v55 = blockBufferOut;
    if (blockBufferOut)
    {
      v55 = CFRetain(blockBufferOut);
    }

    v56 = 0;
    *a3 = v55;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v56;
}

uint64_t figSoundBridge_CreateMagicCookieBBufFromAMRBBuf(uint64_t a1, unsigned int a2, OpaqueCMBlockBuffer *a3, void *a4)
{
  OUTLINED_FUNCTION_17_5();
  HIDWORD(v81) = 0;
  WORD1(v81) = 0;
  v8 = CMBlockBufferCreateEmpty(v7, 4u, 0, &blockBufferOut);
  if (v8 || (v8 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, v82), v8))
  {
    v75 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_28_3(v8, v9, v10, v11, v12, v13, v14, v15, v77, v81);
    HIDWORD(v81) = bswap32(a2);
    FigAtomWriterAppendData(v82, &v81 + 4, 4, v16, v17, v18, v19, v20, v78);
    FigAtomWriterEndAtom(v82, v21, v22, v23, v24, v25, v26, v27);
    FigAtomWriterBeginAtom(v82, 1701733473, 0, v28, v29, v30, v31, v32);
    FigAtomWriterAppendData(v82, &v81 + 2, 2, v33, v34, v35, v36, v37, v79);
    FigAtomWriterEndAtom(v82, v38, v39, v40, v41, v42, v43, v44);
    FigAtomWriterBeginAtom(v82, 1935764850, 0, v45, v46, v47, v48, v49);
    DataLength = CMBlockBufferGetDataLength(a3);
    FigAtomWriterAppendBlockBufferData(v82, a3, 0, DataLength, v51, v52, v53, v54, v80);
    FigAtomWriterEndAtom(v82, v55, v56, v57, v58, v59, v60, v61);
    FigAtomWriterBeginAtom(v82, 0, 0, v62, v63, v64, v65, v66);
    FigAtomWriterEndAtom(v82, v67, v68, v69, v70, v71, v72, v73);
    v74 = blockBufferOut;
    if (blockBufferOut)
    {
      v74 = CFRetain(blockBufferOut);
    }

    v75 = 0;
    *a4 = v74;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v75;
}

uint64_t figSoundBridge_GetMP4ASBDFromESDSDataBBuf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  dataLength = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v6 = OUTLINED_FUNCTION_13_5(*(a1 + 112), a2, &v55, a4, &v54);
  v7 = MEMORY[0x1E695E488];
  if (v6)
  {
    goto LABEL_61;
  }

  if (HIDWORD(v55))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0xABD, v47, v48, v49, blockBufferOut);
    goto LABEL_61;
  }

  *(&v60 + 1) = v54;
  LODWORD(dataLength) = v55;
  v56 = 56;
  if (AudioToolbox_AudioFormatGetProperty(1702061673, v55, v54, &v56, &v58))
  {
    v56 = 40;
    Property = AudioToolbox_AudioFormatGetProperty(1702064996, v55, v54, &v56, a2);
    if (Property)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v9 = v59;
  *a2 = v58;
  *(a2 + 16) = v9;
  *(a2 + 32) = v60;
  if (!dataLength || !*(&v60 + 1))
  {
    v13 = *(a1 + 104);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    v57 = v13;
    v14 = CFGetAllocator(v13);
    v6 = figSoundBridge_TransformToCanonicalMagicCookieBBuf(v14, DWORD2(v58), a1, &v57);
    if (!v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v15)
      {
        *(a1 + 296) = 1;
      }

LABEL_21:
      v16 = v57;
      if (v57)
      {
        v17 = *(a1 + 264);
        *(a1 + 264) = v57;
        CFRetain(v16);
        if (v17)
        {
          CFRelease(v17);
        }

        if (v57)
        {
          CFRelease(v57);
          v57 = 0;
        }

        if (*(a1 + 264))
        {
          __str[0] = 0;
          OUTLINED_FUNCTION_10_7();
          CMBlockBufferGetDataPointer(v18, v19, v20, v21, v22);
          *(a1 + 280) = __str[0];
        }

        if (DWORD2(v58) == 1987015266)
        {
          Property = 1718449215;
          goto LABEL_47;
        }
      }

LABEL_30:
      if (*(a2 + 8) != 1633772320)
      {
        goto LABEL_36;
      }

      v23 = *(a2 + 12);
      switch(v23)
      {
        case 30:
          v24 = 1633772403;
          break;
        case 23:
          v24 = 1633772396;
          break;
        case 29:
          v24 = 1633772400;
          break;
        case 5:
          v24 = 1633772392;
          break;
        default:
LABEL_36:
          Property = 0;
          goto LABEL_48;
      }

      size[0] = 0;
      memset(__str, 0, 40);
      __str[5] = v54;
      v65 = 0;
      LODWORD(__str[1]) = v24;
      v64 = v55;
      v25 = OUTLINED_FUNCTION_8_11();
      Property = AudioToolbox_AudioFormatGetPropertyInfo(v25, v26, v27, v28);
      if (Property || !size[0])
      {
        goto LABEL_46;
      }

      v11 = malloc_type_malloc(size[0], 0x100004064842E6AuLL);
      if (v11)
      {
        v29 = OUTLINED_FUNCTION_8_11();
        Property = AudioToolbox_AudioFormatGetProperty(v29, v30, v31, v32, v11);
        if (!Property)
        {
          v33 = &v11[48 * (size[0] / 0x30) - 48];
          v34 = *(v33 + 4);
          v35 = *(v33 + 1);
          *a2 = *v33;
          *(a2 + 16) = v35;
          *(a2 + 32) = v34;
        }

        free(v11);
LABEL_46:
        if (Property)
        {
LABEL_47:
          v53 = 0;
          v52 = 0;
          FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(v54, v55, &v53, &v52, 0);
          v36 = v53;
          if (v53)
          {
            if (v52)
            {
              snprintf(size, 0x20uLL, ", audio object type %u", v52);
              v36 = v53;
            }

            else
            {
              LOBYTE(size[0]) = 0;
            }

            snprintf(__str, 0x80uLL, "Found stream descriptor for unsupported MPEG-4 object type 0x%X%s", v36, size);
            figSoundBridge_ReportParsingFailureMessage(*(a1 + 288), __str);
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0xB47, v43, v44, v45, blockBufferOuta);
          }
        }

LABEL_48:
        v11 = 0;
        goto LABEL_49;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0xB25, v39, v40, v41, blockBufferOut);
      goto LABEL_55;
    }

LABEL_61:
    Property = v6;
    goto LABEL_48;
  }

  if (v55 <= dataLength || *(&v60 + 1) < v54 || &v54[v55 - *(&v60 + 1)] < dataLength)
  {
    goto LABEL_21;
  }

  v10 = *v7;
  v11 = MEMORY[0x19A8D7200](*v7);
  if (v11)
  {
    v12 = CMBlockBufferCopyDataBytes(*(a1 + 112), *(&v60 + 1) - v54, dataLength, v11);
    if (v12 || (v12 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v11, dataLength, v10, 0, 0, dataLength, 0, &v57), v12))
    {
LABEL_55:
      Property = v12;
      goto LABEL_49;
    }

    goto LABEL_21;
  }

  Property = 0;
LABEL_49:
  if (v57)
  {
    CFRelease(v57);
  }

  if (v11)
  {
    CFAllocatorDeallocate(*v7, v11);
  }

  return Property;
}

uint64_t figSoundBridge_GetASBDFromDAC3BBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v16, a4, &v17);
  if (!result)
  {
    v12 = OUTLINED_FUNCTION_27_3(result, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    return ParseAC3MP4Cookie(v12, v13, v14, v15);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromDEC3BBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v16, a4, &v17);
  if (!result)
  {
    v12 = OUTLINED_FUNCTION_27_3(result, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    return ParseEnhancedAC3MP4Cookie(v12, v13, v14, v15, 0);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  result = OUTLINED_FUNCTION_13_5(a2, a2, &v12, a4, &v11);
  if (!result)
  {
    *(a3 + 8) = a1;
    v7 = OUTLINED_FUNCTION_25_4();
    return AudioToolbox_AudioFormatGetProperty(v7, v8, v9, v10, a3);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromALACBBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v11, a4, &v10);
  if (!result)
  {
    if (v11 < 0x24)
    {
      return 4294954582;
    }

    else
    {
      v6 = v10;
      *(a2 + 8) = 1634492771;
      *a2 = bswap32(*(v6 + 8));
      if ((((v6[17] - 16) >> 2) | ((v6[17] - 16) << 6)) > 4u)
      {
        v7 = 0;
      }

      else
      {
        v7 = dword_197165BE0[(((v6[17] - 16) >> 2) | ((v6[17] - 16) << 6))];
      }

      result = 0;
      v8 = v6[21];
      v9 = bswap32(*(v6 + 3));
      *(a2 + 12) = v7;
      *(a2 + 16) = 0;
      *(a2 + 20) = v9;
      *(a2 + 32) = 0;
      *(a2 + 28) = v8;
    }
  }

  return result;
}

size_t figSoundBridge_EncapsulatedMagicCookieFromCanonicalMagicCookie()
{
  HIDWORD(v9) = 0;
  v0 = OUTLINED_FUNCTION_21_5();
  result = AudioToolbox_AudioFormatGetPropertyInfo(v0, v1, v2, v3);
  if (!result)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xC46, v6, v7, v8, v9);
  }

  return result;
}

BOOL figSoundBridge_AreAtomsWellFormed(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  memset(v17, 0, sizeof(v17));
  CFPreferenceNumberWithDefault = figSoundBridge_AllowZeroSizeTerminatorAtom_value;
  if (figSoundBridge_AllowZeroSizeTerminatorAtom_value == -1)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"zero_size_terminator_atom", @"com.apple.coremedia", 1);
    figSoundBridge_AllowZeroSizeTerminatorAtom_value = CFPreferenceNumberWithDefault;
  }

  v9 = FigAtomStreamInitWithMemoryBlock(a1, a2, 0, CFPreferenceNumberWithDefault != 0, v17);
  v10 = 0;
  if (!v9)
  {
    while (1)
    {
      v16 = 0;
      v14 = 0;
      v15 = 0;
      if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v17, &v16, &v15) || FigAtomStreamGetCurrentAtomGlobalOffset(v17, 0, &v14))
      {
        break;
      }

      if (!v16)
      {
        v13 = v14;
        if (!a3)
        {
          v13 = 0;
        }

        v10 += v13;
        result = 1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_13;
      }

      v10 += v14;
      Atom = FigAtomStreamAdvanceToNextAtom(v17);
      if (Atom)
      {
        result = Atom == -12890;
        if (a4)
        {
          goto LABEL_13;
        }

        return result;
      }
    }
  }

  result = 0;
  if (a4)
  {
LABEL_13:
    *a4 = v10;
  }

  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xBE0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBE3, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_3()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0x17E9, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x17EC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigAudioCodecTypeIsDecodable_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<< SoundDescriptionBridge >>>", 0x1EFA, v3, v4, v5, v7);
}

size_t FigAudioCodecTypeIsDecodable_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<< SoundDescriptionBridge >>>", 0x1F01, v3, v4, v5, v7);
}

size_t FigAudioCodecTypeIsDecodable_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE59uLL, "<<< SoundDescriptionBridge >>>", 0x1EFE, v1, v2, v3, v5);
}

size_t FigAudioCodecTypeIsDecodable_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFFFFFuLL, "<<< SoundDescriptionBridge >>>", 0x1EFB, v1, v2, v3, v5);
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xB9F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBA2, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xBC0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_4()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBC3, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

void figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_1(const __CFAllocator *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE5AuLL, "<<< SoundDescriptionBridge >>>", 0x173C, v7, v8, v9, v10);

  CFAllocatorDeallocate(a1, a2);
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x1723, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1720, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<< SoundDescriptionBridge >>>", 0x1717, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0x1819, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x181C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1810, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

OSStatus CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(CFAllocatorRef allocator, const uint8_t *closedCaptionDescriptionData, size_t size, CMClosedCaptionDescriptionFlavor flavor, CMClosedCaptionFormatDescriptionRef *formatDescriptionOut)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!closedCaptionDescriptionData || size <= 0xF || !formatDescriptionOut)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_0_46();
    goto LABEL_13;
  }

  v6 = bswap32(*closedCaptionDescriptionData);
  v7 = v6;
  if (v6 < 0x10 || v6 > size)
  {
    OUTLINED_FUNCTION_1_30();
LABEL_13:
    OUTLINED_FUNCTION_2_19();

    return FigSignalErrorAtGM(v9, v10, v11, v12, v13, v14, v15, v16, v76);
  }

  v19 = *(closedCaptionDescriptionData + 1);
  v20 = bswap32(v19);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  *values = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v23 = v19 == 942683747 || v19 == 942683760 || v19 == 1667462241 || v19 == 942684003;
  *keys = 0uLL;
  v60 = 0uLL;
  if (v23)
  {
    mediaSubType = v20;
    v24 = v7 - 16;
    if ((v7 - 16) < 9)
    {
LABEL_49:
      Mutable = 0;
LABEL_50:
      v50 = 0;
      v51 = 1;
    }

    else
    {
      Mutable = 0;
      v26 = closedCaptionDescriptionData + 16;
      v27 = *MEMORY[0x1E695E480];
      do
      {
        v28 = *(v26 + 1);
        v29 = bswap32(*v26);
        *bytes = bswap32(v28);
        v30 = v29;
        v31 = v29 - 8;
        if (v24 - 8 < v31)
        {
          break;
        }

        if (v28 != 1701147238)
        {
          v32 = CFDataCreate(v27, v26 + 8, v31);
          if (!v32)
          {
            break;
          }

          v33 = v32;
          *bytes = bswap32(*bytes);
          v34 = CFStringCreateWithBytes(v27, bytes, 4, 0, 0);
          if (!v34)
          {
            CFRelease(v33);
            break;
          }

          v35 = v34;
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(v27, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              CFRelease(v33);
              CFRelease(v35);
              goto LABEL_49;
            }
          }

          CFDictionaryAddValue(Mutable, v35, v33);
          CFRelease(v35);
          CFRelease(v33);
        }

        v24 -= v30;
        v26 += v30;
      }

      while (v24 > 8);
      if (!Mutable)
      {
        goto LABEL_50;
      }

      values[0] = CFRetain(Mutable);
      keys[0] = @"SampleDescriptionExtensionAtoms";
      v50 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (values[0])
      {
        CFRelease(values[0]);
      }

      v51 = 0;
      values[0] = 0;
      if (!v50)
      {
        v52 = 0;
        goto LABEL_52;
      }
    }

    v52 = v51;
    v51 = 1;
LABEL_52:
    v53 = 0;
    do
    {
      v54 = values[v53];
      if (v54)
      {
        CFRelease(v54);
      }
    }

    while (v53++ < 15);
    if ((v52 & 1) == 0)
    {
      CFRelease(Mutable);
    }

    if (v51)
    {
      CMFormatDescriptionCreate(allocator, 0x636C6370u, mediaSubType, v50, formatDescriptionOut);
      if (v50)
      {
        CFRelease(v50);
      }
    }

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_46();
  if (FigSignalErrorAtGM(v36, v37, v38, v39, 0x10D, v40, v41, v42, v56))
  {
LABEL_62:
    OUTLINED_FUNCTION_2_19();
    return result;
  }

  OUTLINED_FUNCTION_2_19();

  return CMFormatDescriptionCreate(v44, v45, v46, v47, v48);
}

OSStatus CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(CFAllocatorRef allocator, const uint8_t *textDescriptionData, size_t size, CMTextDescriptionFlavor flavor, CMMediaType mediaType, CMTextFormatDescriptionRef *formatDescriptionOut)
{
  Dict = v7;
  v323 = *MEMORY[0x1E69E9840];
  if (size <= 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1712;
LABEL_3:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v17, "<<< TextDescBridge >>>", v18, v14, v15, v16, v257);
    OUTLINED_FUNCTION_9_12();
    goto LABEL_4;
  }

  v6 = size;
  v20 = bswap32(*(textDescriptionData + 1));
  v21 = MEMORY[0x1E695E480];
  switch(v20)
  {
    case 0x64726D74u:
      goto LABEL_22;
    case 0x73747070u:
      bzero(&v317, 0xA0uLL);
      OUTLINED_FUNCTION_16_6(v122, v123, v124, v125, v126, v127, v128, v129, v257, v259, v262, allocatora, pStr, v270, v272, v273, cf, v275, v276, v277, v278, v279, v280[0], v280[1], v281, *(&v281 + 1), *v282, *&v282[8], *&v282[16], *&v282[24], v283[0], v283[1], *v284, *&v284[8], *&v284[16], *&v284[24], v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, 0, v304, v305, v306, v307, v308, v309, v310);
      v279 = 0;
      LOBYTE(v277) = 0;
      LOBYTE(v276) = 0;
      LOBYTE(v275) = 0;
      LOBYTE(cf) = 0;
      if (v6 <= 0x10)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1589;
        goto LABEL_3;
      }

      v287 = 0;
      v288 = 0;
      v280[0] = 0;
      v280[1] = 0;
      v283[0] = 0;
      v283[1] = 0;
      v307 = 0;
      v308 = 0;
      XMLSubtitleSampleFields = locateXMLSubtitleSampleFields(textDescriptionData, v6, &v277, &v287, &v276, v280, &v275, v283, &cf, &v307);
      v271 = formatDescriptionOut;
      if (XMLSubtitleSampleFields)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1599;
        goto LABEL_160;
      }

      if (!v277)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1600;
        goto LABEL_160;
      }

      if (cf && (!v276 || !v275))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1604;
        goto LABEL_160;
      }

      if (v288 + 16 > v6)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1610;
        goto LABEL_160;
      }

      if (v287 + v288 > v6)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1611;
        goto LABEL_160;
      }

      if (v276)
      {
        v139 = v280[1] + v288 + 16;
        if (v139 > v6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          v144 = 1616;
          goto LABEL_160;
        }

        if (v280[0] + v280[1] > v6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          v144 = 1617;
          goto LABEL_160;
        }

        if (v275)
        {
          if (v283[1] + v139 > v6)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_2_20();
            v144 = 1626;
            goto LABEL_160;
          }

          if (v283[0] + v283[1] > v6)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_2_20();
            v144 = 1627;
            goto LABEL_160;
          }
        }
      }

      else if (v275)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v144 = 1622;
        goto LABEL_160;
      }

      if (v288 > 1)
      {
        v227 = OUTLINED_FUNCTION_6_14(XMLSubtitleSampleFields, v287 + textDescriptionData, v288 - 1);
        v224 = v227;
        if (v227)
        {
          v225 = 0;
          if (!v276 || v280[1] < 2 || (v227 = OUTLINED_FUNCTION_6_14(v227, &textDescriptionData[v280[0]], v280[1] - 1), (v225 = v227) != 0))
          {
            v226 = 0;
            if (v275 && v283[1] >= 2 && (v226 = OUTLINED_FUNCTION_6_14(v227, &textDescriptionData[v283[0]], v283[1] - 1)) == 0)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_2_20();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v249, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x671, v250, v251, v252, v258);
              OUTLINED_FUNCTION_9_12();
            }

            else
            {
              v228 = ParseExtensionAtomsInDescription(textDescriptionData, v6, 0, 0, 0, &v279);
              v229 = 0;
              if (!v228)
              {
                pStra = v224;
                v230 = &v317;
                if (v279)
                {
                  v231 = &v312;
                  v230 = &v318;
                  v317 = CFRetain(v279);
                  v311 = @"SampleDescriptionExtensionAtoms";
                  v232 = 1;
                }

                else
                {
                  v232 = 0;
                  v231 = &v311;
                }

                *v230 = CFRetain(pStra);
                v233 = v230 + 1;
                v229 = v232 + 1;
                *v231 = @"XMLNamespaces";
                if (v225)
                {
                  v233 = v230 + 2;
                  v230[1] = CFRetain(v225);
                  *(&v311 + v229) = @"XMLSchemas";
                  v229 = v232 | 2;
                }

                v224 = pStra;
                if (v226)
                {
                  *v233 = CFRetain(v226);
                  *(&v311 + v229++) = @"AuxiliaryMIMETypes";
                }
              }

              OUTLINED_FUNCTION_14_6();
              Dict = createDict(allocator, v234, v235, v229, &v303);
              v6 = v303;
            }

LABEL_180:
            v236 = v226;
            v237 = v225;
            if (Dict && v6)
            {
              v238 = v224;
              CFRelease(v6);
              v6 = 0;
            }

            else
            {
              v238 = v224;
            }

            v239 = 0;
            do
            {
              v240 = *(&v317 + v239);
              if (v240)
              {
                CFRelease(v240);
              }

              v132 = v239 >= 0x98;
              v239 += 8;
            }

            while (!v132);
            if (v238)
            {
              CFRelease(v238);
            }

            if (v237)
            {
              CFRelease(v237);
            }

            if (v236)
            {
              CFRelease(v236);
            }

            v135 = v279;
            formatDescriptionOut = v271;
            if (v279)
            {
              goto LABEL_196;
            }

            goto LABEL_4;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v245, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x669, v246, v247, v248, v258);
          OUTLINED_FUNCTION_9_12();
LABEL_162:
          v226 = 0;
          goto LABEL_180;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v241, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x663, v242, v243, v244, v258);
        OUTLINED_FUNCTION_9_12();
LABEL_161:
        v225 = 0;
        goto LABEL_162;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v144 = 1633;
LABEL_160:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v140, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", v144, v141, v142, v143, v258);
      OUTLINED_FUNCTION_9_12();
      v224 = 0;
      goto LABEL_161;
    case 0x73767474u:
    case 0x78767474u:
LABEL_20:
      bzero(&v317, 0xA0uLL);
      OUTLINED_FUNCTION_16_6(v33, v34, v35, v36, v37, v38, v39, v40, v257, v259, v262, allocatora, pStr, v270, v272, v273, cf, v275, v276, v277, v278, v279, v280[0], v280[1], v281, *(&v281 + 1), *v282, *&v282[8], *&v282[16], *&v282[24], v283[0], v283[1], *v284, *&v284[8], *&v284[16], *&v284[24], v285, v286, 0, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
      v280[0] = 0;
      v283[0] = 0;
      v307 = 0;
      v303 = 0;
      if (v6 <= 0xF)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1513;
        goto LABEL_3;
      }

      if (ParseExtensionAtomsInDescription(textDescriptionData, v6, v280, v283, &v307, &v303))
      {
        v51 = 0;
      }

      else
      {
        v136 = &v317;
        if (v303)
        {
          v137 = &v312;
          v136 = &v318;
          v317 = CFRetain(v303);
          v311 = @"SampleDescriptionExtensionAtoms";
          v51 = 1;
        }

        else
        {
          v51 = 0;
          v137 = &v311;
        }

        if (v283[0])
        {
          *v136++ = CFRetain(v283[0]);
          ++v51;
          *v137 = @"rqdf";
        }

        if (v307)
        {
          *v136 = CFRetain(v307);
          *(&v311 + v51++) = @"InlineResources";
        }
      }

      OUTLINED_FUNCTION_14_6();
      Dict = createDict(allocator, v220, v221, v51, &v287);
      v6 = v287;
      if (Dict && v287)
      {
        CFRelease(v287);
        v6 = 0;
      }

      v222 = 0;
      do
      {
        v223 = *(&v317 + v222);
        if (v223)
        {
          CFRelease(v223);
        }

        v132 = v222 >= 0x98;
        v222 += 8;
      }

      while (!v132);
      if (v280[0])
      {
        CFRelease(v280[0]);
      }

      if (v283[0])
      {
        CFRelease(v283[0]);
      }

      if (v307)
      {
        CFRelease(v307);
      }

      v135 = v303;
      if (v303)
      {
        goto LABEL_196;
      }

      goto LABEL_4;
    case 0x74783367u:
LABEL_22:
      OUTLINED_FUNCTION_10_8();
      OUTLINED_FUNCTION_16_6(v41, v42, v43, v44, v45, v46, v47, v48, v257, v259, v262, allocatora, pStr, v270, v272, v273, 0, 0, 0, 0, v278, 0, @"StartChar", @"EndChar", @"Font", @"FontFace", @"FontSize", @"ForegroundColor", *&v282[16], *&v282[24], v283[0], v283[1], *v284, *&v284[8], *&v284[16], *&v284[24], v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, @"Top", @"Left", @"Bottom", @"Right", @"Red", @"Green", @"Blue", @"Alpha");
      if (v6 <= 0x2D)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1411;
        goto LABEL_3;
      }

      v52 = *(textDescriptionData + 1);
      *v283 = *textDescriptionData;
      *v284 = v52;
      *&v284[14] = *(textDescriptionData + 30);
      v53 = *v21;
      v54 = OUTLINED_FUNCTION_7_13(v49, v50, &v284[6]);
      if (!v54)
      {
        goto LABEL_54;
      }

      v287 = v54;
      v56 = OUTLINED_FUNCTION_7_13(v54, v55, &v284[7]);
      if (!v56)
      {
        goto LABEL_54;
      }

      v288 = v56;
      v58 = OUTLINED_FUNCTION_7_13(v56, v57, &v284[8]);
      if (!v58)
      {
        goto LABEL_54;
      }

      v289 = v58;
      if (!OUTLINED_FUNCTION_7_13(v58, v59, &v284[9]))
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_11_7();
      LODWORD(v64) = OUTLINED_FUNCTION_15_7(v60, v61, v62, v63, &v277);
      if (!v64)
      {
        OUTLINED_FUNCTION_0_47();
        v68 = OUTLINED_FUNCTION_5_16(v65, v66, v67);
        if (!v68)
        {
          goto LABEL_54;
        }

        v287 = v68;
        OUTLINED_FUNCTION_0_47();
        v72 = OUTLINED_FUNCTION_5_16(v69, v70, v71);
        if (!v72)
        {
          goto LABEL_54;
        }

        v288 = v72;
        OUTLINED_FUNCTION_0_47();
        v76 = OUTLINED_FUNCTION_5_16(v73, v74, v75);
        if (!v76)
        {
          goto LABEL_54;
        }

        v289 = v76;
        OUTLINED_FUNCTION_0_47();
        v80 = OUTLINED_FUNCTION_5_16(v77, v78, v79);
        if (!v80)
        {
          goto LABEL_54;
        }

        v290 = v80;
        v64 = OUTLINED_FUNCTION_15_7(v80, &v303, &v287, v81, &v276);
        if (!v64)
        {
          v83 = OUTLINED_FUNCTION_7_13(v64, v82, &v284[26]);
          if (!v83)
          {
            goto LABEL_54;
          }

          v287 = v83;
          v85 = OUTLINED_FUNCTION_7_13(v83, v84, &v284[27]);
          if (!v85)
          {
            goto LABEL_54;
          }

          v288 = v85;
          v87 = OUTLINED_FUNCTION_7_13(v85, v86, &v284[28]);
          if (!v87)
          {
            goto LABEL_54;
          }

          v289 = v87;
          if (!OUTLINED_FUNCTION_7_13(v87, v88, &v284[29]))
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_11_7();
          LODWORD(v64) = OUTLINED_FUNCTION_15_7(v89, v90, v91, v92, &cf);
          if (!v64)
          {
            OUTLINED_FUNCTION_0_47();
            v96 = OUTLINED_FUNCTION_5_16(v93, v94, v95);
            if (!v96)
            {
              goto LABEL_54;
            }

            v287 = v96;
            OUTLINED_FUNCTION_0_47();
            v100 = OUTLINED_FUNCTION_5_16(v97, v98, v99);
            if (!v100)
            {
              goto LABEL_54;
            }

            v288 = v100;
            OUTLINED_FUNCTION_0_47();
            v104 = OUTLINED_FUNCTION_5_16(v101, v102, v103);
            if (!v104)
            {
              goto LABEL_54;
            }

            v289 = v104;
            v106 = OUTLINED_FUNCTION_7_13(v104, v105, &v284[24]);
            if (!v106)
            {
              goto LABEL_54;
            }

            v290 = v106;
            v108 = OUTLINED_FUNCTION_7_13(v106, v107, &v284[25]);
            if (!v108)
            {
              goto LABEL_54;
            }

            v291 = v108;
            v292 = CFRetain(cf);
            LODWORD(v64) = createDict(allocator, v280, &v287, 6, &v275);
            if (!v64)
            {
              OUTLINED_FUNCTION_4_13();
              v110 = CFNumberCreate(v53, kCFNumberSInt32Type, v109);
              if (v110)
              {
                v317 = v110;
                v311 = @"DisplayFlags";
                v112 = OUTLINED_FUNCTION_7_13(v110, v111, &v284[4]);
                if (v112)
                {
                  v318 = v112;
                  v312 = @"HorizontalJustification";
                  v114 = OUTLINED_FUNCTION_7_13(v112, v113, &v284[5]);
                  if (v114)
                  {
                    v319 = v114;
                    v313 = @"VerticalJustification";
                    v320 = CFRetain(v277);
                    v314 = @"BackgroundColor";
                    v321 = CFRetain(v276);
                    v315 = @"DefaultTextBox";
                    v322 = CFRetain(v275);
                    v316 = @"DefaultStyle";
                    OUTLINED_FUNCTION_13_6(v322, v115, v116, v117, v118, v119, v120, v121, v257, v261, v264, allocatorb);
                    OUTLINED_FUNCTION_14_6();
                    Dict = createDict(allocator, v255, v256, 6, &v279);
                    v6 = v279;
                    if (!Dict || !v279)
                    {
                      goto LABEL_55;
                    }

                    CFRelease(v279);
                    goto LABEL_219;
                  }
                }
              }

LABEL_54:
              v6 = 0;
              Dict = -12713;
LABEL_55:
              v130 = 0;
              do
              {
                v131 = *(&v287 + v130);
                if (v131)
                {
                  CFRelease(v131);
                }

                v132 = v130 >= 0x78;
                v130 += 8;
              }

              while (!v132);
              v133 = 0;
              do
              {
                v134 = *(&v317 + v133);
                if (v134)
                {
                  CFRelease(v134);
                }

                v132 = v133 >= 0x98;
                v133 += 8;
              }

              while (!v132);
              if (v277)
              {
                CFRelease(v277);
              }

              if (v276)
              {
                CFRelease(v276);
              }

              if (v275)
              {
                CFRelease(v275);
              }

              v135 = cf;
              if (cf)
              {
                goto LABEL_196;
              }

              goto LABEL_4;
            }
          }
        }
      }

      Dict = v64;
LABEL_219:
      v6 = 0;
      goto LABEL_55;
    case 0x77767474u:
      goto LABEL_20;
  }

  if (v20 != 1952807028)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954579;
    v18 = 1730;
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_16_6(v23, v24, v25, v26, v27, v28, v29, v30, v257, v259, v262, allocatora, pStr, v270, v272, v273, 0, 0, 0, 0, v278, 0, v280[0], v280[1], v281, *(&v281 + 1), *v282, *&v282[8], *&v282[16], *&v282[24], @"StartChar", @"Height", @"Ascent", @"Font", @"FontFace", @"FontSize", @"ForegroundColor", v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, @"Red", @"Green", @"Blue", v306, @"Top", @"Left", @"Bottom", @"Right");
  if (v6 <= 0x3A)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1283;
    goto LABEL_3;
  }

  if (textDescriptionData[58] + 59 > v6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1288;
    goto LABEL_3;
  }

  v145 = *(textDescriptionData + 1);
  *v280 = *textDescriptionData;
  v281 = v145;
  *v282 = *(textDescriptionData + 2);
  *&v282[11] = *(textDescriptionData + 43);
  WORD2(v278) = bswap32(WORD4(v145)) >> 16;
  v146 = *v21;
  v147 = OUTLINED_FUNCTION_5_16(v31, v32, &v278 + 4);
  if (!v147)
  {
    goto LABEL_115;
  }

  v287 = v147;
  OUTLINED_FUNCTION_0_47();
  v151 = OUTLINED_FUNCTION_5_16(v148, v149, v150);
  if (!v151)
  {
    goto LABEL_115;
  }

  v288 = v151;
  OUTLINED_FUNCTION_0_47();
  v155 = OUTLINED_FUNCTION_5_16(v152, v153, v154);
  if (!v155)
  {
    goto LABEL_115;
  }

  v289 = v155;
  if (createDict(allocator, &v303, &v287, 3, &v277))
  {
    goto LABEL_211;
  }

  OUTLINED_FUNCTION_0_47();
  v159 = OUTLINED_FUNCTION_5_16(v156, v157, v158);
  if (!v159)
  {
    goto LABEL_115;
  }

  v287 = v159;
  OUTLINED_FUNCTION_0_47();
  v163 = OUTLINED_FUNCTION_5_16(v160, v161, v162);
  if (!v163)
  {
    goto LABEL_115;
  }

  v288 = v163;
  OUTLINED_FUNCTION_0_47();
  v167 = OUTLINED_FUNCTION_5_16(v164, v165, v166);
  if (!v167)
  {
    goto LABEL_115;
  }

  v289 = v167;
  OUTLINED_FUNCTION_0_47();
  if (!OUTLINED_FUNCTION_5_16(v168, v169, v170))
  {
    goto LABEL_115;
  }

  OUTLINED_FUNCTION_11_7();
  if (OUTLINED_FUNCTION_15_7(v171, v172, v173, v174, &v276))
  {
    goto LABEL_211;
  }

  OUTLINED_FUNCTION_0_47();
  v178 = OUTLINED_FUNCTION_5_16(v175, v176, v177);
  if (!v178)
  {
    goto LABEL_115;
  }

  v287 = v178;
  OUTLINED_FUNCTION_0_47();
  v182 = OUTLINED_FUNCTION_5_16(v179, v180, v181);
  if (!v182)
  {
    goto LABEL_115;
  }

  v288 = v182;
  OUTLINED_FUNCTION_0_47();
  v186 = OUTLINED_FUNCTION_5_16(v183, v184, v185);
  if (!v186)
  {
    goto LABEL_115;
  }

  v289 = v186;
  if (createDict(allocator, &v303, &v287, 3, &cf))
  {
LABEL_211:
    OUTLINED_FUNCTION_9_12();
    v202 = 0;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_4_13();
  v188 = CFNumberCreate(v146, kCFNumberSInt32Type, v187);
  if (!v188 || (v287 = v188, OUTLINED_FUNCTION_0_47(), (v192 = OUTLINED_FUNCTION_5_16(v189, v190, v191)) == 0) || (v288 = v192, OUTLINED_FUNCTION_0_47(), allocatorc = v146, (v196 = OUTLINED_FUNCTION_5_16(v193, v194, v195)) == 0) || (v289 = v196, OUTLINED_FUNCTION_0_47(), (v198 = CFNumberCreate(v146, kCFNumberSInt16Type, v197)) == 0) || (v290 = v198, (v199 = CFNumberCreate(v146, kCFNumberSInt8Type, &v282[16])) == 0) || (v291 = v199, OUTLINED_FUNCTION_0_47(), (v201 = CFNumberCreate(v146, kCFNumberSInt16Type, v200)) == 0))
  {
LABEL_115:
    v6 = 0;
    v202 = 0;
LABEL_116:
    Dict = -12713;
    goto LABEL_117;
  }

  v292 = v201;
  v293 = CFRetain(cf);
  if (createDict(allocator, v283, &v287, 7, &v275))
  {
    goto LABEL_211;
  }

  v202 = CFStringCreateWithPascalString(allocator, textDescriptionData + 58, 0);
  OUTLINED_FUNCTION_4_13();
  v204 = CFNumberCreate(allocatorc, kCFNumberSInt32Type, v203);
  if (!v204 || (v317 = v204, v311 = @"DisplayFlags", OUTLINED_FUNCTION_4_13(), (v206 = CFNumberCreate(allocatorc, kCFNumberSInt32Type, v205)) == 0))
  {
    v6 = 0;
    goto LABEL_116;
  }

  v318 = v206;
  v312 = @"TextJustification";
  v319 = CFRetain(v277);
  v313 = @"BackgroundColor";
  v320 = CFRetain(v276);
  v314 = @"DefaultTextBox";
  v207 = CFRetain(v275);
  v321 = v207;
  v315 = @"DefaultStyle";
  if (v202)
  {
    v207 = CFRetain(v202);
    v322 = v207;
    v316 = @"DefaultFontName";
    v215 = 6;
  }

  else
  {
    v215 = 5;
  }

  OUTLINED_FUNCTION_13_6(v207, v208, v209, v210, v211, v212, v213, v214, v257, v260, v263, allocatorc);
  OUTLINED_FUNCTION_14_6();
  Dict = createDict(allocator, v253, v254, v215, &v279);
  v6 = v279;
  if (Dict && v279)
  {
    CFRelease(v279);
    v6 = 0;
  }

LABEL_117:
  v216 = 0;
  do
  {
    v217 = *(&v287 + v216);
    if (v217)
    {
      CFRelease(v217);
    }

    v132 = v216 >= 0x78;
    v216 += 8;
  }

  while (!v132);
  v218 = 0;
  do
  {
    v219 = *(&v317 + v218);
    if (v219)
    {
      CFRelease(v219);
    }

    v132 = v218 >= 0x98;
    v218 += 8;
  }

  while (!v132);
  if (v277)
  {
    CFRelease(v277);
  }

  if (v276)
  {
    CFRelease(v276);
  }

  if (v275)
  {
    CFRelease(v275);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v202)
  {
    v135 = v202;
LABEL_196:
    CFRelease(v135);
  }

LABEL_4:
  if (!Dict)
  {
    Dict = CMFormatDescriptionCreate(allocator, mediaType, bswap32(*(textDescriptionData + 1)), v6, formatDescriptionOut);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Dict;
}

void InlineResourcesPayloadWritingApplierFunc(const __CFDictionary *a1, uint64_t a2)
{
  v113 = 0;
  value = 0;
  v111 = 0;
  v112 = 0;
  valuePtr = 0;
  v5 = *(a2 + 8);
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  if (CFDictionaryGetValueIfPresent(a1, @"resource_role", &value))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
  }

  CFDictionaryGetValueIfPresent(a1, @"resource_mimetype", &v113);
  CFDictionaryGetValueIfPresent(a1, @"resource_mimetype_URI", &v112);
  CFDictionaryGetValueIfPresent(a1, @"resource_payload", &v111);
  v6 = 0;
  if (!value || !v113 || !v111)
  {
    goto LABEL_26;
  }

  if (FigAtomWriterInitWithParent(v5, v108))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterBeginAtom(v108, 1920168547, 0, v7, v8, v9, v10, v11))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterInitWithParent(v108, v106))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterBeginAtom(v106, 1954115685, 0, v12, v13, v14, v15, v16))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterAppendVersionAndFlags(v106, 0, 0, v17, v18, v19, v20, v21, usedBufLen))
  {
    goto LABEL_30;
  }

  valuePtr = bswap32(valuePtr);
  if (FigAtomWriterAppendData(v106, &valuePtr, 4, v22, v23, v24, v25, v26, usedBufLena))
  {
    goto LABEL_30;
  }

  if (v113)
  {
    CFStringGetLength(v113);
    v105 = 0;
    OUTLINED_FUNCTION_3_18();
    CFStringGetBytes(v34, v115, v35, v36, v37, 0, 0, &v105);
    if (!v105)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v97 = v2;
      v98 = 2041;
LABEL_29:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", v98, v97, v95, v96, usedBufLenc);
      goto LABEL_30;
    }

    v6 = malloc_type_malloc(v105 + 1, 0x72066245uLL);
    OUTLINED_FUNCTION_3_18();
    Bytes = CFStringGetBytes(v38, v116, v39, v40, v41, v6, v42, &v105);
    if (OUTLINED_FUNCTION_12_8(Bytes, v44, v45, v46, v47, v48, v49, v50, usedBufLend, v105))
    {
      goto LABEL_26;
    }

    free(v6);
  }

  if (!v112)
  {
LABEL_20:
    if (!FigAtomWriterEndAtom(v106, v27, v28, v29, v30, v31, v32, v33) && !FigAtomWriterBeginAtom(v106, 1684108385, 0, v68, v69, v70, v71, v72))
    {
      BytePtr = CFDataGetBytePtr(v111);
      Length = CFDataGetLength(v111);
      if (!FigAtomWriterAppendData(v106, BytePtr, Length, v75, v76, v77, v78, v79, usedBufLenb) && !FigAtomWriterEndAtom(v106, v80, v81, v82, v83, v84, v85, v86) && !FigAtomWriterEndAtom(v108, v87, v88, v89, v90, v91, v92, v93))
      {
        v6 = 0;
        ++**a2;
        goto LABEL_26;
      }
    }

LABEL_30:
    v6 = 0;
    goto LABEL_26;
  }

  CFStringGetLength(v112);
  v105 = 0;
  OUTLINED_FUNCTION_3_18();
  CFStringGetBytes(v51, v117, v52, v53, v54, 0, 0, &v105);
  if (!v105)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v97 = v2;
    v98 = 2063;
    goto LABEL_29;
  }

  v6 = malloc_type_malloc(v105 + 1, 0xEF15FF85uLL);
  OUTLINED_FUNCTION_3_18();
  v60 = CFStringGetBytes(v55, v118, v56, v57, v58, v6, v59, &v105);
  if (!OUTLINED_FUNCTION_12_8(v60, v61, v62, v63, v64, v65, v66, v67, usedBufLene, v105))
  {
    free(v6);
    goto LABEL_20;
  }

LABEL_26:
  free(v6);
}

size_t CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x6F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x97A, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x982, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_3()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x98A, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x975, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x96A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA7F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA84, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA8A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA91, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA3A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_11()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA44, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_12()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA4F, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_13()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA61, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0xA73, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAA3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAA9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAAF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAB5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x991, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x908, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x902, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x8FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x8FC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FontTableEmittingApplierFunction_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x738, v10, v11, v12, a9);
}

size_t FontTableEmittingApplierFunction_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x739, v10, v11, v12, a9);
}

size_t FontTableEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x73C, v1, v2, v3, v5);
}

size_t MiscExtensionEmittingApplierFunction_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x887, v10, v11, v12, a9);
}

size_t MiscExtensionEmittingApplierFunction_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x889, v10, v11, v12, a9);
}

size_t MiscExtensionEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x89E, v1, v2, v3, v5);
}

size_t MiscExtensionEmittingApplierFunction_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x88D, v10, v11, v12, a9);
}

size_t MiscExtensionEmittingApplierFunction_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x888, v10, v11, v12, a9);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x759, v10, v11, v12, a9);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x762, v10, v11, v12, a9);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x77A, v1, v2, v3, v5);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x798, v1, v2, v3, v5);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x77F, v1, v2, v3, v5);
}

size_t InlineResourcesEmittingApplierFunction_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x845, v10, v11, v12, a9);
}

size_t InlineResourcesEmittingApplierFunction_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x850, v10, v11, v12, a9);
}

size_t FetchDictionaryNumberWithNtoBFlip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x711, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FetchDictionaryNumberWithNtoBFlip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x712, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x465, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x469, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x47A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x472, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x47E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x46D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x466, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x45C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x44D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x44A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x302, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_15()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x238, v1, v2, v3, v5);
}

size_t ParseExtensionAtomsInDescription_cold_16()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x1C0, v1, v2, v3, v5);
}

size_t ParseExtensionAtomsInDescription_cold_17()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x1B7, v1, v2, v3, v5);
}

size_t ParseExtensionAtomsInDescription_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x494, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x484, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3FF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3DD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3D2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHALAudioObjectMapperCreate(uint64_t **a1)
{
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v5)
  {
    v6 = FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 3, v5);
    if (!v6)
    {
      *(v5 + 2) = 1;
      *a1 = v5;
      v5 = 0;
    }
  }

  else
  {
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBE06uLL, "(Fig)", 0x2D, v1, v3, v4, v8);
  }

  FigHALAudioObjectMapperDispose(v5);
  return v6;
}

uint64_t FigBridge_GetPlaintextMediaSubTypeAndEncryptionSchemeFromProtectedCodecType(int a1, _DWORD *a2, int *a3)
{
  v3 = 21;
  for (i = &dword_197165C14; i[1] != a1; i += 3)
  {
    if (!--v3)
    {
      return 4294954578;
    }
  }

  v6 = *(i - 1);
  result = 4294954578;
  if (v6)
  {
    v7 = *i;
    if (v7)
    {
      if (a2)
      {
        *a2 = v6;
      }

      result = 0;
      if (a3)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

OSStatus CMVideoFormatDescriptionCopyTagCollectionArray(CMVideoFormatDescriptionRef formatDescription, CFArrayRef *tagCollectionsOut)
{
  theData = 0;
  theArray = 0;
  v80 = 0;
  v81 = 0;
  HIWORD(cf) = -1;
  MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
  v5 = MediaSubType;
  v6 = 0;
  if (MediaSubType != 1635135537)
  {
    if (MediaSubType == 1667524657 || MediaSubType == 1667790435)
    {
      goto LABEL_52;
    }

    if (MediaSubType == 1684108849)
    {
      goto LABEL_53;
    }

    v8 = MediaSubType == 1684895096 || MediaSubType == 1685481521;
    v9 = v8 || MediaSubType == 1685481573;
    v10 = v9 || MediaSubType == 1718908520;
    v11 = v10 || MediaSubType == 1718908528;
    v12 = v11 || MediaSubType == 1751479857;
    if (v12 || MediaSubType == 1752589105)
    {
      goto LABEL_52;
    }

    if (MediaSubType == 1768972832)
    {
      Extensions = CMFormatDescriptionGetExtensions(formatDescription);
      if (Extensions)
      {
        goto LABEL_55;
      }

LABEL_102:
      v70 = -12710;
      goto LABEL_96;
    }

    if (MediaSubType == 1836415073 || MediaSubType == 1869117027)
    {
      goto LABEL_52;
    }

    if (MediaSubType != 1902212657 && MediaSubType != 1902403958)
    {
      if (MediaSubType != 1902405681 && MediaSubType != 1902405733 && MediaSubType != 1902407032 && MediaSubType != 1902667126 && MediaSubType != 1902998904 && MediaSubType != 1902671459)
      {
        goto LABEL_102;
      }

LABEL_52:
      v6 = MediaSubType == 1768972832;
    }
  }

LABEL_53:
  v21 = CMFormatDescriptionGetExtensions(formatDescription);
  if (!v21)
  {
    goto LABEL_102;
  }

  Extensions = v21;
  if (v6)
  {
LABEL_55:
    LOBYTE(cf) = 0;
    BYTE5(cf) = 0;
    FigCFDictionaryGetBooleanIfPresent(Extensions, @"HasLeftStereoEyeView", &cf, v22, v23, v24, v25, v26, v77, cf, v80, v81, theData, theArray, v84, v85, v86, v87);
    FigCFDictionaryGetBooleanIfPresent(Extensions, @"HasRightStereoEyeView", &cf + 5, v28, v29, v30, v31, v32, v78, cf, v80, v81, theData, theArray, v84, v85, v86, v87);
    StringValue = FigCFDictionaryGetStringValue(Extensions);
    if (cf && BYTE5(cf) && !StringValue)
    {
      HIWORD(cf) = 1;
    }

    goto LABEL_93;
  }

  if (v5 == 1635135537 || v5 == 1684108849 || v5 == 1902403958 || v5 == 1902212657)
  {
    Value = CFDictionaryGetValue(v21, @"SampleDescriptionExtensionAtoms");
    if (!Value)
    {
      goto LABEL_102;
    }

    v38 = CFDictionaryGetValue(Value, @"av1C");
    if (!v38)
    {
      goto LABEL_102;
    }

    ValueAtIndex = v38;
    v40 = CFGetTypeID(v38);
    if (v40 != CFArrayGetTypeID() || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0)
    {
      v41 = CFGetTypeID(ValueAtIndex);
      if (v41 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(ValueAtIndex);
        Length = CFDataGetLength(ValueAtIndex);
        v49 = FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU(BytePtr, Length, &theArray, v44, v45, v46, v47, v48, v77);
        if (!v49)
        {
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count >= 1)
            {
              v56 = Count;
              v57 = 0;
              while (1)
              {
                LODWORD(cf) = 0;
                FigCFArrayGetIntAtIndex(theArray, v57, &cf, v51, v52, v53, v54, v55);
                v58 = (cf >> 8) & 0xF;
                if (FigUInt32GetCountOfSetBits(v58) == 2)
                {
                  break;
                }

                if (v56 == ++v57)
                {
                  goto LABEL_93;
                }
              }

              HIBYTE(cf) = FigUInt32GetPositionOfLeastSignificantSetBit(v58);
              BYTE6(cf) = FigUInt32GetPositionOfLeastSignificantSetBit(v58 & ~(1 << SHIBYTE(cf)));
            }
          }

LABEL_93:
          if (HIBYTE(cf) == 255)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v76 = 4017;
          }

          else
          {
            if (BYTE6(cf) != 255)
            {
              v70 = 0;
              *tagCollectionsOut = figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(&cf + 7, &cf + 6, 1);
              goto LABEL_96;
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v76 = 4018;
          }

          goto LABEL_106;
        }

        goto LABEL_107;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v76 = 3958;
LABEL_106:
    v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v76, v73, v74, v75, v77);
    goto LABEL_107;
  }

  v59 = CFDictionaryGetValue(v21, @"SampleDescriptionExtensionAtoms");
  if (!v59)
  {
    goto LABEL_102;
  }

  v60 = CFDictionaryGetValue(v59, @"hvcC");
  if (!v60)
  {
    goto LABEL_102;
  }

  v61 = v60;
  v62 = CFGetTypeID(v60);
  if (v62 == CFArrayGetTypeID() && (v61 = CFArrayGetValueAtIndex(v61, 0)) == 0 || (v63 = CFGetTypeID(v61), v63 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v76 = 3998;
    goto LABEL_106;
  }

  v49 = FigHEVCBridge_CopyHEVCSEIPayloadData(v61, 176, &theData);
  if (!v49)
  {
    if (theData)
    {
      v49 = OUTLINED_FUNCTION_3_19(v61, v64, v65, &v81, &v80);
      if (v49)
      {
        goto LABEL_107;
      }

      v67 = v80;
      v66 = v81;
      v68 = CFDataGetBytePtr(theData);
      v69 = CFDataGetLength(theData);
      FigHEVCBridge_Get3DLayerIDs(v66, v67, v68, v69, &cf + 7, &cf + 6);
      if (v49)
      {
        goto LABEL_107;
      }

      goto LABEL_93;
    }

    goto LABEL_102;
  }

LABEL_107:
  v70 = v49;
LABEL_96:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v70;
}

__CFArray *figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  Mutable = 0;
  v20 = *MEMORY[0x1E69E9840];
  newCollectionOut = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = a3;
      if (a3 >= 1)
      {
        v6 = a1;
        v7 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v15 = kCMTagStereoRightEye;
          while (1)
          {
            tags = kCMTagStereoLeftEye;
            v8 = *v6++;
            v19 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v8);
            v17[0] = v15;
            v9 = *v4++;
            v17[1] = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v9);
            if (CMTagCollectionCreate(v7, &tags, 2, &newCollectionOut))
            {
              break;
            }

            CFArrayAppendValue(Mutable, newCollectionOut);
            if (newCollectionOut)
            {
              CFRelease(newCollectionOut);
              newCollectionOut = 0;
            }

            if (FigTagCollectionCreate(v7, v17, 2, &newCollectionOut, v10, v11, v12, v13, *&v15.category))
            {
              break;
            }

            CFArrayAppendValue(Mutable, newCollectionOut);
            if (newCollectionOut)
            {
              CFRelease(newCollectionOut);
              newCollectionOut = 0;
            }

            if (!--v5)
            {
              return Mutable;
            }
          }

          if (newCollectionOut)
          {
            CFRelease(newCollectionOut);
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigVideoFormatDescriptionCopyFigTagCollectionArrayWithExtraChannels(const opaqueCMFormatDescription *a1, __CFArray **a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v48 = 0;
  theData = 0;
  v47 = 0;
  memset(v51, 0, sizeof(v51));
  memset(v50, 0, sizeof(v50));
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v20 = MediaSubType == 1667524657 || MediaSubType == 1667790435 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1718908520 || MediaSubType == 1718908528 || MediaSubType == 1751479857 || MediaSubType == 1752589105 || MediaSubType == 1836415073 || MediaSubType == 1869117027 || MediaSubType == 1902405681 || MediaSubType == 1902405733 || MediaSubType == 1902407032 || MediaSubType == 1902667126 || MediaSubType == 1902998904 || MediaSubType == 1902671459;
  if (!v20 || (Extensions = CMFormatDescriptionGetExtensions(a1)) == 0 || (Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms")) == 0 || (v23 = CFDictionaryGetValue(Value, @"hvcC")) == 0)
  {
    v39 = 4294954586;
    goto LABEL_73;
  }

  ValueAtIndex = v23;
  v25 = CFGetTypeID(v23);
  if ((v25 != CFArrayGetTypeID() || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v26 = CFGetTypeID(ValueAtIndex), v26 == CFDataGetTypeID()))
  {
    v27 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 176, &theData);
    if (v27)
    {
      goto LABEL_83;
    }

    if (!theData)
    {
      return 4294954586;
    }

    v27 = OUTLINED_FUNCTION_3_19(ValueAtIndex, v28, v29, &v48, &v47);
    if (v27)
    {
      goto LABEL_83;
    }

    v31 = v47;
    v30 = v48;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    FigHEVCBridge_Get3DLayerIDSets(v30, v31, BytePtr, Length, v51, v50);
    if (v27)
    {
      goto LABEL_83;
    }

    v34 = 0;
    v35 = -1;
    v36 = -1;
    do
    {
      v37 = *(v51 + v34);
      v38 = *(v50 + v34);
      if (v37 == 255 && v38 == 255)
      {
        break;
      }

      if (v38 != 255)
      {
        v35 = v34;
      }

      if (v37 != 255)
      {
        v36 = v34;
      }

      ++v34;
    }

    while (v34 != 64);
    if (v36 < 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4097;
    }

    else if (v35 < 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4098;
    }

    else
    {
      if (v36 == v35)
      {
        v39 = 0;
        *a2 = figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(v51, v50, v36 + 1);
        goto LABEL_73;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4099;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v45 = 4064;
  }

  v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v45, v42, v43, v44, v46);
LABEL_83:
  v39 = v27;
LABEL_73:
  if (theData)
  {
    CFRelease(theData);
  }

  return v39;
}

size_t FigVideoFormatDescriptionDetermineCompatibilityWithCoreMediaRequirementsForHEVCWithAlpha(const opaqueCMFormatDescription *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v25 = 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType != 1752589105 && MediaSubType != 1902671459)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v23 = v9;
    v24 = 4124;
LABEL_16:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v24, v23, v21, v22, a9);
  }

  if (!FigVideoFormatDescriptionContainsAlphaChannel(a1))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v23 = v9;
    v24 = 4126;
    goto LABEL_16;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 4294954586;
  }

  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    return 4294954586;
  }

  v16 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v16)
  {
    return 4294954586;
  }

  v17 = v16;
  v18 = CFGetTypeID(v16);
  if (v18 != CFDataGetTypeID())
  {
    return 4294954586;
  }

  result = FigHEVCBridge_CheckVPSPrimaryAlphaLayerCompatibility(v17, &v25);
  if (!result)
  {
    if (v25 == 2 || v25 == 1)
    {
      result = 0;
      *a2 = v25;
    }

    else if (v25)
    {
      return 4294954578;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_1(uint64_t a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0xA16, v2, v6, v7, v13);
  *a2 = v8;
  OUTLINED_FUNCTION_6_15("Image description - unsupported extension 'jpgC'");
  v14 = *(v9 + 32);
  v15 = 0;
  v10 = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v8, "<<<< ImageDescriptionBridge >>>>", 0xA17, v2, v11, v12, v13);
  figSoundBridge_ReportParsingFailureMessage(a1, &v13);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description data could have changed");
  v8 = *(v2 + 26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xA21, v4, v5, v6, v7);
  figSoundBridge_ReportParsingFailureMessage(a1, &v7);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description extension size exceeds image description size");
  v3 = *(v2 + 48);
  v9 = *(v2 + 32);
  v10 = v3;
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x973, v5, v6, v7, v8);
  figSoundBridge_ReportParsingFailureMessage(a1, &v8);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description data could have changed");
  v8 = *(v2 + 26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xA5F, v4, v5, v6, v7);
  figSoundBridge_ReportParsingFailureMessage(a1, &v7);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_1()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC1C, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_2()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC50, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_3()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC67, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_4()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC7C, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_5()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC92, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_6()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xCA7, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  strcpy(__dst, "Image description - PrimaryAlphaLayerCompatibility. Apple decoders will not be able to decode this HEVC with Alpha stream. To fix this in the encoder, for the primary alpha layer, NumDirectRefLayers must be 0 and poc_lsb_not_present_flag must be 1");
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xEF0, v3, v4, v5, v6);
  figSoundBridge_ReportParsingFailureMessage(a1, __dst);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  strcpy(__dst, "Image description - PrimaryAlphaLayerCompatibility. Apple decoders can still decode this HEVC with Alpha stream, but the stream is not compliant with the standard (ISO/IEC 23008-2) and may have compatibility issues with other decoders");
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0xEED, v3, v4, v5, v6);
  figSoundBridge_ReportParsingFailureMessage(a1, __dst);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_9()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v19, v22, v24, v25, v26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xD95, v8, v9, v10, v20);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
}

size_t CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0x1186, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16C4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16C1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16BB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16B6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x16B0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t MP4Bridge_ParseMPEG4AudioSpecificConfig(uint64_t a1, unint64_t a2, _WORD *a3, CFMutableDictionaryRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a2 > 1)
  {
    v492[0] = a1;
    v492[1] = a2;
    v494 = 0;
    v492[2] = a1;
    v493 = a1 + a2;
    result = CopyNextWord(v492);
    if (result)
    {
      return result;
    }

    v19 = OUTLINED_FUNCTION_8_12(result, v12, v13, v14, v15, v16, v17, v18, v467, v474, v484, v492[0]);
    Bits = GetBits(v19, v20, v21, v22, v23, v24, v25, v26);
    v35 = Bits;
    if (Bits == 31)
    {
      Bits = GetBits(v492, 6, v29, v30, v31, v32, v33, v34);
      v35 = Bits + 32;
    }

    v36 = OUTLINED_FUNCTION_10_9(Bits, v28, v29, v30, v31, v32, v33, v34, v468, v475, v485, v492[0]);
    v44 = GetBits(v36, v37, v38, v39, v40, v41, v42, v43);
    if (v44 == 15)
    {
      v52 = OUTLINED_FUNCTION_19_6(v44, v45, v46, v47, v48, v49, v50, v51, v469, v476, v486, v492[0]);
      v44 = GetBits(v52, v53, v54, v55, v56, v57, v58, v59);
      v60 = v44;
    }

    else
    {
      if (v44 >= 0xDu)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v449 = 4294954582;
        v450 = 2820;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
      }

      v60 = sSamplingFrequencies[v44];
    }

    v61 = OUTLINED_FUNCTION_10_9(v44, v45, v46, v47, v48, v49, v50, v51, v469, v476, v486, v492[0]);
    v69 = GetBits(v61, v62, v63, v64, v65, v66, v67, v68);
    v77 = v69;
    if (v69)
    {
      if (v69 >= 0x10u)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v449 = 4294954582;
        v450 = 2825;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
      }

      if ((0x8701uLL >> v69))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v449 = 4294954582;
        v450 = 2829;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
      }

      v78 = MP4Bridge_ParseMPEG4AudioSpecificConfig_sChannelCounts[v69];
    }

    else
    {
      v78 = 0;
    }

    v79 = v35 == 29;
    if (v35 == 29 || v35 == 5)
    {
      v81 = OUTLINED_FUNCTION_10_9(v69, v70, v71, v72, v73, v74, v75, v76, v469, v477, v487, v492[0]);
      v89 = GetBits(v81, v82, v83, v84, v85, v86, v87, v88);
      if (v89 == 15)
      {
        v97 = OUTLINED_FUNCTION_19_6(v89, v90, v91, v92, v93, v94, v95, v96, v470, v478, v488, v492[0]);
        v89 = SkipBits(v97, v98, v99, v100, v101, v102, v103, v104);
      }

      v105 = OUTLINED_FUNCTION_8_12(v89, v90, v91, v92, v93, v94, v95, v96, v470, v478, v488, v492[0]);
      v113 = GetBits(v105, v106, v107, v108, v109, v110, v111, v112);
      v114 = v113;
      if (v113 == 31)
      {
        v113 = GetBits(v492, 6, v71, v72, v73, v74, v75, v76);
        v114 = v113 + 32;
      }

      if (v114 == 22)
      {
        v115 = OUTLINED_FUNCTION_10_9(v113, v70, v71, v72, v73, v74, v75, v76, v469, v479, v487, v492[0]);
        SkipBits(v115, v116, v117, v118, v119, v120, v121, v122);
      }

      v123 = 1;
      if (!a4)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v123 = 0;
      v79 = 0;
      v114 = v35;
      if (!a4)
      {
LABEL_70:
        result = 0;
        if (a3)
        {
          *a3 = v114;
        }

        return result;
      }
    }

    result = 4294954514;
    HIDWORD(v487) = v79;
    v124 = v60;
    v480 = a3;
    v125 = 160;
    v126 = 8000;
    v127 = 1;
    switch(v114)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 6u:
      case 7u:
      case 0x11u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
        v495 = 0;
        if (v114 == 23)
        {
          v125 = 512;
        }

        else
        {
          v125 = 1024;
        }

        v128 = OUTLINED_FUNCTION_5_18(4294954514, v70, v71, v72, v73, v74, v75, v76, v469, v480, v487, v492[0]);
        result = GetBits(v128, v129, v130, v131, v132, v133, v134, v135);
        if (result != 1)
        {
          goto LABEL_41;
        }

        if (v114 == 23)
        {
          v125 = 480;
        }

        else if (v114 == 3)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v143, 0xFFFFCE56uLL, "(Fig)", 0xA44, v144, v145, v146, v471);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v125 = 960;
        }

LABEL_41:
        v155 = OUTLINED_FUNCTION_5_18(result, v136, v137, v138, v139, v140, v141, v142, v471, v481, v489, v492[0]);
        v163 = GetBits(v155, v156, v157, v158, v159, v160, v161, v162);
        if (v163 == 1)
        {
          v163 = SkipBits(v492, 0xEu, v165, v166, v167, v168, v169, v170);
        }

        v171 = OUTLINED_FUNCTION_5_18(v163, v164, v165, v166, v167, v168, v169, v170, v472, v482, v490, v492[0]);
        result = GetBits(v171, v172, v173, v174, v175, v176, v177, v178);
        v186 = result;
        if (v77)
        {
          goto LABEL_46;
        }

        if (v114 - 5 < 0xFFFFFFFC)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v459, 0xFFFFCE56uLL, "(Fig)", 0xA54, v460, v461, v462, v469);
          if (result)
          {
            return result;
          }

          v125 = 0;
          if (v78)
          {
            goto LABEL_61;
          }

          goto LABEL_135;
        }

        result = MP4Bridge_ParseProgramConfigElement(v492, 0, &v495, v181, v182, v183, v184, v185);
        if (result)
        {
          return result;
        }

LABEL_46:
        if (v114 == 20 || v114 == 6)
        {
          result = SkipBits(v492, 3u, v180, v181, v182, v183, v184, v185);
        }

        if (v186 != 1)
        {
          goto LABEL_58;
        }

        if (v114 > 0x17u)
        {
          goto LABEL_57;
        }

        if (((1 << v114) & 0x9A0000) != 0)
        {
          v188 = 3;
        }

        else
        {
          if (v114 != 22)
          {
            goto LABEL_57;
          }

          v311 = OUTLINED_FUNCTION_8_12(result, v179, v180, v181, v182, v183, v184, v185, v469, v480, v487, v492[0]);
          SkipBits(v311, v312, v313, v314, v315, v316, v317, v318);
          v188 = 11;
        }

        result = SkipBits(v492, v188, v180, v181, v182, v183, v184, v185);
LABEL_57:
        v189 = OUTLINED_FUNCTION_5_18(result, v179, v180, v181, v182, v183, v184, v185, v469, v480, v487, v492[0]);
        SkipBits(v189, v190, v191, v192, v193, v194, v195, v196);
LABEL_58:
        if (!v77)
        {
          v78 = v495;
        }

        if (v78)
        {
LABEL_61:
          if (v114 > 0x17 || ((1 << v114) & 0xA00080) == 0)
          {
            OUTLINED_FUNCTION_20_6();
            if (!v214)
            {
              OUTLINED_FUNCTION_3_20();
              if ((v222 & 7 | (8 * v221)) >= 0xB)
              {
                v223 = GetBits(v492, 11, v215, v216, v217, v218, v219, v220) != 695 || v35 == 5;
                if (!v223 && v35 != 29)
                {
                  OUTLINED_FUNCTION_20_6();
                  if (!v214)
                  {
                    OUTLINED_FUNCTION_3_20();
                    if ((v234 & 7 | (8 * v233)) >= 5)
                    {
                      v235 = OUTLINED_FUNCTION_8_12(v225, v226, v227, v228, v229, v230, v231, v232, v469, v480, v487, v492[0]);
                      v243 = GetBits(v235, v236, v237, v238, v239, v240, v241, v242);
                      v251 = v243;
                      if (v243 == 31)
                      {
                        OUTLINED_FUNCTION_20_6();
                        if (!v214)
                        {
                          OUTLINED_FUNCTION_3_20();
                          if ((v252 & 6 | (8 * v253)) >= 6)
                          {
                            v243 = GetBits(v492, 6, v245, v246, v247, v248, v249, v250);
                            v251 = v243 + 32;
                          }
                        }
                      }

                      if (v251 == 22 || v251 == 5)
                      {
                        v255 = OUTLINED_FUNCTION_5_18(v243, v244, v245, v246, v247, v248, v249, v250, v469, v480, v487, v492[0]);
                        v263 = GetBits(v255, v256, v257, v258, v259, v260, v261, v262);
                        v123 = v263 == 1;
                        if (v263 == 1)
                        {
                          v271 = OUTLINED_FUNCTION_10_9(v263, v264, v265, v266, v267, v268, v269, v270, v469, v480, v487, v492[0]);
                          v263 = GetBits(v271, v272, v273, v274, v275, v276, v277, v278);
                          if (v263 == 15)
                          {
                            v279 = OUTLINED_FUNCTION_19_6(v263, v264, v265, v266, v267, v268, v269, v270, v469, v480, v487, v492[0]);
                            v263 = SkipBits(v279, v280, v281, v282, v283, v284, v285, v286);
                          }
                        }

                        if (v251 == 22)
                        {
                          if (v114 == 22)
                          {
                            v451 = OUTLINED_FUNCTION_10_9(v263, v264, v265, v266, v267, v268, v269, v270, v469, v480, v487, v492[0]);
                            SkipBits(v451, v452, v453, v454, v455, v456, v457, v458);
                            goto LABEL_63;
                          }

                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_1_2();
                          v449 = 4294954582;
                          v450 = 2911;
                          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
                        }

                        if (v251 == 5)
                        {
                          OUTLINED_FUNCTION_20_6();
                          if (!v214)
                          {
                            OUTLINED_FUNCTION_3_20();
                            if ((v293 & 4 | (8 * v294)) >= 0xC)
                            {
                              v295 = GetBits(v492, 11, v287, v288, v289, v290, v291, v292);
                              if (v295 == 1352)
                              {
                                v303 = OUTLINED_FUNCTION_5_18(v295, v296, v297, v298, v299, v300, v301, v302, v469, v480, v487, v492[0]);
                                HIDWORD(v487) = GetBits(v303, v304, v305, v306, v307, v308, v309, v310) == 1;
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

LABEL_63:
          v127 = v78;
          v126 = v124;
LABEL_64:
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v203 = Mutable;
            FigCFDictionarySetInt32(Mutable, @"AudioSampleRate", v126, v198, v199, v200, v201, v202);
            FigCFDictionarySetInt32(v203, @"AudioChannelCount", v127, v204, v205, v206, v207, v208);
            FigCFDictionarySetInt32(v203, @"AudioFramesPerPacket", v125, v209, v210, v211, v212, v213);
            if (v123)
            {
              FigCFDictionarySetBoolean(v203, @"SBRIsPresent", v123);
            }

            a3 = v480;
            if (HIDWORD(v487))
            {
              FigCFDictionarySetBoolean(v203, @"PSIsPresent", 1);
            }

            *a4 = v203;
            goto LABEL_70;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          v449 = 4294954510;
          v450 = 2958;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
        }

LABEL_135:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v449 = 4294954582;
        v450 = 2872;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v445, v449, "(Fig)", v450, v446, v447, v448, v469);
      case 9u:
      case 0x19u:
        goto LABEL_64;
      case 0x20u:
      case 0x21u:
      case 0x22u:
        v147 = OUTLINED_FUNCTION_5_18(4294954514, v70, v71, v72, v73, v74, v75, v76, v469, v480, v487, v492[0]);
        SkipBits(v147, v148, v149, v150, v151, v152, v153, v154);
        goto LABEL_38;
      case 0x27u:
        v319 = OUTLINED_FUNCTION_5_18(4294954514, v70, v71, v72, v73, v74, v75, v76, v469, v480, v487, v492[0]);
        if (GetBits(v319, v320, v321, v322, v323, v324, v325, v326) == 1)
        {
          v125 = 480;
        }

        else
        {
          v125 = 512;
        }

        v333 = SkipBits(v492, 3u, v327, v328, v329, v330, v331, v332);
        v341 = OUTLINED_FUNCTION_5_18(v333, v334, v335, v336, v337, v338, v339, v340, v473, v483, v491, v492[0]);
        v349 = GetBits(v341, v342, v343, v344, v345, v346, v347, v348);
        if (v349)
        {
          v123 = v349;
          v357 = OUTLINED_FUNCTION_5_18(v349, v350, v351, v352, v353, v354, v355, v356, v469, v480, v487, v492[0]);
          GetBits(v357, v358, v359, v360, v361, v362, v363, v364);
        }

        else
        {
          v123 = 0;
        }

        goto LABEL_63;
      case 0x2Au:
        v365 = OUTLINED_FUNCTION_8_12(4294954514, v70, v71, v72, v73, v74, v75, v76, v469, v480, v487, v492[0]);
        v373 = GetBits(v365, v366, v367, v368, v369, v370, v371, v372);
        if (v373 == 31)
        {
          v381 = OUTLINED_FUNCTION_19_6(v373, v374, v375, v376, v377, v378, v379, v380, v469, v480, v487, v492[0]);
          v126 = GetBits(v381, v382, v383, v384, v385, v386, v387, v388);
        }

        else
        {
          if (v373 > 0x1Bu)
          {
            v440 = 2753;
            goto LABEL_141;
          }

          if (v373 - 13 < 2)
          {
            v440 = 2756;
            goto LABEL_141;
          }

          v126 = MP4Bridge_ParseUSACConfig_sUSACSamplingFrequencies[v373];
        }

        v389 = GetBits(v492, 3, v375, v376, v377, v378, v379, v380);
        if (v389 > 4u)
        {
          v440 = 2760;
          goto LABEL_141;
        }

        v125 = MP4Bridge_ParseUSACConfig_sUSACFramesPerPacket[v389];
        v397 = OUTLINED_FUNCTION_8_12(v389, v390, v391, v392, v393, v394, v395, v396, v469, v480, v487, v492[0]);
        v405 = GetBits(v397, v398, v399, v400, v401, v402, v403, v404);
        if (v405)
        {
          if (v405 > 0xFu)
          {
            v440 = 2768;
            goto LABEL_141;
          }

          v127 = MP4Bridge_ParseUSACConfig_sUSACChannelCounts[v405];
        }

        else
        {
          v413 = OUTLINED_FUNCTION_8_12(v405, v406, v407, v408, v409, v410, v411, v412, v469, v480, v487, v492[0]);
          v127 = GetBits(v413, v414, v415, v416, v417, v418, v419, v420);
          if (v127 == 31)
          {
            v427 = GetBits(v492, 18, v421, v422, v423, v424, v425, v426);
            v127 = GetBits(v492, 18, v428, v429, v430, v431, v432, v433) + 31;
            if (v427 == 0x3FFFF)
            {
              v127 += GetBits(v492, 13, v434, v435, v436, v437, v438, v439);
            }
          }
        }

        if (v127)
        {
          goto LABEL_64;
        }

        v440 = 2772;
LABEL_141:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v463, 0xFFFFCE56uLL, "(Fig)", v440, v464, v465, v466, v469);
        if (!result)
        {
LABEL_38:
          v125 = 0;
          goto LABEL_63;
        }

        return result;
      default:
        return result;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_1_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v441, 0xFFFFCE56uLL, "(Fig)", 0xAF4, v442, v443, v444, a9);
}

uint64_t MP4Bridge_ParseMPEGVideoSequenceHeader(unint64_t a1, unint64_t a2, int a3, __CFDictionary **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a3)
  {
    if (a2 <= 0xB)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_4_15();
      v16 = 2227;
      goto LABEL_143;
    }

LABEL_5:
    v450[0] = a1;
    v450[1] = a2;
    v453 = 0;
    v451 = a1;
    v452 = a1 + a2;
    Word = CopyNextWord(v450);
    if (!Word)
    {
      if (GetBits(v450, 32, v18, v19, v20, v21, v22, v23) == 435)
      {
        Bits = GetBits(v450, 12, v24, v25, v26, v27, v28, v29);
        v37 = GetBits(v450, 12, v31, v32, v33, v34, v35, v36);
        v38 = v37;
        v46 = OUTLINED_FUNCTION_21_6(v37, v39, v40, v41, v42, v43, v44, v45, v413, v429);
        v47 = v46;
        v55 = OUTLINED_FUNCTION_21_6(v46, v48, v49, v50, v51, v52, v53, v54, v414, v430);
        v62 = GetBits(v450, 18, v56, v57, v58, v59, v60, v61);
        if (OUTLINED_FUNCTION_14_7(v62, v63, v64, v65, v66, v67, v68, v69, v415, v431) == 1)
        {
          v76 = SkipBits(v450, 0xAu, v70, v71, v72, v73, v74, v75);
          v84 = OUTLINED_FUNCTION_14_7(v76, v77, v78, v79, v80, v81, v82, v83, v413, v432);
          v92 = OUTLINED_FUNCTION_14_7(v84, v85, v86, v87, v88, v89, v90, v91, v416, v433);
          if (v92)
          {
            v92 = SkipBits(v450, 0x200u, v94, v95, v96, v97, v98, v99);
          }

          if (OUTLINED_FUNCTION_14_7(v92, v93, v94, v95, v96, v97, v98, v99, v417, v434))
          {
            SkipBits(v450, 0x200u, v100, v101, v102, v103, v104, v105);
          }

          v106 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v115 = Mutable;
            v435 = v9;
            v116 = MEMORY[0x1E6965D88];
            v117 = MEMORY[0x1E6965DD8];
            if (!a3)
            {
              if (v55 == 4)
              {
                goto LABEL_17;
              }

              if (v55 != 3)
              {
                if (v55 == 1)
                {
LABEL_17:
                  v118 = *MEMORY[0x1E6965DD8];
                  if (v38 == 240)
                  {
                    if (Bits == 352)
                    {
                      v120 = 10;
                      v121 = 11;
                      if (v118)
                      {
                        goto LABEL_53;
                      }

                      goto LABEL_54;
                    }

                    if (Bits == 384 && (v47 == 1 || v47 == 14))
                    {
                      v120 = 5;
                      v121 = 6;
                      if (!v118)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_53;
                    }
                  }

                  goto LABEL_42;
                }

                v118 = 0;
LABEL_42:
                v127 = v47 - 1;
                if (v127 <= 0xD)
                {
                  v128 = (&pixelAspectRatios + 4 * v127);
                  v120 = *v128;
                  v121 = v128[1];
                  if (!v118)
                  {
                    goto LABEL_54;
                  }

LABEL_53:
                  v129 = MEMORY[0x1E6965F30];
                  v130 = MEMORY[0x1E6965F50];
                  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v118);
                  CFDictionarySetValue(v115, *v129, *v130);
                  CFDictionarySetValue(v115, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8]);
                  goto LABEL_54;
                }

                v121 = 0;
                v120 = 0;
                if (v118)
                {
                  goto LABEL_53;
                }

LABEL_54:
                FigCFDictionarySetInt16(v115, @"VideoWidth", Bits, v110, v111, v112, v113, v114);
                FigCFDictionarySetInt16(v115, @"VideoHeight", v38, v131, v132, v133, v134, v135);
                if (v120 >= 1 && v121 >= 1)
                {
                  PixelAspectRatioDictionary = createPixelAspectRatioDictionary(v106, v120, v121);
                  FigCFDictionarySetValue(v115, *MEMORY[0x1E6965EF8], PixelAspectRatioDictionary);
                  if (PixelAspectRatioDictionary)
                  {
                    CFRelease(PixelAspectRatioDictionary);
                  }
                }

                v138 = 0;
                if (a4)
                {
                  *a4 = v115;
                  return v138;
                }

LABEL_77:
                CFRelease(v115);
                return v138;
              }

              v118 = *MEMORY[0x1E6965DA0];
              v122 = v38 << 16;
              v123 = Bits << 16;
              if (v38 << 16 == 18874368 && v123 == 23068672)
              {
                v120 = 59;
                v121 = 54;
                if (v118)
                {
                  goto LABEL_53;
                }

                goto LABEL_54;
              }

              if (v122 == 17825792 && v123 == 24117248)
              {
                v120 = 68;
              }

              else
              {
                if (v122 != 13631488 || v123 != 24117248)
                {
                  goto LABEL_42;
                }

                v120 = 65;
              }

              v121 = 69;
              if (!v118)
              {
                goto LABEL_54;
              }

              goto LABEL_53;
            }

            AdvanceToNextStartCode(v450, v108, v109, v110, v111, v112, v113, v114);
            if (v451 >= v452 || (OUTLINED_FUNCTION_3_20(), v145 < 0xA))
            {
              v297 = 2351;
              goto LABEL_76;
            }

            v146 = GetBits(v450, 32, v139, v140, v141, v142, v143, v144);
            if (v146 != 437)
            {
              v297 = 2352;
              goto LABEL_76;
            }

            v154 = OUTLINED_FUNCTION_21_6(v146, v147, v148, v149, v150, v151, v152, v153, v413, v9);
            if (v154 != 1)
            {
              v297 = 2353;
              goto LABEL_76;
            }

            v162 = OUTLINED_FUNCTION_15_8(v154, v155, v156, v157, v158, v159, v160, v161, v413, v435, v450[0]);
            v170 = GetBits(v162, v163, v164, v165, v166, v167, v168, v169);
            v178 = OUTLINED_FUNCTION_14_7(v170, v171, v172, v173, v174, v175, v176, v177, v418, v436);
            v186 = OUTLINED_FUNCTION_22_5(v178, v179, v180, v181, v182, v183, v184, v185, v419, v437);
            v194 = OUTLINED_FUNCTION_22_5(v186, v187, v188, v189, v190, v191, v192, v193, v420, v438);
            v195 = v194;
            v203 = OUTLINED_FUNCTION_22_5(v194, v196, v197, v198, v199, v200, v201, v202, v421, v439);
            v210 = GetBits(v450, 12, v204, v205, v206, v207, v208, v209);
            v218 = OUTLINED_FUNCTION_14_7(v210, v211, v212, v213, v214, v215, v216, v217, v422, v440);
            if (v218 != 1)
            {
              v297 = 2369;
              goto LABEL_76;
            }

            Bits |= v195 << 12;
            v38 |= v203 << 12;
            v226 = OUTLINED_FUNCTION_15_8(v218, v219, v220, v221, v222, v223, v224, v225, v413, v435, v450[0]);
            v234 = SkipBits(v226, v227, v228, v229, v230, v231, v232, v233);
            v242 = OUTLINED_FUNCTION_14_7(v234, v235, v236, v237, v238, v239, v240, v241, v423, v441);
            OUTLINED_FUNCTION_22_5(v242, v243, v244, v245, v246, v247, v248, v249, v424, v442);
            GetBits(v450, 5, v250, v251, v252, v253, v254, v255);
            AdvanceToNextStartCode(v450, v256, v257, v258, v259, v260, v261, v262);
            v263 = v38 << 16;
            if (v451 >= v452 || (OUTLINED_FUNCTION_3_20(), v265 < 9))
            {
              LOWORD(v302) = v38;
              v303 = Bits;
LABEL_120:
              if (Bits << 16 == v303 << 16 && Bits << 16 == 47185920 && v38 == v302)
              {
                switch(v263)
                {
                  case 31457280:
                    goto LABEL_134;
                  case 37748736:
                    if (v47 == 2)
                    {
                      v120 = 59;
                      v121 = 54;
                      goto LABEL_54;
                    }

                    if (v47 == 3)
                    {
                      v120 = 118;
                      v121 = 81;
                      goto LABEL_54;
                    }

                    break;
                  case 31850496:
LABEL_134:
                    if (v47 == 2)
                    {
                      v120 = 10;
                      v121 = 11;
                      goto LABEL_54;
                    }

                    if (v47 == 3)
                    {
                      v120 = 40;
                      v121 = 33;
                      goto LABEL_54;
                    }

                    break;
                }
              }

              if ((v47 - 2) > 2u)
              {
                v411 = 0;
                v412 = 0;
              }

              else
              {
                v411 = dword_197165F5C[(v47 - 2)];
                v412 = dword_197165F68[(v47 - 2)];
              }

              v120 = v412 * v302;
              v121 = v411 * v303;
              goto LABEL_54;
            }

            HIDWORD(v425) = v263;
            v266 = GetBits(v450, 32, v264, v110, v111, v112, v113, v114);
            if (v266 != 437 || OUTLINED_FUNCTION_21_6(v266, v267, v268, v110, v111, v112, v113, v114, v425, v443) != 2)
            {
              LOWORD(v302) = v38;
              v303 = Bits;
LABEL_119:
              v263 = HIDWORD(v425);
              goto LABEL_120;
            }

            v270 = GetBits(v450, 3, v269, v110, v111, v112, v113, v114);
            v278 = OUTLINED_FUNCTION_14_7(v270, v271, v272, v273, v274, v275, v276, v277, v425, v444);
            if (!v278)
            {
              goto LABEL_103;
            }

            v286 = OUTLINED_FUNCTION_15_8(v278, v279, v280, v281, v282, v283, v284, v285, v425, v445, v450[0]);
            v294 = GetBits(v286, v287, v288, v289, v290, v291, v292, v293);
            if (v294 == 6)
            {
              v295 = *v116;
              v296 = *v117;
            }

            else
            {
              if (v294 != 1)
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v310 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "(Fig)", 0x95A, v446, v319, v320, v426);
LABEL_89:
                v321 = OUTLINED_FUNCTION_15_8(v310, v311, v312, v313, v314, v315, v316, v317, v426, v446, v450[0]);
                v329 = GetBits(v321, v322, v323, v324, v325, v326, v327, v328);
                if (v329 == 7)
                {
                  v330 = *MEMORY[0x1E6965F30];
                  v331 = MEMORY[0x1E6965F68];
                }

                else
                {
                  if (v329 != 1)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_4_15();
                    v336 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v332, 0xFFFFCE56uLL, "(Fig)", 0x966, v333, v334, v335, v427);
LABEL_95:
                    v344 = OUTLINED_FUNCTION_15_8(v336, v337, v338, v339, v340, v341, v342, v343, v427, v447, v450[0]);
                    v352 = GetBits(v344, v345, v346, v347, v348, v349, v350, v351);
                    switch(v352)
                    {
                      case 7:
                        v353 = *MEMORY[0x1E6965F98];
                        v354 = MEMORY[0x1E6965FF0];
                        goto LABEL_101;
                      case 6:
                        v353 = *MEMORY[0x1E6965F98];
                        v354 = MEMORY[0x1E6965FC8];
                        goto LABEL_101;
                      case 1:
                        v353 = *MEMORY[0x1E6965F98];
                        v354 = MEMORY[0x1E6965FD0];
LABEL_101:
                        CFDictionarySetValue(v115, v353, *v354);
                        goto LABEL_103;
                    }

                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_4_15();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v355, 0xFFFFCE56uLL, "(Fig)", 0x975, v356, v357, v358, v425);
LABEL_103:
                    if (v451 >= v452 || (OUTLINED_FUNCTION_3_20(), v361 < 4))
                    {
                      LOWORD(v302) = v38;
                      v303 = Bits;
LABEL_118:
                      GetBits(v450, BYTE12(v452) & 7, v280, v281, v282, v283, v284, v285);
                      AdvanceToNextStartCode(v450, v402, v403, v404, v405, v406, v407, v408);
                      goto LABEL_119;
                    }

                    v362 = OUTLINED_FUNCTION_23_5(v359, v360, v280, v281, v282, v283, v284, v285, v425, v445);
                    v303 = Bits;
                    if (v362 < Bits)
                    {
                      v362 = OUTLINED_FUNCTION_23_5(v362, v363, v364, v365, v366, v367, v368, v369, v428, v448);
                      v303 = v362;
                    }

                    v370 = OUTLINED_FUNCTION_14_7(v362, v363, v364, v365, v366, v367, v368, v369, v428, v448);
                    if (v370 == 1)
                    {
                      LODWORD(v435) = Bits;
                      v378 = OUTLINED_FUNCTION_23_5(v370, v371, v372, v373, v374, v375, v376, v377, v413, v435);
                      v302 = v38;
                      if (v378 < v38)
                      {
                        v302 = OUTLINED_FUNCTION_23_5(v378, v379, v280, v281, v282, v283, v284, v285, v425, v449);
                      }

                      if (v303 < v449 || v302 << 16 < SHIDWORD(v425))
                      {
                        v381 = CFDictionaryCreateMutable(v106, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        FigCFDictionarySetInt32(v381, *MEMORY[0x1E6965D80], v303, v382, v383, v384, v385, v386);
                        FigCFDictionarySetInt32(v381, *MEMORY[0x1E6965D60], v302, v387, v388, v389, v390, v391);
                        FigCFDictionarySetInt32(v381, *MEMORY[0x1E6965D68], 0, v392, v393, v394, v395, v396);
                        FigCFDictionarySetInt32(v381, *MEMORY[0x1E6965D78], 0, v397, v398, v399, v400, v401);
                        FigCFDictionarySetValue(v115, *MEMORY[0x1E6965D70], v381);
                        if (v381)
                        {
                          CFRelease(v381);
                        }
                      }

                      goto LABEL_118;
                    }

                    v297 = 2429;
LABEL_76:
                    v298 = fig_log_get_emitter("com.apple.coremedia", "");
                    v138 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v298, 0xFFFFCE56uLL, "(Fig)", v297, v435, v299, v300, v413);
                    goto LABEL_77;
                  }

                  v330 = *MEMORY[0x1E6965F30];
                  v331 = MEMORY[0x1E6965F50];
                }

                CFDictionarySetValue(v115, v330, *v331);
                goto LABEL_95;
              }

              v295 = *v116;
              v296 = *MEMORY[0x1E6965DB8];
            }

            CFDictionarySetValue(v115, v295, v296);
            goto LABEL_89;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_4_15();
          v308 = 4294954510;
          v309 = 2262;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_4_15();
          v308 = 4294954582;
          v309 = 2246;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_4_15();
        v308 = 4294954582;
        v309 = 2235;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v304, v308, "(Fig)", v309, v305, v306, v307, v413);
    }

    return Word;
  }

  if (a2 > 0x15)
  {
    goto LABEL_5;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_4_15();
  v16 = 2224;
LABEL_143:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE56uLL, "(Fig)", v16, v13, v14, v15, a9);
}

size_t FigMP4BridgeCreateRFC6381CodecString(OpaqueCMBlockBuffer *a1, unsigned int a2, unsigned int a3, int a4, __CFString **a5)
{
  memset(v519, 0, 112);
  v518 = 0;
  v517 = 0;
  memset(v516, 0, sizeof(v516));
  v515 = 0;
  v514 = 0;
  dataPointerOut = 0;
  if (_MergedGlobals_31 != -1)
  {
    dispatch_once_f(&_MergedGlobals_31, 0, FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381);
  }

  v512 = 0;
  v513 = 0;
  v11 = qword_1ED4CC968;
  *a5 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithBBuf(a1, 0, 1, v519);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(v519, &v518, &v517);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  v13 = v518;
  v14 = v518 == 1633777252 || v518 == 1701733217;
  if (v14 || v518 == 1685220723)
  {
    if (a3 != 1633771875)
    {
      v16 = 1633889587;
      if (a3 == 1633889587)
      {
        goto LABEL_60;
      }

      if (a3 == 1634754915)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_16_7();
      if (v14)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_16_7();
      if (!v14)
      {
        OUTLINED_FUNCTION_16_7();
        if (v14)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_16_7();
        if (v14 || a3 == 1667326832)
        {
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_16_7();
        if (v14)
        {
          goto LABEL_61;
        }

        if (a3 == 1667575091)
        {
          goto LABEL_82;
        }

        if (a3 != 1668641633)
        {
          if (a3 == 1700998451)
          {
            goto LABEL_82;
          }

          if (a3 != 1885430115)
          {
            switch(a3)
            {
              case 0x70616333u:
                goto LABEL_60;
              case 0x70616368u:
              case 0x70616370u:
                goto LABEL_59;
              case 0x70656333u:
                goto LABEL_82;
              case 0x70757361u:
              case 0x71616163u:
                goto LABEL_59;
              case 0x71616333u:
LABEL_60:
                v518 = v16;
                v13 = 1633889587;
                goto LABEL_84;
              case 0x71616368u:
              case 0x71616370u:
                goto LABEL_59;
            }

            if (a3 != 1902211171)
            {
              if (a3 == 1902469939)
              {
                goto LABEL_82;
              }

              if (a3 == 1903522657 || a3 == 1970495843 || a3 == 2053202275)
              {
                goto LABEL_59;
              }

              if (a3 != 2053202739)
              {
                if (a3 == 2053202792 || a3 == 2054517601)
                {
                  goto LABEL_59;
                }

                if (a3 != 2053464883)
                {
                  switch(a3)
                  {
                    case 0x7A616370u:
                      goto LABEL_59;
                    case 0x61632D34u:
                      v13 = 1633889588;
                      goto LABEL_83;
                    case 0x616C6163u:
                      goto LABEL_79;
                  }

                  if (a3 != 1667574579)
                  {
                    if (a3 == 1667656803)
                    {
                      goto LABEL_80;
                    }

                    if (a3 == 1668047203)
                    {
                      goto LABEL_79;
                    }

                    if (a3 != 1700997939)
                    {
                      if (a3 == 1718378851)
                      {
                        goto LABEL_80;
                      }

                      if (a3 != 1885547315 && a3 != 1902324531)
                      {
                        if (a3 != 1902537827)
                        {
                          if (a3 != 1902928227 && a3 != 2053923171)
                          {
                            if (a3 != 2053319475)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_82;
                          }

LABEL_79:
                          v518 = 1634492771;
                          v13 = 1634492771;
                          goto LABEL_84;
                        }

LABEL_80:
                        v13 = 1716281667;
                        goto LABEL_83;
                      }
                    }
                  }
                }

LABEL_82:
                v13 = 1700998451;
                goto LABEL_83;
              }

              goto LABEL_60;
            }

LABEL_61:
            v13 = 1634754915;
            goto LABEL_83;
          }
        }
      }
    }

LABEL_59:
    v13 = 1836069985;
LABEL_83:
    v518 = v13;
  }

LABEL_84:
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue(v13);
  if (!CFStringForOSTypeValue)
  {
    return 4294954580;
  }

  v27 = CFRetain(CFStringForOSTypeValue);
  if (!v27)
  {
    return 4294954580;
  }

  v28 = v27;
  if (v11 && (v532.length = CFStringGetLength(v27), v532.location = 0, CFStringFindCharacterFromSet(v28, v11, v532, 0, 0)))
  {
    v507 = __PAIR64__(a3, a2);
    v508 = v5;
    v509 = a5;
    if (a4)
    {
      Mutable = v28;
      v39 = 4294954579;
      goto LABEL_292;
    }

    LODWORD(v526) = bswap32(v518);
    v29 = a1;
    v30 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v30, 12);
    for (i = 0; i != 4; ++i)
    {
      v33 = *(&v526 + i);
      IsCharacterMember = CFCharacterSetIsCharacterMember(v11, *(&v526 + i));
      v35 = CFGetAllocator(v29);
      if (IsCharacterMember)
      {
        v36 = CFStringCreateWithFormat(v35, 0, @"%%%x", v33);
      }

      else
      {
        v36 = CFStringCreateWithFormat(v35, 0, @"%c", v33);
      }

      if (v36)
      {
        v37 = v36;
        CFStringAppend(Mutable, v36);
        CFRelease(v37);
      }
    }

    a5 = v509;
    if (Mutable)
    {
      CFRetain(Mutable);
      CFRelease(v28);
      v28 = Mutable;
    }

    a1 = v29;
    CFRelease(v28);
  }

  else
  {
    Mutable = v28;
  }

  v38 = v518 - 1835557169 >= 2 && v518 - 1835560241 >= 2;
  if (v38)
  {
    v40 = 1702061171;
    if (v518 != 1836070006)
    {
      if (v518 == 1767992678)
      {
        v40 = 1767990114;
      }

      else if (v518 != 1836069985)
      {
        if (v518 != 1633889588)
        {
LABEL_287:
          if (Mutable)
          {
            v490 = CFRetain(Mutable);
          }

          else
          {
            v490 = 0;
          }

          v39 = 0;
          *a5 = v490;
          goto LABEL_291;
        }

        v40 = 1684103988;
      }
    }
  }

  else
  {
    v40 = 1835557187;
  }

  if (a2 == 1936684398)
  {
    v41 = 28;
  }

  else
  {
    if (a2 != 1986618469)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      CurrentAtomGlobalOffset = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 0xFFFFCE56uLL, "(Fig)", 0x4FD, v50, v51, v52, v501);
      goto LABEL_137;
    }

    v41 = 78;
  }

  if (v517 <= v41 + 8)
  {
    goto LABEL_295;
  }

  CurrentAtomGlobalOffset = FigAtomStreamInitWithParent(v519, v41, v516);
  if (CurrentAtomGlobalOffset)
  {
    goto LABEL_137;
  }

  while (v515 != v40)
  {
    CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomTypeAndDataLength(v516, &v515, &v514);
    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_137;
    }
  }

  CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset(v516, &v513, &v512);
  if (CurrentAtomGlobalOffset)
  {
    goto LABEL_137;
  }

  if (v512 < v514 || (v43 = v513 + v512, v43 > CMBlockBufferGetDataLength(a1)))
  {
LABEL_295:
    v39 = 4294954580;
    goto LABEL_291;
  }

  CurrentAtomGlobalOffset = CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut);
  if (CurrentAtomGlobalOffset)
  {
LABEL_137:
    v39 = CurrentAtomGlobalOffset;
    goto LABEL_291;
  }

  v44 = v514;
  v45 = v512 - v514 + v513;
  v46 = MEMORY[0x1E695E480];
  switch(v40)
  {
    case 1684103988:
      OUTLINED_FUNCTION_7_14(v45, v501, v503, v505, v506, v507, v508, v509, dataPointerOut);
      v529 = v111;
      *&v530 = &v111[v44];
      if (CopyNextWord(&v526))
      {
        goto LABEL_314;
      }

      Bits = GetBits(&v526, 3, v112, v113, v114, v115, v116, v117);
      if (Bits >= 2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v460 = 723;
      }

      else
      {
        v125 = GetBits(&v526, 7, v118, v119, v120, v121, v122, v123);
        v126 = OUTLINED_FUNCTION_18_6();
        SkipBits(v126, v127, v128, v129, v130, v131, v132, v133);
        v140 = GetBits(&v526, 9, v134, v135, v136, v137, v138, v139);
        v147 = v140;
        if (Bits)
        {
          if ((v125 & 0xFE) != 0)
          {
            v148 = OUTLINED_FUNCTION_9_13();
            if (GetBits(v148, v149, v150, v151, v152, v153, v154, v155) == 1)
            {
              v156 = OUTLINED_FUNCTION_17_6();
              SkipBits(v156, v157, v158, v159, v160, v161, v162, v163);
              v164 = OUTLINED_FUNCTION_9_13();
              if (GetBits(v164, v165, v166, v167, v168, v169, v170, v171) == 1)
              {
                v172 = 0;
                do
                {
                  v173 = OUTLINED_FUNCTION_6_16();
                  SkipBits(v173, v174, v175, v176, v177, v178, v179, v180);
                  v38 = v172++ >= 0xF;
                }

                while (!v38);
              }
            }
          }

          SkipBits(&v526, 2u, v141, v142, v143, v144, v145, v146);
          v181 = OUTLINED_FUNCTION_13_7();
          SkipBits(v181, v182, v183, v184, v185, v186, v187, v188);
          v189 = OUTLINED_FUNCTION_13_7();
          v197 = SkipBits(v189, v190, v191, v192, v193, v194, v195, v196);
          OUTLINED_FUNCTION_11_8(v197, v198, v199, v200, v201, v202, v203, v204);
          v205 = v147;
          if (v147)
          {
            v510 = a5;
            v206 = 0;
            while (1)
            {
              v207 = OUTLINED_FUNCTION_6_16();
              v215 = GetBits(v207, v208, v209, v210, v211, v212, v213, v214);
              v216 = v215;
              if (v215 >= 3u)
              {
                break;
              }

              v217 = v215;
              v218 = OUTLINED_FUNCTION_6_16();
              v226 = GetBits(v218, v219, v220, v221, v222, v223, v224, v225);
              if (v226 == 255)
              {
                v227 = OUTLINED_FUNCTION_17_6();
                v226 = GetBits(v227, v228, v229, v230, v231, v232, v233, v234) + 255;
              }

              v235 = OUTLINED_FUNCTION_18_6();
              if (GetBits(v235, v236, v237, v238, v239, v240, v241, v242) != 6)
              {
                a5 = v510;
                v46 = MEMORY[0x1E695E480];
                goto LABEL_254;
              }

              v249 = GetBits(&v526, 7, v243, v244, v245, v246, v247, v248);
              v257 = v249;
              if (v249)
              {
                do
                {
                  v249 = SkipBits(&v526, 0xFu, v251, v252, v253, v254, v255, v256);
                  --v257;
                }

                while (v257);
              }

              if (v216)
              {
                if (v216 == 1)
                {
                  OUTLINED_FUNCTION_12_9();
                  if (v38)
                  {
                    v260 = 0;
                  }

                  else
                  {
                    v260 = BYTE12(v530) & 7 | (8 * (v259 - (v531 + v258) + (HIDWORD(v530) >> 3)));
                  }

                  v261 = OUTLINED_FUNCTION_9_13();
                  if (GetBits(v261, v262, v263, v264, v265, v266, v267, v268) == 1)
                  {
                    SkipBits(&v526, 2u, v269, v270, v271, v272, v273, v274);
                    v275 = OUTLINED_FUNCTION_13_7();
                    SkipBits(v275, v276, v277, v278, v279, v280, v281, v282);
                    v283 = OUTLINED_FUNCTION_13_7();
                    SkipBits(v283, v284, v285, v286, v287, v288, v289, v290);
                  }

                  v291 = OUTLINED_FUNCTION_9_13();
                  v299 = GetBits(v291, v292, v293, v294, v295, v296, v297, v298);
                  if (v299 == 1)
                  {
                    OUTLINED_FUNCTION_11_8(v299, v300, v301, v302, v303, v304, v305, v306);
                    v307 = OUTLINED_FUNCTION_17_6();
                    v315 = GetBits(v307, v308, v309, v310, v311, v312, v313, v314);
                    if (v315)
                    {
                      LOWORD(v316) = v315;
                      do
                      {
                        v317 = OUTLINED_FUNCTION_6_16();
                        SkipBits(v317, v318, v319, v320, v321, v322, v323, v324);
                        v316 = v316 + 1;
                      }

                      while ((v316 & 0x10000) == 0);
                    }

                    v325 = OUTLINED_FUNCTION_18_6();
                    v299 = GetBits(v325, v326, v327, v328, v329, v330, v331, v332);
                    v333 = v299;
                    if (v299)
                    {
                      do
                      {
                        v299 = SkipBits(&v526, 0xBu, v301, v302, v303, v304, v305, v306);
                        --v333;
                      }

                      while (v333);
                    }
                  }

                  OUTLINED_FUNCTION_11_8(v299, v300, v301, v302, v303, v304, v305, v306);
                  if (v529 >= v530)
                  {
                    v340 = 0;
                  }

                  else
                  {
                    v340 = BYTE12(v530) & 7 | (8 * (v530 - &v529[v531] + (HIDWORD(v530) >> 3)));
                  }

                  if (v260 - v340 <= (8 * v226 - 8))
                  {
                    SkipBits(&v526, 6u, v334, v335, v336, v337, v338, v339);
                    v341 = OUTLINED_FUNCTION_9_13();
                    if (GetBits(v341, v342, v343, v344, v345, v346, v347, v348) == 1)
                    {
                      v355 = &v526;
                      v356 = 9;
                    }

                    else
                    {
                      v355 = OUTLINED_FUNCTION_9_13();
                    }

                    SkipBits(v355, v356, v349, v350, v351, v352, v353, v354);
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_11_8(v249, v250, v251, v252, v253, v254, v255, v256);
              }

              if (++v206 == v205)
              {
                v357 = 0;
                a5 = v510;
                goto LABEL_240;
              }
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v492, 0xFFFFCE54uLL, "(Fig)", 0x2FB, v493, v494, v495, v501);
            v88 = 0;
            a5 = v510;
            v46 = MEMORY[0x1E695E480];
LABEL_283:
            if (v88)
            {
              MutableCopy = CFStringCreateMutableCopy(*v46, 0, Mutable);
              if (MutableCopy)
              {
                v489 = MutableCopy;
                CFStringAppendFormat(MutableCopy, 0, @".%@", v88);
                v39 = 0;
                *a5 = v489;
              }

              else
              {
                v39 = 4294954583;
              }

              goto LABEL_286;
            }

            goto LABEL_287;
          }

          v357 = 0;
          v217 = 0;
LABEL_240:
          v46 = MEMORY[0x1E695E480];
LABEL_259:
          v88 = CFStringCreateWithFormat(*v46, 0, @"%02X.%02X.%02X", v125, v217, v357);
          goto LABEL_283;
        }

        if (!v140)
        {
          v357 = 0;
          v217 = 0;
          goto LABEL_259;
        }

        v428 = OUTLINED_FUNCTION_9_13();
        v436 = GetBits(v428, v429, v430, v431, v432, v433, v434, v435);
        v437 = OUTLINED_FUNCTION_18_6();
        v445 = GetBits(v437, v438, v439, v440, v441, v442, v443, v444);
        v446 = OUTLINED_FUNCTION_18_6();
        v454 = GetBits(v446, v447, v448, v449, v450, v451, v452, v453);
        if (v454 >= 3u)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v460 = 734;
        }

        else
        {
          v217 = v454;
          if (v436 == 1 || v445 != 6)
          {
LABEL_254:
            v357 = GetBits(&v526, 3, v243, v244, v245, v246, v247, v248);
            goto LABEL_259;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v460 = 736;
        }
      }

LABEL_313:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v456, 0xFFFFCE54uLL, "(Fig)", v460, v457, v458, v459, v501);
      goto LABEL_314;
    case 1835557187:
      if (v514 <= 4)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v500 = 1101;
      }

      else
      {
        OUTLINED_FUNCTION_7_14(v45, v501, v503, v505, v506, v507, v508, v509, dataPointerOut);
        v529 = v53;
        *&v530 = &v53[v44];
        Word = CopyNextWord(&v526);
        if (Word)
        {
          goto LABEL_306;
        }

        v55 = OUTLINED_FUNCTION_6_16();
        if (GetBits(v55, v56, v57, v58, v59, v60, v61, v62) == 1)
        {
          v63 = OUTLINED_FUNCTION_6_16();
          v71 = GetBits(v63, v64, v65, v66, v67, v68, v69, v70);
          v72 = OUTLINED_FUNCTION_6_16();
          SkipBits(v72, v73, v74, v75, v76, v77, v78, v79);
          v80 = OUTLINED_FUNCTION_17_6();
          if (v44 >= GetBits(v80, v81, v82, v83, v84, v85, v86, v87) + 5)
          {
            v88 = CFStringCreateWithFormat(*v46, 0, @"%02X", v71);
            goto LABEL_283;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v500 = 1113;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v500 = 1107;
        }
      }

      Word = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v496, 0xFFFFCE54uLL, "(Fig)", v500, v497, v498, v499, v501);
LABEL_306:
      v39 = Word;
      v88 = 0;
      if (!Word)
      {
        goto LABEL_283;
      }

      goto LABEL_307;
    case 1767990114:
      v89 = &dataPointerOut[v45];
      v531 = 0;
      v530 = 0u;
      v528 = 0;
      v525 = 0;
      v526 = &dataPointerOut[v45];
      v527 = v514;
      v529 = &dataPointerOut[v45];
      *&v530 = &dataPointerOut[v45 + v514];
      if (!CopyNextWord(&v526))
      {
        v90 = OUTLINED_FUNCTION_6_16();
        if (GetBits(v90, v91, v92, v93, v94, v95, v96, v97) == 1)
        {
          UnpackLEB128(&v526, &v525, v98, v99, v100, v101, v102, v103);
          OUTLINED_FUNCTION_12_9();
          if (v38)
          {
            v110 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_3_20();
          }

          if (v110 < v104)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            v460 = 979;
          }

          else
          {
            v524 = 0;
            UnpackOBUHeader(&v526, &v524, &v525 + 1, v105, v106, v107, v108, v109);
            if (v524 == 31)
            {
              OUTLINED_FUNCTION_12_9();
              if (v38)
              {
                v358 = 0;
              }

              else
              {
                OUTLINED_FUNCTION_3_20();
              }

              if (v358 < HIDWORD(v525))
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v460 = 985;
              }

              else if (HIDWORD(v525) <= 5)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v460 = 987;
              }

              else
              {
                v359 = OUTLINED_FUNCTION_13_7();
                if (GetBits(v359, v360, v361, v362, v363, v364, v365, v366) == 1767992678)
                {
                  v367 = OUTLINED_FUNCTION_6_16();
                  v375 = GetBits(v367, v368, v369, v370, v371, v372, v373, v374);
                  v376 = OUTLINED_FUNCTION_6_16();
                  v384 = GetBits(v376, v377, v378, v379, v380, v381, v382, v383);
                  v385 = *v46;
                  v502 = v375;
                  v504 = v384;
                  v392 = CFStringCreateWithFormat(*v46, 0, @"%03d.%03d.");
                  if (HIDWORD(v525) >= 7)
                  {
                    if ((HIDWORD(v525) - 6) >> 29)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_27_2();
                      v484 = 4294954580;
                      v485 = 997;
                      goto LABEL_252;
                    }

                    SkipBits(&v526, 8 * (HIDWORD(v525) - 6), v386, v387, v388, v389, v390, v391);
                  }

                  UnpackOBUHeader(&v526, &v524, &v525 + 1, v387, v388, v389, v390, v391);
                  if (v524)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_27_2();
                    v484 = 4294954580;
                    v485 = 1002;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_9();
                    if (v38)
                    {
                      v399 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3_20();
                    }

                    if (v399 < HIDWORD(v525))
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_27_2();
                      v484 = 4294954580;
                      v485 = 1004;
                    }

                    else
                    {
                      UnpackLEB128(&v526, &v525, v393, v394, v395, v396, v397, v398);
                      if (HIDWORD(v525) >= v525)
                      {
                        v400 = HIDWORD(v525) - v525;
                      }

                      else
                      {
                        v400 = 0;
                      }

                      if (v400 <= 3)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_27_2();
                        v484 = 4294954580;
                        v485 = 1012;
                      }

                      else
                      {
                        v401 = OUTLINED_FUNCTION_13_7();
                        v409 = GetBits(v401, v402, v403, v404, v405, v406, v407, v408);
                        v410 = v400 - 4;
                        UnpackLEB128(&v526, &v525, v411, v412, v413, v414, v415, v416);
                        if (v410 >= v525)
                        {
                          v417 = v410 - v525;
                        }

                        else
                        {
                          v417 = 0;
                        }

                        if (v417 <= 1)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_27_2();
                          v484 = 4294954580;
                          v485 = 1019;
                        }

                        else
                        {
                          v418 = OUTLINED_FUNCTION_17_6();
                          GetBits(v418, v419, v420, v421, v422, v423, v424, v425);
                          v426 = v417 - 2;
                          switch(v409)
                          {
                            case 1836069985:
                              if (v426 <= 0xD)
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_27_2();
                                v484 = 4294954580;
                                v485 = 1043;
                              }

                              else
                              {
                                v468 = 0;
                                v523 = 0;
                                v521 = 0;
                                v522 = 0;
                                OUTLINED_FUNCTION_12_9();
                                if (!v38)
                                {
                                  v468 = v474 - (v531 + v473) + (HIDWORD(v530) >> 3);
                                }

                                if (MP4Brige_ParseDecoderConfigDescriptor(&v526, &v523, &v522, &v521, v469, v470, v471, v472))
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_27_2();
                                  v484 = 4294954582;
                                  v485 = 1050;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_12_9();
                                  if (v38)
                                  {
                                    v479 = 0;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_3_20();
                                  }

                                  v487 = v468 - v479;
                                  if (v487 > v426)
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_27_2();
                                    v484 = 4294954580;
                                    v485 = 1055;
                                  }

                                  else if (v523 == 64)
                                  {
                                    if (v521 > v426 - v487)
                                    {
                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_27_2();
                                      v484 = 4294954580;
                                      v485 = 1060;
                                    }

                                    else
                                    {
                                      v520 = 0;
                                      if (!MP4Bridge_ParseMPEG4AudioSpecificConfig(&v89[v522], v521, &v520, 0, v475, v476, v477, v478, v502))
                                      {
                                        v427 = CFStringCreateWithFormat(v385, 0, @"%@mp4a.40.%u", v392, v520);
                                        goto LABEL_266;
                                      }

                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_27_2();
                                      v484 = 4294954582;
                                      v485 = 1065;
                                    }
                                  }

                                  else
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_27_2();
                                    v484 = 4294954582;
                                    v485 = 1057;
                                  }
                                }
                              }

                              break;
                            case 1716281667:
                              if (v426 > 0x25)
                              {
                                v427 = CFStringCreateWithFormat(v385, 0, @"%@fLaC", v392, v504);
                                goto LABEL_266;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v484 = 4294954580;
                              v485 = 1031;
                              break;
                            case 1768973165:
                              if (v426 > 5)
                              {
                                v427 = CFStringCreateWithFormat(v385, 0, @"%@ipcm", v392, v504);
                                goto LABEL_266;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v484 = 4294954580;
                              v485 = 1036;
                              break;
                            case 1332770163:
                              if (v426 > 0xA)
                              {
                                v427 = CFStringCreateWithFormat(v385, 0, @"%@Opus", v392, v504);
LABEL_266:
                                v88 = v427;
LABEL_267:
                                if (v392)
                                {
                                  CFRelease(v392);
                                }

                                goto LABEL_283;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v484 = 4294954580;
                              v485 = 1026;
                              break;
                            default:
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v484 = 4294954580;
                              v485 = 1073;
                              break;
                          }
                        }
                      }
                    }
                  }

LABEL_252:
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v480, v484, "(Fig)", v485, v481, v482, v483, v502);
                  v88 = 0;
                  goto LABEL_267;
                }

                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v460 = 989;
              }
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v460 = 983;
            }
          }
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v460 = 976;
        }

        goto LABEL_313;
      }

LABEL_314:
      v88 = 0;
      goto LABEL_283;
  }

  v526 = 0;
  LOBYTE(v521) = 0;
  LOWORD(v522) = 0;
  if (a3 == 1633772320 || a3 == 1633772392 || a3 == 1633772400)
  {
    v461 = &v526;
  }

  else
  {
    v461 = 0;
  }

  if (FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(&dataPointerOut[v45], v514, &v521, &v522, v461))
  {
    v88 = 0;
  }

  else
  {
    v462 = v522;
    if (v521 == 64)
    {
      if (!v522 || (v522 != 29 ? (v463 = v522 == 5) : (v463 = 1), v463))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v464, 0xFFFFCE54uLL, "(Fig)", 0x2A3, v465, v466, v467, v501);
        v88 = 0;
        if (v39)
        {
          goto LABEL_280;
        }

        goto LABEL_279;
      }

      if (v522 == 2)
      {
        if (FigCFDictionaryGetBooleanValue(v526))
        {
          LOWORD(v522) = 5;
        }

        if (FigCFDictionaryGetBooleanValue(v526))
        {
          v462 = 29;
          LOWORD(v522) = 29;
        }

        else
        {
          v462 = v522;
        }
      }

      v486 = CFStringCreateWithFormat(*v46, 0, @"40.%u", v462);
    }

    else if ((v521 & 0xFD) == 0x69 && v522)
    {
      v486 = CFStringCreateWithFormat(*v46, 0, @"%X.%u", v521, v522);
    }

    else
    {
      v486 = CFStringCreateWithFormat(*v46, 0, @"%X", v521);
    }

    v88 = v486;
  }

LABEL_279:
  v39 = 0;
LABEL_280:
  if (v526)
  {
    CFRelease(v526);
  }

  if (!v39)
  {
    goto LABEL_283;
  }

LABEL_307:
  if (v88)
  {
LABEL_286:
    CFRelease(v88);
  }

LABEL_291:
  if (Mutable)
  {
LABEL_292:
    CFRelease(Mutable);
  }

  return v39;
}

uint64_t AdvanceToNextStartCode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = a1; ; a1 = i)
  {
    result = PeekBits(a1, 24, a3, a4, a5, a6, a7, a8);
    if (result == 1)
    {
      break;
    }

    v16 = *(i + 16);
    v17 = *(i + 24);
    if (v16 >= v17 || v17 - v16 <= 4 && !*(i + 36))
    {
      break;
    }

    GetBits(i, 8, v10, v11, v12, v13, v14, v15);
  }

  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x205, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x222, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "(Fig)", 0xC1C, v1, v2, v3, v5);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBF4, v1, v2, v3, v5);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBEE, v1, v2, v3, v5);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_10()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBEC, v1, v2, v3, v5);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_11()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBE3, v1, v2, v3, v5);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0xBC0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0xBCB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x54C, v3, v4, v5, v8);
  *a1 = v6;
  return v6 == 0;
}

size_t GetBits_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "(Fig)", 0x102, v10, v11, v12, a9);
}

size_t GetBERInteger_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "(Fig)", 0x1AC, v10, v11, v12, a9);
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1C4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1D1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1CE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1CB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1C9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t MP4Bridge_ParseProgramConfigElement_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x9EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t ntcxpc_SetEventHandler(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    if (a3)
    {
      a3 = _Block_copy(a3);
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      _Block_release(v6);
    }

    *(v5 + 8) = a3;
  }

  return 0;
}

size_t ntcxpc_EnqueuePackageWithPriority(uint64_t a1, unsigned int *a2, CMBlockBufferRef theBuffer, int a4)
{
  xdict = 0;
  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 16))
  {
    v12 = 0;
    v11 = 0;
  }

  else if (DataLength >= *a2)
  {
    v12 = 0;
    v11 = 4294954516;
  }

  else
  {
    v10 = DerivedStorage;
    v11 = FigXPCCreateBasicMessage(0x656E7175u, 0, &xdict);
    v12 = xdict;
    if (!v11)
    {
      xpc_dictionary_set_data(xdict, "enqueuePkgHeader", a2, *a2 - DataLength);
      v11 = FigXPCMessageSetBlockBuffer(xdict, "enqueuePackage", theBuffer);
      v12 = xdict;
      if (!v11)
      {
        xpc_dictionary_set_int64(xdict, "enqueuePriority", a4);
        v11 = FigXPCRemoteClientSendSyncMessage(*v10, xdict);
        v12 = xdict;
      }
    }
  }

  FigXPCRelease(v12);
  return v11;
}

uint64_t ntcxpc_FlushPendingPackagesWithPriority(uint64_t a1, int a2)
{
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = DerivedStorage;
    v5 = FigXPCCreateBasicMessage(0x666C7368u, 0, &xdict);
    v6 = xdict;
    if (!v5)
    {
      xpc_dictionary_set_int64(xdict, "flushPendingPackage", a2);
      v5 = FigXPCRemoteClientSendSyncMessage(*v4, xdict);
      v6 = xdict;
    }
  }

  FigXPCRelease(v6);
  return v5;
}

void ntcxpc_handleServerMessage_cold_2(void *a1, CMBlockBufferRef *a2, uint64_t a3)
{
  int64 = xpc_dictionary_get_int64(a1, kNeroTransportConnectionEventHandler_Type);
  if (!FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], a1, kNeroTransportConnectionEventHandler_BBuf, a2))
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      (*(v7 + 16))(v7, int64, *a2);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

size_t FigMetricEventTimelineCreateRemote(uint64_t a1, int64_t a2, uint64_t *a3, uint64_t a4, CFTypeRef *a5)
{
  v34 = 0;
  xdict = 0;
  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFB406uLL, "metricevent", 0x16F, v25, v26, v27, v34, xdict);
LABEL_15:
    v22 = v8;
    v9 = 0;
    goto LABEL_13;
  }

  v8 = metremote_ensureClientEstablished();
  if (v8)
  {
    goto LABEL_15;
  }

  v8 = FigXPCCreateBasicMessage(0x63726574u, 0, &xdict);
  if (v8)
  {
    goto LABEL_15;
  }

  xpc_dictionary_set_int64(xdict, "MaxNoOfClasses", a2);
  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (a2 >= 1)
    {
      v10 = a3;
      v11 = a2;
      do
      {
        v12 = *v10++;
        xpc_array_set_int64(v9, 0xFFFFFFFFFFFFFFFFLL, v12);
        --v11;
      }

      while (v11);
    }

    xpc_dictionary_set_value(xdict, "EventCountByClassXPCArray", v9);
    v13 = FigXPCRemoteClientSendSyncMessageCreatingReply(gFigMetricEventTimelineRemoteClient, xdict, &v34);
    if (v13)
    {
      goto LABEL_12;
    }

    uint64 = xpc_dictionary_get_uint64(v34, ".objectID");
    if (uint64)
    {
      v15 = uint64;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v13 = metremote_create(AllocatorForMedia, v15, a2, a3, a5);
      if (!v13)
      {
        v13 = FigXPCRemoteClientAssociateObject(gFigMetricEventTimelineRemoteClient, *a5, v15, v17, v18, v19, v20, v21, v34);
      }

      goto LABEL_12;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 4294947844;
    v33 = 389;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 4294947845;
    v33 = 378;
  }

  v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v32, "metricevent", v33, v29, v30, v31, v34);
LABEL_12:
  v22 = v13;
LABEL_13:
  FigXPCRelease(v9);
  FigXPCRelease(xdict);
  FigXPCRelease(v34);
  return v22;
}

uint64_t FigMetricEventTimelineCreateRemoteWithObjectID(uint64_t a1, CMBlockBufferRef *a2, uint64_t a3, uint64_t *a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  cf = 0;
  if (a5)
  {
    v14 = metremote_ensureClientEstablished();
    if (v14)
    {
      return v14;
    }

    v15 = FigXPCRemoteClientRetainCopiedObject(gFigMetricEventTimelineRemoteClient, a2, &cf);
    v16 = cf;
    if (v15 || !cf && ((AllocatorForMedia = FigGetAllocatorForMedia(), v15 = metremote_create(AllocatorForMedia, a2, a3, a4, &cf), v16 = cf, v15) || (v15 = FigXPCRemoteClientAssociateObject(gFigMetricEventTimelineRemoteClient, cf, a2, v18, v19, v20, v21, v22, v28), v16 = cf, v15)))
    {
      v23 = v15;
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      v23 = 0;
      *a5 = v16;
    }

    return v23;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x19B, v9, v26, v27, a9);
  }
}

uint64_t metremote_handleServerMessage(uint64_t a1, void *a2)
{
  v18 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v18);
  if (OpCode)
  {
    return OpCode;
  }

  if (v18 != 1702260340)
  {
    return 4294951138;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  v12 = FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent(a2, &cf, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = *(DerivedStorage + 16);
  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable(v13) + 16) + 40);
  if (v15)
  {
    v12 = v15(v13, a1, v14);
LABEL_6:
    v16 = v12;
    goto LABEL_9;
  }

  v16 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

void metremote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigXPCRemoteClientDisassociateObject(gFigMetricEventTimelineRemoteClient, *DerivedStorage, v2, v3, v4, v5, v6, v7, v11);
  v8 = 0;
  v12 = 0;
  if (!*(DerivedStorage + 8))
  {
    v9 = FigXPCCreateBasicMessage(0x64697370u, *DerivedStorage, &v12);
    v8 = v12;
    if (!v9)
    {
      FigXPCRemoteClientSendAsyncMessage(gFigMetricEventTimelineRemoteClient, v12);
      v8 = v12;
    }
  }

  FigXPCRelease(v8);
  v10 = *(DerivedStorage + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t metremote_registerSubscriber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v21 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x7F, v4, v18, v19, v20);
    goto LABEL_9;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 16);
  v11 = *(*(CMBaseObjectGetVTable(v10) + 16) + 8);
  if (!v11)
  {
    v14 = 0;
    v15 = 4294954514;
    goto LABEL_7;
  }

  v12 = v11(v10, a2, a3, a4);
  if (v12)
  {
LABEL_9:
    v15 = v12;
    v14 = 0;
    goto LABEL_7;
  }

  v13 = FigXPCCreateBasicMessage(0x72656773u, *v9, &v21);
  v14 = v21;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v21);
    v14 = v21;
  }

LABEL_7:
  FigXPCRelease(v14);
  return v15;
}

size_t metremote_subscribeByEventID(uint64_t a1, size_t a2, int64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v34 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x94, v3, v30, v31, v32);
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  v9 = *(*(CMBaseObjectGetVTable(v8) + 16) + 16);
  if (!v9)
  {
    v19 = 0;
    a2 = 4294954514;
    goto LABEL_7;
  }

  v10 = v9(v8, a2, a3);
  if (v10)
  {
LABEL_9:
    a2 = v10;
    v19 = 0;
    goto LABEL_7;
  }

  v11 = FigXPCCreateBasicMessage(0x73657669u, *v7, &v34);
  v19 = OUTLINED_FUNCTION_1_31(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34);
  if (!a2)
  {
    xpc_dictionary_set_int64(v19, "EventID", a3);
    v20 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v34);
    v19 = OUTLINED_FUNCTION_1_31(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34);
  }

LABEL_7:
  FigXPCRelease(v19);
  return a2;
}

size_t metremote_subscribeByClassID(uint64_t a1, size_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v34 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xAB, v3, v30, v31, v32);
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  v9 = *(*(CMBaseObjectGetVTable(v8) + 16) + 24);
  if (!v9)
  {
    v19 = 0;
    a2 = 4294954514;
    goto LABEL_7;
  }

  v10 = v9(v8, a2, a3);
  if (v10)
  {
LABEL_9:
    a2 = v10;
    v19 = 0;
    goto LABEL_7;
  }

  v11 = FigXPCCreateBasicMessage(0x636C7369u, *v7, &v34);
  v19 = OUTLINED_FUNCTION_1_31(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34);
  if (!a2)
  {
    xpc_dictionary_set_int64(v19, "ClassID", a3);
    v20 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v34);
    v19 = OUTLINED_FUNCTION_1_31(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34);
  }

LABEL_7:
  FigXPCRelease(v19);
  return a2;
}

uint64_t metremote_subscribeToAllEvents(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v17 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xC2, v2, v14, v15, v16);
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable(v6) + 16) + 32);
  if (!v7)
  {
    v10 = 0;
    v11 = 4294954514;
    goto LABEL_7;
  }

  v8 = v7(v6, a2);
  if (v8)
  {
LABEL_9:
    v11 = v8;
    v10 = 0;
    goto LABEL_7;
  }

  v9 = FigXPCCreateBasicMessage(0x73746165u, *v5, &v17);
  v10 = v17;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v17);
    v10 = v17;
  }

LABEL_7:
  FigXPCRelease(v10);
  return v11;
}

uint64_t met_publishEvent_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v25 = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xDB, v3, v22, v23, v24);
    goto LABEL_10;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 16);
  v10 = *(*(CMBaseObjectGetVTable(v9) + 16) + 40);
  if (!v10)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_8;
  }

  v11 = v10(v9, a2, a3);
  if (v11)
  {
LABEL_10:
    v19 = v11;
    v18 = 0;
    goto LABEL_8;
  }

  v12 = FigXPCCreateBasicMessage(0x70756273u, *v8, &v25);
  v18 = v25;
  if (v12 || (v12 = FigMetricEventTimelineClientServerXPC_SerializeEvent(v25, a1, a3, v13, v14, v15, v16, v17), v18 = v25, v12))
  {
    v19 = v12;
  }

  else
  {
    v19 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v25);
    v18 = v25;
  }

LABEL_8:
  FigXPCRelease(v18);
  return v19;
}

size_t metremote_create_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x134, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigVirtualCaptureCardServerReplyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  v24 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v24);
  if (OpCode)
  {
    return OpCode;
  }

  if (v24 == 1668441400)
  {
    if (qword_1ED4CC9B8 != -1)
    {
      dispatch_once(&qword_1ED4CC9B8, &__block_literal_global_27);
    }

    value = 0;
    FigSimpleMutexLock(qword_1ED4CC9B0);
    v7 = _MergedGlobals_32;
    if (!_MergedGlobals_32)
    {
      v8 = FigVirtualCaptureCardCreate(*MEMORY[0x1E695E480], 0, &_MergedGlobals_32);
      if (v8)
      {
        v9 = v8;
LABEL_10:
        FigSimpleMutexUnlock(qword_1ED4CC9B0);
        return v9;
      }

      v7 = _MergedGlobals_32;
    }

    v9 = FigXPCServerAssociateObjectWithConnection(a1, v7, 0, 0, 0, &value);
    if (!v9)
    {
      xpc_dictionary_set_uint64(a3, ".objectID", value);
    }

    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  value = 0;
  v11 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &value, 0);
  if (v11)
  {
    v9 = v11;
    goto LABEL_44;
  }

  if (!value)
  {
    return 4294954513;
  }

  v12 = CFGetTypeID(value);
  if (v12 != FigVirtualCaptureCardGetTypeID())
  {
    v9 = 4294954516;
LABEL_44:
    v22 = value;
    if (!value)
    {
      return v9;
    }

    goto LABEL_38;
  }

  v13 = value;
  if (v24 == 778268793)
  {
    v14 = FigXPCHandleStdCopyPropertyMessage(value, a2, a3);
LABEL_32:
    v9 = v14;
    if (!v13)
    {
      return v9;
    }

    goto LABEL_37;
  }

  if (v24 == 1936224119)
  {
    v15 = *(*(CMBaseObjectGetVTable(value) + 16) + 8);
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_21:
    v14 = v15(v13);
    goto LABEL_32;
  }

  if (v24 != 1919251318)
  {
    if (v24 != 1935767141)
    {
      if (v24 != 779314548)
      {
        v9 = 4294951138;
        if (!value)
        {
          return v9;
        }

        goto LABEL_37;
      }

      v14 = FigXPCHandleStdSetPropertyMessage(value, a2);
      goto LABEL_32;
    }

    v15 = *(*(CMBaseObjectGetVTable(value) + 16) + 24);
    if (!v15)
    {
LABEL_23:
      v9 = 4294954514;
      if (!v13)
      {
        return v9;
      }

      goto LABEL_37;
    }

    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(a2, "FileURL");
  v17 = CFStringCreateWithCString(0, string, 0x8000100u);
  if (!v17)
  {
    v9 = 4294954510;
    if (!v13)
    {
      return v9;
    }

    goto LABEL_37;
  }

  v18 = v17;
  v19 = CFURLCreateWithString(0, v17, 0);
  if (v19)
  {
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable(v13) + 16) + 16);
    if (v21)
    {
      v9 = v21(v13, v20);
    }

    else
    {
      v9 = 4294954514;
    }

    CFRelease(v18);
  }

  else
  {
    v9 = 4294954510;
    v20 = v18;
  }

  CFRelease(v20);
  if (v13)
  {
LABEL_37:
    v22 = v13;
LABEL_38:
    CFRelease(v22);
  }

  return v9;
}

uint64_t FigVirtualCaptureCardServerNoReplyMessageHandler(_xpc_connection_s *a1, void *a2)
{
  v9 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v9);
  if (OpCode)
  {
    goto LABEL_5;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (OpCode)
  {
    goto LABEL_5;
  }

  if (v9 == 1684632432)
  {
    OpCode = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_5:
    v6 = OpCode;
    goto LABEL_7;
  }

  v6 = 4294951138;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

size_t FigCustomURLHandlerRemoteCreateWithID(CMBlockBufferRef *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  HIDWORD(v23) = 0;
  if (!a2)
  {
    return 4294954516;
  }

  v8 = *MEMORY[0x1E695E480];
  ClassID = FigCustomURLHandlerGetClassID();
  ServerPID = CMDerivedObjectCreate(v8, kFigCustomURLHandlerRemote_VTable, ClassID, &cf, v10, v11, v12, v13, v23);
  if (ServerPID || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.customurlhandler.remotehandler", 0), ServerPID = FigXPCRemoteClientGetServerPID(a2, &v23 + 1), ServerPID))
  {
    v21 = ServerPID;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(DerivedStorage + 8) = HIDWORD(v23);
    *(DerivedStorage + 32) = a1;
    *DerivedStorage = CFRetain(a2);
    FigXPCRemoteClientAssociateObject(a2, cf, a1, v16, v17, v18, v19, v20, v23);
    v21 = FigCustomURLHandlerCreate(v8, "FigCustomURLHandlerRemoteShim", cf, *(DerivedStorage + 24), &FigCustomURLHandlerRemoteCreateWithID_sFigCustomURLHandlerRemoteCallbacks, a3, (DerivedStorage + 16));
    *a4 = cf;
  }

  return v21;
}

void figCustomURLHandlerRemote_shimCancelRequestCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  xdict = 0;
  cf = 0;
  if (!*(DerivedStorage + 40))
  {
    v13 = DerivedStorage;
    if (!FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], a3, &cf, v8, v9, v10, v11, v12))
    {
      v14 = FigCustomURLRequestInfoSetNetworkHistory(cf, 0);
      if (v14)
      {
        v15 = v14;
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v15, "<< CustomURLHandlerRemoteXPC >>", 0x251, v4, v17, v18, xdict);
      }

      else if (!FigCustomURLRequestInfoMakeNSSecureCodingTypesSerializable(cf) && !FigXPCCreateBasicMessage(0x63684352u, *(v13 + 32), &xdict))
      {
        xpc_dictionary_set_uint64(xdict, "CustomURLHandler_RequestID", a4);
        FigXPCMessageSetCFDictionary(xdict, "CustomURLHandler_RequestInfo", cf);
        FigXPCRemoteClientSendAsyncMessage(*v13, xdict);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(xdict);
}

void figCustomURLHandler_handleDataCallbackMessageWithRegisteredRequestInfo(uint64_t a1, uint64_t a2, const __CFData *a3, int a4, const void *a5, const void *a6, const void *a7, NSObject *a8, uint64_t a9, CFTypeRef a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  cf = 0;
  BytePtr = CFDataGetBytePtr(a3);
  if (a4)
  {
    goto LABEL_27;
  }

  v19 = *BytePtr;
  v20 = *MEMORY[0x1E695E480];
  if (!FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], *BytePtr, "CustomURLHandler_BlockBuffer", &v40))
  {
    uint64 = xpc_dictionary_get_uint64(v19, "CustomURLHandler_CallbackFlags");
    if (!FigXPCMessageCopyCFError(v19, "CustomURLHandler_Error", &v39))
    {
      if (uint64)
      {
        if (FigXPCMessageCopyCFDictionary(v19, "CustomURLHandler_FinalReport", &cf))
        {
          goto LABEL_25;
        }
      }

      else if (!a6)
      {
        if (FigXPCMessageCopyCFDictionary(v19, "CustomURLHandler_ResponseInfo", &v42))
        {
          goto LABEL_25;
        }

        if (v42)
        {
          if (FigCustomURLResponseInfoCreateMutableCopy(v20, v42, &v41, v30, v31, v32, v33, v34))
          {
            goto LABEL_25;
          }

          if (FigCustomURLResponseInfoDeserializeNSSecureCodingTypes(v41))
          {
            goto LABEL_25;
          }

          v35 = *(DerivedStorage + 16);
          v36 = v41;
          v37 = *(*(CMBaseObjectGetVTable(v35) + 16) + 8);
          if (!v37 || v37(v35, a2, v36))
          {
            goto LABEL_25;
          }
        }
      }

      v22 = v40;
      if (!v40 && (uint64 & 0xFFFFFFFE) == 0)
      {
        v23 = v39;
        if ((uint64 & 1) != 0 || !v39)
        {
          if ((uint64 & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_17:
          v27 = *(DerivedStorage + 16);
          v28 = cf;
          v29 = *(*(CMBaseObjectGetVTable(v27) + 16) + 24);
          if (v29)
          {
            v29(v27, a2, v23, v28);
          }

          goto LABEL_25;
        }
      }

      v24 = *(DerivedStorage + 16);
      v25 = *(*(CMBaseObjectGetVTable(v24) + 16) + 16);
      if (v25)
      {
        v26 = v25(v24, a2, v22);
        if ((uint64 & 1) != 0 && !v26)
        {
          v23 = v39;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_27:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  if (a7)
  {
    CFRelease(a7);
  }

  if (a8)
  {
    dispatch_release(a8);
  }

  if (a10)
  {
    CFRelease(a10);
  }
}

uint64_t dataCallbackMessageRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(dataCallbackMessageRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t remoteHandlerLookupAndRetainRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(remoteHandlerLookupAndRetainRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t __figCustomURLHandlerRemote_shimHandleRequestCallback_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(xdict, "CustomURLHandler_CanHandleResult");
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return v7(v6, v5, a2);
}

size_t FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x314, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL figCustomURLHandlerRemote_MessageHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0xC2, v3, v4, v5, v8);
  *a1 = v6;
  return v6 == 0;
}

size_t figCustomURLHandlerRemote_MessageHandler_cold_3(void *a1, _DWORD *a2)
{
  free(a1);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x146, v4, v5, v6, v8);
  *a2 = result;
  return result;
}

size_t figCustomURLHandlerRemote_MessageHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x143, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x339, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< CustomURLHandlerRemoteXPC >>", 0x336, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x330, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1C2, v3, v4, v5, v7);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1C5, v3, v4, v5, v7);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_3(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1D0, v3, v4, v5, v7);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_4(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1EC, v3, v4, v5, v7);
}

_BYTE *figCustomURLHandlerRemote_shimHandleRequestCallback_cold_5(_BYTE *result, int a2, uint64_t a3)
{
  v10 = 0;
  if (!*result)
  {
    result = FigCustomURLRequestInfoGetCryptorID(a2, &v10);
    if (!result)
    {
      return FigCPECryptorServerDisassociateCryptorWithClientPID(v10, *(a3 + 8), v4, v5, v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_Finalize_cold_1(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FigXPCRemoteClientDisassociateObject(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  result = FigXPCCreateBasicMessage(0x63684469u, a2, a3);
  if (!result)
  {
    return FigXPCRemoteClientSendAsyncMessage(*a4, *a3);
  }

  return result;
}

void figCustomURLHandlerRemote_Finalize_cold_2(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

BOOL figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2AB, v3, v4, v5, v8);
  *a1 = v6;
  return v6 == 0;
}

size_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_3(void *a1, _DWORD *a2)
{
  free(a1);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2D9, v4, v5, v6, v8);
  *a2 = result;
  return result;
}

size_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t *NeroValeriaListenerCreate(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = in_audio_mx_server_process();
  if (!v2 || !FigIsAirplaydEnabled(v2, v3))
  {
    return 0;
  }

  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = __NeroValeriaListenerCreate_block_invoke;
    v25[3] = &unk_1E74A0608;
    v25[4] = a1;
    v25[5] = v4;
    *(v4 + 1) = dispatch_queue_create("com.apple.coremedia.NeroValeriaListener", 0);
    v5 = *MEMORY[0x1E695E480];
    started = FigTransportConnectionUSBCreate(*MEMORY[0x1E695E480], &cf);
    if (started)
    {
LABEL_5:
      v7 = started;
      goto LABEL_12;
    }

    NeroTransportConnectionGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable(v8) + 8) + 56);
    if (v10)
    {
      started = v10(v9, @"USBInterfaceName", @"Valeria");
      if (!started)
      {
        started = NeroTransportCreate(v5, cf, v4);
        if (!started)
        {
          v11 = *v4;
          LocalRootObject = FigTransportGetLocalRootObject();
          started = NeroTransportRegisterObject(v11, LocalRootObject, *(v4 + 1), v25, 0, v13, v14, v15, v22);
          if (!started)
          {
            started = NeroTransportStartAcceptingConnections(*v4);
          }
        }
      }

      goto LABEL_5;
    }

    v7 = -12782;
  }

  else
  {
    v4 = 0;
    v7 = -12780;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v24, &type);
    v17 = v24;
    v18 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v27 = 136315394;
      v28 = "NeroValeriaListenerCreate";
      v29 = 1024;
      v30 = v7;
      v20 = _os_log_send_and_compose_impl(v19, 0, v31, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v18, "<< NeroValeriaListener >> %s: Failed to create NeroValeriaListener, error: %d", &v27, 18);
      LOBYTE(v17) = v24;
    }

    else
    {
      v20 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v20, v20 != v31, v17);
    NeroValeriaListenerDestroy(v4);
    return 0;
  }

  return v4;
}

uint64_t CMTimeSyncCoPresenceNTPClockGetClockTimeForHostTime()
{
  *&v6 = OUTLINED_FUNCTION_6_17(&kCMTimeInvalid).n128_u64[0];
  if (!v1)
  {
    goto LABEL_15;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = CFGetTypeID(v1);
  if (_MergedGlobals_36 != -1)
  {
    OUTLINED_FUNCTION_0_50();
    dispatch_once_f(v23, v24, v25);
  }

  if (v10 != qword_1ED4CCA80)
  {
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE40, 0xFFFFCE36uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x236, v0, v4, v5, v26, v6);
    return 0;
  }

  if ((*(v8 + 12) & 1) == 0)
  {
    return 0;
  }

  v11 = FigReentrantMutexLock(*(v9 + 3));
  if ((*(v9 + 16) & 1) == 0)
  {
    do
    {
      v11 = FigConditionVariableWaitRelative(*(v9 + 4), *(v9 + 3), 0xFFFFFFFFFFFFFFFFLL, v14, v15, v16, v17, v18);
    }

    while (!*(v9 + 16));
  }

  if (*(v9 + 56) == 1)
  {
    OUTLINED_FUNCTION_4_16();
    v19 = CMClockConvertHostTimeToSystemUnits(&hostTime);
    v20 = off_1ED4CCA88(*(v9 + 10), v19);
    CMTimeMake(&v55, v20, 1000000000);
    v21 = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_1_32(v11, v12, v13, v14, v15, v16, v17, v18, v26, v29, v30, v33, v36, v37, v38, v41, v43, v45, v46, v48, v50, v52, hostTime.value, *&hostTime.timescale, hostTime.epoch);
    if (!v21)
    {
      OUTLINED_FUNCTION_2_22(hostTime.epoch, v27, v31, v34, hostTime.value, *&hostTime.timescale, v39, v42, v44);
      OUTLINED_FUNCTION_3_21(v53, v28, v32, v35, v49, v51, v40, v44, v47);
    }
  }

  FigReentrantMutexUnlock(*(v9 + 3));
  if (v7)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return v21;
}

uint64_t CMTimeSyncCoPresenceNTPClockGetHostTimeForClockTime()
{
  *&v6 = OUTLINED_FUNCTION_6_17(&kCMTimeInvalid).n128_u64[0];
  if (!v1)
  {
    goto LABEL_15;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = CFGetTypeID(v1);
  if (_MergedGlobals_36 != -1)
  {
    OUTLINED_FUNCTION_0_50();
    dispatch_once_f(v22, v23, v24);
  }

  if (v10 != qword_1ED4CCA80)
  {
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE40, 0xFFFFCE36uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x282, v0, v4, v5, v25, v6);
    return 0;
  }

  if ((*(v8 + 12) & 1) == 0)
  {
    return 0;
  }

  v11 = FigReentrantMutexLock(*(v9 + 3));
  if ((*(v9 + 16) & 1) == 0)
  {
    do
    {
      v11 = FigConditionVariableWaitRelative(*(v9 + 4), *(v9 + 3), 0xFFFFFFFFFFFFFFFFLL, v14, v15, v16, v17, v18);
    }

    while (!*(v9 + 16));
  }

  if (*(v9 + 56) == 1)
  {
    OUTLINED_FUNCTION_4_16();
    CMTimeConvertScale(&v54, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v19 = off_1ED4CCA90(*(v9 + 10), v54.value);
    CMClockMakeHostTimeFromSystemUnits(&v55, v19);
    v20 = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_1_32(v11, v12, v13, v14, v15, v16, v17, v18, v25, v28, v29, v32, v35, v36, v37, v40, v42, v44, v45, v47, v49, v51, time.value, *&time.timescale, time.epoch);
    if (!v20)
    {
      OUTLINED_FUNCTION_2_22(v52, v26, v30, v33, v48, v50, v38, v41, v43);
      OUTLINED_FUNCTION_3_21(time.epoch, v27, v31, v34, time.value, *&time.timescale, v39, v43, v46);
    }
  }

  FigReentrantMutexUnlock(*(v9 + 3));
  if (v7)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return v20;
}

size_t HandleAudioDeviceClockMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  HIDWORD(v23) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v23 + 1);
  if (OpCode)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v23) == 1668441400)
  {
    deviceUID.value = 0;
    clockOut.value = 0;
    value.value = 0;
    int64 = xpc_dictionary_get_int64(a2, "DeviceID");
    v9 = FigXPCMessageCopyCFString(a2, "DeviceUID", &deviceUID);
    if (v9)
    {
      AnchorTime = v9;
    }

    else
    {
      v10 = *MEMORY[0x1E695E480];
      if (int64)
      {
        v11 = CMAudioDeviceClockCreateFromAudioDeviceID(v10, int64, &clockOut);
      }

      else
      {
        v11 = CMAudioDeviceClockCreate(v10, deviceUID.value, &clockOut);
      }

      AnchorTime = v11;
      if (!v11)
      {
        AnchorTime = FigXPCServerAssociateObjectWithConnection(a1, clockOut.value, 0, 0, 0, &value);
        if (!AnchorTime)
        {
          xpc_dictionary_set_uint64(a3, ".objectID", value.value);
        }
      }
    }

    if (deviceUID.value)
    {
      CFRelease(deviceUID.value);
    }

    if (clockOut.value)
    {
      CFRelease(clockOut.value);
    }

    goto LABEL_29;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (OpCode)
  {
    goto LABEL_33;
  }

  if (!cf || (v13 = CFGetTypeID(cf), v13 != CMClockGetTypeID()))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE36uLL, "<<<< FADCS(XPC) >>>>", 0xC7, v3, v21, v22, v23);
    goto LABEL_33;
  }

  if (HIDWORD(v23) == 1735549300)
  {
    v16 = cf;
    HostTimeClock = CMClockGetHostTimeClock();
    RelativeRate = CMSyncGetRelativeRate(v16, HostTimeClock);
    xpc_dictionary_set_double(a3, "Rate", RelativeRate);
    goto LABEL_27;
  }

  if (HIDWORD(v23) != 1734438507)
  {
    if (HIDWORD(v23) != 1734632822)
    {
      if (HIDWORD(v23) != 1685024621)
      {
        AnchorTime = 4294951138;
        goto LABEL_29;
      }

      FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_27:
      AnchorTime = 0;
      goto LABEL_29;
    }

    deviceUID.value = 0;
    LODWORD(clockOut.value) = 0;
    LOBYTE(value.value) = 0;
    AudioDevice = CMAudioDeviceClockGetAudioDevice(cf, &deviceUID, &clockOut, &value);
    OpCode = FigXPCMessageSetCFString(a3, "DeviceUID", deviceUID.value);
    if (!OpCode)
    {
      xpc_dictionary_set_int64(a3, "DeviceID", LODWORD(clockOut.value));
      xpc_dictionary_set_BOOL(a3, "TrackDefaultDevice", LOBYTE(value.value) != 0);
      xpc_dictionary_set_int64(a3, "LoadStatus", AudioDevice);
      AnchorTime = AudioDevice;
      goto LABEL_29;
    }

LABEL_33:
    AnchorTime = OpCode;
    goto LABEL_29;
  }

  memset(&deviceUID, 0, sizeof(deviceUID));
  memset(&clockOut, 0, sizeof(clockOut));
  AnchorTime = CMClockGetAnchorTime(cf, &deviceUID, &clockOut);
  if (!AnchorTime)
  {
    value = deviceUID;
    FigXPCMessageSetCMTime(a3, "ClockTime", &value);
    value = clockOut;
    FigXPCMessageSetCMTime(a3, "RefClockTime", &value);
    xpc_dictionary_set_int64(a3, "LoadStatus", 0);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  return AnchorTime;
}

size_t FigXPCAudioDeviceClockServerCopyClockForID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FADCS(XPC) >>>>", 0x120, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t CMGetDMVersionLevelFromRPU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  bzero(v12, 0x73B0uLL);
  if (!v8)
  {
    return 0;
  }

  Length = CFDataGetLength(v8);
  BytePtr = CFDataGetBytePtr(v8);
  if (FigHEVCBridge_GetRPUMetadata(BytePtr, Length, v12) || !v13)
  {
    return 0;
  }

  if (v14 <= 2u)
  {
    return v14 + 2;
  }

  return 0;
}

void fig_log_internal(uint64_t *a1, unsigned __int16 a2, char a3, uint64_t a4, const char *a5, va_list a6, uint64_t a7)
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = _MergedGlobals_1;
  v76 = 0;
  if (!_MergedGlobals_1)
  {
    goto LABEL_95;
  }

  v13 = a2;
  v14 = byte_1ED4CC169;
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  v69 = v13;
  os_log_type = fig_log_get_os_log_type(v13, v15);
  os_log = fig_log_emitter_get_os_log(a1, 0, 0);
  v75 = v14;
  v71 = os_log;
  v72 = os_log_type;
  if (!v14)
  {
    if (v7 == 8)
    {
      v32 = 0;
      v34 = 0;
      v35 = 0;
      v47 = 1;
LABEL_68:
      if ((a3 & 8) != 0)
      {
        goto LABEL_87;
      }

      if (!a4)
      {
        v62 = v71;
        if (v47)
        {
          os_log_with_args(v71, v72, a5, a6, a7);
        }

        else
        {
LABEL_84:
          fig_os_log_with_args(v62, v72);
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (v7 != 7)
      {
        goto LABEL_3;
      }

      if (!a4 && (a3 & 4) == 0)
      {
LABEL_10:
        if (!a5)
        {
          goto LABEL_95;
        }

        v78 = a6;
        block = 0u;
        v82 = 0u;
        if ((a3 & 3) != 0)
        {
          p_block = &block;
          fig_get_timestamp(a3 & 3, &block, 0x20uLL);
        }

        else
        {
          p_block = 0;
        }

        v36 = strlen(a5);
        v68 = a5;
        if (v36 >= 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = &a5[v36];
          v41 = __src;
          while (1)
          {
            v42 = *a5;
            if (!v39)
            {
              break;
            }

            if (v42 != 125)
            {
              goto LABEL_37;
            }

            if ((v40 - a5) >= 4)
            {
              v43 = 4;
            }

            else
            {
              v43 = v40 - a5;
            }

            if (strncmp("}*.P", a5, v43))
            {
              goto LABEL_39;
            }

            v44 = v38 - 1;
            if (512 - v38 >= 8)
            {
              v45 = 8;
            }

            else
            {
              v45 = 512 - v38;
            }

            strncpy(&__src[v44], "(%zu) %p", v45);
            v38 = v45 + v44;
            if (v38 == 511)
            {
LABEL_46:
              v41 = &v80;
              goto LABEL_47;
            }

            v39 = 0;
            a5 += 3;
LABEL_40:
            v46 = *a5++;
            v37 = v46;
            v41 = &__src[v38];
            if (a5 >= v40)
            {
              goto LABEL_47;
            }
          }

          if (v42 != 123 || v37 != 37)
          {
            ++v38;
            *v41 = v42;
            if (v38 == 511)
            {
              goto LABEL_46;
            }

LABEL_39:
            v39 = 0;
            goto LABEL_40;
          }

LABEL_37:
          v39 = 1;
          goto LABEL_40;
        }

        v41 = __src;
LABEL_47:
        *v41 = 0;
        arguments = v78;
        v48 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], __src, 0x8000100u, *MEMORY[0x1E695E498]);
        Mutable = CFStringCreateMutable(0, 0);
        v34 = Mutable;
        if (v48 && Mutable)
        {
          a5 = v68;
          if ((a3 & 3) != 0)
          {
            CFStringAppendFormat(Mutable, 0, @"[%s] ", p_block);
          }

          if (FigCFEqual(v48, @"%s"))
          {
            v50 = arguments;
            arguments += 8;
            CFStringAppendCString(v34, *v50, 0x8000100u);
          }

          else
          {
            CFStringAppendFormatAndArguments(v34, 0, v48, arguments);
          }
        }

        else
        {
          a5 = v68;
          if (!v48)
          {
            goto LABEL_57;
          }
        }

        CFRelease(v48);
LABEL_57:
        CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(v34, __src, 1536, 0x8000100u);
        if (!CStringPtrMaybeUsingPreallocatedBuffer)
        {
          CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrAndBufferToFree(v34, 0x8000100u, &v76);
        }

        v32 = CStringPtrMaybeUsingPreallocatedBuffer;
        v35 = 0;
        goto LABEL_60;
      }

      if (!a4)
      {
        os_log_with_args(os_log, os_log_type, a5, a6, a7);
        goto LABEL_95;
      }

      v35 = 0;
      v34 = 0;
      v32 = 0;
    }

LABEL_74:
    os_log_pack_send();
    goto LABEL_87;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_10;
  }

  v18 = a1;
  v19 = a5;
  if ((a3 & 3) != 0)
  {
    block = 0u;
    v82 = 0u;
    fig_get_timestamp(a3 & 3, &block, 0x20uLL);
    v27 = safe_snprintf_0(__src, v20, v21, v22, v23, v24, v25, v26, &block);
  }

  else
  {
    v27 = 0;
  }

  v28 = os_log_pack_compose();
  if (v28 == &__src[v27] || (v29 = v28, v30 = strlen(v28), (v31 = malloc_type_malloc(v27 + v30 + 1, 0x3249B70BuLL)) == 0))
  {
    v32 = __src;
  }

  else
  {
    v32 = v31;
    if (v27)
    {
      memcpy(v31, __src, v27);
    }

    v33 = strlen(v29);
    memcpy(&v32[v27], v29, v33 + 1);
    free(v29);
  }

  v34 = 0;
  v35 = v32 != __src;
  a5 = v19;
  a1 = v18;
LABEL_60:
  v47 = 0;
  switch(v7)
  {
    case 1:
      if (v69 == 3 || (a2 & 0xFFFD) == 0)
      {
        v53 = 3;
      }

      else
      {
        v53 = 5;
      }

      syslog(v53, "%s", v32);
      break;
    case 2:
      fprintf(*MEMORY[0x1E69E9848], "%s\n", v32);
      break;
    case 3:
      puts(v32);
      break;
    case 4:
      goto LABEL_86;
    case 5:
      *&block = 0;
      v54 = strlen(v32);
      OUTLINED_FUNCTION_3_22();
      if (!CMBlockBufferCreateWithMemoryBlock(v55, v56, v57, v58, v59, v60, v61, 1u, &block))
      {
        CMBlockBufferReplaceDataBytes(v32, block, 0, v54);
        CMBlockBufferReplaceDataBytes("\n", block, v54, 2uLL);
        dispatch_async_f(sNoteBBufQueue, block, append_and_release_noteBBuf);
      }

      break;
    case 7:
      if (a4)
      {
        goto LABEL_74;
      }

      v62 = v71;
      goto LABEL_84;
    case 8:
      goto LABEL_68;
    case 9:
      if ((a3 & 8) == 0)
      {
        if (a4)
        {
          os_log_pack_send();
        }

        else
        {
          os_log_with_args(v71, v72, a5, a6, a7);
        }
      }

LABEL_86:
      fig_note_write_to_external_log_file(v32);
      break;
    default:
      break;
  }

LABEL_87:
  if (!v75 || !v34)
  {
LABEL_91:
    if (!v35)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  add_explicit = atomic_fetch_add_explicit(&unk_1ED4CC190, 1u, memory_order_relaxed);
  if (add_explicit >= 0x65)
  {
    atomic_fetch_add_explicit(&unk_1ED4CC190, 0xFFu, memory_order_relaxed);
    goto LABEL_91;
  }

  v64 = a1;
  v65 = add_explicit == 100;
  if (add_explicit == 100)
  {
    v66 = 0;
  }

  else
  {
    v66 = v34;
  }

  if (add_explicit != 100)
  {
    CFRetain(v34);
  }

  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 0x40000000;
  *&v82 = __fig_log_append_to_ring_buffer_async_block_invoke;
  *(&v82 + 1) = &__block_descriptor_tmp_40_0;
  v85 = v65;
  v83 = v66;
  v84 = v64;
  dispatch_async(qword_1ED4CC188, &block);
  if (!v35)
  {
    goto LABEL_93;
  }

LABEL_92:
  free(v32);
LABEL_93:
  if (v34)
  {
    CFRelease(v34);
  }

LABEL_95:
  free(v76);
}

size_t FigNote_ConfigureRingBuffer(void *a1, uint64_t a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v4 = fignote_initialize_ringlog(a1, a2);
  *(v17 + 6) = v4;
  if (v4)
  {
    v8 = v4;
    goto LABEL_5;
  }

  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = v2;
    v14 = 2685;
LABEL_9:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBED8uLL, "|FigNote|", v14, v13, v11, v12, v15);
    *(v17 + 6) = v8;
    goto LABEL_5;
  }

  if (*a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = v2;
    v14 = 2686;
    goto LABEL_9;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  OUTLINED_FUNCTION_1_33();
  block[2] = v5;
  block[3] = &unk_1E74A08E0;
  block[4] = v6;
  dispatch_sync(v7, block);
  v8 = *(v17 + 6);
LABEL_5:
  _Block_object_dispose(&v16, 8);
  return v8;
}

size_t fig_note_makeRingBufferDataStructuresInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (qword_1ED4CC170)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFBED8uLL, "|FigNote|", 0xA45, v17, v18, v19, a9);
  }

  else
  {
    OUTLINED_FUNCTION_3_22();
    result = CMBlockBufferCreateWithMemoryBlock(v9, v10, v11, v12, v13, v14, v11, 1u, &qword_1ED4CC170);
    if (!result)
    {
      atomic_store(0x7FFFFC00001FFFFFuLL, &qword_1ED4CC178);
    }
  }

  return result;
}

uint64_t FigNote_EnableRingBuffer(uint64_t a1, uint64_t a2)
{
  v2 = fignote_initialize_ringlog(a1, a2);
  if (!v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    OUTLINED_FUNCTION_1_33();
    block[2] = v3;
    block[3] = &unk_1E74A08E0;
    block[4] = v4;
    dispatch_sync(v5, block);
  }

  return v2;
}

uint64_t FigNote_CopyRingBufferLogArrayAndResetRing(__CFArray **a1, uint64_t a2)
{
  v2 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v36[3] = 0;
  v4 = fignote_initialize_ringlog(a1, a2);
  if (v4)
  {
    v22 = v4;
    goto LABEL_23;
  }

  v28 = MEMORY[0x1E69E9820];
  v29 = 0x40000000;
  v30 = __FigNote_CopyRingBufferLogArrayAndResetRing_block_invoke;
  v31 = &unk_1E74A07F0;
  v32 = &v37;
  v33 = &v41;
  v34 = v36;
  v35 = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  OUTLINED_FUNCTION_1_33();
  block[2] = v5;
  block[3] = &unk_1E74A08E0;
  block[4] = v6;
  dispatch_sync(v7, block);
  v8 = v42[3];
  if (!v8)
  {
    v22 = 4294950613;
    goto LABEL_23;
  }

  v9 = v38[3] & 0x1FFFFF;
  if (v9 == 0x1FFFFF)
  {
    goto LABEL_22;
  }

  context.version = 0;
  memset(&context.retain, 0, 40);
  context.info = v8;
  context.deallocate = fig_log_ring_backing_deallocator;
  context.preferredSize = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  v12 = v9 == 0;
  v13 = v9 != 0;
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  v15 = 0;
  do
  {
    destination = 0;
    block[0] = 0;
    bytes = 0;
    CMBlockBufferCopyDataBytes(v42[3], v9, 4uLL, &destination);
    v16 = destination;
    if (destination < 5)
    {
      break;
    }

    destination -= 4;
    CMBlockBufferGetDataPointer(v42[3], v9 + 4, block, 0, &bytes);
    if (block[0] < destination)
    {
      break;
    }

    v17 = v42[3];
    if (v17)
    {
      CFRetain(v17);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = CFStringCreateWithBytesNoCopy(AllocatorForMedia, bytes, destination, 0x8000100u, 0, v11);
    if (v19)
    {
      v20 = v19;
      CFArrayAppendValue(Mutable, v19);
LABEL_12:
      CFRelease(v20);
      goto LABEL_13;
    }

    v20 = v42[3];
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_13:
    v21 = v38[3];
    if (!v13 && v16 + v9 >= ((v21 >> 42) & 0x1FFFFF))
    {
      v15 = 1;
    }

    if (v16 + v9 < ((v21 >> 21) & 0x1FFFFF))
    {
      v9 += v16;
    }

    else
    {
      v12 = 1;
      v9 = 0;
    }

    v13 = !v12;
  }

  while (!v15 || !v12);
  *a1 = Mutable;
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_22:
  v22 = 0;
LABEL_23:
  v23 = v42[3];
  if (v23)
  {
    CFRelease(v23);
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v22;
}

void fig_post_a_symptom_guts_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_196FA7000, a2, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
}

size_t fig_note_dropRingBufferDataStructuresInternal_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBED8uLL, "|FigNote|", 0xA5B, v10, v11, v12, a9);
}

void __fig_log_append_to_ring_buffer_async_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134218240;
  v4 = v2;
  v5 = 2048;
  v6 = qword_1ED4CC180;
  _os_log_error_impl(&dword_196FA7000, a2, OS_LOG_TYPE_ERROR, "Log size (%ld) too long for ring buffer size %zu. Dropping it.", &v3, 0x16u);
}

size_t FigSandboxRegistrationAssociateWithURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA3uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x58, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationAssociateWithURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x53, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationAssociateWithURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x52, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigGetSandboxRegistrationAssociatedWithURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x68, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigGetSandboxRegistrationAssociatedWithURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x67, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAB, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAA, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xA9, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0x58, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0x43, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x3B, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB8, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB7, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB6, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xC3, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFA, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0xF9, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xF7, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t a3, size_t a4, CFDataRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v13 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  cf = 0;
  if (a5)
  {
    if (DataLength >= a4 + a3)
    {
      lengthAtOffsetOut = 0;
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = DataLength - a3;
      }

      DataPointer = CMBlockBufferGetDataPointer(v13, a3, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        return DataPointer;
      }

      if (v16 > lengthAtOffsetOut)
      {
        Contiguous = CMBlockBufferCreateContiguous(a1, v13, *MEMORY[0x1E695E480], 0, a3, v16, 0, &cf);
        v13 = cf;
        if (Contiguous)
        {
          CFDataWithBlockBufferNoCopy = Contiguous;
          if (!cf)
          {
            return CFDataWithBlockBufferNoCopy;
          }

          goto LABEL_11;
        }

        a3 = 0;
      }

      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy(a1, v13, a3, v16, a5);
      v13 = cf;
      if (!cf)
      {
        return CFDataWithBlockBufferNoCopy;
      }

LABEL_11:
      CFRelease(v13);
      return CFDataWithBlockBufferNoCopy;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v24 = v9;
    v25 = 453;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v24 = v9;
    v25 = 452;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5FuLL, "(Fig)", v25, v24, v22, v23, a9);
}

uint64_t FigCreateBlockBufferWithCFString(const __CFAllocator *a1, CFStringRef theString, CMBlockBufferRef *a3)
{
  v4 = theString;
  blockBufferOut = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CStringPtr)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(a1, v4, 0x8000100u, 0x3Fu);
    if (!ExternalRepresentation)
    {
      v11 = 4294954510;
      if (!a3)
      {
        return v11;
      }

      goto LABEL_11;
    }

    v4 = ExternalRepresentation;
    Length = CFDataGetLength(ExternalRepresentation);
    v11 = FigCreateBlockBufferWithCFDataNoCopy(a1, v4, 0, Length, &blockBufferOut);
    goto LABEL_9;
  }

  v7 = CStringPtr;
  customBlockSource.version = 0;
  if (v4)
  {
    v8 = CFRetain(v4);
  }

  else
  {
    v8 = 0;
  }

  customBlockSource.AllocateBlock = 0;
  customBlockSource.FreeBlock = BBufUtilCFStringReleaser;
  customBlockSource.refCon = v8;
  v12 = strlen(v7);
  v13 = CMBlockBufferCreateWithMemoryBlock(a1, v7, v12, 0, &customBlockSource, 0, v12, 0, &blockBufferOut);
  v11 = v13;
  if (v4 && v13)
  {
LABEL_9:
    CFRelease(v4);
  }

  if (a3)
  {
LABEL_11:
    *a3 = blockBufferOut;
  }

  return v11;
}

uint64_t FigMakeIOVecArrayWithBlockBuffer(CMBlockBufferRef theBuffer, uint64_t a2, int a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  totalLengthOut = 0;
  v8 = (a2 + 8);
  v9 = a3 & ~(a3 >> 31);
  while (v9 != v6)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, v7, v8, &totalLengthOut, v8 - 1);
    if (result)
    {
      return result;
    }

    v11 = *v8;
    v8 += 2;
    v7 += v11;
    ++v6;
    if (v7 >= totalLengthOut)
    {
      result = 0;
      *a4 = v6;
      return result;
    }
  }

  return 4294954588;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE60uLL, "(Fig)", 0x19A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE64uLL, "(Fig)", 0x1AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x193, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE61uLL, "(Fig)", 0x1F4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE61uLL, "(Fig)", 0x1F8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE60uLL, "(Fig)", 0x1F7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x1F3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x1EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL FigCreateBlockBufferWithCFDataNoCopy_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE5FuLL, "(Fig)", 0x1ED, v5, v6, v7, v9);
  return a1 == 0;
}

CMMemoryPoolRef CMMemoryPoolCreate(CFDictionaryRef options)
{
  v2 = 500000000;
  v3 = *MEMORY[0x1E695E480];
  memcpy(&__dst, &unk_1F0B73DE0, sizeof(__dst));
  if (options)
  {
    Value = CFDictionaryGetValue(options, @"FigMemoryPool_AgeOutPeriod");
    if (Value)
    {
      v5 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        v15 = 0.0;
        CFNumberGetValue(v5, kCFNumberDoubleType, &v15);
        if (v15 > 0.0)
        {
          v2 = (v15 * 1000.0 * 1000.0 * 1000.0);
        }
      }
    }

    v7 = CFDictionaryGetValue(options, @"FigMemoryPool_LoggingName");
  }

  else
  {
    v7 = 0;
  }

  FigThreadRunOnce(&sRegisterFigMemoryPoolTypeOnce, RegisterFigMemoryPoolType);
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    if (!poolBlockState_Create(v3, Instance, v2, 1, 0x40000, v7, options, (Instance + 16)))
    {
      __dst.info = CFRetain(*(v9 + 16));
      *(v9 + 24) = CFAllocatorCreate(0, &__dst);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x6BE, v11, v12, v13, *&v15);
  }

  return v9;
}

const __CFAllocator *FigMemoryPoolAllocatorCopyMemoryPool(const __CFAllocator *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (result)
  {
    if (a2)
    {
      memset(&v22, 0, sizeof(v22));
      CFAllocatorGetContext(result, &v22);
      if (v22.allocate != poolingAllocator_Allocate)
      {
        return 0;
      }

      v10 = *(v22.info + 12);
      if (v10)
      {
        v11 = FigCFWeakReferenceHolderCopyReferencedObject(v10);
        if (v11)
        {
          v12 = v11;
          result = 0;
          *a2 = v12;
          return result;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v21 = 1781;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v21 = 1778;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFC379uLL, "<<<< MemoryPool >>>>", v21, v18, v19, v20, v22.version);
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x6EA, v14, v15, v16, a9);
  }

  return result;
}

uint64_t FigIsMemoryPoolBlockBuffer(OpaqueCMBlockBuffer *a1)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  if (!CMBlockBufferIsRangeContiguous(a1, 0, DataLength))
  {
    while (1)
    {
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_7_15();
      if (FigBlockBufferGetDataPointerAndOrigin(v11, v12, v13, v14, v15, v16, v17, v18, v19))
      {
        break;
      }

      result = CMGetAttachment(0, @"OwningPoolBlockState", 0);
      if (!result)
      {
        return result;
      }

      result = CMGetAttachment(0, @"MemoryPoolBlockSerialNumber", 0);
      if (!result)
      {
        return result;
      }

      if (!DataLength)
      {
        return 1;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_4_17();
  if (FigBlockBufferGetDataPointerAndOrigin(v3, v4, v5, v6, 0, v7, v8, v9, v19))
  {
    return 0;
  }

  result = CMGetAttachment(0, @"OwningPoolBlockState", 0);
  if (result)
  {
    return CMGetAttachment(0, @"MemoryPoolBlockSerialNumber", 0) != 0;
  }

  return result;
}

size_t FigMemoryPoolBlockBufferGetPaddedWriteInfo(OpaqueCMBlockBuffer *a1, char **a2, void *a3, void *a4)
{
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  HIDWORD(v16) = 0;
  result = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    if (lengthAtOffsetOut == totalLengthOut)
    {
      if (FigIsMemoryPoolBlockBuffer(a1) && (v9 = CMGetAttachment(a1, @"NumTrailingPaddingBytes", 0)) != 0)
      {
        CFNumberGetValue(v9, kCFNumberSInt32Type, &v16 + 4);
        v10 = SHIDWORD(v16);
      }

      else
      {
        v10 = 0;
      }

      result = 0;
      v11 = totalLengthOut;
      *a2 = dataPointerOut;
      *a3 = v11 + v10;
      *a4 = v10;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x7FD, v13, v14, v15, v16);
    }
  }

  return result;
}

BOOL FigMemoryOriginIsBlockBufferSendable(uint64_t a1, CMBlockBufferRef theBuffer)
{
  valuePtr[1] = 0;
  target = 0;
  valuePtr[0] = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v29 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_7_15();
      if (FigBlockBufferGetDataPointerAndOrigin(v17, v18, v19, v20, v21, v22, v23, v24, v29))
      {
        return 0;
      }

      if (!CMGetAttachment(target, @"OwningPoolBlockState", 0) || !CMGetAttachment(target, @"MemoryPoolBlockSerialNumber", 0))
      {
        break;
      }

      v25 = CMGetAttachment(target, @"ImportedBlockSerialNumber", 0);
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberSInt64Type, valuePtr);
        v14 = valuePtr[0] & 0xFFFF800000000000;
        v13 = 1;
        if (v16 && v16 != v14)
        {
          LODWORD(v12) = 0;
          return v14 == *(a1 + 56) << 47 && v12;
        }

        v16 = valuePtr[0] & 0xFFFF800000000000;
      }

      v15 += v29;
      if (v15 >= DataLength)
      {
        v12 = 1;
        goto LABEL_19;
      }
    }

    v12 = 0;
LABEL_19:
    if (v13)
    {
      return v14 == *(a1 + 56) << 47 && v12;
    }

    return v12;
  }

  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_4_17();
  if (FigBlockBufferGetDataPointerAndOrigin(v5, v6, v7, v8, 0, v9, v10, v11, v28))
  {
    return 0;
  }

  if (CMGetAttachment(target, @"OwningPoolBlockState", 0))
  {
    v12 = CMGetAttachment(target, @"MemoryPoolBlockSerialNumber", 0) != 0;
  }

  else
  {
    v12 = 0;
  }

  v26 = CMGetAttachment(target, @"ImportedBlockSerialNumber", 0);
  if (v26)
  {
    CFNumberGetValue(v26, kCFNumberSInt64Type, valuePtr);
    v14 = valuePtr[0] & 0xFFFF800000000000;
    return v14 == *(a1 + 56) << 47 && v12;
  }

  return v12;
}

uint64_t memoryOrigin_unregisterUseOfMultipleBlocks(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_4();
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    v16 = 0;
    FigCFArrayGetInt64AtIndex(v2, v12, &v16, v6, v7, v8, v9, v10);
    v14 = memoryOrigin_unregisterUseOfBlock(v3, v16);
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      v13 = v13;
    }

    ++v12;
  }

  while (v11 != v12);
  return v13;
}

size_t FigMemoryOriginUpdateRecipientStateFromIPCMessageData(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        return 0;
      }

      v10 = *a2;
      if (((8 * v10) | 4uLL) <= a3)
      {
        if (v10)
        {
          v12 = 0;
          LODWORD(v13) = 0;
          do
          {
            v14 = memoryOrigin_unregisterUseOfBlock(a1, *&a2[2 * v12 + 1]);
            if (v14)
            {
              v13 = v14;
            }

            else
            {
              v13 = v13;
            }

            ++v12;
          }

          while (v12 < *a2);
          return v13;
        }

        return 0;
      }

      v16 = 2914;
    }

    else
    {
      v16 = 2912;
    }
  }

  else
  {
    v16 = 2911;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", v16, v18, v19, v20, a9);
}

uint64_t FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(void *a1)
{
  value = 0;
  if (qword_1ED4CCB78 != -1)
  {
    dispatch_once(&qword_1ED4CCB78, &__block_literal_global_102);
  }

  v2 = dword_1ED4CCB2C;
  if (dword_1ED4CCB2C)
  {
    v4 = 0;
  }

  else
  {
    v3 = qword_1ED4CCB70;
    v2 = FigXPCServerCopyXPCEndpoint(qword_1ED4CCB38, &value);
    v4 = value;
    if (!v2)
    {
      xpc_dictionary_set_value(a1, "MemoryOriginEndpoint", value);
      xpc_dictionary_set_uint64(a1, "MemoryOriginServerToken", v3);
      v4 = value;
    }
  }

  FigXPCRelease(v4);
  return v2;
}

size_t FigMemoryRecipientCopyBlockBufferFromIPCMessageData(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, CMBlockBufferRef *a5)
{
  targetBBuf = 0;
  blockBufferOut = 0;
  v23 = 0u;
  v24 = 0u;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4399;
LABEL_32:
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", v22, v19, v20, v21, v23, *(&v23 + 1), v24);
    goto LABEL_9;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4400;
    goto LABEL_32;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4401;
    goto LABEL_32;
  }

  if (!a4)
  {
LABEL_20:
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  if (a4 <= 0xB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4403;
    goto LABEL_32;
  }

  v8 = *(a3 + 8);
  if (40 * v8 + 12 > a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4404;
    goto LABEL_32;
  }

  if (v8 == 1)
  {
    v10 = CreateSubBlockBuffer(a1, a2, 0, (a3 + 12), 0, &blockBufferOut);
LABEL_9:
    v11 = v10;
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v10 = CMBlockBufferCreateEmpty(a1, v8, 0, &blockBufferOut);
  if (v10)
  {
    goto LABEL_9;
  }

  *&v23 = a3;
  if (!*(a3 + 8))
  {
    goto LABEL_20;
  }

  v14 = 0;
  v15 = (a3 + 12);
  while (1)
  {
    DWORD2(v23) = ++v14;
    appended = CreateSubBlockBuffer(a1, a2, 0, v15, &v23, &targetBBuf);
    v12 = targetBBuf;
    if (appended)
    {
      break;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
    if (appended)
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
      targetBBuf = 0;
    }

    v15 += 5;
    if (v14 >= *(a3 + 8))
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_19;
    }
  }

  v11 = appended;
LABEL_19:
  v13 = *(&v24 + 1);
LABEL_21:
  FigXPCRelease(v13);
  FigXPCRelease(v24);
  if (v12)
  {
    CFRelease(v12);
  }

  if (a5)
  {
    *a5 = blockBufferOut;
  }

  return v11;
}

size_t FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (qword_1ED4CCB40 != -1)
  {
    dispatch_once(&qword_1ED4CCB40, &__block_literal_global_46_0);
  }

  result = qword_1ED4CCB48;
  if (qword_1ED4CCB48)
  {
    Value = FigThreadGetValue(qword_1ED4CCB48);
    if (Value)
    {
LABEL_5:
      result = 0;
      *Value = 1;
      return result;
    }

    v11 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
    if (v11)
    {
      Value = v11;
      result = FigThreadSetValue(qword_1ED4CCB48, v11);
      if (!result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x12B3, v13, v14, v15, a9);
    }
  }

  return result;
}

void poolBlockState_DecrementUseCountInternal(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 8);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(a2 + 8) = v4;
    if (!v4)
    {
      CFDictionaryRemoveValue(*(a1 + 64), a2[2]);
      if (*(a1 + 16))
      {
        a2[3] = (*(a1 + 32) + FigGetUpTimeNanoseconds());
        CFArrayAppendValue(*(a1 + 72), a2);
        if (!*(a1 + 128))
        {
          *(a1 + 128) = 1;
          v7 = *(a1 + 120);
          v8 = dispatch_time(0, 300000000000);
          dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        v9 = a2[3];
        if (*(a1 + 48) > v9)
        {
          *(a1 + 48) = v9;
        }
      }

      else
      {
        poolBlockState_DeallocateVMMemory(a2);
        CFDictionaryRemoveValue(*(a1 + 80), *a2);
        poolBlockState_postForgottenSerialNumber(a1, a2);

        free(a2);
      }
    }
  }
}

void poolBlockState_ageOutTimerHandler(id *a1)
{
  v6 = 0;
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    FigSimpleMutexLock(v1[7]);
    *(v2 + 128) = 0;
    poolBlockState_FreeBlocks(v2, 0, &v6);
    if (v6)
    {
      v3 = 1000000000;
    }

    else
    {
      if (!CFArrayGetCount(*(v2 + 72)))
      {
LABEL_7:
        FigSimpleMutexUnlock(*(v2 + 56));
        CFRelease(v2);
        return;
      }

      v3 = 300000000000;
    }

    *(v2 + 128) = 1;
    v4 = *(v2 + 120);
    v5 = dispatch_time(0, v3);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    goto LABEL_7;
  }
}

uint64_t poolBlockState_DecrementBlockUseCount()
{
  OUTLINED_FUNCTION_18_4();
  FigSimpleMutexLock(*(v2 + 56));
  Value = CFDictionaryGetValue(*(v1 + 80), v0);
  poolBlockState_DecrementUseCountInternal(v1, Value);
  v4 = *(v1 + 56);

  return FigSimpleMutexUnlock(v4);
}

size_t memoryOriginServer_handleRemoteMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v70) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v70 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  if (HIDWORD(v70) != 1718903656)
  {
    if (HIDWORD(v70) == 1668441400)
    {
      value = 0;
      string = xpc_dictionary_get_string(a2, ".DebugName");
      v8 = xpc_dictionary_get_string(a2, ".ProcessName");
      v9 = *MEMORY[0x1E695E480];
      if (qword_1ED4CCB80 != -1)
      {
        dispatch_once(&qword_1ED4CCB80, &__block_literal_global_111);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v11 = Instance;
        v12 = FigReentrantMutexCreate();
        *(v11 + 16) = v12;
        if (v12)
        {
          OUTLINED_FUNCTION_4_17();
          Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
          *(v11 + 24) = Mutable;
          if (Mutable)
          {
            v18 = CFBagCreateMutable(v9, 0, MEMORY[0x1E695E9D0]);
            *(v11 + 32) = v18;
            if (v18)
            {
              if (string)
              {
                v19 = strndup(string, 0x64uLL);
              }

              else
              {
                v19 = strdup("unnamed");
              }

              *(v11 + 48) = v19;
              if (v8)
              {
                v38 = strndup(v8, 0x64uLL);
              }

              else
              {
                v38 = strdup("unknown");
              }

              *(v11 + 64) = v38;
              *(v11 + 56) = xpc_connection_get_pid(a1);
              OUTLINED_FUNCTION_7_15();
              v45 = FigXPCServerAssociateObjectWithConnection(v39, v40, v41, v42, v43, v44);
              if (v45)
              {
                v37 = v45;
                goto LABEL_34;
              }

LABEL_33:
              xpc_dictionary_set_uint64(a3, ".objectID", value);
              v37 = 0;
              *(v11 + 40) = value;
LABEL_34:
              v46 = v11;
LABEL_38:
              CFRelease(v46);
              return v37;
            }

            v52 = 2313;
          }

          else
          {
            v52 = 2310;
          }
        }

        else
        {
          v52 = 2307;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", v52, v62, v63, v64, v70);
        CFRelease(v11);
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x900, v49, v50, v51, v70);
      }

      if (v37)
      {
        return v37;
      }

      OUTLINED_FUNCTION_4_17();
      OpCode = FigXPCServerAssociateObjectWithConnection(v65, v66, v67, v68, 0, v69);
      v11 = 0;
      if (!OpCode)
      {
        goto LABEL_33;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFC0E2uLL, "<<<< MemoryPool >>>>", 0xC2B, v34, v35, v36, v70);
    }

    return OpCode;
  }

  value = 0;
  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  int64 = xpc_dictionary_get_int64(a2, "BlockSerialNumber");
  v22 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &value, 0);
  if (!v22)
  {
    FigReentrantMutexLock(*(value + 16));
    v23 = CFDictionaryGetValue(*(value + 24), int64);
    if (v23)
    {
      empty = xpc_shmem_create(*(v23 + 3), *(v23 + 4));
      if (!empty)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0xBCB, v58, v59, v60, v70);
        goto LABEL_36;
      }

      xpc_dictionary_set_value(a3, "OriginData", empty);
      xpc_release(empty);
      v25 = xpc_dictionary_get_value(a2, "AdditionalBlockSerialNumbers");
      count = xpc_array_get_count(v25);
      if (count)
      {
        v27 = count;
        empty = xpc_array_create_empty();
        v28 = 0;
        while (1)
        {
          v29 = xpc_array_get_int64(v25, v28);
          v30 = CFDictionaryGetValue(*(value + 24), v29);
          if (!v30)
          {
            break;
          }

          v31 = xpc_shmem_create(*(v30 + 3), *(v30 + 4));
          if (!v31)
          {
            break;
          }

          v32 = v31;
          xpc_array_append_value(empty, v31);
          xpc_release(v32);
          if (v27 == ++v28)
          {
            if (empty)
            {
              xpc_dictionary_set_value(a3, "AdditionalDataObjects", empty);
            }

            goto LABEL_35;
          }
        }

        if (empty)
        {
          xpc_release(empty);
          goto LABEL_26;
        }

LABEL_35:
        v37 = 0;
        goto LABEL_36;
      }

LABEL_26:
      v37 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xBC8, v54, v55, v56, v70);
    }

    empty = 0;
LABEL_36:
    FigReentrantMutexUnlock(*(value + 16));
    goto LABEL_37;
  }

  v37 = v22;
  empty = 0;
LABEL_37:
  FigXPCRelease(empty);
  FigXPCRelease(0);
  v46 = value;
  if (value)
  {
    goto LABEL_38;
  }

  return v37;
}

uint64_t memoryOriginServer_handleRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v17 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v17);
  if (OpCode)
  {
    return OpCode;
  }

  if (v17 != 1970482529)
  {
    if (v17 == 1970496813)
    {
      v19 = 0;
      uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
      int64 = xpc_dictionary_get_int64(a2, "BlockSerialNumber");
      v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v19, 0);
      if (!v7)
      {
        v7 = memoryOrigin_unregisterUseOfBlock(v19, int64);
      }

      goto LABEL_6;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC0E2uLL, "<<<< MemoryPool >>>>", 0xC47, v12, v13, v14, v16);
  }

  cf = 0;
  v19 = 0;
  v9 = xpc_dictionary_get_uint64(a2, ".objectID");
  v7 = FigXPCMessageCopyCFArray(a2, "BlockSerialNumberArray", &v19);
  if (!v7)
  {
    v8 = FigXPCServerLookupAndRetainAssociatedObject(a1, v9, &cf, 0);
    v10 = cf;
    if (!v8)
    {
      v8 = memoryOrigin_unregisterUseOfMultipleBlocks(cf, v19);
      v10 = cf;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_12;
  }

LABEL_6:
  v8 = v7;
LABEL_12:
  if (v19)
  {
    CFRelease(v19);
  }

  return v8;
}

__CFString *memoryOrigin_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  OUTLINED_FUNCTION_10_7();
  v6 = CFArrayCreateMutable(v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    FigReentrantMutexLock(*(a1 + 16));
    v8 = *(a1 + 40);
    Count = CFDictionaryGetCount(*(a1 + 24));
    CFStringAppendFormat(Mutable, 0, @"FigMemoryOrigin %p ObjectID %016llx %ld originBlocks", a1, v8, Count);
    FigReentrantMutexUnlock(*(a1 + 16));
    CFRelease(v7);
  }

  return Mutable;
}

void *receivedMemoryAllocator_findImportedBlockEntryForSerialNumber(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  context = a2;
  Count = CFArrayGetCount(*(a1 + 8));
  v9.location = 0;
  v9.length = Count;
  v6 = CFArrayBSearchValues(*(a1 + 8), v9, &context, receivedMemoryAllocator_compareBlockEntryWithSerialNumber, &context);
  if (a3)
  {
    *a3 = v6;
  }

  if (v6 >= Count)
  {
    return 0;
  }

  result = CFArrayGetValueAtIndex(*(a1 + 8), v6);
  if (*result != context)
  {
    return 0;
  }

  return result;
}

void receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (!FigCFArrayAppendInt64(*(a1 + 64), a2, a3, a4, a5, a6, a7, a8) && CFArrayGetCount(*(a1 + 64)) == 1)
  {
    v9 = *(a1 + 56);
    v10 = dispatch_time(0, 200000000);

    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void receivedMemoryAllocator_sendPendingBatchOfBlockSNtoDecrementUseCount(os_unfair_lock_s **a1)
{
  xdict = 0;
  if (a1)
  {
    v1 = a1;
    FigSimpleMutexLock(*a1);
    if (CFArrayGetCount(v1[8]) >= 1 && !FigXPCCreateBasicMessage(0x75732D61u, 0, &xdict))
    {
      FigXPCMessageSetCFObject(xdict, "BlockSerialNumberArray", v1[8]);
      CFArrayRemoveAllValues(v1[8]);
      xpc_dictionary_set_uint64(xdict, ".objectID", v1[4]);
      FigXPCRemoteClientSendAsyncMessage(v1[3], xdict);
    }

    FigSimpleMutexUnlock(*v1);
    a1 = xdict;
  }

  FigXPCRelease(a1);
}

BOOL poolBlockState_Create_cold_2(const CMBlockBufferCustomBlockSource *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", a1, v3, v4, v5, v8);
  return OUTLINED_FUNCTION_8_13(v6);
}

void poolBlockState_Create_cold_3()
{
  OUTLINED_FUNCTION_18_4();
  v3 = FigCFWeakReferenceHolderCreateWithReferencedObject(v2);
  dispatch_set_context(*v0, v3);
  dispatch_set_finalizer_f(*v0, poolBlockState_finalizeAgeOutTimer);
  *(v1 + 128) = 0;
  dispatch_source_set_event_handler_f(*v0, poolBlockState_ageOutTimerHandler);
  dispatch_resume(*v0);
}

size_t poolBlockState_Create_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x326, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x321, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x31B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x30E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x304, v3, v4, v5, v7);
  *a1 = result;
  return result;
}