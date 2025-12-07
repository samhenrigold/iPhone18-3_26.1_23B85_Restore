uint64_t vt_Copy_x422_v210(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_1();
    v7 = v5[1];
    v8 = *v4;
    v9 = v4[1];
    v14[12] = *v5;
    v14[13] = v8;
    v14[14] = v7;
    v14[15] = v9;
    v10 = *v2;
    v14[16] = *v3;
    v14[17] = v10;
    v15 = 0;
    BYTE4(v15) = *v1;
    if (v1[1] && (v11 = v6, v6 >= 2))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v11, global_queue, v14, vt_Copy_x422_v210_internal);
    }

    else
    {
      vt_Copy_x422_v210_internal(v14);
    }
  }

  return 0;
}

uint64_t vt_Copy_v210_x422(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_1();
    v7 = *v4;
    v14[12] = *v5;
    v14[13] = v7;
    v8 = v3[1];
    v9 = *v2;
    v10 = v2[1];
    v14[14] = *v3;
    v14[15] = v9;
    v14[16] = v8;
    v14[17] = v10;
    v15 = 0;
    BYTE4(v15) = *v1;
    if (v1[1] && (v11 = v6, v6 >= 2))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v11, global_queue, v14, vt_Copy_v210_x422_internal);
    }

    else
    {
      vt_Copy_v210_x422_internal(v14);
    }
  }

  return 0;
}

uint64_t vtPixelTransferAppendDynamicNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  v10 = *(a2 + 4) ^ *(a1 + 4);
  v11 = (v10 >> 4) & 1;
  v12 = v10 & 0x18;
  v13 = &kVTRotation_180;
  if (v12 == 24)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v10 >> 3) & 1;
  }

  if (v12 == 24)
  {
    v15 = 0;
  }

  else
  {
    v13 = &kVTRotation_0;
    v15 = (v10 >> 4) & 1;
  }

  v16 = (v10 & 8) == 0;
  if (v11)
  {
    v16 = 0;
  }

  v17 = &kVTRotation_CCW90;
  if (!v11)
  {
    v17 = &kVTRotation_CW90;
  }

  v18 = v12 == 24;
  if (v12 == 24)
  {
    v16 = 0;
    v19 = &kVTRotation_CW90;
  }

  else
  {
    v19 = v17;
  }

  if (!v18)
  {
    v11 = 0;
  }

  if ((v10 & 4) != 0)
  {
    v20 = v16;
  }

  else
  {
    v20 = v14;
  }

  if ((v10 & 4) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v13;
  }

  if ((v10 & 4) != 0)
  {
    v22 = v11;
  }

  else
  {
    v22 = v15;
  }

  v40 = 0u;
  v41[0] = 0u;
  v23 = *v21;
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 0;
  }

  v25 = MutableCopy;
  if (v23 == @"Rotation0")
  {
    CFDictionaryRemoveValue(MutableCopy, @"Rotation");
  }

  else
  {
    FigCFDictionarySetValue();
  }

  if (v22)
  {
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(v25, @"FlipHorizontalOrientation");
  }

  if (v20)
  {
    FigCFDictionarySetValue();
    if ((v10 & 2) == 0)
    {
LABEL_34:
      CFDictionaryRemoveValue(v25, @"DestinationColorPrimaries");
      CFDictionaryRemoveValue(v25, @"DestinationTransferFunction");
      goto LABEL_37;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v25, @"FlipVerticalOrientation");
    if ((v10 & 2) == 0)
    {
      goto LABEL_34;
    }
  }

  FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
LABEL_37:
  PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, 1, *v41, *(v41 + 1), &cf);
  v27 = cf;
  if (PixelBufferPoolAttributes)
  {
    appended = PixelBufferPoolAttributes;
    if (!cf)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v28 = *a6;
  v29 = *a1;
  v30 = *a2;
  v31 = *(a3 + 8);
  v32 = *(a3 + 24);
  v33 = *(a6 + 44);
  v38[0] = *(a6 + 28);
  v38[1] = v33;
  v38[2] = *(a6 + 60);
  v34 = *(a6 + 92);
  v37[0] = *(a6 + 76);
  v37[1] = v34;
  v37[2] = *(a6 + 108);
  appended = vtPixelTransferChainAppendDynamicNode(v28, cf, v25, 0, v29, v38, v30, v37, v31, *(&v31 + 1), v32);
  v27 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v27);
  }

LABEL_40:
  CFRelease(v25);
  return appended;
}

uint64_t vtPixelTransferAppendColorProcessingBlitterNodeCallback(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a1 + 5));
  v11 = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a2 + 5));
  cf = 0;
  v21 = *(a3 + 64);
  v22 = 0u;
  v23 = 0u;
  v12 = (*(a6 + 26) & 3) != 0;
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, v13, a6, 0, &v22);
  MutableCopy = 0;
  v15 = *MEMORY[0x1E695E480];
  if (((*(a2 + 4) ^ *(a1 + 4)) & 2) == 0 || (Mutable = FigCFDictionaryCreateMutableCopy(), MutableCopy = FigCFDictionaryCreateMutableCopy(), !Mutable))
  {
    Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  appended = 4294954392;
  if (Mutable && MutableCopy)
  {
    v18 = MEMORY[0x1E6965F98];
    if (StringForIntegerCodePoint)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F98], StringForIntegerCodePoint);
    }

    if (v11)
    {
      CFDictionarySetValue(MutableCopy, *v18, v11);
    }

    PixelBufferPoolAttributes = VTPixelBlitterColorHandlingOptimized_setup(*a1, Mutable, *a2, MutableCopy, 0, *(a6 + 170), *(a6 + 171), &v27, &v26, a3 + 32, &v25);
    if (PixelBufferPoolAttributes || (PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, v12, *&v23, *(&v23 + 1), &cf), PixelBufferPoolAttributes))
    {
      appended = PixelBufferPoolAttributes;
    }

    else
    {
      appended = VTPixelTransferChainAppendSoftwareNode(*a6, cf, 0, v26, v27, v25, v21 & 1);
      v27 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25 && v27)
  {
    (v25)();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return appended;
}

uint64_t vtPixelTransferAppendScalerNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = 0;
  bzero(v25, 0x118uLL);
  v10 = *(a1 + 7);
  v11 = *(a2 + 7);
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  *v18 = 0u;
  v12 = *(a6 + 26);
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, v13, a6, 0, &v23);
  appended = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, (v12 & 3) != 0, v24.f64[0], v24.f64[1], &v27);
  if (!appended)
  {
    VTConvertFloatRectToIntRect(a6 + 28, &v20);
    VTConvertFloatRectToIntRect(a6 + 76, v17);
    *v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v24))));
    *v19 = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v23))));
    vtAllocatePlanarBuffersCommon(*a1, &v20, v25);
    vtAllocatePlanarBuffersCommon(*a2, v17, v26);
    appended = VTPixelTransferChainAppendScalerNode(*a6, *(a3 + 8), v25, *(a6 + 168), v10 & 0x40, v11 & 0x40, *(a6 + 169), *(a6 + 136), v27, *(a3 + 32), v17[0], v17[1], v18[0], v18[1], v19[0], v19[1], v20, *(&v20 + 1), v21[0], v21[1], v22, *(&v22 + 1));
  }

  v15 = appended;
  vtFreePlanarBuffers(v25);
  vtFreePlanarBuffers(v26);
  if (v27)
  {
    CFRelease(v27);
  }

  return v15;
}

uint64_t VTPixelTransferGraphBuildChain_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelTransferGraphBuildChain_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void VTCompressionSessionSetProperty(uint64_t a1, void *value, const __CFNumber *a3)
{
  if (!a1 || *(a1 + 16) == 2)
  {
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_0();

    VTCompressionSessionRemote_SetProperty(v6, v7, v8);
    return;
  }

  vtCoreAnalyticsSaveUserConfiguredCompressionProperty(value, a3, a1);
  if (*(a1 + 850))
  {
    v10 = OUTLINED_FUNCTION_5_0();
    if (vtCompressionSessionIsPropertyHandledByRateControl(v10, v11))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_0();

      VTRateControlSessionSetProperty(v12);
      return;
    }
  }

  if (!vtCompressionSessionIsPropertyHandledByVideoToolbox(value))
  {
    v16 = OUTLINED_FUNCTION_5_0();
    if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(v16, v17))
    {
      goto LABEL_19;
    }

    if (!*(a1 + 850))
    {
      if (*(a1 + 851))
      {
        v21 = OUTLINED_FUNCTION_5_0();
        if (vtCompressionSessionIsPropertyHandledByRateControl(v21, v22))
        {
          OUTLINED_FUNCTION_6_0();
          VTRateControlSessionSetProperty(v23);
        }
      }
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      OUTLINED_FUNCTION_6_0();
      v18();
    }

    if (!CFEqual(@"AverageDataRate", value) && !CFEqual(@"AverageBitRate", value) && !CFEqual(@"ConvergenceDurationForAverageDataRate", value) && !CFEqual(@"DataRateLimits", value) && !CFEqual(@"MoreFramesBeforeStart", value) && !CFEqual(@"MoreFramesAfterEnd", value) && !CFEqual(@"RequestedMaxEncoderLatency", value) && !CFEqual(@"SourceFrameCount", value) && !CFEqual(@"ExpectedFrameRate", value) && !CFEqual(@"ExpectedDuration", value))
    {
      *(a1 + 256) = 1;
    }

    if (CFEqual(@"ProfileLevel", value))
    {
      v19 = *(a1 + 600);
      if (v19 == a3)
      {
        goto LABEL_56;
      }

      *(a1 + 600) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v19)
      {
        goto LABEL_56;
      }

      v20 = v19;
      goto LABEL_43;
    }

    if (CFEqual(@"ExpectedFrameRate", value))
    {
      v24 = (a1 + 728);
      if (a3)
      {
        v25 = a3;
        v26 = kCFNumberFloat32Type;
LABEL_54:
        CFNumberGetValue(v25, v26, v24);
        goto LABEL_56;
      }
    }

    else
    {
      if (!CFEqual(@"OutputBitDepth", value))
      {
        goto LABEL_56;
      }

      v24 = (a1 + 608);
      if (a3)
      {
        v25 = a3;
        v26 = kCFNumberSInt32Type;
        goto LABEL_54;
      }
    }

    *v24 = 0;
    goto LABEL_56;
  }

  if (CFEqual(@"PixelBufferPoolIsShared", value) || CFEqual(@"VideoEncoderPixelBufferAttributes", value) || CFEqual(@"PoolPixelBufferAttributesSeed", value) || CFEqual(@"PoolPixelBufferAttributes", value) || CFEqual(@"NumberOfPendingFrames", value) || CFEqual(@"CurrentHDRMetadataGenerationState", value))
  {
    goto LABEL_19;
  }

  if (!CFEqual(@"PixelTransferProperties", value))
  {
    if (!OUTLINED_FUNCTION_12_0() && !OUTLINED_FUNCTION_8_0() && !OUTLINED_FUNCTION_11_0() && !CFEqual(@"FieldDetail", value) && !CFEqual(@"ComponentRange", value) && !OUTLINED_FUNCTION_17_0() && !CFEqual(@"TransferFunction", value) && !CFEqual(@"GammaLevel", value) && !CFEqual(@"YCbCrMatrix", value) && !CFEqual(@"ICCProfile", value) && !CFEqual(@"MasteringDisplayColorVolume", value) && !CFEqual(@"ContentLightLevelInfo", value) && !CFEqual(@"MultiPassStorage", value) && !CFEqual(@"AuxiliaryTypeInfo", value) && !CFEqual(@"ChromaLocationTopField", value) && !CFEqual(@"ChromaLocationBottomField", value))
    {
      cf1 = @"AmbientViewingEnvironment";
      if (!CFEqual(@"AmbientViewingEnvironment", value) && !CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value) && !CFEqual(@"HasLeftStereoEyeView", value) && !CFEqual(@"HasRightStereoEyeView", value) && !CFEqual(@"HasEyeViewsReversed", value) && !CFEqual(@"HasAdditionalViews", value) && !CFEqual(@"HeroEye", value) && !CFEqual(@"ProjectionKind", value) && !CFEqual(@"ViewPackingKind", value) && !CFEqual(@"TransportIdentifier", value) && !CFEqual(@"WarpKind", value) && !CFEqual(@"StereoCameraBaseline", value) && !CFEqual(@"HorizontalDisparityAdjustment", value) && !CFEqual(@"CameraCalibrationDataLensCollection", value) && !CFEqual(@"HorizontalFieldOfView", value) && !CFEqual(@"PowerLogSessionID", value))
      {
        v81 = @"InputQueueMaxCount";
        if (!CFEqual(@"InputQueueMaxCount", value))
        {
          if (CFEqual(@"MaximizePowerEfficiency", value))
          {
            if (a3)
            {
              v50 = CFGetTypeID(a3);
              if (v50 == CFBooleanGetTypeID())
              {
                *(a1 + 569) = CFBooleanGetValue(a3);
                goto LABEL_106;
              }
            }

            goto LABEL_19;
          }

          if (CFEqual(@"HDRMetadataInsertionMode", value))
          {
            if (!*(a1 + 593))
            {
              goto LABEL_56;
            }

            if (*(a1 + 96))
            {
              goto LABEL_19;
            }

            if (!vtCompressionSessionValidateHDRMetadata(a1, a3))
            {
              *(a1 + 624) = 0;
              if (FigCFEqual())
              {
                v52 = MEMORY[0x1E695E4D0];
LABEL_241:
                *(a1 + 616) = *v52;
                goto LABEL_56;
              }

              if (!*(a1 + 693) || !FigCFEqual())
              {
                v52 = MEMORY[0x1E695E4C0];
                goto LABEL_241;
              }

              *(a1 + 616) = *MEMORY[0x1E695E4D0];
              *(a1 + 624) = 1;
            }

LABEL_56:
            OUTLINED_FUNCTION_7_0();
            return;
          }

          if (CFEqual(@"PreserveDynamicHDRMetadata", value))
          {
            if (a3)
            {
              if (*(a1 + 593))
              {
                v51 = CFGetTypeID(a3);
                if (v51 == CFBooleanGetTypeID())
                {
                  *(a1 + 652) = CFBooleanGetValue(a3);
                }
              }
            }

            goto LABEL_56;
          }

          if (CFEqual(@"InitialHDRMetadataGenerationState", value))
          {
            if (!vtCompressionSessionValidateInitialHDRMetadataState(a3))
            {
              if (!*(a1 + 96))
              {
                v55 = *(a1 + 664);
                if (v55 != a3)
                {
                  *(a1 + 664) = a3;
                  if (a3)
                  {
                    CFRetain(a3);
                  }

                  if (v55)
                  {
                    CFRelease(v55);
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_19;
            }

            goto LABEL_56;
          }

          if (CFEqual(@"AmbientViewingEnvironment", value))
          {
            if (*(a1 + 689))
            {
              v53 = OUTLINED_FUNCTION_5_0();
              *(a1 + 690) = vtCompressionSessionIsPropertyHandledByVideoEncoder(v53, v54);
              vtCompressionSessionUpdateAmbientViewingEnvironment(a1, a3);
              if (*(a1 + 690))
              {
                goto LABEL_107;
              }
            }

            goto LABEL_56;
          }

          if (!OUTLINED_FUNCTION_12_0() && !OUTLINED_FUNCTION_11_0() && !OUTLINED_FUNCTION_8_0())
          {
            if (CFEqual(@"AllowPixelTransfer", value))
            {
              if (a3)
              {
                v67 = CFGetTypeID(a3);
                if (v67 == CFBooleanGetTypeID())
                {
                  *(a1 + 568) = *MEMORY[0x1E695E4D0] == a3;
                  goto LABEL_56;
                }
              }

              goto LABEL_19;
            }

            if (!CFEqual(@"LowMemory", value))
            {
              goto LABEL_56;
            }

            if (!a3 || (v69 = CFGetTypeID(a3), v69 != CFBooleanGetTypeID()))
            {
LABEL_19:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_7_0();

              FigSignalErrorAtGM(v14);
              return;
            }

            if (*MEMORY[0x1E695E4D0] == a3)
            {
              *(a1 + 592) = 1;
              if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"InputQueueMaxCount"))
              {
                goto LABEL_56;
              }

              valuePtr = -1;
              v70 = *MEMORY[0x1E695E480];
              p_valuePtr = &valuePtr;
            }

            else
            {
              *(a1 + 592) = 0;
              if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"InputQueueMaxCount"))
              {
                goto LABEL_56;
              }

              v70 = *MEMORY[0x1E695E480];
              p_valuePtr = (a1 + 272);
            }

            v77 = CFNumberCreate(v70, kCFNumberIntType, p_valuePtr);
            VTVideoEncoderSetProperty(*(a1 + 472), @"InputQueueMaxCount", v77);
            if (!v77)
            {
              goto LABEL_56;
            }

            goto LABEL_404;
          }

          if (a3)
          {
            TypeID = CFNumberGetTypeID();
            if (TypeID == CFGetTypeID(a3))
            {
              if (OUTLINED_FUNCTION_12_0())
              {
                v68 = (a1 + 572);
              }

              else
              {
                if (!OUTLINED_FUNCTION_11_0())
                {
                  goto LABEL_369;
                }

                v68 = (a1 + 576);
              }

              CFNumberGetValue(a3, kCFNumberSInt32Type, v68);
            }

            else
            {
              if (!OUTLINED_FUNCTION_8_0())
              {
                goto LABEL_19;
              }

              v65 = CFGetTypeID(a3);
              if (v65 == CFBooleanGetTypeID())
              {
                v66 = *(a1 + 584);
                *(a1 + 584) = a3;
                CFRetain(a3);
LABEL_365:
                if (v66)
                {
                  CFRelease(v66);
                }
              }
            }

LABEL_369:
            if (*(a1 + 544))
            {
              if (OUTLINED_FUNCTION_11_0())
              {
                VTSessionSetProperty(*(a1 + 544), @"ClientPID", a3);
              }

              if (OUTLINED_FUNCTION_8_0())
              {
                VTSessionSetProperty(*(a1 + 544), @"RealTime", a3);
              }
            }

            if (*(a1 + 408))
            {
              if (OUTLINED_FUNCTION_11_0())
              {
                VTSessionSetProperty(*(a1 + 408), @"ClientPID", a3);
              }

              if (OUTLINED_FUNCTION_8_0())
              {
                VTSessionSetProperty(*(a1 + 408), @"RealTime", a3);
              }
            }

            if (vtCompressionSessionDispatchQueuesUpdatePriorityAndClientPID(a1))
            {
              goto LABEL_56;
            }

            v72 = OUTLINED_FUNCTION_5_0();
            if (vtCompressionSessionIsPropertyHandledByVideoEncoder(v72, v73))
            {
              OUTLINED_FUNCTION_6_0();
              VTVideoEncoderSetProperty(v74, v75, v76);
            }

            if (!OUTLINED_FUNCTION_8_0() || !vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FigThreadPriority") || *(a1 + 572))
            {
              goto LABEL_56;
            }

            v78 = *(a1 + 584);
            if (*MEMORY[0x1E695E4D0] == v78)
            {
              v84 = 0;
            }

            else
            {
              v79 = *MEMORY[0x1E695E4C0] == v78;
              v84 = 8 * v79;
              if (!v79)
              {
                goto LABEL_56;
              }
            }

            v77 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v84);
            VTVideoEncoderSetProperty(*(a1 + 472), @"FigThreadPriority", v77);
            if (!v77)
            {
              goto LABEL_56;
            }

LABEL_404:
            v20 = v77;
LABEL_43:
            CFRelease(v20);
            goto LABEL_56;
          }

          if (!OUTLINED_FUNCTION_8_0())
          {
            goto LABEL_19;
          }

          v66 = *(a1 + 584);
          *(a1 + 584) = 0;
          goto LABEL_365;
        }
      }
    }

    if (OUTLINED_FUNCTION_12_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidatePixelAspectRatio(a3);
      goto LABEL_118;
    }

    if (OUTLINED_FUNCTION_8_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateCleanAperture(a1, a3);
      goto LABEL_118;
    }

    if (OUTLINED_FUNCTION_11_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateFieldCount(a3);
      goto LABEL_118;
    }

    if (CFEqual(@"FieldDetail", value))
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateFieldDetail(a3);
      goto LABEL_118;
    }

    if (CFEqual(@"ComponentRange", value))
    {
      HasLeftStereoEyeView = vtCompressionSessionValidatePixelFormatComponentRange(a3);
LABEL_118:
      if (HasLeftStereoEyeView)
      {
        goto LABEL_56;
      }

LABEL_119:
      v42 = OUTLINED_FUNCTION_5_0();
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(v42, v43))
      {
        if (*(a1 + 96) == 1 || !FigVideoCodecTypeIsHEVCFlavor(*(a1 + 48)) || !OUTLINED_FUNCTION_17_0() && !CFEqual(@"TransferFunction", value) && !CFEqual(@"YCbCrMatrix", value))
        {
          OUTLINED_FUNCTION_6_0();
          if (!VTVideoEncoderSetProperty(v44, v45, v46))
          {
            if (CFEqual(@"MultiPassStorage", value))
            {
              v47 = *(a1 + 816);
              *(a1 + 816) = a3;
              if (!a3)
              {
                goto LABEL_248;
              }

LABEL_247:
              CFRetain(a3);
              goto LABEL_248;
            }
          }
        }

LABEL_250:
        *(a1 + 256) = 1;
        goto LABEL_56;
      }

LABEL_245:
      if (OUTLINED_FUNCTION_12_0())
      {
        v47 = *(a1 + 136);
        *(a1 + 136) = a3;
        if (!a3)
        {
          goto LABEL_248;
        }

        goto LABEL_247;
      }

      if (OUTLINED_FUNCTION_8_0())
      {
        v47 = *(a1 + 144);
        *(a1 + 144) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (OUTLINED_FUNCTION_11_0())
      {
        v47 = *(a1 + 152);
        *(a1 + 152) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (CFEqual(@"FieldDetail", value))
      {
        v47 = *(a1 + 160);
        *(a1 + 160) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (CFEqual(@"ComponentRange", value))
      {
        v47 = *(a1 + 168);
        *(a1 + 168) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (OUTLINED_FUNCTION_17_0())
      {
        v56 = *(a1 + 176);
        *(a1 + 176) = a3;
        if (a3)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (CFEqual(@"TransferFunction", value))
        {
          v56 = *(a1 + 184);
          *(a1 + 184) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"GammaLevel", value))
        {
          v56 = *(a1 + 192);
          *(a1 + 192) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"YCbCrMatrix", value))
        {
          v56 = *(a1 + 200);
          *(a1 + 200) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"ICCProfile", value))
        {
          v56 = *(a1 + 208);
          *(a1 + 208) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"MasteringDisplayColorVolume", value))
        {
          v56 = *(a1 + 216);
          *(a1 + 216) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (!CFEqual(@"ContentLightLevelInfo", value))
        {
          if (CFEqual(@"AmbientViewingEnvironment", value))
          {
            v47 = *(a1 + 704);
            *(a1 + 704) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"MultiPassStorage", value))
          {
            goto LABEL_19;
          }

          if (CFEqual(@"AuxiliaryTypeInfo", value))
          {
            v47 = *(a1 + 232);
            *(a1 + 232) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ChromaLocationTopField", value))
          {
            v47 = *(a1 + 240);
            *(a1 + 240) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ChromaLocationBottomField", value))
          {
            v47 = *(a1 + 248);
            *(a1 + 248) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value))
          {
            if (a3 && (v58 = CFGetTypeID(a3), v58 == CFBooleanGetTypeID()))
            {
              *(a1 + 456) = CFBooleanGetValue(a3);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_1();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v81, cf1);
            }

            goto LABEL_250;
          }

          if (CFEqual(@"HasLeftStereoEyeView", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 736) = v59;
            goto LABEL_250;
          }

          if (CFEqual(@"HasRightStereoEyeView", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 737) = v60;
            goto LABEL_250;
          }

          if (CFEqual(@"HasEyeViewsReversed", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 738) = v61;
            goto LABEL_250;
          }

          if (CFEqual(@"HasAdditionalViews", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 739) = v62;
            goto LABEL_250;
          }

          if (CFEqual(@"HeroEye", value))
          {
            v47 = *(a1 + 744);
            *(a1 + 744) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ProjectionKind", value))
          {
            v47 = *(a1 + 752);
            *(a1 + 752) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ViewPackingKind", value))
          {
            v47 = *(a1 + 760);
            *(a1 + 760) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"TransportIdentifier", value))
          {
            if (!a3)
            {
              *(a1 + 768) = 0;
              goto LABEL_250;
            }

            *(a1 + 768) = 1;
            v63 = (a1 + 772);
          }

          else
          {
            if (CFEqual(@"WarpKind", value))
            {
              v47 = *(a1 + 776);
              *(a1 + 776) = a3;
              if (a3)
              {
                goto LABEL_247;
              }

              goto LABEL_248;
            }

            if (CFEqual(@"StereoCameraBaseline", value))
            {
              if (!a3)
              {
                *(a1 + 784) = 0;
                goto LABEL_250;
              }

              *(a1 + 784) = 1;
              v63 = (a1 + 788);
            }

            else
            {
              if (!CFEqual(@"HorizontalDisparityAdjustment", value))
              {
                if (CFEqual(@"CameraCalibrationDataLensCollection", value))
                {
                  v47 = *(a1 + 800);
                  *(a1 + 800) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

                else if (CFEqual(@"HorizontalFieldOfView", value))
                {
                  v47 = *(a1 + 264);
                  *(a1 + 264) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

                else
                {
                  if (!CFEqual(@"PowerLogSessionID", value))
                  {
                    goto LABEL_250;
                  }

                  v47 = *(a1 + 872);
                  *(a1 + 872) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

LABEL_248:
                if (v47)
                {
                  CFRelease(v47);
                }

                goto LABEL_250;
              }

              if (!a3)
              {
                *(a1 + 792) = 0;
                goto LABEL_250;
              }

              *(a1 + 792) = 1;
              v63 = (a1 + 796);
            }
          }

          CFNumberGetValue(a3, kCFNumberSInt32Type, v63);
          goto LABEL_250;
        }

        v56 = *(a1 + 224);
        *(a1 + 224) = a3;
        if (a3)
        {
LABEL_265:
          CFRetain(a3);
        }
      }

LABEL_266:
      if (v56)
      {
        CFRelease(v56);
      }

      v57 = *(a1 + 416);
      if (v57)
      {
        CFRelease(v57);
        *(a1 + 416) = 0;
      }

      goto LABEL_250;
    }

    if (OUTLINED_FUNCTION_17_0())
    {
      if (vtCompressionSessionValidateColorPrimaries(a3))
      {
        goto LABEL_56;
      }

      v48 = *(a1 + 176);
      if (v48 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 176) = a3;
      if (a3)
      {
        goto LABEL_133;
      }

LABEL_134:
      if (v48)
      {
        CFRelease(v48);
      }

      v49 = *(a1 + 416);
      if (v49)
      {
        CFRelease(v49);
        *(a1 + 416) = 0;
      }

      goto LABEL_119;
    }

    if (CFEqual(@"TransferFunction", value))
    {
      if (vtCompressionSessionValidateTransferFunction(a3))
      {
        goto LABEL_56;
      }

      v48 = *(a1 + 184);
      if (v48 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 184) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

    else if (CFEqual(@"GammaLevel", value))
    {
      if (vtCompressionSessionValidateGammaLevel(a3))
      {
        goto LABEL_56;
      }

      v48 = *(a1 + 192);
      if (v48 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 192) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (!CFEqual(@"YCbCrMatrix", value))
      {
        if (!CFEqual(@"ICCProfile", value))
        {
          if (CFEqual(@"MasteringDisplayColorVolume", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateMasteringDisplayColorVolume(a3);
          }

          else if (CFEqual(@"ContentLightLevelInfo", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateContentLightLevelInfo(a3);
          }

          else if (CFEqual(@"AmbientViewingEnvironment", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateAmbientViewingEnvironment(a3);
          }

          else if (CFEqual(@"MultiPassStorage", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateMultiPassStorage(a3);
          }

          else if (CFEqual(@"AuxiliaryTypeInfo", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateAuxiliaryTypeInfo(a3);
          }

          else if (CFEqual(@"ChromaLocationTopField", value) || CFEqual(@"ChromaLocationBottomField", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateChromaLocation(a3);
          }

          else if (CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidatePrepareEncodedSampleBuffersForPaddedWrites(a3);
          }

          else if (CFEqual(@"HasLeftStereoEyeView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasLeftStereoEyeView(a3);
          }

          else if (CFEqual(@"HasRightStereoEyeView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasRightStereoEyeView(a3);
          }

          else if (CFEqual(@"HasEyeViewsReversed", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasEyeViewsReversed(a3);
          }

          else if (CFEqual(@"HasAdditionalViews", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasAdditionalViews(a3);
          }

          else if (CFEqual(@"HeroEye", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHeroEye(a3);
          }

          else if (CFEqual(@"ProjectionKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateProjectionKind(a3);
          }

          else if (CFEqual(@"ViewPackingKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateViewPackingKind(a3);
          }

          else if (CFEqual(@"TransportIdentifier", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateTransportIdentifier(a3);
          }

          else if (CFEqual(@"WarpKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateWarpKind(a3);
          }

          else if (CFEqual(@"StereoCameraBaseline", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateBaselineValue(a3);
          }

          else if (CFEqual(@"HorizontalDisparityAdjustment", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateDisparityAdjustment(a3);
          }

          else if (CFEqual(@"CameraCalibrationDataLensCollection", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateCameraCalibrationDataLensCollection(a3);
          }

          else if (CFEqual(@"HorizontalFieldOfView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHorizontalFieldOfView(a3);
          }

          else
          {
            if (!CFEqual(@"PowerLogSessionID", value))
            {
              if (CFEqual(@"InputQueueMaxCount", value))
              {
                if (vtCompressionSessionValidateInputQueueMaxCount(a3))
                {
                  goto LABEL_56;
                }

                *(a1 + 272) = FigCFNumberGetSInt32();
                if (*(a1 + 592))
                {
                  goto LABEL_245;
                }
              }

              goto LABEL_119;
            }

            HasLeftStereoEyeView = vtCompressionSessionValidatePowerLogSessionID(a3);
          }

          goto LABEL_118;
        }

        if (vtCompressionSessionValidateICCProfile(a3))
        {
          goto LABEL_56;
        }

        v48 = *(a1 + 208);
        if (v48 == a3)
        {
          goto LABEL_119;
        }

        *(a1 + 208) = a3;
        if (a3)
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      if (vtCompressionSessionValidateYCbCrMatrix(a3))
      {
        goto LABEL_56;
      }

      v48 = *(a1 + 200);
      if (v48 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 200) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

LABEL_133:
    CFRetain(a3);
    goto LABEL_134;
  }

  if (a3)
  {
    v27 = CFDictionaryGetTypeID();
    if (v27 != CFGetTypeID(a3))
    {
      goto LABEL_19;
    }
  }

  FigSimpleMutexLock();
  v28 = *(a1 + 560);
  if (v28)
  {
    CFRelease(v28);
  }

  if (a3)
  {
    v29 = CFGetAllocator(a1);
    Copy = CFDictionaryCreateCopy(v29, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 560) = Copy;
  FigCFDictionaryGetBooleanIfPresent();
  dispatch_group_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
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
  v34 = *(a1 + 408);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 408) = 0;
  }

  v35 = *(a1 + 368);
  if (v35)
  {
    dispatch_release(v35);
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = 0;
  FigSimpleMutexUnlock();
LABEL_106:
  v36 = OUTLINED_FUNCTION_5_0();
  if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(v36, v37))
  {
    goto LABEL_56;
  }

LABEL_107:
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_0();

  VTVideoEncoderSetProperty(v38, v39, v40);
}

uint64_t vtCompressionSessionDispatchQueuesUpdatePriorityAndClientPID(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    goto LABEL_21;
  }

  if (!*(a1 + 572))
  {
    OUTLINED_FUNCTION_9_0();
    if (!v2)
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  result = FigDispatchQueueSetPriorityAndClientPID();
  if (!result)
  {
LABEL_21:
    if (!*(a1 + 328))
    {
      goto LABEL_11;
    }

    if (!*(a1 + 572))
    {
      OUTLINED_FUNCTION_9_0();
      if (!v2)
      {
        OUTLINED_FUNCTION_4_0();
      }
    }

    result = FigDispatchQueueSetPriorityAndClientPID();
    if (!result)
    {
LABEL_11:
      result = *(a1 + 368);
      if (result)
      {
        if (!*(a1 + 572))
        {
          OUTLINED_FUNCTION_9_0();
          if (!v2)
          {
            OUTLINED_FUNCTION_4_0();
          }
        }

        return FigDispatchQueueSetPriorityAndClientPID();
      }
    }
  }

  return result;
}

uint64_t vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(uint64_t a1, __CVBuffer *a2, CMTaggedBufferGroupRef group)
{
  CVPixelBufferAtIndex = a2;
  cf = 0;
  if (!a2 && group)
  {
    if (CMTaggedBufferGroupGetCount(group) < 1)
    {
      CVPixelBufferAtIndex = 0;
      goto LABEL_12;
    }

    CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
  }

  if (CVPixelBufferAtIndex)
  {
    v5 = *(a1 + 64) == 0;
    if (*(a1 + 72) && !CVPixelBufferIsCompatibleWithAttributes())
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  if (*(a1 + 524) == *(a1 + 520))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_104;
  }

LABEL_15:
  v9 = *(a1 + 64);
  v10 = MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E69660B8];
  v12 = MEMORY[0x1E6966208];
  if (!v9 || (v80 = CFRetain(v9)) == 0)
  {
    if (CVPixelBufferAtIndex)
    {
      Mutable = *(a1 + 72);
      if (v5)
      {
        if (Mutable)
        {
          CFRelease(*(a1 + 72));
          *(a1 + 72) = 0;
        }
      }

      else if (Mutable)
      {
LABEL_29:
        v80 = CFRetain(Mutable);
        goto LABEL_31;
      }

      v15 = *v10;
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = CVPixelBufferGetPixelFormatType(CVPixelBufferAtIndex);
      v16 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
      OUTLINED_FUNCTION_18_0(v16, *MEMORY[0x1E6966130]);
      CFRelease(v16);
      Height = CVPixelBufferGetHeight(CVPixelBufferAtIndex);
      v17 = CFNumberCreate(v15, kCFNumberSInt32Type, &Height);
      OUTLINED_FUNCTION_18_0(v17, *v11);
      CFRelease(v17);
      Width = CVPixelBufferGetWidth(CVPixelBufferAtIndex);
      v18 = CFNumberCreate(v15, kCFNumberSInt32Type, &Width);
      OUTLINED_FUNCTION_18_0(v18, *v12);
      CFRelease(v18);
      if (CVPixelBufferGetIOSurface(CVPixelBufferAtIndex))
      {
        v19 = CFDictionaryCreate(v15, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        OUTLINED_FUNCTION_18_0(v19, *MEMORY[0x1E69660D8]);
        CFRelease(v19);
        v20 = CVPixelBufferCopyCreationAttributes(CVPixelBufferAtIndex);
        v21 = *MEMORY[0x1E69660F0];
        if (CFDictionaryGetValue(v20, *MEMORY[0x1E69660F0]))
        {
          CFDictionarySetValue(Mutable, v21, *MEMORY[0x1E695E4D0]);
        }

        CFRelease(v20);
      }

      *(a1 + 72) = Mutable;
      if (Mutable)
      {
        goto LABEL_29;
      }
    }

    v80 = 0;
    goto LABEL_31;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 72) = 0;
  }

LABEL_31:
  v22 = *v10;
  v23 = VTCreatePixelBufferPoolAttributesWithName(*v10, *(a1 + 576), @"encode", &cf);
  if (v23)
  {
    v6 = v23;
    v8 = 0;
    goto LABEL_114;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v8 = MutableCopy;
  if (*(a1 + 176) || *(a1 + 184) || *(a1 + 200) || *(a1 + 240) || *(a1 + 248))
  {
    v25 = *MEMORY[0x1E6965C70];
    CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6965C70]);
    v26 = FigCFDictionaryCreateMutableCopy();
    if (!vtCompressionSessionIsIPT(a1))
    {
      v27 = *(a1 + 176);
      if (v27)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965D88], v27);
      }

      v28 = *(a1 + 184);
      if (v28)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965F30], v28);
      }

      v29 = *(a1 + 200);
      if (v29)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965F98], v29);
      }
    }

    v30 = *(a1 + 240);
    if (v30)
    {
      CFDictionarySetValue(v26, *MEMORY[0x1E6965D00], v30);
    }

    v31 = *(a1 + 248);
    if (v31)
    {
      CFDictionarySetValue(v26, *MEMORY[0x1E6965CF0], v31);
    }

    CFDictionarySetValue(v8, v25, v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  allocator = v22;
  valuePtr = 0;
  Height = 0;
  Count = FigCFDictionaryGetCount();
  if (CVPixelBufferAtIndex)
  {
    if (Count)
    {
      v33 = *MEMORY[0x1E6966130];
      Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
      if (Value)
      {
        v35 = Value;
        v36 = CFGetTypeID(Value);
        if (v36 == CFArrayGetTypeID())
        {
          v37 = CFDictionaryGetValue(v8, *v12);
          v38 = CFDictionaryGetValue(v8, *v11);
          if (v37)
          {
            v39 = v38;
            v40 = CFGetTypeID(v37);
            v41 = 0;
            if (v40 != CFNumberGetTypeID() || !v39)
            {
LABEL_60:
              key = v33;
              v44 = 1;
              if (CVPixelBufferGetWidth(CVPixelBufferAtIndex) == v41)
              {
                v43 = Height;
                if (CVPixelBufferGetHeight(CVPixelBufferAtIndex) == v43)
                {
                  v44 = 0;
                }
              }

              PixelFormatType = CVPixelBufferGetPixelFormatType(CVPixelBufferAtIndex);
              v46 = CFArrayGetCount(v35);
              v47 = CFArrayCreateMutable(allocator, v46, MEMORY[0x1E695E9C0]);
              if (v47)
              {
                v48 = v47;
                if (CFArrayGetCount(v35) >= 1)
                {
                  v49 = 0;
                  v50 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v35, v49);
                    if (ValueAtIndex)
                    {
                      v52 = ValueAtIndex;
                      v53 = CFGetTypeID(ValueAtIndex);
                      if (v53 == CFNumberGetTypeID())
                      {
                        Width = 0;
                        CFNumberGetValue(v52, kCFNumberSInt32Type, &Width);
                        if (VTPixelTransferSessionCanTransfer(PixelFormatType, Width, v44))
                        {
                          CFArrayInsertValueAtIndex(v48, v50++, v52);
                        }

                        else
                        {
                          CFArrayAppendValue(v48, v52);
                        }
                      }
                    }

                    ++v49;
                  }

                  while (CFArrayGetCount(v35) > v49);
                }

                CFDictionarySetValue(v8, key, v48);
                CFRelease(v48);
              }

              else
              {
                fig_log_get_emitter();
                v72 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v77);
                if (v72)
                {
                  v6 = v72;
                  goto LABEL_114;
                }
              }

              goto LABEL_74;
            }

            v42 = CFGetTypeID(v39);
            if (v42 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
              CFNumberGetValue(v39, kCFNumberIntType, &Height);
              v41 = valuePtr;
              goto LABEL_60;
            }
          }

          v41 = 0;
          goto LABEL_60;
        }
      }
    }
  }

LABEL_74:
  v54 = *(a1 + 168);
  if (!v54)
  {
    goto LABEL_95;
  }

  if (!CFDictionaryGetCount(v8))
  {
    goto LABEL_95;
  }

  v55 = *MEMORY[0x1E6966130];
  v56 = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
  if (!v56)
  {
    goto LABEL_95;
  }

  v57 = v56;
  v58 = CFGetTypeID(v56);
  if (v58 == CFArrayGetTypeID())
  {
    v59 = CFArrayGetCount(v57);
    v60 = CFArrayCreateMutableCopy(allocator, v59, v57);
    if (!v60)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v61 = CFGetTypeID(v57);
    if (v61 != CFNumberGetTypeID())
    {
      goto LABEL_95;
    }

    v60 = CFArrayCreateMutable(allocator, 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v60, v57);
    if (!v60)
    {
      goto LABEL_95;
    }
  }

  if (CFArrayGetCount(v60))
  {
    if (CFArrayGetCount(v60) >= 1)
    {
      v62 = 0;
      do
      {
        v63 = CFArrayGetValueAtIndex(v60, v62);
        if (v63 && (v64 = v63, v65 = CFGetTypeID(v63), v65 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v64, kCFNumberSInt32Type, &valuePtr), !vtCompressionSessionDoesPixelFormatHaveDesiredColorRange(valuePtr, v54)))
        {
          CFArrayRemoveValueAtIndex(v60, v62);
        }

        else
        {
          ++v62;
        }
      }

      while (v62 < CFArrayGetCount(v60));
    }

    if (CFArrayGetCount(v60))
    {
      CFDictionarySetValue(v8, v55, v60);
      goto LABEL_94;
    }

    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v77);
    CFRelease(v60);
    if (!v6)
    {
      goto LABEL_95;
    }

LABEL_114:
    v7 = v80;
    goto LABEL_104;
  }

LABEL_94:
  CFRelease(v60);
LABEL_95:
  v66 = CFGetAllocator(a1);
  v67 = *(a1 + 848);
  if (v67 != 1)
  {
    LOBYTE(v67) = *(a1 + 849) == 0;
  }

  v7 = v80;
  v68 = (a1 + 536);
  v69 = VTBuildPixelBufferPools2(v66, v80, v8, cf, *(a1 + 40), 0, 0, 0, 0, v67, (a1 + 536), (a1 + 528), 0, 0);
  if (v69)
  {
    v6 = v69;
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v76, v78);
  }

  else
  {
    *(a1 + 524) = *(a1 + 520);
    if (*(a1 + 528))
    {
      v6 = 0;
    }

    else
    {
      v70 = *v68;
      if (*v68)
      {
        v70 = CFRetain(v70);
      }

      v6 = 0;
      *(a1 + 528) = v70;
    }
  }

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

void vtCompressionSessionSetOneProperty_0(void *value, const __CFNumber *a2, uint64_t a3)
{
  VTCompressionSessionSetProperty(*a3, value, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = v4;
  }
}

void VTEncoderSessionSetTimeRangesForNextPass(uint64_t *a1, unint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = *MEMORY[0x1E6960C98];
  v35 = *(MEMORY[0x1E6960C98] + 8);
  if (!a1)
  {
    goto LABEL_32;
  }

  if (a1[5])
  {
    OUTLINED_FUNCTION_16_0();

    VTParavirtualizationHostEncoderSessionSetTimeRangesForNextPass(v5, v6, v7);
    return;
  }

  v9 = *a1;
  if (*a1 && *(v9 + 16) != 2 && a2 > 0)
  {
    v10 = *(MEMORY[0x1E6960C98] + 12);
    v12 = *(MEMORY[0x1E6960C98] + 16);
    v11 = *(MEMORY[0x1E6960C98] + 24);
    v13 = *(MEMORY[0x1E6960C98] + 32);
    v14 = *(MEMORY[0x1E6960C98] + 36);
    v15 = *(MEMORY[0x1E6960C98] + 40);
    v16 = *(v9 + 840);
    if (v16)
    {
      *(v9 + 832) = 0;
      free(v16);
      *(v9 + 840) = 0;
    }

    __src = a3;
    v28 = v9;
    v17 = v15 == 0;
    v18 = a3 + 5;
    v19 = a2;
    do
    {
      v20 = v10;
      v32 = *(v18 - 5);
      v10 = *(v18 - 7);
      v33 = *(v18 - 8);
      if (v10 & 1) == 0 || (v21 = v14, v14 = *(v18 - 1), (v14 & 1) == 0) || *v18 || (v22 = v11, v11 = *(v18 - 2), v11 < 0) || (v10 & 0x1D) != 1 || *(v18 - 3) || (*(v18 - 1) & 0x1D) != 1 || (v23 = *(v18 - 2), (v20) && (v21 & v17 & 1) != 0 && (v22 & 0x8000000000000000) == 0 && (memset(&v31, 0, sizeof(v31)), range.start.value = v34, range.start.timescale = v35, range.start.flags = v20, range.start.epoch = v12, range.duration.value = v22, range.duration.timescale = v13, range.duration.flags = v21, range.duration.epoch = 0, CMTimeRangeGetEnd(&v31, &range), range.start = v31, time2.value = v32, time2.timescale = v33, time2.flags = v10, time2.epoch = 0, CMTimeCompare(&range.start, &time2) > 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_30;
      }

      v12 = 0;
      v18 += 6;
      v34 = v32;
      v35 = v33;
      v17 = 1;
      v13 = v23;
      --v19;
    }

    while (v19);
    *(v28 + 832) = a2;
    if (a2 < 0x555555555555556)
    {
      v24 = malloc_type_malloc(48 * a2, 0x1000040EED21634uLL);
      *(v28 + 840) = v24;
      if (v24)
      {
        memcpy(v24, __src, 48 * *(v28 + 832));
      }
    }

    else
    {
      *(v28 + 840) = 0;
    }

LABEL_30:
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
LABEL_32:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_16_0();

    FigSignalErrorAtGM(v25);
  }
}

uint64_t VTDistributedCompressionGetSegmentsToReencode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (a3 <= 0 || !a4 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  v9 = VTCreateVideoEncoderInstanceFromEncoderID(a1, *MEMORY[0x1E695E480], &cf);
  if (v9)
  {
LABEL_8:
    v13 = v9;
    goto LABEL_10;
  }

  v10 = cf;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (*v11 >= 2uLL)
  {
    v12 = v11[16];
    if (v12)
    {
      v9 = v12(v10, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  v13 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t vtCompressionSessionDoesPixelFormatHaveDesiredColorRange(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType || !CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E6966248]))
  {
    return 1;
  }

  return FigCFEqual();
}

void VTCompressionSessionInvalidate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 1;
  v6 = *(a2 + 864);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 864) = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    VTCompressionSessionRemote_Invalidate(v7, a2, a3, a4);
  }

  else
  {
    if (*(a2 + 850))
    {
      v8 = *(a2 + 856);
      if (v8)
      {
        VTRateControlSessionCompleteFrames(v8);
      }
    }

    v9 = *(a2 + 280);
    if (v9)
    {
      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (*(a2 + 472))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v10 = *(a2 + 472);
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v11)
        {
          v11(v10);
        }
      }
    }

    VTPixelTransferSessionInvalidate(*(a2 + 544));
    VTPixelTransferSessionInvalidate(*(a2 + 408));
    v12 = *(a2 + 856);
    if (v12)
    {
      CFRelease(v12);
      *(a2 + 856) = 0;
    }

    if (*(a2 + 576))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v14 = Mutable;
        if (*(a2 + 32))
        {
          FigVideoFormatDescriptionContainsHDR();
        }

        MEMORY[0x193AE2670]();
        FigHostTimeToNanoseconds();
        if (*(a2 + 872))
        {
          FigCFDictionarySetValue();
        }

        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (*(a2 + 888))
        {
          FigCFDictionarySetInt32();
        }

        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigLogPowerEvent();
        CFRelease(v14);
      }
    }
  }

  *a1 = 2;
}

uint64_t VTCompressionSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCreateWithOptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTCompressionSessionCreateWithOptions_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionCompleteFramesCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionCompressionWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionCompressionWork_cold_2(void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtCompressionSessionCompressionWork_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtCompressionSessionCompressionWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionCompressionWork_cold_5(void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtCompressionSessionCompressionWork_cold_6(uint64_t a1, CFTypeRef cf, void *a3, CFTypeRef a4)
{
  v6 = *(a1 + 8);
  if (v6 != cf)
  {
    *(a1 + 8) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 16);
  if (v7 != a4)
  {
    *(a1 + 16) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vtCompressionSessionCompressionWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompressionWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vtCompressionSessionCompressionWork_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, v1, vars0);
  __break(1u);
}

void vtCompressionSessionCompressionWork_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, v1, vars0);
  __break(1u);
}

uint64_t VTCompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtRateControlReactionObserverCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtRateControlReactionObserverCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionUpdateAmbientViewingEnvironment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t VTCompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_1(uint64_t a1, _DWORD *a2)
{
  FigSimpleMutexLock();
  *a2 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, 0, 0);

  return FigSimpleMutexUnlock();
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionPrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCompleteFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCompleteFrames_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineCreateContext_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTEncoderSessionSetPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionSetPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoSecurityInfoExtension_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoSecurityInfoExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration_cold_1(_BYTE *a1, uint64_t a2, void *a3, __CFDictionary **a4)
{
  v7 = *MEMORY[0x1E695E480];
  *a3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(v7, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a4 = Mutable;
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"HDR10Plus", *MEMORY[0x1E695E4D0]);
  if (*a1)
  {
    CFDictionarySetValue(Mutable, @"PreserveSDRRange", v9);
  }

  return VTHDRMetadataGenerationSessionCreate(v7, 4, Mutable, (a2 + 656)) == 0;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateCMBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateCMBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineContextHandleError_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionPipelineContextHandleError_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_6(uint64_t *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_0();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  if (!v2)
  {
    return 1;
  }

  vtCompressionSessionPipelineContextHandleError(a1, v2);
  return 0;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineContextPerformNextWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtcss_initializeClient(uint64_t a1, const void *cf, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, int a9, CFTypeRef cfa, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = a7;
  v21 = cfa;
  *(a1 + 88) = a9;
  if (cfa)
  {
    v21 = CFRetain(cfa);
  }

  *(a1 + 96) = v21;
  if (cf)
  {
    v22 = CFRetain(cf);
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 24) = v22;
  if (a3)
  {
    v23 = CFRetain(a3);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 32) = v23;
  if (a4)
  {
    v24 = CFRetain(a4);
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 120) = v24;
  if (a5)
  {
    v25 = CFRetain(a5);
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 40) = v25;
  if (a6)
  {
    v26 = CFRetain(a6);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 136) = 0;
  *(a1 + 48) = v26;
  *(a1 + 64) = v14;
  *(a1 + 72) = a8;
  *(a1 + 144) = a1 + 136;
  *(a1 + 160) = dispatch_queue_create("CompressionSessionQueuedFrames", 0);
  *(a1 + 184) = dispatch_queue_create("CompressionSessionAsyncMessageHandlerQueue", 0);
  *(a1 + 192) = dispatch_group_create();
  *(a1 + 168) = 1;
  *(a1 + 176) = FigSemaphoreCreate();
  if (*(a1 + 224) || (v27 = FigOSTransactionCreate(), (*(a1 + 224) = v27) != 0))
  {
    v28 = FigRPCCreateClientConnection();
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = FigRPCGetConnectionInfo();
      if (!v29)
      {
        *a13 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  return v29;
}

uint64_t vtcss_findClientFromCommandPort(uint64_t a1, uint64_t a2)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (a2)
    {
      if (!result)
      {
        if (*a2)
        {
          if (*(*a2 + 201))
          {
            return 4294954393;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t VTCompressionSessionRemoteServer_PrepareToEncodeFrames(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v16)
    {
      OUTLINED_FUNCTION_0_3(v16);
      OUTLINED_FUNCTION_24_0();
      v12 = __VTCompressionSessionRemoteServer_PrepareToEncodeFrames_block_invoke;
      v13 = &__block_descriptor_tmp_0;
      v14 = v3;
      v15 = v2;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, block[0], block[2]);
  }

  if (v1 && v16)
  {
    v7 = OUTLINED_FUNCTION_13_1(v16);
    VTCompressionSessionRemoteCallbackClient_PrepareToEncodeFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EncodeFrame(unsigned int a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22, uint64_t a23, int a24, int a25, uint64_t a26, int a27, uint64_t a28, int a29, __int128 *a30, __int128 *a31, uint64_t a32, unsigned int a33, uint64_t a34)
{
  v140 = *MEMORY[0x1E69E9840];
  v131 = 0;
  v132 = &v131;
  v133 = 0x2000000000;
  v134 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2000000000;
  v130 = a4;
  v126[0] = 0;
  v126[1] = v126;
  v126[2] = 0x2000000000;
  v126[3] = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0xE000000000;
  bzero(&v101, 0xC8uLL);
  v101 = a5;
  v102 = a6;
  v103 = a7;
  v104 = a8;
  v105 = a9;
  v106 = a10;
  v107 = a11;
  v108 = a12;
  v109 = a13;
  v110 = a14;
  v111 = a15;
  v112 = a16;
  v113 = a17;
  v114 = a18;
  v115 = a19;
  v116 = a20;
  v117 = a21;
  v118 = a22;
  v119 = a23;
  v120 = a24;
  v121 = a25;
  v122 = a26;
  v123 = a27;
  v124 = a28;
  v125 = a29;
  v87 = 0;
  v88 = &v87;
  v89 = 0x9000000000;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2000000000;
  v86 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2000000000;
  v82[3] = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 0x40000000;
  v70 = __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke;
  v71 = &unk_1E72C7BC0;
  v72 = &v127;
  v73 = v126;
  v74 = v82;
  v75 = &v98;
  v76 = &v87;
  v77 = &v83;
  v78 = a3;
  v80 = a2;
  v81 = a33;
  v79 = a32;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v134);
  if (!ClientFromCommandPort)
  {
    v35 = v132[3];
    if (!v35)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, a18, a19);
      Mutable = 0;
      v39 = 0;
      if (!v55)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    v36 = *(v35 + 24);
    if (!(a2 | *(v128 + 6)))
    {
LABEL_6:
      if (*(v99 + 6) || *(v99 + 10))
      {
        v37 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v39 = CFArrayCreateMutable(v37, 5, MEMORY[0x1E695E9C0]);
          if (v39)
          {
            v40 = 0;
            v41 = 5;
            while (1)
            {
              v42 = v99;
              if (LODWORD(v99[v40 + 3]) | LODWORD(v99[v40 + 5]))
              {
                PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
                if (PixelBufferFromSerializedAtomData)
                {
                  goto LABEL_33;
                }

                LODWORD(v99[v40 + 5]) = 0;
                v42 = v99;
              }

              v44 = &v42[v40];
              v45 = v44[6];
              if (v45)
              {
                v46 = *(v44 + 14);
                if (v46)
                {
                  v47 = CFDataCreate(v37, v45, v46);
                  v88[v41 - 2] = v47;
                  v48 = v88[v41 - 2];
                  if (!v48)
                  {
                    break;
                  }

                  PixelBufferFromSerializedAtomData = MEMORY[0x193AE2F20](v48, v37, &v88[v41 - 1]);
                  if (PixelBufferFromSerializedAtomData)
                  {
                    goto LABEL_33;
                  }
                }
              }

              v49 = v88[v41 - 1];
              if (v49 && v88[v41])
              {
                CFArrayAppendValue(Mutable, v49);
                CFArrayAppendValue(v39, v88[v41]);
              }

              v41 += 3;
              v40 += 5;
              if (v41 == 20)
              {
                PixelBufferFromSerializedAtomData = MEMORY[0x193AE2F70](v37, Mutable, v39, v84 + 3);
                if (PixelBufferFromSerializedAtomData)
                {
                  goto LABEL_33;
                }

                if (!a33)
                {
                  goto LABEL_25;
                }

                goto LABEL_24;
              }
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, a18, a19);
          v39 = 0;
        }

        if (!v55)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      Mutable = 0;
      v39 = 0;
      if (a33)
      {
LABEL_24:
        PixelBufferFromSerializedAtomData = FigCreateCFPropertyListFromData();
        if (PixelBufferFromSerializedAtomData)
        {
LABEL_33:
          v55 = PixelBufferFromSerializedAtomData;
          goto LABEL_36;
        }
      }

LABEL_25:
      v50 = v132[3];
      v52 = *(v50 + 184);
      v51 = *(v50 + 192);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke_2;
      block[3] = &unk_1E72C7BE8;
      v136 = *a30;
      v53 = *(a30 + 2);
      v139 = *(a31 + 2);
      v138 = *a31;
      block[6] = &v83;
      block[7] = v82;
      v137 = v53;
      block[9] = v36;
      block[10] = a34;
      block[8] = v126;
      block[4] = v69;
      block[5] = &v131;
      dispatch_group_async(v51, v52, block);
      goto LABEL_26;
    }

    ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!ClientFromCommandPort)
    {
      *(v128 + 6) = 0;
      goto LABEL_6;
    }
  }

  v55 = ClientFromCommandPort;
  v39 = 0;
  Mutable = 0;
LABEL_36:
  v70(v69);
  v56 = v132[3];
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_8_1(v56);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v57, v58, v59, v60, v55);
  }

LABEL_26:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(v126, 8);
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopySupportedPropertyDictionary(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, theData, supportedPropertyDictionaryOut, v39);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_23;
  }

  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    CFDataFromCFPropertyList = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theDataa, supportedPropertyDictionaryOut);
    goto LABEL_23;
  }

  v17 = v39[3];
  if (v17)
  {
    v18 = VTCompressionSessionCopySupportedPropertyDictionary(v17, &supportedPropertyDictionaryOut);
  }

  else
  {
    v19 = v39[4];
    if (v19)
    {
      v18 = VTTileCompressionSessionCopySupportedPropertyDictionary(v19, &supportedPropertyDictionaryOut);
    }

    else
    {
      v20 = v39[5];
      if (v20 || (v20 = v39[6]) != 0)
      {
        v18 = VTSessionCopySupportedPropertyDictionary(v20, &supportedPropertyDictionaryOut);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theDataa, supportedPropertyDictionaryOut);
      }
    }
  }

  v21 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v30 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v23, v24, v25, v26, v27, v28, v29, v35);
      if (v30)
      {
        v21 = v30;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v35, BytePtr, Length);
        v21 = 0;
      }

      goto LABEL_14;
    }

LABEL_23:
    v21 = CFDataFromCFPropertyList;
  }

LABEL_14:
  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

  v32 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v32, v10, v11, v12, v13, v14, v15, v16, v35);
  if (v8)
  {
    *v8 = v21;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopySerializableProperties(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, theData, dictionaryOut, v39);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_23;
  }

  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    CFDataFromCFPropertyList = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theDataa, dictionaryOut);
    goto LABEL_23;
  }

  v17 = v39[3];
  if (v17)
  {
    v18 = VTCompressionSessionCopySerializableProperties(v17, *MEMORY[0x1E695E480], &dictionaryOut);
  }

  else
  {
    v19 = v39[4];
    if (v19)
    {
      v18 = VTTileCompressionSessionCopySerializableProperties(v19, *MEMORY[0x1E695E480], &dictionaryOut);
    }

    else
    {
      v20 = v39[5];
      if (v20 || (v20 = v39[6]) != 0)
      {
        v18 = VTSessionCopySerializableProperties(v20, *MEMORY[0x1E695E480], &dictionaryOut);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theDataa, dictionaryOut);
      }
    }
  }

  v21 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v30 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v23, v24, v25, v26, v27, v28, v29, v35);
      if (v30)
      {
        v21 = v30;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v35, BytePtr, Length);
        v21 = 0;
      }

      goto LABEL_14;
    }

LABEL_23:
    v21 = CFDataFromCFPropertyList;
  }

LABEL_14:
  if (dictionaryOut)
  {
    CFRelease(dictionaryOut);
  }

  v32 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v32, v10, v11, v12, v13, v14, v15, v16, v35);
  if (v8)
  {
    *v8 = v21;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopyProperty(uint64_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  cf = 0;
  v47 = 0;
  v44 = 0;
  theData = 0;
  *a3 = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v47);
  if (ClientFromCommandPort)
  {
    goto LABEL_24;
  }

  if (!v47 || (v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_24:
    v30 = ClientFromCommandPort;
    goto LABEL_17;
  }

  v16 = v15;
  if (v47[3])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTCompressionSessionCopyProperty(v17, v18, v19, v20);
  }

  else if (v47[4])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTTileCompressionSessionCopyProperty(v22, v23, v24, v25);
  }

  else if (v47[5] || v47[6])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTSessionCopyProperty(v26, v27, v28, v29);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
  }

  v30 = v21;
  if (!v21)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v30 = CFDataFromCFPropertyList;
    }

    else
    {
      Length = CFDataGetLength(theData);
      v40 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v33, v34, v35, v36, v37, v38, v39, v44);
      if (v40)
      {
        v30 = v40;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v44, BytePtr, Length);
        v30 = 0;
      }
    }
  }

  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_17:
  v42 = theData;
  if (theData)
  {
    CFRelease(theData);
  }

  OUTLINED_FUNCTION_16_1(v42, v8, v9, v10, v11, v12, v13, v14, v44);
  if (a5)
  {
    *a5 = v30;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetMultiPassStorage(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v11);
  if (!ClientFromCommandPort)
  {
    if (!v11)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_0();
      ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_6;
    }

    v6 = *(v11 + 24);
    if (a2)
    {
      ClientFromCommandPort = vtcss_findClientFromCommandPort(a2, &v10);
      if (ClientFromCommandPort)
      {
        goto LABEL_6;
      }

      if (!v10)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_19_0();
        ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_6;
      }

      v7 = *(v10 + 120);
    }

    else
    {
      v7 = 0;
    }

    VTCompressionSessionSetProperty(v6, @"MultiPassStorage", v7);
  }

LABEL_6:
  v8 = ClientFromCommandPort;
  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  *a3 = v8;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  propertyValue = 0;
  v20 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v20);
  if (!ClientFromCommandPort)
  {
    if (v20)
    {
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
      if (!v9)
      {
        goto LABEL_24;
      }

      CFPropertyListFromData = FigCreateCFPropertyListFromData();
      if (CFPropertyListFromData)
      {
        goto LABEL_15;
      }

      v11 = FigCFEqual();
      v12 = v20;
      if (v11)
      {
        v13 = v20[26];
        if (v13)
        {
          CFRelease(v13);
          v12 = v20;
          v20[26] = 0;
        }
      }

      v14 = v12[3];
      if (v14)
      {
        VTCompressionSessionSetProperty(v14, v9, 0);
        goto LABEL_15;
      }

      v15 = v12[4];
      if (v15)
      {
        CFPropertyListFromData = VTTileCompressionSessionSetProperty(v15, v9, 0);
        goto LABEL_15;
      }

      v16 = v12[5];
      if (v16 || (v16 = v12[6]) != 0)
      {
        CFPropertyListFromData = VTSessionSetProperty(v16, v9, 0);
      }

      else
      {
LABEL_24:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        CFPropertyListFromData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

LABEL_15:
      v17 = CFPropertyListFromData;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v20, v21);
  }

  v17 = ClientFromCommandPort;
  v9 = 0;
  if (a4)
  {
LABEL_16:
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

LABEL_17:
  if (v9)
  {
    CFRelease(v9);
  }

  if (propertyValue)
  {
    CFRelease(propertyValue);
  }

  if (a5)
  {
    *a5 = v17;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetProperties(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  cf = 0;
  v14 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v14);
  if (!ClientFromCommandPort)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

    ClientFromCommandPort = FigCreateCFPropertyListFromData();
    if (ClientFromCommandPort)
    {
      goto LABEL_12;
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(0))
    {
      goto LABEL_19;
    }

    v8 = v14[3];
    if (v8)
    {
      ClientFromCommandPort = VTCompressionSessionSetProperties(v8, 0);
      goto LABEL_12;
    }

    v9 = v14[4];
    if (v9)
    {
      ClientFromCommandPort = VTTileCompressionSessionSetProperties(v9, 0);
      goto LABEL_12;
    }

    v10 = v14[5];
    if (v10 || (v10 = v14[6]) != 0)
    {
      ClientFromCommandPort = VTSessionSetProperties(v10, 0);
    }

    else
    {
LABEL_19:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_1();
      ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

LABEL_12:
  v11 = ClientFromCommandPort;
  if (a3)
  {
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v11;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteFrames(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v12);
  if (!ClientFromCommandPort)
  {
    if (v12)
    {
      v4 = v12[3];
      v6 = v12[23];
      v5 = v12[24];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTCompressionSessionRemoteServer_CompleteFrames_block_invoke;
      block[3] = &__block_descriptor_tmp_11;
      block[4] = v12;
      block[5] = v4;
      v14 = *a2;
      v15 = *(a2 + 2);
      dispatch_group_async(v5, v6, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, LODWORD(block[0]));
  }

  if (ClientFromCommandPort && v12)
  {
    v8 = OUTLINED_FUNCTION_13_1(v12);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v8, v9, v10);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_BeginPass(uint64_t a1, VTCompressionSessionOptionFlags a2, uint32_t *a3, _DWORD *a4)
{
  v10 = 0;
  *a3 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v10);
  if (!ClientFromCommandPort)
  {
    if (!v10)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_1();
      ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      if (!a4)
      {
        return 0;
      }

      goto LABEL_5;
    }

    ClientFromCommandPort = VTCompressionSessionBeginPass(*(v10 + 24), a2, a3);
  }

  if (a4)
  {
LABEL_5:
    *a4 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EndPass(uint64_t a1, _DWORD *a2, uint32_t *a3, _DWORD *a4)
{
  v10 = 0;
  HIBYTE(v9) = 0;
  *a2 = 0;
  *a3 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v10);
  if (!ClientFromCommandPort)
  {
    if (!v10)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_0();
      ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      if (!a4)
      {
        return 0;
      }

      goto LABEL_6;
    }

    ClientFromCommandPort = VTCompressionSessionEndPass(*(v10 + 24), &v9 + 7, a3);
    if (!ClientFromCommandPort)
    {
      *a2 = HIBYTE(v9) == 1;
    }
  }

  if (a4)
  {
LABEL_6:
    *a4 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_GetTimeRangesForNextPass(uint64_t a1, CMItemCount *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  timeRangeCountOut = 0;
  v23 = 0;
  timeRangeArrayOut = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v23);
  if (!ClientFromCommandPort)
  {
    if (!v23)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, timeRangeArrayOut, timeRangeCountOut);
      if (!a5)
      {
        return 0;
      }

      goto LABEL_9;
    }

    ClientFromCommandPort = VTCompressionSessionGetTimeRangesForNextPass(*(v23 + 24), &timeRangeCountOut, &timeRangeArrayOut);
    if (!ClientFromCommandPort)
    {
      v17 = timeRangeCountOut;
      if (timeRangeCountOut >= 1)
      {
        v18 = (48 * timeRangeCountOut);
        ClientFromCommandPort = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v10, v11, v12, v13, v14, v15, v16, 0);
        if (ClientFromCommandPort)
        {
          goto LABEL_8;
        }

        memcpy(v20, timeRangeArrayOut, v18);
        *a3 = v20;
        *a4 = v18;
        v17 = timeRangeCountOut;
      }

      ClientFromCommandPort = 0;
      *a2 = v17;
    }
  }

LABEL_8:
  if (a5)
  {
LABEL_9:
    *a5 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCreate(uint64_t a1, unsigned int a2, _OWORD *a3, uint64_t a4, const char *a5, unsigned int a6, _OWORD *a7, uint64_t a8, unsigned int a9, const char *a10, _DWORD *a11, void *a12, uint64_t *a13, _DWORD *a14)
{
  v18 = a3[1];
  *&timeRange.start.value = *a3;
  *&timeRange.start.epoch = v18;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v42 = 0;
  multiPassStorageOut = 0;
  v41 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  v20 = *MEMORY[0x1E695E480];
  if (a10)
  {
    v21 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a10);
  }

  else
  {
    v21 = 0;
  }

  cf = v21;
  FigProcessInfoCreateWithDetails();
  v38 = a5;
  v37 = a6;
  if (!a6)
  {
    v24 = a4;
    v22 = 0;
    v23 = 0;
    if (!a9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a5 || a5[a6 - 1])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    v22 = 0;
LABEL_37:
    v23 = 0;
LABEL_40:
    v26 = 0;
    goto LABEL_17;
  }

  v22 = CFStringCreateWithFileSystemRepresentation(v20, a5);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    goto LABEL_37;
  }

  v23 = CFURLCreateWithString(v20, v22, 0);
  if (!v23)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    CFPropertyListFromData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
LABEL_39:
    v29 = CFPropertyListFromData;
    goto LABEL_40;
  }

  v24 = a4;
  if (a9)
  {
LABEL_12:
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (!CFPropertyListFromData)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_13:
  v26 = vtcss_compressionSessionClientRecordCreate();
  if (!v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    goto LABEL_34;
  }

  v27 = a7[1];
  *&timeRange.start.value = *a7;
  *&timeRange.start.epoch = v27;
  *&timeRange.duration.timescale = a7[2];
  v28 = VTMultiPassStorageCreate(v20, v23, &timeRange, v42, &multiPassStorageOut);
  if (v28)
  {
LABEL_34:
    v29 = v28;
    goto LABEL_17;
  }

  v29 = vtcss_initializeClient(v26, 0, 0, multiPassStorageOut, 0, 0, a2, v24, ClientPIDFromAuditToken, v41, "VTMultiPassStorage", a11, a12);
  if (!v29)
  {
    *a13 = FigRemote_GetServerTimeoutToken();
  }

LABEL_17:
  if (multiPassStorageOut)
  {
    CFRelease(multiPassStorageOut);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v29)
  {
    vtcss_finalizeClient(v26);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  v30 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v38, v37);
  MEMORY[0x193AE4440](*v30, a8, a9);
  *a14 = v29;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageDestroy(uint64_t a1)
{
  v3 = 0;
  vtcss_findClientFromCommandPort(a1, &v3);
  if (v3)
  {
    vtcss_finalizeClient(v3);
    return 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  }
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageSetIdentifier(uint64_t a1, const char *a2, _DWORD *a3)
{
  v11 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v11);
  if (ClientFromCommandPort)
  {
LABEL_8:
    v9 = ClientFromCommandPort;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (!v11 || (v6 = *(v11 + 120), (v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  v8 = v7;
  v9 = VTMultiPassStorageSetIdentifier(v6, v7);
  CFRelease(v8);
  if (a3)
  {
LABEL_5:
    *a3 = v9;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCopyIdentifier(uint64_t a1, char *a2)
{
  v9 = 0;
  *a2 = 0;
  if (!vtcss_findClientFromCommandPort(a1, &v9))
  {
    if (v9)
    {
      v5 = VTMultiPassStorageCopyIdentifier(*(v9 + 120), v3, v4);
      if (v5)
      {
        v6 = v5;
        CFStringGetCString(v5, a2, 512, 0);
        CFRelease(v6);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    }
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageSetDataAtTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v21 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v21);
  if (!ClientFromCommandPort)
  {
    if (v21)
    {
      v10 = *(v21 + 120);
      if (a5)
      {
        OUTLINED_FUNCTION_23_0();
        v14 = CFDataCreate(v11, v12, v13);
      }

      else
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_20_0();
      v16 = VTMultiPassStorageSetDataAtTimeStamp(v10, v15, a3, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (a5)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
  }

  v16 = ClientFromCommandPort;
  if (a5)
  {
LABEL_9:
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

LABEL_10:
  if (a6)
  {
    *a6 = v16;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStamp(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v15);
  if (ClientFromCommandPort)
  {
LABEL_11:
    TimeStamp = ClientFromCommandPort;
    if (!a5)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v15 || (v10 = *(v15 + 120), a3) && (a3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  v13 = *a2;
  v14 = *(a2 + 16);
  TimeStamp = VTMultiPassStorageGetTimeStamp(v10, &v13, a3, a4);
  if (a3)
  {
    CFRelease(a3);
  }

  if (a5)
  {
LABEL_8:
    *a5 = TimeStamp;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStampAndDuration(uint64_t a1, uint64_t a2, const char *a3, void *a4, uint64_t a5, _DWORD *a6)
{
  v15 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v15);
  if (ClientFromCommandPort)
  {
LABEL_11:
    TimeStampAndDuration = ClientFromCommandPort;
    if (!a6)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v15 || (v11 = *(v15 + 120), a3) && (a3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20_0();
  TimeStampAndDuration = VTMultiPassStorageGetTimeStampAndDuration(v11, v12, a3, a4, a5);
  if (a3)
  {
    CFRelease(a3);
  }

  if (a6)
  {
LABEL_8:
    *a6 = TimeStampAndDuration;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCopyDataAtTimeStamp(uint64_t a1, uint64_t a2, CFIndex Length, void *a4, _DWORD *a5, _DWORD *a6)
{
  theData = 0;
  v22 = 0;
  v20 = 0;
  *a4 = 0;
  *a5 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v22);
  if (ClientFromCommandPort)
  {
    goto LABEL_13;
  }

  if (!v22)
  {
    fig_log_get_emitter();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, DWORD2(v18), v19);
LABEL_13:
    v13 = ClientFromCommandPort;
    v14 = 0;
    v15 = 0;
    LODWORD(Length) = 0;
    goto LABEL_7;
  }

  v12 = *(v22 + 120);
  v18 = *a2;
  v19 = *(a2 + 16);
  v13 = VTMultiPassStorageCopyDataAtTimeStamp(v12, &v18, Length, &theData);
  LODWORD(Length) = 0;
  v14 = 0;
  v15 = theData;
  if (!v13)
  {
    if (theData)
    {
      Length = CFDataGetLength(theData);
      v13 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v20, Length);
      v14 = v20;
      v15 = theData;
      if (!v13)
      {
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v14, BytePtr, Length);
        v14 = v20;
        v15 = theData;
      }
    }
  }

LABEL_7:
  *a4 = v14;
  *a5 = Length;
  if (v15)
  {
    CFRelease(v15);
  }

  if (a6)
  {
    *a6 = v13;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_TileCreate(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, const char *a11, _DWORD *a12, void *a13, uint64_t *a14, _DWORD *a15)
{
  v40 = a2;
  v19 = OUTLINED_FUNCTION_22_0(a1, a2, a3);
  session = 0;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v20 = MEMORY[0x1E695E480];
  if (a11)
  {
    v39 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a11);
  }

  else
  {
    v39 = 0;
  }

  v42 = a7;
  v41 = a8;
  if (a8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      v31 = CFPropertyListFromData;
      v24 = 0;
      v22 = a9;
      goto LABEL_25;
    }
  }

  v22 = a9;
  if (a10)
  {
    v23 = FigCreateCFPropertyListFromData();
    if (v23)
    {
      v31 = v23;
      v24 = 0;
      goto LABEL_25;
    }
  }

  v24 = vtcss_compressionSessionClientRecordCreate();
  if (!v24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
LABEL_24:
    v31 = v26;
LABEL_25:
    v28 = v39;
    goto LABEL_15;
  }

  v25 = a3[1];
  valuePtr[0] = *a3;
  valuePtr[1] = v25;
  v26 = VTFigAudioSessionCreate(valuePtr, v19, @"VTCompressionSessionClient", (v24 + 104));
  if (v26)
  {
    goto LABEL_24;
  }

  v27 = *v20;
  v26 = VTTileCompressionSessionCreate(*v20, a5, a6, 0, 0, *v20, TileCompressionOutputCallback, v24, &session);
  if (v26)
  {
    goto LABEL_24;
  }

  v28 = v39;
  FigProcessInfoCreateWithDetails();
  v29 = vtcss_initializeClient(v24, 0, session, 0, 0, 0, v40, a4, v19, 0, "VTTileCompressionSession", a12, a13);
  if (v29 || *(v24 + 104) && (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_12_1(), (v29 = FigNotificationCenterAddWeakListener()) != 0))
  {
    v31 = v29;
  }

  else
  {
    LODWORD(valuePtr[0]) = v19;
    v30 = CFNumberCreate(v27, kCFNumberSInt32Type, valuePtr);
    VTSessionSetProperty(session, @"ClientPID", v30);
    CFRelease(v30);
    v31 = 0;
    *a14 = FigRemote_GetServerTimeoutToken();
  }

LABEL_15:
  if (v28)
  {
    CFRelease(v28);
  }

  if (session)
  {
    CFRelease(session);
  }

  if (v31)
  {
    vtcss_finalizeClient(v24);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  v32 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v42, v41);
  MEMORY[0x193AE4440](*v32, v22, a10);
  *a15 = v31;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_PrepareToEncodeTiles(uint64_t a1, int a2)
{
  v23 = 0;
  v24 = 0;
  v2 = a2 != 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v24);
  if (!ClientFromCommandPort)
  {
    if (v24)
    {
      OUTLINED_FUNCTION_0_3(v24);
      OUTLINED_FUNCTION_24_0();
      v14 = __VTCompressionSessionRemoteServer_PrepareToEncodeTiles_block_invoke;
      v15 = &unk_1E72C7C30;
      v19 = v2;
      v16 = &v20;
      v17 = v4;
      v18 = v5;
      dispatch_group_async(v6, v7, block);
      goto LABEL_4;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    ClientFromCommandPort = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, block[0], block[2]);
  }

  if (ClientFromCommandPort && v24)
  {
    v9 = OUTLINED_FUNCTION_13_1(v24);
    VTCompressionSessionRemoteCallbackClient_PrepareToEncodeTilesReturn(v9, v10, v21[3], v11);
  }

LABEL_4:
  _Block_object_dispose(&v20, 8);
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EncodeTile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v15 = a2;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v37);
  if (ClientFromCommandPort)
  {
    goto LABEL_18;
  }

  if (!v37)
  {
    goto LABEL_19;
  }

  v17 = v37[4];
  if (!(a4 | v15))
  {
    v19 = v37[26];
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    v36 = v19;
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v25)
    {
      return 0;
    }

    goto LABEL_22;
  }

  ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
  if (ClientFromCommandPort)
  {
LABEL_18:
    v25 = ClientFromCommandPort;
    goto LABEL_22;
  }

  v18 = v37[26];
  v37[26] = v36;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = v36;
  if (!v36)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (!a8)
  {
    v21 = 0;
    goto LABEL_16;
  }

  CFPropertyListFromData = FigCreateCFPropertyListFromData();
  if (!CFPropertyListFromData)
  {
    v21 = v35;
    v19 = v36;
LABEL_16:
    v22 = v37[23];
    v23 = v37[24];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = __VTCompressionSessionRemoteServer_EncodeTile_block_invoke;
    v31[3] = &__block_descriptor_tmp_15;
    v31[4] = v37;
    v31[5] = v17;
    v31[11] = a5;
    v31[12] = a6;
    v31[6] = v19;
    v31[7] = v21;
    v32 = v15;
    v33 = 0;
    v31[8] = a9;
    v31[9] = a3;
    v34 = a8;
    v31[10] = a7;
    dispatch_group_async(v23, v22, v31);
    return 0;
  }

  v25 = CFPropertyListFromData;
  a4 = 0;
LABEL_22:
  if (v15)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v26 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a8)
  {
    MEMORY[0x193AE4440](*v26, a7, a8);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v37)
  {
    v27 = OUTLINED_FUNCTION_8_1(v37);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v27, v28, v29, v30, v25);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteTiles(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v16)
    {
      OUTLINED_FUNCTION_0_3(v16);
      OUTLINED_FUNCTION_24_0();
      v12 = __VTCompressionSessionRemoteServer_CompleteTiles_block_invoke;
      v13 = &__block_descriptor_tmp_16;
      v14 = v2;
      v15 = v3;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, block[0], block[2]);
  }

  if (v1 && v16)
  {
    v7 = OUTLINED_FUNCTION_13_1(v16);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MotionEstimationCreate(uint64_t a1, unsigned int a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const __CFString *a9, _DWORD *a10, void *a11, uint64_t *a12, _DWORD *a13)
{
  v16 = a5;
  v17 = a9;
  v18 = a3[1];
  *session = *a3;
  v38 = v18;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  cf = 0;
  session[0] = 0;
  v35 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  v20 = MEMORY[0x1E695E480];
  if (a9)
  {
    v17 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a9);
  }

  v33 = a7;
  if (a8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      v25 = CFPropertyListFromData;
      v22 = 0;
      goto LABEL_9;
    }
  }

  v22 = vtcss_compressionSessionClientRecordCreate();
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
    goto LABEL_21;
  }

  v23 = *v20;
  v24 = VTMotionEstimationSessionCreate(v23, cf, v16, a6, session);
  if (v24)
  {
LABEL_21:
    v25 = v24;
    goto LABEL_9;
  }

  FigProcessInfoCreateWithDetails();
  v25 = vtcss_initializeClient(v22, 0, 0, 0, session[0], 0, a2, a4, ClientPIDFromAuditToken, v35, "VTMotionEstimationSession", a10, a11);
  if (!v25)
  {
    valuePtr = ClientPIDFromAuditToken;
    v26 = CFNumberCreate(v23, kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session[0], @"ClientPID", v26);
    CFRelease(v26);
    *a12 = FigRemote_GetServerTimeoutToken();
  }

LABEL_9:
  if (v17)
  {
    CFRelease(v17);
  }

  if (session[0])
  {
    CFRelease(session[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v25)
  {
    vtcss_finalizeClient(v22);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v33, a8);
  *a13 = v25;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MotionEstimationCopySourcePixelBufferAttributes(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v18, theData, cf, v21);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    CFDataFromCFPropertyList = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, theData, cf);
LABEL_15:
    v16 = CFDataFromCFPropertyList;
    LODWORD(Length) = 0;
    goto LABEL_7;
  }

  CFDataFromCFPropertyList = VTMotionEstimationSessionCopySourcePixelBufferAttributes(*(v21 + 40), &cf);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  Length = CFDataGetLength(theData);
  v13 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v18, Length);
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v14 = v18;
    BytePtr = CFDataGetBytePtr(theData);
    memcpy(v14, BytePtr, Length);
    v16 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  *v10 = v18;
  *v9 = Length;
  if (v8)
  {
    *v8 = v16;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EstimateMotion(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, uint64_t a9)
{
  v12 = a5;
  v15 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  cf = 0;
  v32 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v36);
  if (ClientFromCommandPort)
  {
LABEL_30:
    v20 = ClientFromCommandPort;
    goto LABEL_17;
  }

  v17 = v34[3];
  if (!v17)
  {
    goto LABEL_16;
  }

  if (v15 || (a8 & 1) == 0)
  {
    if (!(a4 | v15))
    {
      goto LABEL_16;
    }

    ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!ClientFromCommandPort)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v18 = *(v17 + 216);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  v32 = v18;
  if (!v18)
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (a7 | v12 && (PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData()) != 0)
  {
    v20 = PixelBufferFromSerializedAtomData;
    a4 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, block, v30);
    a4 = 0;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

LABEL_17:
  if (v15)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v21 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (v12)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v21, a6, a7);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  v22 = v34[3];
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_8_1(v22);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v23, v24, v25, v26, v20);
  }

LABEL_29:
  _Block_object_dispose(&v33, 8);
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteMotionEstimation(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v18)
    {
      v2 = *(v18 + 40);
      v3 = *(v18 + 216);
      if (v3)
      {
        CFRelease(v3);
        *(v18 + 216) = 0;
      }

      OUTLINED_FUNCTION_10_1();
      v13 = 0x40000000;
      v14 = __VTCompressionSessionRemoteServer_CompleteMotionEstimation_block_invoke;
      v15 = &__block_descriptor_tmp_21;
      v16 = v4;
      v17 = v2;
      dispatch_group_async(v5, v6, &block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, block, v13);
  }

  if (v1 && v18)
  {
    v8 = OUTLINED_FUNCTION_13_1(v18);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v8, v9, v10);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopyTemporalFilterList(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  cf = 0;
  v18 = 0;
  v15 = 0;
  theData = 0;
  if (a3)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
LABEL_16:
      CFDataFromCFPropertyList = CFPropertyListFromData;
      goto LABEL_11;
    }

    v8 = v18;
  }

  else
  {
    v8 = 0;
  }

  CFPropertyListFromData = VTCopyTemporalFilterList(v8, &cf);
  if (CFPropertyListFromData)
  {
    goto LABEL_16;
  }

  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  v10 = theData;
  if (!CFDataFromCFPropertyList)
  {
    Length = CFDataGetLength(theData);
    CFDataFromCFPropertyList = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v15, Length);
    v10 = theData;
    if (!CFDataFromCFPropertyList)
    {
      v12 = v15;
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(v12, BytePtr, Length);
      CFDataFromCFPropertyList = 0;
      v10 = theData;
      *a4 = v15;
      *a5 = Length;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return CFDataFromCFPropertyList;
}

uint64_t VTCompressionSessionRemoteServer_TemporalProcessFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __int128 *a5, uint64_t a6, unsigned int a7)
{
  v11 = a2;
  v20[16] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, v20);
  if (ClientFromCommandPort || v20[0] && a4 | v11 && (ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData()) != 0)
  {
    v13 = ClientFromCommandPort;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v13)
    {
      return 0;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v14 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v14, a6, a7);
  }

  if (v20[0])
  {
    v15 = OUTLINED_FUNCTION_8_1(v20[0]);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v15, v16, v17, v18, v13);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v16)
    {
      OUTLINED_FUNCTION_0_3(v16);
      OUTLINED_FUNCTION_24_0();
      v12 = __VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames_block_invoke;
      v13 = &__block_descriptor_tmp_23;
      v14 = v2;
      v15 = v3;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, block[0], block[2]);
  }

  if (v1 && v16)
  {
    v7 = OUTLINED_FUNCTION_13_1(v16);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_GetNextPendingNotification(uint64_t a1, _DWORD *a2, void *a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  vtcss_findClientFromCommandPort(a1, &v16);
  if (!v16)
  {
    return 0;
  }

  v19 = 0;
  cf = 0;
  v17 = 0;
  theData = 0;
  PendingNotification = FigRPCFetchNextPendingNotification();
  if (PendingNotification)
  {
    v12 = PendingNotification;
  }

  else
  {
    FigCreateCFDataFromCFPropertyList();
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      strlcpy(a4, CStringPtrAndBufferToFree, 0x200uLL);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (theData)
    {
      Length = CFDataGetLength(theData);
      *a6 = Length;
      v12 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], a5, Length);
      if (!v12)
      {
        v13 = *a5;
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v13, BytePtr, *a6);
      }
    }

    else
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
    }
  }

  free(v17);
  if (theData)
  {
    CFRelease(theData);
  }

  return v12;
}

uint64_t CompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t TileCompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t temporalFilterSessionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t *a4, CFTypeRef *a5)
{
  v31[23] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  v29 = 0;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
    a3 = 0;
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
    a2 = 0;
    goto LABEL_18;
  }

  if (_MergedGlobals_4 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    dispatch_once_f(v22, v23, v24);
  }

  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (!Instance)
  {
    OUTLINED_FUNCTION_3_2();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
LABEL_40:
    v20 = v13;
    a3 = 0;
    goto LABEL_41;
  }

  *(Instance + 20) = 0;
  *(Instance + 128) = Instance;
  *(Instance + 136) = FigDispatchQueueCreateWithPriority();
  v13 = VTParavirtualizationReplyClerkCreate("host decoder session", (v12 + 144));
  if (v13)
  {
    goto LABEL_40;
  }

  *(v12 + 152) = _Block_copy(a3);
  *(v12 + 192) = FigSimpleMutexCreate();
  *(v12 + 208) = dispatch_group_create();
  VTParavirtualizationMessageGetUInt32();
  if (v13)
  {
    goto LABEL_40;
  }

  v13 = VTParavirtualizationMessageCopyCFDictionary(a2, 745366895, &v29);
  if (v13)
  {
    goto LABEL_40;
  }

  v13 = VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf);
  if (v13)
  {
    goto LABEL_40;
  }

  a3 = FigCFCopyCompactDescription();
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, (v12 + 160));
  if (MessageTypeAndFlagsAndGuestUUID || (v15 = VTMotionEstimationProcessorSelectAndCreateInstance(v9, v29, (v12 + 24)), MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationCreateReplyAndByteStream(a2, 4u, v31, &v30), MessageTypeAndFlagsAndGuestUUID) || (OUTLINED_FUNCTION_1_3(), MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageAppendSInt32(v16, v17, v15), MessageTypeAndFlagsAndGuestUUID) || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageAppendUInt32(v30, 745956722, 5u), MessageTypeAndFlagsAndGuestUUID))
  {
    v20 = MessageTypeAndFlagsAndGuestUUID;
LABEL_41:
    a2 = 0;
    goto LABEL_19;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  appended = VTParavirtualizationMessageAppendCFDictionary(v30, 0x2C68696Eu, Mutable);
  if (!appended)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v20 = 0;
    *a4 = v12;
    *a5 = v31[0];
    v31[0] = 0;
    goto LABEL_18;
  }

  v20 = appended;
LABEL_19:
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

  if (a3)
  {
    CFRelease(a3);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v31[0])
  {
    CFRelease(v31[0]);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v20;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, size_t a5)
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

      return VTParavirtualizationReplyClerkDeliverReply(a1[18], a2, v15, v16);
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
      v14 = a1[17];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_1;
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

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v20 = 0;
  cf = 0;
  v19 = 0;
  v18 = 0;
  surface = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  appended = OUTLINED_FUNCTION_5_2(1298298214, a2, (a1 + 160), a4, &cf, &v20);
  if (appended)
  {
    goto LABEL_28;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(v20, 0x2C706F70u, a3);
    if (appended)
    {
      goto LABEL_28;
    }
  }

  v9 = cf;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(cf, &v24, &v26, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v26 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 144), v9, &v25);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, v9);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v11 = *(a1 + 144);
          v22 = kVTParavirtualizationDefaultReplyTimeout;
          v23 = 0;
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v11, v24, v25, &v22, &v19, &surface, &v15);
        }
      }
    }

    else
    {
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, surface);
    }
  }

  v12 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 144), v25);
  if (!v12)
  {
    OUTLINED_FUNCTION_1_3();
    VTParavirtualizationMessageGetSInt32();
    if (!appended)
    {
      v12 = v18;
      if (v18)
      {
        goto LABEL_17;
      }

      appended = VTParavirtualizationMessageCopyCFUUID();
      if (!appended)
      {
        appended = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], surface, *(a1 + 184), &v14);
        if (!appended)
        {
          v12 = vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(a1, a2, v14, v17, v15);
          if (!v12)
          {
            *a4 = v14;
            v14 = 0;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_28:
    v12 = appended;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (surface)
  {
    CFRelease(surface);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  cf = 0;
  HIDWORD(v18) = 0;
  v6 = OUTLINED_FUNCTION_5_2(1299411041, a2, (a1 + 160), a4, &v21, &v20);
  if (v6 || a2 && (v6 = OUTLINED_FUNCTION_4_1(v6, v7, v8, v9, v10, v11, v12, v13, v18, cf, v20), v6))
  {
    v14 = v6;
  }

  else
  {
    v14 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, v21, &kVTParavirtualizationDefaultReplyTimeout, &cf);
    v15 = cf;
    if (!v14)
    {
      OUTLINED_FUNCTION_1_3();
      VTParavirtualizationMessageGetSInt32();
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v14 = HIDWORD(v18);
      }

      v15 = cf;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 144), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 144);
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
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 144), v15);
  return v10;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = 0;
  cfa = 0;
  HIDWORD(v19) = 0;
  v6 = *(a1 + 184);
  *(a1 + 184) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = OUTLINED_FUNCTION_5_2(1299607650, cf, (a1 + 160), a4, &v22, &v21);
  if (v7 || cf && (v7 = OUTLINED_FUNCTION_4_1(v7, v8, v9, v10, v11, v12, v13, v14, v19, cfa, v21), v7))
  {
    v15 = v7;
  }

  else
  {
    v15 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, v22, &kVTParavirtualizationDefaultReplyTimeout, &cfa);
    v16 = cfa;
    if (!v15)
    {
      OUTLINED_FUNCTION_1_3();
      VTParavirtualizationMessageGetSInt32();
      if (v17)
      {
        v15 = v17;
      }

      else
      {
        v15 = HIDWORD(v19);
      }

      v16 = cfa;
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v15;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionEmitMotionVectors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CVBuffer *a6)
{
  v8 = a4;
  v9 = a3;
  v24 = 0;
  cf = 0;
  v23 = 0;
  appended = OUTLINED_FUNCTION_5_2(1298492788, a2, (a1 + 160), a4, &cf, &v24);
  if (appended)
  {
    goto LABEL_30;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_3();
  appended = VTParavirtualizationMessageAppendSInt32(v12, v13, v9);
  if (appended)
  {
    goto LABEL_30;
  }

  appended = VTParavirtualizationMessageAppendUInt32(v24, 745107046, v8);
  if (appended)
  {
    goto LABEL_30;
  }

  if (a5)
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(v24, 0x2C6D6164u, a5);
    if (appended)
    {
      goto LABEL_30;
    }
  }

  if (!a6)
  {
    goto LABEL_19;
  }

  appended = VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments(v24, a6);
  if (appended)
  {
LABEL_30:
    v21 = appended;
    a6 = 0;
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  v14 = *(a1 + 200);
  if (!v14 || (Count = CFArrayGetCount(v14), Count < 1))
  {
LABEL_16:
    FigSimpleMutexUnlock();
    a6 = 0;
    goto LABEL_19;
  }

  v16 = Count;
  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), v17);
    v19 = MEMORY[0x193AE2470]();
    if (v19)
    {
      break;
    }

LABEL_15:
    if (v16 == ++v17)
    {
      goto LABEL_16;
    }
  }

  if (v19 != a6)
  {
    CFRelease(v19);
    goto LABEL_15;
  }

  a6 = ValueAtIndex[2];
  ValueAtIndex[2] = 0;
  CFRelease(v19);
  FigSimpleMutexUnlock();
  if (!a6 || (v20 = VTParavirtualizationMessageAppendCFUUID(), !v20))
  {
LABEL_19:
    v20 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v23);
  }

  v21 = v20;
LABEL_21:
  dispatch_group_leave(*(a1 + 208));
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v21;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
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
      return vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, cf, v17))
  {
    VTMotionEstimationProcessorGetCMBaseObject();
    if (v9)
    {
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }

    OUTLINED_FUNCTION_1_3();
    if (!VTParavirtualizationMessageAppendSInt32(v12, v13, v14))
    {
      vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v8, cfa);
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
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, cf, v16))
  {
    v9 = *(v8 + 24);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      v10(v9);
    }

    OUTLINED_FUNCTION_1_3();
    if (!VTParavirtualizationMessageAppendSInt32(v11, v12, v13))
    {
      vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v8, cfa);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

uint64_t vtDecompressionSetAllowBitstreamToChangeFrameDimensionsIfNecessary(const opaqueCMFormatDescription *a1, uint64_t a2)
{
  result = CMFormatDescriptionGetMediaSubType(a1);
  if (result == 1902212657 || result == 1635135537)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      v5 = *MEMORY[0x1E695E4C0];

      return VTDecompressionSessionSetProperty(a2, @"AllowBitstreamToChangeFrameDimensions", v5);
    }
  }

  return result;
}

uint64_t vtDecompressionSessionIsPropertySupportedByVideoDecoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 0;
  }

  v5(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v6 = CFDictionaryContainsKey(theDict, a2);
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v6;
}

uint64_t vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(uint64_t a1)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  v42 = 0;
  cf = 0;
  if (*(a1 + 88) == *(a1 + 84))
  {
    v1 = 0;
    MutableCopy = 0;
LABEL_3:
    v3 = 0;
    goto LABEL_58;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 16));
  v6 = *(a1 + 256);
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = *(a1 + 272);
    if (!v8)
    {
LABEL_9:
      v1 = CFStringCreateWithFormat(*v7, 0, @"decode:%@", v6);
      goto LABEL_11;
    }

    v9 = CFGetTypeID(v8);
    if (v9 == CFBooleanGetTypeID() && CFEqual(*MEMORY[0x1E695E4C0], *(a1 + 272)))
    {
      v6 = *(a1 + 256);
      goto LABEL_9;
    }
  }

  v1 = @"decode";
LABEL_11:
  v10 = *v7;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, v40);
    goto LABEL_72;
  }

  v11 = VTCreatePixelBufferPoolAttributesWithName(v10, *(a1 + 248), v1, &cf);
  if (v11)
  {
    goto LABEL_72;
  }

  if (*(a1 + 80))
  {
    FigCFDictionarySetInt32();
  }

  v12 = *MEMORY[0x1E695E4D0];
  v13 = v12 == CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660C8]);
  LODWORD(valuePtr[0]) = 0;
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]);
  if (Value)
  {
    v15 = Value;
    v16 = CFGetTypeID(Value);
    if (v16 == CFArrayGetTypeID())
    {
      FigCFArrayGetInt32AtIndex();
    }

    else
    {
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberSInt32Type, valuePtr);
      }
    }
  }

  v18 = LODWORD(valuePtr[0]) == 1751410032 || LODWORD(valuePtr[0]) == 1751411059;
  if (v18 || vtDecompressionAttributesHaveColorSpaceAttachments(*(a1 + 72)) || vtDecompressionAttributesHaveColorSpaceAttachments(*(a1 + 64)) || *(a1 + 232) || *(a1 + 208) || *(a1 + 216) || *(a1 + 224))
  {
    goto LABEL_35;
  }

  if (MediaSubType == 1634759272 || MediaSubType == 1634759278)
  {
    goto LABEL_35;
  }

  v11 = vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription(*(a1 + 16), &v42);
  if (v11)
  {
    goto LABEL_72;
  }

  v33 = v42;
  if (!v42 || CFDictionaryGetCount(v42) < 1)
  {
    goto LABEL_35;
  }

  v34 = *MEMORY[0x1E6965C70];
  v35 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6965C70]);
  if (!v35)
  {
    CFDictionarySetValue(MutableCopy, v34, v33);
    goto LABEL_35;
  }

  valuePtr[0] = v35;
  valuePtr[1] = v33;
  v11 = FigCFCreateCombinedDictionary();
  if (v11)
  {
LABEL_72:
    v3 = v11;
    goto LABEL_58;
  }

  CFDictionarySetValue(MutableCopy, v34, 0);
LABEL_35:
  if (!FigVideoFormatDescriptionContainsAlphaChannel())
  {
    goto LABEL_55;
  }

  v20 = CMFormatDescriptionGetMediaSubType(*(a1 + 16));
  v21 = 1;
  if ((v20 - 1634755432 > 0xB || ((1 << (v20 - 104)) & 0x8C1) == 0) && (v20 - 1634759272 > 6 || ((1 << (v20 - 104)) & 0x51) == 0))
  {
    v22 = v20 == 1634742376 || v20 == 1634742888;
    v23 = v22 || v20 == 1634743416;
    if (!v23 && v20 != 1634743400)
    {
      goto LABEL_56;
    }
  }

  CMFormatDescriptionGetExtension(*(a1 + 16), *MEMORY[0x1E6960028]);
  if (FigCFNumberGetSInt32() != 32)
  {
LABEL_55:
    v21 = 0;
    goto LABEL_56;
  }

  if (!FigCFDictionaryGetValue())
  {
    FigCFDictionarySetInt32();
  }

LABEL_56:
  v25 = CFGetAllocator(*a1);
  v26 = *(a1 + 64);
  v27 = cf;
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(a1 + 16));
  v29 = (a1 + 104);
  v30 = VTBuildPixelBufferPools2(v25, MutableCopy, v26, v27, Dimensions, *(a1 + 272), v13, v21, *(a1 + 267) != 0, *(a1 + 268), (a1 + 104), (a1 + 96), 0, 0);
  if (v30)
  {
    v3 = v30;
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v39, v41);
  }

  else
  {
    *(a1 + 88) = *(a1 + 84);
    if (*(a1 + 96))
    {
      goto LABEL_3;
    }

    v32 = *v29;
    if (*v29)
    {
      v32 = CFRetain(v32);
    }

    v3 = 0;
    *(a1 + 96) = v32;
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v3;
}

void VTDecoderSessionRegisterCustomPixelFormat(void *a1, const __CFDictionary *a2)
{
  if (a1 && *a1)
  {
    if (FigCFDictionaryGetInt32IfPresent())
    {
      CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(a2, 0);
    }
  }
}

uint64_t VTDecompressionSessionSetContentAnalyzer2(uint64_t result, const void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*(result + 16))
    {
      FigSimpleMutexLock();
      _Block_release(*(v2 + 176));
      *(v2 + 176) = _Block_copy(a2);

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

CFDictionaryRef VTDecompressionSessionCopyAnalysisOptions(CFDictionaryRef theDict)
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  if (theDict)
  {
    v1 = theDict;
    v2 = 0;
    v3 = @"ContentAnalyzerRotation";
    v4 = 1;
    do
    {
      v5 = v4;
      if (CFDictionaryGetValueIfPresent(v1, v3, &values[v2]))
      {
        keys[v2++] = v3;
      }

      v4 = 0;
      v3 = @"ContentAnalyzerCropRectangle";
    }

    while ((v5 & 1) != 0);
    if (v2 < 1)
    {
      return 0;
    }

    else
    {
      return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }
  }

  return theDict;
}

void VTDecompressionSessionAnalyzeAndInterruptFrame(uint64_t a1, int a2, __int128 *a3, uint64_t a4, _DWORD *a5, CVPixelBufferRef *a6)
{
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (!a2)
  {
    if (a6)
    {
      v6 = 0;
      if (a1)
      {
        if (*a6)
        {
          v6 = 0;
          if (a5)
          {
            if (!*(a1 + 16))
            {
              FigSimpleMutexLock();
              v6 = _Block_copy(*(a1 + 176));
              FigSimpleMutexUnlock();
              if (v6)
              {
                FigExecuteBlockWithAutoreleasePool();
                v10 = v13;
                if (*(v13 + 25))
                {
                  FigSimpleMutexLock();
                  v11 = *(a1 + 176);
                  if (v11 == v6)
                  {
                    _Block_release(v11);
                    *(a1 + 176) = 0;
                  }

                  FigSimpleMutexUnlock();
                  v10 = v13;
                }

                if (*(v10 + 24) && !VTDecompressionSessionCopyBlackPixelBuffer(a1, a6))
                {
                  *a5 |= 0x10u;
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_release(v6);
  _Block_object_dispose(&v12, 8);
}

void VTDecompressionSessionInvalidate_cold_1(void *cf)
{
  v2 = *(cf + 4);
  if (v2 && *(v2 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v3 = *(*(cf + 4) + 8);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }

    VTDecompressionSessionWaitForAsynchronousFrames(cf);
    CFRelease(*(*(cf + 4) + 8));
    *(*(cf + 4) + 8) = 0;
  }

  v5 = *(cf + 5);
  if (v5)
  {
    vtDecompressionSubDuctFinishAsynchronousTransfers(v5);
    v6 = *(cf + 5);
    *v6 = 0;
    if (*(v6 + 248))
    {
      if (*(cf + 4))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v8 = Mutable;
          CMFormatDescriptionGetMediaSubType(*(*(cf + 4) + 88));
          FigVideoFormatDescriptionContainsHDR();
          CMVideoFormatDescriptionGetDimensions(*(*(cf + 4) + 88));
          MEMORY[0x193AE2670]();
          FigHostTimeToNanoseconds();
          if (*(*(cf + 4) + 184))
          {
            FigCFDictionarySetValue();
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          if (*(*(cf + 4) + 200))
          {
            FigCFDictionarySetInt32();
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigLogPowerEvent();
          CFRelease(v8);
        }
      }
    }
  }

  v9 = CFGetAllocator(cf);
  vtDecompressionDuctFinalize(v9, *(cf + 4));
  *(cf + 4) = 0;
  v10 = CFGetAllocator(cf);
  vtDecompressionSubDuctFinalize(v10, *(cf + 5));
  *(cf + 5) = 0;
}

uint64_t VTDecompressionSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionCreateWithOptions_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCreateSuggestedQualityOfServiceTiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTDecoderSessionCreatePixelBufferWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL vtDecompressionSessionDecodeFrameCommon_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecoderSessionEmitDecodedFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateFrameTypesArrayElement_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateQualityOfServiceTier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t DepthWrapperDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {

      return VTSessionCopyProperty(v10, a2, a3, a4);
    }

    else
    {
      return 4294954393;
    }
  }

  return result;
}

uint64_t DepthWrapperDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFDictionaryGetTypeID()))
    {
      v8 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a3;
      CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< DepthWrapperDecoder >>>>", 286, v3);
    }
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {

      return VTSessionSetProperty(v10, a2, a3);
    }

    else
    {
      return 4294954393;
    }
  }
}

uint64_t DepthWrapperDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  v11 = 0;
  v12 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      v7 = VTSessionCopySupportedPropertyDictionary(v6, &cf);
      if (v7)
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v4);
        v11 = cf;
        v12 = Mutable;
        FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      Mutable = 0;
      v7 = 4294954393;
    }
  }

  else
  {
    Mutable = 0;
    v7 = 4294954394;
  }

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

uint64_t DepthWrapperDecoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_CreateInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_CreateInstance_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t DepthWrapperDecoder_StartSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void DepthWrapperDecoder_StartSession_cold_4(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  CFRelease(a1);
}

uint64_t DepthWrapperDecoder_StartSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_DecodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void depthdecoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t depthdecoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

const __CFArray *vtCreatePrioritizedPixelFormatListByAlpha(const __CFArray *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  if (!CFArrayGetCount(v1))
  {
    return 0;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v1 = MutableCopy;
  if (MutableCopy)
  {
    Count = CFArrayGetCount(MutableCopy);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
        if (vtPixelFormatContainsAlpha(ValueAtIndex))
        {
          if (v6 != v7)
          {
            CFArrayRemoveValueAtIndex(v1, v6);
            CFArrayInsertValueAtIndex(v1, v7, ValueAtIndex);
          }

          ++v7;
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }

  return v1;
}

uint64_t vtCreateOrReuseSharedPixelBufferPool(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, const void *a5, void *a6, char *a7)
{
  cf = 0;
  MEMORY[0x193AE3010](&vtCreateOrReuseSharedPixelBufferPool_sInitializeVTPSharedPoolOnce, vtInitializeVTPSharedPool);
  FigSimpleMutexLock();
  v13 = qword_1ED6D4038;
  if (!qword_1ED6D4038)
  {
    goto LABEL_28;
  }

  v44 = a5;
  v45 = a6;
  v14 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v15 = v13;
        v13 = *v13;
        Count = CFArrayGetCount(v15[2]);
        if (Count >= 1)
        {
          v17 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15[2], v17);
            if (*ValueAtIndex)
            {
              ++v17;
            }

            else
            {
              v19 = ValueAtIndex;
              MEMORY[0x193AE2430]();
              v20 = v19[1];
              if (v20)
              {
                CFRelease(v20);
                v19[1] = 0;
              }

              v21 = v19[2];
              if (v21)
              {
                CFRelease(v21);
                v19[2] = 0;
              }

              CFArrayRemoveValueAtIndex(v15[2], v17);
              free(v19);
              --Count;
            }
          }

          while (v17 < Count);
        }

        if (v15[1] != a4)
        {
          break;
        }

        v14 = v15;
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      if (!Count)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_26;
      }
    }

    v22 = v15[2];
    if (v22)
    {
      CFRelease(v22);
      v15[2] = 0;
    }

    v15[1] = 0;
    v23 = qword_1ED6D4038;
    if (qword_1ED6D4038 == v15)
    {
      v24 = &qword_1ED6D4038;
    }

    else
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v15);
    }

    *v24 = *v23;
    free(v15);
  }

  while (v13);
LABEL_26:
  a6 = v45;
  a5 = v44;
  if (v14)
  {
    Mutable = *(v14 + 16);
  }

  else
  {
LABEL_28:
    v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
    v14 = v26;
    if (!v26 || (v26[1] = a4, Mutable = CFArrayCreateMutable(0, 0, 0), (*(v14 + 16) = Mutable) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v31 = 0;
      goto LABEL_47;
    }

    *v14 = qword_1ED6D4038;
    qword_1ED6D4038 = v14;
  }

  v27 = CFArrayGetCount(Mutable);
  if (v27 >= 1)
  {
    v28 = v27;
    v29 = 0;
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(*(v14 + 16), v29);
      if (FigCFEqual())
      {
        if (FigCFEqual())
        {
          break;
        }
      }

      if (v28 == ++v29)
      {
        goto LABEL_36;
      }
    }

    v36 = MEMORY[0x193AE2470](v30);
    cf = v36;
    if (v36)
    {
      v35 = 1;
      goto LABEL_45;
    }

    MEMORY[0x193AE2430](v30);
    v41 = v30[1];
    if (v41)
    {
      CFRelease(v41);
      v30[1] = 0;
    }

    v42 = v30[2];
    if (v42)
    {
      CFRelease(v42);
      v30[2] = 0;
    }

    CFArrayRemoveValueAtIndex(*(v14 + 16), v29);
    free(v30);
  }

LABEL_36:
  v31 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004082687C62uLL);
  if (!v31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9_1();
    NamedPixelBufferPool = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v44, v45);
    goto LABEL_66;
  }

  NamedPixelBufferPool = vtCreateNamedPixelBufferPool(a1, a2, a3, a5, &cf);
  if (NamedPixelBufferPool)
  {
LABEL_66:
    v37 = NamedPixelBufferPool;
    v14 = 0;
    goto LABEL_47;
  }

  FigCFWeakReferenceInit();
  if (a3)
  {
    v33 = CFRetain(a3);
  }

  else
  {
    v33 = 0;
  }

  v31[1] = v33;
  if (a2)
  {
    v34 = CFRetain(a2);
  }

  else
  {
    v34 = 0;
  }

  v31[2] = v34;
  CFArrayAppendValue(*(v14 + 16), v31);
  v35 = 0;
  v36 = cf;
LABEL_45:
  *a6 = v36;
  cf = 0;
  v14 = 0;
  v31 = 0;
  v37 = 0;
  if (a7)
  {
    *a7 = v35;
  }

LABEL_47:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    FigCFWeakReferenceStore();
    v38 = v31[1];
    if (v38)
    {
      CFRelease(v38);
    }

    free(v31);
  }

  if (v14)
  {
    v39 = *(v14 + 16);
    if (v39)
    {
      CFRelease(v39);
    }

    free(v14);
  }

  return v37;
}

CFMutableArrayRef vtCreateReorderedPixelFormatArray(const __CFAllocator *a1, CFArrayRef theArray, __CFArray *a3)
{
  v3 = a3;
  if (a3)
  {
    if (CFArrayGetCount(theArray) < 2)
    {
      return 0;
    }

    MutableCopy = CFArrayCreateMutableCopy(a1, 0, theArray);
    if (!MutableCopy)
    {
      return 0;
    }

    v7 = MutableCopy;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v3 = 0;
      v9 = v7;
      goto LABEL_54;
    }

    v9 = Mutable;
    v10 = CFGetTypeID(v3);
    if (v10 == CFNumberGetTypeID())
    {
      v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v11, v3);
      if (!v11)
      {
LABEL_33:
        CFRelease(v7);
        v3 = 0;
LABEL_54:
        CFRelease(v9);
        return v3;
      }
    }

    else
    {
      v12 = CFGetTypeID(v3);
      if (v12 != CFArrayGetTypeID())
      {
        goto LABEL_33;
      }

      v11 = CFRetain(v3);
      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (!CFArrayGetCount(v11))
    {
      goto LABEL_52;
    }

    if (CFArrayGetCount(v11) < 1)
    {
      v23 = 1;
    }

    else
    {
      v34 = 0;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
        Count = CFArrayGetCount(v7);
        v16 = OUTLINED_FUNCTION_6_1(Count);
        if (v16 != -1)
        {
          v17 = v16;
          CFArrayAppendValue(v9, ValueAtIndex);
          CFArrayRemoveValueAtIndex(v7, v17);
        }

        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr != 32 && valuePtr != 1094862674 && valuePtr != 1111970369 && valuePtr != 1647719521 && valuePtr != 1380401729)
        {
          if (vtPixelFormatContainsAlpha(ValueAtIndex))
          {
            v34 = 1;
          }
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v11));
      v23 = v34 == 0;
    }

    if (!CFArrayGetCount(v9) && CFArrayGetCount(v11) >= 1)
    {
      v24 = 0;
      do
      {
        v25 = CFArrayGetValueAtIndex(v11, v24);
        SimilarPixelFormat = vtCreateSimilarPixelFormat(v25);
        if (SimilarPixelFormat)
        {
          v27 = SimilarPixelFormat;
          v28 = CFArrayGetCount(v7);
          v29 = OUTLINED_FUNCTION_6_1(v28);
          if (v29 != -1)
          {
            v30 = v29;
            CFArrayAppendValue(v9, v27);
            CFArrayRemoveValueAtIndex(v7, v30);
          }

          CFRelease(v27);
        }

        ++v24;
      }

      while (v24 < CFArrayGetCount(v11));
    }

    if (!v23 && CFArrayGetCount(v7) >= 1)
    {
      v31 = 0;
      do
      {
        v32 = CFArrayGetValueAtIndex(v7, v31);
        if (vtPixelFormatContainsAlpha(v32))
        {
          CFArrayAppendValue(v9, v32);
          CFArrayRemoveValueAtIndex(v7, v31);
        }

        else
        {
          ++v31;
        }
      }

      while (v31 < CFArrayGetCount(v7));
    }

    if (CFArrayGetCount(v9) >= 1)
    {
      v36.length = CFArrayGetCount(v7);
      v36.location = 0;
      CFArrayAppendArray(v9, v7, v36);
      v3 = v9;
      v9 = 0;
    }

    else
    {
LABEL_52:
      v3 = 0;
    }

    CFRelease(v11);
    CFRelease(v7);
    if (v9)
    {
      goto LABEL_54;
    }
  }

  return v3;
}

const void *vtPixelFormatRequiresRGhAFallback(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (v1 == CFNumberGetTypeID())
    {
      UInt64 = FigCFNumberGetUInt64();
      return (UInt64 == 1647392369 || UInt64 == 1651521076 || UInt64 == 1651519798);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *vtGetPixelFormatColorSpace(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      return 0;
    }
  }

  return result;
}

uint64_t vtGetPixelFormatRange(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      CFDictionaryGetValue(result, *MEMORY[0x1E6966248]);
      if (FigCFEqual())
      {
        return 1;
      }

      else if (FigCFEqual())
      {
        return 2;
      }

      else if (FigCFEqual())
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFNumber *vtGetPixelFormatBitsPerComponent(const __CFNumber *result)
{
  valuePtr = 0;
  v1 = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      result = CFDictionaryGetValue(result, *MEMORY[0x1E6966218]);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &v1);
        return v1;
      }
    }
  }

  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_8(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_10(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateNamedPixelBufferPool_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateReorderedPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreatePaddingNALUForEncoder(uint64_t a1, const __CFData **a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 29765) != 1)
  {
    v4 = malloc_type_malloc(0x1F4uLL, 0x2AB3593EuLL);
    if (v4)
    {
      v6 = FigHEVCBridge_WritePaddingNALU();
      if (v6)
      {
LABEL_11:
        v5 = v6;
        goto LABEL_8;
      }

      v7 = CFDataCreate(*MEMORY[0x1E695E480], v4, 500);
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        *(a1 + 24) = CFDataGetLength(v7);
        *a2 = v8;
        goto LABEL_8;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
LABEL_8:
  free(v4);
  return v5;
}

uint64_t VTHDRMetadataGenerationSessionCreateSDRPreservationStaticData(uint64_t a1, void *a2)
{
  bzero(&v5, 0x650uLL);
  if (a2 && *(a1 + 29765) && *(a1 + 29764))
  {
    v5 = 260;
    v6 = 1;
    v7 = 1000;
    v8 = 0;
    v9 = xmmword_18FECDE60;
    v10 = 0x5A4B32190A050109;
    v11 = 25439;
    v12 = xmmword_18FECDE70;
    v13 = xmmword_18FECDE80;
    v14 = 10000;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = 26870170;
    v19 = 9;
    v20 = xmmword_18FECDE90;
    v21 = 922;
    v22 = 0;
    result = FigHEVCBridge_CreateHDR10PlusITUT35Payload();
    if (!result)
    {
      *a2 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionInsertData(uint64_t a1, CMSampleBufferRef sbuf, const __CFData *a3, CFTypeRef *a4)
{
  destination = 0;
  v43 = 0;
  theBuffer = 0;
  cf = 0;
  theData = 0;
  if (!a1 || !sbuf || !a3 || !a4 || CMSampleBufferGetNumSamples(sbuf) != 1 || (DataBuffer = CMSampleBufferGetDataBuffer(sbuf)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    SEIMessageWithITUT35Payload = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_45;
  }

  v9 = DataBuffer;
  SampleSize = CMSampleBufferGetSampleSize(sbuf, 0);
  Length = CFDataGetLength(a3);
  if (*(a1 + 29765) == 1)
  {
    SEIMessageWithITUT35Payload = FigHEVCBridge_CreateSEIMessageWithITUT35Payload();
    if (!SEIMessageWithITUT35Payload)
    {
      v13 = CFDataGetLength(0);
      v14 = *MEMORY[0x1E695E480];
      SEIMessageWithITUT35Payload = OUTLINED_FUNCTION_4_3(v13, v15, v16, v17, v18, v19, v20, v21, 0, theBuffer);
      if (!SEIMessageWithITUT35Payload)
      {
        v22 = v13 + 7;
        SEIMessageWithITUT35Payload = CMBlockBufferAppendMemoryBlock(theBuffer, 0, v22, v14, 0, 0, v22, 1u);
        if (!SEIMessageWithITUT35Payload)
        {
          SEIMessageWithITUT35Payload = writeNALU(theBuffer, 0, 1, 78, theData);
          if (!SEIMessageWithITUT35Payload)
          {
            SEIMessageWithITUT35Payload = CMBlockBufferAppendBufferReference(theBuffer, v9, 0, 0, 0);
            if (!SEIMessageWithITUT35Payload)
            {
              v23 = v22 + SampleSize;
              goto LABEL_34;
            }
          }
        }
      }
    }

LABEL_45:
    CopyWithNewSizesAndDataBuffer = SEIMessageWithITUT35Payload;
    v37 = 0;
    goto LABEL_37;
  }

  v24 = Length;
  SEIMessageWithITUT35Payload = CFRetain(a3);
  theData = SEIMessageWithITUT35Payload;
  v32 = *(a1 + 24);
  if (v32 < v24 || SampleSize <= v32)
  {
    goto LABEL_28;
  }

  v34 = SampleSize - v32;
  SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, SampleSize - v32, 4uLL, &destination);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  if (*(a1 + 24) - 4 != bswap32(destination))
  {
    goto LABEL_28;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, v34 + 4, 1uLL, &v43 + 1);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  if (HIBYTE(v43) == 76)
  {
    SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, v34 + 5, 1uLL, &v43);
    if (SEIMessageWithITUT35Payload)
    {
      goto LABEL_45;
    }

    theData = a3;
    if (v43 == 1)
    {
      SEIMessageWithITUT35Payload = writeNALU(v9, v34, 0, 124, a3);
      if (SEIMessageWithITUT35Payload)
      {
        goto LABEL_45;
      }

      v23 = v24 + v34 + 6;
      SEIMessageWithITUT35Payload = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v9, 0, v23, 0, &theBuffer);
      if (SEIMessageWithITUT35Payload)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }
  }

  else
  {
LABEL_28:
    theData = a3;
  }

  v35 = *MEMORY[0x1E695E480];
  SEIMessageWithITUT35Payload = OUTLINED_FUNCTION_4_3(SEIMessageWithITUT35Payload, v25, v26, v27, v28, v29, v30, v31, theData, theBuffer);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferAppendBufferReference(theBuffer, v9, 0, SampleSize, 0);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferAppendMemoryBlock(theBuffer, 0, v24 + 6, v35, 0, 0, v24 + 6, 1u);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = writeNALU(theBuffer, SampleSize, 0, 124, a3);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  v23 = v24 + 6 + SampleSize;
LABEL_34:
  v36 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v37 = v36;
  if (v36)
  {
    *v36 = v23;
    CopyWithNewSizesAndDataBuffer = FigSampleBufferCreateCopyWithNewSizesAndDataBuffer();
    if (!CopyWithNewSizesAndDataBuffer)
    {
      *a4 = cf;
      cf = 0;
    }
  }

  else
  {
    CopyWithNewSizesAndDataBuffer = 0;
  }

LABEL_37:
  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  free(v37);
  return CopyWithNewSizesAndDataBuffer;
}

uint64_t writeNALU(OpaqueCMBlockBuffer *a1, size_t a2, int a3, char a4, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v12 = Length;
  v13 = 2;
  if (a3)
  {
    v13 = 3;
  }

  v14 = Length + v13;
  sourceBytes[0] = HIBYTE(v14);
  sourceBytes[1] = BYTE2(v14);
  sourceBytes[2] = BYTE1(v14);
  sourceBytes[3] = v14;
  sourceBytes[4] = a4;
  sourceBytes[5] = 1;
  result = CMBlockBufferReplaceDataBytes(sourceBytes, a1, a2, 6uLL);
  if (!result)
  {
    v16 = a2 + 6;
    result = CMBlockBufferReplaceDataBytes(BytePtr, a1, v16, v12);
    if (a3)
    {
      if (!result)
      {
        v17 = 0x80;
        return CMBlockBufferReplaceDataBytes(&v17, a1, v12 + v16, 1uLL);
      }
    }
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionCopySessionState(uint64_t a1, __CFDictionary **a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      if (v12)
      {
        return v12;
      }

      goto LABEL_19;
    }

    v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v6)
    {
      v7 = v6;
      v8 = FigCFDictionarySetDouble();
      if (!v8)
      {
        v8 = FigCFDictionarySetDouble();
        if (!v8)
        {
          v8 = FigCFDictionarySetDouble();
          if (!v8)
          {
            v8 = FigCFDictionarySetDouble();
            if (!v8)
            {
              v8 = FigCFDictionarySetDouble();
              if (!v8)
              {
                v8 = FigCFDictionarySetInt32();
                if (!v8)
                {
                  v8 = FigCFDictionarySetInt32();
                  if (!v8)
                  {
                    v8 = FigCFDictionarySetInt32();
                    if (!v8)
                    {
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      if (!*(a1 + 141) || (v8 = FigCFDictionarySetCGSize(), !v8) && (v8 = FigCFDictionarySetCGRect(), !v8))
                      {
                        CFDictionarySetValue(Mutable, @"DolbyStatistics", v7);
                        CFRelease(v7);
LABEL_16:
                        FigCFDictionarySetDouble();
                        v9 = MEMORY[0x1E695E4D0];
                        if (!*(a1 + 32))
                        {
                          v9 = MEMORY[0x1E695E4C0];
                        }

                        CFDictionarySetValue(Mutable, @"FirstFrame", *v9);
LABEL_19:
                        v10 = 0;
                        *a2 = Mutable;
                        return v10;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v10 = v8;
      CFRelease(v7);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      if (!v13)
      {
        CFDictionarySetValue(Mutable, @"DolbyStatistics", 0);
        goto LABEL_16;
      }

      v10 = v13;
    }

    CFRelease(Mutable);
    return v10;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_10_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTHDRMetadataGenerationSessionCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t getValuesFromDictionary_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostCopyDecoderListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v13 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  cf = 0;
  theArray = 0;
  v10 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (v5 || (vtPopulateVideoDecoderRegistry(), v5 = FigRegistryCopyFilteredItemList(), v5) || (v5 = VTParavirtualizationCreateReplyAndByteStream(a1, 4u, &cf, &v10), v5) || (v5 = VTParavirtualizationMessageAppendCFPropertyList(v10, 0x2C646563u, Mutable), v5))
  {
    appended = v5;
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    appended = VTParavirtualizationMessageAppendUInt32(v6, v7, 5u);
    if (!appended)
    {
      *a2 = cf;
      cf = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return appended;
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedDecodersOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

BOOL vtFilterRegistryItemByCodecType(CFTypeRef *a1, uint64_t a2)
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(0, @"VTCodecType");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 == CFStringGetTypeID())
  {
    if (!CFEqual(v4, *a1))
    {
      return 0;
    }
  }

  else
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFArrayGetTypeID())
    {
      return 0;
    }

    Count = CFArrayGetCount(v4);
    if (!OUTLINED_FUNCTION_4_4(Count))
    {
      return 0;
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  return FigCFEqual() == 0;
}

uint64_t vtFilterRegistryItemToSkipNonParavirtualizedHardwareAcceleratedDecoders(uint64_t a1, uint64_t a2)
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

uint64_t vtCopyExpandedDecoderListForWrappers(const __CFArray *a1, __int128 *a2, __CFArray **a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v51 = 0;
  v52[0] = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  if (!a1)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_49;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_49;
  }

  v10 = a1;
  Count = CFArrayGetCount(a1);
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_77;
  }

  v36 = a3;
  if (Count < 1)
  {
LABEL_48:
    v5 = 0;
    MutableCopy = 0;
    v8 = 0;
    v4 = 0;
    *v36 = v9;
    v9 = 0;
    goto LABEL_49;
  }

  v14 = 0;
  v41 = *MEMORY[0x1E695E4D0];
  v15 = @"CMDependencies";
  theArray = Mutable;
  v37 = v10;
  v40 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
    if (ValueAtIndex)
    {
      break;
    }

LABEL_44:
    if (++v14 == Count)
    {
      goto LABEL_48;
    }
  }

  v17 = ValueAtIndex;
  v18 = v15;
  v19 = FigRegistryItemCopyMatchingInfo();
  if (v19)
  {
    goto LABEL_77;
  }

  if (!v52[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_77:
    v4 = v19;
    v5 = 0;
    MutableCopy = 0;
    v8 = 0;
    goto LABEL_49;
  }

  if (v41 != CFDictionaryGetValue(v52[0], @"VTIsWrapperDecoder"))
  {
    CFArrayAppendValue(v9, v17);
LABEL_40:
    if (v52[0])
    {
      CFRelease(v52[0]);
      v52[0] = 0;
    }

    Count = v40;
    if (v51)
    {
      CFRelease(v51);
      v51 = 0;
    }

    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(v52[0], @"VTWrapsCodecType");
  if (!Value)
  {
    goto LABEL_40;
  }

  v21 = Value;
  v46 = 0;
  v19 = FigRegistryItemCopyDescription();
  if (v19)
  {
    goto LABEL_77;
  }

  v42 = CFDictionaryGetValue(v51, @"CMClassImplementationID");
  v44 = *a2;
  v45 = *(a2 + 2);
  *&v44 = v21;
  OUTLINED_FUNCTION_2_3();
  v19 = FigRegistryCopyFilteredItemList();
  if (v19)
  {
    goto LABEL_77;
  }

  if (a4 <= 10)
  {
    v19 = vtCopyExpandedDecoderListForWrappers(v50, &v44, &v46, a4 + 1);
    if (v19)
    {
      goto LABEL_77;
    }
  }

  v22 = v50;
  if (v46)
  {
    if (v50)
    {
      CFRelease(v50);
    }

    v22 = v46;
    v50 = v46;
    v46 = 0;
  }

  if (!v22 || (v23 = CFArrayGetCount(v22), v23 < 1))
  {
LABEL_37:
    if (v50)
    {
      CFRelease(v50);
      v50 = 0;
    }

    v9 = theArray;
    v10 = v37;
    goto LABEL_40;
  }

  v24 = v23;
  v25 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v50, v25);
    v26 = FigRegistryItemCopyMatchingInfo();
    if (v26 || (v26 = FigRegistryItemCopyDescription(), v26))
    {
      v4 = v26;
      v5 = 0;
      MutableCopy = 0;
      goto LABEL_73;
    }

    v27 = CFDictionaryGetValue(v48, @"CMClassImplementationID");
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      v5 = 0;
LABEL_72:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11_1();
      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
LABEL_73:
      v8 = 0;
      goto LABEL_74;
    }

    v28 = CFDictionaryGetValue(v52[0], @"VTCodecType");
    CFDictionarySetValue(MutableCopy, @"VTCodecType", v28);
    CFDictionarySetValue(MutableCopy, @"VTWrappedDecoderID", v27);
    v5 = FigCFDictionaryCreateMutableCopy();
    if (!v5)
    {
      goto LABEL_72;
    }

    v29 = CFStringCreateWithFormat(v12, 0, @"%@:%@", v42, v27);
    if (!v29)
    {
      goto LABEL_72;
    }

    v8 = v29;
    CFDictionarySetValue(v5, @"CMClassImplementationID", v29);
    v30 = CFDictionaryGetValue(v48, v18);
    if (v30)
    {
      CFDictionarySetValue(v5, v18, v30);
    }

    CFDictionarySetValue(v5, @"CMMatchingInfo", MutableCopy);
    Copy2 = FigRegistryItemCreateCopy2();
    if (Copy2)
    {
      break;
    }

    CFArrayAppendValue(theArray, v47);
    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    v15 = v18;
    if (v48)
    {
      CFRelease(v48);
      v48 = 0;
    }

    CFRelease(MutableCopy);
    CFRelease(v8);
    CFRelease(v5);
    if (v47)
    {
      CFRelease(v47);
      v47 = 0;
    }

    if (v24 == ++v25)
    {
      goto LABEL_37;
    }
  }

  v4 = Copy2;
LABEL_74:
  v9 = theArray;
LABEL_49:
  if (v50)
  {
    CFRelease(v50);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v52[0])
  {
    CFRelease(v52[0]);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v4;
}

CFComparisonResult vtCompareCodecName(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"CodecName");
  v4 = CFDictionaryGetValue(a2, @"CodecName");
  if (!Value)
  {
    return -1;
  }

  v5 = v4;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    return -1;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = CFGetTypeID(v5);
  if (v7 != CFStringGetTypeID())
  {
    return 1;
  }

  return CFStringCompare(Value, v5, 0);
}

void vtLoadParavirtualizedVideoDecoders()
{
  if (qword_1ED6D4070 != -1)
  {
    dispatch_once(&qword_1ED6D4070, &__block_literal_global_3);
  }

  if (!VTParavirtualizationGuestInstallHandlerForUUID(&xmmword_1ED6D4078, &__block_literal_global_181, 0))
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    appended = VTParavirtualizationCreateMessageAndByteStream(0x64656373u, 1u, &xmmword_1ED6D4078, 0, &v39, &v38);
    if (!appended)
    {
      OUTLINED_FUNCTION_6_2();
      appended = VTParavirtualizationMessageAppendUInt32(v1, v2, 5u);
      if (!appended)
      {
        v34 = kVTParavirtualizationDefaultReplyTimeout;
        v35 = 0;
        appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v39, &v34, &v37);
        if (!appended)
        {
          appended = VTParavirtualizationMessageCopyCFPropertyList(v37, 744777059, &v36);
          if (!appended)
          {
            if (v36)
            {
              v3 = CFGetTypeID(v36);
              if (v3 == CFArrayGetTypeID())
              {
                v4 = v36;
                v36 = 0;
                OUTLINED_FUNCTION_6_2();
                VTParavirtualizationMessageGetUInt32();
                v6 = v5;
                goto LABEL_11;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_11_1();
            appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
          }
        }
      }
    }

    v6 = appended;
    v4 = 0;
LABEL_11:
    if (v36)
    {
      CFRelease(v36);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (!v6)
    {
      if (!v4)
      {
        return;
      }

      Count = CFArrayGetCount(v4);
      if (Count < 1)
      {
LABEL_35:
        CFRelease(v4);
        return;
      }

      v7 = 0;
      v30 = *MEMORY[0x1E695E4C0];
      v31 = v4;
      v8 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != CFDictionaryGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11_1();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
          goto LABEL_34;
        }

        LODWORD(v34) = 0;
        Value = CFDictionaryGetValue(v10, @"CMClassImplementationID");
        v33 = CFDictionaryGetValue(v10, @"VTCodecType");
        v13 = CFStringCreateWithFormat(v8, 0, @"paravirtualized:%@", Value);
        FigCFDictionaryGetInt32IfPresent();
        v14 = CFDictionaryGetValue(v10, @"CMClassImplementationName");
        v15 = CFDictionaryGetValue(v10, @"VTDecoderCapabilities");
        v16 = CFDictionaryGetValue(v10, @"IsPreferredInternalPlugin");
        v17 = v16 ? v16 : v30;
        v18 = CFStringCreateWithFormat(v8, 0, @"paravirtualized:%@", v14, v24, v25, v26, v27, v28, v29);
        v28 = v17;
        v29 = 0;
        v26 = v15;
        v27 = @"IsPreferredInternalPlugin";
        v24 = Value;
        v25 = @"VTDecoderCapabilities";
        if (vtRegisterVideoDecoderWithSpecificationArgumentWithInfoKeysAndValues(v33, v34, v18, v13, v19, v20, v21, v22, @"VTHostDecoderID"))
        {
          break;
        }

        if (v18)
        {
          CFRelease(v18);
        }

        v4 = v31;
        if (v13)
        {
          CFRelease(v13);
        }

        if (Count == ++v7)
        {
          goto LABEL_34;
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v4 = v31;
      if (v13)
      {
        CFRelease(v13);
      }
    }

LABEL_34:
    if (!v4)
    {
      return;
    }

    goto LABEL_35;
  }
}