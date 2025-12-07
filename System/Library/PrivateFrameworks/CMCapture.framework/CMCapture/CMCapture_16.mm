uint64_t multiBandNoiseReductionPyramidLayers(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 == 1459126783)
  {
    return 4;
  }

  multiBandNoiseReductionPyramidLayers_cold_1(a1, a2);
  return 4294954516;
}

uint64_t multiBandNoiseReductionWithPyramid(_DWORD *a1, CMSampleBufferRef sbuf, CVPixelBufferRef *a3, unsigned int a4, const __CFDictionary *a5)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v12 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (ImageBuffer == *a3)
  {
    multiBandNoiseReductionWithPyramid_cold_3(v12);
    return 4294954516;
  }

  if (!a1 || *a1 != 1459126783)
  {
    multiBandNoiseReductionWithPyramid_cold_2(v12);
    return 4294954516;
  }

  v13 = v12;
  if (a4 != 1 && a4 != 4)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v18, v19, v20, v21, v22, v23);
    return 4294954516;
  }

  v14 = CMGetAttachment(sbuf, *off_1E798D3B0, 0);
  v15 = multiBandNoiseReductionGPU(a1, ImageBuffer, a3, a4, v13, a5, v14);
  v16 = v15;
  if (v15)
  {
    multiBandNoiseReductionWithPyramid_cold_1(v15);
  }

  return v16;
}

uint64_t multiBandNoiseReductionPyramidFusionMaxBuffers(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 == 1459126783)
  {
    return 4;
  }

  multiBandNoiseReductionPyramidFusionMaxBuffers_cold_1(a1, a2);
  return 4294954516;
}

uint64_t multiBandPyramidFusion(const __CFNumber *Value, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, CFDictionaryRef theDict)
{
  if (a4 > 4)
  {
    return 4294954516;
  }

  v9 = a4;
  v12 = Value;
  LODWORD(v110) = 0;
  v103 = theDict;
  v104 = a6;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"TNRFusionAlgorithm")) != 0)
  {
    Value = CFNumberGetValue(Value, kCFNumberIntType, &v110);
    v13 = v110 == 1;
  }

  else
  {
    v13 = 0;
  }

  v100 = &v100;
  v14 = v9;
  v15 = MEMORY[0x1EEE9AC00](Value, a2, a3, a4);
  v19 = MEMORY[0x1EEE9AC00](v15, v16, v17, v18);
  v23 = MEMORY[0x1EEE9AC00](v19, v20, v21, v22);
  MEMORY[0x1EEE9AC00](v23, v24, v25, v26);
  v101 = &v115;
  memset(v122, 0, 376);
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  memset(v118, 0, sizeof(v118));
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v112 = v27;
  v113 = v28;
  v114 = (&v100 - v29);
  DWORD2(v121) = v9;
  v110 = *(v12 + 7);
  v111 = v30;
  v31 = [MEMORY[0x1E6977FE8] setCurrentContext:?];
  if (v9 >= 1)
  {
    v31 = memcpy(v118, a2, 8 * v9);
  }

  v32 = 0;
  BYTE12(v121) = v13;
  v122[6] = a3;
  do
  {
    v33 = a5;
    if (v32)
    {
      v33 = *(v12 + v32 + 240);
    }

    if (!v33)
    {
      multiBandPyramidFusion_cold_13(v31);
      v7 = 4294954514;
      goto LABEL_78;
    }

    *(&v119 + v32) = v33;
    v32 += 8;
  }

  while (v32 != 32);
  v102 = v9;
  if (v9 >= 1)
  {
    v34 = 0;
    v105 = v122;
    v35 = vdup_n_s32(0x437F0000u);
    while (1)
    {
      v36 = *(v118[v34] + 24);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v36, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v36, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v36, 0);
      if (CVPixelBufferLockBaseAddress(v36, 1uLL))
      {
        multiBandPyramidFusion_cold_1();
        goto LABEL_90;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v36, 0);
      if (HeightOfPlane < 1)
      {
        v43 = 0;
        v48 = 0.0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        do
        {
          v44 = BaseAddressOfPlane;
          v45 = WidthOfPlane & 0x7FFFFFFF;
          if (WidthOfPlane >= 1)
          {
            do
            {
              v47 = *v44++;
              v46 = v47;
              if (v47 >= 0x81)
              {
                v46 = 0;
              }

              else
              {
                ++v43;
              }

              v42 += v46;
              --v45;
            }

            while (v45);
          }

          ++v41;
          BaseAddressOfPlane += BytesPerRowOfPlane;
        }

        while (v41 != (HeightOfPlane & 0x7FFFFFFF));
        v48 = v42;
      }

      if (WidthOfPlane * 0.05 * HeightOfPlane >= v43)
      {
        break;
      }

      v49 = &v105[12 * v34];
      *v49 = (v48 / v43) / 255.0;
      v50 = CVPixelBufferGetWidthOfPlane(v36, 1uLL);
      v51 = CVPixelBufferGetHeightOfPlane(v36, 1uLL);
      v52 = CVPixelBufferGetBytesPerRowOfPlane(v36, 1uLL);
      v53 = CVPixelBufferGetBaseAddressOfPlane(v36, 1uLL);
      if (v51 < 1)
      {
        v59 = 0;
        v54 = 0;
      }

      else
      {
        v55 = 0;
        v56 = 0;
        do
        {
          v57 = v53;
          v58 = v50 & 0x7FFFFFFF;
          if (v50 >= 1)
          {
            do
            {
              v54.i32[0] = *v57;
              v54.i32[1] = v57[1];
              v56 = vadd_s32(v56, v54);
              v57 += 2;
              --v58;
            }

            while (v58);
          }

          ++v55;
          v53 += v52;
        }

        while (v55 != (v51 & 0x7FFFFFFF));
        *v54.i32 = ((v50 & ~(v50 >> 31)) * v51);
        v59 = vcvt_f32_s32(v56);
      }

      *(v49 + 4) = vdiv_f32(vdiv_f32(v59, vdup_lane_s32(v54, 0)), v35);
      CVPixelBufferUnlockBaseAddress(v36, 1uLL);
      if (++v34 == v14)
      {
        goto LABEL_39;
      }
    }

    v60 = &v122[1];
    do
    {
      *(v60 - 1) = 0x3F00000000000000;
      *v60 = 1056964608;
      v60 += 3;
      --v14;
    }

    while (v14);
  }

LABEL_39:
  v109 = 0.0;
  v108 = 0;
  v61 = v103;
  v62 = v104;
  get_exposure_parameters(v104, v103, &v108);
  device_parameters = get_device_parameters(v12, v62, v61, 0);
  v64 = 0;
  v65 = &v122[7];
  v66 = v108;
  v67 = v109;
  do
  {
    compute_noise_model(v12 + 8, v65, device_parameters, v64++, 0, *&v66, *(&v66 + 1), v67);
    v65 += 7;
  }

  while (v64 != 4);
  LODWORD(v9) = v102;
  glGenTextures(v102, v111);
  glGenTextures(v9, v112);
  glGenTextures(v9, v113);
  glGenTextures(v9, v114);
  glGenTextures(4, &v115 + 1);
  glGenTextures(4, &v116 + 1);
  glGenFramebuffers(1, &v117 + 1);
  glGenFramebuffers(1, &v117 + 3);
  glGenFramebuffers(1, &v117 + 2);
  if (BYTE12(v121))
  {
    v69 = CVPixelBufferGetWidthOfPlane(*(v12 + 33), 0);
    v70 = CVPixelBufferGetHeightOfPlane(*(v12 + 33), 0);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(v12 + 30));
    YCC420CVPixelBufferRef = createYCC420CVPixelBufferRef(v69, v70, PixelFormatType);
    *&v121 = YCC420CVPixelBufferRef;
    if (!YCC420CVPixelBufferRef)
    {
      multiBandPyramidFusion_cold_12();
      goto LABEL_95;
    }

    IOSurface = CVPixelBufferGetIOSurface(YCC420CVPixelBufferRef);
    if (!IOSurface)
    {
      multiBandPyramidFusion_cold_11(&v121);
      goto LABEL_95;
    }

    v74 = IOSurface;
    glGenTextures(1, v101);
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, v115);
    BYTE4(v99) = 0;
    LODWORD(v99) = 0;
    if (([v110 texImageIOSurface:v74 target:3553 internalFormat:33323 width:(v69 / 2) height:v70 format:33319 type:5121 plane:v99 invert:?] & 1) == 0)
    {
      multiBandPyramidFusion_cold_2();
      v7 = 1;
      goto LABEL_78;
    }
  }

  else
  {
    *&v121 = 0;
    LODWORD(v115) = 0;
  }

  if (v103 && (v75 = CFDictionaryGetValue(v103, @"kTMBNRTuningParameters")) != 0 && (BytePtr = CFDataGetBytePtr(v75)) != 0)
  {
    v77 = *(BytePtr + 1);
    *&v122[35] = *BytePtr;
    *&v122[37] = v77;
    v78 = *(BytePtr + 2);
    v79 = *(BytePtr + 3);
    v80 = *(BytePtr + 5);
    *&v122[43] = *(BytePtr + 4);
    *&v122[45] = v80;
    *&v122[39] = v78;
    *&v122[41] = v79;
  }

  else
  {
    LODWORD(v68) = v66;
    initialize_fusion_parameters(&v122[35], BYTE12(v121), v68);
  }

  v107 = 0.0;
  v81 = fuse_remix_level(&v110, v12 + 104, 3, 0, 1, 0.0);
  if (v81)
  {
    v7 = v81;
    multiBandPyramidFusion_cold_3();
    goto LABEL_78;
  }

  if (compute_mismatch_coefficient(&v110, &v107, *&v66))
  {
    multiBandPyramidFusion_cold_4();
LABEL_95:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_78;
  }

  v82 = v107;
  if (BYTE12(v121) == 1 && v107 > 0.0)
  {
    v83 = 0;
    v84 = v106;
    do
    {
      compute_noise_model(v12 + 8, v84, device_parameters, v83++, 1, *&v66, *(&v66 + 1), v67);
      v84 += 56;
    }

    while (v83 != 4);
  }

  v85 = 0;
  v104 = (v12 + 144);
  v105 = &v120 + 8;
  while (1)
  {
    if (v85 < 0xFFFFFFFFFFFFFFFDLL)
    {
      v86 = 440;
    }

    else
    {
      v86 = 452;
    }

    v87 = fuse_remix_level(&v110, (v12 + v86), v85 + 3, 1, 0, v82);
    if (v87)
    {
      v7 = v87;
      multiBandPyramidFusion_cold_5();
      goto LABEL_77;
    }

    if (v85 + 3 >= 3)
    {
      v88 = (v12 + 416);
    }

    else
    {
      v88 = (v12 + 428);
    }

    v89 = fuse_remix_level(&v110, v88, v85 + 3, 0, 0, v82);
    if (v89)
    {
      v7 = v89;
      multiBandPyramidFusion_cold_6();
      goto LABEL_77;
    }

    if (v85 != -3 && (BYTE12(v121) & 1) != 0 && v82 > 0.0)
    {
      break;
    }

LABEL_75:
    if (--v85 == -4)
    {
      multibandNoiseReductionFinalize(v103);
      v7 = 0;
      goto LABEL_77;
    }
  }

  v90 = *&v105[8 * v85];
  v91 = CVPixelBufferGetWidthOfPlane(v90, 0);
  v92 = CVPixelBufferGetHeightOfPlane(v90, 0);
  v93 = CVPixelBufferGetPixelFormatType(v119);
  v94 = createYCC420CVPixelBufferRef(v91, v92, v93);
  if (!v94)
  {
    multiBandPyramidFusion_cold_10();
    goto LABEL_90;
  }

  v95 = v94;
  v96 = CVPixelBufferGetIOSurface(v94);
  if (!v96)
  {
    multiBandPyramidFusion_cold_9(v95);
    goto LABEL_90;
  }

  v97 = BindTextureToFbo(*(v12 + 7), v96, *(v104 + v85), DWORD2(v117), 0x8227u, 0);
  if (v97)
  {
    v7 = v97;
    multiBandPyramidFusion_cold_7();
    goto LABEL_77;
  }

  denoise_luma_level(v12 + 8, DWORD2(v117), v106, v115, v85 + 3);
  if (!CVPixelBufferCopyPlane(v90, v95))
  {
    CVPixelBufferRelease(v95);
    goto LABEL_75;
  }

  multiBandPyramidFusion_cold_8();
LABEL_90:
  v7 = 0xFFFFFFFFLL;
LABEL_77:
  LODWORD(v9) = v102;
LABEL_78:
  glGetError();
  if (v121)
  {
    CVPixelBufferRelease(v121);
    *&v121 = 0;
  }

  glDeleteTextures(v9, v111);
  glDeleteTextures(v9, v112);
  glDeleteTextures(v9, v113);
  glDeleteTextures(v9, v114);
  glDeleteTextures(1, v101);
  glDeleteTextures(4, &v115 + 1);
  glDeleteTextures(4, &v116 + 1);
  glDeleteFramebuffers(1, &v117 + 1);
  glDeleteFramebuffers(1, &v117 + 3);
  glDeleteFramebuffers(1, &v117 + 2);
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return v7;
}

float get_exposure_parameters(CFDictionaryRef theDict, CFDictionaryRef a2, float *a3)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"ClientSpecifiedMetadata");
    if (Value)
    {
      theDict = Value;
    }
  }

  valuePtr = 1017370378;
  v22 = 256;
  v23 = 256;
  v21 = 256;
  v20 = 4096;
  v19 = 4096;
  v18 = 4096;
  if (!theDict)
  {
    goto LABEL_19;
  }

  v6 = CFDictionaryGetValue(theDict, *off_1E798B2A8);
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr);
  }

  v7 = CFDictionaryGetValue(theDict, *off_1E798B0B8);
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberIntType, &v23);
  }

  v8 = CFDictionaryGetValue(theDict, *off_1E798B7D0);
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &v22);
  }

  v9 = CFDictionaryGetValue(theDict, *off_1E798B7B8);
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberIntType, &v21);
  }

  v10 = CFDictionaryGetValue(theDict, *off_1E798B0F8);
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberShortType, &v20);
  }

  v11 = CFDictionaryGetValue(theDict, *off_1E798B120);
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberShortType, &v19);
  }

  v12 = CFDictionaryGetValue(theDict, *off_1E798B0C0);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberShortType, &v18);
    v13 = v18;
  }

  else
  {
LABEL_19:
    v13 = 4096.0;
  }

  v14 = v20;
  v15 = vcvtd_n_f64_s32(v23, 8uLL) * vcvtd_n_f64_s32(v22, 8uLL) * vcvtd_n_f64_s32(v21, 8uLL);
  v16 = v19 / v14;
  *a3 = v15;
  a3[1] = v16;
  result = v13 / v14;
  a3[2] = result;
  return result;
}

const UInt8 *get_device_parameters(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3, const void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B660);
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Value = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (!Value)
  {
    v8 = CFDictionaryGetValue(a3, @"ClientSpecifiedMetadata");
    Value = v8;
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(Value, *off_1E798B660);
      }

      else
      {
        Value = 0;
      }
    }
  }

LABEL_10:
  valuePtr = 0;
  if (!a4 || (v10 = CFGetTypeID(a4), v10 != CFNumberGetTypeID()))
  {
    v11 = 480;
    if (!Value)
    {
      goto LABEL_19;
    }

LABEL_16:
    v12 = *(a1 + v11);
    if (v12)
    {
      result = get_device_parameters_for_fusion_type(a1, Value, *(a1 + v11));
      if (result)
      {
        return result;
      }

      if (v12 == *(a1 + 488))
      {
        result = get_device_parameters_for_fusion_type(a1, Value, *(a1 + 480));
        if (result)
        {
          return result;
        }
      }
    }

    goto LABEL_19;
  }

  CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr < 4)
  {
    v11 = (8 * valuePtr) | 0x1E0;
    if (Value)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  if (get_device_parameters_spamCountDown >= 1)
  {
    --get_device_parameters_spamCountDown;
  }

  return &N53_RFC;
}

void compute_noise_model(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6, float a7, float a8)
{
  v15 = 0.0;
  v16 = 1.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 1.0;
  v20 = 1.0;
  if (*(a3 + 124) > a4)
  {
    v21 = *(a3 + 128) + 96 * a4;
    v20 = scan_entries(*(v21 + 24), *(v21 + 16), a6);
    v19 = scan_entries(*(v21 + 8), *v21, a6);
    v16 = scan_entries(*(v21 + 40), *(v21 + 32), a6);
    v22 = *(v21 + 48);
    if (v22 >= 1)
    {
      v15 = scan_entries(*(v21 + 56), v22, a6);
    }

    v23 = *(v21 + 64);
    if (v23 >= 1)
    {
      v17 = scan_entries(*(v21 + 72), v23, a6);
    }

    v24 = *(v21 + 80);
    if (v24 < 1)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = scan_entries(*(v21 + 88), v24, a6);
    }
  }

  *(a2 + 24) = v16;
  *(a2 + 28) = v15;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  if (a5)
  {
    v25 = v20;
  }

  else
  {
    v25 = 1.0;
  }

  if (!a5)
  {
    v19 = 1.0;
  }

  v26 = ldexpf(1.0, -a4);
  v27 = -a4 / pow(a6, (v26 / *(a3 + 4)));
  v28 = exp2f(v27);
  v29 = (v19 * powf(a6, *a3)) * v28;
  v30 = (1.0 / sqrtf((1 << a4))) * 0.0039216;
  v31 = v30 * v29;
  *a2 = (v30 * v29) / *(a3 + 8);
  if (a6 <= 8.0)
  {
    v32 = v29 / *(a3 + 12);
  }

  else
  {
    v32 = v29 / (*(a3 + 12) + *(a3 + 12));
  }

  *(a2 + 4) = v32;
  *(a2 + 8) = v31;
  v33 = ~a4 / 1.9;
  v34 = ((a4 + 1) * (a4 + 1)) * powf(*(a3 + 20), v33);
  v35 = v30 * v25;
  v36 = a6 * a7;
  v37 = *(a3 + 16);
  *(a2 + 16) = v34 * (v35 * powf(v36, v37));
  *(a2 + 20) = v34 * (v35 * powf(a6 * a8, v37));
  if (!a4)
  {
    v39 = scan_entries((a3 + 40), *(a3 + 120), a6);
    if (v39 < 4.0)
    {
      *(a2 + 40) = a1 + 300;
      v38 = 1061997773;
      goto LABEL_23;
    }

    if (v39 >= 6.0)
    {
      *(a2 + 40) = a1 + 324;
      v38 = 1053609165;
      goto LABEL_23;
    }
  }

  *(a2 + 40) = a1 + 312;
  v38 = 1056964608;
LABEL_23:
  *(a2 + 48) = v38;
  *(a2 + 52) = 1056964608;
}

CVPixelBufferRef createYCC420CVPixelBufferRef(int a1, int a2, OSType a3)
{
  pixelBufferOut = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69662D0], *MEMORY[0x1E695E4D0]);
  v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v10);
  CFRelease(v10);
  CVPixelBufferCreate(v6, a1, a2, a3, Mutable, &pixelBufferOut);
  CFRelease(Mutable);
  return pixelBufferOut;
}

uint64_t initialize_fusion_parameters(uint64_t result, int a2, double a3)
{
  v3 = 1.0;
  if (*&a3 > 1.0)
  {
    v3 = 0.0;
    if (*&a3 <= 10.0)
    {
      v3 = ((10.0 - *&a3) / 9.0);
    }
  }

  v4 = 0;
  v5 = v3 * 0.5 + 0.5;
  v6 = v5;
  v7 = 1.0 - v6 + v6 * 1.4;
  v47 = v7;
  v48 = 0x3F8CCCCD3F99999ALL;
  v49 = 1065353216;
  *&v6 = 1.0 - v6 + v6 * 1.3;
  v44 = LODWORD(v6);
  v45 = 0x3F8666663F8CCCCDLL;
  v46 = 1065353216;
  v8 = 0.0;
  v9 = ((10.0 - *&a3) / 9.0);
  if (*&a3 > 10.0)
  {
    v9 = 0.0;
  }

  if (*&a3 > 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v41 = vdup_n_s32(0x3ECCCCCDu);
  v11 = 0.2;
  v12 = 0.3;
  if (!a2)
  {
    v12 = 0.2;
    v11 = 0.1;
  }

  v42 = v12;
  v43 = v11;
  v13 = &v44;
  if (a2)
  {
    v13 = &v47;
  }

  if (*&a3 <= 10.0)
  {
    v8 = ((10.0 - *&a3) / 5.0);
  }

  if (*&a3 <= 5.0)
  {
    v8 = 1.0;
  }

  v14 = v8 * -0.299000012 + 0.300000012;
  *&v14 = v14;
  v15 = (v10 * 0.3 + 1.0) * 1.3;
  v16 = vdup_lane_s32(*&v14, 0);
  v17 = vdup_n_s32(*&a3 > 1.0);
  v18 = vdup_lane_s32(*&a3, 0);
  v19 = xmmword_1AD046360;
  __asm
  {
    FMOV            V5.2S, #10.0
    FMOV            V7.2D, #2.5
    FMOV            V16.2D, #3.0
    FMOV            V17.2D, #1.0
    FMOV            V18.2D, #0.5
  }

  v29 = vdup_n_s32(0x3A83126Fu);
  __asm { FMOV            V20.2S, #-1.0 }

  v31 = vdupq_n_s64(2uLL);
  do
  {
    v32 = (result + 48 + v4);
    v32[-4] = *&v13[v4 / 4];
    v33 = vceqzq_s64(v19);
    v34 = vmovn_s64(v33);
    v35 = vbsl_s8(v34, 0x4000000040000000, _D5);
    v32[-6] = vbsl_s8(v34, v16, v29);
    v32[-2] = qword_1AD056820[v4 / 8];
    v36 = vcge_f32(v35, v18);
    v37 = vand_s8(v17, v36);
    v38.i64[0] = v37.u32[0];
    v38.i64[1] = v37.u32[1];
    v39 = vcltzq_s64(vshlq_n_s64(v38, 0x3FuLL));
    v40 = vbic_s8(v17, v36);
    v38.i64[0] = v40.u32[0];
    v38.i64[1] = v40.u32[1];
    *v32 = vcvt_f32_f64(vmlaq_f64(vbslq_s8(v33, _Q18, _Q17), vandq_s8(vbslq_s8(v39, vcvtq_f64_f32(vdiv_f32(vsub_f32(v35, v18), vadd_f32(v35, _D20))), _Q17), vcgezq_s64(vshlq_n_s64(v38, 0x3FuLL))), vbslq_s8(v33, _Q16, _Q7)));
    v32[2] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(qword_1AD056830[v4 / 8]), v15));
    v32[4] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(&v41 + v4)), v15));
    v19 = vaddq_s64(v19, v31);
    v4 += 8;
  }

  while (v4 != 16);
  return result;
}

uint64_t fuse_remix_level(uint64_t a1, GLuint *a2, int a3, int a4, GLint a5, GLfloat a6)
{
  v11 = *a1;
  v70 = *(a1 + 160);
  v12 = (a1 + 88);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(*(a1 + 88) + 8 * a3), 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(*v12 + 8 * a3), 0);
  v13 = CVPixelBufferGetWidthOfPlane(*(*v12 + 8 * a3), 1uLL);
  v14 = CVPixelBufferGetHeightOfPlane(*(*v12 + 8 * a3), 1uLL);
  IOSurface = CVPixelBufferGetIOSurface(*(a1 + 8 * a3 + 120));
  if (!IOSurface)
  {
    v18 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v16 = IOSurface;
  glActiveTexture(0x84C0u);
  v67 = a4;
  v17 = a1 + 4 * a3;
  if (a4)
  {
    glBindTexture(0xDE1u, *(v17 + 60));
    BYTE4(v61) = 0;
    v18 = 1;
    LODWORD(v61) = 1;
    if ([v11 texImageIOSurface:v16 target:3553 internalFormat:33323 width:v13 height:v14 format:33319 type:5121 plane:v61 invert:?])
    {
      v19 = 84;
      v20 = 60;
      goto LABEL_7;
    }

LABEL_39:
    fuse_remix_level_cold_5(v18);
    return v18;
  }

  glBindTexture(0xDE1u, *(v17 + 44));
  BYTE4(v61) = 0;
  LODWORD(v61) = 0;
  if (([v11 texImageIOSurface:v16 target:3553 internalFormat:33321 width:WidthOfPlane height:HeightOfPlane format:6403 type:5121 plane:v61 invert:?] & 1) == 0)
  {
    v18 = 1;
    goto LABEL_39;
  }

  v19 = 76;
  v20 = 44;
LABEL_7:
  glBindFramebuffer(0x8D40u, *(a1 + v19));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + v20 + 4 * a3), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    return 0xFFFFFFFFLL;
  }

  v66 = v13;
  if (v70 < 1)
  {
    if (a3 < 3)
    {
LABEL_29:
      glActiveTexture(0x84D0u);
      v31 = 44;
      if (v67)
      {
        v31 = 60;
      }

      glBindTexture(0xDE1u, *(a1 + v31 + 4 * (a3 + 1)));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
    }

LABEL_32:
    bindVertexAttributes(a2);
    if (v67)
    {
      v33 = v14;
      v32 = v66;
      glViewport(0, 0, v66, v14);
      v34 = 132;
    }

    else
    {
      v33 = HeightOfPlane;
      v32 = WidthOfPlane;
      glViewport(0, 0, WidthOfPlane, HeightOfPlane);
      v34 = 128;
    }

    glUseProgram(*a2);
    UniformLocation = glGetUniformLocation(*a2, "transform");
    glUniformMatrix3fv(UniformLocation, v70 - 1, 0, *(a1 + 216));
    v37 = glGetUniformLocation(*a2, "luma_sigma_intercept");
    v38 = (a1 + 56 * a3);
    glUniform1f(v37, v38[56]);
    v39 = glGetUniformLocation(*a2, "luma_sigma_slope");
    glUniform1f(v39, v38[57]);
    v40 = glGetUniformLocation(*a2, "luma_sigma_max");
    glUniform1f(v40, v38[58]);
    v41 = glGetUniformLocation(*a2, "luma_sigma_constant");
    glUniform1f(v41, v38[58]);
    v42 = glGetUniformLocation(*a2, "chroma_sigma_r");
    glUniform1f(v42, v38[60]);
    v43 = glGetUniformLocation(*a2, "chroma_sigma_b");
    glUniform1f(v43, v38[61]);
    v44 = glGetUniformLocation(*a2, "long_short_fusion");
    glUniform1i(v44, *(a1 + 164));
    v45 = glGetUniformLocation(*a2, "pixel_pitch");
    v46 = 1.0 / v32;
    v47 = 1.0 / v33;
    glUniform2f(v45, v46, v47);
    v48 = glGetUniformLocation(*a2, "compute_similarity_map");
    glUniform1i(v48, a5);
    v49 = glGetUniformLocation(*a2, "mismatch_coefficient");
    glUniform1f(v49, a6);
    v50 = glGetUniformLocation(*a2, "num_buffers");
    glUniform1i(v50, v70);
    v51 = glGetUniformLocation(*a2, "dc_value");
    glUniform3fv(v51, v70, (a1 + 168));
    v52 = glGetUniformLocation(*a2, "black_threshold");
    v53 = (a1 + 4 * a3);
    glUniform2f(v52, 0.0, v53[112]);
    v54 = glGetUniformLocation(*a2, "sharpening");
    glUniform1f(v54, v53[116]);
    v55 = glGetUniformLocation(*a2, "adaptive_blur");
    glUniform1f(v55, v53[120]);
    v56 = glGetUniformLocation(*a2, "diff_weight");
    glUniform1f(v56, v53[124]);
    v57 = glGetUniformLocation(*a2, "strength");
    glUniform1f(v57, v53[v34]);
    glDrawArrays(5u, 0, 4);
    glFlush();
    glGetError();
    return 0;
  }

  else
  {
    v21 = 0;
    v22 = 33992;
    do
    {
      v23 = CVPixelBufferGetIOSurface(*(v12[v21] + 8 * a3));
      if (!v23)
      {
        emitter = fig_log_get_emitter();
        v18 = 0xFFFFFFFFLL;
        LODWORD(v60) = -1;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< NoiseReduction (MultiBand) >>>> Fig", "err == 0 ", "bail", 0, "NoiseReductionMultiBand.m", 2770, v60);
        return v18;
      }

      v24 = v23;
      glActiveTexture(v22 - 8);
      glBindTexture(0xDE1u, *(*(a1 + 8) + 4 * v21));
      BYTE4(v62) = 0;
      LODWORD(v62) = 0;
      if (([v11 texImageIOSurface:v24 target:3553 internalFormat:33321 width:WidthOfPlane height:HeightOfPlane format:6403 type:5121 plane:v62 invert:?] & 1) == 0)
      {
        fuse_remix_level_cold_1();
        return 1;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      if (((v21 == 0) & (v67 ^ 1)) != 0)
      {
        v25 = 9728.0;
      }

      else
      {
        v25 = 9729.0;
      }

      glTexParameterf(0xDE1u, 0x2800u, v25);
      glTexParameterf(0xDE1u, 0x2801u, v25);
      glActiveTexture(v22);
      glBindTexture(0xDE1u, *(*(a1 + 16) + 4 * v21));
      BYTE4(v63) = 0;
      LODWORD(v63) = 1;
      if (([v11 texImageIOSurface:v24 target:3553 internalFormat:33323 width:v13 height:v14 format:33319 type:5121 plane:v63 invert:?] & 1) == 0)
      {
        fuse_remix_level_cold_2();
        return 1;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      if (((v21 == 0) & v67) != 0)
      {
        v26 = 9728.0;
      }

      else
      {
        v26 = 9729.0;
      }

      glTexParameterf(0xDE1u, 0x2800u, v26);
      glTexParameterf(0xDE1u, 0x2801u, v26);
      ++v21;
      ++v22;
    }

    while (v70 != v21);
    if (a3 >= 3)
    {
      goto LABEL_32;
    }

    v27 = 0;
    v28 = 33996;
    while (1)
    {
      v29 = CVPixelBufferGetIOSurface(*(v12[v27] + 8 * a3 + 8));
      if (!v29)
      {
        v59 = fig_log_get_emitter();
        v18 = 0xFFFFFFFFLL;
        LODWORD(v60) = -1;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v59, "<<<< NoiseReduction (MultiBand) >>>> Fig", "err == 0 ", "bail", 0, "NoiseReductionMultiBand.m", 2811, v60);
        return v18;
      }

      v30 = v29;
      glActiveTexture(v28 - 8);
      glBindTexture(0xDE1u, *(*(a1 + 24) + 4 * v27));
      BYTE4(v62) = 0;
      LODWORD(v62) = 0;
      if (([v11 texImageIOSurface:v30 target:3553 internalFormat:33321 width:(WidthOfPlane / 2) height:(HeightOfPlane / 2) format:6403 type:5121 plane:v62 invert:?] & 1) == 0)
      {
        fuse_remix_level_cold_3();
        return 1;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      glActiveTexture(v28);
      glBindTexture(0xDE1u, *(*(a1 + 32) + 4 * v27));
      BYTE4(v64) = 0;
      LODWORD(v64) = 1;
      if (([v11 texImageIOSurface:v30 target:3553 internalFormat:33323 width:(v13 / 2) height:(v14 / 2) format:33319 type:5121 plane:v64 invert:?] & 1) == 0)
      {
        break;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      ++v27;
      ++v28;
      if (v70 == v27)
      {
        goto LABEL_29;
      }
    }

    fuse_remix_level_cold_4();
    return 1;
  }
}

uint64_t compute_mismatch_coefficient(uint64_t a1, float *a2, float a3)
{
  *a2 = 0.0;
  v6 = *(a1 + 144);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v6, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, 0);
  if (CVPixelBufferLockBaseAddress(v6, 1uLL))
  {
    compute_mismatch_coefficient_cold_1();
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 152);
  if (v9 && CVPixelBufferCopyPlane(v9, v6))
  {
    compute_mismatch_coefficient_cold_2();
    return 0xFFFFFFFFLL;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v6, 0);
  v11 = 0;
  if (*(a1 + 164) == 1)
  {
    v11 = malloc_type_malloc((WidthOfPlane * HeightOfPlane), 0x1D063B8EuLL);
    src.data = BaseAddressOfPlane;
    src.height = HeightOfPlane;
    src.width = WidthOfPlane;
    src.rowBytes = BytesPerRowOfPlane;
    dest.data = v11;
    dest.height = HeightOfPlane;
    dest.width = WidthOfPlane;
    dest.rowBytes = WidthOfPlane;
    vImageMax_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
    src.data = v11;
    src.height = HeightOfPlane;
    src.width = WidthOfPlane;
    src.rowBytes = WidthOfPlane;
    dest.data = BaseAddressOfPlane;
    dest.height = HeightOfPlane;
    dest.width = WidthOfPlane;
    dest.rowBytes = BytesPerRowOfPlane;
    vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
  }

  if (HeightOfPlane < 1)
  {
    v17 = 0.0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = WidthOfPlane & 0x7FFFFFFF;
      v15 = BaseAddressOfPlane;
      if (WidthOfPlane >= 1)
      {
        do
        {
          v16 = *v15++;
          v13 += v16;
          --v14;
        }

        while (v14);
      }

      ++v12;
      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    while (v12 != (HeightOfPlane & 0x7FFFFFFF));
    v17 = v13;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  free(v11);
LABEL_13:
  if (*(a1 + 164) == 1)
  {
    v19 = (a3 + -10.0) / 10.0;
    v20 = 1.0;
    if (v19 <= 1.0)
    {
      v20 = (a3 + -10.0) / 10.0;
    }

    _NF = v19 < 0.0;
    v22 = 0.0;
    if (!_NF)
    {
      v22 = v20;
    }

    v23 = (v22 * -2.0 + 3.0) * (v22 * v22);
    __asm { FMOV            V2.2D, #1.0 }

    _Q1 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(xmmword_1AD056800, v23), _Q2)));
  }

  else
  {
    __asm { FMOV            V1.2D, #1.0 }
  }

  v29 = vcvt_f32_f64(vdivq_f64(xmmword_1AD056810, _Q1));
  v18 = v17 / (HeightOfPlane * 255.0 * WidthOfPlane);
  v30 = (v18 - v29.f32[0]) / vsub_f32(vdup_lane_s32(v29, 1), v29).f32[0];
  v31 = 1.0;
  if (v30 <= 1.0)
  {
    v31 = v30;
  }

  _NF = v30 < 0.0;
  v32 = 0.0;
  if (!_NF)
  {
    v32 = v31;
  }

  v33 = (v32 * -2.0 + 3.0) * (v32 * v32);
  v34 = 1.0 - v33;
  v35 = 0.0;
  if (a3 <= 20.0)
  {
    v35 = ((20.0 - a3) / 10.0);
  }

  if (a3 > 10.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = v34 * (1.0 - v36);
  *a2 = v37;
  CVPixelBufferUnlockBaseAddress(v6, 1uLL);
  return 0;
}

uint64_t BindTextureToFbo(void *a1, IOSurfaceRef buffer, GLuint a3, GLuint a4, unsigned int a5, size_t planeIndex)
{
  v6 = planeIndex;
  if (planeIndex == 1 || a5 == 33319)
  {
    v13 = 2;
  }

  else
  {
    v13 = 4;
  }

  if (a5 == 33319)
  {
    v14 = 33323;
  }

  else
  {
    v14 = 6408;
  }

  v15 = planeIndex;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, planeIndex);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, v15);
  glBindTexture(0xDE1u, a3);
  BYTE4(v21) = 0;
  LODWORD(v21) = v6;
  v18 = [a1 texImageIOSurface:buffer target:3553 internalFormat:v14 width:(WidthOfPlane / v13) height:HeightOfPlane format:a5 type:5121 plane:v21 invert:?];
  v19 = v18 ^ 1u;
  if (v18)
  {
    if (a4)
    {
      glBindFramebuffer(0x8D40u, a4);
      glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, a3, 0);
      if (glCheckFramebufferStatus(0x8D40u) == 36053)
      {
        return v19;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    BindTextureToFbo_cold_1(v18 ^ 1u);
  }

  return v19;
}

void denoise_luma_level(uint64_t a1, GLuint a2, uint64_t a3, GLuint a4, unsigned int a5)
{
  glActiveTexture(0x84C0u);
  v10 = a5;
  glBindTexture(0xDE1u, *(a1 + 4 * a5 + 84));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  if (a4)
  {
    glActiveTexture(0x84C1u);
    glBindTexture(0xDE1u, a4);
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  }

  glBindFramebuffer(0x8D40u, a2);
  bindVertexAttributes(a1 + 396);
  v11 = a1 + 8 * a5;
  v12 = CVPixelBufferGetWidthOfPlane(*(v11 + 232), 0) / 2;
  LODWORD(v11) = CVPixelBufferGetHeightOfPlane(*(v11 + 232), 0);
  glViewport(0, 0, v12, v11);
  glUseProgram(*(a1 + 396));
  UniformLocation = glGetUniformLocation(*(a1 + 396), "luma_sigma_intercept");
  v14 = (a3 + 56 * v10);
  glUniform1f(UniformLocation, *v14);
  v15 = glGetUniformLocation(*(a1 + 396), "luma_sigma_slope");
  glUniform1f(v15, v14[1]);
  v16 = glGetUniformLocation(*(a1 + 396), "luma_sigma_max");
  glUniform1f(v16, v14[2]);
  v17 = glGetUniformLocation(*(a1 + 396), "lens_shading_factor");
  glUniform1f(v17, 0.0);
  v18 = glGetUniformLocation(*(a1 + 396), "pixel_pitch");
  glUniform2f(v18, 1.0 / v12, 1.0 / v11);
  v19 = glGetUniformLocation(*(a1 + 396), "use_alpha");
  glUniform1i(v19, a4 != 0);
  glDrawArrays(5u, 0, 4);

  glFlush();
}

uint64_t CVPixelBufferCopyPlane(__CVBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (CVPixelBufferLockBaseAddress(a1, 0))
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    v8 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    if (HeightOfPlane >= 1)
    {
      v11 = v10;
      v12 = HeightOfPlane & 0x7FFFFFFF;
      do
      {
        memcpy(v11, BaseAddressOfPlane, WidthOfPlane);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v11 += v8;
        --v12;
      }

      while (v12);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    v4 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return v4;
}

void multibandNoiseReductionFinalize(const __CFDictionary *a1)
{
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, 0, 0);
  glBindFramebuffer(0x8D40u, 0);
  glBindTexture(0xDE1u, 0);
  valuePtr = 1;
  if (a1 && (Value = CFDictionaryGetValue(a1, @"Synchronization")) != 0 && (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), valuePtr != 1))
  {
    glFinish();
  }

  else
  {
    glFlush();
  }
}

uint64_t handle_band_data(const void *a1, int *a2, uint64_t *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      handle_band_data_cold_2();
    }

    else
    {
      *a2 = Count >> 1;
      v8 = *a3;
      if (!*a3)
      {
        return 0;
      }

      if (Count >> 1 < 1)
      {
LABEL_11:
        result = 0;
        *a3 = v8;
        return result;
      }

      v9 = 0;
      v10 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 1);
        if (!ValueAtIndex || (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 != CFNumberGetTypeID()))
        {
          handle_band_data_cold_4();
          return 0xFFFFFFFFLL;
        }

        CFNumberGetValue(v12, kCFNumberFloatType, v8);
        v14 = CFArrayGetValueAtIndex(a1, v10);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(v15, kCFNumberFloatType, (v8 + 4));
        ++v9;
        v8 += 8;
        v10 += 2;
        if (v9 >= *a2)
        {
          goto LABEL_11;
        }
      }

      handle_band_data_cold_3();
    }
  }

  else
  {
    handle_band_data_cold_1();
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *band_iterator(const __CFDictionary *cf, uint64_t a2)
{
  v3 = *(a2 + 24);
  v16 = v3;
  if (*a2)
  {
    goto LABEL_2;
  }

  v4 = cf;
  if (!cf || (v5 = *(a2 + 8), v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    cf = band_iterator_cold_8();
    goto LABEL_2;
  }

  Value = CFDictionaryGetValue(v4, @"LumaDenoiseStrength");
  *(v5 + 8) = v3;
  if (handle_band_data(Value, v5, &v16))
  {
    cf = band_iterator_cold_1();
    goto LABEL_2;
  }

  *(v5 + 24) = v16;
  v8 = CFDictionaryGetValue(v4, @"ChromaDenoiseStrength");
  if (handle_band_data(v8, (v5 + 16), &v16))
  {
    cf = band_iterator_cold_2();
    goto LABEL_2;
  }

  *(v5 + 40) = v16;
  v9 = CFDictionaryGetValue(v4, @"LumaRemixWeight");
  if (handle_band_data(v9, (v5 + 32), &v16))
  {
    cf = band_iterator_cold_3();
    goto LABEL_2;
  }

  v10 = v16;
  *(v5 + 56) = v16;
  v11 = CFDictionaryGetValue(v4, @"BlueBoost");
  if (v11)
  {
    if (handle_band_data(v11, (v5 + 48), &v16))
    {
      cf = band_iterator_cold_4();
      goto LABEL_2;
    }

    v10 = v16;
  }

  else
  {
    *(v5 + 48) = 0;
  }

  *(v5 + 72) = v10;
  v12 = CFDictionaryGetValue(v4, @"FlatnessBoost");
  if (v12)
  {
    if (handle_band_data(v12, (v5 + 64), &v16))
    {
      cf = band_iterator_cold_5();
      goto LABEL_2;
    }

    v10 = v16;
  }

  else
  {
    *(v5 + 64) = 0;
  }

  *(v5 + 88) = v10;
  cf = CFDictionaryGetValue(v4, @"FlatnessThreshold");
  if (cf)
  {
    cf = handle_band_data(cf, (v5 + 80), &v16);
    if (cf)
    {
      cf = band_iterator_cold_6();
      goto LABEL_2;
    }

    v13 = *(v5 + 80);
  }

  else
  {
    v13 = 0;
    *(v5 + 80) = 0;
  }

  v14 = *(v5 + 16) + *v5 + *(v5 + 32) + *(v5 + 48) + *(v5 + 64) + v13;
  v15 = *(a2 + 24);
  if (v15)
  {
    if (v14 == (v16 - v15) >> 3)
    {
      *(a2 + 24) = v16;
      goto LABEL_23;
    }

    cf = band_iterator_cold_7();
LABEL_2:
    *a2 = -1;
    return cf;
  }

LABEL_23:
  *(a2 + 16) += v14;
  *(a2 + 8) += 96;
  return cf;
}

void *multiBandNoiseReductionContextInit_internal(uint64_t a1, void *a2, CFDictionaryRef theDict)
{
  AlgorithmFromTuningOptions = noiseReductionGetAlgorithmFromTuningOptions(theDict);
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  if (IOSurfaceAcceleratorCreate())
  {
    if (*v6)
    {
      CFRelease(*v6);
    }

    LOBYTE(v7) = 0;
    *v6 = 0;
  }

  else
  {
    FigSetupIOSurfaceAccelerator(a1 + 24);
    v7 = *(a1 + 16);
    if (v7)
    {
      LOBYTE(v7) = *(a1 + 28) >= 7u && *(a1 + 24) > 6u;
    }
  }

  v18 = 0;
  *(a1 + 296) = v7;
  *(a1 + 297) = 1;
  *(a1 + 298) = a2 == 0;
  if (a2)
  {
    goto LABEL_6;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  params = 1;
  if (!v9)
  {
    multiBandNoiseReductionContextInit_internal_cold_2();
    goto LABEL_16;
  }

  v10 = v9;
  [v9 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
  a2 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3 properties:v10];

  if (!a2)
  {
    multiBandNoiseReductionContextInit_internal_cold_1();
    goto LABEL_16;
  }

  if ([a2 setParameter:608 to:&params])
  {

LABEL_16:
    *(a1 + 48) = 0;
    result = [MEMORY[0x1E6977FE8] setCurrentContext:0];
    *a1 = 2;
    return result;
  }

LABEL_6:
  *(a1 + 48) = a2;
  [MEMORY[0x1E6977FE8] setCurrentContext:a2];
  v8 = *(a1 + 56);
  if (v8 != 1)
  {
    if (v8)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  v18 = v8;
  [*(a1 + 48) setParameter:608 to:&v18];
  glGetIntegerv(0xD33u, &params);
  v12 = params;
  *(a1 + 60) = params;
  *(a1 + 64) = v12;
  glGetIntegerv(0x84E8u, &params);
  v13 = params;
  if (*(a1 + 60) < params)
  {
    *(a1 + 60) = params;
  }

  if (*(a1 + 64) < v13)
  {
    *(a1 + 64) = v13;
  }

  glGetIntegerv(0xD3Au, &params);
  if (*(a1 + 60) < params)
  {
    *(a1 + 60) = params;
  }

  if (*(a1 + 64) < v20)
  {
    *(a1 + 64) = v20;
  }

  *(a1 + 68) = -1;
  *(a1 + 80) = -1;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  glGenTextures(4, (a1 + 84));
  glGenTextures(4, (a1 + 124));
  glGenTextures(4, (a1 + 168));
  glGenTextures(4, (a1 + 200));
  glGenTextures(2, (a1 + 116));
  glGenTextures(2, (a1 + 156));
  glGenFramebuffers(4, (a1 + 100));
  glGenFramebuffers(4, (a1 + 184));
  glGenFramebuffers(4, (a1 + 216));
  glGenFramebuffers(4, (a1 + 140));
  glGenFramebuffers(1, (a1 + 164));
  compile_shader((a1 + 300), NoiseReductionBoxBlur334_prog);
  compile_shader((a1 + 312), NoiseReductionBoxBlur554_prog);
  compile_shader((a1 + 324), NoiseReductionBoxBlur774_prog);
  compile_shader((a1 + 336), NoiseReductionBoxBlur2_554_prog);
  compile_shader((a1 + 348), NoiseReductionChromaDenoiseX2_prog);
  v14 = AlgorithmFromTuningOptions == 3;
  if (AlgorithmFromTuningOptions == 3)
  {
    v15 = NoiseReductionLumaRemix4Advanced_prog;
  }

  else
  {
    v15 = NoiseReductionLumaRemix4_prog;
  }

  if (AlgorithmFromTuningOptions == 3)
  {
    v16 = NoiseReductionLumaDenoiseChromaRemixX2Advanced_prog;
  }

  else
  {
    v16 = NoiseReductionLumaDenoiseChromaRemixX2_prog;
  }

  if (v14)
  {
    v17 = NoiseReductionLumaChromaRemixDenoiseX2Advanced_prog;
  }

  else
  {
    v17 = NoiseReductionLumaChromaRemixDenoiseX2_prog;
  }

  compile_shader((a1 + 360), v15);
  compile_shader((a1 + 372), v16);
  compile_shader((a1 + 384), v17);
  compile_shader((a1 + 396), NoiseReductionLumaDenoiseX2_prog);
  compile_shader((a1 + 408), NoiseReductionLumaFusion_prog);
  compile_shader((a1 + 420), NoiseReductionLumaRemixFusion_prog);
  compile_shader((a1 + 432), NoiseReductionChromaFusion_prog);
  compile_shader((a1 + 444), NoiseReductionChromaRemixFusion_prog);
  glUseProgram(0);
  return [MEMORY[0x1E6977FE8] setCurrentContext:0];
}

void compile_shader(GLuint *a1, uint64_t *a2)
{
  v29[0] = a1 + 1;
  v29[1] = a1 + 2;
  if (!a2)
  {
    compile_shader_cold_7();
    return;
  }

  v2 = *a2;
  if (!*a2)
  {
    compile_shader_cold_6();
    return;
  }

  v3 = a2[1];
  if (!v3)
  {
    compile_shader_cold_5();
    return;
  }

  v5 = *v3;
  Shader_1 = gl_UtilsCreateShader_1(0x8B31u, *v2);
  if (!Shader_1)
  {
    v12 = compile_shader_cold_3();
LABEL_28:
    compile_shader_cold_4(v12);
    return;
  }

  v7 = Shader_1;
  v8 = gl_UtilsCreateShader_1(0x8B30u, v5);
  if (!v8)
  {
    v12 = compile_shader_cold_2(v7);
    goto LABEL_28;
  }

  v9 = v8;
  params = 0;
  Program = glCreateProgram();
  v11 = Program;
  if (Program)
  {
    glAttachShader(Program, v7);
    glAttachShader(v11, v9);
    glLinkProgram(v11);
    glGetProgramiv(v11, 0x8B82u, &params);
    if (!params)
    {
      glDeleteProgram(v11);
      v11 = 0;
    }
  }

  else
  {
    compile_shader_cold_1();
  }

  glDeleteShader(v7);
  glDeleteShader(v9);
  if (!v11)
  {
    goto LABEL_28;
  }

  glUseProgram(v11);
  *a1 = v11;
  v13 = *(v2 + 16);
  v14 = *v13;
  if (*v13)
  {
    v15 = v13 + 2;
    do
    {
      glBindAttribLocation(v11, *(v15 - 2), v14);
      v16 = *v15;
      v15 += 2;
      v14 = v16;
    }

    while (v16);
    glLinkProgram(v11);
  }

  v17 = *(v2 + 8);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = v17 + 2;
    do
    {
      AttribLocation = glGetAttribLocation(v11, v18);
      v22 = v29[v19];
      if (v22)
      {
        *v22 = AttribLocation;
        ++v19;
      }

      v23 = *v20;
      v20 += 2;
      v18 = v23;
    }

    while (v23);
  }

  v24 = *(v3 + 8);
  v25 = *v24;
  if (*v24)
  {
    v26 = v24 + 2;
    do
    {
      UniformLocation = glGetUniformLocation(v11, v25);
      glUniform1i(UniformLocation, *(v26 - 2));
      v28 = *v26;
      v26 += 2;
      v25 = v28;
    }

    while (v28);
  }
}

uint64_t gl_UtilsCreateShader_1(GLenum a1, GLchar *a2)
{
  string = a2;
  Shader = glCreateShader(a1);
  v3 = Shader;
  if (Shader)
  {
    params = 0;
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v3);
    glGetShaderiv(v3, 0x8B81u, &params);
    if (!params)
    {
      glDeleteShader(v3);
      return 0;
    }
  }

  else
  {
    gl_UtilsCreateShader_cold_1_1();
  }

  return v3;
}

void WaitForInitializationToFinish_0(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      block[5] = v1;
      block[6] = v2;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __WaitForInitializationToFinish_block_invoke_0;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v3, block);
    }
  }
}

void releasePixelBuffers(uint64_t a1)
{
  for (i = 240; i != 264; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      CVPixelBufferRelease(v3);
      *(a1 + i) = 0;
    }
  }

  releaseOutputPixelBuffers(a1);
}

uint64_t __WaitForInitializationToFinish_block_invoke_0(uint64_t result)
{
  v1 = *(result + 32);
  if (*v1 != 2)
  {
    *v1 = 1;
  }

  return result;
}

void releaseOutputPixelBuffers(uint64_t a1)
{
  if (*(a1 + 76) == 1)
  {
    v1 = 0;
    v2 = a1 + 272;
    do
    {
      v3 = *(v2 + v1);
      if (v3)
      {
        CVPixelBufferRelease(v3);
        *(v2 + v1) = 0;
      }

      v1 += 8;
    }

    while (v1 != 24);
  }
}

uint64_t BindLumaAndChromaTexturesToDualFbo(void *a1, IOSurfaceRef buffer, GLuint a3, __IOSurface *a4, GLuint a5, GLuint a6)
{
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, 0);
  glBindTexture(0xDE1u, a3);
  BYTE4(v19) = 0;
  LODWORD(v19) = 0;
  if ([a1 texImageIOSurface:buffer target:3553 internalFormat:33323 width:(WidthOfPlane / 2) height:HeightOfPlane format:33319 type:5121 plane:v19 invert:?])
  {
    v14 = IOSurfaceGetWidthOfPlane(a4, 1uLL);
    v15 = IOSurfaceGetHeightOfPlane(a4, 1uLL);
    glBindTexture(0xDE1u, a5);
    BYTE4(v20) = 0;
    LODWORD(v20) = 1;
    v16 = [a1 texImageIOSurface:a4 target:3553 internalFormat:6408 width:(v14 / 2) height:v15 format:6408 type:5121 plane:v20 invert:?];
    v17 = v16 ^ 1u;
    if (v16)
    {
      glBindFramebuffer(0x8D40u, a6);
      *bufs = 0x8CE100008CE0;
      glDrawBuffers(2, bufs);
      glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, a3, 0);
      glFramebufferTexture2D(0x8D40u, 0x8CE1u, 0xDE1u, a5, 0);
      if (glCheckFramebufferStatus(0x8D40u) == 36053)
      {
        return v17;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      BindLumaAndChromaTexturesToDualFbo_cold_2(v16 ^ 1u);
    }
  }

  else
  {
    BindLumaAndChromaTexturesToDualFbo_cold_1();
    return 1;
  }

  return v17;
}

atomic_uint *accelCompletionCallback(atomic_uint *result, int a2)
{
  if (!a2)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void m2m_filter_coefficients(int a1, int a2, char a3, int a4, unsigned int *a5, float a6)
{
  v6 = sqrt(a6) * a6;
  if (a6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (a2 >= 1)
  {
    v8 = a5;
    v11 = 0;
    v12 = (a1 - 1) / 2;
    v13 = a2;
    v14 = v12;
    if (a1 >= 15)
    {
      v15 = 15;
    }

    else
    {
      v15 = a1;
    }

    v16 = ~(-1 << (a4 + a3));
    v17 = 1 << a4;
    v18 = a2;
    v19 = &a5[v12 * a2];
    v20 = 4 * a2;
    do
    {
      if (a1 < 1)
      {
        v26 = 0.0;
      }

      else
      {
        v21 = 0;
        v22 = -((((v11 / v13) + 1.0) + v14) * v7);
        v23 = v33;
        v24 = v15;
        do
        {
          v25 = fabsf(v22);
          *v23++ = v25 <= 1.0;
          if (v25 <= 1.0)
          {
            ++v21;
          }

          v22 = v7 + v22;
          --v24;
        }

        while (v24);
        v26 = v21;
      }

      v27 = (ldexpf(1.0 / v26, a4) + 0.5) & v16;
      v28 = v27 + v17;
      if (a1 >= 1)
      {
        v29 = v33;
        v30 = v15;
        v31 = v8;
        do
        {
          if (*v29++)
          {
            *v31 = v27;
            v28 -= v27;
          }

          else
          {
            *v31 = 0;
          }

          v31 = (v31 + v20);
          --v30;
        }

        while (v30);
      }

      v19[v11++] = v28;
      ++v8;
    }

    while (v11 != v18);
  }
}

void bindVertexAttributes(uint64_t a1)
{
  glVertexAttribPointer(*(a1 + 4), 2, 0x1406u, 0, 16, &bindVertexAttributes_verts);
  glEnableVertexAttribArray(*(a1 + 4));
  glVertexAttribPointer(*(a1 + 8), 2, 0x1406u, 0, 16, &unk_1AD056848);
  v2 = *(a1 + 8);

  glEnableVertexAttribArray(v2);
}

void remix_denoise_luma_chroma_level(uint64_t a1, uint64_t a2, float *a3, int a4, GLfloat a5)
{
  if (a4 >= 3)
  {
    v8 = 372;
  }

  else
  {
    v8 = 384;
  }

  v9 = a4 - 1;
  v10 = a1 + 264;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(a1 + 264 + 8 * (a4 - 1)), 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(v10 + 8 * v9), 1uLL);
  v13 = CVPixelBufferGetWidthOfPlane(*(v10 + 8 * a4), 1uLL);
  v32 = CVPixelBufferGetHeightOfPlane(*(v10 + 8 * a4), 1uLL);
  bindVertexAttributes(a1 + v8);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 168 + 4 * v9));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 84 + 4 * a4));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(a1 + 168 + 4 * a4));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glActiveTexture(0x84C3u);
  glBindTexture(0xDE1u, *(a1 + 4 * a4 + 200));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  if (a4 <= 2)
  {
    glActiveTexture(0x84C4u);
    glBindTexture(0xDE1u, *(a1 + 84 + 4 * (a4 + 1)));
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
    glActiveTexture(0x84C5u);
    glBindTexture(0xDE1u, *(a1 + 4 * (a4 + 1) + 124));
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  }

  v14 = WidthOfPlane / 2;
  glBindFramebuffer(0x8D40u, *(a1 + 4 * a4 + 140));
  glViewport(0, 0, v14, HeightOfPlane);
  glUseProgram(*(a1 + v8));
  UniformLocation = glGetUniformLocation(*(a1 + v8), "luma_diff_remix");
  v16 = (a2 + 56 * a4);
  glUniform1f(UniformLocation, v16[6]);
  v17 = glGetUniformLocation(*(a1 + v8), "chroma_diff_remix");
  glUniform1f(v17, 1.0);
  v18 = glGetUniformLocation(*(a1 + v8), "pixel_pitch");
  glUniform2f(v18, 1.0 / (v13 / 2 - 1), 1.0 / (v32 - 1));
  v19 = glGetUniformLocation(*(a1 + v8), "luma_sigma_intercept");
  glUniform1f(v19, *v16);
  v20 = glGetUniformLocation(*(a1 + v8), "luma_sigma_max");
  glUniform1f(v20, v16[2]);
  v21 = glGetUniformLocation(*(a1 + v8), "luma_sigma_slope");
  glUniform1f(v21, v16[1]);
  v22 = glGetUniformLocation(*(a1 + v8), "luma_sigma_constant");
  glUniform1f(v22, v16[2]);
  v23 = glGetUniformLocation(*(a1 + v8), "chroma_sigma_r");
  v24 = a2 + 56 * v9;
  glUniform1f(v23, *(v24 + 16));
  v25 = glGetUniformLocation(*(a1 + v8), "chroma_sigma_b");
  glUniform1f(v25, *(v24 + 20));
  v26 = glGetUniformLocation(*(a1 + v8), "lens_shading_factors");
  glUniform2f(v26, *a3 + -1.0, a3[1] + -1.0);
  v27 = glGetUniformLocation(*(a1 + v8), "chroma_demoire_strength");
  glUniform1f(v27, a5);
  v28 = glGetUniformLocation(*(a1 + v8), "denoise_pixel_pitch");
  glUniform2f(v28, 1.0 / v14, 1.0 / HeightOfPlane);
  v29 = glGetUniformLocation(*(a1 + v8), "blue_boost_factor");
  glUniform1f(v29, v16[7]);
  v30 = glGetUniformLocation(*(a1 + v8), "flatness_boost_factor");
  glUniform1f(v30, v16[8]);
  v31 = glGetUniformLocation(*(a1 + v8), "flatness_threshold");
  glUniform1f(v31, v16[9]);
  glDrawArrays(5u, 0, 4);

  glFlush();
}

const UInt8 *get_device_parameters_for_fusion_type(uint64_t a1, const void *a2, const void *a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v7, 2, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(*(a1 + 472), result);
    CFRelease(v5);
    if (Value)
    {
      return CFDataGetBytePtr(Value);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float scan_entries(float *a1, int a2, float a3)
{
  result = 1.0;
  if (a2 >= 1)
  {
    if (*a1 >= a3)
    {
      return a1[1];
    }

    else
    {
      v5 = &a1[2 * a2];
      if (*(v5 - 2) <= a3)
      {
        return *(v5 - 1);
      }

      else
      {
        v6 = (a2 - 1);
        if (a2 != 1)
        {
          for (i = a1 + 2; ; i += 2)
          {
            v8 = *(i - 2);
            if (v8 <= a3 && *i > a3)
            {
              break;
            }

            if (!--v6)
            {
              return result;
            }
          }

          return *(i - 1) + (((a3 - v8) * (i[1] - *(i - 1))) / (*i - v8));
        }
      }
    }
  }

  return result;
}

void *nrasp_interpolateArrayOfValuesForGain(void *a1, float a2)
{
  v3 = a1;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [MEMORY[0x1E695DF70] array];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v9 = [v3 countByEnumeratingWithState:&v16 objects:v15 count:16];
          if (v9)
          {
            v11 = v9;
            v12 = *v17;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v3);
                }

                [v8 addObject:{nrasp_interpolateValueForGain(*(*(&v16 + 1) + 8 * j), v10, a2)}];
              }

              v11 = [v3 countByEnumeratingWithState:&v16 objects:v15 count:16];
            }

            while (v11);
          }

          return v8;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

void *nrasp_interpolateValueForGain(void *a1, uint64_t a2, float a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a1;
  }

  v5 = [a1 count];
  v6 = v5;
  if (v5 < 1 || (v5 & 1) != 0)
  {
    nrasp_interpolateValueForGain_cold_1();
  }

  [objc_msgSend(a1 objectAtIndexedSubscript:{0), "floatValue"}];
  if (v7 >= a3)
  {
    v23 = a1;
    v24 = 1;
  }

  else
  {
    v8 = v6 - 2;
    [objc_msgSend(a1 objectAtIndexedSubscript:{v6 - 2), "floatValue"}];
    if (v9 > a3)
    {
      if (v6 < 3)
      {
        goto LABEL_15;
      }

      v10 = 0;
      v11 = 0;
      do
      {
        [objc_msgSend(a1 objectAtIndexedSubscript:{v10), "floatValue"}];
        v13 = v12;
        v14 = v10 + 2;
        [objc_msgSend(a1 objectAtIndexedSubscript:{v10 + 2), "floatValue"}];
        if (v13 <= a3 && v15 > a3)
        {
          v17 = v15;
          [objc_msgSend(a1 objectAtIndexedSubscript:{v10 + 1), "floatValue"}];
          v19 = v18;
          [objc_msgSend(a1 objectAtIndexedSubscript:{v10 + 3), "floatValue"}];
          LODWORD(v21) = llroundf(v19 + (((a3 - v13) * (v20 - v19)) / (v17 - v13)));
          v11 = [MEMORY[0x1E696AD98] numberWithInt:v21];
        }

        v10 += 2;
      }

      while (v8 > v14);
      if (!v11)
      {
LABEL_15:
        nrasp_interpolateValueForGain_cold_2();
        return 0;
      }

      return v11;
    }

    v24 = v6 - 1;
    v23 = a1;
  }

  return [v23 objectAtIndexedSubscript:v24];
}

uint64_t BWSignalErrorAt()
{
  FigSignalErrorAt();
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A768];

  return [v0 errorWithDomain:v1 code:-50 userInfo:0];
}

uint64_t gr_countOfBuffersRetainedOutsideEmitCallbackOfOutput(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = [a1 mediaType];
  v7 = [objc_msgSend(a1 "connection")];
  if ((gr_outputAndInputShareAPipelineStage(a1, a2, v7) & 1) == 0)
  {
    a3 += gr_outputOrInputIsStillImagePipelineStage(a1, a2, v7) ^ 1;
  }

  v8 = [objc_msgSend(v7 mediaConfigurationForAttachedMediaKey:{a2), "retainedBufferCount"}] + a3;
  if ([v7 _passthroughModeForAttachedMediaKey:a2] == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [objc_msgSend(v7 "node")];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = a3;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [v14 attachedMediaKeyDrivenByInputAttachedMediaKey:a2 inputIndex:{objc_msgSend(v7, "index")}];
          if (v15)
          {
            v16 = v15;
            if ([v14 mediaType] == v6 && objc_msgSend(v14, "_passthroughModeForAttachedMediaKey:", v16) == 1)
            {
              v17 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutput(v14, v16, v19);
              if (v17 <= v8)
              {
                v8 = v8;
              }

              else
              {
                v8 = v17;
              }
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

uint64_t gr_logStringForInput(void *a1)
{
  if ([a1 name])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@", '%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    v2 = &stru_1F216A3D0;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 index];
  [a1 mediaType];
  return [v3 stringWithFormat:@"<%p, %d, '%@'%@>", a1, v4, BWStringForOSType(), v2];
}

uint64_t gr_logStringForOutput(void *a1, uint64_t a2)
{
  if ([a1 name])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", '%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v5 = MEMORY[0x1E696AEC0];
  [a1 mediaType];
  return [v5 stringWithFormat:@"<%p, %d, '%@'%@>", a1, a2, BWStringForOSType(), v4];
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame(const void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = NAN;
  if (!a1)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_5(0, a2, a3, a4, a5, a6, a7, a8);
    return 4294954516;
  }

  if (!a2)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_4(a1, 0, a3, a4, a5, a6, a7, a8);
    return 4294954516;
  }

  v10 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v10)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_3(0, v11, v12, v13, v14, v15, v16, v17);
    return 4294954516;
  }

  v18 = v10;
  v19 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v19 != 1)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
    return 4294954516;
  }

  [objc_msgSend(v18 objectForKeyedSubscript:{*off_1E798B550), "floatValue"}];
  v27 = [v18 objectForKeyedSubscript:*off_1E798B540];
  if (!v27)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_2(0, v28, v29, v30, v31, v32, v33, v34);
    goto LABEL_18;
  }

  v55 = -1;
  v35 = portIndexFromPortType(v27, &v55, v29, v30, v31, v32, v33, v34, v45);
  if (v35)
  {
    v39 = v35;
    LODWORD(v46) = v35;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v8, v47, v48, v49, *&v50[4], v51, v52);
    v54 = 0;
    v53 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_25:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v39;
  }

  v48 = v18;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v37 = FigMotionComputeBlurScores(v36, v55, 4, 5);
  if (v37)
  {
    v39 = v37;
    LODWORD(v46) = v37;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v8, v47, v48, v49, *&v50[4], v51, v52);
    v54 = 0;
    v53 = OS_LOG_TYPE_DEFAULT;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = v54;
    if (os_log_type_enabled(v42, v53))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      v49 = 136315138;
      *v50 = "BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_25;
  }

  if (v56 > 127.0)
  {
LABEL_18:
    v38 = 0;
    goto LABEL_10;
  }

  v38 = 1;
LABEL_10:
  v39 = 0;
  *a2 = v38;
  return v39;
}

uint64_t fvcd_handleAutofocusProcessorNotification(uint64_t a1, uint64_t a2, CFTypeRef cf2, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return fvcd_handleAutofocusProcessorNotification_cold_2(a1, 0, cf2);
  }

  if (!cf2)
  {
    return fvcd_handleAutofocusProcessorNotification_cold_1(a1);
  }

  if (CFEqual(@"SubjectAreaChanged", cf2))
  {
    v8 = @"SubjectAreaChanged";
  }

  else if (CFEqual(@"DidStartFocusOperation", cf2))
  {
    v8 = @"DidStartFocusOperation";
  }

  else if (CFEqual(@"DidCompleteFocusOperation", cf2))
  {
    os_unfair_lock_lock((a2 + 1596));
    [*(a2 + 1616) focusScanDidComplete];
    [*(a2 + 1632) focusScanDidComplete];
    os_unfair_lock_unlock((a2 + 1596));
    if (*(a2 + 1416) && ([a2 depthDataDeliveryEnabled] & 1) == 0)
    {
      os_unfair_lock_lock((a2 + 1384));
      if (*(a2 + 1428) == 1)
      {
        [*(a2 + 1416) focusModeDidChange];
        *(a2 + 1428) = 0;
      }

      os_unfair_lock_unlock((a2 + 1384));
    }

    v8 = @"DidCompleteFocusOperation";
  }

  else
  {
    result = CFEqual(@"DidCancelFocusOperation", cf2);
    if (!result)
    {
      return result;
    }

    v8 = @"DidCancelFocusOperation";
  }

  return [a2 _postNotificationWithPayload:v8 notificationPayload:a5];
}

void sub_1ACC126D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC13280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ACC1452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC19600(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1ACC1A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_91_9()
{
  *(v1 - 176) = 0;
  *(v1 - 208) = 0;
  return *(v0 + 840);
}

uint64_t OUTLINED_FUNCTION_94_4()
{
  *(v1 - 104) = 0;
  *(v1 - 105) = 0;
  return *(v0 + 840);
}

uint64_t OUTLINED_FUNCTION_152_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_190()
{

  _Block_object_dispose((v0 - 48), 8);
}

void OUTLINED_FUNCTION_211(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{

  [(BWFigVideoCaptureDevice *)v44 _postManualControlRequestCompletedWithName:a2 requestID:a3 timeDictionary:v46 additionalPayloadItems:v45, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44];
}

__n128 OUTLINED_FUNCTION_227(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a39, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a40)
{
  result = a40;
  *&STACK[0x220] = a40;
  return result;
}

uint64_t OUTLINED_FUNCTION_273(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_281(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{

  return [a27 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a55, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 a54, __n128 a56)
{
  *(v56 - 256) = a53;
  *(v56 - 240) = a54;
  result = a56;
  *(v56 - 224) = a56;
  return result;
}

__n128 OUTLINED_FUNCTION_293()
{
  result = *(v1 - 256);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 240);
  return result;
}

void OUTLINED_FUNCTION_299(double a1, double a2, double a3, double a4)
{
  v4[230] = a1;
  v4[231] = a2;
  v4[232] = a3;
  v4[233] = a4;
}

__n128 OUTLINED_FUNCTION_302(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a17, unint64_t a18)
{
  result = a17;
  *v18 = a17;
  v18[1].n128_u64[0] = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_358(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 initWithPortType:a3 captureType:a4 captureFlags:v4 timeMachineFrameCount:v6 bracketSettings:v5 validBracketedCaptureSequenceNumbers:0];
}

CMTime *OUTLINED_FUNCTION_359@<X0>(uint64_t a1@<X8>, CMTime *lhs, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a11, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract((v12 - 80), &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_360(unint64_t a1)
{

  return [v1 setStreamingTime:a1 / 0xF4240];
}

BOOL OUTLINED_FUNCTION_364(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_366(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int16 a33, char a34, os_log_type_t type, int a36)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_368(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int16 a47, char a48, os_log_type_t type, int a50)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_369(NSObject *a1)
{
  v3 = *(v1 - 105);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_370(NSObject *a1)
{
  v2 = STACK[0x490];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_373(void *a1, const char *a2, uint64_t a3)
{

  return [a1 infoWithBracketedCaptureSequenceNumber:a3 mainFlags:v3 sifrFlags:0];
}

uint64_t OUTLINED_FUNCTION_374()
{

  return [v0 portType];
}

uint64_t OUTLINED_FUNCTION_375(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 infoWithBracketedCaptureSequenceNumber:0 mainFlags:a4 sifrFlags:0];
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{

  return [a30 objectForKeyedSubscript:{a1, a4, a5, a6, a7, a8}];
}

uint64_t FigCreateLazyFlatDictionaryWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [FigFlatToNSDictionaryWrapper alloc];

  return [(FigFlatToNSDictionaryWrapper *)v6 initLazilyWithFlatDictionaryBacking:a1 exportedKeySpec:a2 deallocatorBlock:a3];
}

void sub_1ACC28148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  v10 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  if (!libMemoryResourceExceptionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMemoryResourceExceptionLibraryCore_block_invoke;
    v4[4] = &unk_1E798FC10;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E799CA20;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "ReportMemoryExceptionFromTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getReportMemoryExceptionFromTaskSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1ACC28318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMemoryResourceExceptionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float AEMatrix_FindQualityFromSums(uint64_t a1, _DWORD *a2, float *a3)
{
  v3 = 0;
  v14[0] = 0;
  do
  {
    v4 = 0;
    v5 = 0;
    v6 = -2;
    v7 = a2;
    do
    {
      if ((v3 + v6) <= 0xF)
      {
        v8 = *(a1 + 4 * v6) - *v7;
        if (v8 < 0)
        {
          v8 = *v7 - *(a1 + 4 * v6);
        }

        v4 += v8;
        v14[v3] = v4;
        ++v5;
      }

      ++v6;
      ++v7;
    }

    while (v6 != 14);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v14[v3++] = v4 / v5;
    a1 += 4;
  }

  while (v3 != 5);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v14[v9];
    if (v12 < v14[v11])
    {
      v11 = v9;
    }

    if (v12 > v14[v10])
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 5);
  result = 1.0 - (v14[v11] / v14[v10]);
  *a3 = result;
  return result;
}

uint64_t rqSenderRegister()
{
  sRemoteQueueSenderClass = 0;
  unk_1ED844880 = "FigRemoteQueueSender";
  qword_1ED844888 = rqSenderInit;
  unk_1ED844890 = 0;
  qword_1ED844898 = rqSenderFinalize;
  unk_1ED8448A0 = 0;
  qword_1ED8448A8 = 0;
  unk_1ED8448B0 = 0;
  qword_1ED8448B8 = rqSenderCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sRemoteQueueSenderID = result;
  return result;
}

uint64_t FigRemoteQueueSenderCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, int *a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a7)
  {
    FigRemoteQueueSenderCreate_cold_20(a1, a2, a3, a4, a5, a6);
    return 4294950629;
  }

  if (!a3)
  {
    FigRemoteQueueSenderCreate_cold_19(a1, a2, 0, a4, a5, a6);
    return 4294950629;
  }

  v8 = a5;
  if (a5 >= 4)
  {
    FigRemoteQueueSenderCreate_cold_18(a1, a2);
    return 4294950629;
  }

  v9 = a2;
  if (a2 <= 0)
  {
    FigRemoteQueueSenderCreate_cold_17(a1);
    return 4294950629;
  }

  v11 = a4;
  MEMORY[0x1B26F02D0](&FigRemoteQueueSenderGetTypeID_registerOnce, rqSenderRegister);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigRemoteQueueSenderCreate_cold_16();
    return 4294950630;
  }

  v14 = Instance;
  *(Instance + 52) = -1;
  v15 = (Instance + 52);
  *(Instance + 60) = -1;
  v16 = (Instance + 60);
  v17 = *(Instance + 40);
  if (v8)
  {
    v18 = v11;
    v19 = v8;
    do
    {
      v20 = *v18++;
      v17 += v20;
      *(Instance + 40) = v17;
      --v19;
    }

    while (v19);
  }

  if ((v17 - 257) <= 0xFFFFFEFF)
  {
    FigRemoteQueueSenderCreate_cold_15();
    v34 = 4294950629;
LABEL_60:
    CFRelease(v14);
    return v34;
  }

  v21 = CFRetain(a3);
  *(v14 + 16) = v21;
  v22 = FigSharedMemPoolAllocatorCreate(a1, v21);
  *(v14 + 24) = v22;
  if (!v22)
  {
    FigRemoteQueueSenderCreate_cold_14();
LABEL_53:
    v34 = 4294950630;
    goto LABEL_60;
  }

  v23 = 32 * *(v14 + 40);
  v24 = FigSharedMemBlockAllocate(*(v14 + 16), v23 + 32);
  *(v14 + 32) = v24;
  if (!v24)
  {
    FigRemoteQueueSenderCreate_cold_13();
    goto LABEL_53;
  }

  bzero(v24, v23 + 32);
  v25 = *(v14 + 32);
  *v25 = 1936223601;
  if (v8)
  {
    v26 = v25 + 2;
    do
    {
      v27 = *v11++;
      *v26++ = v27;
      --v8;
    }

    while (v8);
  }

  if (pipe(v15))
  {
    FigRemoteQueueSenderCreate_cold_1();
LABEL_44:
    v34 = *__error();
    goto LABEL_60;
  }

  if (pipe(v16))
  {
    FigRemoteQueueSenderCreate_cold_2();
    goto LABEL_44;
  }

  if (fcntl(*v15, 4, 4) == -1 || fcntl(*(v14 + 56), 4, 4) == -1)
  {
    FigRemoteQueueSenderCreate_cold_12(&port_info_out);
LABEL_47:
    v34 = port_info_out;
    goto LABEL_60;
  }

  if (fcntl(*v16, 4, 4) == -1)
  {
    FigRemoteQueueSenderCreate_cold_11(&port_info_out);
    goto LABEL_47;
  }

  if (fcntl(*(v14 + 56), 73, 1) == -1)
  {
    FigRemoteQueueSenderCreate_cold_10(&port_info_out);
    goto LABEL_47;
  }

  v28 = FigSimpleMutexCreate();
  *(v14 + 72) = v28;
  if (!v28)
  {
    FigRemoteQueueSenderCreate_cold_9();
    goto LABEL_53;
  }

  v29 = dispatch_semaphore_create(0);
  *(v14 + 96) = v29;
  if (!v29)
  {
    FigRemoteQueueSenderCreate_cold_8();
    goto LABEL_53;
  }

  v30 = dispatch_semaphore_create(0);
  *(v14 + 104) = v30;
  if (!v30)
  {
    FigRemoteQueueSenderCreate_cold_7();
    goto LABEL_53;
  }

  v31 = FigDispatchQueueCreateWithPriority();
  *(v14 + 88) = v31;
  if (!v31)
  {
    FigRemoteQueueSenderCreate_cold_6();
    goto LABEL_53;
  }

  v32 = dispatch_source_create(MEMORY[0x1E69E96F8], *(v14 + 60), 0, v31);
  *(v14 + 80) = v32;
  if (!v32)
  {
    FigRemoteQueueSenderCreate_cold_5();
    goto LABEL_53;
  }

  dispatch_set_context(v32, v14);
  dispatch_source_set_event_handler_f(*(v14 + 80), rqSenderHandleDequeue);
  dispatch_source_set_cancel_handler_f(*(v14 + 80), rqSenderCancelDequeues);
  *(v14 + 120) = voucher_copy();
  dispatch_resume(*(v14 + 80));
  *(v14 + 112) = 0;
  FigRemoteQueueSenderSetContext(v14, 0, 0, 0);
  *(v14 + 152) = v9;
  v33 = MEMORY[0x1E69E9A60];
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (v14 + 156)))
  {
    FigRemoteQueueSenderCreate_cold_3();
LABEL_59:
    v34 = 4294950634;
    goto LABEL_60;
  }

  *(v14 + 160) = 1;
  port_info_outCnt = 1;
  port_info_out = 0;
  if (mach_port_get_attributes(*v33, *(v14 + 156), 1, &port_info_out, &port_info_outCnt))
  {
    v36 = 777;
LABEL_58:
    FigRemoteQueueSenderCreate_cold_4(v36, &port_info_outCnt, &port_info_out);
    goto LABEL_59;
  }

  port_info_out += 10;
  if (MEMORY[0x1B26F1EB0](*v33, *(v14 + 156), 1, &port_info_out, port_info_outCnt))
  {
    v36 = 780;
    goto LABEL_58;
  }

  if (mach_port_insert_right(*v33, *(v14 + 156), *(v14 + 156), 0x14u))
  {
    v36 = 783;
    goto LABEL_58;
  }

  v34 = 0;
  *(v14 + 168) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v14 + 176) = 0;
  *(v14 + 184) = 0;
  *(v14 + 192) = -1;
  *(v14 + 200) = -1;
  *(v14 + 208) = -1;
  *(v14 + 216) = 0;
  *a7 = v14;
  return v34;
}

void rqSenderHandleDequeue(uint64_t a1)
{
  v7 = 0;
  v2 = *(a1 + 120);
  voucher_adopt();
  v3 = read(*(a1 + 60), &v7, 2uLL);
  if (v3 < 0)
  {
LABEL_12:
    __error();
  }

  else
  {
    while (v3 == 2)
    {
      if (*(a1 + 40) > v7)
      {
        v4 = *(a1 + 32) + 32 * v7;
        v5 = *(v4 + 60);
        rqSenderCleanupQueueElement(v4 + 32);
        *(a1 + 44) = (v7 + 1) % *(a1 + 40);
        v6 = *(a1 + 32);
        if (*(v6 + 4 * v5 + 20) <= 0)
        {
          rqSenderHandleDequeue_cold_1((a1 + 32), &v8);
          v6 = v8;
        }

        if (*(v6 + 4) <= 0)
        {
          rqSenderHandleDequeue_cold_2((a1 + 32), &v8);
          v6 = v8;
        }

        atomic_fetch_add((v6 + 4 * v5 + 20), 0xFFFFFFFF);
        if (atomic_fetch_add_explicit((*(a1 + 32) + 4), 0xFFFFFFFF, memory_order_relaxed) == 1 && *(a1 + 114))
        {
          dispatch_semaphore_signal(*(a1 + 96));
        }
      }

      v3 = read(*(a1 + 60), &v7, 2uLL);
      if (v3 < 0)
      {
        goto LABEL_12;
      }
    }

    *(a1 + 113) = 1;
    if (*(a1 + 114))
    {
      dispatch_semaphore_signal(*(a1 + 96));
    }

    dispatch_suspend(*(a1 + 80));
    *(a1 + 112) = 1;
  }
}

void *FigRemoteQueueSenderSetContext(void *result, uint64_t a2, void *aBlock, const void *a4)
{
  if (result)
  {
    v7 = result;
    if (result[16])
    {
      v8 = result[17];
      if (v8)
      {
        (*(v8 + 16))();
      }
    }

    v7[16] = a2;
    v7[17] = _Block_copy(aBlock);
    result = _Block_copy(a4);
    v7[18] = result;
  }

  return result;
}

uint64_t FigRemoteQueueSenderEnqueue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v5 = rqSenderEnqueue(a1, a2, 1uLL, v4);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t rqSenderEnqueue(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 48);
  if (*(a1 + 113))
  {
    rqSenderEnqueue_cold_1();
    goto LABEL_52;
  }

  v7 = a3;
  v8 = *(a1 + 40);
  if (v8 > a3)
  {
    if (*(*(a1 + 32) + 4) + a3 > v8)
    {
LABEL_57:
      v40 = 4294950627;
LABEL_53:
      v41 = *(a1 + 48);
      if (v6 != v41)
      {
        v42 = (v4 + 16);
        do
        {
          v43 = v41;
          rqSenderCleanupQueueElement(*(a1 + 32) + 32 * v41 + 32);
          v44 = *v42;
          v42 += 5;
          atomic_fetch_add_explicit((*(a1 + 32) + 4 * v44 + 20), 0xFFFFFFFF, memory_order_relaxed);
          atomic_fetch_add_explicit((*(a1 + 32) + 4), 0xFFFFFFFF, memory_order_relaxed);
          LODWORD(v41) = (v43 + 1) % *(a1 + 40);
        }

        while (v6 != v41);
      }

      return v40;
    }

    if (a3)
    {
      v9 = 0;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        v10 = v4 + 20 * v9;
        v11 = *(v10 + 16);
        if (v11 >= 3)
        {
          rqSenderEnqueue_cold_4();
          v40 = 4294950629;
          goto LABEL_53;
        }

        v12 = *(a1 + 32);
        if (*(v12 + 4 * v11 + 20) >= *(v12 + 4 * v11 + 8))
        {
          goto LABEL_57;
        }

        if (*v10)
        {
          RemoteAddress = FigSharedMemBlockGetRemoteAddress(*v10);
          if (!RemoteAddress)
          {
            v40 = 4294950632;
            goto LABEL_53;
          }

          v14 = RemoteAddress;
          v12 = *(a1 + 32);
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v10 + 8);
        if (v15)
        {
          v19 = rqSenderRegisterIOSurface(a1, v15, a3, a4);
          if (v19)
          {
            v40 = v19;
            rqSenderEnqueue_cold_3();
            goto LABEL_53;
          }

          CFRetain(*(v10 + 8));
          IOSurfaceIncrementUseCount(*(v10 + 8));
          ID = IOSurfaceGetID(*(v10 + 8));
          if (*(a1 + 216))
          {
            v51 = *(a1 + 156);
            ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
            v21 = *(a1 + 192);
            if (v21 != -1)
            {
              v22 = ContinuousUpTimeNanoseconds;
              v52 = ContinuousUpTimeNanoseconds - 1000000 * *(a1 + 216);
              v50 = ContinuousUpTimeNanoseconds;
              do
              {
                v23 = *(a1 + 176) + 32 * v21;
                if (v52 <= *(v23 + 8))
                {
                  break;
                }

                v24 = *(v23 + 16);
                valuePtr[0] = IOSurfaceGetID(*v23);
                v25 = CFRetain(*(*(a1 + 176) + 32 * v21));
                v26 = IOSurfaceIsInUse(v25);
                v27 = *(a1 + 216);
                if (v26)
                {
                  if (v27)
                  {
                    v28 = *(a1 + 176);
                    v29 = (v28 + 32 * v21);
                    v29[1] = v22;
                    v30 = *(a1 + 200);
                    if (v30 != v21)
                    {
                      v32 = v29[2];
                      v31 = v29[3];
                      if (v31 != -1)
                      {
                        *(v28 + 32 * v31 + 16) = v32;
                      }

                      if (v32 != -1)
                      {
                        *(v28 + 32 * v32 + 24) = v31;
                      }

                      if (v30 != -1)
                      {
                        *(v28 + 32 * v30 + 16) = v21;
                      }

                      v33 = *(a1 + 192);
                      if (v33 == v21)
                      {
                        v33 = v29[2];
                        *(a1 + 192) = v33;
                      }

                      v29[3] = v30;
                      v29[2] = -1;
                      *(a1 + 200) = v21;
                      if (v33 == -1)
                      {
                        *(a1 + 192) = v21;
                      }
                    }
                  }
                }

                else
                {
                  if (v27)
                  {
                    v34 = *(a1 + 176);
                    v35 = v34 + 32 * v21;
                    v36 = *(v35 + 16);
                    v37 = *(v35 + 24);
                    if (v37 != -1)
                    {
                      *(v34 + 32 * v37 + 16) = v36;
                    }

                    if (v36 != -1)
                    {
                      *(v34 + 32 * v36 + 24) = v37;
                    }

                    if (*(a1 + 192) == v21)
                    {
                      *(a1 + 192) = v36;
                    }

                    if (*(a1 + 200) == v21)
                    {
                      *(a1 + 200) = *(v35 + 24);
                    }

                    if (*v35)
                    {
                      CFRelease(*v35);
                      *v35 = 0;
                    }

                    *(v35 + 8) = 0;
                    *(v35 + 24) = -1;
                    *(v35 + 16) = *(a1 + 208);
                    *(a1 + 208) = v21;
                    v22 = v50;
                  }

                  v38 = CFNumberCreate(allocator, kCFNumberSInt32Type, valuePtr);
                  CFDictionaryRemoveValue(*(a1 + 168), v38);
                  CFRelease(v38);
                  LODWORD(v38) = IOSurfaceCreateMachPort(v25);
                  global_queue = dispatch_get_global_queue(0, 0);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __rqSurfacesReleaseAgedOut_block_invoke;
                  block[3] = &__block_descriptor_48_e5_v8__0l;
                  v55 = v51;
                  v56 = v38;
                  block[4] = a1;
                  dispatch_async(global_queue, block);
                }

                CFRelease(v25);
                v21 = v24;
              }

              while (v24 != -1);
            }
          }

          v7 = a3;
          v4 = a2;
          v16 = ID;
        }

        else
        {
          v16 = 0;
        }

        v17 = v12 + 32 * v6;
        *(v17 + 32) = FigSharedMemBlockRetain(*v10);
        *(v17 + 40) = v14;
        *(v17 + 48) = *(v10 + 8);
        *(v17 + 56) = v16;
        v18 = *(v10 + 16);
        *(v17 + 60) = v18;
        atomic_fetch_add((*(a1 + 32) + 4 * v18 + 20), 1u);
        atomic_fetch_add_explicit((*(a1 + 32) + 4), 1u, memory_order_relaxed);
        *(__buf + v9) = v6;
        v6 = ((v6 + 1) % *(a1 + 40));
        ++v9;
      }

      while (v9 != v7);
    }

    if (write(*(a1 + 56), __buf, 2 * v7) == 2 * v7)
    {
      v40 = 0;
      *(a1 + 48) = v6;
      return v40;
    }

    *(a1 + 113) = 1;
LABEL_52:
    v40 = 4294950631;
    goto LABEL_53;
  }

  if (!rqSenderEnqueue_cold_2(__buf))
  {
    v40 = __buf[0];
    goto LABEL_53;
  }

  return 0;
}

uint64_t FigRemoteQueueSenderEnqueueSequence(uint64_t a1, uint64_t a2, unint64_t a3)
{
  FigSimpleMutexLock();
  v7 = rqSenderEnqueue(a1, a2, a3, v6);
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigRemoteQueueSenderResetWithApplier(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = rqSenderReset(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t rqSenderReset(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (!*(*(a1 + 32) + 4))
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (a2)
  {
    v5 = malloc_type_calloc(*(a1 + 40), 0x20uLL, 0x1000040E0EAB150uLL);
    if (!v5)
    {
      rqSenderReset_cold_1();
      v6 = 4294950630;
      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = read(*(a1 + 52), __buf, 0x200uLL);
  v8 = (v7 >> 1) & ~(v7 >> 31);
  if (v8 > *(a1 + 40))
  {
    rqSenderReset_cold_2();
  }

  v9 = *v2;
  if (v8 > *(*v2 + 4))
  {
    rqSenderReset_cold_3(v2, &v33);
    v9 = v33;
  }

  atomic_fetch_add_explicit((v9 + 4), -v8, memory_order_relaxed);
  v10 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __rqSenderReset_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v10, block);
  if (*(a1 + 114))
  {
    dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL);
    *(a1 + 114) = 0;
  }

  if (*(a1 + 113))
  {
    v11 = *(a1 + 144);
    if (v11)
    {
      (*(v11 + 16))(v11, a1);
    }

    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 32;
      do
      {
        rqSenderCleanupQueueElement(*(a1 + 32) + v13);
        ++v12;
        v13 += 32;
      }

      while (v12 < *(a1 + 40));
    }

    if (a2)
    {
      v6 = 4294950631;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_23;
  }

  __src = v5;
  if (v8)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *v2;
      v18 = *v2 + 32 * __buf[v15];
      v35 = 0;
      v33 = 0;
      buffer = 0;
      v20 = *(v18 + 32);
      v19 = v18 + 32;
      v33 = v20;
      buffer = *(v19 + 16);
      v35 = *(v19 + 28);
      v21 = v35;
      if (*(v17 + 4 * v35 + 20) <= 0)
      {
        rqSenderReset_cold_4(v2, &v35, &v38, &v39);
        v17 = v38;
        v21 = v39;
      }

      atomic_fetch_add_explicit((v17 + 4 * v21 + 20), 0xFFFFFFFF, memory_order_relaxed);
      if (a2 && (*(a2 + 16))(a2, v8, v15, &v33))
      {
        v22 = v33;
        v23 = &__src[32 * v16];
        *v23 = v33;
        v24 = buffer;
        *(v23 + 2) = buffer;
        *(v23 + 7) = v35;
        if (v22)
        {
          *(v23 + 1) = FigSharedMemBlockGetRemoteAddress(v22);
          v24 = buffer;
        }

        if (v24)
        {
          *(v23 + 6) = IOSurfaceGetID(v24);
        }

        atomic_fetch_add_explicit((*v2 + 4 * v35 + 20), 1u, memory_order_relaxed);
        __buf[v16] = v16;
        ++v16;
      }

      else
      {
        v25 = *(a1 + 144);
        if (v25)
        {
          (*(v25 + 16))(v25, a1);
        }

        rqSenderCleanupQueueElement(v19);
      }

      ++v15;
    }

    while (v8 != v15);
  }

  else
  {
    v16 = 0;
  }

  v26 = *(a1 + 32);
  *(v26 + 4) = v16;
  v27 = *(a1 + 40);
  if (v16 >= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v16;
  }

  *(a1 + 44) = 0;
  *(a1 + 48) = v28;
  if (v16 < 1)
  {
    v6 = 0;
    v5 = __src;
    goto LABEL_23;
  }

  v5 = __src;
  memcpy((v26 + 32), __src, 32 * v27);
  __dmb(0xBu);
  if (write(*(a1 + 56), __buf, 2 * v16) == 2 * v16)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_23;
  }

  v29 = *(a1 + 144);
  if (v29)
  {
    (*(v29 + 16))(v29, a1);
  }

  if (*(a1 + 40))
  {
    v30 = 0;
    v31 = 32;
    do
    {
      rqSenderCleanupQueueElement(*(a1 + 32) + v31);
      ++v30;
      v31 += 32;
    }

    while (v30 < *(a1 + 40));
  }

  *(a1 + 113) = 1;
  v6 = 4294950631;
LABEL_23:
  free(v5);
  return v6;
}

uint64_t FigRemoteQueueSenderResetIfFullAndEnqueueSequence(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  v9 = rqSenderEnqueue(a1, a2, a3, v8);
  if (v9 == -16669)
  {
    v9 = rqSenderReset(a1, a4);
    if (!v9)
    {
      v9 = rqSenderEnqueue(a1, a2, a3, v10);
    }
  }

  v11 = v9;
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FigRemoteQueueSenderCreateXPCObject(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    FigRemoteQueueSenderCreateXPCObject_cold_7(0, a2);
    return 4294950629;
  }

  if (!a2)
  {
    FigRemoteQueueSenderCreateXPCObject_cold_6();
    return 4294950629;
  }

  SharedRegion = FigSharedMemPoolGetSharedRegion(*(a1 + 16));
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleMutexLock();
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      FigRemoteQueueSenderCreateXPCObject_cold_4(v7);
      goto LABEL_20;
    }

    if ((*(a1 + 160) & 1) == 0)
    {
      FigRemoteQueueSenderCreateXPCObject_cold_1(v7);
      goto LABEL_20;
    }

    RemoteAddress = FigSharedMemBlockGetRemoteAddress(*(a1 + 32));
    if (RemoteAddress)
    {
      if (FigSharedMemPoolSharedRegionGetOwner(SharedRegion))
      {
        FigRemoteQueueSenderCreateXPCObject_cold_2();
LABEL_20:
        v19 = 4294950629;
LABEL_21:
        FigSimpleMutexUnlock();
        xpc_release(v6);
        return v19;
      }
    }

    else
    {
      v14 = FigSharedMemPoolSharedRegionCreateXPCObject(SharedRegion, a1, &value, v8, v9, v10, v11, v12, v21);
      if (v14)
      {
        v19 = v14;
        FigRemoteQueueSenderCreateXPCObject_cold_3();
        goto LABEL_21;
      }
    }

    v15 = *(a1 + 52);
    v16 = *(a1 + 64);
    *(a1 + 64) = -1;
    xpc_dictionary_set_mach_recv();
    *(a1 + 160) = 0;
    FigSimpleMutexUnlock();
    if (value)
    {
      xpc_dictionary_set_value(v6, "SharedRegion", value);
      xpc_release(value);
    }

    v17 = *(a1 + 32);
    Address = FigSharedMemPoolSharedRegionGetAddress(SharedRegion);
    xpc_dictionary_set_uint64(v6, "QueueOffset", v17 - Address);
    xpc_dictionary_set_uint64(v6, "QueueData", RemoteAddress);
    xpc_dictionary_set_fd(v6, "RecvFd", v15);
    xpc_dictionary_set_fd(v6, "SendFd", v16);
    close(v16);
    v19 = 0;
    *a2 = v6;
  }

  else
  {
    FigRemoteQueueSenderCreateXPCObject_cold_5();
    return 4294950630;
  }

  return v19;
}

uint64_t FigRemoteQueueSenderGetSharedMemPoolAllocator(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t FigRemoteQueueSenderRegisterIOSurface(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v6 = rqSenderRegisterIOSurface(a1, a2, v4, v5);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigRemoteQueueSenderGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t FigRemoteQueueIOSurfaceReceiver_ShareIOSurface(uint64_t a1, uint64_t port)
{
  if (port)
  {
    v2 = a1;
    v3 = IOSurfaceLookupFromMachPort(port);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(rqSharedSurfaces, v2);
      if (!Value)
      {
        Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFDictionaryAddValue(rqSharedSurfaces, v2, Value);
        CFRelease(Value);
      }

      CFArrayAppendValue(Value, v4);
      CFRelease(v4);
    }

    else
    {
      FigRemoteQueueIOSurfaceReceiver_ShareIOSurface_cold_1();
    }

    FigMachPortReleaseSendRight_();
  }

  else
  {
    FigRemoteQueueIOSurfaceReceiver_ShareIOSurface_cold_2(a1);
  }

  return 0;
}

uint64_t FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface(uint64_t a1, uint64_t port)
{
  if (port)
  {
    v2 = a1;
    v3 = IOSurfaceLookupFromMachPort(port);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(rqSharedSurfaces, v2);
      if (Value)
      {
        v6 = Value;
        v9.length = CFArrayGetCount(Value);
        v9.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v9, v4);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
        }
      }

      CFRelease(v4);
    }

    else
    {
      FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface_cold_1();
    }

    FigMachPortReleaseSendRight_();
  }

  else
  {
    FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface_cold_2(a1);
  }

  return 0;
}

uint64_t rqReceiverRegister()
{
  sRemoteQueueReceiverClass = 0;
  *algn_1ED844D28 = "FigRemoteQueueReceiver";
  qword_1ED844D30 = rqReceiverInit;
  unk_1ED844D38 = 0;
  qword_1ED844D40 = rqReceiverFinalize;
  unk_1ED844D48 = 0;
  qword_1ED844D50 = 0;
  unk_1ED844D58 = 0;
  qword_1ED844D60 = rqReceiverCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sRemoteQueueReceiverID = result;
  return result;
}

uint64_t FigRemoteQueueReceiverCreateFromXPCObject(uint64_t a1, xpc_object_t xdict, uint64_t *a3)
{
  cf = 0;
  if (!xdict)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_14(a1, 0, a3);
LABEL_48:
    v20 = 4294950629;
    goto LABEL_22;
  }

  if (!a3)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_13(a1);
    goto LABEL_48;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "QueueData");
  if (uint64)
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(xdict, "SharedRegion");
  if (!value)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_12();
    goto LABEL_48;
  }

  v8 = FigSharedMemPoolSharedRegionCreateFromXPCObject(a1, value, &cf);
  if (v8)
  {
    v20 = v8;
    FigRemoteQueueReceiverCreateFromXPCObject_cold_1();
    goto LABEL_22;
  }

  v9 = xpc_dictionary_get_uint64(xdict, "QueueOffset");
  if (!v9)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_11();
    goto LABEL_48;
  }

  uint64 = v9 + FigSharedMemPoolSharedRegionGetAddress(cf);
LABEL_8:
  v10 = xpc_dictionary_dup_fd(xdict, "RecvFd");
  if (v10 < 0)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_10();
    v20 = 4294950629;
    goto LABEL_23;
  }

  v11 = xpc_dictionary_dup_fd(xdict, "SendFd");
  if (v11 < 0)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_9();
LABEL_37:
    v20 = 4294950629;
    goto LABEL_24;
  }

  mach_recv = xpc_dictionary_extract_mach_recv();
  if (!mach_recv)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_8();
    goto LABEL_37;
  }

  v13 = cf;
  if (rqSurfaceRegistrationOnce != -1)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_2();
  }

  MEMORY[0x1B26F02D0](&FigRemoteQueueReceiverGetTypeID_registerOnce, rqReceiverRegister);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v15 = Instance;
    if (v13)
    {
      v16 = CFRetain(v13);
    }

    else
    {
      v16 = 0;
    }

    *(v15 + 16) = v16;
    *(v15 + 24) = FigSharedMemBlockRetain(uint64);
    if (fcntl(v10, 4, 4) == -1 || fcntl(v11, 4, 4) == -1)
    {
      FigRemoteQueueReceiverCreateFromXPCObject_cold_5();
    }

    else
    {
      if (fcntl(v11, 73, 1) != -1)
      {
        v17 = FigSimpleMutexCreate();
        *(v15 + 40) = v17;
        if (v17)
        {
          *(v15 + 64) = 1;
          *(v15 + 32) = v10;
          *(v15 + 36) = v11;
          *(v15 + 80) = 0;
          *(v15 + 88) = 0;
          *(v15 + 96) = mach_recv;
          v18 = dispatch_source_create(MEMORY[0x1E69E96D8], mach_recv, 0, rqSurfaceRegistrationQueue);
          *(v15 + 104) = v18;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __rqReceiverCreate_block_invoke_2;
          handler[3] = &unk_1E7991CF0;
          v25 = mach_recv;
          handler[4] = v18;
          dispatch_source_set_cancel_handler(v18, handler);
          v19 = *(v15 + 104);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __rqReceiverCreate_block_invoke_3;
          v23[3] = &unk_1E798F870;
          v23[4] = v18;
          dispatch_source_set_event_handler(v19, v23);
          dispatch_resume(*(v15 + 104));
          v20 = 0;
          *a3 = v15;
LABEL_22:
          v10 = -1;
LABEL_23:
          v11 = -1;
          goto LABEL_24;
        }

        FigRemoteQueueReceiverCreateFromXPCObject_cold_3(v15, handler, v23);
        goto LABEL_43;
      }

      FigRemoteQueueReceiverCreateFromXPCObject_cold_4();
    }

    v20 = *__error();
    CFRelease(v15);
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  FigRemoteQueueReceiverCreateFromXPCObject_cold_6(handler, v23);
LABEL_43:
  v20 = 4294950630;
LABEL_44:
  FigRemoteQueueReceiverCreateFromXPCObject_cold_7(v20);
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  FigMachPortReleaseReceiveRight_();
  return v20;
}

uint64_t FigRemoteQueueReceiverDequeue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = rqReceiverDequeue(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t rqReceiverDequeue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 69))
  {
    rqReceiverDequeue_cold_1();
    return 4294950631;
  }

  __buf = 0;
  v4 = read(*(a1 + 32), &__buf, 2uLL);
  if (v4 < 0)
  {
    if (*__error() == 35)
    {
      return 4294950628;
    }

    else
    {
      return *__error();
    }
  }

  if (v4 != 2)
  {
    *(a1 + 69) = 1;
    return 4294950631;
  }

  v5 = *(a1 + 24) + 32 * __buf;
  if (!*(v5 + 48))
  {
    v7 = 0;
    goto LABEL_13;
  }

  v6 = IOSurfaceLookup(*(v5 + 56));
  if (v6)
  {
    v7 = v6;
    IOSurfaceIncrementUseCount(v6);
LABEL_13:
    v8 = 0;
    *a2 = FigSharedMemBlockRetain(*(v5 + 40));
    *(a2 + 8) = v7;
    *(a2 + 16) = *(v5 + 60);
    __dmb(0xBu);
    goto LABEL_15;
  }

  v8 = 4294950629;
LABEL_15:
  if (write(*(a1 + 36), &__buf, 2uLL) != 2)
  {
    *(a1 + 69) = 1;
  }

  return v8;
}

uint64_t FigRemoteQueueReceiverSetHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  FigSimpleMutexLock();
  ++*(a1 + 64);
  v6 = *(a1 + 56);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 56) = 0;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 69);
  v8 = _Block_copy(a3);
  v9 = v8;
  if (!v7)
  {
    *(a1 + 56) = v8;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = a1;
    v11 = 0;
    goto LABEL_10;
  }

  CFRetain(a1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FigRemoteQueueReceiverSetHandler_block_invoke;
  v14[3] = &unk_1E79903B8;
  v14[4] = v9;
  v14[5] = a1;
  dispatch_async(a2, v14);
  if (!*(a1 + 56))
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 32), 0, a2);
  if (!v10)
  {
    FigRemoteQueueReceiverSetHandler_cold_1();
    return FigSimpleMutexUnlock();
  }

  v11 = v10;
  v12 = a1;
LABEL_10:
  rqReceiverSetSource(v12, v11);
  return FigSimpleMutexUnlock();
}

void __FigRemoteQueueReceiverSetHandler_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = 0;
  v3 = 0;
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void rqReceiverSetSource(CFTypeRef cf, NSObject *a2)
{
  v4 = *(cf + 6);
  if (v4)
  {
    dispatch_source_cancel(v4);
    if (*(cf + 68))
    {
      *(cf + 68) = 0;
      dispatch_resume(*(cf + 6));
    }

    *(cf + 6) = 0;
  }

  if (a2)
  {
    CFRetain(cf);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __rqReceiverSetSource_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = cf;
    dispatch_source_set_event_handler(a2, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __rqReceiverSetSource_block_invoke_2;
    v5[3] = &unk_1E7990178;
    v5[4] = a2;
    v5[5] = cf;
    dispatch_source_set_cancel_handler(a2, v5);
    *(cf + 6) = a2;
    if (!*(cf + 9))
    {
      *(cf + 9) = voucher_copy();
      a2 = *(cf + 6);
    }

    *(cf + 68) = 0;
    dispatch_resume(a2);
  }
}

uint64_t FigRemoteQueueReceiverGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

void *FigRemoteQueueReceiverSetContext(void *result, uint64_t a2, void *aBlock)
{
  if (result)
  {
    v5 = result;
    if (result[10])
    {
      v6 = result[11];
      if (v6)
      {
        (*(v6 + 16))();
      }
    }

    v5[10] = a2;
    result = _Block_copy(aBlock);
    v5[11] = result;
  }

  return result;
}

double rqSenderInit(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
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

void rqSenderFinalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    rqSenderReset(a1, 0);
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __rqSenderFinalize_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v3, block);
    dispatch_semaphore_wait(*(a1 + 104), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(a1 + 80));
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 52);
  if ((v7 & 0x80000000) == 0)
  {
    close(v7);
  }

  v8 = *(a1 + 56);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  v9 = *(a1 + 60);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  v10 = *(a1 + 64);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  FigRemoteQueueSenderSetContext(a1, 0, 0, 0);
  FigSimpleMutexDestroy();
  FigSharedMemBlockRelease(*(a1 + 32));
  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {

    *(a1 + 120) = 0;
  }

  if (*(a1 + 156))
  {
    v14 = *(a1 + 168);
    if (v14 && CFDictionaryGetCount(v14) && !*(a1 + 113))
    {
      if (*(a1 + 160) == 1)
      {
        FigMachPortReleaseReceiveRight_();
      }

      v19 = *(a1 + 152);
      v20 = *(a1 + 156);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __rqSenderFinalize_block_invoke_2;
      v21[3] = &__block_descriptor_36_e8_v12__0B8l;
      v22 = v20;
      FigRemoteQueueProcessAssertion_awakeClientAndRunCallback(v19, v21);
    }

    else
    {
      if (*(a1 + 160) == 1)
      {
        FigMachPortReleaseReceiveRight_();
      }

      FigMachPortReleaseSendRight_();
    }
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    CFDictionaryRemoveAllValues(v15);
    v16 = *(a1 + 184);
    if (v16 >= 1)
    {
      rqSenderFinalize_cold_1(a1, (a1 + 184), v16);
    }

    v17 = *(a1 + 176);
    if (v17)
    {
      *(a1 + 176) = 0;
      free(v17);
    }

    *(a1 + 184) = 0;
    *(a1 + 192) = -1;
    *(a1 + 200) = -1;
    *(a1 + 208) = -1;
    v18 = *(a1 + 168);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 168) = 0;
    }
  }
}

void __rqSenderFinalize_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 112))
  {
    dispatch_resume(*(v1 + 80));
    *(*(a1 + 32) + 112) = 0;
  }
}

uint64_t __rqSenderFinalize_block_invoke_2(uint64_t a1)
{
  FigRemoteQueueIOSurfaceSender_ReleaseIOSurfaces(*(a1 + 32));

  return FigMachPortReleaseSendRight_();
}

double rqSenderCleanupQueueElement(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOSurfaceDecrementUseCount(v2);
    CFRelease(*(a1 + 16));
  }

  FigSharedMemBlockRelease(*a1);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t __rqSurfacesReleaseAgedOut_block_invoke(uint64_t a1)
{
  if (FigRemoteQueueIOSurfaceSender_ReleaseIOSurface(*(a1 + 40), *(a1 + 44)))
  {
    bzero(buffer, 0x1000uLL);
    if (proc_name(*(*(a1 + 32) + 152), buffer, 0xFFFu) <= 0)
    {
      snprintf(buffer, 0xFFFuLL, "pid-%d", *(*(a1 + 32) + 152));
    }
  }

  return FigMachPortReleaseSendRight_();
}

uint64_t __rqSenderReset_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(*(v1 + 32) + 4) >= 1 && !*(v1 + 113))
  {
    *(v1 + 114) = 1;
  }

  return result;
}

double rqReceiverInit(_OWORD *a1)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  result = NAN;
  *(a1 + 4) = -1;
  return result;
}

void rqReceiverFinalize(uint64_t a1)
{
  if (*(a1 + 96))
  {
    dispatch_source_cancel(*(a1 + 104));
  }

  if (*(a1 + 56))
  {
    rqReceiverFinalize_cold_1();
  }

  if (*(a1 + 48))
  {
    rqReceiverFinalize_cold_2();
  }

  v2 = *(a1 + 36);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  FigRemoteQueueReceiverSetContext(a1, 0, 0);
  FigSimpleMutexDestroy();
  FigSharedMemBlockRelease(*(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {

    *(a1 + 72) = 0;
  }
}

CFMutableDictionaryRef __rqReceiverCreate_block_invoke()
{
  rqSurfaceRegistrationQueue = FigDispatchQueueCreateWithPriority();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  rqSharedSurfaces = result;
  return result;
}

void __rqReceiverCreate_block_invoke_2(uint64_t a1)
{
  FigMachPortReleaseReceiveRight_();
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = rqSharedSurfaces;

  CFDictionaryRemoveValue(v3, v2);
}

void __rqReceiverSetSource_block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_1ACC2B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACCConnectionInfoClass_block_invoke(uint64_t a1)
{
  CoreAccessoriesLibrary();
  result = objc_getClass("ACCConnectionInfo");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getACCConnectionInfoClass_block_invoke_cold_1();
  }

  getACCConnectionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CoreAccessoriesLibrary()
{
  v2[0] = 0;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreAccessoriesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E799CA98;
    v4 = 0;
    CoreAccessoriesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreAccessoriesLibraryCore_frameworkLibrary;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    CoreAccessoriesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreAccessoriesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreAccessoriesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke_2;
  v10[3] = &unk_1E799CAD8;
  v8 = *(a1 + 40);
  v10[4] = v6;
  v10[5] = v8;
  v11 = *(a1 + 56);
  v10[6] = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
  return [*(a1 + 48) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithDictionary:", v7), a2}];
}

uint64_t __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{a2), "floatValue"}];
  v7 = v6;
  [a3 floatValue];
  v9 = *&v8;
  if (*(a1 + 40))
  {
    v10 = [a2 hasPrefix:?];
    HIDWORD(v8) = 0;
    if (v10)
    {
      v9 = 0.0;
    }
  }

  *&v8 = (v9 * (1.0 - *(a1 + 56))) + (v7 * *(a1 + 56));
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v12 = *(a1 + 48);

  return [v12 setObject:v11 forKeyedSubscript:a2];
}

void sub_1ACC300D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 136), 8);
  objc_destroyWeak((v2 - 104));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

BOOL __msp_configureTextLocalizationNode_block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3)
{
  v3 = a3;
  AttachedInference = BWInferenceGetAttachedInference(a3, 116, 0x1F219E730);
  if ([objc_loadWeak((a1 + 40)) logger])
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(AttachedInference, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = [AttachedInference countByEnumeratingWithState:&v55 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v56;
      v11 = *off_1E798CD38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(AttachedInference);
          }

          [v7 addObject:{objc_msgSend(*(*(&v55 + 1) + 8 * i), "objectForKeyedSubscript:", v11)}];
        }

        v9 = [AttachedInference countByEnumeratingWithState:&v55 objects:v54 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = [AttachedInference count];
  if (![AttachedInference count])
  {
    v13 = *(*(*(a1 + 32) + 8) + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = [AttachedInference count];
  memset(&v53, 0, sizeof(v53));
  CMSampleBufferGetPresentationTimeStamp(&v53, a2);
  Weak = objc_loadWeak((a1 + 40));
  v15 = objc_loadWeak((a1 + 48));
  v16 = [AttachedInference count];
  *&v51.a = *&v53.value;
  *&v51.c = v53.epoch;
  [Weak node:v15 didEmitCodesCount:v16 emittedIdentifiers:v7 originalPTS:&v51];
  if ([AttachedInference count])
  {
    obj = AttachedInference;
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    v18 = [CMGetAttachment(ImageBuffer @"RotationDegrees"];
    v19 = [CMGetAttachment(ImageBuffer @"MirroredHorizontal"];
    v20 = [CMGetAttachment(ImageBuffer @"MirroredVertical"];
    v41 = *(MEMORY[0x1E695F050] + 16);
    v42 = *MEMORY[0x1E695F050];
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v41;
    v21 = CMGetAttachment(a2, *off_1E798A438, 0);
    CGRectMakeWithDictionaryRepresentation(v21, &rect);
    memset(&v51, 0, sizeof(v51));
    FigCaptureGetTransformForMirroringRotationAndCrop(v19, v20, v18, &v51, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    v50 = v51;
    if (CGAffineTransformIsIdentity(&v50))
    {
      if (!v13)
      {
        return v13 != 0;
      }

      goto LABEL_32;
    }

    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(AttachedInference, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = [AttachedInference countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (!v23)
    {
      AttachedInference = v22;
      if (!v13)
      {
        return v13 != 0;
      }

      goto LABEL_32;
    }

    v24 = v23;
    v37 = v13;
    v38 = v3;
    v40 = *v47;
    v25 = *off_1E798CD28;
    v26 = v19 ^ v20;
    v27 = *off_1E798CD18;
    v28 = *off_1E798CD20;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v46 + 1) + 8 * j);
        v31 = [v30 mutableCopy];
        v44.origin = v42;
        v44.size = v41;
        if (CGRectMakeWithDictionaryRepresentation([v30 objectForKeyedSubscript:v25], &v44))
        {
          v50 = v51;
          v59 = CGRectApplyAffineTransform(v44, &v50);
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v59);
          [v31 setObject:DictionaryRepresentation forKeyedSubscript:v25];
        }

        if (v26)
        {
          [objc_msgSend(v30 objectForKeyedSubscript:{v27), "floatValue"}];
          *&v34 = -v33;
          [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), v27}];
        }

        v43.origin = v42;
        v43.size = v41;
        if (CGRectMakeWithDictionaryRepresentation([v30 objectForKeyedSubscript:v28], &v43))
        {
          v50 = v51;
          v60 = CGRectApplyAffineTransform(v43, &v50);
          v35 = CGRectCreateDictionaryRepresentation(v60);
          [v31 setObject:v35 forKeyedSubscript:v28];
        }

        [v22 addObject:v31];
      }

      v24 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v24);
    AttachedInference = v22;
    v13 = v37;
    v3 = v38;
  }

  if (v13)
  {
LABEL_32:
    CMSetAttachment(v3, *off_1E798A500, AttachedInference, 1u);
    CMSetAttachment(v3, *off_1E798A508, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(AttachedInference, "count")}], 1u);
    CMRemoveAttachment(v3, @"Inferences");
  }

  return v13 != 0;
}

uint64_t FigCaptureSourceServerStart()
{
  v12 = 1;
  v13 = captureSourceServer_handleReplyMessage;
  v14 = captureSourceServer_handleNoReplyMessage;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (captureSourceServer_initializeStatics_onceToken != -1)
  {
    FigCaptureSourceServerStart_cold_1();
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CelestialToCameraCaptureMigrationCompleted", @"com.apple.cameracapture", 0);
  v1 = CFPreferencesGetAppBooleanValue(@"VolatileDomainMigrationCompleted", @"com.apple.cameracapture.volatile", 0);
  if (AppBooleanValue)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    FigCaptureSourceServerStart_cold_2();
    goto LABEL_14;
  }

  v3 = v1;
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  if (AppBooleanValue)
  {
    if (v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CFPreferencesSetMultiple(0, &unk_1F2249C78, @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSetValue(@"CelestialToCameraCaptureMigrationCompleted", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture", v4, v5);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  CFPreferencesSetMultiple(0, &unk_1F2249C90, @"com.apple.cameracapture", v4, v5);
  CFPreferencesSetValue(@"VolatileDomainMigrationCompleted", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture.volatile", v4, v5);
LABEL_10:
  CFPreferencesSynchronize(@"com.apple.cameracapture", v4, v5);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v4, v5);
  CFPreferencesSynchronize(@"com.apple.celestial", v4, v5);
  if (dword_1ED843FB0)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_14:
  FigCaptureSourceInitialize([FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider:v10], 1);
  if (FigCaptureAudiomxdSupportEnabled(v7, v8) && (FigCaptureCurrentProcessIsCameracaptured() || FigCaptureCurrentProcessIsMediaserverd()))
  {
    FigCaptureSpeakerSetInterferenceMitigationIsRequired(0, 1);
    FigCaptureMicrophoneSetInterferenceMitigationIsRequired(0, 1);
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capturesource", &v12, 0, &FigCaptureSourceServerStart_sSourceServer);
}

uint64_t captureSourceServer_handleNoReplyMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v3 = OpCode;
    captureSourceServer_handleNoReplyMessage_cold_1();
  }

  else
  {
    v3 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v3;
}

uint64_t captureSourceServer_handleSourceDestructionMessage(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v2 = FigXPCServerDisassociateObjectWithConnection();
  v3 = v2;
  if (v2)
  {
    captureSourceServer_handleSourceDestructionMessage_cold_1(v2);
  }

  return v3;
}

uint64_t captureSourceServer_handleSourceInvalidateMessage(uint64_t a1, void *a2)
{
  v10 = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v10);
  if (v2)
  {
    v6 = v2;
    captureSourceServer_handleSourceInvalidateMessage_cold_1(v2, &v10, &v11);
    v3 = v11;
    if (!v11)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v3 = v10;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    if (!v4(v3, 0x1F21A16D0, *MEMORY[0x1E695E480], &v9))
    {
      v5 = [v9 BOOLValue];

      if (v5)
      {
        v6 = 0;
        if (!v3)
        {
          return v6;
        }

        goto LABEL_10;
      }
    }
  }

  if (!v3)
  {
    v6 = 4294954516;
LABEL_14:
    captureSourceServer_handleSourceInvalidateMessage_cold_2(v6);
    if (!v3)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v7)
  {
    v6 = 4294954514;
    goto LABEL_14;
  }

  v6 = v7(v3);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_10:
  CFRelease(v3);
  return v6;
}

uint64_t captureSourceServer_handleCopyProxySourceMessage(uint64_t a1, uint64_t a2, char *a3)
{
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0;
  v41 = 0;
  v38 = 0u;
  v39 = 0u;
  xpc_connection_get_audit_token();
  v36 = 0u;
  v37 = 0u;
  if (FigCaptureClientHasEntitlement(&v36, @"com.apple.private.avfoundation.capture.proxy-devices.allow"))
  {
    v5 = FigXPCMessageCopyCFString();
    if (v5)
    {
      v23 = v5;
      captureSourceServer_handleCopyProxySourceMessage_cold_2();
    }

    else
    {
      v6 = FigXPCMessageCopyCFData();
      if (v6)
      {
        v23 = v6;
        captureSourceServer_handleCopyProxySourceMessage_cold_3();
      }

      else
      {
        [v40 getBytes:&v38 length:32];
        FigSimpleMutexLock();
        if (CFArrayGetCount(sSourceList) >= 1)
        {
          v29 = a3;
          v7 = 0;
          v8 = *MEMORY[0x1E695E480];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v7);
            v35 = 0;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v10)
            {
              break;
            }

            v11 = v10(ValueAtIndex, 0x1F21A1990, v8, &v35);
            if (v11)
            {
              v23 = v11;
              goto LABEL_28;
            }

            v12 = [v35 BOOLValue];

            v35 = 0;
            if (v12)
            {
              captureSourceServer_handleCopyProxySourceMessage_cold_7(&v36, v13, v14, v15, v16, v17, v18, v19);
              v23 = v36;
              goto LABEL_20;
            }

            v34 = 0;
            v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v20)
            {
              v23 = 4294954514;
LABEL_19:
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v3, v29, v3, LODWORD(value[0]), value[1], v31, DWORD2(v31));
              goto LABEL_20;
            }

            v21 = v20(ValueAtIndex, @"AttributesDictionary", v8, &v34);
            if (v21)
            {
              v23 = v21;
              goto LABEL_19;
            }

            [v34 objectForKeyedSubscript:@"UniqueID"];

            v34 = 0;
            if (objc_msgSend_isEqualToString_(v41))
            {
              v33 = 0;
              v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v22)
              {
                v22(ValueAtIndex, 0x1F21863F0, v8, &v33);
              }

              v36 = 0u;
              v37 = 0u;
              [v33 getBytes:&v36 length:32];

              v33 = 0;
              v32[0] = v38;
              v32[1] = v39;
              *value = v36;
              v31 = v37;
              if (FigCaptureAuditTokenProcessesAreEqual(v32, value))
              {
                *&v32[0] = 0;
                v25 = FigCaptureSourceProxyCreate(v8, ValueAtIndex, &v44);
                if (v25)
                {
                  v23 = v25;
                  captureSourceServer_handleCopyProxySourceMessage_cold_4();
                }

                else
                {
                  CFArrayAppendValue(sProxySourceList, v44);
                  v26 = FigXPCServerAssociateObjectWithConnection();
                  if (v26)
                  {
                    v23 = v26;
                    captureSourceServer_handleCopyProxySourceMessage_cold_5();
                  }

                  else
                  {
                    value[0] = 0;
                    SerializedSource = captureSourceServer_createSerializedSource(ValueAtIndex, *&v32[0], value);
                    v23 = SerializedSource;
                    if (SerializedSource)
                    {
                      captureSourceServer_handleCopyProxySourceMessage_cold_6(SerializedSource);
                    }

                    else
                    {
                      v28 = value[0];
                      xpc_dictionary_set_value(v29, *MEMORY[0x1E69615C8], value[0]);
                      xpc_release(v28);
                    }
                  }
                }

                goto LABEL_20;
              }
            }

            if (CFArrayGetCount(sSourceList) <= ++v7)
            {
              v23 = 0;
              goto LABEL_20;
            }
          }

          v23 = 4294954514;
LABEL_28:
          captureSourceServer_handleCopyProxySourceMessage_cold_8(v23);
          goto LABEL_20;
        }

        v23 = 0;
LABEL_20:
        FigSimpleMutexUnlock();
        if (v44)
        {
          CFRelease(v44);
        }
      }
    }
  }

  else
  {
    captureSourceServer_handleCopyProxySourceMessage_cold_1(&v36);
    v23 = v36;
  }

  return v23;
}

uint64_t captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0;
  cf = 0;
  xpc_connection_get_audit_token();
  v3 = *MEMORY[0x1E695E480];
  memset(v10, 0, sizeof(v10));
  v4 = FigExternalSyncDeviceDiscoverySessionCreate(v3, v10, &cf);
  if (v4)
  {
    v8 = v4;
    captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage_cold_1();
  }

  else
  {
    v5 = FigXPCServerAssociateObjectWithConnection();
    if (v5)
    {
      v8 = v5;
      captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage_cold_2();
    }

    else
    {
      v6 = v11;
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, kFigCaptureSourceServerCopySourcesMessagePayload_ObjectID, v6);
      xpc_dictionary_set_uint64(empty, kFigCaptureSourceServerCopySourcesMessagePayload_SourceType, 6uLL);
      xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], empty);
      xpc_release(empty);
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t captureSourceServer_handleCheckTCCAccessMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &cf);
  v3 = v2;
  if (v2)
  {
    captureSourceServer_handleCheckTCCAccessMessage_cold_1(v2);
  }

  else
  {
    xpc_connection_get_audit_token();
    v7 = 0u;
    v8 = 0u;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureSourceServer_checkCameraAccessForClientAsync_block_invoke;
    block[3] = &__block_descriptor_64_e5_v8__0l;
    dispatch_async(sCameraAccessCheckQueue, block);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void captureSourceServer_handleMaxStillImageJPEGDataSizeMessage(xpc_object_t xdict)
{
  if (captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_onceToken != -1)
  {
    captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_cold_1();
  }

  v2 = *MEMORY[0x1E69615C8];
  v3 = captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_maxDataSize;

  xpc_dictionary_set_uint64(xdict, v2, v3);
}

uint64_t captureSourceServer_handleShowSystemUserInterfaceMessage(void *a1)
{
  int64 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_SystemUserInterface);
  string = xpc_dictionary_get_string(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_BundleID);
  v4 = xpc_dictionary_get_string(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_AppName);
  if (int64)
  {
    v5 = string == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    captureSourceServer_handleShowSystemUserInterfaceMessage_cold_1(v4);
    return 4294954516;
  }

  else
  {
    v7 = v4;
    v8 = *MEMORY[0x1E695E480];
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
    v10 = CFStringCreateWithCString(v8, v7, 0x8000100u);
    FigCaptureSourceShowSystemUserInterface(int64, v9, v10);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }
}

uint64_t captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &cf);
  if (v2)
  {
    v7 = v2;
    captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_1();
  }

  else
  {
    v3 = FigXPCMessageCopyCFString();
    if (v3)
    {
      v7 = v3;
      captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_2();
    }

    else
    {
      v4 = cf;
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (*v5 >= 2uLL && (v6 = v5[7]) != 0)
      {
        v7 = v6(v4, 0);
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v7 = 4294954514;
      }

      captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_3(v7);
    }
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t captureSourceServer_handlePublishFrameSenderEndpointMessage(void *a1)
{
  value = xpc_dictionary_get_value(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_Endpoint);
  if (value)
  {
    v3 = value;
    v4 = FigXPCMessageCopyCFString();
    if (v4)
    {
      v9 = v4;
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_1();
      return v9;
    }

    v5 = FigXPCMessageCopyCFString();
    if (v5)
    {
      v9 = v5;
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_2();
      return v9;
    }

    int64 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointPID);
    if (int64)
    {
      v7 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointProxyPID);
      v8 = FigXPCMessageCopyCFData();
      if (v8)
      {
        v9 = v8;
        captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_3();
        return v9;
      }

      FigXPCMessageCopyCFData();
      FigXPCMessageCopyCFString();
      if ([CMCaptureFrameSenderEndpointsServerSideSingleton addEndpoint:v3 endpointUniqueID:0 endpointType:0 endpointPID:int64 endpointProxyPID:v7 endpointAuditToken:0 endpointProxyAuditToken:0 endpointCameraUniqueID:@"unknown"])
      {
        [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
      }

      else
      {
        captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_4();
      }
    }

    else
    {
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_5();
    }
  }

  else
  {
    captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_6();
  }

  return 0;
}

uint64_t captureSourceServer_handleSuppressFrameSenderEndpointMessage(_xpc_connection_s *a1, uint64_t a2)
{
  v3 = FigXPCMessageCopyCFString();
  v4 = v3;
  if (v3)
  {
    captureSourceServer_handleSuppressFrameSenderEndpointMessage_cold_1(v3);
    return v4;
  }

  pid = xpc_connection_get_pid(a1);
  if (!objc_msgSend_isEqualToString_(0))
  {
    if (![CMCaptureFrameSenderEndpointsServerSideSingleton removeEndpointWithUniqueID:0])
    {
      goto LABEL_4;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    return v4;
  }

  if ([CMCaptureFrameSenderEndpointsServerSideSingleton removeAllEndpointsWithPID:pid])
  {
    goto LABEL_6;
  }

LABEL_4:
  captureSourceServer_handleSuppressFrameSenderEndpointMessage_cold_2();
  return v4;
}

uint64_t captureSourceServer_handleCopyFrameSenderEndpointsMessage(void *a1)
{
  v2 = +[CMCaptureFrameSenderEndpointsServerSideSingleton createXPCArrayOfFrameSenderEndpoints];
  if (v2)
  {
    xpc_dictionary_set_value(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointArray, v2);
    v3 = 0;
  }

  else
  {
    captureSourceServer_handleCopyFrameSenderEndpointsMessage_cold_1();
    v3 = 4294954516;
  }

  FigXPCRelease();
  return v3;
}

uint64_t captureSourceServer_handleUpdateCameraOverrideHistoryMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v14 = 0;
  cf = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  xpc_connection_get_pid(a1);
  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &cf);
  if (v6)
  {
    v9 = v6;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_1();
LABEL_7:
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, v9);
    goto LABEL_8;
  }

  v7 = FigXPCMessageCopyCFString();
  if (v7)
  {
    v9 = v7;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_2();
    goto LABEL_7;
  }

  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    v9 = v8;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_3();
    goto LABEL_7;
  }

  xpc_dictionary_get_BOOL(a2, kFigCaptureSourceRemoteCameraOverrideHistoryMessageKey_SetOverride);
  xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, 0);
  xpc_dictionary_set_BOOL(a3, kFigCaptureSourceRemoteCameraOverrideHistoryReplyMessageKey_OverrideChangedValue, v11 != 0);
  if (v11)
  {
    FigXPCMessageSetCFArray();
  }

  v9 = 0;
LABEL_8:
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

  return v9;
}

uint64_t captureSourceServer_handleSetPixelBufferPropertyMessage(uint64_t a1, void *a2)
{
  v15 = 0;
  cf = 0;
  pixelBufferOut = 0;
  v3 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &cf);
  if (v3)
  {
    v8 = v3;
    captureSourceServer_handleSetPixelBufferPropertyMessage_cold_1();
    goto LABEL_13;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    v8 = v4;
    captureSourceServer_handleSetPixelBufferPropertyMessage_cold_2();
    goto LABEL_13;
  }

  value = xpc_dictionary_get_value(a2, kFigCaptureSourceRemoteProprietaryDefaultMessagePayload_Value);
  if (value)
  {
    v6 = IOSurfaceLookupFromXPCObject(value);
    if (!v6)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_5();
      v8 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v6, 0, &pixelBufferOut);
    CFRelease(v7);
    if (v8)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_3();
      goto LABEL_13;
    }

    v8 = pixelBufferOut;
    if (!pixelBufferOut)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_4();
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v15;
  v9 = cf;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (*v11 >= 6uLL && (v12 = v11[13]) != 0)
  {
    v8 = v12(v9, v10, v8);
  }

  else
  {
    v8 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v8;
}

void captureSourceServer_serializeActiveFormat(void *a1, void *a2)
{
  v3 = [a1 copyXPCEncoding];
  xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], v3);

  xpc_release(v3);
}

void captureSourceServer_servedObjectRefconDestructor(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    captureSourceServer_servedObjectRefconDestructor_cold_1();
  }

  CFRetain(v2);
  v51[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v2, 0x1F21A1970, v3, v51);
    v5 = v51[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v50 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v2, 0x1F21A16D0, v3, &v50);
  }

  v8 = [v50 BOOLValue];

  *&v9 = -1;
  *(&v9 + 1) = -1;
  v37 = v9;
  v38 = v9;
  xpc_connection_get_audit_token();
  if (!FigSimpleMutexLock())
  {
    if (v6)
    {
LABEL_13:
      if (CFArrayGetCount(sProxySourceList) >= 1)
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(sProxySourceList, v11);
          if (ValueAtIndex == v2)
          {
            CFArrayRemoveValueAtIndex(sProxySourceList, v11);
            goto LABEL_39;
          }

          if ((v6 & 1) == 0)
          {
            v13 = ValueAtIndex;
            if (FigCaptureSourceProxyRealSourceEqualsSource(ValueAtIndex, v2))
            {
              break;
            }
          }

          if (++v11 >= CFArrayGetCount(sProxySourceList))
          {
            goto LABEL_39;
          }
        }

        FigCaptureSourceProxyDetachFromRealSource(v13);
      }

LABEL_39:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"sSourceList(%d)", CFArrayGetCount(sSourceList)];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"sPrewarmingSourceList(%d)", objc_msgSend(sPrewarmingSourceList, "count")];
      FigSimpleMutexUnlock();
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_40:
      if (v2)
      {
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v22)
        {
          v22(v2);
        }
      }

      goto LABEL_43;
    }

    if (CFArrayGetCount(sSourceList) < 1)
    {
      goto LABEL_39;
    }

    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(sSourceList, v14);
      if (v15 == v2)
      {
        break;
      }

      if (++v14 >= CFArrayGetCount(sSourceList))
      {
        goto LABEL_39;
      }
    }

    v16 = v15;
    v49 = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, 0x1F21A1990, v3, &v49);
      v18 = v49;
    }

    else
    {
      v18 = 0;
    }

    v36 = [v18 BOOLValue];
    if (v8)
    {
      v48 = 0;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v16, 0x1F21863F0, v3, &v48);
        v20 = v48;
      }

      else
      {
        v20 = 0;
      }

      *&v21 = -1;
      *(&v21 + 1) = -1;
      *v47 = v21;
      *&v47[16] = v21;
      [v20 getBytes:v47 length:32];
      v45 = *v47;
      v46 = *&v47[16];
      if (FigCaptureAuditTokenIsValid(&v45))
      {
        v45 = v37;
        v46 = v38;
        v44[0] = *v47;
        v44[1] = *&v47[16];
        if (!FigCaptureAuditTokensAreEqual(&v45, v44))
        {

LABEL_38:
          if (!v36)
          {
            goto LABEL_39;
          }

          goto LABEL_13;
        }
      }

      [sPrewarmingSourceList addObject:v2];
    }

    CFArrayRemoveValueAtIndex(sSourceList, v14);
    goto LABEL_38;
  }

  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_11:
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *v47 = v10;
  *&v47[16] = v10;
  xpc_connection_get_audit_token();
  v45 = *v47;
  v46 = *&v47[16];
  FigCaptureSourceDetachFromClient(v2, &v45);
LABEL_43:
  CFRelease(v2);

  if (!FigSimpleMutexLock())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = [sPrewarmingAssociatedConnectionsByObjectID allKeys];
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v40 + 1) + 8 * i);
          v29 = [sPrewarmingAssociatedConnectionsByObjectID objectForKeyedSubscript:v28];
          v30 = [sPrewarmingAssociatedSourcesByObjectID objectForKeyedSubscript:v28];
          if (v29 == *a1 && v30 == *(a1 + 8))
          {
            [sPrewarmingAssociatedSourcesByObjectID setObject:0 forKeyedSubscript:v28];
            [sPrewarmingAssociatedConnectionsByObjectID setObject:0 forKeyedSubscript:v28];
            goto LABEL_61;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v40 objects:v39 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    if (dword_1ED843FB0)
    {
      LODWORD(v45) = 0;
      LOBYTE(v44[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v45;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v44[0]))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v34 = *(a1 + 8);
        pid = xpc_connection_get_pid(*a1);
        *v47 = 136315650;
        *&v47[4] = "captureSourceServer_servedObjectRefconDestructor";
        *&v47[12] = 2048;
        *&v47[14] = v34;
        *&v47[22] = 1024;
        *&v47[24] = pid;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_61:
    FigSimpleMutexUnlock();
  }

  free(a1);
}

void __captureSourceServer_handleCopySourcesMessage_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    if (CFArrayGetCount(sSourceList) >= 1)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v2);
        v17 = 0u;
        v18 = 0u;
        captureSourceServer_clientAuditTokenForCaptureSource(ValueAtIndex, 0, &v17);
        block = v17;
        v24 = v18;
        v4 = FigCameraUsageAllowedForClient(&block) != 0;
        FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, v4);
        ++v2;
      }

      while (v2 < CFArrayGetCount(sSourceList));
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v5 = objc_opt_new();
    FigSimpleMutexLock();
    if (CFArrayGetCount(sSourceList) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(sSourceList, v6);
        *&v19 = 0;
        v17 = 0u;
        v18 = 0u;
        captureSourceServer_clientAuditTokenForCaptureSource(v7, &v19, &v17);
        block = v17;
        v24 = v18;
        PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&block);
        [v5 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];

        ++v6;
      }

      while (v6 < CFArrayGetCount(sSourceList));
    }

    FigSimpleMutexUnlock();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v5 allValues];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:&v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = 0u;
          v16 = 0u;
          [v14 getBytes:&v15 length:32];
          v25 = v15;
          v26 = v16;
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          *&v24 = __captureSourceServer_checkCameraAccessForClientAsync_block_invoke;
          *(&v24 + 1) = &__block_descriptor_64_e5_v8__0l;
          dispatch_async(sCameraAccessCheckQueue, &block);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:&v17 count:16];
      }

      while (v11);
    }
  }
}

void captureSourceServer_clientAuditTokenForCaptureSource(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *a3 = v6;
  a3[1] = v6;
  v9 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(a1, 0x1F21863F0, *MEMORY[0x1E695E480], &v9);
    v8 = v9;
    if (v9)
    {
      if (a2)
      {
        *a2 = v9;
        v8 = v9;
      }

      [v8 getBytes:a3 length:32];
    }
  }
}

uint64_t __captureSourceServer_checkCameraAccessForClientAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v2;
  HasAccessToCamera = FigCaptureClientHasAccessToCamera(&v14);
  FigSimpleMutexLock();
  if (CFArrayGetCount(sSourceList) >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v4);
      v13 = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(ValueAtIndex, 0x1F21863F0, v5, &v13);
      }

      v14 = 0u;
      v15 = 0u;
      [v13 getBytes:&v14 length:32];
      v11 = v14;
      v12 = v15;
      FigCaptureGetPIDFromAuditToken(&v11);
      v8 = *(a1 + 48);
      v11 = *(a1 + 32);
      v12 = v8;
      v10[0] = v14;
      v10[1] = v15;
      if (FigCaptureAuditTokenProcessesAreEqual(&v11, v10))
      {
        FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, HasAccessToCamera);
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(sSourceList));
  }

  return FigSimpleMutexUnlock();
}

void *__captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_block_invoke()
{
  v0 = +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
  if (!v0)
  {
    result = __captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_block_invoke_cold_1();
    goto LABEL_13;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [objc_msgSend(objc_msgSend(v0 "sourceBackings")];
  result = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!result)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v3 = result;
  v4 = 0;
  v5 = *v11;
  do
  {
    v6 = 0;
    do
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = [*(*(&v10 + 1) + 8 * v6) sensorDimensions];
      if (v7 * HIDWORD(v7) > v4)
      {
        v4 = v7 * HIDWORD(v7);
      }

      v6 = v6 + 1;
    }

    while (v3 != v6);
    result = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    v3 = result;
  }

  while (result);
  v8 = 2 * v4 / 3;
LABEL_14:
  captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_maxDataSize = v8;
  return result;
}

uint64_t __captureSourceServer_initializeStatics_block_invoke(uint64_t a1)
{
  sSourceListLock = FigSimpleMutexCreate();
  v1 = *MEMORY[0x1E695E480];
  v2 = MEMORY[0x1E695E9C0];
  sSourceList = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  sPrewarmingSourceList = objc_alloc_init(MEMORY[0x1E695DF70]);
  sProxySourceList = CFArrayCreateMutable(v1, 0, v2);
  sPrewarmingAssociatedSourcesByObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
  sPrewarmingAssociatedConnectionsByObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCameraAccessCheckQueue = FigDispatchQueueCreateWithPriority();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void FigRemoteQueueProcessAssertion_awakeClientAndRunCallback(int a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRemoteQueueProcessAssertion_awakeClientAndRunCallback_block_invoke;
  v5[3] = &unk_1E799CB90;
  v6 = a1;
  v5[4] = a2;
  dispatch_async(global_queue, v5);
}

void dfp_addBuffer(void *a1, void *a2, void *a3)
{
  v6 = [a2 err];
  if (v6)
  {
    v15 = v6;
    if (dword_1EB58DF00)
    {
      v24 = 0;
      v23 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_36;
  }

  v7 = [a3 type];
  if (v7 <= 18)
  {
    if (v7 <= 9)
    {
      if (v7 == 8)
      {
        v8 = 0;
      }

      else
      {
        if (v7 != 9)
        {
          goto LABEL_42;
        }

        v8 = 1;
      }
    }

    else
    {
      switch(v7)
      {
        case 10:
          v8 = 2;
          break;
        case 11:
          v8 = 3;
          break;
        case 12:
          v8 = 4;
          break;
        default:
          goto LABEL_42;
      }
    }
  }

  else if (v7 > 23)
  {
    switch(v7)
    {
      case 24:
        v8 = 7;
        break;
      case 25:
        v8 = 9;
        break;
      case 27:
        v8 = 6;
        break;
      default:
        goto LABEL_42;
    }
  }

  else
  {
    switch(v7)
    {
      case 19:
        return;
      case 22:
        v8 = 8;
        break;
      case 23:
        v8 = 5;
        break;
      default:
        goto LABEL_42;
    }
  }

  v9 = [a2 expectedBufferTypes];
  if (([v9 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(a3, "type"))}] & 1) == 0)
  {
LABEL_42:
    v24 = 0;
    v23 = 0;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = 4294954516;
LABEL_36:
    if (![a2 err])
    {
      [a2 setErr:v15];
    }

    return;
  }

  if (dword_1EB58DF00)
  {
    v24 = 0;
    v23 = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [a3 buffer];
  v12 = *off_1E798A0B8;
  v13 = CVBufferCopyAttachment(v11, *off_1E798A0B8, 0);
  if (v13)
  {
    v14 = [a1 addInputResource:v13 type:v8];
  }

  else if ([a3 lscGainMap] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [a1 addBuffer:objc_msgSend(a3 metadata:"buffer") type:objc_msgSend(a3 lscGainMap:"metadata") lscGainMapParameters:{v8, objc_msgSend(a3, "lscGainMap"), objc_msgSend(a3, "lscGainMapParameters")}];
  }

  else
  {
    v14 = [a1 addBuffer:objc_msgSend(a3 metadata:"buffer") type:{objc_msgSend(a3, "metadata"), v8}];
  }

  v15 = v14;

  CVBufferRemoveAttachment([a3 buffer], v12);
  if (v15)
  {
    goto LABEL_36;
  }
}

double __dfp_createStateMachine_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    if (dword_1EB58DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

__CFString *BWSmartFramingSceneMonitorFieldOfViewKeyFromType(int a1)
{
  result = @"None";
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_Portrait;
    }

    else
    {
      v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_None;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_ZoomedOutPortrait;
        break;
      case 3:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_Landscape;
        break;
      case 4:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_ZoomedOutLandscape;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

double sfsm_unpackFaceRectAndAdjustWithExpansionScaleFactor(uint64_t a1, double a2)
{
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 16);
  FigCFDictionaryGetCGRectIfPresent();
  v5 = FigCaptureMetadataUtilitiesScaleRect(*&v12, *(&v12 + 1), *&v13, *(&v13 + 1), a2, v3);
  if (v4 <= 1.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = fmax(v6, 0.0);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 1.0;
  v15.size.height = 1.0;
  v9 = CGRectGetMaxX(v15) - v7;
  if (v9 >= v5)
  {
    v9 = v5;
  }

  if (MinX >= v9)
  {
    v10 = MinX;
  }

  else
  {
    v10 = v9;
  }

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 1.0;
  v16.size.height = 1.0;
  CGRectGetMinY(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 1.0;
  v17.size.height = 1.0;
  CGRectGetMaxY(v17);
  return v10;
}

uint64_t BWSmartFramingSceneMonitorFieldOfViewTypeFromKey(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"FieldOfViewPortrait"))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  return 0;
}

uint64_t BWSmartFramingSceneMonitorAspectRatioFromFieldOfView(int a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 == 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (a1 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 <= 2)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t BWSmartFramingSceneMonitorGetFieldOfView(int a1, int a2, void *a3, double a4)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v23;
  if (a2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (a2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

LABEL_8:
  v14 = 0;
  while (1)
  {
    if (*v23 != v11)
    {
      objc_enumerationMutation(a3);
    }

    v15 = *(*(&v22 + 1) + 8 * v14);
    v16 = BWSmartFramingSceneMonitorFieldOfViewTypeFromKey(v15, v9);
    v17 = v16;
    if (v16 > 2)
    {
      v18 = v12;
      if (v16 != 3)
      {
        v18 = 0;
        if (v16 == 4)
        {
          v18 = v12;
        }
      }
    }

    else
    {
      v18 = v13;
      if (v16 != 1)
      {
        v18 = 0;
        if (v16 == 2)
        {
          v18 = v13;
        }
      }
    }

    if (v18 == a1)
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{v15), "doubleValue"}];
      if (vabdd_f64(a4, v19) < 0.0001)
      {
        return v17;
      }
    }

    if (v10 == ++v14)
    {
      v10 = [a3 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v10)
      {
        goto LABEL_8;
      }

      return 0;
    }
  }
}

CGFloat BWSmartFramingSceneMonitorNormalizedFieldOfViewRectFromFieldOfView(int a1, void *a2, int a3)
{
  [objc_msgSend(a2 objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(a1)), "doubleValue"}];
  v6 = v5;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a1 == 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a1 != 3)
  {
    v7 = v8;
  }

  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (a1 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a1 != 1)
  {
    v9 = v10;
  }

  if (a1 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = BWAspectRatioValueFromAspectRatio(v11);
  v13 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(1.0, 1.0, v12);

  return FigCaptureMetadataUtilitiesScaleRect(v13, v14, v15, v16, 1.0 / v6, v17);
}

uint64_t FigExternalSyncDeviceDiscoverySessionCreate(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v10 = 0;
  FigCaptureSourceGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  v6 = v5;
  if (v5)
  {
    FigExternalSyncDeviceDiscoverySessionCreate_cold_1(v5, &v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = a2[1];
    *(DerivedStorage + 4) = *a2;
    *(DerivedStorage + 20) = v8;
    *(DerivedStorage + 40) = [[FigExternalSyncDeviceDiscoverySessionDelegateHandler alloc] initWithSource:v10];
    *(DerivedStorage + 48) = FigDispatchQueueCreateWithPriority();
    *a3 = v10;
  }

  return v6;
}

void __externalSyncDeviceDiscoverySession_postNotificationWithPayload_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
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

uint64_t externalSyncDeviceDiscoverySession_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    [*(DerivedStorage + 40) forceCleanup];
    *v2 = 1;

    *(v2 + 40) = 0;
    v3 = *(v2 + 48);
    if (v3)
    {
      dispatch_release(v3);
      *(v2 + 48) = 0;
    }
  }

  return 0;
}

__CFString *externalSyncDeviceDiscoverySession_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigExternalSyncDevice %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t externalSyncDeviceDiscoverySession_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigExternalSyncDeviceDiscoverySession >>>>", 0xBA, v9, v13, v14, a9);
  }

  else
  {
    if (CFEqual(a2, @"CurrentExternalSyncDevices"))
    {
      v16 = [+[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager](FigExternalSyncDeviceDiscoverySessionManager "sharedFigExternalSyncDeviceDiscoverySessionManager")];
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v24 + 1) + 8 * i);
            [v17 setObject:objc_msgSend(v22 forKey:{"getDeviceInfoDict"), objc_msgSend(v22, "externalSyncDeviceDeviceIdentifer")}];
            [v17 setObject:objc_msgSend(v22 forKeyedSubscript:{"getDeviceInfoDict"), objc_msgSend(v22, "externalSyncDeviceDeviceIdentifer")}];
          }

          v19 = [v16 countByEnumeratingWithState:&v24 objects:v23 count:16];
        }

        while (v19);
      }

      *a4 = v17;
    }

    return 0;
  }
}

uint64_t externalSyncDeviceDiscoverySession_SetProperty()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

void *BWOverlaidRectangleDrawRectanglesInBitmapContext(void *a1, CGContext *a2, __CVBuffer *a3)
{
  v4 = a1;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  result = [a1 countByEnumeratingWithState:&v98 objects:v97 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v99;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v85 = *(MEMORY[0x1E695F060] + 8);
    v86 = *MEMORY[0x1E695F060];
    __asm { FMOV            V0.2D, #1.0 }

    v83 = _Q0;
    v82 = xmmword_1AD056CC0;
    v91 = *v99;
    v92 = v4;
    v89 = v9;
    v90 = *MEMORY[0x1E695F058];
    v87 = v11;
    v88 = v10;
    do
    {
      v16 = 0;
      do
      {
        if (*v99 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v17 = *(*(&v98 + 1) + 8 * v16);
        [v17 bounds];
        x = v107.origin.x;
        y = v107.origin.y;
        width = v107.size.width;
        height = v107.size.height;
        if (!CGRectIsNull(v107))
        {
          v108.origin.x = x;
          v108.origin.y = y;
          v108.size.width = width;
          v108.size.height = height;
          v125.origin.x = v8;
          v125.origin.y = v9;
          v125.size.width = v10;
          v125.size.height = v11;
          if (!CGRectEqualToRect(v108, v125))
          {
            v22 = [v17 displayStyle];
            v23 = [v17 displayStyle];
            v24 = [v17 displayStyle];
            if (v24 == 4)
            {
              DeviceGray = CGColorSpaceCreateDeviceGray();
              components.a = 0.0;
              goto LABEL_11;
            }

            y = CGBitmapContextGetHeight(a2) - y - height;
            DeviceGray = CGColorSpaceCreateDeviceGray();
            components.a = 0.0;
            if (v23 == 3)
            {
LABEL_11:
              v26 = 1;
              v27 = 0.0;
              v29 = v85;
              v28 = v86;
            }

            else
            {
              [objc_msgSend(v17 "rampAnimation")];
              v26 = 0;
              v27 = v30;
              v29 = -1.0;
              v28 = 1.0;
            }

            components.b = v27;
            v31 = CGColorCreate(DeviceGray, &components.a);
            v106.width = v28;
            v106.height = v29;
            CGContextSetShadowWithColor(a2, v106, 0.0, v31);
            if (v31)
            {
              CFRelease(v31);
            }

            components.a = 0.04;
            v32 = 0.0;
            if ((v26 & 1) == 0)
            {
              if (v22 == 2)
              {
                v33 = 0.1;
              }

              else
              {
                v33 = 0.125;
              }

              [objc_msgSend(v17 "rampAnimation")];
              v32 = v33 * v34;
            }

            components.b = v32;
            v35 = CGColorCreate(DeviceGray, &components.a);
            v36 = 0.96;
            if (v22 == 2)
            {
              v36 = 1.0;
            }

            v104.a = v36;
            [objc_msgSend(v17 "rampAnimation")];
            v104.b = v37 * 0.94;
            if (v23 == 3 || v24 == 4)
            {
              v38 = vdup_n_s32(v23 == 3);
              v39.i64[0] = v38.u32[0];
              v39.i64[1] = v38.u32[1];
              *&v104.a = vbslq_s8(vcltzq_s64(vshlq_n_s64(v39, 0x3FuLL)), v82, v83);
            }

            v40 = CGColorCreate(DeviceGray, &v104.a);
            CGContextSetFillColorWithColor(a2, v35);
            CGContextSetStrokeColorWithColor(a2, v40);
            if (v35)
            {
              CFRelease(v35);
            }

            if (v40)
            {
              CFRelease(v40);
            }

            if (DeviceGray)
            {
              CFRelease(DeviceGray);
            }

            v41 = CGBitmapContextGetWidth(a2);
            if (v41 >= CGBitmapContextGetHeight(a2))
            {
              v42 = CGBitmapContextGetHeight(a2);
            }

            else
            {
              v42 = CGBitmapContextGetWidth(a2);
            }

            v43 = 7.0;
            if (v42 < 0x438)
            {
              v43 = 5.0;
            }

            if (v22 != 2)
            {
              v43 = 3.0;
            }

            if (v24 == 4)
            {
              v43 = 4.0;
            }

            if (v23 == 3)
            {
              v44 = 3.0;
            }

            else
            {
              v44 = v43;
            }

            CGContextSetLineWidth(a2, v44);
            if (width >= height)
            {
              v45 = height;
            }

            else
            {
              v45 = width;
            }

            v96 = v45;
            v46 = [v17 animationState] == 0;
            if (v22 == 2)
            {
              v46 = [v17 animationState] == 0;
              v47 = &unk_1AD056CB0;
            }

            else
            {
              v47 = &unk_1AD056CA8;
            }

            v48 = v47[v46];
            [objc_msgSend(v17 "rampAnimation")];
            v50 = v48 + (1.0 - v48) * v49;
            if (v23 == 3)
            {
              v51 = 1.0;
            }

            else
            {
              v51 = v50;
            }

            if (v51 != 1.0)
            {
              v109.origin.x = x;
              v109.origin.y = y;
              v109.size.width = width;
              v109.size.height = height;
              MidX = CGRectGetMidX(v109);
              v110.origin.x = x;
              v110.origin.y = y;
              v110.size.width = width;
              v110.size.height = height;
              MidY = CGRectGetMidY(v110);
              v95 = *(MEMORY[0x1E695EFD0] + 16);
              *&components.a = *MEMORY[0x1E695EFD0];
              v94 = *&components.a;
              *&components.c = v95;
              *&components.tx = *(MEMORY[0x1E695EFD0] + 32);
              v93 = *&components.tx;
              CGAffineTransformMakeTranslation(&v104, -MidX, -MidY);
              *&t1.a = v94;
              *&t1.c = v95;
              *&t1.tx = v93;
              CGAffineTransformConcat(&components, &t1, &v104);
              CGAffineTransformMakeScale(&t1, v51, v51);
              v102 = components;
              CGAffineTransformConcat(&v104, &v102, &t1);
              components = v104;
              CGAffineTransformMakeTranslation(&t1, MidX, MidY);
              v102 = components;
              CGAffineTransformConcat(&v104, &v102, &t1);
              components = v104;
              v111.origin.x = x;
              v111.origin.y = y;
              v111.size.width = width;
              v111.size.height = height;
              v112 = CGRectApplyAffineTransform(v111, &v104);
              x = v112.origin.x;
              y = v112.origin.y;
              width = v112.size.width;
              height = v112.size.height;
            }

            v113.origin.x = x;
            v113.origin.y = y;
            v113.size.width = width;
            v113.size.height = height;
            v114 = CGRectInset(v113, v44 * -0.5, v44 * -0.5);
            v54 = v114.origin.x;
            v55 = v114.origin.y;
            v56 = v114.size.width;
            v57 = v114.size.height;
            [objc_msgSend(v17 "rampAnimation")];
            if (v58 == 1.0)
            {
              v115.origin.x = v54;
              v115.origin.y = v55;
              v115.size.width = v56;
              v115.size.height = v57;
              v116 = CGRectIntegral(v115);
              v54 = v116.origin.x;
              v55 = v116.origin.y;
              v56 = v116.size.width;
              v57 = v116.size.height;
            }

            _ZF = v23 == 3 || v22 == 2;
            v60 = 7.0;
            if (!_ZF)
            {
              v60 = 24.0;
            }

            if (v23 == 3)
            {
              v60 = 1.6;
            }

            v61 = v60 * v51;
            if (v96 >= v61 + v61)
            {
              v62 = v61;
            }

            else
            {
              v62 = v96 * 0.5;
            }

            v117.origin.x = v54;
            v117.origin.y = v55;
            v117.size.width = v56;
            v117.size.height = v57;
            v63 = CGPathCreateWithRoundedRect(v117, v62, v62, 0);
            v64 = v63;
            if (v24 == 4)
            {
              v11 = v87;
              if (v63)
              {
                CFRelease(v63);
              }

              v118.origin.x = v54;
              v118.origin.y = v55;
              v118.size.width = v56;
              v118.size.height = v57;
              v64 = CGPathCreateWithRect(v118, 0);
            }

            else
            {
              v11 = v87;
            }

            CGContextBeginPath(a2);
            CGContextAddPath(a2, v64);
            if (v24 == 4)
            {
              v65.f64[0] = v55;
              v66 = FigCaptureMetadataUtilitiesRoundRectToEvenCoordinatesPreservingSquareness(1u, v54, v65, v56, v57, 0.0);
              v68 = v67;
              v70 = v69;
              v72 = v71;
              FigDraw420Rectangle(a3, v66, v67, v69, v71, 208, 58, 153);
              v119.origin.x = v66;
              v119.origin.y = v68;
              v119.size.width = v70;
              v119.size.height = v72;
              v120 = CGRectInset(v119, 1.0, 1.0);
              v73 = v120.origin.x;
              v74 = v120.origin.y;
              v75 = v120.size.width;
              v76 = v120.size.height;
              FigDraw420Rectangle(a3, v120.origin.x, v120.origin.y, v120.size.width, v120.size.height, 208, 58, 153);
              v121.origin.x = v73;
              v121.origin.y = v74;
              v121.size.width = v75;
              v121.size.height = v76;
              v122 = CGRectInset(v121, 1.0, 1.0);
              v77 = v122.origin.x;
              v78 = v122.origin.y;
              v79 = v122.size.width;
              v80 = v122.size.height;
              FigDraw420Rectangle(a3, v122.origin.x, v122.origin.y, v122.size.width, v122.size.height, 208, 58, 153);
              v123.origin.x = v77;
              v123.origin.y = v78;
              v123.size.width = v79;
              v123.size.height = v80;
              v124 = CGRectInset(v123, 1.0, 1.0);
              FigDraw420Rectangle(a3, v124.origin.x, v124.origin.y, v124.size.width, v124.size.height, 208, 58, 153);
            }

            else
            {
              if (v23 == 3)
              {
                v81 = kCGPathStroke;
              }

              else
              {
                v81 = kCGPathFillStroke;
              }

              CGContextDrawPath(a2, v81);
            }

            v7 = v91;
            v4 = v92;
            v9 = v89;
            v8 = v90;
            v10 = v88;
            CGContextResetClip(a2);
            if (v64)
            {
              CFRelease(v64);
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v6 != v16);
      result = [v4 countByEnumeratingWithState:&v98 objects:v97 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t fillGDCParametersFromDistortionModels(float64x2_t *a1, double *a2, uint64_t a3, float a4, float a5)
{
  *&v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (!a1)
  {
    fillGDCParametersFromDistortionModels_cold_3(0, a2, a3, a4, a5);
    return 4294954516;
  }

  if (!a2)
  {
    fillGDCParametersFromDistortionModels_cold_2(a4, a5);
    return 4294954516;
  }

  if (!a3)
  {
    fillGDCParametersFromDistortionModels_cold_1(a4, a5);
    return 4294954516;
  }

  *&v31 = vcvt_f32_f64(a1[1]);
  *&v32 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = a1->f64[0];
  v6 = a1->f64[1];
  v7 = a1->f64[0];
  v8 = v6;
  *(&v32 + 2) = v7;
  *(&v40 + 1) = v8;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  *(&v41 + 1) = a4;
  v42 = a5;
  v9 = a2 + 12;
  v10 = a1 + 6;
  v11 = vdupq_lane_s64(COERCE__INT64(a2[1] * *a2), 0);
  v12 = vdupq_lane_s64(COERCE__INT64(v5 * v6), 0);
  for (i = 32; i != 64; i += 8)
  {
    v14 = *(v9 - 8);
    v15 = *v9;
    v9 += 2;
    v16 = (&v27 + i);
    v16[-4] = vcvt_f32_f64(vmlaq_f64(v14, v15, v11));
    v17 = v10[-4];
    v18 = *v10++;
    *v16 = vcvt_f32_f64(vmlaq_f64(v17, v18, v12));
  }

  result = 0;
  *(a3 + 240) = v42;
  v20 = v40;
  *(a3 + 192) = v39;
  *(a3 + 208) = v20;
  *(a3 + 224) = v41;
  v21 = v36;
  *(a3 + 128) = v35;
  *(a3 + 144) = v21;
  v22 = v38;
  *(a3 + 160) = v37;
  *(a3 + 176) = v22;
  v23 = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v23;
  v24 = v34;
  *(a3 + 96) = v33;
  *(a3 + 112) = v24;
  v25 = v28;
  *a3 = v27;
  *(a3 + 16) = v25;
  v26 = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = v26;
  return result;
}

uint64_t MediaAnalysisLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = MediaAnalysisLibraryCore_frameworkLibrary;
  v6 = MediaAnalysisLibraryCore_frameworkLibrary;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E799D510;
    v8 = *off_1E799D520;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MediaAnalysisLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1ACC3F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaAnalysisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaAnalysisLibrary()
{
  v3 = 0;
  v0 = MediaAnalysisLibraryCore(&v3);
  if (!v0)
  {
    MediaAnalysisLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getVCPCaptureAnalysisSessionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__43;
  v0 = getVCPCaptureAnalysisSessionClass_softClass;
  v7 = __Block_byref_object_dispose__43;
  v8 = getVCPCaptureAnalysisSessionClass_softClass;
  if (!getVCPCaptureAnalysisSessionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVCPCaptureAnalysisSessionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVCPCaptureAnalysisSessionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC3F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPCaptureAnalysisSessionClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPCaptureAnalysisSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVCPCaptureAnalysisSessionClass_block_invoke_cold_1();
  }

  getVCPCaptureAnalysisSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisDispatchQueuePropertyKey");
    getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC3F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisDispatchQueuePropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVCPCaptureAnalysisDispatchQueuePropertyKey()
{
  VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc();
  if (!VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc)
  {
    getVCPCaptureAnalysisDispatchQueuePropertyKey_cold_1();
  }

  return *VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc;
}

void *__getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisSubjectMotionScoreKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisMotionDivScoreKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigFlatDictionaryGetMakerNoteKeySpace(uint64_t a1, uint64_t a2)
{
  if (sKeySpaceRegisterOnceToken != -1)
  {
    FigFlatDictionaryGetMakerNoteKeySpace_cold_1();
  }

  return sMetadataKeySpace;
}

uint64_t fdek_registerKeySpaceAndPredefinedMetadataKeys()
{
  v0 = 0;
  sMetadataKeySpace = FigFlatDictionaryKeySpaceRegister(0x5Fu, 1702391150);
  do
  {
    result = FigFlatDictionaryKeyRegisterExistingKey(sMetadataKeySpace, *(&FigFlatDictionaryMakerNoteKeys + v0));
    v0 += 8;
  }

  while (v0 != 760);
  return result;
}

uint64_t FigExternalStorageDeviceManagerRemoteCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = remoteExternalStorageDeviceManagerClient_EnsureClientEstablished();
  if (v4)
  {
    v15 = v4;
    FigExternalStorageDeviceManagerRemoteCreate_cold_1(v4, v5);
  }

  else
  {
    FigExternalStorageDeviceManagerGetClassID();
    v6 = CMDerivedObjectCreate();
    if (v6)
    {
      v15 = v6;
      FigExternalStorageDeviceManagerRemoteCreate_cold_2(v6, v7);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v9 = DerivedStorage;
        *DerivedStorage = FigSimpleMutexCreate();
        v10 = FigXPCCreateBasicMessage();
        if (v10)
        {
          v15 = v10;
          FigExternalStorageDeviceManagerRemoteCreate_cold_3(v10, v11);
        }

        else
        {
          v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (v12)
          {
            v15 = v12;
            FigExternalStorageDeviceManagerRemoteCreate_cold_4(v12, v13);
          }

          else
          {
            v9[1] = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
            v14 = FigXPCRemoteClientAssociateObject();
            v15 = v14;
            if (v14)
            {
              FigExternalStorageDeviceManagerRemoteCreate_cold_5(v14);
            }

            else
            {
              *a3 = 0;
            }
          }
        }
      }

      else
      {
        FigExternalStorageDeviceManagerRemoteCreate_cold_6(&v17);
        v15 = v17;
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t remoteExternalStorageDeviceManagerClient_EnsureClientEstablished()
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  block = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke;
  v11 = &unk_1E798FC38;
  v12 = &v13;
  if (remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_gFigExternalStorageDeviceManagerRemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_gFigExternalStorageDeviceManagerRemoteClientSetupOnce, &block);
  }

  if (gFigExternalStorageDeviceManagerRemoteClient)
  {
    v1 = *(v14 + 6);
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v0, v7, block, v9, v10, v11, v12);
    emitter = fig_log_get_emitter();
    v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB4B7, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0xC0, v0, v4, v5, v6);
    *(v14 + 6) = v1;
  }

  _Block_object_dispose(&v13, 8);
  return v1;
}

uint64_t FigExternalStorageDeviceManagerRemoteSupported()
{
  if (!remoteExternalStorageDeviceManagerClient_EnsureClientEstablished())
  {
    return 1;
  }

  FigExternalStorageDeviceManagerRemoteSupported_cold_1();
  return 0;
}

uint64_t remoteExternalStorageDeviceManagerClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_handleServerMessage(uint64_t a1, uint64_t a2)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    OpCode = FigXPCMessageGetOpCode();
    if (OpCode)
    {
      v3 = OpCode;
      remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_1();
    }

    else
    {
      return 4294948025;
    }
  }

  else
  {
    remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_7(&cf);
    return cf;
  }

  return v3;
}

uint64_t remoteFigExternalStorageDeviceManager_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    remoteFigExternalStorageDeviceManager_Finalize_cold_3(&v6);
    goto LABEL_6;
  }

  v2 = DerivedStorage;
  FigXPCRemoteClientDisassociateObject();
  FigSimpleMutexLock();
  if (!*(v2 + 16))
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      remoteFigExternalStorageDeviceManager_Finalize_cold_1(v3);
    }

    else
    {
      v4 = FigXPCRemoteClientSendAsyncMessage();
      if (!v4)
      {
        goto LABEL_5;
      }

      remoteFigExternalStorageDeviceManager_Finalize_cold_2(v4);
    }

    FigSimpleMutexUnlock();
    goto LABEL_6;
  }

LABEL_5:
  _Block_release(*(v2 + 40));
  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  return FigXPCRelease();
}

__CFString *remoteFigExternalStorageDeviceManager_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = CFGetRetainCount(a1);
    v7 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, 0, @"<FigExternalStorageDeviceManagerRemote %p retainCount: %ld allocator: %p objectID %016llx", a1, v6, v7, *(v3 + 8));
  }

  else
  {
    remoteFigExternalStorageDeviceManager_CopyDebugDescription_cold_1();
    return 0;
  }

  return Mutable;
}

uint64_t remoteFigExternalStorageDeviceManager_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  if (!a2)
  {
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_4(&v9);
LABEL_9:
    v6 = v9;
    goto LABEL_6;
  }

  if (!a4)
  {
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_3(&v9);
    goto LABEL_9;
  }

  *a4 = 0;
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    v6 = ObjectID;
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_1(ObjectID);
  }

  else
  {
    v5 = FigXPCSendStdCopyPropertyMessage();
    v6 = v5;
    if (v5)
    {
      remoteFigExternalStorageDeviceManager_CopyProperty_cold_2(v5);
    }
  }

LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t remoteExternalStorageDeviceManagerClient_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a1)
    {
      v5 = DerivedStorage;
      if (*(DerivedStorage + 16))
      {
        remoteExternalStorageDeviceManagerClient_GetObjectID_cold_1(&v7);
        return v7;
      }

      else
      {
        result = 0;
        *a2 = *(v5 + 8);
      }
    }

    else
    {
      remoteExternalStorageDeviceManagerClient_GetObjectID_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    remoteExternalStorageDeviceManagerClient_GetObjectID_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_beginMonitoring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    *(v8 + 24) = a4;
    *(v8 + 32) = a3;
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v14);
    if (ObjectID)
    {
      v12 = ObjectID;
      remoteFigExternalStorageDeviceManager_beginMonitoring_cold_1();
    }

    else
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        v12 = v10;
        remoteFigExternalStorageDeviceManager_beginMonitoring_cold_2();
      }

      else
      {
        v11 = FigXPCRemoteClientSendSyncMessage();
        v12 = v11;
        if (v11)
        {
          remoteFigExternalStorageDeviceManager_beginMonitoring_cold_3(v11);
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_beginMonitoring_cold_4(&v15);
    v12 = v15;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v12;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v17);
    if (ObjectID)
    {
      v15 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_1(ObjectID, v7, v8);
    }

    else
    {
      v9 = FigXPCCreateBasicMessage();
      if (v9)
      {
        v15 = v9;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_2(v9, v10);
      }

      else
      {
        v11 = FigXPCMessageSetCFString();
        if (v11)
        {
          v15 = v11;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_3(v11);
        }

        else
        {
          v12 = FigXPCMessageSetCFArray();
          if (v12)
          {
            v15 = v12;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_4(v12);
          }

          else
          {
            v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v13)
            {
              v15 = v13;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_5(v13);
            }

            else
            {
              v14 = FigXPCMessageCopyCFArray();
              v15 = v14;
              if (v14)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_6(v14);
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_7(&v18);
    v15 = v18;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v17);
    if (ObjectID)
    {
      v15 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1(ObjectID, v7, v8);
    }

    else
    {
      v9 = FigXPCCreateBasicMessage();
      if (v9)
      {
        v15 = v9;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2(v9, v10);
      }

      else
      {
        v11 = FigXPCMessageSetCFString();
        if (v11)
        {
          v15 = v11;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3(v11);
        }

        else
        {
          v12 = FigXPCMessageSetCFArray();
          if (v12)
          {
            v15 = v12;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4(v12);
          }

          else
          {
            v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v13)
            {
              v15 = v13;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_5(v13);
            }

            else
            {
              v14 = FigXPCMessageCopyCFArray();
              v15 = v14;
              if (v14)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(v14);
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(&v18);
    v15 = v18;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v17);
    if (ObjectID)
    {
      v15 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_1(ObjectID, v7, v8);
    }

    else
    {
      v9 = FigXPCCreateBasicMessage();
      if (v9)
      {
        v15 = v9;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_2(v9, v10);
      }

      else
      {
        v11 = FigXPCMessageSetCFString();
        if (v11)
        {
          v15 = v11;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_3(v11);
        }

        else
        {
          v12 = FigXPCMessageSetCFString();
          if (v12)
          {
            v15 = v12;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_4(v12);
          }

          else
          {
            v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v13)
            {
              v15 = v13;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_5(v13);
            }

            else
            {
              v14 = FigXPCMessageCopyCFObject();
              v15 = v14;
              if (v14)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_6(v14);
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_7(&v18);
    v15 = v18;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t remoteFigExternalStorageDeviceManager_checkAuthorizationStatus(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_6(&v12);
LABEL_12:
    v9 = v12;
    goto LABEL_9;
  }

  if (!a3)
  {
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_5(&v12);
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v9 = ObjectID;
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_1();
  }

  else
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6)
    {
      v9 = v6;
      remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_2();
    }

    else
    {
      v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v7)
      {
        v9 = v7;
        remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_3();
      }

      else
      {
        v8 = FigXPCMessageCopyCFNumber();
        v9 = v8;
        if (v8)
        {
          remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_4(v8);
        }

        else
        {
          *a3 = FigCFNumberGetSInt32();
        }
      }
    }
  }

  FigSimpleMutexUnlock();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t remoteFigExternalStorageDeviceManager_requestAuthorization(uint64_t a1, uint64_t a2, const void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_5(&v13);
LABEL_11:
    v10 = v13;
    goto LABEL_8;
  }

  if (!a3)
  {
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_4(&v13);
    goto LABEL_11;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  *(v6 + 40) = _Block_copy(a3);
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v10 = ObjectID;
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_1();
  }

  else
  {
    v8 = FigXPCCreateBasicMessage();
    if (v8)
    {
      v10 = v8;
      remoteFigExternalStorageDeviceManager_requestAuthorization_cold_2();
    }

    else
    {
      v9 = FigXPCRemoteClientSendSyncMessage();
      v10 = v9;
      if (v9)
      {
        remoteFigExternalStorageDeviceManager_requestAuthorization_cold_3(v9);
      }
    }
  }

  FigSimpleMutexUnlock();
LABEL_8:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t localQueueRegister()
{
  sLocalQueueClass = 0;
  unk_1EB590830 = "FigLocalQueue";
  qword_1EB590838 = localQueueInit;
  unk_1EB590840 = 0;
  qword_1EB590848 = localQueueFinalize;
  unk_1EB590850 = 0;
  qword_1EB590858 = 0;
  unk_1EB590860 = 0;
  qword_1EB590868 = localQueueCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sLocalQueueID = result;
  return result;
}

uint64_t FigLocalQueueCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x1B26F02D0](&FigLocalQueueGetTypeID_registerOnce, localQueueRegister);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = FigSimpleMutexCreate();
      v5[2] = v6;
      if (v6)
      {
        v7 = FigDispatchQueueCreateWithPriority();
        v5[3] = v7;
        if (v7)
        {
          result = 0;
          *a3 = v5;
          return result;
        }

        FigLocalQueueCreate_cold_1();
      }

      else
      {
        FigLocalQueueCreate_cold_2();
      }

      CFRelease(v5);
    }

    else
    {
      FigLocalQueueCreate_cold_3();
    }

    return 4294949966;
  }

  else
  {
    FigLocalQueueCreate_cold_4(a1, a2);
    return 4294949967;
  }
}

uint64_t FigLocalQueueEnqueue(void *a1, int *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a1[5])
  {
    goto LABEL_16;
  }

  v6 = *a2;
  if (*a2 == 3 || v6 == 6)
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (v6 == 5)
  {
    v8 = 3;
LABEL_10:
    v9 = *&a2[v8];
    if (v9)
    {
      CFRetain(*&a2[v8]);
    }

    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  CFRetain(a1);
  v10 = a1[4];
  if (!v10)
  {
    v10 = a1[3];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __FigLocalQueueEnqueue_block_invoke;
  v12[3] = &unk_1E799DB60;
  v12[4] = a3;
  v12[5] = a1;
  v13 = *a2;
  v14 = a2[4];
  v12[6] = v9;
  dispatch_async(v10, v12);
LABEL_16:
  FigSimpleMutexUnlock();
  return 0;
}

void __FigLocalQueueEnqueue_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);
      v8 = *(a1 + 56);
      v9 = *(a1 + 72);
      v4(v3, &v8);
    }

    else
    {
      v5 = *(v2 + 16);
      v8 = *(a1 + 56);
      v9 = *(a1 + 72);
      v5(v2, &v8);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t FigLocalQueueSetReceiverHandler(void *a1, NSObject *a2, const void *a3)
{
  FigSimpleMutexLock();
  v6 = a1[4];
  if (v6)
  {
    dispatch_release(v6);
    a1[4] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    _Block_release(v7);
    a1[5] = 0;
  }

  if (a3)
  {
    a1[5] = _Block_copy(a3);
  }

  if (a2)
  {
    dispatch_retain(a2);
    a1[4] = a2;
  }

  return FigSimpleMutexUnlock();
}

double localQueueInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t localQueueFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t FigCaptureDeferredContainerManagerServerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = 1;
  v7[1] = captureDeferredContainerManager_handleReplyMessage;
  v7[2] = captureDeferredContainerManager_handleNoReplyMessage;
  memset(&v7[3], 0, 24);
  if (captureDeferredContainerManager_initializeStatics_onceToken != -1)
  {
    FigCaptureDeferredContainerManagerServerStart_cold_1();
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capture.deferred.containermanager.xpc", v7, 0, &FigCaptureDeferredContainerManagerServerStart_sContainerManagerServer);
}

uint64_t captureDeferredContainerManager_handleReplyMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v4 = OpCode;
    captureDeferredContainerManager_handleReplyMessage_cold_1();
  }

  else
  {
    v4 = 4294951138;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v4;
}

uint64_t captureDeferredContainerManager_handleNoReplyMessage(uint64_t a1, uint64_t a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v3 = OpCode;
    captureDeferredContainerManager_handleNoReplyMessage_cold_1();
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 4294954514;
  }

  return v3;
}

uint64_t captureDeferredContainerManager_getAndRetainContainerObjectFromMessage(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    v5 = v3;
    captureDeferredContainerManager_getAndRetainContainerObjectFromMessage_cold_1();
  }

  else
  {
    captureDeferredContainerManager_getAndRetainContainerObjectFromMessage_cold_3();
    return 4294954513;
  }

  return v5;
}

uint64_t captureDeferredContainerManager_serializeNotification(int a1, int a2, int a3, CFDictionaryRef theDict, uint64_t a5, uint64_t a6)
{
  v7 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(v7, Count, theDict);
  if (FigXPCMessageSetCFDictionary())
  {
    captureDeferredContainerManager_serializeNotification_cold_1();
    v10 = 1;
    if (!MutableCopy)
    {
      return v10;
    }

    goto LABEL_3;
  }

  v10 = 2;
  if (MutableCopy)
  {
LABEL_3:
    CFRelease(MutableCopy);
  }

  return v10;
}

float bwvip_boundingBoxArea(void *a1)
{
  getVNDetectedObjectObservationClass();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0.0;
  if (isKindOfClass)
  {
    [a1 boundingBox];
    v5 = v4;
    v7 = v6;
    return v5 * v7;
  }

  return result;
}

BOOL FigCapturePixelFormatIsDemosaicedRaw(_BOOL8 result)
{
  if (result)
  {
    return FigCaptureUncompressedPixelFormatForPixelFormat(result) == 1751527984;
  }

  return result;
}

uint64_t FigCapturePixelFormatIsTenBitPacked(int a1)
{
  result = 1;
  if (a1 <= 1882468913)
  {
    if (a1 <= 1651587121)
    {
      if (a1 == 645424692)
      {
        return result;
      }

      v3 = 645428788;
      goto LABEL_14;
    }

    if (a1 == 1651587122)
    {
      return result;
    }

    v4 = 12848;
    goto LABEL_13;
  }

  if (a1 <= 1885745711)
  {
    if (a1 == 1882468914)
    {
      return result;
    }

    v4 = 13364;
LABEL_13:
    v3 = v4 | 0x70340000;
LABEL_14:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1885745712 && a1 != 1885745714)
  {
    v3 = 1885746228;
    goto LABEL_14;
  }

  return result;
}

uint64_t FigCaptureUnPackedPixelFormatForPixelFormat(uint64_t a1)
{
  v1 = a1;
  if (FigCapturePixelFormatGetCompressionType(a1))
  {
    FigCaptureUnPackedPixelFormatForPixelFormat_cold_1();
  }

  else
  {
    if (v1 == 1885745714)
    {
      v2 = 2019963442;
    }

    else
    {
      v2 = v1;
    }

    if (v1 == 1885746228)
    {
      v3 = 2019963956;
    }

    else
    {
      v3 = v2;
    }

    if (v1 == 1885745712)
    {
      v4 = 2019963440;
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 1882469428)
    {
      v5 = 2016687156;
    }

    else
    {
      v5 = v1;
    }

    if (v1 == 1882468914)
    {
      v6 = 2016686642;
    }

    else
    {
      v6 = v5;
    }

    if (v1 == 1882468912)
    {
      v7 = 2016686640;
    }

    else
    {
      v7 = v6;
    }

    if (v1 <= 1885745711)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  return v1;
}

uint64_t FigCapturePreferredSlimCodecFlavorAndTilesForPixelFormat(int a1, int *a2, int *a3)
{
  result = FigCapturePlatformIdentifier();
  if (result < 12)
  {
    goto LABEL_12;
  }

  v7 = 1;
  v8 = 5;
  if (a1 <= 1651925815)
  {
    if (a1 == 1278226488 || a1 == 1278226536)
    {
      goto LABEL_13;
    }

    v9 = 1651519798;
  }

  else if (a1 > 1652056887)
  {
    if (a1 == 1652056888)
    {
      goto LABEL_13;
    }

    v9 = 1751411059;
  }

  else
  {
    if (a1 == 1651925816)
    {
      goto LABEL_13;
    }

    v9 = 1651926376;
  }

  if (a1 != v9)
  {
LABEL_12:
    v7 = 2;
    v8 = 1;
  }

LABEL_13:
  *a2 = v8;
  *a3 = v7;
  return result;
}

uint64_t FigCapturePixelFormatTypeFromPlistValue(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return BWOSTypeForString(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a1 intValue];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t FigCapturePixelFormatHasRegroupedLayoutDownscale(int a1)
{
  result = 1;
  if (a1 <= 645161783)
  {
    if (a1 == 643970664)
    {
      return result;
    }

    v3 = 643970675;
    goto LABEL_7;
  }

  if (a1 != 645161784 && a1 != 645423928)
  {
    v3 = 1651926376;
LABEL_7:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigCapturePixelFormatHasRegroupedLayout(int a1)
{
  result = 1;
  if (a1 > 645161783)
  {
    if (a1 != 645161784 && a1 != 645423928)
    {
      v3 = 1651926376;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 642527336 && a1 != 643970664)
  {
    v3 = 643970675;
    goto LABEL_8;
  }

  return result;
}

uint64_t FigCapturePixelFormatEquivalentRegroupedLayoutPixelFormat(int a1)
{
  if (a1 <= 1651925815)
  {
    if (a1 == 1278226536)
    {
      return 642527336;
    }

    if (a1 == 1651519798)
    {
      return 643970675;
    }

    return 0;
  }

  result = 645161784;
  if (a1 == 1652056888)
  {
    return 645423928;
  }

  if (a1 == 1651926376)
  {
    return 643970664;
  }

  if (a1 != 1651925816)
  {
    return 0;
  }

  return result;
}

uint64_t CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(uint64_t a1, uint64_t a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (!AVFBringupDefaultOverride)
  {
    return a2;
  }

  v4 = AVFBringupDefaultOverride;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  return [v4 intValue];
}

uint64_t cmcapturegestalt_getAVFBringupDefaultOverride(uint64_t a1)
{
  if (cmcapturegestalt_getAVFBringupDefaultOverride_sLoadBringupDefaultOverridesOnceToken != -1)
  {
    cmcapturegestalt_getAVFBringupDefaultOverride_cold_1();
  }

  v2 = cmcapturegestalt_getAVFBringupDefaultOverride_sAVFCaptureBringupDefaultOverrides;

  return [v2 objectForKeyedSubscript:a1];
}

double CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(uint64_t a1, double a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (!AVFBringupDefaultOverride)
  {
    return a2;
  }

  v4 = AVFBringupDefaultOverride;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  [v4 doubleValue];
  return result;
}

id CMCaptureGestaltGetExperimentalCFPreferenceStringWithCFStringKeyAndDefault(const __CFString *a1, void *a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (AVFBringupDefaultOverride)
  {
    v5 = AVFBringupDefaultOverride;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = v5;
    }
  }

  v6 = CFPreferencesCopyAppValue(a1, @"com.apple.avfoundation");
  if (!v6)
  {
    return a2;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v7);
    return a2;
  }

  return v7;
}

void __cmcapturegestalt_getAVFBringupDefaultOverride_block_invoke()
{
  v0 = FigCaptureCFCreatePropertyList(@"BringupDefaultOverrides.plist");
  cmcapturegestalt_getAVFBringupDefaultOverride_sAVFCaptureBringupDefaultOverrides = [(FigCaptureFlatPlist *)v0 objectForKeyedSubscript:@"AVFCaptureBringupDefaultOverrides"];
}

uint64_t bwdcc_learnedFusionErrorRecoveryPossible(void *a1)
{
  if ([a1 captureType] != 13)
  {
    return 0;
  }

  v2 = [a1 captureStreamSettingsForPortType:{objc_msgSend(a1, "masterPortType")}];

  return [v2 hasCaptureFrameInfoWithMainFlags:512 sifrFlags:0];
}

void sub_1ACC4959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSourceProxyCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  FigCaptureSourceGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v10 = v5;
    FigCaptureSourceProxyCreate_cold_1();
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    v10 = 4294954514;
LABEL_10:
    FigCaptureSourceProxyCreate_cold_2(v10);
    return v10;
  }

  v8 = v7(a2, 0x1F21A1990, MEMORY[0x1E695E118]);
  if (v8)
  {
    v10 = v8;
    goto LABEL_10;
  }

  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 8) = v9;
  *(DerivedStorage + 16) = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 24) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v10 = 0;
  *a3 = 0;
  return v10;
}

uint64_t captureSourceProxy_handleRealCaptureSourceNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void FigCaptureSourceProxyDetachFromRealSource(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 24) = 0;
  v6[0] = @"OldPropertyValue";
  v6[1] = @"NewPropertyValue";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (@"Connected")
    {
      v4 = DerivedStorage;
      CFRetain(@"Connected");
      if (v2)
      {
        CFRetain(v2);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v5 = *(v4 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSourceProxy_postNotificationWithPayload_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = @"Connected";
      block[5] = a1;
      block[6] = v2;
      dispatch_async(v5, block);
    }

    else
    {
      FigCaptureSourceProxyDetachFromRealSource_cold_1();
    }
  }

  else
  {
    FigCaptureSourceProxyDetachFromRealSource_cold_2();
  }
}

void __captureSourceProxy_postNotificationWithPayload_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t captureSourceProxy_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = *(DerivedStorage + 8);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, 0x1F21A1990, *MEMORY[0x1E695E4C0]);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v5 = *(v2 + 8);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 8) = 0;
    }
  }

  return 0;
}

void captureSourceProxy_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSourceProxy_Invalidate(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *captureSourceProxy_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSourceProxy %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t captureSourceProxy_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"IsProxy"))
  {
    v14 = *MEMORY[0x1E695E4D0];
    *a4 = *MEMORY[0x1E695E4D0];
    CFRetain(v14);
    return 0;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureSourceProxy >>>>", 0xF9, v9, v18, v19, a9);
  }

  if (CFEqual(a2, @"HasProxy"))
  {
    return 4294954516;
  }

  if (!CFEqual(a2, @"CurrentPropertyValues"))
  {
    v30 = FigCaptureSourceCopyProperty_0(*(DerivedStorage + 8), a2, a3, a4);
    v15 = v30;
    if (v30)
    {
      captureSourceProxy_CopyProperty_cold_2(v30);
    }

    return v15;
  }

  v20 = [MEMORY[0x1E695DF90] dictionary];
  v37[0] = @"VideoZoomFactor";
  v37[1] = @"ExposureTargetBias";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = v22;
  v24 = *v34;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v34 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v33 + 1) + 8 * i);
      v31 = 0;
      v27 = *(DerivedStorage + 8);
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v28)
      {
        v15 = 4294954514;
LABEL_26:
        captureSourceProxy_CopyProperty_cold_1(v15, &v31);
        return v15;
      }

      v29 = v28(v27, v26, a3, &v31);
      if (v29)
      {
        v15 = v29;
        goto LABEL_26;
      }

      if (v31)
      {
        [v20 setObject:v31 forKeyedSubscript:v26];
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v15 = 0;
  *a4 = v20;
  return v15;
}

uint64_t captureSourceProxy_SetProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v17 = DerivedStorage;
    if (CFEqual(a2, @"HasProxy"))
    {
      return 4294954516;
    }

    v22[0] = 0x1F21A19F0;
    v22[1] = 0x1F21A1A10;
    v23[0] = a2;
    v23[1] = a3;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v20 = *(v17 + 1);
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v18 = v21(v20, 0x1F21A19D0, v19);
      if (!v18)
      {
        return v18;
      }
    }

    else
    {
      v18 = 4294954514;
    }

    captureSourceProxy_SetProperty_cold_1(v18);
    return v18;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureSourceProxy >>>>", 0xD2, v9, v14, v15, a9);
}

uint64_t captureSourceProxy_LockForConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v15 = *(DerivedStorage + 8);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v17 = v16(v15);
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    captureSourceProxy_LockForConfiguration_cold_1(v17);
    return v17;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureSourceProxy >>>>", 0x92, v9, v12, v13, a9);
}

uint64_t captureSourceProxy_UnlockForConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v15 = *(DerivedStorage + 8);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v16)
    {
      v17 = v16(v15);
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    captureSourceProxy_UnlockForConfiguration_cold_1(v17);
    return v17;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureSourceProxy >>>>", 0xA3, v9, v12, v13, a9);
}

CFTypeRef FigCaptureDeferredContainerManagerCopyContainerManagerForPID(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1)
  {
    if (containerManager_initializeStatics_onceToken != -1)
    {
      FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_1();
    }

    FigCaptureDeferredContainerManagerGetClassID(a1, a2);
    v2 = CMDerivedObjectCreate();
    if (v2)
    {
      FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_2(v2, &v4, &v5);
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_3(a1, a2);
    return 0;
  }
}

id captureDeferredContainerManager_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  [v3 appendFormat:@"<FigCaptureDeferredContainerManager %p retainCount: %ld%s allocator: %p>", a1, v4, v5, CFGetAllocator(a1)];
  return v3;
}