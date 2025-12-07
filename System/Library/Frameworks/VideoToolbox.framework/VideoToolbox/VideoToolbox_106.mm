__CFString *vtPixelTransferChainCopyDebugDesc(CFArrayRef *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  CFArrayGetCount(a1[2]);
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPixelTransferChain %p [%p]>{", a1, v6);
  CFStringAppendFormat(Mutable, 0, @"\n}");
  return Mutable;
}

uint64_t VTTestMotionEstimationProcessor_CreateInstance(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  VTMotionEstimationProcessorGetClassID();
  v3 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t VTTestMotionEstimationProcessor_Invalidate(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != VTMotionEstimationProcessorGetTypeID())
  {
    return 4294954394;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  *DerivedStorage = 1;
  return result;
}

void VTTestMotionEstimationProcessor_Finalize(const void *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == VTMotionEstimationProcessorGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 16) = 0;
      v3 = *(DerivedStorage + 8);
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

__CFString *VTTestMotionEstimationProcessor_CopyDebugDescription(const void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == VTMotionEstimationProcessorGetTypeID())
    {
      CFStringAppendFormat(Mutable, 0, @"<VTTestMotionEstimationProcessor %p>", a1);
    }
  }

  return Mutable;
}

uint64_t VTTestMotionEstimationProcessor_CopyProperty(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294954394;
  }

  v6 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  result = 4294954394;
  if (a4 && v6 == TypeID)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      result = 0;
      if (*(DerivedStorage + 29))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v10;
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954396, "(Fig)", 124, v4);
    }
  }

  return result;
}

uint64_t VTTestMotionEstimationProcessor_SetProperty(const void *a1, const void *a2)
{
  if (!a1)
  {
    return 4294954394;
  }

  v4 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  if (!a2)
  {
    return 4294954394;
  }

  if (v4 != TypeID)
  {
    return 4294954394;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFStringGetTypeID())
  {
    return 4294954394;
  }

  CMBaseObjectGetDerivedStorage();
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954396, "(Fig)", 159, v2);
}

uint64_t VTTestMotionEstimationProcessor_StartSession(const void *a1, unint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  v5 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  v7 = 4294954394;
  if (a3 && v5 == TypeID && HIDWORD(a2) && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = FigCFDictionarySetInt32();
    if (v11 || (v11 = FigCFDictionarySetInt32(), v11) || (v11 = FigCFDictionarySetInt32(), v11) || (v11 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(a3, Mutable, v12, v13, v14, v15, v16, v17), v11))
    {
      v7 = v11;
      v18 = 0;
    }

    else
    {
      v18 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v19 = FigCFDictionarySetInt32();
      if (v19 || (v19 = FigCFDictionarySetInt32(), v19) || (v19 = FigCFDictionarySetInt32(), v19))
      {
        v7 = v19;
      }

      else
      {
        v7 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(a3, v18, v20, v21, v22, v23, v24, v25);
        if (!v7)
        {
          *(DerivedStorage + 16) = a3;
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  return v7;
}

uint64_t VTTestMotionEstimationProcessor_ProcessFrame(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, const void *a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294954394;
  }

  v10 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  v12 = 4294954394;
  if (!a3)
  {
    return v12;
  }

  if (v10 != TypeID)
  {
    return v12;
  }

  v13 = CFGetTypeID(a3);
  v14 = CVPixelBufferGetTypeID();
  if (!a4 || v13 != v14)
  {
    return v12;
  }

  v15 = CFGetTypeID(a4);
  if (v15 != CVPixelBufferGetTypeID())
  {
    return 4294954394;
  }

  if (a6)
  {
    v16 = CFGetTypeID(a6);
    if (v16 != CFDictionaryGetTypeID())
    {
      return 4294954394;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = VTMotionEstimationProcessorSessionCreateMotionVectorPixelBuffer(*(DerivedStorage + 16), &cf);
  v19 = cf;
  if (v18)
  {
    if (cf)
    {
      CFRelease(cf);
      v19 = 0;
      cf = 0;
    }

    v20 = 4294954392;
  }

  else
  {
    v20 = 0;
  }

  v12 = VTMotionEstimationProcessorSessionEmitMotionVectors(*(DerivedStorage + 16), a2, v20, 0, 0, v19);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t VTTestMotionEstimationProcessor_CopySupportedPropertyDictionary(const void *a1, void *a2)
{
  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_3, vtTestMotionEstimationProcessor_createSupportedPropertyDictionary);
  if (!a1)
  {
    return 4294954394;
  }

  v5 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  result = 4294954394;
  if (a2 && v5 == TypeID)
  {
    if (sVTTestMotionEstimationProcessorSupportedPropertyDictionary)
    {
      v8 = CFRetain(sVTTestMotionEstimationProcessorSupportedPropertyDictionary);
      result = 0;
      *a2 = v8;
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "(Fig)", 391, v2);
    }
  }

  return result;
}

uint64_t DolbyVisionDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 48);
    if (!v8)
    {
      v9 = 0;
LABEL_9:
      result = 0;
      *a4 = v9;
      return result;
    }

LABEL_8:
    v9 = CFRetain(v8);
    goto LABEL_9;
  }

  if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
  {
    v10 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 56))
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    v8 = *v10;
    goto LABEL_8;
  }

  v12 = *(DerivedStorage + 40);
  if (!v12)
  {
    return 4294954393;
  }

  return VTSessionCopyProperty(v12, a2, a3, a4);
}

uint64_t DolbyVisionDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFDictionaryGetTypeID())
      {
        v7 = *(DerivedStorage + 48);
        *(DerivedStorage + 48) = a3;
LABEL_5:
        CFRetain(a3);
        if (v7)
        {
          CFRelease(v7);
        }

        return 0;
      }
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 56) = Value;
        return result;
      }
    }

LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (CFEqual(a2, @"DecompressionSessionOptions"))
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFDictionaryGetTypeID())
      {
        v7 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = a3;
        goto LABEL_5;
      }
    }

    goto LABEL_20;
  }

  v12 = *(DerivedStorage + 40);
  if (!v12)
  {
    return 4294954393;
  }

  return VTSessionSetProperty(v12, a2, a3);
}

uint64_t DolbyVisionDecoder_StartSession(uint64_t a1, void *a2, const void *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTVideoDecoderGetCMBaseObject();
  v6 = CMBaseObjectGetDerivedStorage();
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v7 = CFPreferencesCopyAppValue(@"dovi_bsd_output_pixel_format", @"com.apple.coremedia");
  if (v7)
  {
    v8 = v7;
    v9 = 2016686640;
    if (CFStringCompare(v7, @"x420", 0))
    {
      if (CFStringCompare(v8, @"xf20", 0) == kCFCompareEqualTo)
      {
LABEL_6:
        v9 += 3276800;
        goto LABEL_7;
      }

      v9 = 1882468912;
      if (CFStringCompare(v8, @"p420", 0))
      {
        if (CFStringCompare(v8, @"pf20", 0))
        {
LABEL_8:
          CFRelease(v8);
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }

LABEL_7:
    *(v6 + 96) = v9;
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  VTVideoDecoderGetCMBaseObject();
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = *MEMORY[0x1E69600A0];
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69600A0]);
  if (Extension)
  {
    v14 = Extension;
    v15 = CFGetTypeID(Extension);
    if (v15 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v14, @"dvcC");
      v17 = MEMORY[0x1E6960158];
      if (Value)
      {
        v18 = Value;
        *(v11 + 100) = 1;
        *(v11 + 113) = 1;
        *(v11 + 108) = 1;
      }

      else
      {
        v19 = CFDictionaryGetValue(v14, @"dvvC");
        if (!v19)
        {
          goto LABEL_50;
        }

        v18 = v19;
        *(v11 + 112) = 1;
      }

      v20 = CFGetTypeID(v18);
      if (v20 != CFDataGetTypeID())
      {
        goto LABEL_50;
      }

      if (CFDataGetLength(v18) <= 8)
      {
        goto LABEL_127;
      }

      BytePtr = CFDataGetBytePtr(v18);
      v22 = *BytePtr;
      v23 = BytePtr[2];
      v24 = BytePtr[4];
      v25 = BytePtr[3];
      HIDWORD(v27) = v23;
      LODWORD(v27) = v25 << 24;
      v26 = v27 >> 27;
      if (v23 >= 2)
      {
        v28 = v23 >> 1;
      }

      else
      {
        v28 = v26;
      }

      if (v28 == 20)
      {
        if (v22 != 3)
        {
          goto LABEL_127;
        }
      }

      else if (v22 != 1)
      {
        goto LABEL_127;
      }

      if (!BytePtr[1] && (v25 & 1) != 0 && (v25 & 2) == 0 && (v24 & 0xC) == 0)
      {
        *(v11 + 24) = v28;
        *(v11 + 26) = (v25 & 4) != 0;
        if (v28 == 5)
        {
          OUTLINED_FUNCTION_2_21();
          goto LABEL_44;
        }

        v29 = v24 >> 4;
        v30 = MEMORY[0x1E6965F50];
        if (v28 != 10)
        {
          if (v28 == 8)
          {
            if (v29 != 4)
            {
              if (v29 != 2)
              {
                if (v29 != 1)
                {
                  goto LABEL_51;
                }

                *(v11 + 100) = 5;
                *(v11 + 104) = 256;
                goto LABEL_45;
              }

              v69 = 3;
LABEL_115:
              *(v11 + 100) = v69;
              v32 = *v30;
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_2_21();
            v71 = 4;
LABEL_117:
            *(v11 + 100) = v71;
            v32 = *v70;
            goto LABEL_46;
          }

          if (v28 != 20)
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_2_21();
          v31 = 10;
LABEL_44:
          *(v11 + 100) = v31;
LABEL_45:
          v32 = *v17;
LABEL_46:
          *(v11 + 120) = v32;
          goto LABEL_51;
        }

        if (v24 <= 0xF)
        {
          OUTLINED_FUNCTION_2_21();
          v31 = 6;
          goto LABEL_44;
        }

        if (v29 == 4)
        {
          OUTLINED_FUNCTION_2_21();
          v71 = 9;
          goto LABEL_117;
        }

        if (v29 == 2)
        {
          v69 = 8;
          goto LABEL_115;
        }

        if (v29 != 1)
        {
LABEL_51:
          if (*(v11 + 100))
          {
            goto LABEL_52;
          }

          goto LABEL_127;
        }

LABEL_50:
        *(v11 + 100) = 5;
        *(v11 + 120) = *v17;
        *(v11 + 105) = 1;
        goto LABEL_51;
      }
    }
  }

LABEL_127:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_19_1();
  v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  if (v39)
  {
    return v39;
  }

LABEL_52:
  VTVideoDecoderGetCMBaseObject();
  v33 = CMBaseObjectGetDerivedStorage();
  v34 = *(v33 + 4);
  switch(v34)
  {
    case 1667524657:
      v37 = 1667790435;
      goto LABEL_74;
    case 1684108849:
      v37 = 1635135537;
      break;
    case 2053400625:
      v37 = 2053666403;
      goto LABEL_76;
    case 1685481521:
      v37 = 1752589105;
      goto LABEL_74;
    case 1685481573:
      v37 = 1751479857;
      goto LABEL_74;
    default:
      OUTLINED_FUNCTION_3_18();
      if (!v35)
      {
        OUTLINED_FUNCTION_3_18();
        if (v35)
        {
          v38 = 30307;
        }

        else
        {
          OUTLINED_FUNCTION_3_18();
          if (!v35)
          {
            OUTLINED_FUNCTION_3_18();
            if (v35)
            {
              v37 = 1902998904;
            }

            else
            {
              if (v36 != 1684895096)
              {
                return 4294954394;
              }

              v37 = 1836415073;
            }

            goto LABEL_74;
          }

          v38 = 25974;
        }

        v37 = v38 | 0x71680000;
LABEL_74:
        v40 = 1;
        goto LABEL_75;
      }

      v37 = 1902212657;
      break;
  }

  v40 = 2;
LABEL_75:
  *(v33 + 108) = v40;
LABEL_76:
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v33 + 16));
  Extensions = CMFormatDescriptionGetExtensions(*(v33 + 16));
  v43 = MEMORY[0x1E695E480];
  if (!Extensions || (v44 = Extensions, (v45 = CFDictionaryGetValue(Extensions, v12)) == 0) || (v46 = v45, v47 = *v43, (v48 = CFDictionaryCreateMutableCopy(*v43, 0, v44)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_1();
    v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (v39)
    {
      return v39;
    }

LABEL_92:
    VTVideoDecoderGetCMBaseObject();
    v56 = CMBaseObjectGetDerivedStorage();
    VTDecoderSessionGetDestinationPixelBufferAttributes(a2);
    v57 = *v43;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_1();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
    }

    v59 = MutableCopy;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_1();
      v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
      v66 = v59;
LABEL_101:
      CFRelease(v66);
      return v39;
    }

    v61 = Mutable;
    if (*(v56 + 96))
    {
      FigCFArrayAppendInt32();
      v62 = *MEMORY[0x1E6966130];
      v63 = v59;
    }

    else
    {
      v64 = *MEMORY[0x1E6966130];
      if (CFDictionaryGetValue(v59, *MEMORY[0x1E6966130]))
      {
        goto LABEL_98;
      }

      LOBYTE(v74) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA())
      {
        v68 = *MEMORY[0x1E695E4D0];
        if (v68 == CFDictionaryGetValue(v59, *MEMORY[0x1E69660C8]))
        {
          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
        }
      }

      if (dovi_shouldAllowInterchangeCompressedPixelFormatForHDRPlaybackToCA(645428784))
      {
        FigCFArrayAppendInt32();
      }

      if (dovi_shouldAllowInterchangeCompressedPixelFormatForHDRPlaybackToCA(645424688))
      {
        FigCFArrayAppendInt32();
      }

      CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFArrayAppendInt32();
      CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFArrayAppendInt32();
      v63 = v59;
      v62 = v64;
    }

    CFDictionarySetValue(v63, v62, v61);
LABEL_98:
    v74 = xmmword_1F0390F28;
    v65 = VTDecompressionSessionCreateWithOptions(v57, *(v56 + 32), *(v56 + 48), v59, &v74, *(v56 + 64), (v56 + 40));
    if (!v65)
    {
      v65 = VTDecompressionSessionSetMultiImageCallback(*(v56 + 40), dovi_multiImageDecompressionOutput, 0);
    }

    v39 = v65;
    CFRelease(v59);
    v66 = v61;
    goto LABEL_101;
  }

  v49 = v48;
  v50 = a2;
  v51 = CFDictionaryCreateMutableCopy(v47, 0, v46);
  if (!v51)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_1();
    v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
    v55 = v49;
    goto LABEL_91;
  }

  v52 = v51;
  if (*(v33 + 113))
  {
    v53 = @"dvcC";
LABEL_87:
    CFDictionaryRemoveValue(v51, v53);
    goto LABEL_88;
  }

  if (*(v33 + 112))
  {
    CFDictionaryRemoveValue(v51, @"dvvC");
    if (*(v33 + 100) != 2)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (*(v33 + 100) == 5)
  {
LABEL_86:
    CFDictionaryRemoveValue(v49, *MEMORY[0x1E6960080]);
    v53 = *MEMORY[0x1E6960020];
    v51 = v49;
    goto LABEL_87;
  }

LABEL_88:
  CFDictionarySetValue(v49, v12, v52);
  CFDictionaryRemoveValue(v49, *MEMORY[0x1E69600D0]);
  CFDictionaryRemoveValue(v49, *MEMORY[0x1E69600C8]);
  v54 = *(v33 + 120);
  if (v54)
  {
    CFDictionarySetValue(v49, *MEMORY[0x1E6965F30], v54);
  }

  v39 = CMVideoFormatDescriptionCreate(v47, v37, Dimensions.width, Dimensions.height, v49, (v33 + 32));
  CFRelease(v49);
  v55 = v52;
LABEL_91:
  CFRelease(v55);
  a2 = v50;
  v43 = MEMORY[0x1E695E480];
  if (!v39)
  {
    goto LABEL_92;
  }

  return v39;
}

uint64_t DolbyVisionDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  v11 = 0;
  v12 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v11, v12);
LABEL_13:
    Mutable = 0;
    goto LABEL_5;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    v7 = VTSessionCopySupportedPropertyDictionary(v6, &cf);
    if (!v7)
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v4);
      CFDictionarySetValue(Mutable, @"PropagatePerFrameHDRDisplayMetadata", v4);
      CFDictionarySetValue(Mutable, @"PixelTransferProperties", v4);
      v11 = cf;
      v12 = Mutable;
      FigCFCreateCombinedDictionary();
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  Mutable = 0;
  v7 = 4294954393;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v7;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_16(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCompleteTiles(uint64_t a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v2)
  {
    return 4294954393;
  }

  if (*(v1 + 168))
  {
    v3 = *(v1 + 168);

    return VTTileCompressionSessionRemote_CompleteTiles(v3);
  }

  else
  {
    v5 = *(v1 + 80);
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (*v6 >= 3uLL && (v7 = v6[20]) != 0)
    {

      return v7(v5);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t VTTileCompressionSessionCreate(uint64_t a1, unint64_t a2, int a3, const __CFDictionary *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = HIDWORD(a2);
  if (a9)
  {
    v11 = a2 < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || SHIDWORD(a2) < 1)
  {
    return 4294954394;
  }

  *a9 = 0;
  MEMORY[0x193AE3010](&VTTileCompressionSessionGetTypeID_sRegisterVTTileCompressionSessionOnce, RegisterVTTileCompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v21 = Instance;
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(Instance, v20))
    {
      IsVideocodecd = FigServer_IsVideocodecd();
      if (IsVideocodecd)
      {
        goto LABEL_17;
      }
    }

    else
    {
      IsVideocodecd = FigServer_IsServerProcess();
      if (IsVideocodecd)
      {
        goto LABEL_17;
      }
    }

    if (!VTShouldRunVideoEncodersInProcess(IsVideocodecd, v23))
    {
      v76 = VTTileCompressionSessionRemote_Create(v21, a1, a2, a3, a4, a5, a6, a7, a8, (v21 + 168));
      if (!v76)
      {
LABEL_49:
        VideoEncoderInstanceInternal = 0;
        *(v21 + 184) = MEMORY[0x193AE2670]();
        *a9 = v21;
        return VideoEncoderInstanceInternal;
      }

      VideoEncoderInstanceInternal = v76;
LABEL_46:
      CFRelease(v21);
      return VideoEncoderInstanceInternal;
    }

LABEL_17:
    *(v21 + 20) = a2;
    *(v21 + 24) = v10;
    *(v21 + 16) = a3;
    if (a4)
    {
      v25 = CFRetain(a4);
    }

    else
    {
      v25 = 0;
    }

    *(v21 + 32) = v25;
    if (a5)
    {
      v26 = CFRetain(a5);
    }

    else
    {
      v26 = 0;
    }

    *(v21 + 40) = v26;
    *(v21 + 48) = a7;
    *(v21 + 56) = a8;
    label = 0;
    asprintf(&label, "vttile-encoder-pending-tile-queue-%p", v21);
    *(v21 + 136) = dispatch_queue_create(label, 0);
    free(label);
    *(v21 + 144) = 0;
    asprintf(&label, "vttile-encoder-callback-access-queue-%p", v21);
    *(v21 + 152) = dispatch_queue_create(label, 0);
    free(label);
    v27 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable && (v29 = CFDictionaryCreate(v27, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      v30 = v29;
      v31 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_4_18();
      CFDictionarySetValue(v43, v44, v45);
      CFRelease(v30);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_7();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    *(v21 + 160) = Mutable;
    CFGetAllocator(v21);
    v46 = OUTLINED_FUNCTION_7_11();
    VideoEncoderInstanceInternal = VTSelectAndCreateVideoEncoderInstanceInternal(v46, v47, v48, v49, 0, v50, 0, v51, 0);
    if (!VideoEncoderInstanceInternal)
    {
      do
      {
        *(v21 + 64) = v21;
        v53 = *(v21 + 32);
        if (v53)
        {
          Value = CFDictionaryGetValue(v53, @"EncoderUsage");
          if (Value)
          {
            v55 = Value;
            VTVideoEncoderGetCMBaseObject();
            v57 = v56;
            v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v58)
            {
              v58(v57, @"EncoderUsage", v55);
            }
          }
        }

        v59 = *(v21 + 80);
        v60 = *(v21 + 32);
        v61 = *(v21 + 20);
        v62 = *(CMBaseObjectGetVTable() + 16);
        if (*v62 >= 3uLL && (v63 = v62[17]) != 0)
        {
          v64 = v63(v59, v21 + 64, v60, v61, a6);
          if (!v64)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v64 = -12782;
        }

        if (VideoEncoderInstanceInternal)
        {
          VideoEncoderInstanceInternal = VideoEncoderInstanceInternal;
        }

        else
        {
          VideoEncoderInstanceInternal = v64;
        }

        VTVideoEncoderGetCMBaseObject();
        if (v65)
        {
          v66 = v65;
          v67 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v67)
          {
            v67(v66);
          }
        }

        v68 = *(v21 + 80);
        if (v68)
        {
          CFRelease(v68);
          *(v21 + 80) = 0;
        }

        CFGetAllocator(v21);
        v69 = OUTLINED_FUNCTION_7_11();
      }

      while (!VTSelectAndCreateVideoEncoderInstanceInternal(v69, v70, v71, v72, v73, v74, 0, v75, 0));
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_7();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, v78, v79);
    goto LABEL_46;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_7();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTileCompressionSessionPrepareToEncodeTiles(void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v4)
  {
    return 4294954393;
  }

  v5 = v3;
  v6 = v2;
  v7 = a1[21];
  if (v7)
  {

    return VTTileCompressionSessionRemote_PrepareToEncodeTiles(v7, v2, v3);
  }

  else
  {
    v9 = a1[10];
    v10 = *(CMBaseObjectGetVTable() + 16);
    if (*v10 >= 3uLL && (v11 = v10[18]) != 0)
    {
      result = v11(v9, v6);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      result = 4294954514;
      if (!v5)
      {
        return result;
      }
    }

    *v5 = a1[13];
  }

  return result;
}

uint64_t VTTileCompressionSessionEncodeTile(uint64_t a1)
{
  v26 = 0;
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    return 4294954393;
  }

  v9 = v7;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = *(a1 + 168);
  if (!v14)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2000000000;
    v40 = 0;
    v16 = OUTLINED_FUNCTION_2_22();
    v28 = 0x40000000;
    v29 = __vtTileCompressionSessionTrackTileEnteringEncoder_block_invoke;
    v30 = &unk_1E72C9498;
    v35 = v12;
    v36 = v11;
    v33 = a1;
    v34 = &v26;
    v31 = v18;
    v32 = v17;
    dispatch_sync(v16, block);
    v19 = *(v38 + 6);
    _Block_object_dispose(&v37, 8);
    if (!v19)
    {
      v20 = *(a1 + 80);
      v21 = v26;
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (*v22 >= 3uLL && (v23 = v22[19]) != 0)
      {
        v19 = v23(v20, v21, v13, v12, v11, v10, v9);
        ++*(a1 + 196);
        if (!v19)
        {
          return v19;
        }
      }

      else
      {
        ++*(a1 + 196);
        v19 = 4294954514;
      }

      v37 = 0;
      v24 = OUTLINED_FUNCTION_2_22();
      v28 = 0x40000000;
      v29 = __vtTileCompressionSessionTrackTileLeavingEncoder_block_invoke;
      v30 = &__block_descriptor_tmp_17_4;
      v31 = a1;
      v32 = v25;
      v33 = &v37;
      dispatch_sync(v24, block);
      free(v37);
    }

    return v19;
  }

  return VTTileCompressionSessionRemote_EncodeTile(v14, v2, v3, v4, v5, v6, v7);
}

uint64_t VTTileEncoderSessionSetTileAttributes(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a1[1])
  {
    v7 = *a1;
    if (*a1)
    {
      if (*(v7 + 176) == 1)
      {
        return 4294954393;
      }

      v19 = v3;
      v20 = v4;
      v8 = OUTLINED_FUNCTION_3_19(v7);
      v13 = 0x40000000;
      v14 = __VTTileEncoderSessionSetTileAttributes_block_invoke;
      v15 = &__block_descriptor_tmp_9_2;
      v16 = v10;
      v17 = v9;
      v18 = v11;
      dispatch_sync(v8, block);
      return 0;
    }

    return 4294954394;
  }

  v5 = a1[1];

  return VTParavirtualizationHostEncoderSessionSetTileAttributes(v5, a2, a3);
}

uint64_t VTTileEncoderSessionCreateVideoFormatDescription(void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (a1[1])
  {
    OUTLINED_FUNCTION_5_15();

    return VTParavirtualizationHostEncoderSessionCreateTileVideoFormatDescription(v1, v2, v3, v4, v5, v6);
  }

  if (!*a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v9)
  {
    return 4294954393;
  }

  CFGetAllocator(v8);
  OUTLINED_FUNCTION_5_15();

  return CMVideoFormatDescriptionCreate(v10, v11, v12, v13, v14, v15);
}

uint64_t VTTileEncoderSessionSetTileEncodeRequirements(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a1[1])
  {
    v7 = *a1;
    if (*a1)
    {
      if (*(v7 + 176) == 1)
      {
        return 4294954393;
      }

      v19 = v3;
      v20 = v4;
      v8 = OUTLINED_FUNCTION_3_19(v7);
      v13 = 0x40000000;
      v14 = __VTTileEncoderSessionSetTileEncodeRequirements_block_invoke;
      v15 = &__block_descriptor_tmp_10_7;
      v16 = v10;
      v17 = v9;
      v18 = v11;
      dispatch_sync(v8, block);
      return 0;
    }

    return 4294954394;
  }

  v5 = a1[1];

  return VTParavirtualizationHostEncoderSessionSetTileEncodeRequirements(v5, a2, a3);
}

void VTTileCompressionSessionInvalidate_cold_1(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 80) && *(a1 + 144))
  {
    VTTileCompressionSessionCompleteTiles(a1);
  }

  VTVideoEncoderGetCMBaseObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }
  }

  *a2 = 1;
  if (*(a1 + 180))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      MEMORY[0x193AE2670]();
      FigHostTimeToNanoseconds();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetBoolean();
      FigLogPowerEvent();
      CFRelease(v8);
    }
  }
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_CreateInstance(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294954394;
  }

  VTVideoEncoderGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    return 4294954392;
  }

  return v3;
}

uint64_t TestIPBVideoEncoder_StartSession(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *DerivedStorage = a2;
  *(DerivedStorage + 76) = 0xF000000140;
  Mutable = CFDictionaryCreateMutable(v5, 4, v6, v7);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  v10 = VTEncoderSessionSetPixelBufferAttributes(a2, Mutable);
  if (!v10)
  {
    v10 = CMVideoFormatDescriptionCreate(v5, 0x69706220u, *(DerivedStorage + 76), *(DerivedStorage + 80), 0, (DerivedStorage + 104));
  }

  v11 = v10;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

uint64_t TestIPBVideoEncoder_encodeFrameCommon(uint64_t a1, CMTimeValue a2, __int128 *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a4 && (v7 = CFDictionaryGetValue(a4, @"EncoderForceKeyframe")) != 0 && CFEqual(v7, *MEMORY[0x1E695E4D0]) != 0;
  if (*(DerivedStorage + 24) && !v8 && *(DerivedStorage + 112) != 1)
  {
    --*(DerivedStorage + 112);
    v13 = 120;
    v17 = 80;
    if (*(DerivedStorage + 25))
    {
      Count = CFArrayGetCount(*(DerivedStorage + 120));
      v12 = 0;
      v19 = *(DerivedStorage + 36);
      v9 = Count < v19;
      v16 = Count >= v19;
      if (Count >= v19)
      {
        v17 = 80;
      }

      else
      {
        v17 = 88;
      }

      if (Count >= v19)
      {
        v13 = 66;
      }

      else
      {
        v13 = 120;
      }

      v15 = 1;
      v10 = Count < v19;
      v14 = Count >= v19;
      goto LABEL_25;
    }

    v9 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    v10 = 1;
    goto LABEL_24;
  }

  *(DerivedStorage + 112) = *(DerivedStorage + 28);
  if (*(DerivedStorage + 40))
  {
    if (*(DerivedStorage + 32))
    {
      v9 = 0;
      v10 = 0;
      v11 = *(DerivedStorage + 88);
      v12 = v11 != 1;
      if (v11 == 1)
      {
        v13 = 98;
      }

      else
      {
        v13 = 66;
      }
    }

    else
    {
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v13 = 80;
    }

    v16 = 1;
    v17 = 73;
    v14 = 1;
LABEL_24:
    v15 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 80;
  v16 = 1;
  v17 = 73;
  v10 = 1;
LABEL_25:
  OUTLINED_FUNCTION_2_23();
  result = VTEncoderSessionEnqueuePresentationTimeStamp(v20, &value);
  if (!result)
  {
    v22 = v12;
    v23 = v10;
    v24 = v9;
    v29 = v14;
    v25 = v22;
    v26 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = v26 + 1;
    if (!v16)
    {
      v32 = *a3;
      v33 = *(a3 + 2);
      v27 = CMBaseObjectGetDerivedStorage();
      value.value = a2;
      *&value.timescale = v32;
      v35 = v33;
      v36 = v26;
      CFArrayInsertValueAtIndex(*(v27 + 120), 0, &value);
    }

    if ((v15 & 1) != 0 || (result = TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(a1, v13), !result))
    {
      if (v24)
      {
        if (v23)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_23();
        result = TestIPBVideoEncoder_emitFrame(a1, v17, v25, a2, &value, v26);
        v28 = v29;
        if (result)
        {
          v28 = 0;
        }

        if (!v28)
        {
          return result;
        }
      }

      return TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(a1, v13);
    }
  }

  return result;
}

uint64_t TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  while (CFArrayGetCount(*(DerivedStorage + 120)) >= 1)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v5 + 120);
    Count = CFArrayGetCount(v6);
    ValueAtIndex = CFArrayGetValueAtIndex(v6, Count - 1);
    v9 = *ValueAtIndex;
    v14 = *(ValueAtIndex + 8);
    v10 = *(ValueAtIndex + 8);
    v11 = *(v5 + 120);
    v12 = CFArrayGetCount(v11);
    CFArrayRemoveValueAtIndex(v11, v12 - 1);
    result = TestIPBVideoEncoder_emitFrame(a1, v2, 0, v9, &v14, v10);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t TestIPBVideoEncoder_emitFrame(uint64_t a1, int a2, int a3, uint64_t a4, CMTime *a5, int a6)
{
  *&v48[255] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v48, 0xFFuLL);
  bzero(v45, 0x101uLL);
  bzero(v44, 0x101uLL);
  bzero(v43, 0x101uLL);
  dataBuffer = 0;
  dataLength = 0;
  sbuf = 0;
  v35 = *MEMORY[0x1E6960C70];
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  sampleTimingArray.duration.epoch = v10;
  memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
  LODWORD(v11) = 1;
  __src = 1;
  v47 = a2;
  v12 = *(DerivedStorage + 84);
  *(DerivedStorage + 84) = v12 + 1;
  if (v12 >= 10)
  {
    v13 = v12;
    do
    {
      LODWORD(v11) = v11 + 1;
      v14 = v13 > 0x63;
      v13 /= 0xAu;
    }

    while (v14);
  }

  v45[0] = v11;
  v15 = v11 + 1;
  v11 = v11;
  do
  {
    v45[v11--] = v12 % 10 + 48;
    --v15;
    v12 /= 10;
  }

  while (v15 > 1);
  v16 = 1;
  if (a6 >= 10)
  {
    v17 = a6;
    do
    {
      ++v16;
      v14 = v17 > 0x63;
      v17 /= 0xAu;
    }

    while (v14);
  }

  v44[0] = v16;
  v18 = v16;
  v19 = v16 + 1;
  do
  {
    v44[v18--] = a6 % 10 + 48;
    --v19;
    a6 /= 10;
  }

  while (v19 > 1);
  IPB_ClearStr(v43);
  DataFromFrameStrings = IPB_SimulatePrediction((DerivedStorage + 128), (DerivedStorage + 385), (DerivedStorage + 642), &__src, v45, v43);
  if (DataFromFrameStrings || (DataFromFrameStrings = IPB_MakeDataFromFrameStrings(sourceBytes, &dataLength, &__src, v45, v44, v43), DataFromFrameStrings) || (a2 == 73 ? (v21 = a3 == 0) : (v21 = 0), v21 ? (v22 = 0) : (v22 = 1), (v23 = *MEMORY[0x1E695E480], DataFromFrameStrings = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, dataLength, *MEMORY[0x1E695E480], 0, 0, dataLength, 1u, &dataBuffer), DataFromFrameStrings) || (DataFromFrameStrings = CMBlockBufferReplaceDataBytes(sourceBytes, dataBuffer, 0, dataLength), DataFromFrameStrings) || (sampleTimingArray.presentationTimeStamp = *a5, *&sampleTimingArray.duration.value = v35, sampleTimingArray.duration.epoch = v10, DataFromFrameStrings = VTEncoderSessionDequeueDecodeTimeStamp(*DerivedStorage, &sampleTimingArray.decodeTimeStamp), DataFromFrameStrings)))
  {
    v33 = DataFromFrameStrings;
    v25 = 0;
    v26 = a4;
  }

  else
  {
    v24 = CMSampleBufferCreate(v23, dataBuffer, 1u, 0, 0, *(DerivedStorage + 104), 1, 1, &sampleTimingArray, 1, &dataLength, &sbuf);
    v25 = sbuf;
    v26 = a4;
    if (!v24)
    {
      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
      if (!SampleAttachmentsArray)
      {
        goto LABEL_34;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      CFDictionaryRemoveAllValues(ValueAtIndex);
      if (!ValueAtIndex)
      {
        goto LABEL_34;
      }

      if (v22)
      {
        v29 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v29);
        if (a3)
        {
          v30 = *MEMORY[0x1E6960460];
          v31 = ValueAtIndex;
          v32 = v29;
LABEL_33:
          CFDictionarySetValue(v31, v30, v32);
LABEL_34:
          v33 = 0;
          v48[__src - 1] = 0;
          v45[v45[0] + 1] = 0;
          v44[v44[0] + 1] = 0;
          v43[v43[0] + 1] = 0;
          v25 = sbuf;
          goto LABEL_35;
        }

        v30 = *MEMORY[0x1E6960450];
        if ((a2 & 0xFFFFFFDF) == 0x42)
        {
          v32 = *MEMORY[0x1E695E4C0];
        }

        else
        {
          v32 = v29;
        }
      }

      else
      {
        v30 = *MEMORY[0x1E6960400];
        v32 = *MEMORY[0x1E695E4C0];
      }

      v31 = ValueAtIndex;
      goto LABEL_33;
    }

    v33 = v24;
  }

LABEL_35:
  VTEncoderSessionEmitEncodedFrame(*DerivedStorage, v26, v33, 0, v25);
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v33;
}

void TestIPBVideoEncoder_CreateSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(v0, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"AllowTemporalCompression", v2);
    OUTLINED_FUNCTION_1_23(v4, @"AllowFrameReordering");
    OUTLINED_FUNCTION_1_23(v5, @"MaxKeyFrameInterval");
    OUTLINED_FUNCTION_1_23(v6, @"AllowOpenGOP");
    OUTLINED_FUNCTION_1_23(v7, @"Quality");
    OUTLINED_FUNCTION_1_23(v8, @"MaxConsecutiveBFrames");
    OUTLINED_FUNCTION_1_23(v9, @"AllowDelayedIFrames");
    OUTLINED_FUNCTION_1_23(v10, @"MVHEVCVideoLayerIDs");
    OUTLINED_FUNCTION_1_23(v11, @"MVHEVCViewIDs");
    OUTLINED_FUNCTION_1_23(v12, @"MVHEVCLeftAndRightViewIDs");
    OUTLINED_FUNCTION_1_23(v13, @"ExpectedFrameRate");
    sTestIPBVideoEncoder_SupportedPropertyDictionary = Mutable;

    CFRelease(v2);
  }
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

CGColorSpaceRef createAppleP3ColorSpace()
{
  __dst[14] = *MEMORY[0x1E69E9840];
  v26 = xmmword_18FED0CA0;
  v27 = unk_18FED0CB0;
  v28 = xmmword_18FED0CC0;
  v29 = unk_18FED0CD0;
  v25 = 0x3FFF604189374BC7;
  memcpy(__dst, off_1E72C94D8, 0x70uLL);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  *values = 0u;
  v31 = 0u;
  if (!MEMORY[0x1EEE76CE8])
  {
    v20 = 0;
    v11 = 0;
LABEL_27:
    v13 = 0;
LABEL_29:
    v15 = 0;
    goto LABEL_31;
  }

  values[0] = CFRetain(@"displayRGB");
  values[1] = CFRetain(@"Apple P3");
  *&v31 = OUTLINED_FUNCTION_1_24(values[1], v0, &v25);
  *(&v31 + 1) = OUTLINED_FUNCTION_1_24(v31, v1, &v25);
  *&v32 = OUTLINED_FUNCTION_1_24(*(&v31 + 1), v2, &v25);
  *(&v32 + 1) = OUTLINED_FUNCTION_1_24(v32, v3, &v28);
  *&v33 = OUTLINED_FUNCTION_1_24(*(&v32 + 1), v4, &v28 + 8);
  *(&v33 + 1) = OUTLINED_FUNCTION_1_24(v33, v5, &v26);
  *&v34 = OUTLINED_FUNCTION_1_24(*(&v33 + 1), v6, &v26 + 8);
  *(&v34 + 1) = OUTLINED_FUNCTION_1_24(v34, v7, &v27);
  *&v35 = OUTLINED_FUNCTION_1_24(*(&v34 + 1), v8, &v27 + 8);
  *(&v35 + 1) = OUTLINED_FUNCTION_1_24(v35, v9, &v29);
  *&v36 = OUTLINED_FUNCTION_1_24(*(&v35 + 1), v10, &v29 + 8);
  *(&v36 + 1) = CFStringCreateWithCString(0, "Copyright 2007 Apple Inc.", 0);
  v11 = CFDictionaryCreate(0, __dst, values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v11)
  {
    v20 = 0;
    goto LABEL_27;
  }

  Profile = ColorSyncMakeProfile();
  v13 = Profile;
  if (!Profile)
  {
    v20 = 0;
    goto LABEL_29;
  }

  MutableCopy = ColorSyncProfileCreateMutableCopy(Profile);
  v15 = MutableCopy;
  if (MutableCopy)
  {
    v16 = ColorSyncProfileCopyHeader(MutableCopy);
    if (v16)
    {
      v17 = CFDataCreateMutableCopy(0, 128, v16);
      v18 = v17;
      if (v17 && (CFDataSetLength(v17, 128), (MutableBytePtr = CFDataGetMutableBytePtr(v18)) != 0))
      {
        *(MutableBytePtr + 3) = 0x10001000407D5;
        *(MutableBytePtr + 8) = 65537;
        ColorSyncProfileSetHeader(v15, v18);
        v20 = CGColorSpaceCreateWithPlatformColorSpace(v15);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      v18 = 0;
    }

    goto LABEL_9;
  }

  v20 = 0;
LABEL_31:
  v18 = 0;
  v16 = 0;
LABEL_9:
  v21 = 13;
  do
  {
    v22 = values[v21];
    if (v22)
    {
      CFRelease(v22);
    }

    v23 = v21-- + 1;
  }

  while (v23 > 1);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v20;
}

uint64_t vtcg_createCGCompatiblePixelBuffer(__CVBuffer *a1, unint64_t a2, CVPixelBufferRef *a3)
{
  pixelBufferAttributes = 0;
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(a1);
  if (!Width || (v7 = Width, (Height = CVPixelBufferGetHeight(a1)) == 0) || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_22:
    v15 = v16;
    goto LABEL_13;
  }

  v9 = Height;
  CGCompatiblePixelFormat = vtcg_getCGCompatiblePixelFormat(a1);
  v11 = CGCompatiblePixelFormat;
  if (!a2)
  {
    a2 = calculateBytesPerRow(CGCompatiblePixelFormat, v7);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v13 = Mutable;
    v14 = FigCFDictionarySetInt32();
    if (!v14)
    {
      v14 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v13, 2, &pixelBufferAttributes);
    }

    v15 = v14;
    CFRelease(v13);
    if (!v15)
    {
LABEL_10:
      v16 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v7, v9, v11, pixelBufferAttributes, &pixelBufferOut);
      if (!v16)
      {
        if (CVPixelBufferGetBytesPerRow(pixelBufferOut) == a2)
        {
          v15 = 0;
          *a3 = pixelBufferOut;
          pixelBufferOut = 0;
          goto LABEL_13;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      goto LABEL_22;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixelBufferAttributes, pixelBufferOut, v20);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  if (pixelBufferAttributes)
  {
    CFRelease(pixelBufferAttributes);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v15;
}

uint64_t VTCreateCGImageFromIOSurfaceAndAttributes(__IOSurface *a1, const __CFDictionary *a2, int a3, uint64_t a4, void *a5)
{
  v44[0] = 0;
  v42 = 0;
  v43 = 0;
  pixelBufferOut = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  if (a1)
  {
    if (a5)
    {
      IOSurface = a1;
      Width = IOSurfaceGetWidth(a1);
      Height = IOSurfaceGetHeight(IOSurface);
      v13 = MEMORY[0x1E695E480];
      v35 = Width;
      v36 = Height;
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6965CE8]);
        if (Value)
        {
          ColorSpaceFromAttachments = Value;
LABEL_6:
          v16 = 0;
LABEL_12:
          PixelFormat = IOSurfaceGetPixelFormat(IOSurface);
          v19 = PixelFormat;
          if (a4 || !vtcg_bufferContainsAlpha(PixelFormat))
          {
            v20 = 0;
            if (a3)
            {
              goto LABEL_28;
            }
          }

          else
          {
            bzero(v37, 0x84uLL);
            IOSurfaceGetBulkAttachments();
            if (v37[100] == 1)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }

            if (a3)
            {
              goto LABEL_28;
            }
          }

          if (v19 != 32 && v19 != 1111970369 && v19 != 1380411457)
          {
            v28 = CVPixelBufferCreateWithIOSurface(*v13, IOSurface, a2, &v39);
            if (!v28)
            {
              vtcg_createCGCompatiblePixelBuffer(v39, 0, &v38);
              if (v38)
              {
                v28 = vtcg_convertPixelBuffer(v39, v38);
                if (!v28)
                {
                  IOSurface = CVPixelBufferGetIOSurface(v38);
                  v23 = vtcg_createDeferredImageProviderWithPixelBuffer(v38, v44, &v43, &v42);
LABEL_29:
                  v24 = v23;
                  if (!v23)
                  {
                    v24 = vtcg_createCGImageWithProvider(v42, v44[0], v35, v36, v43, v20, a4, IOSurface, ColorSpaceFromAttachments, &v41);
                    v25 = v41;
                    if (v24)
                    {
                      goto LABEL_33;
                    }

                    *a5 = v41;
                    v41 = 0;
                  }

                  goto LABEL_32;
                }
              }

              else
              {
                fig_log_get_emitter();
                v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
              }
            }

            v24 = v28;
LABEL_32:
            v25 = 0;
            goto LABEL_33;
          }

LABEL_28:
          v23 = vtcg_createDeferredImageProviderWithIOSurface(IOSurface, a2, v44, &v43, &v42);
          goto LABEL_29;
        }

        CFDictionaryGetValue(a2, *MEMORY[0x1E6965D88]);
        if (FigCFEqual())
        {
          AppleP3ColorSpace = createAppleP3ColorSpace();
          if (AppleP3ColorSpace)
          {
            goto LABEL_10;
          }
        }

        AppleP3ColorSpace = CVImageBufferCreateColorSpaceFromAttachments(a2);
        if (AppleP3ColorSpace)
        {
          goto LABEL_10;
        }
      }

      AppleP3ColorSpace = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696CEE0]);
      if (AppleP3ColorSpace)
      {
LABEL_10:
        ColorSpaceFromAttachments = AppleP3ColorSpace;
      }

      else
      {
        CVPixelBufferCreateWithIOSurface(*v13, IOSurface, 0, &pixelBufferOut);
        if (!pixelBufferOut)
        {
          ColorSpaceFromAttachments = 0;
          goto LABEL_6;
        }

        v27 = CVBufferCopyAttachments(pixelBufferOut, kCVAttachmentMode_ShouldPropagate);
        v16 = v27;
        if (!v27)
        {
          ColorSpaceFromAttachments = 0;
          goto LABEL_12;
        }

        ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v27);
        CFRelease(v16);
      }

      v16 = ColorSpaceFromAttachments;
      goto LABEL_12;
    }

    emitter = fig_log_get_emitter();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTCGUtilities >>>>", 1094, v5);
  }

  else
  {
    v29 = fig_log_get_emitter();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 4294954394, "<<<< VTCGUtilities >>>>", 1093, v5);
  }

  v24 = v30;
  v25 = 0;
  v16 = 0;
LABEL_33:
  CGImageRelease(v25);
  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  CGDataProviderRelease(v42);
  if (v16)
  {
    CFRelease(v16);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v24;
}

uint64_t vtcg_getCGCompatiblePixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = PixelFormatType;
  if (PixelFormatType != 32 && PixelFormatType != 1111970369 && PixelFormatType != 1380411457)
  {
    v5 = 1111970369;
    v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], PixelFormatType);
    if (v6)
    {
      v7 = v6;
      if (CFDictionaryGetValue(v6, *MEMORY[0x1E6966218]))
      {
        if (FigCFNumberGetUInt64() <= 9)
        {
          v5 = 1111970369;
        }

        else
        {
          v5 = 1380411457;
        }
      }

      CFRelease(v7);
      return v5;
    }

    else
    {
      return 1111970369;
    }
  }

  return v2;
}

__IOSurface *_getImageBytePointerFromIOSurface(uint64_t a1)
{
  v10 = 0;
  cf = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  BaseAddress = *a1;
  if (!*a1)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 24);
  if (!v3 || (v4 = *(a1 + 8), v5 = *(a1 + 16), !IOSurfaceGetWidth(*a1)) || !IOSurfaceGetHeight(BaseAddress))
  {
LABEL_33:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_34;
  }

  PixelFormat = IOSurfaceGetPixelFormat(BaseAddress);
  if (PixelFormat == 32 || PixelFormat == 1111970369 || PixelFormat == 1380411457)
  {
    if (IOSurfaceLock(BaseAddress, 1u, 0))
    {
      goto LABEL_34;
    }

    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
    if (BaseAddress)
    {
      goto LABEL_17;
    }

LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  if (!v4)
  {
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], BaseAddress, v5, &cf) || vtcg_createCGCompatiblePixelBuffer(cf, v3, &v10) || vtcg_convertPixelBuffer(cf, v10))
    {
      goto LABEL_34;
    }

    v4 = v10;
  }

  if (CVPixelBufferLockBaseAddress(v4, 1uLL))
  {
LABEL_34:
    BaseAddress = 0;
    goto LABEL_17;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v4);
  if (BaseAddress)
  {
    if (v10)
    {
      *(a1 + 8) = v10;
      v10 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return BaseAddress;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vtcg_createDeferredImageProviderWithPixelBuffer_cold_1(const void **a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  _releaseInfoFromPixelBuffer(a1);
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_convertPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_convertPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vtcg_createDeferredImageProviderWithIOSurface_cold_1(CFTypeRef *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  _releaseInfoFromIOSurface(a1);
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterSessionCompleteFrames(uint64_t a1)
{
  if (!a1 || *(a1 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v2 = *(a1 + 256);
    if (!v2)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v5)
        {
          return 4294954514;
        }

        v6 = *MEMORY[0x1E6960C88];
        v7 = *(MEMORY[0x1E6960C88] + 16);
        result = v5(v4, &v6);
        if (result)
        {
          return result;
        }

        if (!*(a1 + 240))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, DWORD2(v6), v7);
        }

        dispatch_group_wait(*(a1 + 248), 0xFFFFFFFFFFFFFFFFLL);
      }

      return 0;
    }

    return VTTemporalFilterSessionRemote_CompleteFrames(v2);
  }
}

uint64_t VTTemporalFilterSessionSessionSetProperty(uint64_t a1, CFTypeRef cf2, const void *a3)
{
  if (*(a1 + 16))
  {
LABEL_4:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (!*(a1 + 256))
  {
    if (vtTemporalFilterSessionIsPropertyHandledByVideoToolbox(cf2))
    {
      if (CFEqual(@"FilterSourcePixelBufferAttributes", cf2) || CFEqual(@"FilterDestinationPixelBufferAttributes", cf2) || CFEqual(@"MaxLookBehind", cf2) || CFEqual(@"MaxLookAhead", cf2))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_1();
        v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
      }

      else if (CFEqual(@"RealTime", cf2) || CFEqual(@"AllowPixelTransfer", cf2))
      {
        v7 = vtTemporalFilterSessionValidateBooleanProperty(a3);
        if (v7)
        {
          return v7;
        }
      }

      else
      {
        v7 = 0;
      }

      if (CFEqual(@"AllowPixelTransfer", cf2))
      {
        *(a1 + 89) = *MEMORY[0x1E695E4C0] == a3;
        return v7;
      }

      if (CFEqual(@"OutputPixelBufferPool", cf2))
      {
        if (*(a1 + 40))
        {
          return 4294954396;
        }

        if (!a3 || (v11 = CFGetTypeID(a3), v11 != CVPixelBufferPoolGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_1();
          v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
          if (v14)
          {
            return v14;
          }
        }

        v12 = *(a1 + 208);
        if (v12)
        {
          CFRelease(v12);
        }

        if (a3)
        {
          v13 = CFRetain(a3);
        }

        else
        {
          v13 = 0;
        }

        v7 = 0;
        *(a1 + 208) = v13;
        return v7;
      }

      if (!vtTemporalFilterSessionIsPropertyHandledByTemporalFilter(a1, cf2))
      {
        if (CFEqual(@"RealTime", cf2))
        {
          *(a1 + 88) = *MEMORY[0x1E695E4D0] == a3;
        }

        return v7;
      }
    }

    else if (!vtTemporalFilterSessionIsPropertyHandledByTemporalFilter(a1, cf2))
    {
      goto LABEL_4;
    }

    v9 = *(a1 + 24);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {

      return v10(v9, cf2, a3);
    }

    return 4294954514;
  }

  if (CFEqual(@"OutputPixelBufferPool", cf2))
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 256);

  return VTCompressionSessionRemote_SetProperty(v8, cf2, a3);
}

uint64_t VTTemporalFilterSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtTemporalFilterSessionProcessFrameCommon_cold_2(void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTemporalFilterSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionCreatePropertiesHandledByVideoToolbox_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtTemporalFilterSessionCreatePropertiesHandledByVideoToolbox_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtTemporalFilterSessionValidateBooleanProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCelesteRotationNodeCreate(CFTypeRef *a1)
{
  if (!a1)
  {
    return 0;
  }

  VTPixelTransferNodeGetClassID();
  v1 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t VTPixelTransferChainAppendCelesteRotationNode(uint64_t a1, int a2, char a3, char a4, const void *a5)
{
  cf = 0;
  VTCelesteRotationNodeCreate(&cf);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *DerivedStorage = v11;
  *(DerivedStorage + 112) = a2;
  *(DerivedStorage + 116) = a3;
  *(DerivedStorage + 117) = a4;
  appended = VTPixelTransferChainAppendNode(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

const __CFDictionary *vtDuplicateOddPixels(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    v7 = result;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v9 = IntIfPresent | FigCFDictionaryGetIntIfPresent();
    v10 = *MEMORY[0x1E69662D8];
    if (!v9)
    {
      Value = CFDictionaryGetValue(v7, *MEMORY[0x1E69662D8]);
      if (Value)
      {
        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 == CFArrayGetTypeID() && CFArrayGetCount(v12) >= 1)
        {
          v14 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, v14);
            if (ValueAtIndex)
            {
              v16 = CFGetTypeID(ValueAtIndex);
              if (v16 == CFDictionaryGetTypeID())
              {
                FigCFDictionaryGetIntIfPresent();
                FigCFDictionaryGetIntIfPresent();
                FigCFDictionaryGetInt32IfPresent();
              }
            }

            ++v14;
          }

          while (CFArrayGetCount(v12) > v14);
        }
      }
    }

    CFDictionaryGetValue(v7, v10);
    CVPixelBufferLockBaseAddress(a1, 0);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        v18 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetWidthOfPlane(v18, v19);
        v20 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetHeightOfPlane(v20, v21);
        v22 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetBytesPerRowOfPlane(v22, v23);
        v24 = OUTLINED_FUNCTION_0_24();
        if (!CVPixelBufferGetBaseAddressOfPlane(v24, v25))
        {
          break;
        }
      }
    }

    return CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  return result;
}

void VTPixelTransferNodeCelesteRotationCopySupportedPropertyDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  CFRelease(a1);
}

uint64_t VTPixelTransferNodeCelesteRotationCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionCreate(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = a2;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_20();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_20();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    OUTLINED_FUNCTION_2_24();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      return 4294954392;
    }

    v10 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 20) = v8;
    *(Instance + 32) = a3;
    *(Instance + 36) = v6;
    *(Instance + 40) = FigSimpleMutexCreate();
    v11 = CFGetAllocator(v10);
    v10[6] = CFArrayCreateMutable(v11, 0, 0);
    v10[7] = dispatch_group_create();
    MEMORY[0x193AE3010](&unk_1ED6D3D78, vtCreateDeghostingProcessorRegistry);
    if (!qword_1EAD32010 || (v12 = FigRegistryCopyItemList(), !v12))
    {
      OUTLINED_FUNCTION_0_25();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v14 = v12;
    if (v12)
    {
      OUTLINED_FUNCTION_0_25();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_0_25();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, 0);
      v14 = 0;
    }

    CFRelease(v10);
    return v14;
  }

  else
  {
    OUTLINED_FUNCTION_0_25();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

void VTDeghostingSessionInvalidate(uint64_t a1)
{
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    OUTLINED_FUNCTION_2_24();
    if (v3 == _MergedGlobals_18)
    {
      if (!*(a1 + 16))
      {
        v4 = *(a1 + 24);
        if (v4)
        {
          v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v5)
          {
            v5(v4);
          }

          v6 = *(a1 + 56);
          if (v6)
          {
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
          }

          v7 = *(a1 + 24);
          if (v7)
          {
            v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v8)
            {
              v8(v7);
            }
          }
        }

        *(a1 + 16) = 1;
      }

      return;
    }

    v9 = qword_1EAD32198;
    v10 = v1;
    v11 = 665;
  }

  else
  {
    v9 = qword_1EAD32198;
    v10 = v1;
    v11 = 664;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954394, "<<<< VTDeghostingSession >>>>", v11, v10);
}

uint64_t VTDeghostingFrameBufferCreate(const void *a1, const void *a2)
{
  Instance = 0;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_1_25();
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        *(Instance + 16) = CFRetain(a1);
        *(Instance + 24) = CFRetain(a2);
      }
    }
  }

  return Instance;
}

void *VTDeghostingFrameBufferGetFrame(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_1_25();
    if (v2 == sVTDeghostingFrameBufferID)
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *VTDeghostingFrameBufferGetParameters(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_1_25();
    if (v2 == sVTDeghostingFrameBufferID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double vtDeghostingSessionFinalize(uint64_t a1)
{
  VTDeghostingSessionInvalidate(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 56) = 0;
  }

  FigSimpleMutexDestroy();
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void vtCreateDeghostingProcessorRegistry()
{
  v0 = *MEMORY[0x1E695E480];
  if (!FigRegistryCreate() && access("/System/Library/Video/Plug-Ins/", 4) != -1)
  {
    v1 = CFURLCreateWithFileSystemPath(v0, @"/System/Library/Video/Plug-Ins/", kCFURLPOSIXPathStyle, 1u);
    if (v1)
    {
      v2 = v1;
      FigRegistryAddSearchPath();

      CFRelease(v2);
    }
  }
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionProcessCommon2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionProcessCommon2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingProcessorSessionEmitStatistics_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingProcessorSessionEmitRepair_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL VTDecompressionSessionRemoteBridge_Create_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

uint64_t VTDecompressionSessionRemoteBridge_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void VTParavirtualizedHostJPEGSupportHandleMessage_cold_1(CFTypeRef *a1, uint64_t (*a2)(void, CFTypeRef *), uint64_t *a3, _DWORD *a4)
{
  v7 = a2(0, a1);
  if (v7)
  {
    appended = v7;
  }

  else
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(*a3, 0x2C6A6361u, *a1);
    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  *a4 = appended;
}

uint64_t VTFillBufferPixelsWithBlack(__CVBuffer *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t *a6)
{
  *&v57 = a3;
  *(&v57 + 1) = a2;
  if (CVPixelBufferIsPlanar(a1))
  {
    result = CVPixelBufferGetPlaneCount(a1);
    if (result)
    {
      v10 = result;
      v11 = 0;
      v58 = *MEMORY[0x1E69662D8];
      v55 = a6;
      v56 = a5;
      while (1)
      {
        v12 = &a6[14 * v11];
        v13 = *(v12 + 105);
        if ((v13 - 3) < 2)
        {
          if (!a1 || (CVPixelBufferGetPixelFormatType(a1), (DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType()) == 0) || !a4 || !a5 || (v21 = DescriptionWithPixelFormatType, Width = CVPixelBufferGetWidth(a1), Height = CVPixelBufferGetHeight(a1), !Width) || !Height || (Value = CFDictionaryGetValue(v21, v58)) == 0 || (v25 = CFGetTypeID(Value), v25 != CFArrayGetTypeID()))
          {
LABEL_24:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            if (result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v26 = OUTLINED_FUNCTION_1_26();
          CFArrayGetValueAtIndex(v26, v27);
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          v28 = 0;
          v29 = 16;
          do
          {
            ++v28;
            v30 = v29 > 3;
            v29 >>= 1;
          }

          while (v30);
          v31 = 0;
          v32 = 16;
          do
          {
            ++v31;
            v30 = v32 > 3;
            v32 >>= 1;
          }

          while (v30);
          if (!CVPixelBufferGetIOSurface(a1) || IOSurfaceGetProtectionOptions())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          else
          {
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetWidthInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetHeightInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetBytesPerRowOfTileDataOfPlane();
            v33 = OUTLINED_FUNCTION_1_26();
            IOSurfaceGetBytesPerElementOfPlane(v33, v34);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            a6 = v55;
          }

          a5 = v56;
          if (result)
          {
            return result;
          }
        }

        else if (v13 == 1)
        {
          if (v57 != 0 || !CVPixelBufferGetIOSurface(a1))
          {
            goto LABEL_24;
          }

          BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
          if (BaseAddressOfCompressedTileHeaderRegionOfPlane)
          {
            v36 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
            OUTLINED_FUNCTION_1_26();
            BytesPerRowOfCompressedTileHeaderGroupsOfPlane = IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
            OUTLINED_FUNCTION_1_26();
            HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            v39 = (HeightInCompressedTilesOfPlane >> IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane()) * BytesPerRowOfCompressedTileHeaderGroupsOfPlane;
            if (v39 >= IOSurfaceGetSizeOfPlane())
            {
              goto LABEL_24;
            }

            bzero(v36, v39);
          }

          OUTLINED_FUNCTION_1_26();
          BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
          if (BaseAddressOfCompressedTileDataRegionOfPlane)
          {
            v41 = BaseAddressOfCompressedTileDataRegionOfPlane;
            OUTLINED_FUNCTION_1_26();
            CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
            OUTLINED_FUNCTION_1_26();
            v43 = IOSurfaceGetCompressedTileHeightOfPlane() * CompressedTileWidthOfPlane * v12[2];
            if (v43 >= 8)
            {
              v44 = 0;
              v45 = v43 >> 3;
              do
              {
                *(v41 + v44) = *(v12 + v44 % *(v12 + 104) + 40);
                ++v44;
              }

              while (v45 != v44);
            }
          }
        }

        else
        {
          if (*(v12 + 105))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, v53, v54);
          }

          if (!CVPixelBufferGetBaseAddressOfPlane(a1, v11))
          {
            return 4294954394;
          }

          CVPixelBufferGetBytesPerRowOfPlane(a1, v11);
          v14 = OUTLINED_FUNCTION_2_25();
          vtFillPlanePixelsWithBlack(v14, v15, v16, v17, v18, v19, 1, &a6[14 * v11]);
        }

LABEL_46:
        if (++v11 == v10)
        {
          return 0;
        }
      }
    }
  }

  else if (CVPixelBufferGetBaseAddress(a1))
  {
    CVPixelBufferGetBytesPerRow(a1);
    v46 = OUTLINED_FUNCTION_2_25();
    vtFillPlanePixelsWithBlack(v46, v47, v48, v49, v50, v51, 0, a6);
    return 0;
  }

  else
  {
    return 4294954394;
  }

  return result;
}

uint64_t VTBlackFillGetPixelFormatPixelBlockInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCopyTemporalFilterList(uint64_t a1, const __CFArray **a2)
{
  if (qword_1ED6D4508 != -1)
  {
    dispatch_once(&qword_1ED6D4508, &__block_literal_global_21);
  }

  if (vtTemporalFilterShouldUseSeparateProcess_featureEnabled)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(a1, a2))
    {
      IsVideocodecd = FigServer_IsVideocodecd();
      if (IsVideocodecd)
      {
        goto LABEL_9;
      }
    }

    else
    {
      IsVideocodecd = FigServer_IsServerProcess();
      if (IsVideocodecd)
      {
        goto LABEL_9;
      }
    }

    if (!VTShouldRunVideoEncodersInProcess(IsVideocodecd, v5))
    {
      return VTTemporalFilterRemote_CopyList(a1, a2);
    }
  }

LABEL_9:
  vtPopulateTemporalFilterRegistry();
  if (!_MergedGlobals_17)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
  }

  if (a1)
  {
    v6 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_1_27();
      CFDictionaryGetValue(v8, v9);
    }

    v10 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_1_27();
      CFDictionaryGetValue(v12, v13);
    }
  }

  v14 = FigRegistryCopyFilteredItemList();
  if (v14)
  {
    return v14;
  }

  v35 = a2;
  Count = CFArrayGetCount(0);
  v16 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
LABEL_40:
    v37.length = CFArrayGetCount(theArray);
    v37.location = 0;
    CFArraySortValues(theArray, v37, vtCompareClassNameThenTemporalFilterName, 0);
    v30 = 0;
    *v35 = theArray;
    return v30;
  }

  v17 = 0;
  v18 = MEMORY[0x1E695E9D8];
  v19 = MEMORY[0x1E695E9E8];
  while (1)
  {
    CFArrayGetValueAtIndex(0, v17);
    v20 = FigRegistryItemCopyDescription();
    if (v20)
    {
      break;
    }

    v20 = FigRegistryItemCopyMatchingInfo();
    if (v20)
    {
      break;
    }

    v20 = FigRegistryItemCopyBundle();
    if (v20)
    {
      break;
    }

    Mutable = CFDictionaryCreateMutable(v16, 0, v18, v19);
    Value = CFDictionaryGetValue(0, @"VTTemporalFilterClass");
    if (!Value)
    {
      goto LABEL_28;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      CFDictionarySetValue(Mutable, @"Class", Value);
      v24 = CFDictionaryGetValue(0, @"CMClassImplementationID");
      if (!v24)
      {
        goto LABEL_28;
      }

      v25 = CFStringGetTypeID();
      if (v25 == CFGetTypeID(v24))
      {
        CFDictionarySetValue(Mutable, @"TemporalFilterID", v24);
        v26 = CFDictionaryGetValue(0, @"VTTemporalFilterClassName");
        if (!v26)
        {
LABEL_28:
          if (!Mutable)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v27 = CFStringGetTypeID();
        if (v27 == CFGetTypeID(v26))
        {
          CFDictionarySetValue(Mutable, @"ClassName", v26);
          v28 = CFDictionaryGetValue(0, @"VTTemporalFilterName");
          if (v28)
          {
            v29 = CFStringGetTypeID();
            if (v29 == CFGetTypeID(v28))
            {
              CFDictionarySetValue(Mutable, @"TemporalFilterName", v28);
              CFDictionarySetValue(Mutable, @"DisplayName", v28);
              CFArrayAppendValue(theArray, Mutable);
              if (!Mutable)
              {
                goto LABEL_32;
              }

LABEL_31:
              CFRelease(Mutable);
              goto LABEL_32;
            }
          }
        }
      }
    }

    if (Mutable)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (++v17 == Count)
    {
      goto LABEL_40;
    }
  }

  v30 = v20;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v30;
}

uint64_t vtFilterRegistryItemByFilterClassAndFilterSpecification(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  v32 = 0;
  v29 = *(a1 + 8);
  v30 = 1;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_30;
  }

  v3 = *(a1 + 8);
  if (v3 && (CFDictionaryGetValue(v3, @"TemporalFilterID") || CFDictionaryGetValue(*(a1 + 8), @"HostTemporalFilterID")))
  {
    CFDictionaryGetValue(theDict, @"CMClassImplementationID");
    v4 = 0;
    if (!FigCFEqual())
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 1;
  }

  Value = CFDictionaryGetValue(v32, @"VTTemporalFilterClass");
  if (!Value)
  {
    goto LABEL_30;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID() || !FigCFEqual())
  {
    goto LABEL_30;
  }

  v7 = CFDictionaryGetValue(theDict, @"CMDependencies");
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDictionaryGetTypeID())
  {
    goto LABEL_36;
  }

  v10 = CFDictionaryGetValue(v8, @"IORegistryRequiredKey");
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFStringGetTypeID())
  {
    goto LABEL_30;
  }

  v13 = CFDictionaryGetValue(v8, @"IORegistryServiceName");
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 != CFStringGetTypeID())
  {
    v16 = CFGetTypeID(v14);
    if (v16 != CFArrayGetTypeID())
    {
      goto LABEL_30;
    }
  }

  v17 = CFGetTypeID(v14);
  if (v17 != CFStringGetTypeID())
  {
    Count = CFArrayGetCount(v14);
    if (Count < 1)
    {
LABEL_30:
      v19 = 0;
      goto LABEL_31;
    }

    v22 = Count;
    v23 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v23);
      if (VTDoesIOServiceSupportRegistryKey(ValueAtIndex, v11))
      {
        break;
      }

      v19 = 0;
      if (v22 == ++v23)
      {
        goto LABEL_31;
      }
    }

LABEL_36:
    if (!v4)
    {
LABEL_40:
      v19 = 1;
      goto LABEL_31;
    }

LABEL_37:
    v26 = CFDictionaryGetValue(v32, @"VTRequiredSpecificationEntries");
    if (v26)
    {
      v27 = v26;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v27))
      {
        CFDictionaryApplyFunction(v27, vtCheckRequiredTemporalFilterSpecificationKey, &v29);
        v19 = v30;
        goto LABEL_31;
      }
    }

    goto LABEL_40;
  }

  v18 = VTDoesIOServiceSupportRegistryKey(v14, v11);
  v19 = v18;
  if (v18)
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    goto LABEL_37;
  }

LABEL_31:
  if (v32)
  {
    CFRelease(v32);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v19;
}

void vtLoadTemporalFilterPluginsFromPath(const char *a1)
{
  if (access(a1, 4) != -1)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x8000100u);
    if (v3)
    {
      v4 = v3;
      v5 = CFURLCreateWithFileSystemPath(v2, v3, kCFURLPOSIXPathStyle, 1u);
      if (v5)
      {
        v6 = v5;
        FigRegistryAddSearchPathWithOptions();
        CFRelease(v6);
      }

      CFRelease(v4);
    }
  }
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerSetColorProperties(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    result = FigCFEqual();
    if (!result)
    {
      v4 = *(v3 + 40);
      *(v3 + 40) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v3 + 40);
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, *MEMORY[0x1E6965D88]);
        v7 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965F30]);
        v8 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965F98]);
        v9 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965EC8]);
      }

      else
      {
        Value = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      VTSessionSetProperty(*(v3 + 24), @"DestinationColorPrimaries", Value);
      VTSessionSetProperty(*(v3 + 24), @"DestinationTransferFunction", v7);
      VTSessionSetProperty(*(v3 + 24), @"DestinationYCbCrMatrix", v8);
      v10 = *(v3 + 24);

      return VTSessionSetProperty(v10, @"DestinationICCProfile", v9);
    }
  }

  return result;
}

uint64_t VTPixelBufferConformerIsConformantPixelBuffer(uint64_t a1, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CVPixelBufferGetTypeID())
  {
    return 0;
  }

  if (!*(a1 + 32) || (result = CVPixelBufferIsCompatibleWithAttributes(), result))
  {
    if (*(a1 + 40))
    {
      result = VTIsBufferTaggedWithColorProperties(cf);
      if (result)
      {
        Value = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965D88]);
        v7 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965F30]);
        v8 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965F98]);
        v9 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965EC8]);

        return VTIsPixelBufferCompatibleWithColorProperties(cf, Value, v7, v8, v9, 0);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t VTPixelBufferConformerCopyConformedTaggedBufferGroup(uint64_t a1, CMTaggedBufferGroupRef group, int a3, CFTypeRef *a4)
{
  v4 = 0;
  value = 0;
  cf = 0;
  if (group && a4)
  {
    Count = CMTaggedBufferGroupGetCount(group);
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
      if (v13)
      {
        v14 = v13;
        v24 = a4;
        if (Count < 1)
        {
LABEL_13:
          v4 = MEMORY[0x193AE2F70](v10, v12, v14, &cf);
          if (!v4)
          {
            *v24 = cf;
            cf = 0;
          }
        }

        else
        {
          v15 = 0;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(group, v15);
            if (!TagCollectionAtIndex)
            {
              break;
            }

            v17 = TagCollectionAtIndex;
            CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CVPixelBufferAtIndex)
            {
              break;
            }

            v19 = VTPixelBufferConformerCopyConformedPixelBuffer(a1, CVPixelBufferAtIndex, a3, &value);
            if (v19)
            {
              goto LABEL_23;
            }

            CFArrayAppendValue(v12, v17);
            CFArrayAppendValue(v14, value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }

            if (Count == ++v15)
            {
              goto LABEL_13;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_23:
          v4 = v19;
        }

        CFRelease(v12);
        v20 = v14;
      }

      else
      {
        fig_log_get_emitter();
        v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, value);
        v20 = v12;
      }

      CFRelease(v20);
    }

    else
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, value);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostSessionDeliverMessageFromGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v93 = 0;
  *&v92.byte0 = 0;
  *&v92.byte8 = 0;
  value = 0;
  v91 = 0;
  v89 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v93, 0, &v92);
  if (MessageTypeAndFlagsAndGuestUUID)
  {
    v57 = MessageTypeAndFlagsAndGuestUUID;
    v4 = 0;
  }

  else
  {
    v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v92);
    switch(v93)
    {
      case 727999843:
        os_unfair_lock_lock((a1 + 40));
        if (!CFDictionaryContainsKey(*(a1 + 24), v4))
        {
          os_unfair_lock_unlock((a1 + 40));
          v39 = OUTLINED_FUNCTION_23_3();
          v14 = VTParavirtualizationHostDecoderSessionCreate(v39, v40, v41, v42, v43);
          if (v14)
          {
            goto LABEL_55;
          }

          os_unfair_lock_lock((a1 + 40));
          CFDictionarySetValue(*(a1 + 24), v4, 0);
          v23 = (a1 + 40);
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_19_3();
        v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
        v88 = (a1 + 40);
        break;
      case 728067683:
        os_unfair_lock_lock((a1 + 44));
        if (!CFDictionaryContainsKey(*(a1 + 32), v4))
        {
          os_unfair_lock_unlock((a1 + 44));
          v18 = OUTLINED_FUNCTION_23_3();
          v14 = VTParavirtualizationHostEncoderSessionCreate(v18, v19, v20, v21, v22);
          if (v14)
          {
            goto LABEL_55;
          }

          os_unfair_lock_lock((a1 + 44));
          CFDictionarySetValue(*(a1 + 32), v4, 0);
          v23 = (a1 + 44);
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_19_3();
        v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
        v88 = (a1 + 44);
        break;
      case 728589680:
        os_unfair_lock_lock((a1 + 56));
        v48 = OUTLINED_FUNCTION_27_3();
        if (CFDictionaryContainsKey(v48, v49))
        {
          goto LABEL_79;
        }

        os_unfair_lock_unlock((a1 + 56));
        v50 = OUTLINED_FUNCTION_23_3();
        v14 = VTParavirtualizationHostMotionEstimationProcessorCreate(v50, v51, v52, v53, v54);
        if (v14)
        {
          goto LABEL_55;
        }

        os_unfair_lock_lock((a1 + 56));
        CFDictionarySetValue(*(a1 + 48), v4, 0);
        v23 = (a1 + 56);
LABEL_52:
        os_unfair_lock_unlock(v23);
        goto LABEL_54;
      case 761359468:
        if (!os_variant_has_internal_content())
        {
          goto LABEL_58;
        }

        cf = 0;
        v95 = 0;
        OUTLINED_FUNCTION_22_3();
        if (VTParavirtualizationCreateMessageAndByteStream(v26, v27, v28, v29, v30, v31))
        {
          v32 = v95;
          if (!v95)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v32 = v95;
          (*(*(a1 + 16) + 16))();
          if (!v32)
          {
LABEL_37:
            if (cf)
            {
              CFRelease(cf);
            }

            CFDictionaryRemoveAllValues(*(a1 + 24));
            CFDictionaryRemoveAllValues(*(a1 + 32));
            goto LABEL_58;
          }
        }

        CFRelease(v32);
        goto LABEL_37;
      case 761554275:
        v24 = OUTLINED_FUNCTION_29_2();
        vtParavirtualizationInvalidateHostDecoderSessionAndRemoveItFromHostSession(v24, v25);
        goto LABEL_58;
      default:
        if (v93 != 761622115)
        {
          if (v93 == 762144112)
          {
            os_unfair_lock_lock((a1 + 56));
            v33 = OUTLINED_FUNCTION_27_3();
            v35 = CFDictionaryGetValue(v33, v34);
            if (v35)
            {
              v36 = v35;
              CFRetain(v35);
              os_unfair_lock_unlock((a1 + 56));
              VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate(v36);
              VTParavirtualizationHostMotionEstimationProcessorSessionCompleteInvalidate(v36);
              os_unfair_lock_lock((a1 + 56));
              v37 = OUTLINED_FUNCTION_27_3();
              CFDictionaryRemoveValue(v37, v38);
              os_unfair_lock_unlock((a1 + 56));
              CFRelease(v36);
              goto LABEL_58;
            }

            v15 = (a1 + 56);
            goto LABEL_25;
          }

          if (v93 != 762672489)
          {
            switch(v93)
            {
              case 1684234608:
                v44 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyDecoderCapabilitiesReply(v44, v45);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1835364467:
                v55 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyMotionEstimationProcessorListReply(v55, v56);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1701733235:
                v46 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyEncoderListReply(v46, v47);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1784897904:
              case 1784964451:
              case 1785032291:
                OUTLINED_FUNCTION_8_10();
                v14 = VTParavirtualizedHostJPEGSupportHandleMessage(v7, v8, v9, v10, v11, v12, v13);
                if (!v14)
                {
                  os_unfair_lock_lock((a1 + 64));
                  if (!*(a1 + 60))
                  {
                    (*(*(a1 + 16) + 16))();
                  }

                  v15 = (a1 + 64);
LABEL_25:
                  os_unfair_lock_unlock(v15);
LABEL_58:
                  v57 = 0;
                  goto LABEL_59;
                }

LABEL_55:
                v57 = v14;
                goto LABEL_59;
              case 1684366195:
                v16 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyDecoderListReply(v16, v17);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              default:
                v63 = (a1 + 40);
                os_unfair_lock_lock((a1 + 40));
                v64 = CFDictionaryGetValue(*(a1 + 24), v4);
                v65 = v64;
                if (v64)
                {
                  CFRetain(v64);
                }

                else
                {
                  os_unfair_lock_unlock((a1 + 40));
                  v63 = (a1 + 44);
                  os_unfair_lock_lock((a1 + 44));
                  v76 = CFDictionaryGetValue(*(a1 + 32), v4);
                  if (v76)
                  {
                    v69 = v76;
                    CFRetain(v76);
                    os_unfair_lock_unlock((a1 + 44));
                    OUTLINED_FUNCTION_8_10();
                    v75 = VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest(v77, v78, v79, v80, v81);
                    goto LABEL_75;
                  }
                }

                os_unfair_lock_unlock(v63);
                os_unfair_lock_lock((a1 + 56));
                v66 = OUTLINED_FUNCTION_27_3();
                v68 = CFDictionaryGetValue(v66, v67);
                if (v68)
                {
                  v69 = v68;
                  CFRetain(v68);
                  os_unfair_lock_unlock((a1 + 56));
                  if (!v65)
                  {
                    OUTLINED_FUNCTION_8_10();
                    v75 = VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest(v70, v71, v72, v73, v74);
LABEL_75:
                    v57 = v75;
                    v82 = v69;
LABEL_78:
                    CFRelease(v82);
                    goto LABEL_59;
                  }

LABEL_77:
                  OUTLINED_FUNCTION_8_10();
                  v57 = VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest(v83, v84, v85, v86, v87);
                  v82 = v65;
                  goto LABEL_78;
                }

                os_unfair_lock_unlock((a1 + 56));
                if (v65)
                {
                  goto LABEL_77;
                }

LABEL_79:
                OUTLINED_FUNCTION_19_3();
                v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_55;
            }

LABEL_54:
            v14 = vtParavirtualizationHostSession_callMessageToGuestHandler(a1, 0);
            goto LABEL_55;
          }

          v58 = OUTLINED_FUNCTION_29_2();
          vtParavirtualizationInvalidateHostDecoderSessionAndRemoveItFromHostSession(v58, v59);
        }

        v60 = OUTLINED_FUNCTION_29_2();
        vtParavirtualizationInvalidateHostEncoderSessionAndRemoveItFromHostSession(v60, v61);
        goto LABEL_58;
    }

    os_unfair_lock_unlock(v88);
  }

LABEL_59:
  if (v91)
  {
    CFRelease(v91);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v57;
}

uint64_t VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(OpaqueCMBlockBuffer *a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v8, v9, v10);
  if (!result)
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_18_5(0, 8uLL, v12, v13, v14, v15, v16, v17, v21, v22, 0);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_19_4();
      *a2 = v18;
    }

    if (a3)
    {
      result = OUTLINED_FUNCTION_18_5(result, 0xCuLL, v12, v13, v14, v15, v16, v17, v21, v22, 0);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_19_4();
      *a3 = v19;
    }

    if (a4)
    {
      OUTLINED_FUNCTION_17_7();
      return CMBlockBufferCopyDataBytes(a1, v20, 0x10uLL, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationGuestInstallHandlerForUUID(CFUUIDBytes *a1, const void *a2, const void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], *a1);
  if (a2)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v6 = dword_1ED6D4524;
    if (!dword_1ED6D4524)
    {
      os_unfair_lock_lock(&_MergedGlobals_18);
      if (!CFDictionaryGetValue(qword_1ED6D4538, v5))
      {
        v7 = malloc_type_calloc(1uLL, 0x28uLL, 0xA0040987D6AD5uLL);
        if (v7 && (v8 = _Block_copy(a2), (*v7 = v8) != 0) && (!a3 ? (v9 = 0) : (v9 = CFRetain(a3)), (v7[1] = v9, v10 = FigDispatchQueueCreateWithPriority(), (v7[2] = v10) != 0) && (v11 = FigDispatchQueueCreateWithPriority(), (v7[3] = v11) != 0)))
        {
          v12 = VTParavirtualizationReplyClerkCreate("guest", v7 + 4);
          if (!v12)
          {
            v6 = VTParavirtualizationGuestSupportRegisterGuestUUID();
            if (v6)
            {
LABEL_17:
              os_unfair_lock_unlock(&_MergedGlobals_18);
              goto LABEL_18;
            }

            CFDictionarySetValue(qword_1ED6D4538, v5, v7);
LABEL_16:
            v7 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_10();
          v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        v6 = v12;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_10();
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_10();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  }

  v7 = 0;
LABEL_18:
  vtParavirtualizationGuestFinalize(v7);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t VTParavirtualizationGuestRemoveHandlerForUUID(CFUUIDBytes *a1)
{
  v1 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], *a1);
  if (qword_1ED6D4550 != -1)
  {
    dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
  }

  v2 = dword_1ED6D4524;
  if (!dword_1ED6D4524)
  {
    os_unfair_lock_lock(&_MergedGlobals_18);
    Value = CFDictionaryGetValue(qword_1ED6D4538, v1);
    if (Value)
    {
      v4 = Value;
      CFDictionaryRemoveValue(qword_1ED6D4538, v1);
      v5 = *(v4 + 2);
      block = MEMORY[0x1E69E9820];
      v10 = 0x40000000;
      v11 = __VTParavirtualizationGuestRemoveHandlerForUUID_block_invoke;
      v12 = &__block_descriptor_tmp_20_1;
      v13 = v4;
      dispatch_async(v5, &block);
      v6 = VTParavirtualizationGuestSupportDeregisterGuestUUID();
    }

    else
    {
      OUTLINED_FUNCTION_2_10();
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, block, v10);
    }

    v2 = v6;
    os_unfair_lock_unlock(&_MergedGlobals_18);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (a1)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v6 = dword_1ED6D4524;
    if (dword_1ED6D4524)
    {
      return v6;
    }

    *&v11.byte0 = 0;
    *&v11.byte8 = 0;
    MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v12 + 1, &v12, &v11);
    if (!MessageTypeAndFlagsAndGuestUUID)
    {
      if ((v12 & 1) == 0 && (v12 & 2) == 0)
      {
        v8 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v11);
        os_unfair_lock_lock(&_MergedGlobals_18);
        if (CFDictionaryGetValue(qword_1ED6D4538, v8))
        {
          os_unfair_lock_unlock(&_MergedGlobals_18);
          v6 = vtParavirtualizationGuestSendRawMessageBlockBufferToHost(a1, a2, a3);
          if (!v8)
          {
            return v6;
          }
        }

        else
        {
          OUTLINED_FUNCTION_20_3();
          v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, *&v11.byte0, *&v11.byte8);
          os_unfair_lock_unlock(&_MergedGlobals_18);
          if (!v8)
          {
            return v6;
          }
        }

        CFRelease(v8);
        return v6;
      }

      OUTLINED_FUNCTION_20_3();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    return MessageTypeAndFlagsAndGuestUUID;
  }

  OUTLINED_FUNCTION_20_3();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtParavirtualizationGuestSendRawMessageBlockBufferToHost(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &v19, 0);
  if (DataPointer)
  {
LABEL_16:
    v17 = DataPointer;
    v9 = 0;
    goto LABEL_14;
  }

  v5 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < v19)
  {
    v6 = -1;
    v7 = 16;
    while (1)
    {
      DataPointer = CMBlockBufferGetDataPointer(a1, v5, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        goto LABEL_16;
      }

      v5 += lengthAtOffsetOut;
      v7 += 16;
      --v6;
      if (v5 >= v19)
      {
        OUTLINED_FUNCTION_28_2();
        v9 = malloc_type_malloc(v7, v8);
        if (v6)
        {
          v10 = -v6;
          goto LABEL_9;
        }

LABEL_12:
        v15 = VTParavirtualizationGuestSupportSendRawMessageToHost();
        goto LABEL_13;
      }
    }
  }

  OUTLINED_FUNCTION_28_2();
  v9 = malloc_type_malloc(0x10uLL, v11);
  v10 = 1;
LABEL_9:
  v12 = 0;
  v13 = v9;
  v14 = v10;
  while (1)
  {
    v15 = CMBlockBufferGetDataPointer(a1, v12, &lengthAtOffsetOut, 0, v13);
    if (v15)
    {
      break;
    }

    v16 = lengthAtOffsetOut;
    v13[1] = lengthAtOffsetOut;
    v12 += v16;
    v13 += 2;
    if (!--v14)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = v15;
LABEL_14:
  free(v9);
  return v17;
}

uint64_t VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v23 = 0;
  v21 = 0;
  if (a1 && a5)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v10 = dword_1ED6D4524;
    if (dword_1ED6D4524)
    {
      return v10;
    }

    *&v22.byte0 = 0;
    *&v22.byte8 = 0;
    MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v23 + 1, &v23, &v22);
    if (!MessageTypeAndFlagsAndGuestUUID)
    {
      if ((v23 & 1) != 0 && (v23 & 0x10) == 0 && (v23 & 2) == 0)
      {
        v12 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v22);
        os_unfair_lock_lock(&_MergedGlobals_18);
        Value = CFDictionaryGetValue(qword_1ED6D4538, v12);
        if (Value)
        {
          v14 = Value[4];
          if (v14)
          {
            v15 = CFRetain(v14);
          }

          else
          {
            v15 = 0;
          }

          os_unfair_lock_unlock(&_MergedGlobals_18);
          v16 = VTParavirtualizationReplyClerkPrepareForReply(v15, a1, &v21);
          if (!v16)
          {
            v16 = vtParavirtualizationGuestSendRawMessageBlockBufferToHost(a1, a2, a3);
            if (!v16)
            {
              v19 = *a4;
              v20 = *(a4 + 2);
              v16 = VTParavirtualizationReplyClerkWaitForReply(v15, HIDWORD(v23), v21, &v19, a5, 0, 0);
            }
          }

          v10 = v16;
          if (v15)
          {
            VTParavirtualizationReplyClerkCleanUpReply(v15, v21);
            if (v12)
            {
              CFRelease(v12);
            }

            v17 = v15;
            goto LABEL_29;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_3();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, DWORD2(v19), v20);
          os_unfair_lock_unlock(&_MergedGlobals_18);
        }

        if (v12)
        {
          v17 = v12;
LABEL_29:
          CFRelease(v17);
        }

        return v10;
      }

      OUTLINED_FUNCTION_21_3();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    return MessageTypeAndFlagsAndGuestUUID;
  }

  OUTLINED_FUNCTION_21_3();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTParavirtualizationReplyClerkPrepareForReply(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48))
  {
    os_unfair_lock_unlock((a1 + 24));
    return 4294948201;
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    *(a1 + 32) = v8 + 1;
    CFDictionarySetValue(v7, v8, 0);
    CFDictionaryGetValue(*(a1 + 40), v8);
    os_unfair_lock_unlock((a1 + 24));
    result = VTParavirtualizationMessageSetReplyIdentifier(a2, v8);
    if (!result)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t VTParavirtualizationCreateReplyAndByteStream(OpaqueCMBlockBuffer *a1, unsigned int a2, CMBlockBufferRef *a3, void *a4)
{
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  v10[0] = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v11 + 1, &v11, v10);
  if (!result)
  {
    result = VTParavirtualizationMessageGetReplyIdentifier(a1, &v9);
    if (!result)
    {
      return VTParavirtualizationCreateMessageAndByteStream(HIDWORD(v11), a2, v10, v9, a3, a4);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetReplyIdentifier(OpaqueCMBlockBuffer *a1, void *a2)
{
  v9 = 0;
  destination = 0;
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v4, v5, v6);
  if (!result)
  {
    result = CMBlockBufferCopyDataBytes(a1, v9 + 32, 8uLL, &destination);
    if (!result)
    {
      *a2 = bswap64(destination);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageChangeMessageFlags(OpaqueCMBlockBuffer *a1, int a2, int a3)
{
  v13 = 0;
  destination[0] = 0;
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v6, v7, v8);
  if (!result)
  {
    v10 = v13;
    result = CMBlockBufferCopyDataBytes(a1, v13 + 12, 4uLL, destination);
    if (!result)
    {
      OUTLINED_FUNCTION_19_4();
      destination[0] = bswap32(v11 & ~a3 | a3 & a2);
      return CMBlockBufferReplaceDataBytes(destination, a1, v10 + 12, 4uLL);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageSetReplyIdentifier(OpaqueCMBlockBuffer *a1, unint64_t a2)
{
  v8 = 0;
  sourceBytes = bswap64(a2);
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v3, v4, v5);
  if (!result)
  {
    return CMBlockBufferReplaceDataBytes(&sourceBytes, a1, v8 + 32, 8uLL);
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFPropertyList(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_28();
  theData = 0;
  CFDataFromCFPropertyList = FigAtomWriterInitWithByteStream();
  if (!CFDataFromCFPropertyList)
  {
    CFDataFromCFPropertyList = OUTLINED_FUNCTION_5_16(CFDataFromCFPropertyList, v4);
    if (!CFDataFromCFPropertyList)
    {
      CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_12(CFDataFromCFPropertyList, v5, v6, v7, v8, v9, v10, v11, v21, SHIDWORD(v21), 0, v24);
      if (!CFDataFromCFPropertyList)
      {
        CFDataFromCFPropertyList = OUTLINED_FUNCTION_14_8(CFDataFromCFPropertyList, v12, v13, v14, v15, v16, v17, v18, v22, theData, v25);
        if (!CFDataFromCFPropertyList)
        {
          CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
          if (!CFDataFromCFPropertyList)
          {
            CFDataGetBytePtr(theData);
            CFDataGetLength(theData);
            CFDataFromCFPropertyList = FigAtomWriterAppendData();
            if (!CFDataFromCFPropertyList)
            {
              CFDataFromCFPropertyList = FigAtomWriterEndAtom();
            }
          }
        }
      }
    }
  }

  v19 = CFDataFromCFPropertyList;
  if (theData)
  {
    CFRelease(theData);
  }

  return v19;
}

uint64_t VTParavirtualizationMessageAppendCFData()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v2);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v3, v4, v5, v6, v7, v8, v9, v10, v11, HIDWORD(v11), v12);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          CFDataGetBytePtr(v0);
          CFDataGetLength(v0);
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(OpaqueCMBlockBuffer *a1, uint64_t a2, _DWORD *a3)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  if (!vtpvScanForTopLevelBoxWithType(a1, a2, v6, v7, v8) && !OUTLINED_FUNCTION_18_5(0, a2 + 12, v9, v10, v11, v12, v13, v14, v16, v17, 0))
  {
    OUTLINED_FUNCTION_19_4();
    *a3 = v15;
  }
}

uint64_t VTParavirtualizationMessageCFDataRequiresFragmentation(uint64_t a1, unint64_t a2, const __CFData *a3, BOOL *a4)
{
  v16 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(a1, 0, &v16);
  if (!result)
  {
    if (v16 + 17 <= a2)
    {
      Length = CFDataGetLength(a3);
      v12 = a2 - v16 - 16;
      if (v12 >= Length)
      {
        v13 = Length;
      }

      else
      {
        v13 = a2 - v16 - 16;
      }

      if (!v13)
      {
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
      }

      v14 = Length;
      result = 0;
      v10 = v14 > v12;
    }

    else
    {
      result = 0;
      v10 = 1;
    }

    *a4 = v10;
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFDataWithLimitFromOffset(uint64_t a1, unsigned int a2, unint64_t a3, const __CFData *a4, CFIndex *a5)
{
  OUTLINED_FUNCTION_1_28();
  v34 = 0;
  Length = CFDataGetLength(v9);
  v11 = Length - *a5;
  if (Length == *a5)
  {
    return 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    return 4294954514;
  }

  result = v12(a1, 0, &v34);
  if (!result)
  {
    if (v34 + 17 > a3)
    {
      return 0;
    }

    v14 = a3 - v34 - 16;
    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = a3 - v34 - 16;
    }

    if (v15)
    {
      result = FigAtomWriterInitWithByteStream();
      if (!result)
      {
        result = OUTLINED_FUNCTION_5_16(result, v16);
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12(result, v17, v18, v19, v20, v21, v22, v23, v32, SHIDWORD(v32), v34, v35);
          if (!result)
          {
            result = OUTLINED_FUNCTION_14_8(result, v24, v25, v26, v27, v28, v29, v30, v33, v34, v35);
            if (!result)
            {
              CFDataGetBytePtr(a4);
              result = FigAtomWriterAppendData();
              if (!result)
              {
                result = FigAtomWriterEndAtom();
                if (!result)
                {
                  if (v11 <= v14)
                  {
                    v31 = CFDataGetLength(a4);
                  }

                  else
                  {
                    v31 = *a5 + v15;
                  }

                  result = 0;
                  *a5 = v31;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_3();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v34, v35);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFUUID()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10(v16);
    if (!result)
    {
      result = OUTLINED_FUNCTION_32_1(result, v2, v3, v4, v5, v6, v7, v8, v12, v13, SHIDWORD(v13), v14, v15, v16[0]);
      if (!result)
      {
        result = OUTLINED_FUNCTION_35_2(result);
        if (!result)
        {
          v9 = CFUUIDGetUUIDBytes(v0);
          result = OUTLINED_FUNCTION_33_2(*&v9.byte0, *&v9.byte8, v10, v11);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCFUUID()
{
  OUTLINED_FUNCTION_2_26();
  *&v12.byte0 = 0;
  *&v12.byte8 = 0;
  CMBlockBufferGetDataLength(v2);
  v3 = OUTLINED_FUNCTION_0_28();
  result = vtpvScanForParameterBoxWithType(v3, v4, v5, v6, 1031107945, v7, v8);
  if (!result)
  {
    if (v13 == 32)
    {
      OUTLINED_FUNCTION_17_7();
      result = CMBlockBufferCopyDataBytes(v1, v10, 0x10uLL, &v12);
      if (!result)
      {
        v11 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v12);
        result = 0;
        *v0 = v11;
      }
    }

    else if (v13)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      return OUTLINED_FUNCTION_25_3();
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFUUIDArray(uint64_t a1, unsigned int a2, const __CFArray *a3)
{
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10(v26);
    if (!result)
    {
      result = OUTLINED_FUNCTION_32_1(result, v5, v6, v7, v8, v9, v10, v11, v21, v23, SHIDWORD(v23), 0, 0, v26[0]);
      if (!result)
      {
        result = OUTLINED_FUNCTION_35_2(result);
        if (!result)
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return FigAtomWriterEndAtom();
          }

          else
          {
            v13 = Count;
            v14 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
              if (!ValueAtIndex)
              {
                break;
              }

              v16 = ValueAtIndex;
              v17 = CFGetTypeID(ValueAtIndex);
              if (v17 != CFUUIDGetTypeID())
              {
                break;
              }

              v18 = CFUUIDGetUUIDBytes(v16);
              result = OUTLINED_FUNCTION_33_2(*&v18.byte0, *&v18.byte8, v19, v20);
              if (result)
              {
                return result;
              }

              if (v13 == ++v14)
              {
                return FigAtomWriterEndAtom();
              }
            }

            OUTLINED_FUNCTION_20_3();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, v25);
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCFUUIDArray()
{
  OUTLINED_FUNCTION_2_26();
  *&v19.byte0 = 0;
  *&v19.byte8 = 0;
  CMBlockBufferGetDataLength(v2);
  v3 = OUTLINED_FUNCTION_0_28();
  v9 = vtpvScanForParameterBoxWithType(v3, v4, v5, v6, 1031104811, v7, v8);
  if (v9)
  {
    return v9;
  }

  if (!v20)
  {
    v17 = 0;
    *v0 = 0;
    return v17;
  }

  if (v20 > 0xF)
  {
    v10 = v20 - 16;
    if (v20 == ((v20 - 16) & 0xFFFFFFFFFFFFFFF0) + 16)
    {
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v10 >> 4, MEMORY[0x1E695E9C0]);
      if (v10 < 0x10)
      {
LABEL_14:
        v17 = 0;
        *v0 = Mutable;
      }

      else
      {
        if (v10 >> 4 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v10 >> 4;
        }

        v14 = v21 + 16;
        while (1)
        {
          v15 = CMBlockBufferCopyDataBytes(v1, v14, 0x10uLL, &v19);
          if (v15)
          {
            break;
          }

          v16 = CFUUIDCreateFromUUIDBytes(v11, v19);
          CFArrayAppendValue(Mutable, v16);
          if (v16)
          {
            CFRelease(v16);
          }

          v14 += 16;
          if (!--v13)
          {
            goto LABEL_14;
          }
        }

        v17 = v15;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      return v17;
    }
  }

  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTParavirtualizationMessageAppendFigTagCollectionArray(uint64_t a1, unsigned int a2, const __CFArray *a3)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  appended = FigAtomWriterInitWithByteStream();
  if (!appended)
  {
    appended = OUTLINED_FUNCTION_9_10(v16);
    if (!appended)
    {
      appended = FigAtomWriterAppendData();
      if (!appended)
      {
        appended = FigAtomWriterAppendData();
        if (!appended)
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return FigAtomWriterEndAtom();
          }

          else
          {
            v6 = Count;
            v7 = 0;
            v8 = *MEMORY[0x1E695E480];
            while (1)
            {
              appended = FigAtomWriterInitWithParent();
              if (appended)
              {
                break;
              }

              appended = FigAtomWriterBeginAtom();
              if (appended)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
              if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != FigTagCollectionGetTypeID()))
              {
                OUTLINED_FUNCTION_20_3();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
              }

              v12 = MEMORY[0x193AE2F00](v10, v8);
              CFDataGetBytePtr(v12);
              CFDataGetLength(v12);
              v13 = FigAtomWriterAppendData();
              if (v13 || (v13 = FigAtomWriterEndAtom(), v13))
              {
                v14 = v13;
                if (v12)
                {
                  CFRelease(v12);
                }

                return v14;
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (v6 == ++v7)
              {
                return FigAtomWriterEndAtom();
              }
            }
          }
        }
      }
    }
  }

  return appended;
}

uint64_t VTParavirtualizationMessageAppendSInt32(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v4);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v5, v6, v7, v8, v9, v10, v11, v19, v21, HIDWORD(v21), v23);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12(result, v12, v13, v14, v15, v16, v17, v18, v20, SHIDWORD(v20), v22, v24);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetSInt32()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1030959922, v6, v7))
  {
    if (v19 == 20)
    {
      OUTLINED_FUNCTION_17_7();
      if (!OUTLINED_FUNCTION_18_5(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, 0))
      {
        OUTLINED_FUNCTION_19_4();
        *v0 = v16;
      }
    }

    else if (v19)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      *v0 = 0;
    }
  }
}

uint64_t VTParavirtualizationMessageAppendUInt32(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v4);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v5, v6, v7, v8, v9, v10, v11, v19, v21, HIDWORD(v21), v23);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12(result, v12, v13, v14, v15, v16, v17, v18, v20, SHIDWORD(v20), v22, v24);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetUInt32()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1031090994, v6, v7))
  {
    if (v19 == 20)
    {
      OUTLINED_FUNCTION_17_7();
      if (!OUTLINED_FUNCTION_18_5(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, 0))
      {
        OUTLINED_FUNCTION_19_4();
        *v0 = v16;
      }
    }

    else if (v19)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      *v0 = 0;
    }
  }
}

uint64_t VTParavirtualizationMessageAppendSInt64()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v1);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v2, v3, v4, v5, v6, v7, v8, v9, v10, HIDWORD(v10), v11);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetSInt64()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  result = vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1030960692, v6, v7);
  if (!result)
  {
    OUTLINED_FUNCTION_30_2();
    if (v18)
    {
      result = OUTLINED_FUNCTION_11_8(v9, v10, v11, v12, v13, v14, v15, v16, v19, 0, v21, v22);
      if (!result)
      {
        *v0 = bswap64(destination);
      }
    }

    else if (v17)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      return OUTLINED_FUNCTION_25_3();
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCMFormatDescription(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_1_28();
  theBuffer = 0;
  v2 = FigAtomWriterInitWithByteStream();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_16(v2, v3);
    if (!v2)
    {
      v2 = OUTLINED_FUNCTION_7_12(v2, v4, v5, v6, v7, v8, v9, v10, v27, SHIDWORD(v27), 0, v30);
      if (!v2)
      {
        v2 = OUTLINED_FUNCTION_14_8(v2, v11, v12, v13, v14, v15, v16, v17, v28, theBuffer, v31);
        if (!v2)
        {
          CFStringGetSystemEncoding();
          v18 = OUTLINED_FUNCTION_29_2();
          v2 = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(v18, v19, v20, 0, v21);
          if (!v2)
          {
            DataLength = CMBlockBufferGetDataLength(theBuffer);
            v2 = OUTLINED_FUNCTION_34_2(DataLength, v23, v24);
            if (!v2)
            {
              v2 = FigAtomWriterEndAtom();
            }
          }
        }
      }
    }
  }

  v25 = v2;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v25;
}

uint64_t VTParavirtualizationMessageCopyCMFormatDescription()
{
  OUTLINED_FUNCTION_16_8();
  v3 = v2;
  v13 = 0;
  v14 = 0;
  cf = 0;
  blockBufferOut = 0;
  DataLength = CMBlockBufferGetDataLength(v2);
  v5 = vtpvScanForParameterBoxWithType(v3, 0, DataLength, v1, 1030120563, &v14, &v13);
  if (v5)
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    v9 = 0;
    *v0 = 0;
    goto LABEL_7;
  }

  if (v13 <= 0x65)
  {
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, blockBufferOut, v13);
    goto LABEL_14;
  }

  v6 = *MEMORY[0x1E695E480];
  v5 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v3, v14 + 16, v13 - 16, 0, &blockBufferOut);
  if (v5)
  {
LABEL_14:
    v9 = v5;
    goto LABEL_7;
  }

  v7 = blockBufferOut;
  SystemEncoding = CFStringGetSystemEncoding();
  v9 = CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(v6, v7, SystemEncoding, 0, &cf);
  if (!v9)
  {
    *v0 = cf;
    cf = 0;
  }

LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t VTParavirtualizationMessageAppendCMSampleBuffer(uint64_t a1, unsigned int a2, int a3, opaqueCMSampleBuffer *a4, CFTypeRef *a5)
{
  OUTLINED_FUNCTION_1_28();
  theBuffer = 0;
  v8 = FigAtomWriterInitWithByteStream();
  if (!v8)
  {
    v8 = OUTLINED_FUNCTION_5_16(v8, v9);
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_7_12(v8, v10, v11, v12, v13, v14, v15, v16, v29, SHIDWORD(v29), theBuffer, v33);
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_14_8(v8, v17, v18, v19, v20, v21, v22, v23, v30, theBuffer, v33);
        if (!v8)
        {
          if (a3)
          {
            v8 = VTParavirtualizationCreateSerializedAtomDataBlockBufferForSampleBuffer(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480], a4, a5, &theBuffer);
            if (!v8)
            {
              DataLength = CMBlockBufferGetDataLength(theBuffer);
              v8 = OUTLINED_FUNCTION_34_2(DataLength, v25, v26);
              if (!v8)
              {
                v8 = FigAtomWriterEndAtom();
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_10();
            v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, theBuffer, v33);
          }
        }
      }
    }
  }

  v27 = v8;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v27;
}

uint64_t VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(uint64_t a1, unsigned int a2, unint64_t a3, void *a4, CMBlockBufferRef *a5)
{
  OUTLINED_FUNCTION_1_28();
  v33 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(a1, 0, &v33);
  if (result)
  {
    return result;
  }

  if (v33 + 17 > a3)
  {
    v11 = CFRetain(a4);
    result = 0;
    *a5 = v11;
    return result;
  }

  DataLength = CMBlockBufferGetDataLength(a4);
  v13 = DataLength;
  v14 = a3 - v33 - 16;
  if (v14 >= DataLength)
  {
    v15 = DataLength;
  }

  else
  {
    v15 = a3 - v33 - 16;
  }

  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v16);
    if (!result)
    {
      result = OUTLINED_FUNCTION_7_12(result, v17, v18, v19, v20, v21, v22, v23, v31, SHIDWORD(v31), v33, v34);
      if (!result)
      {
        result = OUTLINED_FUNCTION_14_8(result, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34);
        if (!result)
        {
          result = FigAtomWriterAppendBlockBufferData();
          if (!result)
          {
            result = FigAtomWriterEndAtom();
            if (!result)
            {
              if (v13 <= v14)
              {
                *a5 = 0;
              }

              else
              {
                result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a4, v15, v13 - v15, 0, a5);
                if (result)
                {
                  return result;
                }
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCMSampleBuffer(OpaqueCMBlockBuffer *a1, int a2, int a3, const opaqueCMFormatDescription **a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v12 = 0;
  v13 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  theBuffer = 0;
  blockBufferOut = 0;
  v14 = *MEMORY[0x1E695E480];
  do
  {
    vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(a1, v12, &v29);
    if (appended)
    {
      goto LABEL_20;
    }

    DataLength = CMBlockBufferGetDataLength(a1);
    appended = vtpvScanForParameterBoxWithType(a1, v12, DataLength, a2, 1030972006, &v28, &v27);
    if (appended)
    {
      goto LABEL_20;
    }

    if (!v27)
    {
      SampleBufferFromSerializedAtomDataBlockBuffer = 0;
      *a6 = 0;
      goto LABEL_21;
    }

    if (v27 <= 0x10)
    {
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAD321B8, 4294948203, "<<<< VTParavirtualization >>>>", 3490);
      goto LABEL_20;
    }

    appended = CMBlockBufferCreateWithBufferReference(v14, a1, v12 + v28 + 16, v27 - 16, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_20;
    }

    v17 = blockBufferOut;
    if (v13)
    {
      OUTLINED_FUNCTION_22_3();
      appended = CMBlockBufferAppendBufferReference(v18, v19, v20, v21, 0);
      if (appended)
      {
        goto LABEL_20;
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
        blockBufferOut = 0;
      }
    }

    else
    {
      blockBufferOut = 0;
      v13 = v17;
    }

    v12 += v28 + v27;
  }

  while ((v29 & 0x10) != 0);
  if (CMBlockBufferIsRangeContiguous(v13, 0, 0))
  {
    theBuffer = CFRetain(v13);
    goto LABEL_16;
  }

  appended = CMBlockBufferCreateContiguous(v14, v13, v14, 0, 0, 0, 0, &theBuffer);
  if (appended)
  {
LABEL_20:
    SampleBufferFromSerializedAtomDataBlockBuffer = appended;
    goto LABEL_21;
  }

LABEL_16:
  if (!a3)
  {
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAD321B8, 4294948203, "<<<< VTParavirtualization >>>>", 3524);
    goto LABEL_20;
  }

  SampleBufferFromSerializedAtomDataBlockBuffer = VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer(v14, theBuffer, 0, a4, a5, &cf);
  if (!SampleBufferFromSerializedAtomDataBlockBuffer)
  {
    *a6 = cf;
    cf = 0;
  }

LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return SampleBufferFromSerializedAtomDataBlockBuffer;
}

uint64_t VTParavirtualizationMessageAppendCMVideoDimensions()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v1);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v2, v3, v4, v5, v6, v7, v8, v16, v18, HIDWORD(v18), v20);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7(result, v9, v10, v11, v12, v13, v14, v15, v17, HIDWORD(v17), v19, v21);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetCMVideoDimensions()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1031239784, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v27, 0, v29, v30);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v25, v28, v26);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageAppendCMTime()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10(v1);
    if (!result)
    {
      result = FigAtomWriterAppendData();
      if (!result)
      {
        result = FigAtomWriterAppendData();
        if (!result)
        {
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetCMTime(OpaqueCMBlockBuffer *a1, int a2, int8x8_t *a3)
{
  v13 = 0;
  v14 = 0;
  v10 = *MEMORY[0x1E6960C70];
  destination = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v12 = v6;
  DataLength = CMBlockBufferGetDataLength(a1);
  result = vtpvScanForParameterBoxWithType(a1, 0, DataLength, a2, 1031039341, &v14, &v13);
  if (!result)
  {
    if (v13 == 40)
    {
      result = CMBlockBufferCopyDataBytes(a1, v14 + 16, 0x18uLL, &destination);
      if (!result)
      {
        v9 = bswap64(v12);
        *a3 = bswap64(destination);
        a3[1] = vrev32_s8(*(&destination + 8));
        a3[2] = v9;
      }
    }

    else if (v13)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      result = 0;
      *a3->i8 = v10;
      a3[2] = v6;
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendVTInt32Point()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v1);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v2, v3, v4, v5, v6, v7, v8, v16, v18, HIDWORD(v18), v20);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7(result, v9, v10, v11, v12, v13, v14, v15, v17, HIDWORD(v17), v19, v21);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetVTInt32Point()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1026765424, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v27, 0, v29, v30);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v25, v28, v26);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageAppendVTInt32Size()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16(result, v1);
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19(result, v2, v3, v4, v5, v6, v7, v8, v16, v18, HIDWORD(v18), v20);
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15(result);
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7(result, v9, v10, v11, v12, v13, v14, v15, v17, HIDWORD(v17), v19, v21);
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetVTInt32Size()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1026765427, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v27, 0, v29, v30);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v25, v28, v26);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(OpaqueCMBlockBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  v19 = 0;
  CVPixelBufferGetIOSurface(pixelBuffer);
  bzero(buffer, 0x84uLL);
  theData = 0;
  v4 = VTParavirtualizationMessageCopyCFDictionary(a1, 745562484, &v19);
  v5 = v19;
  if (v4)
  {
    v6 = v4;
    goto LABEL_28;
  }

  if (v19)
  {
    CVBufferSetAttachments(pixelBuffer, v19, kCVAttachmentMode_ShouldPropagate);
  }

  v16[0] = 0;
  v6 = VTParavirtualizationMessageCopyCFData(a1, 744644980, v16);
  v7 = v16[0];
  if (!v6 && v16[0])
  {
    bzero(buffer, 0x84uLL);
    Length = CFDataGetLength(v7);
    if (Length >= 0x84)
    {
      v9.length = 132;
    }

    else
    {
      v9.length = Length;
    }

    v9.location = 0;
    CFDataGetBytes(v7, v9, buffer);
    goto LABEL_11;
  }

  if (v16[0])
  {
LABEL_11:
    CFRelease(v7);
  }

  if (v6)
  {
    goto LABEL_28;
  }

  memcpy(v16, buffer, 0x84uLL);
  if (LOBYTE(v16[0]))
  {
LABEL_14:
    if (IOSurfaceSetBulkAttachments2())
    {
LABEL_27:
      v6 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 1;
    while (v10 != 132)
    {
      if (*(v16 + v10++))
      {
        if ((v10 - 2) < 0x83)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = VTParavirtualizationMessageCopyCFData(a1, v12 + 744779824, &theData);
    v14 = theData;
    if (v13)
    {
      break;
    }

    if (theData)
    {
      if (CFDataGetLength(theData))
      {
        CFDataGetBytePtr(v14);
        if (IOSurfaceSetDataProperty())
        {
          v6 = 0;
LABEL_32:
          CFRelease(v14);
          goto LABEL_28;
        }
      }

      CFRelease(v14);
      theData = 0;
    }

    if (++v12 == 4)
    {
      goto LABEL_27;
    }
  }

  v6 = v13;
  if (theData)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t VTParavirtualizationReplyClerkDeliverReply(uint64_t a1, OpaqueCMBlockBuffer *a2, NSObject *a3, NSObject *a4)
{
  v25 = 0;
  key = 0;
  result = VTParavirtualizationMessageGetReplyIdentifier(a2, &key);
  if (result)
  {
    return result;
  }

  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v25, &v25 + 1, 0);
  if (result)
  {
    return result;
  }

  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48) || (Value = CFDictionaryGetValue(*(a1 + 40), key)) == 0)
  {
    os_unfair_lock_unlock((a1 + 24));
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, key, v27);
  }

  v10 = Value;
  v11 = Value[2];
  if ((BYTE4(v25) & 0x10) == 0)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_22_3();
      CMBlockBufferAppendBufferReference(v12, v13, v14, v15, 0);
      v17 = v10[1];
      v16 = v10[2];
      v10[1] = v16;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v17 = v10[1];
      v10[1] = a2;
      if (!a2)
      {
LABEL_15:
        if (v17)
        {
          CFRelease(v17);
        }

        v23 = v10[3];
        v10[3] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v10[4] = a4;
        v22 = *v10;
        dispatch_retain(*v10);
        goto LABEL_26;
      }

      v16 = a2;
    }

    CFRetain(v16);
    goto LABEL_15;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_22_3();
    CMBlockBufferAppendBufferReference(v18, v19, v20, v21, 0);
    v22 = 0;
  }

  else
  {
    if (a2)
    {
      v24 = CFRetain(a2);
    }

    else
    {
      v24 = 0;
    }

    v22 = 0;
    v10[2] = v24;
  }

LABEL_26:
  os_unfair_lock_unlock((a1 + 24));
  if ((BYTE4(v25) & 0x10) == 0)
  {
    dispatch_semaphore_signal(v22);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  return 0;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_2(int a1, size_t blockLength, CMBlockBufferRef *a3, void *a4)
{
  blockBufferOut = 0;
  result = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, blockLength, *MEMORY[0x1E695E480], 0, 0, blockLength, 1u, &blockBufferOut);
  if (!result)
  {
    OUTLINED_FUNCTION_22_3();
    result = CMBlockBufferGetDataPointer(v7, v8, v9, v10, v11);
    if (!result)
    {
      *a3 = blockBufferOut;
      *a4 = 0;
    }
  }

  return result;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_3(int a1, OpaqueCMBlockBuffer *a2, size_t dataLength)
{
  blockBufferOut = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a2, 0, dataLength, 0, &blockBufferOut);
  if (v4)
  {
    v18 = v4;
    goto LABEL_25;
  }

  v5 = blockBufferOut;
  v28 = 0;
  *&v27.byte0 = 0;
  *&v27.byte8 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(blockBufferOut, &v28 + 1, &v28, &v27);
  if (MessageTypeAndFlagsAndGuestUUID)
  {
    goto LABEL_32;
  }

  v7 = CFUUIDCreateFromUUIDBytes(v3, v27);
  if (!v7)
  {
    OUTLINED_FUNCTION_2_10();
    MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, blockBufferOut, LODWORD(block[0]));
LABEL_32:
    v18 = MessageTypeAndFlagsAndGuestUUID;
    _Block_release(0);
    goto LABEL_25;
  }

  v8 = v7;
  os_unfair_lock_lock(&_MergedGlobals_18);
  Value = CFDictionaryGetValue(qword_1ED6D4538, v8);
  v10 = Value;
  if (!Value)
  {
    OUTLINED_FUNCTION_2_10();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, blockBufferOut, LODWORD(block[0]));
    os_unfair_lock_unlock(&_MergedGlobals_18);
    v11 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  v11 = _Block_copy(*Value);
  v12 = v10[1];
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v10[2];
  dispatch_retain(v14);
  v15 = v10[4];
  if (v15)
  {
    v10 = CFRetain(v15);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_18);
  if (HIDWORD(v28) == 1115252001)
  {
    os_unfair_lock_lock(&_MergedGlobals_18);
    v16 = *(CFDictionaryGetValue(qword_1ED6D4538, v8) + 4);
    if (v16)
    {
      v17 = CFRetain(v16);
      os_unfair_lock_unlock(&_MergedGlobals_18);
      if (v17)
      {
        VTParavirtualizationReplyClerkInvalidate(v17);
        CFRelease(v17);
      }
    }

    else
    {
      os_unfair_lock_unlock(&_MergedGlobals_18);
    }

    v11[2](v11, v5, v13);
  }

  else
  {
    if ((v28 & 4) != 0)
    {
      OUTLINED_FUNCTION_22_3();
      v18 = VTParavirtualizationReplyClerkDeliverReply(v20, v21, v22, v23);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    CFRetain(v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtParavirtualizationGuestDispatchOneMessageFromHost_block_invoke;
    block[3] = &unk_1E72C9890;
    block[4] = v11;
    block[5] = v5;
    block[6] = v13;
    dispatch_async(v14, block);
    v11 = 0;
  }

  v18 = 0;
  if (v13)
  {
LABEL_20:
    CFRelease(v13);
  }

LABEL_21:
  CFRelease(v8);
  _Block_release(v11);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_25:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

void VTParavirtualizationHostSessionCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);

  CFRelease(a2);
}

uint64_t VTParavirtualizationHostSessionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostSessionCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationReplyClerkCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationReplyClerkWaitForReply_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtpvScanForTopLevelBoxWithType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFPropertyList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_2(void *__src, uint64_t a2, _DWORD *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = CFDataCreate(*MEMORY[0x1E695E480], __dst, 132);
  appended = VTParavirtualizationMessageAppendCFData();
  *a3 = appended;
  if (v4)
  {
    CFRelease(v4);
  }

  return appended == 0;
}

uint64_t VTParavirtualizationCopyFilteredPixelBufferAttributes_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFigAudioSessionCreate(_OWORD *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v14 = 0;
  cf = 0;
  if (VTCMSessionIsSupported(a1, a2))
  {
    if (VTInAudioMXServerProcess())
    {
      UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        v7 = *MEMORY[0x1E695E480];
        UsingPrimaryAVAudioSessionSiblingForAuditToken = VTFigAudioSessionCreateWithCMSession();
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetInt32();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_8;
        }
      }

LABEL_15:
      v11 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
      goto LABEL_10;
    }

    v9 = *MEMORY[0x1E695E480];
    v10 = a1[1];
    v13[0] = *a1;
    v13[1] = v10;
    UsingPrimaryAVAudioSessionSiblingForAuditToken = VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v9, v13);
    if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  v11 = 0;
  if (a4)
  {
    *a4 = v14;
    v14 = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t VTFigAudioSessionInitialize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTFigAudioSessionInitialize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTFigAudioSessionCreateWithCMSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTInAudioMXServerProcess_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void VTCreateColorSpacesFromDictionaries(CFDictionaryRef theDict, CFDictionaryRef a2, void *a3, void *a4)
{
  v4 = theDict;
  if (!a3 || !a4)
  {
    goto LABEL_84;
  }

  v6 = MEMORY[0x1E6965CE8];
  v7 = MEMORY[0x1E6965EC8];
  v8 = MEMORY[0x1E6965D88];
  v9 = MEMORY[0x1E6965F30];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965CE8]);
    if (Value)
    {
      v11 = CFRetain(Value);
    }

    else
    {
      v11 = 0;
    }

    v12 = CFDictionaryGetValue(v4, *v7);
    v41 = CFDictionaryGetValue(v4, *v8);
    v13 = CFDictionaryGetValue(v4, *v9);
    v14 = CFDictionaryGetValue(v4, *MEMORY[0x1E6965ED0]);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v41 = 0;
    v13 = 0;
    v14 = 0;
  }

  v38 = v14;
  if (a2)
  {
    v15 = CFDictionaryGetValue(a2, *v6);
    if (v15)
    {
      v16 = CFRetain(v15);
    }

    else
    {
      v16 = 0;
    }

    v20 = CFDictionaryGetValue(a2, *v7);
    v17 = CFDictionaryGetValue(a2, *v8);
    v40 = CFDictionaryGetValue(a2, *v9);
    v18 = CFDictionaryGetValue(a2, *MEMORY[0x1E6965ED0]);
    v19 = v11 != 0;
    v39 = v16 != 0;
    if (v11 && v16 && FigCFEqual())
    {
      v21 = 0;
      MutableCopy = 0;
LABEL_77:
      CFRelease(v11);
LABEL_78:
      if (v16)
      {
        CFRelease(v16);
      }

      if (!MutableCopy)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (v12 && v20 && FigCFEqual())
    {
      goto LABEL_40;
    }

    v35 = v16 != 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v40 = 0;
    v18 = 0;
    v35 = 0;
    v19 = v11 != 0;
    v39 = 1;
  }

  if (v41)
  {
    v23 = v17 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (!v23 && v13 && v40 && FigCFEqual() && FigCFEqual() || (v38 ? (v25 = v24) : (v25 = 0), v25 == 1 && v18 && FigCFEqual() && FigCFEqual()))
  {
LABEL_40:
    MutableCopy = 0;
    v21 = 0;
    goto LABEL_76;
  }

  if (v4)
  {
    v26 = v19;
  }

  else
  {
    v26 = 1;
  }

  v27 = MEMORY[0x1E6965F98];
  if (v26)
  {
    MutableCopy = 0;
    goto LABEL_60;
  }

  v28 = *MEMORY[0x1E6965F98];
  if (CFDictionaryGetValue(v4, *MEMORY[0x1E6965F98]))
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionarySetValue(MutableCopy, v28, *MEMORY[0x1E695E738]);
    v4 = MutableCopy;
  }

  if (!FigCFEqual())
  {
    v30 = FigCFEqual();
    if (v30 == 0 && v35)
    {
      v31 = CFGetTypeID(v16);
      if (v31 != CGColorSpaceGetTypeID() || !CGColorSpaceUsesITUR_2100TF(v16))
      {
        goto LABEL_58;
      }
    }

    else if (!v30)
    {
LABEL_58:
      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v4);
      goto LABEL_59;
    }
  }

  if (!FigCFEqual() || !FigCFEqual())
  {
    goto LABEL_58;
  }

  ColorSpaceFromAttachments = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
LABEL_59:
  v11 = ColorSpaceFromAttachments;
LABEL_60:
  if (v39)
  {
    v21 = 0;
  }

  else
  {
    v32 = *v27;
    if (CFDictionaryGetValue(a2, *v27))
    {
      v21 = 0;
    }

    else
    {
      v21 = FigCFDictionaryCreateMutableCopy();
      CFDictionarySetValue(v21, v32, *MEMORY[0x1E695E738]);
      a2 = v21;
    }

    if ((FigCFEqual() || FigCFEqual() || v11 && (v34 = CFGetTypeID(v11), v34 == CGColorSpaceGetTypeID()) && CGColorSpaceUsesITUR_2100TF(v11)) && FigCFEqual() && FigCFEqual())
    {
      v33 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
    }

    else
    {
      v33 = CVImageBufferCreateColorSpaceFromAttachments(a2);
    }

    v16 = v33;
  }

  if (FigCFEqual())
  {
LABEL_76:
    if (!v11)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  *a3 = v11;
  *a4 = v16;
  if (MutableCopy)
  {
LABEL_81:
    CFRelease(MutableCopy);
  }

LABEL_82:
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_84:
  OUTLINED_FUNCTION_41();
}

uint64_t VTGetBitsPerComponentFromPixelFormatType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTCreateColorAttachments_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTCreateColorAttachments_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateColorAttachments_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateColorAttachments_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateVImageConverter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

OSStatus VTFrameSiloAddSampleBuffer(VTFrameSiloRef silo, CMSampleBufferRef sampleBuffer)
{
  v174 = *MEMORY[0x1E69E9840];
  if (!silo)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_16();
    v5 = v147;
    v6 = 4294954394;
    v7 = 721;
    goto LABEL_4;
  }

  if (!*(silo + 16))
  {
    if (!sampleBuffer)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_16();
      v5 = v152;
      v6 = 4294954394;
      v7 = 726;
      goto LABEL_4;
    }

    if (!CMSampleBufferIsValid(sampleBuffer))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_16();
      v5 = v153;
      v6 = 4294954394;
      v7 = 727;
      goto LABEL_4;
    }

    v10 = OUTLINED_FUNCTION_15_9();
    CMSampleBufferGetDecodeTimeStamp(v11, v10);
    value = time1.duration.value;
    flags = time1.duration.flags;
    timescale = time1.duration.timescale;
    epoch = time1.duration.epoch;
    v14 = OUTLINED_FUNCTION_15_9();
    CMSampleBufferGetPresentationTimeStamp(v15, v14);
    v166 = time1.duration.value;
    v167 = time1.duration.timescale;
    if ((time1.duration.flags & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    if (*(silo + 44))
    {
      OUTLINED_FUNCTION_17_8();
      *&time2.start.value = *(silo + 2);
      time2.start.epoch = *(silo + 6);
      if (CMTimeCompare(&time1.duration, &time2.start) <= 0)
      {
LABEL_112:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      OUTLINED_FUNCTION_16_9();
    }

    if (*(silo + 72))
    {
      v16 = *(silo + 8);
      if ((*(v16 + 12) & 1) == 0 || (*(v16 + 36) & 1) == 0 || *(v16 + 40) || (*(v16 + 24) & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }
    }

    if (*(silo + 7) < 1)
    {
      goto LABEL_23;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (*(silo + 8) + v17);
      *&time1.duration.value = *v19;
      *&time1.duration.epoch = v19[1];
      *&time1.presentationTimeStamp.timescale = v19[2];
      *&time2.start.value = *&time1.duration.value;
      *&time2.start.epoch = *&time1.duration.epoch;
      *&time2.duration.timescale = *&time1.presentationTimeStamp.timescale;
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      if (CMTimeRangeContainsTime(&time2, &time))
      {
        goto LABEL_23;
      }

      v20 = *(silo + 7);
      ++v18;
      v17 += 48;
    }

    while (v18 < v20);
    if (v20 < 1)
    {
LABEL_23:
      FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
      v158 = v2;
      if (FormatDescription)
      {
        v22 = FormatDescription;
        v23 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetDecodeTimeStamp(v24, v23);
        timingArrayEntriesNeededOut = time1.duration.value;
        v25 = time1.duration.flags;
        v173 = time1.duration.timescale;
        v26 = time1.duration.epoch;
        v27 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetPresentationTimeStamp(v28, v27);
        error = time1.duration.value;
        v171 = time1.duration.timescale;
        v29 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetOutputPresentationTimeStamp(v30, v29);
        CMSampleBufferGetPresentationTimeStamp(&time2.start, sampleBuffer);
        CMTimeCompare(&time1.duration, &time2.start);
        if (*(silo + 72))
        {
          if (CFArrayGetCount(*(silo + 10)) < 1 || (v31 = *(silo + 10), Count = CFArrayGetCount(v31), ValueAtIndex = CFArrayGetValueAtIndex(v31, Count - 1), !FigCFEqual()))
          {
            OUTLINED_FUNCTION_7_13();
            v35 = malloc_type_malloc(0x38uLL, v34);
            *v35 = timingArrayEntriesNeededOut;
            *(v35 + 2) = v173;
            *(v35 + 3) = v25;
            *(v35 + 2) = v26;
            *(v35 + 5) = v26;
            *(v35 + 24) = *v35;
            *(v35 + 6) = CFRetain(v22);
            v36 = OUTLINED_FUNCTION_19_5();
            CFArrayAppendValue(v36, v37);
            goto LABEL_76;
          }

          ValueAtIndex[3] = timingArrayEntriesNeededOut;
          *(ValueAtIndex + 8) = v173;
LABEL_43:
          *(ValueAtIndex + 9) = v25;
          ValueAtIndex[5] = v26;
          goto LABEL_76;
        }

        v38 = *(silo + 11);
        if (v38 >= CFArrayGetCount(*(silo + 10)))
        {
          v39 = CFArrayGetCount(*(silo + 10)) - 1;
          *(silo + 11) = v39;
        }

        else
        {
          v39 = *(silo + 11);
        }

        if (v39 >= CFArrayGetCount(*(silo + 10)))
        {
          ValueAtIndex = 0;
        }

        else
        {
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(silo + 10), *(silo + 11));
            OUTLINED_FUNCTION_2_27();
            if ((OUTLINED_FUNCTION_13_10(v40, v41, v42, v43, v44, v45, v46, v47, v155, cf, v157, v158, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v161.value, *&v161.timescale, v161.epoch, v162, time.value, *&time.timescale, time.epoch, v164, time1.duration.value) & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_2_27();
              if (OUTLINED_FUNCTION_12_8(v48, v49, v50, v51, v52, v53, v54, v55, v155, cf, v157, v158, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v161.value, *&v161.timescale, v161.epoch, v162, time.value, *&time.timescale, time.epoch, v164, time1.duration.value) < 1)
              {
                break;
              }
            }

            v56 = *(silo + 11) + 1;
            if (v56 >= CFArrayGetCount(*(silo + 10)))
            {
              break;
            }

            CFArrayGetValueAtIndex(*(silo + 10), *(silo + 11) + 1);
            OUTLINED_FUNCTION_2_27();
            if ((OUTLINED_FUNCTION_13_10(v57, v58, v59, v60, v61, v62, v63, v64, v155, cf, v157, v158, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v161.value, *&v161.timescale, v161.epoch, v162, time.value, *&time.timescale, time.epoch, v164, time1.duration.value) & 0x80000000) != 0)
            {
              break;
            }

            v65 = *(silo + 10);
            v66 = *(silo + 11) + 1;
            *(silo + 11) = v66;
          }

          while (v66 < CFArrayGetCount(v65));
        }

        if (FigCFEqual())
        {
          OUTLINED_FUNCTION_2_27();
          if (OUTLINED_FUNCTION_12_8(v67, v68, v69, v70, v71, v72, v73, v74, v155, cf, v157, v158, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v161.value, *&v161.timescale, v161.epoch, v162, time.value, *&time.timescale, time.epoch, v164, time1.duration.value) < 1)
          {
            goto LABEL_76;
          }

          ValueAtIndex[3] = timingArrayEntriesNeededOut;
          *(ValueAtIndex + 8) = v173;
          goto LABEL_43;
        }

        cf = v22;
        *&time1.duration.value = *MEMORY[0x1E6960C70];
        time1.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *&time2.start.value = *&time1.duration.value;
        time2.start.epoch = time1.duration.epoch;
        OUTLINED_FUNCTION_8_11();
        TimeStamp = VTMultiPassStorageGetTimeStamp(v75, v76, v77, &time1.duration);
        v157 = epoch;
        if (TimeStamp || (OUTLINED_FUNCTION_8_11(), (TimeStamp = VTMultiPassStorageGetTimeStamp(v79, v80, v81, &time2.start)) != 0))
        {
          Code = TimeStamp;
        }

        else
        {
          if (CFArrayGetCount(*(silo + 10)) >= 1)
          {
            v82 = 0;
            do
            {
              v83 = OUTLINED_FUNCTION_19_5();
              v85 = CFArrayGetValueAtIndex(v83, v84);
              v93 = v85;
              if ((time1.duration.flags & 0x1D) == 1)
              {
                v94 = OUTLINED_FUNCTION_14_9(v85, v86, v87, v88, v89, v90, v91, v92, v155, cf, v157, v158, time2.start.value, *&time2.start.timescale, *&time2.start.epoch, *&time2.duration.timescale, time2.duration.epoch, *&v161.value, v161.epoch, v162, v85[3], v85[4], v85[5], v164, *&time1.duration.value, time1.duration.epoch);
                if (v94 < 1)
                {
                  OUTLINED_FUNCTION_10_10();
                  if (!v111)
                  {
                    goto LABEL_71;
                  }

                  v112 = 0;
                  v102 = 1;
                  goto LABEL_60;
                }

                v102 = OUTLINED_FUNCTION_14_9(v94, v95, v96, v97, v98, v99, v100, v101, v155, cf, v157, v158, time2.start.value, *&time2.start.timescale, *&time2.start.epoch, *&time2.duration.timescale, time2.duration.epoch, *&v161.value, v161.epoch, v162, *v93, v93[1], v93[2], v164, *&time1.duration.value, time1.duration.epoch) > 0;
                OUTLINED_FUNCTION_10_10();
                if (!v111)
                {
                  if (v103 <= 0)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_64;
                }
              }

              else
              {
                OUTLINED_FUNCTION_10_10();
                if (!v111)
                {
                  goto LABEL_64;
                }

                v102 = 1;
              }

              v112 = 1;
LABEL_60:
              OUTLINED_FUNCTION_18_6(v103, v104, v105, v106, v107, v108, v109, v110, v155, cf, v157, v158, *&time2.start.value);
              v113 = *v93;
              v161.epoch = v93[2];
              *&v161.value = v113;
              v114 = CMTimeCompare(&time, &v161);
              if (v114 < 1)
              {
                break;
              }

              OUTLINED_FUNCTION_18_6(v114, v115, v116, v117, v118, v119, v120, v121, v155, cf, v157, v159, *&time2.start.value);
              v161 = *(v93 + 1);
              v122 = CMTimeCompare(&time, &v161);
              if ((v112 & 1) == 0)
              {
                if (v122 <= 0)
                {
                  break;
                }

                goto LABEL_71;
              }

              if (!v102)
              {
                if (v122 <= 0)
                {
                  OUTLINED_FUNCTION_7_13();
                  v150 = malloc_type_malloc(v148, v149);
                  *v150 = *&time2.start.value;
                  *(v150 + 2) = time2.start.epoch;
                  v151 = v93[5];
                  *(v150 + 24) = *(v93 + 3);
                  *(v150 + 5) = v151;
                  *(v150 + 6) = CFRetain(v93[6]);
                  CFArrayInsertValueAtIndex(*(silo + 10), v82 + 1, v150);
                  *(v93 + 3) = *&time1.duration.value;
                  v93[5] = time1.duration.epoch;
                  break;
                }

LABEL_70:
                *(v93 + 3) = *&time1.duration.value;
                v93[5] = time1.duration.epoch;
LABEL_71:
                ++v82;
                continue;
              }

              if (v122 <= 0)
              {
                v125 = *&time2.start.value;
                v93[2] = time2.start.epoch;
                *v93 = v125;
                break;
              }

LABEL_64:
              v123 = OUTLINED_FUNCTION_19_5();
              CFArrayRemoveValueAtIndex(v123, v124);
            }

            while (v82 < CFArrayGetCount(*(silo + 10)));
          }

          OUTLINED_FUNCTION_7_13();
          v128 = malloc_type_malloc(v126, v127);
          v129 = timingArrayEntriesNeededOut;
          *v128 = timingArrayEntriesNeededOut;
          v130 = v173;
          v128[2] = v173;
          v128[3] = v25;
          *(v128 + 2) = v26;
          *(v128 + 3) = v129;
          v128[8] = v130;
          v128[9] = v25;
          *(v128 + 5) = v26;
          *(v128 + 6) = CFRetain(cf);
          v131 = OUTLINED_FUNCTION_19_5();
          CFArrayInsertValueAtIndex(v131, v132, v128);
          Code = 0;
        }

        if (!Code)
        {
LABEL_76:
          memset(&time1, 0, sizeof(time1));
          time2.start.value = 0;
          time.value = 0;
          v161.value = 0;
          timingArrayEntriesNeededOut = 0;
          HIDWORD(v164) = 0;
          error = 0;
          v134 = *MEMORY[0x1E695E480];
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
          SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sampleBuffer, 0, 0, &timingArrayEntriesNeededOut);
          if (!SampleTimingInfoArray)
          {
            if (timingArrayEntriesNeededOut == 1)
            {
              SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sampleBuffer, 1, &time1, 0);
              if (!SampleTimingInfoArray)
              {
                CFDataAppendBytes(Mutable, &time1, 72);
                SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBuffer, 1u);
                v138 = CFPropertyListCreateData(v134, SampleAttachmentsArray, kCFPropertyListBinaryFormat_v1_0, 0, &error);
                if (!v138)
                {
                  goto LABEL_114;
                }

                if (error)
                {
                  v139 = CFErrorCopyFailureReason(error);
                  Code = CFErrorGetCode(error);
                  if (!Mutable)
                  {
LABEL_90:
                    if (error)
                    {
                      CFRelease(error);
                    }

                    if (v138)
                    {
                      CFRelease(v138);
                    }

                    if (v139)
                    {
                      CFRelease(v139);
                    }

                    if (!Code)
                    {
                      OUTLINED_FUNCTION_17_8();
                      Code = VTMultiPassStorageSetDataAtTimeStamp(v146, &time1.duration.value, 0, Mutable);
                      if (!Code)
                      {
                        OUTLINED_FUNCTION_16_9();
                      }
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    return Code;
                  }

LABEL_82:
                  CFRelease(Mutable);
                  Mutable = 0;
                  goto LABEL_90;
                }

                Length = CFDataGetLength(v138);
                if (Length < 0x80000000 && (HIDWORD(v164) = Length, Length > 0) && (CFDataAppendBytes(Mutable, &v164 + 4, 4), BytePtr = CFDataGetBytePtr(v138), CFDataAppendBytes(Mutable, BytePtr, SHIDWORD(v164)), (DataBuffer = CMSampleBufferGetDataBuffer(sampleBuffer)) != 0))
                {
                  v143 = DataBuffer;
                  v144 = 0;
                  while (1)
                  {
                    DataPointer = CMBlockBufferGetDataPointer(v143, v144, &time, &time2, &v161);
                    if (DataPointer)
                    {
                      break;
                    }

                    CFDataAppendBytes(Mutable, v161.value, time.value);
                    v144 += time.value;
                    if (v144 >= time2.start.value)
                    {
                      v139 = 0;
                      Code = 0;
                      goto LABEL_90;
                    }
                  }
                }

                else
                {
LABEL_114:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_7();
                  DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                }

                Code = DataPointer;
LABEL_116:
                v139 = 0;
                if (!Mutable)
                {
                  goto LABEL_90;
                }

                goto LABEL_82;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_7();
              SampleTimingInfoArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v155, cf, v157);
            }
          }

          Code = SampleTimingInfoArray;
          v138 = 0;
          goto LABEL_116;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v155, cf, v157);
        if (!Code)
        {
          goto LABEL_76;
        }
      }

      return Code;
    }

    goto LABEL_112;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_16();
  v5 = v4;
  v6 = 4294954393;
  v7 = 724;
LABEL_4:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< VTFrameSilo >>>>", v7);
}

OSStatus VTFrameSiloSetTimeRangesForNextPass(VTFrameSiloRef silo, CMItemCount timeRangeCount, const CMTimeRange *timeRangeArray)
{
  v93 = *MEMORY[0x1E69E9840];
  v91 = *MEMORY[0x1E6960C98];
  v92 = *(MEMORY[0x1E6960C98] + 8);
  if (!silo)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_3();
    v6 = v60;
    v7 = 4294954394;
    v8 = 795;
    goto LABEL_4;
  }

  if (*(silo + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_3();
    v6 = v5;
    v7 = 4294954393;
    v8 = 798;
LABEL_4:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, "<<<< VTFrameSilo >>>>", v8);
  }

  if (timeRangeCount <= 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_3();
    v6 = v61;
    v7 = 4294955080;
    v8 = 800;
    goto LABEL_4;
  }

  if (!timeRangeArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_3();
    v6 = v62;
    v7 = 4294955080;
    v8 = 801;
    goto LABEL_4;
  }

  v73 = v3;
  flags = *(MEMORY[0x1E6960C98] + 12);
  epoch = *(MEMORY[0x1E6960C98] + 16);
  v14 = *(MEMORY[0x1E6960C98] + 24);
  v15 = *(MEMORY[0x1E6960C98] + 32);
  v16 = *(MEMORY[0x1E6960C98] + 36);
  v17 = *(MEMORY[0x1E6960C98] + 40);
  *(silo + 72) = 0;
  *(silo + 7) = 0;
  v18 = *(silo + 8);
  if (v18)
  {
    v19 = epoch;
    v20 = v15;
    free(v18);
    v15 = v20;
    epoch = v19;
    *(silo + 8) = 0;
  }

  v69 = *&timeRangeCount;
  v71 = silo;
  v21 = v17 == 0;
  p_duration = &timeRangeArray->duration;
  __src = timeRangeArray;
  v67 = 825;
  v23 = timeRangeCount;
  do
  {
    v24 = flags;
    v25 = epoch;
    value = p_duration[-1].value;
    flags = p_duration[-1].flags;
    timescale = p_duration[-1].timescale;
    if ((flags & 1) == 0 || (v26 = v16, v16 = p_duration->flags, (v16 & 1) == 0) || p_duration->epoch || (v27 = v14, v14 = p_duration->value, p_duration->value < 0) || (flags & 0x1D) != 1 || (p_duration->flags & 0x1D) != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_22();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v28 = v15;
    epoch = p_duration[-1].epoch;
    v15 = p_duration->timescale;
    if ((v24 & 1) != 0 && (v26 & v21 & 1) != 0 && (v27 & 0x8000000000000000) == 0)
    {
      memset(&v88, 0, sizeof(v88));
      v29 = p_duration[-1].value;
      otherRange.duration.epoch = 0;
      range.start.value = v29;
      range.start.timescale = p_duration[-1].timescale;
      range.start.flags = flags;
      v77 = *&epoch;
      range.start.epoch = epoch;
      range.duration.value = v14;
      HIDWORD(v75) = v15;
      range.duration.timescale = v15;
      range.duration.flags = v16;
      range.duration.epoch = 0;
      otherRange.start.value = v91;
      otherRange.start.timescale = v92;
      otherRange.start.flags = v24;
      otherRange.start.epoch = v25;
      otherRange.duration.value = v27;
      otherRange.duration.timescale = v28;
      otherRange.duration.flags = v26;
      CMTimeRangeGetIntersection(&v88, &range, &otherRange);
      memset(&otherRange, 0, 24);
      range.start.value = v91;
      range.start.timescale = v92;
      range.start.flags = v24;
      range.start.epoch = v25;
      range.duration.value = v27;
      range.duration.timescale = v28;
      range.duration.flags = v26;
      range.duration.epoch = 0;
      CMTimeRangeGetEnd(&otherRange.start, &range);
      if ((v88.start.flags & 1) == 0 || (v88.duration.flags & 1) == 0 || v88.duration.epoch || v88.duration.value < 0 || (range.start = v88.duration, OUTLINED_FUNCTION_11_9(), CMTimeCompare(v30, v31)) || (*&range.start.value = *&otherRange.start.value, range.start.epoch = otherRange.start.epoch, OUTLINED_FUNCTION_11_9(), CMTimeCompare(v32, v33) >= 1))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_22();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      *&epoch = v77;
      v15 = HIDWORD(v75);
    }

    v91 = value;
    v92 = timescale;
    p_duration += 2;
    v21 = 1;
    --v23;
  }

  while (v23);
  v34 = v71;
  *(v71 + 7) = v69;
  if (*&v69 >= 0x555555555555556uLL)
  {
    *(v71 + 8) = 0;
    return -12904;
  }

  v35 = malloc_type_malloc(48 * *&v69, 0x1000040EED21634uLL);
  *(v71 + 8) = v35;
  if (!v35)
  {
    return -12904;
  }

  memcpy(v35, __src, 48 * *(v71 + 7));
  v36 = MEMORY[0x1E6960C70];
  if (*(v71 + 7) >= 1)
  {
    v37 = 0;
    do
    {
      v38 = (*(v34 + 8) + 48 * v37);
      v88 = *v38;
      *&otherRange.start.value = *&v38->start.value;
      otherRange.start.epoch = v38->start.epoch;
      range = v88;
      for (i = *&otherRange.start.value; ; i = *&otherRange.start.value)
      {
        OUTLINED_FUNCTION_11_9();
        if (!CMTimeRangeContainsTime(v39, v40))
        {
          break;
        }

        *&range.start.value = *v36;
        range.start.epoch = *(v36 + 16);
        OUTLINED_FUNCTION_9_11(*&range.start.value, v41, v42, v43, v44, v45, v46, v47, v63, *&__src, *&v67, v69, *&v71, v73, v75, v77, *&i, *(&i + 1), v82, v84, *&otherRange.start.value);
        result = VTMultiPassStorageSetDataAtTimeStamp(v48, v49, 0, 0);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_9_11(v50, v51, v52, v53, v54, v55, v56, v57, v64, *&__srca, v68, v70, v72, v74, v76, v78, v80, v81, v83, v85, *&otherRange.start.value);
        result = VTMultiPassStorageGetTimeStamp(v58, v59, @"GetNextTimeStamp", &range.start);
        if (result)
        {
          return result;
        }

        if ((range.start.flags & 1) == 0)
        {
          break;
        }

        *&otherRange.start.value = *&range.start.value;
        otherRange.start.epoch = range.start.epoch;
        range = v88;
      }

      ++v37;
    }

    while (v37 < *(v34 + 7));
  }

  result = 0;
  *(v34 + 11) = 0;
  *(v34 + 2) = *v36;
  *(v34 + 6) = *(v36 + 16);
  return result;
}

uint64_t VTFrameSiloCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionPreprocessFrame(uint64_t a1, void *cf, __int128 *a3, __int128 *a4, const __CFDictionary *a5, uint64_t a6)
{
  pixelBufferOut = 0;
  if (!a1 || *(a1 + 16) || !cf || (*(a3 + 3) & 0x1D) != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_25;
  }

  v12 = MEMORY[0x1E695E480];
  if (!*(a1 + 40) || CVPixelBufferIsCompatibleWithAttributes())
  {
    pixelBufferOut = CFRetain(cf);
    goto LABEL_15;
  }

  v13 = (a1 + 48);
  v14 = *v12;
  if (!*(a1 + 48))
  {
    v15 = CVPixelBufferPoolCreate(v14, 0, *(a1 + 40), (a1 + 48));
    if (v15)
    {
LABEL_25:
      v32 = v15;
      goto LABEL_27;
    }

    if (!*v13)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  v15 = VTPixelTransferSessionCreate(v14, (a1 + 56));
  if (v15)
  {
    goto LABEL_25;
  }

  v16 = *v13;
LABEL_13:
  v15 = CVPixelBufferPoolCreatePixelBuffer(v14, v16, &pixelBufferOut);
  if (v15)
  {
    goto LABEL_25;
  }

  v15 = VTPixelTransferSessionTransferImage(*(a1 + 56), cf, pixelBufferOut);
  v12 = MEMORY[0x1E695E480];
  if (v15)
  {
    goto LABEL_25;
  }

LABEL_15:
  if (a5)
  {
    v17 = *MEMORY[0x1E695E4D0];
    v18 = v17 == CFDictionaryGetValue(a5, @"OnlyForLookBehind");
    v19 = v17 == CFDictionaryGetValue(a5, @"OnlyForLookAhead");
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v44 = *a3;
  v45 = *(a3 + 2);
  v42 = *a4;
  v43 = *(a4 + 2);
  if (*(a1 + 88) || (v20 = CFGetAllocator(a1), v21 = CFDictionaryCreateMutable(v20, 0, 0, 0), (*(a1 + 88) = v21) != 0))
  {
    v22 = *(a1 + 96);
    *(a1 + 96) = v22 + 1;
    if (!v19 && !v18)
    {
      v23 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408211C625uLL);
      *v23 = v44;
      *(v23 + 2) = v45;
      *(v23 + 24) = v42;
      *(v23 + 5) = v43;
      *(v23 + 7) = a6;
      v24 = *v12;
      Count = CFArrayGetCount(*(a1 + 80));
      Mutable = CFArrayCreateMutable(v24, Count, 0);
      *(v23 + 6) = Mutable;
      v27 = *(a1 + 80);
      v46.length = CFArrayGetCount(v27);
      v46.location = 0;
      CFArrayAppendArray(Mutable, v27, v46);
      CFDictionaryAddValue(*(a1 + 88), v22, v23);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v36, v37);
    if (v15)
    {
      goto LABEL_25;
    }

    v22 = 0;
  }

  v28 = *(a1 + 64);
  v29 = pixelBufferOut;
  v39 = *a3;
  v40 = *(a3 + 2);
  v35 = *a4;
  v38 = *(a4 + 2);
  v30 = *(CMBaseObjectGetVTable() + 16);
  if (*v30 >= 2uLL)
  {
    v31 = v30[12];
    if (v31)
    {
      v44 = v39;
      v45 = v40;
      v42 = v35;
      v43 = v38;
      v15 = v31(v28, v22, v29, &v44, &v42, a5);
      goto LABEL_25;
    }
  }

  v32 = 4294954514;
LABEL_27:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v32;
}

uint64_t VTPreprocessingSessionCompleteFrames(uint64_t a1)
{
  if (!a1 || *(a1 + 16))
  {
LABEL_8:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v2 = *(a1 + 64);
  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 < 2uLL)
  {
    return 4294954514;
  }

  v4 = v3[13];
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v2);
  if (!result)
  {
    result = *(a1 + 88);
    if (result)
    {
      if (CFDictionaryGetCount(result) < 1)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t VTEncoderPreprocessingSessionSetResolutionOutputPixelBufferAttributes(uint64_t a1, void *a2, const void *a3)
{
  IsPartOfSession = vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2);
  if (!IsPartOfSession)
  {
    v6 = a2[2];
    a2[2] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a2[3];
    if (v7)
    {
      CFRelease(v7);
      a2[3] = 0;
    }

    v8 = a2[5];
    if (v8)
    {
      CFRelease(v8);
      a2[5] = 0;
    }

    v9 = a2[6];
    if (v9)
    {
      CFRelease(v9);
      a2[6] = 0;
    }
  }

  return IsPartOfSession;
}

VTPixelTransferSessionRef VTEncoderPreprocessingSessionGetResolutionOutputPixelBufferPool(uint64_t a1, VTPixelTransferSessionRef *a2)
{
  if (vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2))
  {
    return 0;
  }

  if (!a2[3] && ((v3 = *MEMORY[0x1E695E480], VTBuildPixelBufferPools(*MEMORY[0x1E695E480], a2[2], a2[4], *a2, a2 + 3, a2 + 5)) || a2[5] && VTPixelTransferSessionCreate(v3, a2 + 6)))
  {
    return 0;
  }

  else
  {
    return a2[3];
  }
}

uint64_t VTEncoderPreprocessingSessionEmitPreprocessedFrame(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, void *a5)
{
  pixelBufferOut = 0;
  v31 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v29 = v31;
  v30 = v32;
  IsPartOfSession = vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2);
  if (IsPartOfSession)
  {
    return IsPartOfSession;
  }

  v11 = *a1;
  Value = CFDictionaryGetValue(*(*a1 + 88), a3);
  if (!Value)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, DWORD2(v25), v26);
    v15 = 0;
    if (v17)
    {
      return v17;
    }

LABEL_11:
    if (a4)
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_21;
    }

    if (a5)
    {
      v20 = *(a2 + 40);
      if (!v20)
      {
        v19 = CFRetain(a5);
        a4 = 0;
        v17 = 0;
        pixelBufferOut = v19;
LABEL_21:
        v23 = *(a2 + 56);
        v22 = *(a2 + 64);
        v27 = v31;
        v28 = v32;
        v25 = v29;
        v26 = v30;
        v23(v22, v15, a4, &v27, &v25, v19);
        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
        }

        return v17;
      }

      v21 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v20, &pixelBufferOut);
      if (pixelBufferOut)
      {
        v21 = VTPixelTransferSessionTransferImage(*(a2 + 48), a5, pixelBufferOut);
        a4 = v21;
        v19 = pixelBufferOut;
LABEL_19:
        v17 = v21;
        goto LABEL_21;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, DWORD2(v25), v26);
    }

    a4 = v21;
    v19 = 0;
    goto LABEL_19;
  }

  v13 = Value;
  v31 = *Value;
  v32 = *(Value + 2);
  v29 = *(Value + 24);
  v14 = *(Value + 6);
  v30 = *(Value + 5);
  v15 = *(Value + 7);
  v34.length = CFArrayGetCount(v14);
  v34.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v34, a2);
  if (FirstIndexOfValue == -1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, DWORD2(v25), v26);
  }

  else
  {
    CFArrayRemoveValueAtIndex(v13[6], FirstIndexOfValue);
    v17 = 0;
  }

  if (!CFArrayGetCount(v13[6]))
  {
    v18 = v13[6];
    if (v18)
    {
      CFRelease(v18);
    }

    free(v13);
    CFDictionaryRemoveValue(*(v11 + 88), a3);
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  return v17;
}

uint64_t VTDistributedPreprocessingGetOverlap(const void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTPreprocessingSession >>>>", 988, v3);
    goto LABEL_7;
  }

  if (!a3)
  {
    v13 = fig_log_get_emitter();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954394, "<<<< VTPreprocessingSession >>>>", 989, v3);
    goto LABEL_7;
  }

  v6 = VTCreateVideoEncoderInstanceFromEncoderID(a1, *MEMORY[0x1E695E480], &cf);
  if (v6)
  {
LABEL_7:
    v10 = v6;
    goto LABEL_9;
  }

  v7 = cf;
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (*v8 >= 2uLL)
  {
    v9 = v8[14];
    if (v9)
    {
      v6 = v9(v7, a2, a3);
      goto LABEL_7;
    }
  }

  v10 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t VTPreprocessingSessionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtPreprocessingSessionEnsureResolutionIsPartOfSession_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t vtPreprocessingSessionCreateProperties_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtPreprocessingSessionCreateProperties_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtMultiPassStorageCreateEmptyTable(uint64_t a1)
{
  FigSimpleMutexLock();
  v1 = FigFileForkWrite();
  if (!v1)
  {
    fig_log_get_emitter();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0, 335544320);
  }

  v3 = v1;
  FigSimpleMutexUnlock();
  return v3;
}

OSStatus VTMultiPassStorageClose(VTMultiPassStorageRef multiPassStorage)
{
  if (multiPassStorage)
  {
    if (*(multiPassStorage + 32))
    {
      return -12214;
    }

    v2 = *(multiPassStorage + 9);
    if (*(multiPassStorage + 56))
    {
      FigFileForkClose();
      FigFileDeleteFile();
LABEL_47:
      *(multiPassStorage + 9) = 0;
      v22 = *(multiPassStorage + 8);
      if (v22)
      {
        CFRelease(v22);
        *(multiPassStorage + 8) = 0;
      }

      VTMultiPassStorageInvalidate(multiPassStorage, v3, v4);
      return 0;
    }

    if (!v2)
    {
LABEL_46:
      FigFileForkClose();
      goto LABEL_47;
    }

    FigSimpleMutexLock();
    if (*(multiPassStorage + 11) && FigFileForkWrite())
    {
      FigSimpleMutexUnlock();
      v5 = 0;
LABEL_45:
      free(v5);
      goto LABEL_46;
    }

    *(multiPassStorage + 11) = 0;
    if (*(multiPassStorage + 6))
    {
      v6 = CFGetAllocator(multiPassStorage);
      ExternalRepresentation = CFStringCreateExternalRepresentation(v6, *(multiPassStorage + 6), 0x8000100u, 0);
      Length = CFDataGetLength(ExternalRepresentation);
    }

    else
    {
      ExternalRepresentation = 0;
      Length = 0;
    }

    if (FigFileForkWrite())
    {
      goto LABEL_55;
    }

    v9 = *(multiPassStorage + 10);
    *(multiPassStorage + 13) = v9;
    *(multiPassStorage + 10) = v9 + 12;
    if (ExternalRepresentation)
    {
      CFDataGetBytePtr(ExternalRepresentation);
      if (FigFileForkWrite())
      {
        goto LABEL_55;
      }

      *(multiPassStorage + 10) += Length;
    }

    Count = CFArrayGetCount(*(multiPassStorage + 20));
    v11 = CFArrayGetCount(*(multiPassStorage + 21)) + Count;
    if (!FigFileForkWrite())
    {
      v25 = *(multiPassStorage + 10);
      *(multiPassStorage + 10) = v25 + 16;
      if (v11 >= 0x200)
      {
        v12 = 512;
      }

      else
      {
        v12 = v11;
      }

      v5 = malloc_type_malloc(36 * v12, 0x100004077774924uLL);
      if (v5)
      {
        v26 = ExternalRepresentation;
        if (v11 < 1)
        {
LABEL_39:
          if (!*(multiPassStorage + 12) || !FigFileForkWrite())
          {
            *(multiPassStorage + 12) = v25;
          }
        }

        else
        {
          v13 = 0;
          v14 = *(multiPassStorage + 20);
          while (1)
          {
            v15 = v11 - v13 >= v12 ? v12 : v11 - v13;
            if (v11 == v13)
            {
              v13 = v11;
            }

            else
            {
              v16 = v15 <= 1 ? 1 : v15;
              v17 = v16 + v13;
              v18 = v5;
              do
              {
                if (v13 >= CFArrayGetCount(*(multiPassStorage + 20)))
                {
                  v19 = CFArrayGetCount(*(multiPassStorage + 20));
                  v14 = *(multiPassStorage + 21);
                }

                else
                {
                  v19 = 0;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(v14, v13 - v19);
                *v18 = *ValueAtIndex;
                *(v18 + 2) = ValueAtIndex[2];
                *(v18 + 3) = ValueAtIndex[3];
                *(v18 + 4) = ValueAtIndex[6];
                *(v18 + 20) = *(ValueAtIndex + 4);
                *(v18 + 28) = *(ValueAtIndex + 5);
                ++v13;
                v18 += 36;
                --v16;
              }

              while (v16);
              v13 = v17;
            }

            v21 = 36 * v15;
            if (FigFileForkWrite())
            {
              break;
            }

            *(multiPassStorage + 10) += v21;
            if (v13 >= v11)
            {
              goto LABEL_39;
            }
          }
        }

        ExternalRepresentation = v26;
      }

      goto LABEL_43;
    }

LABEL_55:
    v5 = 0;
LABEL_43:
    FigSimpleMutexUnlock();
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    goto LABEL_45;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTMultiPassStorage >>>>", 1734);
}

uint64_t vtMultiPassStorageCopyStorageToMultiPassStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_29();
    v46 = v45;
    v47 = 4294954394;
    v48 = 937;
LABEL_50:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v47, "<<<< VTMultiPassStorage >>>>", v48);
  }

  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_29();
    v46 = v49;
    v47 = 4294954394;
    v48 = 938;
    goto LABEL_50;
  }

  if (*(a1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_29();
    v46 = v50;
    v47 = 4294955082;
    v48 = 939;
    goto LABEL_50;
  }

  if (*(a2 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_29();
    v46 = v51;
    v47 = 4294955082;
    v48 = 940;
    goto LABEL_50;
  }

  v8 = VTMultiPassStorageCopyIdentifier(a1, a2, a3);
  v9 = VTMultiPassStorageSetIdentifier(a2, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v9)
  {
    range.start.value = *a3;
    v10 = *(a3 + 8);
    v11 = *(a3 + 12);
    v64 = *a3;
    v65 = *(a3 + 8);
    v12 = *(a3 + 16);
    memset(&v63, 0, sizeof(v63));
    range.start.timescale = v10;
    range.start.flags = v11;
    v13 = *(a3 + 24);
    v14 = *(a3 + 40);
    v52 = v12;
    range.start.epoch = v12;
    range.duration.epoch = v14;
    *&range.duration.value = v13;
    CMTimeRangeGetEnd(&v63, &range);
    v61 = **&MEMORY[0x1E6960C70];
    memset(&range.duration, 0, sizeof(range.duration));
    Count = CFArrayGetCount(*(a1 + 160));
    cf = 0;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), 0);
    v66 = *ValueAtIndex;
    v18 = ValueAtIndex[3];
    v67 = ValueAtIndex[2];
    v19 = *(ValueAtIndex + 2);
    v20 = CFArrayGetValueAtIndex(*(a1 + 160), Count - 1);
    if ((v11 & 1) == 0)
    {
      v64 = v66;
      v65 = v67;
      v52 = v19;
      v11 = v18;
    }

    if ((v63.flags & 1) == 0)
    {
      v21 = *v20;
      v63.epoch = v20[2];
      *&v63.value = v21;
    }

    lhs = v63;
    rhs.value = v64;
    rhs.timescale = v65;
    rhs.flags = v11;
    rhs.epoch = v52;
    CMTimeSubtract(&v61, &lhs, &rhs);
    range.start.value = v64;
    range.start.timescale = v65;
    range.start.flags = v11;
    range.start.epoch = v52;
    v70.location = 0;
    v70.length = Count;
    v22 = CFArrayBSearchValues(*(a1 + 160), v70, &range, vtMultiPassLocationCompareTimeStampOnly, 0);
    v23 = CFArrayGetValueAtIndex(*(a1 + 160), v22);
    if (OUTLINED_FUNCTION_2_28(v23[1].n128_i64[0], *v23, v52, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, *&rhs.value, rhs.epoch, v58, *&lhs.value, lhs.epoch) <= 0 && v22 < Count)
    {
      v25 = v22 + 1;
      do
      {
        memset(&lhs, 0, sizeof(lhs));
        v26 = *v23;
        lhs.epoch = v23[1].n128_i64[0];
        *&lhs.value = v26;
        v27 = v23[1].n128_u32[2];
        *&rhs.value = v26;
        rhs.epoch = lhs.epoch;
        if (VTMultiPassStorageCopyDataAtTimeStamp(a1, &rhs.value, v27, &cf))
        {
          break;
        }

        rhs = lhs;
        if (VTMultiPassStorageSetDataAtTimeStamp(a2, &rhs.value, v27, cf))
        {
          break;
        }

        if (v25 < Count)
        {
          v23 = CFArrayGetValueAtIndex(*(a1 + 160), v25);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (a4)
        {
          v28 = FigGetUpTimeNanoseconds();
          if ((v28 - UpTimeNanoseconds) >= 0x3B9ACA01)
          {
            v29 = v28;
            v55 = lhs;
            v54.value = v64;
            v54.timescale = v65;
            v54.flags = v11;
            v54.epoch = v53;
            CMTimeSubtract(&rhs, &v55, &v54);
            Seconds = CMTimeGetSeconds(&rhs);
            rhs = v61;
            v31 = (Seconds / CMTimeGetSeconds(&rhs) + *a4) / *(a4 + 8);
            UpTimeNanoseconds = v29;
            if ((*(a4 + 24))(*(a4 + 16), v31))
            {
              break;
            }
          }
        }
      }

      while (OUTLINED_FUNCTION_2_28(v23[1].n128_i64[0], *v23, v53, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, *&rhs.value, rhs.epoch, v58, *&lhs.value, lhs.epoch) <= 0 && v25++ < Count);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v33 = CFArrayGetCount(*(a1 + 168));
    v63.value = 0;
    if (v33 >= 1)
    {
      v34 = v33;
      v35 = 0;
      while (1)
      {
        v36 = CFArrayGetValueAtIndex(*(a1 + 168), v35);
        v37 = *(v36 + 6);
        *&range.start.value = *v36;
        range.start.epoch = v36[2];
        v38 = VTMultiPassStorageCopyDataAtTimeStamp(a1, &range.start.value, v37, &v63);
        value = v63.value;
        if (v38)
        {
          break;
        }

        v40 = *(v36 + 6);
        *&range.start.value = *v36;
        range.start.epoch = v36[2];
        v41 = VTMultiPassStorageSetDataAtTimeStamp(a2, &range.start.value, v40, v63.value);
        value = v63.value;
        if (v41)
        {
          break;
        }

        if (v63.value)
        {
          CFRelease(v63.value);
          v63.value = 0;
        }

        if (v34 == ++v35)
        {
          goto LABEL_40;
        }
      }

      if (value)
      {
        CFRelease(value);
      }
    }

LABEL_40:
    if (a4)
    {
      v42 = *a4 + 1;
      *a4 = v42;
      v43 = v42 / *(a4 + 8);
      return (*(a4 + 24))(*(a4 + 16), v43);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t VTMultiPassStorageWriteMerged(const __CFArray *a1, const __CFURL *a2, uint64_t a3, uint64_t a4)
{
  multiPassStorageOut = 0;
  v20 = 0u;
  v21 = 0u;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"DoNotDelete", *MEMORY[0x1E695E4D0]);
    v11 = VTMultiPassStorageCreate(v9, a2, MEMORY[0x1E6960C98], Mutable, &multiPassStorageOut);
    if (!v11)
    {
      *&v20 = 0;
      *(&v20 + 1) = Count;
      *&v21 = a3;
      *(&v21 + 1) = a4;
      if (Count < 1)
      {
LABEL_13:
        VTMultiPassStorageClose(multiPassStorageOut);
        v16 = 0;
        goto LABEL_14;
      }

      v12 = 0;
      if (a4)
      {
        v13 = &v20;
      }

      else
      {
        v13 = 0;
      }

      v14 = MEMORY[0x1E6960C98];
      while (1)
      {
        multiPassStorage = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
        v11 = VTMultiPassStorageCreate(v9, ValueAtIndex, v14, Mutable, &multiPassStorage);
        if (v11)
        {
          break;
        }

        v16 = vtMultiPassStorageCopyStorageToMultiPassStorage(multiPassStorage, multiPassStorageOut, v14, v13);
        VTMultiPassStorageClose(multiPassStorage);
        if (multiPassStorage)
        {
          CFRelease(multiPassStorage);
        }

        if (v16)
        {
          goto LABEL_14;
        }

        if (Count == ++v12)
        {
          goto LABEL_13;
        }
      }
    }

    v16 = v11;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, multiPassStorage, v20);
    Mutable = 0;
  }

LABEL_14:
  if (multiPassStorageOut)
  {
    CFRelease(multiPassStorageOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

void vtMultiPassStorageFinalize(OpaqueVTMultiPassStorage *a1)
{
  VTMultiPassStorageClose(a1);
  v2 = *(a1 + 2);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 2) = 0;
  }
}

uint64_t VTMultiPassStorageCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL VTMultiPassStorageCreate_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

uint64_t VTMultiPassStorageCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTMultiPassStorageCopyIdentifier_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageWriteSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageWriteSegment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x1EEDBBB28](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

double gotLoadHelper_x8___DASContinuedProcessingTaskAssertionTag(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DuetActivityScheduler))
  {
    return dlopenHelper_DuetActivityScheduler(result);
  }

  return result;
}

double dlopenHelper_DuetActivityScheduler(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DuetActivityScheduler.framework/DuetActivityScheduler", 0);
  atomic_store(1u, &dlopenHelperFlag_DuetActivityScheduler);
  return a1;
}